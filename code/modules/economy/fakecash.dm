/obj/item/weapon/spacecash_fake
	name = "1000 Thaler"
	icon = 'icons/obj/items.dmi'
	icon_state = "spacecash1000"
	desc = null
	gender = PLURAL
	opacity = 0
	density = 0
	anchored = 0.0
	force = 1.0
	throwforce = 1.0
	throw_speed = 1
	throw_range = 2
	w_class = ITEM_SIZE_TINY

/obj/item/weapon/spacecash_fake/examine(var/mob/user)
	. = ..(user)
	to_chat((user.skill_check(SKILL_BUREAUCRACY, SKILL_EXPERT) ? "Something is very off with this stack of thalers... WAIT A SECOND, all the serial numbers are identical!" : "It's worth 1000 Thalers."))
