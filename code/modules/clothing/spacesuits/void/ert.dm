//I made this so the different ERTs would have different looking armors. Don't want mercs looking like the antags. - Sgtmind

/obj/item/clothing/head/helmet/space/void/merc/ert
	name = "reinforced blood-red voidsuit helmet"
	desc = "A helmet of an older combat voidsuit, made before the proliferation of hardsuits. Often used by less financially blessed mercenaries or terrorists."
	icon_state = "rig0-freelancer"
	item_state = "syndie_helm"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	siemens_coefficient = 0.3
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)
	camera = /obj/machinery/camera/network/mercenary
	light_overlay = "helmet_light_green" //todo: species-specific light overlays

/obj/item/clothing/suit/space/void/merc
	icon_state = "rig-syndie"
	name = "reinforced blood-red voidsuit"
	desc = "An advanced suit that protects against injuries during special operations. Property of Gorlex Marauders."
	item_state_slots = list(
		slot_l_hand_str = "syndie_voidsuit",
		slot_r_hand_str = "syndie_voidsuit",
	)
	w_class = ITEM_SIZE_LARGE //normally voidsuits are bulky but the merc voidsuit is 'advanced' or something
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank,/obj/item/device/suit_cooling_unit,/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/melee/energy/sword,/obj/item/weapon/handcuffs)
	siemens_coefficient = 0.3
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_IPC)

/obj/item/clothing/suit/space/void/merc/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1
