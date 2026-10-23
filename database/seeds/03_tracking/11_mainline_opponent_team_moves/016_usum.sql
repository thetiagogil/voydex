-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokéWiki trainer team tables for this game, matched to each
-- team by its Pokémon and their levels.
-- Pokémon no source confirms are left without moves (Voydex reads their types).
-- Scope: Ultra Sun / Ultra Moon Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Ultra Sun / Ultra Moon opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Hala: Machop Lv. 15: Karate Chop, Revenge, Focus Energy
    (160004, 16002, NULL, NULL, NULL, NULL, 1, ARRAY[2, 279, 116]),
    -- Hala: Makuhita Lv. 15: Arm Thrust, Sand Attack, Fake Out
    (160004, 16002, NULL, NULL, NULL, NULL, 2, ARRAY[292, 28, 252]),
    -- Hala: Crabrawler Lv. 16: Pursuit, Power-Up Punch, Leer
    (160004, 16002, NULL, NULL, NULL, NULL, 3, ARRAY[228, 612, 43]),
    -- Olivia: Anorith Lv. 27: Bug Bite, Smack Down, Metal Claw
    (160008, 16006, NULL, NULL, NULL, NULL, 1, ARRAY[450, 479, 232]),
    -- Olivia: Lileep Lv. 27: Giga Drain, Ancient Power, Brine
    (160008, 16006, NULL, NULL, NULL, NULL, 2, ARRAY[202, 246, 362]),
    -- Olivia: Lycanroc (Midnight) Lv. 28: Bite, Rock Tomb
    (160008, 16006, NULL, NULL, NULL, NULL, 3, ARRAY[44, 317]),
    -- Nanu: Sableye Lv. 43: Power Gem, Shadow Ball, Fake Out
    (160011, 16009, NULL, NULL, NULL, NULL, 1, ARRAY[408, 247, 252]),
    -- Nanu: Krokorok Lv. 43: Crunch, Assurance, Swagger, Earthquake
    (160011, 16009, NULL, NULL, NULL, NULL, 2, ARRAY[242, 372, 207, 89]),
    -- Nanu: Alolan Persian Lv. 44: Power Gem, Fake Out, Dark Pulse
    (160011, 16009, NULL, NULL, NULL, NULL, 3, ARRAY[408, 252, 399]),
    -- Hapu: Golurk Lv. 53: Hammer Arm, Earthquake, Shadow Punch, Stealth Rock
    (160014, 16011, NULL, NULL, NULL, NULL, 1, ARRAY[359, 89, 325, 446]),
    -- Hapu: Gastrodon (East Sea) Lv. 53: Muddy Water, Mud Bomb, Recover
    (160014, 16011, NULL, NULL, NULL, NULL, 2, ARRAY[330, 426, 105]),
    -- Hapu: Flygon Lv. 53: Earth Power, Dragon Breath
    (160014, 16011, NULL, NULL, NULL, NULL, 3, ARRAY[414, 225]),
    -- Hapu: Mudsdale Lv. 54: Heavy Slam, Earthquake, Double Kick, Payback
    (160014, 16011, NULL, NULL, NULL, NULL, 4, ARRAY[484, 89, 24, 371]),
    -- Molayne: Klefki Lv. 56: Spikes, Thunder Wave, Flash Cannon, Reflect
    (160016, 16013, NULL, NULL, NULL, NULL, 1, ARRAY[191, 86, 430, 115]),
    -- Molayne: Bisharp Lv. 56: Night Slash, Iron Head, X-Scissor, Metal Sound
    (160016, 16013, NULL, NULL, NULL, NULL, 2, ARRAY[400, 442, 404, 319]),
    -- Molayne: Magnezone Lv. 56: Flash Cannon, Thunderbolt, Tri Attack, Screech
    (160016, 16013, NULL, NULL, NULL, NULL, 3, ARRAY[430, 85, 161, 103]),
    -- Molayne: Metagross Lv. 56: Hammer Arm, Meteor Mash, Bullet Punch, Zen Headbutt
    (160016, 16013, NULL, NULL, NULL, NULL, 4, ARRAY[359, 309, 418, 428]),
    -- Molayne: Alolan Dugtrio Lv. 57: Earthquake, Iron Head, Sucker Punch, Fissure
    (160016, 16013, NULL, NULL, NULL, NULL, 5, ARRAY[89, 442, 389, 90]),
    -- Olivia: Armaldo Lv. 56: Crush Claw, X-Scissor, Rock Blast
    (160017, 16014, NULL, NULL, NULL, NULL, 1, ARRAY[306, 404, 350]),
    -- Olivia: Cradily Lv. 56: Rock Tomb, Energy Ball, Stealth Rock
    (160017, 16014, NULL, NULL, NULL, NULL, 2, ARRAY[317, 412, 446]),
    -- Olivia: Gigalith Lv. 56: Stone Edge, Bulldoze, Iron Head
    (160017, 16014, NULL, NULL, NULL, NULL, 3, ARRAY[444, 523, 442]),
    -- Olivia: Probopass Lv. 56: Earth Power, Power Gem, Thunder Wave, Sandstorm
    (160017, 16014, NULL, NULL, NULL, NULL, 4, ARRAY[414, 408, 86, 201]),
    -- Olivia: Lycanroc (Midnight) Lv. 57: Crunch, Stone Edge, Counter, Rock Climb
    (160017, 16014, NULL, NULL, NULL, NULL, 5, ARRAY[242, 444, 68, 431]),
    -- Acerola: Banette Lv. 56: Shadow Claw, Feint Attack, Infestation, Screech
    (160018, 16015, NULL, NULL, NULL, NULL, 1, ARRAY[421, 185, 611, 103]),
    -- Acerola: Drifblim Lv. 56: Ominous Wind, Focus Energy, Amnesia, Baton Pass
    (160018, 16015, NULL, NULL, NULL, NULL, 2, ARRAY[466, 116, 133, 226]),
    -- Acerola: Dhelmise Lv. 56: Slam, Shadow Ball, Energy Ball, Whirlpool
    (160018, 16015, NULL, NULL, NULL, NULL, 3, ARRAY[21, 247, 412, 250]),
    -- Acerola: Froslass Lv. 56: Blizzard, Shadow Ball, Confuse Ray, Ice Shard
    (160018, 16015, NULL, NULL, NULL, NULL, 4, ARRAY[59, 247, 109, 420]),
    -- Acerola: Palossand Lv. 57: Shadow Ball, Earth Power, Giga Drain, Iron Defense
    (160018, 16015, NULL, NULL, NULL, NULL, 5, ARRAY[247, 414, 202, 334]),
    -- Kahili: Braviary Lv. 56: Crush Claw, Brave Bird, Air Slash, Scary Face
    (160019, 16016, NULL, NULL, NULL, NULL, 1, ARRAY[306, 413, 403, 184]),
    -- Kahili: Hawlucha Lv. 56: Flying Press, Throat Chop, Dual Chop, Poison Jab
    (160019, 16016, NULL, NULL, NULL, NULL, 2, ARRAY[560, 675, 530, 398]),
    -- Kahili: Oricorio Lv. 56: Revelation Dance, Teeter Dance, Air Slash, Feather Dance
    (160019, 16016, NULL, NULL, NULL, NULL, 3, ARRAY[686, 298, 403, 297]),
    -- Kahili: Mandibuzz Lv. 56: Bone Rush, Brave Bird, Punishment, Flatter
    (160019, 16016, NULL, NULL, NULL, NULL, 4, ARRAY[198, 413, 386, 260]),
    -- Kahili: Toucannon Lv. 57: Bullet Seed, Rock Blast, Beak Blast, Screech
    (160019, 16016, NULL, NULL, NULL, NULL, 5, ARRAY[331, 350, 690, 103]),
    -- Hau: Alolan Raichu Lv. 59: Thunderbolt, Quick Attack, Psychic, Focus Blast
    (160020, 16017, NULL, 160001, 'rowlet', NULL, 1, ARRAY[85, 98, 94, 411]),
    -- Hau: Flareon Lv. 58: Flare Blitz, Quick Attack, Charm, Baby-Doll Eyes
    (160020, 16017, NULL, 160001, 'rowlet', NULL, 2, ARRAY[394, 98, 204, 608]),
    -- Hau: Tauros Lv. 58: Zen Headbutt, Iron Head, Earthquake, Double-Edge
    (160020, 16017, NULL, 160001, 'rowlet', NULL, 3, ARRAY[428, 442, 89, 38]),
    -- Hau: Noivern Lv. 58: Dragon Pulse, Air Slash, Dark Pulse, Super Fang
    (160020, 16017, NULL, 160001, 'rowlet', NULL, 4, ARRAY[406, 403, 399, 162]),
    -- Hau: Crabominable Lv. 59: Power-Up Punch, Ice Hammer, Stone Edge, Dizzy Punch
    (160020, 16017, NULL, 160001, 'rowlet', NULL, 5, ARRAY[612, 665, 444, 146]),
    -- Hau: Primarina Lv. 60: Sparkling Aria, Moonblast, Hyper Voice
    (160020, 16017, NULL, 160001, 'rowlet', NULL, 6, ARRAY[664, 585, 304]),
    -- Hau: Alolan Raichu Lv. 59: Thunderbolt, Quick Attack, Psychic, Focus Blast
    (160020, 16017, NULL, 160001, 'litten', NULL, 1, ARRAY[85, 98, 94, 411]),
    -- Hau: Vaporeon Lv. 58: Hydro Pump, Quick Attack, Charm, Baby-Doll Eyes
    (160020, 16017, NULL, 160001, 'litten', NULL, 2, ARRAY[56, 98, 204, 608]),
    -- Hau: Tauros Lv. 58: Zen Headbutt, Iron Head, Earthquake, Double-Edge
    (160020, 16017, NULL, 160001, 'litten', NULL, 3, ARRAY[428, 442, 89, 38]),
    -- Hau: Noivern Lv. 58: Dragon Pulse, Air Slash, Dark Pulse, Super Fang
    (160020, 16017, NULL, 160001, 'litten', NULL, 4, ARRAY[406, 403, 399, 162]),
    -- Hau: Crabominable Lv. 59: Power-Up Punch, Ice Hammer, Stone Edge, Dizzy Punch
    (160020, 16017, NULL, 160001, 'litten', NULL, 5, ARRAY[612, 665, 444, 146]),
    -- Hau: Decidueye Lv. 60: Spirit Shackle, Leaf Blade, Smack Down
    (160020, 16017, NULL, 160001, 'litten', NULL, 6, ARRAY[662, 348, 479]),
    -- Hau: Alolan Raichu Lv. 59: Thunderbolt, Quick Attack, Psychic, Focus Blast
    (160020, 16017, NULL, 160001, 'popplio', NULL, 1, ARRAY[85, 98, 94, 411]),
    -- Hau: Leafeon Lv. 58: Leaf Blade, Quick Attack, Charm, Baby-Doll Eyes
    (160020, 16017, NULL, 160001, 'popplio', NULL, 2, ARRAY[348, 98, 204, 608]),
    -- Hau: Tauros Lv. 58: Zen Headbutt, Iron Head, Earthquake, Double-Edge
    (160020, 16017, NULL, 160001, 'popplio', NULL, 3, ARRAY[428, 442, 89, 38]),
    -- Hau: Noivern Lv. 58: Dragon Pulse, Air Slash, Dark Pulse, Super Fang
    (160020, 16017, NULL, 160001, 'popplio', NULL, 4, ARRAY[406, 403, 399, 162]),
    -- Hau: Crabominable Lv. 59: Power-Up Punch, Ice Hammer, Stone Edge, Dizzy Punch
    (160020, 16017, NULL, 160001, 'popplio', NULL, 5, ARRAY[612, 665, 444, 146]),
    -- Hau: Incineroar Lv. 60: Darkest Lariat, Flare Blitz, Earthquake
    (160020, 16017, NULL, 160001, 'popplio', NULL, 6, ARRAY[663, 394, 89]),
    -- Giovanni: Dugtrio Lv. 68: Sandstorm, Earthquake, Sucker Punch, Stealth Rock
    (160022, 16018, 27, NULL, NULL, NULL, 1, ARRAY[201, 89, 389, 446]),
    -- Giovanni: Nidoking Lv. 68: Earthquake, Poison Jab, Throat Chop, Aqua Tail
    (160022, 16018, 27, NULL, NULL, NULL, 2, ARRAY[89, 398, 675, 401]),
    -- Giovanni: Nidoqueen Lv. 68: Surf, Sludge Wave, Earth Power, Flamethrower
    (160022, 16018, 27, NULL, NULL, NULL, 3, ARRAY[57, 482, 414, 53]),
    -- Giovanni: Rhyperior Lv. 68: Megahorn, Earthquake, Stone Edge, Thunder Punch
    (160022, 16018, 27, NULL, NULL, NULL, 4, ARRAY[224, 89, 444, 9]),
    -- Giovanni: Mega Mewtwo X Lv. 70: Zen Headbutt, Earthquake, Stone Edge, Drain Punch
    (160022, 16018, 27, NULL, NULL, NULL, 5, ARRAY[428, 89, 444, 409]),
    -- Giovanni: Dugtrio Lv. 68: Sandstorm, Earthquake, Sucker Punch, Stealth Rock
    (160022, 16018, 28, NULL, NULL, NULL, 1, ARRAY[201, 89, 389, 446]),
    -- Giovanni: Nidoking Lv. 68: Earthquake, Poison Jab, Throat Chop, Aqua Tail
    (160022, 16018, 28, NULL, NULL, NULL, 2, ARRAY[89, 398, 675, 401]),
    -- Giovanni: Nidoqueen Lv. 68: Surf, Sludge Wave, Earth Power, Flamethrower
    (160022, 16018, 28, NULL, NULL, NULL, 3, ARRAY[57, 482, 414, 53]),
    -- Giovanni: Rhyperior Lv. 68: Megahorn, Earthquake, Stone Edge, Thunder Punch
    (160022, 16018, 28, NULL, NULL, NULL, 4, ARRAY[224, 89, 444, 9]),
    -- Giovanni: Mega Mewtwo Y Lv. 70: Psystrike, Aura Sphere, Psychic, Ice Beam
    (160022, 16018, 28, NULL, NULL, NULL, 5, ARRAY[540, 396, 94, 58]),
    -- Hau: Popplio Lv. 5: Pound, Growl, Water Gun
    (160001, 16019, NULL, 160001, 'rowlet', NULL, 1, ARRAY[1, 45, 55]),
    -- Hau: Rowlet Lv. 5: Tackle, Growl, Leafage
    (160001, 16019, NULL, 160001, 'litten', NULL, 1, ARRAY[33, 45, 670]),
    -- Hau: Litten Lv. 5: Scratch, Growl, Ember
    (160001, 16019, NULL, 160001, 'popplio', NULL, 1, ARRAY[10, 45, 52]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (160002, 16019, NULL, 160001, 'rowlet', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Popplio Lv. 7: Pound, Water Gun, Growl
    (160002, 16019, NULL, 160001, 'rowlet', NULL, 2, ARRAY[1, 55, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (160002, 16019, NULL, 160001, 'litten', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Rowlet Lv. 7: Tackle, Leafage, Growl
    (160002, 16019, NULL, 160001, 'litten', NULL, 2, ARRAY[33, 670, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (160002, 16019, NULL, 160001, 'popplio', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Litten Lv. 7: Scratch, Ember, Growl
    (160002, 16019, NULL, 160001, 'popplio', NULL, 2, ARRAY[10, 52, 45]),
    -- Hau: Popplio Lv. 13: Water Gun, Growl, Disarming Voice, Baby-Doll Eyes
    (160004, 16019, NULL, 160001, 'rowlet', NULL, 1, ARRAY[55, 45, 574, 608]),
    -- Hau: Noibat Lv. 11: Supersonic, Tackle, Absorb, Gust
    (160004, 16019, NULL, 160001, 'rowlet', NULL, 2, ARRAY[48, 33, 71, 16]),
    -- Hau: Pikachu Lv. 12: Thunder Shock, Growl, Play Nice, Quick Attack
    (160004, 16019, NULL, 160001, 'rowlet', NULL, 3, ARRAY[84, 45, 589, 98]),
    -- Hau: Rowlet Lv. 13: Leafage, Growl, Peck, Astonish
    (160004, 16019, NULL, 160001, 'litten', NULL, 1, ARRAY[670, 45, 64, 310]),
    -- Hau: Noibat Lv. 11: Supersonic, Tackle, Absorb, Gust
    (160004, 16019, NULL, 160001, 'litten', NULL, 2, ARRAY[48, 33, 71, 16]),
    -- Hau: Pikachu Lv. 12: Thunder Shock, Growl, Play Nice, Quick Attack
    (160004, 16019, NULL, 160001, 'litten', NULL, 3, ARRAY[84, 45, 589, 98]),
    -- Hau: Litten Lv. 13: Ember, Growl, Lick, Leer
    (160004, 16019, NULL, 160001, 'popplio', NULL, 1, ARRAY[52, 45, 122, 43]),
    -- Hau: Noibat Lv. 11: Supersonic, Tackle, Absorb, Gust
    (160004, 16019, NULL, 160001, 'popplio', NULL, 2, ARRAY[48, 33, 71, 16]),
    -- Hau: Pikachu Lv. 12: Thunder Shock, Growl, Play Nice, Quick Attack
    (160004, 16019, NULL, 160001, 'popplio', NULL, 3, ARRAY[84, 45, 589, 98]),
    -- Hau: Brionne Lv. 16: Aqua Jet, Disarming Voice, Pound
    (160005, 16019, NULL, 160001, 'rowlet', NULL, 1, ARRAY[453, 574, 1]),
    -- Hau: Pikachu Lv. 15: Electro Ball, Quick Attack
    (160005, 16019, NULL, 160001, 'rowlet', NULL, 2, ARRAY[486, 98]),
    -- Hau: Noibat Lv. 14: Tackle, Bite
    (160005, 16019, NULL, 160001, 'rowlet', NULL, 3, ARRAY[33, 44]),
    -- Hau: Eevee Lv. 14: Baby-Doll Eyes, Quick Attack
    (160005, 16019, NULL, 160001, 'rowlet', NULL, 4, ARRAY[608, 98]),
    -- Hau: Dartrix Lv. 16: Razor Leaf, Peck, Tackle
    (160005, 16019, NULL, 160001, 'litten', NULL, 1, ARRAY[75, 64, 33]),
    -- Hau: Pikachu Lv. 15: Electro Ball, Quick Attack
    (160005, 16019, NULL, 160001, 'litten', NULL, 2, ARRAY[486, 98]),
    -- Hau: Noibat Lv. 14: Tackle, Bite
    (160005, 16019, NULL, 160001, 'litten', NULL, 3, ARRAY[33, 44]),
    -- Hau: Eevee Lv. 14: Baby-Doll Eyes, Quick Attack
    (160005, 16019, NULL, 160001, 'litten', NULL, 4, ARRAY[608, 98]),
    -- Hau: Torracat Lv. 16: Fire Fang, Lick, Scratch
    (160005, 16019, NULL, 160001, 'popplio', NULL, 1, ARRAY[424, 122, 10]),
    -- Hau: Pikachu Lv. 15: Electro Ball, Quick Attack
    (160005, 16019, NULL, 160001, 'popplio', NULL, 2, ARRAY[486, 98]),
    -- Hau: Noibat Lv. 14: Tackle, Bite
    (160005, 16019, NULL, 160001, 'popplio', NULL, 3, ARRAY[33, 44]),
    -- Hau: Eevee Lv. 14: Baby-Doll Eyes, Quick Attack
    (160005, 16019, NULL, 160001, 'popplio', NULL, 4, ARRAY[608, 98]),
    -- Gladion: Zorua Lv. 17: Feint Attack, Scratch
    (160005, 16020, NULL, NULL, NULL, NULL, 1, ARRAY[185, 10]),
    -- Gladion: Type: Null Lv. 18: Tackle, Pursuit
    (160005, 16020, NULL, NULL, NULL, NULL, 2, ARRAY[33, 228]),
    -- Gladion: Zubat Lv. 17: Bite, Wing Attack
    (160005, 16020, NULL, NULL, NULL, NULL, 3, ARRAY[44, 17]),
    -- Hau & Gladion: Brionne Lv. 20: Aqua Jet, Disarming Voice, Pound
    (160006, 16021, NULL, 160001, 'rowlet', NULL, 1, ARRAY[453, 574, 1]),
    -- Hau & Gladion: Type: Null Lv. 20: Tackle, Pursuit
    (160006, 16021, NULL, 160001, 'rowlet', NULL, 2, ARRAY[33, 228]),
    -- Hau & Gladion: Dartrix Lv. 20: Razor Leaf, Peck, Tackle
    (160006, 16021, NULL, 160001, 'litten', NULL, 1, ARRAY[75, 64, 33]),
    -- Hau & Gladion: Type: Null Lv. 20: Tackle, Pursuit
    (160006, 16021, NULL, 160001, 'litten', NULL, 2, ARRAY[33, 228]),
    -- Hau & Gladion: Torracat Lv. 20: Fire Fang, Lick, Scratch
    (160006, 16021, NULL, 160001, 'popplio', NULL, 1, ARRAY[424, 122, 10]),
    -- Hau & Gladion: Type: Null Lv. 20: Tackle, Pursuit
    (160006, 16021, NULL, 160001, 'popplio', NULL, 2, ARRAY[33, 228]),
    -- Hau: Brionne Lv. 30: Bubble Beam, Disarming Voice
    (160009, 16019, NULL, 160001, 'rowlet', NULL, 1, ARRAY[61, 574]),
    -- Hau: Flareon Lv. 28: Fire Fang, Quick Attack
    (160009, 16019, NULL, 160001, 'rowlet', NULL, 2, ARRAY[424, 98]),
    -- Hau: Noibat Lv. 28: Wing Attack, Bite
    (160009, 16019, NULL, 160001, 'rowlet', NULL, 3, ARRAY[17, 44]),
    -- Hau: Tauros Lv. 28: Pursuit, Horn Attack
    (160009, 16019, NULL, 160001, 'rowlet', NULL, 4, ARRAY[228, 30]),
    -- Hau: Alolan Raichu Lv. 29: Electro Ball, Quick Attack, Psychic
    (160009, 16019, NULL, 160001, 'rowlet', NULL, 5, ARRAY[486, 98, 94]),
    -- Hau: Dartrix Lv. 30: Razor Leaf, Pluck
    (160009, 16019, NULL, 160001, 'litten', NULL, 1, ARRAY[75, 365]),
    -- Hau: Vaporeon Lv. 28: Water Pulse, Quick Attack
    (160009, 16019, NULL, 160001, 'litten', NULL, 2, ARRAY[352, 98]),
    -- Hau: Noibat Lv. 28: Wing Attack, Bite
    (160009, 16019, NULL, 160001, 'litten', NULL, 3, ARRAY[17, 44]),
    -- Hau: Tauros Lv. 28: Pursuit, Horn Attack
    (160009, 16019, NULL, 160001, 'litten', NULL, 4, ARRAY[228, 30]),
    -- Hau: Alolan Raichu Lv. 29: Electro Ball, Quick Attack, Psychic
    (160009, 16019, NULL, 160001, 'litten', NULL, 5, ARRAY[486, 98, 94]),
    -- Hau: Torracat Lv. 30: Fire Fang, Bite
    (160009, 16019, NULL, 160001, 'popplio', NULL, 1, ARRAY[424, 44]),
    -- Hau: Leafeon Lv. 28: Giga Drain, Quick Attack
    (160009, 16019, NULL, 160001, 'popplio', NULL, 2, ARRAY[202, 98]),
    -- Hau: Noibat Lv. 28: Wing Attack, Bite
    (160009, 16019, NULL, 160001, 'popplio', NULL, 3, ARRAY[17, 44]),
    -- Hau: Tauros Lv. 28: Pursuit, Horn Attack
    (160009, 16019, NULL, 160001, 'popplio', NULL, 4, ARRAY[228, 30]),
    -- Hau: Alolan Raichu Lv. 29: Electro Ball, Quick Attack, Psychic
    (160009, 16019, NULL, 160001, 'popplio', NULL, 5, ARRAY[486, 98, 94]),
    -- Guzma: Golisopod Lv. 34: First Impression, Razor Shell, Sucker Punch
    (160009, 16022, NULL, NULL, NULL, NULL, 1, ARRAY[660, 534, 389]),
    -- Guzma: Masquerain Lv. 34: Bug Buzz, Icy Wind, Air Slash
    (160009, 16022, NULL, NULL, NULL, NULL, 2, ARRAY[405, 196, 403]),
    -- Guzma: Golisopod Lv. 41: First Impression, Razor Shell, Sucker Punch
    (160011, 16022, NULL, NULL, NULL, NULL, 1, ARRAY[660, 534, 389]),
    -- Guzma: Masquerain Lv. 41: Bug Buzz, Icy Wind, Air Slash
    (160011, 16022, NULL, NULL, NULL, NULL, 2, ARRAY[405, 196, 403]),
    -- Guzma: Pinsir Lv. 41: Storm Throw, Throat Chop, X-Scissor
    (160011, 16022, NULL, NULL, NULL, NULL, 3, ARRAY[480, 675, 404]),
    -- Gladion: Golbat Lv. 42: Acrobatics, Poison Fang, Venoshock
    (160011, 16020, NULL, NULL, NULL, NULL, 1, ARRAY[512, 305, 474]),
    -- Gladion: Zoroark Lv. 42: Snarl, Hyper Voice
    (160011, 16020, NULL, NULL, NULL, NULL, 2, ARRAY[555, 304]),
    -- Gladion: Type: Null Lv. 43: Pursuit, Crush Claw, X-Scissor
    (160011, 16020, NULL, NULL, NULL, NULL, 3, ARRAY[228, 306, 404]),
    -- Guzma: Golisopod Lv. 45: First Impression, Razor Shell, Sucker Punch
    (160023, 16022, NULL, NULL, NULL, NULL, 1, ARRAY[660, 534, 389]),
    -- Guzma: Masquerain Lv. 45: Bug Buzz, Icy Wind, Air Slash
    (160023, 16022, NULL, NULL, NULL, NULL, 2, ARRAY[405, 196, 403]),
    -- Guzma: Pinsir Lv. 45: Storm Throw, Throat Chop, X-Scissor, Stone Edge
    (160023, 16022, NULL, NULL, NULL, NULL, 3, ARRAY[480, 675, 404, 444]),
    -- Guzma: Vikavolt Lv. 45: Zap Cannon, Thunderbolt, Bug Buzz, Energy Ball
    (160023, 16022, NULL, NULL, NULL, NULL, 4, ARRAY[192, 85, 405, 412]),
    -- Lusamine: Clefable Lv. 47: Moonblast, Charm, Psychic, Hyper Voice
    (160023, 16023, NULL, NULL, NULL, NULL, 1, ARRAY[585, 204, 94, 304]),
    -- Lusamine: Lilligant Lv. 47: Petal Dance, Teeter Dance, Stun Spore
    (160023, 16023, NULL, NULL, NULL, NULL, 2, ARRAY[80, 298, 78]),
    -- Lusamine: Lopunny Lv. 47: Dizzy Punch, Thunder Punch, Ice Punch, Fire Punch
    (160023, 16023, NULL, NULL, NULL, NULL, 3, ARRAY[146, 9, 8, 7]),
    -- Lusamine: Milotic Lv. 47: Hydro Pump, Icy Wind, Flail, Dragon Pulse
    (160023, 16023, NULL, NULL, NULL, NULL, 4, ARRAY[56, 196, 175, 406]),
    -- Lusamine: Bewear Lv. 47: Zen Headbutt, Drain Punch, Take Down, Dual Chop
    (160023, 16023, NULL, NULL, NULL, NULL, 5, ARRAY[428, 409, 36, 530]),
    -- Gladion: Crobat Lv. 53: Acrobatics, Cross Poison
    (160016, 16020, NULL, 160001, 'rowlet', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Zoroark Lv. 53: Night Daze, Hyper Voice, Grass Knot
    (160016, 16020, NULL, 160001, 'rowlet', NULL, 2, ARRAY[539, 304, 447]),
    -- Gladion: Silvally (Fire) Lv. 55: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (160016, 16020, NULL, 160001, 'rowlet', NULL, 3, ARRAY[242, 306, 404, 718]),
    -- Gladion: Lucario Lv. 53: Aura Sphere, Metal Claw, Quick Attack
    (160016, 16020, NULL, 160001, 'rowlet', NULL, 4, ARRAY[396, 232, 98]),
    -- Gladion: Crobat Lv. 53: Acrobatics, Cross Poison
    (160016, 16020, NULL, 160001, 'popplio', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Zoroark Lv. 53: Night Daze, Hyper Voice, Grass Knot
    (160016, 16020, NULL, 160001, 'popplio', NULL, 2, ARRAY[539, 304, 447]),
    -- Gladion: Silvally (Grass) Lv. 55: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (160016, 16020, NULL, 160001, 'popplio', NULL, 3, ARRAY[242, 306, 404, 718]),
    -- Gladion: Lucario Lv. 53: Aura Sphere, Metal Claw, Quick Attack
    (160016, 16020, NULL, 160001, 'popplio', NULL, 4, ARRAY[396, 232, 98])
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
