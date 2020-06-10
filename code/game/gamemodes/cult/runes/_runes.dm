#define NO_PYLONS 1

/obj/effect/rune
	name = "rune"
	desc = "A strange collection of symbols drawn in blood."
	anchored = 1
	icon = 'icons/effects/uristrunes.dmi'
	icon_state = "blank"
	unacidable = 1
	layer = RUNE_LAYER

	var/blood
	var/bcolor
	var/strokes = 2 // IF YOU EVER SET THIS TO MORE THAN TEN, EVERYTHING WILL BREAK
	var/cultname = ""
	var/required_cultists = 1
	var/pylons_allowed = TRUE
	var/checks_floor = FALSE
	var/incantation = "wow this is probably a bug."

/obj/effect/rune/New(var/loc, var/blcolor = "#c80000", var/nblood = "blood")
	..()
	bcolor = blcolor
	blood = nblood
	update_icon()
	set_extension(src, /datum/extension/turf_hand, 10)

/obj/effect/rune/on_update_icon()
	overlays.Cut()
	if(GLOB.cult.rune_strokes[type])
		var/list/f = GLOB.cult.rune_strokes[type]
		for(var/i in f)
			var/image/t = image('icons/effects/uristrunes.dmi', "rune-[i]")
			overlays += t
	else
		var/list/q = list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
		var/list/f = list()
		for(var/i = 1 to strokes)
			var/j = pick(q)
			f += j
			q -= f
			var/image/t = image('icons/effects/uristrunes.dmi', "rune-[j]")
			overlays += t
		GLOB.cult.rune_strokes[type] = f.Copy()
	color = bcolor
	desc = "A strange collection of symbols drawn in [blood]."

/obj/effect/rune/examine(mob/user)
	. = ..()
	if(iscultist(user))
		to_chat(user, "This is \a [cultname] rune.")

/obj/effect/rune/attackby(var/obj/item/I, var/mob/living/user)
	if(istype(I, /obj/item/weapon/book/tome) && iscultist(user))
		user.visible_message(SPAN_NOTICE("[user] rubs \the [src] with \the [I], and \the [src] is absorbed by it."), "You retrace your steps, carefully undoing the lines of \the [src].")
		qdel(src)
		return
	else if(istype(I, /obj/item/weapon/nullrod))
		user.visible_message(SPAN_NOTICE("[user] hits \the [src] with \the [I], and it disappears, fizzling."), SPAN_NOTICE("You disrupt the vile magic with the deadening field of \the [I].") , "You hear a fizzle.")
		qdel(src)
		return

/obj/effect/rune/attack_hand(var/mob/living/user)
	if(!iscultist(user))
		to_chat(user, "You can't mouth the arcane scratchings without fumbling over them.")
		return
	if(istype(user.wear_mask, /obj/item/clothing/mask/muzzle) || user.silent)
		to_chat(user, "You are unable to speak the words of the rune.")
		return
	if(GLOB.cult.powerless)
		to_chat(user, "You read the words, but nothing happens.")
		return fizzle(user)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	cast(user)

/obj/effect/rune/attack_ai(var/mob/living/user) // Cult borgs!
	if(Adjacent(user))
		attack_hand(user)

/obj/effect/rune/attack_generic(var/mob/living/user) // Cult constructs/slimes/whatnot!
	attack_hand(user)

/obj/effect/rune/proc/cast(var/mob/living/user)
	var/list/mob/living/cultists = get_cultists(pylons_allowed)
	if(floor_check(user))
		return fizzle(user, SPAN_WARNING("This rune needs to be placed on the defiled ground."))
	if(cultists.len < required_cultists)
		return fizzle(user, SPAN_WARNING("A minimum of [required_cultists] cultists are required to perform this ritual. [pylons_allowed ? "Pylons will function in the place of cultists in this case." : ""]" ) )
	for(var/mob/M in cultists)
		speak_incantation(M)


/obj/effect/rune/proc/get_cultists(var/pylons)
	. = list()
	for(var/mob/living/M in range(1, src))
		if(iscultist(M))
			. += M
	if(pylons != NO_PYLONS)
		for(var/obj/structure/cult/pylon/P in range(1, src))
			. += P

/obj/effect/rune/proc/fizzle(var/mob/living/user, var/reason)
	if(reason)
		to_chat(user, reason)
	visible_message(SPAN_WARNING("The markings pulse with a small burst of light, then fall dark."), "You hear a fizzle.")

//Makes the speech a proc so all verbal components can be easily manipulated as a whole, or individually easily
/obj/effect/rune/proc/speak_incantation(var/mob/living/user)
	var/datum/language/L = all_languages[LANGUAGE_CULT]
	if(incantation && (L in user.languages))
		user.say(incantation, L)

obj/effect/rune/proc/floor_check(var/mob/living/user)
	var/turf/T = get_turf(src)
	if(T.icon_state != "cult" && T.icon_state != "cult-narsie")
		return FALSE
	else return TRUE