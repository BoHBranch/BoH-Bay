/obj/machinery/computer/shuttle_control/explore/skrellscoutship
	name = "SSV control console"
	req_access = list(access_skrellscoutship)
	shuttle_tag = "Skrellian Scout"

/obj/machinery/computer/shuttle_control/explore/skrellscoutshuttle
	name = "SSV Shuttle control console"
	req_access = list(access_skrellscoutship)
	shuttle_tag = "Skrellian Shuttle"

/obj/effect/overmap/visitable/ship/landable/skrellscoutship
	name = "light skrellian vessel"
	shuttle = "Skrellian Scout"
	desc = "A small vessel of skrellian design. Sensors detect residual bluespace signatures and cloaking particulates on the vessel's surface."
	multiz = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	color = "#ff00ff"
	vessel_mass = 5000
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Skrellian Shuttle" = list("nav_skrellscoutsh_dock")
	)


/obj/effect/overmap/visitable/ship/landable/skrellscoutship/New()
	name = "SSV [pick("Xilvuxix", "Zuuvixix", "Quizuu", "Vulzxixvuu","Krixxmuzoox","Qerr-Gliqrixx", "Qarr-Kon")]"
	..()

/datum/shuttle/autodock/overmap/skrellscoutship
	name = "Skrellian Scout"
	warmup_time = 5
	range = 1
	current_location = "nav_skrellscout_start"
	shuttle_area = list(
		/area/ship/skrellscoutship/command/bridge, /area/ship/skrellscoutship/command/vuxix, /area/ship/skrellscoutship/command/brig, /area/ship/skrellscoutship/wings/port, /area/ship/skrellscoutship/wings/starboard,
		/area/ship/skrellscoutship/crew/fit, /area/ship/skrellscoutship/forestorage,
		/area/ship/skrellscoutship/corridor, /area/ship/skrellscoutship/hangar,
		/area/ship/skrellscoutship/crew/dormitories, /area/ship/skrellscoutship/crew/toilets, /area/ship/skrellscoutship/crew/medbay, /area/ship/skrellscoutship/crew/kitchen,
		/area/ship/skrellscoutship/maintenance/power, /area/ship/skrellscoutship/command/armory,
		/area/ship/skrellscoutship/dock, /area/ship/skrellscoutship/maintenance/atmos,
		/area/ship/skrellscoutship/crew/rec
		)
	defer_initialisation = TRUE
	knockdown = FALSE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skrell

/obj/effect/shuttle_landmark/skrellscoutship/start
	name = "Uncharted Space"
	landmark_tag = "nav_skrellscout_start"

/obj/effect/shuttle_landmark/skrellscoutship/dock
	name = "Fourth Deck Starboard Docking Port"
	landmark_tag = "nav_skrellscout_dock"

/obj/effect/shuttle_landmark/skrellscoutship/altdock
	name = "Fourth Deck Port Docking Port"
	landmark_tag = "nav_skrellscoutsh_altdock"

/turf/simulated/floor/shuttle_ceiling/skrell
	color = COLOR_HULL

/turf/simulated/floor/shuttle_ceiling/skrell/air
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD, GAS_NITROGEN = MOLES_N2STANDARD)
