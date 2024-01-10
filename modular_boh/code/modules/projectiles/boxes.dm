//bigger mag
/obj/item/ammo_magazine/mil_rifle/sec/large
	name = "high-cap frangible munitions rifle magazine"
	icon_state = "assault_rifle"
	ammo_type = /obj/item/ammo_casing/rifle/military/low
	max_ammo = 30

/obj/item/ammo_magazine/mil_rifle/sec
	name = "frangible munitions rifle magazine"
	ammo_type = /obj/item/ammo_casing/rifle/military/low

//Hornet rifle ammo box
/obj/item/storage/box/ammo/hornetammo
	name = "box of 12mmR rounds"
	startswith = list(/obj/item/ammo_casing/rifle/military/large = 10)

//security's beanbag box
/obj/item/storage/box/ammo/beanbags/full
	name = "heavy box of beanbag shells"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 6)
