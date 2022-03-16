/datum/trader/ship/gunshop
	name = "Gun Shop Employee"
	name_language = TRADER_DEFAULT_NAME
	origin = "Gun Shop"
	possible_origins = list("Rooty Tootie's Point-n-Shooties", "Bang-Bang Shop", "Wild Wild West Shop", "Keleshnikov", "Hunting Depot", "Big Game Hunters")
	speech = list("hail_generic"    = "Hello, hello! I see that you have your permit to buy Sol Gov weapons. So, welcome to our miltiary weapon shop!",
				"hail_deny"         = "Store policy dictates that you can fuck off.",

				"trade_complete"    = "Thanks for buying your guns from ORIGIN!",
				"trade_blacklist"   = "We may deal in guns, but that doesn't mean we'll trade for illegal goods...",
				"trade_no_goods"    = "Cash for guns, thats the deal.",
				"trade_not_enough"  = "Guns are expensive! Give us more if you REALLY want it.",
				"how_much"          = "Well, I'd love to give this little beauty to you for VALUE.",

				"compliment_deny"   = "If we were in the same room right now, I'd probably punch you.",
				"compliment_accept" = "Ha! Good one!",
				"insult_good"       = "I expected better from you. I suppose in that, I was wrong.",
				"insult_bad"        = "If I had my gun I'd shoot you!"
				)

	possible_trading_items = list(/obj/item/weapon/gun/projectile/pistol/holdout    = TRADER_ALL,
								/obj/item/weapon/gun/projectile/pistol/military/alt    = TRADER_ALL,
								/obj/item/weapon/gun/projectile/automatic/bullpup_rifle = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/sec_smg = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/machine_pistol = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/laser = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/taser = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/revolver = TRADER_ALL,
								/obj/item/weapon/gun/projectile/pistol/sec         = TRADER_ALL,
								/obj/item/weapon/gun/projectile/pistol/sec/MK      = TRADER_BLACKLIST,
								/obj/item/weapon/gun/projectile/shotgun = TRADER_SUBTYPES_ONLY,
								/obj/item/ammo_magazine                     = TRADER_SUBTYPES_ONLY,
								/obj/item/ammo_magazine/pistol/empty         = TRADER_BLACKLIST,
								/obj/item/weapon/gun/projectile/shotgun/sabotgun = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/mil_rifle/empty          = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/gyrojet/empty           = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/pistol/small/empty         = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/pistol/empty         = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/box/pistol/empty       = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/box/machinegun/empty      = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/machine_pistol/empty        = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/smg_top/empty        = TRADER_BLACKLIST,
								/obj/item/ammo_magazine/magnum/empty           = TRADER_BLACKLIST,
								/obj/item/weapon/gun/projectile/revolver/capgun = TRADER_BLACKLIST,
								/obj/item/clothing/accessory/storage/holster        = TRADER_ALL)

/datum/trader/dogan
	name = "Dogan"
	origin = "Dogan's Speciality Gun shop"
	speech = list("hail_generic"    = "Hello! This is an automatic recording of me, Mr. Dogan! I hope you like the... GUNS... I've got in store for you today.",
				"hail_deny"         = "I formally welcome you to... NOT... visit our store!",

				"trade_complete"    = "Thank you for... PURCHASING... that quality... ITEM... from me!",
				"trade_blacklist"   = "Thank you for... that quality... ILLEGAL OFFER THAT I WILL REFUSE... from me!",
				"trade_no_goods"    = "Thank you for... that quality... OFFER THAT ISN'T MONEY THAT I WILL REFUSE... from me!",
				"trade_not_enough"  = "Thank you for... that quality... OFFER THAT IS NOT ENOUGH... from me!",
				"how_much"          = "Thank you for... ASKING ME ABOUT MY PRICES... that quality... ITEM is worth VALUE... from me!",

				"compliment_deny"   = "Thank you for... that quality... COMPLIMENT... from me!",
				"compliment_accept" = "Thank you for... that quality... COMPLIMENT... from me!",
				"insult_good"       = "Thank you for... that quality... INSULT... from me!",
				"insult_bad"        = "Thank you for... that quality... INSULT... from me!"
				)
	compliment_increase = 0
	insult_drop = 0

	possible_trading_items = list(/obj/item/weapon/gun/projectile/pirate = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/pistol/sec/MK = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/xray = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/gun/nuclear = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/temperature = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/lasercannon = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/stunrevolver = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/stunrevolver/rifle = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/plasmastun = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/confuseray = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/ionrifle/small = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/toxgun = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/magnetic/railgun = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/heavysniper/boltaction = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/retro = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/merc_smg = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/incendiary_laser = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/assault_rifle = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/pistol/magnum_pistol = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic = TRADER_SUBTYPES_ONLY,
								/obj/item/weapon/gun/projectile/shotgun/pump/combat = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/heavysniper/ant = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/heavysniper = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/pulse_rifle/carbine = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/pulse_rifle/pistol = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/energy/gun = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic = TRADER_SUBTYPES_ONLY,
								/obj/item/weapon/gun/projectile/automatic/l6_saw/mag = TRADER_BLACKLIST,
								/obj/item/weapon/gun/projectile/automatic/skrell = TRADER_BLACKLIST,
								/obj/item/weapon/gun/projectile/automatic/machine_pistol/usi = TRADER_THIS_TYPE,
								/obj/item/clothing/accessory/storage/holster = TRADER_ALL)