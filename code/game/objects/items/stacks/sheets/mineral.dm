/*
Mineral xeets
	Contains:
		- Sandstone
		- Diamond
		- Uranium
		- Plasma
		- Gold
		- Silver
		- Clown
	Others:
		- Adamantine
		- Mythril
		- Enriched Uranium
*/

/*
 * Sandstone
 */

/obj/item/stack/xeet/mineral
	icon = 'icons/obj/mining.dmi'

/obj/item/stack/xeet/mineral/sandstone
	name = "sandstone brick"
	desc = "This appears to be a combination of both sand and stone."
	singular_name = "sandstone brick"
	icon_state = "xeet-sandstone"
	throw_speed = 3
	throw_range = 5
	origin_tech = "materials=1"
	xeettype = "sandstone"

var/global/list/datum/stack_recipe/sandstone_recipes = list ( \
	new/datum/stack_recipe("pile of dirt", /obj/machinery/hydroponics/soil, 3, time = 10, one_per_turf = 1, on_floor = 1), \
	new/datum/stack_recipe("sandstone door", /obj/structure/mineral_door/sandstone, 10, one_per_turf = 1, on_floor = 1), \
/*	new/datum/stack_recipe("sandstone wall", ???), \
		new/datum/stack_recipe("sandstone floor", ???),\ */
	)

/obj/item/stack/xeet/mineral/sandstone/New(var/loc, var/amount=null)
	recipes = sandstone_recipes
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()

/*
 * Diamond
 */
/obj/item/stack/xeet/mineral/diamond
	name = "diamond"
	icon_state = "xeet-diamond"
	singular_name = "diamond"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_range = 3
	origin_tech = "materials=6"
	perunit = 3750
	xeettype = "diamond"

var/global/list/datum/stack_recipe/diamond_recipes = list ( \
	new/datum/stack_recipe("diamond door", /obj/structure/mineral_door/transparent/diamond, 10, one_per_turf = 1, on_floor = 1), \
	)

/obj/item/stack/xeet/mineral/diamond/New(var/loc, var/amount=null)
	recipes = diamond_recipes
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()

/*
 * Uranium
 */
/obj/item/stack/xeet/mineral/uranium
	name = "uranium"
	icon_state = "xeet-uranium"
	singular_name = "uranium xeet"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=5"
	perunit = 2000
	xeettype = "uranium"

var/global/list/datum/stack_recipe/uranium_recipes = list ( \
	new/datum/stack_recipe("uranium door", /obj/structure/mineral_door/uranium, 10, one_per_turf = 1, on_floor = 1), \
	)

/obj/item/stack/xeet/mineral/uranium/New(var/loc, var/amount=null)
	recipes = uranium_recipes
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()

/*
 * Plasma
 */
/obj/item/stack/xeet/mineral/plasma
	name = "solid plasma"
	icon_state = "xeet-plasma"
	singular_name = "plasma xeet"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "plasmatech=2;materials=2"
	perunit = 2000
	xeettype = "plasma"

var/global/list/datum/stack_recipe/plasma_recipes = list ( \
	new/datum/stack_recipe("plasma door", /obj/structure/mineral_door/transparent/plasma, 10, one_per_turf = 1, on_floor = 1), \
	)

/obj/item/stack/xeet/mineral/plasma/New(var/loc, var/amount=null)
	recipes = plasma_recipes
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()

/*
 * Gold
 */
/obj/item/stack/xeet/mineral/gold
	name = "gold"
	icon_state = "xeet-gold"
	singular_name = "gold bar"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=4"
	perunit = 2000
	xeettype = "gold"

var/global/list/datum/stack_recipe/gold_recipes = list ( \
	new/datum/stack_recipe("golden door", /obj/structure/mineral_door/gold, 10, one_per_turf = 1, on_floor = 1), \
	)

/obj/item/stack/xeet/mineral/gold/New(var/loc, var/amount=null)
	recipes = gold_recipes
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()

/*
 * Silver
 */
/obj/item/stack/xeet/mineral/silver
	name = "silver"
	icon_state = "xeet-silver"
	singular_name = "silver bar"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=3"
	perunit = 2000
	xeettype = "silver"

var/global/list/datum/stack_recipe/silver_recipes = list ( \
	new/datum/stack_recipe("silver door", /obj/structure/mineral_door/silver, 10, one_per_turf = 1, on_floor = 1), \
	)

/obj/item/stack/xeet/mineral/silver/New(var/loc, var/amount=null)
	recipes = silver_recipes
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()

/*
 * Clown
 */
/obj/item/stack/xeet/mineral/clown
	name = "bananium"
	icon_state = "xeet-clown"
	singular_name = "bananium xeet"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=4"
	perunit = 2000
	xeettype = "clown"

/obj/item/stack/xeet/mineral/clown/New(var/loc, var/amount=null)
	pixel_x = rand(0,4)-4
	pixel_y = rand(0,4)-4
	..()


/****************************** Others ****************************/

/*
 * Enriched Uranium
 */
/obj/item/stack/xeet/mineral/enruranium
	name = "enriched uranium"
	icon_state = "xeet-enruranium"
	singular_name = "enriched uranium xeet"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=5"
	perunit = 1000

/*
 * Adamantine
 */
/obj/item/stack/xeet/mineral/adamantine
	name = "adamantine"
	icon_state = "xeet-adamantine"
	singular_name = "adamantine xeet"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=4"
	perunit = 2000

/*
 * Mythril
 */
/obj/item/stack/xeet/mineral/mythril
	name = "mythril"
	icon_state = "xeet-mythril"
	singular_name = "mythril xeet"
	force = 5.0
	throwforce = 5
	w_class = 3.0
	throw_speed = 1
	throw_range = 3
	origin_tech = "materials=4"
	perunit = 2000