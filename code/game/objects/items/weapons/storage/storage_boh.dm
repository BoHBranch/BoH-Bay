////////////
// Belts -
////////////


/obj/item/weapon/storage/belt/holster/offsite
	name = "tactical holster belt"
	desc = "Can hold tactical gear like handcuffs, flashes and munitions. This one has a convenient holster."
	icon_state = "swatbelt"
	item_state = "swatbelt"
	storage_slots = 10
	overlay_flags = BELT_OVERLAY_ITEMS|BELT_OVERLAY_HOLSTER
	can_hold = list(
		/obj/item/weapon/crowbar,
		/obj/item/weapon/grenade,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/handcuffs,
		/obj/item/device/flash,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_magazine,
		/obj/item/weapon/reagent_containers/food/snacks/donut/,
		/obj/item/weapon/melee/baton,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/flame/lighter,
		/obj/item/device/flashlight,
		/obj/item/modular_computer/pda,
		/obj/item/device/radio/headset,
		/obj/item/device/hailer,
		/obj/item/device/megaphone,
		/obj/item/weapon/melee,
		/obj/item/taperoll,
		/obj/item/device/holowarrant,
		/obj/item/weapon/magnetic_ammo,
		/obj/item/device/binoculars,
		/obj/item/clothing/gloves
		)
	can_holster = list(/obj/item/weapon/gun/energy/gun/skrell)
	sound_in = 'sound/effects/holster/tactiholsterin.ogg'
	sound_out = 'sound/effects/holster/tactiholsterout.ogg'