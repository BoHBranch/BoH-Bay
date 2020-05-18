/decl/hierarchy/supply_pack/supply
	name = "Suministros - Comisario"
	containertype = /obj/structure/closet/crate

/decl/hierarchy/supply_pack/supply/toner
	name = "Recargas - Cartuchos de tinta"
	contains = list(/obj/item/device/toner = 3)
	cost = 10
	containername = "caja de cartuchos de tinta"

/decl/hierarchy/supply_pack/supply/cardboard_sheets
	name = "Material - Laminas de carton (50)"
	contains = list(/obj/item/stack/material/cardboard/fifty)
	cost = 10
	containername = "cardboard sheets crate"

/decl/hierarchy/supply_pack/supply/stickies
	name = "Stationery - sticky notes (50)"
	contains = list(/obj/item/sticky_pad/random)
	cost = 10
	containername = "\improper Sticky notes crate"

/decl/hierarchy/supply_pack/supply/wpaper
	name = "Cargo - Papel de envolver"
	contains = list(/obj/item/stack/package_wrap/twenty_five = 3)
	cost = 10
	containername = "caja de papel de envolver"

/decl/hierarchy/supply_pack/supply/tapes
	name = "Medium - Cintas en blanco (14)"
	contains = list (/obj/item/weapon/storage/box/tapes)
	cost = 10
	containername = "caja de cintas en blanco"

/decl/hierarchy/supply_pack/supply/taperolls
	name = "G.O.S.H - Cintas de barricada (mezclado)"
	contains = list (/obj/item/weapon/storage/box/taperolls)
	cost = 10
	containername = "caja de cintas de barricada"

/decl/hierarchy/supply_pack/supply/scanner_module
	name = "Electronicos - Modulos de escaner de papel"
	contains = list(/obj/item/weapon/stock_parts/computer/scanner/paper = 4)
	cost = 20
	containername = "caja de modulos de escaner de paper"

/decl/hierarchy/supply_pack/supply/spare_pda
	name = "Electronicos - Spare PDAs"
	contains = list(/obj/item/modular_computer/pda = 3)
	cost = 10
	containername = "spare PDA crate"

/decl/hierarchy/supply_pack/supply/eftpos
	contains = list(/obj/item/device/eftpos)
	name = "Electronicos - EFTPOS escaner"
	cost = 10
	containername = "\improper EFTPOS crate"

/decl/hierarchy/supply_pack/supply/water
	name = "Recargas - Botellas de agua"
	contains = list (/obj/item/weapon/storage/box/water = 2)
	cost = 12
	containername = "caja de botellas de agua"

/decl/hierarchy/supply_pack/supply/sodas
	num_contained = 2
	contains = list(/obj/item/weapon/storage/box/cola,
					/obj/item/weapon/storage/box/cola/spacewind,
					/obj/item/weapon/storage/box/cola/drgibb,
					/obj/item/weapon/storage/box/cola/starkist,
					/obj/item/weapon/storage/box/cola/spaceup,
					/obj/item/weapon/storage/box/cola/lemonlime,
					/obj/item/weapon/storage/box/cola/icedtea,
					/obj/item/weapon/storage/box/cola/grapejuice,
					/obj/item/weapon/storage/box/cola/sodawater)
	name = "Recargas - Latas de Soda"
	cost = 10
	containername = "caja de latas de soda"
	supply_method = /decl/supply_method/randomized

/decl/hierarchy/supply_pack/supply/snacks
	num_contained = 2
	contains = list(/obj/item/weapon/storage/box/snack,
					/obj/item/weapon/storage/box/snack/jerky,
					/obj/item/weapon/storage/box/snack/noraisin,
					/obj/item/weapon/storage/box/snack/cheesehonks,
					/obj/item/weapon/storage/box/snack/tastybread,
					/obj/item/weapon/storage/box/snack/candy,
					/obj/item/weapon/storage/box/snack/chips)
	name = "Recargas - Meriendas"
	cost = 10
	containername = "caja de meriendas"
	supply_method = /decl/supply_method/randomized

