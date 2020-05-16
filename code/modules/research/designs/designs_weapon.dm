/datum/design/item/weapon
	build_type = WEAPONSFAB
	category = "Weapons"
	time = 300

/datum/design/item/weapon/stunrevolver
	name = "stun revolver"
	id = "stunrevolver"
	req_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	materials = list(MATERIAL_STEEL = 4000)
	build_path = /obj/item/weapon/gun/energy/stunrevolver
	sort_string = "TADAB"

/datum/design/item/weapon/milpistol
	name = "military pistol"
	id = "militarypistol"
	req_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	materials = list(MATERIAL_STEEL = 4000)
	build_path = /obj/item/weapon/gun/projectile/pistol/military/alt/solar
	sort_string = "TCDAB"

/datum/design/item/weapon/beanbagshot
	name = "beanbag shotgun"
	id = "bbshot"
	req_tech = list(TECH_MATERIAL = 1, TECH_COMBAT = 1)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_PLASTIC = 6000, MATERIAL_ALUMINIUM = 4000)
	build_path = /obj/item/weapon/gun/projectile/shotgun/pump/beanbag
	sort_string = "TBDAB"

/datum/design/item/weapon/modded_electrolaser
	name = "electrolaser carbine"
	id = "electcarbine"
	req_tech = list(TECH_MATERIAL = 1, TECH_COMBAT = 1)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_PLASTIC = 6000, MATERIAL_ALUMINIUM = 4000, MATERIAL_GLASS = 6000)
	build_path = /obj/item/weapon/gun/energy/taser/carbine
	sort_string = "TDDAB"

/datum/design/item/weapon/smartgun
	name = "smartgun"
	id = "smrtgun"
	req_tech = list(TECH_MATERIAL = 1, TECH_COMBAT = 1)
	materials = list(MATERIAL_STEEL = 6000, MATERIAL_PLASTIC = 8000, MATERIAL_ALUMINIUM = 4000)
	build_path = /obj/item/weapon/gun/energy/gun/secure
	sort_string = "TEDAB"

/datum/design/item/weapon/temp_gun
	name = "temperature gun"
	desc = "A gun that shoots high-powered glass-encased energy temperature bullets."
	id = "temp_gun"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 4, TECH_POWER = 3, TECH_MAGNET = 2)
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 500, MATERIAL_SILVER = 3000)
	build_path = /obj/item/weapon/gun/energy/temperature
	sort_string = "TAAAC"

/datum/design/item/weapon/anti_photon
	name = "antiphoton grenade"
	id = "anti_photon"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MATERIAL = 4)
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_GLASS = 1000, MATERIAL_DIAMOND = 1000)
	build_path = /obj/item/weapon/grenade/anti_photon
	sort_string = "TABAB"

/datum/design/item/weapon/flash
	name = "flash"
	id = "flash"
	req_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	materials = list(MATERIAL_STEEL = 1500, MATERIAL_GLASS = 1500)
	build_path = /obj/item/device/flash
	sort_string = "TADAA"

/datum/design/item/weapon/stunrifle
	name = "stun rifle"
	id = "stun_rifle"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	materials = list(MATERIAL_STEEL = 4000, MATERIAL_GLASS = 1000, MATERIAL_SILVER = 500)
	build_path = /obj/item/weapon/gun/energy/stunrevolver/rifle
	sort_string = "TADAC"

/datum/design/item/weapon/wt550
	name = "9mm submachine gun"
	id = "wt550"
	req_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	materials = list(MATERIAL_STEEL = 8000, MATERIAL_SILVER = 3000, MATERIAL_DIAMOND = 1500)
	build_path = /obj/item/weapon/gun/projectile/automatic/sec_smg
	sort_string = "TAPAA"

/datum/design/item/weapon/ammunition/AssembleDesignName()
	..()
	name = "Ammunition prototype ([item_name])"

/datum/design/item/weapon/ammunition/ammo_small
	id = "ammo_small"
	desc = "A box of small pistol rounds."
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 3750, MATERIAL_SILVER = 100)
	build_path = /obj/item/ammo_magazine/box/smallpistol
	sort_string = "TBAAA"

/datum/design/item/weapon/ammunition/stunshell
	desc = "A stunning shell for a shotgun."
	id = "stunshell"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 4000)
	build_path = /obj/item/ammo_casing/shotgun/stunshell
	sort_string = "TBAAC"

/datum/design/item/weapon/ammunition/ammo_emp_slug
	id = "ammo_emp_slug"
	desc = "A shotgun slug with an integrated EMP charge."
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_URANIUM = 1000)
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	build_path = /obj/item/ammo_casing/shotgun/emp
	sort_string = "TBAAG"
