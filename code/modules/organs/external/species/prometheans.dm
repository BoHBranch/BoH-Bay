// Slime limbs.
/obj/item/organ/external/chest/unbreakable/slime //The huge max_damage is necessary because if their chest breaks, they can't regen the damage unlike limbs, that can be cut off.
	max_damage = 400
	limb_flags = ORGAN_FLAG_GENDERED_ICON

/obj/item/organ/external/groin/unbreakable/slime
	max_damage = 30
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_GENDERED_ICON

/obj/item/organ/external/arm/unbreakable/slime
	max_damage = 15
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/arm/right/unbreakable/slime
	max_damage = 15
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/leg/unbreakable/slime
	max_damage = 15
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/leg/right/unbreakable/slime
	max_damage = 15
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/foot/unbreakable/slime
	max_damage = 5
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/foot/right/unbreakable/slime
	max_damage = 5
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/hand/unbreakable/slime
	max_damage = 5
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/hand/right/unbreakable/slime
	max_damage = 5
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE

/obj/item/organ/external/head/unbreakable/slime
	max_damage = 15
	draw_eyes = null
	vital = 0
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_GENDERED_ICON

