#define WEBHOOK_SUBMAP_LOADED_SKRELL "webhook_submap_skrell"

#include "skrellscoutship_areas.dm"
#include "skrellscoutship_shuttles.dm"
#include "skrellscoutship_radio.dm"

/datum/map_template/ruin/away_site/skrellscoutship
	name = "Skrellian Scout Ship"
	id = "awaysite_skrell_scout"
	description = "A Skrellian SDTF scouting vessel."
	suffixes = list("skrellscoutship/skrellscoutship_revamp.dmm")
	cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/skrellscoutship)
	apc_test_exempt_areas = list()
	area_coherency_test_subarea_count = list(
		/area/ship/skrellscoutship/command/brig = 10
	)

/obj/effect/overmap/visitable/sector/skrellscoutspace
	name = "Empty Sector"
	desc = "Slight traces of a cloaking device are present. Unable to determine exact location. There is something big here but the sensors just can not make it out."
	icon_state = "event"
	hide_from_reports = TRUE
	initial_restricted_waypoints = list(
		"Skrellian Scout" = list("nav_skrellscout_start")
	)

/obj/effect/submap_landmark/joinable_submap/skrellscoutship
	name = "Xilvuxix"
	archetype = /decl/submap_archetype/skrellscoutship

/obj/effect/submap_landmark/spawnpoint/skrellscoutship
	name = "Qrri-Zuumqix"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/submap_landmark/spawnpoint/skrellscoutship/leader
	name = "Qrri-Vuxix"

/decl/webhook/submap_loaded/skrell
	id = WEBHOOK_SUBMAP_LOADED_SKRELL

/decl/submap_archetype/skrellscoutship
	descriptor = "Skrellian Scout Ship"
	map = "Xilvuxix"
	crew_jobs = list(
		/datum/job/submap/skrellscoutship_crew,
		/datum/job/submap/skrellscoutship_crew/leader
	)
	call_webhook = WEBHOOK_SUBMAP_LOADED_SKRELL

//Access + Loadout

/var/const/access_skrellscoutship = "ACCESS_SKRELLSCOUT"

/datum/access/skrellscoutship
	id = access_skrellscoutship
	desc = "SSV Crewman"
	region = ACCESS_REGION_NONE

/obj/item/weapon/card/id/skrellscoutship
	color = COLOR_GRAY40
	detail_color = "#7331c4"
	access = list(access_skrellscoutship)

/datum/job/submap/skrellscoutship_crew/leader
	title = "Qrri-Vuxix"
	supervisors = "your SDTF"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/skrellscoutship/leader
	allowed_ranks = list(/datum/mil_rank/skrell_fleet/vuxix)
	info = "Your vessel is scouting through unknown space, working to map out any potential dangers, as well as potential allies."
	is_semi_antagonist = TRUE
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_PILOT = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_MEDICAL = SKILL_BASIC)

/datum/job/submap/skrellscoutship_crew
	title = "Qrri-Zuumqix"
	supervisors = "your Qrri-Vuxix"
	total_positions = 4
	whitelisted_species = list("Skrell")
	branch = /datum/mil_branch/skrell_fleet
	rank = /datum/mil_rank/skrell_fleet
	allowed_branches = list(/datum/mil_branch/skrell_fleet)
	allowed_ranks = list(/datum/mil_rank/skrell_fleet/zuumqix)
	outfit_type = /decl/hierarchy/outfit/job/skrellscoutship
	info = "Your vessel is scouting through unknown space, working to map out any potential dangers, as well as potential allies."
	skill_points = 30
	is_semi_antagonist = TRUE
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_MEDICAL = SKILL_BASIC)

