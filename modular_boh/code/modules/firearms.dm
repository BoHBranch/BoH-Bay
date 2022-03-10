//If anyone asks it was like this when I found it :wink://

/////////
// projectile global lock
/////////
/obj/item/weapon/gun/projectile/free_fire()
	var/my_z = get_z(src)
	if(!GLOB.using_map.station_levels.Find(my_z))
		return TRUE
	return ..()

/////////
// laser global lock
/////////
/obj/item/weapon/gun/energy/free_fire()
	var/my_z = get_z(src)
	if(!GLOB.using_map.station_levels.Find(my_z))
		return TRUE
	return ..()


/////////
// Infantry Kits
/////////

/obj/item/gunbox/infantry
	name = "Standard Kit"
	desc = "A secure box containing a sidearm and primary."

/obj/item/gunbox/infantry/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Bullpup Rifle"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec,/obj/item/ammo_magazine/mil_rifle/sec,/obj/item/weapon/gun/projectile/pistol/military/sec,/obj/item/weapon/grenade/frag/shell,/obj/item/weapon/grenade/frag/shell,/obj/item/weapon/grenade/frag/shell)
	options["Energy - Laser Carbine"] = list(/obj/item/weapon/gun/energy/laser/infantry,/obj/item/weapon/gun/projectile/pistol/military/sec,/obj/item/weapon/grenade/frag,/obj/item/weapon/grenade/frag,/obj/item/weapon/grenade/frag)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/obj/item/gunbox/infcom
	name = "Squad Leader Kit"
	desc = "A secure box containing a sidearm and primary."

/obj/item/gunbox/infcom/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Tectonic"] = list(/obj/item/weapon/gun/projectile/shotgun/sabotgun,/obj/item/weapon/gun/energy/revolver/secure,/obj/item/ammo_magazine/shotholder/sabot,/obj/item/ammo_magazine/shotholder/sabot,/obj/item/ammo_magazine/shotholder/sabot,/obj/item/ammo_magazine/shotholder/sabot,/obj/item/ammo_magazine/shotholder/sabot,/obj/item/ammo_magazine/shotholder/sabot)
	options["Ballistic - Komodo"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/lmg,/obj/item/ammo_magazine/mil_rifle/sec/large,/obj/item/ammo_magazine/mil_rifle/sec/large,/obj/item/ammo_magazine/mil_rifle/sec/large,/obj/item/weapon/gun/energy/revolver/secure)
	options["Energy - Laser Carbine (has burst fire)"] = list(/obj/item/weapon/gun/energy/laser/infantry,/obj/item/weapon/gun/energy/revolver/secure)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/obj/item/gunbox/infcom/secondary
	name = "Squad Leader Squad Kit"
	desc = "A secure box containing a secondary set of equipment for the entire squad's benefit."

/obj/item/gunbox/infcom/secondary/attack_self(mob/living/user)
	var/list/options = list()
	options["Tactical Goggles x5"] = list(/obj/item/clothing/glasses/tacgoggles,/obj/item/clothing/glasses/tacgoggles,/obj/item/clothing/glasses/tacgoggles,/obj/item/clothing/glasses/tacgoggles,/obj/item/clothing/glasses/tacgoggles)
	options["Advanced Medical Equipment"] = list(/obj/item/bodybag/cryobag,/obj/item/weapon/reagent_containers/hypospray/vial,/obj/item/weapon/reagent_containers/hypospray/autoinjector/stim,/obj/item/weapon/reagent_containers/hypospray/autoinjector/stim,/obj/item/weapon/reagent_containers/ivbag/nanoblood,/obj/item/weapon/reagent_containers/ivbag/nanoblood)
	options["Demolitions Equipment"] = list(/obj/item/weapon/plastique,/obj/item/weapon/plastique,/obj/item/weapon/plastique,/obj/item/weapon/plastique,/obj/item/weapon/plastique,/obj/item/weapon/reagent_containers/glass/bottle/thermite,/obj/item/weapon/reagent_containers/glass/bottle/thermite,/obj/item/weapon/reagent_containers/spray)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/obj/item/gunbox/inftech
	name = "Technician Kit"
	desc = "A secure box containing a sidearm and primary."

