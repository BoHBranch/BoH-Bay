//Cloning revival method.
//The pod handles the actual cloning while the computer manages the clone profiles

//Potential replacement for genetics revives or something I dunno (?)

//Find a dead mob with a brain and client.

#define CLONE_BIOMASS 80

/obj/machinery/clonepod
	name = "cloning pod"
	desc = "A combination organic tissue incubator and substrate three-dimensional printer, large enough to produce copies of most species found within known space."
	density = 1
	anchored = 1
	icon = 'icons/obj/cloning.dmi'
	icon_state = "pod_0"
	req_access = list(access_medical_equip) // For premature unlocking.
	base_type = /obj/machinery/clonepod
	construct_state = /singleton/machine_construction/default/panel_closed
	idle_power_usage = 150
	active_power_usage = 600
	uncreated_component_parts = null
	var/mob/living/occupant = null
	var/heal_level = 20			// The clone is released once its health reaches this level.
	var/heal_rate = 1
	var/locked = 0
	var/obj/machinery/computer/cloning/connected = null //So we remember the connected clone machine.
	var/mess = 0					// Need to clean out it if it's full of exploded clone.
	var/attempting = 0				// One clone attempt at a time thanks
	var/eject_wait = 0				// Don't eject them as soon as they are created fuckkk
	var/biomass
	var/maximum_biomass = 160 //2 clones

/obj/machinery/clonepod/New()
	..()

	update_icon()

/obj/machinery/clonepod/Destroy()
	if (occupant)
		gibs(src.loc)

	return ..()

/obj/machinery/clonepod/attack_ai(mob/user as mob)
	add_hiddenprint(user)
	return attack_hand(user)

/obj/machinery/clonepod/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/machinery/clonepod/proc/end_wait()
	eject_wait = 0

//Start growing a human clone in the pod!
/obj/machinery/clonepod/proc/growclone(datum/dna2/record/R)
	if(mess || attempting)
		return 0
/*no modifiers in bay yet
	for(var/modifier_type in R.genetic_modifiers)	//Can't be cloned, even if they had a previous scan
		if(istype(modifier_type, /datum/modifier/no_clone))
			return 0
*/
	// Remove biomass when the cloning is started, rather than when the guy pops out
	remove_biomass(CLONE_BIOMASS)
	attempting = 1 //One at a time!!
	locked = 1

	eject_wait = 1
	addtimer(new Callback(src, .proc/end_wait), 3 SECONDS)

	var/mob/living/carbon/human/H = new /mob/living/carbon/human(src, R.dna.species)
	occupant = H

	if(!R.dna.real_name)	//to prevent null names
		R.dna.real_name = "clone ([rand(0,999)])"
	H.real_name = R.dna.real_name
	if(R.dna.GetUIState(DNA_UI_GENDER) == 0)
		H.gender = MALE
	else if (R.dna.GetUIState(DNA_UI_GENDER) == 1)
		H.gender = FEMALE
	else
		H.gender = PLURAL
	H.descriptors = R.body_descriptors

	//Get the clone body ready
	H.adjustCloneLoss(H.maxHealth/2) // We want to put them exactly at the crit level, so we deal this much clone damage
	H.Paralyse(4)

	//Here let's calculate their health so the pod doesn't immediately eject them!!!
	H.updatehealth()

	if(!R.dna)
		H.dna = new /datum/dna()
		H.dna.real_name = H.real_name
	else
		H.dna = R.dna
	H.UpdateAppearance()
	H.sync_organ_dna()
	var/mut_level = rand(1,3)
	for(var/i = 1 to mut_level)
		randmutb(H) //Sometimes the clones come out wrong.
		H.dna.UpdateSE()
		H.dna.UpdateUI()

	H.set_cloned_appearance()
	update_icon()
	for(var/datum/language/L in R.languages)
		H.add_language(L.name)

	H.flavor_texts = R.flavor.Copy()
	//H.suiciding = 0
	attempting = 0
	heal_level = rand(10, 45)
	return 1

