/* TUTORIAL
	"icon" is the file with the HUD/ground icon for the item
	"icon_state" is the iconstate in this file for the item
	"icon_override" is the file with the on-mob icons, can be the same file (Except for glasses, shoes, and masks.)
	"item_state" is the iconstate for the on-mob icons:
		item_state_s is used for worn uniforms on mobs
		item_state_r and item_state_l are for being held in each hand

	"item_state_slots" can replace "item_state", it is a list:
		item_state_slots["slotname1"] = "item state for that slot"
		item_state_slots["slotname2"] = "item state for that slot"
*/
/* TEMPLATE
//ckey:Character Name
/obj/item/clothing/type/fluff/charactername
	name = ""
	desc = ""

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "myicon"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "myicon"

*/


//Ripped from Vore :D//

/obj/item/clothing/head/fluff/wolfgirl
    name = "Wolfgirl Hat"
    desc = "An odd, small hat with two strings attached to it."

    icon_state = "wolfgirlhat"
    icon = 'icons/vore/custom_clothes_vr.dmi'
    icon_override = 'icons/vore/custom_onmob_vr.dmi'

/obj/item/clothing/shoes/fluff/wolfgirl
    name = "Red Sandals"
    desc = "A pair of sandals that make you want to awoo!"

    icon_state = "wolfgirlsandals"
    icon = 'icons/vore/custom_clothes_vr.dmi'
    icon_override = 'icons/vore/custom_onmob_vr.dmi'

/obj/item/clothing/under/fluff/wolfgirl
	name = "Wolfgirl Clothes"
	desc = "A set of clothes almost identical to those Wolf Girls always wear..."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "wolfgirluni"
	worn_state = "wolfgirluni_mob"
	rolled_sleeves = 0
	rolled_down = 0

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "wolfgirluni_mob"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/obj/item/clothing/suit/storage/hooded/wintercoat/roiz
	name = "dinosaur winter coat"
	desc = "A custom winter coat that looks rather like a dinosaur."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "coatroiz"
	item_state_slots = list(slot_r_hand_str = "coatroiz", slot_l_hand_str = "coatroiz")

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "coatroiz_mob"

/obj/item/clothing/suit/storage/hooded/wintercoat/roiz/ui_action_click()
	ToggleHood_roiz()

/obj/item/clothing/suit/storage/hooded/wintercoat/roiz/equipped(mob/user, slot)
	if(slot != slot_wear_suit)
		RemoveHood_roiz()
	..()

/obj/item/clothing/suit/storage/hooded/wintercoat/roiz/proc/RemoveHood_roiz()
	icon_state = "coatroiz"
	item_state = "coatroiz_mob"
	suittoggled = 0
	if(ishuman(hood.loc))
		var/mob/living/carbon/H = hood.loc
		H.unEquip(hood, 1)
		H.update_inv_wear_suit()
	hood.loc = src

/obj/item/clothing/suit/storage/hooded/wintercoat/roiz/proc/ToggleHood_roiz()
	if(!suittoggled)
		if(ishuman(loc))
			var/mob/living/carbon/human/H = loc
			if(H.wear_suit != src)
				to_chat(H, "<span class='warning'>You must be wearing [src] to put up the hood!</span>")
				return
			if(H.head)
				to_chat(H, "<span class='warning'>You're already wearing something on your head!</span>")
				return
			else
				H.equip_to_slot_if_possible(hood,slot_head,0,0,1)
				suittoggled = 1
				icon_state = "coatroiz_t"
				item_state = "coatroiz_mob_t"
				H.update_inv_wear_suit()
	else
		RemoveHood_roiz()
/*
compat

/obj/item/clothing/suit/storage/hooded/wintercoat/roiz/digest_act(var/atom/movable/item_storage = null)
	return FALSE
*/

/obj/item/clothing/head/fluff/ketrai
	name = "Pink Bear Hat"
	desc = "A pink space bear hat, the origins are unknown"

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "bearpelt"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "ketraibearpelt"

/obj/item/clothing/under/skirt/fluff/serkii
	name = "stylish blue skirt"
	desc = "A simple black shirt tops this skirt, made of a down soft blue fabric and pleated."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "serkiskirt"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "serkiskirt"

/obj/item/clothing/under/fluff/nightgown
	name = "nightgown"
	desc = "A seethrough nightgown. For those intimate nights with your significant other."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "joannightgown"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "joannightgown"

//For general use
/obj/item/clothing/suit/storage/vest/hoscoat/fluff/brittrenchcoat
	name = "Britania Trench Coat"
	desc = "An armored trench coat from the Brittanian Empire. It looks so British."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "brittrenchcoat"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "brittrenchcoat"

//For general use
/obj/item/clothing/suit/storage/vest/hoscoat/nazi_greatcoat
	name = "Greatcoat"
	desc = "Perfect attire for kicking down the doors of suspected dissidents; this coat gives off an imposing look, while offering a luxuriously plush fur liner."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "greatcoat"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "greatcoat_mob"

