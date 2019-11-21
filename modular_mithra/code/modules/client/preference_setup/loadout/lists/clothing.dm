/datum/gear/uniform/polychrome
	display_name = "polychromic clothing selection"
	path = /obj/item/clothing/under/polychromic

/datum/gear/uniform/polychrome/New()
	..()
	var/list/polychromes = list()
	for(var/polychromic in typesof(/obj/item/clothing/under/polychromic))
		var/obj/item/clothing/under/polychromic/clothes_type = polychromic
		polychromes[initial(clothes_type.name)] = clothes_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(polychromes))
	gear_tweaks += new /datum/gear_tweak/polychrome()