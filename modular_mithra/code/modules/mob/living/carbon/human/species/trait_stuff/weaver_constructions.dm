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

/datum/weaver_recipe/item/skinsuit
	title = "skinsuit"
	result_type = /obj/item/clothing/under/weaverskinsuit

/datum/weaver_recipe/item/dress
	title = "dress"
	result_type = /obj/item/clothing/under/skirt_c/dress/long/gown/weaver

/datum/weaver_recipe/item/bindings
	title = "bindings"
	result_type = /obj/item/weapon/handcuffs/cable/tape/weaver

/datum/weaver_recipe/item/bandages
	title = "bandages"
	result_type = /obj/item/stack/medical/bruise_pack/weaver
