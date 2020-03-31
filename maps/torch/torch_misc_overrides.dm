/obj/machinery/photocopier/faxmachine
	send_access = list(list(access_lawyer, access_solgov_crew))

/obj/item/weapon/storage/secure/briefcase/nukedisk
	startswith = list(
		/obj/item/weapon/disk/nuclear,
		/obj/item/weapon/pinpointer,
		/obj/item/weapon/folder/envelope/nuke_instructions,
		/obj/item/modular_computer/laptop/preset/custom_loadout/cheap,
		/obj/item/weapon/folder/envelope/rep
	)

/obj/item/clothing/suit/armor/pcarrier/light/security
	starting_accessories = list(
		/obj/item/clothing/accessory/armorplate, 
		/obj/item/clothing/accessory/storage/pouches, 
		/obj/item/clothing/accessory/armor/tag/solgov/sec
	)
