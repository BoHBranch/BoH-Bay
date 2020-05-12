/*
	Hello and welcome to MITHRAstation sprite_accessories: For a more general overview
	please read sprite_accessories.dm. This file is for ears and tails.
	This is intended to be friendly for people with little to no actual coding experience.
	!!WARNING!!: changing existing accessory information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/

// Add Additional variable onto sprite_accessory
/datum/sprite_accessory
	// Ckey of person allowed to use this, if defined.
	var/list/ckeys_allowed = null

/*
////////////////////////////
/  =--------------------=  /
/  == Ear Definitions  ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/ears
	name = "You should not see this..."
	icon = 'modular_mithra/icons/mob/ears.dmi'
	do_colouration = 0 // Set to 1 to blend (ICON_ADD) hair color

	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/desc = "You should not see this..."


// Ears avaliable to anyone

/datum/sprite_accessory/ears/bee
	name = "Antenas de abeja"
	desc = ""
	icon_state = "bee"

/datum/sprite_accessory/ears/antennae
	name = "Antenas, coloreables"
	desc = ""
	icon_state = "antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/m_ipc_antenna_synth_horns_ADJ
	name = "Cuernos sinteticos, liso"
	desc = ""
	icon_state = "m_ipc_antenna_synth_horns_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "m_ipc_antenna_synth_hornslight_ADJ"

/datum/sprite_accessory/ears/m_ipc_antenna_synth_thick_ADJ
	name = "Cuernos sinteticos gruesos"
	desc = ""
	icon_state = "m_ipc_antenna_synth_thick_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "m_ipc_antenna_synth_thicklight_ADJ"

/datum/sprite_accessory/ears/m_ipc_antenna_synth_curled_ADJ
	name = "Cuernos sinteticos, rizados"
	desc = ""
	icon_state = "m_ipc_antenna_synth_curled_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/curly_bug
	name = "Antena rizada, coloreable"
	desc = ""
	icon_state = "curly_bug"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/dual_robot
	name = "Antenas sinteticas, coloreables"
	desc = ""
	icon_state = "dual_robot_antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/right_robot
	name = "Antena sintetica derecha, coloreables"
	desc = ""
	icon_state = "right_robot_antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/left_robot
	name = "Antena sintetica izquierda, coloreables"
	desc = ""
	icon_state = "left_robot_antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/oni_h1_c
	name = "Cuernos de Oni, coloreables"
	desc = ""
	icon_state = "oni-h1_c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/demon_horns1_c
	name = "Cuernos de demonio, coloreables"
	desc = ""
	icon_state = "demon-horns1_c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/demon_horns2
	name = "Cuernos de demonio, colorables(hacia afuera)"
	desc = ""
	icon_state = "demon-horns2"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/dragon_horns
	name = "Cuernos de dragon, coloreables"
	desc = ""
	icon_state = "dragon-horns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/foxears
	name = "Orejas de Zorren highlander"
	desc = ""
	icon_state = "foxears"

/datum/sprite_accessory/ears/fenears
	name = "Orejas de Zorren flatlander"
	desc = ""
	icon_state = "fenears"

/datum/sprite_accessory/ears/foxearshc
	name = "Orejas de Zorren highlander,coloreables"
	desc = ""
	icon_state = "foxearshc"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/fenearshc
	name = "Orejas de Zorren flatlander, coloreables"
	desc = ""
	icon_state = "fenearshc"
	extra_overlay = "fenears-inner"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/sergalhc
	name = "Orejas de Sergal, coloreables"
	icon_state = "serg_plain_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/mousehc
	name = "Orejas de raton, coloreables"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "mouseinner"

/datum/sprite_accessory/ears/mousehcno
	name = "Orejas de raton, colorables, externo"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/wolfhc
	name = "Orejas de lobo, colorable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

/datum/sprite_accessory/ears/bearhc
	name = "Orejas de oso, coloreables"
	desc = ""
	icon_state = "bear"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/smallbear
	name = "Orejas de oso chicas"
	desc = ""
	icon_state = "smallbear"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/squirrelhc
	name = "Orejas de ardilla, coloreables"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/kittyhc
	name = "Orejas de gatito, coloreables"
	desc = ""
	icon_state = "kitty"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "kittyinner"

/datum/sprite_accessory/ears/tajhc
	name = "Orejas de Tajaran, coloreables"
	desc = ""
	icon_state = "taj"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/bunnyhc
	name = "Orejas de conejo, coloreaables"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/antlers
	name = "Cornamenta"
	desc = ""
	icon_state = "antlers"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/antlers_e
	name = "Cornamenta con orejas"
	desc = ""
	icon_state = "cow-nohorns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "antlers_mark"

/datum/sprite_accessory/ears/smallantlers
	name = "Cornamenta chica"
	desc = ""
	icon_state = "smallantlers"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/smallantlers_e
	name = "Cornamenta chica con orejas"
	desc = ""
	icon_state = "smallantlers"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "deer"

/datum/sprite_accessory/ears/deer
	name = "Orejas de ciervo "
	desc = ""
	icon_state = "deer"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/cow
	name = "Cuernos de vaca"
	desc = ""
	icon_state = "cow"

/datum/sprite_accessory/ears/cowc
	name = "Cuernos de vaca, coloreables"
	desc = ""
	icon_state = "cow-c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/cow_nohorns
	name = "Orejas de vaca"
	desc = ""
	icon_state = "cow-nohorns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/caprahorns
	name = "Cuernos de cabra"
	desc = ""
	icon_state = "caprahorns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/otie
	name = "Orejas de otie, coloreables"
	desc = ""
	icon_state = "otie"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "otie-inner"

/datum/sprite_accessory/ears/zears
	name = "Orejas chuecas"
	desc = ""
	icon_state = "zears"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/elfs
	name = "Orejas de elfo"
	desc = ""
	icon_state = "elfs"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/sleek
	name = "Orejas punteagudas"
	desc = ""
	icon_state = "sleek"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/drake
	name = "Orejas de Drake"
	desc = ""
	icon_state = "drake"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/vulp
	name = "Orejas de Vulpkanin, color doble"
	desc = ""
	icon_state = "vulp"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulp-inner"

/datum/sprite_accessory/ears/bunny_floppy
	name = "Orejas de conejo caidas (coloreables)"
	desc = ""
	icon_state = "floppy_bun"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

// Special snowflake ears go below here.

/datum/sprite_accessory/ears/molenar_kitsune
	name = "Orejas de kitsune cinco colas"
	desc = ""
	icon_state = "molenar-kitsune"

/datum/sprite_accessory/ears/lilimoth_antennae
	name = "Antenas de Citheronia"
	desc = ""
	icon_state = "lilimoth_antennae"

/datum/sprite_accessory/ears/molenar_deathclaw
	name = "Orejas de deathclaw"
	desc = ""
	icon_state = "molenar-deathclaw"

/datum/sprite_accessory/ears/miria_fluffdragon
	name = "Orejas de fluffdragonears"
	desc = ""
	icon_state = "miria-fluffdragonears"

/datum/sprite_accessory/ears/miria_kitsune
	name = "Orejas de kitsune"
	desc = ""
	icon_state = "miria-kitsuneears"

/datum/sprite_accessory/ears/runac
	name = "Orejas de fennecsune"
	desc = ""
	icon_state = "runac"

/datum/sprite_accessory/ears/kerena
	name = "Orejas de wingwolf"
	desc = ""
	icon_state = "kerena"

/datum/sprite_accessory/ears/rosey
	name = "Orejas de kitsune tres colas"
	desc = ""
	icon_state = "rosey"

/datum/sprite_accessory/ears/aronai
	name = "Orejas/cabeza aronai"
	desc = ""
	icon_state = "aronai"

/datum/sprite_accessory/ears/holly
	name = "Orejas de tigresa	"
	desc = ""
	icon_state = "tigressears"

/datum/sprite_accessory/ears/molenar_inkling
	name = "Cabello de inkling maduro"
	desc = ""
	icon_state = "molenar-tentacle"

/datum/sprite_accessory/ears/shock
	name = "Orejas de perro faraon"
	desc = ""
	icon_state = "shock"

/datum/sprite_accessory/ears/alurane
	name = "Orejas/cabello alurane"
	desc = ""
	icon_state = "alurane-ears"

/*
////////////////////////////
/  =--------------------=  /
/  == Wing Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/wing
	name = "You should not see this..."
	icon = 'modular_mithra/icons/mob/wings.dmi'
	do_colouration = 0 //Set to 1 to enable coloration using the tail color.

	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/extra_overlay2 // Icon state of a tertiary additional overlay to blend in.
	var/clothing_can_hide = 1 // If true, clothing with HIDETAIL hides it. If the clothing is bulky enough to hide a tail, it should also hide wings.
	// var/show_species_tail = 1 // Just so // TODO - Seems not needed ~Leshana
	var/desc = "You should not see this..."
	var/ani_state // State when flapping/animated
	var/extra_overlay_w // Flapping state for extra overlay


/datum/sprite_accessory/wing/none //Temp fix.
	name = "NONE"
	desc = ""
	icon_state = null

/datum/sprite_accessory/wing/featheredlarge //Made by Natje!
	name = "Alas de plumas grandes (coloreables)"
	desc = ""
	icon_state = "feathered2"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/spider_legs //Not really /WINGS/ but they protrude from the back, kinda. Might as well have them here.
	name = "Patas de Araña"
	desc = ""
	icon_state = "spider-legs"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/moth
	name = "Alas de polilla"
	desc = ""
	icon_state = "moth"

/datum/sprite_accessory/wing/mothc
	name = "Alas de polilla, coloreables"
	desc = ""
	icon_state = "moth"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/dragonfly
	name = "Alas de libelula	"
	desc = ""
	icon_state = "dragonfly"
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/feathered
	name = "Alas de plumas chicas, coloreables"
	desc = ""
	icon_state = "feathered"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/feathered_medium
	name = "Alas de plumas medianas, coloreables" // Keekenox made these feathery things with a little bit more shape to them than the other wings. They are medium sized wing boys.
	desc = ""
	icon_state = "feathered3"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/bat_black
	name = "Alas de murcielago, negras"
	desc = ""
	icon_state = "bat-black"

/datum/sprite_accessory/wing/bat_color
	name = "Alas de murcielago, coloreables"
	desc = ""
	icon_state = "bat-color"
	do_colouration = 1

/datum/sprite_accessory/wing/bat_red
	name = "Alas de murcielago, rojas"
	desc = ""
	icon_state = "bat-red"

/datum/sprite_accessory/wing/harpywings
	name = "Alas de arpia, coloreables"
	desc = ""
	icon_state = "harpywings"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/Harpywings_alt
	name = "Alas de arpia altas, archaeopteryx"
	desc = ""
	icon_state = "Harpywings_alt"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Neckfur"
	extra_overlay2 = "Harpywings_altmarkings"

/datum/sprite_accessory/wing/Harpywings_Bat
	name = "Alas de arpia, murcielago"
	desc = ""
	icon_state = "Harpywings_Bat"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Neckfur"
	extra_overlay2 = "Harpywings_BatMarkings"

/datum/sprite_accessory/wing/feathered
	name = "Alas de plumas, coloreables"
	desc = ""
	icon_state = "feathered"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/beewings
	name = "Alas de abeja"
	desc = ""
	icon_state = "beewings"

/datum/sprite_accessory/wing/liquidfirefly_gazer //I g-guess this could be considered wings?
	name = "gazer eyestalks (alas?)"
	desc = ""
	icon_state = "liquidfirefly-eyestalks"

/datum/sprite_accessory/wing/moth_full
	name = "Antenas/alas de polilla"
	desc = ""
	icon_state = "moth_full"

/datum/sprite_accessory/wing/moth_full_gray
	name = "moth antenna and wings, colorable"
	desc = ""
	icon_state = "moth_full_gray"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/snag
	name = "Xenomorpho placa trasera"
	desc = ""
	icon_state = "snag-backplate"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/nevrean
	name = "Alas/fantail de Nevrean"
	desc = ""
	icon_state = "nevrean_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/drago_wing
	name = "Alas de dragon cibernetico"
	desc = ""
	icon_state = "drago_wing"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "drago_wing_2"

/*
////////////////////////////
/  =--------------------=  /
/  == Tail Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/tail
	name = "You should not see this..."
	icon = 'modular_mithra/icons/mob/tails.dmi'
	do_colouration = 0 //Set to 1 to enable coloration using the tail color.

	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/extra_overlay2 // Icon state of a tertiary additional overlay to blend in.
	var/show_species_tail = 0 // If false, do not render species' tail.
	var/clothing_can_hide = 1 // If true, clothing with HIDETAIL hides it
	var/desc = "You should not see this..."
	var/ani_state // State when wagging/animated
	var/extra_overlay_w // Wagging state for extra overlay


/datum/sprite_accessory/tail/invisible
	name = "hide species-sprite tail"
	icon = null
	icon_state = null

/datum/sprite_accessory/tail/squirrel
	name = "Cola de ardilla, coloreable"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/kitty
	name = "Cola de gatito caida, coloreable"
	desc = ""
	icon_state = "kittydown"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/kittyup
	name = "Cola de gatito parada, coloreable"
	desc = ""
	icon_state = "kittyup"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tiger_white
	name = "Cola de tigre, coloreable"
	desc = ""
	icon_state = "tiger"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "tigerinnerwhite"

/datum/sprite_accessory/tail/stripey
	name = "Cola rayada de Tajaran, coloreable"
	desc = ""
	icon_state = "stripeytail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "stripeytail_mark"

/datum/sprite_accessory/tail/chameleon
	name = "Cola de camaleon, coloreable"
	desc = ""
	icon_state = "chameleon"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/bunny
	name = "Cola de conejo, coloreable"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1

/datum/sprite_accessory/tail/bear
	name = "Cola de oso, coloreable"
	desc = ""
	icon_state = "bear"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/dragon
	name = "Cola de dragon, coloreable"
	desc = ""
	icon_state = "dragon"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wolf
	name = "Cola de lobo, coloreable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

/datum/sprite_accessory/tail/mouse
	name = "Cola de raton, coloreable"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/horse
	name = "Cola de caballo, coloreable"
	desc = ""
	icon_state = "horse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/cow
	name = "Cola de vaca, coloreable"
	desc = ""
	icon_state = "cow"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fantail
	name = "Cola de Avian, coloreable"
	desc = ""
	icon_state = "fantail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wagtail
	name = "Cola de Avian caida, colorable"
	desc = ""
	icon_state = "wagtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/crossfox
	name = "Cola de zorro"
	desc = ""
	icon_state = "crossfox"

/datum/sprite_accessory/tail/beethorax
	name = "Torax de abeja"
	desc = ""
	icon_state = "beethorax"

/datum/sprite_accessory/tail/doublekitsune
	name = "Kitsune dos colas, coloreable"
	desc = ""
	icon_state = "doublekitsune"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/spade_color
	name = "Cola de diablillo (coloreable)"
	desc = ""
	icon_state = "spadetail-black"
	do_colouration = 1

/datum/sprite_accessory/tail/snag
	name = "Cola de xenomorpho 1"
	desc = ""
	icon_state = "snag"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/xenotail
	name = "Cola de xenomorpho 2"
	desc = ""
	icon_state = "xenotail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/eboop
	name = "Cola de mecha EGN (doble color)"
	desc = ""
	icon_state = "eboop"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "eboop_mark"

/datum/sprite_accessory/tail/ringtail
	name = "Cola anillo, coloreable"
	desc = ""
	icon_state = "ringtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "ringtail_mark"

/datum/sprite_accessory/tail/satyr
	name = "Piernas de cabra, coloreables"
	desc = ""
	icon_state = "satyr"
	color_blend_mode = ICON_MULTIPLY
	do_colouration = 1

/datum/sprite_accessory/tail/curltail
	name = "Colacurva (vwag)"
	desc = ""
	icon_state = "curltail"
	ani_state = "curltail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "curltail_mark"
	extra_overlay_w = "curltail_mark_w"

/datum/sprite_accessory/tail/shorttail
	name = "Cola corta (vwag)"
	desc = ""
	icon_state = "straighttail"
	ani_state = "straighttail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/sneptail
	name = "Cola de Furry (vwag)"
	desc = ""
	icon_state = "sneptail"
	ani_state = "sneptail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "sneptail_mark"
	extra_overlay_w = "sneptail_mark_w"

/datum/sprite_accessory/tail/tiger_new
	name = "Cola de tigre (vwag)"
	desc = ""
	icon_state = "tigertail"
	ani_state = "tigertail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "tigertail_mark"
	extra_overlay_w = "tigertail_mark_w"

/datum/sprite_accessory/tail/vulp_new
	name = "Cola nueva de Vulp (vwag)"
	desc = ""
	icon_state = "vulptail"
	ani_state = "vulptail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulptail_mark"
	extra_overlay_w = "vulptail_mark_w"

/datum/sprite_accessory/tail/otietail
	name = "Cola de otie (vwag)"
	desc = ""
	icon_state = "otie"
	ani_state = "otie_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/newtailmaw
	name = "Cola nueva de tailmaw (vwag)"
	desc = ""
	icon_state = "newtailmaw"
	ani_state = "newtailmaw_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/ztail
	name = "Cola pelusita"
	desc = ""
	icon_state = "ztail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/snaketail
	name = "Cola de serpiente, coloreable"
	desc = ""
	icon_state = "snaketail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulpan_alt
	name = "Cola de vulp alta, coloreable"
	desc = ""
	icon_state = "vulptail_alt"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/sergaltaildc
	name = "Cola de sergal, doble-color"
	desc = ""
	icon_state = "sergal"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "sergal_mark"

/datum/sprite_accessory/tail/skunktail
	name = "Cola de zorrillo, doble-color"
	desc = ""
	icon_state = "skunktail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "skunktail_mark"

/datum/sprite_accessory/tail/deertail
	name = "Cola de ciervo, doble-color"
	desc = ""
	icon_state = "deertail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "deertail_mark"

/*
//For all species tails. Includes haircolored tails.
/datum/sprite_accessory/tail/special
	name = "Blank tail. Do not select."
	icon = 'icons/effects/species_tails_vr.dmi'
/datum/sprite_accessory/tail/special/unathi
	name = "unathi tail"
	desc = ""
	icon_state = "sogtail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/tajaran
	name = "tajaran tail"
	desc = ""
	icon_state = "tajtail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/sergal
	name = "sergal tail"
	desc = ""
	icon_state = "sergtail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/akula
	name = "akula tail"
	desc = ""
	icon_state = "sharktail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/nevrean
	name = "nevrean tail"
	desc = ""
	icon_state = "nevreantail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/armalis
	name = "armalis tail"
	desc = ""
	icon_state = "armalis_tail_humanoid_s"
/datum/sprite_accessory/tail/special/xenodrone
	name = "xenomorph drone tail"
	desc = ""
	icon_state = "xenos_drone_tail_s"
/datum/sprite_accessory/tail/special/xenosentinel
	name = "xenomorph sentinel tail"
	desc = ""
	icon_state = "xenos_sentinel_tail_s"
/datum/sprite_accessory/tail/special/xenohunter
	name = "xenomorph hunter tail"
	desc = ""
	icon_state = "xenos_hunter_tail_s"
/datum/sprite_accessory/tail/special/xenoqueen
	name = "xenomorph queen tail"
	desc = ""
	icon_state = "xenos_queen_tail_s"
/datum/sprite_accessory/tail/special/monkey
	name = "monkey tail"
	desc = ""
	icon_state = "chimptail_s"
/datum/sprite_accessory/tail/special/seromitail
	name = "seromi tail"
	desc = ""
	icon_state = "seromitail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/seromitailfeathered
	name = "seromi tail w/ feathers"
	desc = ""
	icon_state = "seromitail_s"
	extra_overlay = "seromitail_feathers_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/unathihc
	name = "unathi tail, colorable"
	desc = ""
	icon_state = "sogtail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/tajaranhc
	name = "tajaran tail, colorable"
	desc = ""
	icon_state = "tajtail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/sergalhc
	name = "sergal tail, colorable"
	desc = ""
	icon_state = "sergtail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/akulahc
	name = "akula tail, colorable"
	desc = ""
	icon_state = "sharktail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/nevreanhc
	name = "nevrean tail, colorable"
	desc = ""
	icon_state = "nevreantail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/foxhc
	name = "highlander zorren tail, colorable"
	desc = ""
	icon_state = "foxtail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/fennechc
	name = "flatland zorren tail, colorable"
	desc = ""
	icon_state = "fentail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/armalishc
	name = "armalis tail, colorable"
	desc = ""
	icon_state = "armalis_tail_humanoid_hc_s"
	do_colouration = 1
/datum/sprite_accessory/tail/special/xenodronehc
	name = "xenomorph drone tail, colorable"
	desc = ""
	icon_state = "xenos_drone_tail_hc_s"
	do_colouration = 1
/datum/sprite_accessory/tail/special/xenosentinelhc
	name = "xenomorph sentinel tail, colorable"
	desc = ""
	icon_state = "xenos_sentinel_tail_hc_s"
	do_colouration = 1
/datum/sprite_accessory/tail/special/xenohunterhc
	name = "xenomorph hunter tail, colorable"
	desc = ""
	icon_state = "xenos_hunter_tail_hc_s"
	do_colouration = 1
/datum/sprite_accessory/tail/special/xenoqueenhc
	name = "xenomorph queen tail, colorable"
	desc = ""
	icon_state = "xenos_queen_tail_hc_s"
	do_colouration = 1
/datum/sprite_accessory/tail/special/monkeyhc
	name = "monkey tail, colorable, colorable"
	desc = ""
	icon_state = "chimptail_hc_s"
	do_colouration = 1
/datum/sprite_accessory/tail/special/seromitailhc
	name = "seromi tail, colorable"
	desc = ""
	icon_state = "seromitail_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/seromitailfeatheredhc
	name = "seromi tail w/ feathers, colorable"
	desc = ""
	icon_state = "seromitail_feathers_hc_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
/datum/sprite_accessory/tail/special/vulpan
	name = "vulpkanin, colorable"
	desc = ""
	icon_state = "vulptail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
*/

