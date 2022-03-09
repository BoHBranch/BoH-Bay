/obj/machinery/sleeper/vox
	name = "vox sleeper"
	desc = "Some kind of strange alien sleeper technology."
	icon = 'icons/obj/vox_medical.dmi'
	base_type = /obj/machinery/sleeper
	construct_state = /decl/machine_construction/default/no_deconstruct
	available_chemicals = list("Inaprovaline" = /datum/reagent/inaprovaline, "Soporific" = /datum/reagent/soporific, "Paracetamol" = /datum/reagent/paracetamol, "Dylovene" = /datum/reagent/dylovene, "Ammonia" = /datum/reagent/ammonia, "Adrenaline" = /datum/reagent/adrenaline, "Iron" = /datum/reagent/iron)
	base_chemicals = list("Inaprovaline" = /datum/reagent/inaprovaline, "Soporific" = /datum/reagent/soporific, "Paracetamol" = /datum/reagent/paracetamol, "Dylovene" = /datum/reagent/dylovene, "Ammonia" = /datum/reagent/ammonia, "Adrenaline" = /datum/reagent/adrenaline, "Iron" = /datum/reagent/iron)

/obj/machinery/sleeper/ascent/Initialize(mapload, d, populate_parts)
	. = ..()