/obj/item/clothing/head/solgov
	name = "master solgov hat"
	icon = 'modular_boh/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'modular_boh/icons/mob/onmob_head_solgov.dmi')
	siemens_coefficient = 0.9

//Utility
/obj/item/clothing/head/soft/solgov
	name = "\improper Sol Central Government cap"
	desc = "It's a ballcap in SCG colors."
	icon_state = "solsoft"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
Fleet
/obj/item/clothing/head/soft/solgov/veteranhat
	name = "veteran hat"
	desc = "It's a tacky black ballcap bearing the yellow service ribbon of the Aigaion Conflict."
	icon_state = "cap_veteran"

/obj/item/clothing/head/soft/solgov/expedition
	name = "\improper fleet cap"
	desc = "It's a black ballcap bearing the fleet crest."
	icon_state = "expeditionsoft"
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_head_unathi.dmi'
		)

/obj/item/clothing/head/soft/solgov/expedition/co
	name = "\improper Fleet captain's cap"
	desc = "It's a black ballcap bearing Surveyor Corps crest. The brim has gold trim."
	icon_state = "expeditioncomsoft"

/obj/item/clothing/head/soft/solgov/fleet
	name = "fleet cap"
	desc = "It's a navy blue field cap with the SolGov Fleet crest in a silver colour."
	icon_state = "fleetsoft"

/obj/item/clothing/head/solgov/utility
	name = "utility cover"
	desc = "An eight-point utility cover."
	icon_state = "greyutility"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	body_parts_covered = 0

/obj/item/clothing/head/solgov/utility/fleet
	name = "fleet utility cover"
	desc = "A navy blue utility cover bearing the crest of NT's Expeditonary Fleet."
	icon_state = "navyutility"

/obj/item/clothing/head/solgov/utility/fleet/marine
	name = "navy utility cover"
	desc = "A navy blue utility cover bearing the crest of the SCG Marine Corp."
	icon_state = "navyutility"

/obj/item/clothing/head/solgov/utility/army
	name = "green utility cover"
	desc = "A green utility cover bearing the crest of the SCG Marine Corp."
	icon_state = "greenutility"

/obj/item/clothing/head/solgov/utility/army/tan
	name = "tan utility cover"
	desc = "A tan utility cover bearing the crest of the SCG Marine Corp."
	icon_state = "tanutility"

/obj/item/clothing/head/solgov/utility/army/urban
	name = "urban utility cover"
	desc = "A grey utility cover bearing the crest of the SCG Marine Corp."
	icon_state = "greyutility"

//Service

/obj/item/clothing/head/solgov/service
	name = "service cover"
	desc = "A service uniform cover."
	icon_state = "greenwheelcap"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/solgov/service/expedition
	name = "fleet peaked cap"
	desc = "A peaked black uniform cap belonging to the NT fleet."
	icon_state = "ecdresscap"
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_head_unathi.dmi'
		)

/obj/item/clothing/head/solgov/service/expedition/command
	name = "fleet officer's peaked cap"
	desc = "A peaked black uniform cap belonging to the NT fleet. This one is trimmed in gold."
	icon_state = "ecdresscap_ofcr"

/obj/item/clothing/head/solgov/service/expedition/captain
	name = "fleet captain's peaked cap"
	desc = "A gold-trimmed peaked black uniform cap belonging to a Captain of the NT fleet."
	icon_state = "ecdresscap_capt"

/obj/item/clothing/head/solgov/service/expedition/senior_command
	name = "senior fleet officer's peaked cap"
	desc = "A peaked grey uniform cap belonging to the NT fleet. This one is trimmed in gold and blue."
	icon_state = "greydresscap_senior"

/obj/item/clothing/head/solgov/service/army
	name = "marine wheel cover"
	desc = "A green service uniform cover with an SCG Marine Corp crest."
	icon_state = "greenwheelcap"

/obj/item/clothing/head/solgov/service/army/command
	name = "marine officer's wheel cover"
	desc = "A green service uniform cover with an SCG Marine Corp crest and gold stripe."
	icon_state = "greenwheelcap_com"

