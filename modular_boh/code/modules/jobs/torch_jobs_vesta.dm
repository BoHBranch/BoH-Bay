// Consist of modular changes, for now.
//#VESTA.BAY#: Overrides our allowed branches and ranks for torch jobs.

// Command
// Captain is basically a modular fix.
/datum/job/captain
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/CO/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o6
	)

/datum/job/hop
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/XO/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/command/XO/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/marine_corps/o4,
		/datum/mil_rank/marine_corps/o5
	)

/datum/job/rd
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/research/fleet/cso
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)

/datum/job/cmo
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/cmo/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/command/cmo/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/marine_corps/o4,
		/datum/mil_rank/marine_corps/o5
	)

/datum/job/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/marine_corps/o3,
		/datum/mil_rank/marine_corps/o4
	)

/datum/job/hos
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/cos/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/command/cos/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/marine_corps/o2,
		/datum/mil_rank/marine_corps/o3
	)

/datum/job/bridgeofficer
	alt_titles = list(
		"Helmsman",
		"Tactical Officer",
		"Sensor Operator"
	)
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/marine_corps/o1,
		/datum/mil_rank/marine_corps/o2
	)
/***/

// Engineering
/datum/job/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2,
		/datum/mil_rank/fleet/w3,
		/datum/mil_rank/marine_corps/e7,
		/datum/mil_rank/marine_corps/e8,
		/datum/mil_rank/marine_corps/w1,
		/datum/mil_rank/marine_corps/w2,
		/datum/mil_rank/marine_corps/w3

	)

/datum/job/engineer
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/engineering/contractor,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/marine_corps/e6,
		/datum/mil_rank/civ/contractor
	)

/datum/job/engineer_trainee
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3
	)
/***/

// Exploration
/datum/job/pathfinder
	allowed_branches = list(/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/exploration/pathfinder/fleet)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3
	)

/datum/job/nt_pilot
	allowed_branches = list(
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/passenger/research/nt_pilot,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/exploration/pilot/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2
	)

/datum/job/explorer
	alt_titles = list(
		"Exploratory Technician" = /decl/hierarchy/outfit/job/torch/crew/exploration/technician,
		"Exploratory Medic" = /decl/hierarchy/outfit/job/torch/crew/exploration/medic
	)
	allowed_branches = list(/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/exploration/fleet
	)

	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5
	)
	min_skill = list(SKILL_EVA     = SKILL_ADEPT,
					 SKILL_SCIENCE = SKILL_BASIC,
					 SKILL_COMBAT  = SKILL_BASIC)
/***/

// Medical
/datum/job/senior_doctor
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/senior/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/medical/senior/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/marine_corps/o3,
		/datum/mil_rank/marine_corps/o4,
		/datum/mil_rank/civ/contractor
	)

/datum/job/junior_doctor
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/junior/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/medical/junior/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/marine_corps/o1,
		/datum/mil_rank/marine_corps/o2,
		/datum/mil_rank/civ/contractor
	)

/datum/job/doctor
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/marine_corps/e6,
		/datum/mil_rank/civ/contractor
	)

/datum/job/medical_trainee
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3
	)

/datum/job/psychiatrist
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/marine_corps/o2,
		/datum/mil_rank/marine_corps/o3
	)

/datum/job/chemist
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/chemist/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/chemist/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/marine_corps/w1,
		/datum/mil_rank/marine_corps/w2,
		/datum/mil_rank/marine_corps/o1,
		/datum/mil_rank/marine_corps/o2
	)
/***/

// Research
/datum/job/senior_scientist
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/research/fleet/senior_scientist
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o4
	)

/datum/job/scientist
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/research/fleet/scientist,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/scientist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/torch/passenger/research/scientist/solgov
	)

/datum/job/scientist_assistant
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/research/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/assist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/torch/passenger/research/assist/solgov
	)
/***/

// Security
/datum/job/warden
	title = "Brig Chief"
	alt_titles = list(
		"Warden"
	)
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/security/brig_chief/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/security/brig_chief/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2,
		/datum/mil_rank/marine_corps/e6,
		/datum/mil_rank/marine_corps/e7,
		/datum/mil_rank/marine_corps/e8,
		/datum/mil_rank/marine_corps/w1,
		/datum/mil_rank/marine_corps/w2
	)

/datum/job/detective
	allowed_branches = list(
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/contractor,
		/datum/mil_branch/private_security,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/marine,
		/datum/mil_branch/solgov = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/agent
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/private_security/pcrc_agt = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/pcrc_agent,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5
	)

/datum/job/officer
	title = "Security Guard"
	alt_titles = list(
		"Master at Arms",
		"Enforcer",
		"Military Police"
	)
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/security/maa/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/security/maa/marine,
		/datum/mil_branch/private_security
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/private_security/pcrc = /decl/hierarchy/outfit/job/torch/crew/security/maa/pcrc,
		/datum/mil_rank/private_security/saare = /decl/hierarchy/outfit/job/torch/crew/security/maa/saare
	)
/***/

// Service
/datum/job/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/chaplain/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/service/chaplain/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/marine_corps/o1,
		/datum/mil_rank/marine_corps/o2
	)

/datum/job/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/janitor/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/service/janitor/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4
	)

/datum/job/chef
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/cook/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/service/cook/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4
	)

/datum/job/crew
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/crewman/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/service/crewman/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
	)
/***/

// Supply
/datum/job/qm
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/fleet,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2,
		/datum/mil_rank/fleet/w3,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/marine_corps/w1,
		/datum/mil_rank/marine_corps/w2,
		/datum/mil_rank/marine_corps/w3,
		/datum/mil_rank/marine_corps/o2,
		/datum/mil_rank/marine_corps/o3
	)

/datum/job/cargo_tech
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/tech/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/supply/contractor,
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/supply/tech/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5,
		/datum/mil_rank/civ/contractor
	)

/datum/job/mining
	allowed_branches = list(
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/passenger/research/prospector,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/tech/fleet/prospector
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5
	)
/***/

// Corporate
/datum/job/bodyguard
	allowed_branches = list(/datum/mil_branch/private_security, /datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/private_security/pcrc = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc,
		/datum/mil_rank/private_security/pcrc_agt = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc/agent,
		/datum/mil_rank/private_security/saare = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/saare,
		/datum/mil_rank/civ/contractor
	)

/datum/job/bodyguard/get_description_blurb()
	return "You are the Loss Prevention Associate. Your job is to prevent the loss of the Liason's life - even at the cost of your own. Good luck."
/***/

// Misc
/datum/job/assistant
	skill_points = 18

