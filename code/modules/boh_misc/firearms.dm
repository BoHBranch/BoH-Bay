/////////
// Marine Sidearms
/////////

/obj/item/weapon/gun/projectile/pistol/military/alt/solar
	desc = "The Jhen Bothus, best known as the standard-issue sidearm for the Solar Marine Corps."
	magazine_type = /obj/item/ammo_magazine/pistol/double/pepperball

/obj/item/weapon/gun/projectile/pistol/magnum_pistol/solar
	name = "high-powered handgun"
	desc = "The HelTek Magnus, a robust Terran handgun that uses high-caliber ammo."

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
	wielded_item_state = "gun_wielded"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)

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

/////////
// 'Broken' Carbine
/////////
/obj/item/weapon/gun/energy/laser/broken
	name = "broken laser carbine"
	desc = "An HI G40E, though this one appears to have a cracked projection lens."
	icon_state = "lasersec"
	projectile_type = /obj/item/projectile/beam/incendiary_laser

/////////
// Beanbag Launcher
/////////
/obj/item/weapon/gun/projectile/shotgun/pump/beanbag
	name = "beanbag shotgun"
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders. \
	This one appears to be modified to fire nothing but beanbags, and has an orange paintjob on the slide. Trying to fire lethals doesn't seem like a good idea."
	icon = 'icons/boh/items/shotguns.dmi'
	icon_state = "bshotgun"
	item_state = "bshotgun"
	wielded_item_state = "cshotgun-wielded"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	one_hand_penalty = 8
	var/explosion_chance = 100

/obj/item/weapon/gun/projectile/shotgun/pump/beanbag/on_update_icon()
	..()
	if(length(loaded) > 3)
		for(var/i = 0 to length(loaded) - 4)
			var/image/I = image(icon, "bshell")
			I.pixel_x = i * 2
			overlays += I

/obj/item/weapon/gun/projectile/shotgun/pump/beanbag/special_check()
	if(chambered && chambered.BB && prob(explosion_chance))
		var/damage = chambered.BB.get_structure_damage()
		if(istype(chambered.BB, /obj/item/projectile/bullet/pellet))
			var/obj/item/projectile/bullet/pellet/PP = chambered.BB
			damage = PP.damage*PP.pellets
		if(damage > 30)
			var/mob/living/carbon/C = loc
			if(istype(loc))
				C.visible_message("<span class='danger'>[src] explodes in [C]'s hands!</span>", "<span class='danger'>[src] explodes in your face!</span>")
				C.drop_from_inventory(src)
				for(var/zone in list(BP_L_HAND, BP_R_HAND, BP_HEAD))
					C.apply_damage(rand(10,20), def_zone=zone)
			else
				visible_message("<span class='danger'>[src] explodes!</span>")
			explosion(get_turf(src), -1, -1, 1)
			qdel(src)
			return FALSE
	return ..()

/////////
// Extended Taser Carbine
/////////
/obj/item/weapon/gun/energy/taser/carbine/ext
	name = "modified electrolaser carbine"
	desc = "The NT Mk44 NL is a high capacity gun used for non-lethal takedowns. It can switch between high and low intensity stun shots. \
	This one has a larger capacity."
	max_shots = 24

/////////
// EPP
/////////
/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp
	name = "experimental pulse pistol"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. It's fitted with an incredibly tiny self-contained reactor. \
	This provides the weapon, in theory, an infinite power source, but a horrible munition count in practice. Additionally, it cannot fire a concentrated beam, having been modified to be less-than-lethal."
	projectile_type = /obj/item/projectile/beam/pulse/epp
	max_shots = 2
	self_recharge = 1
	burst = 1

/////////
// Casull
/////////
/obj/item/weapon/gun/projectile/revolver/medium/captain/large
	name = "Ultimate Argument"
	desc = "A shiny al-Maliki & Mosley Autococker automatic revolver, with black accents. Up-chambered for a .454 calibre round. This one has 'To the Captain of the NTSS Dagon' engraved on the grip."
	ammo_type = /obj/item/ammo_casing/pistol/magnum/large
	caliber = CALIBER_PISTOL_MAGNUM_LARGE
	has_firing_pin = TRUE
	firing_pin_type = /obj/item/firing_pin/id_locked/commanding_officer

/////////
// XO Revolver
/////////
/obj/item/weapon/gun/projectile/revolver/medium/captain/xo
	name = "Final Argument"
	desc = "A shiny al-Maliki & Mosley Autococker automatic revolver, with black accents. Marketed as the 'Revolver for the Modern Era'. This one has 'To the Executive of the NTSS Dagon' engraved on the grip."
