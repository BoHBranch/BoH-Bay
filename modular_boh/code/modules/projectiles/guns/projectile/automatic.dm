// Skrell ""Shotgun"", but it fits much better under automatics.

/obj/item/gun/projectile/automatic/skrell
	name = "QX-2 Miniaturized Railgun"
	desc = "Modeled after VT-3, the Qerr Xira-2 or, as refered in Sol, QX-2, is a miniaturized railgun popular with SDTF squadrons. An internal microfusion cell and a sizeable ammo capacity both guarantee reliability even on prolonged engagements."
	icon = 'modular_boh/icons/obj/guns/skrell_shotgun.dmi'
	icon_state = "skrellshotgun"
	item_state = "skrellshotgun"
	safety_icon = "safety"
	item_icons = list(
		slot_l_hand_str = 'modular_boh/icons/mob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'modular_boh/icons/mob/items/righthand_guns.dmi',
	)
	move_delay = 2
	one_hand_penalty = 5
	fire_delay = 5
	wielded_item_state = "skrellshotgun-wielded"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	caliber = CALIBER_SKRELL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/skrell_shotgun
	magazine_type = /obj/item/ammo_magazine/skrell_shotgun
	allowed_magazines = /obj/item/ammo_magazine/skrell_shotgun
	bulk = GUN_BULK_RIFLE
	handle_casings = CLEAR_CASINGS
	firemodes = list()

/obj/item/gun/projectile/automatic/skrell/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "skrellshotgun-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "skrellshotgun"
