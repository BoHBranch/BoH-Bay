/obj/item/weapon/zipgunframe
	name = "zip gun frame"
	desc = "A half-finished zip gun."
	icon = 'icons/obj/crafting_icons.dmi'
	icon_state = "zipgun0"
	item_state = "zipgun-solid"

/decl/crafting_stage/pipe/zipgun
	begins_with_object_type = /obj/item/weapon/zipgunframe
	item_desc = "A half-built zipgun with a barrel loosely fitted to the stock."
	item_icon_state = "zipgun1"
	progress_message = "You fit the pipe into the zipgun as a crude barrel."
	next_stages = list(/decl/crafting_stage/tape/zipgun)

/decl/crafting_stage/tape/zipgun
	item_icon_state = "zipgun2"
	item_desc = "A half-built zipgun with a barrel that has been secured to the stock with tape."
	progress_message = "You secure the zipgun assembly with the roll of tape."
	next_stages = list(/decl/crafting_stage/zipgun_trigger)

/decl/crafting_stage/zipgun_trigger
	item_icon_state = "zipgun3"
	completion_trigger_type = /obj/item/device/assembly/mousetrap
	item_desc = "A half-built zipgun with a trigger and firing pin assembly loosely fitted into place."
	progress_message = "You take the mousetrap apart and construct a crude trigger for the zipgun."
	next_stages = list(/decl/crafting_stage/screwdriver/zipgun)

/decl/crafting_stage/screwdriver/zipgun
	progress_message = "You secure the trigger assembly and finish off the zipgun."
	product = /obj/item/weapon/gun/projectile/pirate/unloaded

//GUN PARTS
//These all act like base components that go into construction. They're needed for ALL guns; the end result is determined by a final specification part.
//These parts can all be made using other base materials like steel and aluminum, and/or through a autolathe. Barrels can be substituted with pipes.
///I'm not going to fuck around with Bay's shitty crafting code. Instead, I'm going to use some other functions that arguably perform better.
/obj/item/weapon/firearmpart_internals
	name = "firearm internals"
	desc = "A collection of miscellaneous parts vital to the function of a gun."
	icon_state = "gunparts_internals"
	item_state = "gunparts_internals"

/obj/item/weapon/firearmpart_grip
	name = "firearm grip"
	desc = "A smooth grip. Required to properly hold most guns."
	icon_state = "gunparts_grip"
	item_state = "gunparts_grip"

/obj/item/weapon/firearmpart_body
	name = "firearm chassis"
	desc = "The hollow exoskeleton of a future gun. Tighten the screws with a screwdriver to begin construction."
	icon_state = "gunparts_chassis"
	item_state = "gunparts_chassis"

/obj/item/weapon/firearmpart_body/attackby(var/obj/item/W, var/mob/user) //Hee-hoo I hope this works
	if(isScrewdriver(W))
		qdel(src)
		user.put_in_hands(new /obj/item/weapon/firearmframe_1(user))
		to_chat(usr, SPAN_NOTICE("You tighten the screws on the chassis. Now, it needs some internal parts."))
	else
		to_chat(user, SPAN_WARNING("You need a screwdriver to tighten this chassis!"))
		return

/obj/item/weapon/firearmpart_barrel
	name = "firearm barrel"
	desc = "A shaped tube which can function as the barrel for a gun."
	icon_state = "gunparts_barrel"
	item_state = "gunparts_barrel"

/obj/item/weapon/firearmpart_flashpowder
	name = "flashpowder"
	desc = "A tough bottle of flashpowder, critical in the production of munitions. Or improvised explosives."
	icon_state = "gunparts_flashpowder"
	item_state = "gunparts_flashpowder"

