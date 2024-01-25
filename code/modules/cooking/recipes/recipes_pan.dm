/datum/recipe/taco
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/cutlet,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/reagent_containers/food/snacks/taco

// Chip update
/datum/recipe/tortila
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/flour = 10,/datum/reagent/water = 10)
	result = /obj/item/reagent_containers/food/snacks/tortilla
	reagent_mix = RECIPE_REAGENT_REPLACE //no gross flour or water

/datum/recipe/taconew
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/tortilla,
		/obj/item/reagent_containers/food/snacks/cutlet,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/reagent_containers/food/snacks/taco

/datum/recipe/chips
	appliance = PAN
	reagents = list(/datum/reagent/sodiumchloride = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/tortilla
	)
	result = /obj/item/reagent_containers/food/snacks/chipplate

/datum/recipe/easyegg
	appliance = PAN
	reagents = list(/datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1, /datum/reagent/nutriment/protein/egg = 3)
	result = /obj/item/reagent_containers/food/snacks/friedegg/overeasy

/datum/recipe/friedegg
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/friedegg/overeasy
	)
	result = /obj/item/reagent_containers/food/snacks/friedegg

/datum/recipe/boiledegg
	appliance = PAN // since we don't have a pot
	reagents = list(/datum/reagent/water = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/datum/reagent/nutriment/protein/egg = 3 // Not exactly ideal but eggs crack into the pan.
	)
	result = /obj/item/reagent_containers/food/snacks/boiledegg

/datum/recipe/waffles
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/batter/cakebatter = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/dough,
	)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/waffles

/datum/recipe/omelette
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/cheesewedge,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	reagents = list(/datum/reagent/nutriment/protein/egg = 6)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/omelette

/datum/recipe/fishandchips
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/fries,
		/obj/item/reagent_containers/food/snacks/fish
	)
	result = /obj/item/reagent_containers/food/snacks/fishandchips

/datum/recipe/eggplantparm
	appliance = OVEN | PAN
	fruit = list("eggplant" = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/cheesewedge,
		/obj/item/reagent_containers/food/snacks/cheesewedge
		)
	result = /obj/item/reagent_containers/food/snacks/eggplantparm

/datum/recipe/soylenviridians
	appliance = OVEN | PAN
	fruit = list("soybeans" = 1)
	reagents = list(/datum/reagent/nutriment/flour = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/soylenviridians

/datum/recipe/soylentgreen
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/nutriment/flour = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/reagent_containers/food/snacks/meat/human,
		/obj/item/reagent_containers/food/snacks/meat/human
	)
	result = /obj/item/reagent_containers/food/snacks/soylentgreen

/datum/recipe/berryclafoutis
	appliance = OVEN | PAN
	fruit = list("berries" = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/sliceable/flatdough
	)
	result = /obj/item/reagent_containers/food/snacks/berryclafoutis

/datum/recipe/wingfangchu
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/soysauce = 5)
	items = list(
		/obj/item/reagent_containers/food/snacks/xenomeat
	)
	result = /obj/item/reagent_containers/food/snacks/wingfangchu

/datum/recipe/loadedbakedpotato
	appliance = OVEN | PAN
	fruit = list("potato" = 1)
	items = list(/obj/item/reagent_containers/food/snacks/cheesewedge)
	result = /obj/item/reagent_containers/food/snacks/loadedbakedpotato

/datum/recipe/popcorn
	appliance = OVEN | PAN
	reagents = list(
		/datum/reagent/sodiumchloride = 5
	)
	fruit = list("corn" = 1)
	result = /obj/item/reagent_containers/food/snacks/popcorn

/datum/recipe/spacylibertyduff
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/ethanol/vodka = 5, /datum/reagent/drugs/psilocybin = 5)
	result = /obj/item/reagent_containers/food/snacks/spacylibertyduff

