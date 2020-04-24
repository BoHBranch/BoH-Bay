/obj/machinery/computer/shuttle_control/explore/bearcat_shuttle
	name = "Cargo shuttle control console"
	shuttle_tag = "Cargo shuttle"

/obj/machinery/computer/ship/helm/bearcat_shuttle
	name = "Cargo shuttle helm console"

/obj/machinery/computer/ship/engines/bearcat_shuttle
	name = "Cargo shuttle engine console"

/datum/shuttle/autodock/overmap/bearcat_shuttle
	name = "Cargo shuttle"
	move_time = 10
	shuttle_area = list(/area/ship/scrap/bearcat_shuttle)
	dock_target = "bearcat_shuttle"
	current_location = "nav_bearcat_dock"
	landmark_transition = "nav_bearcat_transit"
	range = 1
	fuel_consumption = 4
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/
	skill_needed = SKILL_NONE
	defer_initialisation = TRUE

/obj/effect/overmap/visitable/ship/landable/bearcat_shuttle
	name = "Cargo shuttle"
	shuttle = "Cargo shuttle"
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/shuttle_landmark/bearcat/bearcat_shuttle
	name = "Cargo Ship Dock"
	landmark_tag = "nav_bearcat_dock"
	base_area = /area/space
	base_turf = /turf/simulated/floor/shuttle/black

/obj/effect/shuttle_landmark/transit/bearcat/bearcat_shuttle
	name = "In transit"
	landmark_tag = "nav_bearcat_transit"

/obj/effect/shuttle_landmark/bearcat/Nav_fore
	name = "Bearcat Fore"
	landmark_tag = "nav_bearcat_fore"

/obj/effect/shuttle_landmark/bearcat/Nav_aft
	name = "Bearcat Aft"
	landmark_tag = "nav_bearcat_aft"
