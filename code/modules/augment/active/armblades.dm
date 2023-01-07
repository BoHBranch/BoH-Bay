/obj/item/weapon/material/armblade //Tested in game, force = 30 with steel which is what it's usually made of. Variations can exist.
	icon_state = "armblade"
	item_state = null
	name = "armblade"
	icon = 'icons/obj/augment.dmi'
	desc = "A handy utility blade for the discerning augmentee. Warranty void if used for cutting."
	base_parry_chance = 30 //Difference between armblades is how well it parries and the blade size, which controls what it can dismember
	unacidable = TRUE
	sharp = TRUE
	edge = TRUE
	attack_verb = list("stabbed", "sliced", "cut")


/obj/item/organ/internal/augment/active/item/armblade
	name = "embedded blade"
	desc = "A sturdy housing for a steel utility blade."
	action_button_name = "Deploy blade"
	icon_state = "armblade"
	augment_slots = AUGMENT_ARM
	item = /obj/item/weapon/material/armblade
	augment_flags = AUGMENT_MECHANICAL | AUGMENT_SCANNABLE


/obj/item/weapon/material/armblade/claws
	icon_state = "wolverine"
	name = "combat claws"
	desc = "These do not grow back."
	base_parry_chance = 40


/obj/item/organ/internal/augment/active/item/wolverine
	name = "cyberclaws"
	desc = "An unusual type of cybernetic weaponry, these sharp blades are bound to turn heads."
	action_button_name = "Deploy claws"
	icon_state = "wolverine"
	augment_slots = AUGMENT_HAND
	item = /obj/item/weapon/material/armblade/claws
	augment_flags = AUGMENT_MECHANICAL | AUGMENT_SCANNABLE


/// Traitor version - no parry chance but good damage, and compatible with organic limbs
/obj/item/organ/internal/augment/active/item/wrist_blade
	name = "concealed wrist blade"
	desc = "A concealed sheath made from bio-compatible cloth, shaped for a thin blade."
	action_button_name = "Deploy blade"
	icon_state = "armblade"
	augment_slots = AUGMENT_ARM
	item = /obj/item/weapon/material/armblade/wrist
	origin_tech = list(TECH_COMBAT = 3, TECH_ESOTERIC = 4)
	deploy_sound = 'sound/effects/holster/sheathout.ogg'
	retract_sound = 'sound/effects/holster/sheathin.ogg'
	augment_flags = AUGMENT_MECHANICAL | AUGMENT_BIOLOGICAL


/obj/item/weapon/material/armblade/wrist
	name = "wrist blade"
	desc = "A thin and very sharp folding blade specially made for combat, made from a specialized alloy that prevents all that nasty blood and viscera from sticking to it. Its light weight allows for rapid slashing attacks."
	icon_state = "wristblade"
	item_state = "wristblade"
	base_parry_chance = 0

	/// SMALL prevents dismembering limbs - only hands & feet
	w_class = ITEM_SIZE_SMALL


/obj/item/weapon/material/armblade/wrist/add_blood(mob/living/carbon/human/M)
	return FALSE
