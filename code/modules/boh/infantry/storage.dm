/obj/structure/closet/secure_closet/squad_lead
	name = "squad leader's locker"
	req_access = list(access_infcom)
	closet_appearance = /decl/closet_appearance/secure_closet/security/hos

/obj/structure/closet/secure_closet/squad_lead/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/gunbox/infcom,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/weapon/storage/firstaid/combat,
		/obj/item/solbanner,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/flares
		)

/obj/structure/closet/secure_closet/inftech
	name = "technician's locker"
	req_access = list(access_inftech)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/inftech/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/gunbox/inftech,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/weapon/rcd,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/storage/belt/utility,
		/obj/item/weapon/weldpack/bigwelder,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/weapon/storage/box/flares,
		/obj/item/weapon/plastique,
		/obj/item/weapon/plastique
		)

/obj/structure/closet/secure_closet/infantry
	name = "infantry locker"
	req_access = list(access_infantry)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/infantry/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/gunbox/infantry,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/device/gps,
		/obj/item/weapon/storage/box/flares
		)

/////////
// Infantry Kits
/////////

/obj/item/gunbox/infantry
	desc = "A secure box containing a sidearm and primary."

/obj/item/gunbox/infantry/attack_self(mob/living/user)
	var/list/options = list()
	options["Grenadier"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/loaded,/obj/item/ammo_magazine/mil_rifle/sec,/obj/item/weapon/gun/projectile/pistol/military/sec,/obj/item/weapon/grenade/frag/shell,/obj/item/weapon/grenade/frag/shell,/obj/item/weapon/grenade/frag/shell)
	options["Rifleman"] = list(/obj/item/weapon/gun/energy/laser/infantry,/obj/item/weapon/gun/projectile/pistol/military/sec,/obj/item/weapon/grenade/smokebomb,/obj/item/weapon/grenade/smokebomb,/obj/item/weapon/grenade/frag)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/obj/item/gunbox/infcom
	desc = "A secure box containing a sidearm and primary."

/obj/item/gunbox/infcom/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic"] = list(/obj/item/weapon/gun/projectile/shotgun/sabotgun,/obj/item/weapon/gun/energy/revolver/secure)
	options["Energy"] = list(/obj/item/weapon/gun/energy/laser/infantry,/obj/item/weapon/gun/energy/revolver/secure)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/obj/item/gunbox/inftech
	desc = "A secure box containing a sidearm and primary."

/obj/item/gunbox/inftech/attack_self(mob/living/user)
	var/list/options = list()
	options["Demolitions"] = list(/obj/item/weapon/gun/launcher/rocket/recoilless/sec,/obj/item/ammo_casing/rocket/rcr,/obj/item/ammo_casing/rocket/rcr,/obj/item/weapon/gun/projectile/pistol/military/sec)
	options["Dedicated SAG"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/lmg,/obj/item/ammo_magazine/mil_rifle/sec/large,/obj/item/ammo_magazine/mil_rifle/sec/large,/obj/item/weapon/gun/projectile/pistol/military/sec)
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

//demolocker
/obj/structure/closet/secure_closet/inftech/ammo
	name = "technician's munition locker"
	req_access = list(access_inftech)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/inftech/ammo/WillContain()
	return list(
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/rcd_ammo/large
		)

