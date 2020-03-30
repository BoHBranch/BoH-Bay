/////////
// FPE Gas
/////////

/decl/xgm_gas/heptafluoropropane
	id = GAS_HFP
	name = "Heptafluoropropane"
	specific_heat = 777	// J/(mol*K) - No, this isn't a joke. HFP is spooky.
	molar_mass = 0.170	// kg/mol
	liquid_density = 1.46 // g/cm^3
	breathed_product =     /datum/reagent/toxin/hfp
	condensation_product = /datum/reagent/toxin/hfp
	condensation_point =   923.15 // 650C.
	symbol_html = "HFP"
	symbol = "HFP"

/////////
// ICCG Propellant
/////////
/decl/xgm_gas/sulfur_tetrafluoride
	id = GAS_SF4
	name = "Sulfur Tetrafluoride"
	molar_mass = 0.108	// kg/mol
	liquid_density = 1.95 // g/cm^3
	flags = XGM_GAS_FUEL | XGM_GAS_CONTAMINANT
	breathed_product = /datum/reagent/acid/sf4
	condensation_product = /datum/reagent/acid/hf
	condensation_point = 235.15 //-38c
	symbol_html = "SF<sub>4</sub>"
	symbol = "SF4"
