#define WEBHOOK_SUBMAP_LOADED_ASCENT "webhook_submap_ascent"

// Submap datum and archetype.
/decl/webhook/submap_loaded/ascent
	id = WEBHOOK_SUBMAP_LOADED_ASCENT

/decl/submap_archetype/ascent_seedship
	descriptor = "Ascent colony ship"
	map = ASCENT_COLONY_SHIP_NAME
	blacklisted_species = null
	whitelisted_species = null
	crew_jobs = list(
		/datum/job/submap/ascent,
		/datum/job/submap/ascent/alate,
		/datum/job/submap/ascent/drone,
		//datum/job/submap/ascent/control_mind,
		/datum/job/submap/ascent/msq,
		/datum/job/submap/ascent/msw,
		/datum/job/submap/ascent/tiro
	)
	call_webhook = WEBHOOK_SUBMAP_LOADED_ASCENT

/datum/submap/ascent
	var/gyne_name
	var/monarch_name

/datum/submap/ascent/sync_cell(obj/effect/overmap/visitable/cell)
	return

/datum/submap/ascent/check_general_join_blockers(var/mob/new_player/joining, var/datum/job/submap/job)
	. = ..()
	if(. && istype(job, /datum/job/submap/ascent))
		var/datum/job/submap/ascent/ascent_job = job
		if(ascent_job.set_species_on_join == SPECIES_MANTID_GYNE && !is_species_whitelisted(joining, SPECIES_MANTID_GYNE))
			to_chat(joining, SPAN_WARNING("You are not whitelisted to play a [SPECIES_MANTID_GYNE]."))
			return FALSE
		if(ascent_job.set_species_on_join == SPECIES_MONARCH_QUEEN && !is_species_whitelisted(joining, SPECIES_NABBER))
			to_chat(joining, SPAN_WARNING("You must be whitelisted to play a [SPECIES_NABBER] to join as a [SPECIES_MONARCH_QUEEN]."))
			return FALSE

/mob/living/carbon/human/proc/gyne_rename_lineage()
	set name = "Name Nest-Lineage"
	set category = "IC"
	set desc = "Rename yourself and your alates."

	if(species.name == SPECIES_MANTID_GYNE && mind && istype(mind.assigned_job, /datum/job/submap/ascent))
		var/datum/job/submap/ascent/ascent_job = mind.assigned_job
		var/datum/submap/ascent/cutter = ascent_job.owner
		if(istype(cutter))

			var/new_number = input("What is your position in your lineage?", "Name Nest-Lineage") as num|null
			if(!new_number)
				return
			new_number = Clamp(new_number, 1, 999)
			var/new_name = sanitize(input("What is the true name of your nest-lineage?", "Name Nest-Lineage") as text|null, MAX_NAME_LEN)
			if(!new_name)
				return

			if(species.name != SPECIES_MANTID_GYNE || !mind || mind.assigned_job != ascent_job)
				return

			// Rename ourselves.
			fully_replace_character_name("[new_number] [new_name]")

			// Rename our alates (and only our alates).
			cutter.gyne_name = new_name
			for(var/mob/living/carbon/human/H in GLOB.human_mob_list)
				if(!H.mind || H.species.name != SPECIES_MANTID_ALATE)
					continue
				var/datum/job/submap/ascent/temp_ascent_job = H.mind.assigned_job
				if(!istype(temp_ascent_job) || temp_ascent_job.owner != ascent_job.owner)
					continue


				var/new_alate_number = is_species_whitelisted(H, SPECIES_MANTID_GYNE) ? random_id(/datum/species/mantid, 1000, 9999) : random_id(/datum/species/mantid, 10000, 99999)
				H.fully_replace_character_name("[new_alate_number] [new_name]")
				to_chat(H, SPAN_NOTICE("<font size = 3>Your gyne, [real_name], has awakened, and you recall your place in the nest-lineage: <b>[H.real_name]</b>.</font>"))

	verbs -= /mob/living/carbon/human/proc/gyne_rename_lineage


