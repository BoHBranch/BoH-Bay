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

/datum/gear/uniform/skrell_bodysuit
	display_name = "Skrellian uniform"
	path = /obj/item/clothing/under/skrelljumpsuit
	sort_category = "Xenowear"

/datum/gear/uniform/skrell_bodysuit
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/suit/skrell_exchange_helmet
	display_name = "Skrellian exchange voidsuit helmet selection"
	description = "A selection of outdated Skrellian voidsuit helmets for exchange personnel."
	path = /obj/item/clothing/head/helmet/space/void/skrell/exchange
	sort_category = "Xenowear"
	cost = 1
	slot = slot_head
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/suit/skrell_exchange_helmet/New()
	..()
	var/skrellmets = list()
	skrellmets["white Skrellian voidsuit helmet"] = /obj/item/clothing/head/helmet/space/void/skrell/exchange/white
	skrellmets["black Skrellian voidsuit helmet"] = /obj/item/clothing/head/helmet/space/void/skrell/exchange/black
	gear_tweaks += new/datum/gear_tweak/path(skrellmets)

/datum/gear/suit/skrell_exchange_voidsuit
	display_name = "Skrellian exchange voidsuit selection"
	description = "A selection of outdated Skrellian voidsuits for exchange personnel."
	path = /obj/item/clothing/suit/space/void/skrell/exchange
	sort_category = "Xenowear"
	cost = 1
	slot = slot_wear_suit
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/suit/skrell_exchange_voidsuit/New()
	..()
	var/skrellsuits = list()
	skrellsuits["white Skrellian voidsuit"] = /obj/item/clothing/suit/space/void/skrell/exchange/white
	skrellsuits["black Skrellian voidsuit"] = /obj/item/clothing/suit/space/void/skrell/exchange/black
	gear_tweaks += new/datum/gear_tweak/path(skrellsuits)


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

