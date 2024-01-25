SUBSYSTEM_DEF(cuisine)
	name = "Cuisine"
	flags = SS_NO_FIRE
	init_order = SS_INIT_MISC_LATE
	var/list/recipe_datums = list()


#define ADD_TO_RDATUMS(i,t) if (R.appliance & i) { LAZYADD(recipe_datums["[i]"], t); added++; }

/datum/controller/subsystem/cuisine/Initialize(timeofday)
	for (var/type in subtypesof(/datum/recipe))
		var/datum/recipe/R = new type
		var/added = 0
		ADD_TO_RDATUMS(MICROWAVE, R)
		ADD_TO_RDATUMS(FRYER, R)
		ADD_TO_RDATUMS(OVEN, R)
		ADD_TO_RDATUMS(CANDYMAKER, R)
		ADD_TO_RDATUMS(CEREALMAKER, R)
		ADD_TO_RDATUMS(PAN, R)
		if (!added)
			log_debug("SScuisine: warning: recipe type '[type]' does not have a valid appliance type.")
			qdel(R)
	. = ..(timeofday)

#undef ADD_TO_RDATUMS