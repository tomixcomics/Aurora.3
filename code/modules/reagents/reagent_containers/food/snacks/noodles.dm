/obj/item/reagent_containers/food/snacks/spaghetti
	name = "spaghetti"
	desc = "A bundle of raw spaghetti."
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "spaghetti"
	filling_color = "#EDDD00"
	center_of_mass = list("x"=16, "y"=16)
	reagents_to_add = list(/singleton/reagent/nutriment = 1)
	reagent_data = list(/singleton/reagent/nutriment = list("noodles" = 2))
	bitesize = 1

/obj/item/reagent_containers/food/snacks/boiledspaghetti
	name = "boiled spaghetti"
	desc = "A plain dish of noodles, this sucks."
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "spaghettiboiled"
	trash = /obj/item/trash/plate
	filling_color = "#FCEE81"
	center_of_mass = list("x"=16, "y"=10)
	reagents_to_add = list(/singleton/reagent/nutriment = 2)
	reagent_data = list(/singleton/reagent/nutriment = list("noodles" = 2))
	bitesize = 2

/obj/item/reagent_containers/food/snacks/pastatomato
	name = "spaghetti"
	desc = "Spaghetti and crushed tomatoes."
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "pastatomato"
	trash = /obj/item/trash/plate
	filling_color = "#DE4545"
	center_of_mass = list("x"=16, "y"=10)
	reagents_to_add = list(/singleton/reagent/nutriment = 6, /singleton/reagent/drink/tomatojuice = 10)
	reagent_data = list(/singleton/reagent/nutriment = list("tomato" = 3, "noodles" = 3))
	bitesize = 4

/obj/item/reagent_containers/food/snacks/meatballspaghetti
	name = "spaghetti and meatballs"
	desc = "Now thats a nic'e meatball!"
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "meatballspaghetti"
	trash = /obj/item/trash/plate
	filling_color = "#DE4545"
	center_of_mass = list("x"=16, "y"=10)
	reagents_to_add = list(/singleton/reagent/nutriment = 4, /singleton/reagent/nutriment/protein = 4)
	reagent_data = list(/singleton/reagent/nutriment = list("noodles" = 4))
	bitesize = 2

/obj/item/reagent_containers/food/snacks/spesslaw
	name = "spesslaw"
	desc = "A lawyers favourite."
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "spesslaw"
	filling_color = "#DE4545"
	center_of_mass = list("x"=16, "y"=10)
	reagents_to_add = list(/singleton/reagent/nutriment = 4, /singleton/reagent/nutriment/protein = 4)
	reagent_data = list(/singleton/reagent/nutriment = list("noodles" = 4))
	bitesize = 2

/obj/item/reagent_containers/food/snacks/lomein
	name = "lo mein"
	gender = PLURAL
	desc = "A popular Chinese noodle dish. Chopsticks optional."
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "lomein"
	trash = /obj/item/trash/plate
	filling_color = "#FCEE81"
	center_of_mass = list("x"=16, "y"=10)
	reagents_to_add = list(/singleton/reagent/nutriment = 8, /singleton/reagent/nutriment/protein = 2, /singleton/reagent/drink/carrotjuice = 3, /singleton/reagent/oculine = 1)
	reagent_data = list(/singleton/reagent/nutriment = list("rice" = 2, "mushroom" = 2, "cabbage" = 2))
	bitesize = 2

/obj/item/reagent_containers/food/snacks/matsuul
	name = "Matsuul"
	desc = "Several places claim to be the origin place of Matsuul'hu (Matsuul for short), but all that's known for a fact is that this bowl of stir-fried, thinly sliced fish, tiny squares of earthern root pasta, eki mushrooms, and mint, is a local street food available in any melting pot where multiple species live together."
	icon = 'icons/obj/item/reagent_containers/food/noodles.dmi'
	icon_state = "matsuul"
	trash = /obj/item/trash/purplebowl
	filling_color = "#70c9c1"
	reagents_to_add = list(/singleton/reagent/nutriment = 8, /singleton/reagent/nutriment/protein/seafood = 4)
	reagent_data = list(/singleton/reagent/nutriment = list("earthernroot pasta" = 2, "mushroom" = 2, "mint" = 2))
	bitesize = 2

/obj/item/reagent_containers/food/snacks/matsuul/update_icon()
	var/percent_matsuul = round((reagents.total_volume / 14) * 100)
	switch(percent_matsuul)
		if(0 to 50)
			icon_state = "matsuulhalf"
		if(51 to INFINITY)
			icon_state = "matsuul"
