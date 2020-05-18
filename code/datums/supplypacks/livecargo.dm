/decl/hierarchy/supply_pack/livecargo
	name = "Cargamiento con vida"
	containertype = /obj/structure/closet/crate/hydroponics

/decl/hierarchy/supply_pack/livecargo/monkey
	name = "Inerte - Cubos de mono"
	contains = list (/obj/item/weapon/storage/box/monkeycubes)
	cost = 20
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de mono"

/decl/hierarchy/supply_pack/livecargo/farwa
	name = "Inerte - Cubos de farwa"
	contains = list (/obj/item/weapon/storage/box/monkeycubes/farwacubes)
	cost = 30
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de farwa"

/decl/hierarchy/supply_pack/livecargo/skrell
	name = "Inerte - Neaera cubes"
	contains = list (/obj/item/weapon/storage/box/monkeycubes/neaeracubes)
	cost = 30
	containertype = /obj/structure/closet/crate/freezer
	containername = "neaera crate"

/decl/hierarchy/supply_pack/livecargo/stok
	name = "Inerte - Cajas de stok"
	contains = list (/obj/item/weapon/storage/box/monkeycubes/stokcubes)
	cost = 30
	containertype = /obj/structure/closet/crate/freezer
	containername = "caja de stok"

/decl/hierarchy/supply_pack/livecargo/spidercubes
	name = "Inerte - Aracnidos"
	contains = list(/obj/item/weapon/storage/box/monkeycubes/spidercubes)
	cost = 50
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper caja de aracnidos"
	contraband = 1
	security_level = null


//actual live animals

/decl/hierarchy/supply_pack/livecargo/corgi
	name = "Vivo - Corgi"
	contains = list()
	cost = 50
	containertype = /obj/structure/largecrate/animal/corgi
	containername = "caja de corgi"

//farm animals - useless and annoying, but potentially a good source of food. expensive because they're live animals and their produce is available cheaper
/decl/hierarchy/supply_pack/livecargo/cow
	name = "Vivo - Vaca"
	cost = 80
	containertype = /obj/structure/largecrate/animal/cow
	containername = "caja con vaca"
	access = access_hydroponics

/decl/hierarchy/supply_pack/livecargo/goat
	name = "Vivo - Cabra"
	cost = 75
	containertype = /obj/structure/largecrate/animal/goat
	containername = "caja con cabra"
	access = access_hydroponics

/decl/hierarchy/supply_pack/livecargo/goose
	name = "Vivo - Ganso"
	cost = 75
	containertype = /obj/structure/largecrate/animal/goose
	containername = "unidad de contencion con ganso"
	access = access_hydroponics

/decl/hierarchy/supply_pack/livecargo/chicken
	name = "Vivo - Gallina"
	cost = 70
	containertype = /obj/structure/largecrate/animal/chick
	containername = "caja con gallina"
	access = access_hydroponics