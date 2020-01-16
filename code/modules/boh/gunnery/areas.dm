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

/area/command/gunnery/ammo
	name = "\improper Ammunition Dump"

/area/command/gunnery/ob
	name = "\improper KOSMAG Exterior"
	icon = 'icons/boh/area.dmi'
	icon_state = "kosmag1"

/area/command/gunnery/ob/inside
	name = "\improper KOSMAG Interior"
	icon = 'icons/boh/area.dmi'
	icon_state = "kosmag2"

/area/command/gunnery/ob/airlock
	name = "\improper KOSMAG Airlock"
	icon = 'icons/boh/area.dmi'
	icon_state = "kosmagairlock"