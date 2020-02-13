/////////
// CBRN Mask
/////////
/obj/item/clothing/mask/gas/cbrn
	name = "CBRN Helmet Combination"
	desc = "A close-fitting tactical mask and helmet that can be connected to an air supply. This one appears to be fitted with incredibly advanced filters. \
	You'd probably be safe wagering that nothing but breathable air will be permited inside, so long as the exterior atmosphere contains such."
	icon = 'icons/boh/mob/onmob/onmob_head.dmi'
	icon_state = "armorcbrn"
	item_state = "armorcbrn"
	unacidable = 1
	body_parts_covered = HEAD|FACE|EYES
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	filtered_gases = list(
		GAS_CO2,
		GAS_METHYL_BROMIDE,
		GAS_PHORON,
		GAS_N2O,
		GAS_METHANE,
		GAS_ALIEN,
		GAS_HYDROGEN,
		GAS_DEUTERIUM,
		GAS_TRITIUM,
		GAS_HELIUM,
		GAS_ARGON,
		GAS_KRYPTON,
		GAS_NEON,
		GAS_XENON,
		GAS_NO2,
		GAS_NO,
		GAS_CHLORINE,
		GAS_STEAM,
		GAS_SULFUR,
		GAS_AMMONIA,
		GAS_CO
	)

/////////
// CBRN Suit
/////////
/obj/item/clothing/suit/bio_suit/cbrn
	name = "Heavy CBRN Rig"
	desc = "A suit that protects against chemical and biological contamination."
	icon = 'icons/boh/mob/onmob/onmob_suit.dmi'
	icon_state = "cbrn_sec"
	item_state = "cbrn_sec"
	unacidable = 1
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio =  ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	item_flags = ITEM_FLAG_AIRTIGHT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS