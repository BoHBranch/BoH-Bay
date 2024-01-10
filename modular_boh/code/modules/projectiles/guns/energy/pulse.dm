/obj/item/gun/energy/pulse_rifle/skrell/vesta
	name = "VT-3 carbine"
	desc = "The Vuu'Xqu*ix T-3, known as 'VT-3' by SolGov. Rarely seen out in the wild by anyone outside of a Skrellian SDTF."
	icon = 'icons/obj/guns/skrell_carbine.dmi'
	icon_state = "skrell_carbine"
	item_state = "skrell_carbine"
	slot_flags = SLOT_BACK|SLOT_BELT
	self_recharge = 1
	move_delay = 2
	projectile_type=/obj/item/projectile/beam/pulse/skrell/single
	charge_cost=120
	burst=1
	burst_delay=null
	wielded_item_state = "skrell_carbine-wielded"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy, charge_cost=40, burst=1, burst_delay=null),
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/pulse/skrell/single, charge_cost=120, burst=1, burst_delay=null),
		list(mode_name="double", projectile_type=/obj/item/projectile/beam/pulse/skrell/heavy, charge_cost=55, burst=2, burst_delay=3),
		)
