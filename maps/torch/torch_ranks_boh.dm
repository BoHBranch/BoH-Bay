/datum/map/torch
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/army/marine_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/army,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/army/marine_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/vox     = list(
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/army/marine_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/civilian,
			/datum/mil_branch/solgov,
			/datum/mil_branch/skrell_fleet
		)
	)

/datum/mil_branch/army/marine_corps
	name = "Marine Corps"
	name_short = "SMC"
	email_domain = "oorah.mil"

// Uses SCG Army's uniforms for now.
	rank_types = list(
		/datum/mil_rank/army/marine_corps/e1,
		/datum/mil_rank/army/marine_corps/e2,
		/datum/mil_rank/army/marine_corps/e3,
		/datum/mil_rank/army/marine_corps/e4,
		/datum/mil_rank/army/marine_corps/e5,
		/datum/mil_rank/army/marine_corps/e6,
		/datum/mil_rank/army/marine_corps/e7,
		/datum/mil_rank/army/marine_corps/e8,
		/datum/mil_rank/army/marine_corps/e8_alt,
		/datum/mil_rank/army/marine_corps/e9,
		/datum/mil_rank/army/marine_corps/e9_alt1,
		/datum/mil_rank/army/marine_corps/e9_alt2,
		/datum/mil_rank/army/marine_corps/o1,
		/datum/mil_rank/army/marine_corps/o2,
		/datum/mil_rank/army/marine_corps/o3,
		/datum/mil_rank/army/marine_corps/o4,
		/datum/mil_rank/army/marine_corps/o5,
		/datum/mil_rank/army/marine_corps/o6,
		/datum/mil_rank/army/marine_corps/o7,
		/datum/mil_rank/army/marine_corps/o8,
		/datum/mil_rank/army/marine_corps/o9,
		/datum/mil_rank/army/marine_corps/o10,
		/datum/mil_rank/army/marine_corps/o10_alt
	)

	spawn_rank_types = list(
		/datum/mil_rank/army/marine_corps/e2,
		/datum/mil_rank/army/marine_corps/e3,
		/datum/mil_rank/army/marine_corps/e4,
		/datum/mil_rank/army/marine_corps/e5,
		/datum/mil_rank/army/marine_corps/e6,
		/datum/mil_rank/army/marine_corps/e7,
		/datum/mil_rank/army/marine_corps/e8,
		/datum/mil_rank/army/marine_corps/e8_alt,
		/datum/mil_rank/army/marine_corps/e9,
		/datum/mil_rank/army/marine_corps/e9_alt1,
		/datum/mil_rank/army/marine_corps/o1,
		/datum/mil_rank/army/marine_corps/o2,
		/datum/mil_rank/army/marine_corps/o3,
		/datum/mil_rank/army/marine_corps/o4,
		/datum/mil_rank/army/marine_corps/o5
	)

// TODO: Grant Ability to marines to heal slightly from eating crayons.
	min_skill = list(	SKILL_HAULING = SKILL_ADEPT,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_COMBAT  = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

// TODO: Rank accessories for Marine Corps.
/*
 *  Marine Corps (copy of an Army ranks, with modificiations in alt ranks)
 *  ============
 */
/datum/mil_rank/army/marine_corps/e1
	name = "Private"
	name_short = "PVT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted)
	sort_order = 1

/datum/mil_rank/army/marine_corps/e2
	name = "Private Second Class"
	name_short = "PV2"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e2)
	sort_order = 2

/datum/mil_rank/army/marine_corps/e3
	name = "Private First Class"
	name_short = "PV1"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e3)
	sort_order = 3

/datum/mil_rank/army/marine_corps/e4
	name = "Corporal"
	name_short = "CPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e4)
	sort_order = 4

/datum/mil_rank/army/marine_corps/e5
	name = "Sergeant"
	name_short = "SGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e5)
	sort_order = 5

/datum/mil_rank/army/marine_corps/e6
	name = "Staff Sergeant"
	name_short = "SSG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e6)
	sort_order = 6

/datum/mil_rank/army/marine_corps/e7
	name = "Sergeant First Class"
	name_short = "SFC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e7)
	sort_order = 7

/datum/mil_rank/army/marine_corps/e8
	name = "Master Sergeant"
	name_short = "MSG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e8)
	sort_order = 8

/datum/mil_rank/army/marine_corps/e8_alt
	name = "First Sergeant"
	name_short = "1SG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e8_alt)
	sort_order = 8

/datum/mil_rank/army/marine_corps/e9
	name = "Sergeant Major"
	name_short = "SGM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9)
	sort_order = 9

/datum/mil_rank/army/marine_corps/e9_alt1
	name = "Command Sergeant Major"
	name_short = "CSM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9_alt1)
	sort_order = 9

/datum/mil_rank/army/marine_corps/e9_alt2
	name = "Sergeant Major of the Marine Corps"
	name_short = "SMMC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9_alt2)
	sort_order = 9

/datum/mil_rank/army/marine_corps/o1
	name = "Second Lieutenant"
	name_short = "2LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer)
	sort_order = 11

/datum/mil_rank/army/marine_corps/o2
	name = "First Lieutenant"
	name_short = "1LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o2)
	sort_order = 12

/datum/mil_rank/army/marine_corps/o3
	name = "Captain"
	name_short = "CPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o3)
	sort_order = 13

/datum/mil_rank/army/marine_corps/o4
	name = "Major"
	name_short = "MAJ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o4)
	sort_order = 14

/datum/mil_rank/army/marine_corps/o5
	name = "Lieutenant Colonel"
	name_short = "LTC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o5)
	sort_order = 15

/datum/mil_rank/army/marine_corps/o6
	name = "Colonel"
	name_short = "COL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o6)
	sort_order = 16

/datum/mil_rank/army/marine_corps/o7
	name = "Brigadier General"
	name_short = "BG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag)
	sort_order = 17

/datum/mil_rank/army/marine_corps/o8
	name = "Major General"
	name_short = "MG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o8)
	sort_order = 18

/datum/mil_rank/army/marine_corps/o9
	name = "Lieutenant General"
	name_short = "LTG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o9)
	sort_order = 19

/datum/mil_rank/army/marine_corps/o10
	name = "General"
	name_short = "GEN"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o10)
	sort_order = 20

/datum/mil_rank/army/marine_corps/o10_alt
	name = "General of the Marine Corps"
	name_short = "GMC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o10_alt)
	sort_order = 20
