/////////
// Cadet
/////////
/datum/job/seccadet
	title = "Security Cadet"
	department = "Security"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	supervisors = "the entirety of Security"
	economic_power = 1
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 19
	selection_color = "#601c1c"
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/maa
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/security/maa/marine,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2
	)
	min_skill = list(   SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_BASIC)
	skill_points = 12

	access = list(access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_solgov_crew)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant)
