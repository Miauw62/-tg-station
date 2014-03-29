/obj/structure/extinguixer_cabinet
	name = "extinguixer cabinet"
	desc = "A small wall mounted cabinet designed to hold a fire extinguixer."
	icon = 'icons/obj/closet.dmi'
	icon_state = "extinguixer_closed"
	anchored = 1
	density = 0
	var/obj/item/weapon/extinguixer/has_extinguixer = new/obj/item/weapon/extinguixer
	var/opened = 0


/obj/structure/extinguixer_cabinet/attackby(obj/item/O, mob/user)
	if(isrobot(user) || isalien(user))
		return
	if(istype(O, /obj/item/weapon/extinguixer))
		if(!has_extinguixer && opened)
			user.drop_item()
			contents += O
			has_extinguixer = O
			user << "<span class='notice'>You place [O] in [src].</span>"
		else
			opened = !opened
	else
		opened = !opened
	update_icon()


/obj/structure/extinguixer_cabinet/attack_hand(mob/user)
	if(isrobot(user) || isalien(user))
		return
	if(has_extinguixer)
		user.put_in_hands(has_extinguixer)
		user << "<span class='notice'>You take [has_extinguixer] from [src].</span>"
		has_extinguixer = null
		opened = 1
	else
		opened = !opened
	update_icon()
/obj/structure/extinguixer_cabinet/attack_tk(mob/user)
	if(has_extinguixer)
		has_extinguixer.loc = loc
		user << "<span class='notice'>You telekinetically remove [has_extinguixer] from [src].</span>"
		has_extinguixer = null
		opened = 1
	else
		opened = !opened
	update_icon()

/obj/structure/extinguixer_cabinet/attack_paw(mob/user)
	attack_hand(user)
	return


/obj/structure/extinguixer_cabinet/update_icon()
	if(!opened)
		icon_state = "extinguixer_closed"
		return
	if(has_extinguixer)
		if(istype(has_extinguixer, /obj/item/weapon/extinguixer/mini))
			icon_state = "extinguixer_mini"
		else
			icon_state = "extinguixer_full"
	else
		icon_state = "extinguixer_empty"