var/const/INF               =(1<<11)

/datum/department/infantry
	name = "Infantry"
	flag = INF
	goals = list(/datum/goal/department/planet_claim)
	max_goals = 1

/singleton/hierarchy/outfit/job/security/infantry
	name = "Infantry Outfit"

/singleton/hierarchy/outfit/job/security/infantry/squadlead
	name = OUTFIT_JOB_NAME("Squad Lead")

/singleton/hierarchy/outfit/job/security/infantry/tech
	name = OUTFIT_JOB_NAME("Combat Tech")

/singleton/hierarchy/outfit/job/security/infantry/grunt
	name = OUTFIT_JOB_NAME("Rifleman")

//Infantry Jobs
/datum/job/squad_lead
	title = "Squad Lead"
	department = "Infantry"
	department_flag = INF
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	supervisors = "the highest ranking Marine and SolGov Command"
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	skill_points = 26
	minimum_character_age = list(SPECIES_HUMAN = 25)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_TRAINED,
						SKILL_PILOT       = SKILL_BASIC,
						SKILL_COMBAT      = SKILL_TRAINED,
						SKILL_WEAPONS     = SKILL_TRAINED)

	max_skill = list(	SKILL_COMBAT      = SKILL_MASTER,
						SKILL_WEAPONS     = SKILL_MASTER,
						SKILL_EVA		  = SKILL_EXPERIENCED,
						SKILL_HAULING     = SKILL_MASTER)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e6
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_control,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_infcom, access_inftech, access_aquila, access_eva, access_bridge)

/datum/job/squad_lead/get_description_blurb()
	return "<span class='warning'>You are NOT Security. Ignoring this will get you job banned, or worse.</span> - You are a Squad Leader. Your duty is to organize and lead the small infantry squad to support the Pathfinder. You command Marines in your Squad. You make sure that expedition has the firepower it needs. Once on the away mission, your duty is to ensure that the worst doesn't become reality."

/datum/job/combat_tech
	title = "Combat Technician"
	supervisors = "the Squad Leader"
	department = "Infantry"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 22
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	minimum_character_age = list(SPECIES_HUMAN = 20)
	min_skill = list(	SKILL_CONSTRUCTION = SKILL_TRAINED,
						SKILL_ELECTRICAL   = SKILL_TRAINED,
						SKILL_MEDICAL      = SKILL_BASIC,
						SKILL_COMBAT       = SKILL_TRAINED,
						SKILL_WEAPONS      = SKILL_TRAINED)

	max_skill = list(	SKILL_COMBAT       = SKILL_EXPERIENCED,
						SKILL_WEAPONS      = SKILL_MASTER,
						SKILL_EVA		   = SKILL_EXPERIENCED,
						SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
						SKILL_ELECTRICAL   = SKILL_EXPERIENCED)

	alt_titles = list(
		"Combat Engineer",
		"Combat Medic")

	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5
		)
	access = list(access_maint_tunnels, access_petrov, access_petrov_control,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_inftech, access_aquila, access_eva)

/datum/job/combat_tech/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Squad Lead")
				return TRUE
	return FALSE

/datum/job/combat_tech/get_description_blurb()
	return "<span class='warning'>You are NOT Security. Ignoring this will get you job banned, or worse.</span> - You are the singular Combat Technician in the squad. Your duty is to provide both firepower and demolitions as required. You may assume Command if no Squad Leader is present."

/datum/job/grunt
	title = "Rifleman"
	department = "Infantry"
	department_flag = INF
	total_positions = 3
	spawn_positions = 3
	minimal_player_age = 6
	supervisors = "the Combat Technician and Squad Leader"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/infantry
	selection_color = "#557e38"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	min_skill = list(	SKILL_COMBAT       = SKILL_TRAINED,
						SKILL_WEAPONS      = SKILL_TRAINED,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_EXPERIENCED,
						SKILL_WEAPONS     = SKILL_EXPERIENCED,
						SKILL_EVA		  = SKILL_EXPERIENCED)

	alt_titles = list(
		"Grunt",
		"Trooper")

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_control,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_aquila, access_eva)

/datum/job/grunt/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Squad Lead")
				return TRUE
	return FALSE

/datum/job/grunt/get_description_blurb()
	return "<span class='warning'>You are NOT Security. Ignoring this will get you job banned, or worse.</span> - You are a Marine! Your duty is to listen to the Squad Leader. If they're not present, the Combat Technician may pull rank. Do your best not to die, while also taking orders. Oorah!"

//############# PSYKER

