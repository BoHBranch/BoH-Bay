/*
 * It undulates with lasciviousness.
 */
/obj/item/weapon/reagent_containers/food/snacks/nutrient_cube
	name = "nutrient cube"
	desc = "... ewwww. You aren't going to eat that, are you?"
	icon = 'icons/obj/food.dmi'
	icon_state = "nutrient_cube"
	reagents_to_add = list(
		/datum/reagent/nutriment = 5,
		/datum/reagent/nutriment/protein = 5,
		/datum/reagent/creth = 0.1
	)
	bitesize = 10

/*
 * Mantid nutrient dispenser, dispenses disgusting meat cubes
 */
/obj/machinery/mantid_dispenser
	name = "nutrient dispenser"
	desc = "This marvel of engineering and technology uses quantum super-technology to produce the highest quality... nourishment... cubes.."
	icon = 'icons/obj/machines/mantid_food.dmi'
	icon_state = "dispenser"
	anchored = 1
	density = 1
	active_power_usage = 5000
	idle_power_usage = 100
	var/list/allowed_objects = list(/obj/structure/closet)

/obj/machinery/mantid_dispenser/Initialize()
	. = ..()

/obj/machinery/mantid_dispenser/Destroy()
	return ..()

/obj/machinery/mantid_dispenser/attackby(var/obj/item/I, var/mob/user)
	if (stat & BROKEN || !I || !user)
		return

	add_fingerprint(user, 0, I)

	if (istype(I, /obj/item/weapon/storage/bag))
		var/obj/item/weapon/storage/bag/B = I
		to_chat(user, SPAN_NOTICE("You empty the bag."))
		for (var/obj/item/O in B.contents)
			B.remove_from_storage(O, src, 1)
		B.finish_bulk_removal()
		spawn_nutrient_cube()
		return

	if(!user.canUnEquip(I))
		return

	qdel(I)
	user.visible_message("\The [user] places \the [I] into \the [src].", "You place \the [I] into \the [src].")
	spawn_nutrient_cube()

/obj/machinery/mantid_dispenser/proc/spawn_nutrient_cube()
	var/obj/item/weapon/reagent_containers/food/snacks/nutrient_cube/C = new(get_turf(src))
	C.visible_message("\The [C] drops out of \the [src].")
