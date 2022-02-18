// POUCHES BCUZ POUCHES COOL

/obj/item/weapon/storage/pouch
    name = "generic pouch"
    desc = "stop looking at this LOOK AWAY"
    icon = 'icons/obj/storage.dmi'
    icon_state = "flare_pouch"
    w_class = ITEM_SIZE_HUGE //So it won't fit in backpacks
    max_w_class = ITEM_SIZE_SMALL
    slot_flags = SLOT_POCKET
    storage_slots = 1

/obj/item/weapon/storage/pouch/examine(mob/user)
    ..()
    to_chat(user, "Can be worn by attaching it to a pocket.")

/obj/item/weapon/storage/pouch/flare
    name = "flare pouch"
    desc = "A pouch designed to hold flares."
    icon_state = "flare_pouch"
    storage_slots = 7
    startswith = list(/obj/item/device/flashlight/flare = 7)
    can_hold = list(
        /obj/item/device/flashlight/flare
        )

/obj/item/weapon/storage/pouch/medkit
    name = "medkit pouch"
    desc = "A pouch designed to hold a single medical kit."
    icon_state = "medkit_pouch"
    can_hold = list(
        /obj/item/weapon/storage/firstaid
        )

/obj/item/weapon/storage/pouch/syringe
    name = "syringe pouch"
    desc = "A pouch designed to hold syringes, for all your injection purposes."
    icon_state = "syringe_pouch"
    can_hold = list(
        /obj/item/weapon/reagent_containers/syringe
        )