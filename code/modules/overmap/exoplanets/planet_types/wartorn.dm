/obj/effect/overmap/visitable/sector/exoplanet/wartorn
	name = "conflict ridden exoplanet"
	desc = "Something horrible has happened here, as suggested by the surface scarring seen from orbit."
	color = "#b3625b"
	planetary_area = /area/exoplanet/wartorn
	map_generators = list(/datum/random_map/city, /datum/random_map/noise/exoplanet/wartorn, /datum/random_map/noise/ore/poor)
	possible_themes = list(/datum/exoplanet_theme/mountains)
	ruin_tags_whitelist = RUIN_WRECK|RUIN_HUMAN|RUIN_HABITAT|RUIN_RUSSIAN|RUIN_SYNDI
	plant_colors = list("#efdd6f","#7b4a12","#e49135","#ba6222","#5c755e","#120309")
	surface_color = "#a5a18b"
	water_color = null

/obj/effect/overmap/visitable/sector/exoplanet/wartorn/generate_map()
	if(prob(50))
		lightlevel = rand(5,10)/10	//deserts are usually :lit:
	..()

/obj/effect/overmap/visitable/sector/exoplanet/wartorn/generate_atmosphere()
	..()
	if(atmosphere)
		atmosphere.temperature = T20C + rand(20, 100)
		atmosphere.update_values()

/obj/effect/overmap/visitable/sector/exoplanet/wartorn/update_biome()
	..()
	for(var/datum/seed/S in seeds)
		if(prob(90))
			S.set_trait(TRAIT_REQUIRES_WATER,0)
		else
			S.set_trait(TRAIT_REQUIRES_WATER,1)
			S.set_trait(TRAIT_WATER_CONSUMPTION,1)
		if(prob(40))
			S.set_trait(TRAIT_STINGS,1)

/obj/effect/overmap/visitable/sector/exoplanet/wartorn/get_base_image()
	var/image/I = ..()
	I.overlays += image('icons/skybox/planet.dmi', "ruins")
	return I

/datum/random_map/noise/exoplanet/wartorn
	descriptor = "wartorn exoplanet"
	smoothing_iterations = 4
	land_type = /turf/simulated/floor/exoplanet/desert
	flora_prob = 8
	large_flora_prob = 4
	flora_diversity = 4
	fauna_types = list(/mob/living/simple_animal/hostile/syndicate/melee, /mob/living/simple_animal/hostile/syndicate/ranged)
	fauna_prob = 6
	megafauna_types = list(/mob/living/simple_animal/hostile/mech)
	var/fallout = 0

/datum/random_map/noise/exoplanet/wartorn/New(var/seed, var/tx, var/ty, var/tz, var/tlx, var/tly, var/do_not_apply, var/do_not_announce, var/never_be_priority = 0)
	if(prob(60))
		fallout = rand(10, 37.5)
	..()

/datum/random_map/noise/exoplanet/wartorn/get_additional_spawns(var/value, var/turf/T)
	..()
	if(is_edge_turf(T))
		return
	var/v = noise2value(value)
	if(v > 5 && !T.is_wall() && prob(5))
		new/obj/random/remains(T)
	if(v == 4)
		new/obj/structure/rubble/house(T)
	else if(v == 6 && prob(10))
		new/obj/structure/rubble/house(T)
	else
		if(prob(2))
			new/obj/structure/rubble/wartorn(T)
			var/datum/radiation_source/S = new(T, 2*fallout, FALSE)
			S.range = 4
			SSradiation.add_source(S)
			T.set_light(0.4, 1, 2, l_color = PIPE_COLOR_GREEN)
			for(var/turf/simulated/floor/exoplanet/crater in range(3, T))
				crater.melt()
				crater.update_icon()

/datum/random_map/noise/exoplanet/wartorn/get_appropriate_path(var/value)
	var/v = noise2value(value)
	if(v == 6)
		if(prob(50))
			return /turf/simulated/floor/exoplanet/concrete/reinforced/damaged
		else
			return /turf/simulated/floor/exoplanet/concrete/reinforced
	if(v == 7)
		return /turf/simulated/floor/exoplanet/concrete/reinforced/damaged
	return land_type

/area/exoplanet/wartorn
	ambience = list(
		'sound/effects/wind/desert0.ogg',
		'sound/effects/wind/desert1.ogg',
		'sound/effects/wind/desert2.ogg',
		'sound/effects/wind/desert3.ogg',
		'sound/ambience/ominous1.ogg',
		'sound/ambience/ominous2.ogg',
		'sound/ambience/ominous3.ogg'
	)
	base_turf = /turf/simulated/floor/exoplanet/desert

