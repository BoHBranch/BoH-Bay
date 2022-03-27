


/decl/hierarchy/supply_pack/munition
	name = "Ship Munitions"
	containertype = /obj/structure/largecrate
	containername = "mass driver munition crate"

//
///decl/hierarchy/supply_pack/munition/md_slug
//	name = "Ammo - Mass Driver Slug"
//	contains = list(/obj/structure/ship_munition/md_slug)
//	cost = 50

///decl/hierarchy/supply_pack/munition/ap_slug
//	name = "Ammo - Armor Piercing Mass Driver Slug"
//	contains = list(/obj/structure/ship_munition/ap_slug)
//	cost = 60

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

/decl/hierarchy/supply_pack/munition/missilecasing
	name = "Missile Casing - Empty"
	contains = list(/obj/structure/missile)
	cost = 75

/decl/hierarchy/supply_pack/munition/missilethruster
	name = "Missile Thrusters - Standard"
	contains = list(/obj/item/missile_equipment/thruster = 5)
	cost = 40

/decl/hierarchy/supply_pack/munition/missilethrusterpoint
	name = "Missile Thrusters - Point"
	contains = list(/obj/item/missile_equipment/thruster/point = 5)
	cost = 35

/decl/hierarchy/supply_pack/munition/missilethrusterplanet
	name = "Missile Thrusters - Planet"
	contains = list(/obj/item/missile_equipment/thruster/planet = 5)
	cost = 40

/decl/hierarchy/supply_pack/munition/missilethrusterhunter
	name = "Missile Thrusters - Hunter"
	contains = list(/obj/item/missile_equipment/thruster/hunter = 5)
	cost = 45

/decl/hierarchy/supply_pack/munition/missilepayloadexplosive
	name = "Missile Payload - Explosive"
	contains = list(/obj/item/missile_equipment/payload/explosive = 5)
	cost = 45

/decl/hierarchy/supply_pack/munition/missilepayloaddiffuser
	name = "Missile Payload - Shield Diffuser"
	contains = list(/obj/item/missile_equipment/payload/diffuser = 5)
	cost = 40

/decl/hierarchy/supply_pack/munition/missilepayloademp
	name = "Missile Payload - EMP"
	contains = list(/obj/item/missile_equipment/payload/emp = 5)
	cost = 35

/decl/hierarchy/supply_pack/munition/missilepayloadantimissile
	name = "Missile Payload - Antimissile"
	contains = list(/obj/item/missile_equipment/payload/antimissile = 5)
	cost = 40

/decl/hierarchy/supply_pack/munition/missileequipmentautoarm
	name = "Missile Activator - Automatic"
	contains = list(/obj/item/missile_equipment/autoarm = 5)
	cost = 40

