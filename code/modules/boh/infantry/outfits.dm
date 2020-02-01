/decl/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	name = OUTFIT_JOB_NAME("Squad Leader")
	uniform = /obj/item/clothing/under/solgov/utility/army/command
	id_type = /obj/item/weapon/card/id/torch/crew/infantry/infcom
	l_ear = /obj/item/device/radio/headset/infcom

/decl/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	name = OUTFIT_JOB_NAME("Combat Technician")
	uniform = /obj/item/clothing/under/solgov/utility/army/engineering
	id_type = /obj/item/weapon/card/id/torch/crew/infantry/inftech
	pda_type = /obj/item/modular_computer/pda/engineering
	l_ear = /obj/item/device/radio/headset/inftech

/decl/hierarchy/outfit/job/torch/crew/infantry
	name = OUTFIT_JOB_NAME("Infantry Marine")
	uniform = /obj/item/clothing/under/solgov/utility/army/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/infantry
	id_type = /obj/item/weapon/card/id/torch/crew/infantry

/////////
// radio keys
/////////
/obj/item/device/encryptionkey/infantry/sl
	name = "infantry leader encryption key"
	desc = "An Encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Infantry" = 1, "Engineering" = 1, "Supply" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/infantry/tech
	name = "infantry technician encryption key"
	desc = "An Encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Infantry" = 1, "Engineering" = 1, "Supply" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/infantry
	name = "infantry technician encryption key"
	desc = "An Encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Infantry" = 1, "Exploration" = 1)

//radio sets
/obj/item/device/radio/headset/infcom
	name = "infantry leader headset"
	desc = "A headset with an inbuilt subspace antenna for better reception."
	icon_state = "exp_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/infantry/sl

/obj/item/device/radio/headset/inftech
	name = "infantry technician headset"
	desc = "A headset with an inbuilt subspace antenna for better reception."
	icon_state = "exp_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/infantry/tech

/obj/item/device/radio/headset/infantry
	name = "infantry headset"
	desc = "A headset with an inbuilt subspace antenna for better reception."
	icon_state = "exp_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/infantry

//ids
/obj/item/weapon/card/id/torch/crew/infantry
	job_access_type = /datum/job/grunt
	detail_color = "#429661"

/obj/item/weapon/card/id/torch/crew/infantry/infcom
	job_access_type = /datum/job/squad_lead

/obj/item/weapon/card/id/torch/crew/infantry/inftech
	job_access_type = /datum/job/combat_tech
	detail_color = COLOR_SUN