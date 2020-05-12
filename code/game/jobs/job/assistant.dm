/datum/job/assistant
	title = "Asistente"
	department = "Civil"
	department_flag = CIV

	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutamente todos"
	economic_power = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	alt_titles = list("Tecnico Asistente","Interno Medico","Asistente Investigativo","Visitante")
	outfit_type = /decl/hierarchy/outfit/job/assistant

/datum/job/assistant/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()
