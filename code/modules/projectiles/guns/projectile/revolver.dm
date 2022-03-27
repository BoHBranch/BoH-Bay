/obj/item/weapon/gun/projectile/revolver
	name = "MA Double-Action Revolver"
	desc = "The Martian Armoury's Double Action is a choice revolver for when you absolutely, positively need to put a hole in the other guy for a low-low price!"
	icon = 'icons/obj/guns/revolvers.dmi'
	icon_state = "revolver"
	item_state = "revolver"
	caliber = CALIBER_PISTOL_MAGNUM
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	handle_casings = CYCLE_CASINGS
	max_shells = 6
	fire_delay = 12 //Revolvers are naturally slower-firing
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	var/chamber_offset = 0 //how many empty chambers in the cylinder until you hit a round
	fire_sound = 'sound/weapons/gunshot/revolver_medium.ogg'
	mag_insert_sound = 'sound/weapons/guns/interaction/rev_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/rev_magout.ogg'
	accuracy = 2
	accuracy_power = 8
	one_hand_penalty = 2
	bulk = 3
	var/broke_open = FALSE // Revolvers break open to reveal a cylinder.

/obj/item/weapon/gun/projectile/revolver/attack_self(mob/user)
	broke_open = !broke_open
	playsound(src, mag_remove_sound, 50)
	if(broke_open)
		if(loaded.len)
			unload_ammo(user)
	update_open_icon()

/obj/item/weapon/gun/projectile/revolver/proc/update_open_icon() // Bay has wielding on update_icon, so if you have this as update_icon, bay breaks the open sprites.
	if(broke_open)
		icon_state = "[icon_state]_open"
	else
		icon_state = initial(icon_state)

/obj/item/weapon/gun/projectile/revolver/AltClick()
	if(CanPhysicallyInteract(usr))
		spin_cylinder()

/obj/item/weapon/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin cylinder"
	set desc = "Fun when you're bored out of your skull."
	set category = "Object"

	chamber_offset = 0
	visible_message("<span class='warning'>\The [usr] spins the cylinder of \the [src]!</span>", \
	"<span class='notice'>You hear something metallic spin and click.</span>")
	playsound(src.loc, 'sound/weapons/revolver_spin.ogg', 100, 1)
	loaded = shuffle(loaded)
	if(rand(1,max_shells) > loaded.len)
		chamber_offset = rand(0,max_shells - loaded.len)

/obj/item/weapon/gun/projectile/revolver/consume_next_projectile()
	if(chamber_offset)
		chamber_offset--
		return
	return ..()

/obj/item/weapon/gun/projectile/revolver/load_ammo(var/obj/item/A, mob/user)
	if(!broke_open)
		to_chat(user, SPAN_WARNING("You can't reload a closed revolver!"))
		return
	..()

/obj/item/weapon/gun/projectile/revolver/unload_ammo(mob/user, var/allow_dump=1)
	if(!broke_open)
		to_chat(user, SPAN_WARNING("You can't unload a closed revolver!"))
		return
	..()

/obj/item/weapon/gun/projectile/revolver/special_check(mob/user) // Make sure they don't fire.
	if(broke_open)
		to_chat(user, SPAN_WARNING("You can't fire the revolver in this state, close the revolver!"))
		return FALSE
	return ..()

/obj/item/weapon/gun/projectile/revolver/medium
	name = "MA-Blacklist"
	icon_state = "medium"
	safety_icon = "medium_safety"
	caliber = CALIBER_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	desc = "One of the few quality firearms from Martian Armoury, the Blacklist is a durable and robust firearm commonly associated with Space-Ranchers!"
	accuracy = 1
	bulk = 0
	fire_delay = 9

/obj/item/weapon/gun/projectile/revolver/holdout
	name = "Lumoco Protector"
	desc = "The Lumoco Protector is a simple, through robust revolver made for those ladies and gentlemen who wish to classily expunge someone from the census!"
	icon_state = "holdout"
	item_state = "pen"
	caliber = CALIBER_PISTOL_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/small
	w_class = ITEM_SIZE_SMALL
	accuracy = 1
	one_hand_penalty = 0
	bulk = 0
	fire_delay = 7

/obj/item/weapon/gun/projectile/revolver/capgun
	name = "Nanotrasen Capgun"
	desc = "Looks almost like the real thing! Perfect for getting the kids interested in joining the Military!"
	icon_state = "revolver-toy"
	caliber = CALIBER_CAPS
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/cap

/obj/item/weapon/gun/projectile/revolver/capgun/attackby(obj/item/weapon/wirecutters/W, mob/user)
	if(!istype(W) || icon_state == "revolver")
		return ..()
	to_chat(user, "<span class='notice'>You snip off the toy markings off the [src].</span>")
	name = "revolver"
	icon_state = "revolver"
	desc += " Someone snipped off the barrel's toy mark. Don't show security!"
	return 1
