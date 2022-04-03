/datum/language/xenocommon
	name = LANGUAGE_XENOPHAGE
	colour = "alien"
	desc = "The common tongue of the xenophages."
	speech_verb = "hisses"
	ask_verb = "hisses"
	exclaim_verb = "hisses"
	key = "z"
	flags = RESTRICTED
	syllables = list("sss","sSs","SSS")
	machine_understands = 0
	shorthand = "Xeno"
	hidden_from_codex = TRUE

/datum/language/xenos
	name = LANGUAGE_XENOPHAGE_GLOBAL
	desc = "Xenophages have the strange ability to commune over a psychic hivemind."
	speech_verb = "hisses"
	ask_verb = "hisses"
	exclaim_verb = "hisses"
	colour = "alien"
	key = "a"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/datum/language/xenos/check_special_condition(var/mob/other)

	var/mob/living/carbon/M = other
	if(!istype(M))
		return 1
	if(locate(/obj/item/organ/internal/xeno/hivenode) in M.internal_organs)
		return 1

	return 0

/datum/language/ling
	name = LANGUAGE_CHANGELING_GLOBAL
	desc = "Although they are normally wary and suspicious of each other, changelings can commune over a distance."
	speech_verb = "says"
	colour = "changeling"
	key = "g"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/datum/language/ling/broadcast(var/mob/living/speaker,var/message,var/speaker_mask)

	if(speaker.mind && speaker.mind.changeling)
		..(speaker,message,speaker.mind.changeling.changelingID)
	else
		..(speaker,message)

/datum/language/corticalborer
	name = LANGUAGE_BORER_GLOBAL
	desc = "Cortical borers possess a strange link between their tiny minds."
	speech_verb = "sings"
	ask_verb = "sings"
	exclaim_verb = "sings"
	colour = "alien"
	key = "v"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/datum/language/corticalborer/broadcast(var/mob/living/speaker,var/message,var/speaker_mask)

	var/mob/living/simple_animal/borer/B

	if(istype(speaker,/mob/living/carbon))
		var/mob/living/carbon/M = speaker
		B = M.has_brain_worms()
	else if(istype(speaker,/mob/living/simple_animal/borer))
		if(B.neutered)
			to_chat(B, SPAN_WARNING("You lack the ability to broadcast your thoughts."))
			return FALSE
		B = speaker

	if(B)
		if(B.host)
			if(B.host.nutrition < 50 || B.host.stat)
				to_chat(speaker, SPAN_WARNING("Your host is too weak to relay your broadcast."))
				return FALSE
			B.host.adjust_nutrition(-rand(1, 3))
		speaker_mask = B.truename
	..(speaker,message,speaker_mask)

/datum/language/vox
	name = LANGUAGE_VOX
	desc = "Vox communicate via Vox Dei, which is impossible to replicate by non-Vox.\
	It is produced not only by their vocal system, but also by the position of their beak segments during conversation."
	speech_verb = "shrieks"
	ask_verb = "creels"
	exclaim_verb = "SHRIEKS"
	colour = "vox"
	key = "x"
	flags = WHITELISTED
	syllables = list("ti","ti","ti","hi","hi","ki","ki","ki","ki","ya","ta","ha","ka","ya","chi","cha","kah", \
	"SKRE","AHK","EHK","RAWK","KRA","AAA","EEE","KI","II","KRI","KA")
	machine_understands = 0
	shorthand = "Vox"

/datum/language/vox/can_speak_special(var/mob/speaker)
	if(!ishuman(speaker))
		return FALSE
	var/mob/living/carbon/human/H = speaker
	var/obj/item/organ/internal/hindtongue/tongue = H.internal_organs_by_name[BP_HINDTONGUE]
	if(!istype(tongue) || !tongue.is_usable())
		to_chat(speaker, SPAN_WARNING("You are not capable of speaking [name]!"))
		return FALSE
	return TRUE

/datum/language/vox/get_random_name()
	return ..(FEMALE,1,6)

/datum/language/cultcommon
	name = LANGUAGE_CULT
	desc = "The chants of the occult, the incomprehensible."
	speech_verb = "intones"
	ask_verb = "intones"
	exclaim_verb = "chants"
	colour = "cult"
	key = "f"
	flags = RESTRICTED
	space_chance = 100
	syllables = list("ire","ego","nahlizet","certum","veri","jatkaa","mgar","balaq", "karazet", "geeri", \
		"orkan", "allaq", "sas'so", "c'arta", "forbici", "tarem", "n'ath", "reth", "sh'yro", "eth", "d'raggathnor", \
		"mah'weyh", "pleggh", "at", "e'ntrath", "tok-lyr", "rqa'nap", "g'lt-ulotf", "ta'gh", "fara'qha", "fel", "d'amar det", \
		"yu'gular", "faras", "desdae", "havas", "mithum", "javara", "umathar", "uf'kal", "thenar", "rash'tla", \
		"sektath", "mal'zua", "zasan", "therium", "viortia", "kla'atu", "barada", "nikt'o", "fwe'sh", "mah", "erl", "nyag", "r'ya", \
		"gal'h'rfikk", "harfrandid", "mud'gib", "fuu", "ma'jin", "dedo", "ol'btoh", "n'ath", "reth", "sh'yro", "eth", \
		"d'rekkathnor", "khari'd", "gual'te", "nikka", "nikt'o", "barada", "kla'atu", "barhah", "hra" ,"zar'garis")
	machine_understands = 0
	shorthand = "CT"
	hidden_from_codex = TRUE

/datum/language/cult
	name = LANGUAGE_CULT_GLOBAL
	desc = "The initiated can share their thoughts by means defying all reason."
	speech_verb = "intones"
	ask_verb = "intones"
	exclaim_verb = "chants"
	colour = "cult"
	key = "y"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/datum/language/alium
	name = LANGUAGE_ALIUM
	colour = "cult"
	speech_verb = "hisses"
	flags = RESTRICTED
	syllables = list("qy","bok","mok","yok","dy","gly","ryl","byl","dok","forbici", "tarem", "n'ath", "reth", "sh'yro", "eth", "d'raggathnor","niii",
	"d'rekkathnor", "khari'd", "gual'te", "ki","ki","ki","ki","ya","ta","wej","nym","assah","qwssa","nieasl","qyno","shaffar",
	"eg","bog","voijs","nekks","bollos","qoulsan","borrksakja","neemen","aka","nikka","qyegno","shafra","beolas","Byno")
	machine_understands = 0
	shorthand = "AL"
	hidden_from_codex = TRUE

/datum/language/alium/New()
	speech_verb = pick("hisses","growls","whistles","blubbers","chirps","skreeches","rumbles","clicks")
	..()

/datum/language/alium/get_random_name()
	var/new_name = ""
	var/length = rand(1,3)
	for(var/i=0 to length)
		new_name += pick(syllables)
	return capitalize(new_name)