/datum/ship_contact
	var/name  = "Unknown" //contact name
	var/temp_designation = "Unknown"//Temporary designation given by the computer to this object.
	var/obj/effect/overmap/visitable/ship/effect //the actual overmap effect associated with this.
	var/class = "UNKWN"//class of the ship
	var/class_long = "Unknown" //human-name of the class.
	var/information  = "Unknown" //any information we have on the contact
	var/identified = FALSE//Have we identified it
	var/identification_progress //progress towards identification, increased by identification_amount of the ship effect
	var/identification_required //amount of identification required to fully identify the ship
	var/seen //have we seen this recently

/datum/ship_contact/New(var/obj/effect/overmap/visitable/ship/source)
	name = source.name
	effect = source
	information = source.desc
	identification_required = source.identification_difficulty

	temp_designation = GenerateTempDesignation(source)
	GenerateVesselClass(source)

	if(source.transponder_active)
		identified = TRUE
		identification_progress = source.identification_difficulty

/datum/ship_contact/Destroy()
	effect = null


/datum/ship_contact/proc/GenerateTempDesignation(var/obj/effect/overmap/visitable/ship/source)
	var/list/prefixes = list("ALPHA", "BRAVO", "CHARLIE", "DELTA", "ECHO", "FOXTROT", "GOLF", "HOTEL", "INDIA",
		"JULIETT", "KILO", "LIMA", "MIKE", "NOVEMBER", "OSCAR", "PAPA", "QUEBEC", "ROMEO", "SIERRA", "TANGO",
		"UNIFORM", "VICTOR", "WHISKEY", "XRAY", "YANKEE", "ZULU")

	var/list/suffixes = list("ALPHA", "BETA", "GAMMA", "DELTA", "EPSILON", "ZETA", "ETA", "THETA", "IOTA", "KAPPA",
		"LAMBDA", "MU", "NU", "XI", "OMICRON", "PI", "RHO", "SIGMA", "TAU", "UPSILON", "PHI", "CHI", "PSI", "OMEGA")

	var/temp_name = "[pick(prefixes)]-[pick(suffixes)]-[rand(1,999)]"
	return temp_name

/datum/ship_contact/proc/GenerateVesselClass(var/obj/effect/overmap/visitable/ship/source)
	var/ship_mass = source.vessel_mass
	switch(ship_mass)
		if(0 to 10000)
			class = "SHUTTLE" //Corvette
			class_long = "Shuttle"
		if(10001 to 50000)
			class = "DE"
			class_long = "Destroyer Escort"
		if(50001 to 100000)
			class = "DD"
			class_long = "Destroyer"
		if(100001 to 250000)
			class = "CA"
			class_long = "Cruiser"
		if(250001 to INFINITY)
			class = "CAP"
			class_long = "Capital Ship"