/datum/job/submap/skrellscoutship_crew/equip(var/mob/living/carbon/human/H, var/alt_title, var/datum/mil_branch/branch, var/datum/mil_rank/grade)
	. = ..(H, alt_title, branch, grade)	//passing through arguments
	//Limited to subcastes that make sense on the vessel. No need for ground-forces or R&D on such a ship.
	var/skrellscoutcastes = list(
		"Malish-Katish" = list(
			"Mero'ta-Ketish",
			"Toglo'i-Ketish"
		),
		"Kanin-Katish" = list(
			"Xiqarr-Ketish",
			"Mero'tol-Ketish",
			"Goxo'i-Ketish"
		),
		"Raskinta-Katish" = list(
			"Me'kerr-Ketish",
			"Qi'kerr-Ketish",
			"Me'xoal-Ketish"
		)
	)

	var/skrellcaste = input(H, "What is your Skrell's Caste?", "SDTF Rank") as null|anything in skrellscoutcastes
	if(skrellcaste)
		var/skrellsubcaste = input(H, "What is your Skrell's Subcaste?", "SDTF Rank") as null|anything in skrellscoutcastes[skrellcaste]
		var/obj/item/weapon/card/id/C = H.wear_id
		if(istype(C))
			C.assignment = skrellsubcaste

// Skrell clothing

/obj/item/clothing/gloves/thick/swat/skrell
	name = "black gloves"
	desc = "A pair of black, reinforced gloves. The tag on the inner stitching appears to be written in some form of Skrellian."

/obj/item/clothing/under/skrelljumpsuit
	name = "black bodysuit"
	desc = "A sleek, skin-tight bodysuit designed to not wick moisture away from the body. The inner stitching appears to contain something written in Skrellian."
	icon_state = "skrell_suit"
	item_state = "skrell_suit"
	worn_state = "skrell_suit"

// ### SDTF ranks.

/obj/item/clothing/accessory/skrellian/rank/sdtf
	name = "Skrellian Ranks"
	desc = "Insigna denothing some sort of position in the SDTF. This one is blank."
	icon = 'icons/boh/obj/obj_skrell_accessories.dmi'
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "skrell_blank"
	on_rolled = list("down" = "none")
	slot = ACCESSORY_SLOT_RANK
	gender = PLURAL
	high_visibility = 1

/obj/item/clothing/accessory/skrellian/rank/sdtf/qzqx
	name = "ranks (Qrii-Zuumqix)"
	desc = "Skrellian holographic insigna denoting the position of Qrii-Zuumqix"
	icon_state = "skrell_qriizuumqix"

/obj/item/clothing/accessory/skrellian/rank/sdtf/qvx
	name = "ranks (Qrii-Vuxix)"
	desc = "Skrellian holographic insigna denoting the position of Qrii-Vuxix"
	icon_state = "skrell_qriivuxix"

/obj/item/weapon/reagent_containers/food/condiment/psilocybin
	label_text = "Psilocybin"
	starting_reagents = list(/datum/reagent/psilocybin = 50)


/obj/item/weapon/reagent_containers/food/condiment/mindbreaker
	label_text = "Mindbreaker"
	starting_reagents = list(/datum/reagent/mindbreaker = 50)


/obj/item/weapon/reagent_containers/food/condiment/space_drugs
	label_text = "Ambrosia"
	starting_reagents = list(/datum/reagent/space_drugs = 50)

/decl/hierarchy/outfit/job/skrellscoutship
	name = "Xilvuxix Crew"
	uniform = /obj/item/clothing/under/skrelljumpsuit
	shoes = /obj/item/clothing/shoes/dutyboots
	gloves = /obj/item/clothing/gloves/thick/swat/skrell
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	//l_ear = /obj/item/device/radio/headset/map_preset/skrellscoutship DEPENDS ON skrellradio's new files
	l_ear = /obj/item/device/radio/headset/skrellian
	id_type = /obj/item/weapon/card/id/skrellscoutship
	l_pocket = /obj/item/clothing/accessory/badge/tags/skrell
	r_pocket = /obj/item/clothing/accessory/skrellian/rank/sdtf/qzqx