//For general use
/obj/item/clothing/suit/storage/fluff/fedcoat
	name = "Federation Uniform Jacket (Red)"
	desc = "A uniform jacket from the United Federation. Starfleet still uses this uniform and there are variations of it. Set phasers to awesome."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fedcoat"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fedcoat"

	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	allowed = list(
				/obj/item/weapon/tank/emergency/oxygen,
				/obj/item/device/flashlight,
				/obj/item/weapon/gun/energy,
				/obj/item/weapon/gun/projectile,
				/obj/item/ammo_magazine,
				/obj/item/ammo_casing,
//				/obj/item/weapon/storage/fancy/shotgun_ammo,
				/obj/item/weapon/melee/baton,
				/obj/item/weapon/handcuffs,
//				/obj/item/device/detective_scanner,
				/obj/item/device/taperecorder)
	armor = list(melee = 50, bullet = 15, laser = 25, energy = 10, bomb = 0, bio = 0, rad = 0)
	var/unbuttoned = 0

/obj/item/clothing/suit/storage/fluff/fedcoat/verb/toggle()
	set name = "Toggle coat buttons"
	set category = "Object"
	set src in usr

	if(usr.incapacitated() || usr.stat || usr.restrained())
		return 0

	switch(unbuttoned)
		if(0)
			icon_state = "[initial(icon_state)]_open"
			item_state = "[initial(item_state)]_open"
			unbuttoned = 1
			to_chat(usr, "You unbutton the coat.")
		if(1)
			icon_state = "[initial(icon_state)]"
			item_state = "[initial(item_state)]"
			unbuttoned = 0
			to_chat(usr, "You button up the coat.")
	usr.update_inv_wear_suit()

	//Variants
/obj/item/clothing/suit/storage/fluff/fedcoat/fedblue
	name = "Federation Uniform Jacket (Blue)"
	desc = "A uniform jacket from the United Federation. Starfleet still uses this uniform and there are variations of it. Wearing this may make you feel all scientific."
	icon_state = "fedblue"
	item_state = "fedblue"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 50, rad = 0)

/obj/item/clothing/suit/storage/fluff/fedcoat/fedeng
	name = "Federation Uniform Jacket (Yellow)"
	desc = "A uniform jacket from the United Federation. Starfleet still uses this uniform and there are variations of it.Wearing it may make you feel like checking a warp core, whatever that is."
	icon_state = "fedeng"
	item_state = "fedeng"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 10, bomb = 0, bio = 30, rad = 35)

/obj/item/clothing/suit/storage/fluff/fedcoat/fedcapt
	name = "Federation Uniform Jacket (Command)"
	desc = "A uniform jacket from the United Federation. Starfleet still uses this uniform and there are variations of it. You feel like a commanding officer of Starfleet."
	icon_state = "fedcapt"
	item_state = "fedcapt"
	armor = list(melee = 50, bullet = 5, laser = 15,energy = 10, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/fluff/modernfedcoat
	name = "Modern Federation Uniform Jacket (Command)"
	desc = "A modern uniform jacket from the United Federation. Their Starfleet had recently started using these uniforms. Wearing this makes you feel like a competant commander."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fedmodern"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fedmodern"

	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	allowed = list(
				/obj/item/weapon/tank/emergency/oxygen,
				/obj/item/device/flashlight,
				/obj/item/weapon/gun/energy,
				/obj/item/weapon/gun/projectile,
				/obj/item/ammo_magazine,
				/obj/item/ammo_casing,
//				/obj/item/weapon/storage/fancy/shotgun_ammo,
				/obj/item/weapon/melee/baton,
				/obj/item/weapon/handcuffs,
//				/obj/item/device/detective_scanner,
				/obj/item/device/taperecorder)
	armor = list(melee = 50, bullet = 15, laser = 25, energy = 10, bomb = 0, bio = 0, rad = 0)

	//Variants
/obj/item/clothing/suit/storage/fluff/modernfedcoat/modernfedblue
	name = "Modern Federation Uniform Jacket (Blue)"
	desc = "A modern uniform jacket from the United Federation. Their Starfleet had recently started using these uniforms. Wearing this makes you feel like a scientist or a pilot."
	icon_state = "fedmodernblue"
	item_state = "fedmodernblue"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 50, rad = 0)

/obj/item/clothing/suit/storage/fluff/modernfedcoat/modernfedeng
	name = "Modern Federation Uniform Jacket (Yellow)"
	desc = "A modern uniform jacket from the United Federation. Their Starfleet had recently started using these uniforms. You feel like you can handle any type of technical engineering problems."
	icon_state = "fedmoderneng"
	item_state = "fedmoderneng"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 10, bomb = 0, bio = 30, rad = 35)

