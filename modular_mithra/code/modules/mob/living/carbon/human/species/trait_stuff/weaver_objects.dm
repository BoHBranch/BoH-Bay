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

/*/obj/effect/weaversilk/wall/CanPass(atom/movable/mover, turf/target)
	if(istype(mover, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = mover
		if(H.species.is_weaver)
			return TRUE
	..()*/

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

/obj/item/clothing/under/weaverskinsuit
	name = "weaved bodysuit"
	desc = "A comfortable silk bodysuit hand-weaved with what appears to be spider silk of some variety. Slightly sticky."
	icon_state = "weaversuit"
	item_state = "weaversuit"
	worn_state = "weaversuit"
	has_sensor = SUIT_NO_SENSORS

/obj/item/clothing/under/skirt_c/dress/long/gown/weaver
	name = "weaved gown"
	desc = "A comfortable dress hand-weaved with what appears to be spider silk of some variety. Slightly sticky."
	has_sensor = SUIT_NO_SENSORS

/*/obj/item/clothing/shoes/weavershoes //For some reason, color on these runtime. What the fuck, Bay?
	name = "weaved shoes"
	desc = "A pair of silk slippers. Soft, warm, and extremely comfortable."
	icon_state = "flatswhite"
	item_state = "weavershoes"

/obj/item/clothing/gloves/weavergloves
	name = "weaved gloves"
	desc = "A pair of silken gloves, seemingly hand-weaved. They're cozy and warm."
	icon_state = "white"
	item_state = "weavergloves"*/

/obj/item/weapon/handcuffs/cable/tape/weaver
	name = "silk bindings"
	desc = "A pair of tight silken bindings. Though functional, they seem very easy to break."
	icon = 'icons/weaver_icons_vr.dmi'
	icon_state = "weavercuffs"

/obj/item/stack/medical/bruise_pack/weaver
	name = "weaved bandages"
	singular_name = "weaved bandage"
	desc = "Silken bandages. Far from effective, but better than nothing. Uncomfortably sticky."
	animal_heal = 2
	amount = 5
	icon = 'icons/weaver_icons_vr.dmi'
	icon_state = "weaverbandages"
