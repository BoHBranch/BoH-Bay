/var/const/access_infantry = "ACCESS_INFANTRY"
/datum/access/infantry
	id = access_infantry
	desc = "Infantry"
	region = ACCESS_REGION_SECURITY

/var/const/access_infcom = "ACCESS_INFCOM"
/datum/access/infcom
	id = access_infcom
	desc = "Infantry Command"
	region = ACCESS_REGION_SECURITY

/var/const/access_inftech = "ACCESS_INFTECH"
/datum/access/inftech
	id = access_inftech
	desc = "Infantry Technician"
	region = ACCESS_REGION_SECURITY

/var/const/access_gunnery = "ACCESS_GUNNERY"
/datum/access/gunnery
	id = access_gunnery
	desc = "Gunnery Access"
	region = ACCESS_REGION_SECURITY

/var/const/access_psiadvisor = "ACCESS_PSIADVISOR"
/datum/access/psiadvisor
	id = access_psiadvisor
	desc = "Psionic Advisor"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO cannot enter.

/var/const/access_representative_guard = "ACCESS_TORCH_REPRESENTATIVE_GUARD"
/datum/access/representative_guard
	id = access_representative_guard
	desc = "Federal Protection Agent"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Locked so no one except them can take their equipment
