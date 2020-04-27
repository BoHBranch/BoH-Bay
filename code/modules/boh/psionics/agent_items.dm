/////////
/*
This file will primarily contain material relating to either Foundation Agents or Nanotrasen Psykers.
*/
/////////

/obj/item/weapon/gun/projectile/revolver/agent
	name = "\improper Agent revolver"
	icon = 'icons/obj/guns/foundation.dmi'
	icon_state = "foundation"
	desc = "The DF 'Hardtack', a compact firearm designed for concealed carry by Nanotrasen Psionic Corps agents. \
	Rumored to be a copy of the Foundation's field revolver."
	ammo_type = /obj/item/ammo_casing/pistol/magnum/nullglass

/obj/item/weapon/gun/projectile/revolver/foundation/disrupts_psionics()
	return FALSE

/obj/item/weapon/storage/briefcase/foundation/nt
	name = "\improper Nanotrasen briefcase"
	desc = "A handsome black leather briefcase. 'NTPC' appears to be stamped on the handle in an obnoxious blue."

/obj/item/weapon/storage/briefcase/foundation/nt/revolver/New()
	..()
	new /obj/item/weapon/gun/projectile/revolver/agent(src)
	new /obj/item/ammo_magazine/speedloader/magnum/nullglass(src)
	new /obj/item/ammo_magazine/speedloader/magnum/nullglass(src)
	new /obj/item/ammo_magazine/speedloader/magnum/nullglass(src)


//////////
// Agent Jacket
/////////
/obj/item/clothing/suit/storage/toggle/suit/black/agent
	name = "\improper NTPC Agent Jacket"
	desc = "A black dress suit. 'NTPC' appears to be embroidered under the cuffs."

/////////
//Null Ring
/////////
/obj/item/clothing/ring/material/nullglass/New(var/newloc)
	..(newloc, MATERIAL_NULLGLASS)