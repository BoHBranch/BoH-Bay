#define FUSION_ENERGY_PER_K        20
#define FUSION_INSTABILITY_DIVISOR 50000
#define FUSION_RUPTURE_THRESHOLD   10000
#define FUSION_REACTANT_CAP        10000

/obj/effect/fusion_em_field
	name = "electromagnetic field"
	desc = "A coruscating, barely visible field of energy. It is shaped like a slightly flattened torus."
	icon = 'icons/obj/machines/power/fusion.dmi'
	icon_state = "emfield_s1"
	alpha = 50
	layer = 4
	light_color = COLOR_BLUE

	var/size = 1
	var/energy = 0
	var/plasma_temperature = 0
	var/radiation = 0
	var/field_strength = 0.01
	var/tick_instability = 0
	var/percent_unstable = 0

	var/obj/machinery/power/fusion_core/owned_core
	var/list/reactants = list()
	var/list/particle_catchers = list()

	var/list/ignore_types = list(
		/obj/item/projectile,
		/obj/effect,
		/obj/structure/cable,
		/obj/machinery/atmospherics
		)

	var/light_min_range = 2
	var/light_min_power = 0.2
	var/light_max_range = 12
	var/light_max_power = 1

	var/last_range
	var/last_power

/obj/effect/fusion_em_field/New(loc, var/obj/machinery/power/fusion_core/new_owned_core)
	..()

	set_light(light_min_power, light_min_range / 10, light_min_range)
	last_range = light_min_range
	last_power = light_min_power

	owned_core = new_owned_core
	if(!owned_core)
		qdel(src)

	//create the gimmicky things to handle field collisions
	var/obj/effect/fusion_particle_catcher/catcher

	catcher = new (locate(src.x,src.y,src.z))
	catcher.parent = src
	catcher.SetSize(1)
	particle_catchers.Add(catcher)

	for(var/iter=1,iter<=6,iter++)
		catcher = new (locate(src.x-iter,src.y,src.z))
		catcher.parent = src
		catcher.SetSize((iter*2)+1)
		particle_catchers.Add(catcher)

		catcher = new (locate(src.x+iter,src.y,src.z))
		catcher.parent = src
		catcher.SetSize((iter*2)+1)
		particle_catchers.Add(catcher)

		catcher = new (locate(src.x,src.y+iter,src.z))
		catcher.parent = src
		catcher.SetSize((iter*2)+1)
		particle_catchers.Add(catcher)

		catcher = new (locate(src.x,src.y-iter,src.z))
		catcher.parent = src
		catcher.SetSize((iter*2)+1)
		particle_catchers.Add(catcher)

	cache_reactions()

	START_PROCESSING(SSobj, src)

/obj/effect/fusion_em_field/Process()
	//make sure the field generator is still intact
	if(!owned_core || QDELETED(owned_core))
		qdel(src)
		return

	// Take some gas up from our environment.
	var/added_particles = FALSE
	var/datum/gas_mixture/uptake_gas = owned_core.loc.return_air()
	if(uptake_gas)
		uptake_gas = uptake_gas.remove_by_flag(XGM_GAS_FUSION_FUEL, rand(50,100))
	if(uptake_gas && uptake_gas.total_moles)
		for(var/gasname in uptake_gas.gas)
			if(uptake_gas.gas[gasname]*10 > reactants[gasname])
				AddParticles(gasname, uptake_gas.gas[gasname]*10)
				uptake_gas.adjust_gas(gasname, -(uptake_gas.gas[gasname]), update=FALSE)
				added_particles = TRUE
		if(added_particles)
			uptake_gas.update_values()

	//let the particles inside the field react
	ReactNew()

	// Dump power to our powernet.
	owned_core.add_avail(FUSION_ENERGY_PER_K * plasma_temperature)

	// Energy decay.
	if(plasma_temperature >= 1)
		var/lost = plasma_temperature*0.01
		radiation += lost
		plasma_temperature -= lost

	//handle some reactants formatting
	for(var/reactant in reactants)
		var/amount = reactants[reactant]
		if(amount < 1)
			reactants.Remove(reactant)
		else if(amount >= FUSION_REACTANT_CAP)
			var/radiate = rand(3 * amount / 4, amount / 4)
			reactants[reactant] -= radiate
			radiation += radiate

	var/use_range
	var/use_power
	if(plasma_temperature <= 6000)
		use_range = light_min_range
		use_power = light_min_power
	else if(plasma_temperature >= 25000)
		use_range = light_max_range
		use_power = light_max_power
	else
		var/temp_mod = ((plasma_temperature-5000)/20000)
		use_range = light_min_range + ceil((light_max_range-light_min_range)*temp_mod)
		use_power = light_min_power + ceil((light_max_power-light_min_power)*temp_mod)

	if(last_range != use_range || last_power != use_power)
		set_light(min(use_power, 1), use_range / 6, use_range) //cap first arg at 1 to avoid breaking lighting stuff.
		last_range = use_range
		last_power = use_power

	check_instability()
	Radiate()
	if(radiation)
		SSradiation.radiate(src, round(radiation/1000))
		if (locate(src.x, src.y, src.z-1))
			SSradiation.radiate(locate(src.x, src.y, src.z-1), round(radiation/100000))
		if (locate(src.x, src.y, src.z+1))
			SSradiation.radiate(locate(src.x, src.y, src.z+1), round(radiation/100000))
		radiation -= radiation * 0.1
	return 1

