
/datum/extension/interactive/ntos/proc/update_host_icon()
	var/atom/A = holder
	if(istype(A))
		A.update_icon()

/datum/extension/interactive/ntos/proc/get_screen_overlay(var/check)
	if(!on)
		return layered_overlay(check, screen_icon_file, screensaver_icon)
	if(!screen_icon_file)
		var/atom/A = holder
		if(istype(A))
			screen_icon_file = A.icon
	if(active_program)
		return layered_overlay(check, screen_icon_file, active_program.program_icon_state)
	else
		return layered_overlay(check, screen_icon_file, menu_icon)

/datum/extension/interactive/ntos/proc/layered_overlay(var/I, var/icon_, var/state)
	if(I)
		return overlay_image(icon_, state, plane = EFFECTS_ABOVE_LIGHTING_PLANE, layer = ABOVE_LIGHTING_LAYER)
	else
		return overlay_image(icon_, state)

/datum/extension/interactive/ntos/proc/get_keyboard_overlay()
	if(!on)
		return
	if(!screen_icon_file)
		var/atom/A = holder
		if(istype(A))
			screen_icon_file = A.icon
	if(active_program && active_program.program_key_state)
		return image(screen_icon_file, active_program.program_key_state)

/datum/extension/interactive/ntos/proc/visible_error(message)
	var/atom/A = holder
	if(istype(A))
		A.visible_message("<span class='warning'>\The [A]'s screen displays an error: \"[message]\"</span>", range = 1)

/datum/extension/interactive/ntos/proc/visible_notification(message)
	var/atom/A = holder
	if(istype(A))
		A.visible_message("<span class='notice'>\The [A] screen displays a notification: \"[message]\"</span>", range = 1)

/datum/extension/interactive/ntos/proc/show_error(user, message)
	to_chat(user, "<span class='warning'>[message]</span>")
