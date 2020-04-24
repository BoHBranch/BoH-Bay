/datum/language/sergal
	name = LANGUAGE_SERGAL
	desc = "The dominant language of the Sergal homeworld, Tal. It consists of aggressive low-pitched hissing and throaty growling."
	speech_verb = "snarls"
	ask_verb = "snarls"
	exclaim_verb = "barks"
	colour = "changeling"
	key = "z"
	flags = WHITELISTED
	space_chance = 40
	syllables = list("grr", "gah", "woof", "arf", "arra", "rah", "wor", "sarg")
	shorthand = "SG"
	max_partial_understanding = 2
	partial_understanding = list(
		LANGUAGE_HUMAN_EURO = 2,
		LANGUAGE_SPACER = 2
	)