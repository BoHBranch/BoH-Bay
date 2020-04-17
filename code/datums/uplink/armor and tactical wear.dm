/************************
* Armor & Tactical Wear *
************************/
/datum/uplink_item/item/armor
	category = /datum/uplink_category/armor

/datum/uplink_item/item/armor/heavy_armor
	name = "Heavy Armor Vest and Helmet"
	desc = "This satchel holds a combat helmet and fully equipped plate carrier. \
	Suit up, and strap in, things are about to get hectic."
	item_cost = 10
	path = /obj/item/weapon/storage/backpack/satchel/syndie_kit/armor

/datum/uplink_item/item/armor/space_suit
	name = "Voidsuit and Tactical Mask"
	desc = "A satchel containing a non-regulation voidsuit, voidsuit helmet, tactical mask, and oxygen tank. \
	Conceal your identity, while also not dying in space. This fits primarily humans, and might not work with others."
	item_cost = 28
	path = /obj/item/weapon/storage/backpack/satchel/syndie_kit/space

/datum/uplink_item/item/armor/soft_suit
	name = "Soft Suit"
	desc = "A generic soft suit, specially packed into an ordinary box. Once removed, it won't fit back in the box."
	item_cost = 6
	path = /obj/item/weapon/storage/box/syndie_kit/space

/datum/uplink_item/item/armor/balaclava
	name = "Balaclava"
	desc = "For looking tacticool."
	item_cost = 1
	path = /obj/item/clothing/mask/balaclava

/datum/uplink_item/item/armor/bandolier
	name = "Bandolier"
	desc = "Pack it full of ammo and go wild."
	item_cost = 1
	path = /obj/item/clothing/accessory/storage/bandolier

/* Requires tweaking, do not enable until televest is reworked.
/datum/uplink_item/item/armor/teleportervest
	name = "Reactive Teleporter Vest"
	desc = "An advanced piece of technology that teleports the users out of harms way. It's sensors are rather sensitive, and there is no way to control where it goes."
	item_cost = 20
	path = /obj/item/clothing/suit/armor/reactive
	*/