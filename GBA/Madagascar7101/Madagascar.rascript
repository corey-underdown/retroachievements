// Madagascar
// #ID = 7101
// Set by: Corey https://retroachievements.org/user/silcoish
// Achievement titles + desc by tirannwnn https://retroachievements.org/user/tirannwnn

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
game_state_gamemode_select = 11
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
    0: "Alex's Double Jump", 
    1: "Marty's Run",
    2: "Melman's Hideout Dig",
    3: "Gloria's Swim",
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

bonus_levels = {
    0: "Marty's Crawl",
    1: "Operation: Zoo Askew",
    2: "Operation: Ship Sneak",
    3: "Lemur Rave",
    4: "Melman's Sneeze Jump",
    5: "Alex's Claws",
    6: "Gloria's Dive",
    7: "Alex's Claw Climb"
}

function is_playing_level() => current_game_state() == game_state_in_level_gameplay 
|| current_game_state() == game_state_sleep_menu
|| current_game_state() == game_state_pause_menu
|| current_game_state() == game_state_sound_menu
|| current_game_state() == game_state_dead

function is_playing_adventure_level() => is_playing_level() && game_mode_selected() == game_mode_adventure
function is_playing_bonus_level() => is_playing_level() && game_mode_selected() == game_mode_bonus
function is_on_level_select() => current_game_state() == game_state_level_select || current_game_state() == game_state_gamemode_select

/* Rich presence display */
// Conditional: Playing adventure level
rich_presence_conditional_display(is_playing_adventure_level(), "{0}{1}{2} is playing adventure level '{3}' - 💰{4}/1,120",
    rich_presence_macro("ASCIIChar", save_file_initial_1()),
    rich_presence_macro("ASCIIChar", save_file_initial_2()),
    rich_presence_macro("ASCIIChar", save_file_initial_3()),
    rich_presence_lookup("AdventureLevel", level_selected(), adventure_levels),
    rich_presence_value("Total Coins Collected", total_coins_collected_game()))
    
// Conditional: Playing bonus level
rich_presence_conditional_display(is_playing_bonus_level(), "{0}{1}{2} is playing bonus level '{3}' - 💰{4}/1,120",
    rich_presence_macro("ASCIIChar", save_file_initial_1()),
    rich_presence_macro("ASCIIChar", save_file_initial_2()),
    rich_presence_macro("ASCIIChar", save_file_initial_3()),
    rich_presence_lookup("BonusLevel", level_selected(), bonus_levels),
    rich_presence_value("Total Coins Collected", total_coins_collected_game()))

// Conditional: Selected file, not playing level yet (picking level)
rich_presence_conditional_display(is_on_level_select(), "{0}{1}{2} is selecting a level to play - 💰{3}/1,120",
    rich_presence_macro("ASCIIChar", save_file_initial_1()),
    rich_presence_macro("ASCIIChar", save_file_initial_2()),
    rich_presence_macro("ASCIIChar", save_file_initial_3()),
    rich_presence_value("Total Coins Collected", total_coins_collected_game()))

// Conditional: Fallback, haven't loaded save file yet
rich_presence_display("Player is on the title screen")


/* Complete level achievements */
function achievement_complete_level(achievement_title, desc, level_id, points, achievement_id, badge_id)
{
    achievement(
    title = achievement_title, points = points, type="progression",
    description = desc,
    id = achievement_id,
    badge = badge_id,
    trigger = current_game_state() != prev(current_game_state()) && current_game_state() == game_state_level_win && game_mode_selected() == game_mode_adventure &&
              level_selected() == level_id
    )
}

function achievement_complete_level_win(achievement_title, desc, level_id, points, achievement_id, badge_id)
{
    achievement(
    title = achievement_title, 
    points = points, 
    type="win_condition",
    description = desc,
    id = achievement_id,
    badge = badge_id,
    trigger = current_game_state() != prev(current_game_state()) && current_game_state() == game_state_level_win && game_mode_selected() == game_mode_adventure &&
              level_selected() == level_id
    )
}

