/datum/job/rd
	title = "Director cientifico"
	head_position = 1
	department = "Ciencias"
	department_flag = COM|SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "el capitan"
	selection_color = "#ad6bad"
	req_admin_notify = 1
	economic_power = 15
	access = list(access_rd, access_bridge, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter, access_sec_doors, access_heads,
			            access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network)
	minimal_access = list(access_rd, access_bridge, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter, access_sec_doors, access_heads,
			            access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network)
	minimal_player_age = 14
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/science/rd

/datum/job/scientist
	title = "Cientifico"
	department = "Ciencias"
	department_flag = SCI

	total_positions = 5
	spawn_positions = 3
	supervisors = "el director cientifico"
	selection_color = "#633d63"
	economic_power = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenoarch)
	alt_titles = list("Xenoarqueologo", "Anomalista", "Investigador de Phoron")
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/science/scientist

/datum/job/xenobiologist
	title = "Xenobiologo"
	department = "Ciencias"
	department_flag = SCI

	total_positions = 3
	spawn_positions = 2
	supervisors = "el director cientifico"
	selection_color = "#633d63"
	economic_power = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_hydroponics)
	minimal_access = list(access_research, access_xenobiology, access_hydroponics)
	alt_titles = list("Xenobotanico")
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/science/xenobiologist

/datum/job/roboticist
	title = "Robotista"
	department = "Ciencias"
	department_flag = SCI

	total_positions = 2
	spawn_positions = 2
	supervisors = "el director cientifico"
	selection_color = "#633d63"
	economic_power = 5
	access = list(access_robotics, access_tox, access_tox_storage, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	minimal_access = list(access_robotics, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	alt_titles = list("Ingeniero Biomecanico","Ingeniero Mecatronico")
	minimal_player_age = 3
	outfit_type = /decl/hierarchy/outfit/job/science/roboticist
