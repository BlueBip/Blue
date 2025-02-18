/decl/bodytype/proc/get_ignited_icon(var/mob/living/carbon/human/H)
	return ignited_icon

/decl/bodytype/proc/get_icon_cache_uid(var/mob/H)
	if(!icon_cache_uid)
		icon_cache_uid = "[sequential_id(/decl/bodytype)]"
	return icon_cache_uid

/decl/bodytype/proc/get_bandages_icon(var/mob/living/carbon/human/H)
	return bandages_icon

/decl/bodytype/proc/get_blood_overlays(var/mob/living/carbon/human/H)
	return blood_overlays

/decl/bodytype/proc/get_damage_overlays(var/mob/living/carbon/human/H)
	return damage_overlays

/decl/bodytype/proc/get_husk_icon(var/mob/living/carbon/human/H)
	return husk_icon

/decl/bodytype/proc/get_skeletal_icon(var/mob/living/carbon/human/H)
	return skeletal_icon

/decl/bodytype/proc/get_lip_icon(var/mob/living/carbon/human/H)
	return lip_icon

/decl/bodytype/proc/get_vulnerable_location(var/mob/living/carbon/human/H)
	return vulnerable_location

/decl/bodytype/proc/get_base_icon(var/mob/living/carbon/human/H, var/get_deform)
	return get_deform ? icon_deformed : icon_base

/decl/bodytype/proc/handle_post_bodytype_pref_set(datum/preferences/pref)
	if(!pref)
		return

	// Markings used to be cleared outside of here, but it was always done before every call, so it was moved in here.
	pref.body_markings = base_markings?.Copy()

/decl/bodytype/proc/apply_appearance(var/mob/living/carbon/human/H)
	if(base_color)
		H.set_skin_colour(base_color)
