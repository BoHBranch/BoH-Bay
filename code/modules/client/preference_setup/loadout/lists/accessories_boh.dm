/datum/gear/accessory/custom_medal
	display_name = "custom medal"
	description = "A selection of medals, awarded to personnel for significant (or not) accomplishments."
	path = /obj/item/clothing/accessory/medal
	flags = GEAR_HAS_CUSTOM_SELECTION
	cost = 2

/datum/gear/accessory/custom_medal/New()
	..()
	var/cmedals = list()
	cmedals["iron"] = /obj/item/clothing/accessory/medal/iron
	cmedals["bronze"] = /obj/item/clothing/accessory/medal/bronze
	cmedals["silver"] = /obj/item/clothing/accessory/medal/silver
	cmedals["gold"] = /obj/item/clothing/accessory/medal/gold
	gear_tweaks += new/datum/gear_tweak/path(cmedals)
