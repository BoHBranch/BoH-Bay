/mob/living/simple_animal/hostile/russian
	name = "russian"
	desc = "For the Motherland!"
	icon_state = "russianmelee"
	icon_living = "russianmelee"
	icon_dead = "russianmelee_dead"
	icon_gib = "syndicate_gib"
	speak_chance = 0
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	stop_automated_movement_when_pulled = 0
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	can_escape = TRUE
	attacktext = "stabbed"
	a_intent = I_HURT
	var/corpse = /obj/effect/landmark/corpse/russian
	unsuitable_atmos_damage = 15
	faction = "russian"
	status_flags = CANPUSH
	melee_damage_flags = DAM_SHARP|DAM_EDGE


/mob/living/simple_animal/hostile/russian/ranged
	icon_state = "russianranged"
	icon_living = "russianranged"
	corpse = /obj/effect/landmark/corpse/russian/ranged
	ranged = 1
	projectiletype = /obj/item/projectile/bullet
	projectilesound = 'sound/weapons/gunshot/gunshot2.ogg'


/mob/living/simple_animal/hostile/russian/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	if(corpse)
		new corpse (src.loc)
	qdel(src)
	return

/mob/living/simple_animal/hostile/russian/ranged/bad_atmos
	icon_state = "russianrangedmasked"
	icon_living = "russianrangedmasked"
	corpse = /obj/effect/landmark/corpse/russian/masked
	min_gas = null
	max_gas = null
	minbodytemp = 0

/mob/living/simple_animal/hostile/russian/bad_atmos
	icon_state = "russianmeleemasked"
	icon_living = "russianmeleemasked"
	corpse = /obj/effect/landmark/corpse/russian/masked
	min_gas = null
	max_gas = null
	minbodytemp = 0

//outfits for masked corpses
/obj/effect/landmark/corpse/russian/masked
	name = "Masked Russian"
	corpse_outfits = list(/decl/hierarchy/outfit/soviet_soldier/masked)
	spawn_flags = CORPSE_SPAWNER_NO_RANDOMIZATION

//actual outfit
/decl/hierarchy/outfit/soviet_soldier/masked
	name = "Masked Soviet soldier"
	uniform = /obj/item/clothing/under/soviet
	shoes = /obj/item/clothing/shoes/combat
	head = /obj/item/clothing/head/ushanka
	mask = /obj/item/clothing/mask/gas/budget
	gloves = /obj/item/clothing/gloves/thick/combat
	back = /obj/item/weapon/storage/backpack/satchel
	belt = /obj/item/weapon/gun/projectile/revolver