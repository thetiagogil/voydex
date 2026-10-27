-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Fixed encounters (legendaries and other one-off Pokémon): the game's
-- data-mined encounter table; where it sets no moves, the game's default from
-- its own level-up learnset. Cross-checked with Serebii and Bulbapedia.
-- Fixed encounters, totems, Titans, story bosses and trainers the sources
-- above leave out: Serebii, Bulbapedia and PokéWiki, kept where two agree;
-- where they disagree or only one covers it, Bulbapedia, then Serebii.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Sun / Moon Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Sun / Moon opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Ilima: Gumshoos Lv. 12: Super Fang, Bite, Leer, Scary Face
    (150003, 15001, 25, NULL, NULL, NULL, 1, ARRAY[162, 44, 43, 184]),
    -- Ilima: Yungoos Lv. 11: Sand Attack, Tackle, Hyper Fang, Leer
    (150003, 15001, 25, NULL, NULL, NULL, 2, ARRAY[28, 33, 158, 43]),
    -- Ilima: Alolan Raticate Lv. 12: Bite, Tail Whip, Scary Face, Tackle
    (150003, 15001, 26, NULL, NULL, NULL, 1, ARRAY[44, 39, 184, 33]),
    -- Ilima: Alolan Rattata Lv. 11: Quick Attack, Tail Whip, Hyper Fang, Tackle
    (150003, 15001, 26, NULL, NULL, NULL, 2, ARRAY[98, 39, 158, 33]),
    -- Hala: Mankey Lv. 14: Karate Chop, Pursuit, Focus Energy
    (150004, 15002, NULL, NULL, NULL, NULL, 1, ARRAY[2, 228, 116]),
    -- Hala: Makuhita Lv. 14: Arm Thrust, Sand Attack, Fake Out
    (150004, 15002, NULL, NULL, NULL, NULL, 2, ARRAY[292, 28, 252]),
    -- Hala: Crabrawler Lv. 15: Pursuit, Power-Up Punch, Leer
    (150004, 15002, NULL, NULL, NULL, NULL, 3, ARRAY[228, 612, 43]),
    -- Lana: Wishiwashi (School Form) Lv. 20: Water Gun, Growl, Rain Dance, Soak
    (150005, 15003, NULL, NULL, NULL, NULL, 1, ARRAY[55, 45, 240, 487]),
    -- Lana: Wishiwashi Lv. 18: Helping Hand, Feint Attack, Brine, Aqua Ring
    (150005, 15003, NULL, NULL, NULL, NULL, 2, ARRAY[270, 185, 362, 392]),
    -- Lana: Alomomola Lv. 18: Helping Hand, Double Slap, Heal Pulse, Water Gun
    (150005, 15003, NULL, NULL, NULL, NULL, 3, ARRAY[270, 3, 505, 55]),
    -- Kiawe: Salazzle Lv. 22: Torment, Venom Drench, Toxic, Flame Burst
    (150006, 15004, NULL, NULL, NULL, NULL, 1, ARRAY[259, 599, 92, 481]),
    -- Kiawe: Salandit Lv. 20: Poison Gas, Venoshock, Taunt, Scratch
    (150006, 15004, NULL, NULL, NULL, NULL, 2, ARRAY[139, 474, 269, 10]),
    -- Mallow: Lurantis Lv. 24: Razor Leaf, X-Scissor, Solar Blade, Synthesis
    (150007, 15005, NULL, NULL, NULL, NULL, 1, ARRAY[75, 404, 669, 235]),
    -- Mallow: Trumbeak Lv. 22: Rock Blast, Pluck, Supersonic, Screech
    (150007, 15005, NULL, NULL, NULL, NULL, 2, ARRAY[350, 365, 48, 103]),
    -- Mallow: Castform Lv. 22: Sunny Day, Water Gun, Headbutt, Weather Ball
    (150007, 15005, NULL, NULL, NULL, NULL, 3, ARRAY[241, 55, 29, 311]),
    -- Olivia: Nosepass Lv. 26: Rock Slide, Spark, Thunder Wave
    (150008, 15006, NULL, NULL, NULL, NULL, 1, ARRAY[157, 209, 86]),
    -- Olivia: Boldore Lv. 26: Rock Blast, Mud-Slap, Headbutt
    (150008, 15006, NULL, NULL, NULL, NULL, 2, ARRAY[350, 189, 29]),
    -- Olivia: Lycanroc (Midnight) Lv. 27: Bite, Rock Throw
    (150008, 15006, NULL, NULL, NULL, NULL, 3, ARRAY[44, 88]),
    -- Sophocles: Vikavolt Lv. 29: Vise Grip, Charge, Bug Bite, Spark
    (150009, 15007, NULL, NULL, NULL, NULL, 1, ARRAY[11, 268, 450, 209]),
    -- Sophocles: Charjabug Lv. 27: String Shot, Vise Grip, Mud-Slap, Thunder Wave
    (150009, 15007, NULL, NULL, NULL, NULL, 2, ARRAY[81, 11, 189, 86]),
    -- Acerola: Mimikyu Lv. 33: Play Rough, Shadow Claw, Astonish, Mimic
    (150010, 15008, NULL, NULL, NULL, NULL, 1, ARRAY[583, 421, 310, 102]),
    -- Acerola: Haunter Lv. 27: Hypnosis, Sucker Punch, Night Shade, Lick
    (150010, 15008, NULL, NULL, NULL, NULL, 2, ARRAY[95, 389, 101, 122]),
    -- Acerola: Gengar Lv. 27: Shadow Ball, Hypnosis, Night Shade, Shadow Punch
    (150010, 15008, NULL, NULL, NULL, NULL, 3, ARRAY[247, 95, 101, 325]),
    -- Nanu: Sableye Lv. 38: Power Gem, Shadow Ball, Fake Out
    (150011, 15009, NULL, NULL, NULL, NULL, 1, ARRAY[408, 247, 252]),
    -- Nanu: Krokorok Lv. 38: Crunch, Assurance, Swagger, Earthquake
    (150011, 15009, NULL, NULL, NULL, NULL, 2, ARRAY[242, 372, 207, 89]),
    -- Nanu: Alolan Persian Lv. 39: Power Gem, Fake Out, Dark Pulse
    (150011, 15009, NULL, NULL, NULL, NULL, 3, ARRAY[408, 252, 399]),
    -- Totem Kommo-o: Kommo-o Lv. 45: Clanging Scales, Sky Uppercut, Flash Cannon, Protect
    (150012, 15035, NULL, NULL, NULL, NULL, 1, ARRAY[691, 327, 430, 182]),
    -- Totem Kommo-o: Hakamo-o Lv. 32: Sky Uppercut, Autotomize, Work Up, Bide
    (150012, 15035, NULL, NULL, NULL, NULL, 2, ARRAY[327, 475, 526, 117]),
    -- Totem Kommo-o: Scizor Lv. 32: Metal Claw, Pursuit, Leer, Fury Cutter
    (150012, 15035, NULL, NULL, NULL, NULL, 3, ARRAY[232, 228, 43, 210]),
    -- Hapu: Alolan Dugtrio Lv. 47: Iron Head, Earthquake, Sucker Punch, Sandstorm
    (150013, 15010, NULL, NULL, NULL, NULL, 1, ARRAY[442, 89, 389, 201]),
    -- Hapu: Gastrodon (East Sea) Lv. 47: Muddy Water, Mud Bomb, Recover
    (150013, 15010, NULL, NULL, NULL, NULL, 2, ARRAY[330, 426, 105]),
    -- Hapu: Flygon Lv. 47: Earth Power, Dragon Breath
    (150013, 15010, NULL, NULL, NULL, NULL, 3, ARRAY[414, 225]),
    -- Hapu: Mudsdale Lv. 48: Heavy Slam, Earthquake, Double Kick, Counter
    (150013, 15010, NULL, NULL, NULL, NULL, 4, ARRAY[484, 89, 24, 68]),
    -- Hala: Hariyama Lv. 54: Fake Out, Close Combat, Knock Off
    (150014, 15011, NULL, NULL, NULL, NULL, 1, ARRAY[252, 370, 282]),
    -- Hala: Primeape Lv. 54: Cross Chop, Outrage, Punishment, Pursuit
    (150014, 15011, NULL, NULL, NULL, NULL, 2, ARRAY[238, 200, 386, 228]),
    -- Hala: Bewear Lv. 54: Hammer Arm, Brutal Swing
    (150014, 15011, NULL, NULL, NULL, NULL, 3, ARRAY[359, 693]),
    -- Hala: Poliwrath Lv. 54: Waterfall, Submission
    (150014, 15011, NULL, NULL, NULL, NULL, 4, ARRAY[127, 66]),
    -- Hala: Crabominable Lv. 55: Ice Hammer, Close Combat
    (150014, 15011, NULL, NULL, NULL, NULL, 5, ARRAY[665, 370]),
    -- Olivia: Relicanth Lv. 54: Hydro Pump, Ancient Power, Yawn
    (150015, 15012, NULL, NULL, NULL, NULL, 1, ARRAY[56, 246, 281]),
    -- Olivia: Carbink Lv. 54: Power Gem, Moonblast, Reflect
    (150015, 15012, NULL, NULL, NULL, NULL, 2, ARRAY[408, 585, 115]),
    -- Olivia: Alolan Golem Lv. 54: Thunder Punch, Rock Blast, Steamroller
    (150015, 15012, NULL, NULL, NULL, NULL, 3, ARRAY[9, 350, 537]),
    -- Olivia: Probopass Lv. 54: Earth Power, Power Gem, Thunder Wave, Sandstorm
    (150015, 15012, NULL, NULL, NULL, NULL, 4, ARRAY[414, 408, 86, 201]),
    -- Olivia: Lycanroc (Midnight) Lv. 55: Crunch, Stone Edge, Counter, Rock Climb
    (150015, 15012, NULL, NULL, NULL, NULL, 5, ARRAY[242, 444, 68, 431]),
    -- Acerola: Sableye Lv. 54: Shadow Claw, Zen Headbutt, Confuse Ray, Fake Out
    (150016, 15013, NULL, NULL, NULL, NULL, 1, ARRAY[421, 428, 109, 252]),
    -- Acerola: Drifblim Lv. 54: Ominous Wind, Focus Energy, Amnesia, Baton Pass
    (150016, 15013, NULL, NULL, NULL, NULL, 2, ARRAY[466, 116, 133, 226]),
    -- Acerola: Dhelmise Lv. 54: Slam, Shadow Ball, Energy Ball, Whirlpool
    (150016, 15013, NULL, NULL, NULL, NULL, 3, ARRAY[21, 247, 412, 250]),
    -- Acerola: Froslass Lv. 54: Blizzard, Shadow Ball, Confuse Ray, Ice Shard
    (150016, 15013, NULL, NULL, NULL, NULL, 4, ARRAY[59, 247, 109, 420]),
    -- Acerola: Palossand Lv. 55: Shadow Ball, Earth Power, Giga Drain, Iron Defense
    (150016, 15013, NULL, NULL, NULL, NULL, 5, ARRAY[247, 414, 202, 334]),
    -- Kahili: Skarmory Lv. 54: Slash, Steel Wing, Feint, Spikes
    (150017, 15014, NULL, NULL, NULL, NULL, 1, ARRAY[163, 211, 364, 191]),
    -- Kahili: Crobat Lv. 54: Air Slash, Swift, Supersonic, Poison Fang
    (150017, 15014, NULL, NULL, NULL, NULL, 2, ARRAY[403, 129, 48, 305]),
    -- Kahili: Oricorio Lv. 54: Revelation Dance, Teeter Dance, Air Slash, Feather Dance
    (150017, 15014, NULL, NULL, NULL, NULL, 3, ARRAY[686, 298, 403, 297]),
    -- Kahili: Mandibuzz Lv. 54: Bone Rush, Brave Bird, Punishment, Flatter
    (150017, 15014, NULL, NULL, NULL, NULL, 4, ARRAY[198, 413, 386, 260]),
    -- Kahili: Toucannon Lv. 55: Bullet Seed, Rock Blast, Beak Blast, Screech
    (150017, 15014, NULL, NULL, NULL, NULL, 5, ARRAY[331, 350, 690, 103]),
    -- Professor Kukui: Lycanroc Lv. 57: Stone Edge, Accelerock, Crunch, Stealth Rock
    (150018, 15015, NULL, 150001, 'rowlet', NULL, 1, ARRAY[444, 709, 242, 446]),
    -- Professor Kukui: Alolan Ninetales Lv. 56: Dazzling Gleam, Blizzard, Ice Shard, Safeguard
    (150018, 15015, NULL, 150001, 'rowlet', NULL, 2, ARRAY[605, 59, 420, 219]),
    -- Professor Kukui: Braviary Lv. 56: Crush Claw, Brave Bird, Whirlwind, Tailwind
    (150018, 15015, NULL, 150001, 'rowlet', NULL, 3, ARRAY[306, 413, 18, 366]),
    -- Professor Kukui: Magnezone Lv. 56: Thunderbolt, Flash Cannon, Thunder Wave, Mirror Coat
    (150018, 15015, NULL, 150001, 'rowlet', NULL, 4, ARRAY[85, 430, 86, 243]),
    -- Professor Kukui: Snorlax Lv. 56: Body Slam, Crunch, Heavy Slam, High Horsepower
    (150018, 15015, NULL, 150001, 'rowlet', NULL, 5, ARRAY[34, 242, 484, 667]),
    -- Professor Kukui: Incineroar Lv. 58: Flare Blitz, Darkest Lariat, Outrage, Cross Chop
    (150018, 15015, NULL, 150001, 'rowlet', NULL, 6, ARRAY[394, 663, 200, 238]),
    -- Professor Kukui: Lycanroc Lv. 57: Stone Edge, Accelerock, Crunch, Stealth Rock
    (150018, 15015, NULL, 150001, 'litten', NULL, 1, ARRAY[444, 709, 242, 446]),
    -- Professor Kukui: Alolan Ninetales Lv. 56: Dazzling Gleam, Blizzard, Ice Shard, Safeguard
    (150018, 15015, NULL, 150001, 'litten', NULL, 2, ARRAY[605, 59, 420, 219]),
    -- Professor Kukui: Braviary Lv. 56: Crush Claw, Brave Bird, Whirlwind, Tailwind
    (150018, 15015, NULL, 150001, 'litten', NULL, 3, ARRAY[306, 413, 18, 366]),
    -- Professor Kukui: Magnezone Lv. 56: Thunderbolt, Flash Cannon, Thunder Wave, Mirror Coat
    (150018, 15015, NULL, 150001, 'litten', NULL, 4, ARRAY[85, 430, 86, 243]),
    -- Professor Kukui: Snorlax Lv. 56: Body Slam, Crunch, Heavy Slam, High Horsepower
    (150018, 15015, NULL, 150001, 'litten', NULL, 5, ARRAY[34, 242, 484, 667]),
    -- Professor Kukui: Primarina Lv. 58: Sparkling Aria, Moonblast, Aqua Jet, Hyper Voice
    (150018, 15015, NULL, 150001, 'litten', NULL, 6, ARRAY[664, 585, 453, 304]),
    -- Professor Kukui: Lycanroc Lv. 57: Stone Edge, Accelerock, Crunch, Stealth Rock
    (150018, 15015, NULL, 150001, 'popplio', NULL, 1, ARRAY[444, 709, 242, 446]),
    -- Professor Kukui: Alolan Ninetales Lv. 56: Dazzling Gleam, Blizzard, Ice Shard, Safeguard
    (150018, 15015, NULL, 150001, 'popplio', NULL, 2, ARRAY[605, 59, 420, 219]),
    -- Professor Kukui: Braviary Lv. 56: Crush Claw, Brave Bird, Whirlwind, Tailwind
    (150018, 15015, NULL, 150001, 'popplio', NULL, 3, ARRAY[306, 413, 18, 366]),
    -- Professor Kukui: Magnezone Lv. 56: Thunderbolt, Flash Cannon, Thunder Wave, Mirror Coat
    (150018, 15015, NULL, 150001, 'popplio', NULL, 4, ARRAY[85, 430, 86, 243]),
    -- Professor Kukui: Snorlax Lv. 56: Body Slam, Crunch, Heavy Slam, High Horsepower
    (150018, 15015, NULL, 150001, 'popplio', NULL, 5, ARRAY[34, 242, 484, 667]),
    -- Professor Kukui: Decidueye Lv. 58: Leaf Blade, Spirit Shackle, Brave Bird, Sucker Punch
    (150018, 15015, NULL, 150001, 'popplio', NULL, 6, ARRAY[348, 662, 413, 389]),
    -- Hau: Popplio Lv. 5: Pound, Water Gun, Growl
    (150001, 15016, NULL, 150001, 'rowlet', NULL, 1, ARRAY[1, 55, 45]),
    -- Hau: Rowlet Lv. 5: Tackle, Leafage, Growl
    (150001, 15016, NULL, 150001, 'litten', NULL, 1, ARRAY[33, 670, 45]),
    -- Hau: Litten Lv. 5: Scratch, Ember, Growl
    (150001, 15016, NULL, 150001, 'popplio', NULL, 1, ARRAY[10, 52, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (150002, 15016, NULL, 150001, 'rowlet', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Popplio Lv. 7: Pound, Water Gun, Growl
    (150002, 15016, NULL, 150001, 'rowlet', NULL, 2, ARRAY[1, 55, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (150002, 15016, NULL, 150001, 'litten', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Rowlet Lv. 7: Tackle, Leafage, Growl
    (150002, 15016, NULL, 150001, 'litten', NULL, 2, ARRAY[33, 670, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (150002, 15016, NULL, 150001, 'popplio', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Litten Lv. 7: Scratch, Ember, Growl
    (150002, 15016, NULL, 150001, 'popplio', NULL, 2, ARRAY[10, 52, 45]),
    -- Hau: Pikachu Lv. 13: Growl, Play Nice, Quick Attack, Electro Ball
    (150004, 15016, NULL, 150001, 'rowlet', NULL, 1, ARRAY[45, 589, 98, 486]),
    -- Hau: Popplio Lv. 14: Water Gun, Growl, Disarming Voice, Baby-Doll Eyes
    (150004, 15016, NULL, 150001, 'rowlet', NULL, 2, ARRAY[55, 45, 574, 608]),
    -- Hau: Pikachu Lv. 13: Growl, Play Nice, Quick Attack, Electro Ball
    (150004, 15016, NULL, 150001, 'litten', NULL, 1, ARRAY[45, 589, 98, 486]),
    -- Hau: Rowlet Lv. 14: Leafage, Growl, Peck, Astonish
    (150004, 15016, NULL, 150001, 'litten', NULL, 2, ARRAY[670, 45, 64, 310]),
    -- Hau: Pikachu Lv. 13: Growl, Play Nice, Quick Attack, Electro Ball
    (150004, 15016, NULL, 150001, 'popplio', NULL, 1, ARRAY[45, 589, 98, 486]),
    -- Hau: Litten Lv. 14: Ember, Growl, Lick, Leer
    (150004, 15016, NULL, 150001, 'popplio', NULL, 2, ARRAY[52, 45, 122, 43]),
    -- Hau: Pikachu Lv. 16: Electro Ball, Quick Attack
    (150005, 15016, NULL, 150001, 'rowlet', NULL, 1, ARRAY[486, 98]),
    -- Hau: Brionne Lv. 17: Aqua Jet, Disarming Voice, Pound
    (150005, 15016, NULL, 150001, 'rowlet', NULL, 2, ARRAY[453, 574, 1]),
    -- Hau: Pikachu Lv. 16: Electro Ball, Quick Attack
    (150005, 15016, NULL, 150001, 'litten', NULL, 1, ARRAY[486, 98]),
    -- Hau: Dartrix Lv. 17: Razor Leaf, Peck, Tackle
    (150005, 15016, NULL, 150001, 'litten', NULL, 2, ARRAY[75, 64, 33]),
    -- Hau: Pikachu Lv. 16: Electro Ball, Quick Attack
    (150005, 15016, NULL, 150001, 'popplio', NULL, 1, ARRAY[486, 98]),
    -- Hau: Torracat Lv. 17: Fire Fang, Lick, Scratch
    (150005, 15016, NULL, 150001, 'popplio', NULL, 2, ARRAY[424, 122, 10]),
    -- Gladion: Zubat Lv. 17: Bite, Wing Attack
    (150005, 15017, NULL, NULL, NULL, NULL, 1, ARRAY[44, 17]),
    -- Gladion: Type: Null Lv. 18: Tackle, Pursuit
    (150005, 15017, NULL, NULL, NULL, NULL, 2, ARRAY[33, 228]),
    -- Hau & Gladion: Brionne Lv. 19: Aqua Jet, Disarming Voice, Pound
    (150006, 15018, NULL, 150001, 'rowlet', NULL, 1, ARRAY[453, 574, 1]),
    -- Hau & Gladion: Type: Null Lv. 19: Tackle, Pursuit
    (150006, 15018, NULL, 150001, 'rowlet', NULL, 2, ARRAY[33, 228]),
    -- Hau & Gladion: Dartrix Lv. 19: Razor Leaf, Peck, Tackle
    (150006, 15018, NULL, 150001, 'litten', NULL, 1, ARRAY[75, 64, 33]),
    -- Hau & Gladion: Type: Null Lv. 19: Tackle, Pursuit
    (150006, 15018, NULL, 150001, 'litten', NULL, 2, ARRAY[33, 228]),
    -- Hau & Gladion: Torracat Lv. 19: Fire Fang, Lick, Scratch
    (150006, 15018, NULL, 150001, 'popplio', NULL, 1, ARRAY[424, 122, 10]),
    -- Hau & Gladion: Type: Null Lv. 19: Tackle, Pursuit
    (150006, 15018, NULL, 150001, 'popplio', NULL, 2, ARRAY[33, 228]),
    -- Hau: Alolan Raichu Lv. 28: Electro Ball, Quick Attack, Psychic
    (150009, 15016, NULL, 150001, 'rowlet', NULL, 1, ARRAY[486, 98, 94]),
    -- Hau: Flareon Lv. 28: Fire Fang, Quick Attack
    (150009, 15016, NULL, 150001, 'rowlet', NULL, 2, ARRAY[424, 98]),
    -- Hau: Brionne Lv. 29: Bubble Beam, Disarming Voice
    (150009, 15016, NULL, 150001, 'rowlet', NULL, 3, ARRAY[61, 574]),
    -- Hau: Alolan Raichu Lv. 28: Electro Ball, Quick Attack, Psychic
    (150009, 15016, NULL, 150001, 'litten', NULL, 1, ARRAY[486, 98, 94]),
    -- Hau: Vaporeon Lv. 28: Water Pulse, Quick Attack
    (150009, 15016, NULL, 150001, 'litten', NULL, 2, ARRAY[352, 98]),
    -- Hau: Dartrix Lv. 29: Razor Leaf, Pluck
    (150009, 15016, NULL, 150001, 'litten', NULL, 3, ARRAY[75, 365]),
    -- Hau: Alolan Raichu Lv. 28: Electro Ball, Quick Attack, Psychic
    (150009, 15016, NULL, 150001, 'popplio', NULL, 1, ARRAY[486, 98, 94]),
    -- Hau: Leafeon Lv. 28: Giga Drain, Quick Attack
    (150009, 15016, NULL, 150001, 'popplio', NULL, 2, ARRAY[202, 98]),
    -- Hau: Torracat Lv. 29: Fire Fang, Bite
    (150009, 15016, NULL, 150001, 'popplio', NULL, 3, ARRAY[424, 44]),
    -- Guzma: Golisopod Lv. 31: Swords Dance, Razor Shell, First Impression
    (150009, 15019, NULL, NULL, NULL, NULL, 1, ARRAY[14, 534, 660]),
    -- Guzma: Ariados Lv. 30: Fell Stinger, Sucker Punch, Shadow Sneak, Infestation
    (150009, 15019, NULL, NULL, NULL, NULL, 2, ARRAY[565, 389, 425, 611]),
    -- Guzma: Golisopod Lv. 37: Swords Dance, Razor Shell, First Impression
    (150011, 15019, NULL, NULL, NULL, NULL, 1, ARRAY[14, 534, 660]),
    -- Guzma: Ariados Lv. 36: Fell Stinger, Sucker Punch, Shadow Sneak, Infestation
    (150011, 15019, NULL, NULL, NULL, NULL, 2, ARRAY[565, 389, 425, 611]),
    -- Gladion: Golbat Lv. 37: Acrobatics, Poison Fang
    (150011, 15017, NULL, NULL, NULL, NULL, 1, ARRAY[512, 305]),
    -- Gladion: Sneasel Lv. 37: Icy Wind, Metal Claw, Feint Attack, Quick Attack
    (150011, 15017, NULL, NULL, NULL, NULL, 2, ARRAY[196, 232, 185, 98]),
    -- Gladion: Type: Null Lv. 38: Pursuit, Crush Claw, X-Scissor
    (150011, 15017, NULL, NULL, NULL, NULL, 3, ARRAY[228, 306, 404]),
    -- Guzma: Golisopod Lv. 41: Swords Dance, Razor Shell, First Impression
    (150021, 15019, NULL, NULL, NULL, NULL, 1, ARRAY[14, 534, 660]),
    -- Guzma: Ariados Lv. 40: Fell Stinger, Sucker Punch, Shadow Sneak
    (150021, 15019, NULL, NULL, NULL, NULL, 2, ARRAY[565, 389, 425]),
    -- Guzma: Masquerain Lv. 40: Air Slash, Bug Buzz
    (150021, 15019, NULL, NULL, NULL, NULL, 3, ARRAY[403, 405]),
    -- Guzma: Pinsir Lv. 40: Double Hit, Brick Break, X-Scissor
    (150021, 15019, NULL, NULL, NULL, NULL, 4, ARRAY[458, 280, 404]),
    -- Lusamine: Clefable Lv. 41: Moonblast, Cosmic Power, Metronome
    (150021, 15020, NULL, NULL, NULL, NULL, 1, ARRAY[585, 322, 118]),
    -- Lusamine: Lilligant Lv. 41: Petal Dance, Teeter Dance, Stun Spore
    (150021, 15020, NULL, NULL, NULL, NULL, 2, ARRAY[80, 298, 78]),
    -- Lusamine: Mismagius Lv. 41: Shadow Ball, Mystical Fire, Power Gem
    (150021, 15020, NULL, NULL, NULL, NULL, 3, ARRAY[247, 595, 408]),
    -- Lusamine: Milotic Lv. 41: Hydro Pump, Safeguard, Flail
    (150021, 15020, NULL, NULL, NULL, NULL, 4, ARRAY[56, 219, 175]),
    -- Lusamine: Bewear Lv. 41: Baby-Doll Eyes, Hammer Arm, Take Down
    (150021, 15020, NULL, NULL, NULL, NULL, 5, ARRAY[608, 359, 36]),
    -- Lusamine: Clefable Lv. 50: Moonblast, Cosmic Power, Metronome, Moonlight
    (150022, 15020, NULL, NULL, NULL, NULL, 1, ARRAY[585, 322, 118, 236]),
    -- Lusamine: Lilligant Lv. 50: Petal Dance, Teeter Dance, Stun Spore, Leech Seed
    (150022, 15020, NULL, NULL, NULL, NULL, 2, ARRAY[80, 298, 78, 73]),
    -- Lusamine: Mismagius Lv. 50: Shadow Ball, Mystical Fire, Power Gem, Pain Split
    (150022, 15020, NULL, NULL, NULL, NULL, 3, ARRAY[247, 595, 408, 220]),
    -- Lusamine: Milotic Lv. 50: Hydro Pump, Safeguard, Flail, Recover
    (150022, 15020, NULL, NULL, NULL, NULL, 4, ARRAY[56, 219, 175, 105]),
    -- Lusamine: Bewear Lv. 50: Baby-Doll Eyes, Hammer Arm, Take Down, Pain Split
    (150022, 15020, NULL, NULL, NULL, NULL, 5, ARRAY[608, 359, 36, 220]),
    -- Gladion: Crobat Lv. 52: Acrobatics, Cross Poison
    (150014, 15017, NULL, 150001, 'rowlet', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Weavile Lv. 52: Ice Shard, Night Slash, Metal Claw
    (150014, 15017, NULL, 150001, 'rowlet', NULL, 2, ARRAY[420, 400, 232]),
    -- Gladion: Lucario Lv. 52: Aura Sphere, Metal Claw, Quick Attack
    (150014, 15017, NULL, 150001, 'rowlet', NULL, 3, ARRAY[396, 232, 98]),
    -- Gladion: Silvally (Fire) Lv. 53: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (150014, 15017, NULL, 150001, 'rowlet', NULL, 4, ARRAY[242, 306, 404, 718]),
    -- Gladion: Crobat Lv. 52: Acrobatics, Cross Poison
    (150014, 15017, NULL, 150001, 'litten', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Weavile Lv. 52: Ice Shard, Night Slash, Metal Claw
    (150014, 15017, NULL, 150001, 'litten', NULL, 2, ARRAY[420, 400, 232]),
    -- Gladion: Lucario Lv. 52: Aura Sphere, Metal Claw, Quick Attack
    (150014, 15017, NULL, 150001, 'litten', NULL, 3, ARRAY[396, 232, 98]),
    -- Gladion: Silvally (Water) Lv. 53: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (150014, 15017, NULL, 150001, 'litten', NULL, 4, ARRAY[242, 306, 404, 718]),
    -- Gladion: Crobat Lv. 52: Acrobatics, Cross Poison
    (150014, 15017, NULL, 150001, 'popplio', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Weavile Lv. 52: Ice Shard, Night Slash, Metal Claw
    (150014, 15017, NULL, 150001, 'popplio', NULL, 2, ARRAY[420, 400, 232]),
    -- Gladion: Lucario Lv. 52: Aura Sphere, Metal Claw, Quick Attack
    (150014, 15017, NULL, 150001, 'popplio', NULL, 3, ARRAY[396, 232, 98]),
    -- Gladion: Silvally (Grass) Lv. 53: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (150014, 15017, NULL, 150001, 'popplio', NULL, 4, ARRAY[242, 306, 404, 718]),
    -- Hau: Alolan Raichu Lv. 53: Thunderbolt, Quick Attack, Psychic, Focus Blast
    (150014, 15016, NULL, 150001, 'rowlet', NULL, 1, ARRAY[85, 98, 94, 411]),
    -- Hau: Flareon Lv. 53: Flare Blitz, Quick Attack, Charm, Baby-Doll Eyes
    (150014, 15016, NULL, 150001, 'rowlet', NULL, 2, ARRAY[394, 98, 204, 608]),
    -- Hau: Komala Lv. 53: Wood Hammer, Sucker Punch, Earthquake, Shadow Claw
    (150014, 15016, NULL, 150001, 'rowlet', NULL, 3, ARRAY[452, 389, 89, 421]),
    -- Hau: Primarina Lv. 54: Sparkling Aria, Moonblast, Hyper Voice
    (150014, 15016, NULL, 150001, 'rowlet', NULL, 4, ARRAY[664, 585, 304]),
    -- Hau: Alolan Raichu Lv. 53: Thunderbolt, Quick Attack, Psychic, Focus Blast
    (150014, 15016, NULL, 150001, 'litten', NULL, 1, ARRAY[85, 98, 94, 411]),
    -- Hau: Vaporeon Lv. 53: Hydro Pump, Quick Attack, Charm, Baby-Doll Eyes
    (150014, 15016, NULL, 150001, 'litten', NULL, 2, ARRAY[56, 98, 204, 608]),
    -- Hau: Komala Lv. 53: Wood Hammer, Sucker Punch, Earthquake, Shadow Claw
    (150014, 15016, NULL, 150001, 'litten', NULL, 3, ARRAY[452, 389, 89, 421]),
    -- Hau: Decidueye Lv. 54: Spirit Shackle, Leaf Blade, Smack Down
    (150014, 15016, NULL, 150001, 'litten', NULL, 4, ARRAY[662, 348, 479]),
    -- Hau: Alolan Raichu Lv. 53: Thunderbolt, Quick Attack, Psychic, Focus Blast
    (150014, 15016, NULL, 150001, 'popplio', NULL, 1, ARRAY[85, 98, 94, 411]),
    -- Hau: Leafeon Lv. 53: Leaf Blade, Quick Attack, Charm, Baby-Doll Eyes
    (150014, 15016, NULL, 150001, 'popplio', NULL, 2, ARRAY[348, 98, 204, 608]),
    -- Hau: Komala Lv. 53: Wood Hammer, Sucker Punch, Earthquake, Shadow Claw
    (150014, 15016, NULL, 150001, 'popplio', NULL, 3, ARRAY[452, 389, 89, 421]),
    -- Hau: Incineroar Lv. 54: Darkest Lariat, Flare Blitz, Earthquake
    (150014, 15016, NULL, 150001, 'popplio', NULL, 4, ARRAY[663, 394, 89]),
    -- Nihilego: Nihilego Lv. 27: Clear Smog, Psywave, Headbutt, Venoshock
    (150009, 15021, NULL, NULL, NULL, NULL, 1, ARRAY[499, 149, 29, 474]),
    -- Solgaleo: Solgaleo Lv. 55: Sunsteel Strike, Cosmic Power, Crunch, Zen Headbutt
    (150022, 15022, NULL, NULL, NULL, NULL, 1, ARRAY[713, 322, 242, 428]),
    -- Lunala: Lunala Lv. 55: Moongeist Beam, Cosmic Power, Night Daze, Shadow Ball
    (150022, 15023, NULL, NULL, NULL, NULL, 1, ARRAY[714, 322, 539, 247]),
    -- Tapu Koko: Tapu Koko Lv. 60: Nature's Madness, Discharge, Agility, Electro Ball
    (150019, 15024, NULL, NULL, NULL, NULL, 1, ARRAY[717, 435, 97, 486]),
    -- Nihilego: Nihilego Lv. 55: Power Gem, Mirror Coat, Acid Spray, Venom Drench
    (150020, 15021, NULL, NULL, NULL, NULL, 1, ARRAY[408, 243, 491, 599]),
    -- Buzzwole: Buzzwole Lv. 65: Counter, Hammer Arm, Lunge, Dynamic Punch
    (150020, 15025, NULL, NULL, NULL, NULL, 1, ARRAY[68, 359, 679, 223]),
    -- Pheromosa: Pheromosa Lv. 60: Triple Kick, Lunge, Bug Buzz, Me First
    (150020, 15026, NULL, NULL, NULL, NULL, 1, ARRAY[167, 679, 405, 382]),
    -- Xurkitree: Xurkitree Lv. 65: Hypnosis, Discharge, Electric Terrain, Power Whip
    (150020, 15027, NULL, NULL, NULL, NULL, 1, ARRAY[95, 435, 604, 438]),
    -- Kartana: Kartana Lv. 60: Leaf Blade, X-Scissor, Detect, Air Slash
    (150020, 15028, NULL, NULL, NULL, NULL, 1, ARRAY[348, 404, 197, 403]),
    -- Celesteela: Celesteela Lv. 65: Autotomize, Seed Bomb, Skull Bash, Iron Defense
    (150020, 15029, NULL, NULL, NULL, NULL, 1, ARRAY[475, 402, 130, 334]),
    -- Guzzlord: Guzzlord Lv. 70: Thrash, Gastro Acid, Heavy Slam, Wring Out
    (150020, 15030, NULL, NULL, NULL, NULL, 1, ARRAY[37, 380, 484, 378]),
    -- Tapu Lele: Tapu Lele Lv. 60: Nature's Madness, Extrasensory, Flatter, Moonblast
    (150023, 15031, NULL, NULL, NULL, NULL, 1, ARRAY[717, 326, 260, 585]),
    -- Tapu Bulu: Tapu Bulu Lv. 60: Nature's Madness, Zen Headbutt, Megahorn, Skull Bash
    (150024, 15032, NULL, NULL, NULL, NULL, 1, ARRAY[717, 428, 224, 130]),
    -- Tapu Fini: Tapu Fini Lv. 60: Nature's Madness, Muddy Water, Aqua Ring, Hydro Pump
    (150025, 15033, NULL, NULL, NULL, NULL, 1, ARRAY[717, 330, 392, 56]),
    -- Necrozma: Necrozma Lv. 75: Stealth Rock, Iron Defense, Wring Out, Prismatic Laser
    (150026, 15034, NULL, NULL, NULL, NULL, 1, ARRAY[446, 334, 378, 711])
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
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
