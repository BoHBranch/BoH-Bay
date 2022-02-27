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
// Sec Bullpup
/////////
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec
	name = "Z9 Bulldog"
	desc = "The Hephaestus Industries Z9 Bulldog is a newer generation bullpup carbine. It appears to be heavily modified: consisting of the removal of the auto-eject function. Lame. \
	Still has the kickass grenade launcher, though!"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/rifle/military //De-nerfs the one-round type.
	magazine_type = /obj/item/ammo_magazine/mil_rifle/sec
	allowed_magazines = list(/obj/item/ammo_magazine/mil_rifle/sec, /obj/item/ammo_magazine/mil_rifle/sec/large, /obj/item/ammo_magazine/mil_rifle)
	auto_eject = 0
	starts_loaded = 0
	one_hand_penalty = 10 //Can feed all types of magazines.
	jam_chance = 2
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="bump fire", burst=2, fire_delay=null, move_delay=2,    one_hand_penalty=8, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, one_hand_penalty=9, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

//sec proper
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/b
	name = "Z9B Bulldog"
	desc = "The Hephaestus Industries Z9B Bulldog is an experimental design of the standard Z9. Having an enforced fire-rate for use aboard civilian heavy areas, it does away with some of the use. \
	Because of the limited fire-rate, and how the mechanism functions, it has a much higher jam rate."
	jam_chance = 8 //You're my little pogchamp, security.
	req_access = list(access_brig)
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
	Additionally, it features a lower capacity than usual; with a quick-recharge cell."
	charge_cost = 8
	max_shots = 15
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		)

//SL's
/obj/item/weapon/gun/energy/laser/infantry/sl
	name = "G40C carbine"
	max_shots = 18
	desc = "A Hephaestus Industries G40C carbine, designed to kill with concentrated energy blasts. In comparison to its slighty older cousin, this features better handling, a tuned-down powercell and dispersion lense; along with a better fire-restriction system."
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		)

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

/////////
// Pistol
/////////
/obj/item/weapon/gun/projectile/pistol/military/sec
	name = "P10"
	desc = "The Hephaestus Industries P10 - a mass produced kinetic sidearm in widespread service with the SCGDF. It has a slide restrictor, preventing quick-draw type shooting."
	fire_delay = 12
//	req_access = list(access_hop)
//	authorized_modes = list(UNAUTHORIZED)
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		)

/////////
// LMG
/////////
/obj/item/weapon/gun/projectile/automatic/l6_saw/sec
	name = "Z2 Sheol"
	desc = "The Z2 Sheol, a firearm that preceded the much more refined Z6 Komodo. Despite being older, it still sees use in modern conflict. \
	Generally noted as 'inferior' by those that have never had the pleasure of laying down the trigger, although they are right about it being absurdly inaccurate."
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)
	starts_loaded = 0
	firemodes = list(
		list(mode_name="semi auto", automatic = FALSE, fire_delay= 3, burst=1, burst_delay = 2, move_delay=0, one_hand_penalty=12, burst_accuracy=null, dispersion=null),
		list(mode_name="automatic",  automatic = TRUE, fire_delay = 0.5, burst = 1, burst_delay = 0, move_delay=12, one_hand_penalty=24, burst_accuracy=list(0,0,-1,-1,-1,-1,-2,-2), dispersion=list(1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0)),
		)

//rifle
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/lmg
	name = "Z-6 Komodo Automatic Rifle"
	desc = "The Hephaestus Industries Z6 Komodo is an old bullpup carbine conversion. \
	It is equiped with a heavy barrel for combat, ensuring better accuracy and velocity for penetration at the cost of firerate and magazine size."
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	auto_eject = 1
	one_hand_penalty = 8
	acc_mod_base = 3
	penetration_mult = 1.1
	firemodes = list(
		list(mode_name="semi auto", burst=1, fire_delay=null, move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=list(0.5, 1)),
		list(mode_name="automatic",  automatic = TRUE, fire_delay = 2,5, burst = 1, burst_delay = 0, move_delay=2, dispersion= 0),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

/////////
// Recoilless Rifle
/////////
/obj/item/weapon/gun/projectile/rocket/recoilless/sec
	name = "TVP-3"
	desc = "A much more odd version of what the original was, this is slightly different from what the TVP-2 stood for. This incorporates a hefty locking system, increasing the weight, though ensuring safety aboard a vessel."
	req_access = list(access_infantry)
	authorized_modes = list(UNAUTHORIZED) //can't be registered, but that doesn't matter as this prevents firing regardless
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=12, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/rocket/recoilless/sec/free_fire()
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
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)
	jam_chance = 25 //big ol' gun. Purely for balance.
	firemodes = list(
		list(mode_name="fire", burst=1, fire_delay=null, move_delay=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		)

/////////
// rifle 3
/////////
/*
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/sav
	name = "SAV-1"
	desc = "The Sluzhba Arms SAV-1 is a current-generation assault rifle designed for the SCG military. \
	It uses the standard 5mmR rifle magazines previously used by the Z-series rifles, and it has an underbarrel grenade launcher. \
	This rifle is widely praised by the military for its ruggedness and useability."
	icon = 'icons/boh/items/shotguns.dmi'
	icon_state = "sexyshotgun"
	item_state = "sexyshotgun"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/rifle/military/low
	magazine_type = /obj/item/ammo_magazine/mil_rifle/sec
	allowed_magazines = list(/obj/item/ammo_magazine/mil_rifle/sec, /obj/item/ammo_magazine/mil_rifle/sec/large, /obj/item/ammo_magazine/mil_rifle)
	auto_eject = 1
	jam_chance = 1

//sec proper
/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/sav/stv
	name = "STV-1"
	desc = "The Sluzhba Arms STV-1 is a current-generation heavy rifle designed for the SCG military. \
	It uses the standard 5mmR rifle magazines previously used by the Z-series rifles, and has a re-enforced barrel for more accurate suppressive fire. \
	Hated by those with back pain everywhere."
	icon = 'icons/boh/items/shotguns.dmi'
	icon_state = "sexyshotgun"
	item_state = "sexyshotgun"
	jam_chance = 5
	req_access = list(access_brig)
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)*/
