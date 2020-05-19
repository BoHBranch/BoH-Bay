/decl/hierarchy/supply_pack/custodial
	name = "Custodial"

/decl/hierarchy/supply_pack/custodial/janitor
	name = "Gear - Suministros para el conserje"
	contains = list(/obj/item/weapon/reagent_containers/glass/bucket,
					/obj/item/weapon/mop,
					/obj/item/weapon/caution = 4,
					/obj/item/weapon/storage/bag/trash,
					/obj/item/device/lightreplacer,
					/obj/item/weapon/reagent_containers/spray/cleaner,
					/obj/item/weapon/storage/box/lights/mixed,
					/obj/item/weapon/reagent_containers/glass/rag,
					/obj/item/weapon/grenade/chem_grenade/cleaner = 3,
					/obj/structure/mopbucket)
	cost = 20
	containertype = /obj/structure/closet/crate/large
	containername = "caja de suministros para el conserje"

/decl/hierarchy/supply_pack/custodial/mousetrap
	num_contained = 3
	contains = list(/obj/item/weapon/storage/box/mousetraps)
	name = "Otros - Control de peste"
	cost = 10
	containername = "caja de control de peste"

/decl/hierarchy/supply_pack/custodial/lightbulbs
	name = "Respuestos - Luces de repuesto"
	contains = list(/obj/item/weapon/storage/box/lights/mixed = 3)
	cost = 10
	containername = "caja de luces de repuesto"

/decl/hierarchy/supply_pack/custodial/cleaning
	name = "Gear - Cleaning supplies"
	contains = list(/obj/item/weapon/mop,
					/obj/item/weapon/grenade/chem_grenade/cleaner = 3,
					/obj/item/weapon/storage/box/detergent = 3,
					/obj/item/weapon/reagent_containers/glass/bucket,
					/obj/item/weapon/reagent_containers/glass/rag,
					/obj/item/weapon/reagent_containers/spray/cleaner = 2,
					/obj/item/weapon/soap)
	cost = 10
	containertype = /obj/structure/closet/crate/large
	containername = "caja de suministros de limpieza"

/decl/hierarchy/supply_pack/custodial/bodybag
	name = "Equipamiento - Bolsas para cadaveres"
	contains = list(/obj/item/weapon/storage/box/bodybags = 3)
	cost = 10
	containername = "caja de bolsas para cadaveres"

/decl/hierarchy/supply_pack/custodial/janitorbiosuits
	name = "Gear - Equipamiento de riesgo biologico para el conserje"
	contains = list(/obj/item/clothing/head/bio_hood/janitor,
					/obj/item/clothing/suit/bio_suit/janitor,
					/obj/item/clothing/mask/gas,
					/obj/item/weapon/tank/oxygen)
	cost = 30
	containertype = /obj/structure/closet/crate/secure
	containername = "caja de equipamiento de riesgo biologico para el conserje"