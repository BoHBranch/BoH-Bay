/obj/item/weapon/uno
	name = "carta UNO"
	desc = "Una carta de UNO."
	icon = 'icons/obj/uno.dmi'
	icon_state = "uno"
	w_class = ITEM_SIZE_TINY
	var/flip_icon = null
	var/flip_name = null

/obj/item/weapon/uno/attack_self(mob/living/user)
	if(icon_state == "uno")
		icon_state = flip_icon
		name = flip_name
		to_chat(user, "<span class='notice'>Das vuelta la carta.</span>")
	else
		icon_state = "uno"
		name = "carta UNO"
		to_chat(user, "<span class='notice'>Das vuelta la carta.</span>")
	return

/obj/item/weapon/storage/bag/uno
	name = "UNO"
	desc = "Una baraja de UNO."
	icon = 'icons/obj/uno.dmi'
	icon_state = "deck"
	storage_slots = 108
	max_storage_space = 250
	can_hold = list(/obj/item/weapon/uno, /obj/item/weapon/storage/bag/cardholder, /obj/item/weapon/storage/bag/cardholder/withcards)
	use_to_pickup = TRUE
	allow_quick_gather = TRUE
	allow_quick_empty = TRUE
	w_class = ITEM_SIZE_SMALL
	startswith = list(/obj/item/weapon/storage/bag/cardholder/withcards = 1, /obj/item/weapon/storage/bag/cardholder = 6)

/obj/item/weapon/storage/bag/uno/attack_self(mob/user as mob)
	return

/obj/item/weapon/storage/bag/cardholder
	name = "portacartas"
	desc = "Un portacartas de UNO."
	icon = 'icons/obj/uno.dmi'
	icon_state = "holder_e"
	allow_quick_empty = FALSE
	w_class = ITEM_SIZE_TINY
	storage_slots = 108
	max_storage_space = 250

/obj/item/weapon/storage/bag/cardholder/withcards
	icon_state = "holder_f" // One starts with cards to be used as the initial deck.

/obj/item/weapon/storage/bag/cardholder/MouseDrop(atom/over_object)
	var/mob/M = usr
	if(M.restrained() || M.stat || !Adjacent(M))
		return
	if(!ishuman(M))
		return

	if(over_object == M)
		if(!remove_from_storage(M))
			M.unEquip(src)
		M.put_in_hands(src)

	else if(istype(over_object, /obj/screen))
		switch(over_object.name)
			if("r_hand")
				if(!remove_from_storage(M))
					M.unEquip(src)
				M.put_in_r_hand(src)
			if("l_hand")
				if(!remove_from_storage(M))
					M.unEquip(src)
				M.put_in_l_hand(src)
	add_fingerprint(M)

/obj/item/weapon/storage/bag/cardholder/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/weapon/uno))
		var/obj/item/weapon/uno/last_card = W
		user.drop_item()
		W.loc = src
		if(get_turf(src) == get_turf(user))
			to_chat(user, "<span class='notice'>Guardas el [W] en el [src].</span>")
		else
			user.visible_message("<span class='notice'>[user] guarda un [W] en el [src].</span>")
		contents.Add(W)
		overlays += last_card.icon_state
	if(istype(W, /obj/item/weapon/storage/bag/cardholder))
		for(var/obj/item/weapon/uno/C in W.contents)
			W.contents.Remove(C)
			C.loc = src.loc
			contents.Add(C)
			C.icon_state = "uno"
			C.name = "UNO card"
		W.icon_state = "holder_e"
		W.overlays.Cut()
		icon_state = "holder_f"
		overlays.Cut()
		user.visible_message("<span class='notice'>[user] guarda todas las cartas de su [W] en el [src] y las baraja.</span>")
		contents = shuffle(contents)
	else
		return ..()

/obj/item/weapon/storage/bag/cardholder/attack_hand(mob/user as mob)
	add_fingerprint(user)
	var/obj/item/weapon/uno/C
	if(contents.len == 1) //Takes the last card and empties the holder.
		C = contents[contents.len]
		contents.Remove(C)
		C.loc = user.loc
		user.put_in_hands(C)
		if(get_turf(src) == get_turf(user))
			to_chat(user, "<span class='notice'>Sacas un [C] del [src].</span>")
		else
			user.visible_message("<span class='notice'>[user] saca un [C] del [src].</span>")
		overlays.Cut()
		icon_state = "holder_e"
		return
	if(contents.len > 1) //Takes the top card and shows the previous one.
		C = contents[contents.len]
		var/obj/item/weapon/uno/D
		D = contents[contents.len-1]
		overlays += D.icon_state
		contents.Remove(C)
		C.loc = user.loc
		user.put_in_hands(C)
		if(get_turf(src) == get_turf(user))
			to_chat(user, "<span class='notice'>Sacas un [C] del [src].</span>")
		else
			user.visible_message("<span class='notice'>[user] saca un [C] del [src].</span>")
		return
	else
		to_chat(user, "<span class='notice'>El [src] esta vacio!</span>")

