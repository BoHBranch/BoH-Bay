/datum/nano_module/program/card_mod/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = 1, datum/topic_state/state = GLOB.default_state)
	..()
	var/list/data = host.initial_data()
	data["infantry_jobs"] = format_jobs(SSjobs.titles_by_department(INF))
