/obj/machinery/vending/medals
	name = "Medalware"
	desc = "A vendor for medals."
	product_ads = "You ever wanted to pretend to be cool?;Hey, tough guy...;Get your medal!"
	icon_state = "medals"
	icon_vend = "medals-vend"
	icon_deny = "medals-deny"
	base_type = /obj/machinery/vending/medals
	req_access = list(access_bridge)//Intended for ranking crew to access.
	products = list(
	/obj/item/clothing/accessory/medal/solgov/iron/star = 12,
	/obj/item/clothing/accessory/medal/solgov/iron/sol = 12,
	/obj/item/clothing/accessory/medal/solgov/bronze/heart = 12,
	/obj/item/clothing/accessory/medal/solgov/bronze/sol = 12,
	/obj/item/clothing/accessory/medal/solgov/silver/sword = 12,
	/obj/item/clothing/accessory/medal/solgov/silver/sol = 12,
	/obj/item/clothing/accessory/medal/solgov/gold/star = 12,
	/obj/item/clothing/accessory/medal/solgov/gold/sol = 12,
	/obj/item/clothing/accessory/medal/solgov/heart = 12,
	/obj/item/clothing/accessory/medal/silver/nanotrasen = 12,
	/obj/item/clothing/accessory/medal/bronze/nanotrasen = 12,
	/obj/item/clothing/accessory/medal/iron/nanotrasen = 12
	)


	contraband = list(/obj/item/clothing/accessory/medal/solgov/gold/crest = 1,/obj/item/clothing/accessory/medal/solgov/gold/sun = 1,/obj/item/clothing/accessory/medal/gold/nanotrasen = 1)