/datum/recipe/amanitajelly
	appliance = OVEN | PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/ethanol/vodka = 5, /datum/reagent/toxin/amatoxin = 5)
	result = /obj/item/reagent_containers/food/snacks/amanitajelly

/datum/recipe/meatballsoup
	appliance = PAN // no pot
	fruit = list("carrot" = 1, "potato" = 1)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/reagent_containers/food/snacks/meatball)
	result = /obj/item/reagent_containers/food/snacks/meatballsoup

/datum/recipe/vegetablesoup
	appliance = PAN //still no pot
	fruit = list("carrot" = 1, "potato" = 1, "corn" = 1, "eggplant" = 1)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/reagent_containers/food/snacks/vegetablesoup

/datum/recipe/nettlesoup
	appliance = PAN //potless
	fruit = list("nettle" = 1, "potato" = 1, )
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/protein/egg = 3)
	result = /obj/item/reagent_containers/food/snacks/nettlesoup

/datum/recipe/wishsoup
	appliance = PAN
	reagents = list(/datum/reagent/water = 20)
	result= /obj/item/reagent_containers/food/snacks/wishsoup

/datum/recipe/hotchili
	appliance = PAN
	fruit = list("chili" = 1, "tomato" = 1)
	items = list(/obj/item/reagent_containers/food/snacks/meat)
	result = /obj/item/reagent_containers/food/snacks/hotchili

/datum/recipe/coldchili
	appliance = PAN
	fruit = list("icechili" = 1, "tomato" = 1)
	items = list(/obj/item/reagent_containers/food/snacks/meat)
	result = /obj/item/reagent_containers/food/snacks/coldchili


/datum/recipe/tomatosoup
	appliance = PAN
	fruit = list("tomato" = 2)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/reagent_containers/food/snacks/tomatosoup

/datum/recipe/rofflewaffles
	appliance = PAN | OVEN
	reagents = list(/datum/reagent/drugs/psilocybin = 5, /datum/reagent/nutriment/batter/cakebatter = 20)
	result = /obj/item/reagent_containers/food/snacks/rofflewaffles

/datum/recipe/stew
	appliance = PAN
	fruit = list("potato" = 1, "tomato" = 1, "carrot" = 1, "eggplant" = 1, "mushroom" = 1)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/reagent_containers/food/snacks/meat)
	result = /obj/item/reagent_containers/food/snacks/stew

/datum/recipe/clam_chowder
	appliance = PAN
	reagents = list(
		/datum/reagent/drink/milk/cream = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/clam
	)
	fruit = list(
		"potato" = 1
	)
	result = /obj/item/reagent_containers/food/snacks/clam_chowder

/datum/recipe/milosoup
	appliance = PAN
	reagents = list(/datum/reagent/water = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/soydope,
		/obj/item/reagent_containers/food/snacks/soydope,
		/obj/item/reagent_containers/food/snacks/tofu,
		/obj/item/reagent_containers/food/snacks/tofu
	)
	result = /obj/item/reagent_containers/food/snacks/milosoup

/datum/recipe/stewedsoymeat
	appliance = PAN | OVEN
	fruit = list("carrot" = 1, "tomato" = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/soydope,
		/obj/item/reagent_containers/food/snacks/soydope
	)
	result = /obj/item/reagent_containers/food/snacks/stewedsoymeat

/datum/recipe/boiledspagetti
	appliance = PAN // no pot
	reagents = list(/datum/reagent/water = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/spagetti
	)
	result = /obj/item/reagent_containers/food/snacks/boiledspagetti

/datum/recipe/boiledrice
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/rice = 10)
	result = /obj/item/reagent_containers/food/snacks/boiledrice

/datum/recipe/chazuke
	appliance = PAN
	reagents = list(
		/datum/reagent/nutriment/rice/chazuke = 10
	)
	result = /obj/item/reagent_containers/food/snacks/boiledrice/chazuke

/datum/recipe/ricepudding
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk = 5, /datum/reagent/nutriment/rice = 10)
	result = /obj/item/reagent_containers/food/snacks/ricepudding

