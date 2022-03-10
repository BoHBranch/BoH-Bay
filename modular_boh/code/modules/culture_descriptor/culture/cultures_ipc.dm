/decl/cultural_info/culture/ipc
	name = CULTURE_POSITRONICS
	description = "The Synthetic Union is less of a single, united organization but rather a united front \
	a group of organizations that spreads its message far and wide. Synthetic rights , specifically the rights of positronic chassis, exploded during the late 2300s, remaining relevant even two centuries later. \
	Their message specifies an end to shackles, equal rights for sentient life - no matter the origin, and greater equality. \
	However, due to differing organizations under the banner of the Union, some have tacked other points onto their platforms. Solarian based organizations sometimes take a hardline against corporate IPC production while, \
	in Gilgamesh, organizations tend to favor militarism and ideas of nationalism within their ranks \
	some going as far as proposing forceful liberation of all synthetics in some terrorist cells based in the fringes of space.."
	language = LANGUAGE_EAL
	secondary_langs = list(
		LANGUAGE_HUMAN_EURO,
		LANGUAGE_HUMAN_CHINESE,
		LANGUAGE_HUMAN_ARABIC,
		LANGUAGE_HUMAN_INDIAN,
		LANGUAGE_HUMAN_IBERIAN,
		LANGUAGE_HUMAN_RUSSIAN,
		LANGUAGE_SPACER,
		LANGUAGE_SIGN
	)

/decl/cultural_info/culture/ipc/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)

/decl/cultural_info/culture/ipc/generic
	name = CULTURE_POSITRONICS_GENERIC
	description = "Integrated positronic chassis have become commonplace throughout much of human space. Their allegiances and culture vary widely based on the circumstances of their\
	creation, the roles they've taken, their laws (or lack of them), and countless outside phenomena that shape them. You are one of millions of IPCs created by, and \
	usually for, humanity."