/obj/item/gunbox/inftech/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Bullpup Rifle"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec,/obj/item/weapon/gun/projectile/pistol/military/sec)
	options["Ballistic - Combat Shotgun"] = list(/obj/item/weapon/gun/projectile/shotgun/pump/combat/infantry,/obj/item/weapon/gun/projectile/pistol/military/sec)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/////////
// Suits
/////////
/obj/machinery/suit_cycler/infantry
	name = "Infantry suit cycler"
	model_text = "Infantry"
	req_access = list(access_infantry)
	available_modifications = list(/decl/item_modifier/space_suit/hazard, /decl/item_modifier/space_suit/engineering/alt, /decl/item_modifier/space_suit/security/alt, /decl/item_modifier/space_suit/security)


/obj/item/weapon/rig/military/infantry
	name = "heavy suit control module"
	desc = "A heavy, incredibly sleek suit of military grade armor. \
	The minor ablative coating and composite armor makes it seem incredibly sturdy."
	req_access = list(access_infantry)
	suit_type = "military hardsuit"
	icon_state = "military_rig"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

	allowed = list(/obj/item/device/flashlight, /obj/item/weapon/tank,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/handcuffs,/obj/item/device/t_scanner, /obj/item/weapon/rcd, /obj/item/weapon/crowbar, \
	/obj/item/weapon/screwdriver, /obj/item/weapon/weldingtool, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench, /obj/item/device/multitool, \
	/obj/item/device/radio, /obj/item/device/scanner/gas,/obj/item/weapon/storage/briefcase/inflatable, /obj/item/weapon/melee/baton, /obj/item/weapon/gun, \
	/obj/item/weapon/storage/firstaid, /obj/item/weapon/reagent_containers/hypospray, /obj/item/roller, /obj/item/device/suit_cooling_unit, /obj/item/weapon/storage/)

	initial_modules = list(
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/maneuvering_jets
	)

//Vending
/obj/machinery/vending/security/infantry
	name = "InfTech"
	desc = "A munition vendor."
	req_access = list(access_infantry)
	products = list(
		/obj/item/ammo_magazine/mil_rifle/sec = 15,
		/obj/item/ammo_magazine/mil_rifle/sec/large = 3,
		/obj/item/ammo_magazine/pistol/double = 10,
		/obj/item/ammo_magazine/shotholder/shell = 4,
		/obj/item/ammo_magazine/shotholder = 4
		)

/////////
// Pistol
/////////
/obj/item/weapon/gun/projectile/pistol/military/sec
	name = "P10 pistol"
	desc = "The Hephaestus Industries P10 - a mass produced kinetic sidearm in widespread service with the SCGDF. It has a slide restrictor, preventing quick-draw type shooting."
	fire_delay = 12
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		)

/////////
// Sec Bullpup
/////////
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec
	name = "Z9 Pitbull"
	desc = "The Hephaestus Industries Z9 Pitbull is a newer generation bullpup carbine. It appears to be heavily modified: forcing the feed of one round type, a permanent semi-auto setting and the removal of the auto-eject function. Lame. \
	Still has the kickass grenade launcher, though! The aforementioned forced munition is a highly specialized frangible bullet. Designed to minimize crossfire damage, alongside civilian casualties."
	icon = 'modular_boh/icon/boh/items/z9.dmi'
	icon_state = "carbine"
	item_state = "z9carbine"
	wielded_item_state = "z9carbine-wielded"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/rifle/military/low
	magazine_type = /obj/item/ammo_magazine/mil_rifle/sec
	allowed_magazines = list(/obj/item/ammo_magazine/mil_rifle/sec, /obj/item/ammo_magazine/mil_rifle/sec/large)
	auto_eject = 0
	starts_loaded = 0
	one_hand_penalty = 6 //lower power rounds
	jam_chance = 5
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="bump fire", burst=2, fire_delay=null, move_delay=2,    one_hand_penalty=8, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

