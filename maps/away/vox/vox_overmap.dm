//The actual overmap object
/obj/effect/overmap/visitable/ship/iuv_militiaman
	name = "IUV Militiaman"
	desc = "An anomalously FTL-capable vessel bearing unknown markings. Its designation \
	is marked as already having been destroyed. There are consistent life signs onboard. \
	Various armaments are present on the vessel."

	identification_difficulty = 150 //It's a hostile alien vessel
	contact_class = /decl/ship_contact_class/militiaman

	vessel_mass = 7500 //The Bearcat is 4000 for reference
	vessel_size = SHIP_SIZE_MEDIUM
	fore_dir = NORTH
	burn_delay = 2 SECONDS

	initial_generic_waypoints = list(
		"nav_vox_northwest",
		"nav_vox_south"
	)
	initial_restricted_waypoints = list(
		"IUV Diplomat" = list("nav_vox_dock")
	)

	hide_from_reports = TRUE

/decl/ship_contact_class/militiaman
	class_short = "TENNESSEE" //I'll haunt this code forever
	class_long = "Tennessee-Class Monitor"
	max_ship_mass = 7500

//The shuttle
/obj/effect/overmap/visitable/ship/landable/iuv_diplomat
	name = "IUV Diplomat"
	desc = "A small-sized medium-ranged shuttle bearing unknown markings. Its \
	designation is marked as already having been destroyed."

	identification_difficulty = 150
	contact_class = /decl/ship_contact_class/militiaman

	shuttle = "IUV Diplomat"
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL

/decl/ship_contact_class/diplomat
	class_short = "PACER"
	class_long = "Pacer-Class Shuttle"
	max_ship_mass = 7500

/datum/shuttle/autodock/overmap/iuv_diplomat
	name = "IUV Diplomat"
	move_time = 10
	shuttle_area = list(/area/voxship/shuttle)
	dock_target = "vox_shuttle"
	current_location = "nav_vox_dock"
	landmark_transition = "nav_vox_transit"
	range = 1
	fuel_consumption = 4
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	skill_needed = SKILL_NONE
	defer_initialisation = TRUE