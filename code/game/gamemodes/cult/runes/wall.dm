//A bloody wall for the cultists to use. When made invisible, the wall will still be visible. Cannot be shot through by lasers. Limited health.area/obj/effect/rune/wall
/obj/effect/rune/wall
	cultname = "wall"
	incantation = "Khari'd! Eske'te tannin!"
	var/obj/effect/cultwall/wall = null

/obj/effect/rune/wall/Destroy()
	QDEL_NULL(wall)
	return ..()

/obj/effect/rune/wall/cast(var/mob/living/user)
	..()
	var/t
	if(wall)
		if(wall.health >= wall.max_health)
			to_chat(user, "<span class='notice'>The wall doesn't need mending.</span>")
			return
		t = wall.max_health - wall.health
		wall.health += t
	else
		wall = new /obj/effect/cultwall(get_turf(src), bcolor)
		wall.rune = src
		t = wall.health
	user.remove_blood_simple(t / 50)
	to_chat(user, "<span class='warning'>Your blood flows into the rune, and you feel that the very space over the rune thickens.</span>")

/obj/effect/cultwall
	name = "red mist"
	desc = "A strange red mist emanating from a rune below it."
	icon = 'icons/effects/effects.dmi'//TODO: better icon
	icon_state = "smoke"
	color = "#ff0000"
	anchored = 1
	density = 1
	unacidable = 1
	var/obj/effect/rune/wall/rune
	var/health
	var/max_health = 200

/obj/effect/cultwall/New(var/loc, var/bcolor)
	..()
	health = max_health
	if(bcolor)
		color = bcolor

/obj/effect/cultwall/Destroy()
	if(rune)
		rune.wall = null
		rune = null
	return ..()

/obj/effect/cultwall/examine(mob/user)
	. = ..()
	if(iscultist(user))
		if(health == max_health)
			to_chat(user, "<span class='notice'>It is fully intact.</span>")
		else if(health > max_health * 0.5)
			to_chat(user, "<span class='warning'>It is damaged.</span>")
		else
			to_chat(user, "<span class='danger'>It is about to dissipate.</span>")

/obj/effect/cultwall/attack_hand(var/mob/living/user)
	if(iscultist(user))
		user.visible_message("<span class='notice'>\The [user] touches \the [src], and it fades.</span>", "<span class='notice'>You touch \the [src], whispering the old ritual, making it disappear.</span>")
		qdel(src)
	else
		to_chat(user, "<span class='notice'>You touch \the [src]. It feels wet and becomes harder the further you push your arm.</span>")

/obj/effect/cultwall/attackby(var/obj/item/I, var/mob/living/user)
	if(istype(I, /obj/item/weapon/nullrod))
		user.visible_message("<span class='notice'>\The [user] touches \the [src] with \the [I], and it disappears.</span>", "<span class='notice'>You disrupt the vile magic with the deadening field of \the [I].</span>")
		qdel(src)
	else if(I.force)
		user.visible_message("<span class='notice'>\The [user] hits \the [src] with \the [I].</span>", "<span class='notice'>You hit \the [src] with \the [I].</span>")
		take_damage(I.force)
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
		user.do_attack_animation(src)

/obj/effect/cultwall/bullet_act(var/obj/item/projectile/Proj)
	if(!(Proj.damage_type == BRUTE || Proj.damage_type == BURN))
		return
	take_damage(Proj.damage)
	..()

/obj/effect/cultwall/proc/take_damage(var/amount)
	health -= amount
	if(health <= 0)
		visible_message("<span class='warning'>\The [src] dissipates.</span>")
		qdel(src)