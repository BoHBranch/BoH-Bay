/datum/ghosttrap/blobmind
	object = "Blob Overmind"
	ghost_trap_message = "They are controlling a Blob Overmind now"
	ghost_trap_role = "Overmind"

/datum/ghosttrap/plant/welcome_candidate(var/mob/target)
	to_chat(target, "<span class='alium'><B>Your gestalt conciousness comes into existance in fits and starts. You hunger.</B></span>")
	to_chat(target, "<span class='alium'><B>You must grow and expand, but do so quietly. Right now you are weak, and the crew are strong.</B></span>")