/datum/trait/weaver
	name = "Weaver"
	desc = "You can produce silk and create various articles of clothing and objects."
	cost = 1
	var_changes = list(is_weaver = 1)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		H.verbs |= /mob/living/carbon/human/proc/check_silk_amount
		H.verbs |= /mob/living/carbon/human/proc/toggle_silk_production
		H.verbs |= /mob/living/carbon/human/proc/weave_structure
		H.verbs |= /mob/living/carbon/human/proc/weave_item
		H.verbs |= /mob/living/carbon/human/proc/set_silk_color