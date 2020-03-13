/////////
// Cadet Locker
/////////
/obj/structure/closet/secure_closet/security_torch/cadet
	name = "cadet locker"

/obj/structure/closet/secure_closet/security_torch/cadet/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/light/security,
		/obj/item/clothing/head/helmet/solgov/security,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/device/flash,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/taperoll/police,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/storage/belt/security)

/////////
// Triage Locker
////////
/obj/structure/closet/secure_closet/triagesec
	name = "triage locker"
	req_access = list(access_brig)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/medical

/obj/structure/closet/secure_closet/triagesec/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/security,
		/obj/item/clothing/head/helmet/solgov/security,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/flash,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/device/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gunboxsmall,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/thick/duty/solgov/sec,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/storage/belt/security,
		/obj/item/weapon/material/knife/folding/swiss/sec,
		/obj/item/weapon/storage/belt/medical/emt,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/storage/box/autoinjectors,
		/obj/item/device/scanner/health,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
		/obj/item/clothing/accessory/storage/holster/waist
	)
