//Food
/datum/job/bartender
	title = "Bartender"
	department = "Servicio"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "el jefe de personal"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_bar)
	alt_titles = list("Barista")
	outfit_type = /decl/hierarchy/outfit/job/service/bartender

/datum/job/chef
	title = "Chef"
	department = "Servicio"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "el jefe de personal"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_kitchen)
	alt_titles = list("Cocinero")
	outfit_type = /decl/hierarchy/outfit/job/service/chef

/datum/job/hydro
	title = "Jardinero"
	department = "Servicio"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 1
	supervisors = "el jefe de personal"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_hydroponics)
	alt_titles = list("Hidroponico")
	outfit_type = /decl/hierarchy/outfit/job/service/gardener

//Cargo
/datum/job/qm
	title = "Quartermaster"
	department = "Suministro"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "el jefe de personal"
	economic_power = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_player_age = 3
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/cargo/qm

/datum/job/cargo_tech
	title = "Tecnico de Cargo"
	department = "Suministro"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "el quartermaster y el jefe de personal"
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting)
	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech

/datum/job/mining
	title = "Minero"
	department = "Suministro"
	department_flag = SUP
	total_positions = 4
	spawn_positions = 3
	supervisors = "el quartermaster y el jefe de personal"
	economic_power = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting)
	alt_titles = list("Tecnico de Taladro","Prospector")
	outfit_type = /decl/hierarchy/outfit/job/cargo/mining

/datum/job/janitor
	title = "Conserje"
	department = "Servicio"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "el jefe de personal"
	access = list(access_janitor, access_maint_tunnels, access_engine, access_research, access_sec_doors, access_medical)
	minimal_access = list(access_janitor, access_maint_tunnels, access_engine, access_research, access_sec_doors, access_medical)
	alt_titles = list("Custodio","Tecnico Sanitario")
	outfit_type = /decl/hierarchy/outfit/job/service/janitor

//More or less assistants
/datum/job/librarian
	title = "Librero"
	department = "Civil"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "jefe de personal"
	access = list(access_library, access_maint_tunnels)
	minimal_access = list(access_library)
	alt_titles = list("Periodista")
	outfit_type = /decl/hierarchy/outfit/job/librarian

/datum/job/lawyer
	title = "Agente de Asuntos Internos"
	department = "Soporte"
	department_flag = SPT
	total_positions = 2
	spawn_positions = 2
	supervisors = "oficiales de la compañia y Reguladores Corporativos"
	economic_power = 7
	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_bridge)
	minimal_access = list(access_lawyer, access_sec_doors, access_bridge)
	minimal_player_age = 10
	outfit_type = /decl/hierarchy/outfit/job/internal_affairs_agent

/datum/job/lawyer/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)
