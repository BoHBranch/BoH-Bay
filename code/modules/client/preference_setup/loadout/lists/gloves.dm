/datum/gear/gloves
	cost = 1
	slot = slot_gloves
	sort_category = "Guantes y Accesorios de Mano"
	category = /datum/gear/gloves

/datum/gear/gloves/colored
	display_name = "guantes, coloreables"
	flags = GEAR_HAS_COLOR_SELECTION
	path = /obj/item/clothing/gloves/color

/datum/gear/gloves/latex
	display_name = "guantes de latex"
	path = /obj/item/clothing/gloves/latex
	cost = 2

/datum/gear/gloves/nitrile
	display_name = "guantes de nitrilo"
	path = /obj/item/clothing/gloves/latex/nitrile
	cost = 2

/datum/gear/gloves/rainbow
	display_name = "guantes arcorirs"
	path = /obj/item/clothing/gloves/rainbow

/datum/gear/gloves/evening
	display_name = "guantes de gala, coloreables"
	path = /obj/item/clothing/gloves/color/evening
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/ring
	display_name = "anillo"
	path = /obj/item/clothing/ring
	cost = 2

/datum/gear/ring/New()
	..()
	var/ringtype = list()
	ringtype["anillo CTI"] = /obj/item/clothing/ring/cti
	ringtype["anillo de la Mariner University"] = /obj/item/clothing/ring/mariner
	ringtype["anillo de casamiento"] = /obj/item/clothing/ring/engagement
	ringtype["anillo de sello"] = /obj/item/clothing/ring/seal/signet
	ringtype["anillo masonico"] = /obj/item/clothing/ring/seal/mason
	ringtype["anillo de acero"] = /obj/item/clothing/ring/material/steel
	ringtype["anillo de bronce"] = /obj/item/clothing/ring/material/bronze
	ringtype["anillo de plata"] = /obj/item/clothing/ring/material/silver
	ringtype["anillo de oro"] = /obj/item/clothing/ring/material/gold
	ringtype["anillo de platino"] = /obj/item/clothing/ring/material/platinum
	ringtype["anillo de cristal"] = /obj/item/clothing/ring/material/glass
	ringtype["anillo de madera"] = /obj/item/clothing/ring/material/wood
	ringtype["anillo de plastico"] = /obj/item/clothing/ring/material/plastic
	gear_tweaks += new/datum/gear_tweak/path(ringtype)

/datum/gear/gloves/botany
	display_name = "guantes de botanica"
	path = /obj/item/clothing/gloves/thick/botany
	cost = 2
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/chef, /datum/job/bartender, /datum/job/assistant)

/datum/gear/gloves/work
	display_name = "guantes de trabajo"
	path = /obj/item/clothing/gloves/thick
	cost = 2