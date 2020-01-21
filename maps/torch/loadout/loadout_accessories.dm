/datum/gear/accessory/solawardmajor
	display_name = "major award selection"
	description = "A medal or ribbon awarded to military and paramilitary personnel for significant accomplishments."
	path = /obj/item/clothing/accessory
	cost = 8
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/accessory/solawardmajor/New()
	..()
	var/solmajors = list()
	solmajors["iron star"] = /obj/item/clothing/accessory/medal/solgov/iron/star
	solmajors["bronze heart"] = /obj/item/clothing/accessory/medal/solgov/bronze/heart
	solmajors["silver sword"] = /obj/item/clothing/accessory/medal/solgov/silver/sword
	solmajors["medical heart"] = /obj/item/clothing/accessory/medal/solgov/heart
	solmajors["valor medal"] = /obj/item/clothing/accessory/medal/solgov/silver/sol
	solmajors["sapienterian medal"] = /obj/item/clothing/accessory/medal/solgov/gold/sol
	solmajors["peacekeeper ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/peace
	solmajors["marksman ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/marksman
	gear_tweaks += new/datum/gear_tweak/path(solmajors)

/datum/gear/accessory/solawardminor
	display_name = "minor award selection"
	description = "A medal or ribbon awarded to military and paramilitary personnel for minor accomplishments."
	path = /obj/item/clothing/accessory
	cost = 5
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/accessory/solawardminor/New()
	..()
	var/solminors = list()
	solminors["expeditionary medal"] = /obj/item/clothing/accessory/medal/solgov/iron/sol
	solminors["operations medal"] = /obj/item/clothing/accessory/medal/solgov/bronze/sol
	solminors["frontier ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/frontier
	solminors["instructor ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/instructor
	gear_tweaks += new/datum/gear_tweak/path(solminors)

/datum/gear/accessory/tags
	display_name = "dog tags"
	path = /obj/item/clothing/accessory/badge/solgov/tags

/datum/gear/accessory/ec_scarf
	display_name = "Surveyor Corps scarf"
	path = /obj/item/clothing/accessory/solgov/ec_scarf
	description = "A section-specific scarf for Survey Corps uniforms."
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/ec_patch
	display_name = "Surveyor Corps patch"
	path = /obj/item/clothing/accessory/solgov/ec_patch
	description = "A shoulder patch representing the Survey Corps."
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/torch_patch
	display_name = "NTSS Dagon mission patch"
	path = /obj/item/clothing/accessory/solgov/torch_patch
	description = "A shoulder patch representing the NTSS Dagon and its mission. Given to all the oddjobs pulled from various branches to work on the Dagon."

/datum/gear/accessory/pilot_pin
	display_name = "pilot's qualification pin"
	path = /obj/item/clothing/accessory/solgov/specialty/pilot
	allowed_skills = list(SKILL_PILOT = SKILL_ADEPT)
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/fleetpatch
	display_name = "fleet patch"
	path = /obj/item/clothing/accessory/solgov/fleet_patch
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_branches = list(/datum/mil_branch/fleet)

/datum/gear/accessory/armband_ma
	display_name = "master at arms brassard"
	path = /obj/item/clothing/accessory/armband/solgov/ma
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor, /datum/job/medical_trainee)

/datum/gear/accessory/armband_corpsman
	display_name = "medical armband"
	path = /obj/item/clothing/accessory/armband/medblue
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/medical_trainee)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/datum/gear/accessory/armband_nt
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/ntaward
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/tie
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/tie_color
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/nt_pilot, /datum/job/engineer_trainee, /datum/job/explorer, /datum/job/nt_pilot, /datum/job/pathfinder)

/datum/gear/storage/black_vest
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/merchant)

/datum/gear/storage/white_vest
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/medical_trainee, /datum/job/chemist, /datum/job/merchant, /datum/job/medical_trainee)

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/engineer_trainee)

/datum/gear/storage/black_drop_pouches
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/merchant)

