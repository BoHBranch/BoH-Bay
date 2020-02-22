/*************************************
* Stealthy and Inconspicuous Weapons *
*************************************/
/datum/uplink_item/item/stealthy_weapons
	category = /datum/uplink_category/stealthy_weapons

/datum/uplink_item/item/stealthy_weapons/soap
	name = "Subversive Soap"
	item_cost = 1
	path = /obj/item/weapon/soap

/datum/uplink_item/item/stealthy_weapons/cigarette_kit
	name = "Box of Tricky Cigarettes"
	desc = "A box with some 'special' packs in the following order: 2x Flashes, 2x Smokes, 1x MindBreaker Toxin, and 1x Tricordrazine. Try not to mix them up!"
	item_cost = 8
	path = /obj/item/weapon/storage/box/syndie_kit/cigarette

/datum/uplink_item/item/stealthy_weapons/concealed_cane
	name = "Concealed Cane Sword"
	desc = "A cane used by a true gentlemen, especially ones with sharp intentions."
	item_cost = 8
	path = /obj/item/weapon/cane/concealed

/datum/uplink_item/item/stealthy_weapons/random_toxin
	name = "Random Toxin Vial"
	desc = "Contains one of an assortment of nasty toxins, with a single syringe included. Don't worry, its labeled. "
	item_cost = 8
	path = /obj/item/weapon/storage/box/syndie_kit/toxin

/datum/uplink_item/item/stealthy_weapons/sleepy
	name = "Paralytic Pen"
	desc = "Looks and works like a pen, but prick someone with it, and 30 seconds later, they'll be on the ground mumbling."
	item_cost = 14
	path = /obj/item/weapon/pen/reagent/sleepy

/datum/uplink_item/item/stealthy_weapons/syringegun
	name = "Disguised Syringe Gun"
	desc = "A syringe gun disguised as an electronic cigarette with 4 darts included in the box. Chemicals not included!"
	item_cost = 10
	path = /obj/item/weapon/storage/box/syndie_kit/syringegun

/datum/uplink_item/item/stealthy_weapons/hfc
	name = "Vial of HFC"
	desc = "One of the most dangerous chemicals you could think of, easily vialed up. Be extra careful not to drink it!"
	item_cost = 84
	path = /obj/item/weapon/reagent_containers/glass/beaker/vial/hfc

/datum/uplink_item/item/stealthy_weapons/zombie
	name = "Vial of Black Tar"
	desc = "Supposedly, ingesting this would cause someone to become a little less alive, though still alive. How does it make sense? \
	Well, it doesn't. That's the fun of it!"
	item_cost = 220 //Needs two traitors collaborating, and even then, it burns a lot of your TCs. Zombies are overdone, mmkay?
	path = /obj/item/weapon/reagent_containers/glass/beaker/vial/zombie