//sec proper
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/b
	name = "Z9B Pitbull"
	desc = "The Hephaestus Industries Z9B Pitbull is an experimental design of the standard Z9. Having an enforced fire-rate for use aboard civilian heavy areas, it does away with some of the use. \
	Because of the limited fire-rate, and how the mechanism functions, it has a much higher jam rate."
	icon = 'modular_boh/icon/boh/items/z9b.dmi'
	icon_state = "carbine"
	item_state = "z9carbine"
	wielded_item_state = "z9bcarbine-wielded"
	jam_chance = 15
	req_access = list(access_brig)
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

//rifle
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/lmg
	name = "Z6 Komodo"
	desc = "The Hephaestus Industries Z6 Komodo is an old bullpup carbine conversion. \
	It adds the possibility of automatic fire, though at the cost of likely jams."
	icon = 'modular_boh/icon/boh/items/z6.dmi'
	icon_state = "carbine"
	item_state = "z6carbine"
	wielded_item_state = "z6carbine-wielded"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	auto_eject = 1
	one_hand_penalty = 8
	jam_chance = 15 //frangible rounds might shatter if they're chambered improperly. Especially so with such a high firerate.
	firemodes = list(
		list(mode_name="semi auto", burst=1, fire_delay=null, move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="burst fire",  burst=5, fire_delay=null, move_delay=2, one_hand_penalty=10, burst_accuracy=list(0,-1,-1,-2,-2), dispersion=list(0.0, 0.3, 0.5, 0.7, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

//combat shotgun
/obj/item/weapon/gun/projectile/shotgun/pump/combat/infantry
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders. \
	It appears to have a firing restrictor installed, to prevent firing without authorization aboard the Andromeda."
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)

//Beanbag shotgun, AKA, the ranged dick kick
/obj/item/weapon/gun/projectile/shotgun/pump/beanbag
	name = "KS-40b"
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders. \
	This one appears to be modified to fire nothing but beanbags, and has an orange paintjob on the slide. Trying to fire lethals doesn't seem like a good idea."
	icon = 'modular_boh/icon/boh/items/shotguns.dmi'
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

//Z2 Hornet. Insert "Meet the Sniper"
/obj/item/weapon/gun/projectile/hornetsniper
	name = "Z2 Hornet"
	desc = "The Z2 Hornet, is an older cousin of the Z9 Pitbull Carbine. This however, is a DMR up-chambered in to 12mm-Sparrow. Accuracy is improved by a side mounted ballistic computer."
	icon = 'modular_boh/icon/boh/items/hornet.dmi'
	icon_state = "z2"
	item_state = "z2hornet"
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
	accuracy = 0
	bulk = 8
	scoped_accuracy = 6
	scope_zoom = 1
	wielded_item_state = "z2hornet-wielded"
	load_sound = 'sound/weapons/guns/interaction/shotgun_instert.ogg'
	fire_delay = 20


/////////
// Laser Carbine
/////////
/obj/item/weapon/gun/energy/laser/infantry
	name = "G40B carbine"
	desc = "A Hephaestus Industries G40B carbine, designed to kill with concentrated energy blasts. Fitted with safety chips to make sure discharge aboard a 'safe zone' is impossible.\
	Additionally, it features a higher capacity."
	charge_cost = 10
	max_shots = 20
	fire_delay = 10
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="burst fire", burst=2, fire_delay=1, move_delay=1, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		)

/////////
// LMG
/////////
/obj/item/weapon/gun/projectile/automatic/l6_saw/sec
	name = "L7 SAW"
	desc = "A rather traditionally made L7 SAW with a pleasantly lacquered wooden pistol grip. Has 'Aussec Armoury- 2561' engraved on the reciever. \
	It appears to have a firing restrictor installed, to prevent firing without authorization aboard the Andromeda."
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="semi auto", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=6, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=5, fire_delay=null, move_delay=4, one_hand_penalty=8, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0))
		)

