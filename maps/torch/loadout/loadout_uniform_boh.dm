/datum/gear/uniform/misc_military
	display_name = "military fatigue selection"
	description = "A selection of military uniforms."
	path = /obj/item/clothing/under
	cost = 0
	allowed_branches = list(/datum/mil_branch/marine_corps)

/datum/gear/uniform/misc_military/New()
	..()
	var/milmisc = list()
	milmisc += /obj/item/clothing/under/solgov/utility/army/urban
	milmisc += /obj/item/clothing/under/solgov/utility/army/tan
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(milmisc)
