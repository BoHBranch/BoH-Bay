/var/const/access_voxship = "ACCESS_VOXSHIP" //998
/datum/access/voxship
	id = access_voxship
	desc = "Shoal crewmate"
	region = ACCESS_REGION_NONE

/var/const/access_voxship_captain = "ACCESS_VOXSHIP_CAPTAIN" //999
/datum/access/voxship_captain
	id = access_voxship_captain
	desc = "Quill captain"
	region = ACCESS_REGION_NONE

/obj/item/weapon/card/id/voxship
	access = list(access_voxship)

/obj/item/weapon/card/id/voxship_captain
	access = list(access_voxship, access_voxship_captain)