/datum/sprite_accessory/tail/zenghu_taj
	name = "Cola sintetica Zenh-Hu de Tajaran"
	desc = ""
	icon_state = "zenghu_taj"

/datum/sprite_accessory/wing/bat_purpley_yw
	name = "Alas de murcielago, purpuras"
	desc = ""
	icon_state = "succubus-purple"

/datum/sprite_accessory/wing/sepulchre_yw
	name = "Alas de demonio, rojas"
	desc = ""
	icon_state = "sepulchre_wings"

/datum/sprite_accessory/wing/sepulchre_c_yw
	name = "Alas de demonio (coloreables)"
	desc = ""
	icon_state = "sepulchre_wingsc"
	do_colouration = 1

/datum/sprite_accessory/wing/cyberdragon
	name = "Alas de dragon cibernetico (coloreables)"
	desc = ""
	icon_state = "cyberdragon_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/cyberdragon_red
	name = "Alas de dragon cibernetico (rojas)"
	desc = ""
	icon_state = "cyberdragon_red_s"
	do_colouration = 0

/datum/sprite_accessory/wing/cyberdoe
	name = "Alas de coneja cibernetica"
	desc = ""
	icon_state = "cyberdoe_s"
	do_colouration = 0


/datum/sprite_accessory/wing/moth_full
	name = "Polilla antenas y alas"
	desc = ""
	icon_state = "moth_full"

