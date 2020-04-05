/datum/codex_category/recipes/
	name = "Recipes"
	desc = "Recipes for a variety of reagents."

/datum/codex_category/recipes/Initialize()
	for(var/search_by_appliance in SScuisine.recipe_datums)
		for(var/datum/recipe/recipe in SScuisine.recipe_datums[search_by_appliance])
			if(recipe.hidden_from_codex || recipe.added_to_codex || !recipe.result)
				continue
			recipe.added_to_codex = TRUE
			var/mechanics_text = ""
			if(recipe.mechanics_text)
				mechanics_text = "[recipe.mechanics_text]<br><br>"
			mechanics_text += "This recipe requires the following ingredients:<br><ul>"
			for(var/thing in recipe.reagents)
				var/datum/reagent/thing_reagent = thing
				mechanics_text += "<li>[recipe.reagents[thing]]u [initial(thing_reagent.name)]</li>"
			for(var/thing in recipe.items)
				var/atom/thing_atom = thing
				mechanics_text += "<li>\a [sanitize(initial(thing_atom.name))]</li>"
			for(var/thing in recipe.fruit)
				mechanics_text += "<li>[recipe.fruit[thing]] [thing]\s</li>"
			if(recipe.coating)
				mechanics_text += "<li>\a [initial(recipe.coating.name)] coating</li>"
			mechanics_text += "</ul>"
			var/atom/recipe_product = recipe.result
			var/plural = recipe.result_quantity > 1
			mechanics_text += "<br>This recipe takes [ceil(recipe.time/10)] second\s to cook in a [recipe.get_appliance_names()] and creates [plural ? recipe.result_quantity : "a(n)"] [initial(recipe_product.name)][plural ? "s" : ""]."
			var/lore_text = recipe.lore_text
			if(!lore_text)
				lore_text = initial(recipe_product.desc)
			var/recipe_name = recipe.display_name
			if(!recipe_name)
				recipe_name = sanitize(initial(recipe_product.name))

			var/datum/codex_entry/entry = new(                   \
			 _display_name =       "[recipe_name] (recipe)",     \
			 _associated_strings = list(lowertext(recipe_name)), \
			 _lore_text =          lore_text,                    \
			 _mechanics_text =     mechanics_text,               \
			 _antag_text =         recipe.antag_text             \
			)
			entry.update_links()
			SScodex.add_entry_by_string(entry.display_name, entry)
			items += entry.display_name
	for(var/datum/chemical_reaction/food/reaction in subtypesof(/datum/chemical_reaction/food))
		if(reaction.hidden_from_codex || !reaction.result_type)
			return
		var/mechanics_text = "This recipe requires the following ingredients:<br><ul>"
		var/list/reactant_values = list()
		for(var/reactant_id in reaction.required_reagents)
			var/datum/reagent/reactant = reactant_id
			reactant_values += "<li>[reaction.required_reagents[reactant_id]]u [lowertext(initial(reactant.name))]</li>"
		mechanics_text += "<ul>[jointext(reactant_values, "")]</ul>"
		var/atom/result = reaction.result_type
		var/result_name = sanitize(initial(result.name))
		var/datum/codex_entry/entry = new(                   \
		 _display_name =       "[result_name] (recipe)",     \
		 _associated_strings = list(lowertext(result_name)),
		 _mechanics_text =     mechanics_text
		)
		entry.update_links()
		SScodex.add_entry_by_string(entry.display_name, entry)
		items += entry.display_name
	..()