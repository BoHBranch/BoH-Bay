
/datum/gear/clothing/
	sort_category = "Ropa y Accesorios Superiores"
	category = /datum/gear/clothing/
	slot = slot_tie

/datum/gear/clothing/flannel
	display_name = "sueter de franela, coloreable"
	path = /obj/item/clothing/accessory/toggleable/flannel
	slot = slot_tie
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/scarf
	display_name = "bufanda"
	path = /obj/item/clothing/accessory/scarf
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/hawaii
	display_name = "camisa hawaiiana"
	path = /obj/item/clothing/accessory/toggleable/hawaii

/datum/gear/clothing/hawaii/New()
	..()
	var/list/shirts = list()
	shirts["camisa hawaiiana azul"] = /obj/item/clothing/accessory/toggleable/hawaii
	shirts["camisa hawaiiana roja"] = /obj/item/clothing/accessory/toggleable/hawaii/red
	shirts["camisa hawaiiana random"] = /obj/item/clothing/accessory/toggleable/hawaii/random
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/clothing/vest
	display_name = "chaleco de traje, coloreable"
	path = /obj/item/clothing/accessory/toggleable/vest/
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/suspenders
	display_name = "tirantes"
	path = /obj/item/clothing/accessory/suspenders

/datum/gear/clothing/wcoat
	display_name = "chaleco, coloreable"
	path = /obj/item/clothing/accessory/wcoat
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/zhongshan
	display_name = "campera zhongshan, coloreable"
	path = /obj/item/clothing/accessory/toggleable/zhongshan
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/dashiki
	display_name = "daishikis"
	path = /obj/item/clothing/accessory/dashiki
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/clothing/thawb
	display_name = "thawb"
	path = /obj/item/clothing/accessory/thawb

/datum/gear/clothing/sherwani
	display_name = "sherwani, coloreable"
	path = /obj/item/clothing/accessory/sherwani
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/qipao
	display_name = "blusa qipao, coloreable"
	path = /obj/item/clothing/accessory/qipao
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/sweater
	display_name = "sueter de tortuga, coloreable"
	path = /obj/item/clothing/accessory/sweater
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/tangzhuang
	display_name = "campera tangzhuang, coloreable"
	path = /obj/item/clothing/accessory/tangzhuang
	flags = GEAR_HAS_COLOR_SELECTION