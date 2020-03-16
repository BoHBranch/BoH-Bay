/datum/job/submap/voxship_vox
	title = "Shoal Scavenger"
	total_positions = 12
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "apex and the arkship"
	info = "Scrap is thin. Not much food is left, but thankfully the sector is quite rich, and it's time to get some more supplies. \
	although staying on base is tempting. Plenty of nitrogen, and not much hazards to worry about."
	whitelisted_species = list(SPECIES_VOX)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	min_skill = list(   SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_BASIC)
	skill_points = 16

#define VOXSHIP_OUTFIT_JOB_NAME(job_name) ("Vox Asteroid Base - Job - " + job_name)
/decl/hierarchy/outfit/job/voxship
	hierarchy_type = /decl/hierarchy/outfit/job/voxship
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/voxship/crew
	name = VOXSHIP_OUTFIT_JOB_NAME("Shoal Scavenger")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	belt = /obj/item/weapon/storage/belt/utility/full
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/weapon/crowbar/prybar

/obj/effect/submap_landmark/spawnpoint/voxship_crew
	name = "Shoal Scavenger"

#undef VOXSHIP_OUTFIT_JOB_NAME
