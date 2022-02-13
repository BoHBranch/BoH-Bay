/datum/trader/ship/grocery
	name = "Grocer"
	name_language = TRADER_DEFAULT_NAME
	possible_origins = list("HyTee", "Kreugars", "Spaceway", "Privaxs", "FutureValue", "Phyvendyme", "Skreller's Market")
	trade_flags = TRADER_MONEY

	possible_trading_items = list(/obj/item/weapon/reagent_containers/food/drinks/cans                       = TRADER_SUBTYPES_ONLY,
							/obj/item/weapon/reagent_containers/food/drinks/bottle                     = TRADER_SUBTYPES_ONLY,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/small               = TRADER_BLACKLIST,
							)

	speech = list("hail_generic"     = "Hello, welcome to ORIGIN, grocery store of the future!",
				"hail_deny"          = "I'm sorry, we've blacklisted your communications due to rude behavior.",

				"trade_complete"     = "Thank you for shopping at ORIGIN!",
				"trade_blacklist"    = "I... wow, that's... no, sir. No.",
				"trade_no_goods"     = "ORIGIN only accepts cash, sir.",
				"trade_not_enough"   = "That is not enough money, sir.",
				"how_much"           = "Sir, that'll cost you VALUE CURRENCY. Will that be all?",

				"compliment_deny"    = "Sir, this is a professional environment. Please don't make me get my manager.",
				"compliment_accept"  = "Thank you, sir!",
				"insult_good"        = "Sir, please do not make a scene.",
				"insult_bad"         = "Sir, I WILL get my manager if you don't calm down.",

				"bribe_refusal"      = "Of course sir! ORIGIN is always here for you!",
				)

/datum/trader/ship/bakery
	name = "Pastry Chef"
	name_language = TRADER_DEFAULT_NAME
	origin = "Bakery"
	possible_origins = list("Cakes By Design", "Corner Bakery Local", "My Favorite Cake & Pastry Cafe", "Mama Joes Bakery", "Sprinkles and Fun", "Cakestrosity")

	speech = list("hail_generic"     = "Hello, welcome to ORIGIN! We serve baked goods, including pies, cakes, and anything sweet!",
				"hail_deny"          = "Our food is a privilege, not a right. Goodbye.",

				"trade_complete"     = "Thank you for your purchase! Come again if you're hungry for more!",
				"trade_blacklist"    = "We only accept money. Not... that.",
				"trade_no_goods"     = "Cash for cakes! That's our business!",
				"trade_not_enough"   = "Our dishes are much more expensive than that, sir.",
				"how_much"           = "That lovely dish will cost you VALUE CURRENCY.",

				"compliment_deny"    = "Oh wow, how nice of you...",
				"compliment_accept"  = "You're almost as sweet as my pies!",
				"insult_good"        = "My pies are NOT knockoffs!",
				"insult_bad"         = "Well, aren't you a sour apple?",

				"bribe_refusal"      = "Oh ho ho! I'd never think of taking ORIGIN on the road!",
				)
	possible_trading_items = list(/obj/item/weapon/reagent_containers/food/snacks     = TRADER_SUBTYPES_ONLY,
							/obj/item/weapon/reagent_containers/food/snacks/boiledslimecore            = TRADER_BLACKLIST,
							/obj/item/weapon/reagent_containers/food/snacks/checker                    = TRADER_BLACKLIST_ALL,
							/obj/item/weapon/reagent_containers/food/snacks/canned					   = TRADER_SUBTYPES_ONLY,
							/obj/item/weapon/reagent_containers/food/snacks/fruit_slice                = TRADER_BLACKLIST,
							/obj/item/weapon/reagent_containers/food/snacks/slice                      = TRADER_BLACKLIST_ALL,
							/obj/item/weapon/reagent_containers/food/snacks/grown                      = TRADER_BLACKLIST_ALL,
							/obj/item/weapon/reagent_containers/food/snacks/human                      = TRADER_BLACKLIST_ALL,
							/obj/item/weapon/reagent_containers/food/snacks/sliceable/braincake        = TRADER_BLACKLIST,
							/obj/item/weapon/reagent_containers/food/snacks/meat/human                 = TRADER_BLACKLIST,
							/obj/item/weapon/reagent_containers/food/snacks/variable                   = TRADER_BLACKLIST_ALL
								)
								
