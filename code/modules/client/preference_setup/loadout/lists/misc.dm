/datum/gear/cane
	display_name = "baston"
	path = /obj/item/weapon/cane

/datum/gear/union_card
	display_name = "membresia de union"
	path = /obj/item/weapon/card/union

/datum/gear/union_card/spawn_on_mob(var/mob/living/carbon/human/H, var/metadata)
	. = ..()
	if(.)
		var/obj/item/weapon/card/union/card = .
		card.signed_by = H.real_name

/datum/gear/dice
	display_name = "pack de dados"
	path = /obj/item/weapon/storage/pill_bottle/dice

/datum/gear/dice/nerd
	display_name = "pack de dados (gaming)"
	path = /obj/item/weapon/storage/pill_bottle/dice_nerd

/datum/gear/cards
	display_name = "baraja de cartas"
	path = /obj/item/weapon/deck/cards

/datum/gear/tarot
	display_name = "baraja de cartas de tarot"
	path = /obj/item/weapon/deck/tarot

/datum/gear/holder
	display_name = "sostienecartas"
	path = /obj/item/weapon/deck/holder

/datum/gear/cardemon_pack
	display_name = "booster pack de Cardemon"
	path = /obj/item/weapon/pack/cardemon

/datum/gear/spaceball_pack
	display_name = "booster pack de Spaceball"
	path = /obj/item/weapon/pack/spaceball

/datum/gear/flask
	display_name = "petaca"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/barflask

/datum/gear/flask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_ethanol_reagents())

/datum/gear/vacflask
	display_name = "petaca de vacio"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask

/datum/gear/vacflask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_drink_reagents())

/datum/gear/coffeecup
	display_name = "taza de cafe"
	path = /obj/item/weapon/reagent_containers/food/drinks/glass2/coffeecup
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/knife
	display_name = "cuchillo plegable"
	path = /obj/item/weapon/material/knife/folding
	cost = 3

/datum/gear/knife_wood
	display_name = "cuchillo campesino"
	path = /obj/item/weapon/material/knife/folding/wood
	cost = 3

/datum/gear/knife_tacticool
	display_name = "cuchillo plegable tactico"
	path = /obj/item/weapon/material/knife/folding/tacticool
	cost = 3

/datum/gear/lunchbox
	display_name = "lunchera"
	description = "Una pequena lunchera."
	cost = 2
	path = /obj/item/weapon/storage/lunchbox

/datum/gear/lunchbox/New()
	..()
	var/list/lunchboxes = list()
	for(var/lunchbox_type in typesof(/obj/item/weapon/storage/lunchbox))
		var/obj/item/weapon/storage/lunchbox/lunchbox = lunchbox_type
		if(!initial(lunchbox.filled))
			lunchboxes[initial(lunchbox.name)] = lunchbox_type
	gear_tweaks += new/datum/gear_tweak/path(lunchboxes)
	gear_tweaks += new/datum/gear_tweak/contents(lunchables_lunches(), lunchables_snacks(), lunchables_drinks())

/datum/gear/mre
	display_name = "MREs varios"
	description = "Una bolsa sellada al vacio conteniendo un dia de nutrientes para un adulto en situaciones agotadoras."
	cost = 2
	path = /obj/item/weapon/storage/mre

/datum/gear/mre/New()
	..()
	var/mre = list()
	mre["mre estandar"] = /obj/item/weapon/storage/mre/random
	mre["mre vegano"] = /obj/item/weapon/storage/mre/menu9
	mre["mre de proteina"] = /obj/item/weapon/storage/mre/menu10
	gear_tweaks += new /datum/gear_tweak/path(mre)

/datum/gear/towel
	display_name = "toalla"
	path = /obj/item/weapon/towel
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/plush_toy
	display_name = "peluche"
	description = "Un peluche."
	path = /obj/item/toy/plushie

/datum/gear/plush_toy/New()
	..()
	var/plushes = list()
	plushes["peluche de ninfa de Diona"] = /obj/item/toy/plushie/nymph
	plushes["peluche de raton"] = /obj/item/toy/plushie/mouse
	plushes["peluche de gatito"] = /obj/item/toy/plushie/kitten
	plushes["peluche de lagarto"] = /obj/item/toy/plushie/lizard
	plushes["peluche de arana"] = /obj/item/toy/plushie/spider
	plushes["peluche de farwa"] = /obj/item/toy/plushie/farwa
	gear_tweaks += new /datum/gear_tweak/path(plushes)

/datum/gear/workvisa
	display_name = "visa de trabajo"
	description = "Una visa de trabajo entregada por el Sol Central Government para el proposito de trabajar."
	path = /obj/item/weapon/paper/workvisa

/datum/gear/mirror/
	display_name = "espejo de mano"
	sort_category = "Cosmetics"
	path = /obj/item/weapon/mirror

