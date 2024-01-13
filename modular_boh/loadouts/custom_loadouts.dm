/datum/gear
	var/implanted = FALSE //is this item implanted? Used for augments / Implants.

//##### LOADOUT BOH DEFINES -> + General defines to keep it modular

//The following is a list of defs to be used for the Torch loadout.

//For jobs that allow for decorative or ceremonial clothing
#define FORMAL_ROLES list(/datum/job/liaison, /datum/job/bodyguard, /datum/job/sfpagent, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/psychiatrist, /datum/job/representative, /datum/job/assistant, /datum/job/merchant, /datum/job/detective, /datum/job/chaplain, /datum/job/psiadvisor, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/chef, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

//For civilian jobs that may have a uniform, but not a strict one
#define SEMIFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/psychiatrist, /datum/job/merchant, /datum/job/nt_pilot, /datum/job/scientist, /datum/job/senior_scientist, /datum/job/detective, /datum/job/chaplain, /datum/job/roboticist, /datum/job/psiadvisor, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/chef, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor)

//For civilian jobs that may have a strict uniform.
#define SEMIANDFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/psychiatrist, /datum/job/merchant, /datum/job/nt_pilot, /datum/job/liaison, /datum/job/bodyguard, /datum/job/sfpagent, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/representative, /datum/job/detective, /datum/job/chaplain, /datum/job/psiadvisor, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/chef, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor)

//For civilian jobs with no uniform or formal clothing requirements.
#define CASUAL_ROLES list(/datum/job/assistant, /datum/job/janitor, /datum/job/chef, /datum/job/cargo_tech, /datum/job/roboticist, /datum/job/mining, /datum/job/chaplain, /datum/job/merchant, /datum/job/psiadvisor, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor, /datum/job/scientist, /datum/job/senior_scientist, /datum/job/scientist_assistant)

//For roles that would have a higher level of education, typically doctors and other scientists
#define DOCTOR_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/roboticist, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/junior_doctor)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/psychiatrist, /datum/job/chemist, /datum/job/medical_trainee, /datum/job/junior_doctor)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/roboticist, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/medical_trainee, /datum/job/junior_doctor)

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_trainee)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(/datum/job/senior_engineer, /datum/job/roboticist, /datum/job/engineer, /datum/job/qm, /datum/job/cargo_tech, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/chief_engineer, /datum/job/janitor, /datum/job/engineer_trainee)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/seccadet)

//For members of the supply department
#define SUPPLY_ROLES list(/datum/job/qm, /datum/job/cargo_tech)

//For members of the service department
#define SERVICE_ROLES list(/datum/job/janitor, /datum/job/chef, /datum/job/crew, /datum/job/chaplain)

//For members of the exploration department
#define EXPLORATION_ROLES list(/datum/job/pathfinder, /datum/job/nt_pilot, /datum/job/explorer, /datum/job/grunt, /datum/job/combat_tech, /datum/job/squad_lead)

//For members of the research department and jobs that are scientific
#define RESEARCH_ROLES list(/datum/job/rd, /datum/job/scientist, /datum/job/roboticist, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/assistant, /datum/job/nt_pilot, /datum/job/senior_scientist, /datum/job/roboticist, /datum/job/psiadvisor)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant, /datum/job/bodyguard, /datum/job/sfpagent, /datum/job/grunt, /datum/job/combat_tech, /datum/job/squad_lead, /datum/job/seccadet, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/psiadvisor)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/qm, /datum/job/sea, /datum/job/sea/marine, /datum/job/bridgeofficer, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant, /datum/job/bodyguard, /datum/job/sfpagent, /datum/job/submap/skrellscoutship_crew, /datum/job/submap/skrellscoutship_crew/leader, /datum/job/grunt, /datum/job/combat_tech, /datum/job/squad_lead, /datum/job/seccadet, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

//For members of the command and command support department. Why wasn't this here before?
#define COMMAND_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/bridgeofficer, /datum/job/liaison, /datum/job/bodyguard, /datum/job/sfpagent, /datum/job/psiadvisor, /datum/job/representative)

