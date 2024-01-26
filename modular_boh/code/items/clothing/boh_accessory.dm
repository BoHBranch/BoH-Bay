// marine patch

/obj/item/clothing/accessory/solgov/smc_patch
	name = "\improper Marine Corps Patch"
	desc = "A robust shoulder patch, carrying the symbol of the Solar Marine Corps, or SMC for short."
	icon = 'modular_boh/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_boh/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "smcpatch"

/obj/item/clothing/accessory/solgov/smc_patch/xeno
	name = "\improper Xenoic Division of the Marine Corps patch"
	desc = "A robust shoulder patch, carrying the symbol-mascot of Xenoic division, yellow-eyed devil dog."
	icon = 'modular_boh/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_boh/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "smcpatch13"

// Sixth Fleet Patch, as for bonus
// WE DON'T HAVE LORE FOR THIS, WHY ARE YOU DOING THIS TO ME -PurplePineapple
/obj/item/clothing/accessory/solgov/fleet_patch/sixth
	name = "\improper Sixth Fleet patch"
	desc = "A robust shoulder patch carrying insignia of the Sixth Fleet."
	icon = 'modular_boh/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_boh/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'modular_boh/icons/mob/onmob_cloak.dmi')
	icon_state = "fleetpatch6"

// Modular version for NT Patch
/obj/item/clothing/accessory/armor_tag/nt/dagon
	name = "\improper NANOTRASEN patch"
	desc = "An armor tag with the words NANOTRASEN printed in bottle green lettering on it."

// Dog Tags badge string rename, plus added for SMC and Fleet.
/obj/item/clothing/accessory/badge/solgov/tags
	badge_string = "SGV Dagon"

/obj/item/clothing/accessory/badge/solgov/tags/fleet
	badge_string = "SGF"

/obj/item/clothing/accessory/badge/solgov/tags/marine
	badge_string = "SMC"

// custom ribbon for loadout
/obj/item/clothing/accessory/ribbon/solgov/custom
	icon_state = "ribbon_custom"
	icon = 'modular_boh/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_boh/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'modular_boh/icons/mob/onmob_cloak.dmi')

/obj/item/clothing/accessory/ribbon/solgov/custom/color
	icon_state = "ribbon_custom_color"

// explorer ranks and spec pin
/obj/item/clothing/accessory/solgov/specialty/enlisted/explorer
	name = "explorer qualification pin"

// icon path for hestia stuff
/obj/item/clothing/accessory/solgov/rank
	icon = 'modular_boh/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_boh/icons/mob/onmob_accessories_solgov.dmi', slot_wear_suit_str = 'modular_boh/icons/mob/onmob_accessories_solgov.dmi')

/obj/item/clothing/accessory/solgov/rank/ec/enlisted
	name = "ranks (E-1 recruit explorer)"
	desc = "Insignia denoting the rank of Recruit Explorer."

/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e2
	name = "ranks (E-2 junior explorer)"
	desc = "Insignia denoting the rank of Junior Explorer."

// Fleet ranks. Icon overrides for now (useless on-mob, but good for in-hand/dropped or on examine).
/obj/item/clothing/accessory/solgov/rank/fleet
	icon_state = "FE0"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted
	icon_state = "FE1"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e2
	icon_state = "FE2"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e3
	icon_state = "FE3"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e4
	icon_state = "FE4"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e5
	icon_state = "FE5"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e6
	icon_state = "FE6"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e7
	icon_state = "FE7"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e8
	icon_state = "FE8"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9
	icon_state = "FE9"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt1
	icon_state = "FE9"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt2
	icon_state = "FE9"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt3
	icon_state = "FE9"

/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt4
	icon_state = "FE9"

