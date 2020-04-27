/////////
/*
This file will primarily contain material relating to either Foundation Agents or Nanotrasen Psykers.
*/
/////////

/obj/item/weapon/gun/projectile/revolver/foundation/agent
	name = "\improper Agent revolver"
	desc = "The DF 'Hardtack', a compact firearm designed for concealed carry by Nanotrasen Psionic Corps agents. \
	Rumored to be a copy of the Foundation's field revolver."

/obj/item/weapon/storage/briefcase/foundation/nt
	name = "\improper Nanotrasen briefcase"
	desc = "A handsome black leather briefcase. 'NTPC' appears to be stamped on the handle in an obnoxious blue."
	startswith = list(
	/obj/item/weapon/gun/projectile/revolver/foundation/agent,
	/obj/item/ammo_magazine/speedloader/magnum/nullglass=3)


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