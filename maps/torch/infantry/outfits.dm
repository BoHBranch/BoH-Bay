/////////
// radio keys
/////////
/obj/item/device/encryptionkey/infantry/sl
	name = "infantry leader encryption key"
	desc = "An Encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Infantry" = 1, "Engineering" = 1, "Supply" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/infantry/tech
	name = "infantry technician encryption key"
	desc = "An Encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Infantry" = 1, "Engineering" = 1, "Supply" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/infantry
	name = "infantry technician encryption key"
	desc = "An Encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Infantry" = 1, "Exploration" = 1)

//radio sets
/obj/item/device/radio/headset/infcom
	name = "infantry leader headset"
	desc = "A headset with an inbuilt subspace antenna for better reception."
	icon_state = "exp_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/infantry/sl

/obj/item/device/radio/headset/infcom/alt
	name = "infantry leader bowman headset"
	icon_state = "exp_headset_alt"
	item_state = "exp_headset_alt"

/obj/item/device/radio/headset/inftech
	name = "infantry technician headset"
	desc = "A headset with an inbuilt subspace antenna for better reception."
	icon_state = "exp_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/infantry/tech

/obj/item/device/radio/headset/inftech/alt
	name = "infantry technician bowman headset"
	icon_state = "exp_headset_alt"
	item_state = "exp_headset_alt"

/obj/item/device/radio/headset/infantry
	name = "infantry headset"
	desc = "A headset with an inbuilt subspace antenna for better reception."
	icon_state = "exp_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/infantry

/obj/item/device/radio/headset/infantry/alt
	name = "infantry bowman headset"
	icon_state = "exp_headset_alt"
	item_state = "exp_headset_alt"
