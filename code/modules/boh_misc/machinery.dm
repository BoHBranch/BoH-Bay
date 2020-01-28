/////////
// debug apcs
/////////
/obj/machinery/power/apc/debug
	cell_type = /obj/item/weapon/cell/infinite

/obj/machinery/power/apc/debug/skrell
	cell_type = /obj/item/weapon/cell/infinite
	req_access = list(access_skrellscoutship)

/////////
// toc apc
/////////
/obj/machinery/power/apc/hyper/toc
	req_access = list(list(access_engine_equip, access_bridge))
	emp_hardened = 1

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
// coffee
/////////
/obj/machinery/chemical_dispenser/tac_coffee
	name = "old coffee maker"
	desc = "Singlehandedly kicking ass for just as long as the ship. Probably older than you."
	icon = 'icons/boh/structures/coffee.dmi'
	icon_state = "coffee_dispenser"
	ui_title = "Coffee Dispenser"
	accept_drinking = 1
	core_skill = SKILL_COOKING
	can_contaminate = FALSE //See above.

/obj/machinery/chemical_dispenser/tac_coffee/full
	spawn_cartridges = list(
			/obj/item/weapon/reagent_containers/chem_disp_cartridge/coffee_old,
			/obj/item/weapon/reagent_containers/chem_disp_cartridge/cream
		)

/obj/machinery/chemical_dispenser/tac_coffee/full/good
	name = "coffee maker"
	spawn_cartridges = list(
			/obj/item/weapon/reagent_containers/chem_disp_cartridge/coffee,
			/obj/item/weapon/reagent_containers/chem_disp_cartridge/cream
		)

/////////
// iccg
/////////
/obj/machinery/power/apc/hyper/iccg
	emp_hardened = 1

//pd
/obj/machinery/pointdefense_control/iccg
	name = "targeting matrix"
	desc = "A specialized computer designed to synchronize a variety of weapon systems to fire at a singular target."
	initial_id_tag = "iccgpd"

/obj/machinery/pointdefense/iccg
	name = "point defense battery"
	desc = "A Kuiper pattern anti-meteor battery. Capable of destroying most threats in a single salvo."
	initial_id_tag = "iccgpd"
