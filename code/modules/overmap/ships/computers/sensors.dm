#define SENSOR_TIME_DELAY 0.2 SECONDS

/obj/machinery/computer/ship/sensors
	name = "sensors console"
	icon_keyboard = "teleport_key"
	icon_screen = "teleport"
	light_color = "#77fff8"
	extra_view = 4
	var/list/objects_in_view = list()
	var/list/temporary_contacts = list()
	var/list/contact_datums = list()
	var/list/hud_elements = list()
	var/obj/machinery/shipsensors/sensors

	var/working_sound = 'sound/machines/sensors/dradis.ogg'
	var/datum/sound_token/sound_token
	var/sound_id


/obj/machinery/computer/ship/sensors/attempt_hook_up(obj/effect/overmap/visitable/ship/sector)
	if(!(. = ..()))
		return
	find_sensors()

/obj/machinery/computer/ship/sensors/proc/find_sensors()
	if(!linked)
		return
	for(var/obj/machinery/shipsensors/S in SSmachines.machinery)
		if(linked.check_ownership(S))
			sensors = S
			break

/obj/machinery/computer/ship/sensors/proc/update_sound()
	if(!working_sound)
		return
	if(!sound_id)
		sound_id = "[type]_[sequential_id(/obj/machinery/computer/ship/sensors)]"
	if(linked && sensors.use_power ** sensors.powered())
		var/volume = 10
		if(!sound_token)
			sound_token = GLOB.sound_player.PlayLoopingSound(src, sound_id, working_sound, volume = volume)
		sound_token.SetVolume(volume)
	else if(sound_token)
		QDEL_NULL(sound_token)

/obj/machinery/computer/ship/sensors/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	if(!linked)
		display_reconnect_dialog(user, "sensors")
		return

	var/data[0]

	data["viewing"] = viewing_overmap(user)
	if(sensors)
		data["on"] = sensors.use_power
		data["range"] = sensors.range
		data["health"] = sensors.health
		data["max_health"] = sensors.max_health
		data["heat"] = sensors.heat
		data["critical_heat"] = sensors.critical_heat
		if(sensors.health == 0)
			data["status"] = "DESTROYED"
		else if(!sensors.powered())
			data["status"] = "NO POWER"
		else if(!sensors.in_vacuum())
			data["status"] = "VACUUM SEAL BROKEN"
		else
			data["status"] = "OK"
		var/list/contacts = list()
		for(var/obj/effect/overmap/O in view(7,linked))
			if(linked == O)
				continue
			if(!O.scannable)
				continue
			var/bearing = round(90 - Atan2(O.x - linked.x, O.y - linked.y),5)
			if(bearing < 0)
				bearing += 360
			contacts.Add(list(list("name"=O.name, "ref"="\ref[O]", "bearing"=bearing)))
		if(contacts.len)
			data["contacts"] = contacts
	else
		data["status"] = "MISSING"
		data["range"] = "N/A"
		data["on"] = 0

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "shipsensors.tmpl", "[linked.name] Sensors Control", 420, 530, src)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/computer/ship/sensors/OnTopic(var/mob/user, var/list/href_list, state)
	if(..())
		return TOPIC_HANDLED

	if (!linked)
		return TOPIC_NOACTION

	if (href_list["viewing"])
		if(user && !isAI(user))
			viewing_overmap(user) ? unlook(user) : look(user)
		return TOPIC_REFRESH

	if (href_list["link"])
		find_sensors()
		return TOPIC_REFRESH

	if(sensors)
		if (href_list["range"])
			var/nrange = input("Set new sensors range", "Sensor range", sensors.range) as num|null
			if(!CanInteract(user,state))
				return TOPIC_NOACTION
			if (nrange)
				sensors.set_range(Clamp(nrange, 1, world.view))
			return TOPIC_REFRESH
		if (href_list["toggle"])
			sensors.toggle()
			return TOPIC_REFRESH

	if (href_list["scan"])
		var/obj/effect/overmap/O = locate(href_list["scan"])
		if(istype(O) && !QDELETED(O) && (O in view(7,linked)))
			playsound(loc, "sound/machines/dotprinter.ogg", 30, 1)
			new/obj/item/weapon/paper/(get_turf(src), O.get_scan_data(user), "paper (Sensor Scan - [O])")
		return TOPIC_HANDLED

/obj/machinery/computer/ship/sensors/Process()
	..()
	update_sound()
	if(!linked)
		return
	if(sensors && sensors.use_power && sensors.powered())
		var/sensor_range = round(sensors.range*1.5) + 1
		linked.set_light(1, sensor_range, sensor_range+1)
		search_area(sensor_range)
	else
		linked.set_light(0)

