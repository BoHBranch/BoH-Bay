/mob/living/silicon/pai/examine(mob/user, distance)
	. = ..(user, distance, infix = ", personal AI")

	var/msg = ""
	switch(src.stat)
		if(CONSCIOUS)
			if(!src.client)	msg += "\nIt appears to be in stand-by mode." //afk
		if(UNCONSCIOUS)		msg += "\n<span class='warning'>It doesn't seem to be responding.</span>"
		if(DEAD)			msg += "\n<span class='deadsay'>It looks completely unsalvageable.</span>"
	msg += "\n*---------*"

	var/flavor = print_flavor_text()
	if(flavor) msg += "[flavor]<br>"

	if (pose)
		if( findtext(pose,".",length(pose)) == 0 && findtext(pose,"!",length(pose)) == 0 && findtext(pose,"?",length(pose)) == 0 )
			pose = addtext(pose,".") //Makes sure all emotes end with a period.
		msg += "\nIt is [pose]"

	to_chat(user, msg)
