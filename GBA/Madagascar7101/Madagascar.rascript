// Madagascar
// #ID = 7101
// MD5: 97af9c00a5718832b7e5e46f9e434820

achievement(
    title = "Complete Opeartion: Zoo Askew", points = 0,
    description = "Complete Opeartion: Zoo Askew",
    id = 584181, badge = "00000", published = "15/02/2026 5:36:44 AM", modified = "15/02/2026 5:36:44 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 6
)

achievement(
    title = "Complete Subway Surfers", points = 0,
    description = "Complete Subway Surfers",
    id = 584182, badge = "00000", published = "15/02/2026 5:37:16 AM", modified = "15/02/2026 5:38:03 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 7
)

achievement(
    title = "Complete Opeartion: Ship Sneak", points = 0,
    description = "Complete Opeartion: Ship Sneak",
    id = 584183, badge = "00000", published = "15/02/2026 5:37:51 AM", modified = "15/02/2026 5:37:51 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 8
)

achievement(
    title = "Complete On the Beach", points = 0,
    description = "Complete On the Beach",
    id = 584184, badge = "00000", published = "15/02/2026 5:38:37 AM", modified = "15/02/2026 5:39:23 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 9
)

achievement(
    title = "Complete Jungle Dub", points = 0,
    description = "Complete Jungle Dub",
    id = 584185, badge = "00000", published = "15/02/2026 5:39:12 AM", modified = "15/02/2026 5:39:12 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 10
)

achievement(
    title = "Complete Lemur Rave", points = 0,
    description = "Complete Lemur Rave",
    id = 584186, badge = "00000", published = "15/02/2026 5:39:57 AM", modified = "15/02/2026 5:39:57 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 11
)

achievement(
    title = "Complete 'Daily Grind'", points = 0, type="progression",
    description = "Complete 'Daily Grind'",
    id = 584131, badge = "00000", published = "14/02/2026 11:14:17 PM", modified = "15/02/2026 4:50:35 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 4
)

achievement(
    title = "Complete 'Foosa Arena'", points = 0, type="win_condition",
    description = "Complete 'Foosa Arena'",
    id = 584180, badge = "00000", published = "15/02/2026 5:19:38 AM", modified = "15/02/2026 5:19:38 AM",
    trigger = byte(0x00FFEC) != prev(byte(0x00FFEC)) && byte(0x00FFEC) == 15 && byte(0x00E408) == 0 &&
              byte(0x00E40C) == 22
)

achievement(
    title = "Collect all 85 coins in 'Daily Grind'", points = 0,
    description = "Collect all 85 coins in 'Daily Grind'",
    id = 584133, badge = "00000", published = "15/02/2026 12:13:56 AM", modified = "15/02/2026 4:51:37 AM",
    trigger = byte(0x00E408) == 0 && byte(0x00E40C) == 4 && byte(0x00DD9C) > prev(byte(0x00DD9C)) &&
              byte(0x00DD9C) >= 85
)

achievement(
    title = "Collect all 120 coins in 'Island Getaway'", points = 0,
    description = "Collect all coins in Island Getaway",
    id = 584164, badge = "00000", published = "15/02/2026 4:46:33 AM", modified = "15/02/2026 4:51:37 AM",
    trigger = byte(0x00E408) == 0 && prev(byte(0x00FFEC)) == 15 && byte(0x00DDB8) > prev(byte(0x00DDB8)) &&
              byte(0x00DDB8) >= 120
)

achievement(
    title = "Collect all 110 coins in \"Foosa's Lair\"", points = 0,
    description = "Collect all 110 coins in \"Foosa's Lair\"",
    id = 584179, badge = "00000", published = "15/02/2026 5:09:40 AM", modified = "15/02/2026 5:09:40 AM",
    trigger = byte(0x00E408) == 0 && prev(byte(0x00FFEC)) == 15 && byte(0x00DDBE) > prev(byte(0x00DDBE)) &&
              byte(0x00DDBE) >= 110
)

achievement(
    title = "Complete Operation: Zoo Askew without alerting guards", points = 0,
    description = "Complete Operation: Zoo Askew without alerting guards [Exit to menu to try again]",
    id = 584150, badge = "00000", published = "15/02/2026 1:38:25 AM", modified = "15/02/2026 1:38:25 AM",
    trigger = byte(0x00E408) == 0 && byte(0x00E40C) == 6 && once(prev(byte(0x00FFEC)) == 17) &&
              once(byte(0x00FFEC) == 13) && trigger_when(byte(0x00FFEC) == 15) && never(byte(0x00FFEC) == 12) &&
              never(byte(0x00E484) < 5)
)

achievement(
    title = "Beat Lemur Rave without losing any health", points = 0,
    description = "Beat Lemur Rave without losing any health",
    id = 584163, badge = "00000", published = "15/02/2026 4:18:48 AM", modified = "15/02/2026 4:18:48 AM",
    trigger = byte(0x00E408) == 0 && byte(0x00E40C) == 11 && once(byte(0x00FFEC) == 13) && byte(0x00E48C) >= 5 &&
              trigger_when(byte(0x00FFEC) == 15) && never((byte(0x00FFEC) != 15 && byte(0x00FFEC) != 13))
)

achievement(
    title = "Beat Marty's time in Marty's Crawl Bonus", points = 0,
    description = "Beat Marty's time in Marty's Crawl Bonus [beat 1m:00s]",
    id = 584138, badge = "00000", published = "15/02/2026 12:45:28 AM", modified = "15/02/2026 1:07:29 AM",
    trigger = byte(0x00E408) == 1 && byte(0x00E40C) == 0 && once(byte(0x00FFEC) == 13) && dword(0x0103D4) <= 3599 &&
              trigger_when(byte(0x00FFEC) == 15) && never((byte(0x00FFEC) != 15 && byte(0x00FFEC) != 13))
)
