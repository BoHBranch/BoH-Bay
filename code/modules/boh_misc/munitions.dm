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

/////////
// recoilless shell
/////////

//casing
/obj/item/ammo_casing/rocket/rcr
	name = "incendiary shell"
	desc = "A high explosive designed to be fired from a launcher. This one is marked with various warnings. As if anyone reads them, pfft. \
	It does mention something about being an incredibly localized explosive, however, and only to be used against non-organic targets. Whatever that means."
	icon = 'icons/boh/ammo.dmi'
	icon_state = "rcrshell"
	matter = list(MATERIAL_STEEL = 50000) //Same as the RCD, retardedly high, for good reason.
	projectile_type = /obj/item/projectile/bullet/rcr

//projectile
/obj/item/projectile/bullet/rcr
	name ="incendiary shell"
	icon_state= "rod"
	damage_type = BURN
	damage = 95
	armor_penetration = 65 //not 100, because recoilless rifles don't have that high of a velocity
	damage_flags = DAM_EDGE | DAM_DISPERSED | DAM_EXPLODE

	on_hit(var/atom/target, var/blocked = 0)
		explosion(target, 1, 6, 12)
		return 1

/////////
// EPP Projectile
/////////
/obj/item/projectile/beam/pulse/epp
	damage = 12
	damage_type = ELECTROCUTE
	agony = 25

/////////
// .454
/////////
//casing
/obj/item/ammo_casing/pistol/magnum/large
	desc = "A high-power bullet casing."
	caliber = CALIBER_PISTOL_MAGNUM_LARGE
	projectile_type = /obj/item/projectile/bullet/pistol/large

//projectile
/obj/item/projectile/bullet/pistol/large
	damage = 65
	armor_penetration = 15
	agony = 25

//mag
/obj/item/ammo_magazine/speedloader/large
	name = "heavy speed loader"
	icon_state = "spdloader_magnum"
	caliber = CALIBER_PISTOL_MAGNUM_LARGE
	ammo_type = /obj/item/ammo_casing/pistol/magnum/large
	matter = list(MATERIAL_STEEL = 40000)
	max_ammo = 6
	multiple_sprites = 1

/////////
// Sec Bullpup
/////////
//casing
/obj/item/ammo_casing/rifle/military/low
	desc = "A frangible bullet casing."
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/bullet/rifle/military/sec

//projectile
/obj/item/projectile/bullet/rifle/military/sec
	damage = 60 //higher damage
	armor_penetration = 5 //much worse pen - frangible bullets
	penetration_modifier = 2 //higher post pen

//mag
/obj/item/ammo_magazine/mil_rifle/sec
	name = "frangible munitions rifle magazine"
	ammo_type = /obj/item/ammo_casing/rifle/military/low

//bigger mag
/obj/item/ammo_magazine/mil_rifle/sec/large
	name = "high-cap frangible munitions rifle magazine"
	icon_state = "assault_rifle"
	ammo_type = /obj/item/ammo_casing/rifle/military/low
	max_ammo = 35

/////////
// SL Shotty
/////////
//casing
/obj/item/ammo_casing/sabot
	name = "sabot shell"
	desc = "APFSDS in a neat little package. It's prone to over penetrating, and as such does little damage to targets without armor." //even though it does little damage overall, being a niche round.
	icon = 'icons/boh/ammo.dmi'
	icon_state = "sabshell"
	spent_icon = "sabshell-spent"
	caliber = CALIBER_SABOT
	projectile_type = /obj/item/projectile/bullet/sabot
	matter = list(MATERIAL_STEEL = 420)

//projectile
/obj/item/projectile/bullet/sabot
	name = "sabot"
	icon_state= "rod"
	fire_sound = 'sound/weapons/gunshot/shotgun.ogg'
	damage = 35
	armor_penetration = 80
	penetration_modifier = 0.1
	penetrating = 1
	damage_flags = DAM_EDGE

//holder
/obj/item/ammo_magazine/shotholder/sabot
	name = "sabot shell holder"
	caliber = CALIBER_SABOT
	ammo_type = /obj/item/ammo_casing/sabot
	matter = list(MATERIAL_STEEL = 1240)
	marking_color = COLOR_GUNMETAL
