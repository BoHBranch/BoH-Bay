/////////
// Infantry & Access
/////////

/var/const/access_infantry = "ACCESS_INFANTRY"
/datum/access/infantry
	id = access_infantry
	desc = "Infantry"
	region = ACCESS_REGION_SECURITY

/var/const/access_infcom = "ACCESS_INFCOM"
/datum/access/infcom
	id = access_infcom
	desc = "Infantry Command"
	region = ACCESS_REGION_SECURITY

/var/const/access_inftech = "ACCESS_INFTECH"
/datum/access/inftech
	id = access_inftech
	desc = "Infantry Technician"
	region = ACCESS_REGION_SECURITY

/area/security/infantry
	name = "\improper Infantry Prep"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_infantry)

/area/security/infantry/gear
	name = "\improper Technician Prep"
	icon = 'icons/boh/area.dmi'
	icon_state = "triage"
	req_access = list(access_inftech)

/area/security/infantry/com
	name = "\improper Squad Leader Prep"
	icon = 'icons/boh/area.dmi'
	icon_state = "triage"
	req_access = list(access_infcom)

/area/security/infantry/shantak
	name = "\improper SMAC Shantak"
	icon_state = "syndie-elite"
	req_access = list(access_infantry)

/////////
// Flag Officers
/////////
