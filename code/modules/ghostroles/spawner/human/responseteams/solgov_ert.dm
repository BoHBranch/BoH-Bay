/datum/ghostspawner/human/ert/solgov
	name = "SolGov Responder"
	short_name = "sgert"
	desc = "A responder of the 11th Rapid Response Unit."
	welcome_message = "You're part of the 11th Rapid Response Unit. You were in the area on patrol when you recieved a distress signal from the Dagon."
	max_count = 2
	outfit = /datum/outfit/admin/ert/solgov
	mob_name_prefix = "Tpr. "
	possible_species = list(SPECIES_HUMAN)
	spawnpoints = list("SGERTSpawn")

/datum/ghostspawner/human/ert/solgov/specialist
	name = "SolGov Combat Sapper"
	short_name = "sgcs"
	desc = "A combat sapper of the 11th Rapid Response Unit."
	max_count = 1
	outfit = /datum/outfit/admin/ert/solgov/specialist
	mob_name_prefix = "S/Tpr. "

/datum/ghostspawner/human/ert/solgov/specialist/med
	name = "SolGov Corpsman"
	short_name = "sgmed"
	desc = "A corpsman of the 11th Rapid Response Unit."
	outfit = /datum/outfit/admin/ert/solgov/specialist/medical

/datum/ghostspawner/human/ert/solgov/leader
	name = "SolGov Fireteam Leader"
	short_name = "sglead"
	desc = "The leader of this fireteam of the 11th Rapid Response Unit."
	max_count = 1
	mob_name_prefix = "Sgt. "