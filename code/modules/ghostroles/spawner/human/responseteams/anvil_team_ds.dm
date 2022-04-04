/datum/ghostspawner/human/ert/anvil_team_ds
	name = "SolGov Anvil Team Soldier"
	short_name = "sats"
	max_count = 3
	desc = "An elite team designed for fighting extremely dangerous threats."
	welcome_message = "The SGV Dagon has been compromised. Ensure the threat is contained. Full execution permission granted"
	outfit = /datum/outfit/admin/anvil_team_ds
	spawnpoints = list("DeathERTSpawn")
	possible_species = list(SPECIES_HUMAN)
	mob_name_prefix = "Tpr. "

	var/deployed = TRUE

/datum/ghostspawner/human/ert/anvil_team_ds/gunner
	name = "SolGov Anvil Team Gunner"
	short_name = "satg"
	max_count = 1
	desc = "A heavy gunner for Anvil Team, armed with an AT gun."
	outfit = /datum/outfit/admin/anvil_team_ds/gunner
	mob_name_prefix = "Spec. "

/datum/ghostspawner/human/ert/anvil_team_ds/leader
	name = "SolGov Anvil Team Leader"
	short_name = "satl"
	max_count = 1
	desc = "Leader of Anvil Team."
	outfit = /datum/outfit/admin/deathsquad/leader
	mob_name_prefix = "Ldr. "