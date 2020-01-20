/////////
// Cabins
/////////

/area/crew_quarters_boh/cabin_main
	name = "\improper Cabin Primary"
	icon_state = "crew_quarters"
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters_boh/cabin_main/c1
	name = "\improper Cabin One"
	icon_state = "Sleep"

/area/crew_quarters_boh/cabin_main/c2
	name = "\improper Cabin Two"
	icon_state = "Sleep"

/area/crew_quarters_boh/cabin_main/c3
	name = "\improper Cabin Three"
	icon_state = "Sleep"

/area/crew_quarters_boh/cabin_main/janitorial
	name = "\improper Cabin Janitorial"
	icon_state = "janitor"

//vip
/area/crew_quarters_boh/cabin_main/vip
	name = "\improper VIP Cabin"
	icon_state = "Sleep"
	req_access = list(access_captain)


/////////
// Viro 2.0
/////////

/area/ward_boh/main
	name = "\improper Ward Hallway"
	icon = 'icons/boh/area.dmi'
	icon_state = "psych"
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = MEDIUM_SOFTFLOOR

/////////
// Sec Triage
/////////

/area/security/triage
	name = "\improper Security Wing"
	icon = 'icons/boh/area.dmi'
	icon_state = "triage"

/////////
// Gunship
/////////

/area/aquila/disperser
	name = "\improper NTSC Byakhee - Cannon"
