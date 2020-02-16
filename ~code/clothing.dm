// AAAAAAAAAAAAAAAAAAA - Nopeman
// This overrides accessory slots to include ACCESSORY_SLOT_OVER. I'm too retarded for this shit otherwise.

/obj/item/clothing/under
	valid_accessory_slots = list(ACCESSORY_SLOT_UTILITY,ACCESSORY_SLOT_HOLSTER,ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_DEPT,ACCESSORY_SLOT_DECOR,ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_UTILITY,ACCESSORY_SLOT_HOLSTER,ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_DEPT,ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit
	valid_accessory_slots = list(ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/armor/swat/officer
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/armor/vest
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/vest
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/armor/pcarrier
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_C, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_ARMOR_S, ACCESSORY_SLOT_ARMOR_M, ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_C, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_ARMOR_S, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/armor/riot
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/armor/bulletproof
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/armor/laserproof
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/toggle/labcoat
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND, ACCESSORY_SLOT_OVER)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND, ACCESSORY_SLOT_OVER)

/obj/item/clothing/suit/storage/toggle/agent_jacket
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_OVER)
