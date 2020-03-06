// SYNNONO MEME FOODS EXPANSION - Credit to Synnono from Aurorastation. Come play here sometime :(

/obj/item/weapon/reagent_containers/food/snacks/redcurry
	name = "red curry"
	gender = PLURAL
	desc = "A bowl of creamy red curry with meat and rice. This one looks savory."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "redcurry"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#f73333"
	reagents_to_add = list(/datum/reagent/nutriment = 8, /datum/reagent/nutriment/protein = 7)
	reagent_data = list(/datum/reagent/nutriment = list("savory meat and rice" = 8))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/greencurry
	name = "green curry"
	gender = PLURAL
	desc = "A bowl of creamy green curry with tofu, hot peppers and rice. This one looks spicy!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "greencurry"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#58b76c"
	reagents_to_add = list(
		/datum/reagent/nutriment = 12,
		/datum/reagent/nutriment/protein/tofu = 2,
		/datum/reagent/capsaicin = 2
	)
	reagent_data = list(/datum/reagent/nutriment = list("rice" = 12))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/yellowcurry
	name = "yellow curry"
	gender = PLURAL
	desc = "A bowl of creamy yellow curry with potatoes, peanuts and rice. This one looks mild."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "yellowcurry"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#bc9509"
	reagents_to_add = list(/datum/reagent/nutriment = 13, /datum/reagent/nutriment/protein = 2)
	reagent_data = list(/datum/reagent/nutriment = list("rice" = 8, "potatoes" = 5))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/bearburger
	name = "bearburger"
	desc = "The solution to your unbearable hunger."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "bearburger"
	filling_color = "#5d5260"
	reagents_to_add = list(/datum/reagent/nutriment/protein = 4) //So spawned burgers will not be empty I guess?
	bitesize = 5

/obj/item/weapon/reagent_containers/food/snacks/bearchili
	name = "bear chili"
	gender = PLURAL
	desc = "A dark, hearty chili. Can you bear the heat?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "bearchili"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#702708"
	reagents_to_add = list(
		/datum/reagent/nutriment = 3,
		/datum/reagent/nutriment/protein = 3,
		/datum/reagent/capsaicin = 3,
		/datum/reagent/drink/juice/tomato = 2,
		/datum/reagent/hyperzine = 3
	)
	reagent_data = list(/datum/reagent/nutriment = list("dark, hearty chili" = 3))
	bitesize = 6

/obj/item/weapon/reagent_containers/food/snacks/bearstew
	name = "bear stew"
	gender = PLURAL
	desc = "A thick, dark stew of bear meat and vegetables."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "bearstew"
	filling_color = "#9e673a"
	reagents_to_add = list(
		/datum/reagent/nutriment = 6,
		/datum/reagent/nutriment/protein = 4,
		/datum/reagent/hyperzine = 5,
		/datum/reagent/drink/juice/tomato = 5,
		/datum/reagent/imidazoline = 5,
		/datum/reagent/water = 5
	)
	reagent_data = list(/datum/reagent/nutriment = list("hearty stew" = 6))
	bitesize = 6

/obj/item/weapon/reagent_containers/food/snacks/bibimbap
	name = "bibimbap bowl"
	desc = "A traditional Korean meal of meat and mixed vegetables. It's served on a bed of rice, and topped with a fried egg."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "bibimbap"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#4f2100"
	reagents_to_add = list(/datum/reagent/nutriment = 10, /datum/reagent/nutriment/protein = 10)
	reagent_data = list(/datum/reagent/nutriment = list("egg" = 5, "vegetables" = 5))
	bitesize = 4

/obj/item/weapon/reagent_containers/food/snacks/lomein
	name = "lo mein"
	gender = PLURAL
	desc = "A popular Chinese noodle dish. Chopsticks optional."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "lomein"
	trash = /obj/item/trash/plate
	filling_color = "#fcee81"
	reagents_to_add = list(/datum/reagent/nutriment = 8, /datum/reagent/nutriment/protein = 2)
	reagent_data = list(/datum/reagent/nutriment = list("noodles" = 6, "sesame sauce" = 2))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/friedrice
	name = "fried rice"
	gender = PLURAL
	desc = "A less-boring dish of less-boring rice!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "friedrice"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#fffbdb"
	reagents_to_add = list(/datum/reagent/nutriment = 7)
	reagent_data = list(/datum/reagent/nutriment = list("rice" = 7))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/chickenfillet
	name = "chicken fillet sandwich"
	desc = "Fried chicken, in sandwich format. Beauty is simplicity."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "chickenfillet"
	filling_color = "#e9adff"
	reagents_to_add = list(/datum/reagent/nutriment = 4, /datum/reagent/nutriment/protein = 8)
	reagent_data = list(/datum/reagent/nutriment = list("breading" = 4))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/chilicheesefries
	name = "chili cheese fries"
	gender = PLURAL
	desc = "A mighty plate of fries, drowned in hot chili and cheese sauce. Because your arteries are overrated."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "chilicheesefries"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	reagents_to_add = list(/datum/reagent/nutriment = 8, /datum/reagent/nutriment/protein = 2, /datum/reagent/capsaicin = 2)
	reagent_data = list(/datum/reagent/nutriment = list("hearty, cheesy fries" = 8))
	bitesize = 4

/obj/item/weapon/reagent_containers/food/snacks/friedmushroom
	name = "fried mushroom"
	desc = "A tender, beer-battered plump helmet, fried to crispy perfection."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "friedmushroom"
	filling_color = "#eddd00"
	reagents_to_add = list(/datum/reagent/nutriment = 4, /datum/reagent/nutriment/protein = 2)
	reagent_data = list(/datum/reagent/nutriment = list("alcoholic mushrooms" = 4))
	bitesize = 5

