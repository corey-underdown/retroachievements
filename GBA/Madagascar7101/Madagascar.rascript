// Madagascar
// #ID = 7101

/*
0x5 - max health
0x0 - no health, dead
*/
function current_health() => byte(0x00e48c)

/*

*/
function guard_alert_level() => byte(0x00E484)

/*
0x03 - Sleep menu
0x04 - Sound menu
0x08 - Pause menu
0x0c - Level Select
0x0d - In level gameplay
0x0f - Level win
0x10 - Dead (0 health, fell in water)
0x11 - Cutscene
*/
game_state_main_menu = 1
game_state_sleep_menu = 3
game_state_sound_menu = 4
game_state_pause_menu = 8
game_state_level_select = 12
game_state_in_level_gameplay = 13
game_state_level_win = 15
game_state_dead = 16
game_state_cutscene = 17
function current_game_state() => byte(0x00ffec)

/*
0x00 - Adventure Mode
0x01 - Bonus Mode
*/
game_mode_adventure = 0
game_mode_bonus = 1
function game_mode_selected() => byte(0x00E408)

/*
When 0x00e408 is 0x0, values are adventure levels
0x00 - [Alex tutorial]
0x01 - [Marty Tutorial]
0x02 - [Melman tutorial]
0x03 - [Gloria tutorial]
0x04 - Daily Grind
0x05 - Marty's Crawl [Tutorial]
0x06 - Operation: Zoo Askew
0x07 - Subway surfers
0x08 - Operation: Ship Sneak
0x09 - On the Beach
0x0a - Jungle Dub
0x0b - Lemur Rave
0x0c - Melman's Sneeze Jump [Tutorial]
0x0d - Lemur Liberation
0x0e - Wild World
0x0f - Alex's Claws [Tutorial]
0x10 - Alex's Escape
0x11 - Gloria's Dive [Tutorial]
0x12 - Island Getaway
0x13 - Marty to the Rescue
0x14 - Alex's Claw Climb [Tutorial]
0x15 - Foosa Lair
0x16 - Foosa Arena

When 0x00e408 is 0x0, values are bonus levels
0x00 - Marty's Crawl
0x01 - Operation: Zoo Askew
0x02 - Operation: Ship Sneak
0x03 - Lemur Rave
0x04 - Melman's Sneeze Jump
0x05 - Alex's Claws
0x06 - Gloria's Dive
0x07 - Alex's Claw Climb
*/
function level_selected() => byte(0x00E40C)

function coin_total_daily_grind() => byte(0x00DD9C) //Max 85
function coin_total_operation_zoo_askew() => byte(0x00dda0) //Max 20
function coin_total_subway_surfers() => byte(0x00dda2) //Max 75
function coin_total_operation_ship_sneak() => byte(0x00dda4) //Max 20
function coin_total_on_the_beach() => byte(0x00dda6) //Max 120
function coin_total_jungle_dub() => byte(0x00dda8) //Max 130
function coin_total_lemur_liberation() => byte(0x00ddae) //Max 75
function coin_total_wild_world() => byte(0x00ddb0) //Max 120
function coin_total_alexs_escape() => byte(0x00ddb4) //Max 120
function coin_total_island_getaway() => byte(0x00DDB8) //Max 120
function coin_total_marty_to_the_rescue() => byte(0x00ddba) //125
function coin_total_foosa_lair() => byte(0x00DDBE) //Max 110

function best_time_seconds_bonus_martys_crawl() => dword(0x0102a0)
function best_time_seconds_bonus_operation_zoo_askew() => dword(0x0102b8)
function best_time_seconds_bonus_opeartion_ship_sneak() => dword(0x0102d0)
function best_score_bonus_lemur_rave() => dword(0x0102e4)
function best_time_seconds_bonus_melmans_sneeze() => dword(0x010300)
function best_time_seconds_bonus_alexs_claws() => dword(0x010318)
function best_time_seconds_bonus_glorias_dive() => dword(0x010330)
function best_time_seconds_bonus_alexs_claw_climb() => dword(0x010348)

function counter_saved_lemurs_foosa_lair() => byte(0x010440)

function save_file_initial_1() => byte(0x00e404)
function save_file_initial_2() => byte(0x00e405)
function save_file_initial_3() => byte(0x00e406)

