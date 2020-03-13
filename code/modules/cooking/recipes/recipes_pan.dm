/datum/recipe/taco
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/taco

// Chip update
/datum/recipe/tortila
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/flour = 5,/datum/reagent/water = 5)
	result = /obj/item/weapon/reagent_containers/food/snacks/tortilla
	reagent_mix = RECIPE_REAGENT_REPLACE //no gross flour or water

/datum/recipe/taconew
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tortilla,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/taco

/datum/recipe/chips
	appliance = PAN
	reagents = list(/datum/reagent/sodiumchloride = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tortilla
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/chipplate

/datum/recipe/easyegg
	appliance = PAN
	reagents = list(/datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/egg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/friedegg/overeasy

/datum/recipe/friedegg
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/friedegg/overeasy
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/friedegg

/datum/recipe/boiledegg
	appliance = PAN // since we don't have a pot
	reagents = list(/datum/reagent/water = 5)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/egg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/boiledegg

/datum/recipe/waffles
	appliance = PAN
	reagents = list(/datum/reagent/sugar = 10)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/dough,
		/obj/item/weapon/reagent_containers/food/snacks/dough
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/waffles

/datum/recipe/omelette
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	reagents = list(/datum/reagent/nutriment/protein/egg = 6)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/omelette


/datum/recipe/eggplantparm
	appliance = OVEN | PAN
	fruit = list("eggplant" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
		)
	result = /obj/item/weapon/reagent_containers/food/snacks/eggplantparm

/datum/recipe/soylenviridians
	appliance = OVEN | PAN
	fruit = list("soybeans" = 1)
	reagents = list(/datum/reagent/nutriment/flour = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/soylenviridians

/datum/recipe/soylentgreen
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/nutriment/flour = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/meat/human,
		/obj/item/weapon/reagent_containers/food/snacks/meat/human
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/soylentgreen

/datum/recipe/berryclafoutis
	appliance = OVEN | PAN
	fruit = list("berries" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/sliceable/flatdough
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/berryclafoutis

/datum/recipe/wingfangchu
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/soysauce = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/xenomeat
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/wingfangchu

/datum/recipe/loadedbakedpotato
	appliance = OVEN
	fruit = list("potato" = 1)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/cheesewedge)
	result = /obj/item/weapon/reagent_containers/food/snacks/loadedbakedpotato

/datum/recipe/popcorn
	appliance = OVEN | PAN
	fruit = list("corn" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/popcorn

/datum/recipe/spacylibertyduff
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/ethanol/vodka = 5, /datum/reagent/psilocybin = 5)
	result = /obj/item/weapon/reagent_containers/food/snacks/spacylibertyduff

/datum/recipe/amanitajelly
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/ethanol/vodka = 5, /datum/reagent/toxin/amatoxin = 5)
	result = /obj/item/weapon/reagent_containers/food/snacks/amanitajelly
	make_food(var/obj/container as obj)

		. = ..(container)
		for (var/obj/item/weapon/reagent_containers/food/snacks/amanitajelly/being_cooked in .)
			being_cooked.reagents.del_reagent(/datum/reagent/toxin/amatoxin)

/datum/recipe/meatballsoup
	appliance = PAN // no pot
	fruit = list("carrot" = 1, "potato" = 1)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/meatball)
	result = /obj/item/weapon/reagent_containers/food/snacks/meatballsoup

/datum/recipe/vegetablesoup
	appliance = PAN //still no pot
	fruit = list("carrot" = 1, "potato" = 1, "corn" = 1, "eggplant" = 1)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/weapon/reagent_containers/food/snacks/vegetablesoup

/datum/recipe/nettlesoup
	appliance = PAN //potless
	fruit = list("nettle" = 1, "potato" = 1, )
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/protein/egg = 3)
	result = /obj/item/weapon/reagent_containers/food/snacks/nettlesoup

/datum/recipe/wishsoup
	appliance = PAN
	reagents = list(/datum/reagent/water = 20)
	result= /obj/item/weapon/reagent_containers/food/snacks/wishsoup

/datum/recipe/hotchili
	appliance = PAN
	fruit = list("chili" = 1, "tomato" = 1)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/meat)
	result = /obj/item/weapon/reagent_containers/food/snacks/hotchili

/datum/recipe/coldchili
	appliance = PAN
	fruit = list("icechili" = 1, "tomato" = 1)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/meat)
	result = /obj/item/weapon/reagent_containers/food/snacks/coldchili


/datum/recipe/tomatosoup
	appliance = PAN
	fruit = list("tomato" = 2)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/weapon/reagent_containers/food/snacks/tomatosoup

/datum/recipe/rofflewaffles
	appliance = PAN | OVEN
	reagents = list(/datum/reagent/psilocybin = 5, /datum/reagent/sugar = 10)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/dough,
		/obj/item/weapon/reagent_containers/food/snacks/dough
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/rofflewaffles

/datum/recipe/stew
	appliance = PAN
	fruit = list("potato" = 1, "tomato" = 1, "carrot" = 1, "eggplant" = 1, "mushroom" = 1)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/meat)
	result = /obj/item/weapon/reagent_containers/food/snacks/stew


