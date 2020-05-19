/decl/hierarchy/supply_pack/galley
	name = "Suministros de comida"

/decl/hierarchy/supply_pack/galley/food
	name = "General - Suministros de cocina"
	contains = list(/obj/item/weapon/reagent_containers/food/condiment/flour = 6,
					/obj/item/weapon/reagent_containers/food/drinks/milk = 4,
					/obj/item/weapon/reagent_containers/food/drinks/soymilk = 2,
					/obj/item/weapon/storage/fancy/egg_box = 2,
					/obj/item/weapon/reagent_containers/food/snacks/tofu = 4,
					/obj/item/weapon/reagent_containers/food/snacks/meat = 4,
					/obj/item/weapon/reagent_containers/food/condiment/enzyme = 1
					)
	cost = 10
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de suministros de cocina"

/decl/hierarchy/supply_pack/galley/beef
	name = "Perecibles - Filete"
	contains = list(/obj/item/weapon/reagent_containers/food/snacks/meat/beef = 6)
	containertype = /obj/structure/closet/crate/freezer
	containername = "carne de vaca"
	cost = 20

/decl/hierarchy/supply_pack/galley/goat
	name = "Perecibles - Carne de cabra"
	contains = list(/obj/item/weapon/reagent_containers/food/snacks/meat/goat = 6)
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de carne de cabra"
	cost = 20

/decl/hierarchy/supply_pack/galley/chicken
	name = "Perecibles - Carne de gallina"
	contains = list(/obj/item/weapon/reagent_containers/food/snacks/meat/chicken = 6)
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de carne de gallina"
	cost = 20

/decl/hierarchy/supply_pack/galley/seafood
	name = "Perecibles - Mariscos"
	contains = list(
		/obj/item/weapon/reagent_containers/food/snacks/fish = 2,
		/obj/item/weapon/reagent_containers/food/snacks/fish/shark = 2,
		/obj/item/weapon/reagent_containers/food/snacks/fish/octopus = 2
		)
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de mariscos"
	cost = 20

/decl/hierarchy/supply_pack/galley/eggs
	name = "Perecibles - Huevos"
	contains = list(/obj/item/weapon/storage/fancy/egg_box = 2)
	containertype = /obj/structure/closet/crate/freezer
	containername = "Caja de huevos"
	cost = 15

/decl/hierarchy/supply_pack/galley/milk
	name = "Perecibles - Leche"
	contains = list(/obj/item/weapon/reagent_containers/food/drinks/milk = 3)
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de leche"
	cost = 15

/decl/hierarchy/supply_pack/galley/pizza
	num_contained = 5
	name = "Emergencia - Pack sorpresa de 5 pizzas"
	contains = list(/obj/item/pizzabox/margherita,
					/obj/item/pizzabox/mushroom,
					/obj/item/pizzabox/meat,
					/obj/item/pizzabox/vegetable)
	cost = 15
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de pizza"
	supply_method = /decl/supply_method/randomized

/decl/hierarchy/supply_pack/galley/rations
	num_contained = 6
	name = "Emergencia - MREs"
	contains = list(/obj/item/weapon/storage/mre,
					/obj/item/weapon/storage/mre/menu2,
					/obj/item/weapon/storage/mre/menu3,
					/obj/item/weapon/storage/mre/menu4,
					/obj/item/weapon/storage/mre/menu5,
					/obj/item/weapon/storage/mre/menu6,
					/obj/item/weapon/storage/mre/menu7,
					/obj/item/weapon/storage/mre/menu8,
					/obj/item/weapon/storage/mre/menu9,
					/obj/item/weapon/storage/mre/menu10)
	cost = 30
	containertype = /obj/structure/closet/crate/freezer
	containername = "raciones de emergencia"
	supply_method = /decl/supply_method/randomized

/decl/hierarchy/supply_pack/galley/party
	name = "Bar - Equipamiento para fiestas"
	contains = list(
			/obj/item/weapon/storage/box/mixedglasses = 2,
			/obj/item/weapon/storage/box/glasses/square,
			/obj/item/weapon/reagent_containers/food/drinks/shaker,
			/obj/item/weapon/reagent_containers/food/drinks/flask/barflask,
			/obj/item/weapon/reagent_containers/food/drinks/bottle/patron,
			/obj/item/weapon/reagent_containers/food/drinks/bottle/goldschlager,
			/obj/item/weapon/reagent_containers/food/drinks/bottle/specialwhiskey,
			/obj/item/weapon/storage/fancy/cigarettes/dromedaryco,
			/obj/item/weapon/lipstick/random,
			/obj/item/weapon/reagent_containers/food/drinks/bottle/small/ale = 2,
			/obj/item/weapon/reagent_containers/food/drinks/bottle/small/beer = 4,
			/obj/item/weapon/storage/box/glowsticks = 2,
			/obj/item/weapon/clothingbag/rubbermask,
			/obj/item/weapon/clothingbag/rubbersuit)
	cost = 20
	containername = "caja de equipamiento para fiestas"

// TODO; Add more premium drinks at a later date. Could be useful for diplomatic events or fancy parties.
/decl/hierarchy/supply_pack/galley/premiumalcohol
	name = "Bar - Bebidas premium"
	contains = list(/obj/item/weapon/reagent_containers/food/drinks/bottle/premiumwine = 1,
					/obj/item/weapon/reagent_containers/food/drinks/bottle/premiumvodka = 1)
	cost = 60
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de bebidas premium"

/decl/hierarchy/supply_pack/galley/barsupplies
	name = "Bar - Suministros para el bar"
	contains = list(
			/obj/item/weapon/storage/box/glasses/cocktail,
			/obj/item/weapon/storage/box/glasses/rocks,
			/obj/item/weapon/storage/box/glasses/square,
			/obj/item/weapon/storage/box/glasses/pint,
			/obj/item/weapon/storage/box/glasses/wine,
			/obj/item/weapon/storage/box/glasses/shake,
			/obj/item/weapon/storage/box/glasses/shot,
			/obj/item/weapon/storage/box/glasses/mug,
			/obj/item/weapon/reagent_containers/food/drinks/shaker,
			/obj/item/weapon/storage/box/glass_extras/straws,
			/obj/item/weapon/storage/box/glass_extras/sticks
			)
	cost = 10
	containername = "caja de suministros para el bar"

/decl/hierarchy/supply_pack/galley/beer_dispenser
	name = "Equipamiento - Dispensador de bebidas alcoholicas"
	contains = list(
			/obj/machinery/chemical_dispenser/bar_alc{anchored = 0}
		)
	cost = 25
	containertype = /obj/structure/largecrate
	containername = "caja de dispensador de bebidas alcoholicas"

/decl/hierarchy/supply_pack/galley/soda_dispenser
	name = "Equipamiento - Dispensador de Soda"
	contains = list(
			/obj/machinery/chemical_dispenser/bar_soft{anchored = 0}
		)
	cost = 25
	containertype = /obj/structure/largecrate
	containername = "caja de dispensador de soda"
