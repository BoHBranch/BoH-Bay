/obj/item/organ/internal/brain/slime
	name = "nucleo de slime"
	desc = "Un complejo nudo organico de gelatina y particulas cristalinas."
	icon = 'icons/mob/simple_animal/slimes.dmi'
	icon_state = "prommie_extract"
	organ_tag = BP_SLIMECORE
	parent_organ = BP_CHEST
	vital = 1

/obj/item/organ/internal/brain/slime/can_recover()
	return 0
