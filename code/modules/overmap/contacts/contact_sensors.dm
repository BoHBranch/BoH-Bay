/obj/machinery/computer/ship/sensors
	var/list/objects_in_view = list()
	var/list/contact_datums = list()

/obj/machinery/computer/ship/sensors/Destroy()
	objects_in_view.Cut()
	for(var/key in contact_datums)
		var/datum/ship_contact/record = contact_datums[key]
		qdel(record)
	contact_datums.Cut()
	. = ..()

/obj/machinery/computer/ship/sensors/attempt_hook_up(obj/effect/overmap/visitable/ship/sector)
	. = ..()
	if(. && linked && !contact_datums[linked])
		var/datum/ship_contact/record = new(src, linked)
		record.handle_being_identified()

/obj/machinery/computer/ship/sensors/proc/reveal_contacts(var/mob/user)
	if(user && user.client)
		for(var/key in contact_datums)
			var/datum/ship_contact/record = contact_datums[key]
			user.client.images |= record.marker

/obj/machinery/computer/ship/sensors/proc/hide_contacts(var/mob/user)
	if(user && user.client)
		for(var/key in contact_datums)
			var/datum/ship_contact/record = contact_datums[key]
			user.client.images -= record.marker

/obj/machinery/computer/ship/sensors/Process()
	..()
	update_sound()
	if(!linked)
		return

	// Update our 'sensor range' (ie. overmap lighting)
	if(!sensors || !sensors.use_power || !sensors.powered())
		linked.set_light(0)
		// TODO move to on_power_change()?
		for(var/obj/effect/overmap/visitable/ship/contact in objects_in_view)
			var/datum/ship_contact/record = contact_datums[contact]
			if(record)
				record.hide()
		objects_in_view.Cut()
		return

	var/sensor_range = round(sensors.range*1.5) + 1
	linked.set_light(1, sensor_range, sensor_range+1)

	// What can we see?
	var/list/new_objects_in_view = list()
	var/list/objects_in_current_view = list()
	for(var/obj/effect/overmap/visitable/ship/contact in view(sensor_range, linked)-linked)
		objects_in_current_view[contact] = TRUE
		if(!objects_in_view[contact])
			new_objects_in_view[contact] = TRUE

	// Fade out and remove anything that is out of range.
	for(var/obj/effect/overmap/visitable/ship/contact in objects_in_view)
		if(!QDELETED(contact) && objects_in_current_view[contact])
			continue
		objects_in_view -= contact
		var/datum/ship_contact/record = contact_datums[contact]
		var/bearing = round(90 - Atan2(contact.x - linked.x, contact.y - linked.y),5)
		if(record)
			animate(record.marker, alpha=0, 2 SECOND, 1, LINEAR_EASING)
			addtimer(CALLBACK(record, /datum/ship_contact/proc/hide), 2 SECOND)
			if(record.identified)
				visible_message(SPAN_NOTICE("[src] states, 'Contact lost with [record.name], bearing [bearing].'"))
			else
				visible_message(SPAN_NOTICE("[src] states, 'Contact lost with [record.temp_designation], bearing [bearing].'"))
			playsound(loc, "sound/machines/sensors/contact_lost.ogg", 30, 1)
	// Refresh or update contacts and markers for anything new.
	objects_in_view |= new_objects_in_view

	for(var/obj/effect/overmap/visitable/ship/contact in new_objects_in_view)
		var/datum/ship_contact/record = contact_datums[contact]
		var/bearing = round(90 - Atan2(contact.x - linked.x, contact.y - linked.y),5)
		if(record)
			if(record.identified)
				visible_message(SPAN_NOTICE("[src] states, 'Contact regained with [record.name], bearing [bearing].'"))
			else
				visible_message(SPAN_NOTICE("[src] states, 'Contact regained with [record.temp_designation], bearing [bearing].'"))
			record.show()
			animate(record.marker, alpha=255, 2 SECOND, 1, LINEAR_EASING)
			playsound(loc, "sound/machines/sensors/contact_regained.ogg", 30, 1)

	for(var/obj/effect/overmap/visitable/ship/contact in objects_in_view) //Update everything.
		// Have we seen this ship before?
		var/datum/ship_contact/record = contact_datums[contact]
		// Generate contact information for this overmap object.
		var/bearing = round(90 - Atan2(contact.x - linked.x, contact.y - linked.y),5)
		if(!record)
			record = new /datum/ship_contact(src, contact)
			playsound(loc, "sound/machines/sensors/newcontact.ogg", 30, 1)
			visible_message(SPAN_NOTICE("<b>\The [src]</b> states, \"New contact detected, temporary designation [record.temp_designation], bearing [bearing]. Identification in progress.\""))

		// Update identification information for this record.
		if(prob(record.effect.sensor_visiblity))
			record.update_marker_icon()
			if(!record.identified)
				if(record.identification_progress < record.effect.identification_difficulty)
					record.identification_progress += 5
				if(record.identification_progress == record.effect.identification_difficulty)
					record.handle_being_identified()
					playsound(loc, "sound/machines/sensors/contact_identified.ogg", 30, 1)
					var/decl/ship_contact_class/class = decls_repository.get_decl(record.effect.contact_class)
					visible_message(SPAN_NOTICE("[src] states, 'Contact [record.temp_designation] identified as [record.name], [class.class_long], bearing [bearing].'"))

	//Update our own marker icon.
	var/datum/ship_contact/self_record = contact_datums[linked]
	self_record.update_marker_icon()