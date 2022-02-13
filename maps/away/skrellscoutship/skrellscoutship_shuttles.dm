/obj/machinery/computer/shuttle_control/explore/skrellscoutship
	name = "SSV control console"
	req_access = list(access_skrellscoutship)
	shuttle_tag = "Skrellian Scout"

/obj/effect/overmap/visitable/ship/landable/skrellscoutship
	name = "skrellian vessel"
	shuttle = "Skrellian Scout"
	desc = "A small vessel of skrellian design. Sensors detect residual bluespace signatures."
	multiz = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	color = "#ff00ff"
	vessel_mass = 5000
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/skrellscoutship/New()
	name = "SSV [pick("Xilvuxix", "Zuuvixix", "Quizuu", "Vulzxixvuu","Krixxmuzoox","Qerr-Gliqrixx", "Qarr-Kon")]"
	..()

/datum/shuttle/autodock/overmap/skrellscoutship
	name = "Skrellian Scout"
	warmup_time = 5
	range = 1
	current_location = "nav_skrellscout_start"
	shuttle_area = list(
		/area/ship/skrellscoutship/crew/hallway/d1, /area/ship/skrellscoutship/crew/hallway/d2,
		/area/ship/skrellscoutship/crew/rec, /area/ship/skrellscoutship/crew/fit,
		/area/ship/skrellscoutship/crew/toilets, /area/ship/skrellscoutship/dock/alt,
		/area/ship/skrellscoutship/maintenance/power, /area/ship/skrellscoutship/command/bridge,
		/area/ship/skrellscoutship/command/armory, /area/ship/skrellscoutship/command/brig,
		/area/ship/skrellscoutship/crew/dormitories, /area/ship/skrellscoutship/crew/medbay,
		/area/ship/skrellscoutship/dock, /area/ship/skrellscoutship/maintenance/atmos
		)
	defer_initialisation = TRUE
	knockdown = FALSE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skrell
	dock_target = "xil_dock"

/obj/effect/shuttle_landmark/skrellscoutship/start
	name = "Observatory Dock"
	landmark_tag = "nav_skrellscout_start"
	docking_controller = "observatory_dock"
	base_area = /area/ship/skrellskoutship/observatory
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/skrellscoutship/dock
	name = "SSV Secondary Docking Port"
	landmark_tag = "nav_skrellscout_dock"

/obj/effect/shuttle_landmark/skrellscoutship/altdock
	name = "SSV Docking Port"
	landmark_tag = "nav_skrellscoutsh_altdock"

/turf/simulated/floor/shuttle_ceiling/skrell
	color = COLOR_HULL

/turf/simulated/floor/shuttle_ceiling/skrell/air
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD, GAS_NITROGEN = MOLES_N2STANDARD)
