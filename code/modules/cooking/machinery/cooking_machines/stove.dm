/obj/machinery/appliance/cooker/stove
	name = "stove"
	desc = "Don't touch it!"
	icon_state = "stove_off"
	cook_type = "pan-fried"
	appliancetype = PAN
	food_color = "#a34719"
	can_burn_food = TRUE
	active_power_usage = 6 KILOWATTS
	heating_power = 6000
	on_icon = "stove_on"
	off_icon = "stove_off"

	resistance = 30000 // Approx. 12 minutes.
	idle_power_usage = 1 KILOWATTS
	//uses ~30% power to stay warm
	optimal_temp = T0C + 170 // bit lower than the rest
	optimal_power = 1.2

	max_contents = 4
	container_type = /obj/item/weapon/reagent_containers/cooking_container/pan

	stat = POWEROFF	//Starts turned off

/obj/machinery/appliance/cooker/stove/on_update_icon()
	. = ..()
	overlays.Cut()
	var/pans = LAZYLEN(cooking_objs)
	if(!pans)
		return
	overlays += image('icons/obj/aurora/cooking_machines.dmi', "pan[Clamp(pans, 1, 4)]") // 1 to 4

/obj/machinery/appliance/cooker/stove/power_change()
	. = ..()
	if(!stat)
		QUEUE_TEMPERATURE_ATOMS(src)

/obj/machinery/appliance/cooker/stove/ProcessAtomTemperature()
	if(!stat)
		temperature = internal_temperature
		if(!LAZYLEN(cooking_objs))
			return TRUE
		for(var/obj/item/weapon/reagent_containers/cooking_container/pan/P in cooking_objs)
			QUEUE_TEMPERATURE_ATOMS(P)
		return TRUE // Don't kill this processing loop unless we're not powered.
	. = ..()