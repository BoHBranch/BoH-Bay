/obj/item/weapon/gun
	var/general_codex_key = "armas de fuego"

/obj/item/weapon/gun/projectile
	general_codex_key = "armas balisticas"

/obj/item/weapon/gun/energy
	general_codex_key = "armas de energia"

/obj/item/weapon/gun/get_antag_info()
	var/list/entries = SScodex.retrieve_entries_for_string(general_codex_key)
	var/datum/codex_entry/general_entry = LAZYACCESS(entries, 1)
	if(general_entry && general_entry.antag_text)
		return general_entry.antag_text

/obj/item/weapon/gun/get_lore_info()
	var/list/entries = SScodex.retrieve_entries_for_string(general_codex_key)
	var/datum/codex_entry/general_entry = LAZYACCESS(entries, 1)
	. = "[desc]<br>"
	if(general_entry && general_entry.lore_text)
		. += general_entry.lore_text

/obj/item/weapon/gun/get_mechanics_info()
	var/list/traits = list()

	var/list/entries = SScodex.retrieve_entries_for_string(general_codex_key)
	var/datum/codex_entry/general_entry = LAZYACCESS(entries, 1)
	if(general_entry && general_entry.mechanics_text)
		traits += general_entry.mechanics_text

	if(one_hand_penalty)
		traits += "Se dispara mejor agarrando con ambas manos."

	if(has_safety)
		traits += "Tiene un seguro. CTRL+CLICK para alternar el seguro."

	if(is_secure_gun())
		traits += "Esta equipado con un chip de registración segura. Pasale una ID para registrarla."

	if(scope_zoom)
		traits += "Tiene una mira optica. Se puede alternar con el verbo Usar mira."

	if(LAZYLEN(firemodes) > 1)
		traits += "Tiene multiples modos de fuego. Clickea en tu mano para rotar entre ellos."

	return jointext(traits, "<br>")

/obj/item/weapon/gun/projectile/get_mechanics_info()
	. = ..()
	var/list/traits = list()

	traits += "<br>Calibre: [caliber]"

	var/list/loading_ways = list()
	if(load_method & SINGLE_CASING)
		loading_ways += "Rondas [caliber] sueltas."
	if(load_method & SPEEDLOADER)
		loading_ways += "Cargador rapido."
	if(load_method & MAGAZINE)
		loading_ways += "Cargadores"
	traits += "Puede ser cargada usando [english_list(loading_ways)]"

	if(load_method & (SINGLE_CASING|SPEEDLOADER))
		traits += "Puede aguantar [max_shells] rondas."

	if(jam_chance)
		traits += "Tiene tendencias a atascarse."

	. += jointext(traits, "<br>")

/obj/item/weapon/gun/energy/get_mechanics_info()
	. = ..()
	var/list/traits = list()

	traits += "<br>Su capacidad maxima es de [max_shots] disparos en cuanto a energia."

	if(self_recharge)
		traits += "Se recarga sola con el tiempo."

	. += jointext(traits, "<br>")

/obj/item/weapon/gun/projectile/shotgun/pump/get_mechanics_info()
	. = ..()
	. += "<br>Para recargar la ronda haz click en el item tu mano.<br>"

/obj/item/weapon/gun/energy/crossbow/get_antag_info()
	. = ..()
	. += "Esta es un arma sigilosa que dispara flechas envenenadas a tu objetivo. Cuando le de a alguien sufriran un efecto de aturdimiento, ademas de algunas toxinas. \
	. La ballesta de energía se recarga sola lentamente, y puede ser escondida en tu bolsillo o bolsa.<br>"

/obj/item/weapon/gun/energy/chameleon/get_antag_info()
	. = ..()
	. += "Esta arma es un proyector holografico que puede cambiar de apariencia para imitar otras armas. Para cambiar de aspecto usa\
	el verbo apropiado en la sección camaleón. Cualquier rayo o proyectil disparado por esta arma es realmente un holograma inútil para combate real. \
	Proyectar estos hologramas a distancia usa un poco de energía.<br>"

/datum/codex_entry/energy_weapons
	display_name = "energy weapons"
	mechanics_text = "Esta arma es un arma de energía; funcionan con una carga de batería en lugar de munición tradicional. Puedes recargarlas \
         colocandolas en un cargador montado en una pared o en una mesa, como los que se encuentran en Seguridad o en los \
        alrededores. Ademas, la mayoría de las armas de energía pueden atravesar ventanas y golpear lo que esté al otro lado, y son \
       precisas y útiles contra objetivos distantes. \
		<br><br>"

/datum/codex_entry/ballistic_weapons
	display_name = "ballistic weapons"
	mechanics_text = "Esta arma es balistica; dispara proyectiles solidos usando un cartucho o municion cargada a mano. Puedes \
		descargarla agarrandola y clickeandola con una mano vacia, y recargarla clickeandola con un cartucho, o en el caso de las\
		escopetas o algunos rifles, abriendo la recamara y clickeandola con rondas individuales.\
		<br><br>"
	lore_text = "Las armas balisticas son aun usadas por el precio y dificultad de mantenimiento relativo de armas laser estandar \
		wy por el potencial bruto de cartuchos fisicos. Usar un arma balistica en un entorno espacial es considerado un riesgo serio,\
		pues una bala puede perforar las paredes de la nave"