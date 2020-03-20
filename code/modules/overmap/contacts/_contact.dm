var/list/phonetic_alphabet_prefix = list("ALPHA", "BRAVO", "CHARLIE", "DELTA", "ECHO", "FOXTROT", "GOLF", "HOTEL", "INDIA",
	"JULIETT", "KILO", "LIMA", "MIKE", "NOVEMBER", "OSCAR", "PAPA", "QUEBEC", "ROMEO", "SIERRA", "TANGO",
	"UNIFORM", "VICTOR", "WHISKEY", "XRAY", "YANKEE", "ZULU")
var/list/phonetic_alphabet_suffix = list("ALPHA", "BETA", "GAMMA", "DELTA", "EPSILON", "ZETA", "ETA", "THETA", "IOTA", "KAPPA",
	"LAMBDA", "MU", "NU", "XI", "OMICRON", "PI", "RHO", "SIGMA", "TAU", "UPSILON", "PHI", "CHI", "PSI", "OMEGA")

/datum/ship_contact

	var/name  = "Unknown"            // Contact name.
	var/temp_designation = "Unknown" // Temporary designation given by the computer to this object.
	var/class = "UNKWN"              // Class of the ship
	var/class_long = "Unknown"       // Human-readable name of the class.
	var/information  = "Unknown"     // Any information we have on the contact.
	var/identified = FALSE           // Have we identified it?
	var/identification_progress      // Progress towards identification, increased by identification_amount of the ship effect.
	var/seen                         // Have we seen this recently?
	var/image/marker                 // Image overlay attached to the contact.

	// The sensor console holding this data.
	var/obj/machinery/computer/ship/sensors/owner

	// The actual overmap effect associated with this.
	var/obj/effect/overmap/visitable/ship/effect 

/datum/ship_contact/proc/handle_being_identified()
	if(!identified)
		hide()
		identified = TRUE
		identification_progress =  effect.identification_difficulty
		marker.icon =              effect.icon
		marker.appearance_flags |= RESET_COLOR
		marker.icon_state =        effect.contact_icon_state || "ship"
		marker.color =             effect.color
		//marker.maptext  =        name
		show()

/datum/ship_contact/New(var/obj/machinery/computer/ship/sensors/creator, var/obj/effect/overmap/visitable/ship/source)

	// Update local tracking information.
	owner =  creator
	effect = source
	name =   effect.name
	owner.contact_datums[effect] = src

	information = source.desc
	temp_designation = "[pick(global.phonetic_alphabet_prefix)]-[pick(global.phonetic_alphabet_suffix)]-[random_id(type, 1, 999)]"
	marker = image(loc = source, icon = 'icons/obj/overmap.dmi', icon_state = "shuttle")

	/*marker.maptext = new_name
	marker.maptext_width = 128
	marker.maptext_y = 25
	marker.maptext_x = -15*/

	if(source.transponder_active)
		handle_being_identified()

/datum/ship_contact/proc/show()
	for(var/weakref/W in owner?.viewers)
		var/mob/M = W.resolve()
		if(istype(M))
			M.client?.images |= marker

/datum/ship_contact/proc/hide()
	for(var/weakref/W in owner?.viewers)
		var/mob/M = W.resolve()
		if(istype(M))
			M.client?.images -= marker

/datum/ship_contact/Destroy()
	if(owner)
		hide()
		if(effect)
			owner.contact_datums -= effect
	owner = null
	effect = null
	. = ..()
