/obj/item/weapon/implant/vox
	name = "vox property implant"
	desc = "The parasite wriggles around in search for a new host!."
	origin_tech = list(TECH_MATERIAL = 5, TECH_BIO = 7, TECH_DATA = 6)
	hidden = 0
	icon = 'icons/obj/device.dmi'
	icon_state = "implant_vox"
	var/list/voxinstructions = list("You are the property of the voxes.", "You are worth a lot as a property, so make sure that you stay away from harm.", "You are not allowed to use any device that is considered dangerous. This may include using weapons, delaming a supermatter, or activating a bomb, as an example. ", "If you are sold to someone, then you are to treat them as your new owner.")
	var/brainwashing = 1

/obj/item/weapon/implant/vox/get_data()
	return {"
	<b>Implant Specifications:</b><BR>
	<b>Name:</b> Parasitic Implant<BR>
	<b>Life:</b> Lifetime.<BR>
	<b>Important Notes:</b> Personnel injected with this device tend to be deeply loyal to the vox empire.<BR>
	<HR>
	<b>Implant Details:</b><BR>
	<b>Function:</b> Contains a small pod with a single wrigling parasite that manipulate the host's mental functions.<BR>
	<b>Special Features:</b> The parasite can only be cured through the use of surgery. And the user can be sold to other owners.<BR>
	<b>Integrity:</b> Implant will last so long as the parasite keeps getting nutrients inside the bloodstream."}


/obj/item/weapon/implant/vox/implanted(mob/M)
	var/msg = get_voxinstructions()
	to_chat(M, msg)
	if(M.mind)
		M.StoreMemory(msg, /decl/memory_options/system)
	if(brainwashing)
		log_and_message_admins("was implanted with a vox brainwashing implant", M)
	addtimer(CALLBACK(src,.proc/activate),3000,(TIMER_UNIQUE|TIMER_OVERRIDE))
	return TRUE

/obj/item/weapon/implant/vox/proc/get_voxinstructions()
	. = list()
	if(brainwashing)
		. += "<span class='danger'>The fog in your head clears, and you remember some important things. You hold following things as deep convictions, almost like synthetics' laws:</span><br>"
	for(var/thing in voxinstructions)
		. += "- [thing]<br>"
	. = JOINTEXT(.)

/obj/item/weapon/implant/vox/disable(time)
	. = ..()
	if(. && brainwashing)//add deactivate and reactivate messages?
		to_chat(imp_in,"<span class='warning'>A wave of nausea comes over you.</span><br><span class='good'>You are no longer so sure of those beliefs you've had...</span>")

/obj/item/weapon/implant/vox/restore()
	. = ..()
	if(. && brainwashing)
		to_chat(imp_in, get_voxinstructions())
		activate()

/obj/item/weapon/implant/vox/activate()
	if(malfunction || !implanted || imp_in) return
	var/instruction = pick(voxinstructions)
	if(brainwashing)
		instruction = "<span class='warning'>You recall one of your beliefs: \"[instruction]\"</span>"
	to_chat(imp_in, instruction)
	addtimer(CALLBACK(src,.proc/activate),3000,(TIMER_UNIQUE|TIMER_OVERRIDE))

/obj/item/weapon/implant/vox/removed()
	if(brainwashing && !malfunction)
		to_chat(imp_in,"<span class='warning'>A wave of nausea comes over you.</span><br><span class='good'>You are no longer so sure of those beliefs you've had...</span>")
	log_and_message_admins("Have have their vox brainwashing implant removed")
	..()

/obj/item/weapon/implant/vox/can_implant(mob/M, mob/user, target_zone)
	var/mob/living/carbon/human/H = M
	if(istype(H))
		var/obj/item/organ/internal/B = H.internal_organs_by_name[BP_BRAIN]
		if(!B || H.isSynthetic())
			to_chat(user, "<span class='warning'>\The [M] cannot be implanted with a parasite.</span>")
			return FALSE
		if(!(B.parent_organ == check_zone(target_zone)))
			to_chat(user, "<span class='warning'>\The [src] must be implanted in [H.get_organ(B.parent_organ)].</span>")
			return FALSE
	return TRUE

/obj/item/weapon/implanter/vox
	name = "Parasite implanter"
	imp = /obj/item/weapon/implant/vox

/obj/item/weapon/implantcase/vox
	name = "glass case - 'vox'"
	imp = /obj/item/weapon/implant/vox
