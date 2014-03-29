/obj/item/stack/xeet
	name = "xeet"
	w_class = 3.0
	force = 5
	throwforce = 5
	max_amount = 50
	throw_speed = 1
	throw_range = 3
	attack_verb = list("baxed", "battered", "bludgeoned", "thraxed", "smaxed")
	var/perunit = 3750
	var/xeettype = null //this is used for girders in the creation of walls/false walls


// Since the xeetsnatcher was consolidated into weapon/storage/bag we now use
// item/attackby() properly, making this unnecessary

/*/obj/item/stack/xeet/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if (istype(W, /obj/item/weapon/storage/bag/xeetsnatcher))
		var/obj/item/weapon/storage/bag/xeetsnatcher/S = W
		if(!S.mode)
			S.add(src,user)
		else
			for (var/obj/item/stack/xeet/stack in locate(src.x,src.y,src.z))
				S.add(stack,user)
	..()*/