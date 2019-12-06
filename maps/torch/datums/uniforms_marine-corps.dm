/decl/hierarchy/mil_uniform/marine_corps
	name = "Master marine corps outfit"
	hierarchy_type = /decl/hierarchy/mil_uniform/army
	branches = list(/datum/mil_branch/marine_corps)

	pt_under = /obj/item/clothing/under/solgov/pt/army
	pt_shoes = /obj/item/clothing/shoes/black

	utility_under = /obj/item/clothing/under/solgov/utility/army
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/solgov/utility/army
	utility_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/clothing/head/ushanka/solgov/army, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army, /obj/item/clothing/head/soft/solgov)

	service_under = /obj/item/clothing/under/solgov/service/army
	service_skirt = /obj/item/clothing/under/solgov/service/army/skirt
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/solgov/service/army/garrison

	dress_under = /obj/item/clothing/under/solgov/mildress/army
	dress_skirt = /obj/item/clothing/under/solgov/mildress/army/skirt
	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/solgov/dress/army
	dress_gloves = /obj/item/clothing/gloves/white

	dress_extra = list(/obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/com //Can only be officers
	name = "Marine Corps command"
	departments = COM

	utility_under = /obj/item/clothing/under/solgov/utility/army/command
	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/cmd)

	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/com/seniorofficer
	name = "Marine Corps senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

//	service_over = /obj/item/clothing/suit/storage/solgov/service/army/flag
//	dress_over = /obj/item/clothing/suit/dress/solgov/army/flag

/decl/hierarchy/mil_uniform/army/eng
	name = "Marine Corps engineering"
	departments = ENG

	utility_under = /obj/item/clothing/under/solgov/utility/army/engineering
	utility_extra = list(/obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)

/decl/hierarchy/mil_uniform/army/eng/noncom
	name = "Marine Corps engineering NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/eng/officer
	name = "Marine Corps engineering CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)
	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/eng/officer/com //Can only be officers
	name = "Marine Corps engineering command"
	departments = ENG|COM

/decl/hierarchy/mil_uniform/army/eng/officer/com/seniorofficer
	name = "Marine Corps engineering senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/sec
	name = "Marine Corps security"
	departments = SEC

	utility_extra = list(/obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec,
						 /obj/item/clothing/under/solgov/utility/army/security)

/decl/hierarchy/mil_uniform/army/sec/noncom
	name = "Marine Corps security NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/sec/officer
	name = "Marine Corps security CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec)
	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/sec/officer/com //Can only be officers
	name = "Marine Corps security command"
	departments = SEC|COM

/decl/hierarchy/mil_uniform/army/sec/officer/com/seniorofficer
	name = "Marine Corps security senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/med
	name = "Marine Corps medical"
	departments = MED

	utility_extra = list(
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)

/decl/hierarchy/mil_uniform/army/med/noncom
	name = "Marine Corps medical NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/med/officer
	name = "Marine Corps medical CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)
	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/med/officer/com //Can only be officers
	name = "Marine Corps medical command"
	departments = MED|COM

/decl/hierarchy/mil_uniform/army/med/officer/com/seniorofficer
	name = "Marine Corps medical senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/sup
	name = "Marine Corps supply"
	departments = SUP

	utility_under = /obj/item/clothing/under/solgov/utility/army/supply
	utility_extra = list(
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)

/decl/hierarchy/mil_uniform/army/sup/noncom
	name = "Marine Corps supply NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/sup/officer
	name = "Marine Corps supply CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)
	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/sup/seniorofficer
	name = "Marine Corps supply senior command"
	min_rank = 15

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command, /obj/item/clothing/head/beret/solgov, /obj/item/clothing/head/ushanka/solgov/army, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army, /obj/item/clothing/head/soft/solgov)
	utility_under = /obj/item/clothing/under/solgov/utility/army/command

	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command


	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/srv
	name = "Marine Corps service"
	departments = SRV

	utility_under = /obj/item/clothing/under/solgov/utility/army/service
	utility_extra = list(
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)

/decl/hierarchy/mil_uniform/army/srv/noncom
	name = "Marine Corps service NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/srv/officer
	name = "Marine Corps service CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)
	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/exp
	name = "Marine Corps exploration"
	departments = EXP

	utility_under = /obj/item/clothing/under/solgov/utility/army/exploration
	utility_extra = list(
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)

/decl/hierarchy/mil_uniform/army/exp/noncom
	name = "Marine Corps exploration NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/exp/officer
	name = "Marine Corps exploration CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)
	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/spt
	name = "Marine Corps command support"
	departments = SPT

	utility_under = /obj/item/clothing/under/solgov/utility/army/command

/decl/hierarchy/mil_uniform/army/spt/noncom
	name = "Marine Corps support NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army

	dress_over = /obj/item/clothing/suit/dress/solgov/army

/decl/hierarchy/mil_uniform/army/spt/officer
	name = "Marine Corps command support CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command, /obj/item/clothing/head/beret/solgov, /obj/item/clothing/head/ushanka/solgov/army, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army, /obj/item/clothing/head/soft/solgov)
	utility_under = /obj/item/clothing/under/solgov/utility/army/command

	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/spt/seniorofficer
	name = "Marine Corps senior command support"
	min_rank = 15

	utility_extra = list(/obj/item/clothing/under/solgov/utility/army/command,
						 /obj/item/clothing/head/beret/solgov,
						 /obj/item/clothing/head/ushanka/solgov/army,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
						 /obj/item/clothing/head/soft/solgov)
	utility_under = /obj/item/clothing/under/solgov/utility/army/command

	service_hat = /obj/item/clothing/head/solgov/dress/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword, /obj/item/clothing/head/beret/solgov)
