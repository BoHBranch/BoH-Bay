//combat
/datum/gear/augmentation/nanite_unit
	display_name = "nanite MCU"
	path = /obj/item/organ/internal/augment/active/nanounit
	cost = 15
	allowed_roles = SECURITY_ROLES

/datum/gear/augmentation/target_comp
	display_name = "tactical computer"
	path = /obj/item/organ/internal/augment/boost/shooting
	cost = 10
	allowed_branches = MILITARY_BRANCHES

/datum/gear/augmentation/cqc_booster
	display_name = "close combat reflex booster"
	path = /obj/item/organ/internal/augment/boost/reflex
	cost = 15
	allowed_branches = MILITARY_BRANCHES

/datum/gear/augmentation/subdural_armor
	display_name = "subdermal armor"
	path = /obj/item/organ/internal/augment/armor
	cost = 10
	allowed_branches = MILITARY_BRANCHES

//utility
/datum/gear/augmentation/implanted_surgical
	display_name = "surgical polytool - left arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/surgical/left
	cost = 4
	allowed_roles = STERILE_ROLES

/datum/gear/augmentation/implanted_surgical/right
	display_name = "surgical polytool - right arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/surgical/right

/datum/gear/augmentation/implanted_toolkit
	display_name = "mechanical polytool - left arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/engineer/left
	cost = 4

/datum/gear/augmentation/implanted_toolkit/right
	display_name = "mechanical polytool - right arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/engineer/right

/datum/gear/augmentation/implanted_circuitkit
	display_name = "circuit augment - left arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/simple/circuit/left
	cost = 4

/datum/gear/augmentation/implanted_circuitkit/right
	display_name = "circuit augment - right arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/simple/circuit/right