/obj/item/weapon/reagent_containers/food/snacks/pisanggoreng
	name = "pisang goreng"
	gender = PLURAL
	desc = "Crispy, starchy, sweet banana fritters. Popular street food in parts of Sol."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pisanggoreng"
	trash = /obj/item/trash/plate
	filling_color = "#301301"
	reagents_to_add = list(/datum/reagent/nutriment = 8, /datum/reagent/nutriment/protein = 1)
	reagent_data = list(/datum/reagent/nutriment = list("sweet bananas" = 8))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/meatbun
	name = "meat bun"
	desc = "A soft, fluffy flour bun also known as baozi. This one is filled with a spiced meat filling."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "meatbun"
	filling_color = "#edd7d7"
	reagents_to_add = list(/datum/reagent/nutriment = 5, /datum/reagent/nutriment/protein = 3)
	reagent_data = list(/datum/reagent/nutriment = list("spice" = 5))
	bitesize = 5

/obj/item/weapon/reagent_containers/food/snacks/custardbun
	name = "custard bun"
	desc = "A soft, fluffy flour bun also known as baozi. This one is filled with an egg custard."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "meatbun"
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 2)
	reagent_data = list(/datum/reagent/nutriment = list("egg custard" = 6))
	filling_color = "#ebedc2"
	bitesize = 6

/obj/item/weapon/reagent_containers/food/snacks/chickenmomo
	name = "chicken momo"
	gender = PLURAL
	desc = "A plate of spiced and steamed chicken dumplings. The style originates from south Asia."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "tajaran_soup"
	trash = /obj/item/trash/snacktray
	filling_color = "#edd7d7"
	reagents_to_add = list(/datum/reagent/nutriment = 9, /datum/reagent/nutriment/protein = 6)
	reagent_data = list(/datum/reagent/nutriment = list("spiced chicken" = 9))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/veggiemomo
	name = "veggie momo"
	gender = PLURAL
	desc = "A plate of spiced and steamed vegetable dumplings. The style originates from south Asia."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "tajaran_soup"
	trash = /obj/item/trash/snacktray
	filling_color = "#edd7d7"
	reagents_to_add = list(/datum/reagent/nutriment = 13, /datum/reagent/nutriment/protein = 2)
	reagent_data = list(/datum/reagent/nutriment = list("spiced vegetables" = 13))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/risotto
	name = "risotto"
	gender = PLURAL
	desc = "A creamy, savory rice dish from southern Europe, typically cooked slowly with wine and broth. This one has bits of mushroom."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "risotto"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#edd7d7"
	reagents_to_add = list(/datum/reagent/nutriment = 9, /datum/reagent/nutriment/protein = 1)
	reagent_data = list(/datum/reagent/nutriment = list("savory rice" = 6, "cream" = 3))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/risottoballs
	name = "risotto balls"
	gender = PLURAL
	desc = "Mushroom risotto that has been battered and deep fried. The best use of leftovers!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "risottoballs"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#edd7d7"
	reagents_to_add = list(/datum/reagent/nutriment = 1)
	reagent_data = list(/datum/reagent/nutriment = list("batter" = 1))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/honeytoast
	name = "piece of honeyed toast"
	desc = "For those who like their breakfast sweet."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "honeytoast"
	trash = /obj/item/trash/plate
	filling_color = "#ede5ad"
	reagents_to_add = list(/datum/reagent/nutriment = 1)
	reagent_data = list(/datum/reagent/nutriment = list("sweet, crunchy bread" = 1))
	bitesize = 4

/obj/item/weapon/reagent_containers/food/snacks/poachedegg
	name = "poached egg"
	desc = "A delicately poached egg with a runny yolk. Healthier than its fried counterpart."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "poachedegg"
	trash = /obj/item/trash/plate
	filling_color = "#ffdf78"
	reagents_to_add = list(/datum/reagent/nutriment = 1, /datum/reagent/nutriment/protein = 3, /datum/reagent/blackpepper = 1)
	reagent_data = list(/datum/reagent/nutriment = list("egg" = 1))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/ribplate
	name = "plate of ribs"
	desc = "A half-rack of ribs, brushed with some sort of honey-glaze. Why are there no napkins on board?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "ribplate"
	trash = /obj/item/trash/plate
	filling_color = "#7a3d11"
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 6, /datum/reagent/nutriment/triglyceride = 2, /datum/reagent/blackpepper = 1, /datum/reagent/nutriment/honey = 5)
	reagent_data = list(/datum/reagent/nutriment = list("barbecue" = 6))
	bitesize = 4

// SLICEABLE FOODS - SYNNONO MEME FOOD EXPANSION - Credit to Synnono

/obj/item/weapon/reagent_containers/food/snacks/sliceable/keylimepie
	name = "key lime pie"
	desc = "A tart, sweet dessert. What's a key lime, anyway?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "keylimepie"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/keylimepieslice
	slices_num = 5
	filling_color = "#f5b951"
	reagents_to_add = list(/datum/reagent/nutriment = 16, /datum/reagent/nutriment/protein = 4)
	reagent_data = list(/datum/reagent/nutriment = list("lime" = 12, "graham crackers" = 4))

/obj/item/weapon/reagent_containers/food/snacks/keylimepieslice
	name = "slice of key lime pie"
	desc = "A slice of tart pie, with whipped cream on top."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "keylimepieslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 3
	reagent_data = list(/datum/reagent/nutriment = list("lime" = 1))

/obj/item/weapon/reagent_containers/food/snacks/keylimepieslice/filled
	reagents_to_add = list(/datum/reagent/nutriment = 1)

/obj/item/weapon/reagent_containers/food/snacks/sliceable/quiche
	name = "quiche"
	desc = "Real men eat this, contrary to popular belief."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "quiche"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/quicheslice
	slices_num = 5
	filling_color = "#f5b951"
	reagents_to_add = list(/datum/reagent/nutriment = 10, /datum/reagent/nutriment/protein = 10)
	reagent_data = list(/datum/reagent/nutriment = list("cheese" = 5, "egg" = 5))

/obj/item/weapon/reagent_containers/food/snacks/quicheslice
	name = "slice of quiche"
	desc = "A slice of delicious quiche. Eggy, cheesy goodness."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "quicheslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 3
	reagent_data = list(/datum/reagent/nutriment = list("cheesy eggs" = 1))

/obj/item/weapon/reagent_containers/food/snacks/quicheslice/filled
	reagents_to_add = list(/datum/reagent/nutriment = 1, /datum/reagent/nutriment/protein = 1)

