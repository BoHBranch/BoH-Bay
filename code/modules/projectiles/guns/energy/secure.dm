/obj/item/weapon/gun/energy/gun/small/secure
	name = "Solarian Navy compact smartgun"
	desc = "Self-Recharging high-yield LASER weapon produced by Nanotrasen for the Solarian Navy. It is connected to the Authorization network to stop it's use in mutiny!"
	icon = 'icons/obj/guns/small_egun_secure.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 3
	recharge_time = 8
	self_recharge = 1

/obj/item/weapon/gun/energy/stunrevolver/secure
	name = "U.A.F Retrofitted Stunner"
	desc = "Union Arms Factory's Stunner. Designed to mimic the silhouette of a classic Human revolver! The authorization program is worth more than the gun on this model!"
	icon = 'icons/obj/guns/stunrevolver_secure.dmi'
	icon_state = "revolverstun100"
	modifystate= "revolverstun"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null
	req_access = list(list(access_brig, access_bridge))

/obj/item/weapon/gun/energy/gun/secure
	name = "Solarian Navy Smartgun"
	desc = "High-Yield LASER weapon produced by Nanotrasen for the Solarian Navy. It is connected to the Authorization network to stop it's use in mutiny!"
	icon = 'icons/obj/guns/energy_gun_secure.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null	//so the human update icon uses the icon_state instead.
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 10

/obj/item/weapon/gun/energy/revolver/secure
	name = "Solarian Navy Energy-Revolver"
	desc = "Produced by Nanotrasen for those members of the navy who think they're cooler than the Marines. A prized gift amongst Vox and Human pirates alike!"
	icon = 'icons/obj/guns/energy_revolver.dmi'
	icon_state = "energyrevolverstun100"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "energyrevolverstun"
	item_state = null
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energyrevolverstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyrevolvershock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energyrevolverkill"),
		)
	req_access = list(list(access_brig, access_heads))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)

/obj/item/weapon/gun/energy/gun/secure/mounted
	name = "robot energy gun"
	desc = "A robot-mounted equivalent of the LAEP90-S, which is always registered to its owner."
	self_recharge = 1
	use_external_power = 1
	one_hand_penalty = 0
	has_safety = FALSE
	item_flags = ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/weapon/gun/energy/gun/secure/mounted/Initialize()
	var/mob/borg = get_holder_of_type(src, /mob/living/silicon/robot)
	if(!borg)
		CRASH("Invalid spawn location.")
	registered_owner = borg.name
	GLOB.registered_cyborg_weapons += src
	. = ..()

/obj/item/weapon/gun/energy/laser/secure
	name = "Hephestus Laser Rifle"
	desc = "A Hephaestus Industries G40E carbine, designed to kill with concentrated energy blasts. Fitted with an command-lock chip to ensure only it's owner can fire it!"
	icon_state = "lasersec"
	req_access = list(list(access_brig, access_bridge))
