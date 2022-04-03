/obj/item/weapon/rig/infantry
	name = "infantry fighting hardsuit control module"
	desc = "The Modular Advanced Extra Vehicular Armor, or MAEVA, suit used by Sol marines. It is built from a heavy plasteel-titanium alloy. \
	While it lacks equal protection from energy based weaponry, it has the ability to increase the wearer's strength tenfold."
	req_access = list(access_infantry)
	icon_state = "infantry_rig"
	suit_type = "combat hardsuit"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = (ARMOR_BALLISTIC_RESISTANT + 5),
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	online_slowdown = 1
	offline_slowdown = 3
	offline_vision_restriction = TINT_HEAVY
	allowed = list(/obj/item/device/flashlight, /obj/item/weapon/tank,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/handcuffs,/obj/item/device/t_scanner, /obj/item/weapon/rcd, /obj/item/weapon/crowbar, \
	/obj/item/weapon/screwdriver, /obj/item/weapon/weldingtool, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench, /obj/item/device/multitool, \
	/obj/item/device/radio, /obj/item/device/scanner/gas,/obj/item/weapon/storage/briefcase/inflatable, /obj/item/weapon/melee/baton, /obj/item/weapon/gun, \
	/obj/item/weapon/storage/firstaid, /obj/item/weapon/reagent_containers/hypospray, /obj/item/roller, /obj/item/device/suit_cooling_unit, /obj/item/weapon/storage/)

	chest_type = /obj/item/clothing/suit/space/rig/infantry
	helm_type = /obj/item/clothing/head/helmet/space/rig/infantry
	boot_type = /obj/item/clothing/shoes/magboots/rig/infantry
	glove_type = /obj/item/clothing/gloves/rig/infantry

/obj/item/clothing/head/helmet/space/rig/infantry
	light_overlay = "helmet_light_infantry"
	species_restricted = list(SPECIES_HUMAN,SPECIES_PLASMASANS,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_head_helmet_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi'
		)

/obj/item/clothing/suit/space/rig/infantry
	species_restricted = list(SPECIES_HUMAN,SPECIES_PLASMASANS,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_suit_unathi.dmi'
		)

/obj/item/clothing/shoes/magboots/rig/infantry
	species_restricted = list(SPECIES_HUMAN,SPECIES_PLASMASANS,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_feet_unathi.dmi'
		)

/obj/item/clothing/gloves/rig/infantry
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_NOCUFFS
	species_restricted = list(SPECIES_HUMAN,SPECIES_PLASMASANS,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_hands_unathi.dmi'
		)

/obj/item/weapon/rig/infantry/equipped
	initial_modules = list(
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/maneuvering_jets/infantry
		)

/obj/item/weapon/rig/infantry/sl
	name = "squad leader fighting hardsuit control module"
	desc = "The Modular Advanced Extra Vehicular Armor, or MAEVA, suit used by Sol marines. It is built from a heavy plasteel-titanium alloy. \
	While it lacks equal protection from energy based weaponry, it has the ability to increase the wearer's strength tenfold. This particular \
	suit has the markings of a squad leader."
	icon_state = "sl_infantry_rig"

/obj/item/weapon/rig/infantry/sl/equipped
	initial_modules = list(
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/maneuvering_jets/infantry
	)
