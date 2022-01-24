/datum/grab/armalis/aggressive
	state_name = ARMALIS_AGGRESSIVE

	upgrab_name = ARMALIS_KILL
	downgrab_name = ARMALIS_PASSIVE

	shift = -10

	icon_state = "kill"

	breakability = 0

	break_chance_table = list(3, 18, 45, 100)

/datum/grab/armalis/aggressive/upgrade_effect(var/obj/item/grab/G)
	process_effect(G)

/datum/grab/armalis/aggressive/process_effect(var/obj/item/grab/G)
	var/mob/living/carbon/human/affecting = G.affecting

	affecting.Stun(15)