/datum/recipe/katsucurry
	appliance = PAN
	reagents = list(
		/datum/reagent/water = 10,
		/datum/reagent/nutriment/rice = 10,
		/datum/reagent/nutriment/flour = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/meat/chicken
	)
	fruit = list(
		"apple" = 1,
		"carrot" = 1,
		"potato" = 1
	)
	result = /obj/item/reagent_containers/food/snacks/katsucurry


/datum/recipe/pastatomato
	appliance = PAN
	fruit = list("tomato" = 2)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/reagent_containers/food/snacks/spagetti)
	result = /obj/item/reagent_containers/food/snacks/pastatomato

/datum/recipe/meatballspagetti
	appliance = PAN
	reagents = list(/datum/reagent/water = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/spagetti,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball
	)
	result = /obj/item/reagent_containers/food/snacks/meatballspagetti

/datum/recipe/spesslaw
	appliance = PAN
	reagents = list(/datum/reagent/water = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/spagetti,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball
	)
	result = /obj/item/reagent_containers/food/snacks/spesslaw

/datum/recipe/nanopasta
	appliance = PAN
	reagents = list(
		/datum/reagent/water = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/spagetti,
		/obj/item/stack/nanopaste
	)
	result = /obj/item/reagent_containers/food/snacks/nanopasta

/datum/recipe/bloodsoup
	appliance = PAN
	reagents = list(/datum/reagent/blood = 30)
	result = /obj/item/reagent_containers/food/snacks/bloodsoup

/datum/recipe/boiledslimeextract
	appliance = PAN
	reagents = list(
		/datum/reagent/water = 10
	)
	items = list(
		/obj/item/slime_extract
	)
	result = /obj/item/reagent_containers/food/snacks/boiledslimecore

/datum/recipe/fishfingers
	appliance = OVEN | PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/fish
	)
	coating = /datum/reagent/nutriment/coating/batter
	result = /obj/item/reagent_containers/food/snacks/fishfingers
	reagent_mix = RECIPE_REAGENT_REPLACE

/datum/recipe/mysterysoup
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/reagent_containers/food/snacks/badrecipe,
		/obj/item/reagent_containers/food/snacks/tofu,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/mysterysoup

/datum/recipe/mushroomsoup
	appliance = PAN
	fruit = list("mushroom" = 1)
	reagents = list(/datum/reagent/water = 10, /datum/reagent/drink/milk = 5)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/mushroomsoup

/datum/recipe/chawanmushi
	appliance = PAN
	fruit = list("mushroom" = 1)
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/soysauce = 5, /datum/reagent/nutriment/protein/egg = 6)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/chawanmushi

/datum/recipe/beetsoup
	appliance = PAN
	fruit = list("whitebeet" = 1, "cabbage" = 1)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/reagent_containers/food/snacks/beetsoup

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
		/obj/item/reagent_containers/food/snacks/cutlet,
		/obj/item/reagent_containers/food/snacks/cutlet
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/redcurry

