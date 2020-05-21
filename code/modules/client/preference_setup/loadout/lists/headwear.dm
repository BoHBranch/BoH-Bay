/datum/gear/head
	sort_category = "Sombreros y Accesorios de Cabeza"
	slot = slot_head
	category = /datum/gear/head
	banned_species = list(SPECIES_PLASMASANS)

/datum/gear/head/beret
	display_name = "boina, coloreable"
	path = /obj/item/clothing/head/beret/plaincolor
	flags = GEAR_HAS_COLOR_SELECTION
	description = "Una boina simple de color liso. Esta no tiene ningun emblema o insignia."

/datum/gear/head/bandana
	display_name = "bandanas"
	path = /obj/item/clothing

/datum/gear/head/bandana/New()
	..()
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(typesof(/obj/item/clothing/mask/bandana) + typesof(/obj/item/clothing/head/bandana))

/datum/gear/head/beanie
	display_name = "gorro, "
	path = /obj/item/clothing/head/beanie
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/bow
	display_name = "lazo para pelo, coloreable"
	path = /obj/item/clothing/head/hairflower/bow
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/flat_cap
	display_name = "gorra plana, coloreable"
	path = /obj/item/clothing/head/flatcap
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/cap
	display_name = "gorras"
	path = /obj/item/clothing/head

/datum/gear/head/cap/New()
	..()
	var/caps = list()
	caps["gorra negra"] = /obj/item/clothing/head/soft/black
	caps["gorra azul"] = /obj/item/clothing/head/soft/blue
	caps["gorra verde"] = /obj/item/clothing/head/soft/green
	caps["gorra gris"] = /obj/item/clothing/head/soft/grey
	caps["gorra de cartero"] = /obj/item/clothing/head/mailman
	caps["gorra naranja"] = /obj/item/clothing/head/soft/orange
	caps["gorra purpura"] = /obj/item/clothing/head/soft/purple
	caps["gorra arcoiris"] = /obj/item/clothing/head/soft/rainbow
	caps["gorra roja"] = /obj/item/clothing/head/soft/red
	caps["gorra blanca"] = /obj/item/clothing/head/soft/mime
	caps["gorra amarilla"] = /obj/item/clothing/head/soft/yellow
	caps["gorra de correo de major bill"] = /obj/item/clothing/head/soft/mbill
	gear_tweaks += new/datum/gear_tweak/path(caps)

/datum/gear/head/hairflower
	display_name = "horquilla de flor"
	path = /obj/item/clothing/head/hairflower

/datum/gear/head/hairflower/New()
	..()
	var/pins = list()
	pins["horquilla azul"] = /obj/item/clothing/head/hairflower/blue
	pins["horquilla rosa"] = /obj/item/clothing/head/hairflower/pink
	pins["horquilla roja"] = /obj/item/clothing/head/hairflower
	pins["horquilla amarilla"] = /obj/item/clothing/head/hairflower/yellow
	gear_tweaks += new/datum/gear_tweak/path(pins)

/datum/gear/head/hardhat
	display_name = "cascos de construccion"
	path = /obj/item/clothing/head/hardhat
	cost = 2

/datum/gear/head/hardhat/New()
	..()
	var/hardhats = list()
	hardhats["casco azul"] = /obj/item/clothing/head/hardhat/dblue
	hardhats["casco naranja"] = /obj/item/clothing/head/hardhat/orange
	hardhats["casco rojo"] = /obj/item/clothing/head/hardhat/red
	hardhats["casco liviando de control de daño"] = /obj/item/clothing/head/hardhat/EMS/DC_light
	hardhats["casco del Emergency Management Bureau"] = /obj/item/clothing/head/hardhat/damage_control/EMB
	hardhats["casco rojo antiguo del Emergency Management Bureau"] = /obj/item/clothing/head/hardhat/damage_control/EMB_Ancient
	hardhats["casco amarillo antiguo del Emergency Management Bureau"] = /obj/item/clothing/head/hardhat/damage_control/EMB_Ancient/yellow
	hardhats["casco blanco antiguo del Emergency Management Bureau"] = /obj/item/clothing/head/hardhat/damage_control/EMB_Ancient/white
	hardhats["casco viejo de autoproteccion"] = /obj/item/clothing/head/hardhat/self_protection/old
	gear_tweaks += new/datum/gear_tweak/path(hardhats)

/datum/gear/head/formalhat
	display_name = "sombreros formales"
	path = /obj/item/clothing/head

/datum/gear/head/formalhat/New()
	..()
	var/formalhats = list()
	formalhats["sombrero de barquero"] = /obj/item/clothing/head/boaterhat
	formalhats["bombin"] = /obj/item/clothing/head/bowler
	formalhats["fedora"] = /obj/item/clothing/head/fedora //m'lady
	formalhats["trilby de pluma"] = /obj/item/clothing/head/feathertrilby
	formalhats["fez"] = /obj/item/clothing/head/fez
	formalhats["sombrero de copa"] = /obj/item/clothing/head/that
	formalhats["fedora marron"] = /obj/item/clothing/head/det
	formalhats["fedora gris"] = /obj/item/clothing/head/det/grey
	gear_tweaks += new/datum/gear_tweak/path(formalhats)

/datum/gear/head/informalhat
	display_name = "sombreros casuales"
	path = /obj/item/clothing/head

/datum/gear/head/informalhat/New()
	..()
	var/informalhats = list()
	informalhats["sombrero cowboy"] = /obj/item/clothing/head/cowboy_hat
	informalhats["ushanka"] = /obj/item/clothing/head/ushanka
	gear_tweaks += new/datum/gear_tweak/path(informalhats)

/datum/gear/head/hijab
	display_name = "hijab, coloreable"
	path = /obj/item/clothing/head/hijab
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/kippa
	display_name = "kippa, coloreable"
	path = /obj/item/clothing/head/kippa
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/turban
	display_name = "turbante, coloreable"
	path = /obj/item/clothing/head/turban
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/taqiyah
	display_name = "taqiyah, coloreable"
	path = /obj/item/clothing/head/taqiyah
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/rastacap
	display_name = "gorro de rastafari"
	path = /obj/item/clothing/head/rastacap

/datum/gear/head/surgical
	display_name = "gorras estandar de cirugia"
	path = /obj/item/clothing/head/surgery
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/surgical/custom
	display_name = "gorra de cirugia, coloreable"
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/welding
	display_name = "mascaras de soldar"
	path = /obj/item/clothing/head/welding

/datum/gear/head/welding/New()
	..()
	var/welding_masks = list()
	welding_masks += /obj/item/clothing/head/welding/demon
	welding_masks += /obj/item/clothing/head/welding/engie
	welding_masks += /obj/item/clothing/head/welding/fancy
	welding_masks += /obj/item/clothing/head/welding/knight
	welding_masks += /obj/item/clothing/head/welding/carp
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(welding_masks)

/datum/gear/head/tankccap
	display_name = "gorra acolchada"
	path = /obj/item/clothing/head/tank

/datum/gear/tactical/balaclava
	display_name = "balaclava"
	path = /obj/item/clothing/mask/balaclava
	slot = slot_wear_mask