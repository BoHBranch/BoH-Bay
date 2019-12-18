/obj/item/mech_equipment/mounted_system/projectile
	name = "HPSV 'Ravager' 7mm autorifle"
	desc = "An exosuit-mounted 7mm carbine. Handle with care."
	icon_state = "mech_uac2"
	holding_type = /obj/item/weapon/gun/projectile/automatic/sec_smg/mech
	restricted_hardpoints = list(HARDPOINT_LEFT_HAND, HARDPOINT_RIGHT_HAND)
	restricted_software = list(MECH_SOFTWARE_WEAPONS)


/obj/item/weapon/gun/projectile/automatic/sec_smg/mech
	magazine_type = /obj/item/ammo_magazine/smg_top/mecha
	allowed_magazines = /obj/item/ammo_magazine/smg_top/mecha
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=0, burst_accuracy=list(0,0,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=0, burst_accuracy=list(0,0,-1,-1,-1), dispersion=list(0.6, 0.6, 0.6, 0.6, 0.6)),
		)

/obj/item/ammo_magazine/smg_top/mecha
	name = "large magazine"
	desc = "A large magazine for a mech's gun. Looks way too big for a normal gun."
	icon_state = "smg_top"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/small
	matter = list(MATERIAL_STEEL = 12000)
	caliber = CALIBER_PISTOL_SMALL
	max_ammo = 90

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