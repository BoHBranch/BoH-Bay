/////////
// FPE Gas
/////////

/decl/xgm_gas/heptafluoropropane
	id = GAS_HFC
	name = "HFC"
	specific_heat = 777	// J/(mol*K) - No, this isn't a joke. HFC is spooky.
	molar_mass = 0.170	// kg/mol
	breathed_product =     /datum/reagent/toxin/hfc
	condensation_product = /datum/reagent/toxin/hfc
	condensation_point =   923.15 // 650C.
	symbol_html = "HFC"
	symbol = "HFC"

/////////
// ICCG Propellant
/////////
/decl/xgm_gas/sulfur_tetrafluoride
	id = GAS_SF4
	name = "Sulfur Tetrafluoride"
	molar_mass = 0.108	// kg/mol
	flags = XGM_GAS_FUEL | XGM_GAS_CONTAMINANT
	breathed_product = /datum/reagent/acid/sf4
	condensation_product = /datum/reagent/acid/hf
	condensation_point = 235.15 //-38c
	symbol_html = "SF<sub>4</sub>"
	symbol = "SF4"
