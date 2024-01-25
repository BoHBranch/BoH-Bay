#define MAX_FOOD_COOK_COUNT 3
#define MAX_FOOD_COMBINE_COUNT 4


#define COOKER_STRIP_RAW FLAG(0)

/obj/item/reagent_containers/food/snacks/var/list/cooked_with
/obj/item/reagent_containers/food/snacks/var/list/combined_names

/obj/machinery/appliance/cooker
	var/min_temp = 80 + T0C	//Minimum temperature to do any cooking
	var/optimal_temp = 200 + T0C	//Temperature at which we have 100% efficiency. efficiency is lowered on either side of this
	var/optimal_power = 1.1//cooking power at 100%
	var/set_temp = 200 + T0C
	var/temp_settings = 4 // the number of temperature settings to have, including min and optimal
	var/list/temp_options = list()

	var/loss = 1	//Temp lost per proc when equalising
	var/resistance = 320000	//Resistance to heating. combines with heating power to determine how long heating takes

	var/light_x = 0
	var/light_y = 0
	cooking_coeff = 0
	cooking_power = 0
	atom_flags = FALSE
	temperature_coefficient = 0.5

/obj/machinery/appliance/cooker/examine(mob/user)
	. = ..()
	if (.)	//no need to duplicate adjacency check
		if (!stat)
			if (temperature < min_temp)
				to_chat(user, SPAN_WARNING("\The [src] is still heating up and is too cold to cook anything yet."))
			else
				to_chat(user, SPAN_NOTICE("It is running at [round(get_efficiency(), 0.1)]% efficiency!"))
			to_chat(user, SPAN_NOTICE("Temperature: [round(temperature - T0C, 0.1)]C / [round(optimal_temp - T0C, 0.1)]C"))
		else
			to_chat(user, SPAN_WARNING("It is switched off."))

/obj/machinery/appliance/cooker/list_contents(mob/user)
	if (cooking_objs.len)
		var/string = "Contains...</br>"
		var/num = 0
		for (var/a in cooking_objs)
			num++
			var/datum/cooking_item/CI = a
			if (CI && CI.container)
				string += "- [CI.container.label(num)], [report_progress(CI)]</br>"
		to_chat(usr, string)
	else
		to_chat(usr, SPAN_NOTICE("It's empty."))

/obj/machinery/appliance/cooker/proc/get_efficiency()
	. = (cooking_power / optimal_power) * 100

/obj/machinery/appliance/cooker/Initialize()
	. = ..()
	var/interval = (optimal_temp - min_temp)/temp_settings
	for(var/newtemp = min_temp - interval, newtemp<=optimal_temp, newtemp+=interval)
		var/image/disp_image = image('icons/screen/radial.dmi', "radial_temp")
		var/hue = RotateHue(hsv(0, 255, 255), 120 * (1 - (newtemp-min_temp)/(optimal_temp-min_temp)))
		disp_image.color = HSVtoRGB(hue)
		temp_options["[newtemp - T0C]"] = disp_image
	temp_options["OFF"] = image('icons/misc/mark.dmi', "x3")
	loss = (active_power_usage / resistance)*0.5
	cooking_objs = list()
	for (var/i = 0, i < max_contents, i++)
		cooking_objs.Add(new /datum/cooking_item/(new container_type(src)))
	cooking = 0

	queue_icon_update()

/obj/machinery/appliance/cooker/attempt_toggle_power(mob/user)
	var/wasoff = stat & POWER_USE_ACTIVE
	if (!isliving(user))
		return

	if (!user.IsAdvancedToolUser())
		to_chat(user, "You lack the dexterity to do that!")
		return

	if (user.stat || user.restrained() || user.incapacitated())
		return

	if (!Adjacent(user) && !issilicon(user))
		to_chat(user, "You can't reach [src] from here.")
		return

	var/desired_temp = show_radial_menu(user, src, temp_options - (wasoff ? "OFF" : "[set_temp-T0C]"))
	if(!desired_temp || !Adjacent(user))
		return

	if(desired_temp == "OFF")
		stat |= POWER_USE_ACTIVE
	else
		set_temp = text2num(desired_temp) + T0C
		to_chat(user, SPAN_NOTICE("You set [src] to [round(set_temp-T0C)]C."))
		stat &= ~POWER_USE_ACTIVE
	use_power = !(stat & POWER_USE_ACTIVE)
	if(wasoff != (stat & POWER_USE_ACTIVE))
		user.visible_message("[user] turns [src] [use_power ? "on" : "off"].", "You turn [use_power ? "on" : "off"] [src].")
	playsound(src, 'sound/machines/click.ogg', 40, 1)
	update_icon()

