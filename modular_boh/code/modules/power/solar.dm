/obj/machinery/power/solar/improved/skrell
	name = "skrellian photovoltaic cell"
	desc = "A solar electric generator of Skrellian design. Made by Krri-gli can be seen near the bottom."
	efficiency = 2


/obj/machinery/power/solar/improved/skrell/on_update_icon()
	..()
	overlays.Cut()
	if(stat & MACHINE_BROKEN_HEALTH)
		overlays += image('icons/obj/power.dmi', icon_state = "solar_paneladv-b", layer = ABOVE_HUMAN_LAYER)
	else
		overlays += image('icons/obj/power.dmi', icon_state = "solar_paneladv", layer = ABOVE_HUMAN_LAYER)
		src.set_dir(angle2dir(adir))
	return
