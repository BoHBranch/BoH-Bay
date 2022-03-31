/////////
// Ammo
/////////

/obj/item/weapon/storage/box/ammo/beanbags/full
	name = "heavy box of beanbag shells"
	startswith = list(/obj/item/ammo_box/shotgun/beanbag = 6)

/obj/item/weapon/storage/box/ammo/beanbags/half
	name = "box of beanbag shells"
	startswith = list(/obj/item/ammo_box/shotgun/beanbag = 3)

/obj/item/weapon/storage/box/ammo/beanbags/eight
	name = "box of beanbag shells"
	startswith = list(/obj/item/ammo_box/shotgun/beanbag = 2)

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
	startswith = list(/obj/item/ammo_box/shotgun/slug = 7)

/obj/item/weapon/storage/box/ammo/shotgunammo/buckshot/full
	name = "heavy box of shotgun shells"
	startswith = list(/obj/item/ammo_box/shotgun = 7)

/obj/item/weapon/storage/box/ammo/shotgunammo/birdshot/full
	name = "heavy box of birdshot"
	startswith = list(/obj/item/ammo_box/shotgun/birdshot = 7)

/obj/item/weapon/storage/box/ammo/sabotbox
	name = "box of sabot shells"
	startswith = list(/obj/item/ammo_magazine/shotholder/sabot = 7)

/obj/item/weapon/storage/box/ammo/machine_pistol
	name = "box of magazines"
	startswith = list(/obj/item/ammo_magazine/machine_pistol = 7)

/obj/item/weapon/storage/box/ammo/smg_frang
	name = "box of magazines"
	startswith = list(/obj/item/ammo_magazine/smg_top/frangible = 7)


/obj/item/gunbox
	name = "equipment kit"
	desc = "A secure box containing a sidearm."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo" //temp

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Military Pistol"] = list(/obj/item/weapon/gun/projectile/pistol/military/alt/solar,/obj/item/ammo_magazine/pistol/double/rubber)
	options["Ballistic - Military Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/sec/pepper,/obj/item/ammo_magazine/speedloader/rubber)
//	options["Energy - Smartgun"] = list(/obj/item/weapon/gun/energy/gun/secure)
//	options["Energy - Stun Revolver"] = list(/obj/item/weapon/gun/energy/stunrevolver/secure)
	options["Stun - Non-Lethal Taser"] = list(/obj/item/weapon/gun/energy/taser)
	options["Small Energy - Compact Smartgun"] = list(/obj/item/weapon/gun/energy/gun/small/secure/sec)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM]. This is probably worth more than what your paycheck can be used for.")
		qdel(src)

/////////
// Primary Gunbox for Sec
/////////

/obj/item/gunbox/primary
	desc = "A secure box containing a primary."

/obj/item/gunbox/primary/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - SMG"] = list(/obj/item/weapon/gun/projectile/automatic/sec_smg/less_lethal,/obj/item/weapon/storage/box/ammo/smg_frang)
	options["Ballistic - Beanbag Shotgun"] = list(/obj/item/weapon/gun/projectile/shotgun/pump/beanbag,/obj/item/weapon/storage/box/ammo/shotgunammo/birdshot/full)
	options["Stun - Stun Rifle"] = list(/obj/item/weapon/gun/energy/stunrevolver/rifle)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/////////
// 'Officer' Lockbox
/////////

/obj/item/gunbox/captain
	desc = "A secure box containing a sidearm."

/obj/item/gunbox/captain/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - .454 Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/large,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/large)
	options["Ballistic - SA Lumoco P3"] = list(/obj/item/weapon/gun/projectile/pistol/holdout/cap,/obj/item/ammo_magazine/pistol/small,/obj/item/clothing/mask/smokable/ecig/deluxe)
	options["Ballistic - ID locked Mk58"] = list(/obj/item/weapon/gun/projectile/pistol/command,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
	options["Energy - EPP"] = list(/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp,/obj/item/documents/epp)
	options["Energy - Smart Service Revolver"] = list(/obj/item/weapon/gun/energy/revolver/secure)
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

/obj/item/gunbox/executive
	desc = "A secure box containing a sidearm."

/obj/item/gunbox/executive/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Mk58"] = list(/obj/item/weapon/gun/projectile/pistol/sec/solar,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
	options["Ballistic - SA Lumoco P3"] = list(/obj/item/weapon/gun/projectile/pistol/holdout/cap,/obj/item/ammo_magazine/pistol/small,/obj/item/clothing/mask/smokable/ecig/deluxe)
	options["Ballistic - Custom Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/xo,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/xo)
	options["Energy - EPP"] = list(/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp,/obj/item/documents/epp)
	options["Energy - Smart Service Revolver"] = list(/obj/item/weapon/gun/energy/revolver/secure)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/////////
// Corp Rep Firearm Kit
/////////

/obj/item/gunbox/corpo
	desc = "A secure box containing a sidearm."

/obj/item/gunbox/corpo/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - ZH Ghoul"] = list(/obj/item/weapon/gun/projectile/dartgun/pol,/obj/item/clothing/accessory/storage/holster/thigh)
	options["Ballistic - Lumoco Mk12"] = list(/obj/item/weapon/gun/projectile/revolver/medium/sec,/obj/item/clothing/accessory/storage/holster/thigh)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/////////
// SCG Rep Firearm Kit
/////////

/obj/item/gunbox/pol
	desc = "A secure box containing a sidearm."

/obj/item/gunbox/pol/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Armistice"] = list(/obj/item/weapon/gun/projectile/shotgun/doublebarrel/sawn/armistice,/obj/item/clothing/accessory/storage/holster/thigh)
	options["Ballistic - Lumoco Mk12"] = list(/obj/item/weapon/gun/projectile/revolver/medium/sec,/obj/item/clothing/accessory/storage/holster/thigh)
	options["Ballistic - SNC-Ruger"] = list(/obj/item/weapon/gun/projectile/pistol/luger,/obj/item/clothing/accessory/storage/holster/thigh)
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

/////////
// Chemical Box
/////////
/obj/item/weapon/storage/lockbox/vials/random
	name = "secure vial storage box"
	desc = "A locked box for keeping things away from children."
	w_class = ITEM_SIZE_NORMAL
	req_access = list(access_research)
	startswith = list(/obj/item/weapon/reagent_containers/glass/beaker/vial/projectsecret = 12)

/////////
// flares
/////////
// why this didn't exist already stuns me. or i'm just blind

/obj/item/weapon/storage/box/flares
	name = "box of flares"
	desc = "Box o' flares. Not much else to say."
	icon_state = "box"
	startswith = list(/obj/item/device/flashlight/flare = 12)

