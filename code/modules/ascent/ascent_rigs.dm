// Rigs and gear themselves.
/obj/item/weapon/rig/mantid
	name = "alate combat exosuit"
	desc = "A powerful combat exosuit with integrated power supply, weapon and atmosphere. It's closer to a mech than a rig."
	icon_state = "kexosuit"
	item_state = null
	suit_type = "support exosuit"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	armor_type = /datum/extension/armor/ablative
	armor_degradation_speed = 0.05
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	air_type =   /obj/item/weapon/tank/mantid/reactor
	cell_type =  /obj/item/weapon/cell/mantid
	chest_type = /obj/item/clothing/suit/space/rig/mantid
	helm_type =  /obj/item/clothing/head/helmet/space/rig/mantid
	boot_type =  /obj/item/clothing/shoes/magboots/rig/mantid
	glove_type = /obj/item/clothing/gloves/rig/mantid
	update_visible_name = TRUE
	icon_override = 'icons/mob/species/mantid/onmob_back_alate.dmi'
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =    'icons/mob/species/mantid/onmob_back_gyne.dmi',
		SPECIES_MANTID_ALATE =   'icons/mob/species/mantid/onmob_back_alate.dmi',
		SPECIES_NABBER =         'icons/mob/species/nabber/onmob_back_gas.dmi',
		SPECIES_MONARCH_QUEEN =  'icons/mob/species/nabber/msq/onmob_back_msq.dmi'
		)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit
		)
	req_access = list(access_ascent)
	var/mantid_caste = SPECIES_MANTID_ALATE

// Renamed blade.
/obj/item/rig_module/device/nanoblade //New! Re-added this from an old PR that actually fixed it. Why it wasn't fixed anymore is known only to God.
	name = "nanoblade projector"
	desc = "A fusion-powered blade nanofabricator of Ascent design."
	interface_name = "nanoblade projector"
	interface_desc = "A fusion-powered blade nanofabricator of Ascent design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "blade"
	engage_string = "Toggle Nanoblade"
	device = /obj/item/weapon/melee/energy/sword/ascent
	usable = TRUE
	selectable = TRUE

/obj/item/rig_module/device/nanoblade/par //The same but with fancy sprites. Also a balancing measure since it would be kind of shit if you got fucked over by a sword you couldn't even see.
	suit_overlay_active = "parblade"
	suit_overlay_inactive = "parblade_inactive"

/obj/item/rig_module/mounted/flechette_rifle //I should consider adding proper rig overlays for most of this equipment, but not today.
	name = "flechette rifle"
	desc = "A flechette nanofabricator and launch system of Ascent design."
	interface_name = "flechette rifle"
	interface_desc = "A flechette nanofabricator and launch system of Ascent design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "riflef"
	gun = /obj/item/weapon/gun/energy/particle/flechette

/obj/item/rig_module/mounted/particle_rifle
	name = "particle rifle"
	desc = "A mounted particle rifle of Ascent design."
	interface_name = "particle rifle"
	interface_desc = "A mounted particle rifle of Ascent design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "rifle"
	gun = /obj/item/weapon/gun/energy/particle

/obj/item/rig_module/mounted/particle_projector
	name = "particle projector"
	desc = "A mounted particle projector of Ascent design."
	interface_name = "particle projector"
	interface_desc = "A mounted particle projector of Ascent design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "rifle"
	gun = /obj/item/weapon/gun/energy/particle/small


/obj/item/rig_module/device/multitool
	name = "mantid integrated multitool"
	desc = "A limited-sentience integrated multitool capable of interfacing with any number of systems."
	interface_name = "multitool"
	interface_desc = "A limited-sentience integrated multitool capable of interfacing with any number of systems."
	device = /obj/item/device/multitool/mantid
	icon = 'icons/obj/ascent.dmi'
	icon_state = "multitool"
	usable = FALSE
	selectable = TRUE

/obj/item/rig_module/device/multitool/ismultitool()
	return device && device.ismultitool()

/obj/item/rig_module/device/cable_coil
	name = "mantid cable extruder"
	desc = "A cable nanofabricator of Ascent design."
	interface_name = "cable fabricator"
	interface_desc = "A cable nanofabricator of Ascent design."
	device = /obj/item/stack/cable_coil/fabricator
	icon = 'icons/obj/ascent.dmi'
	icon_state = "cablecoil"
	usable = FALSE
	selectable = TRUE

