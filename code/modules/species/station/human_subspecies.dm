/datum/species/human/vatgrown
	name = SPECIES_VATGROWN
	name_plural = "Vat-Grown Humans"
	description = "With cloning on the forefront of human scientific advancement, cheap mass production \
	of bodies is a very real and rather ethically grey industry. Although slavery, indentured servitude \
	and flash-cloning are all illegal in SCG space, there still exists a margin for those legitimate \
	corporations able to take up contracts for growing and raising vat-grown humans to populate new \
	colonies or installations. Many vat-grown humans come from one of these projects, making up the \
	majority of those referred to as the nonborn - those with singular names and an identifier, such as \
	ID-John, BQ1-Bob or Thomas-582 - while others, bearing more human-sounding names, are created for \
	and raised as members of regular human families. Still others are the lab-created designer progeny \
	of the SCG's rich elite.<br/><br/>Vat-grown humans tend to be paler than baseline, though those \
	with darker skin better display the dull, greenish hue resulting from their artificial growth. \
	Vat-grown humans have no appendix and fewer inherited genetic disabilities but have a weakened \
	metabolism."
	icobase =     'icons/mob/human_races/species/human/subspecies/vatgrown_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/vatgrown_preview.dmi'

	toxins_mod =   1.1
	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
		)

	additional_available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_HUMAN_VATGROWN,
			CULTURE_SYMBIOTIC
		)
	)
	default_cultural_info = list(
		TAG_CULTURE = CULTURE_HUMAN_VATGROWN
	)

/datum/species/human/booster
	name = SPECIES_BOOSTER
	name_plural = "Boosters"
	description = "The self-proclaimed 'boosters' are a loosely affiliated group of self-modifying \
	bio-tinkers, engineers and radical philosophers dedicated to expanding the definition of what it \
	means to be human. Conservatives frown on their excessive recklessness, and most booster habitats \
	are found on the outskirts of systems - some even linger at the edge of human space.<br><br>The \
	shared Booster genotype is extremely unstable and liable for rapid, apparently random change, \
	but is certainly both unique and remarkable in its ability to cope with the extremes that the \
	Universe can throw at it."
	var/list/mods = list()

#define MOD_BASE     0.85
#define MOD_VARIANCE 0.35
/datum/species/human/booster/proc/get_mod(var/mob/living/carbon/human/booster, var/mod_type)
	if(istype(booster) && !booster.isSynthetic())
		var/mob_ref = booster.ckey || "\ref[booster]"
		if(!islist(mods[mob_ref]))
			var/list/new_mods = list()
			new_mods["brute"] =     MOD_BASE + (MOD_VARIANCE * rand())
			new_mods["burn"] =      MOD_BASE + (MOD_VARIANCE * rand())
			new_mods["toxins"] =    MOD_BASE + (MOD_VARIANCE * rand())
			new_mods["radiation"] = MOD_BASE + (MOD_VARIANCE * rand())
			new_mods["slowdown"] =  pick(-0.5, 0, 0.5)
			mods[mob_ref] = new_mods
		var/list/mob_mods = mods[mob_ref]
		. = mob_mods[mod_type] || 1
#undef MOD_BASE
#undef MOD_VARIANCE

/datum/species/human/booster/get_brute_mod(var/mob/living/carbon/human/H)
	. = get_mod(H, "brute")
	if(isnull(.))
		. = ..()

/datum/species/human/booster/get_burn_mod(var/mob/living/carbon/human/H)
	. = get_mod(H, "burn")
	if(isnull(.))
		. = ..()

/datum/species/human/booster/get_toxins_mod(var/mob/living/carbon/human/H)
	. = get_mod(H, "toxins")
	if(isnull(.))
		. = ..()

/datum/species/human/booster/get_radiation_mod(var/mob/living/carbon/human/H)
	. = get_mod(H, "radiation")
	if(isnull(.))
		. = ..()

/datum/species/human/booster/get_slowdown(var/mob/living/carbon/human/H)
	. = get_mod(H, "slowdown")
	if(isnull(.))
		. = ..()

/datum/species/human/mule
	name = SPECIES_MULE
	name_plural = "Mules"
	description = "There are a huge number of 'uncurated' genetic lines in human space, many of which fall under the \
	general header of baseline humanity. One recently discovered genotype is remarkable for both being deeply feral, \
	in the sense that it still has many of the inherited diseases and weaknesses that plagued pre-expansion humanity, \
	and for a strange affinity for psionic operancy. The Mules, as they are called, are born on the very edges of \
	civilization, and are physically diminutive and unimposing, with scrawny, often deformed bodies. Their physiology \
	rejects prosthetics and synthetic organs, and their lifespans are short, but their raw psionic potential is unmatched."

	spawn_flags =   SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS
	brute_mod =     1.25
	burn_mod =      1.25
	oxy_mod =       1.25
	toxins_mod =    1.25
	radiation_mod = 1.25
	flash_mod =     1.25
	blood_volume =  SPECIES_BLOOD_DEFAULT * 0.85
	min_age =       18
	max_age =       45

/datum/species/human/mule/handle_post_spawn(var/mob/living/carbon/human/H)
	if(!H.psi)
		H.psi = new(H)
		var/list/faculties = list("[PSI_COERCION]", "[PSI_REDACTION]", "[PSI_ENERGISTICS]", "[PSI_PSYCHOKINESIS]")
		for(var/i = 1 to 3)
			H.set_psi_rank(pick_n_take(faculties), 1)
	H.psi.max_stamina = 70
	var/obj/item/organ/external/E = pick(H.organs)
	if(!BP_IS_ROBOTIC(E))
		E.mutate()
		E.limb_flags |= ORGAN_FLAG_DEFORMED
		E.status |= ORGAN_DISFIGURED
		E.status |= ORGAN_MUTATED