/obj/item/clothing/suit/storage/fluff/modernfedcoat/modernfedsec
	name = "Modern Federation Uniform Jacket (Red)"
	desc = "A modern uniform jacket from the United Federation. Their Starfleet had recently started using these uniforms. This uniform makes you want to protect and serve as an officer."
	icon_state = "fedmodernsec"
	item_state = "fedmodernsec"
	armor = list(melee = 50, bullet = 5, laser = 15,energy = 10, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/head/caphat/formal/fedcover
	name = "Federation Officer's Cap"
	desc = "An officer's cap that demands discipline from the one who wears it."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fedcapofficer"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fedcapofficer_mob"

	//Variants
/obj/item/clothing/head/caphat/formal/fedcover/fedcoverblue
	name = "Federation Officer's Cap (Blue)"
	desc = "An officer's cap that demands discipline from the one who wears it."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fedcapsci"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fedcapsci_mob"

/obj/item/clothing/head/caphat/formal/fedcover/fedcovereng
	name = "Federation Officer's Cap (Yellow)"
	desc = "An officer's cap that demands discipline from the one who wears it."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fedcapeng"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fedcapeng_mob"

/obj/item/clothing/head/caphat/formal/fedcover/fedcoversec
	name = "Federation Officer's Cap (Red)"
	desc = "An officer's cap that demands discipline from the one who wears it."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fedcapsec"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fedcapsec_mob"

/obj/item/clothing/head/caphat/formal/fedcover/police
	name = "Police Officer's Cap"
	desc = "A Police Officer's cap that demands discipline from the one who wears it."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "policecover"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "policecover_mob"


/*

Luke or carl will fuck with this later.

// bwoincognito:Tasald Corlethian
/obj/item/clothing/under/det/fluff/tasald
	name = "Tasald's outfit"
	desc = "Tasald's outfit. Very green."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "tasaldsuit"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "tasaldsuit"
	armor = list(melee = 10, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)

// bwoincognito:Tasald Corlethian
/obj/item/clothing/suit/storage/det_suit/fluff/tasald
	name = "Tasald's Vest"
	desc = "A fancy looking vest. You look like a smooth operating officer in this."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "tasvest"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "tasvest"

	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 40, bullet = 30, laser = 30, energy = 10, bomb = 10, bio = 0, rad = 0)

// bwoincognito:Tasald Corlethian
/obj/item/clothing/suit/storage/det_suit/fluff/tas_coat
	name = "Armored Colony coat"
	desc = "Dark green and grey colored sleeveless long coat with two thick metal shoulder pads. has seen some wear and tear, with noticeable patches in the fabric, scratches on the shoulder pads, but with a clean patch on the left upper chest. It has a red NT marked on the right shoulder pad and red Security on the left. "
	allowed = list(/obj/item/weapon/gun,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/device/flashlight/maglight,/obj/item/clothing/head/helmet)

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "tasaldcoat"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "tasaldcoat_mob"

	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 60, bullet = 60, laser = 60, energy = 40, bomb = 40, bio = 0, rad = 0)
*/

//natje:Pumila
/obj/item/clothing/under/fluff/aluranevines
	name = "Pumila's vines"
	desc = "A wrap of green vines and colourful flowers."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "alurane-vines"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "alurane-vines_mob"
	item_state_slots = list(slot_r_hand_str = "alurane-vines_r", slot_l_hand_str = "alurane-vines_l")

//HOS Hardsuit
/obj/item/clothing/suit/space/void/security/fluff/hos // ToDo: Rig version.
	name = "\improper prototype voidsuit"
	desc = "A customized security voidsuit made to match the Head of Security's obession with black. Has additional composite armor."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "rig-hos"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "rig-hos_mob"

	species_restricted = null

//HOS Hardsuit Helmet
/obj/item/clothing/head/helmet/space/void/security/fluff/hos // ToDo: Rig version.
	name = "\improper prototype voidsuit helmet"
	desc = "A customized security voidsuit helmet customized to include the Head of Security's signature hat. Has additional composite armor."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "rig0-hos"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "rig0-hos_mob"

	species_restricted = null

/obj/item/weapon/storage/belt/utility/fluff/atmos
	name = "atmos belt"
	desc = "A tool-belt in Atmos colours."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "vulpine_belt"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "vulpine_belt_mob"

	storage_slots = 9

/obj/item/weapon/storage/belt/utility/fluff/atmos/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/device/multitool(src)
	new /obj/item/stack/cable_coil(src, 30, "red")

/obj/item/clothing/under/dress/maid
	name = "Maid Outfit"
	desc = "A french maid outfit made ironically in Gaia's version of the far east."

//Kisukegema:Kisuke `the nerd` Gema
/obj/item/clothing/glasses/omnihud/kamina
	name = "Kamina glasses"
	icon = 'icons/vore/custom_items_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "kamina"
	desc = "ROW ROW, FIGHT THE POWER."
	flash_protection = FLASH_PROTECTION_MAJOR //Why not.

//Kitsuhana Uniforms - Despite the fact that we removed KHI, we're keeping these. -YW
/obj/item/clothing/under/rank/khi
	name = "Delete Me"
	desc = "Why did you spawn this one? Dork."
	//catalogue_data = list(/datum/category_item/catalogue/information/organization/khi)
	sensor_mode = 3

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "khi_uniform_i"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = ""

/obj/item/clothing/under/rank/khi/cmd //Command version
	name = "KHI command suit"
	desc = "An outdated command uniform, branded with the logo of a defunct spacer organization"
	icon_state = "khi_uniform_cmd_i"
	item_state = "khi_uniform_cmd"
	worn_state = "khi_uniform_cmd"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/under/rank/khi/sec //Security version
	name = "KHI security suit"
	desc = "An outdated security uniform, branded with the logo of a defunct spacer organization"
	icon_state = "khi_uniform_sec_i"
	item_state = "khi_uniform_sec"
	worn_state = "khi_uniform_sec"
	armor = list(melee = 10, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/under/rank/khi/med //Medical version
	name = "KHI medical suit"
	desc = "An outdated medical uniform, branded with the logo of a defunct spacer organization"
	icon_state = "khi_uniform_med_i"
	item_state = "khi_uniform_med"
	worn_state = "khi_uniform_med"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 10, rad = 0)

/obj/item/clothing/under/rank/khi/eng //Engineering version
	name = "KHI engineering suit"
	desc = "An outdated engineer uniform, branded with the logo of a defunct spacer organization."
	icon_state = "khi_uniform_eng_i"
	item_state = "khi_uniform_eng"
	worn_state = "khi_uniform_eng"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 10)

