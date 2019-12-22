/////////
// Skrell Masks
/////////
/obj/item/clothing/mask/gas/skrell
	name = "tactical mask"
	desc = "A close-fitting tactical mask that can be connected to an air supply. This one appears to be fitted with incredibly advanced filters. \
	You'd probably be safe wagering that nothing but breathable air will be permited inside."
	icon_state = "swat"
	item_state = "swat"
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_STRONG
		) //Worse armor in trade for immunity from gasses.
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