/obj/item/rig_module/device/welder
	name = "mantid welding arm"
	desc = "An electrical cutting torch of Ascent design."
	interface_name = "welding arm"
	interface_desc = "An electrical cutting torch of Ascent design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "welder1"
	engage_string = "Toggle Welder"
	device = /obj/item/weapon/weldingtool/electric/mantid
	usable = TRUE
	selectable = TRUE

/obj/item/rig_module/device/clustertool
	name = "mantid clustertool"
	desc = "A complex assembly of self-guiding, modular heads capable of performing most manual tasks."
	interface_name = "modular clustertool"
	interface_desc = "A complex assembly of self-guiding, modular heads capable of performing most manual tasks."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "clustertool"
	engage_string = "Select Mode"
	device = /obj/item/clustertool
	usable = TRUE
	selectable = TRUE

/obj/item/rig_module/device/clustertool/iswrench()
	return device && device.iswrench()

/obj/item/rig_module/device/clustertool/iswirecutter()
	return device && device.iswirecutter()

/obj/item/rig_module/device/clustertool/isscrewdriver()
	return device && device.isscrewdriver()

/obj/item/rig_module/device/clustertool/iscrowbar()
	return device && device.iscrowbar()

/obj/item/rig_module/device/crystalvoice
	name = "voice of crystal"
	desc = "An integrated voice modularity system which allows one to transfer their words into a booming, regal tone."
	icon_state = "voiceofcrystal"
	interface_name = "voice of crystal"
	interface_desc = "An integrated voice modularity system which allows one to transfer their words into a booming, regal tone."
	usable = 1
	selectable = 1

	device = /obj/item/device/megaphone/ascent

// Atmosphere/jetpack filler.
/obj/item/weapon/tank/mantid
	name = "mantid gas tank"
	icon_state = "bromomethane"
	distribute_pressure = ONE_ATMOSPHERE*O2STANDARD
	volume = 180

/obj/item/weapon/tank/mantid/methyl_bromide
	starting_pressure = list(GAS_METHYL_BROMIDE = 6 * ONE_ATMOSPHERE)

/obj/item/weapon/tank/mantid/oxygen
	name = "mantid oxygen tank"
	starting_pressure = list(OXYGEN = 6 * ONE_ATMOSPHERE)

// Boilerplate due to hard typechecks in jetpack code. Todo: make it an extension.
/obj/item/weapon/tank/jetpack/ascent
	name = "catalytic maneuvering pack"
	desc = "An integrated Ascent gas processing plant and maneuvering pack that continuously synthesises 'breathable' atmosphere and propellant."
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =  'icons/mob/species/mantid/onmob_back_gyne.dmi',
		SPECIES_MANTID_ALATE = 'icons/mob/species/mantid/onmob_back_alate.dmi',
		SPECIES_NABBER = 	   'icons/mob/species/nabber/onmob_back_gas.dmi'
	)
	icon_state = "maneuvering_pack"
	var/refill_gas_type = GAS_METHYL_BROMIDE
	var/gas_regen_amount = 0.03
	var/gas_regen_cap = 30

/obj/item/weapon/tank/jetpack/ascent/tiro
	name = "tiro glider"
	desc = "A highly advanced system of wing-like protrusions, made entirely from contained plasma. How it works is completely lost on you."
	refill_gas_type = GAS_OXYGEN

/obj/item/weapon/tank/jetpack/ascent/tiro/elite
	name = "tiro wings"
	desc = "An incredibly advanced projector capable of sustaining large wing-like appendages made from pure energy."
	gas_regen_amount = 0.5
	gas_regen_cap = 40

/obj/item/weapon/tank/jetpack/ascent/Initialize()
	starting_pressure = list("[refill_gas_type]" = 6 * ONE_ATMOSPHERE)
	. = ..()

/obj/item/weapon/tank/jetpack/ascent/Process()
	..()
	if(air_contents.total_moles < gas_regen_cap)
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