/decl/hierarchy/outfit/job/skrellscoutship/leader
	name = "Xilvuxix Vuxix"
	r_pocket = /obj/item/clothing/accessory/skrellian/rank/sdtf/qvx

/datum/mil_branch/skrell_fleet
	name = "Skrellian Defense Task Force"
	name_short = "SDTF"
	email_domain = "sdtf.qb"
	rank_types = list(
		/datum/mil_rank/skrell_fleet/zuumqix,
		/datum/mil_rank/skrell_fleet/vuxix
	)
	spawn_rank_types = list(
		/datum/mil_rank/skrell_fleet/zuumqix,
		/datum/mil_rank/skrell_fleet/vuxix
	)

/datum/mil_rank/skrell_fleet/zuumqix
	name = "Qrii-Zuumqix"
	name_short = "QZQX"
	accessory = list(/obj/item/clothing/accessory/skrellian/rank/sdtf/qzqx)

/datum/mil_rank/skrell_fleet/vuxix
	name = "Qrii-Vuxix"
	name_short = "QVX"
	accessory = list(/obj/item/clothing/accessory/skrellian/rank/sdtf/qvx)

/obj/machinery/power/apc/skrell
	req_access = list(access_skrellscoutship)

/obj/machinery/alarm/skrell
	req_access = list(access_skrellscoutship)
	target_temperature = T0C+70

/obj/machinery/alarm/skrell/Initialize()
	. = ..()
	TLV["pressure"] =		list(ONE_ATMOSPHERE*0.80,ONE_ATMOSPHERE*0.90,ONE_ATMOSPHERE*1.30,ONE_ATMOSPHERE*1.40) /* kpa */
	TLV["temperature"] =	list(T0C-26, T0C, T0C+90, T0C+110) // K

/obj/machinery/alarm/skrell/server
	target_temperature = T0C+10

/obj/machinery/alarm/skrell/server/Initialize()
	. = ..()
	TLV["temperature"] =	list(T0C-26, T0C, T0C+30, T0C+40) // K

/obj/machinery/power/smes/buildable/preset/skrell
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/advanced = 2
	)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/vending/medical/skrell
	req_access = list(access_skrellscoutship)

/obj/machinery/power/apc/debug/skrell
	cell_type = /obj/item/weapon/cell/infinite
	req_access = list(access_skrellscoutship)

#undef WEBHOOK_SUBMAP_LOADED_SKRELL

//Skrell Security Belt
/obj/item/weapon/storage/belt/holster/skrell
	name = "skrellian holster belt"
	desc = "Can hold security gear like handcuffs and flashes. This one has a convenient holster especially designed to accomodate the XV-5."
	icon_state = "securitybelt"
	item_state = "security"
	storage_slots = 8
	overlay_flags = BELT_OVERLAY_ITEMS|BELT_OVERLAY_HOLSTER
	can_hold = list(
		/obj/item/weapon/crowbar,
		/obj/item/weapon/grenade,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/handcuffs,
		/obj/item/device/flash,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_magazine,
		/obj/item/weapon/reagent_containers/food/snacks/donut/,
		/obj/item/weapon/melee/baton,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/flame/lighter,
		/obj/item/device/flashlight,
		/obj/item/modular_computer/pda,
		/obj/item/device/radio/headset,
		/obj/item/device/hailer,
		/obj/item/device/megaphone,
		/obj/item/weapon/melee,
		/obj/item/taperoll,
		/obj/item/device/holowarrant,
		/obj/item/weapon/magnetic_ammo,
		/obj/item/device/binoculars,
		/obj/item/clothing/gloves,
		/obj/item/weapon/shield/energy/skrell,
	)
	can_holster = list(/obj/item/weapon/gun/energy/gun/skrell
		)

//Skell Lights

/obj/machinery/light/skrell
	name = "skrellian light"
	light_type = /obj/item/weapon/light/tube/skrell
	desc = "Some kind of strange alien lighting technology."