achievement_complete_level("Same Ol’ Same Ol’", "Begin preparations to celebrate someone's birthday by completing a the level \"Daily Grind\"", 4, 0, 584131, "681221")
achievement_complete_level("Born to Be Wild", "Set a zebra's dreams in motion by completing the level \"Operation: Zoo Askew\"", 6, 0, 584181, "681263")
achievement_complete_level("Surf's Up!", "Brave the germs of New York's vast underbelly to pursue Marty by completing the level \"Subway Surfers\"", 7, 0, 584182, "681264")
achievement_complete_level("Smile and Stealth, Boys...", "Adopt the mindset of a special agent and sneakily move to seize control of the ship by completing the level \"Operation: Ship Sneak\"", 8, 0, 584183, "681265")
achievement_complete_level("Oh, Sugar Honey Iced Tea!", "Quit fooling around and guide the investigation into the new surroundings by completing the level \"On the Beach\"", 9, 0, 584184, "681266")
achievement_complete_level("Beat of the Jungle", "Guide the adventure into the depths of the jungle in order to uncover the surprising source of the music by completing the level \"Jungle Dub\"", 10, 0, 584185, "681267")
achievement_complete_level("I Like to Move It, Move It!", "Show off how a giraffe pulls off surprisingly stylish moves by completing the level \"Lemur Rave\"", 11, 0, 584186, "681268")
achievement_complete_level("Achoo! We’ll Save You!", "Sneeze your way around and over obstacles and rescue the friendly lemurs by completing the level \"Lemur Liberation\"", 13, 0, 584187, "681269")
achievement_complete_level("Far from Home", "No people, no steaks, no problem! Press on with the new lifestyle and try to find a lion friendly meal by completing the level \"Wild World\"", 14, 0, 584188, "681270")
achievement_complete_level("Safety at Steak", "Preserve the safety of the other animals by putting some distance between them and a certain hungry lion by completing the level \"Alex's Escape\"", 16, 0, 584189, "681271")
achievement_complete_level("Pandaemonium in Paradise", "Leave the itchy plants behind and conquer the growing anxiety over the potential desire to bite one another by completing the level \"Island Getaway\"", 18, 0, 584190, "681272")
achievement_complete_level("Some Heroes Wear Capes, Others Have Stripes", "Venture back into unfriendly territory to find a zebra's best friend by completing the level \"Marty to the Rescue\"", 19, 0, 584191, "681273")
achievement_complete_level("Belly of the Beasts ", "Navigate hostile territory to reunite two of New York's finest by completing the level \"Foosa Lair\" ", 21, 0, 584192, "681274")
achievement_complete_level_win("Foosa Fighter", "Stave off the foosa threat and ensure all the lemurs are taken to safety by completing the level \"Foosa Arena\"", 22, 0, 584180, "681275")





/* Collect Coins Achievements */
function achievement_collect_all_level_coins(achievement_title, desc, level_coin_count_byte, total_coins, points, achievement_id, badge_id)
{
    achievement(
    title = achievement_title, 
    points = points,
    description = desc,
    id = achievement_id,
    badge = badge_id,
    trigger = game_mode_selected() == game_mode_adventure && prev(current_game_state()) == game_state_level_win && level_coin_count_byte > prev(level_coin_count_byte) &&
              level_coin_count_byte >= total_coins
    )
}

achievement_collect_all_level_coins("Another Day, Another Dollar", "Collect every coin in the level \"Daily Grind\"", coin_total_daily_grind(), 85, 0, 584133, "681276")
achievement_collect_all_level_coins("Loose Change", "Collect every coin in the level \"Operation: Zoo Askew\"", coin_total_operation_zoo_askew(), 20, 0, 584430, "681277")
achievement_collect_all_level_coins("Part Time Busker", "Collect every coin in the level \"Subway Surfers\"", coin_total_subway_surfers(), 75, 0, 584432, "681278")
achievement_collect_all_level_coins("Penguin Pickpocket", "Collect every coin in the level \"Operation: Ship Sneak\"", coin_total_operation_ship_sneak(), 20, 0, 584433, "681279")
achievement_collect_all_level_coins("Coin Detector", "Collect every coin in the level \"On the Beach\"", coin_total_on_the_beach(), 120, 0, 584436, "681280")
achievement_collect_all_level_coins("Money Trees", "Collect every coin in the level \"Jungle Dub\"", coin_total_jungle_dub(), 130, 0, 584437, "681281")
achievement_collect_all_level_coins("We Like to Save It, Save It!", "Collect every coin in the level \"Lemur Liberation\"", coin_total_lemur_liberation(), 75, 0, 584438, "681282")
achievement_collect_all_level_coins("Wild World of Wealth", "Collect every coin in the level \"Wild World\"", coin_total_wild_world(), 120, 0, 584439, "681283")
achievement_collect_all_level_coins("Steak Savings", "Collect every coin in the level \"Alex's Escape\"", coin_total_alexs_escape(), 120, 0, 584440, "681284")
achievement_collect_all_level_coins("Ferry Fare", "Collect every coin in the level \"Island Getaway\"", coin_total_island_getaway(), 120, 0, 584164, "681285")
achievement_collect_all_level_coins("Super Marty-o", "Collect every coin in the level \"Marty to the Rescue\"", coin_total_marty_to_the_rescue(), 125, 0, 584441, "681286")
achievement_collect_all_level_coins("This Is What the Foosa Is About", "Collect every coin in the level \"Foosa Lair\"", coin_total_foosa_lair(), 110, 0, 584179, "681287")






