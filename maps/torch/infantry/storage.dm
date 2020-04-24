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