/obj/machinery/computer/ship/sensors/proc/search_area(var/rangeamt)
	objects_in_view.Cut()
	for(var/obj/effect/overmap/visitable/ship/contact in view(rangeamt, linked))
		if(contact == linked)
			continue
		objects_in_view += contact
		var/dist = get_dist(linked, contact)
		var/time_delay = SENSOR_TIME_DELAY * dist
		var/datum/ship_contact/record
		var/bearing = round(90 - Atan2(contact.x - linked.x, contact.y - linked.y),5)
		if(GetContactData(contact))
			record = GetContactData(contact)

		if(!record)
			var/datum/ship_contact/new_record = new(contact)
			contact_datums += new_record
			NotifyNewContact(bearing, new_record)

		if(record)
			HandleIdentification(bearing, record)
			if(!CheckContact(contact))
				GenerateContact(record)
			UpdateContact(record, rangeamt)

/obj/machinery/computer/ship/sensors/proc/NotifyNewContact(var/bearing, var/datum/ship_contact/C)
	playsound(loc, "sound/machines/sensors/newcontact.ogg", 30, 1)
	visible_message(SPAN_NOTICE("[src] states, 'New contact detected, temporary designation [C.temp_designation], bearing [bearing]. Identification in progress.'"))

/obj/machinery/computer/ship/sensors/proc/NotifyIdentification(var/bearing, var/datum/ship_contact/C)
	playsound(loc, "sound/machines/sensors/contact_identified.ogg", 30, 1)
	visible_message(SPAN_NOTICE("[src] states, 'Contact [C.temp_designation] identified as [C.name], [C.class_long], bearing [bearing].'"))

/obj/machinery/computer/ship/sensors/proc/CheckContact(var/obj/effect/overmap/visitable/ship/contact)
	for(var/image/SC in hud_elements)
		if(SC.tag == contact.name)
			return SC
	return FALSE

/obj/machinery/computer/ship/sensors/proc/GenerateContact(var/datum/ship_contact/C)
	var/new_name
	var/image/I = image(C.effect, 'icons/obj/overmap.dmi', icon_state = "shuttle")
	I.tag = C.effect.name
	if(C.identified)
		new_name = C.temp_designation
	else
		new_name = C.name
	I.maptext = new_name
	I.maptext_width = 128
	I.maptext_y = 25
	I.maptext_x = -15
	hud_elements += I

/obj/machinery/computer/ship/sensors/proc/UpdateContact(var/datum/ship_contact/C, var/range)
	var/image/SC = CheckContact(C.effect)
	if(!CheckContactRange(C.effect, range)) //If it's not even in range, grab the effect and just ... DELETE.
		animate(SC, alpha=0, 1 SECONDS, 1, LINEAR_EASING)
		RemoveFromViewers(SC)
	if(C.identified)
		SC.icon = C.effect.icon
		SC.icon_state = C.effect.icon_state
		SC.color = C.effect.color
		SC.maptext = C.name
	for(var/weakref/W in viewers)
		var/mob/M = W.resolve()
		if(istype(M))
			M.client.images -= hud_elements
			M.client.images |= hud_elements

/obj/machinery/computer/ship/sensors/proc/CheckContactRange(var/obj/effect/overmap/visitable/ship/contact, var/range)
	var/dist = get_dist(linked, contact)
	if(dist > range)
		return FALSE
	else
		return TRUE

/obj/machinery/computer/ship/sensors/proc/GetContactData(var/obj/effect/overmap/visitable/ship/contact)
	for(var/datum/ship_contact/C in contact_datums)
		if(C.effect == contact)
			return C
	return FALSE

/obj/machinery/computer/ship/sensors/proc/HandleIdentification(var/bearing, var/datum/ship_contact/C)
	if(C.identified)
		return //already identified.
	if(C.identification_progress < C.identification_required)
		C.identification_progress += 5
	if(C.identification_progress == C.identification_required)
		C.identified = TRUE
		NotifyIdentification(bearing, C)

/obj/machinery/computer/ship/sensors/proc/RemoveFromViewers(var/image/SC)
	hud_elements -= SC
	for(var/weakref/W in viewers)
		var/mob/M = W.resolve()
		if(istype(M))
			M.client.images -= SC


/obj/machinery/computer/ship/sensors/proc/RemoveAllEffectsFromViewer(var/mob/user)
	user.client.images -= hud_elements

