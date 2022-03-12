//Circuitboards and other stuff are inserted into these frames to make machines
/obj/machinery/constructable_frame
	name = "machine frame"
	desc = "A rudimentary, hefty machine frame. Utilitarian!"
	icon = 'icons/obj/machines/constructable_frame.dmi'
	icon_state = "box_0"
	density = TRUE
	anchored = FALSE
	use_power = POWER_USE_OFF
	uncreated_component_parts = null
	construct_state = /decl/machine_construction/frame/unwrenched
	var/obj/item/weapon/stock_parts/circuitboard/circuit = null
	var/expected_machine_type
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_CLIMBABLE

/obj/machinery/constructable_frame/state_transition(decl/machine_construction/new_state)
	. = ..()
	update_icon()

/obj/machinery/constructable_frame/dismantle()
	new /obj/item/stack/material/steel(loc, 5)
	qdel(src)
	return TRUE

/obj/machinery/constructable_frame/machine_frame
	expected_machine_type = "machine"

/obj/machinery/constructable_frame/machine_frame/on_update_icon()
	switch(construct_state && construct_state.type)
		if(/decl/machine_construction/frame/awaiting_circuit)
			icon_state = "box_1"
		if(/decl/machine_construction/frame/awaiting_parts)
			icon_state = "box_2"
		else
			icon_state = "box_0"

/obj/machinery/constructable_frame/machine_frame/deconstruct
	anchored = TRUE
	construct_state = /decl/machine_construction/frame/awaiting_circuit

//For floors!
/obj/machinery/constructable_frame/machine_frame/floor
	name = "floor machine frame"
	desc = "A sleek machine frame that mounts to the floor. Innovative!"
	icon_state = "floor_0"
	density = FALSE
	expected_machine_type = "floor"
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE

/obj/machinery/constructable_frame/machine_frame/floor/on_update_icon()
	switch(construct_state && construct_state.type)
		if(/decl/machine_construction/frame/awaiting_circuit)
			icon_state = "floor_1"
		if(/decl/machine_construction/frame/awaiting_parts)
			icon_state = "floor_2"
		else
			icon_state = "floor_0"


/obj/machinery/constructable_frame/machine_frame/floor/deconstruct
	anchored = TRUE
	construct_state = /decl/machine_construction/frame/awaiting_circuit