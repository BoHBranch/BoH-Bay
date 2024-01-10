/////////
// BoH Areas
/////////

/area/crew_quarters_boh/cabin_main
	name = "\improper Cabin Primary"
	icon_state = "crew_quarters"
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters_boh/cabin_main/c1
	name = "\improper Cabin One"
	icon_state = "Sleep"

//Psionic Advisor
/area/crew_quarters/heads/office/psiadvisor
	name = "\improper Psionic Advisor"
	icon_state = "heads"
	req_access = list(access_psiadvisor)

//Infantry

/area/infantry
	name = "\improper Infantry Lounge"
	icon_state = "green"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_infantry)

/area/infantry/infcom
	name = "\improper Squad Leader's Cabin"
	req_access = list(access_infcom)

/area/infantry/inftech
	name = "\improper Infantry Technician's Cabin"
	req_access = list(access_inftech)

//Operations storage

/area/operations_storage
	name = "\improper Operations Storage Hallway"
	icon_state = "yellow"
	sound_env = SMALL_ENCLOSED

/area/operations_storage/medical
	name = "\improper Medical Operations Storage"
	icon_state = "green"
	req_access = list(access_medical)

/area/operations_storage/security
	name = "\improper Security Operations Storage"
	icon_state = "red"
	req_access = list(access_security)

/area/operations_storage/science
	name = "\improper Research Operations Storage"
	icon_state = "purple"
	req_access = list(access_research)

/area/operations_storage/engineering
	name = "\improper Engineering Operations Storage"
	icon_state = "orange"
	req_access = list(access_engine)

/area/operations_storage/robotics
	name = "\improper Robotics Operations Storage"
	icon_state = "pink"
	req_access = list(access_robotics)

//Pool
/area/pool
	name = "\improper Pool"
	icon_state = "fitness"

//SMC attache
/area/command/msea
	name = "\improper Solarian Marine Corps Attache Office"
	icon_state = "heads_sea"
	req_access = list(access_senadv)

// AI
/area/turret_protected/ai_foyer
	name = "\improper AI Chamber Foyer"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai_outer_chamber
	name = "\improper Outer AI Chamber"
	icon_state = "checkpoint"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai_data_chamber
	name = "\improper AI Data Chamber"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai
	name = "\improper AI Chamber"
	icon_state = "ai_chamber"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload
	name = "\improper AI Upload Chamber"
	icon_state = "ai_upload"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload_foyer
	name = "\improper  AI Upload Access"
	icon_state = "ai_foyer"
	ambience = list('sound/ambience/ambimalf.ogg')
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)
//

/area/security/solitary
	name = "\improper Security - Solitary Holding"
	icon_state = "security"
	req_access = list(access_brig)

/area/command/bridge_quarters
	name = "\improper Bridge - Officer Quarters"
	icon_state = "crew_quarters"
	req_access = list(access_bridge)

/area/hallway/primary/thirddeck/ofd
	name = "\improper Third Deck OFD Hallway"
	icon_state = "apmaint"

//Anti Boarding
/area/security/antiboarding
	name = "\improper Security - Anti-Boarding Control Room"
	icon_state = "security"
	req_access = list(access_brig)
//