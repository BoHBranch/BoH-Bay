/datum/job/submap/voxship_arm
	title = "Shoal Armalis"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxarm/crew
	supervisors = "apex and the arkship"
	info = "Towering over their contemporaries, the Armalis are the muscle of the Vox."
	whitelisted_species = list(SPECIES_VOX_ARMALIS)
	blacklisted_species = null
	is_semi_antagonist = TRUE

#define VOXARM_OUTFIT_JOB_NAME(job_name) ("Vox Asteroid Base - Job - " + job_name)
/decl/hierarchy/outfit/job/voxarm
	hierarchy_type = /decl/hierarchy/outfit/job/voxarm
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/voxarm/crew
	name = VOXARM_OUTFIT_JOB_NAME("Shoal Scavenger")
	uniform = /obj/item/clothing/under/vox/vox_robes
	shoes = /obj/item/clothing/shoes/magboots/vox
	belt = /obj/item/weapon/storage/belt/utility/full
	r_pocket = /obj/item/device/radio

/obj/effect/submap_landmark/spawnpoint/voxarm_crew
	name = "Shoal Armalis"

#undef VOXARM_OUTFIT_JOB_NAME
