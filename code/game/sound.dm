//Sound environment defines. Reverb preset for sounds played in an area, see sound datum reference for more.
#define GENERIC 0
#define PADDED_CELL 1
#define ROOM 2
#define BATHROOM 3
#define LIVINGROOM 4
#define STONEROOM 5
#define AUDITORIUM 6
#define CONCERT_HALL 7
#define CAVE 8
#define ARENA 9
#define HANGAR 10
#define CARPETED_HALLWAY 11
#define HALLWAY 12
#define STONE_CORRIDOR 13
#define ALLEY 14
#define FOREST 15
#define CITY 16
#define MOUNTAINS 17
#define QUARRY 18
#define PLAIN 19
#define PARKING_LOT 20
#define SEWER_PIPE 21
#define UNDERWATER 22
#define DRUGGED 23
#define DIZZY 24
#define PSYCHOTIC 25

#define STANDARD_STATION STONEROOM
#define LARGE_ENCLOSED HANGAR
#define SMALL_ENCLOSED BATHROOM
#define TUNNEL_ENCLOSED CAVE
#define LARGE_SOFTFLOOR CARPETED_HALLWAY
#define MEDIUM_SOFTFLOOR LIVINGROOM
#define SMALL_SOFTFLOOR ROOM
#define ASTEROID CAVE
#define SPACE UNDERWATER

GLOBAL_LIST_INIT(shatter_sound,list('sound/effects/Glassbr1.ogg','sound/effects/Glassbr2.ogg','sound/effects/Glassbr3.ogg'))
GLOBAL_LIST_INIT(explosion_sound,list('sound/effects/Explosion1.ogg','sound/effects/Explosion2.ogg'))
GLOBAL_LIST_INIT(spark_sound,list('sound/effects/sparks1.ogg','sound/effects/sparks2.ogg','sound/effects/sparks3.ogg','sound/effects/sparks4.ogg'))
GLOBAL_LIST_INIT(rustle_sound,list('sound/effects/rustle1.ogg','sound/effects/rustle2.ogg','sound/effects/rustle3.ogg','sound/effects/rustle4.ogg','sound/effects/rustle5.ogg'))
GLOBAL_LIST_INIT(punch_sound,list('sound/weapons/punch1.ogg','sound/weapons/punch2.ogg','sound/weapons/punch3.ogg','sound/weapons/punch4.ogg'))
GLOBAL_LIST_INIT(clown_sound,list('sound/effects/clownstep1.ogg','sound/effects/clownstep2.ogg'))
GLOBAL_LIST_INIT(swing_hit_sound,list('sound/weapons/genhit1.ogg', 'sound/weapons/genhit2.ogg', 'sound/weapons/genhit3.ogg'))
GLOBAL_LIST_INIT(hiss_sound,list('sound/voice/hiss1.ogg','sound/voice/hiss2.ogg','sound/voice/hiss3.ogg','sound/voice/hiss4.ogg'))
GLOBAL_LIST_INIT(page_sound,list('sound/effects/pageturn1.ogg', 'sound/effects/pageturn2.ogg','sound/effects/pageturn3.ogg'))
GLOBAL_LIST_INIT(fracture_sound,list('sound/effects/bonebreak1.ogg','sound/effects/bonebreak2.ogg','sound/effects/bonebreak3.ogg','sound/effects/bonebreak4.ogg'))
GLOBAL_LIST_INIT(lighter_sound,list('sound/items/lighter1.ogg','sound/items/lighter2.ogg','sound/items/lighter3.ogg'))
GLOBAL_LIST_INIT(keyboard_sound,list('sound/machines/keyboard/keypress1.ogg','sound/machines/keyboard/keypress2.ogg','sound/machines/keyboard/keypress3.ogg','sound/machines/keyboard/keypress4.ogg'))
GLOBAL_LIST_INIT(keystroke_sound,list('sound/machines/keyboard/keystroke1.ogg','sound/machines/keyboard/keystroke2.ogg','sound/machines/keyboard/keystroke3.ogg','sound/machines/keyboard/keystroke4.ogg'))
GLOBAL_LIST_INIT(switch_sound,list('sound/machines/switch1.ogg','sound/machines/switch2.ogg','sound/machines/switch3.ogg','sound/machines/switch4.ogg'))
GLOBAL_LIST_INIT(button_sound,list('sound/machines/button1.ogg','sound/machines/button2.ogg','sound/machines/button3.ogg','sound/machines/button4.ogg'))
GLOBAL_LIST_INIT(chop_sound,list('sound/weapons/chop1.ogg','sound/weapons/chop2.ogg','sound/weapons/chop3.ogg'))
GLOBAL_LIST_INIT(glasscrack_sound,list('sound/effects/glass_crack1.ogg','sound/effects/glass_crack2.ogg','sound/effects/glass_crack3.ogg','sound/effects/glass_crack4.ogg'))