/datum/gear/storage/white_drop_pouches
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/medical_trainee, /datum/job/chemist, /datum/job/merchant, /datum/job/medical_trainee)

/datum/gear/tactical/holster
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/holster/New()
	..()
	var/holsters = list()
	holsters["shoulder holster"] = /obj/item/clothing/accessory/storage/holster
	holsters["armpit holster"] = /obj/item/clothing/accessory/storage/holster/armpit
	holsters["waist holster"] = /obj/item/clothing/accessory/storage/holster/waist
	holsters["hip holster"] = /obj/item/clothing/accessory/storage/holster/hip
	holsters["thigh holster"] = /obj/item/clothing/accessory/storage/holster/thigh
	gear_tweaks += new/datum/gear_tweak/path(holsters)

/datum/gear/tactical/sheath
	allowed_roles = list(/datum/job/pathfinder, /datum/job/explorer)

/datum/gear/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/press_tag
	display_name = "Press tag"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/datum/gear/tactical/helm_covers
	allowed_roles = ARMORED_ROLES

/datum/gear/clothing/hawaii
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/scarf
	allowed_roles = SEMIANDFORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/flannel
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/vest
	allowed_roles = FORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/suspenders
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/wcoat
	allowed_roles = FORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/zhongshan
	allowed_roles = FORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/dashiki
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/thawb
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/sherwani
	allowed_roles = FORMAL_ROLES
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/qipao
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/sweater
	allowed_branches = CASUAL_BRANCHES

/datum/gear/clothing/tangzhuang
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/bowtie
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/ftupin
	allowed_branches = CASUAL_BRANCHES

/*********************
 tactical accessories
*********************/
/datum/gear/tactical/ubac
	display_name = "UBAC shirt selection"
	description = "A selection of combat shirts."
	path = /obj/item/clothing/accessory/ubac
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/ubac/New()
	..()
	var/shirts = list()
	shirts["black UBAC shirt"] = /obj/item/clothing/accessory/ubac
	shirts["blue UBAC shirt"] = /obj/item/clothing/accessory/ubac/blue
	shirts["green UBAC shirt"] = /obj/item/clothing/accessory/ubac/green
	shirts["tan UBAC shirt"] = /obj/item/clothing/accessory/ubac/tan
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/tactical/armor_pouches
	display_name = "armor pouches selection"
	description = "A selection of military armor pouches. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 1
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/armor_pouches/New()
	..()
	var/pouches = list()
	pouches["black armor pouches"] = /obj/item/clothing/accessory/storage/pouches
	pouches["navy armor pouches"] = /obj/item/clothing/accessory/storage/pouches/navy
	pouches["blue armor pouches"] = /obj/item/clothing/accessory/storage/pouches/blue
	pouches["green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["tan armor pouches"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/large_pouches
	display_name = "large armor pouches selection"
	description = "A selection of military large armor pouches. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 2
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/large_pouches/New()
	..()
	var/lpouches = list()
	lpouches["black large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large
	lpouches["navy large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/navy
	lpouches["blue large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/blue
	lpouches["green large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	lpouches["tan large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(lpouches)

/datum/gear/accessory/collars
	display_name = "collar seclection"
	description = "A selection of collars. Not the most practical, but some people are into that"
	path = /obj/item/clothing/accessory/collar/holo

/datum/gear/accessory/collars/New()
	..()
	var/collars = list()
	collars["silver tag collar"] = /obj/item/clothing/accessory/collar/silver
	collars["gold tag collar"] = /obj/item/clothing/accessory/collar/gold
	collars["bell collar"] = /obj/item/clothing/accessory/collar/bell
	collars["spiked collar"] = /obj/item/clothing/accessory/collar/spike
	collars["pink collar"] = /obj/item/clothing/accessory/collar/pink
	collars["holo collar"] = /obj/item/clothing/accessory/collar/holo
	gear_tweaks += new/datum/gear_tweak/path(collars)
