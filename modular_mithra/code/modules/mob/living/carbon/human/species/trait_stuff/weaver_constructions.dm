/datum/weaver_recipe
	var/title = null
	var/result_type

/datum/weaver_recipe/structure

/datum/weaver_recipe/structure/floor
	title = "floor"
	result_type = /obj/effect/weaversilk/floor

/datum/weaver_recipe/structure/wall
	title = "wall"
	result_type = /obj/effect/weaversilk/wall

/datum/weaver_recipe/structure/nest
	title = "nest"
	result_type = /obj/structure/bed/double/weaversilk_nest

/datum/weaver_recipe/item