//For jobs that have at least O-1 in either NTEF or SMC, but aren't considered Command or Command Support.
#define OFFICER_ROLES list(/datum/job/scientist, /datum/job/qm, /datum/job/roboticist, /datum/job/chaplain, /datum/job/psychiatrist, /datum/job/senior_doctor, /datum/job/pathfinder)

//For members of Command, Command Support and all other officer roles. Basically COMMAND_ROLES and OFFICER_ROLES merged together as a last resort.
#define COMMANDANDOFFICER_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/bridgeofficer, /datum/job/liaison, /datum/job/bodyguard, /datum/job/sfpagent, /datum/job/psiadvisor, /datum/job/representative, /datum/job/scientist, /datum/job/qm, /datum/job/chaplain, /datum/job/psychiatrist, /datum/job/senior_doctor, /datum/job/pathfinder)

#define UNIFORMED_BRANCHES list(/datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet, /datum/mil_branch/marine_corps)

#define CASUAL_BRANCHES list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/private_security)

#define CIVILIAN_BRANCHES list(/datum/mil_branch/civilian, /datum/mil_branch/solgov)

#define SOLGOV_BRANCHES list(/datum/mil_branch/solgov, /datum/mil_branch/marine_corps)

#define TACTICOOL_BRANCHES list(/datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet, /datum/mil_branch/solgov, /datum/mil_branch/private_security, /datum/mil_branch/marine_corps)

#define NT_BRANCHES list(/datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet)

#define MILITARY_BRANCHES list(/datum/mil_branch/fleet, /datum/mil_branch/marine_corps)

#define MARINES_ONLY list(/datum/mil_branch/marine_corps)

#define SECURITY_COMPANY_BRANCHES list(/datum/mil_branch/private_security)

//############### GENERAL BOH UTILITY #####################

/datum/gear/utility/flashlight
	display_name = "Flashlight"
	path = /obj/item/device/flashlight

/datum/gear/utility/crowbar
	display_name = "Crowbar"
	path = /obj/item/crowbar

/datum/gear/utility/crayonmre
	display_name = "Crayon MRE"
	cost = 31
	path = /obj/item/storage/mre/menu11

/datum/gear/cooler_ipc
	display_name = "Cooling unit (IPC)"
	path = /obj/item/device/suit_cooling_unit
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_IPC, SPECIES_SHELL)
	cost = 0

/datum/gear/utility/instrument
	display_name = "Instrument Selection"
	description = "An instrument to play beautiful music. Talent not included."
	path = /obj/item/device/synthesized_instrument
	cost = 4
/datum/gear/utility/instrument/New()
	..()
	var/instruments = list()
	instruments["Guitar"] = /obj/item/device/synthesized_instrument/guitar
	instruments["Electric Guitar"] = /obj/item/device/synthesized_instrument/guitar/multi
	instruments["Synthesizer"] = /obj/item/device/synthesized_instrument/synthesizer
	instruments["Trumpet"] = /obj/item/device/synthesized_instrument/trumpet
	instruments["Violin"] = /obj/item/device/synthesized_instrument/violin
	gear_tweaks += new/datum/gear_tweak/path(instruments)

/datum/gear/suit/highvis
	display_name = "High-visibility jacket"
	path = /obj/item/clothing/suit/storage/toggle/highvis
	cost = 1

/datum/gear/suit/labcoat_long
	display_name = "Long labcoat, corporate colors"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/roles/science/
	allowed_roles = RESEARCH_ROLES

/datum/gear/suit/labcoat_long/New()
	..()
	var/longlabcoats = list()
	longlabcoats += /obj/item/clothing/suit/storage/toggle/labcoat/roles/science/nanotrasen
	longlabcoats += /obj/item/clothing/suit/storage/toggle/labcoat/roles/science/heph
	longlabcoats += /obj/item/clothing/suit/storage/toggle/labcoat/roles/science/zeng
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(longlabcoats)

/datum/gear/suit/labcoat_long_colorable
	display_name = "Long labcoat, colour select"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/lclabcoat
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/mre
	display_name = "MRE selection"
	description = "A vacuum-sealed bag containing a day's worth of nutrients for an adult in strenuous situations."
	cost = 2
	path = /obj/item/storage/mre