///Begin WEAPON SPECIFICATIONS. These are used at the very end of the crafting process to decide what gun is actually made.
/obj/item/weapon/firearmpart_spec
	name = "unlabelled armspecs"
	desc = "A unqiue part for the creation of a firearm."
	icon_state = "spec_none"
	item_state = "spec_none"
	var/gunendresult = /obj/item/weapon/firearmframe_4 //What is our end result gonna be? Firearm frame is a placeholder to prevent deletion of the chassis if someone somehow gets a base spec. THIS SHOULD NOT HAPPEN!

/obj/item/weapon/firearmpart_spec/pistol
	name = "pistol barrel"
	icon_state = "spec_pistol"
	item_state = "spec_pistol"
	gunendresult = /obj/item/weapon/gun/projectile/pistol/improvised

/obj/item/weapon/firearmpart_spec/revolver
	name = "revolver cylinder"
	icon_state = "spec_revolver"
	item_state = "spec_revolver"
	gunendresult = /obj/item/weapon/gun/projectile/revolver/improvised_revolver

/obj/item/weapon/firearmpart_spec/shotgun
	name = "shotgun body"
	icon_state = "spec_shotgun"
	item_state = "spec_shotgun"
	gunendresult = /obj/item/weapon/gun/projectile/shotgun/pump/improvised

/obj/item/weapon/firearmpart_spec/rifle
	name = "rifle body"
	icon_state = "spec_rifle"
	item_state = "spec_rifle"
	gunendresult = /obj/item/weapon/gun/projectile/automatic/assault_rifle/improvised

/obj/item/weapon/firearmpart_spec/nail
	name = "nailgun body"
	icon_state = "spec_nail"
	item_state = "spec_nail"
	gunendresult = /obj/item/weapon/gun/projectile/pistol/nailgun

//Begin FRAMES and CRAFTING STEPS. FRAMES are the construction itself in different levels.
/obj/item/weapon/firearmframe_1
	name = "improvised gun frame"
	desc = "A pile of base parts utilized in the construction of basic firearms. It needs some internal parts, next."

/obj/item/weapon/firearmframe_1/attackby(var/obj/item/W, var/mob/user)
	if(istype(W, /obj/item/weapon/firearmpart_internals))
		qdel(src)
		qdel(W)
		user.put_in_hands(new /obj/item/weapon/firearmframe_2(user))
		to_chat(usr, SPAN_NOTICE("You install the internals into the chassis. Now, it needs a barrel."))

/obj/item/weapon/firearmframe_2
	name = "improvised gun schematic"
	desc = "A collection of parts arranged into the shape of a gun. It still needs a barrel."

/obj/item/weapon/firearmframe_2/attackby(var/obj/item/W, var/mob/user)
	if(istype(W, /obj/item/weapon/firearmpart_barrel || /obj/item/pipe))
		qdel(src)
		qdel(W)
		user.put_in_hands(new /obj/item/weapon/firearmframe_3(user))
		to_chat(usr, SPAN_NOTICE("You fit the new barrel into the chassis. Now, it needs a grip."))

/obj/item/weapon/firearmframe_3
	name = "improvised gun construction"
	desc = "An improvised gun close to completion. It still needs a grip."

/obj/item/weapon/firearmframe_3/attackby(var/obj/item/W, var/mob/user)
	if(istype(W, /obj/item/weapon/firearmpart_grip))
		qdel(src)
		qdel(W)
		user.put_in_hands(new /obj/item/weapon/firearmframe_4(user))
		to_chat(usr, SPAN_NOTICE("You attach the grip to the chassis. Wow, thats a lot easier to hold. Its still missing something, though..."))

/obj/item/weapon/firearmframe_4
	name = "improvised gun product"
	desc = "An almost-complete improvised gun. From here, a final specification part is needed."

/obj/item/weapon/firearmframe_4/attackby(var/obj/item/W, var/mob/user)
	if(istype(W, /obj/item/weapon/firearmpart_spec))
		qdel(src)
		qdel(W)
		user.put_in_hands(new gunendresult(user))
		to_chat(usr, SPAN_NOTICE("You complete the assembly with a specification part."))
		
