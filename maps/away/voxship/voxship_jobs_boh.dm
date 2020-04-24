/datum/job/submap/voxship_vox/armalis
	title = "Shoal Armalis"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "apex and the arkship"
	info = "Towering over their contemporaries, the Armalis are the muscle of the Vox. Not useful for much aside from rending the flesh of their foes."
	whitelisted_species = list(SPECIES_VOX_ARMALIS)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	min_skill = list(   SKILL_EVA         = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_HAULING     = SKILL_MAX,
	                    SKILL_PILOT       = SKILL_BASIC)
	skill_points = 4 //hahaha no not when you get min skills bucko

/obj/effect/submap_landmark/spawnpoint/voxship_crew/armalis
	name = "Shoal Armalis"
