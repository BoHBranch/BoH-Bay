/////////
// Support Lance
/////////
/obj/item/weapon/gun/energy/particle/support
	name = "defence lance"
	desc = "A modified variant of the Ascent particle lance, usually carried by rearline combatants."
	force = 6
	max_shots = 4
	burst = 2
	move_delay = 2
	one_hand_penalty = 0
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_DENYPOCKET | SLOT_HOLSTER
	projectile_type = /obj/item/projectile/beam/particle/defence
	firemodes = list(
		list(mode_name="primary",   projectile_type = /obj/item/projectile/beam/particle/defence),
		)