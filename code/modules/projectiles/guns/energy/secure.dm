/obj/item/weapon/gun/energy/gun/small/secure
	name = "Hephaestus Self Recharging Multipurpose Laser"
	desc = "The SRML is a part of Hephaestus 'smart' series of firearms. It's incredibly high price-tag has led to it being rarely seen outside of private security forces!"
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
	name = "smart stun revolver"
	desc = "This A&M X6 is fitted with an NT1019 chip which allows remote authorization of weapon functionality. It has an SCG emblem on the grip."
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
	name = "Hephaestus Smartgun"
	desc = "Hephaestus's 'smart' series of laser-gun. It is designed to please people after rampant claims of abuse by the Solarian Republican Guard! It has a incredibly high pricetag!"
	icon = 'icons/obj/guns/energy_gun_secure.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null	//so the human update icon uses the icon_state instead.
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 10
	self_recharge = 1

/obj/item/weapon/gun/energy/revolver/secure
	name = "LAER680-S Smart Revolver"
	desc = "The LAER680-S, a standard issue service revolver commonly used by higher ranking offcers among the SCG. Fitted with an NT1019 chip which allows remote authorization of the weapon's functionality."
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

/obj/item/weapon/gun/energy/revolver/secure/inf
	name = "LAER680-T Smart Revolver"
	desc = "The LAER680-T, a standard issue service revolver commonly used by higher ranking offcers among the SCG. \
	Fitted with an NT1019 chip as with the S-model, but unlike the prior model, this one has the less-lethal firing mode restricted."
	icon = 'icons/obj/guns/energy_revolver.dmi'
	icon_state = "energyrevolverstun100"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "energyrevolverkill"
	item_state = null
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energyrevolverstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyrevolvershock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energyrevolverkill"),
		)
	req_access = list(list(access_brig, access_heads))
	authorized_modes = list(UNAUTHORIZED, UNAUTHORIZED, ALWAYS_AUTHORIZED)//Removes the ability for Command to disable the auth on lethal, identically to their other sidearms.

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
	name = "Hephaestus G40E-UP"
	desc = "A Hephaestus Industries G40E carbine, designed to kill with concentrated energy blasts. Fitted with an NT1019 chip to make sure killcount is tracked appropriately."
	icon_state = "lasersec"

/obj/item/weapon/gun/energy/plasmarifle/secure
	name = "Hephaestus ITER-Mars"
	desc = "A Hephaestus Industries replica of NT ITER using terran modification to the same rifle. It has less powerful lens than the original making it less accurate and lacks self charging."
	req_access = list(list(access_brig, access_bridge))
	accuracy = 0
	self_recharge = 0