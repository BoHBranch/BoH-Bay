/obj/item/organ/internal/augment/active/polytool/surgical
	name = "surgical toolset"
	action_button_name = "Deploy Surgical Tool"
	desc = "Part of Zeng-Hu Pharmaceutical's line of biomedical augmentations, this device contains the full set of tools any surgeon would ever need."
	icon_state = "multitool_medical"
	paths = list(
		/obj/item/weapon/bonesetter,
		/obj/item/weapon/cautery,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/hemostat,
		/obj/item/weapon/retractor,
		/obj/item/weapon/scalpel,
		/obj/item/weapon/surgicaldrill
	)

/obj/item/organ/internal/augment/active/polytool/surgical/left
	allowed_organs = list(BP_AUGMENT_L_ARM)

/obj/item/organ/internal/augment/active/polytool/surgical/right
	allowed_organs = list(BP_AUGMENT_R_ARM)