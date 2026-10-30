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
-- Ilima's bonus trial Yungoos: Bulbapedia says Yawn, Serebii says Hyper Fang; Yawn is used.
-- Totem allies and the battles added by the #115 audit (Ilima, Plumeria, Faba, the Ultra Recon Squad, Mina's trial, the Masked Royal's Rockruff, the Rainbow Rocket bosses): Bulbapedia; Guzma's Vikavolt follows Bulbapedia (Flash Cannon).
-- Dulse and Soliera's first two battles (Seaward Cave, Paniola Ranch): Bulbapedia's
-- trainer pages, with Serebii as the second reading.
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
    -- Ilima [rowlet]: Yungoos Lv. 10: Tackle, Pursuit, Leer
    (160003, 16001, NULL, 160001, 'rowlet', NULL, 1, ARRAY[33, 228, 43]),
    -- Ilima [rowlet]: Smeargle Lv. 11: Ember, Tackle
    (160003, 16001, NULL, 160001, 'rowlet', NULL, 2, ARRAY[52, 33]),
    -- Ilima [litten]: Yungoos Lv. 10: Tackle, Pursuit, Leer
    (160003, 16001, NULL, 160001, 'litten', NULL, 1, ARRAY[33, 228, 43]),
    -- Ilima [litten]: Smeargle Lv. 11: Water Gun, Tackle
    (160003, 16001, NULL, 160001, 'litten', NULL, 2, ARRAY[55, 33]),
    -- Ilima [popplio]: Yungoos Lv. 10: Tackle, Pursuit, Leer
    (160003, 16001, NULL, 160001, 'popplio', NULL, 1, ARRAY[33, 228, 43]),
    -- Ilima [popplio]: Smeargle Lv. 11: Leafage, Tackle
    (160003, 16001, NULL, 160001, 'popplio', NULL, 2, ARRAY[670, 33]),
    -- Totem Gumshoos: Gumshoos Lv. 12: Super Fang, Bite, Tackle, Scary Face
    (160003, 16038, NULL, NULL, NULL, NULL, 1, ARRAY[162, 44, 33, 184]),
    -- Totem Gumshoos: Yungoos Lv. 10: Leer, Tackle, Pursuit, Odor Sleuth
    (160003, 16038, NULL, NULL, NULL, NULL, 2, ARRAY[43, 33, 228, 316]),
    -- Totem Raticate: Alolan Raticate Lv. 12: Super Fang, Bite, Fury Swipes, Scary Face
    (160003, 16039, NULL, NULL, NULL, NULL, 1, ARRAY[162, 44, 154, 184]),
    -- Totem Raticate: Alolan Rattata Lv. 10: Tackle, Tail Whip, Quick Attack, Pursuit
    (160003, 16039, NULL, NULL, NULL, NULL, 2, ARRAY[33, 39, 98, 228]),
    -- Hala: Machop Lv. 15: Karate Chop, Revenge, Focus Energy
    (160004, 16002, NULL, NULL, NULL, NULL, 1, ARRAY[2, 279, 116]),
    -- Hala: Makuhita Lv. 15: Arm Thrust, Sand Attack, Fake Out
    (160004, 16002, NULL, NULL, NULL, NULL, 2, ARRAY[292, 28, 252]),
    -- Hala: Crabrawler Lv. 16: Pursuit, Power-Up Punch, Leer
    (160004, 16002, NULL, NULL, NULL, NULL, 3, ARRAY[228, 612, 43]),
    -- Totem Araquanid: Araquanid Lv. 20: Leech Life, Bubble, Bite, Aurora Beam
    (160005, 16040, NULL, NULL, NULL, NULL, 1, ARRAY[141, 145, 44, 62]),
    -- Totem Araquanid: Dewpider Lv. 18: Sticky Web, Rain Dance, Bug Bite, Bubble
    (160005, 16040, NULL, NULL, NULL, NULL, 2, ARRAY[564, 240, 450, 145]),
    -- Totem Araquanid: Masquerain Lv. 18: Scary Face, Stun Spore, Tailwind, Bug Bite
    (160005, 16040, NULL, NULL, NULL, NULL, 3, ARRAY[184, 78, 366, 450]),
    -- Totem Marowak: Alolan Marowak Lv. 22: Hex, Flame Wheel, Brick Break, Detect
    (160006, 16041, NULL, NULL, NULL, NULL, 1, ARRAY[506, 172, 280, 197]),
    -- Totem Marowak: Salazzle Lv. 20: Poison Gas, Venoshock, Flame Burst, Torment
    (160006, 16041, NULL, NULL, NULL, NULL, 2, ARRAY[139, 474, 481, 259]),
    -- Totem Lurantis: Lurantis Lv. 24: Low Sweep, X-Scissor, Solar Blade, Synthesis
    (160007, 16042, NULL, NULL, NULL, NULL, 1, ARRAY[490, 404, 669, 235]),
    -- Totem Lurantis: Kecleon Lv. 22: Sunny Day, Ancient Power, Dizzy Punch, Screech
    (160007, 16042, NULL, NULL, NULL, NULL, 2, ARRAY[241, 246, 146, 103]),
    -- Totem Lurantis: Comfey Lv. 22: Sunny Day, Floral Healing, Flower Shield, Magical Leaf
    (160007, 16042, NULL, NULL, NULL, NULL, 3, ARRAY[241, 666, 579, 345]),
    -- Plumeria (Akala Outskirts): Golbat Lv. 26: Poison Fang, Wing Attack, Confuse Ray
    (160008, 16049, NULL, NULL, NULL, NULL, 1, ARRAY[305, 17, 109]),
    -- Plumeria (Akala Outskirts): Salandit Lv. 27: Flame Burst, Dragon Rage, Poison Gas
    (160008, 16049, NULL, NULL, NULL, NULL, 2, ARRAY[481, 82, 139]),
    -- Olivia: Anorith Lv. 27: Bug Bite, Smack Down, Metal Claw
    (160008, 16006, NULL, NULL, NULL, NULL, 1, ARRAY[450, 479, 232]),
    -- Olivia: Lileep Lv. 27: Giga Drain, Ancient Power, Brine
    (160008, 16006, NULL, NULL, NULL, NULL, 2, ARRAY[202, 246, 362]),
    -- Olivia: Lycanroc (Midnight) Lv. 28: Bite, Rock Tomb
    (160008, 16006, NULL, NULL, NULL, NULL, 3, ARRAY[44, 317]),
    -- Totem Togedemaru: Togedemaru Lv. 33: Zing Zap, Spiky Shield, Iron Head, Bounce
    (160009, 16043, NULL, NULL, NULL, NULL, 1, ARRAY[716, 596, 442, 340]),
    -- Totem Togedemaru: Skarmory Lv. 32: Stealth Rock, Steel Wing, Tailwind, Torment
    (160009, 16043, NULL, NULL, NULL, NULL, 2, ARRAY[446, 211, 366, 259]),
    -- Totem Togedemaru: Dedenne Lv. 31: Super Fang, Eerie Impulse, Charm, Discharge
    (160009, 16043, NULL, NULL, NULL, NULL, 3, ARRAY[162, 598, 204, 435]),
    -- Totem Mimikyu: Mimikyu Lv. 35: Shadow Claw, Play Rough, Leech Life, Slash
    (160010, 16044, NULL, NULL, NULL, NULL, 1, ARRAY[421, 583, 141, 163]),
    -- Totem Mimikyu: Banette Lv. 32: Screech, Will-O-Wisp, Feint Attack, Curse
    (160010, 16044, NULL, NULL, NULL, NULL, 2, ARRAY[103, 261, 185, 174]),
    -- Totem Mimikyu: Jellicent Lv. 33: Water Pulse, Snore, Spite, Night Shade
    (160010, 16044, NULL, NULL, NULL, NULL, 3, ARRAY[352, 173, 180, 101]),
    -- Plumeria (Route 15): Golbat Lv. 37: Wing Attack, Poison Fang
    (160011, 16049, NULL, NULL, NULL, NULL, 1, ARRAY[17, 305]),
    -- Plumeria (Route 15): Salazzle Lv. 38: Dragon Pulse, Flamethrower, Sludge Bomb
    (160011, 16049, NULL, NULL, NULL, NULL, 2, ARRAY[406, 53, 188]),
    -- Nanu: Sableye Lv. 43: Power Gem, Shadow Ball, Fake Out
    (160011, 16009, NULL, NULL, NULL, NULL, 1, ARRAY[408, 247, 252]),
    -- Nanu: Krokorok Lv. 43: Crunch, Assurance, Swagger, Earthquake
    (160011, 16009, NULL, NULL, NULL, NULL, 2, ARRAY[242, 372, 207, 89]),
    -- Nanu: Alolan Persian Lv. 44: Power Gem, Fake Out, Dark Pulse
    (160011, 16009, NULL, NULL, NULL, NULL, 3, ARRAY[408, 252, 399]),
    -- Mina: Mawile Lv. 51: Iron Head, Play Rough, Sucker Punch
    (160012, 16010, NULL, NULL, NULL, NULL, 1, ARRAY[442, 583, 389]),
    -- Mina: Granbull Lv. 51: Stone Edge, Play Rough, Earthquake
    (160012, 16010, NULL, NULL, NULL, NULL, 2, ARRAY[444, 583, 89]),
    -- Mina: Ribombee Lv. 51: Pollen Puff, Dazzling Gleam, Psychic
    (160012, 16010, NULL, NULL, NULL, NULL, 3, ARRAY[676, 605, 94]),
    -- Ilima (Mina's trial): Gumshoos Lv. 51: Crunch, Hyper Fang, Super Fang
    (160012, 16001, NULL, NULL, NULL, NULL, 1, ARRAY[242, 158, 162]),
    -- Ilima (Mina's trial): Smeargle Lv. 51: Extreme Speed, Flamethrower, Surf, Energy Ball
    (160012, 16001, NULL, NULL, NULL, NULL, 2, ARRAY[245, 53, 57, 412]),
    -- Ilima (Mina's trial): Komala Lv. 51: Sucker Punch, Wood Hammer, Slam
    (160012, 16001, NULL, NULL, NULL, NULL, 3, ARRAY[389, 452, 21]),
    -- Mallow (Mina's trial, Ultra Sun): Trevenant Lv. 51: Horn Leech, Shadow Claw, Leech Seed
    (160012, 16005, NULL, NULL, NULL, NULL, 1, ARRAY[532, 421, 73]),
    -- Mallow (Mina's trial, Ultra Sun): Shiinotic Lv. 51: Moonblast, Giga Drain, Spore
    (160012, 16005, NULL, NULL, NULL, NULL, 2, ARRAY[585, 202, 147]),
    -- Mallow (Mina's trial, Ultra Sun): Tsareena Lv. 51: Trop Kick, Low Sweep, U-turn
    (160012, 16005, NULL, NULL, NULL, NULL, 3, ARRAY[688, 490, 369]),
    -- Lana (Mina's trial, Ultra Moon): Lanturn Lv. 51: Discharge, Hydro Pump, Thunder Wave
    (160012, 16003, NULL, NULL, NULL, NULL, 1, ARRAY[435, 56, 86]),
    -- Lana (Mina's trial, Ultra Moon): Cloyster Lv. 51: Spike Cannon, Icicle Crash, Spikes
    (160012, 16003, NULL, NULL, NULL, NULL, 2, ARRAY[131, 556, 191]),
    -- Lana (Mina's trial, Ultra Moon): Araquanid Lv. 51: Liquidation, Leech Life, Crunch
    (160012, 16003, NULL, NULL, NULL, NULL, 3, ARRAY[710, 141, 242]),
    -- Kiawe (Mina's trial): Arcanine Lv. 51: Crunch, Flare Blitz, Extreme Speed
    (160012, 16004, NULL, NULL, NULL, NULL, 1, ARRAY[242, 394, 245]),
    -- Kiawe (Mina's trial): Talonflame Lv. 51: Quick Attack, Flame Charge, Brave Bird
    (160012, 16004, NULL, NULL, NULL, NULL, 2, ARRAY[98, 488, 413]),
    -- Kiawe (Mina's trial): Alolan Marowak Lv. 51: Flame Wheel, Shadow Bone, Bonemerang
    (160012, 16004, NULL, NULL, NULL, NULL, 3, ARRAY[172, 708, 155]),
    -- Sophocles (Mina's trial, Ultra Sun): Togedemaru Lv. 51: Spiky Shield, Zing Zap, Fell Stinger
    (160012, 16007, NULL, NULL, NULL, NULL, 1, ARRAY[596, 716, 565]),
    -- Sophocles (Mina's trial, Ultra Sun): Magnezone Lv. 51: Flash Cannon, Discharge, Tri Attack
    (160012, 16007, NULL, NULL, NULL, NULL, 2, ARRAY[430, 435, 161]),
    -- Sophocles (Mina's trial, Ultra Sun): Alolan Golem Lv. 51: Stone Edge, Thunder Punch, Steamroller
    (160012, 16007, NULL, NULL, NULL, NULL, 3, ARRAY[444, 9, 537]),
    -- Nanu (Mina's trial, Ultra Moon): Sableye Lv. 52: Power Gem, Shadow Ball, Dark Pulse
    (160012, 16052, NULL, NULL, NULL, NULL, 1, ARRAY[408, 247, 399]),
    -- Nanu (Mina's trial, Ultra Moon): Absol Lv. 52: Night Slash, Psycho Cut, Sucker Punch
    (160012, 16052, NULL, NULL, NULL, NULL, 2, ARRAY[400, 427, 389]),
    -- Nanu (Mina's trial, Ultra Moon): Alolan Persian Lv. 53: Power Gem, Fake Out, Dark Pulse
    (160012, 16052, NULL, NULL, NULL, NULL, 3, ARRAY[408, 252, 399]),
    -- Totem Ribombee: Ribombee Lv. 55: Bug Buzz, Draining Kiss, Quiver Dance, Dazzling Gleam
    (160012, 16045, NULL, NULL, NULL, NULL, 1, ARRAY[405, 577, 483, 605]),
    -- Totem Ribombee: Pelipper Lv. 52: Stockpile, Scald, Spit Up, Seed Bomb
    (160012, 16045, NULL, NULL, NULL, NULL, 2, ARRAY[254, 503, 255, 402]),
    -- Totem Ribombee: Blissey Lv. 53: Heal Pulse, Light Screen, Helping Hand, Dazzling Gleam
    (160012, 16045, NULL, NULL, NULL, NULL, 3, ARRAY[505, 113, 270, 605]),
    -- Dulse (Vast Poni Canyon): Poipole Lv. 49: Nasty Plot, Poison Jab, Toxic, Fell Stinger
    (160013, 16050, NULL, NULL, NULL, NULL, 1, ARRAY[417, 398, 92, 565]),
    -- Soliera (Vast Poni Canyon): Poipole Lv. 49: Nasty Plot, Poison Jab, Toxic, Fell Stinger
    (160013, 16051, NULL, NULL, NULL, NULL, 1, ARRAY[417, 398, 92, 565]),
    -- Totem Kommo-o: Kommo-o Lv. 49: Drain Punch, Dragon Claw, Thunder Punch, Poison Jab
    (160013, 16037, NULL, NULL, NULL, NULL, 1, ARRAY[409, 337, 9, 398]),
    -- Totem Kommo-o: Noivern Lv. 48: Boomburst, Screech, Dragon Pulse, Air Slash
    (160013, 16037, NULL, NULL, NULL, NULL, 2, ARRAY[586, 103, 406, 403]),
    -- Totem Kommo-o: Scizor Lv. 46: Light Screen, Pursuit, Bullet Punch, X-Scissor
    (160013, 16037, NULL, NULL, NULL, NULL, 3, ARRAY[113, 228, 418, 404]),
    -- Hapu: Golurk Lv. 53: Hammer Arm, Earthquake, Shadow Punch, Stealth Rock
    (160014, 16011, NULL, NULL, NULL, NULL, 1, ARRAY[359, 89, 325, 446]),
    -- Hapu: Gastrodon (East Sea) Lv. 53: Muddy Water, Mud Bomb, Recover
    (160014, 16011, NULL, NULL, NULL, NULL, 2, ARRAY[330, 426, 105]),
    -- Hapu: Flygon Lv. 53: Earth Power, Dragon Breath
    (160014, 16011, NULL, NULL, NULL, NULL, 3, ARRAY[414, 225]),
    -- Hapu: Mudsdale Lv. 54: Heavy Slam, Earthquake, Double Kick, Payback
    (160014, 16011, NULL, NULL, NULL, NULL, 4, ARRAY[484, 89, 24, 371]),
    -- Ultra Necrozma: Ultra Necrozma Lv. 60: Photon Geyser, Smart Strike, Power Gem, Dragon Pulse
    (160015, 16012, NULL, NULL, NULL, NULL, 1, ARRAY[722, 684, 408, 406]),
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
    -- Faba (Episode RR): Claydol Lv. 63: Earth Power, Extrasensory, Ancient Power, Grass Knot
    (160022, 16048, NULL, NULL, NULL, NULL, 1, ARRAY[414, 326, 246, 447]),
    -- Faba (Episode RR): Bruxish Lv. 63: Aqua Jet, Crunch, Psychic Fangs, Waterfall
    (160022, 16048, NULL, NULL, NULL, NULL, 2, ARRAY[453, 242, 706, 127]),
    -- Faba (Episode RR): Hypno Lv. 63: Psychic, Hypnosis, Focus Blast, Dream Eater
    (160022, 16048, NULL, NULL, NULL, NULL, 3, ARRAY[94, 95, 411, 138]),
    -- Faba (Episode RR): Granbull Lv. 61: Snarl
    (160022, 16048, NULL, NULL, NULL, NULL, 4, ARRAY[555]),
    -- Faba (Episode RR): Scrafty Lv. 61: Snarl
    (160022, 16048, NULL, NULL, NULL, NULL, 5, ARRAY[555]),
    -- Faba (Episode RR): Shiinotic Lv. 61: Spore, Dazzling Gleam
    (160022, 16048, NULL, NULL, NULL, NULL, 6, ARRAY[147, 605]),
    -- Archie: Mightyena Lv. 64: Crunch, Fire Fang, Thunder Fang, Ice Fang
    (160022, 16053, NULL, NULL, NULL, NULL, 1, ARRAY[242, 424, 422, 423]),
    -- Archie: Crobat Lv. 64: Air Slash, Toxic, Dark Pulse, Sludge Bomb
    (160022, 16053, NULL, NULL, NULL, NULL, 2, ARRAY[403, 92, 399, 188]),
    -- Archie: Muk Lv. 64: Gunk Shot, Fire Punch, Thunder Punch, Ice Punch
    (160022, 16053, NULL, NULL, NULL, NULL, 3, ARRAY[441, 7, 9, 8]),
    -- Archie: Sharpedo Lv. 64: Night Slash, Liquidation, Ice Fang, Poison Fang
    (160022, 16053, NULL, NULL, NULL, NULL, 4, ARRAY[400, 710, 423, 305]),
    -- Archie: Kyogre Lv. 66: Hydro Pump, Ice Beam, Ancient Power, Thunder
    (160022, 16053, NULL, NULL, NULL, NULL, 5, ARRAY[56, 58, 246, 87]),
    -- Maxie: Mightyena Lv. 64: Crunch, Fire Fang, Thunder Fang, Ice Fang
    (160022, 16054, NULL, NULL, NULL, NULL, 1, ARRAY[242, 424, 422, 423]),
    -- Maxie: Crobat Lv. 64: Air Slash, Toxic, Dark Pulse, Sludge Bomb
    (160022, 16054, NULL, NULL, NULL, NULL, 2, ARRAY[403, 92, 399, 188]),
    -- Maxie: Weezing Lv. 64: Sludge Bomb, Thunderbolt, Shadow Ball, Pain Split
    (160022, 16054, NULL, NULL, NULL, NULL, 3, ARRAY[188, 85, 247, 220]),
    -- Maxie: Camerupt Lv. 64: Earthquake, Stone Edge, Flamethrower, Flash Cannon
    (160022, 16054, NULL, NULL, NULL, NULL, 4, ARRAY[89, 444, 53, 430]),
    -- Maxie: Groudon Lv. 66: Earthquake, Flamethrower, Ancient Power, Solar Beam
    (160022, 16054, NULL, NULL, NULL, NULL, 5, ARRAY[89, 53, 246, 76]),
    -- Cyrus (Ultra Sun): Houndoom Lv. 65: Fire Blast, Dark Pulse, Sludge Bomb, Shadow Ball
    (160022, 16055, 27, NULL, NULL, NULL, 1, ARRAY[126, 399, 188, 247]),
    -- Cyrus (Ultra Sun): Honchkrow Lv. 65: Night Slash, Sky Attack, Heat Wave, Icy Wind
    (160022, 16055, 27, NULL, NULL, NULL, 2, ARRAY[400, 143, 257, 196]),
    -- Cyrus (Ultra Sun): Crobat Lv. 65: Cross Poison, Zen Headbutt, X-Scissor, Super Fang
    (160022, 16055, 27, NULL, NULL, NULL, 3, ARRAY[440, 428, 404, 162]),
    -- Cyrus (Ultra Sun): Weavile Lv. 65: Night Slash, Quick Attack, Ice Punch, Brick Break
    (160022, 16055, 27, NULL, NULL, NULL, 4, ARRAY[400, 98, 8, 280]),
    -- Cyrus (Ultra Sun): Dialga Lv. 67: Roar of Time, Flash Cannon, Earth Power, Thunderbolt
    (160022, 16055, 27, NULL, NULL, NULL, 5, ARRAY[459, 430, 414, 85]),
    -- Cyrus (Ultra Moon): Houndoom Lv. 65: Fire Blast, Dark Pulse, Sludge Bomb, Shadow Ball
    (160022, 16055, 28, NULL, NULL, NULL, 1, ARRAY[126, 399, 188, 247]),
    -- Cyrus (Ultra Moon): Honchkrow Lv. 65: Night Slash, Sky Attack, Heat Wave, Icy Wind
    (160022, 16055, 28, NULL, NULL, NULL, 2, ARRAY[400, 143, 257, 196]),
    -- Cyrus (Ultra Moon): Crobat Lv. 65: Cross Poison, Zen Headbutt, X-Scissor, Super Fang
    (160022, 16055, 28, NULL, NULL, NULL, 3, ARRAY[440, 428, 404, 162]),
    -- Cyrus (Ultra Moon): Weavile Lv. 65: Night Slash, Quick Attack, Ice Punch, Brick Break
    (160022, 16055, 28, NULL, NULL, NULL, 4, ARRAY[400, 98, 8, 280]),
    -- Cyrus (Ultra Moon): Palkia Lv. 67: Spacial Rend, Surf, Earth Power, Thunderbolt
    (160022, 16055, 28, NULL, NULL, NULL, 5, ARRAY[460, 57, 414, 85]),
    -- Lysandre (Ultra Sun): Mienshao Lv. 65: Fake Out, Dual Chop, High Jump Kick, U-turn
    (160022, 16056, 27, NULL, NULL, NULL, 1, ARRAY[252, 530, 136, 369]),
    -- Lysandre (Ultra Sun): Honchkrow Lv. 65: Dark Pulse, Heat Wave, Psychic, Shadow Ball
    (160022, 16056, 27, NULL, NULL, NULL, 2, ARRAY[399, 257, 94, 247]),
    -- Lysandre (Ultra Sun): Pyroar Lv. 65: Flamethrower, Hyper Voice, Snarl, Will-O-Wisp
    (160022, 16056, 27, NULL, NULL, NULL, 3, ARRAY[53, 304, 555, 261]),
    -- Lysandre (Ultra Sun): Mega Gyarados Lv. 65: Crunch, Waterfall, Earthquake, Stone Edge
    (160022, 16056, 27, NULL, NULL, NULL, 4, ARRAY[242, 127, 89, 444]),
    -- Lysandre (Ultra Sun): Xerneas Lv. 67: Geomancy, Moonblast, Thunderbolt, Psyshock
    (160022, 16056, 27, NULL, NULL, NULL, 5, ARRAY[601, 585, 85, 473]),
    -- Lysandre (Ultra Moon): Mienshao Lv. 65: Fake Out, Dual Chop, High Jump Kick, U-turn
    (160022, 16056, 28, NULL, NULL, NULL, 1, ARRAY[252, 530, 136, 369]),
    -- Lysandre (Ultra Moon): Honchkrow Lv. 65: Dark Pulse, Heat Wave, Psychic, Shadow Ball
    (160022, 16056, 28, NULL, NULL, NULL, 2, ARRAY[399, 257, 94, 247]),
    -- Lysandre (Ultra Moon): Pyroar Lv. 65: Flamethrower, Hyper Voice, Snarl, Will-O-Wisp
    (160022, 16056, 28, NULL, NULL, NULL, 3, ARRAY[53, 304, 555, 261]),
    -- Lysandre (Ultra Moon): Mega Gyarados Lv. 65: Crunch, Waterfall, Earthquake, Stone Edge
    (160022, 16056, 28, NULL, NULL, NULL, 4, ARRAY[242, 127, 89, 444]),
    -- Lysandre (Ultra Moon): Yveltal Lv. 67: Oblivion Wing, Air Slash, Psychic, Shadow Ball
    (160022, 16056, 28, NULL, NULL, NULL, 5, ARRAY[613, 403, 94, 247]),
    -- Ghetsis (Ultra Sun): Cofagrigus Lv. 66: Will-O-Wisp, Shadow Ball, Power Split, Dark Pulse
    (160022, 16057, 27, NULL, NULL, NULL, 1, ARRAY[261, 247, 471, 399]),
    -- Ghetsis (Ultra Sun): Bouffalant Lv. 66: Head Charge, Poison Jab, Earthquake, Megahorn
    (160022, 16057, 27, NULL, NULL, NULL, 2, ARRAY[543, 398, 89, 224]),
    -- Ghetsis (Ultra Sun): Bisharp Lv. 66: Iron Head, Night Slash, Stone Edge, X-Scissor
    (160022, 16057, 27, NULL, NULL, NULL, 3, ARRAY[442, 400, 444, 404]),
    -- Ghetsis (Ultra Sun): Hydreigon Lv. 66: Dragon Pulse, Hyper Voice, Dark Pulse, Surf
    (160022, 16057, 27, NULL, NULL, NULL, 4, ARRAY[406, 304, 399, 57]),
    -- Ghetsis (Ultra Sun): Zekrom Lv. 68: Bolt Strike, Hyper Voice, Dragon Claw, Zen Headbutt
    (160022, 16057, 27, NULL, NULL, NULL, 5, ARRAY[550, 304, 337, 428]),
    -- Ghetsis (Ultra Moon): Cofagrigus Lv. 66: Will-O-Wisp, Shadow Ball, Power Split, Dark Pulse
    (160022, 16057, 28, NULL, NULL, NULL, 1, ARRAY[261, 247, 471, 399]),
    -- Ghetsis (Ultra Moon): Bouffalant Lv. 66: Head Charge, Poison Jab, Earthquake, Megahorn
    (160022, 16057, 28, NULL, NULL, NULL, 2, ARRAY[543, 398, 89, 224]),
    -- Ghetsis (Ultra Moon): Bisharp Lv. 66: Iron Head, Night Slash, Stone Edge, X-Scissor
    (160022, 16057, 28, NULL, NULL, NULL, 3, ARRAY[442, 400, 444, 404]),
    -- Ghetsis (Ultra Moon): Hydreigon Lv. 66: Dragon Pulse, Hyper Voice, Dark Pulse, Surf
    (160022, 16057, 28, NULL, NULL, NULL, 4, ARRAY[406, 304, 399, 57]),
    -- Ghetsis (Ultra Moon): Reshiram Lv. 68: Blue Flare, Hyper Voice, Dragon Claw, Zen Headbutt
    (160022, 16057, 28, NULL, NULL, NULL, 5, ARRAY[551, 304, 337, 428]),
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
    (160033, 16019, NULL, 160001, 'rowlet', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Popplio Lv. 7: Pound, Water Gun, Growl
    (160033, 16019, NULL, 160001, 'rowlet', NULL, 2, ARRAY[1, 55, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (160033, 16019, NULL, 160001, 'litten', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Rowlet Lv. 7: Tackle, Leafage, Growl
    (160033, 16019, NULL, 160001, 'litten', NULL, 2, ARRAY[33, 670, 45]),
    -- Hau: Pichu Lv. 6: Thunder Shock, Charm, Tail Whip
    (160033, 16019, NULL, 160001, 'popplio', NULL, 1, ARRAY[84, 204, 39]),
    -- Hau: Litten Lv. 7: Scratch, Ember, Growl
    (160033, 16019, NULL, 160001, 'popplio', NULL, 2, ARRAY[10, 52, 45]),
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
    -- Hau, Gladion & the Masked Royal: Brionne Lv. 20: Aqua Jet, Disarming Voice, Pound
    (160006, 16021, NULL, 160001, 'rowlet', NULL, 1, ARRAY[453, 574, 1]),
    -- Hau, Gladion & the Masked Royal: Type: Null Lv. 20: Tackle, Pursuit
    (160006, 16021, NULL, 160001, 'rowlet', NULL, 2, ARRAY[33, 228]),
    -- Hau, Gladion & the Masked Royal [rowlet]: Rockruff Lv. 20: Rock Throw, Bite, Protect
    (160006, 16021, NULL, 160001, 'rowlet', NULL, 3, ARRAY[88, 44, 182]),
    -- Hau, Gladion & the Masked Royal: Dartrix Lv. 20: Razor Leaf, Peck, Tackle
    (160006, 16021, NULL, 160001, 'litten', NULL, 1, ARRAY[75, 64, 33]),
    -- Hau, Gladion & the Masked Royal: Type: Null Lv. 20: Tackle, Pursuit
    (160006, 16021, NULL, 160001, 'litten', NULL, 2, ARRAY[33, 228]),
    -- Hau, Gladion & the Masked Royal [litten]: Rockruff Lv. 20: Rock Throw, Bite, Protect
    (160006, 16021, NULL, 160001, 'litten', NULL, 3, ARRAY[88, 44, 182]),
    -- Hau, Gladion & the Masked Royal: Torracat Lv. 20: Fire Fang, Lick, Scratch
    (160006, 16021, NULL, 160001, 'popplio', NULL, 1, ARRAY[424, 122, 10]),
    -- Hau, Gladion & the Masked Royal: Type: Null Lv. 20: Tackle, Pursuit
    (160006, 16021, NULL, 160001, 'popplio', NULL, 2, ARRAY[33, 228]),
    -- Hau, Gladion & the Masked Royal [popplio]: Rockruff Lv. 20: Rock Throw, Bite, Protect
    (160006, 16021, NULL, 160001, 'popplio', NULL, 3, ARRAY[88, 44, 182]),
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
    -- Faba (entrance): Hypno Lv. 43: Psychic, Hypnosis, Disable, Nightmare
    (160023, 16046, NULL, NULL, NULL, NULL, 1, ARRAY[94, 95, 50, 171]),
    -- Faba (labs): Claydol Lv. 44: Earth Power, Extrasensory, Ancient Power, Grass Knot
    (160023, 16047, NULL, NULL, NULL, NULL, 1, ARRAY[414, 326, 246, 447]),
    -- Faba (labs): Bruxish Lv. 44: Aqua Jet, Crunch, Psychic Fangs, Waterfall
    (160023, 16047, NULL, NULL, NULL, NULL, 2, ARRAY[453, 242, 706, 127]),
    -- Faba (labs): Hypno Lv. 45: Psychic, Hypnosis, Focus Blast, Nightmare
    (160023, 16047, NULL, NULL, NULL, NULL, 3, ARRAY[94, 95, 411, 171]),
    -- Faba (labs): Ledian Lv. 42: Light Screen, Reflect, Air Slash, Bug Buzz
    (160023, 16047, NULL, NULL, NULL, NULL, 4, ARRAY[113, 115, 403, 405]),
    -- Faba (labs): Pupitar Lv. 42: Snarl
    (160023, 16047, NULL, NULL, NULL, NULL, 5, ARRAY[555]),
    -- Guzma: Golisopod Lv. 45: First Impression, Razor Shell, Sucker Punch
    (160023, 16022, NULL, NULL, NULL, NULL, 1, ARRAY[660, 534, 389]),
    -- Guzma: Masquerain Lv. 45: Bug Buzz, Icy Wind, Air Slash
    (160023, 16022, NULL, NULL, NULL, NULL, 2, ARRAY[405, 196, 403]),
    -- Guzma: Pinsir Lv. 45: Storm Throw, Throat Chop, X-Scissor, Stone Edge
    (160023, 16022, NULL, NULL, NULL, NULL, 3, ARRAY[480, 675, 404, 444]),
    -- Guzma: Vikavolt Lv. 45: Flash Cannon, Thunderbolt, Bug Buzz, Energy Ball
    (160023, 16022, NULL, NULL, NULL, NULL, 4, ARRAY[430, 85, 405, 412]),
    -- Dulse (Aether Paradise): Poipole Lv. 47: Nasty Plot, Poison Jab, Toxic, Fell Stinger
    (160023, 16050, NULL, NULL, NULL, NULL, 1, ARRAY[417, 398, 92, 565]),
    -- Soliera (Aether Paradise): Poipole Lv. 47: Nasty Plot, Poison Jab, Toxic, Fell Stinger
    (160023, 16051, NULL, NULL, NULL, NULL, 1, ARRAY[417, 398, 92, 565]),
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
    (160016, 16020, NULL, 160001, 'litten', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Zoroark Lv. 53: Night Daze, Hyper Voice, Grass Knot
    (160016, 16020, NULL, 160001, 'litten', NULL, 2, ARRAY[539, 304, 447]),
    -- Gladion: Silvally (Water) Lv. 55: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (160016, 16020, NULL, 160001, 'litten', NULL, 3, ARRAY[242, 306, 404, 718]),
    -- Gladion: Lucario Lv. 55: Aura Sphere, Metal Claw, Quick Attack
    (160016, 16020, NULL, 160001, 'litten', NULL, 4, ARRAY[396, 232, 98]),
    -- Gladion: Crobat Lv. 53: Acrobatics, Cross Poison
    (160016, 16020, NULL, 160001, 'popplio', NULL, 1, ARRAY[512, 440]),
    -- Gladion: Zoroark Lv. 53: Night Daze, Hyper Voice, Grass Knot
    (160016, 16020, NULL, 160001, 'popplio', NULL, 2, ARRAY[539, 304, 447]),
    -- Gladion: Silvally (Grass) Lv. 55: Crunch, Crush Claw, X-Scissor, Multi-Attack
    (160016, 16020, NULL, 160001, 'popplio', NULL, 3, ARRAY[242, 306, 404, 718]),
    -- Gladion: Lucario Lv. 53: Aura Sphere, Metal Claw, Quick Attack
    (160016, 16020, NULL, 160001, 'popplio', NULL, 4, ARRAY[396, 232, 98]),
    -- Nihilego: Nihilego Lv. 27: Clear Smog, Psywave, Headbutt, Venoshock
    (160009, 16024, NULL, NULL, NULL, NULL, 1, ARRAY[499, 149, 29, 474]),
    -- Necrozma: Necrozma (Dusk Mane) Lv. 50: Sunsteel Strike, Morning Sun, Psycho Cut, Night Slash
    (160015, 16025, NULL, NULL, NULL, NULL, 1, ARRAY[713, 234, 427, 400]),
    -- Necrozma: Necrozma (Dawn Wings) Lv. 50: Moongeist Beam, Moonlight, Psychic, Power Gem
    (160015, 16026, NULL, NULL, NULL, NULL, 1, ARRAY[714, 236, 94, 408]),
    -- Solgaleo: Solgaleo Lv. 60: Sunsteel Strike, Cosmic Power, Crunch, Zen Headbutt
    (160024, 16027, NULL, NULL, NULL, NULL, 1, ARRAY[713, 322, 242, 428]),
    -- Lunala: Lunala Lv. 60: Moongeist Beam, Cosmic Power, Night Daze, Moonblast
    (160024, 16028, NULL, NULL, NULL, NULL, 1, ARRAY[714, 322, 539, 585]),
    -- Necrozma: Necrozma Lv. 65: Photon Geyser, Iron Defense, Power Gem, Night Slash
    (160025, 16029, NULL, NULL, NULL, NULL, 1, ARRAY[722, 334, 408, 400]),
    -- Tapu Koko: Tapu Koko Lv. 60: Nature's Madness, Discharge, Agility, Electro Ball
    (160026, 16030, NULL, NULL, NULL, NULL, 1, ARRAY[717, 435, 97, 486]),
    -- Tapu Lele: Tapu Lele Lv. 60: Nature's Madness, Extrasensory, Flatter, Moonblast
    (160027, 16031, NULL, NULL, NULL, NULL, 1, ARRAY[717, 326, 260, 585]),
    -- Tapu Bulu: Tapu Bulu Lv. 60: Nature's Madness, Zen Headbutt, Megahorn, Skull Bash
    (160028, 16032, NULL, NULL, NULL, NULL, 1, ARRAY[717, 428, 224, 130]),
    -- Tapu Fini: Tapu Fini Lv. 60: Nature's Madness, Muddy Water, Aqua Ring, Hydro Pump
    (160029, 16033, NULL, NULL, NULL, NULL, 1, ARRAY[717, 330, 392, 56]),
    -- Zygarde: Zygarde Lv. 60: Land's Wrath, Glare, Safeguard, Dragon Breath
    (160030, 16034, NULL, NULL, NULL, NULL, 1, ARRAY[616, 137, 219, 225]),
    -- Blacephalon: Blacephalon Lv. 60: Fire Blast, Shadow Ball, Trick, Mind Blown
    (160031, 16035, NULL, NULL, NULL, NULL, 1, ARRAY[126, 247, 271, 720]),
    -- Stakataka: Stakataka Lv. 60: Iron Defense, Iron Head, Rock Blast, Wide Guard
    (160031, 16036, NULL, NULL, NULL, NULL, 1, ARRAY[334, 442, 350, 469]),
    -- Totem Gumshoos, Ilima Bonus Trial: Gumshoos Lv. 60: Hyper Fang, Ice Fang, Protect, Crunch
    (160032, 16038, NULL, NULL, NULL, NULL, 1, ARRAY[158, 423, 182, 242]),
    -- Totem Gumshoos, Ilima Bonus Trial: Yungoos Lv. 58: Yawn, Mud-Slap, Torment, Super Fang
    (160032, 16038, NULL, NULL, NULL, NULL, 2, ARRAY[281, 189, 259, 162]),
    -- Totem Raticate, Ilima Bonus Trial: Alolan Raticate Lv. 60: Hyper Fang, Throat Chop, Protect, Double Team
    (160032, 16039, NULL, NULL, NULL, NULL, 1, ARRAY[158, 675, 182, 104]),
    -- Totem Raticate, Ilima Bonus Trial: Alolan Rattata Lv. 58: Super Fang, Tail Whip, Torment, Crunch
    (160032, 16039, NULL, NULL, NULL, NULL, 2, ARRAY[162, 39, 259, 242]),
    -- Dulse: Furfrou Lv. 13: Baby-Doll Eyes, Headbutt, Sand Attack, Growl
    (160004, 16050, NULL, NULL, NULL, NULL, 1, ARRAY[608, 29, 28, 45]),
    -- Soliera: Furfrou Lv. 13: Baby-Doll Eyes, Headbutt, Sand Attack, Growl
    (160004, 16051, NULL, NULL, NULL, NULL, 1, ARRAY[608, 29, 28, 45]),
    -- Dulse: Poipole Lv. 20: Venoshock, Charm, Fury Attack, Acid
    (160005, 16050, NULL, NULL, NULL, NULL, 1, ARRAY[474, 204, 31, 51]),
    -- Soliera: Poipole Lv. 20: Charm, Venoshock, Fury Attack, Acid
    (160005, 16051, NULL, NULL, NULL, NULL, 1, ARRAY[204, 474, 31, 51])
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
