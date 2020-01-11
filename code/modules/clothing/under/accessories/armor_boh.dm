/obj/item/clothing/accessory/storage/pouches/grey
	name = "storage pouches"
	desc = "A collection of grey pouches that can be attached to a plate carrier. Carries up to two items."
	icon_override = 'icons/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "pouches_grey"

/obj/item/clothing/accessory/storage/pouches/large/grey
	name = "large storage pouches"
	desc = "A collection of grey pouches that can be attached to a plate carrier. Carries up to four items."
	icon_override = 'icons/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "lpouches_grey"

// Light-plated
/obj/item/clothing/accessory/armguards/grey
	name = "arm guards"
	desc = "A pair of grey arm pads reinforced with light armor plating. Attaches to a plate carrier."
	icon_override = 'icons/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "armguards_grey"
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/accessory/legguards/grey
	name = "leg guards"
	desc = "A pair of light-armored leg pads in grey. Attaches to a plate carrier."
	icon_override = 'icons/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "legguards_grey"
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
		)

// Not really needed if we use hardhats for Civilians, but still putting it in.
/obj/item/clothing/accessory/armor/helmcover/grey
	name = "grey helmet cover"
	desc = "A fabric cover for armored helmets. This one is grey, for some reason."
	icon_override = 'icons/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi', slot_head_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "helmcover_grey"

// Ah shit, here we break G-Convention again.
/obj/item/clothing/accessory/armor/tag/civ
	name = "\improper CIVILIAN tag"
	desc = "A tag with the word CIVILIAN printed in green lettering on it."
	icon_state = "civtag"
	icon_override = 'icons/boh/mob/onmob/onmob_modular_armor.dmi'
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	slot_flags = SLOT_BELT

/obj/item/clothing/accessory/armor/tag/civ/med
	name = "\improper medical tag"
	desc = "A tag with green cross printed on it."
	icon_state = "medtag"