/obj/item/weapon/tank/mantid/reactor
	name = "mantid gas reactor"
	desc = "A mantid gas processing plant that continuously synthesises 'breathable' atmosphere."
	var/charge_cost = 12
	var/refill_gas_type = GAS_METHYL_BROMIDE
	var/gas_regen_amount = 0.05
	var/gas_regen_cap = 50

/obj/item/weapon/tank/mantid/reactor/Initialize()
	starting_pressure = list("[refill_gas_type]" = 6 * ONE_ATMOSPHERE)
	. = ..()

/obj/item/weapon/tank/mantid/reactor/oxygen
	name = "serpentid gas reactor"
	refill_gas_type = GAS_OXYGEN
	distribute_pressure = 31

/obj/item/weapon/tank/mantid/reactor/Process()
	..()
	var/obj/item/weapon/rig/holder = loc
	if(air_contents.total_moles < gas_regen_cap && istype(holder) && holder.cell && holder.cell.use(charge_cost))
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

// Chem dispenser.
/obj/item/rig_module/chem_dispenser/mantid
	name = "mantid chemical injector"
	desc = "A compact chemical dispenser of mantid design."
	interface_name = "mantid chemical injector"
	interface_desc = "A compact chemical dispenser of mantid design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "injector"
	charges = list(
		list("bromide",             "bromide",             /datum/reagent/toxin/bromide, 20),
		list("crystallizing agent", "crystallizing agent", /datum/reagent/crystal,       20),
		list("spaceacillin",        "spaceacillin",        /datum/reagent/spaceacillin,  20),
		list("tramadol",            "tramadol",            /datum/reagent/tramadol,      20)
	)

/obj/item/rig_module/chem_dispenser/nabber
	name = "serpentid chemical injector"
	desc = "A compact chemical dispenser of mantid design."
	interface_name = "serpentid chemical injector"
	interface_desc = "A compact chemical dispenser of mantid design."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "injector"
	charges = list(
		list("tramadol",            "tramadol",            /datum/reagent/tramadol,     	  20),
		list("dexalin plus",        "dexalin plus",        /datum/reagent/dexalinp,     	  20),
		list("inaprovaline",        "inaprovaline",        /datum/reagent/inaprovaline,  	  20),
		list("spaceacillin",  		"spaceacillin",		   /datum/reagent/spaceacillin,       20),
		list("glucose",             "glucose",             /datum/reagent/nutriment/glucose,  20)
	)

/obj/item/rig_module/chem_dispenser/nabber/tiro
	name = "tiro chemical injector"

// Rig definitions.
/obj/item/weapon/rig/mantid/gyne
	name = "gyne combat exosuit"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/weapon/gun/energy/particle,
		/obj/item/weapon/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle/ascent,
		/obj/item/weapon/gun/energy/particle/support
	)
	icon_override = 'icons/mob/species/mantid/onmob_back_gyne.dmi'
	mantid_caste = SPECIES_MANTID_GYNE
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/nanoblade,
		/obj/item/rig_module/mounted/flechette_rifle,
		/obj/item/rig_module/mounted/particle_rifle,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/device/crystalvoice
	)

/obj/item/weapon/rig/mantid/nabber
	name = "serpentid combat exosuit"
	icon_override = 'icons/mob/species/nabber/onmob_back_gas.dmi'
	mantid_caste = SPECIES_NABBER
	air_type =   /obj/item/weapon/tank/mantid/reactor/oxygen
	chest_type = /obj/item/clothing/suit/space/rig/mantid/serpentid
	boot_type =  null
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/nanoblade,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit
	)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/weapon/gun/energy/particle/small,
		/obj/item/weapon/gun/energy/particle/support,
		/obj/item/weapon/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle/ascent,
		/obj/item/weapon/gun/energy/particle/support
	)

/obj/item/clothing/suit/space/rig/mantid/serpentid
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	species_restricted = list(SPECIES_NABBER, SPECIES_MONARCH_QUEEN)

/obj/item/weapon/rig/mantid/nabber/queen
	name = "small combat exosuit"
	icon_override = 'icons/mob/species/nabber/msq/onmob_back_msq.dmi'
	mantid_caste = SPECIES_MONARCH_QUEEN
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/nanoblade,
		/obj/item/rig_module/mounted/particle_projector,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/device/crystalvoice
	)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/weapon/gun/energy/particle/small,
		/obj/item/weapon/gun/energy/particle/support,
		/obj/item/weapon/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle/ascent,
		/obj/item/weapon/gun/energy/particle/support
	)