/* Stealth missions, don't alert guards */
function achievement_complete_stealth_level_without_alerting_guard(achievement_title, desc, level_id, points, achievement_id)
{
    achievement(
    title = achievement_title, points = points,
    description = desc,
    id = achievement_id,
    trigger = game_mode_selected() == game_mode_adventure && level_selected() == level_id && once(prev(current_game_state()) == game_state_cutscene) &&
              once(current_game_state() == game_state_in_level_gameplay) && trigger_when(current_game_state() == game_state_level_win) && never(current_game_state() == 12) &&
              never(guard_alert_level() < 5)
    )
}

achievement_complete_stealth_level_without_alerting_guard("Slip and Step Towards Freedom", "Complete \"Operation: Zoo Askew\" without altering any guards [Exit to level select to try again]", 6, 0, 584150)
achievement_complete_stealth_level_without_alerting_guard("Slip Through Like Skipper", "Complete \"Operation: Ship Sneak\" without alerting any guards [Exit to level select to try again]", 8, 0, 584577)


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
    "Champion Crawler",
    "Beat Marty's time in the bonus level \"Marty's Crawl\" [beat 1m:00s]",
    0,
    best_time_seconds_bonus_martys_crawl(),
    60,
    0,
    584138
)

achievement_beat_character_time_in_bonus_stage(
    "Zippy Zebra",
    "Beat Marty's time in the level \"Operation: Zoo Askew\" [beat 2m:00s]",
    1,
    best_time_seconds_bonus_operation_zoo_askew(),
    120,
    0,
    584716
)

achievement_beat_character_time_in_bonus_stage(
    "Small Sprightly Sailor",
    "Beat Skipper's time in the level \"Operation: Ship Sneak\" [beat 4m:15s]",
    2,
    best_time_seconds_bonus_opeartion_ship_sneak(),
    255,
    0,
    584717
)

// Melman's Lemur Rave scores the opposite direction - want to be higher than his score, vs the others where you want to lower than their time
achievement(
    title = "Moves Like Melman", 
    points = 0,
    description = "Beat Melman's score in the level \"Lemur Rave\" [beat 150 points]",
    id = 584829,
    trigger = game_mode_selected() == game_mode_bonus && level_selected() == 3 && current_game_state() == game_state_level_win 
        && best_score_bonus_lemur_rave() > prev(best_score_bonus_lemur_rave()) && best_score_bonus_lemur_rave() > 150
    )

achievement_beat_character_time_in_bonus_stage(
    "Superpowered Sneezes",
    "Beat Melman's time in the bonus level \"Melman's Sneeze Jump\" [beat 1m:00s]",
    4,
    best_time_seconds_bonus_melmans_sneeze(),
    60,
    0,
    584718
)

achievement_beat_character_time_in_bonus_stage(
    "Sharper than Steel",
    "Beat Alex's time in the bonus level \"Alex's Claws\" [beat 1m:15s]",
    5,
    best_time_seconds_bonus_alexs_claws(),
    75,
    0,
    584719
)

achievement_beat_character_time_in_bonus_stage(
    "Hippo Certified",
    "Beat Gloria's time in the bonus level \"Gloria's Dive\" [beat 1m:15s]",
    6,
    best_time_seconds_bonus_glorias_dive(),
    75,
    0,
    584720
)


achievement_beat_character_time_in_bonus_stage(
    "Cliff Climber",
    "Beat Alex's time in the bonus level \"Alex's Claw Climb\" [beat 1m:30s]",
    7,
    best_time_seconds_bonus_alexs_claw_climb(),
    90,
    0,
    584721
)


achievement(
    title = "Original King Julien", points = 0,
    description = "Put on a show fit for royalty by completing the level \"Lemur Rave\" without losing any health",
    id = 584163,
    trigger = game_mode_selected() == game_mode_adventure && level_selected() == 11 && once(current_game_state() == game_state_in_level_gameplay)
        && trigger_when(prev(current_game_state()) == game_state_level_win) && never(current_game_state() == game_state_level_select) && never(current_health() < 5)
    
)

achievement(
    title = "King of the Jungle", points = 0,
    description = "Assert dominance over the Foosa by completing the level \"Foosa Arena\" without losing any lemurs.",
    id = 584894,
    trigger = game_mode_selected() == game_mode_adventure && level_selected() == 22 && once(current_game_state() == game_state_in_level_gameplay) && once(counter_saved_lemurs_foosa_lair() == 0)
        && trigger_when(prev(current_game_state()) == game_state_level_win) && never(current_game_state() == game_state_level_select) && never(counter_saved_lemurs_foosa_lair() < prev(counter_saved_lemurs_foosa_lair()))
)