/datum/sprite_accessory/wing/Moth_royal
	name = "Polilla noble"
	desc = ""
	icon_state = "Moth_royal"

/datum/sprite_accessory/wing/Neckfur
	name = "Bufanda"
	desc = ""
	icon_state = "Neckfur"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/Moth_royal_colorable
	name = "Polilla noble, coloreable"
	desc = ""
	icon_state = "Moth_royal_colorable"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

//Taurs moved to a separate file due to extra code around them

//Buggo Abdomens!

/datum/sprite_accessory/tail/buggo
	name = "Abdomen de insecto, coloreable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobee
	name = "Abdomen de insecto,abeja superior doble-color"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"

/datum/sprite_accessory/tail/buggobeefull
	name = "Abdomen de insecto, abeja completa, doble-color"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"

/datum/sprite_accessory/tail/buggounder
	name = "Abdomen de insecto,inferior, doble-color"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"

/datum/sprite_accessory/tail/buggofirefly
	name = "Abdomen de insecto,luciernaga,doble-color"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"

/datum/sprite_accessory/tail/buggofat
	name = "Abdomen gordo de insecto, coloreable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggofatbee
	name = "Abdomen gordo de insecto, abeja superior,doble-color"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggofatbeefull
	name = "Abdomen gordo de insecto, abeja completa,dual-color"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggofatunder
	name = "Abdomen gordo de insecto,inferior,doble-color"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofatfirefly
	name = "Abdomen gordo de insecto,luciernaga, doble-color"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_markings"

