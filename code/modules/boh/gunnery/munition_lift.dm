/obj/machinery/computer/shuttle_control/lift/ammo
	name = "munition lift controls"
	shuttle_tag = "Primary Munition Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/datum/shuttle/autodock/ferry/ammo_lift
	name = "Primary Munition Lift"
	shuttle_area = /area/turbolift/ammo_lift
	warmup_time = 3
	waypoint_station = "nav_ammo_lift_top"
	waypoint_offsite = "nav_ammo_lift_bottom"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0

/obj/effect/shuttle_landmark/lift/ammo_top
	name = "Top Deck"
	landmark_tag = "nav_ammo_lift_top"
	base_area = /area/command/gunnery/ammo
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/lift/ammo_bottom
	name = "Lower Deck"
	landmark_tag = "nav_ammo_lift_bottom"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/command/gunnery/ob/inside
	base_turf = /turf/simulated/floor/plating

//area
/area/turbolift/ammo_lift
	name = "\improper Munition Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/floor/plating