/mob/living/carbon/human/proc/check_silk_amount()
	set name = "Check Silk Amount"
	set category = "Abilities"

	if(species.is_weaver)
		to_chat(src, "Your silk reserves are at [species.silk_reserve]/[species.silk_max_reserve].")
	else
		to_chat(src, "<span class='warning'>You are not a weaver! How are you doing this? Tell a developer!</span>")

/mob/living/carbon/human/proc/toggle_silk_production()
	set name = "Toggle Silk Production"
	set category = "Abilities"

	if(species.is_weaver)
		species.silk_production = !(species.silk_production)
		to_chat(src, "You are [species.silk_production ? "now" : "no longer"] producing silk.")
	else
		to_chat(src, "<span class='warning'>You are not a weaver! How are you doing this? Tell a developer!</span>")

/mob/living/carbon/human/proc/weave_structure()
	set name = "Weave Structure"
	set category = "Abilities"

	if(!(species.is_weaver))
		to_chat(src, "<span class='warning'>You are not a weaver! How are you doing this? Tell a developer!</span>")
		return

	var/choice
	var/silkcost = 0
	var/weavetime = 0
	var/datum/weaver_recipe/structure/desired_result
	var/finalized = "No"

	while(finalized == "No" && src.client) //I have to shitcode this because Bay lacks TGUI. Of course it does. What exactly does it HAVE?
		choice = input(src,"What would you like to weave?", "Weave Choice") as null|anything in list("Wall","Floor","Bed")
		if(choice == "Wall")
			desired_result = /obj/effect/weaversilk/wall
			silkcost = 100
			weavetime = 5
			finalized = input(src, "Are you sure you want to weave a Wall? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(choice == "Floor")
			desired_result = /obj/effect/weaversilk/floor
			silkcost = 25
			weavetime = 1
			finalized = input(src, "Are you sure you want to weave a Web? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(choice == "Bed")
			desired_result = /obj/structure/bed/double/weaversilk_nest
			silkcost = 50
			weavetime = 5
			finalized = input(src, "Are you sure you want to weave a Nest? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(!desired_result || !choice)
			return

	if(!desired_result || !choice)
		return

	if(silkcost > species.silk_reserve)
		to_chat(src, "<span class='warning'>You don't have enough silk to weave that!</span>")
		return

	if(stat)
		to_chat(src, "<span class='warning'>You can't do that in your current state!</span>")
		return

	if(locate(desired_result) in src.loc)
		to_chat(src, "<span class='warning'>You can't create another weaversilk [desired_result.title] here!</span>")
		return

	if(!isturf(src.loc))
		to_chat(src, "<span class='warning'>You can't weave here!</span>")
		return

	if(do_after(src, weavetime))
		if(silkcost > species.silk_reserve)
			to_chat(src, "<span class='warning'>You don't have enough silk to weave that!</span>")
			return

		if(locate(desired_result) in src.loc)
			to_chat(src, "<span class='warning'>You can't create another weaversilk [desired_result.title] here!</span>")
			return

		if(!isturf(src.loc))
			to_chat(src, "<span class='warning'>You can't weave here!</span>")
			return

		species.silk_reserve = max(species.silk_reserve - silkcost, 0)

		//new desired_result.result_type(src.loc)
		var/atom/O = new desired_result(src.loc)
		O.color = species.silk_color
		silkcost = 0
		weavetime = 0


/mob/living/carbon/human/proc/weave_item()
	set name = "Weave Item"
	set category = "Abilities"

	if(!(species.is_weaver))
		return

	var/choice
	var/datum/weaver_recipe/item/desired_result
	var/silkcost = 0
	var/weavetime = 0
	var/finalized = "No"

	while(finalized == "No" && src.client)
		choice = input(src,"What would you like to weave?", "Weave Choice") as null|anything in list("Skinsuit","Dress","Handcuffs","Bandages")
		if(choice == "Skinsuit")
			desired_result = /obj/item/clothing/under/weaverskinsuit
			silkcost = 100
			weavetime = 10
			finalized = input(src, "Are you sure you want to weave a skinsuit? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(choice == "Dress")
			desired_result = /obj/item/clothing/under/skirt_c/dress/long/gown/weaver
			silkcost = 100
			weavetime = 10
			finalized = input(src, "Are you sure you want to weave a dress? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(choice == "Handcuffs")
			desired_result = /obj/item/weapon/handcuffs/cable/tape/weaver
			silkcost = 50
			weavetime = 5
			finalized = input(src, "Are you sure you want to weave handcuffs? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(choice == "Bandages")
			desired_result = /obj/item/stack/medical/bruise_pack/weaver
			silkcost = 50
			weavetime = 5
			finalized = input(src, "Are you sure you want to weave bandages? It will cost you [silkcost] silk.","Confirmation") as anything in list("Yes","No")
		if(!desired_result || !choice)
			return

	if(!desired_result || !choice)
		return

	if(!(species.is_weaver))
		to_chat(src, "<span class='warning'>You are not a weaver! How are you doing this? Tell a developer!</span>")
		return

	if(silkcost > species.silk_reserve)
		to_chat(src, "<span class='warning'>You don't have enough silk to weave that!</span>")
		return

	if(stat)
		to_chat(src, "<span class='warning'>You can't do that in your current state!</span>")
		return

	if(!isturf(src.loc))
		to_chat(src, "<span class='warning'>You can't weave here!</span>")
		return

	if(do_after(src, weavetime))
		if(silkcost > species.silk_reserve)
			to_chat(src, "<span class='warning'>You don't have enough silk to weave that!</span>")
			return

		if(!isturf(src.loc))
			to_chat(src, "<span class='warning'>You can't weave here!</span>")
			return

		species.silk_reserve = max(species.silk_reserve - silkcost, 0)

		//new desired_result.result_type(src.loc)
		var/atom/O = new desired_result(src.loc)
		O.color = species.silk_color

/mob/living/carbon/human/proc/set_silk_color()
	set name = "Set Silk Color"
	set category = "Abilities"

	if(!(species.is_weaver))
		to_chat(src, "<span class='warning'>You are not a weaver! How are you doing this? Tell a developer!</span>")
		return

	var/new_silk_color = input(usr, "Pick a color for your woven products:","Silk Color", species.silk_color) as null|color
	if(new_silk_color)
		species.silk_color = new_silk_color
