/obj/item/weapon/gun/energy/laser
	name = "Hephaestus G40E"
	desc = "A Hephaestus Industries G40E carbine, designed to kill with concentrated energy blasts."
	icon = 'icons/obj/guns/laser_carbine.dmi'
	icon_state = "laser"
	item_state = "laser"
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	force = 10
	one_hand_penalty = 2
	bulk = GUN_BULK_RIFLE
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	matter = list(MATERIAL_STEEL = 2000)
	projectile_type = /obj/item/projectile/beam/midlaser
	wielded_item_state = "laser-wielded"

/obj/item/weapon/gun/energy/laser/mounted
	self_recharge = 1
	use_external_power = 1
	one_hand_penalty = 0 //just in case
	has_safety = FALSE

/obj/item/weapon/gun/energy/laser/practice
	name = "Hephaestus G40S-P"
	desc = "A modified version of the HI G40S-P, this one fires less concentrated energy bolts designed for target practice."
	icon_state = "laserp"
	projectile_type = /obj/item/projectile/beam/practice
	charge_cost = 10 //How much energy is needed to fire.

/obj/item/weapon/gun/energy/laser/practice/proc/hacked()
	return projectile_type != /obj/item/projectile/beam/practice

/obj/item/weapon/gun/energy/laser/practice/emag_act(var/remaining_charges, var/mob/user, var/emag_source)
	if(hacked())
		return NO_EMAG_ACT
	to_chat(user, "<span class='warning'>You disable the safeties on [src] and crank the output to the lethal levels.</span>")
	desc += " Its safeties are disabled and output is set to dangerous levels."
	projectile_type = /obj/item/projectile/beam/midlaser
	charge_cost = 20
	max_shots = rand(3,6) //will melt down after those
	return 1

/obj/item/weapon/gun/energy/laser/practice/handle_post_fire(mob/user, atom/target, var/pointblank=0, var/reflex=0)
	..()
	if(hacked())
		max_shots--
		if(!max_shots) //uh hoh gig is up
			to_chat(user, "<span class='danger'>\The [src] sizzles in your hands, acrid smoke rising from the firing end!</span>")
			desc += " The optical pathway is melted and useless."
			projectile_type = null

/obj/item/weapon/gun/energy/retro
	name = "Ancient-Pattern Thermal-Laser"
	icon = 'icons/obj/guns/retro_laser.dmi'
	icon_state = "retro"
	item_state = "retro"
	desc = "An ancient laser-pistol that still uses the 'Thermal' firing mechanism. It suffers from a low firerate, but is incredibly easy to upkeep; making it favoured amongst space-scum!"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_NORMAL
	projectile_type = /obj/item/projectile/beam
	fire_delay = 15 //old technology, and a pistol

/obj/item/weapon/gun/energy/captain
	name = "Ancient-Pattern SR-51"
	icon = 'icons/obj/guns/caplaser.dmi'
	icon_state = "caplaser"
	item_state = "caplaser"
	desc = "An incredibly rare product from nearly a century before: It's certainly aged well! This weapon was once the favoured tool of the Terran Defence Forces 'Commando' squads!"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	force = 5
	w_class = ITEM_SIZE_NORMAL
	projectile_type = /obj/item/projectile/beam
	origin_tech = null
	max_shots = 5 //to compensate a bit for self-recharging
	one_hand_penalty = 1 //a little bulky
	self_recharge = 1

/obj/item/weapon/gun/energy/lasercannon
	name = "Hephaestus Armageddon"
	desc = "The Hephaestus Armageddon is a anti-tank laser designed to punch-through nearly any mechanized infantry known in Terran-Space!"
	icon_state = "lasercannon"
	icon = 'icons/obj/guns/laser_cannon.dmi'
	item_state = null
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 6 //large and heavy
	w_class = ITEM_SIZE_HUGE
	projectile_type = /obj/item/projectile/beam/heavylaser
	charge_cost = 40
	max_shots = 6
	accuracy = 2
	fire_delay = 20
	wielded_item_state = "gun_wielded"

