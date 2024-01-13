/obj/machinery/resleever
	name = "Neural Lace Resleever"
	desc = "It's a machine that allows neural laces to be sleeved into new bodies."
	icon = 'modular_mithra/icons/obj/Cryogenic2_1.dmi'

	anchored = 1
	density = 1
	idle_power_usage = 4
	active_power_usage = 4 KILOWATTS // A CT scan machine uses 1-15 kW depending on the model and equipment involved.
	req_access = list(access_medical)

	icon_state = "scanner_open"
	var/empty_state = "scanner_open"
	var/occupied_state = "scanner_yellow"
	var/resleeving_state = "scanner_red_intense"
	var/allow_occupant_types = list(/mob/living/carbon/human)
	var/disallow_occupant_types = list()
	var/mob/living/carbon/human/occupant = null
	var/obj/item/organ/internal/stack/lace = null

	construct_state = /singleton/machine_construction/default/panel_closed

	var/resleeving = 0
	var/remaining = 0
	var/timetosleeve = 120

	var/occupant_name = null // Put in seperate var to prevent runtime.
	var/lace_name = null

/obj/machinery/resleever/New()
	..()
	update_icon()

/obj/machinery/resleever/Destroy()
	if(occupant)
		bad_go_out(src.occupant)
	else
		eject_lace()
	return ..()

/obj/machinery/resleever/proc/bad_go_out(mob/living/carbon/human/occupant) //#BOH-BAY Lets give some consequences for it
	if(occupant)
		if(resleeving)
			set waitfor = FALSE
			var/obj/item/organ/external/affected = occupant.get_organ(BP_HEAD)
			affected.take_external_damage(rand(20,40), rand(1, 10), DAMAGE_FLAG_SHARP)
			occupant.setBrainLoss(rand(10, 30))
			visible_message("<span class='warning'>[occupant] has been violently ejected out of the [src]!</span>", range = 4)
		else
			visible_message("[occupant] has been ejected out of the [src]!", range = 4)
		resleeving = 0
		remaining = 0
		update_use_power(POWER_USE_IDLE)
		eject_occupant()
		update_icon()
		playsound(loc, 'sound/effects/metalscrape2.ogg', 50, vary = TRUE)
	eject_lace()
	return

/obj/machinery/resleever/Process()
	if(occupant)
		if(resleeving)							//Not always, that makes no sense. Only if its being relaced. #BOH-BAY
			occupant.Paralyse(4) // We need to always keep the occupant sleeping if they're in here.
	if(stat & (MACHINE_STAT_NOPOWER|MACHINE_BROKEN_HEALTH))
		update_use_power(POWER_USE_OFF)
		bad_go_out(occupant)
		return
	if(resleeving)
		update_use_power(POWER_USE_ACTIVE)
		if(remaining < timetosleeve)
			remaining += 1

			if(remaining == 90) // 30 seconds left
				to_chat(occupant, "<span class='notice'>You feel a wash of sensation as your senses begin to flood your mind. You will come to soon.</span>")
		else
			remaining = 0
			resleeving = 0
			update_use_power(POWER_USE_IDLE)
			eject_occupant()
			playsound(loc, 'sound/machines/ping.ogg', 100, vary = TRUE)
			visible_message("\The [src] pings as it completes its procedure!", "You hear a ping.", range = 3)
			return
	update_use_power(POWER_USE_OFF)
	return

/obj/machinery/resleever/attack_ai(mob/user as mob)
	add_hiddenprint(user)
	return attack_hand(user)

/obj/machinery/resleever/attack_hand(mob/user as mob)
	if(!anchored)
		return

	if(stat & (MACHINE_STAT_NOPOWER|MACHINE_BROKEN_HEALTH))
		to_chat(usr, "\The [src] doesn't appear to function.")
		return

	ui_interact(user)

/obj/machinery/resleever/CanUseTopic(user)
	if(!anchored || inoperable())
		return STATUS_CLOSE
	return ..()

/obj/machinery/resleever/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = 1)
	var/list/data = list(
		"name" = occupant_name,
		"lace" = lace_name,
		"isOccupiedEjectable" = occupant && !resleeving,
		"isLaceEjectable" = lace && !resleeving,
		"active" = resleeving,
		"remaining" = remaining,
		"timetosleeve" = 120,
		"ready" = occupant && lace && !resleeving
	)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "resleever.tmpl", "Neural Lace Resleever", 300, 370)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)