/obj/item/clothing/under/rank/khi/sci //Science version
	name = "KHI science suit"
	desc = "An outdated science uniform, branded with the logo of a defunct spacer organization"
	icon_state = "khi_uniform_sci_i"
	item_state = "khi_uniform_sci"
	worn_state = "khi_uniform_sci"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/trench/fluff/brown_det
	name = "Thin Leather coat"
	desc = "A finely made leather coat designed for use in laboratories and doubles for parties."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "octavgentlecoat"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "octavgentlecoat_mob"
	blood_overlay_type = "coat"
	allowed = list(/obj/item/weapon/tank/emergency/oxygen, /obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/flame/lighter,/obj/item/device/taperecorder,/obj/item/device/uv_light)

/obj/item/clothing/under/det/fluff/brown_det
	name = "Expensive Suit and vest"
	desc = "A well made suit and tie, with a thin leather vest, while not as rugged as normal lab suits, it lets the wearer look dashing as they work."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "octavgentlesuit"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "octavgentlesuit_mob" //don't forget to rename the sprite.

/obj/item/clothing/head/fedora/fluff/brown_det
	name = "Expensive Bowler Hat"
	desc = "A well made bowler hat. Lets the wearer look dashing as they work."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "bowler"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "bowler_mob"

/*  Broken Sprites, might look at later ~ Luke
/obj/item/clothing/mask/gas/plaguedoctor/fluff/octaviousmask
	name = "Customized Gas Mask"
	desc = "A customized gas mask to look like an old plague doctors, with a special looking lens in the left eye that turns on when in use."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "octplaguedoctor"
	icon_override = 'icons/vore/custom_onmob_vr.dmi'
	item_state = "octplaguedoctor_mob"
	item_state_slots = null
	armor = list(melee = 0, bullet = 0, laser = 2,energy = 2, bomb = 0, bio = 90, rad = 0)
	body_parts_covered = HEAD|FACE|EYES

//bwoincognito:Octavious Ward
/obj/item/clothing/glasses/hud/health/octaviousmonicle
	name = "Gilded monocle"
	desc = "Avery expensive looking monocle inlaid with small gems around the gold frame. It has a thin leather cord running down to a clasp for attaching to ones coat. Probably not a good idea to steal this."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "clockworkgoggle_l"
	icon_override = 'icons/vore/custom_onmob_vr.dmi'
	item_state = "clockworkgoggle_l_mob"
	item_state_slots = null
	body_parts_covered = 0
*/

/obj/item/clothing/shoes/black/cuffs
	name = "gilded leg wraps"
	desc = "Ankle coverings for digitigrade creatures. Gilded!"
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "gildedcuffs"

	icon_override = 'icons/vore/custom_onmob_vr.dmi'
	item_icons = list()

	body_parts_covered = 0

/obj/item/clothing/shoes/black/cuffs/red
	name = "red leg wraps"
	desc = "Ankle coverings for digitigrade creatures. Red!"
	icon_state = "redcuffs"

/obj/item/clothing/shoes/black/cuffs/blue
	name = "blue leg wraps"
	desc = "Ankle coverings for digitigrade creatures. Blue!"
	icon_state = "bluecuffs"

/*
//bwoincognito:Octavious Ward
/obj/item/clothing/shoes/black/cuffs/octavious
	name = "silvered leg wraps"
	desc = "Dark leather leg wraps with sliver clasps on the sides. Stylish and functional."
	icon_state = "silvergildedcuffs"
*/

/obj/item/clothing/head/fedora/fluff/caval
	name = "Cavalier Hat"
	desc = "A smart, wide-brimmed hat with a rather fetching red feather in the brim. All for one, one for all."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "jemli_hat"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "jemli_hat_mob"

/obj/item/clothing/suit/storage/hazardvest/fluff/verin
	name = "Green Haz-coat"
	desc = "A well-worn green, long coat made with lightweight materials, it has a radioactive hazard icon on it's right sleeve. Smells faintly like sergal."
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 20)
	body_parts_covered = UPPER_TORSO|ARMS
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "verin"
	item_state = "verin_mob"

/obj/item/clothing/suit/chococoat
	name = "Chococoat"
	desc = "A long coat designed to resemble Getmore Chocolate Corp's namesake chocolate bar wrapper." //A walking advertisement?
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "chococoat_on"
	icon_state = "chococoat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	allowed = list (/obj/item/weapon/material/knife)

