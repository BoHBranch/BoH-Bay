/*
Uses bay's new radio system. Gonna replace the code with this bit once (if) I decide to port in bay's new radio system

/obj/machinery/telecomms/hub/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/machinery/telecomms/receiver/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/machinery/telecomms/bus/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/machinery/telecomms/processor/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/machinery/telecomms/server/map_preset/skrellscoutship
	preset_name = "Recon"
	preset_color = COMMS_COLOR_SKRELL

/obj/machinery/telecomms/broadcaster/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/item/device/radio/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/item/device/radio/intercom/map_preset/skrellscoutship
	preset_name = "Recon"

/obj/item/device/encryptionkey/map_preset/skrellscoutship
	preset_name = "Recon"
	icon_state = "medsci_cypherkey"

/obj/item/device/radio/headset/map_preset/skrellscoutship
	preset_name = "Recon"
	encryption_key = /obj/item/device/encryptionkey/map_preset/skrellscoutship
*/

/obj/item/device/radio/headset/skrellian
	name = "recon headset"
	icon_state = "srv_headset"
	ks1type = /obj/item/device/encryptionkey/skrellian

/obj/item/device/radio/headset/skrellian/Initialize()
	. = ..()
	set_frequency(SKRELL_FREQ)	//Not going to be random or just set to the common frequency, but can be set later.

/obj/item/device/encryptionkey/skrellian
	name = "recon radio encryption key"
	icon_state = "medsci_cypherkey"
	channels = list("Recon" = 1)


//This is the telecomms server we're using on the old-radio version. It is prone to a very annoying bug where it shuts itself off. I think you can fix it by reconstructing it or by an apc reset? dunno. old code.
/obj/item/weapon/stock_parts/circuitboard/telecomms/allinone/skrellscoutship
	build_path = /obj/machinery/telecomms/allinone/skrellscoutship

/obj/machinery/telecomms/allinone/skrellscoutship
	listening_freqs = list(SKRELL_FREQ)
	channel_color = COMMS_COLOR_SKRELL
	channel_name = "Recon"
	circuitboard = /obj/item/weapon/stock_parts/circuitboard/telecomms/allinone/skrellscoutship