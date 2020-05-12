// Stuff worn on the ears. Items here go in the "ears" sort_category but they must not use
// the slot_r_ear or slot_l_ear as the slot, or else players will spawn with no headset.
/datum/gear/ears
	display_name = "orejeras"
	path = /obj/item/clothing/ears/earmuffs
	sort_category = "Earwear"

/datum/gear/headphones
	display_name = "auriculares"
	path = /obj/item/clothing/ears/headphones
	sort_category = "Earwear"

/datum/gear/earrings
	display_name = "pendiente"
	path = /obj/item/clothing/ears/earring
	sort_category = "Earwear"

/datum/gear/earrings/New()
	..()
	var/earrings = list()
	earrings["tachon de perla"] = /obj/item/clothing/ears/earring/stud
	earrings["tachon de cristal"] = /obj/item/clothing/ears/earring/stud/glass
	earrings["tachon de madera"] = /obj/item/clothing/ears/earring/stud/wood
	earrings["tachon de hierro"] = /obj/item/clothing/ears/earring/stud/iron
	earrings["tachon de acero"] = /obj/item/clothing/ears/earring/stud/steel
	earrings["tachon de plata"] = /obj/item/clothing/ears/earring/stud/silver
	earrings["tachon de oro"] = /obj/item/clothing/ears/earring/stud/gold
	earrings["tachon de platino"] = /obj/item/clothing/ears/earring/stud/platinum
	earrings["tachon de diamante"] = /obj/item/clothing/ears/earring/stud/diamond
	earrings["pendiente de cristal"] = /obj/item/clothing/ears/earring/dangle/glass
	earrings["pendiente de madera"] = /obj/item/clothing/ears/earring/dangle/wood
	earrings["pendiente de hierro"] = /obj/item/clothing/ears/earring/dangle/iron
	earrings["pendiente de acero"] = /obj/item/clothing/ears/earring/dangle/steel
	earrings["pendiente de plata"] = /obj/item/clothing/ears/earring/dangle/silver
	earrings["pendiente de oro"] = /obj/item/clothing/ears/earring/dangle/gold
	earrings["pendiente de platino"] = /obj/item/clothing/ears/earring/dangle/platinum
	earrings["pendiente de diamante"] = /obj/item/clothing/ears/earring/dangle/diamond
	gear_tweaks += new/datum/gear_tweak/path(earrings)