/obj/item/clothing/under/fluff/emt_su
	name = "EMT Service Uniform"
	desc = "This uniform - consisting of only the uniform shirt, and built out of a soft fleece - dons the badge of NT Fire and Rescuse on both shoulders. The badges denote the wearer as a FF/Paramedic, and their name is embroidered in a gold thread on their right breast." //A walking advertisement?
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "taigaff_on"
	icon_state = "taigaff" //Went ahead and made the det_corporate sprite fit.
/*
Departamental Swimsuits, for general use
*/

/obj/item/clothing/under/swimsuit/fluff/
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	siemens_coefficient = 1

/obj/item/clothing/under/swimsuit/fluff/engineering
	name = "Engineering Swimsuit"
	desc = "It's an orange high visibility swimsuit worn by engineers. It lacks radiation, or any, shielding."
	icon_state = "swimsuit_engineering"
	item_state = "swimsuit_engineering_mob"

/obj/item/clothing/under/swimsuit/fluff/science
	name = "Science Swimsuit"
	desc = "It's made of a special fiber that provides no protection whatsoever, but its hydrophobic. It has markings that denote the wearer as a scientist."
	icon_state = "swimsuit_science"
	item_state = "swimsuit_science_mob"

/obj/item/clothing/under/swimsuit/fluff/security
	name = "Security Swimsuit"
	desc = "It's made of a slightly sturdier material than standard swimsuits, to allow for a more robust appearance."
	icon_state = "swimsuit_security"
	item_state = "swimsuit_security_mob"

/obj/item/clothing/under/swimsuit/fluff/medical
	name = "Medical Swimsuit"
	desc = "It's made of a special fiber that provides no protection whatsoever, but its elastic. It has a cross on the back denoting that the wearer is trained medical personnel."
	icon_state = "swimsuit_medical"
	item_state = "swimsuit_medical_mob"

//Just some alt-uniforms themed around Star Trek - Pls don't sue, Mr Roddenberry ;_;
// PS. <3 Nienhaus

/obj/item/clothing/under/rank/trek
	name = "Section 31 Uniform"
	desc = "Oooh... right."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = ""

//TOS
/obj/item/clothing/under/rank/trek/command
	name = "Command Uniform"
	desc = "The uniform worn by command officers in the mid 2260s."
	icon_state = "trek_command"
	item_state = "trek_command"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0) // Considering only staff heads get to pick it

/obj/item/clothing/under/rank/trek/engsec
	name = "Operations Uniform"
	desc = "The uniform worn by operations officers of the mid 2260s. You feel strangely vulnerable just seeing this..."
	icon_state = "trek_engsec"
	item_state = "trek_engsec"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0) // since they're shared between jobs and kinda moot.

/obj/item/clothing/under/rank/trek/medsci
	name = "MedSci Uniform"
	desc = "The uniform worn by medsci officers in the mid 2260s."
	icon_state = "trek_medsci"
	item_state = "trek_medsci"
	permeability_coefficient = 0.50
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 10, rad = 0) // basically a copy of vanilla sci/med

//TNG
/obj/item/clothing/under/rank/trek/command/next
	desc = "The uniform worn by command officers. This one's from the mid 2360s."
	icon_state = "trek_next_command"
	item_state = "trek_next_command"

/obj/item/clothing/under/rank/trek/engsec/next
	desc = "The uniform worn by operation officers. This one's from the mid 2360s."
	icon_state = "trek_next_engsec"
	item_state = "trek_next_engsec"

/obj/item/clothing/under/rank/trek/medsci/next
	desc = "The uniform worn by medsci officers. This one's from the mid 2360s."
	icon_state = "trek_next_medsci"
	item_state = "trek_next_medsci"

//ENT
/obj/item/clothing/under/rank/trek/command/ent
	desc = "The uniform worn by command officers of the 2140s."
	icon_state = "trek_ent_command"
	item_state = "trek_ent_command"

/obj/item/clothing/under/rank/trek/engsec/ent
	desc = "The uniform worn by operations officers of the 2140s."
	icon_state = "trek_ent_engsec"
	item_state = "trek_ent_engsec"

/obj/item/clothing/under/rank/trek/medsci/ent
	desc = "The uniform worn by medsci officers of the 2140s."
	icon_state = "trek_ent_medsci"
	item_state = "trek_ent_medsci"

//VOY
/obj/item/clothing/under/rank/trek/command/voy
	desc = "The uniform worn by command officers of the 2370s."
	icon_state = "trek_voy_command"
	item_state = "trek_voy_command"

/obj/item/clothing/under/rank/trek/engsec/voy
	desc = "The uniform worn by operations officers of the 2370s."
	icon_state = "trek_voy_engsec"
	item_state = "trek_voy_engsec"

/obj/item/clothing/under/rank/trek/medsci/voy
	desc = "The uniform worn by medsci officers of the 2370s."
	icon_state = "trek_voy_medsci"
	item_state = "trek_voy_medsci"

//DS9

