#define JOBWHITELISTFILE "config/jobwhitelist.txt"

GLOBAL_LIST_EMPTY(job_whitelist)

/hook/startup/proc/loadJobWhitelist()
	if(config.job_whitelist)
		load_job_whitelist()
	return 1

/proc/load_job_whitelist()
	GLOB.job_whitelist = file2list(JOBWHITELISTFILE)

/proc/is_job_whitelisted(var/client/M, var/job)
	if(!M || !job)
		return 0

	if(!config.job_whitelist)
		return 1

	if(check_rights(R_ADMIN, 0, M))
		return 1

	if(istype(job, /datum/job/))
		var/datum/job/J = job
		if(!J.is_whitelisted)
			return 1
		return job_whitelist_lookup(J.title, M.ckey)
	return 0

/proc/job_whitelist_lookup(var/item, var/ckey)
	if(!LAZYLEN(GLOB.job_whitelist))
		return 0

	//Config File Whitelist
	for(var/s in GLOB.job_whitelist)
		if(findtext(s,"[ckey] - [item]"))
			return 1
		if(findtext(s,"[ckey] - All"))
			return 1
	return 0

#undef JOBWHITELISTFILE