/obj/item/weapon/screwdriver
	name = "screwdriver"
	desc = "Your archetypal flathead screwdriver, with a nice, heavy polymer handle."
	icon = 'icons/obj/tools.dmi'
	icon_state = "screwdriver_preview"
	item_state = "screwdriver"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT | SLOT_EARS
	force = 4.0
	w_class = ITEM_SIZE_TINY
	throwforce = 5.0
	throw_speed = 3
	throw_range = 5
	matter = list(MATERIAL_STEEL = 75)
	center_of_mass = "x=16;y=7"
	attack_verb = list("stabbed")
	lock_picking_level = 5
	sharp = TRUE

	var/build_from_parts = TRUE
	var/valid_colours = list(COLOR_RED, COLOR_CYAN_BLUE, COLOR_PURPLE, COLOR_CHESTNUT, COLOR_GREEN, COLOR_TEAL, COLOR_ASSEMBLY_YELLOW, COLOR_BOTTLE_GREEN, COLOR_VIOLET, COLOR_GRAY80, COLOR_GRAY20)

/obj/item/weapon/screwdriver/Initialize()
	if(build_from_parts)
		icon_state = "screwdriver_handle"
		color = pick(valid_colours)
		overlays += overlay_image(icon, "screwdriver_hardware", flags=RESET_COLOR)
	if (prob(75))
		src.pixel_y = rand(0, 16)
	. = ..()

/obj/item/weapon/screwdriver/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(!istype(M) || user.a_intent == "help")
		return ..()
	if(user.zone_sel.selecting != BP_EYES && user.zone_sel.selecting != BP_HEAD)
		return ..()
	if((MUTATION_CLUMSY in user.mutations) && prob(50))
		M = user
	return eyestab(M,user)


/obj/item/weapon/screwdriver/power
	name = "hand drill"
	desc = "A simple powered hand drill. It's fitted with a screw bit."
	icon_state = "drill_screw"
	item_state = "drill"
	matter = list(MATERIAL_STEEL = 500, MATERIAL_ALUMINIUM = 500, MATERIAL_PLASTIC = 500)
	origin_tech = list(TECH_MATERIAL = 2, TECH_ENGINEERING = 2)
	slot_flags = SLOT_BELT
	force = 8
	w_class = ITEMSIZE_SMALL
	throwforce = 8
	throw_speed = 2
	throw_range = 3//it's heavier than a screw driver/wrench, so it does more damage, but can't be thrown as far
	attack_verb = list("drilled", "screwed", "jabbed", "whacked")
	hitsound = 'sound/items/drill_hit.ogg'
	usesound = 'sound/items/drill_use.ogg'
	build_from_parts = FALSE
	var/obj/item/weapon/wrench/power/counterpart = null

/obj/item/weapon/screwdriver/power/Initialize(mapload, no_counterpart = TRUE)
	. = ..()
	if(!counterpart && no_counterpart)
		counterpart = new(src, FALSE)
		counterpart.counterpart = src

/obj/item/weapon/screwdriver/power/Destroy()
	if(counterpart)
		counterpart.counterpart = null // So it can qdel cleanly.
		QDEL_NULL(counterpart)
	return ..()

/obj/item/weapon/screwdriver/power/attack_self(mob/user)
	playsound(get_turf(user),'sound/items/change_drill.ogg',50,1)
	user.drop_item(src)
	counterpart.forceMove(get_turf(src))
	src.forceMove(counterpart)
	user.put_in_active_hand(counterpart)
	to_chat(user, "<span class='notice'>You attach the bolt driver bit to [src].</span>")
