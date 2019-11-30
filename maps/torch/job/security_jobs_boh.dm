/datum/job/officer
	title = "Security Guard"
	alt_titles = list(
		"Master at Arms",
		"Enforcer",
		"Military Police")

	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/security/maa/fleet,
		/datum/mil_branch/army/marine_corps,
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/army/marine_corps/e2,
		/datum/mil_rank/army/marine_corps/e3,
		/datum/mil_rank/army/marine_corps/e4,
	)
