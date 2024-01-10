/obj/item/projectile/bullet/rcr
	name ="incendiary shell"
	icon_state= "rod"
	damage_type = DAMAGE_BURN
	damage = 95
	armor_penetration = 65 //not 100, because recoilless rifles don't have that high of a velocity
	damage_flags = DAMAGE_FLAG_EDGE | DAMAGE_FLAG_DISPERSED | DAMAGE_FLAG_EXPLODE

/obj/item/projectile/bullet/rcr/on_hit(atom/target, blocked = 0)
	explosion(target, 1, 6, 12)
	return 1

/obj/item/projectile/bullet/rifle/military/sec
	damage = 40 //higher damage
	armor_penetration = 5 //much worse pen - frangible bullets

/obj/item/projectile/bullet/sabot
	name = "sabot"
	icon_state= "rod"
	fire_sound = 'modular_boh/sounds/weapons/gunshot/new_shotgun.ogg'
	damage = 35
	armor_penetration = 80
	damage_flags = DAMAGE_FLAG_EDGE

/obj/item/projectile/bullet/magnetic/skrell_flechette
	name = "flechette"
	icon_state = "flechette"
	damage = 40
	armor_penetration = 100
	fire_sound = 'sound/weapons/rapidslice.ogg'
	distance_falloff = 0.5

/obj/item/projectile/bullet/pistol/large
	fire_sound = 'modular_boh/sounds/weapons/gunshot/revolver_2.ogg'
	damage = 50
	distance_falloff = 1.5
	armor_penetration = 15

/obj/item/projectile/bullet/rifle/military/large
	fire_sound = 'modular_boh/sounds/weapons/gunshot/hornet.ogg'
	damage = 45
	armor_penetration = 30
	distance_falloff = 0.50

/obj/item/projectile/bullet/pistol/strong/rubber
	fire_sound = 'modular_boh/sounds/weapons/gunshot/revolver_1.ogg'
	name = "less than lethal bullet"
	damage_flags = 0
	damage = 10
	agony = 40
	embed = FALSE
