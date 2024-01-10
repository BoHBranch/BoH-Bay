// Rigs and gear themselves.

//Define Rig Clothing
/obj/item/clothing/suit/space/rig/ert/skrell
	name = "skrellian recon hardsuit chestpiece"
	icon = 'modular_boh/icon/obj/obj_suit_skrell_rig.dmi'
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	species_restricted = list(SPECIES_SKRELL)
	sprite_sheets = list(
		SPECIES_SKRELL = 'modular_boh/icon/mob/species/skrell/onmob_chest_rig_skrell.dmi'
	)

/obj/item/clothing/head/helmet/space/rig/ert/skrell
	name = "skrellian recon hardsuit helmet"
	icon = 'modular_boh/icon/obj/obj_head_skrell_rig.dmi'
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	light_overlay = "helmet_light_dual"
	species_restricted = list(SPECIES_SKRELL)
	sprite_sheets = list(
		SPECIES_SKRELL = 'modular_boh/icon/mob/species/skrell/onmob_head_rig_skrell.dmi'
	)

/obj/item/clothing/shoes/magboots/rig/ert/skrell
	name = "skrellian recon hardsuit boots"
	icon = 'modular_boh/icon/obj/obj_feet_skrell_rig.dmi'
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	species_restricted = list(SPECIES_SKRELL)
	sprite_sheets = list(
		SPECIES_SKRELL = 'modular_boh/icon/mob/species/skrell/onmob_feet_rig_skrell.dmi'
	)

/obj/item/clothing/gloves/rig/ert/skrell
	name = "skrellian recon hardsuit gloves"
	icon = 'modular_boh/icon/obj/obj_hands_skrell_rig.dmi'
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	siemens_coefficient = 0
	species_restricted = list(SPECIES_SKRELL)
	sprite_sheets = list(
		SPECIES_SKRELL = 'modular_boh/icon/mob/species/skrell/onmob_hands_rig_skrell.dmi'
	)

//Skrell Baseline Suit
/obj/item/rig/skrell
	name = "skrellian recon hardsuit"
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	icon = 'modular_boh/icon/obj/rig_modules.dmi'
	icon_state = "skrell_combat_rig"
	item_state = null
	suit_type = "recon hardsuit"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	air_type = /obj/item/tank/skrell
	cell_type = /obj/item/cell/skrell
	chest_type = /obj/item/clothing/suit/space/rig/ert/skrell
	helm_type = /obj/item/clothing/head/helmet/space/rig/ert/skrell
	boot_type = /obj/item/clothing/shoes/magboots/rig/ert/skrell
	glove_type = /obj/item/clothing/gloves/rig/ert/skrell
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/device/flashlight,
		/obj/item/storage/,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit
	)
	update_visible_name = TRUE
	sprite_sheets = list(
		SPECIES_SKRELL = 'modular_boh/icon/mob/species/skrell/onmob_back_rig_skrell.dmi'
	)
	initial_modules = list(
		/obj/item/rig_module/vision,
		/obj/item/rig_module/chem_dispenser/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/cooling_unit
		)
	req_access = list("ACCESS_SKRELLSCOUT")

//Skrell Engineering Suit
/obj/item/rig/skrell/eng
	name = "skrellian engineering hardsuit"
	desc = "A highly sophisticated, cutting-edge engineering hardsuit with an integrated power supply and atmosphere. It's impressive design is resistant yet extremely lightweight, perfectly tailoring itself to the user's body"
	icon_state = "skrell_eng_rig"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision,
		/obj/item/rig_module/chem_dispenser/skrell/combat,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/device/cable_coil/skrell,
		/obj/item/rig_module/device/multitool/skrell,
		/obj/item/rig_module/device/welder/skrell,
		/obj/item/rig_module/device/rcd,
		/obj/item/rig_module/cooling_unit
	)

//Skrell Medical Suit
/obj/item/rig/skrell/med
	name = "skrellian medical hardsuit"
	desc = "A highly sophisticated, cutting-edge medical hardsuit with an integrated power supply and atmosphere. It's impressive design is resistant yet extremely lightweight, perfectly tailoring itself to the user's body"
	icon_state = "skrell_med_rig"
	initial_modules = list(
		/obj/item/rig_module/vision,
		/obj/item/rig_module/chem_dispenser/injector/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/device/defib,
		/obj/item/rig_module/vision/medhud,
		/obj/item/rig_module/cooling_unit
	)

//Skrell Combat Suit
/obj/item/rig/skrell/sec
	name = "skrellian combat hardsuit"
	desc = "A highly sophisticated, cutting-edge combat hardsuit with an integrated power supply and atmosphere. It's impressive design is resistant yet extremely lightweight, perfectly tailoring itself to the user's body"
	icon_state = "skrell_combat_rig"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/chem_dispenser/skrell/combat,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/cooling_unit
	)

