/datum/psi_complexus/proc/check_latency_trigger(var/trigger_strength = 0, var/source)

	if(!LAZYLEN(latencies))
		return FALSE

	if(!prob(trigger_strength))
		return FALSE

	var/faculty = pick(latencies)
	var/new_rank = rand(2,5)
	owner.set_psi_rank(faculty, new_rank)
	var/decl/psionic_faculty/faculty_decl = SSpsi.get_faculty(faculty)
	to_chat(owner, SPAN_DANGER("You scream internally as your [faculty_decl.name] faculty is forced into operancy by [source]!"))
	return TRUE