/obj/effect/fusion_em_field/proc/check_instability()
	if(tick_instability > 0)
		percent_unstable += (tick_instability*size)/FUSION_INSTABILITY_DIVISOR
		tick_instability = 0
	else
		if(percent_unstable < 0)
			percent_unstable = 0
		else
			if(percent_unstable > 1)
				percent_unstable = 1
			if(percent_unstable > 0)
				percent_unstable = max(0, percent_unstable-rand(0.01,0.03))

	if(percent_unstable >= 1)
		owned_core.Shutdown(force_rupture=1)
	else
		if(percent_unstable > 0.5 && prob(percent_unstable*100))
			if(plasma_temperature < FUSION_RUPTURE_THRESHOLD)
				visible_message("<span class='danger'>\The [src] ripples uneasily, like a disturbed pond.</span>")
			else
				var/flare
				var/fuel_loss
				var/rupture
				if(percent_unstable < 0.7)
					visible_message("<span class='danger'>\The [src] ripples uneasily, like a disturbed pond.</span>")
					fuel_loss = prob(5)
				else if(percent_unstable < 0.9)
					visible_message("<span class='danger'>\The [src] undulates violently, shedding plumes of plasma!</span>")
					flare = prob(50)
					fuel_loss = prob(20)
					rupture = prob(5)
				else
					visible_message("<span class='danger'>\The [src] is wracked by a series of horrendous distortions, buckling and twisting like a living thing!</span>")
					flare = 1
					fuel_loss = prob(50)
					rupture = prob(25)

				if(rupture)
					owned_core.Shutdown(force_rupture=1)
				else
					var/lost_plasma = (plasma_temperature*percent_unstable)
					radiation += lost_plasma
					if(flare)
						radiation += plasma_temperature/2
					plasma_temperature -= lost_plasma

					if(fuel_loss)
						for(var/particle in reactants)
							var/lost_fuel = reactants[particle]*percent_unstable
							radiation += lost_fuel
							reactants[particle] -= lost_fuel
							if(reactants[particle] <= 0)
								reactants.Remove(particle)
					Radiate()
	return

/obj/effect/fusion_em_field/proc/is_shutdown_safe()
	return plasma_temperature < 1000

/obj/effect/fusion_em_field/proc/Rupture()
	visible_message("<span class='danger'>\The [src] shudders like a dying animal before flaring to eye-searing brightness and rupturing!</span>")
	set_light(1, 0.1, 15, 2, "#ccccff")
	empulse(get_turf(src), ceil(plasma_temperature/1000), ceil(plasma_temperature/300))
	sleep(5)
	RadiateAll()
	explosion(get_turf(owned_core), min(plasma_temperature/1000, 10), min(plasma_temperature/1000, 7), min(plasma_temperature/1000, 10), min(plasma_temperature/300, 30), 1, DOWN)
	//explosion(get_turf(owned_core),-1,-1,8,10) // Blow out all the windows.
	return

/obj/effect/fusion_em_field/proc/ChangeFieldStrength(var/new_strength)
	var/calc_size = 1
	if(new_strength <= 50)
		calc_size = 1
	else if(new_strength <= 200)
		calc_size = 3
	else if(new_strength <= 500)
		calc_size = 5
	else if(new_strength <= 1000)
		calc_size = 7
	else if(new_strength <= 2000)
		calc_size = 9
	else if(new_strength <= 5000)
		calc_size = 11
	else
		calc_size = 13
	field_strength = new_strength
	change_size(calc_size)

