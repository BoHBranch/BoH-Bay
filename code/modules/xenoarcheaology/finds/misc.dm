
// Phoron shards have been moved to code/game/objects/items/weapons/shards.dm

//legacy crystal
/obj/machinery/crystal
	name = "Crystal"
	icon = 'icons/obj/mining.dmi'
	icon_state = "crystal"


/obj/machinery/crystal/New()
	..()
	icon_state = pick("crystal", "crystal2", "crystal3")


//Variant crystals, in case you want to spawn/map those directly.
/obj/machinery/crystal_static/
	name = "Crystal"
	icon = 'icons/obj/mining.dmi'
	icon_state = "crystal"

/obj/machinery/crystal_static/pink
	name = "Crystal"
	icon_state = "crystal2"

/obj/machinery/crystal_static/orange
	name = "Crystal"
	icon_state = "crystal3"