/obj/item/weapon/reagent_containers/food/snacks/sliceable/brownies
	name = "brownies"
	gender = PLURAL
	desc = "Halfway to fudge, or halfway to cake? Who cares!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "brownies"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/browniesslice
	slices_num = 4
	trash = /obj/item/trash/brownies
	filling_color = "#301301"
	reagents_to_add = list(/datum/reagent/nutriment = 8, /datum/reagent/nutriment/protein = 2)
	reagent_data = list(/datum/reagent/nutriment = list("fudge" = 8))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/browniesslice
	name = "brownie"
	desc = "A dense, decadent chocolate brownie."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "browniesslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 2
	reagent_data = list(/datum/reagent/nutriment = list("fudge" = 1))

/obj/item/weapon/reagent_containers/food/snacks/browniesslice/filled
	reagents_to_add = list(/datum/reagent/nutriment = 1, /datum/reagent/nutriment/protein = 1)

/obj/item/weapon/reagent_containers/food/snacks/sliceable/cosmicbrownies
	name = "cosmic brownies"
	gender = PLURAL
	desc = "Like, ultra-trippy. Brownies HAVE no gender, man." //Except I had to add one!
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "cosmicbrownies"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/cosmicbrowniesslice
	slices_num = 4
	trash = /obj/item/trash/brownies
	filling_color = "#301301"
	reagents_to_add = list(/datum/reagent/nutriment = 8, /datum/reagent/nutriment/protein = 2, /datum/reagent/space_drugs = 2, /datum/reagent/bicaridine = 1, /datum/reagent/kelotane = 1, /datum/reagent/toxin = 1)
	reagent_data = list(/datum/reagent/nutriment = list("fudge" = 8))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/cosmicbrowniesslice
	name = "cosmic brownie"
	desc = "A dense, decadent and fun-looking chocolate brownie."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "cosmicbrowniesslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 3
	reagent_data = list(/datum/reagent/nutriment = list("fudge" = 1))

/obj/item/weapon/reagent_containers/food/snacks/cosmicbrowniesslice/filled
	reagents_to_add = list(/datum/reagent/nutriment = 1, /datum/reagent/nutriment/protein = 1)

/obj/item/weapon/reagent_containers/food/snacks/sausage/battered
	name = "battered sausage"
	desc = "A piece of mixed, long meat, battered and then deepfried."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "batteredsausage"
	filling_color = "#db0000"
	do_coating_prefix = FALSE
	bitesize = 2
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 6,
		/datum/reagent/nutriment/coating/batter = 1.7,
		/datum/reagent/nutriment/triglyceride/oil = 1.5
	)

/obj/item/weapon/reagent_containers/food/snacks/jalapeno_poppers
	name = "jalapeno popper"
	desc = "A battered, deep-fried chili pepper."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "popper"
	filling_color = "#00aa00"
	do_coating_prefix = FALSE
	reagents_to_add = list(
		/datum/reagent/nutriment = 2,
		/datum/reagent/nutriment/coating/batter = 2,
		/datum/reagent/nutriment/triglyceride/oil = 2)
	reagent_data = list(/datum/reagent/nutriment = list("chili pepper" = 2))
	bitesize = 1

/obj/item/weapon/reagent_containers/food/snacks/mouseburger
	name = "mouse burger"
	desc = "Squeaky and a little furry."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "ratburger"
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 4
	)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/lizardburger
	name = "lizard burger"
	desc = "Tastes like chicken."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "baconburger"
	bitesize = 2
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 4
	)

/obj/item/weapon/reagent_containers/food/snacks/chickenkatsu
	name = "chicken katsu"
	desc = "A Terran delicacy consisting of chicken fried in a light beer batter."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "katsu"
	trash = /obj/item/trash/plate
	filling_color = "#e9adff"
	do_coating_prefix = FALSE
	bitesize = 1.5
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 6,
		/datum/reagent/nutriment/coating/beerbatter = 2,
		/datum/reagent/nutriment/triglyceride/oil = 1
	)

/obj/item/weapon/reagent_containers/food/snacks/fries
	reagents_to_add = list(
		/datum/reagent/nutriment = 4,
		/datum/reagent/nutriment/triglyceride/oil = 1.2
	)
	reagent_data = list(/datum/reagent/nutriment = list("fries" = 4))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/microchips
	name = "micro chips"
	desc = "Soft and rubbery, should have fried them. Good for smaller crewmembers, maybe?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "microchips"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	reagents_to_add = list(/datum/reagent/nutriment = 4)
	reagent_data = list(/datum/reagent/nutriment = list("soggy fries" = 4))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/ovenchips
	name = "oven chips"
	desc = "Dark and crispy, but a bit dry."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "ovenchips"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	reagents_to_add = list(/datum/reagent/nutriment = 4)
	reagent_data = list(/datum/reagent/nutriment = list("crisp, dry fries" = 4))
	bitesize = 2


/obj/item/weapon/reagent_containers/food/snacks/sliceable/pizza/crunch
	name = "pizza crunch"
	desc = "This was once a normal pizza, but it has been coated in batter and deep-fried. Whatever toppings it once had are a mystery, but they're still under there, somewhere..."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pizzacrunch"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/pizzacrunchslice
	slices_num = 6
	reagents_to_add = list(
		/datum/reagent/nutriment = 25,
		/datum/reagent/nutriment/coating/batter = 6.5,
		/datum/reagent/nutriment/triglyceride/oil = 4
	)
	reagent_data = list(/datum/reagent/nutriment = list("fried pizza" = 25))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/sliceable/pizza/crunch/Initialize()
	. = ..()
	coating = reagents.get_reagent(/datum/reagent/nutriment/coating/batter)