//Grow clones to maturity then kick them out.  FREELOADERS
/obj/machinery/clonepod/Process()
	if(stat & MACHINE_STAT_NOPOWER) //Autoeject if power is lost
		if(occupant)
			locked = 0
			go_out()
		return

	if((occupant) && (occupant.loc == src))

		if(occupant.getCloneLoss() <= heal_level && !eject_wait)
			playsound(src.loc, 'sound/machines/ding.ogg', 50, 1)
			src.audible_message("\The [src] signals that the cloning process is complete.")
			connected_message("Cloning Process Complete.")
			locked = 0
			visible_message(SPAN_NOTICE("[src] disgorges [occupant] in a limp state, coated in pink, foul-smelling slime!"))
			go_out()
			return

		occupant.Paralyse(4)

		//Slowly get that clone healed and finished.
		occupant.adjustCloneLoss(-2 * heal_rate)

		//Premature clones may have brain damage.
		occupant.adjustBrainLoss(-(ceil(0.5*heal_rate)))

		//So clones don't die of oxyloss in a running pod.
		if(occupant.reagents.get_reagent_amount(/datum/reagent/inaprovaline) < 30)
			occupant.reagents.add_reagent(/datum/reagent/inaprovaline, 60)
		occupant.Sleeping(30)
		//Also heal some oxyloss ourselves because inaprovaline is so bad at preventing it!!
		occupant.adjustOxyLoss(-4)

		use_power_oneoff(7500) //This might need tweaking.
		return
	else if((!occupant) || (occupant.loc != src))
		occupant = null
		if(locked)
			locked = 0
		return

	return


//Used for new human mobs created by cloning/goleming/etc.
/mob/living/carbon/human/proc/set_cloned_appearance()
	facial_hair_style = "Shaved"
	if(dna.species == "Human") //no more xenos losing ears/tentacles
		head_hair_style = pick("Bedhead", "Bedhead 2", "Bedhead 3")
	worn_underwear.Cut()
	regenerate_icons()



//Let's unlock this early I guess.  Might be too early, needs tweaking.
/obj/machinery/clonepod/attackby(obj/item/W as obj, mob/user as mob)
	..()

	if(istype(W, /obj/item/card/id)||istype(W, /obj/item/modular_computer/pda))
		if(!check_access(W))
			to_chat(user, "<span class='warning'>Access Denied.</span>")
			return
		if((!locked) || (isnull(occupant)))
			return
		if((occupant.health < -20) && (occupant.stat != 2))
			to_chat(user, "<span class='warning'>Access Refused.</span>")
			return
		else
			locked = 0
			to_chat(user, "System unlocked.")
	else if(isWrench(W))
		if(locked && (anchored || occupant))
			to_chat(user, "<span class='warning'>Can not do that while [src] is in use.</span>")
		else
			if(anchored)
				anchored = 0
				connected.pods -= src
				connected = null
			else
				anchored = 1
			playsound(src, 'sound/items/Deconstruct.ogg', 80, 1)
			if(anchored)
				user.visible_message("[user] secures [src] to the floor.", "You secure [src] to the floor.")
			else
				user.visible_message("[user] unsecures [src] from the floor.", "You unsecure [src] from the floor.")
	else if(istype(W, /obj/item/reagent_containers/food/snacks/meat))
		var/biomass_to_add = 20
		if(biomass + biomass_to_add > maximum_biomass)
			to_chat(user, SPAN_WARNING("[src] gurgles and belches, then spits [W] back at you! Seems like it's full."))
			return
		else
			to_chat(user, SPAN_NOTICE("[src] churns and gurgles happily as  [W] dissolves into a pinkish, foul-smelling goo. It regurgitates some onto you. Yuck."))
			biomass += biomass_to_add
			qdel(W)

/obj/machinery/clonepod/emag_act(remaining_charges, mob/user)
	if(isnull(occupant))
		return
	to_chat(user, "You force an emergency ejection.")
	locked = 0
	go_out()
	return 1

//Put messages in the connected computer's temp var for display.
/obj/machinery/clonepod/proc/connected_message(message)
	if((isnull(connected)) || (!istype(connected, /obj/machinery/computer/cloning)))
		return 0
	if(!message)
		return 0

	connected.temp = "[name] : [message]"
	connected.updateUsrDialog()
	return 1

/obj/machinery/clonepod/verb/eject()
	set name = "Eject Cloner"
	set category = "Object"
	set src in oview(1)

	if(usr.stat != 0)
		return
	go_out()
	add_fingerprint(usr)
	return

/obj/machinery/clonepod/proc/go_out()
	if(locked)
		return

	if(mess) //Clean that mess and dump those gibs!
		mess = 0
		gibs(src.loc)
		update_icon()
		return

	if(!(occupant))
		return

	if(occupant.client)
		occupant.client.eye = occupant.client.mob
		occupant.client.perspective = MOB_PERSPECTIVE
	occupant.loc = src.loc
	eject_wait = 0 //If it's still set somehow.
	if(ishuman(occupant)) //Need to be safe.
		var/mob/living/carbon/human/patient = occupant
		if(!(patient.species.species_flags & SPECIES_FLAG_NO_SCAN)) //If, for some reason, someone makes a genetically-unalterable clone, let's not make them permanently disabled.
			domutcheck(occupant) //Waiting until they're out before possible transforming.
	occupant = null

	update_icon()
	return

