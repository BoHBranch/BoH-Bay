/datum/job/chief_engineer
	title = "Jefe de Ingenieros"
	head_position = 1
	department = "Ingenieria"
	department_flag = ENG|COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "el capitan"
	selection_color = "#7f6e2c"
	req_admin_notify = 1
	economic_power = 10

	ideal_character_age = 50


	access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_heads,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_bridge, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_heads,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_bridge, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/engineering/chief_engineer

/datum/job/engineer
	title = "Ingeniero"
	department = "Ingenieria"
	department_flag = ENG

	total_positions = 8
	spawn_positions = 7
	supervisors = "el jefe de ingenieros"
	selection_color = "#5b4d20"
	economic_power = 5
	minimal_player_age = 7
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage)
	alt_titles = list("Tecnico de Mantenimiento","Tecnico de Motor","Electricista",
		"Tecnico Atmosferico" = /decl/hierarchy/outfit/job/engineering/atmos)
	outfit_type = /decl/hierarchy/outfit/job/engineering/engineer
