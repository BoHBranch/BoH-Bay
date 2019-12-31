
/datum/gear/accessory/armband_ma
	display_name = "military police brassard"
	path = /obj/item/clothing/accessory/armband/solgov/mp
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/smc_patch
	display_name = "Marine Corps patch"
	path = /obj/item/clothing/accessory/solgov/smc_patch
	allowed_branches = list(/datum/mil_branch/marine_corps)
	whitelisted = list(SPECIES_HUMAN, SPECIES_IPC)

/datum/gear/accessory/smc_patch_xenos
	display_name = "Marine Corps patch (xenoic division)"
	path = /obj/item/clothing/accessory/solgov/smc_patch/xeno
	allowed_branches = list(/datum/mil_branch/marine_corps)

/// Limb guards
// Arms
/datum/gear/tactical/arm_guards
	display_name = "black arm guards"
	path = /obj/item/clothing/accessory/armguards
	cost = 1
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/arm_guards/navy
	display_name = "navy arm guards"
	path = /obj/item/clothing/accessory/armguards/navy
	allowed_branches = list(/datum/mil_branch/fleet, /datum/mil_branch/civilian)

/datum/gear/tactical/arm_guards/misc
	display_name = "miscellaneous arm guards selection"
	description = "A selection of arm guards in various colors."
	path = /obj/item/clothing/accessory/armguards
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/marine_corps)

/datum/gear/tactical/arm_guards/misc/New()
	..()
	var/arm_guards = list()
	arm_guards["green arm guards"] = /obj/item/clothing/accessory/armguards/green
	arm_guards["tan arm guards"] = /obj/item/clothing/accessory/armguards/tan
	arm_guards["blue arm guards"] = /obj/item/clothing/accessory/armguards/blue
	gear_tweaks += new/datum/gear_tweak/path(arm_guards)

// Legs
/datum/gear/tactical/leg_guards
	display_name = "black leg guards"
	path = /obj/item/clothing/accessory/legguards
	cost = 1
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/leg_guards/navy
	display_name = "navy leg guards"
	path = /obj/item/clothing/accessory/legguards/navy
	allowed_branches = list(/datum/mil_branch/fleet, /datum/mil_branch/civilian)

/datum/gear/tactical/leg_guards/misc
	display_name = "miscellaneous leg guards selection"
	description = "A selection of leg guards in various colors."
	path = /obj/item/clothing/accessory/legguards
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/marine_corps)

/datum/gear/tactical/leg_guards/misc/New()
	..()
	var/leg_guards = list()
	leg_guards["green leg guards"] = /obj/item/clothing/accessory/legguards/green
	leg_guards["tan leg guards"] = /obj/item/clothing/accessory/legguards/tan
	leg_guards["blue leg guards"] = /obj/item/clothing/accessory/legguards/blue
	gear_tweaks += new/datum/gear_tweak/path(leg_guards)
