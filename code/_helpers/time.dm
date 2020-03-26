#define SECOND *10
#define SECONDS *10

#define MINUTE *600
#define MINUTES *600

#define HOUR *36000
#define HOURS *36000

#define DAY *864000
#define DAYS *864000

#define TimeOfGame (get_game_time())
#define TimeOfTick (world.tick_usage*0.01*world.tick_lag)

#define TICKS *world.tick_lag

#define DS2TICKS(DS) ((DS)/world.tick_lag)
#define TICKS2DS(T) ((T) TICKS)

#define FORMAT_HOUR 0x1
#define FORMAT_MINUTE 0x2
#define FORMAT_SECOND 0x4

/proc/get_game_time()
	var/global/time_offset = 0
	var/global/last_time = 0
	var/global/last_usage = 0

	var/wtime = world.time
	var/wusage = world.tick_usage * 0.01

	if(last_time < wtime && last_usage > 1)
		time_offset += last_usage - 1

	last_time = wtime
	last_usage = wusage

	return wtime + (time_offset + wusage) * world.tick_lag

var/roundstart_hour
var/station_date = ""
var/next_station_date_change = 1 DAY

#define duration2stationtime(time) time2text(station_time_in_ticks + time, "hh:mm")
#define worldtime2stationtime(time) time2text(roundstart_hour HOURS + time, "hh:mm")
#define round_duration_in_ticks (round_start_time ? world.time - round_start_time : 0)
#define station_time_in_ticks (roundstart_hour HOURS + round_duration_in_ticks)

/proc/stationtime2text() //Gets the time
	return time2text(station_time_in_ticks, "hh:mm")

/proc/stationdate2text() //Gets the date
	var/update_time = FALSE
	if(station_time_in_ticks > next_station_date_change)
		next_station_date_change += 1 DAY
		update_time = TRUE
	if(!station_date || update_time)
		var/extra_days = round(station_time_in_ticks / (1 DAY)) DAYS
		var/timeofday = world.timeofday + extra_days
		station_date = num2text(game_year) + "-" + time2text(timeofday, "MM-DD")
	return station_date

/proc/time_stamp()
	return time2text(station_time_in_ticks, "hh:mm:ss")

/* Returns 1 if it is the selected month and day */
proc/isDay(var/month, var/day)
	if(isnum(month) && isnum(day))
		var/MM = text2num(time2text(world.timeofday, "MM")) // get the current month
		var/DD = text2num(time2text(world.timeofday, "DD")) // get the current day
		if(month == MM && day == DD)
			return 1

		// Uncomment this out when debugging!
		//else
			//return 1

var/global/next_duration_update = 0
var/global/round_start_time = 0
var/global/round_start_time_real = 0

/proc/get_real_round_duration() //RETURNS DECISECONDS
	if(!round_start_time_real)
		return 0
	return REALTIMEOFDAY - round_start_time_real

/proc/roundduration2text()
	if(!round_start_time_real)
		return "0:00"
	return get_clock_time(Floor(get_real_round_duration()/10),FORMAT_HOUR | FORMAT_MINUTE)

/hook/roundstart/proc/start_timer()
	round_start_time_real = REALTIMEOFDAY
	round_start_time = world.time
	return 1

/hook/startup/proc/set_roundstart_hour()
	roundstart_hour = pick(2,7,12,17)
	return 1

GLOBAL_VAR_INIT(midnight_rollovers, 0)
GLOBAL_VAR_INIT(rollovercheck_last_timeofday, 0)
/proc/update_midnight_rollover()
	if (world.timeofday < GLOB.rollovercheck_last_timeofday) //TIME IS GOING BACKWARDS!
		GLOB.midnight_rollovers += 1
	GLOB.rollovercheck_last_timeofday = world.timeofday
	return GLOB.midnight_rollovers

//Increases delay as the server gets more overloaded,
//as sleeps aren't cheap and sleeping only to wake up and sleep again is wasteful
#define DELTA_CALC max(((max(world.tick_usage, world.cpu) / 100) * max(Master.sleep_delta,1)), 1)

/proc/stoplag()
	if (!Master || !(GAME_STATE & RUNLEVELS_DEFAULT))
		sleep(world.tick_lag)
		return 1
	. = 0
	var/i = 1
	do
		. += round(i*DELTA_CALC)
		sleep(i*world.tick_lag*DELTA_CALC)
		i *= 2
	while (world.tick_usage > min(TICK_LIMIT_TO_RUN, Master.current_ticklimit))

#undef DELTA_CALC

/proc/acquire_days_per_month()
	. = list(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
	if(isLeap(text2num(time2text(world.realtime, "YYYY"))))
		.[2] = 29

/proc/current_month_and_day()
	var/time_string = time2text(world.realtime, "MM-DD")
	var/time_list = splittext(time_string, "-")
	return list(text2num(time_list[1]), text2num(time_list[2]))

/proc/get_clock_time(var/seconds,var/format_type = FORMAT_MINUTE | FORMAT_SECOND)

	var/hour_value = Floor(seconds/3600,1)
	var/minute_value = Floor(seconds/60, 1) % 60
	var/second_value = seconds % 60

	var/minute_text = "[minute_value]"
	if(minute_value < 10 && format_type & FORMAT_HOUR)
		minute_text = "0[minute_text]"

	var/second_text = "[second_value]"
	if(second_value < 10)
		second_text = "0[second_value]"

	. = list()

	if(format_type & FORMAT_HOUR || hour_value)
		. += "[hour_value]"

	if(format_type & FORMAT_MINUTE || minute_value)
		. += "[minute_text]"

	if(format_type & FORMAT_SECOND)
		. += "[second_text]"

	return english_list(.,"0:00",":",":")