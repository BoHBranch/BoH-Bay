/datum/job/submap/voxship_arm
	title = "Shoal Armalis"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "apex and the arkship"
	info = "Towering over their contemporaries, the Armalis are the muscle of the Vox."
	whitelisted_species = list(SPECIES_VOX_ARMALIS)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	min_skill = list(   SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_BASIC)
	skill_points = 20

/obj/effect/submap_landmark/spawnpoint/voxarm_crew
	name = "Shoal Armalis"
