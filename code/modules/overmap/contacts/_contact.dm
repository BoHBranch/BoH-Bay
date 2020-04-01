var/list/phonetic_alphabet_prefix = list("ALPHA", "BRAVO", "CHARLIE", "DELTA", "ECHO", "FOXTROT", "GOLF", "HOTEL", "INDIA",
	"JULIETT", "KILO", "LIMA", "MIKE", "NOVEMBER", "OSCAR", "PAPA", "QUEBEC", "ROMEO", "SIERRA", "TANGO",
	"UNIFORM", "VICTOR", "WHISKEY", "XRAY", "YANKEE", "ZULU")
var/list/phonetic_alphabet_suffix = list("ALPHA", "BETA", "GAMMA", "DELTA", "EPSILON", "ZETA", "ETA", "THETA", "IOTA", "KAPPA",
	"LAMBDA", "MU", "NU", "XI", "OMICRON", "PI", "RHO", "SIGMA", "TAU", "UPSILON", "PHI", "CHI", "PSI", "OMEGA")
#define SENSOR_TIME_DELAY 0.2 SECONDS
/datum/overmap_contact

	var/name  = "Unknown"            // Contact name.
	var/temp_designation = "Unknown" // Temporary designation given by the computer to this object.
	var/class = "UNKWN"              // Class of the ship
	var/class_long = "Unknown"       // Human-readable name of the class.
	var/information  = "Unknown"     // Any information we have on the contact.
	var/identified = FALSE           // Have we identified it?
	var/identification_progress      // Progress towards identification, increased by identification_amount of the ship effect.
	var/seen                         // Have we seen this recently?
	var/image/marker                 // Image overlay attached to the contact.
	var/is_overmap_event = FALSE 	 // Pretty much used to skip a bunch of stuff so we can ues the same system for overmap effects.
	var/pinged = FALSE				 // Used to animate overmap effects.

	// The sensor console holding this data.
	var/obj/machinery/computer/ship/sensors/owner

	// The actual overmap effect associated with this.
	var/obj/effect/overmap/visitable/ship/effect

/datum/overmap_contact/proc/handle_being_identified()
	if(!identified)
		hide()
		identified = TRUE
		identification_progress =  effect.identification_difficulty
		marker.icon =              effect.icon
		marker.appearance_flags |= RESET_COLOR
		marker.icon_state =        effect.contact_icon_state || "ship"
		marker.color =             effect.color
		show()

/datum/overmap_contact/New(var/obj/machinery/computer/ship/sensors/creator, var/obj/effect/overmap/source, var/is_event = FALSE)
	is_overmap_event = is_event
	// Update local tracking information.
	owner =  creator
	effect = source
	name =   effect.name
	owner.contact_datums[effect] = src

	if(!is_overmap_event)
		var/obj/effect/overmap/visitable/ship/source_ship = source
		information = source_ship.desc
		temp_designation = "[pick(global.phonetic_alphabet_prefix)]-[pick(global.phonetic_alphabet_suffix)]-[random_id(type, 1, 999)]"
		marker = image(loc = source_ship, icon = 'icons/obj/overmap.dmi', icon_state = "shuttle")

		if(source_ship.transponder_active)
			handle_being_identified()
	else
		var/obj/effect/overmap/event/source_event = source
		marker = image(loc = source_event, icon = 'icons/obj/overmap.dmi', icon_state = source_event.overmap_effect_state)
		marker.color = source_event.color
		marker.filters = filter(type="drop_shadow", color = marker.color + "F0", size = 2, offset = 1,x = 0, y = 0)
		marker.alpha = 0

/datum/overmap_contact/proc/update_marker_icon()
	if(identified)
		marker.icon_state = effect.contact_icon_state

		marker.overlays.Cut()

		if(check_effect_shield())
			var/image/shield_image = image(icon = 'icons/obj/overmap.dmi', icon_state = "shield")
			shield_image.pixel_x = 8
			marker.overlays += shield_image

/datum/overmap_contact/proc/show()
	for(var/weakref/W in owner?.viewers)
		var/mob/M = W.resolve()
		if(istype(M))
			M.client?.images |= marker

/datum/overmap_contact/proc/hide()
	for(var/weakref/W in owner?.viewers)
		var/mob/M = W.resolve()
		if(istype(M))
			M.client?.images -= marker

/datum/overmap_contact/proc/ping()
	if(pinged)
		return
	pinged = TRUE
	show()
	animate(marker, alpha=255, 0.5 SECOND, 1, LINEAR_EASING)
	addtimer(CALLBACK(src, .proc/unping), 1 SECOND)


/datum/overmap_contact/proc/unping()
	animate(marker, alpha=75, 2 SECOND, 1, LINEAR_EASING)

/datum/overmap_contact/proc/check_effect_shield()
	var/shield_active = FALSE
	for(var/obj/machinery/power/shield_generator/S in SSmachines.machinery)
		if(S.z in effect.map_z)
			if(S.running == SHIELD_RUNNING)
				shield_active = TRUE
	return shield_active

/datum/overmap_contact/Destroy()
	if(owner)
		hide()
		if(effect)
			owner.contact_datums[effect] = null
			owner.contact_datums -= null
	owner = null
	effect = null
	. = ..()
