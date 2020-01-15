/////////
// Gunnery & Access
/////////

/var/const/access_gunnery = "ACCESS_GUNNERY"
/datum/access/gunnery
	id = access_gunnery
	desc = "Gunnery"
	region = ACCESS_REGION_SECURITY

/area/command/gunnery
	name = "\improper Weapon Mounts"
	icon = 'icons/boh/area.dmi'
	icon_state = "guntemp"
	req_access = list(access_gunnery)