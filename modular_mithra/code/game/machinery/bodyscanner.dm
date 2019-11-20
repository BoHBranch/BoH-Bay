//Overrides the bodyscanner's sprites with MAGICAL CODE

/obj/machinery/bodyscanner
	icon = 'modular_mithra/icons/obj/Cryogenic2.dmi'
	icon_state = "scanner_open"
	var/obj/machinery/body_scanconsole/console

/obj/machinery/bodyscanner/on_update_icon()
	if(stat & (NOPOWER|BROKEN))
		icon_state = "scanner_off"
		set_light(0)

	var/h_ratio
	if(occupant)
		h_ratio = occupant.health / occupant.maxHealth
		switch(h_ratio)
			if(1.000)
				icon_state = "scanner_green"
				set_light(l_range = 1.5, l_power = 2, l_color = COLOR_LIME)
			if(0.001 to 0.999)
				icon_state = "scanner_yellow"
				set_light(l_range = 1.5, l_power = 2, l_color = COLOR_YELLOW)
			if(-0.999 to 0.000)
				icon_state = "scanner_red"
				set_light(l_range = 1.5, l_power = 2, l_color = COLOR_RED)
			else
				icon_state = "scanner_death"
				set_light(l_range = 1.5, l_power = 2, l_color = COLOR_RED)

	else
		icon_state = "scanner_open"
		set_light(0)

	if(console)
		console.update_icon(h_ratio)

/obj/machinery/body_scanconsole
	icon = 'modular_mithra/icons/obj/Cryogenic2.dmi'
	icon_state = "scanner_terminal_off"
	density = 1

/obj/machinery/body_scanconsole/on_update_icon(var/h_ratio)
	if(stat & (NOPOWER|BROKEN))
		icon_state = "scanner_terminal_off"
		set_light(0)
	else
		if(connected)
			if(h_ratio)
				switch(h_ratio)
					if(1.000)
						icon_state = "scanner_terminal_green"
						set_light(l_range = 1.5, l_power = 2, l_color = COLOR_LIME)
					if(-0.999 to 0.000)
						icon_state = "scanner_terminal_red"
						set_light(l_range = 1.5, l_power = 2, l_color = COLOR_RED)
					else
						icon_state = "scanner_terminal_dead"
						set_light(l_range = 1.5, l_power = 2, l_color = COLOR_RED)
			else
				icon_state = "scanner_terminal_blue"
				set_light(l_range = 1.5, l_power = 2, l_color = COLOR_BLUE)
		else
			icon_state = "scanner_terminal_off"
			set_light(0)