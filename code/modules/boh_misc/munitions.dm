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
	pellets = 4
	range_step = 1
	spread_step = 10
	agony = 4

//holder
/obj/item/ammo_magazine/shotholder/birdshot
	name = "rubbershot shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/birdshot
	matter = list(MATERIAL_STEEL = 620)
	marking_color = COLOR_PALE_YELLOW

/////////
// Magnum 'less-lethal'
/////////

//casing
/obj/item/ammo_casing/pistol/magnum/rubber
	desc = "A high-power pistol rubber bullet casing."
	caliber = CALIBER_PISTOL_MAGNUM
	projectile_type = /obj/item/projectile/bullet/pistol/strong/rubber

//projectile
/obj/item/projectile/bullet/pistol/strong/rubber
	damage = 10
	armor_penetration = 5
	agony = 45

//mag
/obj/item/ammo_magazine/magnum/rubber
	name = "less-lethal magazine"
	ammo_type = /obj/item/ammo_casing/pistol/magnum/rubber

/////////
// Skrell Gas Charge
/////////
/obj/item/projectile/hotgas/skrell
	name = "gas"
	icon = 'icons/effects/effects.dmi'
	icon_state = "mustard"
	fire_sound = 'sound/effects/stealthoff.ogg'
	silenced = FALSE