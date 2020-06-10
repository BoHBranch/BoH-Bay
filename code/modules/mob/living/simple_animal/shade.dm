/mob/living/simple_animal/shade
	name = "Shade"
	real_name = "Shade"
	desc = "A bound spirit"
	icon = 'icons/mob/mob.dmi'
	icon_state = "shade"
	icon_living = "shade"
	icon_dead = "shade_dead"
	gender = NEUTER
	maxHealth = 50
	health = 50
	universal_speak = TRUE
	speak_emote = list("hisses")
	emote_hear = list("wails","screeches")
	response_help  = "puts their hand through"
	response_disarm = "flails at"
	response_harm   = "punches"
	melee_damage_lower = 5
	melee_damage_upper = 15
	attacktext = "drained the life from"
	minbodytemp = 0
	maxbodytemp = 4000
	min_gas = null
	max_gas = null
	speed = -1
	stop_automated_movement = 1
	status_flags = 0
	faction = "cult"
	supernatural = 1
	status_flags = CANPUSH

	bleed_colour = "#181933"

	meat_type =     null
	meat_amount =   0
	bone_material = null
	bone_amount =   0
	skin_material = null
	skin_amount =   0

/mob/living/simple_animal/shade/cultify()
	return

/mob/living/simple_animal/shade/death()
	..(null, SPAN_WARNING("\the[src] lets out a contented sigh as \his form unwinds."), "The bonds tying you to this mortal plane have been severed.")
	new /obj/item/weapon/ectoplasm (src.loc)
	ghostize()
	qdel(src)

