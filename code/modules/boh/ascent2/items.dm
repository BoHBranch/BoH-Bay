/////////
// Firearm Kit
/////////
/obj/item/ascentbox
	name = "equipment kit"
	desc = "A secure box containing equipment."
	icon = 'icons/obj/ascent_doodads.dmi'
	icon_state = "box" //temp

/obj/item/ascentbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Support Alate"] = list(/obj/item/stack/medical/resin/large,/obj/item/weapon/gun/energy/particle/support)
	options["Enforcering Alate"] = list(/obj/item/weapon/gun/energy/particle/small,/obj/item/weapon/storage/med_pouch/ascent)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM]. This is probably worth more than what your Gyne thinks of you.")
		qdel(src)


/////////
// 'Tool' Kit
/////////
/obj/item/weapon/storage/firstaid/surgery/ascent
	name = "odd surgery kit"
	desc = "Contains tools for surgery. Has precise foam fitting for safe transport and automatically sterilizes the content between uses."
	color = "#a33fbf"
	startswith = list(
		/obj/item/weapon/bonesetter,
		/obj/item/weapon/cautery,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/hemostat,
		/obj/item/weapon/retractor,
		/obj/item/weapon/scalpel,
		/obj/item/weapon/surgicaldrill,
		/obj/item/weapon/bonegel,
		/obj/item/weapon/FixOVein,
		/obj/item/stack/medical/resin/large,
		)


/////////
// Patches
/////////
/obj/item/stack/medical/resin/large
	name = "large resin stack"
	amount = 30
	max_amount = 30


/////////
// Implants
/////////
/obj/item/weapon/implant/translator/natural/ascent
	origin_tech = list(TECH_BIO = 10)
	learning_threshold = 1
	max_languages = 25 //Absolutely not required, but whatever.

/obj/item/weapon/implantcase/ascent
	name = "glass case - 'operative translation device'"
	imp = /obj/item/weapon/implant/translator/natural/ascent

/obj/item/weapon/storage/box/ascentimplants
	name = "operative translators"
	desc = "Box of stuff used to implant translation software, designed to sync up with the Mantid physiology."
	icon_state = "implant"
	item_state = "syringe_kit"
	startswith = list(/obj/item/weapon/implanter = 1,
				/obj/item/weapon/implantcase/ascent = 12)


/////////
// Human Oxygen Reactor
/////////
/obj/item/weapon/tank/mantid/reactor/oxygen/captives
	name = "captive gas reactor"
	desc = "Creates a near infinite supply of oxygen, best given to captives, rather than yourself."
	color = "#3b88bf"
	refill_gas_type = GAS_OXYGEN
	distribute_pressure = 21


/////////
// purple greytide box and shiz
/////////
/obj/item/weapon/storage/toolbox/ascent
	name = "odd toolbox"
	icon_state = "syndicate"
	item_state = "toolbox_syndi"
	color = "#3b88bf"
	startswith = list(/obj/item/clustertool, /obj/item/weapon/weldingtool/electric/mantid, /obj/item/weapon/crowbar/brace_jack/ascent, /obj/item/device/multitool/mantid)

//crowbar
/obj/item/weapon/crowbar/brace_jack/ascent
	name = "odd maintenance jack"
	desc = "A special crowbar that can be used to safely remove airlock braces from airlocks. \
	This one appears oddly weighted."
	color = "#3b88bf"
	w_class = ITEM_SIZE_NORMAL

//lamp
/obj/item/device/flashlight/lamp/floodlamp/ascent
	name = "odd lamp"
	color = "#a33fbf" //Just makes it look really, really odd. But it's funny, so, y'know.