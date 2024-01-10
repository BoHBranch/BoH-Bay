/datum/nano_module/program/card_mod/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	..()
	var/list/data = host.initial_data()
	data["infantry_jobs"] = format_jobs(SSjobs.titles_by_department(INF))