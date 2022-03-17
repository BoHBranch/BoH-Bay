SUBSYSTEM_DEF(barsys)
	name = "Bar System"
	flags = SS_NO_FIRE
	init_order = SS_INIT_MISC_LATE

	/*
	 * These attributes correspond to the handling of taste.
	 * See individual dmdoc for more information on expected behaviour.
	 */
	/// Holds a 2D master list of tastes per species as identified by code/__defines/mobs.dm
	var/list/tastes
	/// Holds a 2D master list of allergies per species as identified by code/__defines/mobs.dm
	var/list/allergies
	/// Holds a master list of all flavours that exist. This will contain a custom datatype associating flavours to flavourgroups.
	var/list/flavours
	/// Holds a master list of all flavourgroups that exist. This will be a key list.
	var/list/flavourgroups

	/*
	 * These attributes correspond to the handling of drinks.
	 * See individual dmdoc for more information on expected behaviour.
	 * Dynamic recipes are those using a randomizer during SS_INIT to determine ingredients or other properties.
	 * Do note that recipes using a randomizer exclusively during consumption do not count as dynamic.
	 */
	/// Holds a master list of all static recipes.
	var/list/static_drink_recipes = list()
	/// Holds a master list of all dynamic recipes.
	var/list/dynamic_drink_recipes = list()

	/*
	 * These attributes correspond to the handling of mixing.
	 * See individual dmdoc for more information on expected behaviour.
	 */
	/// Holds a master list of mixology devices.
	var/list/drink_mixers
	/// Holds a master list of additional recipe steps.
	var/list/mixing_steps

	/*
	 * These attributes are general functionality.
	 */
	var/debug = FALSE

/datum/controller/subsystem/barsys/Initialize(timeofday)
	var/random_seed = world.realtime // Pseudorandom but don't pay attention

	for (var/path in subtypesof(/datum/drink_recipe))
		var/datum/drink_recipe/D = new path()

		if (D.isDynamic()) dynamic_drink_recipes.Add(D)
		else static_drink_recipes.Add(D)

	for (var/datum/drink_recipe/D in static_drink_recipes)
		D.StaticInit()
	for (var/datum/drink_recipe/D in dynamic_drink_recipes)
		D.DynamicInit(random_seed)

	. = ..(timeofday)

/datum/controller/subsystem/barsys/proc/toggleDebug()
	debug = !debug
