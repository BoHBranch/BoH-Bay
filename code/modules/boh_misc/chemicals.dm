//////////
// Project Vial
/////////
/obj/item/weapon/reagent_containers/glass/beaker/vial/projectsecret
	name = "unmarked vial"
	New()
		..()
		reagents.add_reagent(/datum/reagent/random, 30)
		update_icon()