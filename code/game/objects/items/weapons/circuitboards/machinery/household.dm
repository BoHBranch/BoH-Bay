/obj/item/weapon/stock_parts/circuitboard/microwave
	name = T_BOARD("microwave")
	build_path = /obj/machinery/microwave
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/capacitor = 3,
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/matter_bin = 2)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/fryer
	name = T_BOARD("fryer")
	build_path = /obj/machinery/appliance/cooker/fryer
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/capacitor = 3,
		/obj/item/weapon/stock_parts/scanning_module,
		/obj/item/weapon/stock_parts/matter_bin = 2)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/grill
	name = T_BOARD("grill")
	build_path = /obj/machinery/appliance/grill
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	req_components = list(
			/obj/item/weapon/stock_parts/capacitor = 3,
			/obj/item/weapon/stock_parts/scanning_module,
			/obj/item/weapon/stock_parts/matter_bin = 2)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/stove
	name = T_BOARD("stove")
	build_path = /obj/machinery/appliance/cooker/stove
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	req_components = list(
			/obj/item/weapon/stock_parts/capacitor = 3,
			/obj/item/weapon/stock_parts/scanning_module,
			/obj/item/weapon/stock_parts/matter_bin = 2)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/oven
	name = T_BOARD("oven")
	build_path = /obj/machinery/appliance/cooker/oven
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/capacitor = 3,
		/obj/item/weapon/stock_parts/scanning_module,
		/obj/item/weapon/stock_parts/matter_bin = 2
	)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/gibber
	name = T_BOARD("meat gibber")
	build_path = /obj/machinery/gibber
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_MATERIAL = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/manipulator = 2,
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/material/knife/kitchen/cleaver = 1)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/mixer
	name = T_BOARD("candy machine")
	build_path = /obj/machinery/appliance/mixer/candy
	board_type = "machine"
	origin_tech = list(TECH_BIO = 1, TECH_MATERIAL = 1)
	buildtype_select = TRUE
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/stock_parts/manipulator = 1,
		/obj/item/stack/cable_coil = 10)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)

/obj/item/weapon/stock_parts/circuitboard/mixer/get_buildable_types()
	return subtypesof(/obj/machinery/appliance/mixer)

/obj/item/weapon/stock_parts/circuitboard/honey
	name = T_BOARD("honey extractor")
	build_path = /obj/machinery/honey_extractor
	board_type = "machine"
	origin_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 1)
	req_components = list(
		/obj/item/weapon/stock_parts/manipulator = 2,
		/obj/item/weapon/stock_parts/matter_bin = 2)

/obj/item/weapon/stock_parts/circuitboard/honey/seed
	name = T_BOARD("seed extractor")
	build_path = /obj/machinery/seed_extractor
	board_type = "machine"

/obj/item/weapon/stock_parts/circuitboard/washer
	name = T_BOARD("washing machine")
	build_path = /obj/machinery/washing_machine
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 1)
	req_components = list(
		/obj/item/weapon/stock_parts/manipulator = 1,
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/pipe = 1)

/obj/item/weapon/stock_parts/circuitboard/vending
	name = T_BOARD("vending machine")
	build_path = /obj/machinery/vending/assist
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/stock_parts/manipulator = 1
	)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/weapon/stock_parts/keyboard = 1,
		/obj/item/weapon/stock_parts/power/apc/buildable = 1
	)
	buildtype_select = TRUE

/obj/item/weapon/stock_parts/circuitboard/vending/get_buildable_types()
	. = list()
	for(var/path in typesof(/obj/machinery/vending))
		var/obj/machinery/vending/vendor = path
		var/base_type = initial(vendor.base_type) || path
		. |= base_type