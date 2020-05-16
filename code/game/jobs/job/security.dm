/datum/job/hos
	title = "Head de Seguridad"
	head_position = 1
	department = "Seguridad"
	department_flag = SEC|COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "el capitan"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_power = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_heads,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_bridge, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_heads,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_bridge, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/security/hos

/datum/job/hos/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/datum/job/warden
	title = "Guardian"
	department = "Seguridad"
	department_flag = SEC

	total_positions = 1
	spawn_positions = 1
	supervisors = "el head de seguridad"
	selection_color = "#601c1c"
	economic_power = 5
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/warden

/datum/job/detective
	title = "Detective"
	department = "Seguridad"
	department_flag = SEC

	total_positions = 2
	spawn_positions = 2
	supervisors = "el head de seguridad"
	selection_color = "#601c1c"
	alt_titles = list("Tecnico forense" = /decl/hierarchy/outfit/job/security/detective/forensic)
	economic_power = 5
	access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva)
	minimal_access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/detective

/datum/job/officer
	title = "Oficial de Seguridad"
	department = "Seguridad"
	department_flag = SEC

	total_positions = 4
	spawn_positions = 4
	supervisors = "el head de seguridad"
	selection_color = "#601c1c"
	alt_titles = list("Oficial Junior")
	economic_power = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/officer
