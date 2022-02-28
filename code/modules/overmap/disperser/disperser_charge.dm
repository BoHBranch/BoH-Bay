/obj/structure/ship_munition/disperser_charge
	name = "unknown disperser charge"
	desc = "A charge to power the obstruction field disperser with. It looks impossibly round and shiny. This charge does not have a defined purpose."
	icon_state = "slug"
	atom_flags =  ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_CLIMBABLE
	var/chargetype
	var/chargedesc

/obj/structure/ship_munition/disperser_charge/proc/fire(turf/target, strength, range)
	CRASH("OFD charge firing logic not set!")

/obj/structure/ship_munition/disperser_charge/fire
	name = "FR1-ENFER charge"
	color = "#b95a00"
	desc = "A charge to power the obstruction field disperser with. It looks impossibly round and shiny. This charge is designed to release a localised fire on impact."
	chargetype = OVERMAP_WEAKNESS_FIRE
	chargedesc = "ENFER"

/obj/structure/ship_munition/disperser_charge/fire/fire(turf/target, strength, range)
	for(var/turf/T in range(range, target))
		var/obj/effect/fake_fire/bluespace/disperserf = new(T)
		disperserf.lifetime = strength * 20

/obj/effect/fake_fire/bluespace
	name = "bluespace fire"
	color = COLOR_BLUE
	pressure = 1500


/obj/structure/ship_munition/disperser_charge/emp
	name = "EM2-QUASAR charge"
	color = "#6a97b0"
	desc = "A charge to power the obstruction field disperser with. It looks impossibly round and shiny. This charge is designed to release a blast of electromagnetic pulse on impact."
	chargetype = OVERMAP_WEAKNESS_EMP
	chargedesc = "QUASAR"

/obj/structure/ship_munition/disperser_charge/emp/fire(turf/target, strength, range)
	empulse(target, strength * range / 3, strength * range)

/obj/structure/ship_munition/disperser_charge/mining
	name = "MN3-BERGBAU charge"
	color = "#cfcf55"
	desc = "A charge to power the obstruction field disperser with. It looks impossibly round and shiny. This charge is designed to mine ores on impact."
	chargetype = OVERMAP_WEAKNESS_MINING
	chargedesc = "BERGBAU"

/obj/structure/ship_munition/disperser_charge/mining/fire(turf/target, strength, range)
	var/list/victims = range(range * 3, target)
	for(var/turf/simulated/mineral/M in victims)
		if(prob(strength * 100 / 6)) //6 instead of 5 so there are always leftovers
			M.GetDrilled(TRUE) //no artifacts survive this
	for(var/mob/living/L in victims)
		to_chat(L, "<span class='alert'>You feel an incredible force ripping and tearing at you.</span>")
		L.ex_act(3) //no artif- I mean idiot/unfortunate bystanders survive this... much

/obj/structure/ship_munition/disperser_charge/explosive
	name = "XP4-INDARRA charge"
	color = "#aa5f61"
	desc = "A charge to power the obstruction field disperser with. It looks impossibly round and shiny. This charge is designed to explode on impact."
	chargetype = OVERMAP_WEAKNESS_EXPLOSIVE
	chargedesc = "INDARRA"

/obj/structure/ship_munition/disperser_charge/explosive/fire(turf/target, strength, range)
	explosion(target,max(1,strength * range / 10),strength * range / 7.5,strength * range / 5)

//boh
/obj/structure/ship_munition/disperser_charge/ascent
	name = "glowing charge"
	color = "#a33fbf"
	desc = "A glowing, heavy orb. What could the purpose of such a thing be?"
	chargetype = OVERMAP_WEAKNESS_FIRE | OVERMAP_WEAKNESS_EMP | OVERMAP_WEAKNESS_MINING | OVERMAP_WEAKNESS_EXPLOSIVE//doesn't need all of these, but whatever.
	chargedesc = "ASCENT"

/obj/structure/ship_munition/disperser_charge/ascent/fire(turf/target, strength, range)
	empulse(target, strength * range / 6, strength * range)//Enough to knock out an entire ship's power systems, or one deck of the Dagon.
	var/list/victims = range(range * 3, target)
	for(var/mob/living/L in victims)
		to_chat(L, "<span class='alert'>Something shakes the vessel violently!</span>")
		L.apply_damage(125, WEAKEN)//Ascent can board without much of a fight, assuming they're lucky and it hits the deck they're boarding on.

//ship-to-ship 'fack off' charge
/obj/structure/ship_munition/disperser_charge/s2s
	name = "RN8-KOSMAG slug"
	icon_state = "slug"
	desc = "A charge to power the obstruction field disperser with. It looks impossibly round and shiny. This charge is designed to punch through defences and explode moments after entering a vessel."
	chargetype = OVERMAP_WEAKNESS_EXPLOSIVE
	chargedesc = "KOSMAG"

/obj/structure/closet/odst
	name = "OFD droppod"
	desc = "A crude droppod allowing the OFD to safely fire itself, with a living creature at a target. Oxygen not included. Designed to fit a single rifleman, but may be used to drop two soldiers in a pinch."
	icon = 'icons/obj/closets/bases/odst.dmi'
	closet_appearance = null
	storage_capacity = (MOB_MEDIUM * 2)
	var/chargedesc = "ODST"

/obj/structure/ship_munition/disperser_charge/s2s/fire(turf/target, strength, range)
	explosion(target, strength * range / 1)
