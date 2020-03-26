/obj/item/clothing/accessory/cloak/boh
	desc = "A simple, yet fancy cloak."
	icon = 'maps/torch/icons/obj/obj_cloak_boh.dmi'
	icon_override = 'maps/torch/icons/mob/onmob_cloak_boh.dmi'
	accessory_icons = list(slot_tie_str = 'maps/torch/icons/mob/onmob_cloak_boh.dmi', slot_w_uniform_str = 'maps/torch/icons/mob/onmob_cloak_boh.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_cloak_boh.dmi')

/obj/item/clothing/accessory/cloak/boh/dress
	name = "boatcloak"
	desc = "A fancy NTEF boatcloak with silver ribbon."
	icon_state = "boatcloak"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/accessory/cloak/boh/dress/command
	name = "command boatcloak"
	desc = "A fancy NTEF boatcloak with golden ribbon."
	icon_state = "boatcloak_com"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/obj/item/clothing/accessory/cloak/boh/command
	name = "command cloak"
	desc = "A white NTEF dress cloak with gold details."
	icon_state = "cloak_com"

/obj/item/clothing/accessory/cloak/boh/command/support
	name = "command support cloak"

/obj/item/clothing/accessory/cloak/boh/engineering
	name = "engineering cloak"
	desc = "A white NTEF dress cloak with orange details."
	icon_state = "cloak_eng"

/obj/item/clothing/accessory/cloak/boh/explorer
	name = "explorer cloak"
	desc = "A white NTEF dress cloak with purple details."
	icon_state = "cloak_exp"

/obj/item/clothing/accessory/cloak/boh/explorer/science
	name = "researcher cloak"

/obj/item/clothing/accessory/cloak/boh/medical
	name = "medical cloak"
	desc = "A white NTEF dress cloak with light-blue details."
	icon_state = "cloak_med"

/obj/item/clothing/accessory/cloak/boh/security
	name = "security cloak"
	desc = "A white NTEF dress cloak with red details."
	icon_state = "cloak_sec"

/obj/item/clothing/accessory/cloak/boh/service
	name = "service cloak"
	desc = "A white NTEF dress cloak with green details."
	icon_state = "cloak_service"

/obj/item/clothing/accessory/cloak/boh/supply
	name = "supply cloak"
	desc = "A white NTEF dress cloak with brown details."
	icon_state = "cloak_supply"

// Map-wise Modular Override to include ACCESSORY_SLOT_OVER
/obj/item/clothing/suit/storage/solgov/service
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_DEPT,ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/solgov/dress
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_RANK, ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/dress/solgov
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/hooded/wintercoat/solgov
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/dress/terran
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_OVER)

/obj/item/weapon/rig/military/infantry
	name = "heavy suit control module"
	desc = "A heavy, incredibly sleek suit of military grade armor. \
	The ablative coating and composite armor makes it seem incredibly sturdy."
	req_access = list(access_infantry)
	suit_type = "military hardsuit"
	icon_state = "military_rig"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	initial_modules = list(
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/maneuvering_jets
	)