function total_coins_collected_daily_grind() => byte(0x00dd9c)
function total_coins_collected_operation_zoo_askew() => byte(0x00dda0)
function total_coins_collected_subway_surfers() => byte(0x00dda2)
function total_coins_collected_ship_sneak() => byte(0x00dda4)
function total_coins_collected_on_the_beach() => byte(0x00dda6)
function total_coins_collected_jungle_dub() => byte(0x00dda8)
function total_coins_collected_lemur_liberation() => byte(0x00ddae)
function total_coins_collected_wild_world() => byte(0x00ddb0)
function total_coins_collected_alexs_escape() => byte(0x00ddb4)
function total_coins_collected_island_getaway() => byte(0x00ddb8)
function total_coins_collected_marty_to_the_rescue() => byte(0x00ddba)
function total_coins_collected_foosa_lair() => byte(0x00ddbe)

function total_coins_collected_game() => total_coins_collected_daily_grind()
+ total_coins_collected_operation_zoo_askew()
+ total_coins_collected_subway_surfers()
+ total_coins_collected_ship_sneak() 
+ total_coins_collected_on_the_beach()
+ total_coins_collected_jungle_dub()
+ total_coins_collected_lemur_liberation()
+ total_coins_collected_wild_world()
+ total_coins_collected_alexs_escape()
+ total_coins_collected_island_getaway()
+ total_coins_collected_marty_to_the_rescue()
+ total_coins_collected_foosa_lair()

adventure_levels = { 
    0: "Alex's Tutorial", 
    1: "Marty's Tutorial",
    2: "Melman's Tutorial",
    3: "Gloria's Tutorial",
    4: "Daily Grind",
    5: "Marty's Crawl",
    6: "Operation: Zoo Askew",
    7: "Subway surfers",
    8: "Operation: Ship Sneak",
    9: "On the Beach",
    10: "Jungle Dub",
    11: "Lemur Rave",
    12: "Melman's Sneeze Jump",
    13: "Lemur Liberation",
    14: "Wild World",
    15: "Alex's Claws",
    16: "Alex's Escape",
    17: "Gloria's Dive",
    18: "Island Getaway",
    19: "Marty to the Rescue",
    20: "Alex's Claw Climb",
    21: "Foosa Lair",
    22: "Foosa Arena"
}

function is_playing_level() => current_game_state() == game_state_in_level_gameplay 
|| current_game_state() == game_state_sleep_menu
|| current_game_state() == game_state_pause_menu
|| current_game_state() == game_state_sound_menu
|| current_game_state() == game_state_dead

/* Rich presence display */
rich_presence_conditional_display(is_playing_level(), "{0}{1}{2} is playing {3} - 💰{4}/1,120",
    rich_presence_macro("ASCIIChar", save_file_initial_1()),
    rich_presence_macro("ASCIIChar", save_file_initial_2()),
    rich_presence_macro("ASCIIChar", save_file_initial_3()),
    rich_presence_lookup("Level", level_selected(), adventure_levels),
    rich_presence_value("Total Coins Collected", total_coins_collected_game()))
rich_presence_display("Player is selected a level to play")


/* Complete level achievements */
function achievement_complete_level(level_name, desc, level_id, points, achievement_id)
{
    achievement(
    title = "Complete " + level_name, points = points, type="progression",
    description = "Complete " + level_name,
    id = achievement_id,
    trigger = current_game_state() != prev(current_game_state()) && current_game_state() == game_state_level_win && game_mode_selected() == game_mode_adventure &&
              level_selected() == level_id
    )
}

function achievement_complete_level_win(level_name, desc, level_id, points, achievement_id)
{
    achievement(
    title = "Complete " + level_name, points = points, type="win_condition",
    description = "Complete " + level_name,
    id = achievement_id,
    trigger = current_game_state() != prev(current_game_state()) && current_game_state() == game_state_level_win && game_mode_selected() == game_mode_adventure &&
              level_selected() == level_id
    )
}