/mob/living/carbon/human/proc/monarch_rename_lineage()
	set name = "Name Monarch-Lineage"
	set category = "IC"
	set desc = "Rename yourself and your workers."

	if(species.name == SPECIES_MONARCH_QUEEN && mind && istype(mind.assigned_job, /datum/job/submap/ascent/msq))
		var/datum/job/submap/ascent/ascent_job = mind.assigned_job
		var/datum/submap/ascent/cutter = ascent_job.owner
		if(istype(cutter))


			var/new_name = sanitize(input("What is the true name of your nest-lineage?", "Name Monarch-Lineage") as text|null, MAX_NAME_LEN)
			if(!new_name)
				return

			if(species.name != SPECIES_MONARCH_QUEEN || !mind || mind.assigned_job != ascent_job)
				return

			// Rename ourselves.
			fully_replace_character_name("Queen [new_name]")

			// Rename our workers
			cutter.monarch_name = new_name
			for(var/mob/living/carbon/human/H in GLOB.human_mob_list)
				if(!H.mind || H.species.name != SPECIES_MONARCH_WORKER)
					continue
				var/datum/job/submap/ascent/temp_ascent_job = H.mind.assigned_job
				if(!istype(temp_ascent_job) || temp_ascent_job.owner != ascent_job.owner)
					continue

				var/new_monarch_number = random_id(/datum/species/nabber/monarch, 10000, 99999)
				H.fully_replace_character_name("[new_monarch_number] [new_name]")
				to_chat(H, SPAN_NOTICE("<font size = 3>Your Queen, [real_name], has awoken. You recall your place in the nest-lineage: <b>[H.real_name]</b>.</font>"))

	verbs -= /mob/living/carbon/human/proc/monarch_rename_lineage

// Jobs.
/datum/job/submap/ascent
	title = "Ascent Gyne"
	total_positions = 1
	supervisors = "nobody but yourself"
	info = "You are the Gyne of an independent Ascent vessel. Your hunting has brought you to this remote sector full of crawling primitives. Impose your will, found a new nest, and bring prosperity to your lineage. \
	To come into contact with the unknown, even for a mighty Gyne such as yourself, would put your nest-lineage at risk."
	outfit_type = /decl/hierarchy/outfit/job/ascent
	blacklisted_species = null
	whitelisted_species = null
	loadout_allowed = FALSE
	is_semi_antagonist = TRUE
	var/requires_supervisor = FALSE
	var/set_species_on_join = SPECIES_MANTID_GYNE
	skill_points = 34
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_PILOT = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_SCIENCE = SKILL_ADEPT,
					SKILL_MEDICAL = SKILL_BASIC)

/datum/job/submap/ascent/is_position_available()
	. = ..()
	if(. && requires_supervisor)
		for(var/mob/M in GLOB.player_list)
			if(!M.client || !M.mind || !M.mind.assigned_job || M.mind.assigned_job.title != requires_supervisor)
				continue
			var/datum/job/submap/ascent/ascent_job = M.mind.assigned_job
			if(istype(ascent_job) && ascent_job.owner == owner)
				return TRUE
		return FALSE

/datum/job/submap/ascent/is_available(client/caller)
	. = ..()
	if(.)
		switch(set_species_on_join)
			if(SPECIES_MANTID_GYNE)
				. = is_species_whitelisted(caller.mob, SPECIES_MANTID_GYNE)
			if(SPECIES_MONARCH_QUEEN)
				. = is_species_whitelisted(caller.mob, SPECIES_NABBER)

