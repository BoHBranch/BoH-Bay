// For alternative fleet uniform

/singleton/hierarchy/mil_uniform
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

// SolGov Fleet, now with 100% less bloat
/singleton/hierarchy/mil_uniform/fleet
	name = "Master Fleet outfit"
	hierarchy_type = /singleton/hierarchy/mil_uniform/fleet
	branches = list(/datum/mil_branch/fleet)

	pt_under = /obj/item/clothing/under/solgov/pt/fleet
	pt_shoes = /obj/item/clothing/shoes/black

	utility_under = /obj/item/clothing/under/solgov/utility/fleet
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/solgov/utility/fleet
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,/obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet, /obj/item/clothing/shoes/jackboots/unathi)

	service_under = /obj/item/clothing/under/solgov/service/fleet
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt

	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/garrison

	dress_under = /obj/item/clothing/under/solgov/service/fleet
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt
	dress_over = /obj/item/clothing/suit/dress/solgov/fleet/sailor
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_gloves = /obj/item/clothing/gloves/white

	dress_extra = list(/obj/item/clothing/accessory/solgov/ec_scarf, /obj/item/clothing/accessory/cloak/boh/dress)
	dress_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/com //Can only be officers
	name = "Fleet command"
	departments = COM

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command
	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/cmd,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/cmd,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/command,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/command)

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/accessory/solgov/ec_scarf, /obj/item/clothing/accessory/cloak/boh/dress/command, /obj/item/material/sword/replica/officersword)

/singleton/hierarchy/mil_uniform/fleet/com/seniorofficer
	name = "Fleet senior command"
	min_rank = 19

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	service_under = /obj/item/clothing/under/solgov/service/fleet/command

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/com/capt //Can only be officers
	name = "Fleet captain"
	min_rank = 21
	service_under = /obj/item/clothing/under/solgov/service/fleet/command
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/captain

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/captain
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/captain

/singleton/hierarchy/mil_uniform/fleet/com/flagofficer
	name = "Fleet flag command"
	min_rank = 22

	service_under = /obj/item/clothing/under/solgov/service/fleet/flag
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_under = /obj/item/clothing/under/solgov/service/fleet/flag
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/com/flagofficer/adm //Can only be officers
	name = "Fleet admiral"
	min_rank = 23

/singleton/hierarchy/mil_uniform/fleet/eng
	name = "Fleet engineering"
	departments = ENG
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/engineering
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/engineering,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/eng,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet,
						 /obj/item/clothing/shoes/jackboots/unathi)


	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/engineering, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/eng/noncom
	name = "Fleet engineering NCO"
	min_rank = 4


	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/eng/snco
	name = "Fleet engineering SNCO"
	min_rank = 7

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/polopants,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/engineering, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/eng/warrant
	name = "Fleet engineering Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/engineering, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/eng/officer
	name = "Fleet engineering CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/eng,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/engineering, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/eng/officer/com //Can only be officers
	name = "Fleet engineering command"
	departments = ENG|COM

/singleton/hierarchy/mil_uniform/fleet/eng/officer/com/seniorofficer
	name = "Fleet engineering senior command"
	min_rank = 19

	service_under = /obj/item/clothing/under/solgov/service/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/eng/officer/com/flagofficer
	name = "Fleet engineering flag command"
	min_rank = 22

	service_under = /obj/item/clothing/under/solgov/service/fleet/flag
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_under = /obj/item/clothing/under/solgov/service/fleet/flag
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/sec
	name = "Fleet security"
	departments = SEC

	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/security,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/sec,
						 /obj/item/clothing/under/solgov/utility/fleet/security,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/security,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/security)

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/combat/security
	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/security, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sec/noncom
	name = "Fleet security NCO"
	min_rank = 4


	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/sec/snco
	name = "Fleet security SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/security, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sec/warrant
	name = "Fleet security Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/security, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/sec/officer
	name = "Fleet security CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/sec,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/security,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/security,
						 /obj/item/clothing/shoes/jackboots/unathi)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/security, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/sec/officer/com //Can only be officers
	name = "Fleet security command"
	departments = SEC|COM

/singleton/hierarchy/mil_uniform/fleet/sec/officer/com/seniorofficer
	name = "Fleet security senior command"
	min_rank = 19

	service_under = /obj/item/clothing/under/solgov/service/fleet/command
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/sec/officer/com/flagofficer
	name = "Fleet security flag command"
	min_rank = 22

	service_under = /obj/item/clothing/under/solgov/service/fleet/flag
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_under = /obj/item/clothing/under/solgov/service/fleet/flag
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/med
	name = "Fleet medical"
	departments = MED

	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/medical,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/combat/medical,
						 /obj/item/clothing/gloves/thick/duty/solgov/med,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/med,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/medical,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/medical)

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/medical
	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/medical, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/med/noncom
	name = "Fleet medical NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/med/snco
	name = "Fleet medical SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/medical, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/med/warrant
	name = "Fleet medical Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/medical, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/med/officer
	name = "Fleet medical CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/med,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/med,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/medical,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/medical)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/medical, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/med/officer/com //Can only be officers
	name = "Fleet medical command"
	departments = MED|COM

