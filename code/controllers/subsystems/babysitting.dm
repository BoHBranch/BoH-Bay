SUBSYSTEM_DEF(babysit)
	name = "Babysit"
	priority = SS_PRIORITY_BABYSIT
	flags = SS_BACKGROUND
	wait = 5 MINUTES
	var/manual_delist = FALSE //Used when toggle_hub_visibility is used.
	var/manual_pb = TRUE // is the panic bunker manually up or down?

/datum/controller/subsystem/babysit/fire()
	var/playercount
	for(var/mob/new_player/player in GLOB.player_list)
		playercount++
	if(!manual_delist)
		if(playercount >= config.delist_population)
			if(GLOB.visibility_pref)
				world.update_hub_visibility()
				message_admins("NOTICE: Playercount above configuration defined limit - SSBabysit is delisting server from HUB. Playercount: [playercount] Config Limit: [config.delist_population]")
		if(playercount <= config.delist_population)
			if(!GLOB.visibility_pref)
				world.update_hub_visibility()
				message_admins("NOTICE: Playercount below configuration defined limit after delist - SSBabysit is listing server on the HUB. Playercount: [playercount] Config Limit: [config.delist_population]")

	if(!manual_pb)
		if(playercount >= config.pb_population)
			if(config.panic_bunker)
				config.panic_bunker = !config.panic_bunker
				message_admins("NOTICE: Playercount above configuration defined limit - SSBabysit is engaging panic bunker! Playercount: [playercount] Config Limit: [config.pb_population]")
		if(playercount <= config.pb_population)
			if(!config.panic_bunker)
				config.panic_bunker = !config.panic_bunker
				message_admins("NOTICE: Playercount below configuration defined limit after delist - SSBabysit is disengaging panic bunker. Playercount: [playercount] Config Limit: [config.pb_population]")