/obj/item/clothing/suit/storage/trek/ds9
	name = "Padded Overcoat"
	desc = "The overcoat worn by all officers of the 2380s."
	icon_state = "trek_ds9_coat"
	icon = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "trek_ds9_coat_mob"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	permeability_coefficient = 0.50
	allowed = list(
		/obj/item/device/flashlight, /obj/item/device/scanner/gas,
		/obj/item/device/radio, /obj/item/weapon/tank/emergency/oxygen,
		/obj/item/weapon/reagent_containers/hypospray, /obj/item/device/scanner/health,
		/obj/item/weapon/reagent_containers/dropper,/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/reagent_containers/glass/bottle,/obj/item/weapon/reagent_containers/glass/beaker,
		/obj/item/weapon/reagent_containers/pill,/obj/item/weapon/storage/pill_bottle
		)
	armor = list(melee = 20, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 20, rad = 25)

/obj/item/clothing/suit/storage/trek/ds9/admiral // Only for adminuz
	name = "Admiral Overcoat"
	desc = "Admirality specialty coat to keep flag officers fashionable and protected."
	icon_state = "trek_ds9_coat_adm"
	item_state = "trek_ds9_coat_adm_mob"
	armor = list(melee = 45, bullet = 35, laser = 35, energy = 20, bomb = 0, bio = 40, rad = 55)


/obj/item/clothing/under/rank/trek/command/ds9
	desc = "The uniform worn by command officers of the 2380s."
	icon_state = "trek_command"
	item_state = "trek_ds9_command"

/obj/item/clothing/under/rank/trek/engsec/ds9
	desc = "The uniform worn by operations officers of the 2380s."
	icon_state = "trek_engsec"
	item_state = "trek_ds9_engsec"

/obj/item/clothing/under/rank/trek/medsci/ds9
	desc = "The uniform undershit worn by medsci officers of the 2380s."
	icon_state = "trek_medsci"
	item_state = "trek_ds9_medsci"

//For general use maybe
/obj/item/clothing/under/batter //I guess we're going OFF limits.
	name = "Worn baseball outfit"
	desc = "<b>Purification in progress...</b>"
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "batter"
	item_state = "batter_mob"

/*
/obj/item/clothing/suit/storage/hooded/wintercoat/jessie
	name = "Handmade Winter Suit"
	desc = "A durable, but somewhat ragged lower portion of a snow suit fitted for a wolftaur."
	icon = 'icons/mob/taursuits_wolf_vr.dmi'
	icon_state = "jessiecoat"
	item_state = "jessiecoat"


/obj/item/clothing/suit/storage/hooded/wintercoat/jessie/mob_can_equip(var/mob/living/carbon/human/H, slot, disable_warning = 0)
	if(..())
		if(istype(H) && istype(H.tail_style, /datum/sprite_accessory/tail/taur/wolf))
			return ..()
		else
			to_chat(H, "<span class='warning'>You need to have a wolf-taur half to wear this.</span>")
			return 0

//samanthafyre:Kateryna Petrovitch
/obj/item/clothing/suit/armor/vest/wolftaur/kate
	name = "Kat's Fox Taur Armor"
	desc = "A set of security armor, light weight and easy to run in for a Taur, this item protects the \
	entire body."
	icon = 'icons/mob/taursuits_wolf_vr.dmi'
	icon_state = "katesuit"
	item_state_slots = null

/obj/item/clothing/suit/armor/vest/wolftaur/kate/mob_can_equip(var/mob/living/carbon/human/H, slot, disable_warning = 0)
	if(..())
		if(istype(H) && istype(H.tail_style, /datum/sprite_accessory/tail/taur/wolf))
			return ..()
		else
			to_chat(H, "<span class='warning'>You need to have a wolf-taur half to wear this.</span>")
			return 0

//samanthafyre:Kateryna Petrovitch
/obj/item/clothing/suit/space/void/engineering/kate
	name = "Kat's Navy Engineer voidsuit"
	desc = "Taur engineering voidsuit. Recolored navy blue and white. Slightly tweaked as well to \
	get close to having security voidsuit protection as possible with a slight reduction in movement \
	speed to compensate for custom padding and armor Kateryna made herself."
	icon = 'icons/mob/taursuits_wolf_vr.dmi'
	icon_state = "lilithsuit"
	item_state = "lilithsuit"
	species_restricted = null
	armor = list(melee = 40, bullet = 20, laser = 20,energy = 5, bomb = 35, bio = 100, rad = 20)

//samanthafyre:Kateryna Petrovitch
/obj/item/clothing/head/helmet/space/fluff/kate
	name = "Kat's Navy Engineer Helmet"
	desc = "A customized combat space helmet made for Kateryna. It uses a navy design as the base before it\
	was customized to suit the wearer's personality."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "lilithhelmet"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "lilithhelmet"
	light_overlay = "helmet_light"
	species_restricted = null

/obj/item/clothing/head/helmet/space/fluff/kate/mob_can_equip(var/mob/living/carbon/human/H, slot, disable_warning = 0)
	if(..())
		if(H.ckey != "samanthafyre")
			to_chat(H, "<span class='warning'>You try to fit on the helmet, but it doesn't fit.</span>")
			return 0
		else
			return 1
*/


/obj/item/clothing/glasses/sunglasses/fluff/c_visor
	name = "cyborg visor"
	desc = "Eyewear worn by a once famous Thunderdome competitor. Fo' shizzle."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "alfonso_visor"
	icon_override = 'icons/vore/custom_onmob_vr.dmi'

