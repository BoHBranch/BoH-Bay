var/list/all_reactions

/decl/fusion_reaction
	var/list/l_reactants = list() // New list of reactants necessary
	var/list/products = list()
	var/minimum_energy_level = 1
	var/maximum_energy_level = 0 // Set to 0 to disable
	var/minimum_reaction_temperature = 100
	var/maximum_reaction_temperature = 0 // Set to 0 to disable
	var/energy_consumption = 0
	var/energy_production = 0
	var/radiation = 0
	var/instability = 0
	var/priority = 100
	var/reaction_chance = 0
	var/is_special = FALSE // Should we call a special handler for this reaction?

/decl/fusion_reaction/proc/handle_reaction_special(var/obj/effect/fusion_em_field/holder)
	return 0

// ------
// IN-DEV
// ------

// Cache all our reactions at init or at admin discretion for easier access during procs
proc/cache_reactions()
	all_reactions = new/list
	for(var/rtype in typesof(/decl/fusion_reaction) - /decl/fusion_reaction)
		var/decl/fusion_reaction/current_reaction = new rtype()
		all_reactions.Add(current_reaction)

// Material fuels
//  deuterium
//  tritium
//  phoron
//  supermatter

// Gaseous/reagent fuels
// hydrogen
//  helium
//  lithium
//  boron

// Basic power production reactions.
// This is not necessarily realistic, but it makes a basic failure more spectacular.
/decl/fusion_reaction/hydrogen_hydrogen
	l_reactants = list("hydrogen" = 2)
	energy_consumption = 1
	energy_production = 2
	products = list("helium" = 1)
	priority = 10

/decl/fusion_reaction/deuterium_deuterium
	l_reactants = list("deuterium" = 2)
	energy_consumption = 1
	energy_production = 2
	priority = 0

// Advanced production reactions (todo)
/decl/fusion_reaction/deuterium_helium
	l_reactants = list("deuterium" = 1, "helium" = 1)
	energy_consumption = 1
	energy_production = 5
	radiation = 2

/decl/fusion_reaction/deuterium_tritium
	l_reactants = list("deuterium" = 1, "tritium" = 1)
	energy_consumption = 1
	energy_production = 1
	products = list("helium" = 1)
	instability = 0.5
	radiation = 3

/decl/fusion_reaction/deuterium_lithium
	l_reactants = list("deuterium" = 1, "lithium" = 1)
	energy_consumption = 2
	energy_production = 0
	radiation = 3
	products = list("tritium" = 1)
	instability = 1

// Unideal/material production reactions
/decl/fusion_reaction/oxygen_oxygen
	l_reactants = list("oxygen" = 2)
	energy_consumption = 10
	energy_production = 0
	instability = 5
	radiation = 5
	products = list("silicon" = 1)

/decl/fusion_reaction/iron_iron
	l_reactants = list("iron" = 2)
	products = list("silver" = 10, "gold" = 10, "platinum" = 10) // Not realistic but w/e
	energy_consumption = 10
	energy_production = 0
	instability = 2
	minimum_reaction_temperature = 10000

/decl/fusion_reaction/phoron_hydrogen
	l_reactants = list("hydrogen" = 1, "phoron" = 1)
	energy_consumption = 10
	energy_production = 0
	instability = 5
	products = list("mhydrogen" = 1)
	minimum_reaction_temperature = 8000

// VERY UNIDEAL REACTIONS.
/decl/fusion_reaction/phoron_supermatter
	l_reactants = list("supermatter" = 1, "phoron" = 1)
	energy_consumption = 0
	energy_production = 5
	radiation = 40
	instability = 20
	is_special = TRUE

/decl/fusion_reaction/phoron_supermatter/handle_reaction_special(var/obj/effect/fusion_em_field/holder)

	wormhole_event(GetConnectedZlevels(holder))

	var/turf/origin = get_turf(holder)
	holder.Rupture()
	qdel(holder)
	var/radiation_level = rand(100, 200)

	// Copied from the SM for proof of concept. //Not any more --Cirra //Use the whole z proc --Leshana
	SSradiation.z_radiate(locate(1, 1, holder.z), radiation_level, 1)

	for(var/mob/living/mob in GLOB.living_mob_list_)
		var/turf/T = get_turf(mob)
		if(T && (holder.z == T.z))
			if(istype(mob, /mob/living/carbon/human))
				var/mob/living/carbon/human/H = mob
				H.hallucination(rand(100,150), 51)

	for(var/obj/machinery/fusion_fuel_injector/I in range(world.view, origin))
		if(I.cur_assembly && I.cur_assembly.fuel_type == MATERIAL_SUPERMATTER)
			explosion(get_turf(I), 1, 2, 3)
			spawn(5)
				if(I && I.loc)
					qdel(I)

	sleep(5)
	explosion(origin, 1, 2, 5)

	return 1


// High end reactions.
/decl/fusion_reaction/boron_hydrogen
	l_reactants = list("boron" = 1, "hydrogen" = 1)
	minimum_energy_level = 15000
	energy_consumption = 3
	energy_production = 12
	radiation = 3
	instability = 2.5


// ------
// IN-DEV
// ------

/decl/fusion_reaction/debug_one
	l_reactants = list("debug" = 1, "debugtwo" = 2)
	energy_production = 2
	instability = 0
	products = list("debugthree" = 3)

/decl/fusion_reaction/debug_two
	l_reactants = list("debugthree" = 3)
	energy_production = 10
	instability = 0
	products = list("debug" = 1, "debugtwo" = 1)