/obj/machinery/appliance/cooker/on_update_icon()
	overlays.Cut()
	var/image/light
	if (use_power == 2 && !stat)
		light = image(icon, "light_on")
	else
		light = image(icon, "light_off")
	light.pixel_x = light_x
	light.pixel_y = light_y
	overlays += light

/obj/machinery/appliance/cooker/Process()
	if ((temperature >= set_temp) && (stat || use_power == 1))
		QUEUE_TEMPERATURE_ATOMS(src) // cool every tick if we're not turned on or heating
	if(!stat)
		heat_up()
	. = ..()

/obj/machinery/appliance/cooker/power_change()
	. = ..()
	queue_icon_update()

/obj/machinery/appliance/cooker/proc/update_cooking_power()
	var/temp_scale = 0
	if(temperature > min_temp)
		if(temperature >= optimal_temp)
			temp_scale = clamp(1 - ((optimal_temp - temperature) / optimal_temp), 0, 1)
		else
			temp_scale = temperature / optimal_temp
		//If we're between min and optimal this will yield a value in the range 0.7 to 1

	cooking_coeff = optimal_power * temp_scale
	RefreshParts() // this is what actually updates the cooking power, for some reason.

/obj/machinery/appliance/cooker/proc/heat_up()
	if (temperature < set_temp)
		if (use_power == 1 && ((set_temp - temperature) > 5))
			playsound(src, 'sound/machines/click.ogg', 20, 1)
			use_power = 2 //If we're heating we use the active power
			update_icon()
		temperature += heating_power / resistance
		update_cooking_power()
		return 1
	else
		if (use_power == 2)
			use_power = 1
			playsound(src, 'sound/machines/click.ogg', 20, 1)
			update_icon()
	QUEUE_TEMPERATURE_ATOMS(src)

/obj/machinery/appliance/cooker/ProcessAtomTemperature()
	if( ( !(stat & POWER_USE_ACTIVE) && !(stat & MACHINE_STAT_NOPOWER) ) ) // must be powered and turned on, to keep heating items
		update_cooking_power() // update!
		if(!LAZYLEN(cooking_objs))
			return TRUE
		for(var/datum/cooking_item/CI in cooking_objs)
			QUEUE_TEMPERATURE_ATOMS(CI.container)
		return TRUE // Don't kill this processing loop unless we're not powered or we're cold.
	. = ..()

//Cookers do differently, they use containers
/obj/machinery/appliance/cooker/has_space(obj/item/I)
	if (istype(I, /obj/item/reagent_containers/cooking_container))
		//Containers can go into an empty slot
		if (cooking_objs.len < max_contents)
			return 1
	else
		//Any food items directly added need an empty container. A slot without a container cant hold food
		for (var/datum/cooking_item/CI in cooking_objs)
			if (CI.container.check_contents() == 0)
				return CI

	return 0

/obj/machinery/appliance/cooker/add_content(obj/item/I, mob/user)
	var/datum/cooking_item/CI = ..()
	if (CI && CI.combine_target)
		to_chat(user, "The [I] will be used to make a [selected_option]. Output selection is returned to default for future items.")
		selected_option = null

/obj/item/material/chopping_board
	name = "chopping board"
	desc = "A food preparation surface that allows you to combine food more easily."
	icon = 'icons/obj/food/chopping_board.dmi'
	icon_state = "chopping_board"
	w_class = ITEM_SIZE_NORMAL
	default_material = MATERIAL_MAPLE


