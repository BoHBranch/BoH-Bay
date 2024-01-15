// Modular additions, for now.
// Command
/singleton/hierarchy/outfit/job/torch/crew/command/CO/fleet
	name = OUTFIT_JOB_NAME("Commanding Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/XO/marine
	name = OUTFIT_JOB_NAME("Executive Officer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/command
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cmo/marine
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/chief_engineer/marine
	name = OUTFIT_JOB_NAME("Chief Engineer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cos/marine
	name = OUTFIT_JOB_NAME("Chief of Security - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cos/fleet
	name = OUTFIT_JOB_NAME("Chief of Security - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer/marine
	name = OUTFIT_JOB_NAME("Bridge Officer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/command
	shoes = /obj/item/clothing/shoes/dutyboots

/***/

// Engineering
/singleton/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/marine
	name = OUTFIT_JOB_NAME("Senior Engineer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/marine
	name = OUTFIT_JOB_NAME("Engineer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
/***/

// Exploration

/singleton/hierarchy/outfit/job/torch/crew/exploration/pathfinder/fleet
	name = OUTFIT_JOB_NAME("Pathfinder - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/exploration/explorer/marine
	name = OUTFIT_JOB_NAME("Explorer - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/exploration
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/exploration/fleet
	name = OUTFIT_JOB_NAME("Explorer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/explorer)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration

/singleton/hierarchy/outfit/job/torch/crew/exploration/technician
	name = OUTFIT_JOB_NAME("Technician Explorer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/explorer)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration
	backpack_contents = list(/obj/item/storage/belt/utility/full = 1)

/singleton/hierarchy/outfit/job/torch/crew/exploration/medic
	name = OUTFIT_JOB_NAME("Medic Explorer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/explorer)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration
	backpack_contents = list(/obj/item/storage/firstaid/stab = 1)

/***/

//Research
/singleton/hierarchy/outfit/job/torch/crew/research/fleet
	name = OUTFIT_JOB_NAME("Research Assistant - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/research)
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/device/radio/headset/science

/singleton/hierarchy/outfit/job/torch/crew/research/fleet/scientist
	name = OUTFIT_JOB_NAME("Scientist - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	id_types = list(/obj/item/card/id/torch/crew/research/scientist)

/singleton/hierarchy/outfit/job/torch/crew/research/fleet/senior_scientist
	name = OUTFIT_JOB_NAME("Senior Scientist - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	id_types = list(/obj/item/card/id/torch/crew/research/senior_scientist)

/singleton/hierarchy/outfit/job/torch/crew/research/fleet/cso
	name = OUTFIT_JOB_NAME("Chief Science Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	l_ear = /obj/item/device/radio/headset/heads/torchntdirector
	id_types = list(/obj/item/card/id/torch/silver/research)
	pda_type = /obj/item/modular_computer/pda/heads/rd

/***/

// Medical
/singleton/hierarchy/outfit/job/torch/crew/medical/senior/marine
	name = OUTFIT_JOB_NAME("Physician - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/junior/marine
	name = OUTFIT_JOB_NAME("Medical Resident - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/doctor/marine
	name = OUTFIT_JOB_NAME("Medical Technician - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/headset_corpsman

/singleton/hierarchy/outfit/job/torch/crew/medical/counselor/marine
	name = OUTFIT_JOB_NAME("Counselor - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/contractor/chemist/fleet
	name = OUTFIT_JOB_NAME("Laboratory Technician - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/contractor/chemist/marine
	name = OUTFIT_JOB_NAME("Laboratory Technician - Marine")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	shoes = /obj/item/clothing/shoes/dutyboots
/***/

// Security
/singleton/hierarchy/outfit/job/torch/crew/security/brig_chief/marine
	name = OUTFIT_JOB_NAME("Brig Chief - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/security/forensic_tech/marine
	name = OUTFIT_JOB_NAME("Forensic Technician - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/security/forensic_tech/pcrc_agent
	name = OUTFIT_JOB_NAME("Forensic Technician - PCRC Agent")
	uniform = /obj/item/clothing/under/pcrcsuit
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/pcrc = 1, /obj/item/clothing/accessory/helmet_cover/pcrc = 1, /obj/item/clothing/accessory/badge = 1)

/singleton/hierarchy/outfit/job/torch/crew/security/maa/marine
	name = OUTFIT_JOB_NAME("Master at Arms - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/security/maa/pcrc
	name = OUTFIT_JOB_NAME("Master at Arms - PCRC")
	uniform = /obj/item/clothing/under/pcrc
	shoes = /obj/item/clothing/shoes/dutyboots
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/pcrc = 1, /obj/item/clothing/accessory/helmet_cover/pcrc = 1)

/singleton/hierarchy/outfit/job/torch/crew/security/maa/saare
	name = OUTFIT_JOB_NAME("Master at Arms - SAARE")
	uniform = /obj/item/clothing/under/saare
	shoes = /obj/item/clothing/shoes/dutyboots
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/saare = 1, /obj/item/clothing/accessory/helmet_cover/saare = 1)

/singleton/hierarchy/outfit/job/torch/crew/security/maa
	name = OUTFIT_JOB_NAME("Master at Arms")
	uniform =  /obj/item/clothing/under/solgov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/security)
	pda_type = /obj/item/modular_computer/pda/security

/singleton/hierarchy/outfit/job/torch/crew/security/maa/fleet
	name = OUTFIT_JOB_NAME("Master at Arms - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/security/brig_chief/fleet
	name = OUTFIT_JOB_NAME("Brig Chief - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/security/brigchief)
	pda_type = /obj/item/modular_computer/pda/security

/singleton/hierarchy/outfit/job/torch/crew/security/forensic_tech/fleet
	name = OUTFIT_JOB_NAME("Forensic Technician - Fleet")
	uniform =  /obj/item/clothing/under/solgov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots

/***/

// Service
/singleton/hierarchy/outfit/job/torch/crew/service/janitor/marine
	name = OUTFIT_JOB_NAME("Sanitation Technician - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/cook/marine
	name = OUTFIT_JOB_NAME("Cook - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/crewman/marine
	name = OUTFIT_JOB_NAME("Crewman - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/chaplain/marine
	name = OUTFIT_JOB_NAME("Chaplain - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/service
	shoes = /obj/item/clothing/shoes/dutyboots

/***/

// Supply
/singleton/hierarchy/outfit/job/torch/crew/supply/deckofficer/marine
	name = OUTFIT_JOB_NAME("Deck Chief - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/supply
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/supply/tech/marine
	name = OUTFIT_JOB_NAME("Deck Technician - Marine Corps")
	uniform = /obj/item/clothing/under/solgov/utility/army/supply
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/supply/tech/fleet/prospector
	name = OUTFIT_JOB_NAME("Salvage Technician - Fleet")
	id_types = list(/obj/item/card/id/torch/passenger/research/mining)
	pda_type = /obj/item/modular_computer/pda/mining
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL
	l_ear = /obj/item/device/radio/headset/headset_mining
/***/

// Corporate
/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc
	name = OUTFIT_JOB_NAME("Loss Prevention Associate - PCRC")
	uniform = /obj/item/clothing/under/pcrc
	shoes = /obj/item/clothing/shoes/dutyboots
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/pcrc = 1, /obj/item/clothing/accessory/helmet_cover/pcrc = 1)

/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc/agent
	name = OUTFIT_JOB_NAME("Loss Prevention Associate - PCRC Agent")
	uniform = /obj/item/clothing/under/pcrcsuit
	shoes = /obj/item/clothing/shoes/laceup

/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/saare
	name = OUTFIT_JOB_NAME("Loss Prevention Associate - SAARE")
	uniform = /obj/item/clothing/under/saare
	shoes = /obj/item/clothing/shoes/dutyboots
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/saare = 1, /obj/item/clothing/accessory/helmet_cover/saare = 1)
/***/

//Medical

//PDAV
/singleton/hierarchy/outfit/job/torch/crew/command/psiadvisor/equip_ids(mob/living/carbon/human/H, rank, assignment, equip_adjustments)
	. = ..()
	var/obj/item/card/id/foundation_civilian/regis_card = new
	if(rank)
		regis_card.rank = rank
	if(assignment)
		regis_card.assignment = assignment
	H.set_id_info(regis_card)
	H.equip_to_slot_or_store_or_drop(regis_card)

/singleton/hierarchy/outfit/job/torch/crew/command/psiadvisor
	name = OUTFIT_JOB_NAME("Foundation Advisor")
	uniform = /obj/item/clothing/under/det/grey
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/foundation
	gloves = /obj/item/clothing/gloves/white
	shoes = /obj/item/clothing/shoes/dress
	pda_type = /obj/item/modular_computer/pda/heads
	id_types = list(/obj/item/card/id/torch/crew/psiadvisor)
	l_hand =   /obj/item/storage/briefcase/foundation_inert
	holster =  /obj/item/clothing/accessory/storage/holster/waist

/singleton/hierarchy/outfit/job/torch/crew/command/psiadvisor/nt
	name = OUTFIT_JOB_NAME("NTPC Agent")
	glasses = /obj/item/clothing/glasses/sunglasses
	suit = /obj/item/clothing/suit/storage/toggle/suit/black/agent
	gloves = /obj/item/clothing/ring/material/nullglass
	shoes = /obj/item/clothing/shoes/dutyboots
	l_hand =   /obj/item/storage/briefcase/foundation/nt
	holster =  /obj/item/clothing/accessory/storage/holster/armpit

/singleton/hierarchy/outfit/job/torch/crew/representative
	name = OUTFIT_JOB_NAME("SolGov Representative")
	l_ear = /obj/item/device/radio/headset/headset_com
	uniform = /obj/item/clothing/under/rank/internalaffairs/plain/solgov
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/laceup
	id_types = list(/obj/item/card/id/torch/crew/representative)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

//#######

//# INFANTRY

/singleton/hierarchy/outfit/job/torch/crew/infantry
	name = OUTFIT_JOB_NAME("Infantry Marine")
	uniform = /obj/item/clothing/under/solgov/utility/army/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/infantry
	id_types = list(/obj/item/card/id/torch/crew/infantry)

/singleton/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	name = OUTFIT_JOB_NAME("Squad Leader")
	uniform = /obj/item/clothing/under/solgov/utility/army/command
	id_types = list(/obj/item/card/id/torch/crew/infantry/infcom)
	l_ear = /obj/item/device/radio/headset/infcom

/singleton/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	name = OUTFIT_JOB_NAME("Combat Technician")
	uniform = /obj/item/clothing/under/solgov/utility/army/engineering
	id_types = list(/obj/item/card/id/torch/crew/infantry/inftech)
	pda_type = /obj/item/modular_computer/pda/engineering
	l_ear = /obj/item/device/radio/headset/inftech

/singleton/hierarchy/outfit/job/torch/crew/infantry/combat_medic
	name = OUTFIT_JOB_NAME("Combat Medic")
	uniform = /obj/item/clothing/under/solgov/utility/army/medical
	id_types = /obj/item/card/id/torch/crew/infantry/infmed
	pda_type = /obj/item/modular_computer/pda/medical
	l_ear = /obj/item/device/radio/headset/infantry

/singleton/hierarchy/outfit/job/torch/crew/infantry/combat_medic/fleet
	name = OUTFIT_JOB_NAME("Combat Medic - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/combat/medical
	id_types = /obj/item/card/id/torch/crew/infantry/infmed
	pda_type = /obj/item/modular_computer/pda/medical
	l_ear = /obj/item/device/radio/headset/infantry

//### SEA

/singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	name = OUTFIT_JOB_NAME("Senior Enlisted Advisor - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/sea
	id_types = list(/obj/item/card/id/torch/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads

/singleton/hierarchy/outfit/job/torch/crew/command/sea/marine
	name = OUTFIT_JOB_NAME("Senior Enlisted Advisor - Marine")
	uniform = /obj/item/clothing/under/solgov/utility/army/command
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/sea
	id_types = list(/obj/item/card/id/torch/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads

//## RESEARCH ROBOTICIST

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist
	name = OUTFIT_JOB_NAME("Roboticist - Torch")
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist/fleet
	name = OUTFIT_JOB_NAME("Roboticist - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist/marine
	name = OUTFIT_JOB_NAME("Roboticist - Marine")
	uniform = /obj/item/clothing/under/solgov/utility/army/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

//Federal Protection Agent

/singleton/hierarchy/outfit/job/torch/crew/sfp_agent
	name = OUTFIT_JOB_NAME("Federal Protecion Agent - SFP Agent")
	l_ear = /obj/item/device/radio/headset/headset_com
	uniform = /obj/item/clothing/under/det/grey
	suit = /obj/item/clothing/suit/storage/toggle/agent_jacket
	shoes = /obj/item/clothing/shoes/dress
	id_types = list(/obj/item/card/id/torch/crew/representative_guard)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

//Asset Protection Agent (for CL)

/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard
	name = OUTFIT_JOB_NAME("Asset Protection Agent")
	l_ear =    /obj/item/device/radio/headset/heads/torchcorp
	uniform =  /obj/item/clothing/under/suit_jacket/corp
	shoes =    /obj/item/clothing/shoes/laceup
	id_types = list( /obj/item/card/id/torch/passenger/corporate)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc
	name = OUTFIT_JOB_NAME("Asset Protection Agent - PCRC Contractor")
	uniform = /obj/item/clothing/under/pcrc
	shoes = /obj/item/clothing/shoes/dutyboots
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/pcrc = 1, /obj/item/clothing/accessory/helmet_cover/pcrc = 1)

/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc/agent
	name = OUTFIT_JOB_NAME("Asset Protection Agent - PCRC Agent")
	uniform = /obj/item/clothing/under/pcrcsuit
	shoes = /obj/item/clothing/shoes/laceup

/singleton/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/saare
	name = OUTFIT_JOB_NAME("Asset Protection Agent - SAARE")
	uniform = /obj/item/clothing/under/saare
	shoes = /obj/item/clothing/shoes/dutyboots
	backpack_contents = list(/obj/item/clothing/accessory/armor_tag/saare = 1, /obj/item/clothing/accessory/helmet_cover/saare = 1)
