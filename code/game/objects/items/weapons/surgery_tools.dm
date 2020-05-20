/* Surgery Tools
 * Contains:
 *		Retractor
 *		Hemostat
 *		Cautery
 *		Surgical Drill
 *		Scalpel
 *		Circular Saw
 */

/*
 * Retractor
 */
/obj/item/weapon/retractor
	name = "retractor"
	desc = "Retrae cosas."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "retractor"
	matter = list(MATERIAL_STEEL = 300, MATERIAL_GLASS = 100)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)

/*
 * Hemostat
 */
/obj/item/weapon/hemostat
	name = "hemostato"
	desc = "Crees haberlo visto antes."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "hemostat"
	matter = list(MATERIAL_STEEL = 250, MATERIAL_GLASS = 150)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("atacado", "pinchado")

/*
 * Cautery
 */
/obj/item/weapon/cautery
	name = "cauterizacion"
	desc = "Esto detiene el sangrado."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "cautery"
	matter = list(MATERIAL_STEEL = 300, MATERIAL_GLASS = 250, MATERIAL_ALUMINIUM = 100)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("quemado")

/*
 * Surgical Drill
 */
/obj/item/weapon/surgicaldrill
	name = "taladro quirurguico"
	desc = "Puedes taladrar usando este objeto"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "drill"
	hitsound = 'sound/weapons/circsawhit.ogg'
	matter = list(MATERIAL_STEEL = 2000, MATERIAL_PLASTIC = 1500, MATERIAL_ALUMINIUM = 800)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 15.0
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("taladrado")

/*
 * Scalpel
 */
/obj/item/weapon/scalpel
	name = "bisturi"
	desc = "Cortar, cortar y una vez mas, cortar."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "scalpel"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 10.0
	sharp = 1
	edge = 1
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_EARS
	throwforce = 5.0
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 200, MATERIAL_ALUMINIUM = 100)
	attack_verb = list("atacado", "acuchillado", "apuñalado", "pinchado", "rasgado", "rasgado", "mutilado", "cortado")

/*
 * Researchable Scalpels
 */
/obj/item/weapon/scalpel/laser1
	name = "laser bisturi"
	desc = "Un bisturi aumentado con un laser dirigido, este parece basico y puede ser usado."
	icon_state = "scalpel_laser1_on"
	damtype = "fire"

/obj/item/weapon/scalpel/laser2
	name = "laser bisturi"
	desc = "Un bisturi aumentado con un laser dirigido, para mas precision al cortar sin sin tener sangre entrando en el area de operacion. Este parece un poco avanzado."
	icon_state = "scalpel_laser2_on"
	damtype = "fire"
	force = 12.0

/obj/item/weapon/scalpel/laser3
	name = "laser bisturi"
	desc = "Un bisturi aumentado con un laser dirigido, para mas precision al cortar sin sin tener sangre entrando en el area de operacion. Este parece el mas avanzado de todos."
	icon_state = "scalpel_laser3_on"
	damtype = "fire"
	force = 15.0

/obj/item/weapon/scalpel/manager
	name = "sistema de gestion de incisiones"
	desc = "Una extension del cuerpo del cirujano. Esta maravilla prepara instantanea y completamente una incision que permite el comienzo de una cirugia"
	icon_state = "scalpel_manager_on"
	force = 7.5

/*
 * Circular Saw
 */
/obj/item/weapon/circular_saw
	name = "Sierra circular"
	desc = "Para un corte dificil."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "saw3"
	hitsound = 'sound/weapons/circsawhit.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 15.0
	w_class = ITEM_SIZE_NORMAL
	throwforce = 9.0
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 3000, MATERIAL_ALUMINIUM = 1000, MATERIAL_PLASTIC = 500)
	attack_verb = list("atacado", "recortado", "aserrado", "cortado")
	sharp = 1
	edge = 1

//misc, formerly from code/defines/weapons.dm
/obj/item/weapon/bonegel
	name = "gel para huesos"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "bone-gel"
	force = 0
	w_class = ITEM_SIZE_SMALL
	throwforce = 1.0

/obj/item/weapon/FixOVein
	name = "FixOVein"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "fixovein"
	force = 0
	throwforce = 1.0
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 3)
	w_class = ITEM_SIZE_SMALL
	var/usage_amount = 10

/obj/item/weapon/bonesetter
	name = "ensalmador"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "bone setter"
	force = 8.0
	throwforce = 9.0
	throw_speed = 3
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("atacado", "golpeado", "pegado")