/obj/effect/fusion_em_field/proc/AddEnergy(var/a_energy, var/a_plasma_temperature)
	energy += a_energy
	plasma_temperature += a_plasma_temperature
	if(a_energy && percent_unstable > 0)
		percent_unstable -= a_energy/10000
		if(percent_unstable < 0)
			percent_unstable = 0
	while(energy >= 100)
		energy -= 100
		plasma_temperature += 1

/obj/effect/fusion_em_field/proc/AddParticles(var/name, var/quantity = 1)
	if(name in reactants)
		reactants[name] += quantity
	else
		reactants.Add(name)
		reactants[name] = quantity

/obj/effect/fusion_em_field/proc/RadiateAll(var/ratio_lost = 1)

	// Create our plasma field and dump it into our environment.
	var/turf/T = get_turf(src)
	if(istype(T))
		var/datum/gas_mixture/plasma
		for(var/reactant in reactants)
			if(!gas_data.name[reactant])
				continue
			if(!plasma)
				plasma = new
			plasma.adjust_gas(reactant, max(1,round(reactants[reactant]*0.1)), 0) // *0.1 to compensate for *10 when uptaking gas.
		if(!plasma)
			return
		plasma.temperature = (plasma_temperature/2)
		plasma.update_values()
		T.assume_air(plasma)
		T.hotspot_expose(plasma_temperature)
		plasma = null

	// Radiate all our unspent fuel and energy.
	for(var/particle in reactants)
		radiation += reactants[particle]
		reactants.Remove(particle)
	radiation += plasma_temperature/2
	plasma_temperature = 0

	SSradiation.radiate(src, round(radiation*0.001))
	Radiate()

/obj/effect/fusion_em_field/proc/Radiate()
	if(istype(loc, /turf))
		var/empsev = max(1, min(3, ceil(size/2)))
		for(var/atom/movable/AM in range(max(1,Floor(size/2)), loc))

			if(AM == src || AM == owned_core || !AM.simulated)
				continue

			var/skip_obstacle
			for(var/ignore_path in ignore_types)
				if(istype(AM, ignore_path))
					skip_obstacle = TRUE
					break
			if(skip_obstacle)
				continue

			AM.visible_message("<span class='danger'>The field buckles visibly around \the [AM]!</span>")
			tick_instability += rand(30,50)
			AM.emp_act(empsev)

	if(owned_core && owned_core.loc)
		var/datum/gas_mixture/environment = owned_core.loc.return_air()
		if(environment && environment.temperature < (T0C+1000)) // Putting an upper bound on it to stop it being used in a TEG.
			environment.add_thermal_energy(plasma_temperature*20000)
	//radiation = 0

/obj/effect/fusion_em_field/proc/change_size(var/newsize = 1)
	var/changed = 0
	var/static/list/size_to_icon = list(
			"3" = 'icons/effects/96x96.dmi',
			"5" = 'icons/effects/160x160.dmi',
			"7" = 'icons/effects/224x224.dmi',
			"9" = 'icons/effects/288x288.dmi',
			"11" = 'icons/effects/352x352.dmi',
			"13" = 'icons/effects/416x416.dmi'
			)

	if( ((newsize-1)%2==0) && (newsize<=13) )
		icon = 'icons/obj/machines/power/fusion.dmi'
		if(newsize>1)
			icon = size_to_icon["[newsize]"]
		icon_state = "emfield_s[newsize]"
		pixel_x = ((newsize-1) * -16) * PIXEL_MULTIPLIER
		pixel_y = ((newsize-1) * -16) * PIXEL_MULTIPLIER
		size = newsize
		changed = newsize

	for(var/obj/effect/fusion_particle_catcher/catcher in particle_catchers)
		catcher.UpdateSize()
	return changed


// ------
// IN-DEV
// ------

// VVVVV REMOVE BEFORE MERGING
/obj/effect/fusion_em_field/proc/addstuff()
	reactants += list("debug" = 100, "debugtwo" = 150)
// ^^^^^ REMOVE BEFORE MERGING

