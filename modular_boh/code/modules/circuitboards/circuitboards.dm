/obj/item/stock_parts/circuitboard/cloning
	name = "cloning control console"
	build_path = /obj/machinery/computer/cloning
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 3)

/obj/item/stock_parts/circuitboard/clonepod
	name = "clone pod"
	build_path = /obj/machinery/clonepod
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 3)
	req_components = list(
							/obj/item/stock_parts/scanning_module = 2,
							/obj/item/stock_parts/manipulator = 2,
							/obj/item/stock_parts/console_screen = 1)

/obj/item/stock_parts/circuitboard/clonescanner
	name = "cloning scanner"
	build_path = /obj/machinery/dna_scannernew
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2, TECH_BIO = 2)
	req_components = list(
							/obj/item/stock_parts/scanning_module = 1,
							/obj/item/stock_parts/manipulator = 1,
							/obj/item/stock_parts/micro_laser = 1,
							/obj/item/stock_parts/console_screen = 1)

/obj/item/stock_parts/circuitboard/resleever
	name = "neural lace resleever"
	build_path = /obj/machinery/resleever
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 3)
	req_components = list(
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/scanning_module = 1,
							/obj/item/stock_parts/manipulator = 3,
							/obj/item/stock_parts/console_screen = 1)