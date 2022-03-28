/obj/item/weapon/crowbar
	name = "crowbar"
	desc = "A heavy crowbar of solid steel, good and solid in your hand."
	icon = 'icons/obj/tools.dmi'
	icon_state = "crowbar"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 14
	attack_cooldown = 2*DEFAULT_WEAPON_COOLDOWN
	melee_accuracy_bonus = -10
	throwforce = 7
	throw_range = 3
	item_state = "crowbar"
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_ENGINEERING = 1)
	matter = list(MATERIAL_STEEL = 140)
	center_of_mass = "x=16;y=20"
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")

/obj/item/weapon/crowbar/red
	icon_state = "red_crowbar"
	item_state = "crowbar_red"

/obj/item/weapon/crowbar/prybar
	name = "pry bar"
	desc = "A steel bar with a wedge. It comes in a variety of configurations and colours - collect them all."
	icon_state = "prybar_preview"
	item_state = "crowbar"
	force = 4
	throwforce = 6
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_STEEL = 80)

	var/prybar_types = list("1","2","3","4","5")
	var/valid_colours = list(COLOR_RED_GRAY, COLOR_BLUE_GRAY, COLOR_BOTTLE_GREEN, COLOR_MAROON, COLOR_DARK_BROWN, COLOR_VIOLET, COLOR_GRAY20)

/obj/item/weapon/crowbar/prybar/Initialize()
	var/shape = pick(prybar_types)
	icon_state = "bar[shape]_handle"
	color = pick(valid_colours)
	overlays += overlay_image(icon, "bar[shape]_hardware", flags=RESET_COLOR)
	. = ..()

/obj/item/weapon/crowbar/emergency_forcing_tool
	name = "emergency forcing tool"
	desc = "This is an emergency forcing tool, made of steel bar with a wedge on one end, and a hatchet on the other end. It has a blue plastic grip"
	icon_state = "emergency_forcing_tool"
	item_state = "emergency_forcing_tool"
	force = 14
	sharp = 1
	edge = 1
	throwforce = 6
	throw_range = 5
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_STEEL = 150)
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked", "attacked", "slashed", "torn", "ripped", "cut")

/obj/item/weapon/crowbar/emergency_forcing_tool/resolve_attackby(atom/A)//extra dmg against glass, it's an emergency forcing tool, it's gotta be good at something
	if(istype(A, /obj/structure/window))
		force = initial(force) * 2
	else
		force = initial(force)
	. = ..()

/obj/item/weapon/crowbar/emergency_forcing_tool/iscrowbar()//go ham
	if(ismob(loc))
		var/mob/M = loc
		if(M.a_intent && M.a_intent == I_HURT)
			return FALSE

	return TRUE


/obj/item/weapon/crowbar/brace_jack/jaws
	name = "jaws of life"
	desc = "A set of jaws of life, compressed through the magic of science. It's fitted with a prying head."
	icon_state = "jaws_pry"
	item_state = "jawsoflife"
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_STEEL = 2000, MATERIAL_ALUMINIUM = 2000, MATERIAL_PLASTIC = 1000)
	origin_tech = list(TECH_MATERIAL = 2, TECH_ENGINEERING = 2)
	usesound = 'sound/items/jaws_pry.ogg'
	attack_cooldown = 1.5 * DEFAULT_WEAPON_COOLDOWN
	melee_accuracy_bonus = 0
	var/obj/item/weapon/wirecutters/power/counterpart = null

/obj/item/weapon/crowbar/brace_jack/jaws/Initialize(mapload, no_counterpart = TRUE)
	. = ..()
	if(!counterpart && no_counterpart)
		counterpart = new(src, FALSE)
		counterpart.counterpart = src

/obj/item/weapon/crowbar/brace_jack/jaws/Destroy()
	if(counterpart)
		counterpart.counterpart = null // So it can qdel cleanly.
		QDEL_NULL(counterpart)
	return ..()

/obj/item/weapon/crowbar/brace_jack/jaws/attack_self(mob/user)
	playsound(get_turf(user), 'sound/items/change_jaws.ogg', 50, 1)
	user.drop_item(src)
	counterpart.forceMove(get_turf(src))
	src.forceMove(counterpart)
	user.put_in_active_hand(counterpart)
	to_chat(user, "<span class='notice'>You attach the cutting jaws to [src].</span>")
