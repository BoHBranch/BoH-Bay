/obj/effect/irradiate
	var/radiation_power = 20//20 Bq. Dangerous but survivable for 10-15 minutes if crew is too lazy to read away map description
	var/datum/radiation_source/S
	var/req_range = 100//to cover whole level

/obj/effect/irradiate/Initialize()
	. = ..()
	S = new()
	S.flat = TRUE
	S.range = req_range
	S.respect_maint = FALSE
	S.decay = FALSE
	S.source_turf = get_turf(src)
	S.update_rad_power(radiation_power)
	SSradiation.add_source(S)

/obj/effect/irradiate/Destroy()
	. = ..()
	QDEL_NULL(S)