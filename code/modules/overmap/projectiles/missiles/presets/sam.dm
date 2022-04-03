// Colony defense missile.
/obj/structure/missile/sam
	name = "PDA-F missile"
	overmap_name = "ballistic missile"
	desc = "A 'Planetary Defensive Action' missile, series 'F'. This is designed to quickly leave the atmosphere of a planet and strike anything in range. \
	This cannot, however, intercept other missiles. What's this doing here?"

	equipment = list(
		/obj/item/missile_equipment/thruster,
		/obj/item/missile_equipment/autoarm,
		/obj/item/missile_equipment/payload/sam
	)

/obj/structure/missile/sam/attackby(var/obj/item/I, var/mob/user)// :)
	return
