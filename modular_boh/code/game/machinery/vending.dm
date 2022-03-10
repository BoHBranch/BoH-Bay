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
	req_access = list(access_security)
	products = list(
		/obj/item/clothing/accessory/armguards = 6,
		/obj/item/clothing/accessory/armguards/navy = 6,
		/obj/item/clothing/accessory/legguards = 6,
		/obj/item/clothing/accessory/legguards/navy = 6,
		/obj/item/clothing/accessory/storage/holster/hip = 6,
		/obj/item/clothing/accessory/storage/holster/thigh = 6,
		/obj/item/clothing/accessory/storage/pouches = 6,
		/obj/item/clothing/accessory/storage/pouches/large = 6,
		/obj/item/clothing/accessory/armorplate = 6,
		/obj/item/clothing/accessory/armorplate/medium = 6,)
	contraband = list(/obj/item/clothing/accessory/storage/bandolier = 2,/obj/item/clothing/accessory/storage/drop_pouches/black = 2)

/obj/machinery/vending/boozeomat
	name = "\improper Booze-O-Mat"
	desc = "A refrigerated vending unit for alcoholic beverages and alcoholic beverage accessories."
	icon_state = "fridge_dark"
	icon_deny = "fridge_dark-deny"
	products = list(/obj/item/weapon/reagent_containers/food/drinks/glass2/square = 10,
					/obj/item/weapon/reagent_containers/food/drinks/flask/barflask = 5,
					/obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/absinthe = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/baijiu = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/blackstrap = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/bluecuracao = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/cachaca = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/champagne = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/cognac = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/gin = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/herbal = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/jagermeister = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/kahlua = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/melonliquor = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing =5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/prosecco = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/rakia = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/rum = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/sake = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/soju = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/tequilla = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/vermouth = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/llanbrydewhiskey = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/specialwhiskey = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/wine = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/beer = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/alcoholfreebeer = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/ale = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/hellshenpa = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/lager = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/gingerbeer = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/small/dandelionburdock = 15,
					/obj/item/weapon/reagent_containers/food/drinks/cans/rootbeer = 15,
					/obj/item/weapon/reagent_containers/food/drinks/cans/speer = 10,
					/obj/item/weapon/reagent_containers/food/drinks/cans/ale = 10,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/cola = 5,
					/obj/item/weapon/reagent_containers/food/drinks/cans/cola_diet = 5,
					/obj/item/weapon/reagent_containers/food/drinks/cans/ionbru = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/space_up = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/space_mountain_wind = 5,
					/obj/item/weapon/reagent_containers/food/drinks/cans/beastenergy = 5,
					/obj/item/weapon/reagent_containers/food/drinks/tea/black = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/orangejuice = 2,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/tomatojuice = 2,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/limejuice = 2,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/lemonjuice = 2,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/unathijuice = 2,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/maplesyrup = 2,
					/obj/item/weapon/reagent_containers/food/drinks/cans/tonic = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/cream = 5,
					/obj/item/weapon/reagent_containers/food/drinks/cans/sodawater = 15,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/grenadine = 5,
					/obj/item/weapon/reagent_containers/food/condiment/mint = 2,
					/obj/item/weapon/reagent_containers/food/drinks/ice = 10,
					/obj/item/weapon/glass_extra/stick = 15,
					/obj/item/weapon/glass_extra/straw = 15)
	contraband = list(/obj/item/weapon/reagent_containers/food/drinks/bottle/premiumwine = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/premiumvodka = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/patron = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/goldschlager = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/lordaniawine = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/brandy = 5,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/skwine = 5)
	vend_delay = 15
	idle_power_usage = 211 //refrigerator - believe it or not, this is actually the average power consumption of a refrigerated vending machine according to NRCan.
	product_slogans = "I hope nobody asks me for a bloody cup o' tea...;Alcohol is humanity's friend. Would you abandon a friend?;Quite delighted to serve you!;Is nobody thirsty on this station?"
	product_ads = "Drink up!;Booze is good for you!;Alcohol is humanity's best friend.;Quite delighted to serve you!;Care for a nice, cold beer?;Nothing cures you like booze!;Have a sip!;Have a drink!;Have a beer!;Beer is good for you!;Only the finest alcohol!;Best quality booze since 2053!;Award-winning wine!;Maximum alcohol!;Man loves beer.;A toast for progress!"
	req_access = list(access_bar)
	base_type = /obj/machinery/vending/boozeomat