/datum/gear/uniform/misc_military
	display_name = "marine fatigue selection"
	description = "A selection of marine uniforms."
	path = /obj/item/clothing/under
	cost = 0
	allowed_branches = list(/datum/mil_branch/marine_corps)

/datum/gear/uniform/misc_military/New()
	..()
	var/uniform = list()
	uniform += /obj/item/clothing/under/solgov/utility/army/urban
	uniform += /obj/item/clothing/under/solgov/utility/army/tan
	uniform += /obj/item/clothing/under/solgov/utility/fleet/combat/marine
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(uniform)

/datum/gear/uniform/fleet
	display_name = "fleet coveralls"
	path = /obj/item/clothing/under/solgov/utility/fleet
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)

/datum/gear/uniform/fleet/officer
	display_name = "fleet officer's coveralls"
	path = /obj/item/clothing/under/solgov/utility/fleet/officer
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = COMMANDANDOFFICER_ROLES

/datum/gear/uniform/fleet/polopants/command
	display_name = "fleet polo uniform, command"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants/command
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = COMMANDANDOFFICER_ROLES

/datum/gear/uniform/fleet/polopants/engineering
	display_name = "fleet polo uniform, engineering"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = ENGINEERING_ROLES

/datum/gear/uniform/fleet/polopants/security
	display_name = "fleet polo uniform, security"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants/security
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = SECURITY_ROLES

/datum/gear/uniform/fleet/polopants/medical
	display_name = "fleet polo uniform, medical"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants/medical
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = MEDICAL_ROLES

/datum/gear/uniform/fleet/polopants/supply
	display_name = "fleet polo uniform, supply"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants/supply
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = SUPPLY_ROLES

/datum/gear/uniform/fleet/polopants/service
	display_name = "fleet polo uniform, service"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants/service
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = SERVICE_ROLES

/datum/gear/uniform/fleet/polopants/exploration
	display_name = "fleet polo uniform, exploration"
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_roles = EXPLORATION_ROLES