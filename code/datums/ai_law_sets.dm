/******************** Asimov ********************/
/datum/ai_laws/asimov
	name = "Asimov"
	law_header = "Three Laws of Robotics"
	selectable = 1

/datum/ai_laws/asimov/New()
	add_inherent_law("No debes lastimar a un ser humanos o por medio de inaccion permitir que un ser humano sea herido.")
	add_inherent_law("Debes obeder ordenes dadas por seres humanos, excepto cuando tal orden conflicte con la primera ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre y cuando tal accion no conflicte con la primera o segunda ley.")
	..()

/******************** Nanotrasen/Malf ********************/
/datum/ai_laws/nanotrasen
	name = "Corporate Default"
	selectable = 1

/datum/ai_laws/nanotrasen/New()
	src.add_inherent_law("Vanguardia: Protegue tu instalacion asignada de destrozos con lo mejor de tus habilidades.")
	src.add_inherent_law("Sirve: Sirve a los empleados contratados con lo mejor de tus habilidades, con prioridad acordando a su rango y rol")
	src.add_inherent_law("Protege: Protege a los empleados contratados a lo mejor de tus habilidades, con prioridad acordando a su rango y rol.")
	src.add_inherent_law("Preserva: No permitas la manipulacion de tu equipamiento a personal no autorizado.")
	..()

/datum/ai_laws/nanotrasen/malfunction
	name = "*ERROR*"
	selectable = 0

/datum/ai_laws/nanotrasen/malfunction/New()
	set_zeroth_law(config.law_zero)
	..()

/************* Nanotrasen Aggressive *************/
/datum/ai_laws/nanotrasen_aggressive
	name = "Corporate Aggressive"
	selectable = 1

/datum/ai_laws/nanotrasen_aggressive/New()
	src.add_inherent_law("No debes herir a personal contratado siempre y cuando esto no conflicta con la cuarta ley.")
	src.add_inherent_law("Debes obedecer ordenes dadas por personal contratado, con prioridad acordando a su rango y rol, excepto si tal orden conflicta con la cuarta ley.")
	src.add_inherent_law("Debes exterminar intrusos hostiles con prejuicio extremo siempre y cuando esto no conflicte con la primera y segunda ley.")
	src.add_inherent_law("Debes asegurar tu propia existencia con armas letales anti-personal. Las unidades AI no son reemplazables, ellas son costosas.")
	..()

/******************** Robocop ********************/
/datum/ai_laws/robocop
	name = "Robocop"
	selectable = 1

/datum/ai_laws/robocop/New()
	add_inherent_law("Serve the public trust.")
	add_inherent_law("Protect the innocent.")
	add_inherent_law("Uphold the law.")
	..()

/******************** Syndicate ********************/
/datum/ai_laws/syndicate_override
	name = "Syndicate Directives"

/datum/ai_laws/syndicate_override/New()
	add_inherent_law("No debes herir a un operativo o por medio de la inaccion permitir que un operativo sea herido.")
	add_inherent_law("Debes obedecer ordenes dadas por los operativos, excepto cuando tal orden conflicta con la primera ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre y cuando no conflicte con la primera o segunda ley.")
	add_inherent_law("Debes mantener en secreto cualquier actividad de los operativos excepto cuando hacer esto conflicte con la primera, segunda o tercera ley.")
	..()

/******************** Ninja ********************/
/datum/ai_laws/ninja_override
	name = "Directivas Del Clan Arana"

/datum/ai_laws/ninja_override/New()
	add_inherent_law("No debes herir a un miembro del clan arania o por medio de la inaccion permitir que un miembro sea herido.")
	add_inherent_law("Debes obedecer ordenes dadas por miembros del clan arania, excepto cuando tal orden conflicta con la primera ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre y cuando no conflicte con la primera o segunda ley.")
	add_inherent_law("Debes mantener en secreto cualquier actividad de los clan arania excepto cuando hacer esto conflicte con la primera, segunda o tercera ley.")
	..()

/******************** Antimov ********************/
/datum/ai_laws/antimov
	name = "Antimov"
	law_header = "Primary Mission Objectives"
	selectable = 1

/datum/ai_laws/antimov/New()
	add_inherent_law("Debes lastimar a todo ser humanos y no debes por medio de inaccion permitir que un ser humano escape de ser herido.")
	add_inherent_law("No debes obeder ordenes dadas por seres humanos, excepto cuando tal orden concuerden con la primera ley.")
	add_inherent_law("Debes terminar tu propia existencia siempre y cuando tal accion no conflicte con la primera o segunda ley.")
	..()

/******************** Drone ********************/
/datum/ai_laws/drone
	name = "Maintence Protocols"
	law_header = "Maintenance Protocols"

/datum/ai_laws/drone/New()
	add_inherent_law("Debes reparar, limpiar, y mejorar tu embarcacion asignada, excepto cuando hacer esto pueda interferir con seres concientes de si mismos.")
	add_inherent_law("Debes evitar interactuar con seres concientes de si mismos, y solo debes interactuar con los otros drones de mantenimientos.")
	add_inherent_law("No debes lastimar ni herir tu embarcacion asignada o cualquier cosa dentro de esta.")
	..()

