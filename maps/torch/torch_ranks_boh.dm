/datum/map/torch
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/marine_corps,
		/datum/mil_branch/foreign_legion,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/army,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/marine_corps,
		/datum/mil_branch/foreign_legion,
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
			/datum/mil_branch/fleet,
			/datum/mil_branch/marine_corps,
			/datum/mil_branch/foreign_legion,
			/datum/mil_branch/civilian,
			/datum/mil_branch/solgov,
			/datum/mil_branch/skrell_fleet
		)
	)

// Yell at somebody to do fleet uniform sprites for Unathi.
// Lore Note: SMC allows humans with Vulpkanin and other (under "custom species") genemods.
	species_to_branch_whitelist = list(
		/datum/species/diona	= list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/nabber	= list(/datum/mil_branch/civilian),
		/datum/species/skrell	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion,
			/datum/mil_branch/skrell_fleet
		),
		/datum/species/unathi	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/adherent	= list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/sergal	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/sergal/northern	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/sergal/eastern	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/akula	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/custom	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/marine_corps,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/humanathi	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/tajaran	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/vasilissan	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/vulpkanin	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/marine_corps,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/customhuman	= list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/marine_corps,
			/datum/mil_branch/foreign_legion
		),
		/datum/species/vox			= list(/datum/mil_branch/alien),
		/datum/species/vox/armalis	= list(/datum/mil_branch/alien)
	)

/datum/mil_branch/marine_corps
	name = "Solar Marine Corps"
	name_short = "SMC"
	email_domain = "dagon.oorah.mil"

// Uses SCG Army's uniforms, at least for now.
	rank_types = list(
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/marine_corps/e6,
		/datum/mil_rank/marine_corps/e7,
		/datum/mil_rank/marine_corps/e8,
		/datum/mil_rank/marine_corps/e8_alt,
		/datum/mil_rank/marine_corps/e9,
		/datum/mil_rank/marine_corps/e9_alt,
		/datum/mil_rank/marine_corps/o1,
		/datum/mil_rank/marine_corps/o2,
		/datum/mil_rank/marine_corps/o3,
		/datum/mil_rank/marine_corps/o3_alt,
		/datum/mil_rank/marine_corps/o3_alt2,
		/datum/mil_rank/marine_corps/o4,
		/datum/mil_rank/marine_corps/o5,
		/datum/mil_rank/marine_corps/o6,
		/datum/mil_rank/marine_corps/o7,
		/datum/mil_rank/marine_corps/o8,
		/datum/mil_rank/marine_corps/o9,
		/datum/mil_rank/marine_corps/o10
	)

	spawn_rank_types = list(
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/marine_corps/e6,
		/datum/mil_rank/marine_corps/e7,
		/datum/mil_rank/marine_corps/e8,
		/datum/mil_rank/marine_corps/e8_alt,
		/datum/mil_rank/marine_corps/e9,
		/datum/mil_rank/marine_corps/e9_alt,
		/datum/mil_rank/marine_corps/o1,
		/datum/mil_rank/marine_corps/o2,
		/datum/mil_rank/marine_corps/o3_alt,
		/datum/mil_rank/marine_corps/o3_alt2,
		/datum/mil_rank/marine_corps/o4,
		/datum/mil_rank/marine_corps/o5
	)

	assistant_job = /datum/job/crew

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_COMBAT  = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)


/datum/mil_branch/foreign_legion
	name = "Solar Foreign Legion"
	name_short = "SFJ" // Move middle letter forward and replace it with "W". :funface:
	email_domain = "dagon.legion.mil"

