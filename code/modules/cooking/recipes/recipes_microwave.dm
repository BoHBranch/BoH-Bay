//These should be converted to /datum/recipe. Too bad!
/datum/microwave_recipe/classichotdog
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/holder/corgi
	)
	result_path = /obj/item/reagent_containers/food/snacks/classichotdog

/datum/microwave_recipe/meatburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/cutlet
	)
	result_path = /obj/item/reagent_containers/food/snacks/meatburger


/datum/microwave_recipe/brainburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/organ/internal/brain
	)
	result_path = /obj/item/reagent_containers/food/snacks/brainburger


/datum/microwave_recipe/roburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/robot_parts/head
	)
	result_path = /obj/item/reagent_containers/food/snacks/roburger


/datum/microwave_recipe/xenoburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/xenomeat
	)
	result_path = /obj/item/reagent_containers/food/snacks/xenoburger


/datum/microwave_recipe/fishburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/fish
	)
	result_path = /obj/item/reagent_containers/food/snacks/fishburger


/datum/microwave_recipe/tofuburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/tofu
	)
	result_path = /obj/item/reagent_containers/food/snacks/tofuburger


/datum/microwave_recipe/ghostburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/ectoplasm
	)
	result_path = /obj/item/reagent_containers/food/snacks/ghostburger


/datum/microwave_recipe/clownburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/clothing/mask/gas/clown_hat
	)
	result_path = /obj/item/reagent_containers/food/snacks/clownburger


/datum/microwave_recipe/mimeburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/clothing/head/beret
	)
	result_path = /obj/item/reagent_containers/food/snacks/mimeburger


/datum/microwave_recipe/bunbun
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/bun
	)
	result_path = /obj/item/reagent_containers/food/snacks/bunbun


/datum/microwave_recipe/hotdog
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/sausage
	)
	result_path = /obj/item/reagent_containers/food/snacks/hotdog


/datum/microwave_recipe/hot_donkpocket
	required_reagents = list()
	required_items = list(
		/obj/item/reagent_containers/food/snacks/donkpocket
	)
	result_path = /obj/item/reagent_containers/food/snacks/donkpocket


/datum/microwave_recipe/hot_donkpocket/CreateResult(obj/machinery/microwave/microwave)
	var/obj/item/reagent_containers/food/snacks/donkpocket/donk = locate() in microwave
	donk?.SetHot()
	return donk


/datum/microwave_recipe/meatkabob
	required_items = list(
		/obj/item/stack/material/rods,
		/obj/item/reagent_containers/food/snacks/cutlet,
		/obj/item/reagent_containers/food/snacks/cutlet
	)
	result_path = /obj/item/reagent_containers/food/snacks/meatkabob


/datum/microwave_recipe/tofukabob
	required_items = list(
		/obj/item/stack/material/rods,
		/obj/item/reagent_containers/food/snacks/tofu,
		/obj/item/reagent_containers/food/snacks/tofu
	)
	result_path = /obj/item/reagent_containers/food/snacks/tofukabob


/datum/microwave_recipe/cheesyfries
	required_items = list(
		/obj/item/reagent_containers/food/snacks/fries,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/cheesyfries


/datum/microwave_recipe/popcorn
	required_reagents = list(
		/datum/reagent/sodiumchloride = 5
	)
	required_produce = list(
		"corn" = 1
	)
	result_path = /obj/item/reagent_containers/food/snacks/popcorn


/datum/microwave_recipe/spellburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/meatburger,
		/obj/item/clothing/head/wizard
	)
	result_path = /obj/item/reagent_containers/food/snacks/spellburger


/datum/microwave_recipe/bigbiteburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/meatburger,
		/obj/item/reagent_containers/food/snacks/meat,
		/obj/item/reagent_containers/food/snacks/meat,
		/obj/item/reagent_containers/food/snacks/egg
	)
	result_path = /obj/item/reagent_containers/food/snacks/bigbiteburger