/obj/item/weapon/rig/mantid/mob_can_equip(var/mob/M, var/slot)
	. = ..()
	if(. && slot == slot_back)
		var/mob/living/carbon/human/H = M
		if(mantid_caste == 0) //For mantid suits designed for non-mantid races, we have no mantid caste selected. This should usually prevent it from locking people out.
			return
		else if(!istype(H) || H.species.get_bodytype(H) != mantid_caste)
			to_chat(H, "<span class='danger'>Your species cannot wear \the [src].</span>")
			. = 0

/obj/item/clothing/head/helmet/space/rig/mantid
	light_color = "#00ffff"
	desc = "More like a torpedo casing than a helmet."
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE, SPECIES_NABBER, SPECIES_MONARCH_QUEEN)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =    'icons/mob/species/mantid/onmob_head_gyne.dmi',
		SPECIES_MANTID_ALATE =   'icons/mob/species/mantid/onmob_head_alate.dmi',
		SPECIES_NABBER =         'icons/mob/species/nabber/onmob_head_gas.dmi',
		SPECIES_MONARCH_QUEEN =  'icons/mob/species/nabber/msq/onmob_head_msq.dmi'
		)

/obj/item/clothing/suit/space/rig/mantid
	desc = "It's closer to a mech than a suit."
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =    'icons/mob/species/mantid/onmob_suit_gyne.dmi',
		SPECIES_MANTID_ALATE =   'icons/mob/species/mantid/onmob_suit_alate.dmi',
		SPECIES_NABBER =         'icons/mob/species/nabber/onmob_suit_gas.dmi',
		SPECIES_MONARCH_QUEEN =  'icons/mob/species/nabber/msq/onmob_suit_msq.dmi'
		)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/weapon/gun/energy/particle/small,
		/obj/item/weapon/gun/energy/particle/support,
		/obj/item/weapon/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle/ascent
	)

/obj/item/clothing/shoes/magboots/rig/mantid
	desc = "It's like a highly advanced forklift."
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =  'icons/mob/species/mantid/onmob_shoes_gyne.dmi',
		SPECIES_MANTID_ALATE = 'icons/mob/species/mantid/onmob_shoes_alate.dmi'
		)

/obj/item/clothing/gloves/rig/mantid
	desc = "They look like a cross between a can opener and a Swiss army knife the size of a shoebox."
	siemens_coefficient = 0
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE, SPECIES_NABBER, SPECIES_MONARCH_QUEEN)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =            'icons/mob/species/mantid/onmob_gloves_gyne.dmi',
		SPECIES_MANTID_ALATE =           'icons/mob/species/mantid/onmob_gloves_alate.dmi',
		SPECIES_NABBER =                 'icons/mob/species/nabber/onmob_hands_gas.dmi',
		SPECIES_MONARCH_QUEEN =          'icons/mob/species/nabber/msq/onmob_hands_msq.dmi'
		)

//Add SeedShip Specific Exosuits

// Rigs and gear themselves.
/obj/item/weapon/rig/mantid/seed
	name = "alate support exosuit"
	desc = "A powerful support exosuit with integrated power supply, weapon and atmosphere. It's closer to a mech than a rig."
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	online_slowdown = 1
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit
		)

/obj/item/weapon/rig/mantid/gyne/seed
	name = "gyne support exosuit"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/device/crystalvoice
	)

/obj/item/weapon/rig/mantid/nabber/queen/seed
	name = "small support exosuit"
	online_slowdown = 1
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/device/crystalvoice
	)

/obj/item/weapon/rig/mantid/nabber/seed
	name = "serpentid support exosuit"
	online_slowdown = 1
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit
		)