/datum/job/submap/ascent/handle_variant_join(var/mob/living/carbon/human/H, var/alt_title)

	if(ispath(set_species_on_join, /mob/living/silicon/robot))
		return H.Robotize(set_species_on_join)
	if(ispath(set_species_on_join, /mob/living/silicon/ai))
		return H.AIize(set_species_on_join, move = FALSE)

	var/datum/submap/ascent/cutter = owner
	if(!istype(cutter))
		crash_with("Ascent submap job is being used by a non-Ascent submap, aborting variant join.")
		return

	if(!cutter.gyne_name)
		cutter.gyne_name = create_gyne_name()

	if(set_species_on_join)
		H.set_species(set_species_on_join)
	switch(H.species.name)
		if(SPECIES_MANTID_GYNE)
			H.real_name = "[random_id(/datum/species/mantid, 1, 99)] [cutter.gyne_name]"
			H.verbs |= /mob/living/carbon/human/proc/gyne_rename_lineage
		if(SPECIES_MANTID_ALATE)
			var/new_alate_number = is_species_whitelisted(H, SPECIES_MANTID_GYNE) ? random_id(/datum/species/mantid, 1000, 9999) : random_id(/datum/species/mantid, 10000, 99999)
			H.real_name = "[new_alate_number] [cutter.gyne_name]"
		if(SPECIES_MONARCH_QUEEN)
			H.real_name = "[random_id(/datum/species/nabber/monarch, 1, 99)] [cutter.monarch_name]"
			H.verbs |= /mob/living/carbon/human/proc/monarch_rename_lineage
		if(SPECIES_MONARCH_WORKER)
			var/new_monarch_number = random_id(/datum/species/nabber/monarch, 10000, 99999)
			H.real_name = "[new_monarch_number] [cutter.monarch_name]"
	H.name = H.real_name
	if(H.mind)
		H.mind.name = H.real_name
	return H

/datum/job/submap/ascent/alate
	title = "Ascent Alate"
	total_positions = 6
	supervisors = "the Gyne"
	info = "You are an Alate of an independent Ascent vessel. Your Gyne has directed you to this remote sector full of crawling primitives. Follow her instructions and bring prosperity to your nest-lineage."
	set_species_on_join = SPECIES_MANTID_ALATE
	requires_supervisor = "Ascent Gyne"
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_MEDICAL = SKILL_ADEPT)

/datum/job/submap/ascent/drone
	title = "Ascent Drone"
	supervisors = "the Gyne"
	total_positions = 2
	info = "You are a Machine Intelligence of an independent Ascent vessel. The Gyne you assist, and her children, have wandered into this sector full of primitive bioforms. Try to keep them alive, and assist where you can."
	set_species_on_join = /mob/living/silicon/robot/flying/ascent
	requires_supervisor = "Ascent Gyne"


/datum/job/submap/ascent/msw
	title = "Serpentid Adjunct"
	supervisors = "your Queen"
	total_positions = 2
	info = "You are a Monarch Serpentid Worker serving as an attendant to your Queen on this vessel. Serve her however she requires."
	set_species_on_join = SPECIES_MONARCH_WORKER
	outfit_type = /decl/hierarchy/outfit/job/monarch
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_SCIENCE = SKILL_ADEPT,
					SKILL_MEDICAL = SKILL_BASIC)
	requires_supervisor = "Serpentid Queen"

/datum/job/submap/ascent/msq
	title = "Serpentid Queen"
	supervisors = "the Gyne"
	total_positions = 1
	info = "You are a Monarch Serpentid Queen living on an independant Ascent vessel. Assist the Gyne in her duties and tend to your Workers."
	set_species_on_join = SPECIES_MONARCH_QUEEN
	outfit_type = /decl/hierarchy/outfit/job/monarch
	skill_points = 26
	min_skill = list(SKILL_EVA = SKILL_EXPERT,
					SKILL_HAULING = SKILL_BASIC,
					SKILL_MEDICAL = SKILL_EXPERT,
					SKILL_ANATOMY = SKILL_EXPERT,
					SKILL_CHEMISTRY = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT)
	requires_supervisor = "Ascent Gyne"

