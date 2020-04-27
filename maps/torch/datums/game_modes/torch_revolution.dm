/datum/game_mode/revolution
	round_description = "Subversive elements are onboard trying to convert and coerce crewmembers into their cause."
	extended_round_description = "There may be potentially subversive elements with convincing causes onboard the ship trying to cause a revolt for variosu causes."

/datum/antagonist/revolutionary
	role_text = "Head Mutineer"
	role_text_plural = "Mutineers"

	faction_welcome = "You are a revolutionary. Find a potential cause to gain allies and fullfill your goal."
	welcome_text = "You are a revolutionary. Convince others of your cause and take action."

	victory_text = "The crew did not manage to stop the revolutionaries."
	loss_text = "The crew managed to stop the revolution."

	//Inround revs.
	faction_role_text = "Mutineer"
	faction_descriptor = "Mutiny"

	faction = "mutiny"

	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)
	restricted_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/chief_engineer, /datum/job/rd, /datum/job/cmo)
	protected_jobs = list(/datum/job/officer)

/datum/antagonist/loyalists


	victory_text = "The uprising was stopped."
	loss_text = "The uprising succeeded."

/datum/antagonist/loyalists/Initialize()
	..()
	welcome_text = "You are a hardliner of Nanotrasen. Convince people to support your employers cause."
	faction_welcome = "Obey all instructions, follow the chain of command, and ensure no uprisers endanger the Dagon."
	faction_descriptor = "[GLOB.using_map.company_name]"
