
/////////
// Sec Bullpup
/////////
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec
	name = "bullpup rifle"
	desc = "The Hephaestus Industries Z9 Bulldog is a newer generation bullpup carbine. It appears to be heavily modified: forcing the feed of one round type, a permanent semi-auto setting and the removal of the auto-eject function. Lame. \
	Still has the kickass grenade launcher, though!"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/rifle/military/low
	magazine_type = /obj/item/ammo_magazine/mil_rifle/sec
	allowed_magazines = /obj/item/ammo_magazine/mil_rifle/sec
	auto_eject = 0
	starts_loaded = 0
	one_hand_penalty = 6 //lower power rounds
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

//loaded
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/loaded
	starts_loaded = 1

/////////
// c20
/////////
/obj/item/weapon/gun/projectile/automatic/merc_smg/sec
	name = "C-20b"
	desc = "The NanoTrasen C-20b is a lightweight and rapid firing SMG. This is an older model, capable of only firing in semi-automatic and three-round bursts. \
	Additionally, it does not feature the auto-eject function of the more modern version."
	auto_eject = 0
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)

	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=6, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=8, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		)

// antag
/obj/item/weapon/gun/projectile/automatic/merc_smg/hacked
	name = "C-20b"
	desc = "The NanoTrasen C-20b is a lightweight and rapid firing SMG. This is an older model, capable of only firing in semi-automatic and three-round bursts. \
	Additionally, it does not feature the auto-eject function of the more modern version. It appears, however, that this one has a hacked firing authorization pin."
	auto_eject = 0
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=6, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=8, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		)

/////////
// Pistol
/////////
/obj/item/weapon/gun/projectile/pistol/military/sec
	name = "P10"
	desc = "The Hephaestus Industries P10 - a mass produced kinetic sidearm in widespread service with the SCGDF. It has a slide restrictor, preventing quick-draw type shooting."
	fire_delay = 12
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)

/////////
// LMG
/////////
/obj/item/weapon/gun/projectile/automatic/l6_saw/sec
	name = "L7 SAW"
	desc = "A rather traditionally made L7 SAW with a pleasantly lacquered wooden pistol grip. Has 'Aussec Armoury- 2561' engraved on the reciever. \
	It appears to have a firing restrictor installed, to prevent firing without authorization aboard the Dagon."
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)

/////////
// Recoilless Rifle
/////////
/obj/item/weapon/gun/launcher/rocket/recoilless/sec //can't be registered, but that doesn't matter as this prevents firing regardless
	name = "TVP-3"
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)

/obj/item/weapon/gun/launcher/rocket/recoilless/sec/free_fire()
	var/my_z = get_z(src)
	if(!GLOB.using_map.station_levels.Find(my_z))
		return TRUE
	return ..()

/////////
// lock
/////////
/obj/item/weapon/gun/projectile/free_fire()
	var/my_z = get_z(src)
	if(!GLOB.using_map.station_levels.Find(my_z))
		return TRUE
	return ..()