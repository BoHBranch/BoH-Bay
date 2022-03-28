/obj/item/weapon/wirecutters
	name = "wirecutters"
	desc = "A special pair of pliers with cutting edges. Various brackets and manipulators built into the handle allow it to repair severed wiring."
	icon = 'icons/obj/tools.dmi'
	icon_state = "cutters_preview"
	item_state = "cutters"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 3.0
	throw_speed = 2
	throw_range = 9
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_ENGINEERING = 1)
	matter = list(MATERIAL_STEEL = 80)
	center_of_mass = "x=18;y=10"
	attack_verb = list("pinched", "nipped")
	sharp = 1
	edge = 1

	var/build_from_parts = TRUE
	var/handle_icon = "cutters_handle"
	var/hardware_icon = "cutters_hardware"
	var/valid_colours = list(COLOR_RED, PIPE_COLOR_YELLOW, COLOR_BLUE_GRAY, COLOR_MAROON, COLOR_SEDONA, COLOR_BABY_BLUE, COLOR_VIOLET, COLOR_GRAY80, COLOR_GRAY20)

/obj/item/weapon/wirecutters/Initialize()
	if(build_from_parts)
		icon_state = "cutters_handle"
		color = pick(valid_colours)
		overlays += overlay_image(icon, "[hardware_icon]", flags=RESET_COLOR)
	. = ..()

/obj/item/weapon/wirecutters/attack(mob/living/carbon/C as mob, mob/user as mob)
	if(istype(C) && user.a_intent == I_HELP && (C.handcuffed) && (istype(C.handcuffed, /obj/item/weapon/handcuffs/cable)))
		usr.visible_message("\The [usr] cuts \the [C]'s restraints with \the [src]!",\
		"You cut \the [C]'s restraints with \the [src]!",\
		"You hear cable being cut.")
		C.handcuffed = null
		if(C.buckled && C.buckled.buckle_require_restraints)
			C.buckled.unbuckle_mob()
		C.update_inv_handcuffed()
		return
	else
		..()


/obj/item/weapon/wirecutters/power
	name = "jaws of life"
	desc = "A set of jaws of life, compressed through the magic of science. It's fitted with a cutting head."
	icon_state = "jaws_cutter"
	item_state = "jawsoflife"
	origin_tech = list(TECH_MATERIAL = 2, TECH_ENGINEERING = 2)
	matter = list(MATERIAL_STEEL = 2000, MATERIAL_ALUMINIUM = 2000, MATERIAL_PLASTIC = 1000)
	usesound = 'sound/items/jaws_cut.ogg'
	force = 24
	attack_verb = list("sliced", "cut", "powercut")
	w_class = ITEM_SIZE_NORMAL
	attack_cooldown = 1.5 * DEFAULT_WEAPON_COOLDOWN
	melee_accuracy_bonus = 0
	build_from_parts = FALSE
	var/obj/item/weapon/crowbar/brace_jack/jaws/counterpart = null

/obj/item/weapon/wirecutters/power/Initialize(mapload, no_counterpart = TRUE)
	. = ..()
	if(!counterpart && no_counterpart)
		counterpart = new(src, FALSE)
		counterpart.counterpart = src

/obj/item/weapon/wirecutters/power/Destroy()
	if(counterpart)
		counterpart.counterpart = null // So it can qdel cleanly.
		QDEL_NULL(counterpart)
	return ..()

/obj/item/weapon/wirecutters/power/attack_self(mob/user)
	playsound(get_turf(user), 'sound/items/change_jaws.ogg', 50, 1)
	user.drop_item(src)
	counterpart.forceMove(get_turf(src))
	src.forceMove(counterpart)
	user.put_in_active_hand(counterpart)
	to_chat(user, "<span class='notice'>You attach the pry jaws to [src].</span>")
