// For alternative fleet uniform

/decl/hierarchy/mil_uniform
	var/pt_under_alt = null
	var/pt_shoes_alt = null

	var/utility_under_alt = null
	var/utility_shoes_alt = null
	var/utility_hat_alt = null
	var/utility_extra_alt = null

	var/service_under_alt = null
	var/service_skirt_alt = null
	var/service_over_alt = null
	var/service_shoes_alt = null
	var/service_hat_alt = null
	var/service_gloves_alt = null
	var/service_extra_alt = null

	var/dress_under_alt = null
	var/dress_skirt_alt = null
	var/dress_over_alt = null
	var/dress_shoes_alt = null
	var/dress_hat_alt = null
	var/dress_gloves_alt = null
	var/dress_extra_alt = null

// Expeditionary Fleet (overrides normal fleet)
/decl/hierarchy/mil_uniform/fleet
	name = "Master NTEF outfit"
	hierarchy_type = /decl/hierarchy/mil_uniform/fleet
	branches = list(/datum/mil_branch/fleet)

	pt_under = /obj/item/clothing/under/solgov/pt/expeditionary
	pt_under_alt = /obj/item/clothing/under/solgov/pt/fleet
	pt_shoes = /obj/item/clothing/shoes/black

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/soft/solgov/expedition
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition, /obj/item/clothing/head/ushanka/solgov, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov, /obj/item/clothing/shoes/jackboots/unathi)
	utility_hat_alt = /obj/item/clothing/head/solgov/utility/fleet
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,/obj/item/clothing/head/soft/solgov/fleet)

	service_under = /obj/item/clothing/under/solgov/service/expeditionary
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary
	service_under_alt = /obj/item/clothing/under/solgov/service/fleet
	service_skirt_alt = /obj/item/clothing/under/solgov/service/fleet/skirt

	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/solgov/service/expedition
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/garrison

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition
	dress_under_alt = /obj/item/clothing/under/solgov/service/fleet
	dress_skirt_alt = /obj/item/clothing/under/solgov/service/fleet/skirt
	dress_over_alt = /obj/item/clothing/suit/dress/solgov/fleet/sailor
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/solgov/service/expedition
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	dress_gloves = /obj/item/clothing/gloves/white

	dress_extra = list(/obj/item/clothing/accessory/solgov/ec_scarf)
	dress_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/com //Can only be officers
	name = "NTEF command"
	departments = COM

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/cmd)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/cmd)

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/command
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/command
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/com/seniorofficer
	name = "NTEF senior command"
	min_rank = 15

	service_hat = /obj/item/clothing/head/solgov/service/expedition/senior_command

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command/cdr
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/senior_command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/com/capt //Can only be officers
	name = "NTEF captain"
	min_rank = 16

	utility_hat = /obj/item/clothing/head/soft/solgov/expedition/co

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command/capt
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/captain

/decl/hierarchy/mil_uniform/fleet/com/flagofficer
	name = "NTEF flag command"
	min_rank = 17

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/com/flagofficer/adm //Can only be officers
	name = "NTEF admiral"
	min_rank = 18

	utility_hat = /obj/item/clothing/head/soft/solgov/expedition/co

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command/adm
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/captain

/decl/hierarchy/mil_uniform/fleet/eng
	name = "NTEF engineering"
	departments = ENG

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/engineering
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/engineering,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/engineering
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/engineering,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/engineering
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/engineering
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/engineering

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/engineering
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/engineering

/decl/hierarchy/mil_uniform/fleet/eng/noncom
	name = "NTEF engineering NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/eng/snco
	name = "NTEF engineering SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/eng/officer
	name = "NTEF engineering CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/engineering
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/engineering
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/engineering
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/engineering/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/engineering
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/engineering
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/eng/officer/com //Can only be officers
	name = "NTEF engineering command"
	departments = ENG|COM

/decl/hierarchy/mil_uniform/fleet/eng/officer/com/seniorofficer
	name = "NTEF engineering senior command"
	min_rank = 15

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/eng/officer/com/flagofficer
	name = "NTEF engineering flag command"
	min_rank = 17

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/sec
	name = "NTEF security"
	departments = SEC

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/security
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/security,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec)

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/security
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/security
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/security

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/security
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/security
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/security,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec,
						 /obj/item/clothing/under/solgov/utility/fleet/security)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/combat/security

/decl/hierarchy/mil_uniform/fleet/sec/noncom
	name = "NTEF security NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/sec/snco
	name = "NTEF security SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/sec/officer
	name = "NTEF security CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec)
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec)
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/security
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/security
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/security/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/security
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/security
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sec/officer/com //Can only be officers
	name = "NTEF security command"
	departments = SEC|COM

