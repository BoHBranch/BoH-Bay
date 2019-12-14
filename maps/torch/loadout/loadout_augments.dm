/datum/gear/augmentation/mil
	allowed_branches = MILITARY_BRANCHES

/datum/gear/augmentation/mil/target_comp
	display_name = "tactical computer"
	path = /obj/item/organ/internal/augment/boost/shooting
	cost = 6

/datum/gear/augmentation/mil/cqc_booster
	display_name = "close combat reflex booster"
	path = /obj/item/organ/internal/augment/boost/reflex
	cost = 8

/datum/gear/augmentation/mil/subdural_armor
	display_name = "subdural armor"
	path = /obj/item/organ/internal/augment/armor
	cost = 6

/datum/gear/augmentation/implanted_surgical
	display_name = "surgical polytool (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/surgical
	cost = 4
	allowed_roles = STERILE_ROLES

/datum/gear/augmentation/implanted_toolkit
	display_name = "mechanical polytool (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/engineer
	cost = 4
	allowed_roles = TECHNICAL_ROLES

/datum/gear/augmentation/implanted_ciruitkit
	display_name = "circuit augment (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/simple/circuit
	cost = 4

/datum/gear/augmentation/nanite_unit
	display_name = "nanite MCU"
	path = /obj/item/organ/internal/augment/active/nanounit
	cost = 10
	allowed_roles = SECURITY_ROLES