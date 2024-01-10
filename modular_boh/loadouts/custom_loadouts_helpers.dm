/datum/gear/proc/implant_into_mob(var/mob/living/carbon/human/H, obj/item/I)
	var/obj/item/organ/external/organ_to_implant_into = H.get_organ(BP_CHEST)

	if(istype(I, /obj/item/organ/internal/augment))
		var/obj/item/organ/internal/augment/A = I
		var/implantloc = A.parent_organ
		organ_to_implant_into = H.get_organ(implantloc)
		if(A.augment_flags == AUGMENTATION_MECHANIC)
			if(!BP_IS_ROBOTIC(organ_to_implant_into))
				to_chat(H, "<span class='warning'>Your [organ_to_implant_into.name] is not robotic, and therefore the [A] can not be installed!</span>")
				qdel(A)
				return
		A.replaced(H, organ_to_implant_into)
		to_chat(H, "<span class='warning'>Implanting you with [A] in your [organ_to_implant_into.name]!</span>")

	if(istype(I, /obj/item/implant))
		var/obj/item/implant/IM = I
		IM.forceMove(organ_to_implant_into)
		IM.implanted(H)
		to_chat(H, "<span class='warning'>Implanting you with [IM] in your [organ_to_implant_into.name]!</span>")

/datum/gear/spawn_in_storage_or_drop(var/mob/living/carbon/human/H, var/metadata)
	var/obj/item/item = spawn_item(H, metadata)
	item.add_fingerprint(H)

	if(implanted)
		implant_into_mob(H, item)
		return
	..()
