/obj/item/weapon/melee/whip
	name = "whip"
	desc = "A generic whip."
	icon_state = "chain"
	item_state = "chain"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 10
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 4)
	attack_verb = list("flicked", "whipped", "lashed")

/obj/item/weapon/melee/whip/abyssal
	name = "abyssal whip"
	desc = "A weapon from the abyss. Requires 70 attack to wield."
	icon_state = "whip"
	item_state = "whip"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 16 //max hit with 60 strength and no equipment. Duel Arena no No forfeit - Snapshot
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 4)
	attack_verb = list("flicked", "whipped", "lashed")

/obj/item/weapon/melee/whip/tail
	name = "drake's tail"
	desc = "The tail of a large scaled creature, obviously evolved as some kind of whipping weapon. It's razor sharp and incredibly tough, though relatively lightweight."
	icon_state = "tailwhip"
	item_state = "whip"
	obj_flags = null
	force = 19
	edge = TRUE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 5)

/obj/item/weapon/melee/whip/chainofcommand
	name = "chain of command"
	desc = "A tool used by great men to placate the frothing masses."
	attack_verb = list("flogged", "whipped", "lashed", "disciplined")
	icon_state = "chain"
	item_state = "whip"

// Officer swords are spilt into two now, Marine and Fleet.

/obj/item/weapon/material/sword/officersword
	name = "fleet pattern sword"
	desc = "A polished sword issued to Fleet officers and NCOs alike. Surprisngly robust and deadly. Considering its former roots as a ship to ship weapon, before the rise of Frangible ammuniton and Laser weaponry."
	icon_state = "fleet_sword"
	item_state = "officersword"
	force_divisor = 0.55 // 33 damage considering they're all made out of steel.
	w_class = ITEM_SIZE_HUGE
	applies_material_colour = FALSE

/obj/item/weapon/material/sword/officersword/marine
	name = "marine pattern sword"
	desc = "A polished sword issued to Marine NCOs and Officers alike. Surprisingly robust. Considering it used to be used on ship to ship combat, before the rise of Frangible ammunition and Laser weaponry."
	icon_state = "marine_sword"

// And their sheath.

/obj/item/weapon/storage/belt/holster/sheath
	name = "sword sheath"
	desc = "A sword sheath, it can hold Marine or Fleet swords. It can be worn on the back, belt, some outerwear or as outerwear in and of itself."
	icon_state = "sword_sheath"
	item_state = "sword_sheath"
	storage_slots = 1
	w_class = 6
	max_w_class = 6
	max_storage_space = 16 // Swords are bulky, needs this to not error.
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_OCLOTHING
	sound_in = 'sound/effects/holster/sheathin.ogg'
	sound_out = 'sound/effects/holster/blade_unsheath.ogg'
	can_holster = list(/obj/item/weapon/material/sword/officersword)

/obj/item/weapon/storage/belt/holster/sheath/fleet/New()
	..()
	new /obj/item/weapon/material/sword/officersword(src)
	update_icon()

/obj/item/weapon/storage/belt/holster/sheath/marine/New()
	..()
	new /obj/item/weapon/material/sword/officersword/marine(src)
	update_icon()
