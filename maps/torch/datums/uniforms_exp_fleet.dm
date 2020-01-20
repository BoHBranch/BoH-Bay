// For alternative fleet uniform

/decl/hierarchy/mil_uniform
	var/pt_under_alt = null
	var/pt_shoes_alt = null

	var/utility_under_alt = null
	var/utility_shoes_alt = null
	var/utility_hat_alt = null
	var/utility_extra_alt = null

	var/service_under_alt = null
	var/service_skirt_alt = null
	var/service_over_alt = null
	var/service_shoes_alt = null
	var/service_hat_alt = null
	var/service_gloves_alt = null
	var/service_extra_alt = null

	var/dress_under_alt = null
	var/dress_skirt_alt = null
	var/dress_over_alt = null
	var/dress_shoes_alt = null
	var/dress_hat_alt = null
	var/dress_gloves_alt = null
	var/dress_extra_alt = null

// Expeditionary Fleet (overrides normal fleet)
/decl/hierarchy/mil_uniform/fleet
	pt_under = /obj/item/clothing/under/solgov/pt/expeditionary
	pt_under_alt = /obj/item/clothing/under/solgov/pt/fleet
	pt_shoes = /obj/item/clothing/shoes/black

	utility_under = /obj/item/clothing/under/solgov/utility/expeditionary
	utility_under_alt = /obj/item/clothing/under/solgov/utility/fleet
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/soft/solgov/expedition
	utility_hat_alt = /obj/item/clothing/head/solgov/utility/fleet
	utility_extra = list(/obj/item/clothing/head/beret/solgov/expedition, /obj/item/clothing/head/ushanka/solgov, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov, /obj/item/clothing/shoes/jackboots/unathi)
	utility_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,/obj/item/clothing/head/soft/solgov/fleet)

	service_under = /obj/item/clothing/under/solgov/service/expeditionary
	service_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt
	service_over = /obj/item/clothing/suit/storage/solgov/service/expeditionary
	service_under_alt = /obj/item/clothing/under/solgov/service/fleet
	service_skirt_alt = /obj/item/clothing/under/solgov/service/fleet/skirt
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/solgov/service/expedition
	service_hat_alt = /obj/item/clothing/head/solgov/dress/fleet/garrison

	dress_under = /obj/item/clothing/under/solgov/service/expeditionary
	dress_skirt = /obj/item/clothing/under/solgov/service/expeditionary/skirt
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/expedition
	dress_under_alt = /obj/item/clothing/under/solgov/service/fleet
	dress_skirt_alt = /obj/item/clothing/under/solgov/service/fleet/skirt
	dress_over_alt = /obj/item/clothing/suit/dress/solgov/fleet/sailor
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/solgov/service/expedition
	dress_hat_alt = /obj/item/clothing/head/solgov/dress/fleet
	dress_gloves = /obj/item/clothing/gloves/white

	dress_extra = list(/obj/item/clothing/accessory/solgov/ec_scarf)
	dress_extra_alt = list(/obj/item/clothing/head/beret/solgov/fleet/dress)
