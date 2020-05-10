/obj/item/clothing/head/terran
	name = "master UCGNF hat"
	icon = 'maps/torch/icons/obj/obj_head_terran.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_terran.dmi')
	siemens_coefficient = 0.9

/obj/item/clothing/head/terran/navy/service
	name = "UCGNF service cover"
	desc = "A service uniform cover, worn by low-ranking crew within the National Fleet."
	icon_state = "terranservice"
	item_state = "terranservice"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/terran/navy/service/command
	name = "UCGNF command service cover"
	desc = "A service uniform cover, worn by high-ranking crew within the National Fleet."
	icon_state = "terranservice_comm"
	item_state = "terranservice_comm"