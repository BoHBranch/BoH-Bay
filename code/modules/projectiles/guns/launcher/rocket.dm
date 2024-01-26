/obj/item/gun/projectile/rocket
	name = "Lumoco Faithbreaker"
	desc = "Lumoco's Faithbreaker is a aptly named rocket-launcher commonly seen amongst poorer fighters and terrorists due to it's cheap and reusable nature."
	icon_state = "rocket"
	item_state = "rocket"
	icon = 'modular_boh/icons/obj/guns/launchers.dmi'
	w_class = ITEM_SIZE_HUGE
	throw_speed = 2
	throw_range = 10
	caliber = CALIBER_ROCKET
	force = 5.0
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = 0
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	fire_sound = 'modular_boh/sounds/weapons/gunshot/rpg_fire.ogg'
	combustion = 1
	max_shells = 1
	handle_casings = HOLD_CASINGS
	ammo_type = /obj/item/ammo_casing/rocket
	load_sound = 'modular_boh/sounds/weapons/rpg_reload.ogg'
	mag_remove_sound = 'modular_boh/sounds/weapons/rpg_reload.ogg'
