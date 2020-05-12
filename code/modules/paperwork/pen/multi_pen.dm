/obj/item/weapon/pen/multi
	name = "Lapicera multicolor"
	desc = "Es una lapicera con multiples colores de tinta!"
	var/selectedColor = 1
	var/colors = list("black","blue","red","green")
	var/color_descriptions = list("black ink", "blue ink", "red ink", "green ink")

/obj/item/weapon/pen/multi/attack_self(mob/user)
	if(++selectedColor > length(colors))
		selectedColor = 1

	colour = colors[selectedColor]
	color_description = color_descriptions[selectedColor]

	if(colour == "black")
		icon_state = "pen"
	else
		icon_state = "pen_[colour]"

	to_chat(user, "<span class='notice'>Color cambiado a '[colour].'</span>")