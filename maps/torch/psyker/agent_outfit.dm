//id
/obj/item/weapon/card/id/torch/crew/psiadvisor
	job_access_type = /datum/job/psiadvisor
	detail_color = COLOR_COMMAND_BLUE

//typical uniform stuff

/decl/hierarchy/outfit/job/torch/crew/command/psiadvisor
	name = OUTFIT_JOB_NAME("Foundation Advisor")
	uniform = /obj/item/clothing/under/det/grey
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/foundation
	gloves = /obj/item/clothing/gloves/white
	shoes = /obj/item/clothing/shoes/dress
	pda_type = /obj/item/modular_computer/pda/heads
	id_type = /obj/item/weapon/card/id/torch/crew/psiadvisor
	l_hand =   /obj/item/weapon/storage/briefcase/foundation/revolver
	holster =  /obj/item/clothing/accessory/storage/holster/waist

/decl/hierarchy/outfit/job/torch/crew/command/psiadvisor/nt
	name = OUTFIT_JOB_NAME("NTPC Agent")
	glasses = /obj/item/clothing/glasses/sunglasses
	suit = /obj/item/clothing/suit/storage/toggle/suit/black/agent
	gloves = /obj/item/clothing/ring/material/nullglass
	shoes = /obj/item/clothing/shoes/dutyboots
	l_hand =   /obj/item/weapon/storage/briefcase/foundation/nt
	holster =  /obj/item/clothing/accessory/storage/holster/armpit