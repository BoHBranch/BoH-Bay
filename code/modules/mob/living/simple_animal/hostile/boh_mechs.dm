/////////
/*
Pretty much a copy of the large hivebot boss, though with a different sprite to fit another theme.
Not much else to it.
*/
/////////
//Projectiles
/obj/item/projectile/bullet/rcr/mech
	name = "rocket"
	distance_falloff = 2

/obj/item/projectile/beam/heavylaser/mech
	damage = 25

//Mech

#define ATTACK_MODE_MELEE    "melee"
#define ATTACK_MODE_LASER    "laser"
#define ATTACK_MODE_ROCKET   "rocket"

/mob/living/simple_animal/hostile/mech
	name = "Mauler"
	desc = "Better start running, bucko."
	icon = 'icons/mob/mecha.dmi'
	icon_state = "mauler"
	icon_living = "mauler"
	icon_dead = "mauler-broken"
	faction = "syndicate"
	health = 240//lower health due to incredibly high 'natural' armor.
	maxHealth = 240
	melee_damage_lower = 25
	melee_damage_upper = 40
	melee_damage_flags = DAM_SHARP|DAM_EDGE
	attacktext = "punched"
	speed = 0
	natural_armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES
		)
	can_escape = TRUE
	armor_type = /datum/extension/armor/toggle
	ability_cooldown = 1 MINUTE

	var/attack_mode = ATTACK_MODE_MELEE
	var/num_shots
	var/deactivated

/mob/living/simple_animal/hostile/mech/Initialize()
	. = ..()
	switch_mode(ATTACK_MODE_ROCKET)

/mob/living/simple_animal/hostile/mech/Life()
	. = ..()
	if(!.)
		return

	if(time_last_used_ability < world.time)
		switch_mode(ATTACK_MODE_ROCKET)

/mob/living/simple_animal/hostile/mech/emp_act(severity)
	. = ..()
	if(severity >= 1)
		new /obj/effect/gibspawner/robot(src.loc)
		qdel(src)
	return

/mob/living/simple_animal/hostile/mech/death()
	..(null, "explodes in a shower of sparks!")
	new /obj/effect/gibspawner/robot(src.loc)
	qdel(src)
	return

/mob/living/simple_animal/hostile/mech/proc/switch_mode(var/new_mode)
	if(!new_mode || new_mode == attack_mode)
		return

	switch(new_mode)
		if(ATTACK_MODE_MELEE)
			attack_mode = ATTACK_MODE_MELEE
			ranged = FALSE
			projectilesound = null
			projectiletype = null
			num_shots = 0
			visible_message(SPAN_MFAUNA("\The [src]'s arm servos whine!"))
		if(ATTACK_MODE_LASER)
			attack_mode = ATTACK_MODE_LASER
			ranged = TRUE
			projectilesound = 'sound/weapons/marauder.ogg'
			projectiletype = /obj/item/projectile/beam/heavylaser/mech
			num_shots = 4
			fire_desc = "fires a beam of energy"
			visible_message(SPAN_MFAUNA("\The [src]'s laser rifle whines!"))
		if(ATTACK_MODE_ROCKET)
			attack_mode = ATTACK_MODE_ROCKET
			ranged = TRUE
			projectilesound = 'sound/effects/Explosion1.ogg'
			projectiletype = /obj/item/projectile/bullet/gyro/megabot
			num_shots = 1
			cooldown_ability(ability_cooldown)
			fire_desc = "launches a rocket"
			visible_message(SPAN_MFAUNA("\The [src]'s missile pod rumbles!"))

	update_icon()

/mob/living/simple_animal/hostile/mech/OpenFire(target_mob)
	if(num_shots <= 0)
		if(attack_mode == ATTACK_MODE_ROCKET)
			switch_mode(ATTACK_MODE_LASER)
		else
			switch_mode(ATTACK_MODE_MELEE)
		return
	..()

/mob/living/simple_animal/hostile/mech/Shoot(target, start, user, bullet)
	..()
	num_shots--

#undef ATTACK_MODE_MELEE
#undef ATTACK_MODE_LASER
#undef ATTACK_MODE_ROCKET