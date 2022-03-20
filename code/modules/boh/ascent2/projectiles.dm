/////////
//defence lance projectile
/////////
/obj/item/projectile/beam/particle/defence
	name = "particle beam"
	icon_state = "particle"
	damage = 5
	agony = 90
	eyeblur = 1
	damage_type = ELECTROCUTE//Can be stopped entirely by certain armors.

/////////
//lethals
/////////
/obj/item/projectile/beam/particleadv
	name = "particle charge"
	icon_state = "particle"
	fire_sound = 'sound/weapons/gauss.ogg'
	damage = 60
	armor_penetration = 85
	muzzle_type = /obj/effect/projectile/laser_particle/muzzle
	tracer_type = /obj/effect/projectile/laser_particle/tracer
	impact_type = /obj/effect/projectile/laser_particle/impact
	shrapnel_chance_multiplier = 0.2
	arterial_bleed_chance_multiplier = 0.2

/obj/item/projectile/beam/particleadv/small
	name = "particle charge"
	damage = 30
	armor_penetration = 40
	shrapnel_chance_multiplier = 0.3
	arterial_bleed_chance_multiplier = 0.3