/////////
// Deathsquad
/////////

/obj/item/weapon/card/id/centcom/deathsquad
	name = "Asset Protection ID"
	assignment = "Corporate Commando"

/obj/item/weapon/card/id/centcom/deathsquad/New()
	..()
	access |= get_all_station_access()