/obj/item/clothing/under/fluff/morunder
	name = "grey top with shorts"
	desc = "Fashionable grey top, combined with black shorts. Fancy!"
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "morunder"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "morunder_mob"

/obj/item/clothing/gloves/fluff/morsleeves
	name = "fingerless sleeves"
	desc = "Cute long armwarmers. Sadly, they don't cover fingers."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "morsleeves"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "morsleeves_mob"

/obj/item/clothing/shoes/fluff/morthighs
	name = "long grey socks"
	desc = "Striped, soft thigh-high socks with no fingers. Must be hard to wash them..."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "morthighs"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "morthighs_mob"

//Jackets For General Use. Sprited by Joji.
/obj/item/clothing/suit/storage/fluff/jacket //Not the toggle version since it uses custom toggle code to update the on-mob icon.
	name = "Field Jacket"
	desc = "A standard Earth military field jacket made of comfortable cotton."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "fjacket"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "fjacket_mob"
	var/unbuttoned = 0

/obj/item/clothing/suit/storage/fluff/jacket/verb/toggle()
	set name = "Toggle coat buttons"
	set category = "Object"
	set src in usr

	if(usr.incapacitated() || usr.stat || usr.restrained())
		return 0

	switch(unbuttoned)
		if(0)
			icon_state = "[initial(icon_state)]_open"
			item_state = "[initial(item_state)]_open"
			unbuttoned = 1
			to_chat(usr, "You unbutton the coat.")
		if(1)
			icon_state = "[initial(icon_state)]"
			item_state = "[initial(item_state)]"
			unbuttoned = 0
			to_chat(usr, "You button up the coat.")
	usr.update_inv_wear_suit()

/obj/item/clothing/suit/storage/fluff/jacket/field //Just here so it can be seen and easily recognized under /spawn.
	name = "Field Jacket"

/obj/item/clothing/suit/storage/fluff/jacket/air_cavalry
	name = "Air Cavalry Jacket"
	desc = "A jacket worn by the 1st Cavalry Division on Earth."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "acjacket"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "acjacket_mob"

/obj/item/clothing/suit/storage/fluff/jacket/air_force
	name = "Air Force Jacket"
	desc = "A jacket worn by the Earth Air Force."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "afjacket"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "afjacket_mob"

/obj/item/clothing/suit/storage/fluff/jacket/navy
	name = "Navy Jacket"
	desc = "A jacket worn by the Earth's Navy. It's adorned with reflective straps."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "navyjacket"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "navyjacket_mob"

/obj/item/clothing/suit/storage/fluff/jacket/special_forces
	name = "Special Forces Jacket"
	desc = "A durable jacket worn by the Earth's special forces."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "sfjacket"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "sfjacket_mob"

//General use
/obj/item/clothing/head/fluff/headbando
	name = "basic headband"
	desc = "Perfect for martial artists, sweaty rogue operators, and tunnel gangsters."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "headbando"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "headbando"

/obj/item/clothing/suit/storage/fluff/gntop
	name = "GN crop jacket"
	desc = "A nifty little jacket. At least it keeps your shoulders warm."
	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "gntop"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "gntop"

/obj/item/clothing/under/fluff/gnshorts
	name = "GN shorts"
	desc = "Stylish white shorts with pockets, stripes, and even a belt."
	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "gnshorts"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "gnshorts"

/obj/item/clothing/under/fluff/v_nanovest
	name = "Varmacorp nanovest"
	desc = "A nifty little vest optimized for nanite contact."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "nanovest"
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "nanovest"

//General use
/obj/item/clothing/suit/storage/fluff/loincloth
	name = "Loincloth"
	desc = "A primitive piece of oak-brown clothing wrapped firmly around the waist. A few bones line the edges. Comes with a primitive outfit to boot."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "loincloth"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "loincloth"

/obj/item/clothing/gloves/ring/seal/signet/fluff/phi
	name = "Bone Signet Ring"
	desc = "A signet ring , carved from the bones of something long extinct, as a ward against bad luck."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "phi_ring"

/obj/item/clothing/gloves/ring/seal/signet/fluff/phi/attack_self(mob/user)
	..()
	name = "[user]'s Bone Signet Ring"
	desc = "A signet ring belonging to [user], carved from the bones of something long extinct, as a ward against bad luck."

//KotetsuRedwood:Latex Maid Dresses, for everyone to 'enjoy'. :3c
/obj/item/clothing/under/fluff/latexmaid
	name = "latex maid dress"
	desc = "Squeak! A shiny outfit for cleaning, made by people with dirty minds."

	item_icons = list(slot_w_uniform_str = 'icons/vore/custom_clothes_vr.dmi')
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "latexmaid"
	item_state = "latexmaid_mob"

	sprite_sheets = list(
			"Teshari" = 'icons/vore/custom_clothes_tesh_vr.dmi'
			)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

