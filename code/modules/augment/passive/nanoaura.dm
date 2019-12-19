//This handy augment protects you to a degree, keeping it online after critical damage however is bad

/obj/aura/nanoaura
	name = "Nanoaura"
	var/obj/item/organ/internal/augment/active/nanounit/unit = null
	var/active = 0


//The organ itself

/obj/item/organ/internal/augment/active/nanounit
	name = "Nanite MCU"
	allowed_organs = list(BP_AUGMENT_CHEST_ACTIVE)
	icon_state = "armor-chest"
	desc = "Nanomachines, son."
	action_button_name = "Toggle Nanomachines"
	var/obj/aura/nanoaura/aura = null
	var/charges = 4
	var/max_charges = 4
	var/list/memesounds = list('sound/effects/nanomachines/nanomachinesson.ogg', 'sound/effects/nanomachines/physicaltrauma.ogg')
	var/next_regen_time
	var/regen_delay = 5 MINUTES
	var/regen_amount = 1

/obj/item/organ/internal/augment/active/nanounit/Initialize()
	. = ..()
	next_regen_time = world.time + regen_delay
	START_PROCESSING(SSobj, src)

/obj/item/organ/internal/augment/active/nanounit/Destroy()
	STOP_PROCESSING(SSobj, src)

/obj/item/organ/internal/augment/active/nanounit/Process()
	if(next_regen_time < world.time && (charges != max_charges))
		charges += regen_amount
		to_chat(owner, SPAN_NOTICE("Nanite MCU: Nanomaterial reprocessing complete - charge added. Current charges: [charges]."))
		next_regen_time = world.time + regen_delay
	..()

/obj/item/organ/internal/augment/active/nanounit/onInstall()
	aura = new /obj/aura/nanoaura(owner, src)

/obj/item/organ/internal/augment/active/nanounit/onRemove()
	QDEL_NULL(aura)
	..()

/obj/item/organ/internal/augment/active/nanounit/proc/catastrophic_failure()
	playsound(owner,'sound/mecha/internaldmgalarm.ogg',25,1)
	owner.visible_message(SPAN_WARNING("The nanites attempt to harden. But they seem... brittle."))
	for(var/obj/item/organ/external/E in owner.organs)
		if(prob(25))
			E.status |= ORGAN_BRITTLE //Some nanites are not responding and you're out of luck
			to_chat(owner,SPAN_DANGER("Your [E.name] feels cold and rigid"))
	QDEL_NULL(aura)

/obj/item/organ/internal/augment/active/nanounit/activate()
	if(!aura || !can_activate())
		return
	if(aura.active)
		aura.active = 0
		to_chat(owner,SPAN_NOTICE("Nanites entering sleep mode."))
	else
		aura.active = 1
		to_chat(owner,SPAN_NOTICE("Activation sequence in progress."))
	playsound(owner,'sound/weapons/flash.ogg',35,1)


/obj/item/organ/internal/augment/active/nanounit/Destroy()
	. = ..()
	QDEL_NULL(aura)

/obj/aura/nanoaura/Initialize(var/maploading, var/obj/item/organ/internal/augment/active/nanounit/holder)
	. = ..()
	unit = holder
	playsound(loc,'sound/weapons/flash.ogg',35,1)
	to_chat(loc,SPAN_NOTICE("Your skin tingles as the nanites spread over your body."))

/obj/aura/nanoaura/bullet_act(var/obj/item/projectile/P, var/def_zone)
	if(!active)
		return
	if(unit.charges > 0)
		user.visible_message(SPAN_WARNING("The nanomachines harden as a response to physical trauma!"))
		playsound(user,'sound/effects/basscannon.ogg',35,1)
		unit.charges -= 1
		if(prob(1))
			var/memesound = pick(unit.memesounds)
			playsound(user, memesound, 35, 1)
		if(unit.charges <= 0)
			to_chat(user, SPAN_DANGER("Warning: Critical damage treshold passed. Shut down unit to avoid further damage"))
		return AURA_FALSE|AURA_CANCEL
	else unit.catastrophic_failure()


/obj/aura/nanoaura/Destroy()
	to_chat(user, SPAN_WARNING("\The nanites dissolve!"))
	unit = null
	return ..()
