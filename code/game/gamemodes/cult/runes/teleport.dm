//Teleportation ritual. Take damage if you stick around for too long. Can be used while invisible, which is weird but tolerable.
/obj/effect/rune/teleport
	cultname = "teleport"
	incantation = "Sas'so c'arta forbici!"
	var/destination

/obj/effect/rune/teleport/New()
	..()
	var/area/A = get_area(src)
	destination = A.name
	GLOB.cult.teleport_runes += src

/obj/effect/rune/teleport/Destroy()
	GLOB.cult.teleport_runes -= src
	var/turf/T = get_turf(src)
	for(var/atom/movable/A in contents)
		A.forceMove(T)
	return ..()

/obj/effect/rune/teleport/examine(mob/user)
	. = ..()
	if(iscultist(user))
		to_chat(user, "Its name is [destination].")

/obj/effect/rune/teleport/cast(var/mob/living/user)
	..()
	if(user.loc == src)
		showOptions(user)
	else if(user.loc == get_turf(src))
		if(do_after(user, 30))
			user.visible_message("<span class='warning'>\The [user] disappears in a flash of red light!</span>", "<span class='warning'>You feel as your body gets dragged into the dimension of Nar-Sie!</span>", "You hear a sickening crunch.")
			user.forceMove(src)
			showOptions(user)
			var/warning = 0
			while(user.loc == src)
				user.take_organ_damage(0, 5)
				if(user.getFireLoss() > 50)
					to_chat(user, "<span class='danger'>Your body can't handle the heat anymore!</span>")
					leaveRune(user)
					return
				if(warning == 0)
					to_chat(user, "<span class='warning'>You feel the immerse heat of the realm of Nar-Sie...</span>")
					++warning
				if(warning == 1 && user.getFireLoss() > 15)
					to_chat(user, "<span class='warning'>Your burns are getting worse. You should return to your realm soon...</span>")
					++warning
				if(warning == 2 && user.getFireLoss() > 35)
					to_chat(user, "<span class='warning'>The heat! It burns!</span>")
					++warning
				sleep(10)
	else
		var/input = input(user, "Choose a new rune name.", "Destination", "") as text|null
		if(!input)
			return
		destination = sanitize(input)

/obj/effect/rune/teleport/Topic(href, href_list)
	if(usr.loc != src)
		return
	if(href_list["target"])
		var/obj/effect/rune/teleport/targ = locate(href_list["target"])
		if(istype(targ)) // Checks for null, too
			usr.forceMove(targ)
			targ.showOptions(usr)
	else if(href_list["leave"])
		leaveRune(usr)

/obj/effect/rune/teleport/proc/showOptions(var/mob/living/user)
	var/list/t = list()
	for(var/obj/effect/rune/teleport/T in GLOB.cult.teleport_runes)
		if(T == src)
			continue
		t += "<a href='?src=\ref[src];target=\ref[T]'>[T.destination]</a>"
	to_chat(user, "Teleport runes: [english_list(t, nothing_text = "no other runes exist")]... or <a href='?src=\ref[src];leave=1'>return from this rune</a>.")

/obj/effect/rune/teleport/proc/leaveRune(var/mob/living/user)
	if(user.loc != src)
		return
	user.dropInto(loc)
	user.visible_message("<span class='warning'>\The [user] appears in a flash of red light!</span>", "<span class='warning'>You feel as your body gets thrown out of the dimension of Nar-Sie!</span>", "You hear a pop.")