#define WALL_VALUE 1
#define ROAD_VALUE 10

#define TRANSLATE_COORD(X,Y) ((((Y) - 1) * limit_x) + (X))

/datum/random_map/war_city
	descriptor = "ruined city"
	initial_wall_cell = 0
	initial_cell_char = -1
	var/max_building_size = 49	//Size of buildings in tiles. Must be odd number for building generation to work properly.
	var/buildings_number = 12	//Buildings per block
	var/list/blocks_x = list(TRANSITIONEDGE + 1)	//coordinates for start of blocs
	var/list/blocks_y = list(TRANSITIONEDGE + 1)
	var/list/building_types = list(
		/datum/random_map/maze/concrete = 90,
		)
	var/list/building_maps

/datum/random_map/war_city/generate_map()
	var/block_size = buildings_number * max_building_size + 2
	var/num_blocks_x = round((limit_x - 2*TRANSITIONEDGE)/block_size)
	var/num_blocks_y = round((limit_y - 2*TRANSITIONEDGE)/block_size)

	//Get blocks borders coordinates
	for(var/i = 1 to num_blocks_x)
		blocks_x += blocks_x[i] + block_size + 1
	for(var/i = 1 to num_blocks_y)
		blocks_y += blocks_x[i] + block_size + 1
	blocks_x += limit_x - TRANSITIONEDGE - 1
	blocks_y += limit_y - TRANSITIONEDGE - 1

	//Draw roads
	for(var/x in blocks_x)
		for(var/y = 1 to limit_y)
			map[TRANSLATE_COORD(x-1,y)] = ROAD_VALUE
			map[TRANSLATE_COORD(x,y)] = ROAD_VALUE
			map[TRANSLATE_COORD(x+1,y)] = ROAD_VALUE
	for(var/y in blocks_y)
		for(var/x = 1 to limit_x)
			map[TRANSLATE_COORD(x,y-1)] = ROAD_VALUE
			map[TRANSLATE_COORD(x,y)] = ROAD_VALUE
			map[TRANSLATE_COORD(x,y+1)] = ROAD_VALUE

	//Place buildings
	for(var/i = 1 to blocks_x.len - 1)
		for(var/j = 1 to blocks_y.len - 1)
			for(var/k = 0 to buildings_number - 1)
				for(var/l = 0 to buildings_number - 1)
					var/building_x = blocks_x[i] + 2 + max_building_size * k
					var/building_y = blocks_y[j] + 2 + max_building_size * l
					var/building_size_x = pick(7,9,9,11,11,11)
					var/building_size_y = pick(7,9,9,11,11,11)
					if(building_x + building_size_x >= limit_x - TRANSITIONEDGE)
						continue
					if(building_y + building_size_y >= limit_y - TRANSITIONEDGE)
						continue
					var/building_type = pickweight(building_types)
					var/datum/random_map/building = new building_type(null, building_x, building_y, origin_z, building_size_x, building_size_y, 1, 1, 1, use_area)
					LAZYADD(building_maps, building) // They're applied later to let buildings handle their own shit
	return 1

/datum/random_map/war_city/get_appropriate_path(var/value)
	if(value == ROAD_VALUE)
		return /turf/simulated/floor/exoplanet/concrete/reinforced/road

/datum/random_map/war_city/apply_to_map()
	..()
	for(var/datum/random_map/building in building_maps)
		building.apply_to_map()

// Buildings

//Generic ruin
/datum/random_map/maze/warcrete
	wall_type =  /turf/simulated/wall/concrete
	floor_type = /turf/simulated/floor/exoplanet/concrete/reinforced
	preserve_map = 0

/datum/random_map/maze/warcrete/get_appropriate_path(var/value)
	if(value == WALL_VALUE)
		if(prob(80))
			return /turf/simulated/wall/concrete
		else
			return /turf/simulated/floor/exoplanet/concrete/reinforced/damaged
	return ..()

/datum/random_map/maze/warcrete/get_additional_spawns(var/value, var/turf/simulated/floor/T)
	if(!istype(T))
		return
	if(prob(10))
		new/obj/random/remains(T)
	if((T.broken && prob(80)) || prob(10))
		new/obj/structure/rubble/house(T)

#undef TRANSLATE_COORD