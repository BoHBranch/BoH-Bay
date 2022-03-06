/decl/crafting_stage/material/stunprod_rod
	begins_with_object_type = /obj/item/weapon/handcuffs/cable
	item_icon_state = "wiredrod"
	progress_message = "You wind the cable cuffs around the top of the steel rod."
	completion_trigger_type = /obj/item/stack/material/rods
	stack_consume_amount = 1
	next_stages = list(
		/decl/crafting_stage/spear_blade_shard,
		/decl/crafting_stage/spear_blade_blade,
		/decl/crafting_stage/stunprod_wirecutters
	)

/decl/crafting_stage/spear_blade_shard
	completion_trigger_type = /obj/item/weapon/material/shard
	progress_message = "You fasten the shard to the top of the rod with the cable."
	product = /obj/item/weapon/material/twohanded/spear

/decl/crafting_stage/spear_blade_shard/get_product(var/obj/item/work)
	var/obj/item/weapon/material/shard/blade = locate() in work
	. = ispath(product, /obj/item/weapon/material) && new product(get_turf(work), blade && blade.material && blade.material.name)

/decl/crafting_stage/spear_blade_blade
	completion_trigger_type = /obj/item/weapon/material/butterflyblade
	progress_message = "You fasten the blade to the top of the rod with the cable."
	product = /obj/item/weapon/material/twohanded/spear

/decl/crafting_stage/spear_blade_blade/get_product(var/obj/item/work)
	var/obj/item/weapon/material/butterflyblade/blade = locate() in work
	. = ispath(product, /obj/item/weapon/material) && new product(get_turf(work), blade && blade.material && blade.material.name)

/decl/crafting_stage/stunprod_wirecutters
	completion_trigger_type = /obj/item/weapon/wirecutters
	progress_message = "You fasten the wirecutters to the top of the rod with the cable, prongs outward."
	product = /obj/item/weapon/melee/baton/cattleprod

//Begin some new melee weapons
//Pipeaxe                            //Doesn't work lol, fix later if ever.
/*/decl/crafting_stage/tape/pipeaxe_base
	begins_with_object_type = /obj/item/pipe
	item_icon_state = "scissorpipe_unfinished"
	progress_message = "You tape and secure the pipe ends."
	next_stages = list(
		/decl/crafting_stage/pipeaxe)

/decl/crafting_stage/pipeaxe
	completion_trigger_type = /obj/item/weapon/wirecutters
	progress_message = "You split the wirecutters in twain and attach the blades to the top of the pipe, creating a strange mockery of an axe."
	product = /obj/item/weapon/material/twohanded/fireaxe/improvised*/

//Wrenchsword
/decl/crafting_stage/wrenchswordbegin
	begins_with_object_type = /obj/item/weapon/material/hatchet/machete
	completion_trigger_type = /obj/item/weapon/material/hatchet/machete
	item_icon_state = "wrenchsword_unfinished"
	progress_message = "You align the two machete blades together."
	next_stages = list(
		/decl/crafting_stage/welding/wrenchswordweld)

/decl/crafting_stage/welding/wrenchswordweld
	progress_message = "You weld the blades together into a single, larger blade."
	item_icon_state = "wrenchsword_unfinished"
	next_stages = list(
		/decl/crafting_stage/wrenchswordfinish)

decl/crafting_stage/wrenchswordfinish
	completion_trigger_type = /obj/item/weapon/wrench
	progress_message = "You attach the wrench into the hilt, securing it."
	product = /obj/item/weapon/material/sword/improvised

//This also doesn't work and I just can't be fucked anymore, man. I'll fix it later. Tired of this. Just sword for now ig.
/*/decl/crafting_stage/material/spikedcrowbar
	stack_consume_amount = 5
	progress_message = "You manage to break the crowbar in two, and add spikes to its exterior."
	product = /obj/item/weapon/material/knife/combat/improvised
	stack_material = MATERIAL_STEEL*/ 