/datum/gear/mre/New()
	..()
	var/mre = list()
	mre["Standard mre"] = /obj/item/storage/mre/random
	mre["Vegan mre"] = /obj/item/storage/mre/menu9
	mre["Protein mre"] = /obj/item/storage/mre/menu10
	gear_tweaks += new /datum/gear_tweak/path(mre)

/datum/gear/accessory/custom_medal
	display_name = "Custom medal"
	description = "A selection of medals, awarded to personnel for significant (or not) accomplishments."
	path = /obj/item/clothing/accessory/medal
	cost = 2

/datum/gear/accessory/custom_medal/New()
	..()
	var/cmedals = list()
	cmedals["Iron"] = /obj/item/clothing/accessory/medal/iron
	cmedals["Bronze"] = /obj/item/clothing/accessory/medal/bronze
	cmedals["Silver"] = /obj/item/clothing/accessory/medal/silver
	cmedals["Gold"] = /obj/item/clothing/accessory/medal/gold
	gear_tweaks += new/datum/gear_tweak/path(cmedals)

/datum/gear/clothing/cloak
	display_name = "Cloak, colored"
	path = /obj/item/clothing/accessory/cloak
	slot = slot_wear_suit
	flags = GEAR_HAS_COLOR_SELECTION

// Alternative cloak
/datum/gear/clothing/cloak/alt
	display_name = "Cloak, colored (alt-attachable)"
	path = /obj/item/clothing/accessory/cloak/boh

//################# GENERAL BOH ACESSORIES ##############################

/datum/gear/accessory/custom_ribbon
	display_name = "Custom ribbon"
	description = "A military decoration awarded to personnel for significant (or not) accomplishments."
	path = /obj/item/clothing/accessory/ribbon/solgov/custom
	cost = 2

/datum/gear/accessory/custom_ribbon/color
	display_name = "Custom ribbon, colorable"
	path = /obj/item/clothing/accessory/ribbon/solgov/custom/color
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/armband_ma
	display_name = "Master-at-Arms brassard"
	path = /obj/item/clothing/accessory/armband/solgov/ma
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_mp
	display_name = "Military Police brassard"
	path = /obj/item/clothing/accessory/armband/solgov/mp
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/smc_patch
	display_name = "Marine Corps patch"
	path = /obj/item/clothing/accessory/solgov/smc_patch
	allowed_branches = SOLGOV_BRANCHES
	cost = 0
	whitelisted = list(SPECIES_HUMAN, SPECIES_IPC)

/datum/gear/accessory/smc_patch_xenos
	display_name = "Marine Corps patch (xenoic division)"
	path = /obj/item/clothing/accessory/solgov/smc_patch/xeno
	cost = 0
	allowed_branches = SOLGOV_BRANCHES

/datum/gear/tactical/civ_tag
	display_name = "Civilian tag"
	path = /obj/item/clothing/accessory/armor_tag/civ
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/med_tag
	display_name = "Medical tag"
	path = /obj/item/clothing/accessory/armor_tag/solgov/medic
	allowed_skills = list(SKILL_MEDICAL = SKILL_BASIC)

/datum/gear/accessory/tags/marine
	display_name = "Dog tags, solar marine corps"
	description = "Plain identification tags made from a durable metal. This one is issued to marines."
	path = /obj/item/clothing/accessory/badge/solgov/tags/marine
	allowed_branches = MARINES_ONLY
	cost = 0

/datum/gear/accessory/tags/fleet
	display_name = "Dog tags, expeditionary fleet"
	description = "Plain identification tags made from a durable metal. This one is issued to fleet."
	path = /obj/item/clothing/accessory/badge/solgov/tags/fleet
	allowed_branches = NT_BRANCHES
	cost = 0

// Separating main's certain armor customization items.
/datum/gear/tactical/blood_patch
	display_name = "Blood patch selection"
	description = "A selection of blood type patches. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/armor_tag/
	cost = 0 // Life-saving.

