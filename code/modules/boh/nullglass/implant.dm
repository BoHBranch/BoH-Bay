/////////
// The entire package
/////////
/obj/item/weapon/implantcase/psyker
	name = "glass case - 'psi dampener'"
	imp = /obj/item/weapon/implant/psi_control

/obj/item/weapon/storage/box/psykerimplants
	name = "psi dampeners"
	desc = "Box of stuff used to implant psionic monitoring software."
	icon_state = "implant"
	item_state = "syringe_kit"
	startswith = list(/obj/item/weapon/implanter = 1,
				/obj/item/weapon/implantcase/psyker = 6)