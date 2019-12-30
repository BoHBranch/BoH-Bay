// marine patch
/obj/item/clothing/accessory/solgov/smc_patch
	name = "\improper Marine Corps patch"
	desc = "A robust shoulder patch, carrying the symbol of the Solar Marine Corps, or SMC for short."
	icon = 'maps/torch/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "smcpatch"
	on_rolled = list("down" = "none")
	slot = ACCESSORY_SLOT_INSIGNIA
	check_codex_val = FACTION_MARINES

// Sixth Fleet
/obj/item/clothing/accessory/solgov/fleet_patch/sixth
	name = "\improper Sixth Fleet Patch."
	desc = "A tactical shoulder patch carrying insignia of Sixth Fleet."
	icon = 'maps/torch/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "fleetpatch6"

// legion patch
/obj/item/clothing/accessory/solgov/sfl_patch
	name = "\improper Foreign Legion patch"
	desc = "A robust shoulder patch, carrying the symbol of Solar Foreign Legion, or SFL for short."
	icon = 'maps/torch/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "sflpatch"
	on_rolled = list("down" = "none")
	slot = ACCESSORY_SLOT_INSIGNIA
	check_codex_val = FACTION_LEGION

// ranks - proper marines
/obj/item/clothing/accessory/solgov/rank/marine_corps
	name = "marine ranks"
	desc = "Insignia denoting marine rank of some kind. These appear blank."
	icon_state = "armyrank_enlisted"

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted
	name = "ranks (E-1 private)"
	desc = "Insignia denoting the rank of Private."
	icon_state = "armyrank_enlisted"

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e2
	name = "ranks (E-2 private first class)"
	desc = "Insignia denoting the rank of Private First Class."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e3
	name = "ranks (E-3 lance corporal)"
	desc = "Insignia denoting the rank of Lance Corporal."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e4
	name = "ranks (E-4 corporal)"
	desc = "Insignia denoting the rank of Corporal."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e5
	name = "ranks (E-5 sergeant)"
	desc = "Insignia denoting the rank of Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e6
	name = "ranks (E-6 staff sergeant)"
	desc = "Insignia denoting the rank of Staff Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e7
	name = "ranks (E-7 gunnery sergeant)"
	desc = "Insignia denoting the rank of Gunnery Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8
	name = "ranks (E-8 master sergeant)"
	desc = "Insignia denoting the rank of Master Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8_alt
	name = "ranks (E-8 first sergeant)"
	desc = "Insignia denoting the rank of First Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9
	name = "ranks (E-9 master gunnery sergeant)"
	desc = "Insignia denoting the rank of Master Gunnery Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9_alt
	name = "ranks (E-9 sergeant major)"
	desc = "Insignia denoting the rank of Sergeant Major."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer
	name = "ranks (O-1 second lieutenant)"
	desc = "Insignia denoting the rank of Second Lieutenant."
	icon_state = "armyrank_officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o2
	name = "ranks (O-2 first lieutenant)"
	desc = "Insignia denoting the rank of First Lieutenant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3
	name = "ranks (O-3 captain)"
	desc = "Insignia denoting the rank of Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt
	name = "ranks (O-3 Marine captain)"
	desc = "Insignia denoting the rank of Marine Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt2
	name = "ranks (O-3 specialist captain)"
	desc = "Insignia denoting the rank of Specialist Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o4
	name = "ranks (O-4 major)"
	desc = "Insignia denoting the rank of Major."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o5
	name = "ranks (O-5 lieutenant colonel)"
	desc = "Insignia denoting the rank of Lieutenant Colonel."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o6
	name = "ranks (O-6 colonel)"
	desc = "Insignia denoting the rank of Colonel."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag
	name = "ranks (O-7 brigadier general)"
	desc = "Insignia denoting the rank of Brigadier General."
	icon_state = "armyrank_command"

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o8
	name = "ranks (O-8 major general)"
	desc = "Insignia denoting the rank of Major General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o9
	name = "ranks (O-9 lieutenant general)"
	desc = "Insignia denoting the rank of Lieutenant General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o10
	name = "ranks (O-10 general)"
	desc = "Insignia denoting the rank of General."

// ranks - foreign legion
/obj/item/clothing/accessory/solgov/rank/foreign_legion
	name = "legion ranks"
	desc = "Insignia denoting legionaire rank of some kind. These appear blank."
	icon_state = "armyrank_enlisted"

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted
	name = "ranks (E-1 legionnaire second class)"
	desc = "Insignia denoting the rank of Legionnaire Second Class."
	icon_state = "armyrank_enlisted"

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e2
	name = "ranks (E-2 legionnaire first class)"
	desc = "Insignia denoting the rank of Legionnaire First Class."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e3
	name = "ranks (E-3 caporal)"
	desc = "Insignia denoting the rank of Caporal."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e4
	name = "ranks (E-4 caporal chef)"
	desc = "Insignia denoting the rank of Caporal Chef."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e5
	name = "ranks (E-5 sergent)"
	desc = "Insignia denoting the rank of Sergent."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e6
	name = "ranks (E-6 sergent chef)"
	desc = "Insignia denoting the rank of Sergent Chef."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e8
	name = "ranks (E-8 adjutant)"
	desc = "Insignia denoting the rank of Adjutant."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e9
	name = "ranks (E-9 adjutant chef)"
	desc = "Insignia denoting the rank of Adjutant Chef."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/enlisted/e9_alt
	name = "ranks (E-9 adjutant major)"
	desc = "Insignia denoting the rank of Adjutant Major."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer
	name = "ranks (O-1 sous-lieutenant)"
	desc = "Insignia denoting the rank of Sous-Lieutenant."
	icon_state = "armyrank_officer"

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o2
	name = "ranks (O-2 lieutenant)"
	desc = "Insignia denoting the rank of Lieutenant."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o3
	name = "ranks (O-3 capitaine)"
	desc = "Insignia denoting the rank of Capitaine."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o3_alt
	name = "ranks (O-3 Legion capitaine)"
	desc = "Insignia denoting the rank of Legion Capitaine."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o4
	name = "ranks (O-4 commandant)"
	desc = "Insignia denoting the rank of Commandant."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o5
	name = "ranks (O-5 lieutenant-colonel)"
	desc = "Insignia denoting the rank of Lieutenant-colonel."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/officer/o6
	name = "ranks (O-6 colonel)"
	desc = "Insignia denoting the rank of Colonel."

/obj/item/clothing/accessory/solgov/rank/foreign_legion/flag
	name = "ranks (O-7 general of the brigade)"
	desc = "Insignia denoting the rank of G�n�ral de brigade."
	icon_state = "armyrank_command"

/obj/item/clothing/accessory/solgov/rank/foreign_legion/flag/o8
	name = "ranks (O-8 commandement of the foreign legion)"
	desc = "Insignia denoting the rank of G�n�ral de division."