/datum/job/psiadvisor
	title = "Psionic Advisor"
	department = "Support"
	department_flag = SPT
	selection_color = "#2f2f7f"
	total_positions = 1
	spawn_positions = 1
	economic_power = 30
	minimum_character_age = list(SPECIES_HUMAN = 25,SPECIES_UNATHI = 25,SPECIES_SERGAL = 25, SPECIES_SKRELL = 25, SPECIES_PROMETHEAN = 25, SPECIES_YEOSA = 25, SPECIES_VASS = 25, SPECIES_TAJ = 25, SPECIES_CUSTOM = 25, SPECIES_AKULA = 25)
	//minimal_player_age = 7	//DEACTIVATED FOR DEBUG PURPOSES
	supervisors = "NTPC or the Foundation, neither secondary to the Commanding Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/psiadvisor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/foundationadvisor)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED,
		SKILL_FINANCE = SKILL_TRAINED,
		SKILL_MEDICAL = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT     = SKILL_EXPERIENCED,
		SKILL_WEAPONS     = SKILL_EXPERIENCED
	)
	skill_points = 24
	access = list(access_psiadvisor, access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks,
				access_eva, access_bridge, access_cargo, access_RC_announce, access_solgov_crew, access_hangar)
	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/records
	)

	alt_titles = list(
		"Nanotrasen Psionic Operative" = /singleton/hierarchy/outfit/job/torch/crew/command/psiadvisor/nt,
		"Foundation Agent")

/datum/job/psiadvisor/equip(mob/living/carbon/human/H)
	psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT, "[PSI_COERCION]" = PSI_RANK_OPERANT, "[PSI_PSYCHOKINESIS]" = PSI_RANK_OPERANT, "[PSI_ENERGISTICS]" = PSI_RANK_OPERANT)
	return ..()

/datum/job/psiadvisor/get_description_blurb()
	return "You are the Psionic Advisor, an agent of either the Foundation or Nanotrasen Psionic Corps. Alongside the Counselor, you're the only other individual with known and authorized Psionic abilities aboard the NTSS Dagon. Your main responsibility is advising the Commanding Officer on psionic matters. \
	Secondly, you're to assist the crew or Research on psionic matters, or guide any newly emergent crew that awaken with psionic abilities."

//##### SEC CADET

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
	selection_color = "#601c1c"
	alt_titles = list(
		"Forensics Trainee"
		)
	min_skill = list(   SKILL_EVA         = SKILL_TRAINED,
	                    SKILL_COMBAT      = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_EXPERIENCED,
	                    SKILL_WEAPONS     = SKILL_EXPERIENCED,
	                    SKILL_FORENSICS   = SKILL_EXPERIENCED)
	skill_points = 16
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/maa
	allowed_branches = list(
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/security/maa/fleet,
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3
	)
	access = list(access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_solgov_crew)
	software_on_spawn = list(/datum/computer_file/program/digitalwarrant)

/datum/job/seccadet/get_description_blurb()
	return "You're either a new hire, or a new trainee aboard the [GLOB.using_map.full_name]. Everyone is your senior, and as such, you'd best listen to them."

//## SEA

/datum/job/sea	//Overrides it to make it like ours @r4iser
	title = "NTEF Senior Enlisted Advisor"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 6
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 35,SPECIES_UNATHI = 35,SPECIES_SERGAL = 35, SPECIES_SKRELL = 35, SPECIES_PROMETHEAN = 35, SPECIES_YEOSA = 35, SPECIES_VASS = 35, SPECIES_TAJ = 35, SPECIES_CUSTOM = 35, SPECIES_AKULA = 35)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1
	)

	min_skill = list(   SKILL_EVA        = SKILL_BASIC,
	                    SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS    = SKILL_TRAINED)

	max_skill = list(   SKILL_COMBAT       = SKILL_EXPERIENCED,
	                    SKILL_WEAPONS      = SKILL_EXPERIENCED,
	                    SKILL_PILOT        = SKILL_EXPERIENCED,
	                    SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
	                    SKILL_ELECTRICAL   = SKILL_EXPERIENCED,
	                    SKILL_ENGINES      = SKILL_EXPERIENCED,
	                    SKILL_ATMOS        = SKILL_EXPERIENCED)
	skill_points = 24


	access = list(access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
			            access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_guppy_helm,
			            access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_emergency_armory, access_gunnery, access_infantry, access_torch_fax)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "You are the Senior Enlisted Advisor. You are the highest enlisted person on the ship. You are directly subordinate to the CO. You advise them on enlisted concerns and provide expertise and advice to officers. You are responsible for ensuring discipline and good conduct among enlisted, as well as notifying officers of any issues and \"advising\" them on mistakes they make. You also handle various duties on behalf of the CO and XO. You are an experienced enlisted person, very likely equal only in experience to the CO and XO. You know the regulations better than anyone."