/datum/recipe/milosoup
	appliance = PAN
	reagents = list(/datum/reagent/water = 10)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/soydope,
		/obj/item/weapon/reagent_containers/food/snacks/soydope,
		/obj/item/weapon/reagent_containers/food/snacks/tofu,
		/obj/item/weapon/reagent_containers/food/snacks/tofu
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/milosoup

/datum/recipe/stewedsoymeat
	appliance = PAN | OVEN
	fruit = list("carrot" = 1, "tomato" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/soydope,
		/obj/item/weapon/reagent_containers/food/snacks/soydope
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/stewedsoymeat

/datum/recipe/boiledspagetti
	appliance = PAN // no pot
	reagents = list(/datum/reagent/water = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/spagetti
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/boiledspagetti

/datum/recipe/boiledrice
	appliance = PAN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/nutriment/rice = 10)
	result = /obj/item/weapon/reagent_containers/food/snacks/boiledrice

/datum/recipe/ricepudding
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk = 5, /datum/reagent/nutriment/rice = 10)
	result = /obj/item/weapon/reagent_containers/food/snacks/ricepudding

/datum/recipe/pastatomato
	appliance = PAN
	fruit = list("tomato" = 2)
	reagents = list(/datum/reagent/water = 5)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/spagetti)
	result = /obj/item/weapon/reagent_containers/food/snacks/pastatomato

/datum/recipe/meatballspagetti
	appliance = PAN
	reagents = list(/datum/reagent/water = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/spagetti,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/meatballspagetti

/datum/recipe/spesslaw
	appliance = PAN
	reagents = list(/datum/reagent/water = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/spagetti,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/spesslaw

/datum/recipe/bloodsoup
	appliance = PAN
	reagents = list(/datum/reagent/blood = 30)
	result = /obj/item/weapon/reagent_containers/food/snacks/bloodsoup

/datum/recipe/fishfingers
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/nutriment/flour = 10,/datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/fishfingers
	reagent_mix = RECIPE_REAGENT_REPLACE

/datum/recipe/mysterysoup
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/badrecipe,
		/obj/item/weapon/reagent_containers/food/snacks/tofu,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/mysterysoup

/datum/recipe/plumphelmetbiscuit
	appliance = OVEN
	fruit = list("plumphelmet" = 1)
	reagents = list(/datum/reagent/water = 5, /datum/reagent/nutriment/flour = 5)
	result = /obj/item/weapon/reagent_containers/food/snacks/plumphelmetbiscuit

/datum/recipe/mushroomsoup
	appliance = PAN
	fruit = list("mushroom" = 1)
	reagents = list(/datum/reagent/water = 5, /datum/reagent/drink/milk = 5)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/mushroomsoup

/datum/recipe/chawanmushi
	appliance = PAN
	fruit = list("mushroom" = 1)
	reagents = list(/datum/reagent/water = 5, /datum/reagent/nutriment/soysauce = 5, /datum/reagent/nutriment/protein/egg = 6)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/chawanmushi

/datum/recipe/beetsoup
	appliance = PAN
	fruit = list("whitebeet" = 1, "cabbage" = 1)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/weapon/reagent_containers/food/snacks/beetsoup

/datum/recipe/stuffing
	appliance = OVEN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/sliceable/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/stuffing

/datum/recipe/tofurkey
	appliance = OVEN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tofu,
		/obj/item/weapon/reagent_containers/food/snacks/tofu,
		/obj/item/weapon/reagent_containers/food/snacks/stuffing
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/tofurkey

/////////////////////////////////////////////////////////////
//Synnono Meme Foods
//
//Most recipes replace reagents with RECIPE_REAGENT_REPLACE
//to simplify the end product and balance the amount of reagents
//in some foods. Many require the space spice reagent/condiment
//to reduce the risk of future recipe conflicts.
/////////////////////////////////////////////////////////////

/datum/recipe/redcurry
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk/cream = 5, /datum/reagent/spacespice = 2, /datum/reagent/nutriment/rice = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/cutlet,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/redcurry

/datum/recipe/greencurry
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk/cream = 5, /datum/reagent/spacespice = 2, /datum/reagent/nutriment/rice = 5)
	fruit = list("chili" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tofu,
		/obj/item/weapon/reagent_containers/food/snacks/tofu
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/greencurry

/datum/recipe/yellowcurry
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk/cream = 5, /datum/reagent/spacespice = 2, /datum/reagent/nutriment/rice = 5)
	fruit = list("peanut" = 2, "potato" = 1)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/yellowcurry

/datum/recipe/bearchili
	appliance = PAN
	fruit = list("chili" = 1, "tomato" = 1)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/bearmeat)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/bearchili

/datum/recipe/bearstew
	appliance = PAN
	fruit = list("potato" = 1, "tomato" = 1, "carrot" = 1, "eggplant" = 1, "mushroom" = 1)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/bearmeat)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/bearstew

/datum/recipe/bibimbap
	appliance = PAN
	fruit = list("carrot" = 1, "cabbage" = 1, "mushroom" = 1)
	reagents = list(/datum/reagent/nutriment/rice = 5, /datum/reagent/spacespice = 2)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/egg,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/bibimbap

