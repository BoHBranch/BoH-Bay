/////////
// Gunnery & Access
/////////

/var/const/access_gunnery = "ACCESS_GUNNERY"
/datum/access/gunnery
	id = access_gunnery
	desc = "Gunnery Access"
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
	icon_state = "kosmag1"

/area/command/gunnery/ob/inside
	name = "\improper KOSMAG Interior"
	icon_state = "kosmag2"

/area/command/gunnery/ob/airlock
	name = "\improper KOSMAG Airlock"
	icon_state = "kosmagairlock"

/////////
// MIM Tac Room
/////////

/area/command/gunnery/mim
	name = "\improper Tactical Operations Center"
	icon_state = "guntemp"

/area/command/gunnery/mim/door
	name = "\improper Tactical Operations Center Door"
	icon_state = "guntemp"