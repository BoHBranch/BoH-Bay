/////////
// 'bio' cart
/////////
/obj/structure/closet/crate/secure/biohazard/ascent
	req_access = list(access_ascent)
	color = "#a33fbf"

/obj/structure/closet/crate/secure/biohazard/ascent/blanks/WillContain()
	return list(/obj/structure/closet/body_bag/cryobag/blank)

/obj/structure/closet/crate/secure/biohazard/ascent/blanks/can_close()
	for(var/obj/structure/closet/closet in get_turf(src))
		if(closet != src && !(istype(closet, /obj/structure/closet/body_bag/cryobag)))
			return 0
	return 1

//# BOH-BAY # INFANTRY LOCKERS #
/singleton/closet_appearance/secure_closet/torch/security/infantry
	extra_decals = list(
		"stripe_vertical_mid_full" = "#429661",
		"infantry" = "#429661"
	)

/singleton/closet_appearance/secure_closet/security/infantry/squad_lead
	extra_decals = list(
		"stripe_vertical_left_full" =  "#429661",
		"stripe_vertical_right_full" = "#429661",
		"stripe_vertical_mid_full" =  COLOR_CLOSET_GOLD,
		"infantry" = "#429661"
	)

/obj/structure/closet/secure_closet/infantry
	name = "infantry locker"
	req_access = list(access_infantry)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/security/infantry

/obj/structure/closet/secure_closet/infantry/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/device/gps,
		/obj/item/gunbox/infantry,
		/obj/item/storage/box/ammo/explo_shells
		)

/obj/structure/closet/secure_closet/inftech
	name = "technician's locker"
	req_access = list(access_inftech)
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/inftech/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/storage/box/ammo/explo_shells,
		/obj/item/gunbox/inftech,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol
		)

//demolocker
/obj/structure/closet/secure_closet/inftech/ammo
	name = "technician's support locker"
	req_access = list(access_inftech)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/security/infantry

/obj/structure/closet/secure_closet/inftech/ammo/WillContain()
	return list(
		/obj/item/ammo_magazine/mil_rifle/sec/large,
		/obj/item/ammo_magazine/mil_rifle/sec/large,
		/obj/item/ammo_magazine/mil_rifle/sec/large
		)

/obj/structure/closet/secure_closet/squad_lead
	name = "squad leader's locker"
	req_access = list(access_infcom)
	closet_appearance = /singleton/closet_appearance/secure_closet/security/infantry/squad_lead

/obj/structure/closet/secure_closet/squad_lead/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/solbanner,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/gunbox/infcom,
		/obj/item/gunbox/infcom/secondary,
		/obj/item/device/gps,
		/obj/item/storage/box/ammo/explo_shells,
		)

//## BOH-BAY # INFANTRY LOCKERS #

//## BOH-BAY # PDAV LOCKER #

/obj/structure/closet/secure_closet/psiadvisor
	name = "psionic advisor's locker"
	req_access = list(access_psiadvisor)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/command

/obj/structure/closet/secure_closet/psiadvisor/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/pen,
		/obj/item/device/tape/random,
		/obj/item/device/taperecorder,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/material/clipboard,
		/obj/item/folder/blue,
		/obj/item/device/radio/headset/headset_com,
		/obj/item/device/radio/headset/headset_com/alt,
		/obj/item/storage/belt/general,
		/obj/item/device/flashlight,
		/obj/item/storage/box/psykerimplants,
		/obj/item/storage/box/psykerimplants,
		/obj/item/clothing/suit/storage/toggle/labcoat/foundation,
		/obj/item/clothing/under/det/grey,
		/obj/item/clothing/gloves/white,
		/obj/item/clothing/shoes/dress,
		/obj/item/storage/box/large/psinullers,
		/obj/item/gunbox/psyker,
		/obj/item/storage/secure/briefcase/jerraman,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger))
	)

//## BOH-BAY # SECURITY CADET #

/obj/structure/closet/secure_closet/security_torch/cadet
	name = "cadet locker"

/obj/structure/closet/secure_closet/security_torch/cadet/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/light/security,
		/obj/item/clothing/head/helmet/solgov/security,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/device/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/melee/baton/loaded,
		/obj/item/clothing/glasses/hud/security/prot,
		/obj/item/taperoll/police,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/belt/security)

//## BOH-BAY # SEA MARINE #

/obj/structure/closet/secure_closet/smcattache
	name = "marine attache's locker"
	req_access = list(access_senadv)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/command

/obj/structure/closet/secure_closet/smcattache/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/radio/headset/smcattache,
		/obj/item/device/radio/headset/smcattache/alt,
		/obj/item/storage/belt/general,
		/obj/item/storage/belt/holster/general,
		/obj/item/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/material/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/folder/blue,
		/obj/item/material/knife/folding/swiss,
		/obj/item/gunbox,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger))
	)

//Hestia Anti-Boarding closets//
/obj/structure/closet/secure_closet/guncabinet/antiboarding
	name = "gun cabinet"
	req_access = list(access_armory)
	icon = 'icons/obj/structures/guncabinet.dmi'
	closet_appearance = null

/obj/structure/closet/secure_closet/guncabinet/antiboarding/mask
	name = "mask cabinet"
	req_access = list(access_armory)
	icon = 'icons/obj/structures/guncabinet.dmi'
	closet_appearance = null

/obj/structure/closet/secure_closet/guncabinet/antiboarding/grenades
	name = "grenade cabinet"
	req_access = list(access_armory)
	icon = 'icons/obj/structures/guncabinet.dmi'
	closet_appearance = null

//Federal Protection Agent closet

/obj/structure/closet/secure_closet/sfpagent
	name = "\improper federal protection agent's locker"
	req_access = list(access_representative_guard)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/sol/rep

/obj/structure/closet/secure_closet/sfpagent/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/clothing/accessory/storage/holster/armpit,
		/obj/item/storage/secure/briefcase,
		/obj/item/clothing/shoes/laceup,
		/obj/item/gunbox,
		/obj/item/material/clipboard,
		/obj/item/folder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/radio/headset/headset_com,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/rank/internalaffairs/plain/solgov,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/storage/belt/holster/general,
		/obj/item/armorbox/sol,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger, 50)
	)
