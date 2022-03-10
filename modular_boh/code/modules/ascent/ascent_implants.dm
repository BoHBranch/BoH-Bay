/////////
// Implants
/////////
/obj/item/weapon/implant/translator/natural/ascent
	origin_tech = list(TECH_BIO = 10)
	learning_threshold = 1
	max_languages = 25 //Absolutely not required, but whatever.

/obj/item/weapon/implantcase/ascent
	name = "glass case - 'operative translation device'"
	imp = /obj/item/weapon/implant/translator/natural/ascent

/obj/item/weapon/storage/box/ascentimplants
	name = "operative translators"
	desc = "Box of stuff used to implant translation software, designed to sync up with the Mantid physiology."
	icon_state = "implant"
	item_state = "syringe_kit"
	startswith = list(/obj/item/weapon/implanter = 1,
				      /obj/item/weapon/implantcase/ascent = 12)
