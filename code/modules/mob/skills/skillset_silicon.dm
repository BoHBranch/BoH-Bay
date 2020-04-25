/datum/skillset/silicon
	default_value = SKILL_MIN
	skills_transferable = FALSE

// better handling for hard resets
/mob/living/silicon/robot/reset_skillset()
	..()
	if(module)
		module.grant_skills(src)

/datum/skillset/silicon/robot/on_antag_initialize()
	var/mob/living/silicon/robot/robot = owner // It will have just reset our skillset, and we don't actually want that.
	if(istype(robot) && robot.module)
		robot.module.grant_skills(robot)
	..()

/datum/skill_buff/robot
	limit = 1