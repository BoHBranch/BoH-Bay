/obj/item/weapon/gun/projectile/automatic
	name = "prototype SMG"
	desc = "A protoype lightweight, fast firing submachine gun."
	icon = 'icons/obj/guns/prototype_smg.dmi'
	icon_state = "prototype"
	item_state = "saber"
	w_class = ITEM_SIZE_NORMAL
	bulk = -1
	load_method = MAGAZINE
	caliber = CALIBER_PISTOL_FLECHETTE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 3)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/flechette
	magazine_type = /obj/item/ammo_magazine/proto_smg
	allowed_magazines = /obj/item/ammo_magazine/proto_smg
	multi_aim = 1
	burst_delay = 2
	mag_insert_sound = 'sound/weapons/guns/interaction/smg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/smg_magout.ogg'

	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semi auto", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="4-round bursts", burst=4, fire_delay=null, move_delay=4, one_hand_penalty=1, burst_accuracy=list(0,0,-1,-1), dispersion=list(0.0, 0.0, 0.5, 0.6)),
		list(mode_name="long bursts", burst=8, fire_delay=null, move_delay=4, one_hand_penalty=2, burst_accuracy=list(0,0,-1,-1,-1,-1,-2,-2), dispersion=list(0.0, 0.0, 0.5, 0.6, 0.8, 1.0, 1.0, 1.2)),
		)

// full auto versoin, as an example.

/obj/item/weapon/gun/projectile/automatic/fullauto
	name = "prototype SMG"
	desc = "A protoype lightweight, fast firing submachine gun. With a fun switch."

	//FULL AUTO GUNS NEED THEIR OTHER MODES TO BE DEFINED WITH A FALSE, ELSE THEY'LL STILL BE AUTOMATIC WHEN FIREMODES ARE SWITCHED!
	//SET THE BURST DELAY TO ZERO AS WELL! AUTOMATIC STILL RESPECTS BURST DELAY!
	// move delay above 2 roots you in place. 0 is no move speed slowodwn.
	firemodes = list(
		list(mode_name="semi auto", automatic = FALSE, fire_delay= 3, burst=1, burst_delay = 2, move_delay=0, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="4-round bursts", automatic = FALSE, fire_delay= 2, burst_delay = 2, burst=4, move_delay =2, one_hand_penalty=1, burst_accuracy=list(0,0,-1,-1), dispersion=list(0.0, 0.0, 0.5, 0.6)),
		list(mode_name="automatic",  automatic = TRUE, fire_delay = 1, burst = 1, burst_delay = 0, move_delay=2, one_hand_penalty=2, burst_accuracy=list(0,0,-1,-1,-1,-1,-2,-2), dispersion=list(0.0, 0.0, 0.5, 0.6, 0.8, 1.0, 1.0, 1.2)),
		)