/* Despues arreglo esto -DanaDririon
/obj/item/weapon/storage/bag/cardholder/examine(mob/user)
	. = ..()
	if(in_range(user, src))
		if(contents.len > 0)
			. += "<span class='notice'>Hay " + (contents.len > 1 ? "[contents.len] cartas de UNO" : "una carta de UNO") + " en el [src].</span>"
		else
			. += "<span class='notice'>No hay cartas en el portacartas.</span>"
*/

/obj/item/weapon/storage/bag/cardholder/withcards/Initialize()
	. = ..()
	for(var/j in 1 to 2)
		new /obj/item/weapon/uno/g1(src)
		new /obj/item/weapon/uno/g2(src)
		new /obj/item/weapon/uno/g3(src)
		new /obj/item/weapon/uno/g4(src)
		new /obj/item/weapon/uno/g5(src)
		new /obj/item/weapon/uno/g6(src)
		new /obj/item/weapon/uno/g7(src)
		new /obj/item/weapon/uno/g8(src)
		new /obj/item/weapon/uno/g9(src)
		new /obj/item/weapon/uno/gd2(src)
		new /obj/item/weapon/uno/gs(src)
		new /obj/item/weapon/uno/gr(src)
		new /obj/item/weapon/uno/r1(src)
		new /obj/item/weapon/uno/r2(src)
		new /obj/item/weapon/uno/r3(src)
		new /obj/item/weapon/uno/r4(src)
		new /obj/item/weapon/uno/r5(src)
		new /obj/item/weapon/uno/r6(src)
		new /obj/item/weapon/uno/r7(src)
		new /obj/item/weapon/uno/r8(src)
		new /obj/item/weapon/uno/r9(src)
		new /obj/item/weapon/uno/rd2(src)
		new /obj/item/weapon/uno/rs(src)
		new /obj/item/weapon/uno/rr(src)
		new /obj/item/weapon/uno/b1(src)
		new /obj/item/weapon/uno/b2(src)
		new /obj/item/weapon/uno/b3(src)
		new /obj/item/weapon/uno/b4(src)
		new /obj/item/weapon/uno/b5(src)
		new /obj/item/weapon/uno/b6(src)
		new /obj/item/weapon/uno/b7(src)
		new /obj/item/weapon/uno/b8(src)
		new /obj/item/weapon/uno/b9(src)
		new /obj/item/weapon/uno/bd2(src)
		new /obj/item/weapon/uno/bs(src)
		new /obj/item/weapon/uno/br(src)
		new /obj/item/weapon/uno/y1(src)
		new /obj/item/weapon/uno/y2(src)
		new /obj/item/weapon/uno/y3(src)
		new /obj/item/weapon/uno/y4(src)
		new /obj/item/weapon/uno/y5(src)
		new /obj/item/weapon/uno/y6(src)
		new /obj/item/weapon/uno/y7(src)
		new /obj/item/weapon/uno/y8(src)
		new /obj/item/weapon/uno/y9(src)
		new /obj/item/weapon/uno/yd2(src)
		new /obj/item/weapon/uno/ys(src)
		new /obj/item/weapon/uno/yr(src)
	for(var/i in 1 to 4)
		new /obj/item/weapon/uno/wild(src)
		new /obj/item/weapon/uno/d4(src)
	new /obj/item/weapon/uno/g0(src)
	new /obj/item/weapon/uno/r0(src)
	new /obj/item/weapon/uno/b0(src)
	new /obj/item/weapon/uno/y0(src)
	contents = shuffle(contents)

/obj/item/weapon/uno/wild
	flip_name = "cambia color"
	flip_icon = "wild"

/obj/item/weapon/uno/d4
	flip_name = "roba 4"
	flip_icon = "d4"

/obj/item/weapon/uno/g0
	flip_name = "cero verde"
	flip_icon = "g0"

/obj/item/weapon/uno/g1
	flip_name = "uno verde"
	flip_icon = "g1"

/obj/item/weapon/uno/g2
	flip_name = "dos verde"
	flip_icon = "g2"

/obj/item/weapon/uno/g3
	flip_name = "tres verde"
	flip_icon = "g3"

/obj/item/weapon/uno/g4
	flip_name = "cuatro verde"
	flip_icon = "g4"

/obj/item/weapon/uno/g5
	flip_name = "cinco verde"
	flip_icon = "g5"

/obj/item/weapon/uno/g6
	flip_name = "seis verde"
	flip_icon = "g6"

/obj/item/weapon/uno/g7
	flip_name = "siete verde"
	flip_icon = "g7"

