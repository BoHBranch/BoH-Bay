
// see code/datums/recipe.dm
/datum/recipe/donkpocket
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/dough,
		/obj/item/weapon/reagent_containers/food/snacks/meatball
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/donkpocket //does it make sense for newly made donk to come out cold? no, do I care? coincidentally, also no.

/datum/recipe/hotdiggitydonk //heated donk
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/donkpocket
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/donkpocket/warm

/datum/recipe/meatkabob
	items = list(
		/obj/item/stack/material/rods,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/meatkabob

/datum/recipe/tofukabob
	items = list(
		/obj/item/stack/material/rods,
		/obj/item/weapon/reagent_containers/food/snacks/tofu,
		/obj/item/weapon/reagent_containers/food/snacks/tofu
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/tofukabob

/datum/recipe/microchips
	appliance = MICROWAVE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/rawsticks
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/microchips

/datum/recipe/cheesyfries
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fries,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/cheesyfries

/datum/recipe/bigbiteburger
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/hamburger,
		/obj/item/weapon/reagent_containers/food/snacks/meat,
		/obj/item/weapon/reagent_containers/food/snacks/meat,
		/obj/item/weapon/reagent_containers/food/snacks/meat
	)
	reagents = list(/datum/reagent/nutriment/protein/egg = 3)
	reagent_mix = RECIPE_REAGENT_REPLACE
	result = /obj/item/weapon/reagent_containers/food/snacks/bigbiteburger

/datum/recipe/fishandchips
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fries,
		/obj/item/weapon/reagent_containers/food/snacks/fish
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/fishandchips

/datum/recipe/sandwich
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/meatsteak,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/sandwich

/*/datum/recipe/spagetti We have the processor now
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice
	)
	result= /obj/item/weapon/reagent_containers/food/snacks/spagetti*/

/datum/recipe/superbiteburger
	fruit = list("tomato" = 1)
	reagents = list(/datum/reagent/sodiumchloride = 5, /datum/reagent/blackpepper = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bigbiteburger,
		/obj/item/weapon/reagent_containers/food/snacks/dough,
		/obj/item/weapon/reagent_containers/food/snacks/meat,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge,
		/obj/item/weapon/reagent_containers/food/snacks/boiledegg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/superbiteburger

/datum/recipe/candiedapple
	fruit = list("apple" = 1)
	reagents = list(/datum/reagent/water = 5, /datum/reagent/sugar = 5)
	result = /obj/item/weapon/reagent_containers/food/snacks/candiedapple

/datum/recipe/slimeburger
	reagents = list(/datum/reagent/slimejelly = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bun
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/jellyburger/slime

/datum/recipe/jellyburger
	reagents = list(/datum/reagent/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bun
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/jellyburger/cherry

/datum/recipe/twobread
	reagents = list(/datum/reagent/ethanol/wine = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/twobread

/datum/recipe/slimesandwich
	reagents = list(/datum/reagent/slimejelly = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/jellysandwich/slime

/datum/recipe/cherrysandwich
	reagents = list(/datum/reagent/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/jellysandwich/cherry

/datum/recipe/chocolateegg
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/egg,
		/obj/item/weapon/reagent_containers/food/snacks/chocolatebar
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/chocolateegg

/datum/recipe/sausage
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/cutlet
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/sausage
	result_quantity = 2

/datum/recipe/tossedsalad
	fruit = list("cabbage" = 2, "tomato" = 1, "carrot" = 1, "apple" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/tossedsalad

/datum/recipe/aesirsalad
	fruit = list("goldapple" = 1, "ambrosiadeus" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/aesirsalad

/datum/recipe/validsalad
	fruit = list("potato" = 1, "ambrosia" = 3)
	items = list(/obj/item/weapon/reagent_containers/food/snacks/meatball)
	result = /obj/item/weapon/reagent_containers/food/snacks/validsalad
	make_food(var/obj/container as obj)

		. = ..(container)
		for (var/obj/item/weapon/reagent_containers/food/snacks/validsalad/being_cooked in .)
			being_cooked.reagents.del_reagent(/datum/reagent/toxin)

//////////////////////////////////////////
// bs12 food port stuff
//////////////////////////////////////////

/datum/recipe/meatball
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/rawmeatball
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/meatball
	appliance = MICROWAVE

/datum/recipe/cutlet
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/rawcutlet
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/cutlet
	appliance = MICROWAVE

/datum/recipe/mint
	reagents = list(/datum/reagent/sugar = 5, /datum/reagent/capsaicin = 5)
	result = /obj/item/weapon/reagent_containers/food/snacks/mint

/////////////////////////////////////////////////////////////
//Synnono Meme Foods
//
//Most recipes replace reagents with RECIPE_REAGENT_REPLACE
//to simplify the end product and balance the amount of reagents
//in some foods. Many require the space spice reagent/condiment
//to reduce the risk of future recipe conflicts.
/////////////////////////////////////////////////////////////

/datum/recipe/bearburger
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bun,
		/obj/item/weapon/reagent_containers/food/snacks/bearmeat
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/bearburger

/datum/recipe/chickenfillet //Also just combinable, like burgers and hot dogs.
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/chickenkatsu,
		/obj/item/weapon/reagent_containers/food/snacks/bun
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/chickenfillet

/datum/recipe/honeytoast
	reagents = list(/datum/reagent/nutriment/honey = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	reagent_mix = RECIPE_REAGENT_REPLACE //Simplify end product
	result = /obj/item/weapon/reagent_containers/food/snacks/honeytoast

/datum/recipe/nachos
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/chipplate,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/chipplate/nachos

/datum/recipe/salsa
	fruit = list("chili" = 1, "tomato" = 1, "lime" = 1)
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/blackpepper = 1,/datum/reagent/sodiumchloride = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/dip/salsa
	reagent_mix = RECIPE_REAGENT_REPLACE //Ingredients are mixed together.

/datum/recipe/guac
	fruit = list("chili" = 1, "lime" = 1)
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/blackpepper = 1,/datum/reagent/sodiumchloride = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tofu
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/dip/guac
	reagent_mix = RECIPE_REAGENT_REPLACE //Ingredients are mixed together.

/datum/recipe/cheesesauce
	fruit = list("chili" = 1, "tomato" = 1)
	reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/blackpepper = 1,/datum/reagent/sodiumchloride = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/dip
	reagent_mix = RECIPE_REAGENT_REPLACE //Ingredients are mixed together.

/datum/recipe/burrito
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tortilla,
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/meatball
	)
	reagents = list(/datum/reagent/spacespice = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito

/datum/recipe/burrito_vegan
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/tortilla,
		/obj/item/weapon/reagent_containers/food/snacks/tofu
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito_vegan

/datum/recipe/burrito_spicy
	fruit = list("chili" = 2)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/burrito
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito_spicy

/datum/recipe/burrito_cheese
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/burrito,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito_cheese

/datum/recipe/burrito_cheese_spicy
	fruit = list("chili" = 2)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/burrito,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito_cheese_spicy

/datum/recipe/burrito_hell
	fruit = list("chili" = 10)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/burrito_spicy
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito_hell
	reagent_mix = RECIPE_REAGENT_REPLACE //Already hot sauce

/datum/recipe/burrito_mystery
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/burrito,
		/obj/item/weapon/reagent_containers/food/snacks/mysterysoup
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/burrito_mystery

/datum/recipe/bacon
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/rawbacon
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/bacon
	appliance = MICROWAVE

/datum/recipe/stuffed_meatball
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/meatball,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	fruit = list("cabbage" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/stuffed_meatball

/datum/recipe/grilled_carp
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp,
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp,
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp,
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp,
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp,
		/obj/item/weapon/reagent_containers/food/snacks/fish/carp
	)
	reagents = list(/datum/reagent/spacespice = 1)
	fruit = list("cabbage" = 1, "lime" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/sliceable/grilled_carp
	appliance = MICROWAVE

/datum/recipe/sushi_roll
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fish,
		/obj/item/weapon/reagent_containers/food/snacks/boiledrice
	)
	fruit = list("cabbage" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/sliceable/sushi_roll

/datum/recipe/bacon_stick
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/bacon,
		/obj/item/weapon/reagent_containers/food/snacks/boiledegg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/bacon_stick
	appliance = MICROWAVE

/datum/recipe/cheese_cracker
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/spreads,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	reagents = list(/datum/reagent/spacespice = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/cheese_cracker
	result_quantity = 4

/datum/recipe/ntmuffin
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/plumphelmetbiscuit,
		/obj/item/weapon/reagent_containers/food/snacks/sausage,
		/obj/item/weapon/reagent_containers/food/snacks/friedegg,
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/nt_muffin

/datum/recipe/fish_taco
	fruit = list("chili" = 1, "lemon" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/fish,
		/obj/item/weapon/reagent_containers/food/snacks/tortilla
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/fish_taco

/datum/recipe/blt
	fruit = list("tomato" = 1, "cabbage" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread,
		/obj/item/weapon/reagent_containers/food/snacks/bacon,
		/obj/item/weapon/reagent_containers/food/snacks/bacon
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/blt

/datum/recipe/onionrings
	fruit = list("onion" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/onionrings

/datum/recipe/berrymuffin
	reagents = list(/datum/reagent/drink/milk = 5, /datum/reagent/sugar = 5)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/dough
	)
	fruit = list("berries" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/berrymuffin

/datum/recipe/icecreamsandwich
	reagents = list(/datum/reagent/drink/milk = 5, "ice" = 5)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/icecream
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/icecreamsandwich

/datum/recipe/banana_split
	fruit = list("banana" = 1)
	reagents = list(/datum/reagent/drink/milk = 5, "ice" = 5)
	reagent_mix = RECIPE_REAGENT_REPLACE
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/icecream
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/banana_split
