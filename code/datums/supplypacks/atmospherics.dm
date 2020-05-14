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
	name = "Equipamiento - Empty gas canister"
	contains = list(/obj/machinery/portable_atmospherics/canister)
	cost = 7
	containername = "empty gas canister crate"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_air
	name = "Gas - Air canister"
	contains = list(/obj/machinery/portable_atmospherics/canister/air)
	cost = 10
	containername = "air canister crate"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_oxygen
	name = "Gas - Oxygen canister"
	contains = list(/obj/machinery/portable_atmospherics/canister/oxygen)
	cost = 15
	containername = "oxygen canister crate"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_nitrogen
	name = "Gas - Nitrogen canister"
	contains = list(/obj/machinery/portable_atmospherics/canister/nitrogen)
	cost = 10
	containername = "nitrogen canister crate"
	containertype = /obj/structure/largecrate

/decl/hierarchy/supply_pack/atmospherics/canister_phoron
	name = "Gas - Phoron gas canister"
	contains = list(/obj/machinery/portable_atmospherics/canister/phoron)
	cost = 70
	containername = "phoron gas canister crate"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/canister_hydrogen
	name = "Gas - Hydrogen canister"
	contains = list(/obj/machinery/portable_atmospherics/canister/hydrogen)
	cost = 25
	containername = "hydrogen canister crate"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/canister_sleeping_agent
	name = "Gas - Nitrous oxide gas canister"
	contains = list(/obj/machinery/portable_atmospherics/canister/sleeping_agent)
	cost = 40
	containername = "\improper N2O gas canister crate"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_atmospherics

/decl/hierarchy/supply_pack/atmospherics/canister_carbon_dioxide
	name = "Gas - Bombona de gas de dioxido de carbono"
	contains = list(/obj/machinery/portable_atmospherics/canister/carbon_dioxide)
	cost = 40
	containername = "\improper CO2 canister crate"
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
	name = "EVA - Atmospherics voidsuit"
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