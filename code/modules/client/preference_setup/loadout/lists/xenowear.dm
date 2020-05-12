// Alien clothing.

// Unathi clothing
/datum/gear/suit/unathi/
	sort_category = "Xenoropa"
	category = /datum/gear/suit/unathi/

/datum/gear/suit/unathi/mantle
	display_name = "manto de pieles (Unathi)"
	path = /obj/item/clothing/suit/unathi/mantle
	cost = 1

/datum/gear/suit/unathi/robe
	display_name = "tunica precaria (Unathi)"
	path = /obj/item/clothing/suit/unathi/robe
	cost = 1

/datum/gear/suit/unathi/knifeharness
	display_name = "arnes decorado"
	path = /obj/item/clothing/accessory/storage/knifeharness
	cost = 5

/datum/gear/suit/unathi/savage_hunter
	display_name = "pieles de cazador salvaje (Masculino, Unathi)"
	path = /obj/item/clothing/under/savage_hunter
	slot = slot_w_uniform
	cost = 2

/datum/gear/suit/unathi/savage_hunter/female
	display_name = "pieles de cazador salvaje (Femenino, Unathi)"
	path = /obj/item/clothing/under/savage_hunter/female
	slot = slot_w_uniform
	cost = 2

//Skrell Chains
/datum/gear/ears/skrell/
	sort_category = "Xenowear"
	category = /datum/gear/ears/skrell/

/datum/gear/ears/skrell/chains
	display_name = "cadenas para headtail (Skrell)"
	path = /obj/item/clothing/ears/skrell/chain
	flags = GEAR_HAS_SUBTYPE_SELECTION

/datum/gear/ears/skrell/colored/chain
	display_name = "cadena de headtail, coloreable (Skrell)"
	path = /obj/item/clothing/ears/skrell/colored/chain
	flags = GEAR_HAS_COLOR_SELECTION

//Skrell Bands
/datum/gear/ears/skrell/bands
	display_name = "cintas de headtail (Skrell)"
	path = /obj/item/clothing/ears/skrell/band
	flags = GEAR_HAS_SUBTYPE_SELECTION

/datum/gear/ears/skrell/colored/band
	display_name = "cintas de headtail, coloreables (Skrell)"
	path = /obj/item/clothing/ears/skrell/colored/band
	flags = GEAR_HAS_COLOR_SELECTION

//Skrell Cloth
/datum/gear/ears/skrell/cloth/male
	display_name = "tela de headtail masculina (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth_male
	flags = GEAR_HAS_COLOR_SELECTION


/datum/gear/ears/skrell/cloth/female
	display_name = "tela de headtail femenina (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth_female
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/skrell_helmet
	display_name = "Casco Skrell"
	path = /obj/item/clothing/head/helmet/skrell
	sort_category = "Xenowear"

/datum/gear/accessory/skrell_badge
	display_name = "medalla SDTF Skrell"
	path = /obj/item/clothing/accessory/badge/tags/skrell
	sort_category = "Xenowear"

// IPC clothing
/datum/gear/mask/ipc_monitor
	display_name = "Monitor (IPC)"
	path = /obj/item/clothing/mask/monitor
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_IPC)
	cost = 0

/datum/gear/suit/lab_xyn_machine
	display_name = "Bata de laboratorio Xynergy"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/xyn_machine
	slot = slot_wear_suit
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_IPC)

// Misc clothing
/datum/gear/uniform/harness
	display_name = "arnes de equipamiento (Full Body Prosthetic, Diona, Giant Armoured Serpentid)"
	path = /obj/item/clothing/under/harness
	sort_category = "Xenowear"

/datum/gear/shoes/toeless
	display_name = "botas sin dedos"
	path = /obj/item/clothing/shoes/jackboots/unathi
	sort_category = "Xenowear"

/datum/gear/shoes/wrk_toeless
	display_name = "botas de trabajo sin dedos"
	path = /obj/item/clothing/shoes/workboots/toeless
	sort_category = "Xenowear"

// Pre-modified gloves

/datum/gear/gloves/colored/modified
	display_name = "guantes modificados, coloreable"
	path = /obj/item/clothing/gloves/color/modified
	sort_category = "Xenowear"

/datum/gear/gloves/latex/modified
	display_name = "guantes modificados, latex"
	path = /obj/item/clothing/gloves/latex/modified
	sort_category = "Xenowear"

/datum/gear/gloves/nitrile/modified
	display_name = "guantes modificados, nitrilo"
	path = /obj/item/clothing/gloves/latex/nitrile/modified
	sort_category = "Xenowear"

/datum/gear/gloves/rainbow/modified
	display_name = "guantes modificados, arcoiris"
	path = /obj/item/clothing/gloves/rainbow/modified
	sort_category = "Xenowear"

/datum/gear/gloves/evening/modified
	display_name = "guantes modificados de gala"
	path = /obj/item/clothing/gloves/color/evening/modified
	sort_category = "Xenowear"

/datum/gear/gloves/botany/modified
	display_name = "guantes modificados, botanica"
	path = /obj/item/clothing/gloves/thick/botany/modified
	sort_category = "Xenowear"

/datum/gear/gloves/work/modified
	display_name = "guantes modificados de trabajo"
	path = /obj/item/clothing/gloves/thick/modified
	sort_category = "Xenowear"

// Vox clothing
/datum/gear/mask/gas/vox
	display_name = "mascara de respiracion vox"
	path = /obj/item/clothing/mask/gas/vox
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_VOX,SPECIES_VOX_ARMALIS)