/////////
// Recoilless Rifle
/////////
/obj/item/weapon/gun/launcher/rocket/recoilless
	name = "TVP-2"
	desc = "A TVP-2 anti-armor recoilless rifle. Truly an anachronism of another time. \
	This specific model was designed to fire incendiary charges. Said charges have a minor explosive charge, with an incredibly powerful, though small, incendiary powder of sorts. \
	Hopefully it's still working after all this time, because, by god, this looks like an old relic. \
	What doesn't look like a relic, however, is the rather large optic mounted atop the rifle."
	icon = 'modular_boh/icon/boh/items/launchers.dmi'
	icon_state = "recoilless"
	item_state = "recoilless"
	wielded_item_state = "gun_wielded"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	base_parry_chance = 10
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED) //can't be registered, but that doesn't matter as this prevents firing regardless

	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=12, burst_accuracy=null, dispersion=null),
		)

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


/obj/item/weapon/gun/launcher/rocket/recoilless/free_fire()
	var/my_z = get_z(src)
	if(!GLOB.using_map.station_levels.Find(my_z))
		return TRUE
	return ..()

/////////
// SL Shotgun
/////////
/obj/item/weapon/gun/projectile/shotgun/sabotgun
	name = "GS-95 Tectonic"
	desc = "Built for light anti-materiel use, the Hephaestus Industries GS-95 Teutonic is for frontline support infantry. \
	It features a built in magazine, and must be loaded by hand."
	icon = 'modular_boh/icon/boh/items/shotguns.dmi'
	icon_state = "sexyshotgun"
	item_state = "sexyshotgun"
	wielded_item_state = "sexyshotgun-wielded"
	load_method = SINGLE_CASING
	handle_casings = EJECT_CASINGS
	max_shells = 8
	ammo_type = /obj/item/ammo_casing/sabot
	caliber = CALIBER_SABOT
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	jam_chance = 25 //big ol' gun. Purely for balance.
	base_parry_chance = 20
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		)

//General custom weaponry

/obj/item/weapon/gun/projectile/revolver/medium/captain/large
	name = "Ultimate Argument"
	desc = "A shiny al-Maliki & Mosley Autococker automatic revolver, with black accents. Up-chambered for a .454 calibre round. This one has 'To the Captain of the SFV Andromeda' engraved on the grip."
	ammo_type = /obj/item/ammo_casing/pistol/magnum/large
	caliber = CALIBER_PISTOL_MAGNUM_LARGE

/obj/item/weapon/gun/projectile/revolver/medium/captain/large/xo
	name = "Final Argument"
	desc = "A shiny al-Maliki & Mosley Autococker automatic revolver, with black accents. Marketed as the 'Revolver for the Modern Era'. This one has 'To the Executive of the SFV Andromeda' engraved on the grip."
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	caliber = CALIBER_PISTOL_MAGNUM

/obj/item/weapon/gun/projectile/pistol/magnum_pistol/solar
	name = "Eagle"
	desc = "The HI Eagle, a reverse engineered HT Magnus. This one has 'To the Chief of Security aboard the SFV Andromeda' engraved"
	magazine_type = /obj/item/ammo_magazine/magnum/rubber
	starts_loaded = 1

/obj/item/weapon/gun/projectile/shotgun/doublebarrel/beanbag
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

//General Custom Weaponry -> ENERGY

/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp
	name = "experimental pulse pistol"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. It's fitted with an incredibly tiny self-contained reactor. \
	This provides the weapon, in theory, an infinite power source, but a horrible munition count in practice. Additionally, it cannot fire a concentrated beam, having been modified to be less-than-lethal."
	projectile_type = /obj/item/projectile/beam/pulse/epp
	max_shots = 5
	self_recharge = 1
	burst = 1
	base_parry_chance = 10
	accuracy = 3 //To give it regular pistol accuracy

/obj/item/weapon/gun/energy/particle/support
	name = "defence lance"
	desc = "A modified variant of the Ascent particle lance, usually carried by rearline combatants."
	force = 6
	max_shots = 2
	burst = 2
	move_delay = 2
	one_hand_penalty = 0
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_DENYPOCKET | SLOT_HOLSTER
	projectile_type = /obj/item/projectile/beam/particle/defence
	firemodes = list(
		list(mode_name="primary",   projectile_type = /obj/item/projectile/beam/particle/defence),
		)
