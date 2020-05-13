/obj/item/clothing/suit/bio_suit/anomaly
	name = "traje de anomalia"
	desc = "Un traje que protege contra las energias exoticas alienigenas y la contaminacion biologica."
	icon_state = "bio_anom"
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_AIRTIGHT

/obj/item/clothing/head/bio_hood/anomaly
	name = "casco de anomalia"
	desc = "Un casco que protege contras las energias exoticas alienigenas y la contaminacion biologica."
	icon_state = "bio_anom"
	item_state = "bio_anom"
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	item_flags = ITEM_FLAG_AIRTIGHT

/obj/item/clothing/suit/space/void/excavation
	name = "traje de excavacion"
	desc = "Un traje impermeable especialmente protegido que aisla contra algunas energias exoticas alienigenas, asi como contra los peligros mas mundanos de la excavacion."
	icon_state = "rig-excavation"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank,/obj/item/device/suit_cooling_unit,/obj/item/stack/flag,/obj/item/weapon/storage/excavation,/obj/item/weapon/pickaxe,/obj/item/device/scanner/health,/obj/item/device/measuring_tape,/obj/item/device/ano_scanner,/obj/item/device/depth_scanner,/obj/item/device/core_sampler,/obj/item/device/gps,/obj/item/weapon/pinpointer/radio,/obj/item/device/radio/beacon,/obj/item/weapon/pickaxe/xeno,/obj/item/weapon/storage/bag/fossils)

/obj/item/clothing/head/helmet/space/void/excavation
	name = "casco de excavacion"
	desc = "Un sofisticado casco de traje impermeable capaz de proteger al usuario de muchas energias exoticas alienigenas."
	icon_state = "rig0-excavation"
	item_state = "excavation-helm"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	light_overlay = "hardhat_light"

/obj/item/clothing/suit/space/void/excavation/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/excavation

/obj/item/weapon/storage/belt/archaeology
	name = "correa dentada de excavacion"
	desc = "Puede contener varios equipos de excavacion."
	icon_state = "gearbelt"
	item_state = ACCESSORY_SLOT_UTILITY
	can_hold = list(
		/obj/item/weapon/storage/box/samplebags,
		/obj/item/device/core_sampler,
		/obj/item/weapon/pinpointer/radio,
		/obj/item/device/radio/beacon,
		/obj/item/device/gps,
		/obj/item/device/measuring_tape,
		/obj/item/device/flashlight,
		/obj/item/weapon/pickaxe,
		/obj/item/device/depth_scanner,
		/obj/item/device/camera,
		/obj/item/weapon/paper,
		/obj/item/weapon/photo,
		/obj/item/weapon/folder,
		/obj/item/weapon/pen,
		/obj/item/weapon/folder,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/anodevice,
		/obj/item/clothing/glasses,
		/obj/item/weapon/wrench,
		/obj/item/weapon/storage/excavation,
		/obj/item/weapon/anobattery,
		/obj/item/device/ano_scanner,
		/obj/item/taperoll,
		/obj/item/weapon/pickaxe/xeno/hand)