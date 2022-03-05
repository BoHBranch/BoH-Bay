/datum/job/submap/voxship_vox/armalis
	title = "Shard Martinet"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "apex and the arkship"
	info = "Loyal to your Quill-Captain, you enforce the will of the ark admirals; while you may be away from the main fleets, the crew must not forget they are subservient to the will of the Archon. \
	You are the pinnacle of the navy's technology, training, and adapted designs of the Auralis. You are destruction. You are mercy. \
	You are the shield between life and death."
	whitelisted_species = list(SPECIES_VOX_ARMALIS)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	min_skill = list(   SKILL_EVA         = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_HAULING     = SKILL_MAX,
	                    SKILL_PILOT       = SKILL_BASIC)
	skill_points = 4 //hahaha no not when you get min skills bucko

/obj/effect/submap_landmark/spawnpoint/voxship_crew/armalis
	name = "Shard Martinet"
