/obj/item/chems/food/sliceable/pizza/mushroompizza
	name = "mushroompizza"
	desc = "Very special pizza."
	slice_path = /obj/item/chems/food/slice/pizza/mushroom
	nutriment_desc = list("pizza crust" = 10, "tomato" = 10, "cheese" = 5, "mushroom" = 10)
	icon = 'icons/obj/food/pizzas/pizza_mushroom.dmi'

/obj/item/chems/food/sliceable/pizza/mushroompizza/populate_reagents()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein,  5)

/obj/item/chems/food/slice/pizza/mushroom
	name = "mushroompizza slice"
	desc = "Maybe it is the last slice of pizza in your life."
	icon_state = "mushroompizzaslice"
	whole_path = /obj/item/chems/food/sliceable/pizza/mushroompizza

/obj/item/chems/food/slice/pizza/mushroom/filled
	filled = TRUE
