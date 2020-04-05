/obj/item/weapon/reagent_containers/food/snacks/meat
	name = "any meat"
	desc = "You shouldn't see this, this is a prototype item. Tell a developer immediately!"
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "meat"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/rawcutlet
	slices_num = 3
	health = 180
	filling_color = "#ff1c1c"
	center_of_mass = "x=16;y=14"
	bitesize = 3
	reagents_to_add = list(/datum/reagent/nutriment/protein = 9)
	cooked_icon = "meatstake"
	var/cooked_file = 'icons/obj/aurora/food.dmi' // For if the cooked icon is in a different file.


/obj/item/weapon/reagent_containers/food/snacks/meat/cook()
	if (!isnull(cooked_file))
		icon = cooked_file
		flat_icon = null
	if (!isnull(cooked_icon))
		icon_state = cooked_icon
		flat_icon = null //Force regenating the flat icon for coatings, since we've changed the icon of the thing being coated
	. = ..()

	if (name == initial(name))
		name = "cooked [name]"

/obj/item/weapon/reagent_containers/food/snacks/meat/syntiflesh
	name = "synthetic meat"
	desc = "A slab of flesh synthetized from reconstituted biomass or artificially grown from chemicals."
	icon = 'icons/obj/food.dmi'

// Seperate definitions because some food likes to know if it's human.
// TODO: rewrite kitchen code to check a var on the meat item so we can remove
// all these subtypes.
/obj/item/weapon/reagent_containers/food/snacks/meat/human
	name = "meat"
	desc = "Some red meat. Maybe it's pork?"
/obj/item/weapon/reagent_containers/food/snacks/meat/human/Initialize()
	. = ..()
	if(prob(10))
		desc += " Looks a bit long."
/obj/item/weapon/reagent_containers/food/snacks/meat/monkey
	name = "meat"
	desc = "Some red meat. Maybe it's pork?"
/obj/item/weapon/reagent_containers/food/snacks/meat/monkey/Initialize()
	. = ..()
	if(prob(10))
		desc = " Looks a bit long, but shorter."

/obj/item/weapon/reagent_containers/food/snacks/meat/corgi
	name = "corgi meat"
	desc = "Tastes like... well, you know."

/obj/item/weapon/reagent_containers/food/snacks/meat/beef
	name = "beef slab"
	desc = "The classic red meat."

/obj/item/weapon/reagent_containers/food/snacks/meat/goat
	name = "chevon slab"
	desc = "Goat meat, to the uncultured."

/obj/item/weapon/reagent_containers/food/snacks/meat/chicken
	name = "chicken meat"
	desc = "Rooster and spheroid torment, from NTPedia, the free encyclopedia."
	icon = 'icons/obj/aurora/food.dmi'
	icon_state = "chickenbreast"
	cooked_icon = "chickenbreast_cooked"
	filling_color = "#bbbbaa"


/obj/item/weapon/reagent_containers/food/snacks/meat/chicken/game
	name = "game bird piece"
	desc = "Fresh game meat, harvested from some wild bird."
