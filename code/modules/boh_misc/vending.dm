/////////
// Sec
/////////

/obj/machinery/vending/security/accessory
	name = "SecTech - Accessory"
	desc = "A security accessory vendor."
//	product_ads = "Crack capitalist skulls!;Beat some heads in!;Don't forget - harm is good!;Your weapons are right here.;Handcuffs!;Freeze, scumbag!;Don't tase me bro!;Tase them, bro.;Why not have a donut?"
	icon_state = "sec"
	icon_deny = "sec-deny"
	icon_vend = "sec-vend"
	vend_delay = 14
	base_type = /obj/machinery/vending/security
	req_access = list(access_armory)
	products = list(
		/obj/item/clothing/accessory/armguards = 12,
		/obj/item/clothing/accessory/armguards/navy = 8,
		/obj/item/clothing/accessory/armguards/green = 8,
		/obj/item/clothing/accessory/armguards/tan = 8,
		/obj/item/clothing/accessory/armguards/blue = 8,
		/obj/item/clothing/accessory/armguards/riot = 4,
		/obj/item/clothing/accessory/armguards/ballistic = 2,
		/obj/item/clothing/accessory/armguards/ablative = 2,
		/obj/item/clothing/accessory/legguards = 12,
		/obj/item/clothing/accessory/legguards/navy = 8,
		/obj/item/clothing/accessory/legguards/green = 8,
		/obj/item/clothing/accessory/legguards/tan = 8,
		/obj/item/clothing/accessory/legguards/blue = 8,
		/obj/item/clothing/accessory/legguards/riot = 4,
		/obj/item/clothing/accessory/legguards/ballistic = 2,
		/obj/item/clothing/accessory/legguards/ablative = 2,
		/obj/item/clothing/accessory/storage/pouches = 12,
		/obj/item/clothing/accessory/storage/pouches/large = 4,
		/obj/item/clothing/accessory/ubac = 24,
		/obj/item/clothing/accessory/armorplate = 8,
		/obj/item/clothing/accessory/armorplate/medium = 6,
		/obj/item/clothing/accessory/armorplate/tactical = 2,
		/obj/item/clothing/accessory/armorplate/shock = 4)
	contraband = list(/obj/item/clothing/accessory/storage/bandolier = 2,/obj/item/clothing/accessory/storage/drop_pouches/black = 2)