/proc/playsound(atom/source, soundin, vol, vary, extrarange, falloff, is_global, usepressure = 1, environment = -1, is_ambiance = 0)
	if (isarea(source))
		crash_with("[source] is an area and is trying to make the sound: [soundin]")
		return
	var/sound/original_sound = playsound_get_sound(soundin, vol, falloff, 0, environment)

	if (!original_sound)
		crash_with("Could not construct original sound.")
		return

	if (is_global)
		playsound_allinrange(source, original_sound,
			extra_range = extrarange,
			is_global = is_global,
			use_random_freq = !!vary,
			use_pressure = usepressure,
			modify_environment = (environment != 0),
			is_ambiance = is_ambiance
		)
	else
		playsound_lineofsight(source, original_sound,
			use_random_freq = !!vary,
			use_pressure = usepressure,
			modify_environment = (environment != 0),
			is_ambiance = is_ambiance
		)

/mob/proc/playsound_to(turf/source_turf, sound/original_sound, use_random_freq, modify_environment = TRUE, use_pressure = TRUE)
	var/sound/S = copy_sound(original_sound)

	var/pressure_factor = 1.0

	if (use_random_freq)
		S.frequency = get_rand_frequency()

	if (isturf(source_turf))
		var/turf/T = get_turf(src)

		var/distance = get_dist(T, source_turf)

		S.volume -= max(distance - world.view, 0) * 2

		if (use_pressure)
			var/datum/gas_mixture/hearer_env = T.return_air()
			var/datum/gas_mixture/source_env = source_turf.return_air()

			if (hearer_env && source_env)
				var/pressure = min(hearer_env.return_pressure(), source_env.return_pressure())

				if (pressure < ONE_ATMOSPHERE)
					pressure_factor = max((pressure - SOUND_MINIMUM_PRESSURE)/(ONE_ATMOSPHERE - SOUND_MINIMUM_PRESSURE), 0)
			else //in space
				pressure_factor = 0

			if (distance <= 1)
				pressure_factor = max(pressure_factor, 0.15)	//hearing through contact

			S.volume *= pressure_factor

		if (S.volume <= 0)
			return 0

		S.x = source_turf.x - T.x // left/right
		S.z = source_turf.y - T.y // front/back
		S.y = (source_turf.z - T.z) * SOUND_Z_FACTOR // above/below-ish

	if (modify_environment)
		S.environment = playsound_get_environment(pressure_factor)

	sound_to(src, S)

	return S.volume

/proc/playsound_allinrange(atom/source, sound/S, extra_range = 0, is_global = FALSE, use_random_freq = FALSE, use_pressure = TRUE,  modify_environment = TRUE, is_ambiance = FALSE)
	var/turf/source_turf = get_turf(source)

	for (var/MM in GLOB.player_list)
		var/mob/M = MM

		if (!M?.client)
			continue

		var/dist = get_dist(M, source_turf)

		if (dist <= (world.view + extra_range) * 3)
			var/turf/T = get_turf(M)

			if (!T || T.z != source_turf.z)
				continue
			else if (!M.sound_can_play(is_ambiance))
				continue

			M.playsound_to(source_turf, S, use_random_freq = use_random_freq, use_pressure = use_pressure, modify_environment = modify_environment)

