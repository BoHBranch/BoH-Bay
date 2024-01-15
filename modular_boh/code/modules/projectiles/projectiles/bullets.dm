/obj/item/projectile/bullet/rcr
	name ="incendiary shell"
	icon_state= "rod"
	damage_type = DAMAGE_BURN
	damage = 165 //This is probably overtuned. Too bad!
	armor_penetration = 65 //not 100, because recoilless rifles don't have that high of a velocity
	damage_flags = DAMAGE_FLAG_EDGE | DAMAGE_FLAG_DISPERSED | DAMAGE_FLAG_EXPLODE

/obj/item/projectile/bullet/rcr/on_hit(atom/target, blocked = 0)
	explosion(target, 0, 1, 6, 12)
	return 1

/obj/item/ammo_casing/oneuse_rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	projectile_type = /obj/item/projectile/missile
	caliber = CALIBER_ROCKET

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

/obj/item/projectile/missile
	icon_state = "missile"
	throwforce = 15

/obj/item/projectile/missile/on_impact(atom/target, blocked = 0)
	explosion(target, 0, 2, 2, 4)

/obj/item/projectile/missile/on_hit(atom/target, blocked, def_zone) // Oh no, someone got hit by the RPG.
	. = ..()
	if(isliving(target))
		var/mob/living/L = target
		to_chat(target, SPAN_WARNING("OH SHI-")) // You've been hit by an RPG!
		L.gib() // You're dead kiddo.
