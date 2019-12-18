/////////
// birdshot
/////////

//casing
/obj/item/ammo_casing/shotgun/birdshot
	name = "rubbershot shell"
	desc = "A rubbershot shell."
	icon = 'icons/boh/ammo.dmi'
	icon_state = "bdshell"
	spent_icon = "bdshell-spent"
	projectile_type = /obj/item/projectile/bullet/pellet/birdshot
	matter = list(MATERIAL_STEEL = 80)

//projectile
/obj/item/projectile/bullet/pellet/birdshot
	name = "rubbershot"
	fire_sound = 'sound/weapons/gunshot/gunshot_4mm.ogg'
	damage = 1
	pellets = 24
	range_step = 1
	spread_step = 10
	agony = 4

//holder
/obj/item/ammo_magazine/shotholder/birdshot
	name = "rubbershot shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/birdshot
	matter = list(MATERIAL_STEEL = 620)
	marking_color = COLOR_PALE_YELLOW