/obj/item/weapon/reagent_containers/food/snacks/pizzacrunchslice
	name = "pizza crunch"
	desc = "A little piece of a heart attack. Its toppings are a mystery, hidden under batter."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pizzacrunchslice"
	filling_color = "#baa14c"
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/funnelcake
	name = "funnel cake"
	desc = "Funnel cakes rule!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "funnelcake"
	filling_color = "#ef1479"
	do_coating_prefix = FALSE
	reagents_to_add = list(
		/datum/reagent/nutriment/coating/batter = 10,
		/datum/reagent/sugar = 5
	)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/spreads
	name = "nutri-spread"
	desc = "A stick of plant-based nutriments in a semi-solid form. I can't believe it's not margarine!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "marge"
	bitesize = 2
	reagent_data = list(/datum/reagent/nutriment = list("margarine" = 1))
	reagents_to_add = list(/datum/reagent/nutriment = 20)

/obj/item/weapon/reagent_containers/food/snacks/spreads/butter
	name = "butter"
	desc = "A stick of pure butterfat made from milk products."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "butter"
	bitesize = 2
	reagent_data = list(/datum/reagent/nutriment = list("butter" = 1))
	reagents_to_add = list(
		/datum/reagent/nutriment/triglyceride = 20,
		/datum/reagent/sodiumchloride = 1
	)

/obj/item/weapon/reagent_containers/food/snacks/rawcutlet/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/material/knife))
		new /obj/item/weapon/reagent_containers/food/snacks/rawbacon(src)
		new /obj/item/weapon/reagent_containers/food/snacks/rawbacon(src)
		to_chat(user, "You slice the cutlet into thin strips of bacon.")
		qdel(src)
	else
		. = ..()

/obj/item/weapon/reagent_containers/food/snacks/rawbacon
	name = "raw bacon"
	desc = "A very thin piece of raw meat, cut from beef."
	icon = 'icons/obj/aurora/food_ingredients.dmi'
	icon_state = "rawbacon"
	bitesize = 1
	reagents_to_add = list(/datum/reagent/nutriment/protein = 0.33)

/obj/item/weapon/reagent_containers/food/snacks/bacon
	name = "bacon"
	desc = "A tasty meat slice. You don't see any pigs on this station, do you?"
	icon = 'icons/obj/aurora/food_ingredients.dmi'
	icon_state = "bacon"
	bitesize = 2
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 0.33,
		/datum/reagent/nutriment/triglyceride = 1
	)

/obj/item/weapon/reagent_containers/food/snacks/bacon/microwave
	name = "microwaved bacon"
	desc = "A tasty meat slice. You don't see any pigs on this station, do you?"
	icon = 'icons/obj/aurora/food_ingredients.dmi'
	icon_state = "bacon"
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/bacon/oven
	name = "oven-cooked bacon"
	desc = "A tasty meat slice. You don't see any pigs on this station, do you?"
	icon = 'icons/obj/aurora/food_ingredients.dmi'
	icon_state = "bacon"
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/bacon/pan
	name = "pan-cooked bacon"
	desc = "A tasty meat slice. You don't see any pigs on this station, do you?"
	icon = 'icons/obj/aurora/food_ingredients.dmi'
	icon_state = "bacon"
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/bacon_stick
	name = "eggpop"
	desc = "A bacon wrapped boiled egg, conviently skewered on a wooden stick."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "bacon_stick"
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 3,
		/datum/reagent/nutriment/protein/egg = 1
	)

/obj/item/weapon/reagent_containers/food/snacks/chilied_eggs
	name = "chilied eggs"
	desc = "Three deviled eggs floating in a bowl of meat chili. A popular lunchtime meal for Unathi in Ouerea."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "chilied_eggs"
	trash = /obj/item/trash/snack_bowl
	reagents_to_add = list(
		/datum/reagent/nutriment/protein/egg = 6,
		/datum/reagent/nutriment/protein = 2
	)


/obj/item/weapon/reagent_containers/food/snacks/cheese_cracker
	name = "supreme cheese toast"
	desc = "A piece of toast lathered with butter, cheese, spices, and herbs."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "cheese_cracker"
	reagent_data = list(/datum/reagent/nutriment = list("cheese toast" = 8))
	reagents_to_add = list(/datum/reagent/nutriment = 8)

/obj/item/weapon/reagent_containers/food/snacks/bacon_and_eggs
	name = "bacon and eggs"
	desc = "A piece of bacon and two fried eggs."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "bacon_and_eggs"
	trash = /obj/item/trash/plate
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 3,
		/datum/reagent/nutriment/protein/egg = 1
	)