//Aztectornado:Tron inspired Siren outfit
/obj/item/clothing/under/fluff/siren
	name = "Siren Jumpsuit"
	desc = "An advanced jumpsuit with inlaid neon highlighting, and a port on the back. Unlike other competitor suits, the Ward Takahashi Siren jumpsuit features a whole host of extra sensors for augmented reality use, and features a non-invasive neural sensor/stimulator for a fully immersive experience."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "tronsiren"
	worn_state = "tronsiren_mob"
	item_state = "tronsiren_mob"
	rolled_sleeves = 0

/obj/item/clothing/gloves/fluff/siren
	name = "Siren Gloves"
	desc = "A set of white and neon blue gloves. Like its jumpsuit companion, the Ward Takahashi Siren gloves feature multiple sensors for usage in augmented reality. The gloves operate fine even without a paired jumpsuit, offering optimal AR menu control and haptic feedback."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "tronsiren_gloves"
	item_state = "tronsiren_gloves_mob"

/obj/item/clothing/shoes/boots/fluff/siren
	name = "Siren Boots"
	desc = "A set of white boots with neon lighting. Unlike the rest of the Ward Takahashi Siren lineup, the boots are simply boots. However, they go great with the rest of the outfit, and are quite comfortable."

	icon_state = "tronsiren_shoes"
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_onmob_vr.dmi'

/obj/item/clothing/accessory/sweater/fluff/annie
	name = "Lazy Annie's Lazy Sweater"
	desc = "A cozy sweater that's probably far too long for it's owner.  She's too lazy to care though."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "sweater_annie"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "sweater_annie"

	slot_flags = SLOT_OCLOTHING | SLOT_TIE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	w_class = ITEM_SIZE_NORMAL


/*
//General definition for bracer items. No icons.
/obj/item/clothing/accessory/bracer
	name = "bracer"
	desc = "A bracer."
	icon_state = null
	item_state = null
	icon_override = null
	slot_flags = SLOT_GLOVES | SLOT_TIE
	w_class = ITEM_SIZE_SMALL
	slot = ACCESSORY_SLOT_ARMBAND

/obj/item/clothing/accessory/bracer/fluff/xander_sthasha
	name = "Plasteel Bracer"
	desc = "A sturdy arm-guard of polished plasteel that sports gold trimming, silver tribal-looping etchings, and a single cut diamond set into its side. Attached to one's forearm with a small, magnetic clasp."
	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "bracer_xander_sthasha"
	icon_override = 'icons/vore/custom_onmob_vr.dmi'
	item_state = "bracer_xander_sthasha"

/obj/item/clothing/accessory/bracer/fluff/xander_sthasha/digest_act(var/atom/movable/item_storage = null)
	return FALSE

/obj/item/clothing/accessory/bracer/fluff/xander_sthasha/gurgle_contaminate(var/atom/movable/item_storage = null)
	return FALSE
*/

/obj/item/clothing/accessory/collar/fluff/goldenstring
	name = "golden string"
	desc = "It appears to just be a length of gold-colored string attached to a simple plastic clasp, meant to be worn around the neck"
	icon = 'icons/vore/custom_items_vr.dmi'
	icon_override = 'icons/vore/custom_onmob_vr.dmi'
	icon_state = "goldenstring"
	item_state = "goldenstring"
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_TIE

/obj/item/clothing/suit/fluff/blue_trimmed_coat
	name = "blue-trimmed greatcoat"
	desc = "A heavy, form-obscuring coat with gilded buttons and azure trim."
	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_state = "aika_coat"

	icon_override = 'icons/vore/custom_clothes_vr.dmi'
	item_state = "aika_coat_mob"
	flags_inv = HIDEJUMPSUIT | HIDETIE

	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_clothes_vr.dmi',
		slot_r_hand_str = 'icons/vore/custom_clothes_vr.dmi',
		)
	item_state_slots = list(slot_r_hand_str = "aika_coat_mob_r", slot_l_hand_str = "aika_coat_mob_l")

/obj/item/clothing/under/solgov/utility/sifguard/medical/fluff
	desc = "The utility uniform of the Society of Universal Cartographers, made from biohazard resistant material. This is an older issuing of the uniform, with integrated department markings."

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'

	icon_state = "blackutility_med"
	worn_state = "blackutility_med"
	item_state = "blackutility_med"

	rolled_down = 0
	rolled_sleeves = 0
	starting_accessories = null
	item_icons = list()

/obj/item/clothing/under/fluff/slime_skeleton
	name = "Promethean Skeleton"
	desc = "The skeleton of a promethean, still covered in residual slime. Upon closer inspection, they're not even real bones!"

	icon = 'icons/vore/custom_clothes_vr.dmi'
	icon_override = 'icons/vore/custom_clothes_vr.dmi'

	icon_state = "melanie_skeleton"
	item_state = "melanie_skeleton_mob"

	body_parts_covered = 0
/*
compat

	species_restricted = list("exclude", SPECIES_TESHARI)

/obj/item/clothing/under/fluff/slime_skeleton/mob_can_equip(M as mob, slot)
	if(!..())
		return 0

	if(istype(M,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = M
		if(!(H.get_species() == SPECIES_PROMETHEAN))	//Only wearable by slimes, since species_restricted actually checks bodytype, not species
			return 0

	return 1

/obj/item/clothing/under/fluff/slime_skeleton/digest_act(var/atom/movable/item_storage = null)
	return FALSE	//Indigestible
*/
