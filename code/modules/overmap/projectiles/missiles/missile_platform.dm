/*
This is just to be used on colony setups and the like.
It's a very simple object that allows immediate launching of missiles atop it.
That's about it.
*/
/obj/machinery/missile_platform
	name = "missile platform"
	desc = "A missile launch platform, extending far below the surface."
	icon = 'icons/mecha/mech_bay.dmi'
	icon_state = "recharge_floor"
	density = 0
	layer = ABOVE_TILE_LAYER
	anchored = 1

	var/loaded = null
	var/obj/structure/missile/M

/obj/machinery/missile_platform/Crossed(var/obj/structure/missile/M)
	. = ..()
	if(istype(M) && loaded != M)
		load(M)

/obj/machinery/missile_platform/proc/load(var/obj/structure/missile/M)
	src.visible_message(SPAN_DANGER("[src] loads [M] into its internal chamber!"))
	M.forceMove(src)
	loaded = M

/obj/machinery/missile_platform/proc/fire(var/obj/structure/missile/M)
	var/datum/effect/effect/system/smoke_spread/S = new/datum/effect/effect/system/smoke_spread()
	S.set_up(5, 0, src, null)
	S.start()
	playsound(loc, "sound/effects/rocket.ogg", 30, 1)
	M.activate()
	loaded = null