/datum/sprite_accessory/tail/buggowag
	name = "Abdomen de insecto, coloreable, vwag change"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobeewag
	name = "Abdomen de insecto, Abeja superior,doble color,vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"
	extra_overlay_w = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggobeefullwag
	name = "Abdomen de insecto, abeja completa,doble color,vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"
	extra_overlay_w = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggounderwag
	name = "Abdomen de insecto,inferior, dual color,vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"
	extra_overlay_w = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofireflywag
	name = "Abdomen de insecto, luciernaga,doble color,vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"
	extra_overlay_w = "buggofatfirefly_markings"

//Vass buggo variants!

/datum/sprite_accessory/tail/buggovass
	name = "Abdomen de insecto vass, coloreable"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbee
	name = "Abdomen de insecto vass,abeja superior,dc"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_vass_markings"

/datum/sprite_accessory/tail/buggovassbeefull
	name = "Abdomen de insecto vass,abeja completa,dc"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassunder
	name = "Abdomen de insecto vass,inferior,dc"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_vass_markings"

/datum/sprite_accessory/tail/buggovassfirefly
	name = "Abdomen de insecto vass,luciernaga,dc"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_vass_markings"

/datum/sprite_accessory/tail/buggovassfat
	name = "Abdomen de insecto gordo vass,coloreable"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassfatbee
	name = "Abdomen de insecto gordo vass,superior,dc,"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbee_vass_markings"