/singleton/hierarchy/mil_uniform/fleet/med/officer/com/seniorofficer
	name = "Fleet medical senior command"
	min_rank = 19

	service_under = /obj/item/clothing/under/solgov/service/fleet/command
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/med/officer/com/flagofficer
	name = "Fleet medical flag command"
	min_rank = 22

	service_under = /obj/item/clothing/under/solgov/service/fleet/flag
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_under = /obj/item/clothing/under/solgov/service/fleet/flag
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/sup
	name = "Fleet supply"
	departments = SUP

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/supply
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/supply,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/sup,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/supply,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/supply)

	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/supply, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sup/noncom
	name = "Fleet supply NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/sup/snco
	name = "Fleet supply SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/supply, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/supply/warrant
	name = "Fleet supply Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/supply, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/sup/officer
	name = "Fleet supply CO"
	min_rank = 16


	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/sup,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/supply,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/supply)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/supply, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/sup/seniorofficer
	name = "Fleet supply senior command"
	min_rank = 19

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	service_under = /obj/item/clothing/under/solgov/service/fleet/command
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/supply, /obj/item/clothing/accessory/cloak/boh/dress/command, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/sup/flagofficer
	name = "Fleet supply flag command"
	min_rank = 22

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_under = /obj/item/clothing/under/solgov/service/fleet/flag
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/supply, /obj/item/clothing/accessory/cloak/boh/dress/command, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/srv
	name = "Fleet service"
	departments = SRV

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/service
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/service,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/svc,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/service,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/service)

	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/service, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/srv/noncom
	name = "Fleet service NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/srv/snco
	name = "Fleet service SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/service, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/srv/warrant
	name = "Fleet service Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/service, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/srv/officer
	name = "Fleet service CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/svc,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/service,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/service)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/service, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/exp
	name = "Fleet exploration"
	departments = EXP

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/exploration
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/exploration,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/combat/exploration,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/exp,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration)

	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/explorer, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/exp/noncom
	name = "Fleet exploration NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/exp/snco
	name = "Fleet exploration SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/explorer, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/exp/warrant
	name = "Fleet exploration Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/explorer, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/exp/officer
	name = "Fleet exploration CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/exp,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/explorer, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/spt
	name = "Fleet command support"
	departments = SPT

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command
	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/command/support, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/spt/noncom
	name = "Fleet support NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/spt/snco
	name = "Fleet support SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/command/support, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/spt/officer
	name = "Fleet command support CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/gloves/thick/duty/solgov/fingerless/cmd, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet, /obj/item/clothing/under/solgov/utility/fleet/polopants/command, /obj/item/clothing/suit/storage/jacket/solgov/fleet/command)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/command/support, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/spt/seniorofficer
	name = "Fleet senior command support"
	min_rank = 19

	utility_extra_alt = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/command,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/command)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_under = /obj/item/clothing/under/solgov/service/fleet/command
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/command/support, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/spt/flagofficer
	name = "Fleet flag command support"
	min_rank = 22

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/command,
						 /obj/item/clothing/suit/storage/jacket/solgov/fleet/command)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_under = /obj/item/clothing/under/solgov/service/fleet/flag
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_under = /obj/item/clothing/under/solgov/service/fleet/flag
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/command/support, /obj/item/clothing/accessory/cloak/boh/dress/command, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/sci
	name = "Fleet science"
	departments = SCI

	dress_extra = list(/obj/item/clothing/accessory/cloak/boh/explorer/science, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sci/senior
	name = "Fleet science senior"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/singleton/hierarchy/mil_uniform/fleet/sci/chief
	name = "Fleet science chief"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/material/sword/replica/officersword/pettyofficer, /obj/item/clothing/accessory/cloak/boh/explorer/science, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sci/warrant
	name = "Fleet science Warrant"
	min_rank = 11

	service_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/warrant

	dress_under = /obj/item/clothing/under/solgov/service/fleet/warrant
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/warrant
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/warrant
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/explorer/science, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sci/officer
	name = "Fleet science CO"
	min_rank = 16

	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/suit/storage/toggle/labcoat/science/ec,
						 /obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/exp,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer
	service_under = /obj/item/clothing/under/solgov/service/fleet/officer
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/explorer/science, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)

/singleton/hierarchy/mil_uniform/fleet/sci/officer/com //Can only be officers
	name = "Fleet science command"
	min_rank = 19
	departments = SCI|COM

	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov,
						 /obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet, /obj/item/clothing/gloves/thick/duty/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp,
						 /obj/item/clothing/gloves/thick/duty/solgov/fingerless/exp,
						 /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_under = /obj/item/clothing/under/solgov/service/fleet/command
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command

	dress_under = /obj/item/clothing/under/solgov/service/fleet/officer
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt/officer
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/material/sword/replica/officersword, /obj/item/clothing/accessory/cloak/boh/explorer/science, /obj/item/clothing/accessory/cloak/boh/dress, /obj/item/clothing/head/beret/solgov/fleet/dress/command)