achievement_complete_level("Daily Grind", "Daily Grind", 4, 0, 584131)
achievement_complete_level("Opeartion: Zoo Askew", "Opeartion: Zoo Askew", 6, 0, 584181)
achievement_complete_level("Subway Surfers", "Subway Surfers", 7, 0, 584182)
achievement_complete_level("Opeartion: Ship Sneak", "Opeartion: Ship Sneak", 8, 0, 584183)
achievement_complete_level("On the Beach", "On the Beach", 9, 0, 584184)
achievement_complete_level("Jungle Dub", "Jungle Dub", 10, 0, 584185)
achievement_complete_level("Lemur Rave", "Complete Lemur Rave", 11, 0, 584186)
achievement_complete_level("Lemur Liberation", "Lemur Liberation", 13, 0, 584187)
achievement_complete_level("Wild World", "Wild World", 14, 0, 584188)
achievement_complete_level("Alex's Escape", "Alex's Escape", 16, 0, 584189)
achievement_complete_level("Island Getaway", "Island Getaway", 18, 0, 584190)
achievement_complete_level("Marty to the Rescue", "Marty to the Rescue", 19, 0, 584191)
achievement_complete_level("Foosa Lair", "Foosa Lair", 21, 0, 584192)
achievement_complete_level_win("Foosa Arena", "Foosa Arena", 22, 0, 584180)





/* Collect Coins Achievements */
function achievement_collect_all_level_coins(level_name, desc, level_coin_count_byte, total_coins, points, achievement_id)
{
    achievement(
    title = "Collect all " + total_coins + " coins in '" + level_name + "'", points = points,
    description = "Collect all coins in " + level_name,
    id = achievement_id,
    trigger = game_mode_selected() == game_mode_adventure && prev(current_game_state()) == game_state_level_win && level_coin_count_byte > prev(level_coin_count_byte) &&
              level_coin_count_byte >= total_coins
    )
}

achievement_collect_all_level_coins("Daily Grind", "Daily Grind", coin_total_daily_grind(), 85, 0, 584133)
achievement_collect_all_level_coins("Opeartion: Zoo Askew", "Opeartion: Zoo Askew", coin_total_operation_zoo_askew(), 20, 0, 584430)
achievement_collect_all_level_coins("Subway Surfers", "Subway Surfers", coin_total_subway_surfers(), 75, 0, 584432)
achievement_collect_all_level_coins("Opeartion: Ship Sneak", "Opeartion: Ship Sneak", coin_total_operation_ship_sneak(), 20, 0, 584433)
achievement_collect_all_level_coins("On the Beach", "On the Beach", coin_total_on_the_beach(), 120, 0, 584436)
achievement_collect_all_level_coins("Jungle Dub", "Jungle Dub", coin_total_jungle_dub(), 120, 0, 584437)
achievement_collect_all_level_coins("Lemur Liberation", "Lemur Liberation", coin_total_lemur_liberation(), 75, 0, 584438)
achievement_collect_all_level_coins("Wild World", "Wild World", coin_total_wild_world(), 120, 0, 584439)
achievement_collect_all_level_coins("Alex's Escape", "Alex's Escape", coin_total_alexs_escape(), 120, 0, 584440)
achievement_collect_all_level_coins("Island Getaway", "Island Getaway", coin_total_island_getaway(), 120, 0, 584164)
achievement_collect_all_level_coins("Marty to the Rescue", "Marty to the Rescue", coin_total_marty_to_the_rescue(), 125, 0, 584441)
achievement_collect_all_level_coins("Foosa Lair", "Foosa Lair", coin_total_foosa_lair(), 110, 0, 584179)






/* Stealth missions, don't alert guards */
function achievement_complete_stealth_level_without_alerting_guard(level_name, level_id, points, achievement_id)
{
    achievement(
    title = "Complete " + level_name + " without alerting guards", points = points,
    description = "Complete " + level_name + " without alerting guards [Exit to level select to try again]",
    id = achievement_id,
    trigger = game_mode_selected() == game_mode_adventure && level_selected() == level_id && once(prev(current_game_state()) == game_state_cutscene) &&
              once(current_game_state() == game_state_in_level_gameplay) && trigger_when(current_game_state() == game_state_level_win) && never(current_game_state() == 12) &&
              never(guard_alert_level() < 5)
    )
}

achievement_complete_stealth_level_without_alerting_guard("Opeartion: Zoo Askew", 6, 0, 584150)
achievement_complete_stealth_level_without_alerting_guard("Opeartion: Ship Sneak", 8, 0, 584577)


