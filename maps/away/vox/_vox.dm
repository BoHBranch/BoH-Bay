#include "vox_areas.dm"
#include "vox_overmap.dm"

//The vox ship, or IUV Militiaman
/datum/map_template/ruin/away_site/vox
	name = "Vox overmap vessel"
	id = "awaysite_vox"
	description = "A vessel controlled by Vox."
	suffixes = list("voxship/voxship-1.dmm","voxship/voxship-2.dmm")
	cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/iuv_diplomat)
	area_usage_test_exempted_root_areas = list(/area/vox)
	area_coherency_test_subarea_count = list(
		/area/voxship/armory = 16
	)