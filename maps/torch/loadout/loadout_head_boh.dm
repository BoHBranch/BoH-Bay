/datum/gear/head/misc_military_cover
	display_name = "military cover selection"
	description = "A selection of military covers."
	path = /obj/item/clothing/head
	cost = 0
	allowed_branches = list(/datum/mil_branch/marine_corps)

/datum/gear/head/misc_military_cover/New()
	..()
	var/milmisc_cover = list()
	milmisc_cover += /obj/item/clothing/head/solgov/utility/army/urban
	milmisc_cover += /obj/item/clothing/head/solgov/utility/army/tan
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(milmisc_cover)

/datum/gear/head/self_protection_helmet
	display_name = "Civilian Self-Protection helmet"
	path = /obj/item/clothing/head/hardhat/self_protection
	cost = 2
	allowed_branches = CIVILIAN_BRANCHES