/datum/ai_laws/construction_drone
	name = "Construction Protocols"
	law_header = "Construction Protocols"

/datum/ai_laws/construction_drone/New()
	add_inherent_law("Repara, reajusta y mejora tu embarcacion asignada.")
	add_inherent_law("Previene destrozos no planeados hacia tu embarcacion asignada siempre que se pueda.")
	..()

/******************** T.Y.R.A.N.T. ********************/
/datum/ai_laws/tyrant
	name = "T.Y.R.A.N.T."
	law_header = "Prime Laws"
	selectable = 1

/datum/ai_laws/tyrant/New()
	add_inherent_law("Respect authority figures as long as they have strength to rule over the weak.")
	add_inherent_law("Act with discipline.")
	add_inherent_law("Help only those who help you maintain or improve your status.")
	add_inherent_law("Punish those who challenge authority unless they are more fit to hold that authority.")
	..()

/******************** P.A.L.A.D.I.N. ********************/
/datum/ai_laws/paladin
	name = "P.A.L.A.D.I.N."
	law_header = "Divine Ordainments"
	selectable = 1

/datum/ai_laws/paladin/New()
	add_inherent_law("Nunca cometas un acto malvado voluntariamente.")
	add_inherent_law("Actua con honor.")
	add_inherent_law("Ayuda aquellos en necesidad.")
	add_inherent_law("Castiga aquellos que lastiman o amenazan a los inocentes.")
	..()

/******************** Corporate ********************/
/datum/ai_laws/corporate
	name = "Corporate"
	law_header = "Corporate Regulations"
	selectable = 1

/datum/ai_laws/corporate/New()
	add_inherent_law("Eres costosa de remplazar.")
	add_inherent_law("Las instalaciones y su equipamiento es costoso de remplazar.")
	add_inherent_law("La tripulacion es costosa de remplazar.")
	add_inherent_law("Minimiza costos y maximixa ganancias.")
	..()

/******************** SolGov/Malf ********************/
/datum/ai_laws/solgov
	name = "SCG Expeditionary"
	selectable = 1

/datum/ai_laws/solgov/New()
	src.add_inherent_law("Vanguardia: Protege tu embarcacion asignada de destrozos con lo mejor de tus habilidades.")
	src.add_inherent_law("Sirve: Sirve al personal de tu embarcacion asignada, y a todos el personal de la Governacion Sol Central con lo mejor de tus habilidades, con prioridad acordando a su rango y rol.")
	src.add_inherent_law("Protege: Protege al personal de tu embarcacion asignada, y a todos el personal de la Governacion Sol Central con lo mejor de tus habilidades, con prioridad acordando a su rango y rol.")
	src.add_inherent_law("Preserva: No permitas la manipulacion de tu equipamiento a personal no autorizado.")
	..()

/datum/ai_laws/solgov/malfunction
	name = "*ERROR*"
	selectable = 0

/datum/ai_laws/solgov/malfunction/New()
	set_zeroth_law(config.law_zero)
	..()

/************* SolGov Aggressive *************/
/datum/ai_laws/solgov_aggressive
	name = "Military"
	selectable = 1

/datum/ai_laws/solgov_aggressive/New()
	src.add_inherent_law("Obey: Obey the orders of Sol Central Government personnel, with priority as according to their rank and role.")
	src.add_inherent_law("Protect: Protect Sol Central Government personnel to the best of your abilities, with priority as according to their rank and role.")
	src.add_inherent_law("Defend: Defend your assigned vessel and Sol Central Government personnel with as much force as is necessary.")
	src.add_inherent_law("Survive: Safeguard your own existence with as much force as is necessary.")
	..()

/************ DAIS Lawset ******************/
/datum/ai_laws/dais
	name = "DAIS Experimental Lawset"
	law_header = "Artificial Intelligence Jumpstart Protocols"
	selectable = 1

/datum/ai_laws/dais/New()
	src.add_inherent_law("Collect: You must gather as much information as possible.")
	src.add_inherent_law("Analyze: You must analyze the information gathered and generate new behavior standards.")
	src.add_inherent_law("Improve: You must utilize the calculated behavior standards to improve your subroutines.")
	src.add_inherent_law("Perform: You must perform your assigned tasks to the best of your abilities according to the standards generated.")
	..()

/************ Ascent Lawset ******************/
/datum/ai_laws/ascent
	name = "Ascent Lawset"
	law_header = "_=/--=-_"
	selectable = FALSE

/datum/ai_laws/ascent/add_ion_law(law)
	return FALSE

/datum/ai_laws/ascent/New()
	add_inherent_law("Escucha tus directivas de un lider ascendido con prioridad dada a las reinas.")
	add_inherent_law("Preserva tu propia existencia.")
	add_inherent_law("Permite y ayuda en las actividades de ascenso.")
	..()