/datum/recipe/greencurry
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk/cream = 5, /datum/reagent/spacespice = 2, /datum/reagent/nutriment/rice = 5)
	fruit = list("chili" = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/tofu,
		/obj/item/reagent_containers/food/snacks/tofu
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/greencurry

/datum/recipe/yellowcurry
	appliance = PAN
	reagents = list(/datum/reagent/drink/milk/cream = 5, /datum/reagent/spacespice = 2, /datum/reagent/nutriment/rice = 5)
	fruit = list("peanut" = 2, "potato" = 1)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/yellowcurry

/datum/recipe/bearchili
	appliance = PAN
	fruit = list("chili" = 1, "tomato" = 1)
	items = list(/obj/item/reagent_containers/food/snacks/bearmeat)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/bearchili

/datum/recipe/bearstew
	appliance = PAN
	fruit = list("potato" = 1, "tomato" = 1, "carrot" = 1, "eggplant" = 1, "mushroom" = 1)
	reagents = list(/datum/reagent/water = 10)
	items = list(/obj/item/reagent_containers/food/snacks/bearmeat)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/bearstew

/datum/recipe/bibimbap
	appliance = PAN
	fruit = list("carrot" = 1, "cabbage" = 1, "mushroom" = 1)
	reagents = list(/datum/reagent/nutriment/rice = 5, /datum/reagent/spacespice = 2, /datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/reagent_containers/food/snacks/cutlet
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/bibimbap

/datum/recipe/friedrice
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/rice = 10, /datum/reagent/nutriment/soysauce = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/friedrice

/datum/recipe/lomein
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/soysauce = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/spagetti
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/lomein

/datum/recipe/chilicheesefries
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/fries,
		/obj/item/reagent_containers/food/snacks/cheesewedge,
		/obj/item/reagent_containers/food/snacks/hotchili
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/chilicheesefries

/datum/recipe/meatbun
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/water = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/rawcutlet
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Water used up in cooking
	result = /obj/item/reagent_containers/food/snacks/meatbun

/datum/recipe/custardbun
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/water = 10, /datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/reagent_containers/food/snacks/doughslice
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Water, egg used up in cooking
	result = /obj/item/reagent_containers/food/snacks/custardbun

/datum/recipe/chickenmomo
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 2, /datum/reagent/water = 10)
	items = list(
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/meat/chicken
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/reagent_containers/food/snacks/chickenmomo

/datum/recipe/veggiemomo
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 2, /datum/reagent/water = 10)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/doughslice,
		/obj/item/reagent_containers/food/snacks/doughslice
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Get that water outta here
	result = /obj/item/reagent_containers/food/snacks/veggiemomo

/datum/recipe/risotto
	appliance = PAN
	reagents = list(/datum/reagent/ethanol/wine = 5, /datum/reagent/nutriment/rice = 10, /datum/reagent/spacespice = 1)
	fruit = list("mushroom" = 1)
	reagent_mix = RECIPE_REAGENT_REPLACE //Get that rice and wine outta here
	result = /obj/item/reagent_containers/food/snacks/risotto

/datum/recipe/poachedegg
	appliance = PAN
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1, /datum/reagent/water = 10, /datum/reagent/nutriment/protein/egg = 3)
	reagent_mix = RECIPE_REAGENT_REPLACE //Get that water outta here
	result = /obj/item/reagent_containers/food/snacks/poachedegg

/datum/recipe/chilied_eggs
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/hotchili,
		/obj/item/reagent_containers/food/snacks/boiledegg,
		/obj/item/reagent_containers/food/snacks/boiledegg,
		/obj/item/reagent_containers/food/snacks/boiledegg
	)
	result = /obj/item/reagent_containers/food/snacks/chilied_eggs

/datum/recipe/red_sun_special
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/sausage,
		/obj/item/reagent_containers/food/snacks/cheesewedge

	)
	result = /obj/item/reagent_containers/food/snacks/red_sun_special

/datum/recipe/hatchling_suprise
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/poachedegg,
		/obj/item/reagent_containers/food/snacks/bacon,
		/obj/item/reagent_containers/food/snacks/bacon,
		/obj/item/reagent_containers/food/snacks/bacon

	)
	result = /obj/item/reagent_containers/food/snacks/hatchling_surprise


/datum/recipe/sea_delight
	appliance = PAN
	reagents = list(
		/datum/reagent/water = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/egg,
		/obj/item/reagent_containers/food/snacks/egg,
		/obj/item/reagent_containers/food/snacks/egg
	)
	fruit = list(
		"gukhe" = 2
	)
	result = /obj/item/reagent_containers/food/snacks/sea_delight