// New React proc, does the fun
/obj/effect/fusion_em_field/proc/ReactNew()
	// Get us a copy of the reactants to allow us to work on a cached version
	var/list/reactants_copy = reactants.Copy()
	// Prepare a list for all possible reactions
	var/list/possible_reactions = new/list

	// Check that we have reactants at all
	if (reactants_copy.len)
		var/sum = 0

		for (var/reactant in reactants_copy)
			sum += reactants_copy[reactant] // Sum all reactants conveniently in the loop for later use
			for (var/decl/fusion_reaction/reaction in all_reactions)
				/*
				 * Begin looping the reactions and checking their requirements.
				 * The order of this might change for optimisation purposes.continue
				 * Currently, check for temperature, energy and then for present reactants.
				 */
				if (reaction.minimum_reaction_temperature > plasma_temperature)
					continue
				if (reaction.maximum_reaction_temperature != 0 && reaction.maximum_reaction_temperature < plasma_temperature)
					continue
				if (reaction.minimum_energy_level > energy)
					continue
				if (reaction.maximum_reaction_temperature != 0 && reaction.maximum_energy_level < energy)
					continue
				var/i = list_find(reaction.l_reactants, reactant)
				if (i == 0) // Since Find returns 0 if not found, we break if we cannot find the reactant in the list of reactants
					continue
				var/possible = TRUE // Per default we assume the reaction to be possible
				for (var/reaction_reactant in reaction.l_reactants) // Check if all needed reactants are present
					var/j = list_find(reactants_copy, reaction_reactant)
					if (j == 0)
						possible = FALSE
						break // Goto next reaction
				if (!possible)
					break // Goto next reaction
				reaction.reaction_chance += reactants_copy[reactant] // We calculate the reaction chance later, for now we want the sum of present reaction reactants
				if (list_find(possible_reactions, reaction) == 0)
					possible_reactions.Add(reaction) // Add the found reaction

		if (possible_reactions.len == 0)
			return

		for (var/decl/fusion_reaction/reaction in possible_reactions)
			if (reaction.reaction_chance != 0) // If this is somehow 0, we can skip this calculation because it's not going to be executed anyway. This is a div-by-zero prevention.
				/*
				 * Get the percentage this reaction will take place based on: present reaction reactants / sum of all present reactants
				 * This currently does not take into account other reactions we will iterate and may result in calculation misssteps.
				 */
				reaction.reaction_chance = reaction.reaction_chance / sum

				// TODO: Fit this onto a beta distribution

		sortTim(possible_reactions, /proc/cmp_fusion_reaction_c_des) // proc compares A.priority and B.priority

		for (var/decl/fusion_reaction/reaction in possible_reactions)
			// We begin looking at each reaction we cached earlier
			var/list/reaction_reactant_pool = reactants_copy & reaction.l_reactants // Cache the reactants we need based on the list_reactants of the reaction
			var/list/hackystuff = new/list // This might not be necessary anymore, prevents wrong caluclation of the max_possible
			for (var/reactant in reaction_reactant_pool)
				hackystuff.Add(reaction_reactant_pool[reactant])
			var/max_possible = min(hackystuff) // Calculate the maximum possible amount of reaction that can take place based on lowest reactant amount
			var/reaction_amount = max_possible * reaction.reaction_chance // The chance is used as a stand-in for random particle movement

			for (var/reactant in reaction_reactant_pool)
				if (reaction_reactant_pool[reactant] < reaction_amount)
					continue
				// Remove reactants from the pool
				reactants_copy[reactant] -= reaction_amount

			// Do stat processing
			plasma_temperature -= reaction_amount * reaction.energy_consumption
			plasma_temperature += reaction_amount * reaction.energy_production
			radiation += reaction_amount * reaction.radiation
			tick_instability += reaction_amount * reaction.instability

			for (var/reactant in reaction.products)
				// Add results back. It's a multiplication because products can be larger than 1 and there may also be multiple results
				reactants_copy[reactant] += (reaction.products[reactant] * reaction_amount)

			if (reaction.is_special)
				// Handle anything special this reaction does, like explode
				reaction.handle_reaction_special(src)

		/*
		 * One issue that might be present is the fact that reactions, in order of priority,
		 * may remove reactant a later reaction needs.
		 * Sanity checks for this are planned and will arrive soon:tm:
		 */

		// Apply new reactants list
		reactants = reactants_copy

/obj/effect/fusion_em_field/Destroy()
	set_light(0)
	RadiateAll()
	for(var/obj/effect/fusion_particle_catcher/catcher in particle_catchers)
		qdel(catcher)
	if(owned_core)
		owned_core.owned_field = null
		owned_core = null
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/effect/fusion_em_field/bullet_act(var/obj/item/projectile/Proj)
	AddEnergy(Proj.damage)
	update_icon()
	return 0

#undef FUSION_INSTABILITY_DIVISOR
#undef FUSION_RUPTURE_THRESHOLD
#undef FUSION_REACTANT_CAP
