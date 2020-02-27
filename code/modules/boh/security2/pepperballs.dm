/////////
// pistol pepperball gang
/////////

//casing
/obj/item/ammo_casing/pistol/rubber/pepperball
	name = "pepperball casing"
	projectile_type = /obj/item/projectile/bullet/pistol/pepperball

//magazine
/obj/item/ammo_magazine/pistol/double/pepperball
	name = "pepperball magazine"
	ammo_type = /obj/item/ammo_casing/pistol/rubber/pepperball

//box
/obj/item/weapon/storage/box/ammo/pepperball
	name = "pepperball magazines"
	startswith = list(/obj/item/ammo_magazine/pistol/double/pepperball = 2)

/obj/item/weapon/storage/box/ammo/pepperball/full
	name = "heavy box of pepperball magazines"
	startswith = list(/obj/item/ammo_magazine/pistol/double/pepperball = 7)