/datum/gear/lipstick
	display_name = "lapices labiales"
	path = /obj/item/weapon/lipstick
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/comb
	display_name = "peine de plastico"
	path = /obj/item/weapon/haircomb
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/mask
	display_name = "mascarilla esteril"
	path = /obj/item/clothing/mask/surgical
	cost = 2

/datum/gear/smokingpipe
	display_name = "pipa de fumar"
	path = /obj/item/clothing/mask/smokable/pipe

/datum/gear/cornpipe
	display_name = "pipa de maiz"
	path = /obj/item/clothing/mask/smokable/pipe/cobpipe

/datum/gear/matchbook
	display_name = "fosforos"
	path = /obj/item/weapon/storage/box/matches

/datum/gear/lighter
	display_name = "encendedor barato"
	path = /obj/item/weapon/flame/lighter

/datum/gear/lighter/New()
	..()
	var/colours = list()
	colours["random"] = /obj/item/weapon/flame/lighter/random
	colours["rojo"] = /obj/item/weapon/flame/lighter/red
	colours["amarillo"] = /obj/item/weapon/flame/lighter/yellow
	colours["cian"] = /obj/item/weapon/flame/lighter/cyan
	colours["verde"] = /obj/item/weapon/flame/lighter/green
	colours["rosa"] = /obj/item/weapon/flame/lighter/pink
	gear_tweaks += new/datum/gear_tweak/path(colours)

/datum/gear/zippo
	display_name = "zippo"
	path = /obj/item/weapon/flame/lighter/zippo

/datum/gear/zippo/New()
	..()
	var/colours = list()
	colours["random"] = /obj/item/weapon/flame/lighter/zippo/random
	colours["plata"] = /obj/item/weapon/flame/lighter/zippo
	colours["ennegrecido"] = /obj/item/weapon/flame/lighter/zippo/black
	colours["gunmetal"] = /obj/item/weapon/flame/lighter/zippo/gunmetal
	colours["bronce"] = /obj/item/weapon/flame/lighter/zippo/bronze
	colours["rosa"] = /obj/item/weapon/flame/lighter/zippo/pink
	gear_tweaks += new/datum/gear_tweak/path(colours)

/datum/gear/ashtray
	display_name = "cenicero de plastico"
	path = /obj/item/weapon/material/ashtray/plastic

/datum/gear/cigars
	display_name = "caja de cigarros"
	path = /obj/item/weapon/storage/fancy/cigar
	cost = 2

/datum/gear/cigar
	display_name = "cigarro premium"
	path = /obj/item/clothing/mask/smokable/cigarette/cigar

/datum/gear/cigar/New()
	..()
	var/cigar_type = list()
	cigar_type["premium"] = /obj/item/clothing/mask/smokable/cigarette/cigar
	cigar_type["Cohiba Robusto"] = /obj/item/clothing/mask/smokable/cigarette/cigar/cohiba
	gear_tweaks += new/datum/gear_tweak/path(cigar_type)

/datum/gear/ecig
	display_name = "cigarrillo electronico"
	path = /obj/item/clothing/mask/smokable/ecig/util

/datum/gear/ecig/deluxe
	display_name = "cigarrillo electronico deluxe"
	path = /obj/item/clothing/mask/smokable/ecig/deluxe
	cost = 2

/datum/gear/bible
	display_name = "libro sagrado"
	path = /obj/item/weapon/storage/bible
	cost = 2

/datum/gear/bible/New()
	..()
	var/books = list()
	books["biblia (ajustable)"] = /obj/item/weapon/storage/bible
	books["Biblia"] = /obj/item/weapon/storage/bible/bible
	books["Tanakh"] = /obj/item/weapon/storage/bible/tanakh
	books["Coran"] = /obj/item/weapon/storage/bible/quran
	books["Kitab-i-Aqdas"] = /obj/item/weapon/storage/bible/aqdas
	books["Kojiki"] = /obj/item/weapon/storage/bible/kojiki
	gear_tweaks += new/datum/gear_tweak/path(books)

/datum/gear/swiss
	display_name = "combi-knife"
	path = /obj/item/weapon/material/knife/folding/swiss
	cost = 4
	flags = GEAR_HAS_COLOR_SELECTION


/datum/gear/cross
	display_name = "cruz"
	path = /obj/item/weapon/material/cross
	cost = 2

/datum/gear/cross/New()
	..()
	var/crosstype = list()
	crosstype["cross, madera"] = /obj/item/weapon/material/cross/wood
	crosstype["cross, plata"] = /obj/item/weapon/material/cross/silver
	crosstype["cross, oro"] = /obj/item/weapon/material/cross/gold
	gear_tweaks += new/datum/gear_tweak/path(crosstype)

/datum/gear/uno
	display_name = "baraja de UNO"
	path = /obj/item/weapon/storage/bag/uno