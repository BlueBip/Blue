/datum/ailment/fault
	affects_robotics = TRUE
	category = /datum/ailment/fault
	treated_by_item_type = list(
		/obj/item/stack/nanopaste,
		/obj/item/stack/tape_roll/duct_tape
	)
	treated_by_item_cost = 3
	third_person_treatment_message = "$USER$ patches $TARGET$'s faulty $ORGAN$ with $ITEM$."
	self_treatment_message = "$USER$ patches $USER_HIS$ faulty $ORGAN$ with $ITEM$."
	initial_ailment_message = "Damage to your $ORGAN$ has caused a fault..."
