/obj/item/weapon/gun/projectile/heavysniper
	name = "Hephaestus Diplomat"
	desc = "A portable anti-armour rifle fitted with a scope, the HI 'Diplomat' Rifle was originally designed to be used against armoured exosuits. \
	It's name nearly caused a lawsuit with Martian-Armouries until their Board of Directors began to suffer unfortunate .50 caliber headaches!"
	icon = 'icons/obj/guns/heavysniper.dmi'
	icon_state = "heavysniper"
	item_state = "heavysniper" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	caliber = CALIBER_ANTIMATERIAL
	screen_shake = 0 //screenshake breaks the scope.
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 1
	ammo_type = /obj/item/ammo_casing/shell
	one_hand_penalty = 6
	accuracy = -2
	bulk = 8
	scoped_accuracy = 8 //increased accuracy over the LWAP because only one shot
	scope_zoom = 2
	var/bolt_open = 0
	wielded_item_state = "heavysniper-wielded" //sort of placeholder
	load_sound = 'sound/weapons/guns/interaction/rifle_load.ogg'
	fire_delay = 12

/obj/item/weapon/gun/projectile/heavysniper/on_update_icon()
	..()
	if(bolt_open)
		icon_state = "[initial(icon_state)]-open"
	else
		icon_state = "[initial(icon_state)]"

/obj/item/weapon/gun/projectile/heavysniper/handle_post_fire(mob/user, atom/target, var/pointblank=0, var/reflex=0)
	..()
	if(user && user.skill_check(SKILL_WEAPONS, SKILL_PROF))
		to_chat(user, "<span class='notice'>You work the bolt open with a reflexive motion, ejecting [chambered]!</span>")
		unload_shell()

/obj/item/weapon/gun/projectile/heavysniper/proc/unload_shell()
	if(chambered)
		if(!bolt_open)
			playsound(src.loc, 'sound/weapons/guns/interaction/rifle_boltback.ogg', 50, 1)
			bolt_open = 1
		chambered.dropInto(src.loc)
		loaded -= chambered
		chambered = null

/obj/item/weapon/gun/projectile/heavysniper/attack_self(mob/user as mob)
	bolt_open = !bolt_open
	if(bolt_open)
		if(chambered)
			to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
			unload_shell()
		else
			to_chat(user, "<span class='notice'>You work the bolt open.</span>")
	else
		to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
		playsound(src.loc, 'sound/weapons/guns/interaction/rifle_boltforward.ogg', 50, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/heavysniper/special_check(mob/user)
	if(bolt_open)
		to_chat(user, "<span class='warning'>You can't fire [src] while the bolt is open!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/heavysniper/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/heavysniper/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()


/obj/item/weapon/gun/projectile/heavysniper/boltaction
	name = "Ancient-Pattern Russ"
	desc = "An ancient weapon. The Russ is well respected by colonists and farmers in the outer-colonies for it's reliable action and cheap ammo!"
	icon = 'icons/obj/guns/boltaction.dmi'
	icon_state = "boltaction"
	item_state = "boltaction"
	w_class = ITEM_SIZE_LARGE
	origin_tech = list(TECH_COMBAT = 2)
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/rifle
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	accuracy = 4
	scope_zoom = 0
	scoped_accuracy = 0
	wielded_item_state = "boltaction-wielded"

/obj/item/weapon/gun/projectile/hornetsniper
	name = "Nanotrasen Z9R Houndmaster"
	desc = "The Z9R Houndmaster, is Nanotrasens custom-built weapon for SDF special-forces. Features a onboard targeting suite, upscaled 12mm round and modern materials!"
	icon = 'icons/obj/guns/hornet.dmi'
	icon_state = "hornet"
	item_state = "hornet"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	caliber = CALIBER_RIFLE_MILITARY_LARGE
	screen_shake = 0
	handle_casings = EJECT_CASINGS
	load_method = SINGLE_CASING
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/rifle/military/large
	one_hand_penalty = 6
	accuracy = -4
	bulk = 8
	scoped_accuracy = 9
	scope_zoom = 2
	wielded_item_state = "z8carbine-wielded"
	load_sound = 'sound/weapons/guns/interaction/shotgun_instert.ogg'
	fire_delay = 30

/obj/item/weapon/gun/projectile/hornetsniper/civ
	name = "nanotrasen Z9RC Kentucky"
	desc = "The Z9R Houndmaster, is Nanotrasens custom-built weapon for SDF special-forces. Features a onboard targeting suite, upscaled 12mm round and modern materials! \
	this particular model is made for the civilian market. Meaning it can only be chambered with a single round and cycled manually."
	handle_casings = HOLD_CASINGS
	max_shells = 1