-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Let's Go, Pikachu! / Let's Go, Eevee! Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Let's Go, Pikachu! / Let's Go, Eevee! opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Brock: Geodude Lv. 11: Tackle
    (170003, 17001, NULL, NULL, NULL, NULL, 1, ARRAY[33]),
    -- Brock: Onix Lv. 12: Headbutt, Bind, Rock Throw
    (170003, 17001, NULL, NULL, NULL, NULL, 2, ARRAY[29, 20, 88]),
    -- Misty: Psyduck Lv. 18: Water Gun, Confusion
    (170004, 17002, NULL, NULL, NULL, NULL, 1, ARRAY[55, 93]),
    -- Misty: Starmie Lv. 19: Scald, Psywave, Swift
    (170004, 17002, NULL, NULL, NULL, NULL, 2, ARRAY[503, 149, 129]),
    -- Lt. Surge: Voltorb Lv. 25: Thunderbolt, Swift, Light Screen
    (170005, 17003, NULL, NULL, NULL, NULL, 1, ARRAY[85, 129, 113]),
    -- Lt. Surge: Magnemite Lv. 25: Thunderbolt, Sonic Boom
    (170005, 17003, NULL, NULL, NULL, NULL, 2, ARRAY[85, 49]),
    -- Lt. Surge: Raichu Lv. 26: Thunderbolt, Quick Attack, Double Kick
    (170005, 17003, NULL, NULL, NULL, NULL, 3, ARRAY[85, 98, 24]),
    -- Erika: Tangela Lv. 33: Mega Drain, Sleep Powder, Bind
    (170006, 17004, NULL, NULL, NULL, NULL, 1, ARRAY[72, 79, 20]),
    -- Erika: Weepinbell Lv. 33: Mega Drain, Poison Jab
    (170006, 17004, NULL, NULL, NULL, NULL, 2, ARRAY[72, 398]),
    -- Erika: Vileplume Lv. 34: Mega Drain, Moonblast
    (170006, 17004, NULL, NULL, NULL, NULL, 3, ARRAY[72, 585]),
    -- Koga: Weezing Lv. 43: Toxic, Protect, Sludge Bomb, Explosion
    (170008, 17005, NULL, NULL, NULL, NULL, 1, ARRAY[92, 182, 188, 153]),
    -- Koga: Muk Lv. 43: Toxic, Protect, Sludge Bomb, Moonblast
    (170008, 17005, NULL, NULL, NULL, NULL, 2, ARRAY[92, 182, 188, 585]),
    -- Koga: Golbat Lv. 43: Toxic, Protect, Fly, Leech Life
    (170008, 17005, NULL, NULL, NULL, NULL, 3, ARRAY[92, 182, 19, 141]),
    -- Koga: Venomoth Lv. 44: Sludge Bomb, Protect, Psychic, Bug Buzz
    (170008, 17005, NULL, NULL, NULL, NULL, 4, ARRAY[188, 182, 94, 405]),
    -- Sabrina: Mr. Mime Lv. 43: Psychic, Reflect, Light Screen, Double Slap
    (170009, 17006, NULL, NULL, NULL, NULL, 1, ARRAY[94, 115, 113, 3]),
    -- Sabrina: Slowbro Lv. 43: Psychic, Yawn, Surf, Calm Mind
    (170009, 17006, NULL, NULL, NULL, NULL, 2, ARRAY[94, 281, 57, 347]),
    -- Sabrina: Jynx Lv. 43: Psychic, Lovely Kiss, Ice Punch
    (170009, 17006, NULL, NULL, NULL, NULL, 3, ARRAY[94, 142, 8]),
    -- Sabrina: Alakazam Lv. 44: Psychic, Night Shade
    (170009, 17006, NULL, NULL, NULL, NULL, 4, ARRAY[94, 101]),
    -- Blaine: Magmar Lv. 47: Flamethrower, Low Kick, Confuse Ray
    (170010, 17007, NULL, NULL, NULL, NULL, 1, ARRAY[53, 67, 109]),
    -- Blaine: Rapidash Lv. 47: Flare Blitz, Quick Attack, Fury Attack
    (170010, 17007, NULL, NULL, NULL, NULL, 2, ARRAY[394, 98, 31]),
    -- Blaine: Ninetales Lv. 47: Fire Blast, Quick Attack
    (170010, 17007, NULL, NULL, NULL, NULL, 3, ARRAY[126, 98]),
    -- Blaine: Arcanine Lv. 48: Flare Blitz, Outrage, Crunch
    (170010, 17007, NULL, NULL, NULL, NULL, 4, ARRAY[394, 200, 242]),
    -- Giovanni: Dugtrio Lv. 49: Earthquake, Sucker Punch, Slash
    (170011, 17008, NULL, NULL, NULL, NULL, 1, ARRAY[89, 389, 163]),
    -- Giovanni: Nidoqueen Lv. 49: Earthquake, Super Fang, Crunch
    (170011, 17008, NULL, NULL, NULL, NULL, 2, ARRAY[89, 162, 242]),
    -- Giovanni: Nidoking Lv. 49: Earthquake, Horn Drill, Megahorn, Poison Jab
    (170011, 17008, NULL, NULL, NULL, NULL, 3, ARRAY[89, 32, 224, 398]),
    -- Giovanni: Rhydon Lv. 50: Earthquake, Rock Slide, Megahorn
    (170011, 17008, NULL, NULL, NULL, NULL, 4, ARRAY[89, 157, 224]),
    -- Lorelei: Dewgong Lv. 51: Aqua Jet, Ice Shard, Waterfall
    (170012, 17009, NULL, NULL, NULL, NULL, 1, ARRAY[453, 420, 127]),
    -- Lorelei: Jynx Lv. 51: Lovely Kiss, Blizzard, Psychic
    (170012, 17009, NULL, NULL, NULL, NULL, 2, ARRAY[142, 59, 94]),
    -- Lorelei: Cloyster Lv. 51: Ice Beam, Spike Cannon, Hydro Pump
    (170012, 17009, NULL, NULL, NULL, NULL, 3, ARRAY[58, 131, 56]),
    -- Lorelei: Slowbro Lv. 51: Psychic, Surf, Flamethrower
    (170012, 17009, NULL, NULL, NULL, NULL, 4, ARRAY[94, 57, 53]),
    -- Lorelei: Lapras Lv. 52: Hydro Pump, Blizzard, Dragon Pulse
    (170012, 17009, NULL, NULL, NULL, NULL, 5, ARRAY[56, 59, 406]),
    -- Bruno: Onix Lv. 52: Iron Tail, Stealth Rock, Earthquake
    (170013, 17010, NULL, NULL, NULL, NULL, 1, ARRAY[231, 446, 89]),
    -- Bruno: Hitmonlee Lv. 52: Brick Break, Feint, Rock Slide
    (170013, 17010, NULL, NULL, NULL, NULL, 2, ARRAY[280, 364, 157]),
    -- Bruno: Hitmonchan Lv. 52: Ice Punch, Thunder Punch, Fire Punch
    (170013, 17010, NULL, NULL, NULL, NULL, 3, ARRAY[8, 9, 7]),
    -- Bruno: Poliwrath Lv. 52: Superpower, Waterfall, Body Slam
    (170013, 17010, NULL, NULL, NULL, NULL, 4, ARRAY[276, 127, 34]),
    -- Bruno: Machamp Lv. 53: Earthquake, Superpower, Rock Slide
    (170013, 17010, NULL, NULL, NULL, NULL, 5, ARRAY[89, 276, 157]),
    -- Agatha: Arbok Lv. 53: Glare, Crunch, Poison Jab
    (170014, 17011, NULL, NULL, NULL, NULL, 1, ARRAY[137, 242, 398]),
    -- Agatha: Gengar Lv. 53: Will-O-Wisp, Shadow Ball, Sludge Bomb
    (170014, 17011, NULL, NULL, NULL, NULL, 2, ARRAY[261, 247, 188]),
    -- Agatha: Golbat Lv. 53: Air Slash, Crunch, Quick Attack
    (170014, 17011, NULL, NULL, NULL, NULL, 3, ARRAY[403, 242, 98]),
    -- Agatha: Weezing Lv. 53: Sludge Bomb, Shadow Ball, Thunderbolt
    (170014, 17011, NULL, NULL, NULL, NULL, 4, ARRAY[188, 247, 85]),
    -- Agatha: Gengar Lv. 54: Dazzling Gleam, Shadow Ball, Sludge Bomb
    (170014, 17011, NULL, NULL, NULL, NULL, 5, ARRAY[605, 247, 188]),
    -- Lance: Seadra Lv. 54: Hydro Pump, Dragon Pulse, Hyper Beam
    (170015, 17012, NULL, NULL, NULL, NULL, 1, ARRAY[56, 406, 63]),
    -- Lance: Aerodactyl Lv. 54: Rock Slide, Earthquake, Hyper Beam
    (170015, 17012, NULL, NULL, NULL, NULL, 2, ARRAY[157, 89, 63]),
    -- Lance: Gyarados Lv. 54: Waterfall, Iron Tail, Hyper Beam
    (170015, 17012, NULL, NULL, NULL, NULL, 3, ARRAY[127, 231, 63]),
    -- Lance: Charizard Lv. 54: Air Slash, Dragon Pulse, Hyper Beam
    (170015, 17012, NULL, NULL, NULL, NULL, 4, ARRAY[403, 406, 63]),
    -- Lance: Dragonite Lv. 55: Outrage, Fire Punch, Hyper Beam
    (170015, 17012, NULL, NULL, NULL, NULL, 5, ARRAY[200, 7, 63]),
    -- Rival: Pidgeot Lv. 56: Quick Attack, Air Slash, Heat Wave
    (170016, 17013, 29, NULL, NULL, NULL, 1, ARRAY[98, 403, 257]),
    -- Rival: Vileplume Lv. 56: Solar Beam, Reflect, Sludge Bomb
    (170016, 17013, 29, NULL, NULL, NULL, 2, ARRAY[76, 115, 188]),
    -- Rival: Marowak Lv. 56: Fire Punch, Bonemerang, Brick Break
    (170016, 17013, 29, NULL, NULL, NULL, 3, ARRAY[7, 155, 280]),
    -- Rival: Rapidash Lv. 56: Flare Blitz, Quick Attack, Poison Jab
    (170016, 17013, 29, NULL, NULL, NULL, 4, ARRAY[394, 98, 398]),
    -- Rival: Slowbro Lv. 56: Psychic, Surf, Light Screen
    (170016, 17013, 29, NULL, NULL, NULL, 5, ARRAY[94, 57, 113]),
    -- Rival: Jolteon Lv. 57: Thunder, Quick Attack, Pin Missile
    (170016, 17013, 29, NULL, NULL, NULL, 6, ARRAY[87, 98, 42]),
    -- Rival: Pidgeot Lv. 56: Quick Attack, Air Slash, Heat Wave
    (170016, 17013, 30, NULL, NULL, NULL, 1, ARRAY[98, 403, 257]),
    -- Rival: Vileplume Lv. 56: Solar Beam, Reflect, Sludge Bomb
    (170016, 17013, 30, NULL, NULL, NULL, 2, ARRAY[76, 115, 188]),
    -- Rival: Marowak Lv. 56: Fire Punch, Bonemerang, Brick Break
    (170016, 17013, 30, NULL, NULL, NULL, 3, ARRAY[7, 155, 280]),
    -- Rival: Rapidash Lv. 56: Flare Blitz, Quick Attack, Poison Jab
    (170016, 17013, 30, NULL, NULL, NULL, 4, ARRAY[394, 98, 398]),
    -- Rival: Slowbro Lv. 56: Psychic, Surf, Light Screen
    (170016, 17013, 30, NULL, NULL, NULL, 5, ARRAY[94, 57, 113]),
    -- Rival: Raichu Lv. 57: Thunder, Quick Attack, Iron Tail
    (170016, 17013, 30, NULL, NULL, NULL, 6, ARRAY[87, 98, 231]),
    -- Blue: Tauros Lv. 66: Double-Edge, Earthquake, Rock Slide, Iron Tail
    (170018, 17014, NULL, NULL, NULL, NULL, 1, ARRAY[38, 89, 157, 231]),
    -- Blue: Gyarados Lv. 66: Waterfall, Crunch, Outrage, Earthquake
    (170018, 17014, NULL, NULL, NULL, NULL, 2, ARRAY[127, 242, 200, 89]),
    -- Blue: Aerodactyl Lv. 66: Rock Slide, Crunch, Iron Tail, Earthquake
    (170018, 17014, NULL, NULL, NULL, NULL, 3, ARRAY[157, 242, 231, 89]),
    -- Blue: Alakazam Lv. 66: Dazzling Gleam, Reflect, Psychic, Foul Play
    (170018, 17014, NULL, NULL, NULL, NULL, 4, ARRAY[605, 115, 94, 492]),
    -- Blue: Exeggutor Lv. 66: Power Whip, Psychic, Stomp, Light Screen
    (170018, 17014, NULL, NULL, NULL, NULL, 5, ARRAY[438, 94, 23, 113]),
    -- Blue: Charizard Lv. 68: Fire Blast, Hyper Beam, Air Slash, Dragon Pulse
    (170018, 17014, NULL, NULL, NULL, NULL, 6, ARRAY[126, 63, 403, 406]),
    -- Green: Clefable Lv. 66: Moonblast, Light Screen, Reflect, Tri Attack
    (170019, 17015, NULL, NULL, NULL, NULL, 1, ARRAY[585, 113, 115, 161]),
    -- Green: Gengar Lv. 66: Dark Pulse, Shadow Ball, Sludge Bomb, Will-O-Wisp
    (170019, 17015, NULL, NULL, NULL, NULL, 2, ARRAY[399, 247, 188, 261]),
    -- Green: Kangaskhan Lv. 66: Dizzy Punch, Sucker Punch, Thunder Punch, Brick Break
    (170019, 17015, NULL, NULL, NULL, NULL, 3, ARRAY[146, 389, 9, 280]),
    -- Green: Victreebel Lv. 66: Power Whip, Poison Jab, Sucker Punch, Leech Life
    (170019, 17015, NULL, NULL, NULL, NULL, 4, ARRAY[438, 398, 389, 141]),
    -- Green: Ninetales Lv. 66: Fire Blast, Dark Pulse, Foul Play, Hyper Beam
    (170019, 17015, NULL, NULL, NULL, NULL, 5, ARRAY[126, 399, 492, 63]),
    -- Green: Blastoise Lv. 68: Hydro Pump, Flash Cannon, Ice Beam, Fake Out
    (170019, 17015, NULL, NULL, NULL, NULL, 6, ARRAY[56, 430, 58, 252]),
    -- Trace: Eevee Lv. 6: Tackle, Growl
    (170002, 17016, 29, NULL, NULL, NULL, 1, ARRAY[33, 45]),
    -- Trace: Pikachu Lv. 6: Thunder Shock, Growl
    (170002, 17016, 30, NULL, NULL, NULL, 1, ARRAY[84, 45]),
    -- Trace: Pidgey Lv. 3: Tackle, Sand Attack
    (170003, 17016, 29, NULL, NULL, NULL, 1, ARRAY[33, 28]),
    -- Trace: Eevee Lv. 7: Tackle, Quick Attack
    (170003, 17016, 29, NULL, NULL, NULL, 2, ARRAY[33, 98]),
    -- Trace: Pidgey Lv. 3: Tackle, Sand Attack
    (170003, 17016, 30, NULL, NULL, NULL, 1, ARRAY[33, 28]),
    -- Trace: Pikachu Lv. 7: Thunder Shock, Quick Attack
    (170003, 17016, 30, NULL, NULL, NULL, 2, ARRAY[84, 98]),
    -- Trace: Pidgey Lv. 12: Quick Attack, Sand Attack, Gust
    (170004, 17016, 29, NULL, NULL, NULL, 1, ARRAY[98, 28, 16]),
    -- Trace: Oddish Lv. 12: Absorb, Acid, Poison Powder
    (170004, 17016, 29, NULL, NULL, NULL, 2, ARRAY[71, 51, 77]),
    -- Trace: Eevee Lv. 13: Quick Attack, Tail Whip, Double Kick
    (170004, 17016, 29, NULL, NULL, NULL, 3, ARRAY[98, 39, 24]),
    -- Trace: Pidgey Lv. 12: Quick Attack, Sand Attack, Gust
    (170004, 17016, 30, NULL, NULL, NULL, 1, ARRAY[98, 28, 16]),
    -- Trace: Oddish Lv. 12: Absorb, Acid, Poison Powder
    (170004, 17016, 30, NULL, NULL, NULL, 2, ARRAY[71, 51, 77]),
    -- Trace: Pikachu Lv. 13: Thunder Shock, Double Team, Quick Attack
    (170004, 17016, 30, NULL, NULL, NULL, 3, ARRAY[84, 104, 98]),
    -- Trace: Pidgeotto Lv. 20: Quick Attack, Sand Attack, Wing Attack
    (170020, 17016, 29, NULL, NULL, NULL, 1, ARRAY[98, 28, 17]),
    -- Trace: Oddish Lv. 20: Razor Leaf, Acid, Sleep Powder
    (170020, 17016, 29, NULL, NULL, NULL, 2, ARRAY[75, 51, 79]),
    -- Trace: Eevee Lv. 21: Double Kick, Quick Attack, Bite
    (170020, 17016, 29, NULL, NULL, NULL, 3, ARRAY[24, 98, 44]),
    -- Trace: Pidgeotto Lv. 20: Quick Attack, Sand Attack, Wing Attack
    (170020, 17016, 30, NULL, NULL, NULL, 1, ARRAY[98, 28, 17]),
    -- Trace: Oddish Lv. 20: Razor Leaf, Acid, Sleep Powder
    (170020, 17016, 30, NULL, NULL, NULL, 2, ARRAY[75, 51, 79]),
    -- Trace: Pikachu Lv. 21: Thunder Shock, Quick Attack, Double Kick
    (170020, 17016, 30, NULL, NULL, NULL, 3, ARRAY[84, 98, 24]),
    -- Trace: Pidgeotto Lv. 27: Quick Attack, Wing Attack, Sand Attack
    (170006, 17016, 29, NULL, NULL, NULL, 1, ARRAY[98, 17, 28]),
    -- Trace: Gloom Lv. 27: Razor Leaf, Sleep Powder, Acid
    (170006, 17016, 29, NULL, NULL, NULL, 2, ARRAY[75, 79, 51]),
    -- Trace: Jolteon Lv. 28: Thunder Shock, Quick Attack, Pin Missile
    (170006, 17016, 29, NULL, NULL, NULL, 3, ARRAY[84, 98, 42]),
    -- Trace: Pidgeotto Lv. 27: Quick Attack, Wing Attack, Sand Attack
    (170006, 17016, 30, NULL, NULL, NULL, 1, ARRAY[98, 17, 28]),
    -- Trace: Gloom Lv. 27: Razor Leaf, Sleep Powder, Acid
    (170006, 17016, 30, NULL, NULL, NULL, 2, ARRAY[75, 79, 51]),
    -- Trace: Raichu Lv. 28: Thunder Shock, Quick Attack, Thunder Punch
    (170006, 17016, 30, NULL, NULL, NULL, 3, ARRAY[84, 98, 9]),
    -- Giovanni: Persian Lv. 35: Slash, Feint, Fake Out
    (170021, 17017, NULL, NULL, NULL, NULL, 1, ARRAY[163, 364, 252]),
    -- Giovanni: Rhyhorn Lv. 35: Drill Run, Take Down, Megahorn, Rock Throw
    (170021, 17017, NULL, NULL, NULL, NULL, 2, ARRAY[529, 36, 224, 88]),
    -- Giovanni: Persian Lv. 39: Slash, Feint, Fake Out, Play Rough
    (170022, 17017, NULL, NULL, NULL, NULL, 1, ARRAY[163, 364, 252, 583]),
    -- Giovanni: Rhyhorn Lv. 39: Drill Run, Take Down, Megahorn, Rock Throw
    (170022, 17017, NULL, NULL, NULL, NULL, 2, ARRAY[529, 36, 224, 88]),
    -- Giovanni: Nidoqueen Lv. 39: Body Slam, Crunch
    (170022, 17017, NULL, NULL, NULL, NULL, 3, ARRAY[34, 242]),
    -- Trace: Pidgeot Lv. 50: Quick Attack, Air Slash, Sand Attack, Roost
    (170012, 17016, 29, NULL, NULL, NULL, 1, ARRAY[98, 403, 28, 355]),
    -- Trace: Vileplume Lv. 50: Petal Dance, Toxic, Acid
    (170012, 17016, 29, NULL, NULL, NULL, 2, ARRAY[80, 92, 51]),
    -- Trace: Marowak Lv. 50: Focus Energy, Bonemerang, Thrash, Swords Dance
    (170012, 17016, 29, NULL, NULL, NULL, 3, ARRAY[116, 155, 37, 14]),
    -- Trace: Jolteon Lv. 51: Thunder, Quick Attack, Pin Missile, Double Kick
    (170012, 17016, 29, NULL, NULL, NULL, 4, ARRAY[87, 98, 42, 24]),
    -- Trace: Pidgeot Lv. 50: Quick Attack, Air Slash, Sand Attack, Roost
    (170012, 17016, 30, NULL, NULL, NULL, 1, ARRAY[98, 403, 28, 355]),
    -- Trace: Vileplume Lv. 50: Petal Dance, Toxic, Acid
    (170012, 17016, 30, NULL, NULL, NULL, 2, ARRAY[80, 92, 51]),
    -- Trace: Marowak Lv. 50: Focus Energy, Bonemerang, Thrash, Swords Dance
    (170012, 17016, 30, NULL, NULL, NULL, 3, ARRAY[116, 155, 37, 14]),
    -- Trace: Raichu Lv. 51: Thunder, Quick Attack, Thunder Punch, Slam
    (170012, 17016, 30, NULL, NULL, NULL, 4, ARRAY[87, 98, 9, 21]),
    -- Zapdos: Zapdos Lv. 50: Drill Peck, Thunderbolt, Agility, Light Screen
    (170023, 17018, NULL, NULL, NULL, NULL, 1, ARRAY[65, 85, 97, 113]),
    -- Articuno: Articuno Lv. 50: Mirror Coat, Ice Beam, Agility, Reflect
    (170024, 17019, NULL, NULL, NULL, NULL, 1, ARRAY[243, 58, 97, 115]),
    -- Moltres: Moltres Lv. 50: Air Slash, Flamethrower, Agility, Heat Wave
    (170025, 17020, NULL, NULL, NULL, NULL, 1, ARRAY[403, 53, 97, 257]),
    -- Mewtwo: Mewtwo Lv. 70: Swift, Amnesia, Recover, Psychic
    (170026, 17021, NULL, NULL, NULL, NULL, 1, ARRAY[129, 133, 105, 94])
)
INSERT INTO tracking.mainline_opponent_team_member_moves (team_member_id, slot, move_id)
SELECT
  members.id,
  moves.slot,
  moves.move_id
FROM team_moves
LEFT JOIN tracking.mainline_opponent_team_members AS members
  ON members.milestone_id = team_moves.milestone_id
  AND members.opponent_id = team_moves.opponent_id
  AND members.ally_opponent_id IS NULL
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
