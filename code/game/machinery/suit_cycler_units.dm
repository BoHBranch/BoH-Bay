/obj/machinery/suit_cycler/engineering
	name = "Engineering suit cycler"
	model_text = "Engineering"
	req_access = list(access_construction)
	available_modifications = list(/decl/item_modifier/space_suit/engineering, /decl/item_modifier/space_suit/atmos) //Add Unathi when sprites exist for their suits.

/obj/machinery/suit_cycler/engineering/alt
	available_modifications = list(
		/decl/item_modifier/space_suit/engineering/alt,
		/decl/item_modifier/space_suit/atmos/alt,
		/decl/item_modifier/space_suit/hazard
	)

/obj/machinery/suit_cycler/mining
	name = "Mining suit cycler"
	model_text = "Mining"
	req_access = list(access_mining)
	available_modifications = list(/decl/item_modifier/space_suit/mining)

/obj/machinery/suit_cycler/science
	name = "Excavation suit cycler"
	model_text = "Excavation"
	req_access = list(access_xenoarch)
	available_modifications = list(/decl/item_modifier/space_suit/science)

/obj/machinery/suit_cycler/security
	name = "Security suit cycler"
	model_text = "Security"
	req_access = list(access_security)
	available_modifications = list(/decl/item_modifier/space_suit/security, /decl/item_modifier/space_suit/security/alt)
/obj/machinery/suit_cycler/security/alt
	available_modifications = list(/decl/item_modifier/space_suit/security/alt)

/obj/machinery/suit_cycler/medical
	name = "Medical suit cycler"
	model_text = "Medical"
	req_access = list(access_medical)
	available_modifications = list(/decl/item_modifier/space_suit/medical)

/obj/machinery/suit_cycler/medical/alt
	available_modifications = list(/decl/item_modifier/space_suit/medical/alt)

/obj/machinery/suit_cycler/syndicate
	name = "Nonstandard suit cycler"
	model_text = "Nonstandard"
	req_access = list(access_syndicate)
	available_modifications = list(/decl/item_modifier/space_suit/mercenary)
	can_repair = 1

/obj/machinery/suit_cycler/pilot
	name = "Pilot suit cycler"
	model_text = "Pilot"
	available_modifications = list(/decl/item_modifier/space_suit/pilot)
