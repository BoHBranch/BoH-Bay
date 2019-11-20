//This override will implement Eris' drop animations.

/mob/drop_from_inventory(var/obj/item/W, var/atom/target = null, drop_flag = null)
	if(W)
		if(!target)
			target = loc

		remove_from_mob(W)
		if(!(W && W.loc))
			return TRUE // self destroying objects (tk, grabs)

		if(W.loc != target)
			W.do_putdown_animation(target, src)
			W.forceMove(target, drop_flag)
		update_icons()
		return TRUE
	return FALSE