/datum/ghostspawner/human/ert/miners
	name = "Mining Thug"
	short_name = "MNTG"
	max_count = 4
	desc = "A group of rockhoppers and mining crew."
	welcome_message = "You are a crewmember of a nearby mining vessel. A SolGov Vessel has called out a distress signal for you to investigate."
	outfit = /datum/outfit/admin/miner
	spawnpoints = list("PoorERTSpawn")
	possible_species = list(SPECIES_HUMAN)

/datum/ghostspawner/human/ert/miners/medic
	name = "Mining Medic"
	short_name = "MNMDC"
	max_count = 1
	desc = "You are a rockhopper."
	welcome_message = "You are the medic for a nearby mining vessel. Keep your fellow crewmembers healthy while they investigate this ship. "
	outfit = /datum/outfit/admin/miner/medic
	spawnpoints = list("PoorERTSpawn")
	possible_species = list(SPECIES_HUMAN)

/datum/ghostspawner/human/ert/miners/engineer
	name = "Mining Engineer"
	short_name = "MNMDC"
	max_count = 1
	desc = "You are a rockhopper."
	welcome_message = "You are the engineer for a nearby mining vessel. Be the main guy for when the team needs something mechanical fixed. "
	outfit = /datum/outfit/admin/miner/engineer
	spawnpoints = list("PoorERTSpawn")
	possible_species = list(SPECIES_HUMAN)