/obj/item/weapon/reagent_containers/glass/bottle/thermite
	name = "Bottle"
	desc = "A small bottle"
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle-4"

/obj/item/weapon/reagent_containers/glass/bottle/thermite/New()
	..()
	reagents.add_reagent(/datum/reagent/thermite, 30)
	update_icon()
	
/obj/item/weapon/reagent_containers/glass/beaker/vial/jerraman/New()
	..()
	reagents.add_reagent(/datum/reagent/jerraman, 5)
	update_icon()