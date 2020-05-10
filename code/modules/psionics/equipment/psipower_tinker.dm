/obj/item/psychic_power/tinker
	name = "psychokinetic crowbar"
	icon_state = "tinker"
	force = 1
	var/emulating = "Crowbar"
	var/list/choices = list()

/obj/item/psychic_power/tinker/Initialize()
	. = ..()
	choices["Crowbar"] = image('icons/obj/tools.dmi', "crowbar")
	choices["Wrench"] = image('icons/obj/tools.dmi', "wrench")
	choices["Screwdriver"] = image('icons/obj/tools.dmi', "screwdriver_preview")
	choices["Wirecutters"] = image('icons/obj/tools.dmi', "cutters_preview")
	choices["Multitool"] = image('icons/obj/device.dmi', "multitool")
	choices["Dismiss"] = image('icons/misc/mark.dmi', "x3")

/obj/item/psychic_power/tinker/iscrowbar()
	return emulating == "Crowbar"

/obj/item/psychic_power/tinker/iswrench()
	return emulating == "Wrench"

/obj/item/psychic_power/tinker/isscrewdriver()
	return emulating == "Screwdriver"

/obj/item/psychic_power/tinker/iswirecutter()
	return emulating == "Wirecutters"

/obj/item/psychic_power/tinker/ismultitool()
	return emulating == "Multitool"

/obj/item/psychic_power/tinker/attack_self()

	if(!owner || loc != owner)
		return

	var/choice = RADIAL_INPUT(owner, choices)
	if(!choice)
		return

	if(!owner || loc != owner)
		return

	if(choice == "Dismiss")
		sound_to(owner, 'sound/effects/psi/power_fail.ogg')
		owner.drop_from_inventory(src)
		return

	emulating = choice
	name = "psychokinetic [lowertext(emulating)]"
	to_chat(owner, "<span class='notice'>You begin emulating \a [lowertext(emulating)].</span>")
	sound_to(owner, 'sound/effects/psi/power_fabrication.ogg')
