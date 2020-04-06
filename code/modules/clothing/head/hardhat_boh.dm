/obj/item/clothing/head/hardhat/self_protection
	name = "\improper Self-Protection helmet"
	desc = "An EMB helmet repurposed to be part of self-protection kit. It has green \"CIV\" imprinted on its front."
	icon = 'icons/boh/obj/clothing/obj_head.dmi'
	icon_override = 'icons/boh/mob/onmob/onmob_head.dmi'
	icon_state = "self-protection_helmet"
	light_overlay = "DC_light"
	flags_inv = HIDEEARS|BLOCKHAIR
	species_restricted = list("exclude",SPECIES_NABBER,SPECIES_DIONA)

/obj/item/clothing/head/hardhat/self_protection/old
	name = "old self-protection helmet"
	desc = "An old helmet that used to be part of self-protection kit, still used in frontier worlds. What was imprinted on helmet is now worn out, only leaving letter \"V\"."
	icon_state = "old-self-protection_helmet"
	light_overlay = "EMS_light"
	flags_inv = 0
	species_restricted = list("exclude")
