//#VESTA.BAY# CUSTOM PLATE CARRIES

/obj/item/clothing/suit/armor/pcarrier/light
	starting_accessories = list(/obj/item/clothing/accessory/armorplate)

/obj/item/clothing/suit/armor/pcarrier/light/nt
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/nt)

/obj/item/clothing/suit/armor/pcarrier/light/press
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/press)

/obj/item/clothing/suit/armor/pcarrier/medium
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches)

/obj/item/clothing/suit/armor/pcarrier/medium/nt
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches, /obj/item/clothing/accessory/armor/tag/nt)

// Cadet Vest
/obj/item/clothing/suit/armor/pcarrier/light/security
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/storage/pouches)

/obj/item/clothing/suit/armor/pcarrier/grey
	name = "grey plate carrier"
	desc = "A lightweight grey plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	item_icons = list(slot_wear_suit_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "pcarrier_grey"

/obj/item/clothing/suit/armor/pcarrier/grey/light
	starting_accessories = list(/obj/item/clothing/accessory/armorplate)

/obj/item/clothing/suit/armor/pcarrier/grey/light/civ
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/civ)

/obj/item/clothing/suit/armor/pcarrier/grey/light/med
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/civ/med)

/obj/item/clothing/suit/armor/pcarrier/ipc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "refitted plate carrier"
	desc = "A modular, compact black plate carrier vest made to securely fit an IPC chassis. It doesn't look like it would fit an organic. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_ipc"
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/armor/pcarrier/blue
	name = "blue plate carrier"
	desc = "A lightweight blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_blue"

/obj/item/clothing/suit/armor/pcarrier/green
	name = "green plate carrier"
	desc = "A lightweight green plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_green"

/obj/item/clothing/suit/armor/pcarrier/green/ipc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "compact green plate carrier"
	desc = "A modular, compact green plate carrier vest made to securely fit an IPC chassis. It doesn't look like it would fit an organic. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_green_ipc"
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/armor/pcarrier/navy
	name = "navy plate carrier"
	desc = "A lightweight navy blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_navy"

/obj/item/clothing/suit/armor/pcarrier/navy/ipc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "compact navy plate carrier"
	desc = "A modular, compact navy plate carrier vest made to securely fit an IPC chassis. It doesn't look like it would fit an organic. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_navy_ipc"
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/armor/pcarrier/blue/ipc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "compact blue plate carrier"
	desc = "A modular, compact blue plate carrier vest made to securely fit an IPC chassis. It doesn't look like it would fit an organic. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_blue_ipc"
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/armor/pcarrier/tan
	name = "tan plate carrier"
	desc = "A lightweight tan plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_tan"

/obj/item/clothing/suit/armor/pcarrier/tan/ipc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "compact tan plate carrier"
	desc = "A modular, compact tan plate carrier vest made to securely fit an IPC chassis. It doesn't look like it would fit an organic. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_tan_ipc"
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/armor/pcarrier/tan/tactical
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "tactical plate carrier"
	icon_state = "pcarrier_tan_tac"
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/tactical, /obj/item/clothing/accessory/storage/pouches/large/tan, /obj/item/clothing/accessory/armguards/tan/tactical, /obj/item/clothing/accessory/legguards/tan/tactical)

/obj/item/clothing/suit/armor/pcarrier/tactical
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "black tactical plate carrier"
	icon_state = "pcarrier_tac"
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/tactical, /obj/item/clothing/accessory/storage/pouches/large, /obj/item/clothing/accessory/armguards/tactical, /obj/item/clothing/accessory/legguards/tactical)

/obj/item/clothing/suit/armor/pcarrier/merc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "combat plate carrier"
	icon_state = "pcarrier_merc"
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/merc, /obj/item/clothing/accessory/armguards/merc, /obj/item/clothing/accessory/legguards/merc, /obj/item/clothing/accessory/storage/pouches/large)

//#VESTA.BAY # CUSTOM KEVLARS

/obj/item/clothing/suit/armor/pcarrier/kevlar/tan
	name = "tan kevlar"
	desc = "A lightweight tan kevlar vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	icon_state = "kevlar_tan"

/obj/item/clothing/suit/armor/pcarrier/kevlar/navy
	name = "tan kevlar"
	desc = "A lightweight tan kevlar vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	icon_state = "kevlar_navy"

/obj/item/clothing/suit/armor/pcarrier/kevlar/blue
	name = "tan kevlar"
	desc = "A lightweight tan kevlar vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	icon_state = "kevlar_blue"

/obj/item/clothing/suit/armor/pcarrier/kevlar/green
	name = "tan kevlar"
	desc = "A lightweight tan kevlar vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	icon_state = "kevlar_green"

//#VESTA.BAY $ CUSTOM ARMGUARDS

