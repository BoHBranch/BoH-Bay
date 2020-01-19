/obj/structure/closet/secure_closet/squad_lead
	name = "squad leader's locker"
	req_access = list(access_infcom)
	closet_appearance = /decl/closet_appearance/secure_closet/security/hos

/obj/structure/closet/secure_closet/squad_lead/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/device/flash,
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
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/device/flash,
		/obj/item/gunbox/inftech,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/weapon/rcd,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/storage/backpack/dufflebag/syndie/c4,
		/obj/item/weapon/storage/belt/utility,
		/obj/item/weapon/weldpack/bigwelder,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/weapon/storage/box/flares
		)

/obj/structure/closet/secure_closet/infantry
	name = "infantry locker"
	req_access = list(access_infantry)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/infantry/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/device/flash,
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
	options["Ballistic"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/loaded,/obj/item/weapon/gun/energy/gun/secure,/obj/item/weapon/grenade/frag)
	options["Energy"] = list(/obj/item/weapon/gun/energy/laser/secure,/obj/item/weapon/gun/projectile/pistol/military,/obj/item/weapon/grenade/frag/high_yield)
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
	options["Ballistic"] = list(/obj/item/weapon/gun/projectile/automatic/merc_smg,/obj/item/weapon/gun/energy/revolver/secure,)
	options["Energy"] = list(/obj/item/weapon/gun/energy/taser/carbine/ext,/obj/item/weapon/gun/projectile/pistol/magnum_pistol/solar)
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
	options["Ballistic"] = list(/obj/item/weapon/gun/magnetic/railgun/flechette,/obj/item/weapon/magnetic_ammo,/obj/item/weapon/gun/energy/xray/pistol)
	options["Energy"] = list(/obj/item/weapon/gun/energy/xray,/obj/item/weapon/gun/projectile/pistol/military)
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
