/obj/item/reagent_containers/food/drinks/bottle/skwine
	name = "Qokk-Hrona"
	desc = "A bottle of skrellian wine made from refined Qokk-loa, featuring an ornate cap. Not recommended for human consumption."
	icon_state = "qokk"
	center_of_mass = "x=16;y=4"
	New()
		..()
		reagents.add_reagent(/datum/reagent/ethanol/alien/qokkhrona, 100)