/obj/item/weapon/reagent_containers/food/snacks/sweet_and_sour
	name = "sweet and sour pork"
	desc = "A traditional ancient sol recipe with a few liberties taken with meat selection."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "sweet_and_sour"
	reagent_data = list(/datum/reagent/nutriment = list("sweet and sour" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 3,)
	trash = /obj/item/trash/plate

/obj/item/weapon/reagent_containers/food/snacks/corn_dog
	name = "corn dog"
	desc = "A cornbread covered sausage deepfried in oil."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "corndog"
	reagent_data = list(/datum/reagent/nutriment = list("corn batter" = 4))
	reagents_to_add = list(/datum/reagent/nutriment = 4, /datum/reagent/nutriment/protein = 3)

/obj/item/weapon/reagent_containers/food/snacks/truffle
	name = "chocolate truffle"
	desc = "Rich bite-sized chocolate."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "truffle"
	reagents_to_add = list(/datum/reagent/nutriment/coco = 6)
	bitesize = 4

/obj/item/weapon/reagent_containers/food/snacks/truffle/random
	name = "mystery chocolate truffle"
	desc = "Rich bite-sized chocolate with a mystery filling!"

/obj/item/weapon/reagent_containers/food/snacks/truffle/random/Initialize()
	var/reagent_type = pick(list(
		/datum/reagent/drink/milk/cream,
		/datum/reagent/nutriment/cherryjelly,
		/datum/reagent/nutriment/mint,
		/datum/reagent/frostoil,
		/datum/reagent/capsaicin,
		/datum/reagent/drink/coffee,
		/datum/reagent/drink/milkshake
	))
	reagents_to_add[reagent_type] = 4
	. = ..()

/obj/item/weapon/reagent_containers/food/snacks/bacon_flatbread
	name = "bacon cheese flatbread"
	desc = "Not a pizza."
	icon_state = "bacon_pizza"
	icon = 'icons/obj/aurora/food.dmi'
	reagent_data = list(/datum/reagent/nutriment = list("flatbread" = 5))
	reagents_to_add = list(/datum/reagent/nutriment/protein = 5, /datum/reagent/nutriment = 5)

/obj/item/weapon/reagent_containers/food/snacks/meat_pocket
	name = "meat pocket"
	desc = "Meat and cheese stuffed in a flatbread pocket, grilled to perfection."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "meat_pocket"
	reagent_data = list(/datum/reagent/nutriment = list("flatbread" = 3))
	reagents_to_add = list(/datum/reagent/nutriment/protein = 3, /datum/reagent/nutriment = 3)

/obj/item/weapon/reagent_containers/food/snacks/fish_taco
	name = "carp taco"
	desc = "A questionably cooked fish taco decorated with herbs, spices, and special sauce."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "fish_taco"
	reagent_data = list(/datum/reagent/nutriment = list("flatbread" = 3))
	reagents_to_add = list(/datum/reagent/nutriment/protein/seafood = 3, /datum/reagent/nutriment = 3)

/obj/item/weapon/reagent_containers/food/snacks/nt_muffin
	name = "\improper NtMuffin"
	desc = "A NanoTrasen sponsered biscuit with egg, cheese, and sausage."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "nt_muffin"
	reagent_data = list(/datum/reagent/nutriment = list("biscuit" = 3))
	reagents_to_add = list(/datum/reagent/nutriment/protein = 5, /datum/reagent/nutriment = 3)

/obj/item/weapon/reagent_containers/food/snacks/pineapple_ring
	name = "pineapple ring"
	desc = "What the hell is this?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pineapple_ring"
	reagent_data = list(/datum/reagent/nutriment = list("sweetness" = 2))
	reagents_to_add = list(/datum/reagent/drink/juice/pineapple = 3, /datum/reagent/nutriment = 2)

/obj/item/weapon/reagent_containers/food/snacks/sliceable/pizza/pineapple
	name = "ham & pineapple pizza"
	desc = "One of the most debated pizzas in existence."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pineapple_pizza"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/pineappleslice
	slices_num = 6
	reagent_data = list(/datum/reagent/nutriment = list("pizza crust" = 10, "tomato" = 10, "ham" = 10))
	reagents_to_add = list(
		/datum/reagent/nutriment = 30,
		/datum/reagent/nutriment/protein = 4,
		/datum/reagent/nutriment/protein/cheese = 5,
		/datum/reagent/drink/juice/pineapple = 6
	)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/pineappleslice
	name = "ham & pineapple pizza slice"
	desc = "A slice of contraband."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pineapple_pizza_slice"
	filling_color = "#baa14c"
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/pineappleslice/filled
	reagent_data = list(/datum/reagent/nutriment = list("pizza crust" = 5, "tomato" = 5))
	reagents_to_add = list(/datum/reagent/nutriment = 5)

/obj/item/weapon/reagent_containers/food/snacks/baconburger
	name = "bacon burger"
	desc = "The cornerstone of every nutritious breakfast, now with bacon!"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "baconburger"
	filling_color = "#d63c3c"
	reagent_data = list(/datum/reagent/nutriment = list("bun" = 2))
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 4,
		/datum/reagent/nutriment = 3
	)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/blt
	name = "BLT"
	desc = "Bacon, lettuce, tomatoes. The perfect lunch."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "blt"
	filling_color = "#d63c3c"
	reagent_data = list(/datum/reagent/nutriment = list("bread" = 4))
	reagents_to_add = list(
		/datum/reagent/nutriment = 4,
		/datum/reagent/nutriment/protein = 4
	)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/onionrings
	name = "onion rings"
	desc = "Like circular fries but better."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "onionrings"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	reagent_data = list(/datum/reagent/nutriment = list("fried onions" = 5))
	reagents_to_add = list(/datum/reagent/nutriment = 5)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/berrymuffin
	name = "berry muffin"
	desc = "A delicious and spongy little cake, with berries."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "berrymuffin"
	filling_color = "#e0cf9b"
	reagents_to_add = list(/datum/reagent/nutriment = 5)
	reagent_data = list(/datum/reagent/nutriment = list("sweetness" = 1, "muffin" = 2, "berries" = 2))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/onionsoup
	name = "onion soup"
	desc = "A soup with layers."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "onionsoup"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#e0c367"
	reagents_to_add = list(/datum/reagent/nutriment = 5)
	reagent_data = list(/datum/reagent/nutriment = list("onion" = 2, "soup" = 2))
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/porkbowl
	name = "pork bowl"
	desc = "A bowl of fried rice with cuts of meat."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "porkbowl"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#fffbdb"
	bitesize = 2
	reagents_to_add = list(
		/datum/reagent/nutriment/rice = 6,
		/datum/reagent/nutriment/protein = 4
	)

/obj/item/weapon/reagent_containers/food/snacks/mashedpotato
	name = "mashed potato"
	desc = "Pillowy mounds of mashed potato."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "mashedpotato"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	reagents_to_add = list(/datum/reagent/nutriment = 4)
	reagent_data = list(/datum/reagent/nutriment = list("mashed potatoes" = 4))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/croissant
	name = "croissant"
	desc = "True french cuisine."
	icon = 'icons/obj/aurora/food.dmi'
	filling_color = "#e3d796"
	icon_state = "croissant"
	reagents_to_add = list(/datum/reagent/nutriment = 4)
	reagent_data = list(/datum/reagent/nutriment = list("french bread" = 4))
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/sliceable/bread
	name = "bread"
	icon_state = "Some plain old Earthen bread."
	icon_state = "bread"
	icon = 'icons/obj/aurora/food.dmi'
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/slice/bread
	slices_num = 8
	filling_color = "#ffe396"
	center_of_mass = list("x"=16, "y"=9)
	reagent_data = list(/datum/reagent/nutriment = list("bread" = 6))
	reagents_to_add = list(
		/datum/reagent/nutriment = 15,
		/datum/reagent/nutriment/protein = 5
	)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	name = "bread slice"
	desc = "A slice of home."
	icon_state = "breadslice"
	icon = 'icons/obj/aurora/food.dmi'
	trash = /obj/item/trash/plate
	filling_color = "#d27332"
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/slice/bread/filled
	reagent_data = list(/datum/reagent/nutriment = list("bread" = 2))
	reagents_to_add = list(/datum/reagent/nutriment = 1)


