/datum/job/cmo

	title = "Head Physician"

	flag = CMO
	head_position = 1
	department = "Medical"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "no one, you own the clinic"
	selection_color = "#FF56B4"
	economic_modifier = 10

	minimum_character_age = 35

	access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads,
			access_pharmacy, access_virology, access_cmo, access_surgery, access_RC_announce, access_engine, access_construction,
			access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_external_airlocks, access_research,
			access_paramedic, access_maint_tunnels)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads,
			access_pharmacy, access_virology, access_cmo, access_surgery, access_RC_announce, access_engine, access_construction,
			access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_external_airlocks, access_research,
			access_paramedic, access_maint_tunnels)

	minimal_player_age = 0
	ideal_character_age = 50
	outfit = /datum/outfit/job/cmo

	blacklisted_species = list("Aut'akh Unathi", "Vaurca Worker", "Vaurca Warrior")

/datum/outfit/job/cmo

	name = "Head Physician"

	jobtype = /datum/job/cmo

	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
	suit_store = /obj/item/device/flashlight/pen
	shoes = /obj/item/clothing/shoes/brown
	pda = /obj/item/device/pda/heads/cmo
	id = /obj/item/card/id/navy
	l_hand = /obj/item/storage/firstaid/adv

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/med
	messengerbag = /obj/item/storage/backpack/messenger/med

/datum/job/doctor
	title = "Physician"
	flag = DOCTOR
	department = "Medical"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 3

	supervisors = "yourself"

	selection_color = "#FF97D1"
	economic_modifier = 7

	minimum_character_age = 30

	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_pharmacy, access_virology, access_genetics, access_eva)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_genetics, access_eva)
	outfit = /datum/outfit/job/doctor

/datum/job/surgeon
	title = "Surgeon"
	flag = SURGEON
	department = "Medical"
	department_flag = MEDSCI
	faction = "Station"
	supervisors = "the chief medical officer"
	selection_color = "#FF97D1"
	economic_modifier = 7

	spawn_positions = 2
	total_positions = 2

	minimum_character_age = 30

	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_pharmacy, access_virology, access_genetics, access_eva)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_genetics, access_eva)
	outfit = /datum/outfit/job/doctor/surgeon


/datum/outfit/job/doctor
	name = "Physician"
	base_name = "Physician"
	jobtype = /datum/job/doctor

	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/medical
	shoes = /obj/item/clothing/shoes/medical
	pda = /obj/item/device/pda/medical
	id = /obj/item/card/id/white
	suit_store = /obj/item/device/flashlight/pen

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/med
	messengerbag = /obj/item/storage/backpack/messenger/med

/datum/outfit/job/doctor/trauma_physician
	name = "Trauma Physician"
	jobtype = /datum/job/doctor

	uniform = /obj/item/clothing/under/rank/medical/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/trauma
	shoes = /obj/item/clothing/shoes/trauma
	mask = /obj/item/clothing/mask/surgical
	l_hand = /obj/item/storage/firstaid/adv

/datum/outfit/job/doctor/surgeon
	name = "Surgeon"
	jobtype = /datum/job/doctor

	uniform = /obj/item/clothing/under/rank/medical/blue
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/surgeon
	shoes = /obj/item/clothing/shoes/surgeon
	head = /obj/item/clothing/head/surgery/blue

/datum/outfit/job/doctor/nurse
	name = "Nurse"
	jobtype = /datum/job/doctor

	uniform = /obj/item/clothing/under/rank/medical/purple
	suit = null
	head = /obj/item/clothing/head/nursehat


/datum/job/pharmacist
	title = "Chemist"
	flag = CHEMIST
	department = "Medical"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 2
	supervisors = "the chief medical officer"
	selection_color = "#FF97D1"
	economic_modifier = 5

	minimum_character_age = 26

	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_pharmacy, access_virology, access_genetics)
	minimal_access = list(access_medical, access_medical_equip, access_pharmacy, access_virology)
	alt_titles = list("Biochemist")
	outfit = /datum/outfit/job/pharmacist
	alt_outfits = list(
		"Biochemist"=/datum/outfit/job/pharmacist/biochemist
		)

