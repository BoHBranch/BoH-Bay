/datum/gear/suit/lab_xyn_machine
	allowed_branches = CASUAL_BRANCHES

/datum/gear/gloves/dress/modified
	display_name = "modified gloves, dress"
	path = /obj/item/clothing/gloves/color/white/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_UNATHI)

/datum/gear/gloves/duty/modified
	display_name = "modified gloves, duty"
	path = /obj/item/clothing/gloves/thick/duty/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_UNATHI)

/datum/gear/suit/unathi/savage_hunter
	allowed_branches = CASUAL_BRANCHES

/datum/gear/head/skrell_helmet
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/uniform/skrell_bodysuit
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/accessory/skrell_badge
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/uniform/harness
	allowed_branches = null

// Patches
/datum/gear/accessory/cultex_patch
	display_name = "Cultural Exchange patch"
	path = /obj/item/clothing/accessory/solgov/cultex_patch
	description = "A shoulder patch representing the Expeditionary Corps."
	allowed_branches = NT_BRANCHES
	whitelisted = list(SPECIES_SKRELL, SPECIES_UNATHI, SPECIES_IPC)
	sort_category = "Xenowear"

/datum/gear/accessory/nabber_gloves
	display_name = "GAS Insuls"
	path = /obj/item/clothing/gloves/nabber
	description = "A set of insulated gloves meant for GAS."
	whitelisted = list(SPECIES_NABBER)
	sort_category = "Xenowear"

//Clown Stuff. I did it, sue me, we live in a society. Clowns are alien freaks, hence why they're in xenowear.

/datum/gear/uniform/clown
	display_name = "Clown Kit"
	path = /obj/item/weapon/storage/box/large/clown
	description = "HONK"
	cost = 3
	sort_category = "Xenowear"
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/private_security, /datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet, /datum/mil_branch/marine_corps)

//Mime stuff. These guys are definitely aliens too. The way they stare at you silently is..... creepy.

/datum/gear/uniform/mime
	display_name = "Mime Kit"
	path = /obj/item/weapon/storage/box/large/mime
	description = "Silence!"
	cost = 3
	sort_category = "Xenowear"
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/private_security, /datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet, /datum/mil_branch/marine_corps)