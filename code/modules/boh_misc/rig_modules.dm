/////////
// grenade launcher - combat
/////////

/obj/item/rig_module/grenade_launcher/combat
	name = "mounted grenade launcher"
	interface_name = "grenade launcher"
	desc = "A shoulder-mounted micro-explosive dispenser."

	charges = list(
		list("teargas",   "teargas",   /obj/item/weapon/grenade/chem_grenade/teargas,  12),
		list("localized frag",   "localized frag",   /obj/item/weapon/grenade/frag/shell,  12),
		list("EMP (DANGER)",   "EMP (DANGER)",   /obj/item/weapon/grenade/empgrenade,  6),
		)

/////////
// Deathsquad ChemInjector
/////////

/obj/item/rig_module/chem_dispenser/deathsquad

	name = "combat chemical injector"
	desc = "A complex web of tubing and needles suitable for hardsuit use."

	charges = list(
		list("synaptizine", "synaptizine", /datum/reagent/synaptizine,       30),
		list("hyperzine",   "hyperzine",   /datum/reagent/hyperzine,         30),
		list("oxycodone",   "oxycodone",   /datum/reagent/tramadol/oxycodone,         80),
		list("glucose",     "glucose",     /datum/reagent/nutriment/glucose, 80),
		list("peridaxon",     "peridaxon",     /datum/reagent/peridaxon, 60),
		)

	interface_name = "combat chem dispenser"
	interface_desc = "Dispenses loaded chemicals directly into the bloodstream."
