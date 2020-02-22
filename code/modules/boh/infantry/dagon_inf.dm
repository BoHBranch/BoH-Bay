/datum/department/infantry
	name = "Infantry"
	flag = INF
	goals = list(
		/datum/goal/department/planet_claim)
	max_goals = 1

/datum/job/squad_lead
	title = "Squad Lead"
	department = "Infantry"
	department_flag = INF
	total_positions = 0
	spawn_positions = 0
	supervisors = "the highest ranking Marine and SolGov Command"
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e6,
		/datum/mil_rank/marine_corps/e7,
		/datum/mil_rank/marine_corps/e8,
		/datum/mil_rank/marine_corps/e9
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_BASIC)
	skill_points = 22

	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_infcom, access_inftech, access_aquila)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/squad_lead/get_description_blurb()
	return "You are a Squad Leader. Your duty is to organize and lead the small infantry squad to support the Pathfinder. You command Marines in your Squad. You make sure that expedition has the firepower it needs. Once on the away mission, your duty is to ensure that the worst doesn't become reality."

/datum/job/combat_tech
	title = "Combat Technician"
	supervisors = "the Squad Leader"
	department = "Infantry"
	department_flag = INF
	total_positions = 0
	spawn_positions = 0
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 6
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/marine_corps/e6
		)

	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_inftech, access_aquila)

	min_skill = list(	SKILL_CONSTRUCTION = SKILL_ADEPT,
						SKILL_ELECTRICAL   = SKILL_ADEPT,
						SKILL_MEDICAL      = SKILL_BASIC)

/datum/job/combat_tech/get_description_blurb()
	return "You are the singular Combat Technician in the squad. Your duty is to provide both firepower and demolitions as required. You may assume Command if no Squad Leader is present."

/datum/job/grunt
	title = "Rifleman"
	department = "Infantry"
	department_flag = INF
	total_positions = 0
	spawn_positions = 0
	minimal_player_age = 3
	supervisors = "the Combat Technician and Squad Leader"
	selection_color = "#557e38"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
	/datum/mil_rank/marine_corps/e1,
	/datum/mil_rank/marine_corps/e2,
	/datum/mil_rank/marine_corps/e3,
	/datum/mil_rank/marine_corps/e4,
	/datum/mil_rank/marine_corps/e5
	)

	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_aquila)

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/infantry/get_description_blurb()
	return "You are a Marine! Your duty is to listen to the Squad Leader. If they're not present, the Combat Technician may pull rank. Do your best not to die, while also taking orders. Oorah!"

//alts
/datum/job/combat_tech
	alt_titles = list(
		"Combat Engineer",
		"Combat Medic")

/datum/job/grunt
	alt_titles = list(
		"Grunt",
		"Trooper")