/obj/item/weapon/uno/g8
	flip_name = "ocho verde"
	flip_icon = "g8"

/obj/item/weapon/uno/g9
	flip_name = "nueve verde"
	flip_icon = "g9"

/obj/item/weapon/uno/gd2
	flip_name = "roba 2 verde"
	flip_icon = "gd2"

/obj/item/weapon/uno/gs
	flip_name = "pasa turno verde"
	flip_icon = "gs"

/obj/item/weapon/uno/gr
	flip_name = "reversa verde"
	flip_icon = "gr"

/obj/item/weapon/uno/r0
	flip_name = "cero rojo"
	flip_icon = "r0"

/obj/item/weapon/uno/r1
	flip_name = "uno rojo"
	flip_icon = "r1"

/obj/item/weapon/uno/r2
	flip_name = "dos rojo"
	flip_icon = "r2"

/obj/item/weapon/uno/r3
	flip_name = "tres rojo"
	flip_icon = "r3"

/obj/item/weapon/uno/r4
	flip_name = "cuatro rojo"
	flip_icon = "r4"

/obj/item/weapon/uno/r5
	flip_name = "cinco rojo"
	flip_icon = "r5"

/obj/item/weapon/uno/r6
	flip_name = "seis rojo"
	flip_icon = "r6"

/obj/item/weapon/uno/r7
	flip_name = "siete rojo"
	flip_icon = "r7"

/obj/item/weapon/uno/r8
	flip_name = "ocho rojo"
	flip_icon = "r8"

/obj/item/weapon/uno/r9
	flip_name = "nueve rojo"
	flip_icon = "r9"

/obj/item/weapon/uno/rd2
	flip_name = "roba 2 rojo"
	flip_icon = "rd2"

/obj/item/weapon/uno/rs
	flip_name = "pasa turno rojo"
	flip_icon = "rs"

/obj/item/weapon/uno/rr
	flip_name = "reversa rojo"
	flip_icon = "rr"

/obj/item/weapon/uno/b0
	flip_name = "cero azul"
	flip_icon = "b0"

/obj/item/weapon/uno/b1
	flip_name = "uno azul"
	flip_icon = "b1"

/obj/item/weapon/uno/b2
	flip_name = "dos azul"
	flip_icon = "b2"

/obj/item/weapon/uno/b3
	flip_name = "tres azul"
	flip_icon = "b3"

/obj/item/weapon/uno/b4
	flip_name = "cuatro azul"
	flip_icon = "b4"

/obj/item/weapon/uno/b5
	flip_name = "cinco azul"
	flip_icon = "b5"

/obj/item/weapon/uno/b6
	flip_name = "seis azul"
	flip_icon = "b6"

/obj/item/weapon/uno/b7
	flip_name = "siete azul"
	flip_icon = "b7"

/obj/item/weapon/uno/b8
	flip_name = "ocho azul"
	flip_icon = "b8"

/obj/item/weapon/uno/b9
	flip_name = "nueve azul"
	flip_icon = "b9"

/obj/item/weapon/uno/bd2
	flip_name = "roba 2 azul"
	flip_icon = "bd2"

/obj/item/weapon/uno/bs
	flip_name = "pasa turno azul"
	flip_icon = "bs"

/obj/item/weapon/uno/br
	flip_name = "reversa azul"
	flip_icon = "br"

/obj/item/weapon/uno/y0
	flip_name = "cero amarillo"
	flip_icon = "y0"

/obj/item/weapon/uno/y1
	flip_name = "uno amarillo"
	flip_icon = "y1"

/obj/item/weapon/uno/y2
	flip_name = "dos amarillo"
	flip_icon = "y2"

/obj/item/weapon/uno/y3
	flip_name = "tres amarillo"
	flip_icon = "y3"

/obj/item/weapon/uno/y4
	flip_name = "cuatro amarillo"
	flip_icon = "y4"

/obj/item/weapon/uno/y5
	flip_name = "cinco amarillo"
	flip_icon = "y5"

/obj/item/weapon/uno/y6
	flip_name = "seis"
	flip_icon = "y6"

/obj/item/weapon/uno/y7
	flip_name = "siete amarillo"
	flip_icon = "y7"

/obj/item/weapon/uno/y8
	flip_name = "ocho amarillo"
	flip_icon = "y8"

/obj/item/weapon/uno/y9
	flip_name = "nueve amarillo"
	flip_icon = "y9"

/obj/item/weapon/uno/yd2
	flip_name = "roba 2 amarillo"
	flip_icon = "yd2"

/obj/item/weapon/uno/ys
	flip_name = "pasa turno amarillo"
	flip_icon = "ys"

/obj/item/weapon/uno/yr
	flip_name = "reversa amarillo"
	flip_icon = "yr"