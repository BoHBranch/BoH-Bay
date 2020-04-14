/obj/machinery/computer/shuttle_control/explore/New_Horizons
	name = "New Horizons control console"
	shuttle_tag = "New Horizons"

/obj/effect/overmap/visitable/ship/unishi
	name = "SRV Verne"
	desc = "Sensor array detects unknown class medium size vessel. The vessel appears unarmed.\
	A small amount of radiation has been detected at the aft of the ship"
	vessel_mass = 5000
	max_speed = 1/(3 SECONDS)
	initial_generic_waypoints = list(
		"nav_unishi_1",
		"nav_unishi_2",
		"nav_unishi_3",
	)
	initial_restricted_waypoints = list(
		"New Horizons" = list("nav_unishi_dock")
	)

/datum/shuttle/autodock/overmap/New_Horizons
	name = "New Horizons"
	move_time = 10
	shuttle_area = list(/area/ship/New_Horizons)
	dock_target = "New_Horizons"
	current_location = "nav_unishi_dock"
	landmark_transition = "nav_unishi_transit"
	range = 3
	fuel_consumption = 4
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/
	skill_needed = SKILL_NONE
	defer_initialisation = TRUE

/obj/effect/overmap/visitable/ship/landable/New_Horizons
	name = "New Horizons"
	shuttle = "New Horizons"
	initial_generic_waypoints = list(
		"nav_unishi_1",
		"nav_unishi_2",
		"nav_unishi_3",
	)
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/shuttle_landmark/nav_unishi/New_Horizons
	name = "unishi shuttle Dock"
	landmark_tag = "nav_unishi_dock"
	base_area = /area/space
	base_turf = /turf/simulated/floor/tiled/techfloor

/obj/effect/shuttle_landmark/transit/nav_unishi/New_Horizons
	name = "In transit"
	landmark_tag = "nav_unishi_transit"

/obj/effect/shuttle_landmark/nav_unishi/nav1
	name = "CTI Research Vessel Deck 1 Port"
	landmark_tag = "nav_unishi_1"

/obj/effect/shuttle_landmark/nav_unishi/nav2
	name = "CTI Research Vessel Deck 2 Starboard"
	landmark_tag = "nav_unishi_2"

/obj/effect/shuttle_landmark/nav_unishi/nav3
	name = "CTI Research Vessel Deck 3 Aft"
	landmark_tag = "nav_unishi_3"
