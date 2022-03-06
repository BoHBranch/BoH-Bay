/obj/item/organ/internal/heart/insectoid
	name = "hemolymph pump"

/obj/item/organ/internal/stomach/insectoid
	name = "digestive sac"

/obj/item/organ/internal/lungs/insectoid
	name = "spiracle junction"
	icon_state = "trach"
	gender = NEUTER

/obj/item/organ/internal/liver/insectoid
	name = "primary filters"
	gender = PLURAL

/obj/item/organ/internal/kidneys/insectoid
	name = "secondary filters"

/obj/item/organ/internal/brain/insectoid
	name = "ganglial junction"
	icon_state = "brain-distributed"

/obj/item/organ/internal/eyes/insectoid
	name = "compound ocelli"
	icon_state = "eyes-compound"

/obj/item/organ/internal/lungs/tirolungs
	name = "bromine-oxide organic conversion bloc"
	desc = "A strange device which can process both oxygen and methyl bromide into breathable air."
	icon_state = "oxybromine_lungs"
	breath_type = list(GAS_METHYL_BROMIDE,GAS_OXYGEN)

/obj/item/organ/internal/lungs/tirolungs/mechassist()
	