/decl/hierarchy/supply_pack/supply/canned
	num_contained = 2
	contains = list(/obj/item/weapon/storage/box/canned,
					/obj/item/weapon/storage/box/canned/beef,
					/obj/item/weapon/storage/box/canned/beans,
					/obj/item/weapon/storage/box/canned/tomato,
)
	name = "Emergency - Comidas enlatadas"
	cost = 30
	containername = "caja de comidas enlatadas"
	supply_method = /decl/supply_method/randomized

/decl/hierarchy/supply_pack/supply/coolanttank
	name = "Liquid - Tanque de Coolant"
	contains = list(/obj/structure/reagent_dispensers/coolanttank)
	cost = 16
	containertype = /obj/structure/largecrate
	containername = "caja de tanque de coolant"

/decl/hierarchy/supply_pack/supply/fueltank
	name = "Liquido - Tanque de combustible"
	contains = list(/obj/structure/reagent_dispensers/fueltank)
	cost = 8
	containertype = /obj/structure/largecrate
	containername = "caja de combustible"

/decl/hierarchy/supply_pack/supply/watertank
	name = "Liquido - Tanque de agua"
	contains = list(/obj/structure/reagent_dispensers/watertank)
	cost = 8
	containertype = /obj/structure/largecrate
	containername = "caja de tanque de agua"

//replacement vendors
//Vending Machines
//I have decided against adding the adherent vendor because it is a modified machine as well as the security vendors, which should probably be under a bit more scrutiny than "whoever is deck tech at the time"

/decl/hierarchy/supply_pack/supply/snackvendor
	name = "Vendor - Getmoore Chocolate Co"
	contains = list(/obj/machinery/vending/snack{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/snixvendor
	name = "Vendor - Snix Zakuson TCC"
	contains = list(/obj/machinery/vending/snix{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/solvendor
	name = "Vendor - Mars Mart SCC"
	contains = list(/obj/machinery/vending/sol{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/sodavendor
	name = "Vendor - Softdrinks Robust Industries LLC"
	contains = list(/obj/machinery/vending/cola{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/lavatoryvendor
	name = "Vendor - Lavatory Essentials - Waffle Co"
	contains = list(/obj/machinery/vending/lavatory{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/boozevendor
	name = "Vendor - Booze-o-mat - GrekkaTarg Boozeries"
	contains = list(/obj/machinery/vending/boozeomat{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/gamevendor
	name = "Vendor - Games - Honk Co"
	contains = list(/obj/machinery/vending/games{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/fitnessvendor
	name = "Vendor - Fitness - SwolMAX Bros"
	contains = list(/obj/machinery/vending/fitness{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/cigarettevendor
	name = "Vendor - Cigarettes - Gideon Asbestos Mining Conglomerate"
	contains = list(/obj/machinery/vending/cigarette{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/roboticsvendor
	name = "Vendor - Robotics - Dandytronics LLT"
	contains = list(/obj/machinery/vending/robotics{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/engineeringvendor
	name = "Vendor - Engineering - Dandytronics LLT"
	contains = list(/obj/machinery/vending/engineering{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/toolvendor
	name = "Vendor - Tools - YouTool Co"
	contains = list(/obj/machinery/vending/tool{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/coffeevendor
	name = "Vendor - Coffee - Hot Drinks LCD"
	contains = list(/obj/machinery/vending/coffee{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/dinnerwarevendor
	name = "Vendor - Dinnerwares - Plastic Tat Inc"
	contains = list(/obj/machinery/vending/dinnerware{anchored = 0})
	cost = 150
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/bodavendor
	name = "Vendor - BODA - Zakuson TCC"
	contains = list(/obj/machinery/vending/sovietsoda{anchored = 0})
	cost = 250
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"

/decl/hierarchy/supply_pack/supply/weebvendor
	name = "Vendor - Nippon-tan - ArigatoRobotics LCD"
	contains = list(/obj/machinery/vending/weeb{anchored = 0})
	cost = 50
	containertype = /obj/structure/largecrate
	containername = "\improper Vending Machine"