/datum/sprite_accessory/tail/buggovassfatbeefull
	name = "Abdomen de insecto gordo vass,completa,dc"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassfatunder
	name = "Abdomen de insecto gordo vass,inferior,dc"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatunder_vass_markings"

/datum/sprite_accessory/tail/buggovassfatfirefly
	name = "Abdomen de insecto gordo vass,luciernaga,dc"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_vass_markings"

/datum/sprite_accessory/tail/buggovasswag
	name = "Abdomen de insecto vass,coloreable,vwag change"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbeewag
	name = "Abdomen de insecto vass,superior,dc,vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_vass_markings"
	extra_overlay_w = "buggofatbee_vass_markings"

/datum/sprite_accessory/tail/buggovassbeefullwag
	name = "Abdomen de insecto vass,completa,dc, vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_vass_markings"
	extra_overlay_w = "buggofatbeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassunderwag
	name = "Abdomen de insecto vass,inferior,dc,vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_vass_markings"
	extra_overlay_w = "buggofatunder_vass_markings"

/datum/sprite_accessory/tail/buggovassfireflywag
	name = "Abdomen de insecto vass,luciernaga,dc,vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_vass_markings"
	extra_overlay_w = "buggofatfirefly_vass_markings"

//So many bugs.

/datum/sprite_accessory/tail/tail_smooth
	name = "Cola de lagarto lisa, Coloreable"
	desc = ""
	icon_state = "tail_smooth"
	ani_state = "tail_smooth_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tripplekitsune_colorable_yw
	name = "Cola de Kitsune tres colas - coloreable"
	desc = ""
	icon_state = "triplekitsune"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "triplekitsune_tips"

