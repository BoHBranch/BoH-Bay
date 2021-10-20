var/list/all_reactions

/decl/fusion_reaction
	var/list/l_reactants = list() // New list of reactants necessary
	var/list/products = list()
	var/minimum_energy_level = 0
	var/maximum_energy_level = 0 // Set to 0 to disable
	var/minimum_reaction_temperature = 0
	var/maximum_reaction_temperature = 0 // Set to 0 to disable
	var/energy_consumption = 0
	var/energy_production = 0
	var/radiation = 0
	var/instability = 0
	var/priority = 1
	var/reaction_chance = 0
	var/is_special = FALSE // Should we call a special handler for this reaction?
	var/wacky = FALSE // In the future, reactions with this flag will be able to be disabled
	var/hackyconfighack = TRUE

/decl/fusion_reaction/proc/handle_reaction_special(var/obj/effect/fusion_em_field/holder)
	return 0

// ------
// IN-DEV
// ------

// Cache all our reactions at init or at admin discretion for easier access during procs
proc/cache_reactions()
	all_reactions = new/list
	for (var/rtype in typesof(/decl/fusion_reaction) - /decl/fusion_reaction)
		var/decl/fusion_reaction/current_reaction = new rtype()
		if	(current_reaction.wacky && current_reaction.hackyconfighack)
			all_reactions.Add(current_reaction)

// VERY UNIDEAL REACTIONS.
/decl/fusion_reaction/phoron_supermatter
	l_reactants = list("supermatter" = 1, "phoron" = 1)
	energy_consumption = 0
	energy_production = 5
	radiation = 40
	instability = 20
	is_special = TRUE

// Kept for reference
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

// ------
// IN-DEV
// ------

// CNO demo

/decl/fusion_reaction/cno_one
	l_reactants = list("carbon" = 1, "hydrogen" = 1)
	energy_production = 1.95
	products = list("nitrogen-13" = 1, "gamma ray" = 1)
	priority = 10

/decl/fusion_reaction/cno_two
	l_reactants = list("nitrogen-13" = 1)
	energy_production = 1.20
	products = list("carbon-13" = 1, "positron" = 1, "neutrino" = 1)
	priority = 20

/decl/fusion_reaction/cno_three
	l_reactants = list("carbon-13" = 1, "hydrogen" = 1)
	energy_production = 7.54
	products = list("nitrogen" = 1, "gamma ray" = 1)
	priority = 30

/decl/fusion_reaction/cno_four
	l_reactants = list("nitrogen" = 1, "hydrogen" = 1)
	energy_production = 7.35
	products = list("oxygen-15" = 1, "gamma ray" = 1)
	priority = 40

/decl/fusion_reaction/cno_five
	l_reactants = list("oxygen-15" = 1)
	energy_production = 1.73
	products = list("nitrogen-15" = 1, "positron" = 1, "neutrino" = 1)
	priority = 50

/decl/fusion_reaction/cno_six
	l_reactants = list("nitrogen-15" = 1, "hydrogen" = 1)
	energy_production = 4.96
	products = list("carbon" = 0.99999, "helium" = 1) // stop infinite carbon >:| (floating point errors will make this slightly better than it is)
	priority = 60

/decl/fusion_reaction/gamma_emission
	l_reactants = list("gamma ray" = 1)
	radiation = 1
	energy_consumption = 0.1
	products = list()
	priority = 70

/decl/fusion_reaction/neutrino_decay
	l_reactants = list("neutrino" = 1)
	instability = 1
	energy_consumption = 0.1
	products = list()
	priority = 80

/decl/fusion_reaction/tpa_one
	l_reactants = list("helium" = 2)
	energy_consumption = 0.09
	products = list("beryllium" = 1, "gamma ray" = 1)
	priority = 10

/decl/fusion_reaction/tpa_two
	l_reactants = list("beryllium" = 1, "helium" = 1)
	energy_production = 7.36
	products = list("carbon" = 1, "gamma ray" = 1)
	priority = 20

/decl/fusion_reaction/tpa_anomaly
	l_reactants = list("carbon" = 1, "helium" = 1)
	energy_production = 7.16
	products = list("oxygen" = 1, "gamma ray" = 1)
	priority = 1

/decl/fusion_reaction/ap_one
	l_reactants = list("carbon" = 1, "helium" = 1)
	energy_production = 7.16
	products = list("oxygen" = 1, "gamma ray" = 1)
	priority = 10

/decl/fusion_reaction/ap_two
	l_reactants = list("oxygen" = 1, "helium" = 1)
	energy_production = 4.73
	products = list("neon" = 1, "gamma ray" = 1)
	priority = 20

/decl/fusion_reaction/ap_three
	l_reactants = list("neon" = 1, "helium" = 1)
	energy_production = 9.32
	products = list("magnesium" = 1, "gamma ray" = 1)
	priority = 30

/decl/fusion_reaction/ap_four
	l_reactants = list("magnesium" = 1, "helium" = 1)
	energy_production = 9.98
	products = list("silicon" = 1, "gamma ray" = 1)
	priority = 25

