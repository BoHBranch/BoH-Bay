/////////
// Vox Jetpack
/////////
/obj/item/weapon/tank/jetpack/nitrogen
	name = "jump pack"
	desc = "A belt with tanks of compressed nitrogen for use as propulsion, worn like a backpack. Quite against the name, honestly. \
	This appears to be a compact unit, meant for integration with something larger."
	icon_state = "jetpack-void"
	item_state =  "jetpack-void"
//	slot_flags = SLOT_BELT //Doesn't work, because jetpacks only function when worn on the back. Spaghetti code ahoy.
	starting_pressure = list(GAS_NITROGEN = 12*ONE_ATMOSPHERE)
	volume = 1280