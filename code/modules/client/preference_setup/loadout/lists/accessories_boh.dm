/datum/gear/accessory/custom_medal
	display_name = "custom medal"
	description = "A selection of medals, awarded to personnel for significant (or not) accomplishments."
	path = /obj/item/clothing/accessory/medal
	cost = 2

/datum/gear/accessory/custom_medal/New()
	..()
	var/cmedals = list()
	cmedals["iron"] = /obj/item/clothing/accessory/medal/iron
	cmedals["bronze"] = /obj/item/clothing/accessory/medal/bronze
	cmedals["silver"] = /obj/item/clothing/accessory/medal/silver
	cmedals["gold"] = /obj/item/clothing/accessory/medal/gold
	gear_tweaks += new/datum/gear_tweak/path(cmedals)

/datum/gear/clothing/cloak
	display_name = "cloak, colored"
	path = /obj/item/clothing/accessory/cloak
	slot = slot_wear_suit
	flags = GEAR_HAS_COLOR_SELECTION
