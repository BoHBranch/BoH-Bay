
/obj/item/weapon/gun/projectile/pirate
	name = "zip gun"
	desc = "Little more than a barrel, handle, and firing mechanism, cheap makeshift firearms like this one are not uncommon in frontier systems."
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "zipgun"
	item_state = "sawnshotgun"
	handle_casings = CYCLE_CASINGS //player has to take the old casing out manually before reloading
	load_method = SINGLE_CASING
	max_shells = 1 //literally just a barrel
	has_safety = FALSE
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 1, TECH_ESOTERIC = 2)

	var/global/list/ammo_types = list(
		/obj/item/ammo_casing/pistol,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_casing/shotgun/pellet,
		/obj/item/ammo_casing/shotgun/pellet,
		/obj/item/ammo_casing/shotgun/pellet,
		/obj/item/ammo_casing/shotgun/beanbag ,
		/obj/item/ammo_casing/shotgun/stunshell,
		/obj/item/ammo_casing/shotgun/flash,
		/obj/item/ammo_casing/rifle/military,
		/obj/item/ammo_casing/rifle
		)

/obj/item/weapon/gun/projectile/pirate/toggle_safety(var/mob/user)
	to_chat(user, "<span class='warning'>There's no safety on \the [src]!</span>")

/obj/item/weapon/gun/projectile/pirate/Initialize()
	var/obj/item/ammo_casing/ammo = pick(ammo_types)
	caliber = initial(ammo.caliber)
	desc += " Uses [caliber] rounds."
	. = ..()

/obj/item/weapon/gun/projectile/pirate/unloaded
	starts_loaded = FALSE

/obj/item/weapon/gun/projectile/pistol/improvised
	name = "scrapper-9"
	desc = "An improvised pistol capable of utilizing standard magazines. Its makeshift nature sacrifices power for speed; shoddy, but useful in a pinch."
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "scrapper"
	caliber = CALIBER_PISTOL_SMALL
	fire_delay = 5
	damage_mult = 0.9
	has_safety = FALSE
	magazine_type = /obj/item/ammo_magazine/pistol/small
	allowed_magazines = /obj/item/ammo_magazine/pistol/small

/obj/item/weapon/gun/projectile/revolver/improvised_revolver
	name = "daggershot one-fire"
	desc = "A cobbled-together weapon that looks almost like a gun if you squint. Extra powder in the barrel drastically increases the velocity and power of the bullet, but will destroy the barrel on use."
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "daggershot"
	item_state = "daggershot"
	caliber = CALIBER_PISTOL_MAGNUM
	origin_tech = list(TECH_COMBAT = 1)
	max_shells = 1
	fire_delay = 12
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	fire_sound = 'sound/weapons/gunshot/revolver_medium.ogg'
	mag_insert_sound = 'sound/weapons/guns/interaction/rev_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/rev_magout.ogg'
	accuracy = 1
	accuracy_power = 2
	bulk = 4
	force = 15
	throwforce = 18
	damage_mult = 1.5
	has_safety = FALSE
	var/barrelexploded = FALSE //Has it been fired? If so, the gun is now inoperable.

/obj/item/weapon/gun/projectile/revolver/improvised_revolver/load_ammo(var/obj/item/A, mob/user)
	if(barrelexploded)
		to_chat(user, SPAN_WARNING("The barrel has exploded. There is no point in trying to load this anymore."))
		return
	..()

/obj/item/weapon/gun/projectile/revolver/improvised_revolver/special_check()
	..()
	if(!barrelexploded && prob(80))
		barrelexploded = TRUE
		to_chat(usr,SPAN_NOTICE("Something sparks."))
		to_chat(usr, SPAN_WARNING("A loud bang shakes your hand, as the gun tears itself asunder!"))
		playsound(src.loc, 'sound/weapons/gunbarrel_burst.ogg', 100, 1)
		icon_state = "daggershot_fired"
	else
		if(!barrelexploded)
			to_chat(usr,SPAN_ITALIC("You press the trigger. Miraculously, the gun doesn't rip itself apart."))
	..()

/obj/item/weapon/gun/projectile/shotgun/pump/improvised
	name = "cycler scattergun"
	desc = "An improvised shotgun utilizing a crank mechanism to spin a revolving cylinder of shells. Can hold four shots."
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "cycler"
	item_state = "cycler"
	max_shells = 4
	force = 6
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	origin_tech = list(TECH_COMBAT = 1)
	ammo_type = null
	one_hand_penalty = 3
	bulk = 2
	damage_mult = 0.9
	has_safety = FALSE

/obj/item/weapon/gun/projectile/automatic/assault_rifle/improvised
	name = "ruskie semiauto"
	desc = "An improvised assault rifle. Leaves much to be desired, but is decent enough as far as rifles go."
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "ruskie"
	origin_tech = list(TECH_COMBAT = 1)
	slot_flags = SLOT_BACK
	one_hand_penalty = 10
	accuracy_power = 5
	has_safety = FALSE
	bulk = GUN_BULK_RIFLE
	jam_chance = 40

/obj/item/weapon/gun/projectile/automatic/assault_rifle/improvised/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ruskie"
		wielded_item_state = "arifle-wielded"
	else
		icon_state = "ruskie-empty"
		wielded_item_state = "arifle-wielded-empty"

/obj/item/weapon/gun/projectile/pistol/nailgun
	name = "nailgun"
	desc = "A nailgun made into an improvised weapon. Very quick to fire, but nails aren't exactly the most powerful thing in the world."
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "nailgun"
	item_state = "nailgun"
	force = 5
	caliber = CALIBER_NAILS
	fire_delay = 0.5
	magazine_type = /obj/item/ammo_magazine/nailgun
	allowed_magazines = /obj/item/ammo_magazine/nailgun
	mag_insert_sound = 'sound/weapons/guns/interaction/batrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/batrifle_magin.ogg'
	accuracy = 1
	one_hand_penalty = 0
	bulk = 2
	ammo_indicator = TRUE
	has_safety = FALSE
	handle_casings = HOLD_CASINGS