/obj/item/clothing/head/solgov/service/army/garrison
	name = "marine garrison cap"
	desc = "A green garrison cap belonging to the SCG Marine Corp."
	icon_state = "greengarrisoncap"

/obj/item/clothing/head/solgov/service/army/garrison/command
	name = "marine officer's garrison cap"
	desc = "A green garrison cap belonging to the SCG Marine Corp. This one has a gold pin."
	icon_state = "greengarrisoncap_com"

/obj/item/clothing/head/solgov/service/army/campaign
	name = "campaign cover"
	desc = "A green campaign cover with an SCG Marine Corp crest. Only found on the heads of Drill Sergeants."
	icon_state = "greendrill"

//Dress

/obj/item/clothing/head/solgov/dress
	name = "dress cover"
	desc = "A dress uniform cover."
	icon_state = "greenwheelcap"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/solgov/dress/fleet/garrison
	name = "fleet garrison cap"
	desc = "A white dress uniform cap. The classic sailor's choice."
	icon_state = "whitegarrisoncap"

/obj/item/clothing/head/solgov/dress/fleet
	name = "fleet dress wheel cover"
	desc = "A white dress uniform cover. This one has the Solar Fleet crest."
	icon_state = "whitepeakcap"

/obj/item/clothing/head/solgov/dress/fleet/command
	name = "fleet officer's dress wheel cover"
	desc = "A white dress uniform cover. This one has a gold stripe and the Solar Fleet crest."
	icon_state = "whitepeakcap_com"

/obj/item/clothing/head/solgov/dress/fleet/captain
	name = "fleet captain's dress wheel cover"
	desc = "A black dress uniform cover. This one has a gold anchor and the Solar Fleet crest."
	icon_state = "whitepeakcap_cap"

/obj/item/clothing/head/solgov/dress/army
	name = "marine dress wheel cover"
	desc = "A white dress uniform cover with an SCG Marine Corp crest."
	icon_state = "whitewheelcap"

/obj/item/clothing/head/solgov/dress/army/command
	name = "marine officer's dress wheel cover"
	desc = "A white dress uniform cover with an SCG Marine Corp crest and gold stripe."
	icon_state = "whitewheelcap_com"

//Berets

/obj/item/clothing/head/beret/solgov
	name = "peacekeeper beret"
	desc = "A beret in Sol Central Government colors. For peacekeepers that are more inclined towards style than safety."
	icon_state = "beret_lightblue"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')

/obj/item/clothing/head/beret/solgov/homeguard
	name = "home guard beret"
	desc = "A red beret denoting service in the Sol Home Guard. For personnel that are more inclined towards style than safety."
	icon_state = "beret_red"

/obj/item/clothing/head/beret/solgov/gateway
	name = "gateway administration beret"
	desc = "An orange beret denoting service in the Gateway Administration. For personnel that are more inclined towards style than safety."
	icon_state = "beret_orange"

/obj/item/clothing/head/beret/solgov/customs
	name = "customs and trade beret"
	desc = "A purple beret denoting service in the Customs and Trade Bureau. For personnel that are more inclined towards style than safety."
	icon_state = "beret_purpleyellow"

/obj/item/clothing/head/beret/solgov/orbital
	name = "orbital assault beret"
	desc = "A blue beret denoting orbital assault training. For helljumpers that are more inclined towards style than safety."
	icon_state = "beret_blue"

/obj/item/clothing/head/beret/solgov/research
	name = "government research beret"
	desc = "A green beret denoting service in the Bureau of Research. For scientists that are more inclined towards style than safety."
	icon_state = "beret_green"

/obj/item/clothing/head/beret/solgov/health
	name = "health service beret"
	desc = "A white beret denoting service in the Interstellar Health Service. For medics that are more inclined towards style than safety."
	icon_state = "beret_white"

/obj/item/clothing/head/beret/solgov/marcom
	name = "\improper MARSCOM beret"
	desc = "A red beret with a gold insignia, denoting service in the SCGDF Mars Central Command. For brass who are more inclined towards style than safety."
	icon_state = "beret_redgold"

