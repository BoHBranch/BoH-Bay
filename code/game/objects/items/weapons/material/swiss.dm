#define SWISSKNF_CLOSED "Close"
#define SWISSKNF_LBLADE "Large Blade"
#define SWISSKNF_SBLADE "Small Blade"
#define SWISSKNF_CLIFTER "Cap Lifter-Screwdriver"
#define SWISSKNF_COPENER "Can Opener-Screwdriver"
#define SWISSKNF_CSCREW "Corkscrew"
#define SWISSKNF_GBLADE "Glass Cutter"
#define SWISSKNF_WCUTTER "Wirecutters"
#define SWISSKNF_WBLADE "Wood Saw"
#define SWISSKNF_CROWBAR "Pry Bar"

/obj/item/weapon/material/knife/folding/swiss
	name = "combi-knife"
	desc = "A small, colourable, multi-purpose folding knife."
	icon = 'icons/obj/swiss_knife.dmi'
	icon_state = "swissknf_closed"
	handle_icon = "swissknf_handle"
	takes_colour = FALSE
	valid_colors = null
	max_force = 10

	var/list/tool_icons
	color = COLOR_NT_RED
	var/active_tool = SWISSKNF_CLOSED
	var/tools = list(SWISSKNF_LBLADE, SWISSKNF_SBLADE, SWISSKNF_CLIFTER, SWISSKNF_COPENER, SWISSKNF_CSCREW, SWISSKNF_GBLADE, SWISSKNF_WCUTTER, SWISSKNF_WBLADE, SWISSKNF_CROWBAR)
	var/can_use_tools = FALSE
	var/sharp_tools = list(SWISSKNF_LBLADE, SWISSKNF_SBLADE, SWISSKNF_GBLADE, SWISSKNF_WBLADE)

/obj/item/weapon/material/knife/folding/swiss/Initialize()
	. = ..()
	for(var/t in tools)
		LAZYSET(tool_icons, t, overlay_image(icon, t, flags=RESET_COLOR))

/obj/item/weapon/material/knife/folding/swiss/attack_self(mob/user)
	var/choice	
	if(user.a_intent != I_HELP && ((SWISSKNF_LBLADE in tools) || (SWISSKNF_SBLADE in tools)) && active_tool == SWISSKNF_CLOSED)
		open = TRUE
		choice = (SWISSKNF_LBLADE in tools) ? SWISSKNF_LBLADE : SWISSKNF_SBLADE
	else
		if(active_tool == SWISSKNF_CLOSED)
			var/list/options = list()
			for(var/t in tools)
				options[t] = tool_icons[t]
			choice = RADIAL_INPUT(user, options) || SWISSKNF_CLOSED
		else
			choice = SWISSKNF_CLOSED
			open = FALSE
	
	if(!choice || (choice == active_tool) || !CanPhysicallyInteract(user))
		return
	if(choice == SWISSKNF_CLOSED)
		open = FALSE
		user.visible_message("<span class='notice'>\The [user] closes the [name].</span>")
	else
		open = TRUE
		user.visible_message("<span class='[(choice in sharp_tools) ? "warning" : "notice"]'>\The [user] opens the [lowertext(choice)].</span>")
		if(choice == SWISSKNF_LBLADE || choice == SWISSKNF_SBLADE)
			playsound(user, 'sound/weapons/flipblade.ogg', 15, 1)
			
	active_tool = choice
	update_force()
	update_icon()
	add_fingerprint(user)

/obj/item/weapon/material/knife/folding/swiss/examine(mob/user)
	. = ..()
	to_chat(user, active_tool == SWISSKNF_CLOSED ? "It is closed." : "Its [lowertext(active_tool)] is folded out.")

/obj/item/weapon/material/knife/folding/swiss/update_force()
	if(active_tool in sharp_tools)
		..()
		if(active_tool == SWISSKNF_GBLADE)
			siemens_coefficient = 0
		else
			siemens_coefficient = initial(siemens_coefficient)
	else
		force = initial(force)
		edge = initial(edge)
		sharp = initial(sharp)
		hitsound = initial(hitsound)
		attack_verb = closed_attack_verbs
		siemens_coefficient = initial(siemens_coefficient)
	if(active_tool == SWISSKNF_CLOSED)
		w_class = initial(w_class)
	else
		w_class = ITEM_SIZE_NORMAL

/obj/item/weapon/material/knife/folding/swiss/on_update_icon()
	if(active_tool != null)
		overlays.Cut()
		overlays += overlay_image(icon, active_tool, flags=RESET_COLOR)
		item_state = initial(item_state)
		if(active_tool == SWISSKNF_LBLADE || active_tool == SWISSKNF_SBLADE)
			item_state = "knife"
		if(blood_overlay)
			overlays += blood_overlay

/obj/item/weapon/material/knife/folding/swiss/iscrowbar()
	return active_tool == SWISSKNF_CROWBAR && can_use_tools

/obj/item/weapon/material/knife/folding/swiss/isscrewdriver()
	return (active_tool == SWISSKNF_CLIFTER || active_tool == SWISSKNF_COPENER) && can_use_tools

/obj/item/weapon/material/knife/folding/swiss/iswirecutter()
	return active_tool == SWISSKNF_WCUTTER && can_use_tools

/obj/item/weapon/material/knife/folding/swiss/ishatchet()
	return active_tool == SWISSKNF_WBLADE

/obj/item/weapon/material/knife/folding/swiss/resolve_attackby(obj/target, mob/user)
	if((istype(target, /obj/structure/window) || istype(target, /obj/structure/grille)) && active_tool == SWISSKNF_GBLADE)
		force = force * 8
		. = ..()
		update_force()
		return
	if(istype(target, /obj/item))
		if(target.w_class <= ITEM_SIZE_NORMAL)
			can_use_tools = TRUE
			. = ..()
			can_use_tools = FALSE
			return
	return ..()

#undef SWISSKNF_CLOSED
#undef SWISSKNF_LBLADE
#undef SWISSKNF_SBLADE
#undef SWISSKNF_CLIFTER
#undef SWISSKNF_COPENER
#undef SWISSKNF_CSCREW
#undef SWISSKNF_GBLADE
#undef SWISSKNF_WCUTTER
#undef SWISSKNF_WBLADE
#undef SWISSKNF_CROWBAR
