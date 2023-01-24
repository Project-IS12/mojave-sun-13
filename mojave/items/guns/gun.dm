/obj/item/gun

	//MOJAVE MODULE - GUN_RECOIL -- BEGIN
	///a multiplier of the duration the recoil takes to go back to normal view, this is (recoil*recoil_backtime_multiplier)+1
	var/recoil_backtime_multiplier = 2
	///this is how much deviation the gun recoil can have, recoil pushes the screen towards the reverse angle you shot + some deviation which this is the max.
	var/recoil_deviation = 22.5
	//MOJAVE MODULE - GUN_RECOIL -- END
	wield_info = /datum/wield_info/default/inhands


/obj/item/gun/Initialize(mapload)
	. = ..()
	var/datum/wield_info/wield_datum = GLOB.path_to_wield_info[wield_info]//Only do this for two handed guns.
	if(istype(wield_datum, /datum/wield_info/default/inhands))
		inhand_icon_state = "[inhand_icon_state]_onehand"