/obj/item/clothing/accessory/solgov/rank/fleet/warrant_officer
	icon_state = "FW1"
	name = "ranks (W-1 junior warrant officer"
	desc = "Insignia denoting the rank of Junior Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/fleet/warrant_officer/w2
	icon_state = "FW2"
	name = "ranks (W-2 chief warrant officer"
	desc = "Insignia denoting the rank of Chief Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/fleet/warrant_officer/w3
	icon_state = "FW3"
	name = "ranks (W-3 senior chief warrant officer"
	desc = "Insignia denoting the rank of Senior Chief Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/fleet/warrant_officer/w4
	icon_state = "FW4"
	name = "ranks (W-4 master chief warrant officer"
	desc = "Insignia denoting the rank of Master Chief Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/fleet/warrant_officer/w5
	icon_state = "FW5"
	name = "ranks (W-5 command master chief warrant officer"
	desc = "Insignia denoting the rank of Command Master Chief Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/fleet/officer
	icon_state = "FO1"

/obj/item/clothing/accessory/solgov/rank/fleet/officer/wo1_monkey
	icon_state = "MO1"
	name = "makeshift ranks (MO-1 monkey officer second class)"
	desc = "Insignia denoting the rank of Monkey Officer Second Class. It looks to be upside down."

/obj/item/clothing/accessory/solgov/rank/fleet/officer/o2
	icon_state = "FO2"
	name = "ranks (O-2 lieutenant junior-grade)"
	desc = "Insignia denoting the rank of Lieutenant Junior-Grade."

/obj/item/clothing/accessory/solgov/rank/fleet/officer/o3
	icon_state = "FO3"

/obj/item/clothing/accessory/solgov/rank/fleet/officer/o4
	icon_state = "FO4"

/obj/item/clothing/accessory/solgov/rank/fleet/officer/o5
	icon_state = "FO5"

/obj/item/clothing/accessory/solgov/rank/fleet/officer/o6
	icon_state = "FO6"

/obj/item/clothing/accessory/solgov/rank/fleet/flag/o7
	icon_state = "FO7"

/obj/item/clothing/accessory/solgov/rank/fleet/flag/o8
	icon_state = "FO8"

/obj/item/clothing/accessory/solgov/rank/fleet/flag/o9
	icon_state = "FO9"

/obj/item/clothing/accessory/solgov/rank/fleet/flag/o10
	icon_state = "FO10"

/obj/item/clothing/accessory/solgov/rank/fleet/flag/o10_alt
	icon_state = "FO10"

// ranks - proper marines and now with actual individal insignias
/obj/item/clothing/accessory/solgov/rank/marine_corps
	icon_state = "ME0"
	name = "marine ranks"
	desc = "Insignia denoting marine rank of some kind. These appear blank."
	icon = 'modular_boh/icons/obj/obj_accessories_boh.dmi'

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted
	icon_state = "ME1"
	name = "ranks (E-1 private)"
	desc = "Insignia denoting the rank of Private."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e2
	icon_state = "ME2"
	name = "ranks (E-2 private first class)"
	desc = "Insignia denoting the rank of Private First Class."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e3
	icon_state = "ME3"
	name = "ranks (E-3 lance corporal)"
	desc = "Insignia denoting the rank of Lance Corporal."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e4
	icon_state = "ME4"
	name = "ranks (E-4 corporal)"
	desc = "Insignia denoting the rank of Corporal."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e5
	icon_state = "ME5"
	name = "ranks (E-5 sergeant)"
	desc = "Insignia denoting the rank of Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e6
	icon_state = "ME6"
	name = "ranks (E-6 staff sergeant)"
	desc = "Insignia denoting the rank of Staff Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e7
	icon_state = "ME7"
	name = "ranks (E-7 gunnery sergeant)"
	desc = "Insignia denoting the rank of Gunnery Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8
	icon_state = "ME8"
	name = "ranks (E-8 master sergeant)"
	desc = "Insignia denoting the rank of Master Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8_alt
	icon_state = "ME8A"
	name = "ranks (E-8 first sergeant)"
	desc = "Insignia denoting the rank of First Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9
	icon_state = "ME9"
	name = "ranks (E-9 master gunnery sergeant)"
	desc = "Insignia denoting the rank of Master Gunnery Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9_alt
	icon_state = "ME9A"
	name = "ranks (E-9 sergeant major)"
	desc = "Insignia denoting the rank of Sergeant Major."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9_alt2
	icon_state = "ME9B"
	name = "ranks (E-9 sergeant major of the marine Corps)"
	desc = "Insignia denoting the rank of Sergeant Major of the Marine Corps."

