//Weaversilk objects and items.

/obj/effect/weaversilk
	name = "weaversilk web"
	desc = "A thin layer of fiberous webs. It looks like it can be torn down with one strong hit."
	icon = 'icons/weaver_icons_vr.dmi'
	anchored = TRUE
	density = FALSE

/obj/effect/weaversilk/ex_act(severity)
	qdel(src)
	return

/obj/effect/weaversilk/attackby(var/obj/item/weapon/W, var/mob/user)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)

	if(W.force)
		visible_message("<span class='warning'>\The [src] has been [LAZYLEN(W.attack_verb) ? pick(W.attack_verb) : "attacked"] with \the [W][(user ? " by [user]." : ".")]</span>")
		qdel(src)

/obj/effect/weaversilk/bullet_act(var/obj/item/projectile/Proj)
	..()
	if(Proj.get_structure_damage())
		qdel(src)

/obj/effect/weaversilk/fire_act(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	qdel(src)

/obj/effect/weaversilk/attack_generic(mob/user as mob, var/damage)
	if(damage)
		qdel(src)

/obj/effect/weaversilk/attack_hand(mob/user as mob)
	..()
	if(user.a_intent == I_HURT)
		to_chat(user,"<span class='warning'>You easily tear down [name].</span>")
		qdel(src)

/obj/effect/weaversilk/floor
	var/possible_icon_states = list("floorweb1", "floorweb2", "floorweb3", "floorweb4", "floorweb5", "floorweb6", "floorweb7", "floorweb8")
	layer = DECAL_LAYER

/obj/effect/weaversilk/floor/Initialize()
	..()
	icon_state = pick(possible_icon_states)

/obj/effect/weaversilk/wall
	name = "weaversilk web wall"
	desc = "A thin layer of fiberous webs, but just thick enough to block your way. It looks like it can be torn down with one strong hit."
	icon_state = "wallweb1"
	var/possible_icon_states = list("wallweb1", "wallweb2", "wallweb3")
	density = 1
	opacity = 1

/obj/effect/weaversilk/wall/Initialize()
	..()
	icon_state = pick(possible_icon_states)

/obj/effect/weaversilk/wall/CanPass(atom/movable/mover, turf/target)
	if(istype(mover, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = mover
		if(H.species.is_weaver)
			return TRUE
	..()

/obj/structure/bed/double/weaversilk_nest
	name = "weaversilk nest"
	desc = "A nest of some kind, made of fiberous material."
	icon = 'icons/weaver_icons_vr.dmi'
	icon_state = "nest"
	base_icon = "nest"

/obj/structure/bed/double/weaversilk_nest/update_icon()
	return

/obj/structure/bed/double/weaversilk_nest/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(isWrench(W) || istype(W,/obj/item/stack) || isWirecutter(W))
		return
	..()

/obj/structure/bed/double/weaversilk_nest/attack_hand(mob/user as mob)
	..()
	if(user.a_intent == I_HURT)
		to_chat(user,"<span class='warning'>You easily tear down [name].</span>")
		qdel(src)


// Items

// None are here yet. However, I'm keeping the section here for the sake of organization and future additions.
