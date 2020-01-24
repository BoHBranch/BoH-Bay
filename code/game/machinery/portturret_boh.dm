// Various objects for 'exterior' defense.

/////////
// Turret
/////////
/obj/machinery/porta_turret/exterior
	health = 250
	maxhealth = 250
	auto_repair = 1
	locked = 1
	controllock = 1
	icon_state = "gun_turret" // for mapping. No difference in game.

	installation = /obj/item/weapon/gun/energy/exteriorturret

	check_arrest = 1
	check_records = 1
	check_weapons = 0
	check_access = 0
	check_anomalies = 1
	check_synth = 0
	ailock = 1
	lethal = 1

/////////
// Firearms
/////////
// - -

/obj/item/weapon/gun/energy/exteriorturret
	name = "energy gun"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts."
	force = 2
	projectile_type = /obj/item/projectile/beam/turret
	max_shots = 1
	w_class = ITEM_SIZE_LARGE

/////////
// Projectiles
/////////

/obj/item/projectile/beam/turret
	name = "anti-boarding salvo"
	damage = 25
	armor_penetration = 30
	damage_type = BURN
	hitchance_mod = 100 //this and dispersion likely isn't needed, but, whatever
	dispersion = 0
	distance_falloff = 0

/////////
// Area
/////////

/area/defturrets
	name = "\improper Anti-Boarding Control"
	icon_state = "security_sub"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	req_access = list(access_brig)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

