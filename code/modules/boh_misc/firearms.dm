/////////
// Marine Sidearms
/////////

/obj/item/weapon/gun/projectile/pistol/military/alt/solar
	desc = "The Jhen Bothus, best known as the standard-issue sidearm for the Solar Marine Corps."
	magazine_type = /obj/item/ammo_magazine/pistol/double/rubber

/obj/item/weapon/gun/projectile/pistol/magnum_pistol/solar
	name = "high-powered handgun"
	desc = "The HelTek Magnus, a robust Terran handgun that uses high-caliber ammo. This one has '...' engraved"
	starts_loaded = 0

/obj/item/weapon/gun/projectile/pistol/magnum_pistol/solar/loaded
	name = "high-powered handgun"
	desc = "The HelTek Magnus, a robust Terran handgun that uses high-caliber ammo. This one has 'To the Chief of Security Aboard the NTSS Dagon' engraved"
	magazine_type = /obj/item/ammo_magazine/magnum/rubber
	starts_loaded = 1

/obj/item/weapon/gun/projectile/pistol/sec/solar
	name = "Mk58"
	desc = "The NT Mk58 is a cheap, ubiquitous sidearm, produced by a NanoTrasen subsidiary. Found pretty much everywhere humans are. \
	'Executive Officer' is stenciled onto the grip."
	starts_loaded = 0

/obj/item/weapon/gun/projectile/pistol/holdout/cap
	name = "Lumoco P3"
	desc = "The Lumoco Arms P3 Whisper. A small, easily concealable gun. \
	On the grip is bold stamped lettering, 'NTSS Dagon, Custom Order'."
	fire_delay = 2
	starts_loaded = 0

/////////
// display
/////////
//actual thing considering ammo can't be readily found, and much better options are present
/obj/item/weapon/gun/projectile/heavysniper/display
	name = "anti-material rifle"
	desc = "A portable anti-armour rifle fitted with a scope, the HI PTR-7 Rifle was originally designed to used against armoured exosuits. It is capable of punching through windows and non-reinforced walls with ease. Fires armor piercing 14.5mm shells. This is quite a decent replica, obviously purchased for a significant sum of thalers."
	starts_loaded = 0

/////////
// Deathsquad AT
/////////
/obj/item/weapon/gun/magnetic/railgun/automatic/deathsquad // Rather broken Deathsquad rifle. Admin/ERT only.
	name = "advanced railgun"
	desc = "The Jhen JT-78 Hydra. This appears to be of Terran design, though with significant modifications."
	icon = 'icons/obj/guns/railgun_adv.dmi'
	icon_state = "railgun-tcc"

	firemodes = list(
		list(mode_name="semiauto",    burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="bump fire", burst=2, fire_delay=null, move_delay=2,    one_hand_penalty=8, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		)

/////////
// Deathsquad Rifle
/////////
/obj/item/weapon/gun/energy/pulse_rifle/deathsquad
	name = "heavy pulse rifle"
	desc = "A bulky experimental squad support weapon. This pulls from a nullspace pocket to charge its capacitor, which in turn projects the pulse. \
	Or so you'd think, if you weren't probably dead already."
	cell_type = /obj/item/weapon/cell
	fire_delay = 25
	projectile_type=/obj/item/projectile/beam/pulse/heavy
	charge_cost= 80
	self_recharge = 1
	move_delay = 1

/////////
// Skrell Launcher
/////////
/obj/item/weapon/gun/energy/charge
	name = "Charge Rifle"
	desc = "The ZT-8B, is a modification of the railgun rarely seen by anyone other than those within Skrellian SDTF ranks. This modification flips the railgun on its head, and changes the projectile altogether to a lower velocity 'gas' charge. \
	The rotary magazine has been replaced with a 'hot' chamber, and the barrel has been shortened to accommodate for the new projectile."
	icon = 'icons/boh/items/launchers.dmi' //really shitty cut of the railgun until an actual sprite is slapped up.
	icon_state = "skrell_launcher"
	item_state = "skrell_launcher"
	slot_flags = SLOT_BACK|SLOT_BELT
	cell_type = /obj/item/weapon/cell
	self_recharge = 1
	move_delay = 4
	projectile_type=/obj/item/projectile/hotgas/skrell
	charge_cost=620
	wielded_item_state = "skrell_rifle-wielded"

/////////
// Recoilless Rifle
/////////
/obj/item/weapon/gun/launcher/rocket/recoilless
	name = "recoilless rifle"
	desc = "A TVP-2 anti-armor recoilless rifle. Truly an anachronism of another time. \
	This specific model was designed to fire incendiary charges. Said charges have a minor explosive charge, with an incredibly powerful, though small, incendiary powder of sorts. \
	Hopefully it's still working after all this time, because, by god, this looks like an old relic. \
	What doesn't look like a relic, however, is the rather large optic mounted atop the rifle."
	icon = 'icons/boh/items/launchers.dmi'
	icon_state = "recoilless"
	item_state = "recoilless"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	fire_sound = 'sound/weapons/gunshot/sniper.ogg'

/obj/item/weapon/gun/launcher/rocket/recoilless/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/ammo_casing/rocket/rcr))
		if(rockets.len < max_rockets)
			if(!user.unEquip(I, src))
				return
			rockets += I
			to_chat(user, "<span class='notice'>you carefully slide the shell into the [src].</span>")
			to_chat(user, "<span class='notice'>[rockets.len] / [max_rockets] shells.</span>")
		else
			to_chat(usr, "<span class='warning'>\The [src] cannot hold more than one shell, for obvious reasons.</span>")