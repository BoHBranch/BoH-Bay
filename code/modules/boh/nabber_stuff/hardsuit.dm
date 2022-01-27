// Rigs and gear themselves.
/obj/item/weapon/rig/mantid
	name = "serpentid utility exosuit"
	icon_override = 'icons/mob/species/nabber/onmob_back_gas.dmi'
	desc = "An advanced utility exosuit with integrated power supply, weapon and atmosphere. It's closer to a mech than a rig."
	icon_state = "kexosuit"
	item_state = null
	suit_type = "support exosuit"
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	armor_type = /datum/extension/armor/ablative
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	air_type =   /obj/item/weapon/tank/mantid/reactor/oxygen
	cell_type =  /obj/item/weapon/cell/mantid
	chest_type = /obj/item/clothing/suit/space/rig/mantid/serpentid
	helm_type =  /obj/item/clothing/head/helmet/space/rig/mantid
	boot_type =  /obj/item/clothing/shoes/magboots/rig/mantid
	glove_type = /obj/item/clothing/gloves/rig/mantid
	update_visible_name = TRUE
	icon_override = 'icons/mob/species/mantid/onmob_back_alate.dmi'
	sprite_sheets = list(
		SPECIES_NABBER = 'icons/mob/species/nabber/onmob_back_gas.dmi'
		)
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets
		)

/obj/item/weapon/rig/gas/mob_can_equip(var/mob/M, var/slot)
	. = ..()
	if(. && slot == slot_back)
		var/mob/living/carbon/human/H = M
		if(!istype(H) || H.species.get_bodytype(H))
			to_chat(H, "<span class='danger'>Your species cannot wear \the [src].</span>")
			. = 0
