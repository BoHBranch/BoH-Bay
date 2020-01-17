
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

/datum/gear/tactical/civ_tag
	display_name = "Civilian tag"
	path = /obj/item/clothing/accessory/armor/tag/civ
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/med_tag
	display_name = "Medical tag"
	path = /obj/item/clothing/accessory/armor/tag/solgov/medic
	allowed_skills = list(SKILL_MEDICAL = SKILL_BASIC)

/datum/gear/tactical/med_tag/alt
	display_name = "Medical tag, alt"
	path = /obj/item/clothing/accessory/armor/tag/civ/med

// Separating main's certain armor customization items.
/datum/gear/tactical/blood_patch
	display_name = "blood patch selection"
	description = "A selection of blood type patches. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/armor/tag/
	cost = 0 // Life-saving.

/datum/gear/tactical/blood_patch/New()
	..()
	var/blood_type = list()
	blood_type["A+"] = /obj/item/clothing/accessory/armor/tag/apos
	blood_type["A-"] = /obj/item/clothing/accessory/armor/tag/aneg
	blood_type["B+"] = /obj/item/clothing/accessory/armor/tag/bpos
	blood_type["B-"] = /obj/item/clothing/accessory/armor/tag/bneg
	blood_type["AB+"] = /obj/item/clothing/accessory/armor/tag/abpos
	blood_type["AB-"] = /obj/item/clothing/accessory/armor/tag/abneg
	blood_type["O+"] = /obj/item/clothing/accessory/armor/tag/opos
	blood_type["O-"] = /obj/item/clothing/accessory/armor/tag/oneg
	gear_tweaks += new/datum/gear_tweak/path(blood_type)

/datum/gear/tactical/solgov
	display_name = "SCG Flag tag"
	path = /obj/item/clothing/accessory/armor/tag/solgov
	allowed_branches = SOLGOV_BRANCHES
	cost = 0 // Uniformed branches would require one.

/datum/gear/tactical/nt
	display_name = "NanoTrasen tag"
	path = /obj/item/clothing/accessory/armor/tag/nt/dagon
	allowed_branches = NT_BRANCHES
	cost = 0 // Ditto.

/// Limb guards
// Arms
/datum/gear/tactical/arm_guards
	display_name = "arm guards selection"
	description = "A selection of military arm guards. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/armguards
	cost = 1
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/arm_guards/New()
	..()
	var/arm_guards = list()
	arm_guards["black arm guards"] = /obj/item/clothing/accessory/armguards
	arm_guards["navy arm guards"] = /obj/item/clothing/accessory/armguards/navy
	arm_guards["blue arm guards"] = /obj/item/clothing/accessory/armguards/blue
	arm_guards["green arm guards"] = /obj/item/clothing/accessory/armguards/green
	arm_guards["tan arm guards"] = /obj/item/clothing/accessory/armguards/tan
	gear_tweaks += new/datum/gear_tweak/path(arm_guards)

/datum/gear/tactical/arm_guards_light
	display_name = "arm pads selection"
	description = "A selection of military arm pads. They're weaker than normal guards."
	path = /obj/item/clothing/accessory/armguards/light
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/arm_guards_light/New()
	..()
	var/arm_guards = list()
	arm_guards["black arm pads"] = /obj/item/clothing/accessory/armguards/light
	arm_guards["navy arm pads"] = /obj/item/clothing/accessory/armguards/light/navy
	arm_guards["blue arm pads"] = /obj/item/clothing/accessory/armguards/light/blue
	arm_guards["green arm pads"] = /obj/item/clothing/accessory/armguards/light/green
	arm_guards["tan arm pads"] = /obj/item/clothing/accessory/armguards/light/tan
	gear_tweaks += new/datum/gear_tweak/path(arm_guards)

/datum/gear/tactical/arm_guards_grey
	display_name = "grey arm pads"
	path = /obj/item/clothing/accessory/armguards/light/grey

// Legs
/datum/gear/tactical/leg_guards
	display_name = "leg guards selection"
	description = "A selection of military leg guards. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/legguards
	cost = 1
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/leg_guards/New()
	..()
	var/leg_guards = list()
	leg_guards["black leg guards"] = /obj/item/clothing/accessory/legguards
	leg_guards["navy leg guards"] = /obj/item/clothing/accessory/legguards/navy
	leg_guards["blue leg guards"] = /obj/item/clothing/accessory/legguards/blue
	leg_guards["green leg guards"] = /obj/item/clothing/accessory/legguards/green
	leg_guards["tan leg guards"] = /obj/item/clothing/accessory/legguards/tan
	gear_tweaks += new/datum/gear_tweak/path(leg_guards)

/datum/gear/tactical/leg_guards_light
	display_name = "leg pads selection"
	description = "A selection of military leg pads. They're weaker than normal guards."
	path = /obj/item/clothing/accessory/legguards/light
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/leg_guards_light/New()
	..()
	var/leg_guards = list()
	leg_guards["black leg pads"] = /obj/item/clothing/accessory/legguards/light
	leg_guards["navy leg pads"] = /obj/item/clothing/accessory/legguards/light/navy
	leg_guards["blue leg pads"] = /obj/item/clothing/accessory/legguards/light/blue
	leg_guards["green leg pads"] = /obj/item/clothing/accessory/legguards/light/green
	leg_guards["tan leg pads"] = /obj/item/clothing/accessory/legguards/light/tan
	gear_tweaks += new/datum/gear_tweak/path(leg_guards)

/datum/gear/tactical/leg_guards_grey
	display_name = "grey leg pads"
	path = /obj/item/clothing/accessory/legguards/light/grey

// Grey carrier pouches. Only small ones to emulate standard suit/storage behavior.
/datum/gear/tactical/armor_pouches_grey
	display_name = "grey armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/grey
	cost = 1

/datum/gear/tactical/combatknife
	display_name = "combat knife"
	path = /obj/item/weapon/material/knife/combat
	cost = 3
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES
