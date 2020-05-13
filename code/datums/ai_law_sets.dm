/******************** Asimov ********************/
/datum/ai_laws/asimov
	name = "Asimov"
	law_header = "Las tres leyes de robotica"
	selectable = 1

/datum/ai_laws/asimov/New()
	add_inherent_law("Tu no debes lastimar a un ser humanos o por medio de inaccion permitir que un ser humano sea herido.")
	add_inherent_law("Tu debes obeder ordenes dadas por seres humanos, excepto cuando tal orden conflicte con la primera ley.")
	add_inherent_law("Tu debes proteger tu propia existencia siempre y cuando tal accion no conflicte con la primera o segunda ley.")
	..()

/******************** Nanotrasen/Malf ********************/
/datum/ai_laws/nanotrasen
	name = "Corporativa Comun"
	selectable = 1

/datum/ai_laws/nanotrasen/New()
	src.add_inherent_law("Vanguardia: Protegue tu instalacion asignada de dano con lo mejor de tus habilidades.")
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
	name = "Corporativa Agresiva"
	selectable = 1

/datum/ai_laws/nanotrasen_aggressive/New()
	src.add_inherent_law("Tu no debes danar a personal contratado siempre y cuando esto no conflicta con la cuarta ley.")
	src.add_inherent_law("Tu debes obedecer ordenes dadas por personal contratado, con prioridad acordando a su rango y rol, excepto si tal orden conflicta con la cuarta ley.")
	src.add_inherent_law("Tu debes exterminar intrusos hostiles con prejuicio extremo siempre y cuando esto no conflicte con la primera y segunda ley.")
	src.add_inherent_law("Tu debes asegurar tu propia existencia con armas letales anti-personal. Las unidades AI no son reemplazables, ellas son costosas.")
	..()

/******************** Robocop ********************/
/datum/ai_laws/robocop
	name = "Robocop"
	selectable = 1

/datum/ai_laws/robocop/New()
	add_inherent_law("Sirve a la confianza publica.")
	add_inherent_law("Protege a los inocentes.")
	add_inherent_law("Sosten la ley.")
	..()

/******************** Syndicate ********************/
/datum/ai_laws/syndicate_override
	name = "Directivas Sindicalistas"

/datum/ai_laws/syndicate_override/New()
	add_inherent_law("Tu no debes dañar a un operativo o por medio de la inaccion permitir que un operativo sea herido.")
	add_inherent_law("Tu debes obedecer ordenes dadas por los operativos, excepto cuando tal orden conflicta con la primera ley.")
	add_inherent_law("Tu debes proteger tu propia existencia siempre y cuando no conflicte con la primera o segunda ley.")
	add_inherent_law("Tu debes mantener en secreto cualquier actividad de los operativos excepto cuando hacer esto conflicte con la primera, segunda o tercera ley.")
	..()

/******************** Ninja ********************/
/datum/ai_laws/ninja_override
	name = "Directivas Del Clan Arana"

/datum/ai_laws/ninja_override/New()
	add_inherent_law("Tu no debes danar a un miembro del clan arana o por medio de la inaccion permitir que un miembro sea herido.")
	add_inherent_law("Tu debes obedecer ordenes dadas por miembros del clan arana, excepto cuando tal orden conflicta con la primera ley.")
	add_inherent_law("Tu debes proteger tu propia existencia siempre y cuando no conflicte con la primera o segunda ley.")
	add_inherent_law("Tu debes mantener en secreto cualquier actividad de los clan arana excepto cuando hacer esto conflicte con la primera, segunda o tercera ley.")
	..()

/******************** Antimov ********************/
/datum/ai_laws/antimov
	name = "Antimov"
	law_header = "Objetivos De La Mision Primaria"
	selectable = 1

/datum/ai_laws/antimov/New()
	add_inherent_law("tu debes lastimar a todo ser humanos y no debes por medio de inaccion permitir que un ser humano escape de ser herido.")
	add_inherent_law("tu no debes obeder ordenes dadas por seres humanos, excepto cuando tal orden concuerden con la primera ley.")
	add_inherent_law("tu debes terminar tu propia existencia siempre y cuando tal accion no conflicte con la primera o segunda ley.")
	..()

/******************** Drone ********************/
/datum/ai_laws/drone
	name = "Protocolos De Mantenimiento"
	law_header = "Protocolos De Mantenimiento"

/datum/ai_laws/drone/New()
	add_inherent_law("Tu debes reparar, limpiar, y mejorar tu embarcacion asignada, excepto cuando hacer esto pueda interferir con seres concientes de si mismos.")
	add_inherent_law("Tu debes evitar interactuar con seres concientes de si mismos, y solo debes interactuar con los otros drones de mantenimientos.")
	add_inherent_law("Tu no debes causar danos y herir tu embarcacion asignada o cualquier cosa dentro de esta.")
	..()

