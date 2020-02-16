SUBSYSTEM_DEF(babysit)
	name = "Babysit"
	priority = SS_PRIORITY_BABYSIT
	flags = SS_BACKGROUND
	wait = 5 MINUTES
	var/manual_delist = FALSE //Used when toggle_hub_visibility is used.

/datum/controller/subsystem/babysit/fire()
	if(manual_delist)
		return // Fail silently and return if the server has been manually taken off the HUB.
	var/playercount
	for(var/mob/new_player/player in GLOB.player_list)
		playercount++
	if(!manual_delist)
		if(playercount >= config.delist_population)
			if(GLOB.visibility_pref)
				world.update_hub_visibility()
				message_admins("NOTICE: Playercount above configuration defined limit - SSBabysit is delisting server from HUB. Playercount: [playercount] Config Limit: [config.delist_population]")
			message_admins("NOTICE: Playercount above configuration defined limit, but server is off the hub. Doing nothing.")
		if(playercount <= config.delist_population)
			if(!GLOB.visibility_pref)
				world.update_hub_visibility()
				message_admins("NOTICE: Playercount below configuration defined limit after delist - SSBabysit is listing server on the HUB. Playercount: [playercount] Config Limit: [config.delist_population]")
			message_admins("NOTICE: Playercount below configuration defined limit, but server is on the hub. Doing nothing.")