/obj/item/weapon/reagent_containers/food/snacks/crabmeat
	name = "crab legs"
	desc = "... Coffee? Is that you?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "crabmeat"
	bitesize = 1
	reagents_to_add = list(/datum/reagent/nutriment/protein/seafood = 2)

/obj/item/weapon/reagent_containers/food/snacks/crab_legs
	name = "steamed crab legs"
	desc = "Crab legs steamed and buttered to perfection. One day when the boss gets hungry..."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "crablegs"
	reagents_to_add = list(
		/datum/reagent/nutriment = 2,
		/datum/reagent/nutriment/protein/seafood = 6,
		/datum/reagent/sodiumchloride = 1
	)
	reagent_data = list(/datum/reagent/nutriment = list("savory butter" = 2))
	bitesize = 2
	trash = /obj/item/trash/plate

/obj/item/weapon/reagent_containers/food/snacks/pancakes
	name = "pancakes"
	desc = "Pancakes with berries, delicious."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "pancakes"
	trash = /obj/item/trash/plate
	reagent_data = list(/datum/reagent/nutriment = list("pancake" = 8))
	reagents_to_add = list(/datum/reagent/nutriment = 8)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/nugget
	name = "chicken nugget"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "nugget_lump"
	bitesize = 3
	reagents_to_add = list(/datum/reagent/nutriment/protein = 4)

/obj/item/weapon/reagent_containers/food/snacks/nugget/Initialize()
	. = ..()
	var/shape = pick("lump", "star", "lizard", "corgi")
	desc = "A chicken nugget vaguely shaped like a [shape]."
	icon_state = "nugget_[shape]"

/obj/item/weapon/reagent_containers/food/snacks/icecreamsandwich
	name = "ice cream sandwich"
	desc = "Portable ice cream in its own packaging."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "icecreamsandwich"
	filling_color = "#343834"
	reagent_data = list(/datum/reagent/nutriment = list("ice cream" = 4))
	reagents_to_add = list(/datum/reagent/nutriment = 4)

/obj/item/weapon/reagent_containers/food/snacks/honeybun
	name = "honey bun"
	desc = "A sticky pastry bun glazed with honey."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "honeybun"
	reagent_data = list(/datum/reagent/nutriment = list("pastry" = 1))
	reagents_to_add = list(/datum/reagent/nutriment = 3, /datum/reagent/nutriment/honey = 3)
	bitesize = 3

// Chip update.
/obj/item/weapon/reagent_containers/food/snacks/tortilla
	name = "tortilla"
	desc = "A thin, flour-based tortilla that can be used in a variety of dishes, or can be served as is."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "tortilla"
	bitesize = 3
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 1))
	reagents_to_add = list(/datum/reagent/nutriment = 6)

//chips
/obj/item/weapon/reagent_containers/food/snacks/chip
	name = "chip"
	desc = "A portion sized chip good for dipping."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "chip"
	var/bitten_state = "chip_half"
	bitesize = 1
	reagent_data = list(/datum/reagent/nutriment = list("fried tortilla chips" = 2))
	reagents_to_add = list(/datum/reagent/nutriment = 2)

/obj/item/weapon/reagent_containers/food/snacks/chip/On_Consume(mob/M as mob)
	. = ..()
	if(reagents && reagents.total_volume)
		icon_state = bitten_state

/obj/item/weapon/reagent_containers/food/snacks/chip/salsa
	name = "salsa chip"
	desc = "A portion sized chip good for dipping. This one has salsa on it."
	icon_state = "chip_salsa"
	bitten_state = "chip_half"
	reagent_data = list(/datum/reagent/nutriment = list("fried tortilla chips" = 1, "salsa" = 1))

/obj/item/weapon/reagent_containers/food/snacks/chip/guac
	name = "guac chip"
	desc = "A portion sized chip good for dipping. This one has guac on it."
	icon_state = "chip_guac"
	bitten_state = "chip_half"
	reagent_data = list(/datum/reagent/nutriment = list("fried tortilla chips" = 1, "guacamole" = 1))

/obj/item/weapon/reagent_containers/food/snacks/chip/cheese
	name = "cheese chip"
	desc = "A portion sized chip good for dipping. This one has cheese sauce on it."
	icon_state = "chip_cheese"
	bitten_state = "chip_half"
	reagent_data = list(/datum/reagent/nutriment = list("fried tortilla chips" = 1, "cheese" = 1))

/obj/item/weapon/reagent_containers/food/snacks/chip/nacho
	name = "nacho chip"
	desc = "A nacho ship stray from a plate of cheesy nachos."
	icon_state = "chip_nacho"
	bitten_state = "chip_half"
	reagent_data = list(/datum/reagent/nutriment = list("nacho chips" = 2))

/obj/item/weapon/reagent_containers/food/snacks/chip/nacho/salsa
	name = "nacho chip"
	desc = "A nacho ship stray from a plate of cheesy nachos. This one has salsa on it."
	icon_state = "chip_nacho_salsa"
	bitten_state = "chip_half"

/obj/item/weapon/reagent_containers/food/snacks/chip/nacho/guac
	name = "nacho chip"
	desc = "A nacho ship stray from a plate of cheesy nachos. This one has guac on it."
	icon_state = "chip_nacho_guac"
	bitten_state = "chip_half"

/obj/item/weapon/reagent_containers/food/snacks/chip/nacho/cheese
	name = "nacho chip"
	desc = "A nacho ship stray from a plate of cheesy nachos. This one has extra cheese on it."
	icon_state = "chip_nacho_cheese"
	bitten_state = "chip_half"

// chip plates
/obj/item/weapon/reagent_containers/food/snacks/chipplate
	name = "basket of chips"
	desc = "A plate of chips intended for dipping."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "chip_basket"
	trash = /obj/item/trash/chipbasket
	var/vendingobject = /obj/item/weapon/reagent_containers/food/snacks/chip
	reagent_data = list(/datum/reagent/nutriment = list("tortilla chips" = 10))
	bitesize = 1
	reagents_to_add = list(/datum/reagent/nutriment = 10)