/decl/hierarchy/mil_uniform/fleet/sec/officer/com/seniorofficer
	name = "NTEF security senior command"
	min_rank = 15

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/sec/officer/com/flagofficer
	name = "NTEF security flag command"
	min_rank = 17

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/med
	name = "NTEF medical"
	departments = MED

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/medical
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/medical,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/medical,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/combat/medical,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/medical
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/medical
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/medical

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/medical
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/medical

	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/medical

/decl/hierarchy/mil_uniform/fleet/med/noncom
	name = "NTEF medical NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/med/snco
	name = "NTEF medical SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/med/officer
	name = "NTEF medical CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/medical
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/medical
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/medical
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/medical/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/medical
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/medical
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/med/officer/com //Can only be officers
	name = "NTEF medical command"
	departments = MED|COM

/decl/hierarchy/mil_uniform/fleet/med/officer/com/seniorofficer
	name = "NTEF medical senior command"
	min_rank = 15

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/med/officer/com/flagofficer
	name = "NTEF medical flag command"
	min_rank = 17

	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/sup
	name = "NTEF supply"
	departments = SUP

	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/supply,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/supply
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/supply,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)
	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/supply

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/supply
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/supply
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/supply

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/supply
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/supply

/decl/hierarchy/mil_uniform/fleet/sup/noncom
	name = "NTEF supply NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/sup/snco
	name = "NTEF supply SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/sup/officer
	name = "NTEF supply CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/supply
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/supply
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/supply
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/supply
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/supply
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sup/seniorofficer
	name = "NTEF supply senior command"
	min_rank = 15

	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/command

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/command
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sup/flagofficer
	name = "NTEF supply flag command"
	min_rank = 17

	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/srv
	name = "NTEF service"
	departments = SRV

	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/service,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/service
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/service,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)
	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/service

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/service
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/service
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/service

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/service
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/service

/decl/hierarchy/mil_uniform/fleet/srv/noncom
	name = "NTEF service NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/srv/snco
	name = "NTEF service SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/srv/officer
	name = "NTEF service CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/service
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/service
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/service
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/service/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/service
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/service
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/exp
	name = "NTEF exploration"
	departments = EXP

	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/exploration,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/exploration
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/exploration,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/combat/exploration,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)
	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/exploration

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/exploration
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/exploration
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/exploration

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/exploration
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/exploration

/decl/hierarchy/mil_uniform/fleet/exp/noncom
	name = "NTEF exploration NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/exp/snco
	name = "NTEF exploration SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/exp/officer
	name = "NTEF exploration CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/exploration
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/exploration
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/exploration
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/exploration/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/exploration
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/exploration
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/spt
	name = "NTEF command support"
	departments = SPT

	utility_under= /obj/item/clothing/under/solgov/utility/expeditionary/command
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/shoes/jackboots/unathi,
						 /obj/item/clothing/gloves/thick/duty/solgov/cmd)

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/command
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/command

	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command

/decl/hierarchy/mil_uniform/fleet/spt/noncom
	name = "NTEF support NCO"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/spt/snco
	name = "NTEF support SNCO"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/spt/officer
	name = "NTEF command support CO"
	min_rank = 11

	utility_under= /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command

	service_under= /obj/item/clothing/under/solgov/service/expeditionary/command/command
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/command
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command
	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/spt/seniorofficer
	name = "NTEF senior command support"
	min_rank = 15

	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/command

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/command
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/spt/flagofficer
	name = "NTEF flag command support"
	min_rank = 17

	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet)
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over_alt = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_over_alt = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra_alt = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sci
	name = "NTEF science"
	departments = SCI

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/research
	utility_extra = list(/obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/suit/storage/toggle/labcoat/science/ec)

	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/research
	service_under = /obj/item/clothing/under/solgov/service/expeditionary/research
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/research

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/research
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt/research

/decl/hierarchy/mil_uniform/fleet/sci/senior
	name = "NTEF science senior"
	min_rank = 4

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/senior

/decl/hierarchy/mil_uniform/fleet/sci/chief
	name = "NTEF science chief"
	min_rank = 7

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/chief

/decl/hierarchy/mil_uniform/fleet/sci/officer
	name = "NTEF science CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary/officer/research
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/suit/storage/toggle/labcoat/science/ec)

	service_under = /obj/item/clothing/under/solgov/service/expeditionary/command/research
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/research
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary/research/command
	service_hat = /obj/item/clothing/head/solgov/service/expedition/command

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary/command/research
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/command/skirt/research
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition/command
	dress_hat = /obj/item/clothing/head/solgov/service/expedition/command

/decl/hierarchy/mil_uniform/fleet/sci/officer/com //Can only be officers
	name = "NTEF science command"
	departments = SCI|COM

	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov,
						 /obj/item/clothing/suit/storage/toggle/labcoat/science/ec,
						 /obj/item/clothing/suit/storage/toggle/labcoat/rd/ec)