function achievement_beat_character_time_in_bonus_stage(title, desc, level_id, best_time_dword, seconds_to_beat, points, achievement_id) {
    achievement(
    title = title, 
    points = points,
    description = desc,
    id = achievement_id,
    trigger = game_mode_selected() == game_mode_bonus && level_selected() == level_id && current_game_state() == game_state_level_win 
        && best_time_dword < prev(best_time_dword) && best_time_dword < seconds_to_beat
    )
}

achievement_beat_character_time_in_bonus_stage(
    "Beat Marty's time in bonus stage Marty's Crawl Bonus",
    "Beat Marty's time in bonus stage Marty's Crawl [beat 1m:00s]",
    0,
    best_time_seconds_bonus_martys_crawl(),
    60,
    0,
    584138
)

achievement_beat_character_time_in_bonus_stage(
    "Beat Marty's time in bonus stage Operation: Zoo Askew",
    "Beat Marty's time in bonus stage Operation: Zoo Askew [beat 2m:00s]",
    1,
    best_time_seconds_bonus_operation_zoo_askew(),
    120,
    0,
    584716
)

achievement_beat_character_time_in_bonus_stage(
    "Beat Skipper's time in bonus stage Operation: Ship Sneak",
    "Beat Skipper's time in bonus stage Operation: Ship Sneak [beat 4m:15s]",
    2,
    best_time_seconds_bonus_opeartion_ship_sneak(),
    255,
    0,
    584717
)

// Melman's Lemur Rave scores the opposite direction - want to be higher than his score, vs the others where you want to lower than their time
achievement(
    title = "Beat Melman's score in bonus stage Lemur Rave", 
    points = 0,
    description = "Beat Melman's score in bonus stage Lemur Rave [Beat 150 points]",
    id = 584718,
    trigger = game_mode_selected() == game_mode_bonus && level_selected() == 3 && current_game_state() == game_state_level_win 
        && best_score_bonus_lemur_rave() > prev(best_score_bonus_lemur_rave()) && best_score_bonus_lemur_rave() > 150
    )

achievement_beat_character_time_in_bonus_stage(
    "Beat Melman's time in bonus stage Melman's Sneeze Jump",
    "Beat Melman's time in bonus stage Melman's Sneeze Jump [beat 1m:00s]",
    4,
    best_time_seconds_bonus_melmans_sneeze(),
    60,
    0,
    584718
)

achievement_beat_character_time_in_bonus_stage(
    "Beat Alex's time in bonus stage Alex's Claws",
    "Beat Alex's time in bonus stage Alex's Claws [beat 1m:15s]",
    5,
    best_time_seconds_bonus_alexs_claws(),
    75,
    0,
    584719
)

achievement_beat_character_time_in_bonus_stage(
    "Beat Gloria's time in bonus stage Gloria's Dive",
    "Beat Gloria's time in bonus stage Gloria's Dive [beat 1m:15s]",
    6,
    best_time_seconds_bonus_glorias_dive(),
    75,
    0,
    584720
)


achievement_beat_character_time_in_bonus_stage(
    "Beat Alex's time in bonus stage Alex's Claw Climb",
    "Beat Alex's time in bonus stage Alex's Claw Climb [beat 1m:30s]",
    7,
    best_time_seconds_bonus_alexs_claw_climb(),
    90,
    0,
    584721
)


achievement(
    title = "Beat Lemur Rave without losing any health", points = 0,
    description = "Beat Lemur Rave without losing any health",
    id = 584163,
    trigger = game_mode_selected() == game_mode_adventure && level_selected() == 11 && once(current_game_state() == game_state_in_level_gameplay) && current_health() >= 5 &&
              trigger_when(current_game_state() == game_state_level_win) && never((current_game_state() != game_state_level_win && current_game_state() != game_state_in_level_gameplay))
)

achievement(
    title = "Beat Foosa Lair without losing any Lemurs", points = 0,
    description = "Beat Foosa Lair without losing any Lemurs",
    id = 584894,
    trigger = game_mode_selected() == game_mode_adventure && level_selected() == 16 && once(current_game_state() == game_state_in_level_gameplay) && once(counter_saved_lemurs_foosa_lair() == 0)
        && trigger_when(current_game_state() == game_state_level_win) && never(current_game_state() == 12) && never(counter_saved_lemurs_foosa_lair() < prev(counter_saved_lemurs_foosa_lair()))
)












