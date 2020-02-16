#define DNA_BLOCK_SIZE 3

// Buffer datatype flags.
#define DNA2_BUF_UI 1
#define DNA2_BUF_UE 2
#define DNA2_BUF_SE 4

//list("data" = null, "owner" = null, "label" = null, "type" = null, "ue" = 0),
/datum/dna2/record
	var/datum/dna/dna = null
	var/types=0
	var/name="Empty"

	// Stuff for cloners
	var/id=null
	var/implant=null
	var/ckey=null
	var/mind=null
	var/languages=null
	var/list/flavor=null
	var/gender = null
	var/list/body_descriptors = null
	var/list/genetic_modifiers = list() // Modifiers with the MODIFIER_GENETIC flag are saved.  Note that only the type is saved, not an instance.

/datum/dna2/record/proc/GetData()
	var/list/ser=list("data" = null, "owner" = null, "label" = null, "type" = null, "ue" = 0)
	if(dna)
		ser["ue"] = (types & DNA2_BUF_UE) == DNA2_BUF_UE
		if(types & DNA2_BUF_SE)
			ser["data"] = dna.SE
		else
			ser["data"] = dna.UI
		ser["owner"] = src.dna.real_name
		ser["label"] = name
		if(types & DNA2_BUF_UI)
			ser["type"] = "ui"
		else
			ser["type"] = "se"
	return ser

/////////////////////////// DNA MACHINES
/obj/machinery/dna_scannernew
	name = "\improper DNA modifier"
	desc = "It scans DNA structures."
	icon = 'icons/obj/Cryogenic2.dmi'
	icon_state = "scanner_0"
	density = 1
	anchored = 1.0
	use_power = 1
	idle_power_usage = 50
	active_power_usage = 300
	interact_offline = 1
	construct_state = /decl/machine_construction/default/panel_closed
	var/locked = 0
	var/mob/living/carbon/occupant = null
	var/obj/item/weapon/reagent_containers/glass/beaker = null
	var/opened = 0

/obj/machinery/dna_scannernew/relaymove(mob/user as mob)
	if (user.stat)
		return
	src.go_out()
	return

/obj/machinery/dna_scannernew/verb/eject()
	set src in oview(1)
	set category = "Object"
	set name = "Eject DNA Scanner"

	if (usr.stat != 0)
		return

	eject_occupant()

	add_fingerprint(usr)
	return

/obj/machinery/dna_scannernew/proc/eject_occupant()
	src.go_out()
	for(var/obj/O in src)
		if((!istype(O,/obj/item/weapon/reagent_containers)) && (!istype(O,/obj/item/weapon/stock_parts/circuitboard/clonescanner)) && (!istype(O,/obj/item/weapon/stock_parts)) && (!istype(O,/obj/item/stack/cable_coil)))
			O.loc = get_turf(src)//Ejects items that manage to get in there (exluding the components)
	if(!occupant)
		for(var/mob/M in src)//Failsafe so you can get mobs out
			M.loc = get_turf(src)

/obj/machinery/dna_scannernew/MouseDrop_T(var/mob/target, var/mob/user) //Allows borgs to clone people without external assistance
	if(user.stat || user.lying || !Adjacent(user) || !target.Adjacent(user)|| !ishuman(target))
		return
	put_in(target)

/obj/machinery/dna_scannernew/verb/move_inside()
	set src in oview(1)
	set category = "Object"
	set name = "Enter DNA Scanner"

	if (usr.stat != 0)
		return
	if (!ishuman(usr) && !issmall(usr)) //Make sure they're a mob that has dna
		to_chat(usr, "<span class='notice'>Try as you might, you can not climb up into the scanner.</span>")
		return
	if (src.occupant)
		to_chat(usr, "<span class='warning'>The scanner is already occupied!</span>")
		return
	if (usr.abiotic())
		to_chat(usr, "<span class='warning'>The subject cannot have abiotic items on.</span>")
		return
	usr.stop_pulling()
	usr.client.perspective = EYE_PERSPECTIVE
	usr.client.eye = src
	usr.loc = src
	src.occupant = usr
	src.icon_state = "scanner_1"
	src.add_fingerprint(usr)
	return

