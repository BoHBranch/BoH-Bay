//Procedures in this file: Internal wound patching, Implant removal.
//////////////////////////////////////////////////////////////////
//					INTERNAL WOUND PATCHING						//
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//	 Tendon fix surgery step
//////////////////////////////////////////////////////////////////
/decl/surgery_step/fix_tendon
	name = "Reparar tendon"
	allowed_tools = list(
		/obj/item/weapon/FixOVein = 100,
		/obj/item/stack/cable_coil = 75,
		/obj/item/weapon/tape_roll = 50
	)
	can_infect = 1
	blood_level = 1
	min_duration = 70
	max_duration = 90
	shock_level = 40
	delicate = 1
	surgery_candidate_flags = SURGERY_NO_CRYSTAL | SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NEEDS_RETRACTED

/decl/surgery_step/fix_tendon/assess_bodypart(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = ..()
	if(affected && (affected.status & ORGAN_TENDON_CUT))
		return affected

/decl/surgery_step/fix_tendon/begin_step(mob/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("[user] comienza a recolocar el danado [affected.tendon_name] en [target] en [affected.name] con \the [tool]." , \
	"Comienzas a recolocar el danado [affected.tendon_name] en [target] en [affected.name] con \the [tool].")
	target.custom_pain("El dolor en tu [affected.name] es inaguantable!",100,affecting = affected)
	..()

/decl/surgery_step/fix_tendon/end_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("<span class='notice'>[user] ha recolocado el [affected.tendon_name] en [target] en [affected.name] con \the [tool].</span>", \
		"<span class='notice'>Has recolocado el [affected.tendon_name] en [target] en [affected.name] con \the [tool].</span>")
	affected.status &= ~ORGAN_TENDON_CUT
	affected.update_damages()

/decl/surgery_step/fix_tendon/fail_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("<span class='warning'>Las manos de [user] resbalan, manchando [tool] en la incision de [target] [affected.name]!</span>" , \
	"<span class='warning'>Tus manos resbalan, manchando [tool] en la incision de [target] en [affected.name]!</span>")
	affected.take_external_damage(5, used_weapon = tool)

//////////////////////////////////////////////////////////////////
//	 IB fix surgery step
//////////////////////////////////////////////////////////////////
/decl/surgery_step/fix_vein
	name = "Reparar sangrado arterial"
	allowed_tools = list(
		/obj/item/weapon/FixOVein = 100,
		/obj/item/stack/cable_coil = 75,
		/obj/item/weapon/tape_roll = 50
	)
	can_infect = 1
	blood_level = 1
	min_duration = 70
	max_duration = 90
	shock_level = 40
	delicate = 1
	strict_access_requirement = FALSE
	surgery_candidate_flags = SURGERY_NO_CRYSTAL | SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NEEDS_RETRACTED

/decl/surgery_step/fix_vein/assess_bodypart(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = ..()
	if(affected && (affected.status & ORGAN_ARTERY_CUT))
		return affected

/decl/surgery_step/fix_vein/begin_step(mob/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("[user] comienza a remendar el danado [affected.artery_name] in [target]'s [affected.name] con \the [tool]." , \
	"Comienzas a remendar el danado [affected.artery_name] en [target] en [affected.name] con \the [tool].")
	target.custom_pain("El dolor en tu [affected.name] es insoportable!",100,affecting = affected)
	..()

/decl/surgery_step/fix_vein/end_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("<span class='notice'>[user] ha remendado el [affected.artery_name] en [target] en [affected.name] con \the [tool].</span>", \
		"<span class='notice'>Has remendado el [affected.artery_name] en [target] en [affected.name] con \the [tool].</span>")
	affected.status &= ~ORGAN_ARTERY_CUT
	affected.update_damages()

/decl/surgery_step/fix_vein/fail_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("<span class='warning'>Las manos de [user] resbalan, manchando [tool] en el inciso en [target] en [affected.name]!</span>" , \
	"<span class='warning'>Tus manos resbalan, manchando [tool] en el inciso en [target] en [affected.name]!</span>")
	affected.take_external_damage(5, used_weapon = tool)


//////////////////////////////////////////////////////////////////
//	 Hardsuit removal surgery step
//////////////////////////////////////////////////////////////////
/decl/surgery_step/hardsuit
	name = "Quitar hardsuit"
	allowed_tools = list(
		/obj/item/weapon/weldingtool = 80,
		/obj/item/weapon/circular_saw = 60,
		/obj/item/psychic_power/psiblade/master/grand/paramount = 100,
		/obj/item/psychic_power/psiblade = 75,
		/obj/item/weapon/gun/energy/plasmacutter = 30
	)
	can_infect = 0
	blood_level = 0
	min_duration = 120
	max_duration = 180
	surgery_candidate_flags = 0

/decl/surgery_step/hardsuit/assess_bodypart(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	return TRUE

/decl/surgery_step/hardsuit/get_skill_reqs(mob/living/user, mob/living/carbon/human/target, obj/item/tool)
	return list(SKILL_EVA = SKILL_BASIC)

/decl/surgery_step/hardsuit/can_use(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	if(!istype(target))
		return FALSE
	if(isWelder(tool))
		var/obj/item/weapon/weldingtool/welder = tool
		if(!welder.isOn() || !welder.remove_fuel(1,user))
			return FALSE
	return (target_zone == BP_CHEST) && istype(target.back, /obj/item/weapon/rig) && !(target.back.canremove)

/decl/surgery_step/hardsuit/begin_step(mob/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	user.visible_message("[user] empieza a cortar a traves de los sistemas de soporte de [target]'s [target.back] con \the [tool]." , \
	"Empiezas a cortar a traves de los sistemas de soporte de [target] en [target.back] con \the [tool].")
	..()

/decl/surgery_step/hardsuit/end_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)

	var/obj/item/weapon/rig/rig = target.back
	if(!istype(rig))
		return
	rig.reset()
	user.visible_message("<span class='notice'>[user] ha cortado a traves de los sistemas de soporte de [target] [rig] con \the [tool].</span>", \
		"<span class='notice'>Has cortado a traves de los sistemas de soporte de[target] [rig] con \the [tool].</span>")

/decl/surgery_step/hardsuit/fail_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	user.visible_message("<span class='danger'>[user] [tool] parece que no puede atravesar el metal.</span>", \
	"<span class='danger'>Tu [tool] parece que no puede atravesar el metal. sin embargo se esta debilitando - intenta de nuevo.</span>")


//////////////////////////////////////////////////////////////////
//	 Disinfection step
//////////////////////////////////////////////////////////////////
/decl/surgery_step/sterilize
	name = "Esterilizar herida"
	allowed_tools = list(
		/obj/item/weapon/reagent_containers/spray = 100,
		/obj/item/weapon/reagent_containers/dropper = 100,
		/obj/item/weapon/reagent_containers/glass/bottle = 90,
		/obj/item/weapon/reagent_containers/food/drinks/flask = 90,
		/obj/item/weapon/reagent_containers/glass/beaker = 75,
		/obj/item/weapon/reagent_containers/food/drinks/bottle = 75,
		/obj/item/weapon/reagent_containers/food/drinks/glass2 = 75,
		/obj/item/weapon/reagent_containers/glass/bucket = 50
	)
	can_infect = 0
	blood_level = 0
	min_duration = 50
	max_duration = 60

/decl/surgery_step/sterilize/assess_bodypart(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = ..()
	if(affected && !affected.is_disinfected() && check_chemicals(tool))
		return affected

/decl/surgery_step/sterilize/get_skill_reqs(mob/living/user, mob/living/carbon/human/target, obj/item/tool)
	return list(SKILL_MEDICAL = SKILL_BASIC)

/decl/surgery_step/sterilize/begin_step(mob/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)
	user.visible_message("[user] comienza a verter los contenidos de [tool] en \the [target] [affected.name]." , \
	"Comienzas a verter los contenidos de [tool] en \the [target] [affected.name].")
	target.custom_pain("Tu[affected.name] esta en llamas!",50,affecting = affected)
	..()

/decl/surgery_step/sterilize/end_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)

	if (!istype(tool, /obj/item/weapon/reagent_containers))
		return

	var/obj/item/weapon/reagent_containers/container = tool

	var/amount = container.amount_per_transfer_from_this
	var/temp_holder = new/obj()
	var/datum/reagents/temp_reagents = new(amount, temp_holder)
	container.reagents.trans_to_holder(temp_reagents, amount)

	var/trans = temp_reagents.trans_to_mob(target, temp_reagents.total_volume, CHEM_BLOOD) //technically it's contact, but the reagents are being applied to internal tissue
	if (trans > 0)
		user.visible_message("<span class='notice'>[user] frota [target] en [affected.name] abajo con los contenidos de \the [tool]</span>.", \
			"<span class='notice'>Frotas [target] en [affected.name] abajo con los contenidos de \the [tool].</span>")
	affected.disinfect()
	qdel(temp_reagents)
	qdel(temp_holder)

/decl/surgery_step/sterilize/fail_step(mob/living/user, mob/living/carbon/human/target, target_zone, obj/item/tool)
	var/obj/item/organ/external/affected = target.get_organ(target_zone)

	if (!istype(tool, /obj/item/weapon/reagent_containers))
		return

	var/obj/item/weapon/reagent_containers/container = tool

	container.reagents.trans_to_mob(target, container.amount_per_transfer_from_this, CHEM_BLOOD)

	user.visible_message("<span class='warning'>Las manos de [user] resbalan, derramando los contenidos de \the [tool] sobre [target] en [affected.name]!</span>" , \
	"<span class='warning'>Tus manos resbalan, derramando los contenidos de \the [tool] sobre [target] en [affected.name]!</span>")
	affected.disinfect()

/decl/surgery_step/sterilize/proc/check_chemicals(var/obj/item/weapon/reagent_containers/container)
	if(istype(container) && container.is_open_container())
		if(container.reagents.has_reagent(/datum/reagent/sterilizine))
			return TRUE
		else
			var/datum/reagent/ethanol/booze = locate() in container.reagents.reagent_list
			if(istype(booze))
				if(booze.strength <= 40)
					return TRUE
	return FALSE