/decl/fusion_reaction/ap_five
	l_reactants = list("silicon" = 1, "helium" = 1)
	energy_production = 6.95
	products = list("sulfur" = 1, "gamma ray" = 1)
	priority = 20

/decl/fusion_reaction/ap_six
	l_reactants = list("sulfur" = 1, "helium" = 1)
	energy_production = 6.64
	products = list("argon" = 1, "gamma ray" = 1)
	priority = 15

/decl/fusion_reaction/ap_seven
	l_reactants = list("argon" = 1, "helium" = 1)
	energy_production = 7.04
	products = list("calcium" = 1, "gamma ray" = 1)
	priority = 10

/decl/fusion_reaction/ap_eight
	l_reactants = list("calcium" = 1, "helium" = 1)
	energy_production = 5.13
	products = list("titanium" = 1, "gamma ray" = 1)
	priority = 5

/decl/fusion_reaction/ap_nine
	l_reactants = list("titanium" = 1, "helium" = 1)
	energy_production = 7.70
	products = list("chromium" = 1, "gamma ray" = 1)
	priority = 4

/decl/fusion_reaction/ap_ten
	l_reactants = list("chromium" = 1, "helium" = 1)
	energy_production = 7.94
	products = list("iron" = 1, "gamma ray" = 1)
	priority = 3

/decl/fusion_reaction/ap_eleven
	l_reactants = list("iron" = 1, "helium" = 1)
	energy_production = 8.00
	products = list("nickel" = 1, "gamma ray" = 1)
	priority = 2

/decl/fusion_reaction/pp_one
	l_reactants = list("helium-3" = 2)
	energy_production = 12.85
	products = list("helium" = 1, "hydrogen" = 2)
	priority = 10

/decl/fusion_reaction/pp_two_one
	l_reactants = list("helium-3" = 1, "helium" = 1)
	energy_production = 1.59
	products = list("beryllium-7" = 1, "gamma ray" = 1)
	priority = 10

/decl/fusion_reaction/pp_two_two
	l_reactants = list("beryllium-7" = 1, "electron" = 1)
	energy_production = 0.76
	products = list("lithium-7" = 1, "electron neutrino" = 1)
	priority = 20

/decl/fusion_reaction/pp_two_three
	l_reactants = list("lithium-7" = 1, "hydrogen" = 1)
	energy_production = 17.35
	products = list("helium" = 2)
	priority = 30

/decl/fusion_reaction/pp_three_one
	l_reactants = list("helium-3" = 1, "helium" = 1)
	energy_production = 1.59
	products = list("berrylium-7" = 1, "gamma ray" = 1)
	priority = 10

/decl/fusion_reaction/pp_three_two
	l_reactants = list("beryllium-7" = 1, "hydrogen" = 1)
	energy_production = 0.29
	products = list("boron-8" = 1, "gamma ray" = 1)
	priority = 20

/decl/fusion_reaction/pp_three_three
	l_reactants = list("boron-8" = 1)
	energy_production = 10.19
	products = list("beryllium" = 1, "positron" = 1, "electron neutrino" = 1)
	priority = 30

/decl/fusion_reaction/pp_three_four
	l_reactants = list("beryllium" = 1)
	energy_production = 8.01
	products = list("helium" = 2)
	priority = 40

/decl/fusion_reaction/pp_four
	l_reactants = list("helium-3" = 1, "hydrogen" = 1)
	energy_production = 19.79
	products = list("helium" = 1, "positron" = 1, "electron neutrino" = 1)
	priority = 1

/decl/fusion_reaction/posi_elec_neut_annihilation
	l_reactants = list("positron" = 1, "electron neutrino" = 1)
	energy_production = 20
	products = list("gamma ray" = 2)
	priority = 1

/decl/fusion_reaction/proton_proton
	l_reactants = list("proton" = 2)
	energy_production = 5.69
	products = list("deuterium" = 1, "positron" = 1, "electron neutrino" = 1)
	priority = 1

/decl/fusion_reaction/proton_proton_electron
	l_reactants = list("proton" = 2, "electron" = 1)
	energy_production = 1.44
	products = list("deuterium" = 1, "electron neutrino" = 1)
	priority = 1

/decl/fusion_reaction/deuterium_hydrogen
	l_reactants = list("deuterium" = 1, "hydrogen" = 1)
	energy_production = 5.49
	products = list("helium-3" = 1, "gamma ray" = 1)





































// the cursed place
/decl/fusion_reaction/wacky
	wacky = TRUE
///decl/fusion_reaction/suppermatter_boss_fight

// for the bravest
/decl/fusion_reaction/wacky/cooking
	energy_production = 0
	energy_consumption = 10
	instability = 100
	is_special = TRUE

/decl/fusion_reaction/wacky/cooking/steak
	l_reactants = list("raw steak" = 1, "metaphoron" = 1)
	minimum_reaction_temperature = 100000
	products = list("fusion steak" = 1)

/decl/fusion_reaction/wacky/cooking/steak/handle_reaction_special(obj/effect/fusion_em_field/holder)
	// TBD