/datum/microwave_recipe/sandwich
	required_items = list(
		/obj/item/reagent_containers/food/snacks/meatsteak,
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/sandwich


/datum/microwave_recipe/superbiteburger
	required_reagents = list(
		/datum/reagent/sodiumchloride = 5,
		/datum/reagent/blackpepper = 5
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bigbiteburger,
		/obj/item/reagent_containers/food/snacks/dough,
		/obj/item/reagent_containers/food/snacks/meat,
		/obj/item/reagent_containers/food/snacks/cheesewedge,
		/obj/item/reagent_containers/food/snacks/boiledegg
	)
	required_produce = list(
		"tomato" = 1
	)
	result_path = /obj/item/reagent_containers/food/snacks/superbiteburger


/datum/microwave_recipe/candiedapple
	required_reagents = list(
		/datum/reagent/water = 10,
		/datum/reagent/sugar = 5
	)
	required_produce = list(
		"apple" = 1
	)
	result_path = /obj/item/reagent_containers/food/snacks/candiedapple


/datum/microwave_recipe/slimeburger
	required_reagents = list(
		/datum/reagent/slimejelly = 5
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun
	)
	result_path = /obj/item/reagent_containers/food/snacks/jellyburger/slime


/datum/microwave_recipe/jellyburger
	required_reagents = list(
		/datum/reagent/nutriment/cherryjelly = 5
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun
	)
	result_path = /obj/item/reagent_containers/food/snacks/jellyburger/cherry


/datum/microwave_recipe/twobread
	required_reagents = list(
		/datum/reagent/ethanol/wine = 5
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result_path = /obj/item/reagent_containers/food/snacks/twobread


/datum/microwave_recipe/threebread
	required_items = list(
		/obj/item/reagent_containers/food/snacks/twobread,
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result_path = /obj/item/reagent_containers/food/snacks/threebread


/datum/microwave_recipe/slimesandwich
	required_reagents = list(
		/datum/reagent/slimejelly = 5
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result_path = /obj/item/reagent_containers/food/snacks/jellysandwich/slime


/datum/microwave_recipe/cherrysandwich
	required_reagents = list(
		/datum/reagent/nutriment/cherryjelly = 5
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result_path = /obj/item/reagent_containers/food/snacks/jellysandwich/cherry


/datum/microwave_recipe/chocolateegg
	required_items = list(
		/obj/item/reagent_containers/food/snacks/egg,
		/obj/item/reagent_containers/food/snacks/chocolatebar
	)
	result_path = /obj/item/reagent_containers/food/snacks/chocolateegg


/datum/microwave_recipe/sausage
	required_items = list(
		/obj/item/reagent_containers/food/snacks/rawmeatball,
		/obj/item/reagent_containers/food/snacks/rawcutlet
	)
	result_path = /obj/item/reagent_containers/food/snacks/sausage


/datum/microwave_recipe/fatsausage
	required_reagents = list(
		/datum/reagent/blackpepper = 2
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/rawmeatball,
		/obj/item/reagent_containers/food/snacks/rawcutlet
	)
	result_path = /obj/item/reagent_containers/food/snacks/fatsausage


/datum/microwave_recipe/meatball
	required_items = list(
		/obj/item/reagent_containers/food/snacks/rawmeatball
	)
	result_path = /obj/item/reagent_containers/food/snacks/meatball


/datum/microwave_recipe/bacon
	required_items = list(
		/obj/item/reagent_containers/food/snacks/rawbacon
	)
	result_path = /obj/item/reagent_containers/food/snacks/bacon


/datum/microwave_recipe/mint
	required_reagents = list(
		/datum/reagent/sugar = 5,
		/datum/reagent/frostoil = 5
	)
	result_path = /obj/item/reagent_containers/food/snacks/mint


/datum/microwave_recipe/cake/chocolatebar
	required_reagents = list(
		/datum/reagent/drink/milk/chocolate = 10,
		/datum/reagent/nutriment/coco = 5,
		/datum/reagent/sugar = 5
	)
	result_path = /obj/item/reagent_containers/food/snacks/chocolatebar


/datum/microwave_recipe/stuffed_clam
	required_reagents = list(
		/datum/reagent/sodiumchloride = 1,
		/datum/reagent/blackpepper = 1
	)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/shellfish/clam,
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result_path = /obj/item/reagent_containers/food/snacks/stuffed_clam


/datum/microwave_recipe/berrymuffin
	required_reagents = list(/datum/reagent/drink/milk = 5, /datum/reagent/sugar = 5)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/dough
	)
	required_produce = list("berries" = 1)
	result_path = /obj/item/reagent_containers/food/snacks/berrymuffin

/datum/microwave_recipe/icecreamsandwich
	required_reagents = list(/datum/reagent/drink/milk = 5, "ice" = 5)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/icecream
	)
	result_path = /obj/item/reagent_containers/food/snacks/icecreamsandwich

/datum/microwave_recipe/banana_split
	required_produce = list("banana" = 1)
	required_reagents = list(/datum/reagent/drink/milk = 5, "ice" = 5)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/icecream
	)
	result_path = /obj/item/reagent_containers/food/snacks/banana_split

/datum/microwave_recipe/fish_taco
	required_produce = list("chili" = 1, "lemon" = 1)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/fish,
		/obj/item/reagent_containers/food/snacks/tortilla
	)
	result_path = /obj/item/reagent_containers/food/snacks/fish_taco

/datum/microwave_recipe/bacon_stick
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bacon,
		/obj/item/reagent_containers/food/snacks/boiledegg
	)
	result_path = /obj/item/reagent_containers/food/snacks/bacon_stick

