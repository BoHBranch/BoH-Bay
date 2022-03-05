/obj/item/projectile/bullet/pellet/fragment
	damage = 30
	range_step = 2 //controls damage falloff with distance. projectiles lose a "pellet" each time they travel this distance. Can be a non-integer.

	base_spread = 0 //causes it to be treated as a shrapnel explosion instead of cone
	spread_step = 20

	silenced = 1
	fire_sound = null
	no_attack_log = 1
	muzzle_type = null

/obj/item/projectile/bullet/pellet/fragment/strong
	damage = 50

/obj/item/projectile/bullet/pellet/fragment/glass
	name = "glass fragment"
	damage = 15
	embed = 1

/obj/item/weapon/grenade/frag
	name = "fragmentation grenade"
	desc = "A military fragmentation grenade, designed to explode in a deadly shower of fragments, while avoiding massive structural damage."
	icon_state = "frggrenade"

	var/list/fragment_types = list(/obj/item/projectile/bullet/pellet/fragment = 1)
	var/num_fragments = 124//total number of fragments produced by the grenade
	var/explosion_size = 3   //size of the center explosion

	//The radius of the circle used to launch projectiles. Lower values mean less projectiles are used but if set too low gaps may appear in the spread pattern
	var/spread_range = 7 //leave as is, for some reason setting this higher makes the spread pattern have gaps close to the epicenter

/obj/item/weapon/grenade/frag/detonate()
	..()

	var/turf/O = get_turf(src)
	if(!O) return

	if(explosion_size)
		on_explosion(O)

	src.fragmentate(O, num_fragments, spread_range, fragment_types)

	qdel(src)


/obj/proc/fragmentate(var/turf/T=get_turf(src), var/fragment_number = 30, var/spreading_range = 5, var/list/fragtypes=list(/obj/item/projectile/bullet/pellet/fragment/))
	set waitfor = 0
	var/list/target_turfs = getcircle(T, spreading_range)
	var/fragments_per_projectile = round(fragment_number/target_turfs.len)

	for(var/turf/O in target_turfs)
		sleep(0)
		var/fragment_type = pickweight(fragtypes)
		var/obj/item/projectile/bullet/pellet/fragment/P = new fragment_type(T)
		P.pellets = fragments_per_projectile
		P.shot_from = src.name

		P.launch(O)

		//Make sure to hit any mobs in the source turf
		for(var/mob/living/M in T)
			//lying on a frag grenade while the grenade is on the ground causes you to absorb most of the shrapnel.
			//you will most likely be dead, but others nearby will be spared the fragments that hit you instead.
			if(M.lying && isturf(src.loc))
				P.attack_mob(M, 0, 5)
			else if(!M.lying && src.loc != get_turf(src)) //if it's not on the turf, it must be in the mob!
				P.attack_mob(M, 0, 25) //you're holding a grenade, dude!
			else
				P.attack_mob(M, 0, 100) //otherwise, allow a decent amount of fragments to pass



/obj/item/weapon/grenade/frag/proc/on_explosion(var/turf/O)
	if(explosion_size)
		explosion(O, -1, -1, explosion_size, round(explosion_size/2), 0)

/obj/item/weapon/grenade/frag/shell
	name = "fragmentation grenade"
	desc = "A light fragmentation grenade, designed to be fired from a launcher. It can still be activated and thrown by hand if necessary."
	icon_state = "fragshell"

	num_fragments = 72//less powerful than a regular frag grenade

/obj/item/weapon/grenade/frag/high_yield
	name = "fragmentation bomb"
	desc = "Larger and heavier than a standard fragmentation grenade, this device is extremely dangerous. It cannot be thrown as far because of its weight."
	icon_state = "frag"

	w_class = ITEM_SIZE_NORMAL
	throw_speed = 3
	throw_range = 5 //heavy, can't be thrown as far

	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment=1,/obj/item/projectile/bullet/pellet/fragment/strong=4)
	num_fragments = 264  //total number of fragments produced by the grenade
	explosion_size = 4

//Currently unobtainable as Bay crafting is fucked and I can't find a good recipe that doesn't seem either stupid or too difficult. So for now, these just... exist.
/obj/item/weapon/grenade/frag/glassbomb
	name = "glass bomb"
	desc = "A crude explosive device made from shards of glass and explosives. Produces a blizzard of sharp fragments."
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/glass=1)
	explosion_size = 0
	num_fragments = 72

/obj/item/weapon/grenade/frag/pipebomb
	name = "pipe bomb"
	desc = "An insidious, crude explosive device made from a pipe and some explosive material. Commonly utilized by eco-terrorists."
	num_fragments = 190
	explosion_size = 5
	throw_speed = 3
	throw_range = 5

/obj/item/weapon/grenade/frag/high_yield/on_explosion(var/turf/O)
	if(explosion_size)
		explosion(O, -1, round(explosion_size/2), explosion_size, round(explosion_size/2), 0) //has a chance to blow a hole in the floor

/obj/item/weapon/grenade/frag/rubber
	name = "stinger grenade"
	desc = "A grenade designed to release hundreds of rubber balls. While less-than-lethal, it is still capable of injuring or horribly disfiguring a suspect."
	icon_state = "concussion"
	fragment_types = list(/obj/item/projectile/bullet/pellet/rubber=1)
	num_fragments = 224
	explosion_size = 0 // Rubber grenade, doesn't have explosives.

/obj/item/projectile/bullet/pellet/rubber // Rubber balls, deal agony and a tiny bit of damage.
	name = "rubber ball"
	damage = 5
	agony = 25
	embed = 1
	sharp = 0

/obj/item/projectile/bullet/pellet/rubber/on_hit(var/atom/target, var/blocked = 0, var/alien)
	..()
	var/eyes_covered = 0

	var/effective_strength = 5

	var/obj/item/safe_thing = null

	if(!istype(target, /mob/living/carbon/human))
		return
	if(alien == IS_SKRELL)	//Larger eyes means bigger targets.
		effective_strength = 8

	if(alien == IS_DIONA)
		effective_strength = 1

	var/mob/living/carbon/human/M = target
	if(istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = M
		if(!H.can_feel_pain())
			return
		if(H.head)
			if(H.head.body_parts_covered & EYES)
				eyes_covered = 1
				safe_thing = H.head
		if(H.wear_mask)
			if(!eyes_covered && H.wear_mask.body_parts_covered & EYES)
				eyes_covered = 1
				safe_thing = H.wear_mask
		if(H.glasses && H.glasses.body_parts_covered & EYES)
			if(!eyes_covered)
				eyes_covered = 1
				if(!safe_thing)
					safe_thing = H.glasses
	if(eyes_covered)
		to_chat(M, "<span class='warning'>Your [safe_thing] protects you from the rubber ball!</span>")
	else
		if(prob(20) && EYES)
//			M.apply_damage(EYES,15,BRUTE) //I was tired. Someone else fix this or something if you want it.
			to_chat(M, "<span class='warning'>A rubber ball lodges itself into your eye!</span>")
			to_chat(M, "<span class='warning'>Oh god, the pain!</span>")
			M.eye_blurry = max(M.eye_blurry, effective_strength * 5)
			M.eye_blind = max(M.eye_blind, effective_strength)
			M.apply_effect(6 * effective_strength, PAIN, 0)
