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
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	chest_type = /obj/item/clothing/suit/space/rig/gas
	helm_type =  /obj/item/clothing/head/helmet/space/rig/gas
	boot_type =  null
	glove_type = /obj/item/clothing/gloves/rig/gas
	update_visible_name = TRUE
	sprite_sheets = list(
		SPECIES_NABBER = 'icons/mob/species/nabber/onmob_back_gas.dmi'
		)
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets
		)


/obj/item/clothing/head/helmet/space/rig/gas
	light_color = "#ffff00"
	desc = "More like a torpedo casing than a helmet."
	species_restricted = list(SPECIES_NABBER)
	sprite_sheets = list(
		SPECIES_NABBER =       'icons/mob/species/nabber/onmob_head_gas.dmi'
		)

/obj/item/clothing/suit/space/rig/gas
	desc = "It's closer to a mech than a suit."
	species_restricted = list(SPECIES_NABBER)
	sprite_sheets = list(
		SPECIES_NABBER =       'icons/mob/species/nabber/onmob_suit_gas.dmi'
		)
	allowed = list(
		/obj/item/weapon/storage/
	)

/obj/item/clothing/gloves/rig/gas
	desc = "They look like a cross between a can opener and a Swiss army knife the size of a shoebox."
	species_restricted = list(SPECIES_NABBER)
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	sprite_sheets = list(
		SPECIES_NABBER =       'icons/mob/species/nabber/onmob_hands_gas.dmi'
		)
