/////////
// Anomaly Up-Armored
/////////
/obj/item/clothing/suit/bio_suit/anomaly/strong
	name = "Heavy anomaly suit"
	desc = "A suit that protects against exotic alien energies and biological contamination. This one appears to have additional protection, and, as a result, is much bulkier."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_PADDED,
		bio =  ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/head/bio_hood/anomaly/strong
	name = "Heavy anomaly hood"
	desc = "A hood that protects the head and face from exotic alien energies and biological contamination. It appears to have additional protection, making it bulkier."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_PADDED,
		bio =  ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE

/////////
// Documents
/////////
/obj/item/documents/epp
	name = "experimental pulse project"
	desc = "\"Top Secret\" faxes between the Captain, Executive and other officials of NanoTrasen. They seem to be discussing something rather important, regarding an 'EPP'. \
	Whatever the hell that means."
	description_antag = "It seems to detail the creation, deployment and internal workings of the device in question. This'd probably sell for quite a bit to NT's competition."
	icon_state = "docs_verified"