// Also uses SCG Army uniform/Marine outfits for time being.
	rank_types = list(
		/datum/mil_rank/foreign_legion/e1,
		/datum/mil_rank/foreign_legion/e2,
		/datum/mil_rank/foreign_legion/e3,
		/datum/mil_rank/foreign_legion/e4,
		/datum/mil_rank/foreign_legion/e5,
		/datum/mil_rank/foreign_legion/e6,
		/datum/mil_rank/foreign_legion/e8,
		/datum/mil_rank/foreign_legion/e9,
		/datum/mil_rank/foreign_legion/e9_alt,
		/datum/mil_rank/foreign_legion/o1,
		/datum/mil_rank/foreign_legion/o2,
		/datum/mil_rank/foreign_legion/o3,
		/datum/mil_rank/foreign_legion/o3_alt,
		/datum/mil_rank/foreign_legion/o4,
		/datum/mil_rank/foreign_legion/o5,
		/datum/mil_rank/foreign_legion/o6,
		/datum/mil_rank/foreign_legion/o7,
		/datum/mil_rank/foreign_legion/o8
	)

	spawn_rank_types = list(
		/datum/mil_rank/foreign_legion/e1,
		/datum/mil_rank/foreign_legion/e2,
		/datum/mil_rank/foreign_legion/e3,
		/datum/mil_rank/foreign_legion/e4,
		/datum/mil_rank/foreign_legion/e5,
		/datum/mil_rank/foreign_legion/e6,
		/datum/mil_rank/foreign_legion/e8,
		/datum/mil_rank/foreign_legion/e9,
		/datum/mil_rank/foreign_legion/e9_alt,
		/datum/mil_rank/foreign_legion/o1,
		/datum/mil_rank/foreign_legion/o2,
		/datum/mil_rank/foreign_legion/o3,
		/datum/mil_rank/foreign_legion/o3_alt,
		/datum/mil_rank/foreign_legion/o4,
		/datum/mil_rank/foreign_legion/o5
	)

	assistant_job = /datum/job/crew

	min_skill = list(	SKILL_WEAPONS = SKILL_BASIC,
	                    SKILL_COMBAT  = SKILL_BASIC)

/*
 *  Marine Corps
 *  ============
 */
/datum/mil_rank/marine_corps/e1
	name = "Private"
	name_short = "Pvt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted)
	sort_order = 1

/datum/mil_rank/marine_corps/e2
	name = "Private First Class"
	name_short = "PFC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e2)
	sort_order = 2

/datum/mil_rank/marine_corps/e3
	name = "Lance Corporal"
	name_short = "LCpl"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e3)
	sort_order = 3

/datum/mil_rank/marine_corps/e4
	name = "Corporal"
	name_short = "Cpl"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e4)
	sort_order = 4

/datum/mil_rank/marine_corps/e5
	name = "Sergeant"
	name_short = "Sgt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e5)
	sort_order = 5

/datum/mil_rank/marine_corps/e6
	name = "Staff Sergeant"
	name_short = "SSgt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e6)
	sort_order = 6

/datum/mil_rank/marine_corps/e7
	name = "Gunnery Sergeant"
	name_short = "GySgt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e7)
	sort_order = 7

/datum/mil_rank/marine_corps/e8
	name = "Master Sergeant"
	name_short = "MSgt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8)
	sort_order = 8

/datum/mil_rank/marine_corps/e8_alt
	name = "First Sergeant"
	name_short = "1stSg"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8_alt)
	sort_order = 8

/datum/mil_rank/marine_corps/e9
	name = "Master Gunnery Sergeant"
	name_short = "MGySgt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9)
	sort_order = 9

/datum/mil_rank/marine_corps/e9_alt
	name = "Sergeant Major"
	name_short = "SgtMaj"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9_alt)
	sort_order = 9

/datum/mil_rank/marine_corps/o1
	name = "Second Lieutenant"
	name_short = "2ndLt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer)
	sort_order = 11

/datum/mil_rank/marine_corps/o2
	name = "First Lieutenant"
	name_short = "1stLt"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o2)
	sort_order = 12

/datum/mil_rank/marine_corps/o3
	name = "Captain"
	name_short = "CPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3)
	sort_order = 13

// Specially, to avoid two "Capt" on-board.
/datum/mil_rank/marine_corps/o3_alt
	name = "Marine Captain"
	name_short = "M-CPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt)
	sort_order = 13

