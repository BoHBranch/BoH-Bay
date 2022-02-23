
//The weapons that fire this charge aren't functional and they don't have any other use, so there's no reason for them to be accessible until that changes. - ITR//


///decl/hierarchy/supply_pack/munition
//	name = "Ship Munitions"
//	containertype = /obj/structure/largecrate
//	containername = "mass driver munition crate"

///decl/hierarchy/supply_pack/munition/md_slug
//	name = "Ammo - Mass Driver Slug"
//	contains = list(/obj/structure/ship_munition/md_slug)
//	cost = 50

///decl/hierarchy/supply_pack/munition/ap_slug
//	name = "Ammo - Armor Piercing Mass Driver Slug"
//	contains = list(/obj/structure/ship_munition/ap_slug)
//	cost = 60

//Back to business!

/decl/hierarchy/supply_pack/munition/fire
	name = "OFD Charge - FR1-ENFER (Incendiary)"
	contains = list(/obj/structure/ship_munition/disperser_charge/fire)
	cost = 40

/decl/hierarchy/supply_pack/munition/emp
	name = "OFD Charge - EM2-QUASAR (Electromagnetic)"
	contains = list(/obj/structure/ship_munition/disperser_charge/emp)
	cost = 40

/decl/hierarchy/supply_pack/munition/mining
	name = "OFD Charge MN3-BERGBAU (Mining)"
	contains = list(/obj/structure/ship_munition/disperser_charge/mining)
	cost = 40

/decl/hierarchy/supply_pack/munition/explosive
	name = "OFD Charge XP4-INDARRA (Explosive)"
	contains = list(/obj/structure/ship_munition/disperser_charge/explosive)
	cost = 40

/decl/hierarchy/supply_pack/munition/shiptoship
	name = "OFD Charge - N8-KOSMAG slug (Anti-Ship Warhead)"
	contains = list(/obj/structure/ship_munition/disperser_charge/s2s)
	cost = 40

/decl/hierarchy/supply_pack/munition/odst
	name = "OFD-Launched Drop Pod"
	contains = list(/obj/structure/closet/odst)
	cost = 30