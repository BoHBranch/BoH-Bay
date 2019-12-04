// Various objects for 'exterior' defense.

/////////
// Turret
/////////
/obj/machinery/porta_turret/exterior
	health = 150
	maxhealth = 150
	auto_repair = 1
	locked = 1
	controllock = 1
	icon_state = "gun_turret" // for mapping. No difference in game.

	installation = /obj/item/weapon/gun/energy/gun

	check_arrest = 1
	check_records = 1
	check_weapons = 0
	check_access = 0
	check_anomalies = 1
	check_synth = 0
	ailock = 1
	lethal = 1

/////////
// Firearm
/////////

/obj/item/weapon/gun/projectile/shotgun/pump/combat/exteriorturret
	name = "integrated shotgun"
	desc = "A Hephaestus Industries KS-40, though given an open feed tube and obviously not meant to be fired without some sort of larger mechanism."
	icon_state = "cshotgun"
	item_state = "cshotgun"
	wielded_item_state = "cshotgun-wielded"
	max_shells = 3 // 4, given the one in the chamber. Lower count due to being 'integrated'.

/////////
// Projectiles
/////////

/obj/item/projectile/bullet/pellet/shotgun/exteriorturret
	name = "shrapnel"
	fire_sound = 'sound/weapons/gunshot/sniper.ogg'
	damage = 30
	pellets = 24
	range_step = 6
	spread_step = 2

/////////
// Area
/////////

/area/defturrets
	name = "\improper Anti-Boarding Control"
	icon_state = "security_sub"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_ION_SHIELDED