/datum/recipe/friedrice
	appliance = PAN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/nutriment/rice = 10, /datum/reagent/nutriment/soysauce = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/friedrice

/datum/recipe/lomein
	appliance = PAN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/nutriment/soysauce = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/spagetti
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/lomein

/datum/recipe/chilicheesefries
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fries,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge,
		/obj/item/weapon/reagent_containers/food/snacks/hotchili
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/chilicheesefries

/datum/recipe/meatbun
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/water = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/rawcutlet
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Water used up in cooking
	result = /obj/item/weapon/reagent_containers/food/snacks/meatbun

/datum/recipe/custardbun
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/water = 5, /datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Water, egg used up in cooking
	result = /obj/item/weapon/reagent_containers/food/snacks/custardbun

/datum/recipe/chickenmomo
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 2, /datum/reagent/water = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/meat/chicken
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/chickenmomo

/datum/recipe/veggiemomo
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 2, /datum/reagent/water = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Get that water outta here
	result = /obj/item/weapon/reagent_containers/food/snacks/veggiemomo

/datum/recipe/risotto
	appliance = PAN
	reagents = list(/datum/reagent/ethanol/wine = 5, /datum/reagent/nutriment/rice = 10, /datum/reagent/spacespice = 1)
	fruit = list("mushroom" = 1)
	reagent_mix = RECIPE_REAGENT_REPLACE //Get that rice and wine outta here
	result = /obj/item/weapon/reagent_containers/food/snacks/risotto

/datum/recipe/poachedegg
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1, /datum/reagent/water = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/egg
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Get that water outta here
	result = /obj/item/weapon/reagent_containers/food/snacks/poachedegg

/datum/recipe/sashimi
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/soysauce = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/sashimi


/datum/recipe/chilied_eggs
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/hotchili,
		/obj/item/weapon/reagent_containers/food/snacks/boiledegg,
		/obj/item/weapon/reagent_containers/food/snacks/boiledegg,
		/obj/item/weapon/reagent_containers/food/snacks/boiledegg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/chilied_eggs

/datum/recipe/red_sun_special
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/sausage,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge

	)
	result = /obj/item/weapon/reagent_containers/food/snacks/red_sun_special

/datum/recipe/hatchling_suprise
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/poachedegg,
		/obj/item/weapon/reagent_containers/food/snacks/bacon,
		/obj/item/weapon/reagent_containers/food/snacks/bacon,
		/obj/item/weapon/reagent_containers/food/snacks/bacon

	)
	result = /obj/item/weapon/reagent_containers/food/snacks/hatchling_suprise

/datum/recipe/riztizkzi_sea
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/egg,
		/obj/item/weapon/reagent_containers/food/snacks/egg,
		/obj/item/weapon/reagent_containers/food/snacks/egg
	)
	reagents = list(/datum/reagent/blood = 15)
	result = /obj/item/weapon/reagent_containers/food/snacks/riztizkzi_sea

/datum/recipe/father_breakfast
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/sausage,
		/obj/item/weapon/reagent_containers/food/snacks/omelette,
		/obj/item/weapon/reagent_containers/food/snacks/meatsteak
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/father_breakfast

/datum/recipe/egg_pancake
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/omelette
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/egg_pancake

/datum/recipe/bacon_and_eggs
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bacon,
		/obj/item/weapon/reagent_containers/food/snacks/friedegg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/bacon_and_eggs

/datum/recipe/onionsoup
	appliance = PAN
	fruit = list("onion" = 1)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/weapon/reagent_containers/food/snacks/onionsoup

/datum/recipe/porkbowl
	appliance = PAN
	reagents = list(/datum/reagent/water = 5, /datum/reagent/nutriment/rice = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bacon
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/porkbowl

/datum/recipe/mashedpotato
	appliance = PAN
	fruit = list("potato" = 3)
	reagents = list(/datum/reagent/drink/milk/cream = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/spreads
	)
	result_quantity = 2
	result = /obj/item/weapon/reagent_containers/food/snacks/mashedpotato

/datum/recipe/crab_legs
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/sodiumchloride = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/crabmeat,
		/obj/item/weapon/reagent_containers/food/snacks/spreads
		)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/crab_legs

//Bacon
/datum/recipe/bacon_pan
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon,
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon,
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon,
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon,
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon,
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon,
		/obj/item/weapon/reagent_containers/food/snacks/spreads
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/bacon/pan
	result_quantity = 6

/datum/recipe/meatsteak
	appliance = PAN
	reagents = list(/datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/meat)
	result = /obj/item/weapon/reagent_containers/food/snacks/meatsteak

/datum/recipe/toastedsandwich
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/sandwich
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/toastedsandwich

/datum/recipe/grilledcheese
	appliance = PAN
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/grilledcheese

/datum/recipe/slimetoast
	appliance = PAN
	reagents = list(/datum/reagent/slimejelly = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/jelliedtoast/slime

/datum/recipe/jelliedtoast
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/jelliedtoast/cherry