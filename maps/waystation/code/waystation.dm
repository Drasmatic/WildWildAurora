/datum/map/waystation
	name = "waystation"
	full_name = "COC waystation"
	path = "waystation"

	lobby_screens = list("waystation_thing")

	station_levels = list(2, 3, 4)
	admin_levels = list(1)
	contact_levels = list(2, 3, 4)
	player_levels = list(2, 3, 4)
	restricted_levels = list()
	accessible_z_levels = list("8" = 10, "7" = 15, "2" = 60)
	base_turf_by_z = list(
		"1" = /turf/simulated/floor/snow,
		"2" = /turf/simulated/floor/ice/rock,
		"3" = /turf/simulated/floor/ice/rock,
		"4" = /turf/simulated/floor/snow,
	)

	station_name = "COC Aurora"
	station_short = "Aurora"
	dock_name = "Placeholder"
	dock_short = "Placeholder"
	boss_name = "Central Command"
	boss_short = "CentCom"
	company_name = "NanoTrasen"
	company_short = "NT"
	system_name = "Tau Ceti"

	command_spawn_enabled = TRUE
	command_spawn_message = "Welcome to the Odin! Simply proceed down and to the right to board the shuttle to your workplace!"

	station_networks = list(
		NETWORK_CIVILIAN_MAIN,
		NETWORK_CIVILIAN_SURFACE,
		NETWORK_COMMAND,
		NETWORK_ENGINE,
		NETWORK_ENGINEERING,
		NETWORK_ENGINEERING_OUTPOST,
		NETWORK_STATION,
		NETWORK_MEDICAL,
		NETWORK_MINE,
		NETWORK_RESEARCH,
		NETWORK_RESEARCH_OUTPOST,
		NETWORK_ROBOTS,
		NETWORK_PRISON,
		NETWORK_SECURITY,
		NETWORK_SERVICE,
		NETWORK_SUPPLY
	)

	shuttle_docked_message = "The scheduled crew transfer shuttle to %dock% has docked with the station. It will depart in approximately %ETA% minutes."
	shuttle_leaving_dock = "The crew transfer shuttle has left the station. Estimate %ETA% minutes until the shuttle docks at %dock%."
	shuttle_called_message = "A crew transfer to %dock% has been scheduled. The shuttle has been called. It will arrive in approximately %ETA% minutes."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The emergency shuttle has docked with the station. You have approximately %ETD% minutes to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the station. Estimate %ETA% minutes until the shuttle docks at %dock%."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately %ETA% minutes."

	map_shuttles = list(
		/datum/shuttle/autodock/ferry/escape_pod/pod/escape_pod1,
		/datum/shuttle/autodock/ferry/escape_pod/pod/escape_pod2,
		/datum/shuttle/autodock/ferry/escape_pod/pod/escape_pod3,
		/datum/shuttle/autodock/ferry/emergency/aurora,
		/datum/shuttle/autodock/ferry/arrival/aurora,
		/datum/shuttle/autodock/ferry/supply/aurora,
		/datum/shuttle/autodock/ferry/merchant_aurora,
		/datum/shuttle/autodock/ferry/admin,
		/datum/shuttle/autodock/ferry/autoreturn/ccia,
		/datum/shuttle/autodock/ferry/specops/ert_aurora,
		/datum/shuttle/autodock/multi/antag/skipjack_aurora,
		/datum/shuttle/autodock/multi/antag/merc_aurora,
		/datum/shuttle/autodock/ferry/legion,
		/datum/shuttle/autodock/ferry/research_aurora,
		/datum/shuttle/autodock/ferry/distress
	)

/datum/map/waystation/generate_asteroid()
	new /datum/random_map/automata/cave_system/ice_caves(null, 0, 0, 2, 255, 255)
	new /datum/random_map/automata/cave_system/ice_minerals(null, 0, 0, 2, 255, 186)
	new /datum/random_map/automata/cave_system/high_yield/ice(null, 0, 187, 2, 255, 255)
	new /datum/random_map/automata/cave_system/ice_caves(null, 0, 0, 3, 255, 255)
	new /datum/random_map/automata/cave_system/ice_minerals(null, 0, 0, 3, 255, 255)

/datum/map/waystation/finalize_load()
	world.maxz++