/datum/microwave_recipe/cheese_cracker
	required_items = list(
		/obj/item/reagent_containers/food/snacks/spreads,
		/obj/item/reagent_containers/food/snacks/slice/bread,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	required_reagents = list(/datum/reagent/spacespice = 1)
	result_path = /obj/item/reagent_containers/food/snacks/cheese_cracker

/datum/microwave_recipe/ntmuffin
	required_items = list(
		/obj/item/reagent_containers/food/snacks/plumphelmetbiscuit,
		/obj/item/reagent_containers/food/snacks/sausage,
		/obj/item/reagent_containers/food/snacks/friedegg,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/nt_muffin

/datum/microwave_recipe/bearburger
	required_items = list(
		/obj/item/reagent_containers/food/snacks/bun,
		/obj/item/reagent_containers/food/snacks/bearmeat
	)
	result_path = /obj/item/reagent_containers/food/snacks/bearburger

/datum/microwave_recipe/chickenfillet //Also just combinable, like burgers and hot dogs.
	required_items = list(
		/obj/item/reagent_containers/food/snacks/chickenkatsu,
		/obj/item/reagent_containers/food/snacks/bun
	)
	result_path = /obj/item/reagent_containers/food/snacks/chickenfillet

/datum/microwave_recipe/honeytoast
	required_reagents = list(/datum/reagent/nutriment/honey = 5)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/slice/bread
	)
	result_path = /obj/item/reagent_containers/food/snacks/honeytoast

/datum/microwave_recipe/nachos
	required_items = list(
		/obj/item/reagent_containers/food/snacks/chipplate,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/chipplate/nachos

/datum/microwave_recipe/salsa
	required_produce = list("chili" = 1, "tomato" = 1, "lime" = 1)
	required_reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/blackpepper = 1,/datum/reagent/sodiumchloride = 1)
	result_path = /obj/item/reagent_containers/food/snacks/dip/salsa

/datum/microwave_recipe/guac
	required_produce = list("chili" = 1, "lime" = 1)
	required_reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/blackpepper = 1,/datum/reagent/sodiumchloride = 1)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/tofu
	)
	result_path = /obj/item/reagent_containers/food/snacks/dip/guac

/datum/microwave_recipe/cheesesauce
	required_produce = list("chili" = 1, "tomato" = 1)
	required_reagents = list(/datum/reagent/spacespice = 1, /datum/reagent/blackpepper = 1,/datum/reagent/sodiumchloride = 1)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/dip

/datum/microwave_recipe/burrito
	required_items = list(
		/obj/item/reagent_containers/food/snacks/tortilla,
		/obj/item/reagent_containers/food/snacks/meatball,
		/obj/item/reagent_containers/food/snacks/meatball
	)
	required_reagents = list(/datum/reagent/spacespice = 1)
	result_path = /obj/item/reagent_containers/food/snacks/burrito

/datum/microwave_recipe/burrito_vegan
	required_items = list(
		/obj/item/reagent_containers/food/snacks/tortilla,
		/obj/item/reagent_containers/food/snacks/tofu
	)
	result_path = /obj/item/reagent_containers/food/snacks/burrito_vegan

/datum/microwave_recipe/burrito_spicy
	required_produce = list("chili" = 2)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/burrito
	)
	result_path = /obj/item/reagent_containers/food/snacks/burrito_spicy

/datum/microwave_recipe/burrito_cheese
	required_items = list(
		/obj/item/reagent_containers/food/snacks/burrito,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/burrito_cheese

/datum/microwave_recipe/burrito_cheese_spicy
	required_produce = list("chili" = 2)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/burrito,
		/obj/item/reagent_containers/food/snacks/cheesewedge
	)
	result_path = /obj/item/reagent_containers/food/snacks/burrito_cheese_spicy

/datum/microwave_recipe/burrito_hell
	required_produce = list("chili" = 10)
	required_items = list(
		/obj/item/reagent_containers/food/snacks/burrito_spicy
	)
	result_path = /obj/item/reagent_containers/food/snacks/burrito_hell

/datum/microwave_recipe/burrito_mystery
	required_items = list(
		/obj/item/reagent_containers/food/snacks/burrito,
		/obj/item/reagent_containers/food/snacks/mysterysoup
	)
	result_path = /obj/item/reagent_containers/food/snacks/burrito_mystery

/datum/microwave_recipe/microchips
	required_items = list(
		/obj/item/reagent_containers/food/snacks/rawsticks
	)
	result_path = /obj/item/reagent_containers/food/snacks/microchips