/obj/item/weapon/reagent_containers/food/snacks/chipplate/attack_hand(mob/user)
	. = ..()
	var/obj/item/weapon/reagent_containers/food/snacks/returningitem = new vendingobject(loc)
	returningitem.reagents.clear_reagents()
	reagents.trans_to_holder(returningitem.reagents, bitesize)
	returningitem.bitesize = bitesize/2
	user.put_in_hands(returningitem)
	if (reagents && reagents.total_volume)
		to_chat(user, "You take a chip from the plate.")
	else
		to_chat(user, "You take the last chip from the plate.")
		var/obj/waste = new trash(loc)
		if (loc == user)
			user.put_in_hands(waste)
		qdel(src)

/obj/item/weapon/reagent_containers/food/snacks/chipplate/MouseDrop(mob/user) //Dropping the chip onto the user
	if(istype(user) && user == usr)
		user.put_in_active_hand(src)
		src.pickup(user)
		return
	. = ..()

/obj/item/weapon/reagent_containers/food/snacks/chipplate/nachos
	name = "plate of nachos"
	desc = "A very cheesy nacho plate."
	icon_state = "nachos"
	trash = /obj/item/trash/plate
	vendingobject = /obj/item/weapon/reagent_containers/food/snacks/chip/nacho
	reagent_data = list(/datum/reagent/nutriment = list("tortilla chips" = 10))
	bitesize = 1
	reagents_to_add = list(/datum/reagent/nutriment = 10)

//dips
/obj/item/weapon/reagent_containers/food/snacks/dip
	name = "queso dip"
	desc = "A simple, cheesy dip consisting of tomatos, cheese, and spices."
	var/nachotrans = /obj/item/weapon/reagent_containers/food/snacks/chip/nacho/cheese
	var/chiptrans = /obj/item/weapon/reagent_containers/food/snacks/chip/cheese
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "dip_cheese"
	trash = /obj/item/trash/dipbowl
	bitesize = 1
	reagent_data = list(/datum/reagent/nutriment = list("queso" = 20))
	reagents_to_add = list(/datum/reagent/nutriment = 20)

/obj/item/weapon/reagent_containers/food/snacks/dip/attackby(obj/item/weapon/reagent_containers/food/snacks/item as obj, mob/user as mob)
	. = ..()
	var/obj/item/weapon/reagent_containers/food/snacks/returningitem
	if(istype(item,/obj/item/weapon/reagent_containers/food/snacks/chip/nacho) && item.icon_state == "chip_nacho")
		returningitem = new nachotrans(src)
	else if (istype(item,/obj/item/weapon/reagent_containers/food/snacks/chip) && (item.icon_state == "chip" || item.icon_state == "chip_half"))
		returningitem = new chiptrans(src)
	if(returningitem)
		returningitem.reagents.clear_reagents() //Clear the new chip
		var/memed = 0
		item.reagents.trans_to_holder(returningitem.reagents, item.reagents.total_volume) //Old chip to new chip
		if(item.icon_state == "chip_half")
			returningitem.icon_state = "[returningitem.icon_state]_half"
			returningitem.bitesize = Clamp(returningitem.reagents.total_volume,1,10)
		else if(prob(1))
			memed = 1
			to_chat(user, "You scoop up some dip with the chip, but mid-scoop, the chip breaks off into the dreadful abyss of dip, never to be seen again...")
			returningitem.icon_state = "[returningitem.icon_state]_half"
			returningitem.bitesize = Clamp(returningitem.reagents.total_volume,1,10)
		else
			returningitem.bitesize = Clamp(returningitem.reagents.total_volume*0.5,1,10)
		qdel(item)
		reagents.trans_to_holder(returningitem.reagents, bitesize) //Dip to new chip
		user.put_in_hands(returningitem)
		
		if(!memed)
			to_chat(user, "You scoop up [(reagents && reagents.total_volume) ? "some" : "the remaining"] dip with \the [item].")
		if (!reagents || !reagents.total_volume)
			var/obj/waste = new trash(loc)
			if (loc == user)
				user.put_in_hands(waste)
			qdel(src)

/obj/item/weapon/reagent_containers/food/snacks/dip/salsa
	name = "salsa dip"
	desc = "Traditional Sol chunky salsa dip containing tomatos, peppers, and spices."
	nachotrans = /obj/item/weapon/reagent_containers/food/snacks/chip/nacho/salsa
	chiptrans = /obj/item/weapon/reagent_containers/food/snacks/chip/salsa
	icon_state = "dip_salsa"
	reagent_data = list(/datum/reagent/nutriment = list("salsa" = 20))
	reagents_to_add = list(/datum/reagent/nutriment = 20)

/obj/item/weapon/reagent_containers/food/snacks/dip/guac
	name = "guac dip"
	desc = "A recreation of the ancient Sol 'Guacamole' dip using tofu, limes, and spices. This recreation obviously leaves out mole meat."
	nachotrans = /obj/item/weapon/reagent_containers/food/snacks/chip/nacho/guac
	chiptrans = /obj/item/weapon/reagent_containers/food/snacks/chip/guac
	icon_state = "dip_guac"
	reagent_data = list(/datum/reagent/nutriment = list("guacamole" = 20))
	reagents_to_add = list(/datum/reagent/nutriment = 20)

//burritos
/obj/item/weapon/reagent_containers/food/snacks/burrito
	name = "meat burrito"
	desc = "Meat wrapped in a flour tortilla. It's a burrito by definition."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 4)


/obj/item/weapon/reagent_containers/food/snacks/burrito_vegan
	name = "vegan burrito"
	desc = "Tofu wrapped in a flour tortilla. Those seen with this food object are Valid."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito_vegan"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein/tofu = 6)

/obj/item/weapon/reagent_containers/food/snacks/burrito_spicy
	name = "spicy meat burrito"
	desc = "Meat and chilis wrapped in a flour tortilla."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito_spicy"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 6)