/obj/item/clothing/accessory/solgov/rank/marine_corps/warrant_officer
	icon_state = "MW1"
	name = "ranks (W-1 second warrant officer)"
	desc = "Insignia denoting the rank of Second Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/warrant_officer/w2
	icon_state = "MW2"
	name = "ranks (W-2 first warrant officer)"
	desc = "Insignia denoting the rank of First Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/warrant_officer/w3
	icon_state = "MW3"
	name = "ranks (W-3 master warrant officer)"
	desc = "Insignia denoting the rank of Master Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/warrant_officer/w4
	icon_state = "MW4"
	name = "ranks (W-4 major warrant officer)"
	desc = "Insignia denoting the rank of Major Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/warrant_officer/w5
	icon_state = "MW5"
	name = "ranks (W-5 general warrant officer)"
	desc = "Insignia denoting the rank of General Warrant Officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer
	icon_state = "MO1A" //Punitelli is the true MO1
	name = "ranks (O-1 second lieutenant)"
	desc = "Insignia denoting the rank of Second Lieutenant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o2
	icon_state = "MO2"
	name = "ranks (O-2 first lieutenant)"
	desc = "Insignia denoting the rank of First Lieutenant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3
	icon_state = "MO3"
	name = "ranks (O-3 captain)"
	desc = "Insignia denoting the rank of Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt
	icon_state = "MO3"
	name = "ranks (O-3 Marine captain)"
	desc = "Insignia denoting the rank of Marine Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt2
	icon_state = "MO3"
	name = "ranks (O-3 specialist captain)"
	desc = "Insignia denoting the rank of Specialist Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o4
	icon_state = "MO4"
	name = "ranks (O-4 major)"
	desc = "Insignia denoting the rank of Major."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o5
	icon_state = "MO5"
	name = "ranks (O-5 lieutenant colonel)"
	desc = "Insignia denoting the rank of Lieutenant Colonel."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o6
	icon_state = "MO6"
	name = "ranks (O-6 colonel)"
	desc = "Insignia denoting the rank of Colonel."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag
	icon_state = "MO7"
	name = "ranks (O-7 brigadier general)"
	desc = "Insignia denoting the rank of Brigadier General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o8
	icon_state = "MO8"
	name = "ranks (O-8 major general)"
	desc = "Insignia denoting the rank of Major General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o9
	icon_state = "MO9"
	name = "ranks (O-9 lieutenant general)"
	desc = "Insignia denoting the rank of Lieutenant General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o10
	icon_state = "MO10"
	name = "ranks (O-10 general)"
	desc = "Insignia denoting the rank of General."

// ### SDTF ranks.

/obj/item/clothing/accessory/skrellian/rank/SDTF
	name = "Skrellian Ranks"
	desc = "Insigna denothing some sort of position in the SDTF. This one is blank."
	icon = 'modular_boh/icons/obj/obj_skrell_accessories.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_boh/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'modular_boh/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "skrell_blank"
	slot = ACCESSORY_SLOT_RANK
	gender = PLURAL

/obj/item/clothing/accessory/skrellian/rank/SDTF/QZQX
	name = "ranks (Qrii-Zuumqix)"
	desc = "Skrellian holographic insigna denoting the position of Qrii-Zuumqix"
	icon_state = "skrell_qriizuumqix"

/obj/item/clothing/accessory/skrellian/rank/SDTF/QVX
	name = "ranks (Qrii-Vuxix)"
	desc = "Skrellian holographic insigna denoting the position of Qrii-Vuxix"
	icon_state = "skrell_qriivuxix"
