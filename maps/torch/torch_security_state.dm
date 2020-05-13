#ifndef PSI_IMPLANT_AUTOMATIC
#define PSI_IMPLANT_AUTOMATIC "Security Level Derived"
#endif
#ifndef PSI_IMPLANT_SHOCK
#define PSI_IMPLANT_SHOCK     "Issue Neural Shock"
#endif
#ifndef PSI_IMPLANT_WARN
#define PSI_IMPLANT_WARN      "Issue Reprimand"
#endif
#ifndef PSI_IMPLANT_LOG
#define PSI_IMPLANT_LOG       "Log Incident"
#endif
#ifndef PSI_IMPLANT_DISABLED
#define PSI_IMPLANT_DISABLED  "Disabled"
#endif

/datum/map/torch // setting the map to use this list
	security_state = /decl/security_state/default/torchdept

//Torch map alert levels. Refer to security_state.dm.
/decl/security_state/default/torchdept
	all_security_levels = list(/decl/security_level/default/torchdept/code_green, /decl/security_level/default/torchdept/code_violet, /decl/security_level/default/torchdept/code_orange, /decl/security_level/default/torchdept/code_blue, /decl/security_level/default/torchdept/code_red, /decl/security_level/default/torchdept/code_delta)

/decl/security_level/default/torchdept
	icon = 'maps/torch/icons/security_state.dmi'

/decl/security_level/default/torchdept/code_green
	name = "Codigo verde"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.25
	light_inner_range = 0.1
	light_outer_range = 1
	light_color_alarm = COLOR_GREEN
	light_color_status_display = COLOR_GREEN

	overlay_alarm = "alarm_green"
	overlay_status_display = "status_display_green"
	security_level_lightmode = "reset"

	var/static/datum/announcement/priority/security/security_announcement_green = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/notice2.ogg'))

/decl/security_level/default/torchdept/code_green/switching_down_to()
	security_announcement_green.Announce("La situacion a sido resuelta, y toda la tripulacion debe volver a sus deberes regulares.", "Atencion! El nivel de alerta a sido bajado a verde.")
	notify_station()

/decl/security_level/default/torchdept/code_violet
	name = "Codigo violeta"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_VIOLET
	light_color_status_display = COLOR_VIOLET

	psionic_control_level = PSI_IMPLANT_LOG

	overlay_alarm = "alarm_violet"
	overlay_status_display = "status_display_violet"
	security_level_lightmode = "violet"

	up_description = "Una emergencia medica mayor se ha desarrollado. Personal medico se debe reportar con su supervisor para recibir ordenes, personal no medico son requeridos de obedecer toda instruccion relevante de los empleados de medicina."
	down_description = "Procedimientos de codigo violeta estan en efecto; Personal medico se debe reportar con su supervisor para ordenes, personal no medico son requeridos de obedecer instrucciones relevantes de los empleados de medicina."

/decl/security_level/default/torchdept/code_orange
	name = "Codigo naranja"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_ORANGE
	light_color_status_display = COLOR_ORANGE
	overlay_alarm = "alarm_orange"
	overlay_status_display = "status_display_orange"
	security_level_lightmode = "orange"

	psionic_control_level = PSI_IMPLANT_LOG

	up_description = "Una emergencia de ingenieria mayor se ha desarrollado. Personal de ingenieria se debe reportar con su supervisor para recibir ordenes, y todo personal no ingeniero es requerido que evacue a cualquier area no afectada ademas de obedecer instrucciones relevantes de los empleados de ingenieria."
	down_description = "Codigo naranja esta en efecto; Personal de ingenieria se debe reportar con su supervisor para recibir ordenes, y todo personal no ingeniero es requerido que evacue a cualquier area no afectada ademas de obedecer instrucciones relevantes de los empleados de ingenieria."


/decl/security_level/default/torchdept/code_blue
	name = "Codigo azul"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_BLUE
	light_color_status_display = COLOR_BLUE
	overlay_alarm = "alarm_blue"
	overlay_status_display = "status_display_blue"
	security_level_lightmode = "blue"

	psionic_control_level = PSI_IMPLANT_LOG

	up_description = "Una emergecia de seguridad mayor se a desarrollado. Personal de seguridad se deben reportar con su supervisor para recibir ordenes, tienen permiso de revisar empleados y las instalaciones, ademas de tener el arma visible en su persona."
	down_description = "Procedimientos de codigo azul estan en efecto. Personal de seguridad se deben reportar con su supervisor para recibir ordenes, tienen permiso de revisar empleados y las instalaciones, ademas de tener el arma visible en su persona."

/decl/security_level/default/torchdept/code_red
	name = "Codigo rojo"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.75
	light_inner_range = 1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_RED
	overlay_alarm = "alarm_red"
	overlay_status_display = "status_display_red"
	security_level_lightmode = "red"

	up_description = "Una emergencia severa a ocurrido. Todos los empleados se deben reportar con sus supervisores para recibir ordenes. Toda la tripulacion debe obedecer ordenes relevantes del personal de emergencia. El personal de seguridad tiene permitido revisar a los empleados y las instalaciones, ademas de tener sus armas desenfundadas en cualquier momento. Las habitaciones seguras han sido desbloqueadas."
	psionic_control_level = PSI_IMPLANT_DISABLED

	var/static/datum/announcement/priority/security/security_announcement_red = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/redalert1.ogg'))

/decl/security_level/default/torchdept/code_red/switching_up_to()
	security_announcement_red.Announce(up_description, "Atencion! Procedimientos de codigo rojo estan ahora en efecto!")
	notify_station()
	GLOB.using_map.unbolt_saferooms()

/decl/security_level/default/torchdept/code_red/switching_down_to()
	security_announcement_red.Announce("Codigo delta a sido retirado. Todos los empleados deben reportarse con sus supervisores para recibir ordenes. Toda la tripulacion debe obedecer ordenes relevantes del personal de emergencia. El personal de seguridad tiene permitido revisar a los empleados y las instalaciones, ademas de tener sus armas desenfundadas en cualquier momento.", "Atencion! Procedimientos de codigo rojo estan ahora en efecto!")
	notify_station()

/decl/security_level/default/torchdept/code_delta
	name = "Codigo delta"

	light_max_bright = 0.75
	light_inner_range = 0.1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_NAVY_BLUE

	overlay_alarm = "alarm_delta"
	overlay_status_display = "status_display_delta"
	security_level_lightmode = "delta"

	var/static/datum/announcement/priority/security/security_announcement_delta = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/effects/siren.ogg'))

/decl/security_level/default/torchdept/code_delta/switching_up_to()
	security_announcement_delta.Announce("Procedimientos de codigo delta ahora estan activos. Toda la tripulacion debe ser instruida en obedecer todas las instrucciones de los jefes de personal. Cualquier violacion de estas ordenes puede ser castigada con muerte. Esto no es un simulacro.", "Atencion! Nivel de seguridad delta alcanzado!")
	notify_station()

#undef PSI_IMPLANT_AUTOMATIC
#undef PSI_IMPLANT_SHOCK
#undef PSI_IMPLANT_WARN
#undef PSI_IMPLANT_LOG
#undef PSI_IMPLANT_DISABLED
