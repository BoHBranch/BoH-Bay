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
