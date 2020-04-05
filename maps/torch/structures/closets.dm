/*
 * Torch Excavation
 */

/obj/structure/closet/toolcloset/excavation
	name = "excavation equipment closet"
	desc = "It's a storage unit for excavation equipment."
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/tools

/obj/structure/closet/toolcloset/excavation/WillContain()
	return list(
		/obj/item/weapon/storage/belt/archaeology,
		/obj/item/weapon/storage/excavation,
		/obj/item/device/flashlight/lantern,
		/obj/item/device/ano_scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/core_sampler,
		/obj/item/device/gps,
		/obj/item/weapon/pinpointer/radio,
		/obj/item/device/radio/beacon,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/science,
		/obj/item/weapon/pickaxe,
		/obj/item/device/measuring_tape,
		/obj/item/weapon/pickaxe/xeno/hand,
		/obj/item/weapon/storage/bag/fossils,
		/obj/item/weapon/hand_labeler,
		/obj/item/taperoll/research,
		/obj/item/device/spaceflare
	)

/obj/structure/closet/wardrobe/ptgear
	name = "pt gear wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/white

/obj/structure/closet/wardrobe/ptgear/WillContain()
	return list(
		/obj/item/clothing/under/solgov/pt/expeditionary = 4,
		/obj/item/clothing/shoes/white = 2,
		/obj/item/clothing/shoes/black = 2)

/obj/random/torchcloset //Random closets taking into account torch-specific ones
	name = "random closet"
	desc = "This is a random closet."

/obj/random/torchcloset/spawn_choices()
	return list(/obj/structure/closet,
				/obj/structure/closet/firecloset,
				/obj/structure/closet/emcloset,
				/obj/structure/closet/jcloset_torch,
				/obj/structure/closet/athletic_mixed,
				/obj/structure/closet/toolcloset,
				/obj/structure/closet/toolcloset/excavation,
				/obj/structure/closet/l3closet/general,
				/obj/structure/closet/cabinet,
				/obj/structure/closet/crate,
				/obj/structure/closet/crate/freezer,
				/obj/structure/closet/crate/freezer/rations,
				/obj/structure/closet/crate/internals,
				/obj/structure/closet/crate/trashcart,
				/obj/structure/closet/crate/medical,
				/obj/structure/closet/boxinggloves,
				/obj/structure/closet/secure_closet/crew,
				/obj/structure/closet/secure_closet/crew/research,
				/obj/structure/closet/secure_closet/guncabinet,
				/obj/structure/largecrate,
				/obj/structure/closet/wardrobe/xenos,
				/obj/structure/closet/wardrobe/mixed,
				/obj/structure/closet/wardrobe/suit)

/obj/structure/closet/secure_closet/brig/WillContain()
	return null

/obj/structure/closet/secure_closet/infantry
	name = "infantry locker"
	req_access = list(access_infantry)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/infantry/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/gunbox/infantry,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/device/gps,
		/obj/item/weapon/storage/box/flares
		)

/obj/structure/closet/secure_closet/inftech
	name = "technician's locker"
	req_access = list(access_inftech)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/inftech/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/gunbox/inftech,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/weapon/rcd,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/storage/belt/utility,
		/obj/item/weapon/weldpack/bigwelder,
		/obj/item/weapon/storage/box/flares,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/weapon/plastique,
		/obj/item/weapon/plastique
		)

//demolocker
/obj/structure/closet/secure_closet/inftech/ammo
	name = "technician's munition locker"
	req_access = list(access_inftech)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/inftech/ammo/WillContain()
	return list(
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/weapon/rcd_ammo/large,
		/obj/item/weapon/rcd_ammo/large
		)

/obj/structure/closet/secure_closet/squad_lead
	name = "squad leader's locker"
	req_access = list(access_infcom)
	closet_appearance = /decl/closet_appearance/secure_closet/security/hos

/obj/structure/closet/secure_closet/squad_lead/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/security/tactical,
		/obj/item/gunbox/infcom,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/weapon/storage/firstaid/combat,
		/obj/item/solbanner,
		/obj/item/clothing/suit/armor/pcarrier/medium/sol,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/flares
		)

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
		/obj/item/gunbox,
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
