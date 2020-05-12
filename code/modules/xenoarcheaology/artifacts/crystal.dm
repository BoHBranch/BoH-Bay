/obj/structure/crystal
	name = "cristal grande"
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "crystal"
	density = 1

/obj/structure/crystal/New()
	..()

	icon_state = pick("ano70","ano80")

	desc = pick(
	"Brilla tenuemente mientras atrapa la luz.",
	"Parece tener un tenue brillo interior.",
	"Parece que te atrae hacia adentro mientras lo miras.",
	"Algo parpadea debilmente cuando lo miras.",
	"Es fascinante contemplar.")

/obj/structure/crystal/Destroy()
	src.visible_message("<span class='warning'>[src] se rompe!</span>")
	if(prob(75))
		new /obj/item/weapon/material/shard/phoron(src.loc)
	if(prob(50))
		new /obj/item/weapon/material/shard/phoron(src.loc)
	if(prob(25))
		new /obj/item/weapon/material/shard/phoron(src.loc)
	if(prob(75))
		new /obj/item/weapon/material/shard(src.loc)
	if(prob(50))
		new /obj/item/weapon/material/shard(src.loc)
	if(prob(25))
		new /obj/item/weapon/material/shard(src.loc)
	return ..()

//todo: laser_act
