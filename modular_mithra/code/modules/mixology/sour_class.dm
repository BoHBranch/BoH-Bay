/datum/drink_recipe/sour_class

/datum/drink_recipe/sour_class/whiskey_sour
	name = "Whiskey Sour"
	description = "A classic whiskey sour. How refined."
	ingredients = list(WHISKEY_WILDCARD = 3, LEMON_JUICE = 2, SIMPLE_SYRUP = 1)
	results = list(/datum/reagent/ethanol/whiskey_sour = 6)

/datum/drink_recipe/sour_class/whiskey_sour/rocks
	mixing_steps = list(STEP_STRAIN_ROCKS)

/datum/reagent/ethanol/whiskey_sour
	name = "Whiskey Sour"
	description = "A classic whiskey sour. How refined."
	color = "#e6c865"
	strength = 15

	glass_name = "whiskey sour"
	glass_desc = "Simple but effective."