/datum/outfit/job/pharmacist
	name = "Chemist"
	jobtype = /datum/job/pharmacist

	uniform = /obj/item/clothing/under/rank/pharmacist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/pharmacist
	shoes = /obj/item/clothing/shoes/chemist
	pda =  /obj/item/device/pda/chemist
	id = /obj/item/card/id/white

	backpack = /obj/item/storage/backpack/pharmacy
	satchel = /obj/item/storage/backpack/satchel_pharm
	dufflebag = /obj/item/storage/backpack/duffel/pharm
	messengerbag = /obj/item/storage/backpack/messenger/pharm

/datum/outfit/job/pharmacist/biochemist
	name = "Biochemist"
	jobtype = /datum/job/pharmacist

	uniform = /obj/item/clothing/under/rank/biochemist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/biochemist
	shoes = /obj/item/clothing/shoes/biochem

	backpack = /obj/item/storage/backpack/virology
	satchel = /obj/item/storage/backpack/satchel_vir
	dufflebag = /obj/item/storage/backpack/duffel/vir
	messengerbag = /obj/item/storage/backpack/messenger/viro

/datum/job/psychiatrist
	title = "Psychiatrist"
	flag = PSYCHIATRIST
	department = "Medical"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 0
	spawn_positions = 1
	economic_modifier = 5

	minimum_character_age = 30

	supervisors = "the chief medical officer"
	selection_color = "#FF97D1"
	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_pharmacy, access_virology, access_genetics, access_psychiatrist)
	minimal_access = list(access_medical, access_medical_equip, access_psychiatrist)
	alt_titles = list("Psychologist")
	outfit = /datum/outfit/job/psychiatrist
	alt_outfits = list("Psychologist" = /datum/outfit/job/psychiatrist/psycho)

/datum/outfit/job/psychiatrist
	name = "Psychiatrist"
	base_name = "Psychiatrist"
	jobtype = /datum/job/psychiatrist

	uniform = /obj/item/clothing/under/rank/psych
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/psych
	shoes = /obj/item/clothing/shoes/psych
	pda =  /obj/item/device/pda/psych
	id = /obj/item/card/id/white

/datum/outfit/job/psychiatrist/psycho
	name = "Psychologist"
	jobtype = /datum/job/psychiatrist

	uniform = /obj/item/clothing/under/rank/psych/turtleneck


/datum/job/paramedic
	title = "Paramedic"
	flag = PARAMEDIC
	department = "Medical"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 0
	spawn_positions = 2
	supervisors = "the chief medical officer"
	selection_color = "#FF97D1"
	economic_modifier = 4

	minimum_character_age = 24
	alt_ages = list("Emergency Medical Technician" = 20)

	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_pharmacy, access_virology, access_eva, access_maint_tunnels, access_external_airlocks, access_psychiatrist, access_paramedic)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_eva, access_maint_tunnels, access_external_airlocks, access_paramedic)
	alt_titles = list("Emergency Medical Technician")
	outfit = /datum/outfit/job/paramedic
	alt_outfits = list("Emergency Medical Technician"=/datum/outfit/job/paramedic/emt)

	blacklisted_species = list("Diona")

/datum/outfit/job/paramedic
	name = "Paramedic"
	base_name = "Paramedic"
	jobtype = /datum/job/paramedic

	uniform = /obj/item/clothing/under/rank/medical/black
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	l_hand = /obj/item/storage/firstaid/adv
	r_hand = /obj/item/reagent_containers/hypospray
	belt = /obj/item/storage/belt/medical/emt
	pda =  /obj/item/device/pda/paramedic
	id = /obj/item/card/id/white
	head = /obj/item/clothing/head/hardhat/emt

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/med
	messengerbag = /obj/item/storage/backpack/messenger/med

/datum/outfit/job/paramedic/emt
	name = "Emergency Medical Technician"
	jobtype = /datum/job/paramedic

	uniform = /obj/item/clothing/under/rank/medical/paramedic

/datum/job/intern_med
	title = "Medical Resident"
	flag = INTERN_MED
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 0
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#FF97D1"
	access = list(access_medical, access_surgery, access_medical_equip)
	minimal_access = list(access_medical, access_surgery, access_medical_equip)
	minimum_character_age = 25
	alt_titles = list("Medical Intern")
	alt_ages = list("Medical Intern" = 18)
	outfit = /datum/outfit/job/intern_med

/datum/outfit/job/intern_med
	name = "Medical Resident"
	jobtype = /datum/job/intern_med

	uniform = /obj/item/clothing/under/rank/medical/intern
	shoes = /obj/item/clothing/shoes/medical

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/med
	messengerbag = /obj/item/storage/backpack/messenger/med