/obj/item/weapon/light/tube/skrell
	name = "skrellian light filament"
	color = COLOR_LIGHT_CYAN
	b_colour = COLOR_LIGHT_CYAN
	desc = "Some kind of strange alien lightbulb technology."

/obj/item/weapon/light/tube/large/skrell
	name = "skrellian light filament"
	color = COLOR_LIGHT_CYAN
	b_colour = COLOR_LIGHT_CYAN
	desc = "Some kind of strange alien lightbulb technology."


/obj/item/weapon/storage/box/lights/tubes/skrell
	name = "box of replacement tubes"
	icon_state = "lighttube"
	startswith = list(/obj/item/weapon/light/tube/skrell = 17,
					/obj/item/weapon/light/tube/large/skrell = 4)

//Skrell Suit Dispensers
/obj/machinery/suit_storage_unit/skrell
	boots = /obj/item/clothing/shoes/magboots;
	color = "#00e1ff";
	helmet = /obj/item/clothing/head/helmet/space/void/skrell/white;
	islocked = 1;
	name = "Skrell Suit Storage Unit (White)";
	req_access = list("ACCESS_SKRELLSCOUT");
	suit = /obj/item/clothing/suit/space/void/skrell/white

/obj/machinery/suit_storage_unit/skrell/black
	boots = /obj/item/clothing/shoes/magboots;
	color = "#00e1ff";
	helmet = /obj/item/clothing/head/helmet/space/void/skrell/black;
	islocked = 1;
	name = "Skrell Suit Storage Unit (Black)";
	req_access = list("ACCESS_SKRELLSCOUT");
	suit = /obj/item/clothing/suit/space/void/skrell/black

//Skrell Devices

/obj/item/weapon/tape_roll/skrell
	name = "modular adhesive dispenser"
	desc = "A roll of sticky tape. Possibly for taping ducks... or was that ducts?"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "taperoll"
	color = "#40e0d0"
	w_class = ITEM_SIZE_SMALL

/obj/machinery/space_heater/skrell
	color = "#40e0d0"
	name = "thermal induction generator"
	desc = "Made by Krri'gli Corp using thermal induction technology, this heater is guaranteed not to set anything, or anyone, on fire."

//Skrell Machines

// This is an absolutely stupid machine. Basically the same as the debug one with some alterations.
// It is a placeholder for a proper reactor setup (probably a RUST descendant)
/obj/machinery/power/skrell_reactor
	name = "skrellian advanced fusion core"
	desc = "A tall, gleaming assemblage of advanced alien machinery. It hums and crackles with restrained power."
	icon = 'icons/obj/machines/power/fusion_core.dmi'
	icon_state = "core1"
	color = COLOR_CYAN
	var/on = TRUE
	var/output_power = 45 MEGAWATTS //it's the future, and this is a god darn fusion reactor. Why would it produce measly kilowatts?
	var/image/field_image

/obj/machinery/power/skrell_reactor/attack_hand(mob/user)
	. = ..()

	user.visible_message(SPAN_NOTICE("\The [user] switches \the [src] [on ? "off" : "on"]."))
	on = !on
	update_icon()

/obj/machinery/power/skrell_reactor/on_update_icon()
	. = ..()

	if(!field_image)
		field_image = image(icon = 'icons/obj/machines/power/fusion.dmi', icon_state = "emfield_s1")
		field_image.color = COLOR_CYAN
		field_image.alpha = 50
		field_image.layer = SINGULARITY_LAYER
		field_image.appearance_flags |= RESET_COLOR

		var/matrix/M = matrix()
		M.Scale(3)
		field_image.transform = M

	if(on)
		overlays |= field_image
		set_light(0.8, 1, 6, l_color = COLOR_CYAN)
		icon_state = "core1"
	else
		overlays -= field_image
		set_light(0)
		icon_state = "core0"

/obj/machinery/power/skrell_reactor/Initialize()
	. = ..()
	update_icon()

/obj/machinery/power/skrell_reactor/Process()
	if(on)
		add_avail(output_power)