/datum/job/sea/marine
	title = "SMC Senior Enlisted Advisor"
	department = "Support"
	department_flag = SPT
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/sea/marine
	minimum_character_age = list(SPECIES_HUMAN = 35,SPECIES_UNATHI = 35,SPECIES_SERGAL = 35, SPECIES_SKRELL = 35, SPECIES_PROMETHEAN = 35, SPECIES_YEOSA = 35, SPECIES_VASS = 35, SPECIES_TAJ = 35, SPECIES_CUSTOM = 35, SPECIES_AKULA = 35)
	allowed_branches = list(
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e8_alt,
		/datum/mil_rank/marine_corps/e9,
		/datum/mil_rank/marine_corps/e9_alt
	)

/datum/job/roboticist
	title = "Roboticist"
	department = "Science"
	department_flag = ENG

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	supervisors = "the Chief Engineer."
	selection_color = "#633d63"
	economic_power = 6
	alt_titles = list(
		"Mechsuit Technician",
		"Biomechanical Technician"
		)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/research/roboticist
	allowed_branches = list(
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/research/roboticist/fleet,
		/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2,
		/datum/mil_rank/civ/contractor
		)
	min_skill = list(   SKILL_COMPUTER		= SKILL_TRAINED,
	                    SKILL_DEVICES		= SKILL_TRAINED,
	                    SKILL_EVA           = SKILL_TRAINED,
	                    SKILL_ANATOMY       = SKILL_TRAINED,
	                    SKILL_MECH          = HAS_PERK)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERIENCED,
	                    SKILL_ENGINES      = SKILL_EXPERIENCED,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERIENCED,
	                    SKILL_ANATOMY      = SKILL_EXPERIENCED)
	skill_points = 22

	access = list(access_maint_tunnels, access_research, access_robotics, access_nanotrasen, access_solgov_crew, access_surgery, access_medical)

/datum/job/roboticist/get_description_blurb()
	return "You are the Roboticist. You are responsible for repairing, upgrading and handling ship synthetics (like robots). You are also responsible for the production of exosuits(mechs) and bots for various departments. You answer to the Chief Science Officer."

//Federal Protection Agent (SolRep APA)

/datum/job/sfpagent
	title = "Federal Protection Agent"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the SolGov Representative and the Sol Federal Police"
	selection_color = "#3d3d7f"
	economic_power = 12
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25, SPECIES_CUSTOM = 25)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/sfp_agent
	allowed_branches = list(/datum/mil_branch/solgov)
	allowed_ranks = list(/datum/mil_rank/sol/agent)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_TRAINED,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_MASTER,
	                    SKILL_WEAPONS     = SKILL_MASTER,
	                    SKILL_FORENSICS   = SKILL_EXPERIENCED)
	skill_points = 20

	access = list( //Same access as the SolGov Representative + Private access to their equipment locker
		access_representative, access_representative_guard, access_bridge, access_torch_fax, access_solgov_crew,
		access_radio_comm,
		access_sec_doors, access_security, access_medical, access_research, access_cargo, access_engine, access_hangar, access_infantry
	)

	defer_roundstart_spawn = TRUE

/datum/job/sfpagent/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "SolGov Representative")
				return TRUE
	return FALSE

/datum/job/sfpagent/get_description_blurb()
	return "You are the Federal Protection Agent. You are an agent of one of the many branches of the Sol Federal Police. \
	Your job is to assist the Representative in their affairs. You are also expected to protect the Representative's life; even if it costs your own."

/datum/job/sfpagent/post_equip_rank(mob/person)
	for(var/mob/M in GLOB.player_list)
		if(M.client && M.mind)
			if(M.mind.assigned_role == "SolGov Representative")
				to_chat(M, SPAN_NOTICE("<b>Your bodyguard, Agent [person.real_name], is present on [GLOB.using_map.full_name].</b>"))
	..()

/datum/job/liaison
	access = list(
		access_liaison, access_bridge, access_torch_fax, access_solgov_crew, access_keycard_auth, access_sec_guard,
		access_nanotrasen, access_commissary,
		access_radio_comm, access_radio_serv,
		access_sec_doors, access_security, access_medical, access_research, access_cargo, access_engine, access_hangar
	)

/datum/job/bodyguard
	access = list(
		access_liaison, access_bridge, access_torch_fax, access_solgov_crew, access_sec_guard,
		access_nanotrasen, access_commissary,
		access_radio_comm, access_radio_serv,
		access_sec_doors, access_security, access_medical, access_research, access_cargo, access_engine, access_hangar
	)

/datum/job/representative
	access = list(
		access_representative, access_bridge, access_torch_fax, access_solgov_crew,
		access_radio_comm,
		access_sec_doors, access_security, access_medical, access_research, access_cargo, access_engine, access_hangar, access_infantry
	)

/datum/job/sea
	access = list(
		access_sec_doors, access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
		access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_aquila, access_guppy_helm,
		access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_torch_fax,
		access_radio_comm, access_radio_eng, access_radio_med, access_radio_sec, access_radio_serv, access_radio_sup, access_radio_exp
		)
