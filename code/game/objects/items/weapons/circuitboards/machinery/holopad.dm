//Holopads are now deconstructable and reconstructable and constructable, cry about it
/obj/item/weapon/stock_parts/circuitboard/holopad
	name = T_BOARD("holopad")
	build_path = /obj/machinery/hologram/holopad
	board_type = "floor"

	origin_tech = list(
		TECH_DATA = 2,
		TECH_MAGNET = 2
	)

	req_components = list(
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/scanning_module = 1,
		/obj/item/weapon/stock_parts/keyboard = 1
	)

//Bluespace because why not
/obj/item/weapon/stock_parts/circuitboard/holopad/longrange
	name = T_BOARD("long range holopad")
	build_path = /obj/machinery/hologram/holopad/longrange

	origin_tech = list(
		TECH_BLUESPACE = 2,
		TECH_DATA = 2,
		TECH_MAGNET = 2
	)