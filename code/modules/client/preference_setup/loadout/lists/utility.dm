// "Useful" items - I'm guessing things that might be used at work?
/datum/gear/utility
	sort_category = "Utilidad"
	category = /datum/gear/utility

/datum/gear/utility/briefcase
	display_name = "maletin"
	path = /obj/item/weapon/storage/briefcase

/datum/gear/utility/clipboard
	display_name = "portapapeles"
	path = /obj/item/weapon/material/clipboard

/datum/gear/utility/folder
	display_name = "carpetas"
	path = /obj/item/weapon/folder

/datum/gear/utility/taperecorder
	display_name = "grabadora"
	path = /obj/item/device/taperecorder

/datum/gear/utility/folder/New()
	..()
	var/folders = list()
	folders["carpeta azul"] = /obj/item/weapon/folder/blue
	folders["carpeta gris"] = /obj/item/weapon/folder
	folders["carpeta roja"] = /obj/item/weapon/folder/red
	folders["carpeta blanca"] = /obj/item/weapon/folder/white
	folders["carpeta amarilla"] = /obj/item/weapon/folder/yellow
	gear_tweaks += new/datum/gear_tweak/path(folders)

/datum/gear/utility/paicard
	display_name = "IA personal"
	path = /obj/item/device/paicard

/datum/gear/utility/camera
	display_name = "camara"
	path = /obj/item/device/camera

/datum/gear/utility/photo_album
	display_name = "album de fotos"
	path = /obj/item/weapon/storage/photo_album

/datum/gear/utility/film_roll
	display_name = "rollo de camara"
	path = /obj/item/device/camera_film

/datum/gear/accessory/stethoscope
	display_name = "estetoscopio (medico)"
	path = /obj/item/clothing/accessory/stethoscope
	cost = 2

/datum/gear/utility/pen
	display_name = "Lapicera multicolor"
	path = /obj/item/weapon/pen/multi
	cost = 2

/datum/gear/utility/fancy
	display_name = "lapicera elegante"
	path = /obj/item/weapon/pen/fancy
	cost = 2

/datum/gear/utility/hand_labeler
	display_name = "etiquetadora de mano"
	path = /obj/item/weapon/hand_labeler
	cost = 3

/****************
modular computers
****************/

/datum/gear/utility/cheaptablet
	display_name = "tablet, barata"
	path = /obj/item/modular_computer/tablet/preset/custom_loadout/cheap
	cost = 2

/datum/gear/utility/normaltablet
	display_name = "tablet, avanzada"
	path = /obj/item/modular_computer/tablet/preset/custom_loadout/advanced
	cost = 3

/datum/gear/utility/cheaplaptop
	display_name = "laptop, barata"
	path = /obj/item/modular_computer/laptop/preset/custom_loadout/cheap
	cost = 3

/datum/gear/utility/normallaptop
	display_name = "laptop, avanzada"
	path = /obj/item/modular_computer/laptop/preset/custom_loadout/advanced
	cost = 4

/datum/gear/utility/instrument
	display_name = "Instrumentos Varios"
	description = "Un instrumento para crear musica hermosa. Talento no incluido."
	path = /obj/item/device/synthesized_instrument
	cost = 4

/datum/gear/utility/instrument/New()
	..()
	var/instruments = list()
	instruments["Guitarra"] = /obj/item/device/synthesized_instrument/guitar
	instruments["Guitarra electrica"] = /obj/item/device/synthesized_instrument/guitar/multi
	instruments["Sintetizador"] = /obj/item/device/synthesized_instrument/synthesizer
	instruments["Trompeta"] = /obj/item/device/synthesized_instrument/trumpet
	instruments["Violin"] = /obj/item/device/synthesized_instrument/violin
	gear_tweaks += new/datum/gear_tweak/path(instruments)