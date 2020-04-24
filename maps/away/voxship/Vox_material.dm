/////////
// Material Defines
/////////

#define GLASS_COLOR_ALIEN    "#3a5a9a"
#define MATERIAL_GLASS_ALIEN "alien glass"

/////////
// Alien Burnchamber Material - This will never be used by players, aside from off-site spawns.
/////////

/material/glass/alien
	name = MATERIAL_GLASS_ALIEN
	display_name = "durable glass composite"
	wall_name = "bulkhead"
	flags = MATERIAL_UNMELTABLE
	stack_type = null
	icon_colour = GLASS_COLOR_PHORON
	integrity = 6800
	melting_point = 16000
	explosion_resistance = 1200
	hardness = 500
	weight = 500
	construction_difficulty = MATERIAL_HARD_DIY
	hidden_from_codex = TRUE
	value = 100

/////////
// Structure Types
/////////

/obj/structure/window/alien
	name = "alien window"
	color = GLASS_COLOR_ALIEN
	init_material = MATERIAL_GLASS_ALIEN

/obj/structure/window/alien/full
	dir = 5
	icon_state = "window_full"