/datum/gear/tactical/blood_patch/New()
	..()
	var/blood_type = list()
	blood_type["A+"] = /obj/item/clothing/accessory/armor_tag/apos
	blood_type["A-"] = /obj/item/clothing/accessory/armor_tag/aneg
	blood_type["B+"] = /obj/item/clothing/accessory/armor_tag/bpos
	blood_type["B-"] = /obj/item/clothing/accessory/armor_tag/bneg
	blood_type["AB+"] = /obj/item/clothing/accessory/armor_tag/abpos
	blood_type["AB-"] = /obj/item/clothing/accessory/armor_tag/abneg
	blood_type["O+"] = /obj/item/clothing/accessory/armor_tag/opos
	blood_type["O-"] = /obj/item/clothing/accessory/armor_tag/oneg
	gear_tweaks += new/datum/gear_tweak/path(blood_type)

/datum/gear/tactical/solgov
	display_name = "SCG Flag tag"
	path = /obj/item/clothing/accessory/armor_tag/solgov
	allowed_branches = SOLGOV_BRANCHES
	cost = 0 // Uniformed branches would require one.

/datum/gear/tactical/nt
	display_name = "NanoTrasen tag"
	path = /obj/item/clothing/accessory/armor_tag/nt
	allowed_branches = NT_BRANCHES
	cost = 0 // Ditto.

/datum/gear/tactical/combatknife
	display_name = "Combat knife"
	path = /obj/item/material/knife/combat
	cost = 3
	allowed_roles = ARMORED_ROLES
	allowed_branches = TACTICOOL_BRANCHES

// Too lazy to adjust outfit
/datum/gear/accessory/nt_blaze
	display_name = "Blaze, janitor"
	path = /obj/item/clothing/accessory/solgov/specialty/janitor
	allowed_branches = NT_BRANCHES
	allowed_roles = list(/datum/job/janitor)
	cost = 0

/datum/gear/accessory/nt_blaze/brig
	display_name = "Blaze, brig chief"
	path = /obj/item/clothing/accessory/solgov/specialty/brig
	allowed_roles = list(/datum/job/warden)

/datum/gear/accessory/nt_blaze/detective
	display_name = "Blaze, forenscics"
	path = /obj/item/clothing/accessory/solgov/specialty/forensic
	allowed_roles = list(/datum/job/detective)

/datum/gear/accessory/nt_blaze/atmos
	display_name = "Blaze, atmospherics"
	path = /obj/item/clothing/accessory/solgov/specialty/atmos
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/nt_blaze/chemist
	display_name = "Blaze, chemist"
	path = /obj/item/clothing/accessory/solgov/specialty/chemist
	allowed_roles = list(/datum/job/chemist)

/datum/gear/accessory/nt_blaze/counselor
	display_name = "Blaze, counselor"
	path = /obj/item/clothing/accessory/solgov/specialty/counselor
	allowed_roles = list(/datum/job/psychiatrist)

//################# HEAD EC OVERRIDE ####################

/datum/gear/head/ECdepartment
	display_name = "NTEF department beret selection"
	description = "A beret sporting departmental colours for NTEF personnel."
	path = /obj/item/clothing/head/beret/solgov/expedition
	allowed_branches = NT_BRANCHES

/datum/gear/head/ECdepartment/New()
	..()
	var/berets = list()
	berets["NTEF service beret"] = /obj/item/clothing/head/beret/solgov/expedition/service
	berets["NTEF security beret"] = /obj/item/clothing/head/beret/solgov/expedition/security
	berets["NTEF command beret"] = /obj/item/clothing/head/beret/solgov/expedition/command
	berets["NTEF engineering beret"] = /obj/item/clothing/head/beret/solgov/expedition/engineering
	berets["NTEF medical beret"] = /obj/item/clothing/head/beret/solgov/expedition/medical
	berets["NTEF beret"] = /obj/item/clothing/head/beret/solgov/expedition
	berets["NTEF supply beret"] = /obj/item/clothing/head/beret/solgov/expedition/supply
	berets["NTEF exploration beret"] = /obj/item/clothing/head/beret/solgov/expedition/exploration
	gear_tweaks += new/datum/gear_tweak/path(berets)