/obj/item/clothing/head/beret/solgov/stratcom
	name = "\improper STRATCOM beret"
	desc = "A grey beret with a silver insignia, denoting service in the SCGDF Strategic Command. For intelligence personnel who are more inclined towards style than safety."
	icon_state = "beret_graysilver"

/obj/item/clothing/head/beret/solgov/diplomatic
	name = "diplomatic security beret"
	desc = "A tan beret denoting service in the SCG Marine Corp Diplomatic Security Group. For security personnel who are more inclined towards style than safety."
	icon_state = "beret_tan"

/obj/item/clothing/head/beret/solgov/borderguard
	name = "border security beret"
	desc = "A green beret with a silver emblem, denoting service in the Bureau of Border Security. For border guards who are more inclined towards style than safety."
	icon_state = "beret_greensilver"

/obj/item/clothing/head/beret/solgov/expedition
	name = "fleet beret"
	desc = "A black beret belonging to the NT fleet. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black"
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_head_unathi.dmi'
		)

/obj/item/clothing/head/beret/solgov/expedition/security
	name = "fleet security beret"
	desc = "A SolGov Fleet beret with a security crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_security"

/obj/item/clothing/head/beret/solgov/expedition/medical
	name = "fleet medical beret"
	desc = "A SolGov Fleet beret with a medical crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_medical"

/obj/item/clothing/head/beret/solgov/expedition/engineering
	name = "fleet engineering beret"
	desc = "A SolGov Fleet Corps beret with an engineering crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_engineering"

/obj/item/clothing/head/beret/solgov/expedition/supply
	name = "fleet supply beret"
	desc = "A SolGov Fleet beret with a supply crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_supply"

/obj/item/clothing/head/beret/solgov/expedition/service
	name = "fleet service beret"
	desc = "A SolGov Fleet beret with a service crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_service"

/obj/item/clothing/head/beret/solgov/expedition/exploration
	name = "fleet exploration beret"
	desc = "A SolGov Fleet Corps beret with an exploration crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_exploration"

/obj/item/clothing/head/beret/solgov/expedition/command
	name = "fleet officer's beret"
	desc = "A SolGov Fleet Corps beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_command"

/obj/item/clothing/head/beret/solgov/expedition/branch
	name = "\improper Field Operations beret"
	desc = "A Solar Fleet beret carrying insignia of the Field Operations section of the Surveyor Corps. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_fieldOps"

/obj/item/clothing/head/beret/solgov/expedition/branch/observatory
	name = "\improper Observatory beret"
	desc = "A Solar Fleet beret carrying insignia of the Observatory section of the Surveyor Corps. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_observatory"

/obj/item/clothing/head/beret/solgov/fleet
	name = "fleet beret"
	desc = "A navy blue beret belonging to the Solar Fleet. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy"

/obj/item/clothing/head/beret/solgov/fleet/security
	name = "fleet security beret"
	desc = "A Solar Fleet beret with a security crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_security"

/obj/item/clothing/head/beret/solgov/fleet/medical
	name = "fleet medical beret"
	desc = "A Solar Fleet beret with a medical crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_medical"

/obj/item/clothing/head/beret/solgov/fleet/engineering
	name = "fleet engineering beret"
	desc = "A Solar Fleet with an engineering crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_engineering"

/obj/item/clothing/head/beret/solgov/fleet/supply
	name = "fleet supply beret"
	desc = "A Solar Fleet beret with a supply crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_supply"

/obj/item/clothing/head/beret/solgov/fleet/service
	name = "fleet service beret"
	desc = "A Solar Fleet beret with a service crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_service"

/obj/item/clothing/head/beret/solgov/fleet/exploration
	name = "fleet exploration beret"
	desc = "A Solar Fleet beret with an exploration crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_exploration"

/obj/item/clothing/head/beret/solgov/fleet/command
	name = "fleet officer's beret"
	desc = "A Solar Fleet beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_command"

/obj/item/clothing/head/beret/solgov/fleet/dress
	name = "fleet dress beret"
	desc = "A white Solar Fleet beret. For personnel that are more inclined towards style than safety."
	icon_state = "beret_whiterim"

