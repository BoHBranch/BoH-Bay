/*

DISEASE3 - Because virus and virus2 were WEAK

*/

/mob/living/carbon/human //defined at human because carbon doesn't even involve this
	var/list/datum/disease/diseases = list()

/mob/living/carbon/human/proc/handle_diseases()
	for(var/datum/disease/D in diseases)
		D.affect(src)

//The disease is the actual illness
/datum/disease
	var/assigned_name = "unidentified disease" //Researchers can give them names, sometimes!
	var/named = FALSE

	var/list/datum/disease_symptom/symptoms = list() //List of symptoms
	var/active = FALSE //Activation will cause variations in behavior


/datum/disease/New(mob/living/carbon/human/host)
	..()
	for(var/datum/disease/D in host.diseases)
		if(istype(D, src))
			qdel(src) //If they already have the disease, do not add it again
			return
	on_spread(host)

/datum/disease/proc/on_spread(mob/living/carbon/human/host)

/datum/disease/proc/check_activation(mob/living/carbon/human/host) //What are the conditions for activation?
	return FALSE

/datum/disease/proc/response(mob/living/carbon/human/host) //What does it respond to?
	return FALSE

/datum/disease/proc/affect(mob/living/carbon/human/host) //What is the disease doing to the host?
	active = check_activation(host)
	response(host)