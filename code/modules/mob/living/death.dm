/mob/living/death()
	if(hiding)
		hiding = FALSE
	if(suiciding)
		suiciding = FALSE
	. = ..()
