/datum/job/submap/voxship_vox
	title = "Shard Acolyte"
	total_positions = 6
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "Quill, The Apex and the arkship"
	info = "By the will of the dead creators, you must reclaim the lost territory of their fallen empire, and re-establish the domain of the Auralis no matter the cost. \
	Honor their memory, obey your Quill-Captain."
	whitelisted_species = list(SPECIES_VOX)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 40

/datum/job/submap/voxship_vox/doc
	title = "Shard Biotechnician"
	total_positions = 1
	info = "Your sacred duty is to preserve the lives of your ship-band; \
	save their stacks, stabilize wounded crew, replace missing components and ensure nobody messes with your patients or your workspace."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_MEDICAL     = SKILL_EXPERT,
						SKILL_ANATOMY     = SKILL_EXPERT,
						SKILL_CHEMISTRY   = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_MAX,
	                    SKILL_ANATOMY = SKILL_MAX,
	                    SKILL_CHEMISTRY = SKILL_MAX)
	skill_points = 26

/datum/job/submap/voxship_vox/engineer
	title = "Shard Technician"
	total_positions = 2
	info = "You are one among many billions who has kept the five sacred Arks operational over eons, such a small shard vessel is an easy task in comparison. \
	Keep the tech operational, fix damage, and disassemble more complex devices or artefacts the acolytes come across on their expeditions."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING      = SKILL_BASIC,
						SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT,
	                    SKILL_WEAPONS      = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_MAX,
	                    SKILL_ATMOS = SKILL_MAX,
	                    SKILL_ENGINES = SKILL_MAX,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 26

/datum/job/submap/voxship_vox/quill
	title = "Shard Quill"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/captain
	supervisors = "The Apex and the arkship"
	info = "You are the Quill-Captain of a handsome shard-class frigate, a scout vessel for the Ark Fleets of the Vox. \
	The dead empire is being reborn, new planets settled, alliances made. To one of the five ark admirals you are sworn, and they have your complete loyalty. \
	The age of stagnancy is over, you have purpose anew, the crew must know this. \
	Ensure they do not disgrace the memory of the Auralis, that they do not forget the faith, and that new territory is claimed and material secured for the arks. \
	Measure your discipline lest you be challenged for being too lenient or harsh."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 30

#define VOXSHIP_OUTFIT_JOB_NAME(job_name) ("Vox Asteroid Base - Job - " + job_name)
/decl/hierarchy/outfit/job/voxship
	hierarchy_type = /decl/hierarchy/outfit/job/voxship
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/voxship/crew
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Expeditionary")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/voxship
	l_pocket = /obj/item/weapon/crowbar/prybar
	r_hand = /obj/item/weapon/tank/emergency/nitrogen/double
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/captain
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Quill")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/weapon/tank/emergency/nitrogen/double
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/voxship_captain
	l_pocket = /obj/item/weapon/crowbar/prybar
	r_hand = /obj/item/device/radio
	l_hand = /obj/item/voxbox

/obj/item/voxbox
	name = "Vox Combat Kit"
	desc = "A secure box containing weapons."
	icon = 'icons/obj/ascent_doodads.dmi'
	icon_state = "box" //temp

/obj/item/voxbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Medic"] = list(/obj/item/weapon/gun/energy/darkmatter,/obj/item/weapon/gun/launcher/alien/slugsling,/obj/item/weapon/storage/firstaid/combat,/obj/item/clothing/glasses/hud/health/visor,/obj/item/device/scanner/health,/obj/item/weapon/storage/firstaid/adv)
	options["Enforcer"] = list(/obj/item/weapon/gun/energy/darkmatter,/obj/item/weapon/gun/energy/plasmastun/vox,/obj/item/weapon/gun/launcher/alien/spikethrower,/obj/item/weapon/storage/firstaid/adv,/obj/item/weapon/gun/projectile/automatic/machine_pistol,/obj/item/ammo_magazine/machine_pistol,/obj/item/ammo_magazine/machine_pistol,/obj/item/ammo_magazine/machine_pistol)
	options["Controller"] = list(/obj/item/weapon/gun/energy/darkmatter,/obj/item/weapon/gun/projectile/shotgun/pump,/obj/item/weapon/storage/box/ammo/shotgunammo/full,/obj/item/weapon/storage/box/ammo/shotgunammo/buckshot/full,/obj/item/weapon/gun/energy/sonic,/obj/item/weapon/storage/box/stinger,/obj/item/weapon/storage/firstaid/adv)
	options["Stolen Marine Gear"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle,/obj/item/weapon/storage/firstaid/adv,/obj/item/ammo_magazine/mil_rifle,/obj/item/ammo_magazine/mil_rifle,/obj/item/ammo_magazine/mil_rifle,/obj/item/weapon/gun/energy/gun,/obj/item/weapon/storage/box/fragshells)
	options["Sniper"] = list(/obj/item/weapon/gun/energy/darkmatter,/obj/item/weapon/gun/energy/sniperrifle/vox,/obj/item/weapon/storage/firstaid/adv,/obj/item/device/binoculars,/obj/item/weapon/gun/projectile/revolver,/obj/item/ammo_magazine/speedloader/magnum,/obj/item/ammo_magazine/speedloader/magnum,/obj/item/ammo_magazine/speedloader/magnum)
	options["Melee"] = list(/obj/item/weapon/gun/energy/darkmatter,/obj/item/weapon/melee/energy/sword,/obj/item/weapon/reagent_containers/hypospray/autoinjector/stim,/obj/item/weapon/reagent_containers/hypospray/autoinjector/stim,/obj/item/weapon/reagent_containers/hypospray/autoinjector/kompoton,/obj/item/weapon/storage/firstaid/adv)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM]. Make sure to keep it safe.")
		qdel(src)

/obj/item/weapon/gun/energy/plasmastun/vox
	desc = "The modified Hephaestus Industries MA21 Selkie is a weapon that uses a laser pulse to ionise the local atmosphere, creating a disorienting pulse of plasma and deafening shockwave as the wave expands. Without a local atmosphere to ionize, however, it becomes a very expensive paperweight. This model seems heavily modified, to use the power of biofuel."
	self_recharge = 1
	recharge_time = 20

/obj/item/weapon/gun/energy/sniperrifle/vox
	desc = "This is a modified Hephaestus Industries Baleful. The cell has been replaced by a vox variant, allowing it to self-charge. Sadly, this makes it lose its function to knock people out. It's a designated marksman rifle capable of shooting powerful ionized beams, this is a weapon to kill from a distance."
	self_recharge = 1
	recharge_time = 60
	projectile_type = /obj/item/projectile/beam/snipervox

/obj/effect/submap_landmark/spawnpoint/voxship_crew
	name = "Shard Acolyte"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/doc
	name = "Shard Biotechnician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/engineer
	name = "Shard Technician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/quill
	name = "Shard Quill"

#undef VOXSHIP_OUTFIT_JOB_NAME
