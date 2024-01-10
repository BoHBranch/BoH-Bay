/mob/living/Move()
	. = ..()

	if(is_shifted && !buckled)
		is_shifted = FALSE
		pixel_x = default_pixel_x
		pixel_y = default_pixel_y
	else
		return