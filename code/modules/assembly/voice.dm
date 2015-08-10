/obj/item/device/assembly/voice
	name = "voice analyzer"
	desc = "A small electronic device able to record a voice sample, and send a signal when that sample is repeated."
	icon_state = "voice"
	materials = list(MAT_METAL=500, MAT_GLASS=50)
	origin_tech = "magnets=1"
	flags = HEAR
	attachable = 1
	verb_say = "beeps"
	verb_ask = "beeps"
	verb_exclaim = "beeps"
	var/listening = 0
	var/recorded = "" //the activation message
	var/triggeredtick = 0 //it activates only once per tick.

/obj/item/device/assembly/voice/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(speaker == src)
		return

	if(connected) //dont let the thing we're connected to trigger us
		if(speaker == connected.holder)
			return

		else if(radio_freq)
			if(speaker.GetSource() == connected.holder)
				return

	if(listening && !radio_freq)
		recorded = raw_message
		listening = 0
		say("Activation message is '[recorded]'.")

	else if(triggeredtick != world.time)
		if(findtext(raw_message, recorded))
			triggeredtick = world.time
			spawn(-1) //some devices sleep(), this fucks up radio things if we dont spawn() here.
				pulse(0)

/obj/item/device/assembly/voice/activate()
	if(secured)
		if(!holder)
			listening = !listening
			say("[listening ? "Now" : "No longer"] recording input.")

/obj/item/device/assembly/voice/attack_self(mob/user)
	if(!user)
		return 0
	activate()
	return 1

/obj/item/device/assembly/voice/toggle_secure()
	. = ..()
	listening = 0
