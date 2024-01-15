/obj/item/clothing/accessory/cloak
	name = "cloak"
	desc = "A simple, bland cloak."
	icon = 'modular_boh/icon/obj/obj_cloak.dmi'
	icon_state = "cloak"
	icon_override = 'modular_boh/icon/mob/onmob_cloak.dmi'
	accessory_icons = list(slot_tie_str = 'modular_boh/icon/mob/onmob_cloak.dmi', slot_w_uniform_str = 'modular_boh/icon/mob/onmob_cloak.dmi', slot_wear_suit_str = 'modular_boh/icon/mob/onmob_cloak.dmi')
	var/fire_resist = T0C+100
	allowed = list()
	slot_flags = SLOT_OCLOTHING | SLOT_TIE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	siemens_coefficient = 0.9
	w_class = ITEM_SIZE_NORMAL
	slot = ACCESSORY_SLOT_OVER

/obj/item/clothing/accessory/cloak/boh
	name = "greatcloak"
	desc = "A simple, yet fancy cloak."
	icon_state = "cloak_alt"
	icon_override = 'modular_boh/icon/mob/onmob_cloak.dmi'
	accessory_icons = list(slot_tie_str = 'modular_boh/icon/mob/onmob_cloak.dmi', slot_w_uniform_str = 'modular_boh/icon/mob/onmob_cloak.dmi', slot_wear_suit_str = 'modular_boh/icon/mob/onmob_cloak.dmi')

/obj/item/clothing/accessory/cloak/boh/dress
	name = "boatcloak"
	desc = "A fancy Fleet boatcloak with silver ribbon."
	icon_state = "boatcloak"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/accessory/cloak/boh/dress/command
	name = "command boatcloak"
	desc = "A fancy Fleet boatcloak with golden ribbon."
	icon_state = "boatcloak_com"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/obj/item/clothing/accessory/cloak/boh/command
	name = "command cloak"
	desc = "A white Fleet dress cloak with gold details."
	icon_state = "cloak_com"

/obj/item/clothing/accessory/cloak/boh/command/support
	name = "command support cloak"

/obj/item/clothing/accessory/cloak/boh/engineering
	name = "engineering cloak"
	desc = "A white Fleet dress cloak with orange details."
	icon_state = "cloak_eng"

/obj/item/clothing/accessory/cloak/boh/explorer
	name = "explorer cloak"
	desc = "A white Fleet dress cloak with purple details."
	icon_state = "cloak_exp"

/obj/item/clothing/accessory/cloak/boh/explorer/science
	name = "researcher cloak"

/obj/item/clothing/accessory/cloak/boh/medical
	name = "medical cloak"
	desc = "A white Fleet dress cloak with light-blue details."
	icon_state = "cloak_med"

/obj/item/clothing/accessory/cloak/boh/security
	name = "security cloak"
	desc = "A white Fleet dress cloak with red details."
	icon_state = "cloak_sec"

/obj/item/clothing/accessory/cloak/boh/service
	name = "service cloak"
	desc = "A white Fleet dress cloak with green details."
	icon_state = "cloak_service"

/obj/item/clothing/accessory/cloak/boh/supply
	name = "supply cloak"
	desc = "A white Fleet dress cloak with brown details."
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

//####### LONG LABCOATS

/obj/item/clothing/suit/storage/toggle/labcoat/lclabcoat
	icon = 'modular_boh/icon/boh/obj/clothing/longlabcoats.dmi'
	name = "long labcoat"
	desc = "A suit that protects against minor chemical spills. For the stylish megalomaniac."
	icon_state = "labcoat_long"
	color = "#feffff"

/obj/item/clothing/suit/storage/toggle/labcoat/rd
	icon = 'modular_boh/icon/boh/obj/clothing/longlabcoats.dmi'
	name = "research director's labcoat"
	desc = "A full-body labcoat covered in green and black designs, denoting it as an Expeditionary Corps Organisation management coat. Judging by the amount of designs on it, it is only to be worn by the most enthusiastic of employees."
	icon_state = "labcoat_rd"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS

/obj/item/clothing/suit/storage/toggle/labcoat/roles/science/nanotrasen
	icon = 'modular_boh/icon/boh/obj/clothing/longlabcoats.dmi'
	name = "\improper NT long labcoat"
	desc = "A full-body labcoat covered in red and black designs, denoting it as a NanoTrasen management coat. Judging by the amount of designs on it, it is only to be worn by the most enthusiastic of employees."
	icon_state = "labcoat_rd_nt"

/obj/item/clothing/suit/storage/toggle/labcoat/roles/science/heph
	icon = 'modular_boh/icon/boh/obj/clothing/longlabcoats.dmi'
	name = "\improper HI long labcoat"
	desc = "A full-body labcoat covered in cyan and black designs, denoting it as a Hephaestus Industries management coat. Judging by the amount of designs on it, it is only to be worn by the most enthusiastic of employees."
	icon_state = "labcoat_rd_heph"

/obj/item/clothing/suit/storage/toggle/labcoat/roles/science/zeng
	icon = 'modular_boh/icon/boh/obj/clothing/longlabcoats.dmi'
	name = "\improper Z-H long labcoat"
	desc = "A full-body labcoat covered in cyan and black designs, denoting it as a Zeng-Hu Pharmaceuticals management coat. Judging by the amount of designs on it, it is only to be worn by the most enthusiastic of employees."
	icon_state = "labcoat_rd_zeng"

/obj/item/clothing/suit/storage/toggle/labcoat/rd/ec
	icon = 'modular_boh/icon/boh/obj/clothing/longlabcoats.dmi'
	name = "chief science officer's labcoat"
	desc = "A coat that protects against minor chemical spills. It has purple stripes on the shoulders denoting it as an Expeditionary Corps labcoat, and purple trim to indicate a Chief Science Officer."
	icon_state = "labcoat_cso"
	body_parts_covered = UPPER_TORSO|ARMS

//#### Boots
/obj/item/clothing/shoes/dutyboots/knee
	name = "knee high jackboots"
	desc = "Tall synthleather boots with an artificial shine."
	icon = 'icons/obj/clothing/obj_feet.dmi'
	icon_state = "jackboots_knee"
	item_state = "jackboots_knee"

/obj/item/clothing/shoes/dutyboots/thigh
	name = "thigh high jackboots"
	desc = "Tall synthleather boots with an artificial shine."
	icon = 'icons/obj/clothing/obj_feet.dmi'
	icon_state = "jackboots_thigh"
	item_state = "jackboots_thigh"

/obj/item/clothing/shoes/navyboots
	name = "navy boots"
	desc = "A pair of durable navy boots. Designed for use on-ship."
	icon_state = "navy"
	force = 3
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_MINOR
		)
	siemens_coefficient = 0.7

//#### Gloves
/obj/item/clothing/gloves/thick/navy
	name = "navy gloves"
	desc = "A pair of durable navy gloves. Designed for use on-ship"
	icon_state = "navy"
	item_state = "mgloves"
