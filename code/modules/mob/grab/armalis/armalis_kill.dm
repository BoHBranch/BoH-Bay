/datum/grab/armalis/kill
	state_name = ARMALIS_KILL

	downgrab_name = ARMALIS_AGGRESSIVE

	shift = -10

	icon_state = "kill1"

	downgrade_on_action = 1
	downgrade_on_move = 1

	breakability = 0

	break_chance_table = list(3, 10, 20, 100)

/datum/grab/armalis/kill/upgrade_effect(var/obj/item/grab/G)
	process_effect(G)

/datum/grab/armalis/kill/process_effect(var/obj/item/grab/G)
	var/mob/living/carbon/human/assailant = G.assailant
	var/mob/living/carbon/human/affecting = G.affecting

	affecting.Stun(3)

	switch(assailant.a_intent)
		if(I_GRAB)
			on_hit_grab(G)
		if(I_HURT)
			on_hit_harm(G)