/obj/item/clothing/head/beret/solgov/fleet/dress/command
	name = "fleet officer's dress beret"
	desc = "A white Solar Fleet beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_whiterim_com"

/obj/item/clothing/head/beret/solgov/fleet/branch
	name = "solar fleet beret"
	desc = "A navy blue beret carrying insignia of the Solar Fleet. For sailors that are more inclined towards style than safety."
	icon_state = "beret_navy_first"

/obj/item/clothing/head/beret/solgov/fleet/branch/second
	name = "sol defense group fleet beret"
	desc = "A Solar Fleet beret carrying insignia of the Sol Defense Group. For counter-terrorists that are more inclined towards style than safety."
	icon_state = "beret_navy_second"

/obj/item/clothing/head/beret/solgov/fleet/branch/third
	name = "border patrol group fleet beret"
	desc = "A Solar Fleet beret carrying insignia of the Border Patrol Group. For border guards that are more inclined towards style than safety."
	icon_state = "beret_navy_third"

/obj/item/clothing/head/beret/solgov/fleet/branch/fourth
	name = "naval group 40 fleet beret"
	desc = "A Solar Fleet beret carrying insignia of Naval Group 40, an as needed task force operating under short term orders. For grunts that are more inclined towards style than safety."
	icon_state = "beret_navy_fourth"

/obj/item/clothing/head/beret/solgov/fleet/branch/fifth
	name = "special operations group fleet beret"
	desc = "A Solar Fleet beret carrying insignia of the Special Operations Group. For operators that are more inclined towards style than safety."
	icon_state = "beret_navy_fifth"

//ushanka

/obj/item/clothing/head/ushanka/solgov
	name = "fleet fur hat"
	desc = "A SolGov Fleet synthfur-lined hat for operating in cold environments."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	icon_state = "ecushankadown"
	icon_state_up = "ecushankaup"

/obj/item/clothing/head/ushanka/solgov/fleet
	name = "fleet fur hat"
	desc = "A SCG Fleet synthfur-lined hat for operating in cold environments."
	icon_state = "flushankadown"
	icon_state_up = "flushankaup"

/obj/item/clothing/head/ushanka/solgov/army
	name = "marine fur hat"
	desc = "An SCG Marine Corp synthfur-lined hat for operating in cold environments."
	icon_state = "barushankadown"
	icon_state_up = "barushankaup"

/obj/item/clothing/head/ushanka/solgov/army/green
	name = "green marine fur hat"
	desc = "An SCG Marine Corp synthfur-lined hat for operating in cold environments."
	icon_state = "arushankadown"
	icon_state_up = "mcushankaup"

//helmets and other such trash

/obj/item/clothing/head/helmet/solgov
	accessories = list(/obj/item/clothing/accessory/helmet_cover/blue/sol)

/obj/item/clothing/head/helmet/solgov/security
	name = "security helmet"
	desc = "A helmet with 'POLICE' printed on the back in silver lettering."
	icon_state = "helmet_security"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	accessories = null
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/onmob_head_helmet_unathi.dmi'
		)

/obj/item/clothing/head/helmet/solgov/command
	name = "command helmet"
	desc = "A helmet with 'COMMAND' printed on the back in gold lettering."
	icon_state = "helmet_command"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	accessories = null

/obj/item/clothing/head/helmet/solgov/pilot
	name = "pilot's helmet"
	desc = "A pilot's helmet for operating the cockpit in style. For when you want to protect your noggin AND look stylish."
	icon_state = "pilotgov"
	accessories = null

/obj/item/clothing/head/helmet/solgov/pilot/fleet
	name = "fleet pilot's helmet"
	desc = "A pilot's helmet for operating the cockpit in style. This one is worn by members of the Solar Fleet."
	icon_state = "pilotfleet"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	accessories = null

/obj/item/clothing/head/helmet/space/void/exploration
	camera = /obj/machinery/camera/network/helmet

//SolGov Hardsuits

/obj/item/clothing/head/helmet/space/void/engineering/alt/sol
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/atmos/alt/sol
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/pilot/sol
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/medical/alt/sol
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)
