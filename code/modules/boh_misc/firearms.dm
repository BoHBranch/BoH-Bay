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