/datum/job/submap/ascent/tiro //We do this snowflake style because otherwise the species throws a fit. DO NOT SUBTYPE THIS TO ASCENT!!!!
	title = "Ascent Tiro"
	supervisors = "the Khaarmani."
	total_positions = 2
	info = "You are an Ascent Tiro, servant to the independent Ascent vessel. How you ended up in this position is known only to you and the Khaarmani. Assist the Gyne and Queen in their duties - or, find a method of escape. \
	As this is a roleplaying role, you will be expected to uphold a certain bare-minimum standard when playing. If you have devoted yourself to the role of Tiro enough to be considered a <b>Par</b> by the Ascent (and have accepted the equipment), \
	please note that you will <u>be held to a higher standard</u> in regards to roleplay as them!"
	outfit_type = /decl/hierarchy/outfit/job/tiro
	blacklisted_species = list(SPECIES_VOXPARIAH, SPECIES_VOX, SPECIES_VOX_ARMALIS, SPECIES_ADHERENT, SPECIES_MULE)
	whitelisted_species = null
	loadout_allowed = TRUE
	skill_points = 34
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_BASIC,
					SKILL_WEAPONS = SKILL_BASIC,
					SKILL_MEDICAL = SKILL_BASIC,
					SKILL_DEVICES = SKILL_BASIC)
	requires_supervisor = "Ascent Gyne"
	set_species_on_join = null

/datum/job/submap/ascent/tiro/equip(var/mob/living/carbon/human/H) //You have no FFFFUCKING idea how happy I am that this works now FUCK
	..()
	qdel(H.internal_organs_by_name[BP_LUNGS]) //Delete the old lungs
	H.internal_organs_by_name[BP_LUNGS] = new /obj/item/organ/internal/lungs/tirolungs //Install new ones
	to_chat(H, SPAN_DANGER("The Ascent have altered you to breathe both oxygen and their own alien atmosphere. The air feels strange."))

	H.internal_organs_by_name[BP_SYSTEM_CONTROLLER] = new /obj/item/organ/internal/controller/tiro //Give them a snowflakey controller
	to_chat(H, SPAN_OCCULT("You feel a faint, brief pain in your head. A connection to the Ascent has been installed into your body - allowing you access to their neural network."))
	H.add_language(LANGUAGE_MANTID_BROADCAST) //Incase the controller fucks itself for some reason, we add the language forcibly.

	H.verbs |= /mob/living/carbon/human/proc/identity_rename
	to_chat(H, SPAN_NOTICE("You may wish to rename yourself as a Tiro. This can be done with the 'Rename Yourself' verb in the IC tab at the top right of the screen. This is not required."))

/mob/living/carbon/human/proc/identity_rename() //Incase people would rather have a different name.
	set name = "Rename Yourself"
	set category = "IC"
	set desc = "Abandon your old identity and adopt a new one."
	var/new_name = sanitize(input("What is your new identity?", "Adopt a New Name") as text|null, MAX_NAME_LEN)
	if(!new_name)
		return
	fully_replace_character_name("[new_name]") //With our old life forgotten, we rename ourselves in the image anew.
	verbs -= /mob/living/carbon/human/proc/identity_rename

// Spawn points.
/obj/effect/submap_landmark/spawnpoint/ascent_seedship
	name = "Ascent Gyne"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/alate
	name = "Ascent Alate"

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/drone
	name = "Ascent Drone"

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/adjunct
	name = "Serpentid Adjunct"

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/queen
	name = "Serpentid Queen"

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/tiro
	name = "Ascent Tiro"

/*
/datum/job/submap/ascent/control_mind
	title = "Ascent Control Mind"
	supervisors = "the Gyne"
	total_positions = 1
	info = "You are a Machine Intelligence of an independent Ascent vessel. The Gyne you assist, and her children, have wandered into this sector full of primitive bioforms. Try to keep them alive, and assist where you can."
	set_species_on_join = /mob/living/silicon/ai/ascent

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/control
	name = "Ascent Control Mind"

/mob/living/silicon/ai/ascent
	name = "TODO"
*/

#undef WEBHOOK_SUBMAP_LOADED_ASCENT
