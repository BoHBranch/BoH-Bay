/obj/item/shield/energy/skrell
	name = "skrellian combat shield"
	desc = "An alien shield capable of stopping most projectile and melee attacks. It can be retracted, expanded, and stored anywhere."
	icon = 'modular_boh/icon/obj/weapons/skrellshield.dmi'
	icon_state = "skrellshield0" // skrellshield1 for expanded
	item_icons = list(
		slot_l_hand_str = 'modular_boh/icon/mob/items/lefthand.dmi',
		slot_r_hand_str = 'modular_boh/icon/mob/items/righthand.dmi',
		)

/obj/item/shield/energy/skrell/handle_shield(mob/user)
	if(!active)
		return 0 //turn it on first!
	. = ..()

	if(.)
		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, 'sound/weapons/blade1.ogg', 50, 1)

/obj/item/shield/energy/skrell/get_block_chance(mob/user, var/damage, atom/damage_source = null, mob/attacker = null)
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		if((is_sharp(P) && damage > 10) || istype(P, /obj/item/projectile/beam))
			return (base_block_chance - round(damage / 2.5)) //block bullets and beams using the old block chance
	return base_block_chance

/obj/item/shield/energy/skrell/attack_self(mob/living/user as mob)
	if ((MUTATION_CLUMSY in user.mutations) && prob(50))
		to_chat(user, "<span class='warning'>You beat yourself in the head with [src].</span>")
		user.take_organ_damage(5, 0)
	active = !active
	if (active)
		force = 10
		update_icon()
		w_class = ITEM_SIZE_HUGE
		playsound(user, 'sound/weapons/saberon.ogg', 50, 1)
		to_chat(user, "<span class='notice'>\The [src] is now active.</span>")

	else
		force = 3
		update_icon()
		w_class = ITEM_SIZE_TINY
		playsound(user, 'sound/weapons/saberoff.ogg', 50, 1)
		to_chat(user, "<span class='notice'>\The [src] can now be concealed.</span>")

	if(istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	add_fingerprint(user)
	return

/obj/item/shield/energy/skrell/on_update_icon()
	icon_state = "skrellshield[active]"
	if(active)
		set_light(0.4, 0.1, 1, 2, "#006aff")
	else
		set_light(0)
