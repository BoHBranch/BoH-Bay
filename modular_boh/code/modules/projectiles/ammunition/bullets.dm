/obj/item/ammo_casing/rocket/rcr
	name = "incendiary shell"
	desc = "A high explosive designed to be fired from a launcher. This one is marked with various warnings. As if anyone reads them, pfft. \
	It does mention something about being an incredibly localized explosive, however, and only to be used against non-organic targets. Whatever that means."
	icon = 'modular_boh/icons/ammo.dmi'
	icon_state = "rcrshell"
	matter = list(MATERIAL_STEEL = 50000) //Same as the RCD, retardedly high, for good reason.
	projectile_type = /obj/item/projectile/bullet/rcr

/obj/item/ammo_casing/rifle/military/low
	desc = "A frangible bullet casing."
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/bullet/rifle/military/sec

/obj/item/ammo_magazine/shotholder/sabot
	name = "sabot shell holder"
	caliber = CALIBER_SABOT
	ammo_type = /obj/item/ammo_casing/sabot
	matter = list(MATERIAL_STEEL = 1240)
	marking_color = COLOR_GUNMETAL

/obj/item/ammo_casing/sabot
	name = "sabot shell"
	desc = "APFSDS in a neat little package. It's prone to over penetrating, and as such does little damage to targets without armor." //even though it does little damage overall, being a niche round.
	icon = 'modular_boh/icons/ammo.dmi'
	icon_state = "sabshell"
	spent_icon = "sabshell-spent"
	caliber = CALIBER_SABOT
	projectile_type = /obj/item/projectile/bullet/sabot
	matter = list(MATERIAL_STEEL = 420)

/obj/item/ammo_magazine/skrell_shotgun
	name = "skrellian flechette magazine"
	desc = "A magazine with pointy, alien flechettes inside"
	icon = 'modular_boh/icons/obj/ammo.dmi'
	icon_state = "skrellflechettemag"
	mag_type = MAGAZINE
	caliber = CALIBER_SKRELL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/skrell_shotgun
	matter = list(MATERIAL_STEEL = 1240)
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_casing/skrell_shotgun
	name = "skrellian flechette"
	desc = "A pointy flechette of alien design"
	icon = 'modular_boh/icons/obj/ammo.dmi'
	icon_state = "skrellflechette"
	spent_icon = "skrellflechette-spent"
	caliber = CALIBER_SKRELL_SHOTGUN
	projectile_type = /obj/item/projectile/bullet/magnetic/skrell_flechette

/obj/item/ammo_magazine/speedloader/large
	name = "heavy speed loader"
	icon_state = "spdloader_magnum"
	caliber = CALIBER_PISTOL_MAGNUM_LARGE
	ammo_type = /obj/item/ammo_casing/pistol/magnum/large
	matter = list(MATERIAL_STEEL = 4320) //Reduced this experimentally to 3x the regular cost of a magnum speedloader
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_casing/pistol/magnum/large
	desc = "A high-power bullet casing."
	caliber = CALIBER_PISTOL_MAGNUM_LARGE
	projectile_type = /obj/item/projectile/bullet/pistol/large

/obj/item/ammo_casing/pistol/magnum/rubber
	desc = "A high-power pistol bullet casing."
	caliber = CALIBER_PISTOL_MAGNUM
	projectile_type = /obj/item/projectile/bullet/pistol/strong/rubber
	icon_state = "magnumcasing"
	spent_icon = "magnumcasing-spent"

/obj/item/ammo_casing/rifle/military/large
	desc = "A military sniper rifle bullet casing."
	caliber = CALIBER_RIFLE_MILITARY_LARGE
	projectile_type = /obj/item/projectile/bullet/rifle/military/large
	icon_state = "rifle_mil"
	spent_icon = "rifle_mil-spent"

/obj/item/ammo_casing/rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	projectile_type = /obj/item/projectile/missile
	caliber = CALIBER_ROCKET

// Yes, this a copy paste of above, but these shouldn't be under the normal rocket subcategory so you can't reload one use launchers without admins.
/obj/item/ammo_casing/oneuse_rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	projectile_type = /obj/item/projectile/missile
	caliber = CALIBER_ROCKET