// Returns the total amount of biomass reagent in all of the pod's stored containers
/obj/machinery/clonepod/proc/get_biomass()
	return biomass

// Removes [amount] biomass, spread across all containers. Doesn't have any check that you actually HAVE enough biomass, though.
/obj/machinery/clonepod/proc/remove_biomass(amount = CLONE_BIOMASS)		//Just in case it doesn't get passed a new amount, assume one clone
	biomass -= amount

// Empties all of the beakers from the cloning pod, used to refill it

/obj/machinery/clonepod/proc/malfunction()
	if(occupant)
		connected_message("Critical Error!")
		mess = 1
		update_icon()
		QDEL_IN(occupant, 5)
	return

/obj/machinery/clonepod/relaymove(mob/user as mob)
	if(user.stat)
		return
	go_out()
	return

/obj/machinery/clonepod/emp_act(severity)
	if(prob(100/severity))
		malfunction()
	..()

/obj/machinery/clonepod/ex_act(severity)
	switch(severity)
		if(1.0)
			for(var/atom/movable/A as mob|obj in src)
				A.loc = src.loc
				ex_act(severity)
			qdel(src)
			return
		if(2.0)
			if(prob(50))
				for(var/atom/movable/A as mob|obj in src)
					A.loc = src.loc
					ex_act(severity)
				qdel(src)
				return
		if(3.0)
			if(prob(25))
				for(var/atom/movable/A as mob|obj in src)
					A.loc = src.loc
					ex_act(severity)
				qdel(src)
				return
		else
	return

/obj/machinery/clonepod/on_update_icon()
	. = ..()
	icon_state = "pod_0"
	if(occupant && !(stat & MACHINE_STAT_NOPOWER))
		icon_state = "pod_1"
	else if(mess)
		icon_state = "pod_g"


/obj/machinery/clonepod/full/New()
	..()

	biomass = maximum_biomass
//Health Tracker Implant

/obj/item/implant/health
	name = "health implant"
	var/healthstring = ""

/obj/item/implant/health/proc/sensehealth()
	if(!implanted)
		return "ERROR"
	else
		if(isliving(implanted))
			var/mob/living/L = implanted
			healthstring = "[round(L.getOxyLoss())] - [round(L.getFireLoss())] - [round(L.getToxLoss())] - [round(L.getBruteLoss())]"
		if(!healthstring)
			healthstring = "ERROR"
		return healthstring

//Disk stuff.
//The return of data disks?? Just for transferring between genetics machine/cloning machine.
//TO-DO: Make the genetics machine accept them.
/obj/item/disk/data
	name = "Cloning Data Disk"
	icon = 'icons/obj/cloning.dmi'
	icon_state = "datadisk0" //Gosh I hope syndies don't mistake them for the nuke disk.
	item_state = "card-id"
	w_class = ITEM_SIZE_SMALL
	var/datum/dna2/record/buf = null
	var/read_only = 0 //Well,it's still a floppy disk

/obj/item/disk/data/proc/initializeDisk()
	buf = new
	buf.dna=new

/obj/item/disk/data/monkey
	name = "data disk - 'Mr. Muggles'"
	read_only = 1

/obj/item/disk/data/monkey/New()
	..()
	initializeDisk()
	buf.types=DNA2_BUF_SE
	var/list/new_SE=list(0x098,0x3E8,0x403,0x44C,0x39F,0x4B0,0x59D,0x514,0x5FC,0x578,0x5DC,0x640,0x6A4)
	for(var/i=new_SE.len;i<=DNA_SE_LENGTH;i++)
		new_SE += rand(1,1024)
	buf.dna.SE=new_SE
	buf.dna.SetSEValueRange(GLOB.MONKEYBLOCK,0xDAC, 0xFFF)

/obj/item/disk/data/New()
	..()
	var/diskcolor = pick(0,1,2)
	icon_state = "datadisk[diskcolor]"

/obj/item/disk/data/attack_self(mob/user as mob)
	read_only = !read_only
	to_chat(user, "You flip the write-protect tab to [read_only ? "protected" : "unprotected"].")

/obj/item/disk/data/examine(mob/user)
	..(user)
	to_chat(user, text("The write-protect tab is set to [read_only ? "protected" : "unprotected"]."))
	return

/*
 *	Diskette Box
 */

/obj/item/storage/box/disks
	name = "Diskette Box"
	icon_state = "disk_kit"

/obj/item/storage/box/disks/New()
	..()
	new /obj/item/disk/data(src)
	new /obj/item/disk/data(src)
	new /obj/item/disk/data(src)
	new /obj/item/disk/data(src)
	new /obj/item/disk/data(src)
	new /obj/item/disk/data(src)
	new /obj/item/disk/data(src)

