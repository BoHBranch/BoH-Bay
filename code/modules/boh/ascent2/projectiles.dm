/////////
//defence lance projectile
/////////
/obj/item/projectile/beam/particle/defence
	name = "particle beam"
	icon_state = "particle"
	damage = 5
	agony = 85
	eyeblur = 1
	damage_type = ELECTROCUTE//Can be stopped entirely by certain armors.

/obj/item/projectile/beam/particle/defence/on_hit(atom/target, blocked, def_zone)
	. = ..()
	if(isliving(target))
		var/mob/living/L = target
		to_chat(target, SPAN_WARNING("You feel incredible pain, as if something is invading your mind!"))
		L.seizure()//Which is why, if it does work, it'll drop a target in one hit for cuffing.

/////////
//lethals
/////////
/obj/item/projectile/beam/particleadv
	name = "particle charge"
	icon_state = "particle"
	fire_sound = 'sound/weapons/gauss.ogg'
	damage = 65
	armor_penetration = 85
	muzzle_type = /obj/effect/projectile/laser_particle/muzzle
	tracer_type = /obj/effect/projectile/laser_particle/tracer
	impact_type = /obj/effect/projectile/laser_particle/impact
	shrapnel_chance_multiplier = 0.2
	arterial_bleed_chance_multiplier = 0.2

/obj/item/projectile/beam/particleadv/small
	name = "particle charge"
	damage = 55
	armor_penetration = 65
	shrapnel_chance_multiplier = 0.3
	arterial_bleed_chance_multiplier = 0.3