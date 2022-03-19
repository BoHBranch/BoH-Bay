//Hi, hey, hello!
//This was ripped from VIRGO STATION (Copied directly, comments and all). Credit goes to them for the majority of this! I am not a coder.
//Please don't mess with the code unless you know what you're doing.
// -ShadeAware

//ADDING TAUR BODIES CRASH COURSE:
// Get an icon, put it in 'icons/mob/human_races/sprite_accessories/taurs.dmi'
// Create a datum like below
// Name it, set the icon_state to the name of the sprite in the .dmi file.
// If your icon fiddles with normal legs a lot, ENSURE you have a clip_mask_icon AND clip_mask_state to cut off the sprites of clothing! Example includes the Spider Taur.
// OPTIONAL: Set a suit sprite if you've sprited hardsuit bodies for them. Remember the icon sprite tag!

/datum/sprite_accessory/tail/taur
	name = "You should not see this..."
	icon = 'icons/mob/human_races/sprite_accessories/taurs.dmi'
	do_colouration = 1 // Yes color, using tail color
	color_blend_mode = ICON_MULTIPLY  // The sprites for taurs are designed for ICON_MULTIPLY

	var/icon/suit_sprites = null //File for suit sprites, if any.
	var/icon/under_sprites = null

	var/icon_sprite_tag			// This is where we put stuff like _Horse, so we can assign icons easier.

	hide_body_parts	= list(BP_L_LEG, BP_L_FOOT, BP_R_LEG, BP_R_FOOT) //Exclude pelvis just in case.
	clip_mask_icon = 'icons/mob/human_races/sprite_accessories/taurs.dmi'
	clip_mask_state = "taur_clip_mask_def" //Used to clip off the lower part of suits & uniforms.
	species_allowed = SPECIES_ECUSTOM //HESTIA MODIFICATION - By order of Carl, only a special class of Genemodder can use these.

// Species-unique long tails/taurhalves

// Tails/taurhalves for everyone

/datum/sprite_accessory/tail/taur/naga
	name = "Naga (Taur)"
	icon_state = "naga_s"
	suit_sprites = 'icons/mob/taurmob/taursuits_naga.dmi'
	icon_sprite_tag = "naga"

/datum/sprite_accessory/tail/taur/naga/naga_2c
	name = "Naga dual-color (Taur)"
	icon_state = "naga_s"
	extra_overlay = "naga_markings"
	icon_sprite_tag = "naga"

/datum/sprite_accessory/tail/taur/spider
	name = "Spider (Taur)"
	icon_state = "spider_s"
	suit_sprites = 'icons/mob/taurmob/taursuits_spider.dmi'
	icon_sprite_tag = "spider"

/datum/sprite_accessory/tail/taur/tents
	name = "Tentacles (Taur)"
	icon_state = "tentacle_s"
	icon_sprite_tag = "tentacle"

/datum/sprite_accessory/tail/taur/slug
	name = "Slug (Taur)"
	icon_state = "slug_s"
	suit_sprites = 'icons/mob/taurmob/taursuits_slug.dmi'
	icon_sprite_tag = "slug"
/*
/datum/sprite_accessory/tail/taur/alraune_2c
	name = "Alraune (dual color)"
	icon_state = "alraunecolor_s"
	ani_state = "alraunecolor_closed_s"
	do_colouration = 1
	extra_overlay = "alraunecolor_markings"
	extra_overlay_w = "alraunecolor_closed_markings"
	clip_mask_state = "taur_clip_mask_alraune"
	icon_sprite_tag = "alraune"
*/
/datum/sprite_accessory/tail/taur/wasp
	name = "Wasp (dual color)"
	icon_state = "wasp_s"
	extra_overlay = "wasp_markings"
	clip_mask_state = "taur_clip_mask_wasp"
	icon_sprite_tag = "wasp"

/*/datum/sprite_accessory/tail/taur/mermaid
	name = "Mermaid (Taur)"
	icon_state = "mermaid_s"
	icon_sprite_tag = "mermaid"*/

/datum/sprite_accessory/tail/taur/wolf
	name = "Wolf (Taur)"
	icon_state = "wolf_s"
	//under_sprites = 'icons/mob/taursuits_wolf.dmi'
	//suit_sprites = 'icons/mob/taursuits_wolf.dmi'
	icon_sprite_tag = "wolf"

/datum/sprite_accessory/tail/taur/wolf/wolf_2c
	name = "Wolf dual-color (Taur)"
	icon_state = "wolf_s"
	extra_overlay = "wolf_markings"
	icon_sprite_tag = "wolf2c"

/datum/sprite_accessory/tail/taur/wolf/synthwolf
	name = "SynthWolf dual-color (Taur)"
	icon_state = "synthwolf_s"
	extra_overlay = "synthwolf_markings"
	icon_sprite_tag = "synthwolf"

/datum/sprite_accessory/tail/taur/horse
	name = "Horse (Taur)"
	icon_state = "horse_s"
	//under_sprites = 'icons/mob/taursuits_horse.dmi'
	//suit_sprites = 'icons/mob/taursuits_horse.dmi'
	icon_sprite_tag = "horse"

/datum/sprite_accessory/tail/taur/horse/horse_2c
	name = "Horse & colorable tail (Taur)"
	extra_overlay = "horse_markings"
	icon_sprite_tag = "wolf2c"

/datum/sprite_accessory/tail/taur/horse/synthhorse
	name = "SynthHorse dual-color (Taur)"
	icon_state = "synthhorse_s"
	extra_overlay = "synthhorse_markings"
	icon_sprite_tag = "synthhorse"

/datum/sprite_accessory/tail/taur/cow
	name = "Cow (Taur)"
	icon_state = "cow_s"
	//suit_sprites = 'icons/mob/taursuits_cow.dmi'
	icon_sprite_tag = "cow"

/datum/sprite_accessory/tail/taur/deer
	name = "Deer dual-color (Taur)"
	icon_state = "deer_s"
	extra_overlay = "deer_markings"
	//suit_sprites = 'icons/mob/taursuits_deer.dmi'
	icon_sprite_tag = "deer"

/datum/sprite_accessory/tail/taur/lizard
	name = "Lizard (Taur)"
	icon_state = "lizard_s"
	//suit_sprites = 'icons/mob/taursuits_lizard.dmi'
	icon_sprite_tag = "lizard"

/datum/sprite_accessory/tail/taur/lizard/lizard_2c
	name = "Lizard dual-color (Taur)"
	icon_state = "lizard_s"
	extra_overlay = "lizard_markings"
	icon_sprite_tag = "lizard2c"

/datum/sprite_accessory/tail/taur/lizard/synthlizard
	name = "SynthLizard dual-color (Taur)"
	icon_state = "synthlizard_s"
	extra_overlay = "synthlizard_markings"
	icon_sprite_tag = "synthlizard"
