/obj/item/gun/energy/gun/skrell/hestia
	name = "XV-5 handgun"
	desc = "A common Skrellian side-arm, the Xuxquu*'Voom-5, or XV-5, is a more traditional energy weapon, tuned to dispense beams in three different wavelengths."
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	icon = 'icons/obj/guns/skrell_pistol.dmi'
	icon_state = "skrell_pistol_stun_100"
	max_shots = 10
	fire_delay = 6
	one_hand_penalty = 1
	self_recharge = 1
	base_parry_chance = 20

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 5, TECH_POWER = 3)
	modifystate = "skrell_pistol_stun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="skrell_pistol_stun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="skrell_pistol_shock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/smalllaser, modifystate="skrell_pistol_kill"),
		)
