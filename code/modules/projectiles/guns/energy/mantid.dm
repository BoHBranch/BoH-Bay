/////////
// Standard Heavy Duty Lance. Better than projector but must be carried and used in both hands.
/////////
/obj/item/weapon/gun/energy/particle
	name = "particle lance"
	desc = "A long, thick-bodied energy rifle of some kind, clad in a curious indigo polymer and lit from within by Cherenkov radiation. The grip is clearly not designed for human hands."
	icon = 'icons/obj/guns/particle_rifle.dmi'
	icon_state = "particle_rifle"
	item_state = "particle_rifle"
	slot_flags = SLOT_BACK
	force = 18
	projectile_type = /obj/item/projectile/beam/particle
	max_shots = 8
	self_recharge = 1
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty = 4
	multi_aim = 1
	burst_delay = 3
	burst = 2
	move_delay = 3
	accuracy = -1
	wielded_item_state = "particle_rifle-wielded"
	charge_meter = 0
	has_safety = FALSE
	firemodes = list(
		list(mode_name="stun",   projectile_type = /obj/item/projectile/beam/stun),
		list(mode_name="shock",  projectile_type = /obj/item/projectile/beam/stun/shock),
		list(mode_name="lethal", projectile_type = /obj/item/projectile/beam/particle)
		)
	var/charge_state = "pr"

/////////
// Basic and compact energy gun Alates spawn with, equivelant to a Skrellian Handgun
/////////
/obj/item/weapon/gun/energy/particle/small
	name = "particle projector"
	desc = "A small, one-handed compact energy pistol lit from within by Cherenkov radiation. It is usually seen in the hands of Alates and Drones in use as a personal defense weapon."
	icon_state = "particle_rifle_small"
	force = 12
	max_shots = 9
	move_delay = 2
	one_hand_penalty = 0
	charge_state = "prsmall"
	slot_flags = SLOT_DENYPOCKET | SLOT_HOLSTER
	projectile_type = /obj/item/projectile/beam/particle/small
	firemodes = list(
		list(mode_name="stun",   projectile_type = /obj/item/projectile/beam/stun),
		list(mode_name="shock",  projectile_type = /obj/item/projectile/beam/stun/shock),
		list(mode_name="lethal", projectile_type = /obj/item/projectile/beam/particle/small)
		)


/obj/item/weapon/gun/energy/particle/on_update_icon()
	. = ..()
	var/datum/firemode/current_mode = firemodes[sel_mode]
	overlays = list(
		image(icon, "[charge_state]mode-[istype(current_mode) ? current_mode.name : "lethal"]"),
		image(icon, "[charge_state]charge-[Floor(power_supply.percent()/20)]")
	)

/obj/item/weapon/gun/energy/particle/get_mob_overlay(var/mob/living/carbon/human/user, var/slot)
	if(istype(user) && (slot == slot_l_hand_str || slot == slot_r_hand_str))
		var/bodytype = user.species.get_bodytype(user)
		if(bodytype in list(SPECIES_MANTID_ALATE, SPECIES_MANTID_GYNE, SPECIES_NABBER))
			if(slot == slot_l_hand_str)
				if(bodytype == SPECIES_MANTID_ALATE)
					return overlay_image('icons/mob/species/mantid/onmob_lefthand_particle_rifle_alate.dmi',  item_state_slots[slot_l_hand_str], color, RESET_COLOR)
				else if(bodytype == SPECIES_MANTID_GYNE)
					return overlay_image('icons/mob/species/mantid/onmob_lefthand_particle_rifle_gyne.dmi',   item_state_slots[slot_l_hand_str], color, RESET_COLOR)
				else
					return overlay_image('icons/mob/species/nabber/onmob_lefthand_particle_rifle.dmi',  item_state_slots[slot_l_hand_str], color, RESET_COLOR)
			else if(slot == slot_r_hand_str)
				if(bodytype == SPECIES_MANTID_ALATE)
					return overlay_image('icons/mob/species/mantid/onmob_righthand_particle_rifle_alate.dmi', item_state_slots[slot_r_hand_str], color, RESET_COLOR)
				else if(bodytype == SPECIES_MANTID_GYNE)
					return overlay_image('icons/mob/species/mantid/onmob_righthand_particle_rifle_gyne.dmi',  item_state_slots[slot_r_hand_str], color, RESET_COLOR)
				else
					return overlay_image('icons/mob/species/nabber/onmob_righthand_particle_rifle.dmi', item_state_slots[slot_r_hand_str], color, RESET_COLOR)
	. = ..(user, slot)

/obj/item/weapon/gun/energy/particle/ascent_flechette
	name = "crystal flechette rifle"
	desc = "A viciously pronged rifle-like weapon chalk full of ever-growing lethal crystal shards. Nothing about this is designed for human hands."
	projectile_type = /obj/item/projectile/bullet/magnetic/flechette/crystal
	max_shots = 18
	firemodes = /obj/item/projectile/bullet/magnetic/flechette/crystal