//################# CUSTOM_ARMOR ########################

/datum/gear/tactical/pcarrier_grey
	display_name = "Grey civilian plate carrier"
	description = "A grey plate carrier in a high visibility off-white."
	path = /obj/item/clothing/suit/armor/pcarrier/grey
	slot = slot_wear_suit

/datum/gear/tactical/pcarrier
	display_name = "Plate carrier selection"
	description = "A selection of military plate carriers. They can be equipped with armor plates, but provides no protection of their own."
	path = /obj/item/clothing/suit/armor/pcarrier
	cost = 1
	slot = slot_wear_suit
	allowed_branches = TACTICOOL_BRANCHES

// # Adds general custom armours option to original /tactical/pcarrier
/datum/gear/tactical/pcarrier/New()
	..()
	var/armors = list()
	armors["Black plate carrier"] = /obj/item/clothing/suit/armor/pcarrier
	armors["Navy plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/navy
	armors["Blue plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/blue
	armors["Green plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/green
	armors["Black ipc plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/ipc
	armors["Navy ipc plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/navy/ipc
	armors["Blue ipc plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/blue/ipc
	armors["Green ipc plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/green/ipc
	armors["Tan plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/tan
	armors["Tan ipc plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/tan/ipc
	gear_tweaks += new/datum/gear_tweak/path(armors)

/datum/gear/tactical/armor_pouches
	display_name = "armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 1
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/armor_pouches/New()
	..()
	var/pouches = list()
	pouches["green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["navy armor pouches"] = /obj/item/clothing/accessory/storage/pouches/navy
	pouches["black armor pouches"] = /obj/item/clothing/accessory/storage/pouches
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/armor_pouches/big
	display_name = "large armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 1
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/armor_pouches/big/New()
	..()
	var/big_pouches = list()
	big_pouches["large green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	big_pouches["large navy armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/navy
	big_pouches["large black armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large
	gear_tweaks += new/datum/gear_tweak/path(big_pouches)

/datum/gear/tactical/ubac_selection
	display_name = "UBAC shirt selection"
	path = /obj/item/clothing/accessory/ubac
	cost = 1
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/ubac_selection/New()
	..()
	var/ubac = list()
	ubac["green UBAC shirt"] = /obj/item/clothing/accessory/ubac/green
	ubac["navy UBAC shirt"] = /obj/item/clothing/accessory/ubac/blue
	ubac["black UBAC shirt"] = /obj/item/clothing/accessory/ubac
	gear_tweaks += new/datum/gear_tweak/path(ubac)

/datum/gear/tactical/kevlar
	display_name = "Kevlar selection"
	description = "A selection of kevlar vests. They can be equipped with armor plates, but provides no protection of their own."
	path = /obj/item/clothing/suit/armor/pcarrier
	cost = 1
	slot = slot_wear_suit
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/kevlar/New()
	..()
	var/armors = list()
	armors["Navy kevlar"] = /obj/item/clothing/suit/armor/pcarrier/kevlar/navy
	armors["Blue kevlar"] = /obj/item/clothing/suit/armor/pcarrier/kevlar/blue
	armors["Green kevlar"] = /obj/item/clothing/suit/armor/pcarrier/kevlar/green
	armors["Tan kevlar"] = /obj/item/clothing/suit/armor/pcarrier/kevlar/tan
	gear_tweaks += new/datum/gear_tweak/path(armors)

//################# XENOWEAR ############################

/datum/gear/accessory/nabber_gloves
	display_name = "GAS Insuls"
	path = /obj/item/clothing/gloves/nabber
	description = "A set of insulated gloves meant for GAS."
	whitelisted = list(SPECIES_NABBER)
	sort_category = "Xenowear"

//################# MARINE UNIFORMS #####################

/datum/gear/uniform/misc_military
	display_name = "Marine fatigue selection"
	description = "A selection of marine uniforms."
	path = /obj/item/clothing/under
	cost = 0
	allowed_branches = MARINES_ONLY

/datum/gear/uniform/misc_military/New()
	..()
	var/uniform = list()
	uniform += /obj/item/clothing/under/solgov/utility/fleet/combat/marine
	uniform += /obj/item/clothing/under/solgov/utility/army/urban
	uniform += /obj/item/clothing/under/solgov/utility/army/tan
	uniform += /obj/item/clothing/under/solgov/utility/army
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(uniform)

/datum/gear/uniform/fleet
	display_name = "Fleet fatigues"
	path = /obj/item/clothing/under/solgov/utility/fleet
	cost = 0
	allowed_branches = NT_BRANCHES

/datum/gear/uniform/fleet/officer
	display_name = "Fleet officer fatigues"
	path = /obj/item/clothing/under/solgov/utility/fleet/officer
	cost = 0
	allowed_branches = NT_BRANCHES
	allowed_roles = COMMANDANDOFFICER_ROLES

/datum/gear/uniform/fleet/polopants
	display_name = "fleet polo and pants uniform selection"
	description = "An alternative utility uniform of NT's Expeditionary Fleet."
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants
	cost = 0
	allowed_branches = NT_BRANCHES

/datum/gear/uniform/fleet/polopants/New()
	..()
	var/polouniform = list()
	polouniform["Command fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/command
	polouniform["Engineering fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants
	polouniform["Security fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/security
	polouniform["Medical fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/medical
	polouniform["Supply fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/supply
	polouniform["Service fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/service
	polouniform["Exploration fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration
	gear_tweaks += new /datum/gear_tweak/path(polouniform)

//############# MILITARY HEAD LOADOUTS ##########################

/datum/gear/head/misc_military_cover
	display_name = "Marine cover selection"
	description = "A selection of marine covers."
	path = /obj/item/clothing/head
	cost = 0
	allowed_branches = MARINES_ONLY

/datum/gear/head/misc_military_cover/New()
	..()
	var/cover = list()
	cover += /obj/item/clothing/head/solgov/utility/army/urban
	cover += /obj/item/clothing/head/solgov/utility/army
	cover += /obj/item/clothing/head/solgov/utility/fleet/marine
	cover += /obj/item/clothing/head/solgov/utility/army/tan
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(cover)

/datum/gear/head/fleetcap
	display_name = "Fleet cap"
	path = /obj/item/clothing/head/soft/solgov/fleet
	cost = 0
	allowed_branches = NT_BRANCHES

/datum/gear/head/corpsecberet
	display_name = "Corporate security beret selection"
	path = /obj/item/clothing/head/beret
	allowed_branches = SECURITY_COMPANY_BRANCHES

/datum/gear/head/corpsecberet/New()
	..()
	var/beret = list()
	beret += /obj/item/clothing/head/beret/guard
	beret += /obj/item/clothing/head/beret/pcrc
	beret += /obj/item/clothing/head/beret/saare
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(beret)

//################# AUGMENTS ###############################

/datum/gear/augment/
	sort_category = "Augmentations"
	category = /datum/gear/augment/
	//slot = slot_tie /// not used, doesn't matter here ...?
	implanted = TRUE

/datum/gear/augment/implanted_surgical
	display_name = "surgical polytool - left arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/surgical/left
	cost = 4
	allowed_roles = STERILE_ROLES

/datum/gear/augment/implanted_surgical/right
	display_name = "surgical polytool - right arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/surgical/right

/datum/gear/augment/implanted_toolkit
	display_name = "mechanical polytool - left arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/engineer/left
	cost = 4

/datum/gear/augment/implanted_toolkit/right
	display_name = "mechanical polytool - right arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/polytool/engineer/right

/datum/gear/augment/implanted_circuitkit
	display_name = "circuit augment - left arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/simple/circuit/left
	cost = 4

/datum/gear/augment/implanted_circuitkit/right
	display_name = "circuit augment - right arm (ROBOTIC)"
	path = /obj/item/organ/internal/augment/active/simple/circuit/right

///###################### XENOWEAR #########################
/datum/gear/clothing/skrell_uniform
	display_name = "skrellian uniform"
	path = /obj/item/clothing/under/skrelljumpsuit
	whitelisted = list(SPECIES_SKRELL)
	sort_category = "Xenowear"

