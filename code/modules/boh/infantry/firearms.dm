/////////
// global lock
/////////
/obj/item/weapon/gun/projectile/free_fire()
	var/my_z = get_z(src)
	if(!GLOB.using_map.station_levels.Find(my_z))
		return TRUE
	return ..()

/////////
// Sec Bullpup
/////////
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec
	name = "Z9 Bulldog"
	desc = "The Hephaestus Industries Z9 Bulldog is a newer generation bullpup carbine. It appears to be heavily modified: forcing the feed of one round type, a permanent semi-auto setting and the removal of the auto-eject function. Lame. \
	Still has the kickass grenade launcher, though! The aforementioned forced munition is a highly specialized frangible bullet. Designed to minimize crossfire damage, alongside civilian casualties."
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/rifle/military/low
	magazine_type = /obj/item/ammo_magazine/mil_rifle/sec
	allowed_magazines = list(/obj/item/ammo_magazine/mil_rifle/sec, /obj/item/ammo_magazine/mil_rifle/sec/large, /obj/item/ammo_magazine/mil_rifle)
	auto_eject = 0
	starts_loaded = 0
	one_hand_penalty = 6 //lower power rounds
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="bump fire", burst=2, fire_delay=null, move_delay=2,    one_hand_penalty=8, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

//sec proper
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/b
	desc = "The Hephaestus Industries Z9b Bulldog is an experimental design of the standard Z9. Having an enforced fire-rate for use aboard civilian heavy areas, it does away with some of the use. \
	Because of the limited fire-rate, and how the mechanism functions, it has a much higher jam rate."
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)
//loaded
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/loaded
	starts_loaded = 1

/////////
// rifle 2
/////////
/obj/item/weapon/gun/energy/laser/infantry
	name = "G40B carbine"
	desc = "A Hephaestus Industries G40B carbine, designed to kill with concentrated energy blasts. Fitted with safety chips to make sure discharge aboard a 'safe zone' is impossible.\
	Additionally, it features a higher capacity."
	charge_cost = 10
	max_shots = 20
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="burst fire", burst=2, fire_delay=1, move_delay=1, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		)

/////////
// c20
/////////
/obj/item/weapon/gun/projectile/automatic/merc_smg/sec
	name = "C-20b"
	desc = "The NanoTrasen C-20b is a lightweight and rapid firing SMG. This is an older model, capable of only firing in semi-automatic and three-round bursts. \
	Additionally, it does not feature the auto-eject function of the more modern version."
	auto_eject = 0
	req_access = list(access_infantry)
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
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		)

/////////
// LMG
/////////
/obj/item/weapon/gun/projectile/automatic/l6_saw/sec
	name = "L7 SAW"
	desc = "A rather traditionally made L7 SAW with a pleasantly lacquered wooden pistol grip. Has 'Aussec Armoury- 2561' engraved on the reciever. \
	It appears to have a firing restrictor installed, to prevent firing without authorization aboard the Dagon."
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="semi auto", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=6, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=5, fire_delay=null, move_delay=4, one_hand_penalty=8, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0))
		)

//rifle
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/lmg
	name = "Z6 Komodo"
	desc = "The Hephaestus Industries Z6 Komodo is an old bullpup carbine conversion. \
	It adds the possibility of automatic fire, though at the cost of likely jams."
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	auto_eject = 1
	one_hand_penalty = 8
	jam_chance = 15 //frangible rounds might shatter if they're chambered improperly. Especially so with such a high firerate.
	firemodes = list(
		list(mode_name="semi auto", burst=1, fire_delay=null, move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="burst fire",  burst=5, fire_delay=null, move_delay=2, one_hand_penalty=10, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

/////////
// Recoilless Rifle
/////////
/obj/item/weapon/gun/launcher/rocket/recoilless/sec
	name = "TVP-3"
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED) //can't be registered, but that doesn't matter as this prevents firing regardless
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=12, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/launcher/rocket/recoilless/sec/free_fire()
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
	icon = 'icons/boh/items/shotguns.dmi'
	icon_state = "sexyshotgun"
	item_state = "sexyshotgun"
	wielded_item_state = "sexyshotgun-wielded"
	load_method = SINGLE_CASING
	handle_casings = EJECT_CASINGS
	max_shells = 8
	ammo_type = /obj/item/ammo_casing/sabot
	caliber = CALIBER_SABOT
	req_access = list(access_brig) //changed temp
	authorized_modes = list(UNAUTHORIZED)
	jam_chance = 25 //big ol' gun. Purely for balance.
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		)
