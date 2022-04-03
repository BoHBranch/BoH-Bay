/obj/item/missile_equipment/payload/sam
	name = "PDA warhead"
	desc = "An incredibly dangerous warhead. Detonates when the missile is triggered."
	icon_state = "antimissile"

/obj/item/missile_equipment/payload/sam/on_trigger(var/atom/triggerer)
	if(istype(triggerer, /obj/effect/shield))
		explosion(get_turf(src), 2, 4, 8, 12)
		empulse(get_turf(src), rand(10,20), rand(25,50))
		var/obj/effect/shield/S = triggerer
		S.take_damage(100000)
	else
		explosion(get_turf(src), 6, 8, 10, 12)//Same for both. Pen only adjusts EMP severity.
		empulse(get_turf(src), rand(25,50), rand(50,100))

	..()