/datum/sprite_accessory/tail/lizard_tail_smooth
	name = "Cola de lagarto (Lisa)"
	desc = ""
	icon_state = "lizard_tail_smooth"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_dark_tiger
	name = "Cola de lagarto (Tigre oscuro)"
	desc = ""
	icon_state = "lizard_tail_dark_tiger"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_light_tiger
	name = "Cola de lagarto (Tigre claro)"
	desc = ""
	icon_state = "lizard_tail_light_tiger"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_spiked
	name = "Cola de lagarto (Puas)"
	desc = ""
	icon_state = "lizard_tail_spiked"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wolf_tail
	name = "Cola de lobo"
	desc = ""
	icon_state = "wolf_tail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/ninekitsune_colorable_yw
	name = "Cola de kitsune nueve colas - coloreable"
	desc = ""
	icon_state = "ninekitsune"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "ninekitsune-tips"

/datum/sprite_accessory/tail/vulpkanin_alt_color
	name = "Cola alta de Vulpkanin"
	desc = ""
	icon_state = "vulpkanin_alt_color"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulpkanin_alt_color_tips"
	ani_state = "vulpkanin_alt_color_w"
	extra_overlay_w = "vulpkanin_alt_color_tips_w"

/datum/sprite_accessory/tail/raccoon_tail
	name = "Cola de mapache gris"
	desc = ""
	icon_state = "raccoon_tail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/striped_tail
	name = "Cola a rayas, coloreable"
	desc = ""
	icon_state = "stripedtail_colorable"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "stripedtail_colorable_w"

