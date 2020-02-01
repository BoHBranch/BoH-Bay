// Pretty please, rework sprites for cloaks.

/obj/item/clothing/suit/cloak
	name = "cloak"
	desc = "A simple, bland cloak."
	icon_state = "cloak"
	icon = 'maps/torch/icons/obj/obj_suit_boh.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/onmob_suit_boh.dmi')
	body_parts_covered = UPPER_TORSO|ARMS
	siemens_coefficient = 0.9
	allowed = list(
		/obj/item/weapon/tank/emergency,
		/obj/item/device/flashlight,
		/obj/item/clothing/head/soft,
		/obj/item/clothing/head/beret,
		/obj/item/device/radio,
		/obj/item/weapon/pen
	)
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL, ACCESSORY_SLOT_RANK)

/obj/item/clothing/suit/cloak/dress
	name = "\improper NTEF boatcloak"
	desc = "A fancy NTEF dress boatcloak with silver ribbon. Somehow still fashionable in this century."
	icon_state = "boatcloak"

/obj/item/clothing/suit/cloak/dress/command
	name = "\improper NTEF command boatcloak"
	desc = "A fancy NTEF dress boatcloak with golden ribbon. Somehow still fashionable in this century."
	icon_state = "boatcloak_com"

/obj/item/clothing/suit/cloak/command
	name = "command cloak"
	desc = "A white NTEF dress cloak with gold details."
	icon_state = "cloak_com"

/obj/item/clothing/suit/cloak/command/support
	name = "command support cloak"

/obj/item/clothing/suit/cloak/engineering
	name = "engineering cloak"
	desc = "A white NTEF dress cloak with orange details."
	icon_state = "cloak_eng"

/obj/item/clothing/suit/cloak/explorer
	name = "explorer cloak"
	desc = "A white NTEF dress cloak with purple details."
	icon_state = "cloak_exp"

/obj/item/clothing/suit/cloak/medical
	name = "medical cloak"
	desc = "A white NTEF dress cloak with light-blue details."
	icon_state = "cloak_med"

/obj/item/clothing/suit/cloak/security
	name = "security cloak"
	desc = "A white NTEF dress cloak with red details."
	icon_state = "cloak_sec"

/obj/item/clothing/suit/cloak/service
	name = "service cloak"
	desc = "A white NTEF dress cloak with green details."
	icon_state = "cloak_service"

/obj/item/clothing/suit/cloak/supply
	name = "supply cloak"
	desc = "A white NTEF dress cloak with brown details."
	icon_state = "cloak_supply"
