/datum/job/qm
	title = "Deck Officer"
	department = "Support"
	department_flag = SPT|SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	alt_titles = list(
		"Deck Chief",
		"Gunnery Officer",
		"Gunnery Chief")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20

	access = list(access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
						access_mining, access_mining_office, access_mining_station, access_commissary, access_gunnery, access_eva)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	
/datum/job/qm/get_description_blurb()
	return "You are the Deck Officer, and the Supply department, hanger, and munitions are your domain. Your responsibilities include ensuring the ship is supplied, the flight records are filled, shuttles are fuelled, missiles are made, and the ship is always combat ready for ship to ship combat." 						 


/datum/job/cargo_tech
	title = "Deck Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Deck Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Supply Technician",
		"Gunnery Technician")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/tech
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/tech/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/supply/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/civ/contractor
	)
	max_pow_cat = 1
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_guppy_helm,
						access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_commissary, access_gunnery, access_eva)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	
/datum/job/cargo_tech/get_description_blurb()
	return "You are a Deck Technician, you answer directly to the Deck Officer. Your responsibilities are to ensure supplies ordered are delivered, shuttles are fuelled, munitions are made and loaded, and to man the ship's missile weaponry in the case  of ship to ship combat."

/datum/job/mining
	title = "Prospector"
	department = "Supply"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Deck Officer"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Drill Technician",
		"Shaft Miner",
		"Salvage Technician")
	min_skill = list(   SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_BASIC,
	                    SKILL_PILOT   = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/prospector
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/fleet)
	allowed_ranks = list(/datum/mil_rank/civ/contractor,
								/datum/mil_rank/fleet/e3,
								/datum/mil_rank/fleet/e4,
								/datum/mil_rank/fleet/e5,
								/datum/mil_rank/fleet/e6)

	access = list(access_maint_tunnels, access_emergency_storage, access_mining, access_mining_office, access_mining_station,
						access_expedition_shuttle, access_guppy, access_hangar, access_guppy_helm, access_solgov_crew, access_cargo, access_eva)
	minimal_access = list()