/proc/playsound_lineofsight(atom/source, sound/S, use_random_freq = FALSE, use_pressure = TRUE, modify_environment = TRUE, is_ambiance = FALSE)
	var/list/mobs = get_mobs_or_objects_in_view(world.view, source, include_objects = FALSE)

	var/turf/source_turf = get_turf(source)

	for (var/MM in mobs)
		var/mob/M = MM
		if (!M.sound_can_play(is_ambiance))
			continue

		M.playsound_to(source_turf, S, use_random_freq = use_random_freq, use_pressure = use_pressure, modify_environment = modify_environment)

/mob/proc/sound_can_play(is_ambiance)
	if (!client)
		return FALSE

	return !is_ambiance || src.get_preference_value(/datum/client_preference/play_ambiance) == GLOB.PREF_YES

/proc/playsound_get_sound(soundin, volume, fall_off, frequency = 0, environment = -1)
	if (istext(soundin))
		soundin = get_sfx(soundin)

	var/sound/S = istype(soundin, /sound) ? copy_sound(soundin) : sound(soundin)

	S.wait = 0
	S.channel = 0
	S.frequency = frequency
	S.falloff = fall_off || FALLOFF_SOUNDS
	S.environment = environment
	S.volume = volume

	return S

/mob/proc/playsound_get_environment(pressure_factor = 1.0)
	var/turf/self_turf = get_turf(loc)
	if (druggy)
		return DRUGGED
	else if (drowsyness || confused)
		return DIZZY
	else if ((stat == UNCONSCIOUS) || (self_turf?.is_flooded(lying)))
		return UNDERWATER
	else if (pressure_factor < 0.5)
		return SPACE
	var/area/A = get_area(src)
	return A.sound_env

/mob/living/carbon/playsound_get_environment(pressure_factor = 1.0)
	if (hallucination_power > 50 && chem_effects[CE_MIND] < 1)
		return PSYCHOTIC
	return ..()

/mob/proc/playsound_simple(source, soundin, volume, use_random_freq = FALSE, frequency = 0, falloff = 0, use_pressure = TRUE)
	var/sound/S = playsound_get_sound(soundin, volume, falloff, frequency)

	playsound_to(source ? get_turf(source) : null, S, use_random_freq, use_pressure = use_pressure)

/client/proc/playtitlemusic()
	if(get_preference_value(/datum/client_preference/play_lobby_music) == GLOB.PREF_YES)
		GLOB.using_map.lobby_track.play_to(src)

/proc/get_rand_frequency()
	return rand(32000, 55000) //Frequency stuff only works with 45kbps oggs.

/proc/get_sfx(soundin)
	if(istext(soundin))
		switch(soundin)
			if ("shatter") soundin = pick(GLOB.shatter_sound)
			if ("explosion") soundin = pick(GLOB.explosion_sound)
			if ("sparks") soundin = pick(GLOB.spark_sound)
			if ("rustle") soundin = pick(GLOB.rustle_sound)
			if ("punch") soundin = pick(GLOB.punch_sound)
			if ("clownstep") soundin = pick(GLOB.clown_sound)
			if ("swing_hit") soundin = pick(GLOB.swing_hit_sound)
			if ("hiss") soundin = pick(GLOB.hiss_sound)
			if ("pageturn") soundin = pick(GLOB.page_sound)
			if ("fracture") soundin = pick(GLOB.fracture_sound)
			if ("light_bic") soundin = pick(GLOB.lighter_sound)
			if ("keyboard") soundin = pick(GLOB.keyboard_sound)
			if ("keystroke") soundin = pick(GLOB.keystroke_sound)
			if ("switch") soundin = pick(GLOB.switch_sound)
			if ("button") soundin = pick(GLOB.button_sound)
			if ("chop") soundin = pick(GLOB.chop_sound)
			if ("glasscrack") soundin = pick(GLOB.glasscrack_sound)
	return soundin

/proc/copy_sound(sound/original)
	var/sound/S = sound(original.file, original.repeat, original.wait, original.channel, original.volume)

	S.frequency = original.frequency
	S.falloff = original.falloff
	S.environment = original.environment

	return S

/client/verb/stop_sounds()
	set name = "Stop All Sounds"
	set desc = "Stop all sounds that are currently playing on your client."
	set category = "OOC"

	if(mob)
		sound_to(mob, sound(null))