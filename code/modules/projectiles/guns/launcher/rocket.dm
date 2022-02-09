// Rocket Launchers make more sense here, but are projectile code. //


/obj/item/weapon/gun/projectile/rocket
	name = "Lumoco Faithbreaker"
	desc = "Lumoco's Faithbreaker is a aptly named rocket-launcher commonly seen amongst poorer fighters and terrorists due to it's cheap and reusable nature."
	icon_state = "rocket"
	item_state = "rocket"
	icon = 'icons/obj/guns/launchers.dmi'
	w_class = ITEM_SIZE_HUGE
	throw_speed = 2
	throw_range = 10
	caliber = CALIBER_ROCKET
	force = 5.0
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = 0
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	fire_sound = 'sound/weapons/gunshot/rpg_fire.ogg'
	combustion = 1
	max_shells = 1
	handle_casings = HOLD_CASINGS
	ammo_type = /obj/item/ammo_casing/rocket
	var/windup = 5 // Rockets take half a second to prep to fire, set to zero to invalidate cmompletly.
	load_sound = 'sound/weapons/guns/interaction/rpg_reload.ogg'

/obj/item/weapon/gun/projectile/rocket/handle_post_fire(mob/user, atom/target)
	..()
	log_and_message_admins("fired a rocket from a rocket launcher ([src.name]) at [target].")

/obj/item/weapon/gun/projectile/rocket/afterattack(atom/A, mob/living/user, adjacent, params) // RPGs snowflake this due to windup, okay? Else ancient baycode gets angry and starts erroring.
	if(adjacent) return //A is adjacent, is the user, or is on the user's person

	if(!user.aiming)
		user.aiming = new(user)

	if(windup > 0)
		if(do_after(user, windup)) // Do the windup.
			Fire(A,user,params) //Otherwise, fire normally.
	else
		Fire(A,user,params) //Otherwise, fire normally.
