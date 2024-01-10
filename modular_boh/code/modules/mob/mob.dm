/mob/proc/can_shift()
	return !(incapacitated() || buckled || grabbed_by.len)

/mob/verb/shiftnorth()
	set hidden = TRUE
	if(!canface() || !can_shift())
		return FALSE
	if(pixel_y <= 16)
		pixel_y++
		is_shifted = TRUE

/mob/verb/shiftsouth()
	set hidden = TRUE
	if(!canface() || !can_shift())
		return FALSE
	if(pixel_y >= -8)
		pixel_y--
		is_shifted = TRUE

/mob/verb/shiftwest()
	set hidden = TRUE
	if(!canface() || !can_shift())
		return FALSE
	if(pixel_x >= -8)
		pixel_x--
		is_shifted = TRUE

/mob/verb/shifteast()
	set hidden = TRUE
	if(!canface() || !can_shift())
		return FALSE
	if(pixel_x <= 8)
		pixel_x++
		is_shifted = TRUE