/obj/item/material/chopping_board/mahogany/default_material = MATERIAL_MAHOGANY


/obj/item/material/chopping_board/bamboo/default_material = MATERIAL_BAMBOO


/obj/item/material/chopping_board/attackby(obj/item/item, mob/living/user)
	if (istype(item, /obj/item/reagent_containers/food/snacks))
		if (istype(item, /obj/item/reagent_containers/food/snacks/variable))
			to_chat(user, SPAN_WARNING("\The [item] is already combinable."))
			return TRUE
		if (!user.unEquip(item, src))
			return TRUE
		var/obj/item/reagent_containers/food/snacks/source = item
		var/obj/item/reagent_containers/food/snacks/variable/result = new (get_turf(src))
		if (source.reagents?.total_volume)
			source.reagents.trans_to(result, source.reagents.total_volume)
		for (var/hint in source.nutriment_desc)
			result.nutriment_desc[hint] = source.nutriment_desc[hint]
		result.combined_names = source.combined_names?.Copy()
		result.cooked_with = source.cooked_with?.Copy()
		result.icon = source.icon
		result.icon_state = source.icon_state
		result.color = source.color
		result.CopyOverlays(source)
		result.name = source.name
		result.desc = source.desc
		qdel(source)
		return TRUE
	return ..()


/obj/item/reagent_containers/food/snacks/variable/attackby(obj/item/I, mob/living/user)
	if (istype(I, /obj/item/reagent_containers/food/snacks))
		combine(I, user)
		return TRUE
	return ..()


/obj/item/reagent_containers/food/snacks/variable/proc/combine(obj/item/reagent_containers/food/snacks/other, mob/user)
	var/combined_count = length(combined_names)
	var/other_combined_count = length(other.combined_names)
	if (combined_count + other_combined_count > 4)
		to_chat(user, SPAN_WARNING("This food combination is too large."))
	var/response
	if (bitecount || other.bitecount)
		if (user.a_intent == I_HELP)
			to_chat(user, SPAN_WARNING("This food is partially eaten. Combining it would be disgusting."))
			return FALSE
		if (user.a_intent == I_HURT)
			to_chat(user, SPAN_WARNING("This food is partially eaten.") + SPAN_NOTICE(" You combine it anyway."))
		else
			response = alert(user, "Combine Food Scraps?", "Combine Food", "Yes", "No") == "Yes"
			if (!response || !user.use_sanity_check(src, other))
				return FALSE
	if (!response && user.a_intent == I_HELP)
		response = alert(user, "Combine Food?", "Combine Food", "Yes", "No") == "Yes"
		if (!response || !user.use_sanity_check(src, other))
			return FALSE
	if (!user.unEquip(other, src))
		return FALSE
	if (!combined_count)
		combined_names = list(name)
		name = "[name] meal"
	if (other_combined_count)
		combined_names += other.combined_names
	else
		combined_names += other.name
	desc = "\A [combined_names[1]] with [english_list(combined_names.Copy(2))]"
	var/other_volume = other.reagents?.total_volume
	if (other_volume)
		var/volume = reagents.total_volume + other_volume
		if (reagents.maximum_volume < volume)
			reagents.maximum_volume = volume
		other.reagents.trans_to(src, volume)
	for (var/hint in other.nutriment_desc)
		if (!nutriment_desc[hint])
			nutriment_desc[hint] = 0
		nutriment_desc[hint] += other.nutriment_desc[hint]
	bitesize += (other.bitesize - other.bitecount)
	var/image/I = image(other.icon, other.icon_state)
	I.appearance_flags = DEFAULT_APPEARANCE_FLAGS | RESET_COLOR
	I.pixel_x = rand(-8, 8)
	I.pixel_y = rand(-8, 8)
	I.color = other.color
	I.CopyOverlays(other)
	I.SetTransform(scale = 0.8)
	AddOverlays(I)
	qdel(other)
	return TRUE


#undef COOKER_STRIP_RAW

#undef MAX_FOOD_COMBINE_COUNT
#undef MAX_FOOD_COOK_COUNT
