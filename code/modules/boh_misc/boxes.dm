/////////
// Ammo
/////////

/obj/item/weapon/storage/box/ammo/beanbags/full
	name = "heavy box of beanbag shells"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 6)

/obj/item/weapon/storage/box/ammo/beanbags/half
	name = "box of beanbag shells"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 3)

/obj/item/weapon/storage/box/ammo/beanbags/eight
	name = "box of beanbag shells"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 2)

/obj/item/weapon/storage/box/ammo/solar
	name = "box of handgun magazines"
	desc = "It has a picture of a gun and several warning symbols on the front."
	startswith = list(/obj/item/ammo_magazine/pistol/double = 3)

/obj/item/weapon/storage/box/ammo/solar/full
	name = "box of handgun magazines"
	desc = "It has a picture of a gun and several warning symbols on the front."
	startswith = list(/obj/item/ammo_magazine/pistol/double = 7)

/obj/item/weapon/storage/box/ammo/solar/rubber
	name = "box of handgun 'rubber' magazines"
	desc = "It has a picture of a gun and several warning symbols on the front."
	startswith = list(/obj/item/ammo_magazine/pistol/double/rubber = 7)

/obj/item/weapon/storage/box/ammo/shotgunammo/full
	name = "heavy box of shotgun slugs"
	startswith = list(/obj/item/ammo_magazine/shotholder = 7)

/obj/item/weapon/storage/box/ammo/shotgunammo/birdshot/full
	name = "heavy box of rubbershot"
	startswith = list(/obj/item/ammo_magazine/shotholder/birdshot = 7)

/////////
// Officer Lockbox
/////////

/obj/item/gunbox
	name = "equipment kit"
	desc = "A secure box containing a sidearm."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo" //temp

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic"] = list(/obj/item/weapon/gun/projectile/pistol/military/alt/solar,/obj/item/ammo_magazine/pistol/double,/obj/item/weapon/gun/projectile/shotgun/pump/beanbag,/obj/item/weapon/storage/box/ammo/beanbags/eight,/obj/item/clothing/accessory/storage/bandolier)
	options["Energy"] = list(/obj/item/weapon/gun/energy/gun/secure,/obj/item/weapon/grenade/empgrenade/low_yield,/obj/item/weapon/gun/energy/taser/carbine/ext,/obj/item/weapon/cell/device/high)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM]. This is probably worth more than what your paycheck can be used for.")
		qdel(src)

/////////
// 'Officer' Lockbox
/////////

/obj/item/gunbox/officer
/obj/item/gunbox/officer/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - .454 Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/large,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/large)
	options["Ballistic - SA Lumoco P3"] = list(/obj/item/weapon/gun/projectile/pistol/holdout/cap,/obj/item/ammo_magazine/pistol/small,/obj/item/clothing/mask/smokable/ecig/deluxe)
	options["Energy - EPP"] = list(/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp,/obj/item/documents/epp)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/////////
// 'Officer' Lockbox 2
/////////

/obj/item/gunbox/officertwo
/obj/item/gunbox/officertwo/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Mk58"] = list(/obj/item/weapon/gun/projectile/pistol/sec/solar,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
	options["Ballistic - Custom Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/xo,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader)
	options["Energy - EPP"] = list(/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp,/obj/item/documents/epp)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/////////
// Illum Box
/////////

/obj/item/weapon/storage/box/illumnades
	name = "box of illumination grenades"
	desc = "Designed to illuminate an area without the use of a flame or electronics, regardless of the atmosphere."
	icon_state = "flashbang"
	startswith = list(/obj/item/weapon/grenade/light = 6)

/////////
// Explosive Duffle
/////////
// LOTS O' C4
/obj/item/weapon/storage/backpack/dufflebag/syndie/c4
	name = "hefty bag"
	startswith = list(/obj/item/weapon/plastique = 19)