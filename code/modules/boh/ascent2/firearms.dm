/////////
// Support Lance
/////////
/obj/item/weapon/gun/energy/particle/support
	name = "defence lance"
	desc = "A modified variant of the Ascent particle lance, usually carried by rearline combatants."
	force = 6
	max_shots = 2
	burst = 2
	move_delay = 2
	one_hand_penalty = 0
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_DENYPOCKET | SLOT_HOLSTER
	projectile_type = /obj/item/projectile/beam/particle/defence
	firemodes = list(
		list(mode_name="primary",   projectile_type = /obj/item/projectile/beam/particle/defence),
		)
	var/windup = 5

/obj/item/weapon/gun/energy/particle/support/handle_post_fire(mob/user, atom/target)
	..()

/obj/item/weapon/gun/energy/particle/support/afterattack(atom/A, mob/living/user, adjacent, params)
	if(adjacent) return

	if(!user.aiming)
		user.aiming = new(user)

	if(windup > 0)
		if(do_after(user, windup)) // Do the windup.
			Fire(A,user,params) //Otherwise, fire normally.
	else
		Fire(A,user,params) //Otherwise, fire normally.


/obj/item/weapon/gun/energy/drone_particle//near identical to standard one, just without the limit as it's not a subpath
	name = "particle lance"
	desc = "A long, thick-bodied energy rifle of some kind, clad in a curious indigo polymer and lit from within by Cherenkov radiation. The grip is clearly not designed for human hands."
	icon = 'icons/obj/guns/particle_rifle.dmi'
	icon_state = "particle_rifle"
	item_state = "particle_rifle"
	slot_flags = SLOT_BACK
	force = 25
	projectile_type = /obj/item/projectile/beam/particle
	max_shots = 18
	self_recharge = 1
	w_class = ITEM_SIZE_HUGE
	one_hand_penalty = 6
	multi_aim = 1
	burst_delay = 3
	burst = 3
	move_delay = 4
	wielded_item_state = "particle_rifle-wielded"
	charge_meter = 0
	has_safety = FALSE
	firemodes = list(
		list(mode_name="stun", burst=3, move_delay=1, projectile_type=/obj/item/projectile/beam/stun),
		list(mode_name="shock", burst=2, move_delay=2, projectile_type=/obj/item/projectile/beam/stun/shock),
		list(mode_name="lethal - stable", projectile_type=/obj/item/projectile/beam/particle)
		)
	var/charge_state = "pr"

/obj/item/weapon/gun/energy/drone_particle/on_update_icon()
	. = ..()
	var/datum/firemode/current_mode = firemodes[sel_mode]
	overlays = list(
		image(icon, "[charge_state]mode-[istype(current_mode) ? current_mode.name : "lethal"]"),
		image(icon, "[charge_state]charge-[Floor(power_supply.percent()/20)]")
	)