var/list/client_preference_stats_

/proc/client_preference_stats_for_usr(var/mob/user = usr)
	. = list()
	if(!user)
		return
	if(!SScharacter_setup.initialized)
		return
	if(!client_preference_stats_)
		client_preference_stats_ = list()
		for(var/datum/client_preference/client_pref in get_client_preferences())
			client_preference_stats_[client_pref.description] = new /stat_client_preference(null, client_pref)

	for(var/client_pref_description in client_preference_stats_)
		var/stat_client_preference/scp = client_preference_stats_[client_pref_description]
		if(scp.client_preference.may_set(user))
			scp.update_name(user)
			.[client_pref_description] = scp

/client/verb/toggle_preference_verb(var/client_pref_name in client_preference_stats_for_usr())
	set name = "Toggle Preference"
	set desc = "Toggles the selected preference."
	set category = "OOC"

	var/list/client_stats = client_preference_stats_for_usr()
	var/stat_client_preference/scp = client_stats[client_pref_name]
	if(istype(scp))
		scp.Click()

/mob/Stat()
	. = ..()
	if(!client || !statpanel("Preferences"))
		return
	var/list/preferences = client_preference_stats_for_usr(src)
	for(var/client_preference_description in preferences)
		var/stat_client_preference/scp = client_preference_stats_[client_preference_description]
		stat(scp.client_preference.description, scp)

/stat_client_preference
	parent_type = /atom/movable
	simulated = 0
	var/datum/client_preference/client_preference

/stat_client_preference/New(var/loc, var/preference)
	client_preference = preference
	update_name(usr)
	..()

/stat_client_preference/Destroy()
	client_preference = null
	. = ..()

/stat_client_preference/Click()
	if(!usr.client)
		return

	if(!usr.cycle_preference(client_preference))
		return

	SScharacter_setup.queue_preferences_save(usr.client.prefs)
	to_chat(usr, "[client_preference.description]: [usr.get_preference_value(client_preference)]")

/stat_client_preference/proc/update_name(var/mob/user)
	name = user.get_preference_value(client_preference)

///Toggles whether or not you need to hold shift to access the right click menu
/client/verb/toggle_right_click()
	set name = "Toggle Right Click"
	set category = "Preferences"

	if(shift_to_open_context_menu)
		winset(src, "mapwindow.map", "right-click=false")
		winset(src, "default.Shift", "is-disabled=true")
		winset(src, "default.ShiftUp", "is-disabled=true")
		shift_to_open_context_menu = FALSE
		to_chat(usr, "<span class='notice'>You will no longer need to hold the Shift key to access the right click menu</span>")
	else
		winset(src, "mapwindow.map", "right-click=true")
		winset(src, "ShiftUp", "is-disabled=false")
		winset(src, "Shift", "is-disabled=false")
		shift_to_open_context_menu = TRUE
		to_chat(usr, "<span class='notice'>You will now need to hold the Shift key to access the right click menu</span>")
