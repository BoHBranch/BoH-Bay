/obj/item/clothing/suit/armor/pcarrier/grey
	name = "grey plate carrier"
	desc = "A lightweight grey plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "pcarrier_grey"

/obj/item/clothing/suit/armor/pcarrier/grey/light
	starting_accessories = list(/obj/item/clothing/accessory/armorplate)

/obj/item/clothing/suit/armor/pcarrier/grey/light/civ
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/civ)

/obj/item/clothing/suit/armor/pcarrier/grey/light/med
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/civ/med)
