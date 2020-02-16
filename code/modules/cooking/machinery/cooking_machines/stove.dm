/obj/machinery/appliance/cooker/stove
	name = "stove"
	desc = "Don't touch it!"
	icon_state = "stove_off"
	cook_type = "pan-fried"
	appliancetype = PAN
	food_color = "#a34719"
	can_burn_food = TRUE
	active_power_usage = 3 KILOWATTS // Half that of the oven
	heating_power = 6000

	resistance = 30000 // Approx. 12 minutes.
	idle_power_usage = 1 KILOWATTS
	//uses ~30% power to stay warm
	optimal_power = 1.2

	max_contents = 4
	container_type = /obj/item/weapon/reagent_containers/cooking_container/pan

	stat = POWEROFF	//Starts turned off

/obj/machinery/appliance/cooker/stove/on_update_icon()
	overlays.Cut()
	if ((stat & POWEROFF) || (stat & NOPOWER))
		icon_state = "stove_off"
	else
		icon_state = "stove_on"
	var/pans = Clamp(LAZYLEN(cooking_objs), 1, 4)
	if(!pans)
		return
	overlays += "pan[pans]" // 1 to 4
	..()