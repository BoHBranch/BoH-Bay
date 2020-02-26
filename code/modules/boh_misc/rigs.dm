/////////
// Deathsquad
/////////

/obj/item/weapon/rig/military/deathsquad		//Deathsquad only, considering you're basically unkillable.
	name = "heavy suit control module"
	desc = "A heavy, incredibly sleek suit of the best armor available to... well, anyone. Jesus, this is a lot of armor. \
	You suspect that not even an organized military such as the SCG's would be able to contend with this. \
	The ablative coating and composite armor makes it seem immune to nearly everything you can think of."
	suit_type = "military hardsuit"
	icon_state = "military_rig"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/self_destruct,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/grenade_launcher/combat,
		/obj/item/rig_module/mounted/lcannon,
		/obj/item/rig_module/mounted/energy_blade,
		/obj/item/rig_module/vision/multi,
		/obj/item/rig_module/chem_dispenser/deathsquad,
		/obj/item/rig_module/device/rcd,
		/obj/item/rig_module/datajack,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/teleporter,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/maneuvering_jets
	)


/////////
// Infantry
/////////
/obj/item/weapon/rig/military/infantry
	name = "heavy suit control module"
	desc = "A heavy, incredibly sleek suit military grade armor. \
	The ablative coating and composite armor makes it seem incredibly sturdy."
	req_access = list(access_infantry)
	suit_type = "military hardsuit"
	icon_state = "military_rig"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

	initial_modules = list(
	/obj/item/rig_module/cooling_unit,
	/obj/item/rig_module/maneuvering_jets
	)
