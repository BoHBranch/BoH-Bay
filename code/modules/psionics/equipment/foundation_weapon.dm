/obj/item/weapon/gun/projectile/revolver/foundation
	name = "\improper Foundation revolver"
	icon = 'icons/obj/guns/foundation.dmi'
	icon_state = "foundation"
	desc = "The CF 'Troubleshooter', a compact plastic-composite weapon designed for concealed carry by Cuchulain Foundation field agents. Smells faintly of copper."
	ammo_type = /obj/item/ammo_casing/pistol/magnum/nullglass

/obj/item/weapon/gun/projectile/revolver/foundation/disrupts_psionics()
	return FALSE

/obj/item/weapon/storage/briefcase/foundation
	name = "\improper Foundation briefcase"
	desc = "A handsome black leather briefcase embossed with a stylized radio telescope."
	icon_state = "fbriefcase"
	item_state = "fbriefcase"

/obj/item/weapon/storage/briefcase/foundation/disrupts_psionics()
	return FALSE

/obj/item/weapon/storage/briefcase/foundation/revolver/New()
	..()
	new /obj/item/weapon/gun/projectile/revolver/foundation(src)
	new /obj/item/ammo_magazine/speedloader/magnum/nullglass(src)
	new /obj/item/ammo_magazine/speedloader/magnum/nullglass(src)
	new /obj/item/ammo_magazine/speedloader/magnum/nullglass(src)

/obj/item/weapon/storage/secure/briefcase/jerraman
	name = "secure vial carrier"
	icon = 'icons/obj/storage.dmi'
	icon_state = "fbriefcase"
	item_state = "fbriefcase"
	desc = "A large briefcase designed to carry vials of chemicals, with a digital locking system."
	startswith = list(/obj/item/weapon/reagent_containers/glass/beaker/vial/jerraman = 5, /obj/item/weapon/storage/box/syringes = 1)

/obj/item/weapon/storage/secure/briefcase/jerraman/disrupts_psionics()
	return FALSE

/obj/item/weapon/reagent_containers/glass/beaker/vial/jerraman
	reagents_to_add = list(/datum/reagent/jerraman = 4)

/obj/item/weapon/material/coin/nullglass
	desc = "A coin made of nullglass, used by psions to keep their own powers in check."
	default_material = MATERIAL_NULLGLASS

/obj/item/weapon/material/cross/nullglass
	desc = "A cross made of nullglass, used by psions to keep their own powers in check."
	default_material = MATERIAL_NULLGLASS

/obj/item/weapon/storage/box/large/psinullers
	name = "psi dampening items"
	desc = "Psionic dampening items for willing psions to suppress their powers."
	icon_state = "largebox"
	w_class = ITEM_SIZE_LARGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_LARGEBOX_STORAGE
	startswith = list(/obj/item/weapon/material/coin/nullglass = 7, /obj/item/weapon/material/cross/nullglass = 7)

/obj/item/weapon/storage/box/large/psinullers/disrupts_psionics()
	return FALSE