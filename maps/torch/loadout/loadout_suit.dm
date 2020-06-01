/datum/gear/suit/blueapron
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/overalls
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/medcoat
	allowed_roles = MEDICAL_ROLES

/datum/gear/suit/trenchcoat

/datum/gear/suit/poncho

/datum/gear/suit/security_poncho
	allowed_roles = list(/datum/job/merchant, /datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/seccadet)

/datum/gear/suit/medical_poncho
	allowed_roles = list(/datum/job/senior_doctor, /datum/job/doctor, /datum/job/psychiatrist, /datum/job/merchant, /datum/job/chemist)

/datum/gear/suit/engineering_poncho
	allowed_roles = list(/datum/job/engineer, /datum/job/roboticist, /datum/job/merchant)

/datum/gear/suit/science_poncho
	allowed_roles = list(/datum/job/scientist, /datum/job/submap/unishi_researcher, /datum/job/senior_scientist, /datum/job/scientist_assistant)

/datum/gear/suit/nanotrasen_poncho
	allowed_roles = list(/datum/job/scientist, /datum/job/liaison, /datum/job/bodyguard, /datum/job/scientist_assistant, /datum/job/senior_scientist, /datum/job/merchant)

/datum/gear/suit/cargo_poncho
	allowed_roles = list(/datum/job/cargo_tech, /datum/job/qm, /datum/job/mining, /datum/job/merchant)

/datum/gear/suit/suit_jacket
	allowed_roles = FORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/custom_suit_jacket
	allowed_roles = FORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/hoodie
	allowed_roles = CASUAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/hoodie_sel
	allowed_roles = CASUAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/labcoat

/datum/gear/suit/labcoat_corp
	allowed_roles = DOCTOR_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/labcoat_blue
	allowed_roles = DOCTOR_ROLES

/datum/gear/suit/labcoat_ec
	display_name = "labcoat, Expeditionary Corps"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/science/ec
	allowed_branches = NT_BRANCHES

/datum/gear/suit/labcoat_ec_cso
	display_name = "labcoat, chief science officer, Expeditionary Corps"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/rd/ec
	allowed_roles = list(/datum/job/rd)

/datum/gear/suit/wintercoat_dais
	display_name = "winter coat, DAIS"
	allowed_roles = list(/datum/job/engineer, /datum/job/roboticist, /datum/job/scientist_assistant, /datum/job/scientist, /datum/job/senior_scientist, /datum/job/rd)

/datum/gear/suit/coat
	allowed_branches = CASUAL_BRANCHES

/datum/gear/suit/leather

/datum/gear/suit/wintercoat

/datum/gear/suit/track
	allowed_roles = CASUAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/tactical/pcarrier
	display_name = "plate carrier selection"
	description = "A selection of military plate carriers. They can be equipped with armor plates, but provides no protection of their own."
	path = /obj/item/clothing/suit/armor/pcarrier
	cost = 1
	slot = slot_wear_suit
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/pcarrier/New()
	..()
	var/armors = list()
	armors["black plate carrier"] = /obj/item/clothing/suit/armor/pcarrier
	armors["navy plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/navy
	armors["blue plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/blue
	armors["green plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/green
	armors["tan plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/tan
	gear_tweaks += new/datum/gear_tweak/path(armors)

/datum/gear/suit/sfp
	display_name = "Agent's jacket"
	path = /obj/item/clothing/suit/storage/toggle/agent_jacket
	allowed_roles = list(/datum/job/detective)
