/*
		All negative traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/speed_slow
	name = "Sluggish"
	desc = "You move slower than the average person."
	cost = -2
	var_changes = list("slowdown" = 0.5)

/datum/trait/endurance_low
	name = "Fragile"
	desc = "Your body is more fragile than the average joe."
	cost = -2
	var_changes = list("total_health" = 75)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)


/datum/trait/minor_brute_weak
	name = "Thin Skin"
	desc = "Your skin is thinner than normal, making you slightly more susceptible to physical damage."
	cost = -1
	var_changes = list("brute_mod" = 1.15)

/datum/trait/minor_burn_weak
	name = "Inflammable Skin"
	desc = "You skin is somehow inflammable, making you slightly more susceptible to burns."
	cost = -1
	var_changes = list("burn_mod" = 1.15)

/datum/trait/conductive
	name = "Conductive Skin"
	desc = "Your skin has a lower electrical resistivity than normal, making you much more conductive."
	cost = -1
	var_changes = list("siemens_coefficient" = 1.5) //This makes you a lot weaker to tasers.


/datum/trait/photosensitive
	name = "Photosensitive"
	desc = "Your eyes are especially sensitive to bright lights."
	cost = -1
	var_changes = list("flash_mod" = 2.0)

/datum/trait/hollow
	name = "Glass Bones"
	desc = "Your limbs are just more fragile than usual for whatever reason, making them easier to break."
	cost = -2

/datum/trait/hollow/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	for(var/obj/item/organ/external/O in H.organs)
		O.min_broken_damage *= 0.5

/datum/trait/oxy_weak
	name = "Haemoglobin Improbus"
	desc = "You have a lower blood-oxygen saturation, meaning asphyxiation is a greater risk to you."
	cost = -1
	var_changes = list("oxy_mod" = 1.25)

/datum/trait/toxin_weak
	name = "Paper Liver"
	desc = "Your metabolism isn't very good at processing toxins, making poisons more effective against you."
	cost = -1
	var_changes = list("toxins_mod" = 1.15)

/datum/trait/noodlyarms
	name = "Muscular Atrophy"
	desc = "You have less muscle mass than normal, giving you inferior strength."
	cost = -1
	var_changes = list("strength" = STR_LOW)