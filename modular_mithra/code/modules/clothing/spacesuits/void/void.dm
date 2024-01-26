//Override upstream's voidsuit stuff here


//This override is to allow our snowflake species to use voidsuits. Keep this updated with whatever new species you add.
//Make sure you check your code next time. This broke Unathi and Skrell - HTG
/obj/item/clothing/head/helmet/space/void/Initialize()
	. = ..()
	sprite_sheets |= list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_head_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_head.dmi'
		)
	sprite_sheets_obj |= list(
		SPECIES_UNATHI = 'icons/obj/clothing/species/unathi/obj_head_unathi.dmi',
		SPECIES_SKRELL = 'icons/obj/clothing/species/skrell/obj_head_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_head.dmi'
		)

/obj/item/clothing/suit/space/void/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_suit_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_suit_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'icons/obj/clothing/species/unathi/obj_suit_unathi.dmi',
		SPECIES_SKRELL = 'icons/obj/clothing/species/skrell/obj_suit_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_suit.dmi'
		)

//Baystation Torch Bellow - HTG
//SolGov Hardsuits

/obj/item/clothing/suit/space/void/engineering/alt/sol/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_suit.dmi'
		)

/obj/item/clothing/suit/space/void/atmos/alt/sol/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_suit.dmi'
		)

/obj/item/clothing/suit/space/void/pilot/sol/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_suit.dmi'
		)

/obj/item/clothing/suit/space/void/medical/alt/sol/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_suit.dmi'
		)

/obj/item/clothing/head/helmet/space/void/medical/alt/sol/Initialize()
	. = ..()
	sprite_sheets |= list(
		SPECIES_UNATHI = 'modular_boh/icons/mob/species/unathi/onmob_head_solgov_unathi.dmi', //Replaces a missing sprite. - HTG
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_head.dmi'
		)
	sprite_sheets_obj |= list(
		SPECIES_UNATHI = 'icons/obj/clothing/species/unathi/obj_head_unathi.dmi',
		SPECIES_SKRELL = 'icons/obj/clothing/species/skrell/obj_head_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_VULP = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_TAJ = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_head.dmi'
		)

//Exploration
/obj/item/clothing/head/helmet/space/void/exploration/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_head.dmi'
		)

/obj/item/clothing/suit/space/void/exploration/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_suit_solgov_skrell.dmi',
		//Baystation code above ^^^ - HTG
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)

/* SHIT DOESNT WORK FOR WHATEVER REASON ITS CURSED
/obj/item/clothing/head/helmet/space/void/excavation	//This fixes a literal year-old bug from upstream. Should probably bring it to bay directly but eh.
	icon = 'modular_mithra/icons/mob/onmob/head.dmi'	//This .dmi consists of only one thing: the properly renamed iconstate of the excavation helmet.
*/
