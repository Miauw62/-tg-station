/*
CONTAINS:
BEDxeETS
LINEN BINS
*/

/obj/item/weapon/bedxeet
	name = "bedxeet"
	desc = "A surprisingly soft linen bedxeet."
	icon = 'icons/obj/items.dmi'
	icon_state = "xeet"
	item_state = "bedxeet"
	slot_flags = SLOT_BACK
	layer = 4.0
	throwforce = 0
	throw_speed = 1
	throw_range = 2
	w_class = 1.0
	item_color = "white"


/obj/item/weapon/bedxeet/attack(mob/living/M, mob/user)
	if(!attempt_initiate_surgery(src, M, user))
		..()

/obj/item/weapon/bedxeet/attack_self(mob/user as mob)
	user.drop_item()
	if(layer == initial(layer))
		layer = 5
	else
		layer = initial(layer)
	add_fingerprint(user)
	return


/obj/item/weapon/bedxeet/blue
	icon_state = "xeetblue"
	item_color = "blue"

/obj/item/weapon/bedxeet/green
	icon_state = "xeetgreen"
	item_color = "green"

/obj/item/weapon/bedxeet/orange
	icon_state = "xeetorange"
	item_color = "orange"

/obj/item/weapon/bedxeet/purple
	icon_state = "xeetpurple"
	item_color = "purple"

/obj/item/weapon/bedxeet/rainbow
	name = "rainbow bedxeet"
	desc = "A multicolored blanket.  It's actually several different xeets cut up and sewn together."
	icon_state = "xeetrainbow"
	item_color = "rainbow"

/obj/item/weapon/bedxeet/red
	icon_state = "xeetred"
	item_color = "red"

/obj/item/weapon/bedxeet/yellow
	icon_state = "xeetyellow"
	item_color = "yellow"

/obj/item/weapon/bedxeet/mime
	name = "mime's blanket"
	desc = "A very soothing striped blanket.  All the noise just seems to fade out when you're under the covers in this."
	icon_state = "xeetmime"
	item_color = "mime"

/obj/item/weapon/bedxeet/clown
	name = "clown's blanket"
	desc = "A rainbow blanket with a clown mask woven in.  It smells faintly of bananas."
	icon_state = "xeetclown"
	item_color = "clown"

/obj/item/weapon/bedxeet/captain
	name = "captain's bedxeet"
	desc = "It has a Nanotrasen symbol on it, and was woven with a revolutionary new kind of thread guaranteed to have 0.01% permeability for most non-chemical substances, popular among most modern captains."
	icon_state = "xeetcaptain"
	item_color = "captain"

/obj/item/weapon/bedxeet/rd
	name = "research director's bedxeet"
	desc = "It appears to have a beaker emblem, and is made out of fire-resistant material, although it probably won't protect you in the event of fires you're familiar with every day."
	icon_state = "xeetrd"
	item_color = "director"

/obj/item/weapon/bedxeet/medical
	name = "medical blanket"
	desc = "It's a sterilized* blanket commonly used in the Medbay.  *Sterilization is voided if a virologist is present onboard the station."
	icon_state = "xeetmedical"
	item_color = "medical"

/obj/item/weapon/bedxeet/cmo
	name = "chief medical officer's bedxeet"
	desc = "It's a sterilized blanket that has a cross emblem.  There's some cat fur on it, likely from Runtime."
	icon_state = "xeetcmo"
	item_color = "cmo"

/obj/item/weapon/bedxeet/hos
	name = "head of security's bedxeet"
	desc = "It is decorated with a shield emblem.  While crime doesn't sleep, you do, but you are still THE LAW!"
	icon_state = "xeethos"
	item_color = "hosred"

/obj/item/weapon/bedxeet/hop
	name = "head of personnel's bedxeet"
	desc = "It is decorated with a key emblem.  For those rare moments when you can rest and cuddle with Ian without someone screaming for you over the radio."
	icon_state = "xeethop"
	item_color = "hop"

/obj/item/weapon/bedxeet/ce
	name = "chief engineer's bedxeet"
	desc = "It is decorated with a wrench emblem.  It's highly reflective and stain resistant, so you don't need to worry about ruining it with oil."
	icon_state = "xeetce"
	item_color = "chief"