/obj/item/weapon/reagent_containers/food/snacks/burrito_cheese
	name = "meat cheese burrito"
	desc = "Meat and melted cheese wrapped in a flour tortilla."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito_cheese"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 6)

/obj/item/weapon/reagent_containers/food/snacks/burrito_cheese_spicy
	name = "spicy cheese meat burrito"
	desc = "Meat, melted cheese, and chilis wrapped in a flour tortilla."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito_cheese_spicy"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6, /datum/reagent/nutriment/protein = 6)

/obj/item/weapon/reagent_containers/food/snacks/burrito_hell
	name = "el diablo"
	desc = "Meat and an insane amount of chilis packed in a flour tortilla. The Chaplain will see you now."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito_hell"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("hellfire" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 24)// 10 Chilis is a lot.

/obj/item/weapon/reagent_containers/food/snacks/breakfast_wrap
	name = "breakfast wrap"
	desc = "Bacon, eggs, cheese, and tortilla grilled to perfection."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "breakfast_wrap"
	bitesize = 4
	reagent_data = list(/datum/reagent/nutriment = list("tortilla" = 6))
	reagents_to_add = list(
		/datum/reagent/nutriment = 6,
		/datum/reagent/nutriment/protein = 9,
		/datum/reagent/capsaicin/condensed = 20
	)

/obj/item/weapon/reagent_containers/food/snacks/burrito_mystery
	name = "mystery meat burrito"
	desc = "The mystery is, why aren't you BSAing it?"
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "burrito_mystery"
	bitesize = 5
	reagent_data = list(/datum/reagent/nutriment = list("regret" = 6))
	reagents_to_add = list(/datum/reagent/nutriment = 6)

/obj/item/weapon/reagent_containers/food/snacks/hatchling_suprise
	name = "hatchling suprise"
	desc = "A poached egg on top of three slices of bacon. A typical breakfast for hungry Unathi children."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "hatchling_suprise"
	trash = /obj/item/trash/snack_bowl
	reagents_to_add = list(
		/datum/reagent/nutriment/protein/egg = 2,
		/datum/reagent/nutriment/protein = 4
	)

/obj/item/weapon/reagent_containers/food/snacks/red_sun_special
	name = "red sun special"
	desc = "One lousy piece of sausage sitting on melted cheese curds. A cheap meal for the Unathi peasants of Moghes."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "red_sun_special"
	trash = /obj/item/trash/plate
	reagents_to_add = list(/datum/reagent/nutriment/protein = 2)

/obj/item/weapon/reagent_containers/food/snacks/riztizkzi_sea
	name = "moghesian sea delight"
	desc = "Three raw eggs floating in a sea of blood. An authentic replication of an ancient Unathi delicacy."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "riztizkzi_sea"
	trash = /obj/item/trash/snack_bowl
	reagents_to_add = list(/datum/reagent/nutriment/protein/egg = 4)

/obj/item/weapon/reagent_containers/food/snacks/father_breakfast
	name = "breakfast of champions"
	desc = "A sausage and an omelette on top of a grilled steak."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "father_breakfast"
	trash = /obj/item/trash/plate
	reagents_to_add = list(
		/datum/reagent/nutriment/protein/egg = 4,
		/datum/reagent/nutriment/protein = 6
	)

/obj/item/weapon/reagent_containers/food/snacks/stuffed_meatball
	name = "stuffed meatball" //YES
	desc = "A meatball loaded with cheese."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "stuffed_meatball"
	reagents_to_add = list(/datum/reagent/nutriment/protein = 4)

/obj/item/weapon/reagent_containers/food/snacks/egg_pancake
	name = "meat pancake"
	desc = "An omelette baked on top of a giant meat patty. This monstrousity is typically shared between four people during a dinnertime meal."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "egg_pancake"
	trash = /obj/item/trash/plate
	reagents_to_add = list(
		/datum/reagent/nutriment/protein = 6,
		/datum/reagent/nutriment/protein/egg = 2
	)

/obj/item/weapon/reagent_containers/food/snacks/sliceable/grilled_carp
	name = "korlaaskak"
	desc = "A well-dressed carp, seared to perfection and adorned with herbs and spices. Can be sliced into proper serving sizes."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "grilled_carp"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/grilled_carp_slice
	slices_num = 6
	trash = /obj/item/trash/snacktray
	reagents_to_add = list(/datum/reagent/nutriment/protein/seafood = 12)

/obj/item/weapon/reagent_containers/food/snacks/grilled_carp_slice
	name = "korlaaskak slice"
	desc = "A well-dressed fillet of carp, seared to perfection and adorned with herbs and spices."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "grilled_carp_slice"
	trash = /obj/item/trash/plate

/obj/item/weapon/reagent_containers/food/snacks/sliceable/sushi_roll
	name = "sushi roll"
	desc = "A sushi roll wrapped in special grass that combines unathi and human cooking techniques. Can be sliced into proper serving sizes."
	icon_state = "sushi_roll"
	icon = 'icons/obj/aurora/food.dmi'
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/sushi
	slices_num = 3
	reagents_to_add = list(/datum/reagent/nutriment/protein/seafood = 6)

/obj/item/weapon/reagent_containers/food/snacks/banana_split
	name = "banana split"
	desc = "A dessert made with icecream and a banana."
	icon_state = "banana_split"
	icon = 'icons/obj/aurora/food.dmi'
	bitesize = 2
	trash = /obj/item/trash/snack_bowl
	reagents_to_add = list(/datum/reagent/nutriment = 5, /datum/reagent/drink/juice/banana = 3)
	reagent_data = list(/datum/reagent/nutriment = list("icecream" = 5))

/obj/item/weapon/reagent_containers/food/snacks/lasagna
	name = "lasagna"
	desc = "Favorite of cats."
	icon_state = "lasagna"
	icon = 'icons/obj/aurora/food.dmi'
	trash = /obj/item/trash/tray
	center_of_mass = list("x"=16, "y"=17)
	reagents_to_add = list(/datum/reagent/nutriment = 12, /datum/reagent/nutriment/protein = 12)
	reagent_data = list(/datum/reagent/nutriment = list("pasta" = 4, "tomato" = 2))
	bitesize = 6