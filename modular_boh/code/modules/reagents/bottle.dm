/obj/item/reagent_containers/glass/bottle/thermite
	name = "Bottle"
	desc = "A small bottle"
	icon = 'icons/obj/chemical_storage.dmi'
	icon_state = "vial"

/obj/item/reagent_containers/glass/bottle/thermite/New()
	..()
	reagents.add_reagent(/datum/reagent/thermite, 30)
	update_icon()

/obj/item/reagent_containers/glass/beaker/vial/jerraman/New()
	..()
	reagents.add_reagent(/datum/reagent/jerraman, 5)
	update_icon()