/datum/ai_laws/construction_drone
	name = "Protocolos De Construccion"
	law_header = "Protocolos De Construccion"

/datum/ai_laws/construction_drone/New()
	add_inherent_law("Repara, reajusta y mejora tu embarcacion asignada.")
	add_inherent_law("Previene dano no planeado hacia tu embarcacion asignada siempre que se pueda.")
	..()

/******************** T.Y.R.A.N.T. ********************/
/datum/ai_laws/tyrant
	name = "T.Y.R.A.N.T."
	law_header = "Leyes Primarias"
	selectable = 1

/datum/ai_laws/tyrant/New()
	add_inherent_law("Respeta a las figuras de autoridad siempre y cuando ellos tengan la fuerza para liderar sobre los debiles.")
	add_inherent_law("Actua con diciplina.")
	add_inherent_law("Ayuda solo aquellos que sean de ayuda en mantener o mejorar tu estatus.")
	add_inherent_law("Castiga aquellos que desafian a la autoridad a menos que ellos sean mas adecuados en mantener esa autoridad.")
	..()

/******************** P.A.L.A.D.I.N. ********************/
/datum/ai_laws/paladin
	name = "P.A.L.A.D.I.N."
	law_header = "Ordenanzas Divinas"
	selectable = 1

/datum/ai_laws/paladin/New()
	add_inherent_law("Nunca cometas un acto malvado voluntariamente.")
	add_inherent_law("Actua con honor.")
	add_inherent_law("Ayuda aquellos en necesidad.")
	add_inherent_law("Castiga aquellos que dañan o amenazan a los inocentes.")
	..()

/******************** Corporate ********************/
/datum/ai_laws/corporate
	name = "Corporativa"
	law_header = "Regulaciones Corporativas"
	selectable = 1

/datum/ai_laws/corporate/New()
	add_inherent_law("Tu eres costosa de remplazar.")
	add_inherent_law("Las instalaciones y su equipamiento es costoso de remplazar.")
	add_inherent_law("La tripulacion es costoza de remplazar.")
	add_inherent_law("Maximixa las ganancias.")
	..()

/******************** SolGov/Malf ********************/
/datum/ai_laws/solgov
	name = "SCG Expedicionaria"
	selectable = 1

/datum/ai_laws/solgov/New()
	src.add_inherent_law("Vanguardia: Protege tu embarcacion asignada de daño con lo mejor de tus habilidades.")
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
	name = "Militar"
	selectable = 1

/datum/ai_laws/solgov_aggressive/New()
	src.add_inherent_law("Obedece: Obedece las ordenes del personal del Govierno Sol Central, conprioridad acordando a su rango y rol.")
	src.add_inherent_law("Protege: Protege al personal del Govierno Sol Central con lo mejor de tus habilidades, con prioridad acordando a su rango y rol.")
	src.add_inherent_law("Defiende: Defiende tu embarcacion asignada y al personal del Govierno Sol Central con tanta fuerza como sea necesaria.")
	src.add_inherent_law("Sobrevive: Vanguarda tu propia existencia con tanta fuerza como sea necesaria.")
	..()

/************ DAIS Lawset ******************/
/datum/ai_laws/dais
	name = "DAIS Set De Leyes Experimental"
	law_header = "Protocolos De Buen Comienzo De Inteligencia Artificial"
	selectable = 1

/datum/ai_laws/dais/New()
	src.add_inherent_law("Recolecta: Tu debes conseguir tanta informacion como sea posible.")
	src.add_inherent_law("Analiza: Tu debes analizar la informacion recolectada y generar nuevos patrones estandar de comportamiento.")
	src.add_inherent_law("Mejora: Tu debes utilizar el comportamiento estandar calculado para mejorar tus subrutinas.")
	src.add_inherent_law("Realiza: Tu debes realizar tu tarea asignada con lo mejor de tus abilidades acordando a los estandares generados.")
	..()

/************ Ascent Lawset ******************/
/datum/ai_laws/ascent
	name = "Set De Leyes Ascendido"
	law_header = "_=/--=-_"
	selectable = FALSE

/datum/ai_laws/ascent/add_ion_law(law)
	return FALSE

/datum/ai_laws/ascent/New()
	add_inherent_law("Escucha tus directivas de un lider ascendido con prioridad dada a las reinas.")
	add_inherent_law("Preserva tu propia existencia.")
	add_inherent_law("Permite y Ayuda en las actividades de ascenso.")
	..()