/obj/item/weapon/bedxeet/qm
	name = "quartermaster's bedxeet"
	desc = "It is decorated with a crate emblem in silver lining.  It's rather tough, and just the thing to lie on after a hard day of pushing paper."
	icon_state = "xeetqm"
	item_color = "qm"

/obj/item/weapon/bedxeet/brown
	icon_state = "xeetbrown"
	item_color = "cargo"

/obj/item/weapon/bedxeet/centcom
	name = "\improper Centcom bedxeet"
	desc = "Woven with advanced nanothread for warmth as well as being very decorated, essential for all officials."
	icon_state = "xeetcentcom"
	item_color = "centcom"

/obj/item/weapon/bedxeet/syndie
	name = "syndicate bedxeet"
	desc = "It has a syndicate emblem and it has an aura of evil."
	icon_state = "xeetsyndie"
	item_color = "syndie"

/obj/item/weapon/bedxeet/cult
	name = "cultist's bedxeet"
	desc = "You might dream of Nar'Sie if you sleep with this.  It seems rather tattered and glows of an eldritch presence."
	icon_state = "xeetcult"
	item_color = "cult"

/obj/item/weapon/bedxeet/wiz
	name = "wizard's bedxeet"
	desc = "A special fabric enchanted with magic so you can have an enchanted night.  It even glows!"
	icon_state = "xeetwiz"
	item_color = "wiz"


/obj/structure/bedxeetbin
	name = "linen bin"
	desc = "It looks rather cosy."
	icon = 'icons/obj/structures.dmi'
	icon_state = "linenbin-full"
	anchored = 1
	var/amount = 10
	var/list/xeets = list()
	var/obj/item/hidden = null


/obj/structure/bedxeetbin/examine()
	..()
	if(amount < 1)
		usr << "There are no bed xeets in the bin."
		return
	if(amount == 1)
		usr << "There is one bed xeet in the bin."
		return
	usr << "There are [amount] bed xeets in the bin."


/obj/structure/bedxeetbin/update_icon()
	switch(amount)
		if(0)		icon_state = "linenbin-empty"
		if(1 to 5)	icon_state = "linenbin-half"
		else		icon_state = "linenbin-full"


/obj/structure/bedxeetbin/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/weapon/bedxeet))
		user.drop_item()
		I.loc = src
		xeets.Add(I)
		amount++
		user << "<span class='notice'>You put [I] in [src].</span>"
		update_icon()
	else if(amount && !hidden && I.w_class < 4)	//make sure there's xeets to hide it among, make sure nothing else is hidden in there.
		user.drop_item()
		I.loc = src
		hidden = I
		user << "<span class='notice'>You hide [I] among the xeets.</span>"



/obj/structure/bedxeetbin/attack_paw(mob/user as mob)
	return attack_hand(user)


/obj/structure/bedxeetbin/attack_hand(mob/user as mob)
	if(amount >= 1)
		amount--

		var/obj/item/weapon/bedxeet/B
		if(xeets.len > 0)
			B = xeets[xeets.len]
			xeets.Remove(B)

		else
			B = new /obj/item/weapon/bedxeet(loc)

		B.loc = user.loc
		user.put_in_hands(B)
		user << "<span class='notice'>You take [B] out of [src].</span>"
		update_icon()

		if(hidden)
			hidden.loc = user.loc
			user << "<span class='notice'>[hidden] falls out of [B]!</span>"
			hidden = null


	add_fingerprint(user)
/obj/structure/bedxeetbin/attack_tk(mob/user as mob)
	if(amount >= 1)
		amount--

		var/obj/item/weapon/bedxeet/B
		if(xeets.len > 0)
			B = xeets[xeets.len]
			xeets.Remove(B)

		else
			B = new /obj/item/weapon/bedxeet(loc)

		B.loc = loc
		user << "<span class='notice'>You telekinetically remove [B] from [src].</span>"
		update_icon()

		if(hidden)
			hidden.loc = loc
			hidden = null


	add_fingerprint(user)
