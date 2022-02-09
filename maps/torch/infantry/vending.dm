/obj/machinery/vending/infantry
	name = "InfTech"
	desc = "A munition vendor."
	icon_state = "sec"
	icon_deny = "sec-deny"
	icon_vend = "sec-vend"
	vend_delay = 14
	req_access = list(access_infantry)
	products = list(
		/obj/item/ammo_magazine/mil_rifle/sec = 12,
		/obj/item/ammo_magazine/mil_rifle/sec/large = 2,
		/obj/item/ammo_magazine/pistol/double = 8,
		/obj/item/ammo_magazine/shotholder/sabot = 6,
		/obj/item/ammo_magazine/smg = 2,
		/obj/item/stack/medical/advanced/bruise_pack = 4,
		/obj/item/stack/medical/advanced/ointment = 4)