/decl/closet_appearance/secure_closet/torch/sol
	color = COLOR_BABY_BLUE
	extra_decals = list(
		"stripe_vertical_mid_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/torch/sol/rep
	color = COLOR_BABY_BLUE
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/torch/corporate
	color = COLOR_BOTTLE_GREEN
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/torch/corporate/liaison
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_OFF_WHITE,
		"command" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/liaison
	name = "\improper corporate liaison's locker"
	req_access = list(access_liaison)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/corporate/liaison

/obj/structure/closet/secure_closet/liaison/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/tape/random = 3,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/weapon/rig/light/internalaffairs,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/rank/internalaffairs/plain/nt,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/weapon/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger, 50),
		/obj/item/weapon/storage/fakebook,
		/obj/item/device/radio/headset/heads/torchntcommand,
		/obj/item/device/radio/headset/heads/torchntcommand/alt
	)

/decl/closet_appearance/secure_closet/torch/corporate/bodyguard
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_OFF_WHITE,
		"security" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/bodyguard
	name = "\improper corporate protection locker"
	req_access = list(access_liaison)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/corporate/bodyguard

/obj/structure/closet/secure_closet/bodyguard/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/clothing/accessory/storage/holster/armpit,
		/obj/item/gunbox/bodyguard,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/rank/internalaffairs/plain/nt,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/gloves/color/black,
		/obj/item/clothing/head/helmet/nt/guard,
		/obj/item/clothing/suit/armor/pcarrier/medium/nt,
		/obj/item/clothing/accessory/armguards,
		/obj/item/clothing/accessory/legguards,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/clothing/accessory/badge/nanotrasen,
		/obj/item/device/flashlight/maglight,
		/obj/item/device/radio/headset/heads/torchntcommand,
		/obj/item/device/radio/headset/heads/torchntcommand/alt
		)

/obj/structure/closet/secure_closet/representative
	name = "\improper representative's locker"
	req_access = list(access_representative)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/sol/rep

/obj/structure/closet/secure_closet/representative/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/device/camera_film = 2,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/tape/random = 3,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/weapon/rig/light/internalaffairs,
		/obj/item/device/radio/headset/federal,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/rank/internalaffairs/plain/solgov,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/glasses/sunglasses/big,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger, 50)
	)

obj/structure/closet/secure_closet/solguard
	name = "\improper sol agent locker"
	req_access = list(access_sec_guard)
	closet_appearance = /decl/closet_appearance/secure_closet/sol/two

/obj/structure/closet/secure_closet/solguard/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/clothing/accessory/storage/holster/armpit,
		/obj/item/weapon/gun/projectile/pistol/military,
		/obj/item/ammo_magazine/pistol/double = 2,
		/obj/item/ammo_magazine/pistol/double/rubber = 2,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/rank/internalaffairs/plain,
		/obj/item/clothing/suit/storage/toggle/suit/black/sfp,
		/obj/item/clothing/gloves/color/black,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/device/flashlight/maglight,
		/obj/item/device/radio/headset/federal
		)



/obj/structure/closet/secure_closet/blueshield
	name = "\improper judicial protection locker"
	req_access = list(access_adjudicator)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/corporate/bodyguard

/obj/structure/closet/secure_closet/blueshield/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/clothing/accessory/storage/holster/armpit,
		/obj/item/gunbox/bodyguard,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/det,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/gloves/color/black,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/accessory/armguards,
		/obj/item/clothing/accessory/legguards,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/device/radio/headset/headset_com
	)

//equipment closets that everyone on the crew or in research can access, for storing things securely

/obj/structure/closet/secure_closet/crew
	name = "crew equipment locker"
	req_access = list(access_solgov_crew)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/sol

/obj/structure/closet/secure_closet/crew/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/weapon/storage/box
	)

/obj/structure/closet/secure_closet/crew/research
	name = "research equipment locker"
	req_access = list(access_nanotrasen)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/corporate


/obj/structure/closet/secure_closet/guncabinet/sidearm
	name = "sidearm cabinet"
	req_access = list(list(access_armory,access_emergency_armory,access_hos,access_hop,access_ce,access_cmo,access_rd,access_senadv,access_bridge))

/obj/structure/closet/secure_closet/guncabinet/sidearm/WillContain()
	return list(
			/obj/item/clothing/accessory/storage/holster/thigh = 6,
			/obj/item/weapon/storage/box/ammo/solar/full = 1,
			/obj/item/weapon/gun/projectile/pistol/military/alt/solar/cabinet = 6,
	)

/obj/structure/closet/secure_closet/guncabinet/sidearm/small
	name = "personal sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/small/WillContain()
	return list(
			/obj/item/clothing/accessory/storage/holster/thigh = 3,
			/obj/item/weapon/storage/box/ammo/solar/full = 1,
			/obj/item/weapon/gun/projectile/pistol/military/alt/solar/cabinet = 3,
	)

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined
	name = "combined sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/general = 3,
			/obj/item/weapon/storage/box/ammo/solar/full = 1,
		/obj/item/weapon/gun/projectile/pistol/military/alt/solar/cabinet = 3
	)

/obj/structure/closet/secure_closet/guncabinet/PPE
	name = "Bridge primary cabinet"
	req_access = list(list(access_armory,access_emergency_armory,access_hos,access_hop,access_ce,access_cmo,access_rd,access_senadv,access_bridge))

/obj/structure/closet/secure_closet/guncabinet/PPE/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/command = 4,
		/obj/item/clothing/head/helmet/solgov/command = 4
	)