/obj/machinery/computer/ship/sensors/proc/AddAllEffectsToViewer(var/mob/user)
	user.client.images |= hud_elements

/obj/machinery/computer/ship/sensors/look(var/mob/user)
	. = ..()
	AddAllEffectsToViewer(user)

/obj/machinery/computer/ship/sensors/unlook(var/mob/user)
	. = ..()
	RemoveAllEffectsFromViewer(user)

/obj/machinery/shipsensors
	name = "sensors suite"
	desc = "Long range gravity scanner with various other sensors, used to detect irregularities in surrounding space. Can only run in vacuum to protect delicate quantum BS elements."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "sensors"
	anchored = 1
	var/max_health = 200
	var/health = 200
	var/critical_heat = 50 // sparks and takes damage when active & above this heat
	var/heat_reduction = 1.5 // mitigates this much heat per tick
	var/heat = 0
	var/range = 1
	idle_power_usage = 5000

/obj/machinery/shipsensors/attackby(obj/item/weapon/W, mob/user)
	var/damage = max_health - health
	if(damage && isWelder(W))

		var/obj/item/weapon/weldingtool/WT = W

		if(!WT.isOn())
			return

		if(WT.remove_fuel(0,user))
			to_chat(user, "<span class='notice'>You start repairing the damage to [src].</span>")
			playsound(src, 'sound/items/Welder.ogg', 100, 1)
			if(do_after(user, max(5, damage / 5), src) && WT && WT.isOn())
				to_chat(user, "<span class='notice'>You finish repairing the damage to [src].</span>")
				take_damage(-damage)
		else
			to_chat(user, "<span class='notice'>You need more welding fuel to complete this task.</span>")
			return
		return
	..()

/obj/machinery/shipsensors/proc/in_vacuum()
	var/turf/T=get_turf(src)
	if(istype(T))
		var/datum/gas_mixture/environment = T.return_air()
		if(environment && environment.return_pressure() > MINIMUM_PRESSURE_DIFFERENCE_TO_SUSPEND)
			return 0
	return 1

/obj/machinery/shipsensors/on_update_icon()
	if(use_power)
		icon_state = "sensors"
	else
		icon_state = "sensors_off"

/obj/machinery/shipsensors/examine(mob/user)
	. = ..()
	if(health <= 0)
		to_chat(user, "\The [src] is wrecked.")
	else if(health < max_health * 0.25)
		to_chat(user, "<span class='danger'>\The [src] looks like it's about to break!</span>")
	else if(health < max_health * 0.5)
		to_chat(user, "<span class='danger'>\The [src] looks seriously damaged!</span>")
	else if(health < max_health * 0.75)
		to_chat(user, "\The [src] shows signs of damage!")

/obj/machinery/shipsensors/bullet_act(var/obj/item/projectile/Proj)
	take_damage(Proj.get_structure_damage())
	..()

/obj/machinery/shipsensors/proc/toggle()
	if(!use_power && (health == 0 || !in_vacuum()))
		return // No turning on if broken or misplaced.
	if(!use_power) //need some juice to kickstart
		use_power_oneoff(idle_power_usage*5)
	update_use_power(!use_power)
	queue_icon_update()

/obj/machinery/shipsensors/Process()
	if(use_power) //can't run in non-vacuum
		if(!in_vacuum())
			toggle()
		if(heat > critical_heat)
			src.visible_message("<span class='danger'>\The [src] violently spews out sparks!</span>")
			var/datum/effect/effect/system/spark_spread/s = new /datum/effect/effect/system/spark_spread
			s.set_up(3, 1, src)
			s.start()

			take_damage(rand(10,50))
			toggle()
		heat += idle_power_usage/15000

	if (heat > 0)
		heat = max(0, heat - heat_reduction)

/obj/machinery/shipsensors/power_change()
	. = ..()
	if(use_power && !powered())
		toggle()

/obj/machinery/shipsensors/proc/set_range(nrange)
	range = nrange
	change_power_consumption(1500 * (range**2), POWER_USE_IDLE) //Exponential increase, also affects speed of overheating

/obj/machinery/shipsensors/emp_act(severity)
	if(!use_power)
		return
	take_damage(20/severity)
	toggle()

/obj/machinery/shipsensors/proc/take_damage(value)
	health = min(max(health - value, 0),max_health)
	if(use_power && health == 0)
		toggle()

/obj/machinery/shipsensors/weak
	heat_reduction = 0.2
	desc = "Miniturized gravity scanner with various other sensors, used to detect irregularities in surrounding space. Can only run in vacuum to protect delicate quantum BS elements."