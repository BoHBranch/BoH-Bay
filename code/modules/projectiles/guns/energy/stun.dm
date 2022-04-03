/obj/item/weapon/gun/energy/taser
	name = "Hephaestus Stunner"
	desc = "The Hephaestus Stunner is a cheap and effective stungun designed for the Military Police!"
	icon = 'icons/obj/guns/taser.dmi'
	icon_state = "taserstun"
	item_state = null	//so the human update icon uses the icon_state instead.
	modifystate = "taserstun"
	max_shots = 9
	projectile_type = /obj/item/projectile/beam/stun
	combustion = 0

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="taserstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="tasershock"),
		)

/obj/item/weapon/gun/energy/taser/carbine
	name = "Hephaestus Lightning"
	desc = "The Hephaestus Lightning is a powerful stunrifle built to takedown more 'biologically robust' species, such as Unathi!"
	icon = 'icons/obj/guns/taser_carbine.dmi'
	icon_state = "tasercarbinestun"
	modifystate = "tasercarbinestun"
	w_class = ITEM_SIZE_LARGE
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 3
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	force = 8
	max_shots = 10
	fire_delay = 10 // 1.1 second inbetween shots.
	accuracy = 1
	projectile_type = /obj/item/projectile/beam/stun/heavy
	wielded_item_state = "tasercarbine-wielded"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy, modifystate="tasercarbinestun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock/heavy, modifystate="tasercarbineshock"),
		)

/obj/item/weapon/gun/energy/taser/mounted
	name = "mounted electrolaser"
	self_recharge = 1
	use_external_power = 1
	has_safety = FALSE

/obj/item/weapon/gun/energy/taser/mounted/cyborg
	name = "electrolaser"
	max_shots = 6
	recharge_time = 10 //Time it takes for shots to recharge (in ticks)


/obj/item/weapon/gun/energy/stunrevolver
	name = "MA-Sparkler"
	desc = "The Martian Armoury Sparkler. It's a stun-gun in the shape of a revolver with pitiful ammo-capacity. It's only saving grace is the stability of it's shot over distance!"
	icon = 'icons/obj/guns/stunrevolver.dmi'
	icon_state = "stunrevolver"
	item_state = "stunrevolver"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_POWER = 2)
	projectile_type = /obj/item/projectile/energy/electrode
	max_shots = 6
	combustion = 0

/obj/item/weapon/gun/energy/stunrevolver/rifle
	name = "MA-Crackler"
	desc = "An Martian Armoury Crackler. A vastly oversized variant of the Sparkler. Fires overcharged electrodes to obliterate pain receptors without harming them too much!"
	icon = 'icons/obj/guns/stunrifle.dmi'
	icon_state = "stunrifle"
	item_state = "stunrifle"
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BACK
	one_hand_penalty = 6
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	force = 10
	max_shots = 5
	accuracy = 2
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	wielded_item_state = "stunrifle-wielded"

/obj/item/weapon/gun/energy/crossbow
	name = "mini energy-crossbow"
	desc = "A weapon favored by many mercenary stealth specialists."
	icon = 'icons/obj/guns/energy_crossbow.dmi'
	icon_state = "crossbow"
	w_class = ITEM_SIZE_SMALL
	item_state = "crossbow"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2, TECH_ESOTERIC = 5)
	matter = list(MATERIAL_STEEL = 2000)
	slot_flags = SLOT_BELT
	silenced = 1
	fire_sound = 'sound/weapons/Genhit.ogg'
	projectile_type = /obj/item/projectile/energy/bolt
	max_shots = 1
	self_recharge = 1
	charge_meter = 0
	combustion = 0

/obj/item/weapon/gun/energy/crossbow/ninja
	name = "energy dart thrower"
	projectile_type = /obj/item/projectile/energy/dart
	max_shots = 2

/obj/item/weapon/gun/energy/crossbow/ninja/mounted
	use_external_power = 1
	has_safety = FALSE

/obj/item/weapon/gun/energy/crossbow/largecrossbow
	name = "energy crossbow"
	desc = "A weapon favored by mercenary infiltration teams."
	w_class = ITEM_SIZE_LARGE
	force = 10
	one_hand_penalty = 1
	max_shots = 3
	matter = list(MATERIAL_STEEL = 200000)
	projectile_type = /obj/item/projectile/energy/bolt/large

/obj/item/weapon/gun/energy/plasmastun
	name = "Hephaestus Selkie"
	desc = "The Hephaestus Industries MA21 Selkie is a weapon that uses a laser pulse to ionise the local atmosphere, creating a disorienting pulse of plasma and deafening shockwave as the wave expands. Without a local atmosphere to ionize, however, it becomes a very expensive paperweight."
	icon = 'icons/obj/guns/plasma_stun.dmi'
	icon_state = "plasma_stun"
	item_state = "plasma_stun"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_POWER = 3)
	slot_flags = SLOT_BACK
	fire_delay = 20
	max_shots = 8
	projectile_type = /obj/item/projectile/energy/plasmastun
	combustion = 0

/obj/item/weapon/gun/energy/confuseray
	name = "W-T Disorientator"
	desc = "The W-T Mk. 4 Disorientator is a small, low capacity, and short-ranged energy projector intended for personal defense with minimal risk of permanent damage or cross-fire."
	icon = 'icons/obj/guns/confuseray.dmi'
	icon_state = "confuseray"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_POWER = 2)
	w_class = ITEM_SIZE_SMALL
	max_shots = 4
	projectile_type = /obj/item/projectile/beam/confuseray
	combustion = 0