/datum/sprite_accessory/tail/Easterntail
	name = "Cola de dragon oriental (animada)"
	desc = ""
	icon_state = "Easterntail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "EasterntailColorTip"
	ani_state = "Easterntail_w"
	extra_overlay_w = "EasterntailColorTip_w"

/datum/sprite_accessory/tail/m_tail_synthliz_BEHINDstatic
	name = "Cola sintetica de lagarto"
	desc = ""
	icon_state = "m_tail_synthliz_BEHIND"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/m_tail_synthliz_BEHIND
	name = "Cola sintetica de lagarto,(animada)"
	desc = ""
	icon_state = "m_tail_synthliz_BEHIND"
	ani_state = "m_tailwag_synthliz_BEHIND"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/Plugtail
	name = "Cola de enchufe sintetica"
	desc = ""
	icon_state = "Plugtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "PlugtailMarking"
	extra_overlay2 = "PlugtailMarking2"

/datum/sprite_accessory/tail/Segmentedtail
	name = "Cola de langosta,(animada)"
	desc = ""
	icon_state = "Segmentedtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Segmentedtailmarking"
	ani_state = "Segmentedtail_w"
	extra_overlay_w = "Segmentedtailmarking_w"


/datum/sprite_accessory/tail/Segmentedlights
	name = "Cola sintetica de langosta,(animada)"
	desc = ""
	icon_state = "Segmentedtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Segmentedlights"
	ani_state = "Segmentedtail_w"
	extra_overlay_w = "Segmentedlights_w"

/datum/sprite_accessory/tail/fox_tail_s
	name = "Cola de zorro"
	desc = ""
	icon_state = "fox_tail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fennec_tail_s
	name = "Cola de Fenec(zorro del desierto)"
	desc = ""
	icon_state = "fennec_tail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY