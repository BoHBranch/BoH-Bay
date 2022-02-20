/////////
// Alternative to SM Grenade
// Does not explosive damage. Kills via radiation exclusively.
/////////
/obj/item/weapon/grenade/neutron
	name = "neutron grenade"
	icon_state = "lyemp"
	item_state = "flashbang"
	origin_tech = list(TECH_BLUESPACE = 5, TECH_MAGNET = 4, TECH_ENGINEERING = 5)
	arm_sound = 'sound/effects/scanbeep.ogg'
	var/explode_at
	var/radiation = 64//with how this is set up, and how rads caps-out anyway, 500 is what it'll jump to with how I have this.

/obj/item/weapon/grenade/neutron/Destroy()
	if(explode_at)
		STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/weapon/grenade/neutron/detonate()
	..()
	START_PROCESSING(SSobj, src)
	explode_at = world.time + 1 SECONDS
	update_icon()
	playsound(src, 'sound/weapons/wave.ogg', 100)

/obj/item/weapon/grenade/neutron/on_update_icon()
	overlays.Cut()
	if(explode_at)
		overlays += image(icon = 'icons/obj/machines/power/fusion.dmi', icon_state = "emfield_s1")

/obj/item/weapon/grenade/neutron/Process()
	var/turf/T = get_turf(src)
	playsound(T, 'sound/effects/phasein.ogg', 100, 1)
	for(var/mob/living/carbon/human/M in viewers(T, null))//Everyone who can see it. Only way to balance this. Had it 12 tile range prior, which as you can imagine, wasn't too fun.
		if(M.eyecheck() < FLASH_PROTECTION_MODERATE)
			M.flash_eyes()//double flash?
		M.apply_damage((radiation*24),IRRADIATE, damage_flags = DAM_DISPERSED)
		M.updatehealth()
	if(world.time > explode_at)
		playsound(src, 'sound/effects/EMPulse.ogg', 100)
		qdel(src)
