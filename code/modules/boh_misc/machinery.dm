/////////
// debug apcs
/////////
/obj/machinery/power/apc/debug
	cell_type = /obj/item/weapon/cell/infinite

/obj/machinery/power/apc/debug/skrell
	cell_type = /obj/item/weapon/cell/infinite
	req_access = list(access_skrellscoutship)

/////////
// Skrell Solars
/////////

/obj/machinery/power/solar/skrell
	name = "improved solar panel"
	efficiency = 85 //incredibly high until a reactor is mapped in for the scout ship.

/////////
// Vox Point-Defence
/////////
/obj/machinery/pointdefense/ramshackle
	name = "ramshackle point defense battery"
	desc = "A Kuiper pattern anti-meteor battery. Capable of destroying most threats in a single salvo. \
	This one appears to be in a rather horrible state of disrepair."
	initial_id_tag = "voxpd"

/obj/machinery/pointdefense_control/ramshackle
	name = "old targeting matrix"
	desc = "A specialized computer designed to synchronize a variety of weapon systems to fire at a singular target. \
	This one appears to be in a rather horrible state of disrepair."
	initial_id_tag = "voxpd"

/////////
// 'Proper' Nuke Reactor
/////////
/obj/machinery/power/port_gen/pacman/super/potato/proper
	name = "nuclear reactor"
	desc = "PTTO-8, an industrial all-in-one nuclear power plant by Neo-Chernobyl GmbH. It uses uranium and HFC as a fuel source. Rated for... well, the warnings of danger cover it."
	power_gen = 500000			//Watts output per power_output level
	icon_state = "potato"
	max_safe_output = 4
	max_power_output = 8	//The maximum power setting without emagging.
	temperature_gain = 60	//how much the temperature increases per power output level, in degrees per level
	max_temperature = 850
	time_per_sheet = 1200
	rad_power = 48
	max_sheets = 50
	atom_flags = ATOM_FLAG_OPEN_CONTAINER
	anchored = 1

/obj/machinery/power/port_gen/pacman/super/potato/proper/UseFuel()
	if(reagents.has_reagent("Heptafluoropropane"))
		rad_power = 24
		temperature_gain = 10
		reagents.remove_any(1)
		if(prob(2))
			audible_message("<span class='notice'>[src] churns happily</span>")
	else
		rad_power = initial(rad_power)
		temperature_gain = initial(temperature_gain)
	..()