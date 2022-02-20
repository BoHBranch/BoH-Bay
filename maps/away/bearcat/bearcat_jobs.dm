/datum/job/submap/bearcat_captain
	title = "Independant Captain"
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	is_semi_antagonist = TRUE
	supervisors = "your bottom line"
	info = "our ship is in a deep, fringe region of space following a ion storm blowout. God knows for how long you have been guided by a malfunctioning auto-pilot, but at least the cryo-revival system is functional now. Organize what's left of your crew and continue with your salvage, trade or exploration efforts."

/datum/job/submap/bearcat_crewman
	title = "Independant Crewman"
	supervisors = "the Captain"
	total_positions = 6
	spawn_positions = 6
	outfit_type = /decl/hierarchy/outfit/job/bearcat/crew
	is_semi_antagonist = TRUE
	info = "our ship is in a deep, fringe region of space following a ion storm blowout. God knows for how long you have been guided by a malfunctioning auto-pilot, but at least the cryo-revival system is functional now. Coordinate with your captain and continue with your salvage, trade or exploration efforts."

#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/bearcat/crew
	name = BEARCAT_OUTFIT_JOB_NAME("Crew")
	id_type = /obj/item/weapon/card/id/bearcat

/decl/hierarchy/outfit/job/bearcat/captain
	name = BEARCAT_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	id_type = /obj/item/weapon/card/id/bearcat_captain

/decl/hierarchy/outfit/job/bearcat/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

#undef BEARCAT_OUTFIT_JOB_NAME

/obj/effect/submap_landmark/spawnpoint/captain
	name = "Independant Captain"

/obj/effect/submap_landmark/spawnpoint/crewman
	name = "Independant Crewman"
