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
	item_cost = 24
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

/datum/uplink_item/item/armor/beltholster
	name = "Belt Holster"
	desc = "A tactical belt that goes on your waist. Comes with a built in holster."
	item_cost = 1
	path = /obj/item/weapon/storage/belt/holster/security

/datum/uplink_item/item/armor/holster
	name = "Shoulder Holster"
	desc = "A holster that attached to the shoulder."
	item_cost = 1
	path = /obj/item/clothing/accessory/storage/holster

/datum/uplink_item/item/armor/plate_carrier
	name = "Plate Carrier"
	desc = "A modular plate carrier. It comes unequipped, but can be upgraded with various forms of plate."
	item_cost = 1
	path = /obj/item/clothing/suit/armor/pcarrier

/datum/uplink_item/item/armor/plate_carrierriot
	name = "Riot Carrier"
	desc = "A modular plate carrier. It comes equipped with a riot plate."
	item_cost = 1
	path = /obj/item/clothing/suit/armor/riot

/datum/uplink_item/item/armor/plate_carrierablative
	name = "Ablative Carrier"
	desc = "A modular plate carrier. It comes equipped with an ablative plate."
	item_cost = 1
	path = /obj/item/clothing/suit/armor/laserproof

/datum/uplink_item/item/armor/plate_carrierballistic
	name = "Ballistic Carrier"
	desc = "A modular plate carrier. Comes equipped with a ballistic plate."
	item_cost = 1
	path = /obj/item/clothing/suit/armor/bulletproof

/datum/uplink_item/item/armor/platepouch
	name = "Plate Pouch"
	desc = "A pouch that can attach to a plate carrier. Holds two items."
	item_cost = 1
	path = /obj/item/clothing/accessory/storage/pouches/grey

/datum/uplink_item/item/armor/platepouchlarge
	name = "Large Plate Pouch"
	desc = "A large pouch that can attach to a plate carrier. Holds four items, and slows you down more than a regular pouch."
	item_cost = 1
	path = /obj/item/clothing/accessory/storage/pouches/large/grey

/datum/uplink_item/item/armor/mediumkit
	name = "Medium Plate Kit"
	desc = "Contains a medium chest plate, medium arm guards, medium leg guards, and a medium helmet."
	item_cost = 2
	path = /obj/item/weapon/storage/box/syndie_kit/mediumkit

/datum/uplink_item/item/armor/ablativekit
	name = "Ablative Kit"
	desc = "Contains ablative arm guards, ablative leg guards, and an ablative helmet."
	item_cost = 2
	path = /obj/item/weapon/storage/box/syndie_kit/ablativekit

/datum/uplink_item/item/armor/ballistickit
	name = "Ballistic Kit"
	desc = "Contains ballistic arm guards, riot leg guards, and a ballistic helmet."
	item_cost = 2
	path = /obj/item/weapon/storage/box/syndie_kit/ballistickit

/datum/uplink_item/item/armor/riotkit
	name = "Riot Kit"
	desc = "Contains riot arm guards, riot leg guards, and a riot helmet."
	item_cost = 2
	path = /obj/item/weapon/storage/box/syndie_kit/riotkit

/datum/uplink_item/item/armor/syndiehardsuit
	name = "Chameleon Hardsuit"
	desc = "An advanced hardsuit with built in armor and tactical chameleon plating that enables it to alter it's appearance."
	item_cost = 30

/datum/uplink_item/item/armor/stealtharmor
	name = "Chameleon Armor"
	desc = "A two piece set of chameleon armor that covers the entire body. Due to space and technical limitations, it is only effective against handgun tier weaponry."
	item_cost = 12
	path = /obj/item/weapon/storage/backpack/chameleonarmor/sydie_kit

/datum/uplink_item/item/armor/insulatedcombatgloves
	name = "Insulated Combat Gloves"
	desc = "A pair of gloves that give moderate hand protection. They appear to be insulated."
	item_cost = 2
	path = /obj/item/clothing/gloves/thick/combat