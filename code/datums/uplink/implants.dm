/***********
* Implants *
***********/
/datum/uplink_item/item/implants
	category = /datum/uplink_category/implants

/datum/uplink_item/item/implants/imp_freedom
	name = "Freedom Implant"
	desc = "An implant with an emotive trigger that can break you free of restraints. Show Security who has the real upperhand!"
	item_cost = 14
	path = /obj/item/weapon/storage/box/syndie_kit/imp_freedom

/datum/uplink_item/item/implants/imp_compress
	name = "Compressed Matter Implant"
	desc = "An implant with an emotive trigger used to hide a handheld item in your body. \
	Activating it materializes the item in your hand."
	item_cost = 22
	path = /obj/item/weapon/storage/box/syndie_kit/imp_compress

/datum/uplink_item/item/implants/imp_explosive
	name = "Explosive Implant (DANGER!)"
	desc = "An explosive impant activated with a vocal trigger or radio signal. \
	Use the included pad to adjust the settings before implanting."
	item_cost = 16
	path = /obj/item/weapon/storage/box/syndie_kit/imp_explosive

/datum/uplink_item/item/implants/imp_uplink
	name = "Uplink Implant"
	path = /obj/item/weapon/storage/box/syndie_kit/imp_uplink

/datum/uplink_item/item/implants/imp_uplink/New()
	..()
	item_cost = round(DEFAULT_TELECRYSTAL_AMOUNT / 2)
	desc = "This implant holds an uplink containing [IMPLANT_TELECRYSTAL_AMOUNT(DEFAULT_TELECRYSTAL_AMOUNT)] telecrystals, \
	activatable with an emotive trigger. You will have access to it, as long as it is still inside of you."
	
/datum/uplink_item/item/implants/adrenalin
	name = "Adrenalin Implant"
	desc = "An implant with precisely 3 charges. On use it removes any and all none pain related means of crowd control. \
	namely knockdowns, stuns and weakening. Does nothing against pain related crowd control. Usefull in case you get shot \
	in the leg."
	item_cost = 25
	path = /obj/item/weapon/implanter/adrenalin
