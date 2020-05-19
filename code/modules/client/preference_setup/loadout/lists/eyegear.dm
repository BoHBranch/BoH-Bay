/datum/gear/eyes
	sort_category = "Anteojos y Gafas"
	category = /datum/gear/eyes
	slot = slot_glasses

/datum/gear/eyes/glasses
	display_name = "anteojos de prescripcion"
	path = /obj/item/clothing/glasses/prescription

/datum/gear/eyes/eyepatch
	display_name = "parche de ojo"
	path = /obj/item/clothing/glasses/eyepatch

/datum/gear/eyes/fashionglasses
	display_name = "anteojos"
	path = /obj/item/clothing/glasses

/datum/gear/eyes/fashionglasses/New()
	..()
	var/glasses = list()
	glasses["anteojos verdes"] = /obj/item/clothing/glasses/prescription/gglasses
	glasses["anteojos hipster"] = /obj/item/clothing/glasses/prescription/hipster
	glasses["monoculo"] = /obj/item/clothing/glasses/monocle
	glasses["gafas escaner"] = /obj/item/clothing/glasses/prescription/scanners
	gear_tweaks += new/datum/gear_tweak/path(glasses)

/datum/gear/eyes/sciencegoggles
	display_name = "Gafas de Ciencias"
	path = /obj/item/clothing/glasses/science

/datum/gear/eyes/sciencegoggles/prescription
	display_name = "Gafas de Ciencias de prescripcion"
	path = /obj/item/clothing/glasses/science/prescription
/datum/gear/eyes/security
	display_name = "HUD de Seguridad"
	path = /obj/item/clothing/glasses/hud/security

/datum/gear/eyes/security/prescription
	display_name = "HUD de Seguridad de prescripcion"
	path = /obj/item/clothing/glasses/hud/security/prescription

/datum/gear/eyes/security/sunglasses
	display_name = "Gafas de sol HUD de Seguridad"
	path = /obj/item/clothing/glasses/sunglasses/sechud

/datum/gear/eyes/security/aviators
	display_name = "Aviadores HUD de Seguridad"
	path = /obj/item/clothing/glasses/sunglasses/sechud/toggle

/datum/gear/eyes/security/ipatch
	display_name = "HUDpatch de Seguridad"
	path = /obj/item/clothing/glasses/eyepatch/hud/security
	cost = 2

/datum/gear/eyes/medical
	display_name = "HUD Medico"
	path = /obj/item/clothing/glasses/hud/health

/datum/gear/eyes/medical/prescription
	display_name = "HUD Medico de prescripcion"
	path = /obj/item/clothing/glasses/hud/health/prescription

/datum/gear/eyes/medical/visor
	display_name = "Visores HUD Medicos"
	path = /obj/item/clothing/glasses/hud/health/visor
	cost = 2

/datum/gear/eyes/medical/ipatch
	display_name = "HUDpatch Medico"
	path = /obj/item/clothing/glasses/eyepatch/hud/medical
	cost = 2

/datum/gear/eyes/meson
	display_name = "Gafas Meson"
	path = /obj/item/clothing/glasses/meson
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/engineer, /datum/job/mining, /datum/job/scientist, /datum/job/rd)

/datum/gear/eyes/meson/prescription
	display_name = "Gafas Meson de prescripcion"
	path = /obj/item/clothing/glasses/meson/prescription

/datum/gear/eyes/meson/ipatch
	display_name = "HUDpatch Meson"
	path = /obj/item/clothing/glasses/eyepatch/hud/meson
	cost = 2

/datum/gear/eyes/material
	display_name = "Gafas de Material"
	path = /obj/item/clothing/glasses/material
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/engineer, /datum/job/mining)

/datum/gear/eyes/shades/
	display_name = "gafas de sol"
	path = /obj/item/clothing/glasses/sunglasses
	cost = 3

/datum/gear/eyes/shades/sunglasses
	display_name = "gafas de sol gruesas"
	path = /obj/item/clothing/glasses/sunglasses/big
	cost = 3

/datum/gear/eyes/shades/prescriptionsun
	display_name = "gafas de sol de prescripcion"
	path = /obj/item/clothing/glasses/sunglasses/prescription
	cost = 3

/datum/gear/eyes/hudpatch
	display_name = "iPatch"
	path = /obj/item/clothing/glasses/eyepatch/hud

/datum/gear/eyes/blindfold
	display_name = "venda para ojos"
	path = /obj/item/clothing/glasses/blindfold
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/eyes/janitor
	display_name = "HUD de Conserje"
	path = /obj/item/clothing/glasses/hud/janitor
	cost = 2
	allowed_roles = list(/datum/job/janitor)

/datum/gear/eyes/janitor/prescription
	display_name = "HUD de Conserje con prescripcion"
	path = /obj/item/clothing/glasses/hud/janitor/prescription