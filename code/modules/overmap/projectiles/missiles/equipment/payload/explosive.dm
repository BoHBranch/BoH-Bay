/obj/item/missile_equipment/payload/explosive
	name = "explosive charge"
	desc = "An explosive charge. Detonates when the missile is triggered."
	icon_state = "explosive"

/obj/item/missile_equipment/payload/explosive/on_trigger(var/atom/triggerer)
	if(istype(triggerer, /obj/effect/shield))
		explosion(get_turf(src), 1, 2, 3, 4)
		var/obj/effect/shield/S = triggerer
		S.take_damage(10000)
	else
		explosion(get_turf(src), 4, 8, 12, 16)

	..()