//This override will implement Eris' drop animations.

/mob/drop_from_inventory(obj/item/W, atom/target = null, drop_flag = null)
	if(W)
		if(!target)
			target = loc

		remove_from_mob(W)
		if(!(W && W.loc))
			return TRUE // self destroying objects (tk, grabs)

		if(W.loc != target)
			addtimer(new Callback(W, /atom/movable/.proc/do_putdown_animation, target, src), 0)
			W.forceMove(target, drop_flag)
		update_icons()
		return TRUE
	return FALSE
