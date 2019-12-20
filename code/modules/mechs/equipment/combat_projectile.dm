

//Procs.

/obj/item/ammo_magazine/mecha/attack_self(mob/user)
	to_chat(user, SPAN_WARNING("It's pretty hard to extract ammo from a magazine that fits on a mech. You'll have to do it one round at a time."))
	return

/obj/item/mech_equipment/mounted_system/projectile/attackby(var/obj/item/O as obj, mob/user as mob)
	var/obj/item/weapon/gun/projectile/automatic/A = holding
	if(istype(O, /obj/item/weapon/crowbar))
		A.unload_ammo(user)
		to_chat(user, SPAN_NOTICE("You remove the ammo magazine from the [src]."))
	if(istype(O, A.magazine_type))
		A.load_ammo(O, user)
		to_chat(user, SPAN_NOTICE("You load the ammo magazine into the [src]."))

/obj/item/mech_equipment/mounted_system/projectile/attack_self(var/mob/user)
	. = ..()
	if(. && holding)
		var/obj/item/weapon/gun/M = holding
		return M.switch_firemodes(user)

/obj/item/weapon/gun/projectile/automatic/get_hardpoint_status_value()
	if(!isnull(ammo_magazine))
		return ammo_magazine.stored_ammo.len
	else
		return null

/obj/item/weapon/gun/projectile/automatic/get_hardpoint_maptext()
	if(!isnull(ammo_magazine))
		return "[ammo_magazine.stored_ammo.len]/[ammo_magazine.max_ammo]"
	else
		return 0

//Weapons below this.
/obj/item/mech_equipment/mounted_system/projectile
	name = "mounted submachine gun"
	icon_state = "mech_uac2"
	holding_type = /obj/item/weapon/gun/projectile/automatic/sec_smg/mech
	restricted_hardpoints = list(HARDPOINT_LEFT_HAND, HARDPOINT_RIGHT_HAND)
	restricted_software = list(MECH_SOFTWARE_WEAPONS)


/obj/item/weapon/gun/projectile/automatic/sec_smg/mech
	magazine_type = /obj/item/ammo_magazine/mecha/smg_top/
	allowed_magazines = /obj/item/ammo_magazine/mecha/smg_top
	one_hand_penalty=0
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=0, burst_accuracy=list(0,0,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=0, burst_accuracy=list(0,0,-1,-1,-1), dispersion=list(0.6, 0.6, 0.6, 0.6, 0.6)),
		)

/obj/item/mech_equipment/mounted_system/projectile/assault_rifle
	name = "mounted assault rifle"
	icon_state = "mech_uac2"
	holding_type = /obj/item/weapon/gun/projectile/automatic/assault_rifle/mech
	restricted_hardpoints = list(HARDPOINT_LEFT_HAND, HARDPOINT_RIGHT_HAND)
	restricted_software = list(MECH_SOFTWARE_WEAPONS)

/obj/item/weapon/gun/projectile/automatic/assault_rifle/mech
	magazine_type = /obj/item/ammo_magazine/mech/rifle
	allowed_magazines = /obj/item/ammo_magazine/mech/rifle
	one_hand_penalty=0
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    one_hand_penalty=0, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=0, burst_accuracy=list(0,-1,-2,-3,-3), dispersion=list(0.6, 0.6, 0.6, 1.2, 1.5)),
		)

/obj/item/mech_equipment/mounted_system/projectile/bullpup
	name = "mounted bullpup rifle"
	icon_state = "mech_uac2"
	holding_type = /obj/item/weapon/gun/projectile/automatic/bullpup_rifle/mech
	restricted_hardpoints = list(HARDPOINT_LEFT_HAND, HARDPOINT_RIGHT_HAND)
	restricted_software = list(MECH_SOFTWARE_WEAPONS)

/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/mech
	magazine_type = /obj/item/ammo_magazine/mech/mil_rifle
	allowed_magazines = /obj/item/ammo_magazine/mech/mil_rifle
	one_hand_penalty=0
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=null,    move_delay=null, use_launcher=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, one_hand_penalty=0, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0))
		)

//magazines below this.

/obj/item/ammo_magazine/mecha/smg_top
	name = "large 7mm magazine"
	desc = "A large magazine for a mech's gun. Looks way too big for a normal gun."
	icon_state = "smg_top"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/small
	matter = list(MATERIAL_STEEL = 7000)
	caliber = CALIBER_PISTOL_SMALL
	max_ammo = 90

/obj/item/ammo_magazine/mech/rifle
	name = "large assault rifle magazine"
	icon_state = "assault_rifle"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE
	matter = list(MATERIAL_STEEL = 9000)
	ammo_type = /obj/item/ammo_casing/rifle
	max_ammo = 100

/obj/item/ammo_magazine/mech/mil_rifle
	name = "massive assault rifle magazine"
	icon_state = "bullup"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE_MILITARY
	matter = list(MATERIAL_STEEL = 9000)
	ammo_type = /obj/item/ammo_casing/rifle/military
	max_ammo = 75
	multiple_sprites = 1
