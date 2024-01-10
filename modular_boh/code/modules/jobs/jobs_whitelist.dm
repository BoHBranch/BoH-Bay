#define JOBWHITELISTFILE "config/jobwhitelist.txt"

GLOBAL_LIST_EMPTY(job_whitelist_list)

/hook/startup/proc/loadJobWhitelist()
	if(config.job_whitelist)
		load_job_whitelist()
		if(!LAZYLEN(GLOB.job_whitelist_list))
			config.job_whitelist = FALSE
			error("The whitelist system could not find any whitelist entities. The whitelist system will now disable itself.")
	else
		log_and_message_admins("Whitelists are not enabled. They will not be loaded.")

	return TRUE

/proc/load_job_whitelist()
	if(fexists(JOBWHITELISTFILE))
		GLOB.job_whitelist_list = file2list(JOBWHITELISTFILE)
/proc/has_job_whitelist(var/client/C, var/datum/job/J)

	if(!C || !istype(C))
		error("has_job_whitelist() was called without a client. Please fix this.")
		return FALSE

	if(!J || !istype(J))
		error("has_job_whitelist() was called without a job. Please fix this.")
		return FALSE

	if(!config.job_whitelist)
		return TRUE

	if(!LAZYLEN(GLOB.job_whitelist_list))
		return TRUE

	if(check_rights(R_ADMIN, 0, C))
		return TRUE

	if(!J.is_whitelisted)
		return TRUE

	for(var/s in GLOB.job_whitelist_list)
		if(lowertext(s) == lowertext("[C.ckey] - [J.title]"))
			return TRUE
		if(lowertext(s) == lowertext("[C.ckey] - All"))
			return TRUE

	return FALSE

#undef JOBWHITELISTFILE