#define TESTING
#ifdef TESTING
/client/verb/show_qdeleted()
	set category = "Debug"
	set name = "Show qdel() Log"
	set desc = "Render the qdel() log and display it"

	var/dat = "<B>List of things that have been qdel()eted this round</B><BR><BR>"

	var/tmplist = list()
	for(var/elem in SSgarbage.qdel_list)
		if(!(elem in tmplist))
			tmplist[elem] = 0
		tmplist[elem]++

	for(var/path in tmplist)
		dat += "[path] - [tmplist[path]] times<BR>"

	usr << browse(dat, "window=qdeletedlog")

/datum/verb/find_refs()
	set category = "Debug"
	set name = "Find References"
	set src in world

	find_references(FALSE)

/datum/proc/find_references(skip_alert)
	running_find_references = type
	if(usr && usr.client)
		if(usr.client.running_find_references)
			testing("CANCELLED search for references to a [usr.client.running_find_references].")
			usr.client.running_find_references = null
			running_find_references = null
			//restart the garbage collector
			SSgarbage.can_fire = 1
			SSgarbage.next_fire = world.time + world.tick_lag
			return

		if(!skip_alert)
			if(alert("Running this will lock everything up for about 5 minutes.  Would you like to begin the search?", "Find References", "Yes", "No") == "No")
				running_find_references = null
				return

	//this keeps the garbage collector from failing to collect objects being searched for in here
	SSgarbage.can_fire = 0

	if(usr && usr.client)
		usr.client.running_find_references = type

	testing("Beginning search for references to a [type].")
	last_find_references = world.time

	DoSearchVar(GLOB) //globals
	for(var/datum/thing in world) //atoms (don't believe its lies)
		DoSearchVar(thing, "World -> [thing]")

	for (var/datum/thing) //datums
		DoSearchVar(thing, "World -> [thing]")

	for (var/client/thing) //clients
		DoSearchVar(thing, "World -> [thing]")

	testing("Completed search for references to a [type].")
	if(usr && usr.client)
		usr.client.running_find_references = null
	running_find_references = null

	//restart the garbage collector
	SSgarbage.can_fire = 1
	SSgarbage.next_fire = world.time + world.tick_lag

/datum/verb/qdel_then_find_references()
	set category = "Debug"
	set name = "qdel() then Find References"
	set src in world

	qdel(src, TRUE)		//Force.
	if(!running_find_references)
		find_references(TRUE)

/datum/verb/qdel_then_if_fail_find_references()
	set category = "Debug"
	set name = "qdel() then Find References if GC failure"
	set src in world

	qdel_and_find_ref_if_fail(src, TRUE)

//Byond type ids
#define TYPEID_NULL "0"
#define TYPEID_NORMAL_LIST "f"
//helper macros
#define GET_TYPEID(ref) ( ( (length(ref) <= 10) ? "TYPEID_NULL" : copytext(ref, 4, length(ref)-6) ) )
#define IS_NORMAL_LIST(L) (GET_TYPEID("\ref[L]") == TYPEID_NORMAL_LIST)

/datum/proc/DoSearchVar(X, Xname, recursive_limit = 64)
	if(usr && usr.client && !usr.client.running_find_references)
		return
	if (!recursive_limit)
		return

	if(istype(X, /datum))
		var/datum/D = X
		if(D.last_find_references == last_find_references)
			return

		D.last_find_references = last_find_references
		var/list/L = D.vars

		for(var/varname in L)
			if (varname == "vars")
				continue
			var/variable = L[varname]

			if(variable == src)
				testing("Found [src.type] \ref[src] in [D.type]'s [varname] var. [Xname]")

			else if(islist(variable))
				DoSearchVar(variable, "[Xname] -> list", recursive_limit-1)

	else if(islist(X))
		var/normal = IS_NORMAL_LIST(X)
		for(var/I in X)
			if (I == src)
				testing("Found [src.type] \ref[src] in list [Xname].")

			else if (I && !isnum(I) && normal && X[I] == src)
				testing("Found [src.type] \ref[src] in list [Xname]\[[I]\]")

			else if (islist(I))
				DoSearchVar(I, "[Xname] -> list", recursive_limit-1)

#ifndef FIND_REF_NO_CHECK_TICK
	CHECK_TICK
#endif

#endif