/obj/machinery/dna_scannernew/attackby(var/obj/item/weapon/item as obj, var/mob/user as mob)
	if(istype(item, /obj/item/weapon/reagent_containers/glass))
		if(beaker)
			to_chat(user, "<span class='warning'>A beaker is already loaded into the machine.</span>")
			return

		beaker = item
		user.drop_item()
		item.loc = src
		user.visible_message("\The [user] adds \a [item] to \the [src]!", "You add \a [item] to \the [src]!")
		return

	else if(istype(item, /obj/item/organ/internal/brain))
		if (src.occupant)
			to_chat(user, "<span class='warning'>The scanner is already occupied!</span>")
			return
		var/obj/item/organ/internal/brain/brain = item
		if(brain.clone_source)
			user.drop_item()
			brain.loc = src
			put_in(brain.brainmob)
			src.add_fingerprint(user)
			user.visible_message("\The [user] adds \a [item] to \the [src]!", "You add \a [item] to \the [src]!")
			return
		else
			to_chat(user,"\The [brain] is not acceptable for genetic sampling!")

	else if (!istype(item, /obj/item/grab))
		return
	var/obj/item/grab/G = item
	if (!ismob(G.affecting))
		return
	if (src.occupant)
		to_chat(user, "<span class='warning'>The scanner is already occupied!</span>")
		return
	if (G.affecting.abiotic())
		to_chat(user, "<span class='warning'>The subject cannot have abiotic items on.</span>")
		return
	put_in(G.affecting)
	src.add_fingerprint(user)
	qdel(G)
	return

/obj/machinery/dna_scannernew/proc/put_in(var/mob/M)
	if(M.client)
		M.client.perspective = EYE_PERSPECTIVE
		M.client.eye = src
	M.loc = src
	src.occupant = M
	src.icon_state = "scanner_1"

	// search for ghosts, if the corpse is empty and the scanner is connected to a cloner
	if(locate(/obj/machinery/computer/cloning, get_step(src, NORTH)) \
		|| locate(/obj/machinery/computer/cloning, get_step(src, SOUTH)) \
		|| locate(/obj/machinery/computer/cloning, get_step(src, EAST)) \
		|| locate(/obj/machinery/computer/cloning, get_step(src, WEST)))

		if(!M.client && M.mind)
			for(var/mob/observer/ghost/ghost in GLOB.player_list)
				if(ghost.mind == M.mind)
					to_chat(ghost, "<b><font color = #330033><font size = 3>Your corpse has been placed into a cloning scanner. Return to your body if you want to be resurrected/cloned!</b> (Verbs -> Ghost -> Re-enter corpse)</font></font>")
					break
	return

/obj/machinery/dna_scannernew/proc/go_out()
	if ((!( src.occupant ) || src.locked))
		return
	if (src.occupant.client)
		src.occupant.client.eye = src.occupant.client.mob
		src.occupant.client.perspective = MOB_PERSPECTIVE
	if(istype(occupant,/mob/living/carbon/brain))
		for(var/obj/O in src)
			if(istype(O,/obj/item/organ/internal/brain))
				O.loc = get_turf(src)
				src.occupant.loc = O
				break
	else
		src.occupant.loc = src.loc
	src.occupant = null
	src.icon_state = "scanner_0"
	return

/obj/machinery/dna_scannernew/ex_act(severity)
	switch(severity)
		if(1.0)
			for(var/atom/movable/A as mob|obj in src)
				A.loc = src.loc
				ex_act(severity)
				//Foreach goto(35)
			//SN src = null
			qdel(src)
			return
		if(2.0)
			if (prob(50))
				for(var/atom/movable/A as mob|obj in src)
					A.loc = src.loc
					ex_act(severity)
					//Foreach goto(108)
				//SN src = null
				qdel(src)
				return
		if(3.0)
			if (prob(25))
				for(var/atom/movable/A as mob|obj in src)
					A.loc = src.loc
					ex_act(severity)
					//Foreach goto(181)
				//SN src = null
				qdel(src)
				return
		else
	return

/////////////////////////// DNA MACHINES