/obj/item/weapon/gun/projectile/automatic/machine_pistol
	name = "Hephaestus Vesper"
	desc = "The Hephaestus Industries MP6 Vesper, A fairly common machine pistol. It is respected for it's ability to repaired with little more than a hammer, screwdriver and a hard table!"
	icon = 'icons/obj/guns/machine_pistol.dmi'
	icon_state = "mpistolen"
	safety_icon = "safety"
	item_state = "mpistolen"
	caliber = CALIBER_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ESOTERIC = 3)
	ammo_type = /obj/item/ammo_casing/pistol
	magazine_type = /obj/item/ammo_magazine/machine_pistol
	allowed_magazines = /obj/item/ammo_magazine/machine_pistol //more damage compared to the wt550, smaller mag size
	one_hand_penalty = 2

	// Uzi moves as fast on the auto as the semi.
	firemodes = list(
		list(mode_name="semi auto", automatic = FALSE, fire_delay= 3, burst=1, burst_delay = 2, move_delay= 0, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", automatic = FALSE, fire_delay= 2.5, burst_delay = 1.5, burst=3, one_hand_penalty=1, burst_accuracy=list(0,0,-1,-1), dispersion=list(0.0, 0.6, 0.7)),
		list(mode_name="automatic",  automatic = TRUE, fire_delay = 1, burst = 1, burst_delay = 0, one_hand_penalty=2, burst_accuracy=list(0,0,-1,-1,-1,-1,-2,-2), dispersion=list(0.0, 0.0, 0.5, 0.6, 0.8, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/machine_pistol/on_update_icon()
	..()
	icon_state = "mpistolen"
	if(ammo_magazine)
		overlays += image(icon, "mag")

	if(!ammo_magazine || !LAZYLEN(ammo_magazine.stored_ammo))
		icon_state = "mpistolen-empty"
		overlays += image(icon, "ammo_bad")
	else if(LAZYLEN(ammo_magazine.stored_ammo) <= 0.5 * ammo_magazine.max_ammo)
		overlays += image(icon, "ammo_warn")
		return
	else
		overlays += image(icon, "ammo_ok")

/obj/item/weapon/gun/projectile/automatic/merc_smg
	name = "MA-C20v"
	desc = "A licenced copy of Nanotrasens C20r. The C20v is made with cheaper materials and fires the anemic 7mm cartridge."
	icon = 'icons/obj/guns/merc_smg.dmi'
	icon_state = "c20r"
	item_state = "c20r"
	safety_icon = "safety"
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = CALIBER_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	magazine_type = /obj/item/ammo_magazine/smg
	allowed_magazines = /obj/item/ammo_magazine/smg
	fire_sound = 'sound/weapons/gunshot/gunshot_smg.ogg'
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	bulk = -1
	accuracy = 1
	one_hand_penalty = 4

	//SMG
	firemodes = list(
		list(mode_name="semi auto", automatic = FALSE, fire_delay= 2, burst=1, burst_delay = 2, move_delay=0, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", automatic = FALSE, fire_delay= 2, burst_delay = 2, burst=3, move_delay=1, one_hand_penalty=1, burst_accuracy=list(0,0,-1,-1), dispersion=list(0.0, 0.5, 0.6)),
		list(mode_name="automatic",  automatic = TRUE, fire_delay = 1.5, burst = 1, burst_delay = 0, move_delay=1, one_hand_penalty=2, burst_accuracy=list(0,0,-1,-1,-1,-1,-2,-2), dispersion=list(0.0, 0.0, 0.5, 0.6, 0.8, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/merc_smg/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c20r-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "c20r"

/obj/item/weapon/gun/projectile/automatic/merc_smg/hacked
	name = "Nanotrasen C-20b"
	desc = "The NanoTrasen C-20b is a lightweight and rapid firing SMG. Due to being an older model,it does not possess the capability of being fired in full auto \
	instead only firing in semi-automatic and three-round bursts. Additionally, it does not feature the auto-eject function of the more modern version. \
	It appears that this particular weapon has a hacked firing authorization pin."
	auto_eject = 0

/obj/item/weapon/gun/projectile/automatic/assault_rifle
	name = "STS-35"
	desc = "The rugged STS-35 is a durable automatic weapon known for it's cheap yet reliable nature. It's the standard weapon of the Territorials!"
	icon = 'icons/obj/guns/assault_rifle.dmi'
	icon_state = "arifle"
	item_state = null
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ESOTERIC = 5)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/rifle
	allowed_magazines = /obj/item/ammo_magazine/rifle
	one_hand_penalty = 8
	accuracy_power = 7
	accuracy = 1
	bulk = GUN_BULK_RIFLE + 1
	wielded_item_state = "arifle-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'

	// Assault rifle, automatic fire fires 4 shots a second, burst fire is slightly faster in coming out, but overall automatic should feel faster.
	// Semi auto is a bit more accurate here. It treats all accuracy checks as if they're a tile closer overall.

	firemodes = list(
		list(mode_name="semi auto", automatic = FALSE, fire_delay= 4, burst=1, burst_delay = 2, move_delay=0, one_hand_penalty=8, accuracy = 2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", automatic = FALSE, fire_delay= 4, burst_delay = 2, burst=4 , one_hand_penalty=9, move_delay=2, accuracy = 1, burst_accuracy=list(0,-1,-1,-2,-2), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="automatic",  automatic = TRUE, fire_delay = 2.5, burst = 1, burst_delay = 0, one_hand_penalty=11, accuracy = 1, burst_accuracy=list(0,0,-1,-1,-1,-1,-2,-2), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/assault_rifle/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "arifle"
		wielded_item_state = "arifle-wielded"
	else
		icon_state = "arifle-empty"
		wielded_item_state = "arifle-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/sec_smg
	name = "MA-Sword"
	desc = "The Martian Armory Sword is a modernized version of the older WT-550 line of submachine guns produced by NanoTrasen. This incorporates proper automatic fire, alongside better handling. \
	However, unlike its cousin, the Pariah, it does not possess nearly the same rate of fire."
	icon = 'icons/obj/guns/sec_smg.dmi'
	icon_state = "smg"
	item_state = "wt550"
	safety_icon = "safety"
	w_class = ITEM_SIZE_NORMAL
	caliber = CALIBER_PISTOL_SMALL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/pistol/small
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/smg_top/rubber
	allowed_magazines = /obj/item/ammo_magazine/smg_top
	accuracy_power = 7
	one_hand_penalty = 3

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		list(mode_name="semi auto",  automatic = FALSE, burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts",  automatic = FALSE, burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=4, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="automatic",  automatic = TRUE, burst=1, fire_delay = 4, move_delay=4,    one_hand_penalty=5, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/sec_smg/on_update_icon()
	..()
	if(ammo_magazine)
		overlays += image(icon, "mag-[round(ammo_magazine.stored_ammo.len,5)]")
	if(ammo_magazine && LAZYLEN(ammo_magazine.stored_ammo))
		overlays += image(icon, "ammo-ok")
	else
		overlays += image(icon, "ammo-bad")

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle
	name = "Hephaestus Z9 Bulldog"
	desc = "The Hephaestus Industries Z9 Bulldog is the standard weapon of the Solarian Marines. It's durable yet ergonomic design has proved itself across hundreds of battlefields!"
	icon = 'icons/obj/guns/bullpup_rifle.dmi'
	icon_state = "carbine"
	item_state = "z8carbine"
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE_MILITARY
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/rifle/military
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mil_rifle
	allowed_magazines = /obj/item/ammo_magazine/mil_rifle
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	accuracy = 2
	accuracy_power = 7
	one_hand_penalty = 8
	bulk = GUN_BULK_RIFLE
	burst_delay = 4
	wielded_item_state = "z8carbine-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/batrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/batrifle_magout.ogg'
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, one_hand_penalty=9, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/launcher/grenade/underslung/launcher

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/Initialize()
	. = ..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/on_update_icon()
	..()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "carbine-loaded"
		else
			icon_state = "carbine-empty"
	else
		icon_state = "carbine"

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/examine(mob/user)
	. = ..()
	if(launcher.chambered)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

/obj/item/weapon/gun/projectile/automatic/l6_saw
	name = "Lumoco L6 SAW"
	desc = "The L6 SAW design produced by Lumoco. This ancient design has remained relevant throughout the rigors of time!" //Refluffed it!
	icon = 'icons/obj/guns/saw.dmi'
	icon_state = "l6closed50"
	item_state = "l6closedmag"
	w_class = ITEM_SIZE_HUGE
	bulk = 10
	force = 10
	slot_flags = 0
	max_shells = 50
	caliber = CALIBER_RIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ESOTERIC = 2)
	slot_flags = 0 //need sprites for SLOT_BACK
	ammo_type = /obj/item/ammo_casing/rifle
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/machinegun
	allowed_magazines = list(/obj/item/ammo_magazine/box/machinegun, /obj/item/ammo_magazine/rifle)
	one_hand_penalty = 10
	wielded_item_state = "l6closed_wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/lmg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/lmg_magout.ogg'

	//LMG, better sustained fire accuracy than assault rifles (comparable to SMG), higer move delay and one-handing penalty
	//No single-shot or 3-round-burst modes since using this weapon should come at a cost to flexibility.
	firemodes = list(
		list(mode_name="short bursts",	can_autofire=0, burst=5, fire_delay=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	can_autofire=0, burst=8, fire_delay=5, one_hand_penalty=12, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="full auto",		can_autofire=1, burst=1, fire_delay=1, one_hand_penalty=12, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0

/obj/item/weapon/gun/projectile/automatic/l6_saw/mag
	magazine_type = /obj/item/ammo_magazine/rifle

/obj/item/weapon/gun/projectile/automatic/l6_saw/special_check(mob/user)
	if(cover_open)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/on_update_icon()
	..()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/box))
		icon_state = "l6[cover_open ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 10)]"
		item_state = "l6[cover_open ? "open" : "closed"]"
		wielded_item_state = "l6[cover_open ? "open" : "closed"]-wielded"
	else if(ammo_magazine)
		icon_state = "l6[cover_open ? "open" : "closed"]mag"
		item_state = "l6[cover_open ? "open" : "closed"]mag"
		wielded_item_state = "l6[cover_open ? "open" : "closed"]mag-wielded"
	else
		icon_state = "l6[cover_open ? "open" : "closed"]-empty"
		item_state = "l6[cover_open ? "open" : "closed"]-empty"
		wielded_item_state = "l6[cover_open ? "open" : "closed"]-empty-wielded"

/obj/item/weapon/gun/projectile/automatic/l6_saw/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/skrell
	name = "QX-2 Miniaturized Railgun"
	desc = "Modeled after VT-3, the Qerr Xira-2 or, as refered in Sol, QX-2, is a miniaturized railgun popular with SDTF squadrons."
	icon = 'icons/boh/obj/guns/skrell_shotgun.dmi'
	icon_state = "skrellshotgun"  //not really a shotgun in spite of the naming
	item_state = "skrellshotgun"
	safety_icon = "safety"
	item_icons = list(
		slot_l_hand_str = 'icons/boh/mob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/boh/mob/items/righthand_guns.dmi',
		slot_back_str = 'icons/boh/mob/items/onmob_back.dmi',
	)
	move_delay = 2
	one_hand_penalty = 5
	fire_delay = 5
	wielded_item_state = "skrellshotgun-wielded"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK|SLOT_BELT
	load_method = MAGAZINE
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	caliber = CALIBER_SKRELL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/skrell_shotgun
	magazine_type = /obj/item/ammo_magazine/skrell_shotgun
	allowed_magazines = /obj/item/ammo_magazine/skrell_shotgun
	bulk = GUN_BULK_RIFLE
	handle_casings = CLEAR_CASINGS
	firemodes = list()

/obj/item/weapon/gun/projectile/automatic/skrell/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "skrellshotgun-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "skrellshotgun"