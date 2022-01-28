// Rigs and gear themselves.
/obj/item/weapon/rig/gas
	name = "serpentid utility exosuit"
	icon_override = 'icons/mob/species/nabber/onmob_back_gas.dmi'
	desc = "An advanced utility exosuit with integrated power supply and atmosphere."
	icon_state = "gexosuit"
	item_state = null
	suit_type = "exosuit"
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	chest_type = /obj/item/clothing/suit/space/rig/gas
	helm_type =  /obj/item/clothing/head/helmet/space/rig/gas
	boot_type =  /obj/item/clothing/shoes/magboots/rig/gas
	glove_type = /obj/item/clothing/gloves/rig/gas
	update_visible_name = TRUE
	sprite_sheets = list(
		SPECIES_NABBER = 'icons/mob/species/nabber/onmob_back_gas.dmi'
		)
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets
		)

/obj/item/clothing/head/helmet/space/rig/gas
	light_overlay = "helmet_light_dual"
	icon = 'icons/obj/clothing/obj_head.dmi'
	item_icons = list(slot_head_str = 'icons/mob/onmob/onmob_head.dmi')
	camera = /obj/machinery/camera/network/command
	species_restricted = list(SPECIES_NABBER)

/obj/item/clothing/suit/space/rig/gas
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	species_restricted = list(SPECIES_NABBER)

/obj/item/clothing/shoes/magboots/rig/gas
	icon = 'icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'icons/mob/onmob/onmob_feet.dmi')
	species_restricted = list(SPECIES_NABBER)

/obj/item/clothing/gloves/rig/gas
	icon = 'icons/obj/clothing/obj_hands.dmi'
	item_icons = list(slot_gloves_str = 'icons/mob/onmob/onmob_hands.dmi')
	species_restricted = list(SPECIES_NABBER)
