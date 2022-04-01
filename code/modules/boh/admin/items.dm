
//baton
/obj/item/weapon/melee/darkrp_baton
	name = "magical stunbaton"
	desc = "Citizens aren't supposed to have guns."
	icon_state = "stunbaton"
	item_state = "baton"
	color = COLOR_RED
	slot_flags = SLOT_BELT
	force = 1
	sharp = 0
	edge = 0
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 2)
	attack_verb = list("arrested")
	base_parry_chance = 100


/obj/item/weapon/melee/darkrp_baton/apply_hit_effect(mob/living/target, mob/living/user, var/hit_zone)

	if(target == user)
		return FALSE

	if(!istype(target)) //Not sure if needed? Just in case.
		return ..()

	var/list/valid_areas = list()
	var/list/possible_areas = get_area_turfs(/area/security/processing)
	for(var/turf/simulated/floor/F in possible_areas)
		if(!F.is_floor())
			continue
		valid_areas += F

	if(length(valid_areas))
		do_teleport(target,pick(valid_areas))
		playsound(loc, 'sound/weapons/Egloves.ogg', 50, 1, -1)
		msg_admin_attack("[key_name(user)] arrested [key_name(target)] with the [src].")
		to_world("<span><font face='Arial Black, Arial, sans-serif'>\The [target.name] has been arrested for 120 seconds!</font></span>")
		return TRUE

	return FALSE