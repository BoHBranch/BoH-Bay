/obj/item/gunbox
	name = "equipment kit"
	desc = "A secure box containing a sidearm."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo" //temp

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Energy - Smartgun"] = list(/obj/item/weapon/gun/energy/gun/secure)
	options["Taser - Stun Revolver"] = list(/obj/item/weapon/gun/energy/stunrevolver/secure)
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

/obj/item/gunbox/captain
	desc = "A secure box containing a sidearm."

/obj/item/gunbox/captain/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - .454 Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/large,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/large)
	options["Ballistic - Mk58 semi-automatic"] = list(/obj/item/weapon/gun/projectile/pistol/sec/lethal,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
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
	options["Ballistic - Mk58 semi-automatic"] = list(/obj/item/weapon/gun/projectile/pistol/sec/lethal,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
	options["Ballistic - Magnum Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/large/xo,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/magnum)
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
// Firearm Kit
/////////
/obj/item/ascentbox
	name = "equipment kit"
	desc = "A secure box containing equipment."
	icon = 'icons/obj/ascent_doodads.dmi'
	icon_state = "box" //temp

/obj/item/ascentbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Support Alate"] = list(/obj/item/stack/medical/resin/large,/obj/item/weapon/gun/energy/particle/support)
	options["Enforcering Alate"] = list(/obj/item/weapon/gun/energy/particle/small,/obj/item/weapon/storage/med_pouch/ascent)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM]. This is probably worth more than what your Gyne thinks of you.")
		qdel(src)

//APA/FPA Armor Box
/obj/item/armorbox
	name = "armor kit"
	desc = "A secure box containing a plate carrier."
	icon = 'icons/obj/storage.dmi'
	icon_state = "lockbox"

/obj/item/armorbox/sol
	name = "SolGov armor kit"

/obj/item/armorbox/sol/attack_self(mob/living/user)
	var/list/options = list()
	options["Medium plate carrier"] = list(/obj/item/clothing/suit/armor/pcarrier/medium)
	options["Concealable light vest"] = list(/obj/item/clothing/accessory/armorplate/sneaky)
	var/choice = input(user,"What type of armor?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/clothing/))
				to_chat(user, "You have chosen \the [AM]. This is probably enough to stop a bullet. Probably.")
		qdel(src)

/obj/item/armorbox/corporate
	name = "corporate armor kit"

/obj/item/armorbox/corporate/attack_self(mob/living/user)
	var/list/options = list()
	options["Medium plate carrier"] = list(/obj/item/clothing/suit/armor/pcarrier/medium/nt)
	options["Concealable light vest"] = list(/obj/item/clothing/accessory/armorplate/sneaky)
	var/choice = input(user,"What type of armor?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/clothing/))
				to_chat(user, "You have chosen \the [AM]. This is probably enough to stop a bullet. Probably.")
		qdel(src)

//# PSYKER ################################################################

/obj/item/weapon/storage/box/psykerimplants
	name = "psi dampeners"
	desc = "Box of stuff used to implant psionic monitoring software."
	icon_state = "implant"
	item_state = "syringe_kit"
	startswith = list(/obj/item/weapon/implanter/psi = 1,
				/obj/item/weapon/implantcase/psyker = 6)

/obj/item/weapon/storage/box/large/psinullers
	name = "psi dampening items"
	desc = "Psionic dampening items for willing psions to suppress their powers."
	icon_state = "largebox"
	w_class = ITEM_SIZE_LARGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_LARGEBOX_STORAGE
	startswith = list(/obj/item/weapon/material/coin/nullglass = 7, /obj/item/weapon/material/cross/nullglass = 7)

/obj/item/weapon/storage/box/large/psinullers/disrupts_psionics()
	return FALSE

/obj/item/weapon/storage/secure/briefcase/jerraman
	name = "secure vial carrier"
	icon = 'icons/obj/storage.dmi'
	icon_state = "fbriefcase"
	item_state = "fbriefcase"
	desc = "A large briefcase designed to carry vials of chemicals, with a digital locking system."
	startswith = list(/obj/item/weapon/reagent_containers/glass/beaker/vial/jerraman = 3, /obj/item/weapon/storage/box/syringes = 1)

//# PSYKER ################################################################

//Rubber Magazine for Magnum//
/obj/item/ammo_magazine/magnum/rubber
	name = "less than lethal magazine"
	icon_state = "magnum"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_MAGNUM
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/magnum/rubber
	max_ammo = 7
	multiple_sprites = 1
//