//This file works alongside our non-modular changes in mecha.dm to allow the toggling of strafing.

/obj/mecha/AltClick(mob/living/user)
	if(user == occupant)
		toggle_strafe()

/obj/mecha/proc/toggle_strafe()
	strafe = !strafe

	occupant_message("Toggled strafing mode [strafe?"on":"off"].")
	log_message("Toggled strafing mode [strafe?"on":"off"].")