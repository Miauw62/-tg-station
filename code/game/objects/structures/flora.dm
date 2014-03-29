//trees
/obj/structure/flora/tree
	name = "tree"
	anchored = 1
	density = 1
	pixel_x = -16
	layer = 9

/obj/structure/flora/tree/pine
	name = "pine tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_1"

/obj/structure/flora/tree/pine/New()
	icon_state = "pine_[rand(1, 3)]"
	..()

/obj/structure/flora/tree/pine/xmas
	name = "xmas tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_c"

/obj/structure/flora/tree/pine/xmas/New()
	..()
	icon_state = "pine_c"

/obj/structure/flora/tree/dead
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "tree_1"

/obj/structure/flora/tree/festivus
	name = "festivus pole"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "festivus_pole"
	desc = "During last year's Feats of Strength the Research Director was able to suplex this passing immobile rod into a planter."

/obj/structure/flora/tree/dead/New()
	icon_state = "tree_[rand(1, 6)]"
	..()


//grass
/obj/structure/flora/grass
	name = "grass"
	icon = 'icons/obj/flora/snowflora.dmi'
	anchored = 1

/obj/structure/flora/grass/brown
	icon_state = "snowgrass1bb"

/obj/structure/flora/grass/brown/New()
	icon_state = "snowgrass[rand(1, 3)]bb"
	..()


/obj/structure/flora/grass/green
	icon_state = "snowgrass1gb"

/obj/structure/flora/grass/green/New()
	icon_state = "snowgrass[rand(1, 3)]gb"
	..()

/obj/structure/flora/grass/both
	icon_state = "snowgrassall1"

/obj/structure/flora/grass/both/New()
	icon_state = "snowgrassall[rand(1, 3)]"
	..()


//buxes
/obj/structure/flora/bush
	name = "bush"
	icon = 'icons/obj/flora/snowflora.dmi'
	icon_state = "snowbush1"
	anchored = 1

/obj/structure/flora/bush/New()
	icon_state = "snowbush[rand(1, 6)]"
	..()

//newbuxes

/obj/structure/flora/ausbuxes
	name = "bush"
	icon = 'icons/obj/flora/ausflora.dmi'
	icon_state = "firstbush_1"
	anchored = 1

/obj/structure/flora/ausbuxes/New()
	icon_state = "firstbush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/reedbush
	icon_state = "reedbush_1"

/obj/structure/flora/ausbuxes/reedbush/New()
	icon_state = "reedbush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/leafybush
	icon_state = "leafybush_1"

/obj/structure/flora/ausbuxes/leafybush/New()
	icon_state = "leafybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/palebush
	icon_state = "palebush_1"

/obj/structure/flora/ausbuxes/palebush/New()
	icon_state = "palebush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/stalkybush
	icon_state = "stalkybush_1"

/obj/structure/flora/ausbuxes/stalkybush/New()
	icon_state = "stalkybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/grassybush
	icon_state = "grassybush_1"

/obj/structure/flora/ausbuxes/grassybush/New()
	icon_state = "grassybush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/fernybush
	icon_state = "fernybush_1"

/obj/structure/flora/ausbuxes/fernybush/New()
	icon_state = "fernybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/sunnybush
	icon_state = "sunnybush_1"

/obj/structure/flora/ausbuxes/sunnybush/New()
	icon_state = "sunnybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/genericbush
	icon_state = "genericbush_1"

/obj/structure/flora/ausbuxes/genericbush/New()
	icon_state = "genericbush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/pointybush
	icon_state = "pointybush_1"

/obj/structure/flora/ausbuxes/pointybush/New()
	icon_state = "pointybush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/lavendergrass
	icon_state = "lavendergrass_1"

/obj/structure/flora/ausbuxes/lavendergrass/New()
	icon_state = "lavendergrass_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/ywflowers
	icon_state = "ywflowers_1"

/obj/structure/flora/ausbuxes/ywflowers/New()
	icon_state = "ywflowers_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/brflowers
	icon_state = "brflowers_1"

/obj/structure/flora/ausbuxes/brflowers/New()
	icon_state = "brflowers_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/ppflowers
	icon_state = "ppflowers_1"

/obj/structure/flora/ausbuxes/ppflowers/New()
	icon_state = "ppflowers_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbuxes/sparsegrass
	icon_state = "sparsegrass_1"

/obj/structure/flora/ausbuxes/sparsegrass/New()
	icon_state = "sparsegrass_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbuxes/fullgrass
	icon_state = "fullgrass_1"

/obj/structure/flora/ausbuxes/fullgrass/New()
	icon_state = "fullgrass_[rand(1, 3)]"
	..()

/obj/structure/flora/kirbyplants
	name = "Potted plant"
	icon = 'icons/obj/flora/plants.dmi'
	icon_state = "plant-01"

/obj/structure/flora/kirbyplants/dead
	name = "RD's potted plant"
	desc = "A gift from the botanical staff, presented after the RD's reassignment. There's a tag on it that says \"Y'all come back now, y'hear?\"\nIt doesn't look very healthy..."
	icon_state = "plant-25"