/obj/item/weapon/gun/energy/lasercannon/mounted
	name = "mounted laser cannon"
	self_recharge = 1
	use_external_power = 1
	recharge_time = 10
	accuracy = 0 //mounted laser cannons don't need any help, thanks
	one_hand_penalty = 0
	has_safety = FALSE

/obj/item/weapon/gun/energy/xray
	name = "Nanotrasen X-43"
	desc = "A high-power laser gun capable of emitting concentrated x-ray blasts, that are able to penetrate laser-resistant armor much more readily than standard photonic beams."
	icon = 'icons/obj/guns/xray.dmi'
	icon_state = "xray"
	item_state = "xray"
	slot_flags = SLOT_BELT|SLOT_BACK
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 3, TECH_MAGNET = 2, TECH_ESOTERIC = 2)
	projectile_type = /obj/item/projectile/beam/xray/midlaser
	one_hand_penalty = 2
	w_class = ITEM_SIZE_LARGE
	charge_cost = 15
	max_shots = 10
	wielded_item_state = "gun_wielded"
	combustion = 0

/obj/item/weapon/gun/energy/xray/pistol
	name = "Nanotrasen X-43p"
	icon = 'icons/obj/guns/xray_pistol.dmi'
	icon_state = "oldxray"
	item_state = "oldxray"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_MAGNET = 2, TECH_ESOTERIC = 2)
	projectile_type = /obj/item/projectile/beam/xray
	one_hand_penalty = 1
	w_class = ITEM_SIZE_NORMAL
	fire_delay = 10

/obj/item/weapon/gun/energy/sniperrifle
	name = "Hephaestus Baleful"
	desc = "The Hephaestus Industries Baleful is a designated marksman rifle capable of shooting powerful ionized beams, this is a weapon to kill from a distance."
	icon = 'icons/obj/guns/laser_sniper.dmi'
	icon_state = "sniper"
	item_state = "laser"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 5, TECH_POWER = 4)
	projectile_type = /obj/item/projectile/beam/sniper
	one_hand_penalty = 6
	accuracy = -4
	bulk = 8
	scoped_accuracy = 9
	slot_flags = SLOT_BACK
	charge_cost = 40
	max_shots = 4
	fire_delay = 35
	force = 10
	w_class = ITEM_SIZE_HUGE
	scope_zoom = 2
	wielded_item_state = "gun_wielded"

/obj/item/weapon/gun/energy/sniperrifle/on_update_icon()
	..()
	item_state_slots[slot_back_str] = icon_state //so that the on-back overlay uses the different charged states

////////Laser Tag////////////////////

/obj/item/weapon/gun/energy/lasertag
	name = "laser tag gun"
	icon = 'icons/obj/guns/lasertag.dmi'
	icon_state = "bluetag"
	item_state = "laser"
	desc = "Standard issue weapon of the Imperial Guard."
	origin_tech = list(TECH_COMBAT = 1, TECH_MAGNET = 2)
	self_recharge = 1
	matter = list(MATERIAL_STEEL = 2000)
	projectile_type = /obj/item/projectile/beam/lastertag/blue
	var/required_vest

/obj/item/weapon/gun/energy/lasertag/special_check(var/mob/living/carbon/human/M)
	if(ishuman(M))
		if(!istype(M.wear_suit, required_vest))
			to_chat(M, "<span class='warning'>You need to be wearing your laser tag vest!</span>")
			return 0
	return ..()

/obj/item/weapon/gun/energy/lasertag/blue
	icon_state = "bluetag"
	item_state = "bluetag"
	projectile_type = /obj/item/projectile/beam/lastertag/blue
	required_vest = /obj/item/clothing/suit/bluetag

/obj/item/weapon/gun/energy/lasertag/red
	icon_state = "redtag"
	item_state = "redtag"
	projectile_type = /obj/item/projectile/beam/lastertag/red
	required_vest = /obj/item/clothing/suit/redtag
