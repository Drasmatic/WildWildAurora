var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/captain
	title = "Overseer"
	flag = CAPTAIN
	department = "Command"
	head_position = 1
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "colonial officials."
	selection_color = "#4747FF"
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 0
	economic_modifier = 20

	minimum_character_age = 35

	ideal_character_age = 70 // Old geezer captains ftw

	outfit = /datum/outfit/job/captain

	blacklisted_species = list("Tajara", "M'sai Tajara", "Zhan-Khazan Tajara", "Unathi", "Aut'akh Unathi", "Diona", "Baseline Frame", "Hephaestus G1 Industrial Frame", "Hephaestus G2 Industrial Frame", "Xion Industrial Frame", "Zeng-Hu Mobility Frame", "Bishop Accessory Frame", "Shell Frame", "Vaurca Worker", "Vaurca Warrior")

/datum/outfit/job/captain
	name = "Overseer"
	jobtype = /datum/job/captain

	uniform = /obj/item/clothing/under/suit_jacket/charcoal
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id/gold
	pda = /obj/item/device/pda/captain
	accessory = /obj/item/clothing/accessory/holster/hip

	backpack_contents = list(
		/obj/item/storage/box/ids = 1,
		/obj/item/device/radio
	)

	implants = list(
		/obj/item/implant/mindshield

	)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel_cap
	dufflebag = /obj/item/storage/backpack/duffel/cap
	messengerbag = /obj/item/storage/backpack/messenger/com

/datum/outfit/job/captain/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(H && H.w_uniform)
		var/obj/item/clothing/under/U = H.w_uniform
		var/obj/item/clothing/accessory/medal/gold/captain/medal = new()
		U.attach_accessory(null, medal)

	return TRUE

/datum/job/captain/get_access()
		return get_all_station_access()

/datum/job/captain/announce(mob/living/carbon/human/H)
	. = ..()
	captain_announcement.Announce("All hands, Overseer [H.real_name] is present!")
	callHook("captain_spawned", list(H))

/datum/job/hop
	title = "Operations Manager"
	flag = HOP
	department = "Civilian"
	head_position = 1
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the overseer"
	selection_color = "#9696FF"
	minimal_player_age = 0
	economic_modifier = 10
	ideal_character_age = 50

	minimum_character_age = 30

	outfit = /datum/outfit/job/hop

	access = list(access_sec_doors, access_medical, access_engine, access_change_ids, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics,
			            access_chapel_office, access_library, access_research, access_mining, access_mining_station, access_janitor,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_weapons, access_journalist)
	minimal_access = list(access_sec_doors, access_medical, access_engine, access_change_ids, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics,
			            access_chapel_office, access_library, access_research, access_mining, access_mining_station, access_janitor,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_weapons, access_journalist)

	blacklisted_species = list("Aut'akh Unathi", "Diona", "Vaurca Worker", "Vaurca Warrior")

/datum/outfit/job/hop
	name = "Operations Manager"
	jobtype = /datum/job/hop

	uniform = /obj/item/clothing/under/suit_jacket/charcoal
	shoes = /obj/item/clothing/shoes/brown
	id = /obj/item/card/id/navy
	pda = /obj/item/device/pda/heads/hop
	backpack_contents = list(
		/obj/item/storage/box/ids = 1
	)

	messengerbag = /obj/item/storage/backpack/messenger/com