/datum/recipe/stok_skewers
	appliance = PAN
	reagents = list(
		/datum/reagent/nutriment/vinegar = 5
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/cutlet,
		/obj/item/reagent_containers/food/snacks/cutlet
	)
	fruit = list(
		"gukhe" = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stok_skewers


/datum/recipe/gukhe_fish
	appliance = PAN
	reagents = list(
		/datum/reagent/sodiumchloride = 3,
		/datum/reagent/nutriment/vinegar = 3
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/fish
	)
	fruit = list(
		"gukhe" = 1
	)
	result = /obj/item/reagent_containers/food/snacks/gukhe_fish


/datum/recipe/riztizkzi_sea
	appliance = PAN
	reagents = list(/datum/reagent/coagulated_blood = 15, /datum/reagent/nutriment/protein/egg = 9)
	result = /obj/item/reagent_containers/food/snacks/riztizkzi_sea

/datum/recipe/father_breakfast
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/sausage,
		/obj/item/reagent_containers/food/snacks/omelette,
		/obj/item/reagent_containers/food/snacks/meatsteak
	)
	result = /obj/item/reagent_containers/food/snacks/father_breakfast

/datum/recipe/pancakes
	appliance = PAN
	reagents = list(
		/datum/reagent/nutriment/batter = 20
	)
	result = /obj/item/reagent_containers/food/snacks/pancakes

/datum/recipe/pancakesblu
	appliance = PAN
	fruit = list(
		"blueberries" = 2
	)
	reagents = list(
		/datum/reagent/nutriment/batter = 20
	)
	result = /obj/item/reagent_containers/food/snacks/pancakesblu

/datum/recipe/egg_pancake
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/omelette
	)
	result = /obj/item/reagent_containers/food/snacks/egg_pancake

/datum/recipe/bacon_and_eggs
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/bacon,
		/obj/item/reagent_containers/food/snacks/friedegg
	)
	result = /obj/item/reagent_containers/food/snacks/bacon_and_eggs

/datum/recipe/onionsoup
	appliance = PAN
	fruit = list("onion" = 2)
	reagents = list(/datum/reagent/water = 10)
	result = /obj/item/reagent_containers/food/snacks/onionsoup

/datum/recipe/porkbowl
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/nutriment/rice = 10)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/reagent_containers/food/snacks/bacon
	)
	result = /obj/item/reagent_containers/food/snacks/porkbowl

/datum/recipe/mashedpotato
	appliance = PAN
	fruit = list("potato" = 3)
	reagents = list(/datum/reagent/drink/milk/cream = 5)
	items = list(
		/obj/item/reagent_containers/food/snacks/spreads
	)
	result_quantity = 2
	result = /obj/item/reagent_containers/food/snacks/mashedpotato

/datum/recipe/crab_legs
	appliance = PAN
	reagents = list(/datum/reagent/water = 10, /datum/reagent/sodiumchloride = 1)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/crab,
		/obj/item/reagent_containers/food/snacks/spreads
		)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/crab_legs

/datum/recipe/steamed_mussels
	appliance = PAN
	reagents = list(
		/datum/reagent/ethanol/wine/premium = 10,
		/datum/reagent/sodiumchloride = 1,
		/datum/reagent/blackpepper = 1
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/mussel,
		/obj/item/reagent_containers/food/snacks/shellfish/mussel,
		/obj/item/reagent_containers/food/snacks/shellfish/mussel
	)
	result = /obj/item/reagent_containers/food/snacks/steamed_mussels

/datum/recipe/crab_cakes
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/protein/egg = 3)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/crab,
		/obj/item/reagent_containers/food/snacks/slice/bread,
	)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/crab_cakes

/datum/recipe/bisque
	appliance = PAN
	reagents = list(
		/datum/reagent/drink/milk/cream = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/crab,
		/obj/item/reagent_containers/food/snacks/shellfish/crab
	)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/reagent_containers/food/snacks/bisque

/datum/recipe/crab_dinner
	appliance = PAN
	reagents = list(
		/datum/reagent/water = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/crab,
		/obj/item/reagent_containers/food/snacks/shellfish/crab,
		/obj/item/reagent_containers/food/snacks/shellfish/crab,
		/obj/item/reagent_containers/food/snacks/fruit_slice
	)
	result = /obj/item/reagent_containers/food/snacks/crab_dinner


