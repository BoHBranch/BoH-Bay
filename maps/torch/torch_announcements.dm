/datum/map/torch
	emergency_shuttle_docked_message = "Atencion a todas las manos: las pods de escape ahora estan desbloqueadas. Tienen %ETD% para abordar las pods de escape."
	emergency_shuttle_leaving_dock = "Atencion a todas las manos: las pods de escape han sido lanzadas, llegando al punto de encuentro en %ETA%"

	emergency_shuttle_called_message = "Atencion a todas las manos: los procedimientos de evacuacion de emergencia estan ahora en efecto. Las pods de escape se desbloquearan en %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Atencion a todas las manos: los procedimientos de evacuacion de emergencia han sido abortados. Vuelvan a sus condiciones normales de operacion."

	command_report_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45)

	grid_check_message = "Actividad abnormal detectada en la red electrica de %STATION_NAME%. Como precaucion, la energia de %STATION_NAME% sera cortada por una duracion indeterminada."
	grid_check_sound = sound('sound/AI/torch/poweroff.ogg', volume = 45)

	grid_restored_message = "La energia de la nave %STATION_NAME% sera restaurada en este momento"
	grid_restored_sound = sound('sound/AI/torch/poweron.ogg', volume = 45)

	meteor_detected_sound = sound('sound/AI/torch/meteors.ogg', volume = 45)

	radiation_detected_message = "Grandes niveles de radiacion detectadas en las proximidades de %STATION_NAME%. Por favor evacuar a los tuneles protegidos de mantenimiento."
	radiation_detected_sound = sound('sound/AI/torch/radiation.ogg', volume = 45)

	space_time_anomaly_sound = sound('sound/AI/torch/spanomalies.ogg', volume = 45)

	unknown_biological_entities_message = "Entidades biologicas desconocidas sean detectado cerca de %STATION_NAME%, por favor esperen."

	unidentified_lifesigns_message = "Vida no indentificada detectada. Por favor cierren todo exterior o punto de acceso."
	unidentified_lifesigns_sound = sound('sound/AI/torch/aliens.ogg', volume = 45)

	lifesign_spawn_sound = sound('sound/AI/torch/aliens.ogg', volume = 45)

	electrical_storm_moderate_sound = sound('sound/AI/torch/electricalstormmoderate.ogg', volume = 45)
	electrical_storm_major_sound = sound('sound/AI/torch/electricalstormmajor.ogg', volume = 45)

/datum/map/torch/level_x_biohazard_sound(var/bio_level)
	switch(bio_level)
		if(7)
			return sound('sound/AI/torch/outbreak7.ogg', volume = 45)
		else
			return sound('sound/AI/torch/outbreak5.ogg', volume = 45)
