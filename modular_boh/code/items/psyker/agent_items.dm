/////////
/*
This file will primarily contain material relating to either Foundation Agents or Nanotrasen Psykers.
*/
/////////

/obj/item/gun/projectile/revolver/foundation/agent
	name = "\improper NTPC revolver"
	desc = "The DF 'Hardtack', a compact firearm designed for concealed carry by Nanotrasen Psionic Corps agents. \
	Rumored to be a copy of the Foundation's field revolver."

/obj/item/storage/briefcase/foundation/nt
	name = "\improper Nanotrasen briefcase"
	desc = "A handsome black leather briefcase. 'NTPC' appears to be stamped on the handle in an obnoxious blue."

/obj/item/storage/briefcase/foundation/nt/revolver
	startswith = list(
	/obj/item/gun/projectile/revolver/foundation/agent,
	/obj/item/ammo_magazine/speedloader/magnum/nullglass=3)

/obj/item/storage/briefcase/foundation_inert
	name = "\improper Foundation briefcase"
	desc = "A handsome black leather briefcase embossed with a stylized radio telescope."
	icon_state = "fbriefcase"
	item_state = "fbriefcase"

//////////
// Unbranded Psyker Gun
//////////

/obj/item/gun/projectile/revolver/foundation/psyker
	name = "\improper Agent revolver"
	desc = "The BS-9 'Basilisk', a compact firearm designed for concealed carry by independent Psionic agents. \
	Rumored to be a copy of the Foundation's field revolver."

//////////
// Agent Jacket
/////////
/obj/item/clothing/suit/storage/toggle/suit/black/agent
	name = "\improper NTPC Agent Jacket"
	desc = "A black dress suit. 'NTPC' appears to be embroidered under the cuffs."

/////////
// Null Ring
/////////
/obj/item/clothing/ring/material/nullglass/New(newloc)
	..(newloc, MATERIAL_NULLGLASS)

/////////
// Equipment Kit
/////////

/obj/item/gunbox/psyker
	name = "equipment kit"
	desc = "A secure box containing a sidearm."
	icon = 'icons/obj/boxes.dmi'
	icon_state = "box_of_doom" //temp

/obj/item/gunbox/psyker/attack_self(mob/living/user)
	var/list/options = list()
	options["Foundation"] = list(/obj/item/gun/projectile/revolver/foundation,/obj/item/ammo_magazine/speedloader/magnum/nullglass=3)
	options["NTPC"] = list(/obj/item/gun/projectile/revolver/foundation/agent,/obj/item/ammo_magazine/speedloader/magnum/nullglass=3)
	options["Independent"] = list(/obj/item/gun/projectile/revolver/foundation/psyker,/obj/item/ammo_magazine/speedloader/magnum/nullglass=3)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)
