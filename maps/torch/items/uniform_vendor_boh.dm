// A modular rewrite to allow "alternative" uniform. Done for NTEF to allow both NTSC and NTF uniforms, and to allow marines for camo selection.
// Some of those (shoes, gloves) are not really needed but hey - safe check.

/obj/machinery/uniform_vendor/populate_uniforms(decl/hierarchy/mil_uniform/user_outfit)
	var/list/res = list()
	res["PT"] = list(
		user_outfit.pt_under,
		user_outfit.pt_shoes
		)
	if (user_outfit.pt_under_alt)
		res["PT"] += list(user_outfit.pt_under_alt)
	if (user_outfit.pt_shoes_alt)
		res["PT"] += list(user_outfit.pt_shoes_alt)

	res["Utility"] = list(
		user_outfit.utility_under,
		user_outfit.utility_shoes,
		user_outfit.utility_hat
		)
	if (user_outfit.utility_under_urban || user_outfit.utility_hat_urban)
		res["Urban Utility"] = list(
			user_outfit.utility_under_urban,
			user_outfit.utility_shoes,
			user_outfit.utility_hat_urban
			)
	if (user_outfit.utility_under_tan || user_outfit.utility_hat_tan)
		res["Tan Utility"] = list(
			user_outfit.utility_under_tan,
			user_outfit.utility_shoes,
			user_outfit.utility_hat_tan
			)
	if (user_outfit.utility_extra)
		res["Utility Extras"] = user_outfit.utility_extra

	if (user_outfit.utility_under_alt || user_outfit.utility_shoes_alt || user_outfit.utility_hat_alt)
		res["Alt Utility"] = list(
			user_outfit.utility_under_alt,
			user_outfit.utility_shoes_alt,
			user_outfit.utility_hat_alt
			)
	if (user_outfit.utility_extra_alt)
		res["Alt Utility Extras"] = user_outfit.utility_extra_alt

	res["Service"] = list(
		user_outfit.service_under,
		user_outfit.service_skirt,
		user_outfit.service_over,
		user_outfit.service_shoes,
		user_outfit.service_hat,
		user_outfit.service_gloves
		)
	if(user_outfit.service_extra)
		res["Service Extras"] = user_outfit.service_extra

	if (user_outfit.service_under_alt || user_outfit.service_skirt_alt || user_outfit.service_over_alt || user_outfit.utility_shoes_alt || user_outfit.utility_hat_alt || user_outfit.service_gloves_alt)
		res["Alt Service"] = list(
			user_outfit.service_under_alt,
			user_outfit.service_skirt_alt,
			user_outfit.service_over_alt,
			user_outfit.service_shoes_alt,
			user_outfit.service_hat_alt,
			user_outfit.service_gloves_alt
			)
	if(user_outfit.service_extra_alt)
		res["Alt Service Extras"] = user_outfit.service_extra_alt

	res["Dress"] = list(
		user_outfit.dress_under,
		user_outfit.dress_skirt,
		user_outfit.dress_over,
		user_outfit.dress_shoes,
		user_outfit.dress_hat,
		user_outfit.dress_gloves
		)
	if(user_outfit.dress_extra)
		res["Dress Extras"] = user_outfit.dress_extra

	if (user_outfit.dress_under_alt || user_outfit.dress_skirt_alt || user_outfit.dress_over_alt || user_outfit.dress_shoes_alt || user_outfit.dress_hat_alt || user_outfit.dress_gloves_alt)
		res["Alt Dress"] = list(
			user_outfit.dress_under_alt,
			user_outfit.dress_skirt_alt,
			user_outfit.dress_over_alt,
			user_outfit.dress_shoes_alt,
			user_outfit.dress_hat_alt,
			user_outfit.dress_gloves_alt
			)
	if(user_outfit.dress_extra_alt)
		res["Alt Dress Extras"] = user_outfit.dress_extra_alt

	return res