///Begin Ascent Tiro --------------------------------------------------------------------------------------------------
/obj/item/weapon/rig/mantid/tiro
	name = "tiro exosuit"
	desc = "A reverse-engineered Mantid exosuit designed to be worn by a Humanoid. Often utilized by Ascent Tiros."
	icon_state = "tiro_voidsuit"
	item_state = null
	suit_type = "tiro exosuit"
	equipment_overlay_icon = 'icons/mob/onmob/onmob_rig_modules.dmi'
	air_type =   /obj/item/weapon/tank/mantid/reactor/oxygen
	cell_type =  /obj/item/weapon/cell/mantid
	chest_type = /obj/item/clothing/suit/space/rig/mantid/tiro
	helm_type =  /obj/item/clothing/head/helmet/space/rig/mantid/tiro
	boot_type =  /obj/item/clothing/shoes/magboots/rig/mantid/tiro
	glove_type = /obj/item/clothing/gloves/rig/mantid/tiro
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	update_visible_name = TRUE
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/nabber/tiro,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets/tirowings,
		/obj/item/rig_module/cooling_unit
		)
	req_access = list(access_ascent)
	mantid_caste = 0 //I THINK this will allow any species to wear the suit, but I'm uncertain. Will need to test further.

/obj/item/clothing/head/helmet/space/rig/mantid/tiro
	desc = "A sleek, insect-esque helmet designed for a Humanoid."
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi',
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_head_unathi.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/species/unathi/generated/onmob_head_unathi.dmi'
		)
/obj/item/clothing/suit/space/rig/mantid/tiro
	desc = "A Mantid exosuit designed for a Humanoid. Offers superb protection."
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/weapon/gun/energy/particle/small,
		/obj/item/stack/medical/resin,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle/ascent,
		/obj/item/device/flashlight,
		/obj/item/weapon/tank,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/weapon/handcuffs,
		/obj/item/device/t_scanner,
		/obj/item/weapon/rcd,
		/obj/item/weapon/crowbar,
		/obj/item/weapon/screwdriver,
		/obj/item/weapon/weldingtool,
		/obj/item/weapon/wirecutters,
		/obj/item/weapon/wrench,
		/obj/item/device/multitool,
		/obj/item/device/radio,
		/obj/item/device/scanner/gas,
		/obj/item/weapon/storage/briefcase/inflatable,
		/obj/item/weapon/melee/baton,
		/obj/item/weapon/gun,
		/obj/item/weapon/storage/firstaid,
		/obj/item/weapon/reagent_containers/hypospray,
		/obj/item/roller,
		/obj/item/device/suit_cooling_unit,
		/obj/item/weapon/storage
	)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_suit_unathi.dmi'
		)
/obj/item/clothing/shoes/magboots/rig/mantid/tiro
	desc = "Feels like you're stepping on a cloud."
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_feet_unathi.dmi',
		)
/obj/item/clothing/gloves/rig/mantid/tiro
	desc = "Highly advanced gloves that bind themselves around your fingers. Despite this, it feels as flexible as air."
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_VOX = 'icons/mob/species/vox/onmob_hands_vox.dmi',
		SPECIES_VOX_ARMALIS = 'icons/mob/species/vox/onmob_hands_vox_armalis.dmi',
		SPECIES_NABBER = 'icons/mob/species/nabber/onmob_hands_gas.dmi',
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_hands_unathi.dmi',
		)

/obj/item/weapon/rig/mantid/tiro/elite
	name = "par exosuit"
	desc = "The exosuit of a Gyne's Par, an esteemed Tiro who has earned their favor through efficiency and loyalty. An armor of this quality has few equals."
	icon_state = "par_voidsuit"
	chest_type = /obj/item/clothing/suit/space/rig/mantid/tiro/elite
	helm_type = /obj/item/clothing/head/helmet/space/rig/mantid/tiro/elite
	suit_type = "elite guardian"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/combat,
		/obj/item/rig_module/chem_dispenser/nabber/tiro,
		/obj/item/rig_module/device/nanoblade/par,
		/obj/item/rig_module/mounted/particle_projector,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets/tirowings/elite,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/device/crystalvoice
	)

/obj/item/clothing/head/helmet/space/rig/mantid/tiro/elite
	desc = "The helmet of the Gyne's Par. Comfortable as air."

/obj/item/clothing/suit/space/rig/mantid/tiro/elite
	desc = "The exosuit of the Gyne's Par. Little else can compare to its protection and prestige, besides perhaps the hatred of Solarians towards them."