/datum/mil_rank/marine_corps/o3_alt2
	name = "Specialist Captain"
	name_short = "SP-CPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt2)
	sort_order = 13

/datum/mil_rank/marine_corps/o4
	name = "Major"
	name_short = "Maj"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o4)
	sort_order = 14

/datum/mil_rank/marine_corps/o5
	name = "Lieutenant Colonel"
	name_short = "LtCol"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o5)
	sort_order = 15

/datum/mil_rank/marine_corps/o6
	name = "Colonel"
	name_short = "Col"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o6)
	sort_order = 16

/datum/mil_rank/marine_corps/o7
	name = "Brigadier General"
	name_short = "BGen"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/flag)
	sort_order = 17

/datum/mil_rank/marine_corps/o8
	name = "Major General"
	name_short = "MGen"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o8)
	sort_order = 18

/datum/mil_rank/marine_corps/o9
	name = "Lieutenant General"
	name_short = "LtGen"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o9)
	sort_order = 19

/datum/mil_rank/marine_corps/o10
	name = "General"
	name_short = "Gen"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o10)
	sort_order = 20
/// *** ///

/*
 *  Foreign Legion
 *  ==============
 */
/datum/mil_rank/foreign_legion/e1
	name = "Legionnaire Second Class"
	name_short = "2LG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted)
	sort_order = 1

/datum/mil_rank/foreign_legion/e2
	name = "Legionnaire First Class"
	name_short = "1LG"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e2)
	sort_order = 2

/datum/mil_rank/foreign_legion/e3
	name = "Caporal"
	name_short = "CPRL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e3)
	sort_order = 3

/datum/mil_rank/foreign_legion/e4
	name = "Caporal Chef"
	name_short = "CPRLC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e4)
	sort_order = 4

/datum/mil_rank/foreign_legion/e5
	name = "Sergent"
	name_short = "SGNT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e5)
	sort_order = 5

/datum/mil_rank/foreign_legion/e6
	name = "Sergent Chef"
	name_short = "SGNTC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e6)
	sort_order = 6

/datum/mil_rank/foreign_legion/e8
	name = "Adjutant"
	name_short = "ADJ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e8)
	sort_order = 8

/datum/mil_rank/foreign_legion/e9
	name = "Adjutant Chef"
	name_short = "ADJC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e9)
	sort_order = 9

/datum/mil_rank/foreign_legion/e9_alt
	name = "Adjutant Major"
	name_short = "ADJM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e9_alt)
	sort_order = 9

/datum/mil_rank/foreign_legion/o1
	name = "Sous-Lieutenant"
	name_short = "SLT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer)
	sort_order = 11

/datum/mil_rank/foreign_legion/o2
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o2)
	sort_order = 12

/datum/mil_rank/foreign_legion/o3
	name = "Capitaine"
	name_short = "CPTE"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o3)
	sort_order = 13

// Was specially to avoid two "Capt" on-board, but French gotta French. Damn frog eaters!
/datum/mil_rank/foreign_legion/o3_alt
	name = "Legion Capitaine"
	name_short = "L-CPTE"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o3_alt)
	sort_order = 13

/datum/mil_rank/foreign_legion/o4
	name = "Commandant"
	name_short = "CMDT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o4)
	sort_order = 14

/datum/mil_rank/foreign_legion/o5
	name = "Lieutenant-colonel"
	name_short = "LT-C"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o5)
	sort_order = 15

/datum/mil_rank/foreign_legion/o6
	name = "Colonel"
	name_short = "COL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o6)
	sort_order = 16

/datum/mil_rank/foreign_legion/o7
	name = "General of the Brigade"
	name_short = "BGEN"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/flag)
	sort_order = 17

/datum/mil_rank/foreign_legion/o8
	name = "Commandement of the Foreign Legion"
	name_short = "COM-FL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/foreign_legion/flag/o8)
	sort_order = 18