/*
 *	Manual -- A big ol' manual.
 */

/obj/item/paper/Cloning
	name = "H-87 Cloning Apparatus Manual"
	info = {"<h4>Getting Started</h4>
	Congratulations, your station has purchased the H-87 industrial cloning device!<br>
	Using the H-87 is almost as simple as brain surgery! Simply insert the target humanoid into the scanning chamber and select the scan option to create a new profile!<br>
	<b>That's all there is to it!</b><br>
	<i>Notice, cloning system cannot scan inorganic life or small primates.  Scan may fail if subject has suffered extreme brain damage.</i><br>
	<p>Clone profiles may be viewed through the profiles menu. Scanning implants a complementary HEALTH MONITOR IMPLANT into the subject, which may be viewed from each profile.
	Profile Deletion has been restricted to \[Station Head\] level access.</p>
	<h4>Cloning from a profile</h4>
	Cloning is as simple as pressing the CLONE option at the bottom of the desired profile.<br>
	Per your company's EMPLOYEE PRIVACY RIGHTS agreement, the H-87 has been blocked from cloning crewmembers while they are still alive.<br>
	<br>
	<p>The provided CLONEPOD SYSTEM will produce the desired clone.  Standard clone maturation times (With SPEEDCLONE technology) are roughly 90 seconds.
	The cloning pod may be unlocked early with any \[Medical Researcher\] ID after initial maturation is complete.</p><br>
	<i>Please note that resulting clones may have a small DEVELOPMENTAL DEFECT as a result of genetic drift.</i><br>
	<h4>Profile Management</h4>
	<p>The H-87 (as well as your station's standard genetics machine) can accept STANDARD DATA DISKETTES.
	These diskettes are used to transfer genetic information between machines and profiles.
	A load/save dialog will become available in each profile if a disk is inserted.</p><br>
	<i>A good diskette is a great way to counter aforementioned genetic drift!</i><br>
	<br>
	<font size=1>This technology produced under license from Thinktronic Systems, LTD.</font>"}

/////////////////////////// DNA SCANNER
/obj/machinery/dna_scannernew
	name = "\improper DNA modifier"
	desc = "It scans DNA structures."
	icon = 'icons/obj/Cryogenic2.dmi'
	icon_state = "scanner_0"
	density = 1
	anchored = 1.0
	use_power = 1
	idle_power_usage = 75
	active_power_usage = 300
	uncreated_component_parts = null
	interact_offline = 1
	construct_state = /singleton/machine_construction/default/panel_closed
	var/locked = 0
	var/mob/living/carbon/occupant = null
	var/obj/item/reagent_containers/glass/beaker = null
	var/opened = 0

/obj/machinery/dna_scannernew/relaymove(mob/user as mob)
	if (user.stat)
		return
	src.go_out()
	return

/obj/machinery/dna_scannernew/Destroy()
	if(occupant)
		eject_occupant()

	return ..()

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
		if((!istype(O,/obj/item/reagent_containers)) && (!istype(O,/obj/item/stock_parts/circuitboard/clonescanner)) && (!istype(O,/obj/item/stock_parts)) && (!istype(O,/obj/item/stack/cable_coil)))
			O.loc = get_turf(src)//Ejects items that manage to get in there (exluding the components)
	if(!occupant)
		for(var/mob/M in src)//Failsafe so you can get mobs out
			M.loc = get_turf(src)

/obj/machinery/dna_scannernew/MouseDrop_T(mob/target, mob/user) //Allows borgs to clone people without external assistance
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

/obj/machinery/dna_scannernew/attackby(obj/item/item as obj, mob/user as mob)
	..()

	if(istype(item, /obj/item/reagent_containers/glass))
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
		else
			var/obj/item/organ/internal/brain/brain = item
			user.drop_item()
			brain.loc = src
			put_in(brain.brainmob)
			src.add_fingerprint(user)
			user.visible_message("\The [user] adds \a [item] to \the [src]!", "You add \a [item] to \the [src]!")
			return

	else if (!istype(item, /obj/item/grab))
		return
	var/obj/item/grab/G = item
	if (!ismob(item))
		return
	if (src.occupant)
		to_chat(user, "<span class='warning'>The scanner is already occupied!</span>")
		return
	if (G.affecting.abiotic())
		to_chat(user, "<span class='warning'>The subject cannot have abiotic items on.</span>")
		return
	put_in(G)
	src.add_fingerprint(user)
	qdel(G)

/obj/machinery/dna_scannernew/proc/put_in(mob/M)
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
/////////////////////////// DNA SCANNER
