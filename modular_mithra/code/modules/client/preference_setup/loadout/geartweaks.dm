/*
		I have no idea what this does exactly or how it works, but goddamnit I'm gonna make it work.

																								-Tori
*/

/datum/gear_tweak/polychrome
	var/primary
	var/secondary
	var/tertiary

/datum/gear_tweak/polychrome/New()
	src.primary = primary
	src.secondary = secondary
	src.tertiary = tertiary
	..()

/datum/gear_tweak/polychrome/get_contents(var/metadata)
	return "Colors: [english_list(metadata, and_text = ", ")]"

/datum/gear_tweak/polychrome/get_metadata(var/user, var/list/metadata)
	. = list()
	var/primary_color_input = input(usr,"","Choose Primary Color",primary) as color|null	//color input menu, the "|null" adds a cancel button to it.
	if(primary_color_input)	//Checks if the color selected is NULL, rejects it if it is NULL.
		primary = sanitize_hexcolor(primary_color_input, primary)	//formats the selected color properly
		. += primary

	var/secondary_color_input = input(usr,"","Choose Secondary Color",secondary) as color|null
	if(secondary_color_input)
		secondary = sanitize_hexcolor(secondary_color_input, secondary)
		. += secondary

	var/tertiary_color_input = input(usr,"","Choose Tertiary Color",tertiary) as color|null
	if(tertiary_color_input)
		tertiary = sanitize_hexcolor(tertiary_color_input, tertiary)
		. += tertiary
	else return metadata

/datum/gear_tweak/polychrome/get_default()
	. = list()
	for(var/i in 1 to 3)
		. += "#000000"

/datum/gear_tweak/polychrome/tweak_item(var/obj/item/clothing/PC, var/list/metadata)
	PC.primary_color = metadata[1]
	PC.secondary_color = metadata[2]
	PC.tertiary_color = metadata[3]
	PC.update_icon()