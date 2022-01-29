/*
This is for standard issue sidearms.
*/
/datum/gear/sikits/guns
	display_name = "Standard Issue Sidearm"
	description = "A sidearm for military personnel."
	cost = 0
	sort_category = "Standard Issue Equipment"
	path = /obj/item/weapon/gun/projectile/
	allowed_branches = MILITARY_BRANCHES

/datum/gear/sikits/guns/New()
	..()
	var/guns = list()
	guns["Jhen Bothus Mk59"] = /obj/item/weapon/gun/projectile/pistol/military/alt/solar/loadout
	guns["Lumoco Mk12"] = /obj/item/weapon/gun/projectile/revolver/medium/sec
	gear_tweaks += new/datum/gear_tweak/path(guns)

/datum/gear/sikits/holsters
	display_name = "Standard Issue Holster"
	description = "A sidearm holster for military personnel."
	cost = 0
	sort_category = "Standard Issue Equipment"
	path = /obj/item/clothing/accessory/storage/holster/
	allowed_branches = MILITARY_BRANCHES

/datum/gear/sikits/holsters/New()
	..()
	var/guns = list()
	guns["shoulder holster"] = /obj/item/clothing/accessory/storage/holster
	guns["armpit holster"] = /obj/item/clothing/accessory/storage/holster/armpit
	guns["waist holster"] = /obj/item/clothing/accessory/storage/holster/waist
	guns["hip holster"] = /obj/item/clothing/accessory/storage/holster/hip
	guns["thigh holster"] = /obj/item/clothing/accessory/storage/holster/thigh
	gear_tweaks += new/datum/gear_tweak/path(guns)