/obj/machinery/resleever/OnTopic(mob/user, list/href_list, state)
	if (href_list["begin"])
		if(sleeve())
			resleeving = 1
			update_icon()
		return TOPIC_REFRESH

	if (href_list["eject"])
		eject_occupant()
		update_icon()
		return TOPIC_REFRESH

	if (href_list["ejectlace"])
		eject_lace()
		update_icon()
		return TOPIC_REFRESH

/obj/machinery/resleever/proc/sleeve()
	if(lace && !lace.prompting && occupant) // Not only check for the lace and occupant, but also if the lace isn't already prompting the dead user.
		var/obj/item/organ/O = occupant.get_organ(lace.parent_organ)
		if(istype(O))
			lace.status &= ~ORGAN_CUT_AWAY //ensure the lace is properly attached
			lace.replaced(occupant, O)
			lace = null
			lace_name = null
			playsound(loc, 'sound/machines/twobeep.ogg', 50, vary = TRUE)
			visible_message("\The [src] beeps softly as it begins its procedure.", "You hear a beep.", range = 3)
			return TRUE
	return FALSE // Return false if the the lace doesn't exist, the lace is busy prompting, no occupant, or the occupant's head (parrent organ) doesn't exist.

/obj/machinery/resleever/attackby(obj/item/W as obj, mob/user as mob)
	..()

	if(istype(W, /obj/item/organ/internal/stack))
		var/obj/item/organ/internal/stack/S = W
		if(isnull(lace))
			if(S.backup)	//BOH-BAY makes sure that the lace holds data
				lace = W
				user.unEquip(W, src)
				lace_name = lace.backup.name
				to_chat(user, "<span class='notice'>You insert \the [W] into [src].</span>")
			else
				to_chat(user, "<span class='notice'>This Neural Lace is devoid of life, please insert an active one.</span>")
		else
			to_chat(user, "<span class='warning'>\The [src] already has a neural lace inside it!</span>")
			return
	else if(istype(W, /obj/item/grab))
		var/obj/item/grab/grab = W
		if(occupant)
			to_chat(user, "<span class='notice'>\The [src] is in use.</span>")
			return

		if(!ismob(grab.affecting))
			return

		if(!check_occupant_allowed(grab.affecting))
			return

		var/mob/M = grab.affecting


		if(istype(M, /mob/living/carbon/human))	//Failsafe mob check #BOH-BAY
			var/mob/living/carbon/human/H = M
			var/datum/species/SP = H.species
			if(!H.has_brain())	//Nope, you're not resleeving brainless people #BOH-BAY
				to_chat(usr, "[grab.affecting:name] is brainless. You cannot resleeve him.")
				return
			else if(SP.spawn_flags & SPECIES_NO_LACE)
				to_chat(user, "<span class='notice'>[grab.affecting:name]'s species is incompatible with Neural Laces.</span>")
				return

		visible_message("[user] starts putting [grab.affecting:name] into \the [src].", 3)

		if(do_after(user, 20, src))
			if(!M || !grab || !grab.affecting) return

			M.forceMove(src)

			occupant = M
			occupant_name = occupant.name
			update_icon()
			if(M.client)
				M.client.perspective = EYE_PERSPECTIVE
				M.client.eye = src

/obj/machinery/resleever/proc/eject_occupant()
	if(!(occupant))
		return
	occupant.forceMove(loc)
	if(occupant.client)
		occupant.reset_view(null)
	occupant = null
	occupant_name = null
	update_icon()

/obj/machinery/resleever/proc/eject_lace()
	if(!(lace))
		return
	lace.forceMove(loc)
	lace = null
	lace_name = null

/obj/machinery/resleever/ex_act(severity)
	var/killprob = 100
	switch(severity)
		if(2)
			killprob = 50
		if(3)
			killprob = 25
	if(prob(killprob))
		for(var/atom/movable/A in src)
			A.forceMove(loc)
			A.ex_act(severity)
		qdel(src)

/obj/machinery/resleever/on_update_icon()
	..()
	icon_state = empty_state
	if(occupant)
		icon_state = occupied_state
	if(resleeving)
		icon_state = resleeving_state

/obj/machinery/resleever/proc/check_occupant_allowed(mob/M)
	var/correct_type = 0
	for(var/type in allow_occupant_types)
		if(istype(M, type))
			correct_type = 1
			break

	if(!correct_type) return 0

	for(var/type in disallow_occupant_types)
		if(istype(M, type))
			return 0

	return 1