/obj/item/clothing/accessory/armguards
	name = "black arm guards"
	desc = "A pair of black arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_override = 'icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "armguards"
	gender = PLURAL
	body_parts_covered = ARMS
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED
		)
	slot = ACCESSORY_SLOT_ARMOR_A

/obj/item/clothing/accessory/armguards/tan/tactical
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "tan arm guards"
	desc = "A pair of tan arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_tan_tac"

/obj/item/clothing/accessory/armguards/tactical
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "arm guards"
	desc = "A pair of arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_tan_tac"

/obj/item/clothing/accessory/armguards/merc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "heavy arm guards"
	desc = "A pair of red-trimmed black arm pads reinforced with heavy armor plating. Attaches to a plate carrier."
	icon_state = "armguards_merc"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED
		)
	siemens_coefficient = 0.3

//#VESTA.BAY # CUSTOM ARMGUARDS

//#VESTA.BAY # CUSTOM LEGGUARDS

/obj/item/clothing/accessory/legguards
	name = "black leg guards"
	desc = "A pair of armored leg pads in black. Attaches to a plate carrier."
	icon_override = 'icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "legguards"
	gender = PLURAL
	body_parts_covered = LEGS
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED
		)
	slot = ACCESSORY_SLOT_ARMOR_L


/obj/item/clothing/accessory/legguards/tan/tactical
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "tactical tan leg guards"
	desc = "A pair of armored leg pads in tan. Attaches to a plate carrier."
	icon_state = "legguards_tan_tac"

/obj/item/clothing/accessory/legguards/tactical
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "tactical leg guards"
	desc = "A pair of armored leg pads. Attaches to a plate carrier."
	icon_state = "legguards_tac"

/obj/item/clothing/accessory/legguards/merc
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	name = "heavy leg guards"
	desc = "A pair of heavily armored leg pads in red-trimmed black. Attaches to a plate carrier."
	icon_state = "legguards_merc"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED
		)
	siemens_coefficient = 0.3

//#VESTA.BAY # CUSTOM LIGHT-PLATED ARMGUARDS AND LEGGUARDS ##########

// Light-plated
/obj/item/clothing/accessory/armguards/light
	name = "arm pads"
	desc = "A pair of arm pads. Attaches to a plate carrier."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/accessory/legguards/light
	name = "leg pads"
	desc = "A pair of leg pads. Attaches to a plate carrier."
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

// Modular sprites.
/obj/item/clothing/accessory/armguards/light/grey
	desc = "A pair of arm pads in grey. Attaches to a plate carrier."
	icon_override = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "armguards_grey"

/obj/item/clothing/accessory/legguards/light/grey
	desc = "A pair of leg pads in grey. Attaches to a plate carrier."
	icon_override = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "legguards_grey"

// Colored light arm guards
/obj/item/clothing/accessory/armguards/light/blue
	desc = "A pair of arm pads in blue. Attaches to a plate carrier."
	icon_state = "armguards_blue"

/obj/item/clothing/accessory/armguards/light/navy
	desc = "A pair of arm pads in navy blue. Attaches to a plate carrier."
	icon_state = "armguards_navy"

/obj/item/clothing/accessory/armguards/light/green
	desc = "A pair of arm pads in green. Attaches to a plate carrier."
	icon_state = "armguards_green"

/obj/item/clothing/accessory/armguards/light/tan
	desc = "A pair of arm pads in tan. Attaches to a plate carrier."
	icon_state = "armguards_tan"

// Colored light leg guards
/obj/item/clothing/accessory/legguards/light/blue
	desc = "A pair of leg pads in blue. Attaches to a plate carrier."
	icon_state = "legguards_blue"

/obj/item/clothing/accessory/legguards/light/navy
	desc = "A pair of leg pads in navy blue. Attaches to a plate carrier."
	icon_state = "legguards_navy"

/obj/item/clothing/accessory/legguards/light/green
	desc = "A pair of leg pads in green. Attaches to a plate carrier."
	icon_state = "legguards_green"

/obj/item/clothing/accessory/legguards/light/tan
	desc = "A pair of leg pads in tan. Attaches to a plate carrier."
	icon_state = "legguards_tan"

//#VESTA.BAY # CUSTOM ARMOR TAGS

/obj/item/clothing/accessory/armor/tag/civ
	name = "\improper CIVILIAN tag"
	desc = "A tag with the word CIVILIAN printed in green lettering on it."
	icon_state = "civtag"
	icon_override = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_boh/icon/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_boh/icon/boh/mob/onmob/onmob_modular_armor.dmi')
	slot_flags = SLOT_BELT

/obj/item/clothing/accessory/armor/tag/civ/med
	name = "\improper medical tag"
	desc = "A tag with green cross printed on it."
	icon_state = "medtag"