//Skrell Command Suit
/obj/item/rig/skrell/cmd
	name = "skrellian command hardsuit"
	desc = "A highly sophisticated, cutting-edge hardsuit with an integrated power supply and atmosphere. It's impressive design is resistant yet extremely lightweight, perfectly tailoring itself to the user's body. Property of the Qrii'Vuxix"
	icon_state = "skrell_com_rig"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision,
		/obj/item/rig_module/chem_dispenser/injector/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/cooling_unit
	)



// Skrell medical dispensers
/obj/item/rig_module/chem_dispenser/injector/skrell
	name = "skrellian medical injector"
	desc = "A sleek medical injector of skrellian design."
	interface_name = "skrellian medical injector"
	interface_desc = "A sleek medical injector of skrellian design."
	charges = list(
		list("tramadol",            "tramadol",            /datum/reagent/tramadol,      80),
		list("dexalinp",            "dexalinp",            /datum/reagent/dexalinp,      80),
		list("bicaridine",          "bicaridine",          /datum/reagent/bicaridine,    80),
		list("dylovene",            "dylovene",            /datum/reagent/dylovene,      80),
		list("dermaline",           "dermaline",           /datum/reagent/dermaline,     80),
		list("peridaxon",           "peridaxon",           /datum/reagent/peridaxon,     80),
		list("adrenaline",          "adrenaline",          /datum/reagent/adrenaline,    80),
		list("inaprovaline",        "inaprovaline",        /datum/reagent/inaprovaline,  80)
	)

// Skrell combat dispenser

/obj/item/rig_module/chem_dispenser/skrell/combat
	name = "skrellian combat injector"
	desc = "A sleek stimulant injector of skrellian design."
	interface_name = "skrellian combat injector"
	interface_desc = "A sleek combat injector of skrellian design."
	charges = list(
		list("tramadol",            "tramadol",            /datum/reagent/tramadol,      40),
		list("dexalinp",            "dexalinp",            /datum/reagent/dexalinp,      40),
		list("dylovene",            "dylovene",            /datum/reagent/dylovene,      40),
		list("inaprovaline",        "inaprovaline",        /datum/reagent/inaprovaline,  40),
		list("hyperzine",           "hyperzine",           /datum/reagent/hyperzine,          40),
		list("oxycodone",           "oxycodone",           /datum/reagent/tramadol/oxycodone, 40),
		list("glucose",             "glucose",             /datum/reagent/nutriment/glucose,  40)
	)

//Skrell Oxygen Generator
/obj/item/tank/skrell
	name = "skrellian gas synthesizer"
	desc = "A skrellian gas processing plant that continuously synthesises oxygen."
	icon = 'modular_boh/icon/obj/skrell.dmi'
	icon_state = "skrelltank"
	distribute_pressure = ONE_ATMOSPHERE*O2STANDARD
	var/refill_gas_type = GAS_OXYGEN
	var/gas_regen_amount = 0.05
	var/gas_regen_cap = 50

/obj/item/tank/skrell/Initialize()
	starting_pressure = list("[refill_gas_type]" = 6 * ONE_ATMOSPHERE)
	. = ..()

/obj/item/tank/skrell/Process()
	..()
	if(air_contents.total_moles < gas_regen_cap)
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

//Skrell Cluster Tool

/obj/item/rig_module/device/clustertool/skrell
	name = "skrellian clustertool"

//More Skrell Modules to replace Mantid
/obj/item/rig_module/device/multitool/skrell
	name = "skrellian integrated multitool"

/obj/item/rig_module/device/cable_coil/skrell
	name = "skrellian cable extruder"

/obj/item/rig_module/device/welder/skrell
	name = "skrellian welding arm"
	desc = "An electrical cutting torch of Skrell design."
	interface_desc = "An electrical cutting torch of Skrell design."

// Self-charging power cell.
/obj/item/cell/skrell
	name = "skrellian microfusion cell"
	desc = "An impossibly tiny fusion power engine of Skrell design."
	icon = 'modular_boh/icon/obj/skrell.dmi'
	icon_state = "skrellcell"
	maxcharge = 1500
	w_class = ITEM_SIZE_NORMAL
	var/recharge_amount = 12

/obj/item/cell/skrell/Initialize()
	START_PROCESSING(SSobj, src)
	. = ..()

/obj/item/cell/skrell/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/cell/skrell/Process()
	if(charge < maxcharge)
		give(recharge_amount)
