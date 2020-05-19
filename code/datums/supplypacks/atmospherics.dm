/decl/hierarchy/supply_pack/atmospherics
	name = "Atmosfericos"
	containertype = /obj/structure/closet/crate/internals

/decl/hierarchy/supply_pack/atmospherics/internals
	name = "Equipo - Internals"
	contains = list(/obj/item/clothing/mask/gas = 3,
					/obj/item/weapon/tank/air = 3)
	cost = 10
	containername = "caja de internals"

/decl/hierarchy/supply_pack/atmospherics/evacuation
	name = "Equipamiento de emergencia"
	contains = list(/obj/item/weapon/storage/toolbox/emergency = 2,
					/obj/item/clothing/suit/storage/hazardvest = 2,
					/obj/item/weapon/tank/emergency/oxygen/engi = 4,
			 		/obj/item/clothing/suit/space/emergency = 4,
					/obj/item/clothing/head/helmet/space/emergency = 4,
					/obj/item/clothing/mask/gas = 4,
					/obj/item/device/flashlight/flare/glowstick = 5)
	cost = 25

	containername = "caja de emergencia"

/decl/hierarchy/supply_pack/atmospherics/inflatable
	name = "Equipamiento - Barreras inflables"
	contains = list(/obj/item/weapon/storage/briefcase/inflatable = 3)
	cost = 20
	containertype = /obj/structure/closet/crate
	containername = "caja de barreras inflables"

/decl/hierarchy/supply_pack/atmospherics/rpd
	name = "Equipamiento - Dispositivo de tuberia Rapida"
	contains = list(/obj/item/weapon/rpd)
	cost = 100
	containertype = /obj/structure/closet/crate/secure
	access = access_atmospherics
	containername = "caja de RPD"

/decl/hierarchy/supply_pack/atmospherics/canister_empty
	name = "Equipamiento - Bombona vacia"
	contains = list(/obj/machinery/portable_atmospherics/canister)
	cost = 7
	containername = "caja de bombona vacia"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_air
	name = "Gas - Bombona de aire"
	contains = list(/obj/machinery/portable_atmospherics/canister/air)
	cost = 10
	containername = "Caja de bombona de aire"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_oxygen
	name = "Gas - Bombona de oxigeno"
	contains = list(/obj/machinery/portable_atmospherics/canister/oxygen)
	cost = 15
	containername = "Caja de bombona de oxigeno"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_nitrogen
	name = "Gas - Bombona de nitrogeno"
	contains = list(/obj/machinery/portable_atmospherics/canister/nitrogen)
	cost = 10
	containername = "caja de bombona de nitrogeno"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_phoron
	name = "Gas - Bombona de Pharon"
	contains = list(/obj/machinery/portable_atmospherics/canister/phoron)
	cost = 70
	containername = "caja de bombona de phoron"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/canister_hydrogen
	name = "Gas - Bombona de hidrogeno"
	contains = list(/obj/machinery/portable_atmospherics/canister/hydrogen)
	cost = 25
	containername = "caja de bombona de hidrogeno"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/canister_sleeping_agent
	name = "Gas - Bombona de N2O"
	contains = list(/obj/machinery/portable_atmospherics/canister/sleeping_agent)
	cost = 40
	containername = "\improper caja de bombona de N2O"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/canister_carbon_dioxide
	name = "Gas - Bombona de gas de dioxido de carbono"
	contains = list(/obj/machinery/portable_atmospherics/canister/carbon_dioxide)
	cost = 40
	containername = "\improper caja de bombona de CO2"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/fuel
	name = "Liquido - Tanque de combustibles"
	contains = list(/obj/item/weapon/tank/hydrogen = 4)
	cost = 15
	containername = "caja de tanque de combustible"

/decl/hierarchy/supply_pack/atmospherics/phoron
	name = "Gas - Tanque de Phoron"
	contains = list(/obj/item/weapon/tank/phoron = 3)
	cost = 30
	containername = "caja de tanque de phoron"

/decl/hierarchy/supply_pack/atmospherics/voidsuit
	name = "EVA - Voidsuit atmosfericos"
	contains = list(/obj/item/clothing/suit/space/void/atmos/alt,
					/obj/item/clothing/head/helmet/space/void/atmos/alt,
					/obj/item/clothing/shoes/magboots)
	cost = 120
	containername = "caja de voidsuit de atmosfericos"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/scanner_module
	name = "Electronicas - Modulos de escaner atmosfericos"
	contains = list(/obj/item/weapon/stock_parts/computer/scanner/atmos = 4)
	cost = 20
	containername = "caja de modulos de escaner atmosfericoo"
	containertype = /obj/structure/closet/crate/secure
	access = access_atmospherics