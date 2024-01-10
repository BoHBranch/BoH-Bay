/obj/item/rig/recon
	name = "advanced recon hardsuit control module"
	desc = "An advanced, lightweight military hardsuit. The face of Sol Central Government's Marine Corps. This model is top-of-the-line, with all sorts of modules installed. The inside of the wiring panel has has 'SCG SPECIAL OPERATIONS' stamped into it."
	icon_state = "infantry_rig"
	suit_type = "recon hardsuit"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	online_slowdown = 1
	offline_slowdown = 3
	offline_vision_restriction = TINT_HEAVY

	helm_type = /obj/item/clothing/head/helmet/space/rig/recon
	glove_type = /obj/item/clothing/gloves/rig/recon
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword,/obj/item/handcuffs)

	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/grenade_launcher,
		/obj/item/rig_module/vision/multi,
		/obj/item/rig_module/mounted/egun,
		/obj/item/rig_module/chem_dispenser/combat,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/device/rcd,
		/obj/item/rig_module/datajack,
		/obj/item/rig_module/cooling_unit
		)

/obj/item/clothing/gloves/rig/recon
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_NOCUFFS
	siemens_coefficient = 0.4

/obj/item/clothing/head/helmet/space/rig/recon
	light_overlay = "helmet_light_dual_green"

//Marine Deathsquad. Don't hand these out casually.
/obj/item/rig/recon/deathsquad
	name = "advanced assault hardsuit control module"
	desc = "A ridiculously heavy military hardsuit. You've never seen anything like it! This model seems to have 'SCG-DEATHSQUAD' stamped into its wiring panel, how peculiar."
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_HEAVY,
		laser = ARMOR_LASER_HEAVY,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

//Infantry's "safer" version.
/obj/item/rig/recon/infantry
	name = "recon hardsuit control module"
	desc = "A lightweight military hardsuit. The face of Sol Central Government's Marine Corps. This model seems to have been modified for less intense operations."
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/cooling_unit
		)
