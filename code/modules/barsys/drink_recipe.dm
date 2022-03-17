/*
 * This might be a stupid attempt to separate something from chemsys that shouldn't be separated.
 * I do not care. ~Cupa
 */
/datum/drink_recipe
	var/name
	var/description
	/// See [/datum/controller/subsystem/barsys] for details.
	var/dynamic = FALSE //! TL;DF: TRUE if recipe needs randomization during init.
	/// The list of ingredients: key = name by define, value = amount in u
	var/list/ingredients = list()
	/// The list of results: key = name by define, value = amount in u
	var/list/results = list()
	/// The flavours of the cocktail
	var/list/flavours
	/// Any additional steps for the recipe
	var/list/mixing_steps
	/// The category of the drink. Purely space-wasting right now.
	var/category = "Not set"

/datum/drink_recipe/proc/StaticInit()

/datum/drink_recipe/proc/DynamicInit()

/datum/drink_recipe/proc/isDynamic()
	return dynamic
