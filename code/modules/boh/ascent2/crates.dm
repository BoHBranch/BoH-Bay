/////////
// 'bio' cart
/////////
/obj/structure/closet/crate/secure/biohazard/ascent
	req_access = list(access_ascent)
	color = "#a33fbf"

/obj/structure/closet/crate/secure/biohazard/ascent/blanks/WillContain()
	return list(/obj/structure/closet/body_bag/cryobag/blank)

/obj/structure/closet/crate/secure/biohazard/ascent/blanks/can_close()
	for(var/obj/structure/closet/closet in get_turf(src))
		if(closet != src && !(istype(closet, /obj/structure/closet/body_bag/cryobag)))
			return 0
	return 1