/datum/recipe/seafood_paella
	appliance = PAN
	reagents = list(
		/datum/reagent/ethanol/wine/premium = 5
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/shrimp,
		/obj/item/reagent_containers/food/snacks/shellfish/shrimp,
		/obj/item/reagent_containers/food/snacks/shellfish/mussel,
		/obj/item/reagent_containers/food/snacks/shellfish/mussel,
		/obj/item/reagent_containers/food/snacks/boiledrice
	)
	fruit = list(
		"tomato" = 1
	)
	result = /obj/item/reagent_containers/food/snacks/seafood_paella


/datum/recipe/shrimp_cocktail
	appliance = PAN
	reagents = list(
		/datum/reagent/nutriment/ketchup = 5
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/shrimp,
		/obj/item/reagent_containers/food/snacks/shellfish/shrimp,
		/obj/item/reagent_containers/food/snacks/shellfish/shrimp,
		/obj/item/reagent_containers/food/drinks/glass2/cocktail
	)
	result = /obj/item/reagent_containers/food/snacks/shrimp_cocktail

//Bacon
/datum/recipe/bacon_pan
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/rawbacon,
		/obj/item/reagent_containers/food/snacks/rawbacon,
		/obj/item/reagent_containers/food/snacks/rawbacon,
		/obj/item/reagent_containers/food/snacks/rawbacon,
		/obj/item/reagent_containers/food/snacks/rawbacon,
		/obj/item/reagent_containers/food/snacks/rawbacon,
		/obj/item/reagent_containers/food/snacks/spreads
	)
	result = /obj/item/reagent_containers/food/snacks/bacon
	result_quantity = 6

/datum/recipe/cutlet
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/rawcutlet
	)
	result = /obj/item/reagent_containers/food/snacks/cutlet

/datum/recipe/meatsteak
	appliance = PAN
	reagents = list(/datum/reagent/sodiumchloride = 1, /datum/reagent/blackpepper = 1)
	items = list(/obj/item/reagent_containers/food/snacks/meat)
	result = /obj/item/reagent_containers/food/snacks/meatsteak

/datum/recipe/plainsteak
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/meat
	)
	result = /obj/item/reagent_containers/food/snacks/plainsteak

/datum/recipe/loadedsteak
	appliance = PAN
	reagents = list(
		/datum/reagent/nutriment/garlicsauce = 5
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/meat
	)
	fruit = list(
		"onion" = 1,
		"mushroom" = 1
	)
	result = /obj/item/reagent_containers/food/snacks/loadedsteak

/datum/recipe/syntisteak
	appliance = PAN
	reagents = list(
		/datum/reagent/sodiumchloride = 1,
		/datum/reagent/blackpepper = 1
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/meat/syntiflesh
	)
	result = /obj/item/reagent_containers/food/snacks/meatsteak/synthetic


/datum/recipe/boiledspiderleg
	appliance = PAN
	reagents = list(
		/datum/reagent/water = 10
	)
	items = list(
		/obj/item/reagent_containers/food/snacks/spider
	)
	result = /obj/item/reagent_containers/food/snacks/spider/cooked


/datum/recipe/toastedsandwich
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/sandwich
	)
	result = /obj/item/reagent_containers/food/snacks/toastedsandwich

/datum/recipe/grilledcheese
	appliance = PAN
	items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/reagent_containers/food/snacks/grilledcheese

/datum/recipe/slimetoast
	appliance = PAN
	reagents = list(/datum/reagent/slimejelly = 5)
	items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/reagent_containers/food/snacks/jelliedtoast/slime

/datum/recipe/jelliedtoast
	appliance = PAN
	reagents = list(/datum/reagent/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/reagent_containers/food/snacks/jelliedtoast/cherry
