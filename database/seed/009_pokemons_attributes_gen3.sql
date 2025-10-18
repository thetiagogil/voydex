INSERT INTO dex.pokemon_attributes (
  species_id,
  form_id,
  generation_start_id,
  type1_id,
  type2_id,
  ability1_id,
  ability2_id,
  hidden_ability_id,
  hp,
  attack,
  defense,
  special_attack,
  special_defense,
  speed,
  special
) VALUES
  -- 0001 Bulbasaur — Grass/Poison — Overgrow / (—) / Hidden: Chlorophyll (skip hidden)
  (1, 1, 3, 12, 4, 65, NULL, NULL, 45, 49, 49, 65, 65, 45, NULL),

  -- 0002 Ivysaur
  (2, 2, 3, 12, 4, 65, NULL, NULL, 60, 62, 63, 80, 80, 60, NULL),

  -- 0003 Venusaur
  (3, 3, 3, 12, 4, 65, NULL, NULL, 80, 82, 83, 100, 100, 80, NULL),

  -- 0004 Charmander — Fire — Blaze
  (4, 4, 3, 10, NULL, 66, NULL, NULL, 39, 52, 43, 60, 50, 65, NULL),

  -- 0005 Charmeleon — Fire — Blaze
  (5, 5, 3, 10, NULL, 66, NULL, NULL, 58, 64, 58, 80, 65, 80, NULL),

  -- 0006 Charizard — Fire/Flying — Blaze
  (6, 6, 3, 10, 3, 66, NULL, NULL, 78, 84, 78, 109, 85, 100, NULL),

  -- 0007 Squirtle — Water — Torrent
  (7, 7, 3, 11, NULL, 67, NULL, NULL, 44, 48, 65, 50, 64, 43, NULL),

  -- 0008 Wartortle — Water — Torrent
  (8, 8, 3, 11, NULL, 67, NULL, NULL, 59, 63, 80, 65, 80, 58, NULL),

  -- 0009 Blastoise — Water — Torrent
  (9, 9, 3, 11, NULL, 67, NULL, NULL, 79, 83, 100, 85, 105, 78, NULL),

  -- 0010 Caterpie — Bug — Shield Dust
  (10, 10, 3, 7, NULL, 19, NULL, NULL, 45, 30, 35, 20, 20, 45, NULL),

  -- 0011 Metapod — Bug — Shed Skin
  (11, 11, 3, 7, NULL, 61, NULL, NULL, 50, 20, 55, 25, 25, 30, NULL),

  -- 0012 Butterfree — Bug/Flying — Compound Eyes
  (12, 12, 3, 7, 3, 14, NULL, NULL, 60, 45, 50, 80, 80, 70, NULL),

  -- 0013 Weedle — Bug/Poison — Shield Dust
  (13, 13, 3, 7, 4, 19, NULL, NULL, 40, 35, 30, 20, 20, 50, NULL),

  -- 0014 Kakuna — Bug/Poison — Shed Skin
  (14, 14, 3, 7, 4, 61, NULL, NULL, 45, 25, 50, 25, 25, 35, NULL),

  -- 0015 Beedrill — Bug/Poison — Swarm
  (15, 15, 3, 7, 4, 68, NULL, NULL, 65, 80, 40, 45, 80, 75, NULL),

  -- 0016 Pidgey — Normal/Flying — Keen Eye (Tangled Feet is Gen IV+; skip)
  (16, 16, 3, 1, 3, 51, NULL, NULL, 40, 45, 40, 35, 35, 56, NULL),

  -- 0017 Pidgeotto — Normal/Flying — Keen Eye
  (17, 17, 3, 1, 3, 51, NULL, NULL, 63, 60, 55, 50, 50, 71, NULL),

  -- 0018 Pidgeot — Normal/Flying — Keen Eye
  (18, 18, 3, 1, 3, 51, NULL, NULL, 83, 80, 75, 70, 70, 91, NULL),

  -- 0019 Rattata — Normal — Run Away / Guts
  (19, 19, 3, 1, NULL, 50, 62, NULL, 30, 56, 35, 25, 35, 72, NULL),

  -- 0020 Raticate — Normal — Run Away / Guts
  (20, 20, 3, 1, NULL, 50, 62, NULL, 55, 81, 60, 50, 70, 97, NULL),

  -- 0021 Spearow — Normal/Flying — Keen Eye
  (21, 21, 3, 1, 3, 51, NULL, NULL, 40, 60, 30, 31, 31, 70, NULL),

  -- 0022 Fearow — Normal/Flying — Keen Eye
  (22, 22, 3, 1, 3, 51, NULL, NULL, 65, 90, 65, 61, 61, 100, NULL),

  -- 0023 Ekans — Poison — Intimidate / Shed Skin
  (23, 23, 3, 4, NULL, 22, 61, NULL, 35, 60, 44, 40, 54, 55, NULL),

  -- 0024 Arbok — Poison — Intimidate / Shed Skin
  (24, 24, 3, 4, NULL, 22, 61, NULL, 60, 85, 69, 65, 79, 80, NULL),

  -- 0025 Pikachu — Electric — Static (Lightning Rod appears later as hidden; skip)
  (25, 25, 3, 13, NULL, 9, NULL, NULL, 35, 55, 30, 50, 40, 90, NULL),

  -- 0026 Raichu — Electric — Static
  (26, 26, 3, 13, NULL, 9, NULL, NULL, 60, 90, 55, 90, 80, 100, NULL),

  -- 0027 Sandshrew — Ground — Sand Veil
  (27, 27, 3, 5, NULL, 8, NULL, NULL, 50, 75, 85, 20, 30, 40, NULL),

  -- 0028 Sandslash — Ground — Sand Veil
  (28, 28, 3, 5, NULL, 8, NULL, NULL, 75, 100, 110, 45, 55, 65, NULL),

  -- 0029 Nidoran♀ — Poison — Poison Point
  (29, 29, 3, 4, NULL, 38, NULL, NULL, 55, 47, 52, 40, 40, 41, NULL),

  -- 0030 Nidorina — Poison — Poison Point
  (30, 30, 3, 4, NULL, 38, NULL, NULL, 70, 62, 67, 55, 55, 56, NULL),

  -- 0031 Nidoqueen — Poison/Ground — Poison Point
  (31, 31, 3, 4, 5, 38, NULL, NULL, 90, 82, 87, 75, 85, 76, NULL),

  -- 0032 Nidoran♂ — Poison — Poison Point
  (32, 32, 3, 4, NULL, 38, NULL, NULL, 46, 57, 40, 40, 40, 50, NULL),

  -- 0033 Nidorino — Poison — Poison Point
  (33, 33, 3, 4, NULL, 38, NULL, NULL, 61, 72, 57, 55, 55, 65, NULL),

  -- 0034 Nidoking — Poison/Ground — Poison Point
  (34, 34, 3, 4, 5, 38, NULL, NULL, 81, 92, 77, 85, 75, 85, NULL),

  -- 0035 Clefairy — Normal — Cute Charm
  (35, 35, 3, 1, NULL, 56, NULL, NULL, 70, 45, 48, 60, 65, 35, NULL),

  -- 0036 Clefable — Normal — Cute Charm
  (36, 36, 3, 1, NULL, 56, NULL, NULL, 95, 70, 73, 85, 90, 60, NULL),

  -- 0037 Vulpix — Fire — Flash Fire
  (37, 37, 3, 10, NULL, 18, NULL, NULL, 38, 41, 40, 50, 65, 65, NULL),

  -- 0038 Ninetales — Fire — Flash Fire
  (38, 38, 3, 10, NULL, 18, NULL, NULL, 73, 76, 75, 81, 100, 100, NULL),

  -- 0039 Jigglypuff — Normal — Cute Charm
  (39, 39, 3, 1, NULL, 56, NULL, NULL, 115, 45, 20, 45, 25, 20, NULL),

  -- 0040 Wigglytuff — Normal — Cute Charm
  (40, 40, 3, 1, NULL, 56, NULL, NULL, 140, 70, 45, 75, 50, 45, NULL),

  -- 0041 Zubat — Poison/Flying — Inner Focus
  (41, 41, 3, 4, 3, 39, NULL, NULL, 40, 45, 35, 30, 40, 55, NULL),

  -- 0042 Golbat — Poison/Flying — Inner Focus
  (42, 42, 3, 4, 3, 39, NULL, NULL, 75, 80, 70, 65, 75, 90, NULL),

  -- 0043 Oddish — Grass/Poison — Chlorophyll (second listed “Run Away” exists in your sheet, but Oddish in Gen 3 uses Chlorophyll only)
  (43, 43, 3, 12, 4, 34, NULL, NULL, 45, 50, 55, 75, 65, 30, NULL),

  -- 0044 Gloom — Grass/Poison — Chlorophyll
  (44, 44, 3, 12, 4, 34, NULL, NULL, 60, 65, 70, 85, 75, 40, NULL),

  -- 0045 Vileplume — Grass/Poison — Chlorophyll
  (45, 45, 3, 12, 4, 34, NULL, NULL, 75, 80, 85, 100, 90, 50, NULL),

  -- 0046 Paras — Bug/Grass — Effect Spore
  (46, 46, 3, 7, 12, 27, NULL, NULL, 35, 70, 55, 45, 55, 25, NULL),

  -- 0047 Parasect — Bug/Grass — Effect Spore
  (47, 47, 3, 7, 12, 27, NULL, NULL, 60, 95, 80, 60, 80, 30, NULL),

  -- 0048 Venonat — Bug/Poison — Compound Eyes
  (48, 48, 3, 7, 4, 14, NULL, NULL, 60, 55, 50, 40, 55, 45, NULL),

  -- 0049 Venomoth — Bug/Poison — Shield Dust
  (49, 49, 3, 7, 4, 19, NULL, NULL, 70, 65, 60, 90, 75, 90, NULL),

  -- 0050 Diglett — Ground — Sand Veil / Arena Trap
  (50, 50, 3, 5, NULL, 8, 71, NULL, 10, 55, 25, 35, 45, 95, NULL),

  -- 0051 Dugtrio — Ground — Sand Veil / Arena Trap
  (51, 51, 3, 5, NULL, 8, 71, NULL, 35, 80, 50, 50, 70, 120, NULL),

  -- 0052 Meowth — Normal — Pickup
  (52, 52, 3, 1, NULL, 53, NULL, NULL, 40, 45, 35, 40, 40, 90, NULL),

  -- 0053 Persian — Normal — Limber
  (53, 53, 3, 1, NULL, 7, NULL, NULL, 65, 70, 60, 65, 65, 115, NULL),

  -- 0054 Psyduck — Water — Damp / Cloud Nine
  (54, 54, 3, 11, NULL, 6, 13, NULL, 50, 52, 48, 65, 50, 55, NULL),

  -- 0055 Golduck — Water — Damp / Cloud Nine
  (55, 55, 3, 11, NULL, 6, 13, NULL, 80, 82, 78, 95, 80, 85, NULL),

  -- 0056 Mankey — Fighting — Vital Spirit
  (56, 56, 3, 2, NULL, 72, NULL, NULL, 40, 80, 35, 35, 45, 70, NULL),

  -- 0057 Primeape — Fighting — Vital Spirit
  (57, 57, 3, 2, NULL, 72, NULL, NULL, 65, 105, 60, 60, 70, 95, NULL),

  -- 0058 Growlithe — Fire — Intimidate / Flash Fire
  (58, 58, 3, 10, NULL, 22, 18, NULL, 55, 70, 45, 70, 50, 60, NULL),

  -- 0059 Arcanine — Fire — Intimidate / Flash Fire
  (59, 59, 3, 10, NULL, 22, 18, NULL, 90, 110, 80, 100, 80, 95, NULL),

  -- 0060 Poliwag — Water — Water Absorb / Damp
  (60, 60, 3, 11, NULL, 11, 6, NULL, 40, 50, 40, 40, 40, 90, NULL),

  -- 0061 Poliwhirl — Water — Water Absorb / Damp
  (61, 61, 3, 11, NULL, 11, 6, NULL, 65, 65, 65, 50, 50, 90, NULL),

  -- 0062 Poliwrath — Water/Fighting — Water Absorb / Damp
  (62, 62, 3, 11, 2, 11, 6, NULL, 90, 85, 95, 70, 90, 70, NULL),

  -- 0063 Abra — Psychic — Synchronize / Inner Focus
  (63, 63, 3, 14, NULL, 28, 39, NULL, 25, 20, 15, 105, 55, 90, NULL),

  -- 0064 Kadabra — Psychic — Synchronize / Inner Focus
  (64, 64, 3, 14, NULL, 28, 39, NULL, 40, 35, 30, 120, 70, 105, NULL),

  -- 0065 Alakazam — Psychic — Synchronize / Inner Focus
  (65, 65, 3, 14, NULL, 28, 39, NULL, 55, 50, 45, 135, 85, 120, NULL),

  -- 0066 Machop — Fighting — Guts
  (66, 66, 3, 2, NULL, 62, NULL, NULL, 70, 80, 50, 35, 35, 35, NULL),

  -- 0067 Machoke — Fighting — Guts
  (67, 67, 3, 2, NULL, 62, NULL, NULL, 80, 100, 70, 50, 60, 45, NULL),

  -- 0068 Machamp — Fighting — Guts
  (68, 68, 3, 2, NULL, 62, NULL, NULL, 90, 130, 80, 65, 85, 55, NULL),

  -- 0069 Bellsprout — Grass/Poison — Chlorophyll
  (69, 69, 3, 12, 4, 34, NULL, NULL, 50, 75, 35, 70, 30, 40, NULL),

  -- 0070 Weepinbell — Grass/Poison — Chlorophyll
  (70, 70, 3, 12, 4, 34, NULL, NULL, 65, 90, 50, 85, 45, 55, NULL),

  -- 0071 Victreebel — Grass/Poison — Chlorophyll
  (71, 71, 3, 12, 4, 34, NULL, NULL, 80, 105, 65, 100, 60, 70, NULL),

  -- 0072 Tentacool — Water/Poison — Clear Body / Liquid Ooze
  (72, 72, 3, 11, 4, 29, 64, NULL, 40, 40, 35, 50, 100, 70, NULL),

  -- 0073 Tentacruel — Water/Poison — Clear Body / Liquid Ooze
  (73, 73, 3, 11, 4, 29, 64, NULL, 80, 70, 65, 80, 120, 100, NULL),

  -- 0074 Geodude — Rock/Ground — Rock Head / Sturdy
  (74, 74, 3, 6, 5, 69, 5, NULL, 40, 80, 100, 30, 30, 20, NULL),

  -- 0075 Graveler — Rock/Ground — Rock Head / Sturdy
  (75, 75, 3, 6, 5, 69, 5, NULL, 55, 95, 115, 45, 45, 35, NULL),

  -- 0076 Golem — Rock/Ground — Rock Head / Sturdy
  (76, 76, 3, 6, 5, 69, 5, NULL, 80, 110, 130, 55, 65, 45, NULL),

  -- 0077 Ponyta — Fire — Run Away / Flash Fire
  (77, 77, 3, 10, NULL, 50, 18, NULL, 50, 85, 55, 65, 65, 90, NULL),

  -- 0078 Rapidash — Fire — Run Away / Flash Fire
  (78, 78, 3, 10, NULL, 50, 18, NULL, 65, 100, 70, 80, 80, 105, NULL),

  -- 0079 Slowpoke — Water/Psychic — Oblivious / Own Tempo
  (79, 79, 3, 11, 14, 12, 20, NULL, 90, 65, 65, 40, 40, 15, NULL),

  -- 0080 Slowbro — Water/Psychic — Oblivious / Own Tempo
  (80, 80, 3, 11, 14, 12, 20, NULL, 95, 75, 110, 100, 80, 30, NULL),

  -- 0081 Magnemite — Electric/Steel — Magnet Pull / Sturdy
  (81, 81, 3, 13, 9, 42, 5, NULL, 25, 35, 70, 95, 55, 45, NULL),

  -- 0082 Magneton — Electric/Steel — Magnet Pull / Sturdy
  (82, 82, 3, 13, 9, 42, 5, NULL, 50, 60, 95, 120, 70, 70, NULL),

  -- 0083 Farfetch’d — Normal/Flying — Keen Eye / Inner Focus
  (83, 83, 3, 1, 3, 51, 39, NULL, 52, 65, 55, 58, 62, 60, NULL),

  -- 0084 Doduo — Normal/Flying — Run Away / Early Bird
  (84, 84, 3, 1, 3, 50, 48, NULL, 35, 85, 45, 35, 35, 75, NULL),
  
  -- 0085 Dodrio — Normal/Flying — Run Away / Early Bird
  (85, 85, 3, 1, 3, 50, 48, NULL, 60, 110, 70, 60, 60, 100, NULL),
  
  -- 0086 Seel — Water — Thick Fat
  (86, 86, 3, 11, NULL, 47, NULL, NULL, 65, 45, 55, 45, 70, 45, NULL),
  
  -- 0087 Dewgong — Water/Ice — Thick Fat
  (87, 87, 3, 11, 15, 47, NULL, NULL, 90, 70, 80, 70, 95, 70, NULL),
  
  -- 0088 Grimer — Poison — Stench / Sticky Hold
  (88, 88, 3, 4, NULL, 1, 60, NULL, 80, 80, 50, 40, 50, 25, NULL),
  
  -- 0089 Muk — Poison — Stench / Sticky Hold
  (89, 89, 3, 4, NULL, 1, 60, NULL, 105, 105, 75, 65, 100, 50, NULL),
  
  -- 0090 Shellder — Water — Shell Armor
  (90, 90, 3, 11, NULL, 75, NULL, NULL, 30, 65, 100, 45, 25, 40, NULL),
  
  -- 0091 Cloyster — Water/Ice — Shell Armor
  (91, 91, 3, 11, 15, 75, NULL, NULL, 50, 95, 180, 85, 45, 70, NULL),
  
  -- 0092 Gastly — Ghost/Poison — Levitate
  (92, 92, 3, 8, 4, 26, NULL, NULL, 30, 35, 30, 100, 35, 80, NULL),
  
  -- 0093 Haunter — Ghost/Poison — Levitate
  (93, 93, 3, 8, 4, 26, NULL, NULL, 45, 50, 45, 115, 55, 95, NULL),
  
  -- 0094 Gengar — Ghost/Poison — Levitate (pre-Gen VII exception)
  (94, 94, 3, 8, 4, 26, NULL, NULL, 60, 65, 60, 130, 75, 110, NULL),
  
  -- 0095 Onix — Rock/Ground — Rock Head / Sturdy
  (95, 95, 3, 6, 5, 69, 5, NULL, 35, 45, 160, 30, 45, 70, NULL),
  
  -- 0096 Drowzee — Psychic — Insomnia
  (96, 96, 3, 14, NULL, 15, NULL, NULL, 60, 48, 45, 43, 90, 42, NULL),
  
  -- 0097 Hypno — Psychic — Insomnia
  (97, 97, 3, 14, NULL, 15, NULL, NULL, 85, 73, 70, 73, 115, 67, NULL),
  
  -- 0098 Krabby — Water — Hyper Cutter / Shell Armor
  (98, 98, 3, 11, NULL, 52, 75, NULL, 30, 105, 90, 25, 25, 50, NULL),
  
  -- 0099 Kingler — Water — Hyper Cutter / Shell Armor
  (99, 99, 3, 11, NULL, 52, 75, NULL, 55, 130, 115, 50, 50, 75, NULL),
  
  -- 0100 Voltorb — Electric — Soundproof / Static
  (100, 100, 3, 13, NULL, 43, 9, NULL, 40, 30, 50, 55, 55, 100, NULL),

  -- 0101 Electrode — Electric — Soundproof / Static
  (101, 101, 3, 13, NULL, 43, 9, NULL, 60, 50, 70, 80, 80, 140, NULL),

  -- 0102 Exeggcute — Grass/Psychic — Chlorophyll
  (102, 102, 3, 12, 14, 34, NULL, NULL, 60, 40, 80, 60, 45, 40, NULL),

  -- 0103 Exeggutor — Grass/Psychic — Chlorophyll
  (103, 103, 3, 12, 14, 34, NULL, NULL, 95, 95, 85, 125, 65, 55, NULL),

  -- 0104 Cubone — Ground — Rock Head / Lightning Rod
  (104, 104, 3, 5, NULL, 69, 31, NULL, 50, 50, 95, 40, 50, 35, NULL),

  -- 0105 Marowak — Ground — Rock Head / Lightning Rod
  (105, 105, 3, 5, NULL, 69, 31, NULL, 60, 80, 110, 50, 80, 45, NULL),

  -- 0106 Hitmonlee — Fighting — Limber
  (106, 106, 3, 2, NULL, 7, NULL, NULL, 50, 120, 53, 35, 110, 87, NULL),

  -- 0107 Hitmonchan — Fighting — Keen Eye
  (107, 107, 3, 2, NULL, 51, NULL, NULL, 50, 105, 79, 35, 110, 76, NULL),

  -- 0108 Lickitung — Normal — Own Tempo / Oblivious
  (108, 108, 3, 1, NULL, 20, 12, NULL, 90, 55, 75, 60, 75, 30, NULL),

  -- 0109 Koffing — Poison — Levitate
  (109, 109, 3, 4, NULL, 26, NULL, NULL, 40, 65, 95, 60, 45, 35, NULL),

  -- 0110 Weezing — Poison — Levitate
  (110, 110, 3, 4, NULL, 26, NULL, NULL, 65, 90, 120, 85, 70, 60, NULL),

  -- 0111 Rhyhorn — Ground/Rock — Lightning Rod / Rock Head
  (111, 111, 3, 5, 6, 31, 69, NULL, 80, 85, 95, 30, 30, 25, NULL),

  -- 0112 Rhydon — Ground/Rock — Lightning Rod / Rock Head
  (112, 112, 3, 5, 6, 31, 69, NULL, 105, 130, 120, 45, 45, 40, NULL),

  -- 0113 Chansey — Normal — Natural Cure
  (113, 113, 3, 1, NULL, 30, NULL, NULL, 250, 5, 5, 35, 105, 50, NULL),

  -- 0114 Tangela — Grass — Chlorophyll
  (114, 114, 3, 12, NULL, 34, NULL, NULL, 65, 55, 115, 100, 40, 60, NULL),

  -- 0115 Kangaskhan — Normal — Early Bird
  (115, 115, 3, 1, NULL, 48, NULL, NULL, 105, 95, 80, 40, 80, 90, NULL),

  -- 0116 Horsea — Water — Swift Swim
  (116, 116, 3, 11, NULL, 33, NULL, NULL, 30, 40, 70, 70, 25, 60, NULL),

  -- 0117 Seadra — Water — Poison Point
  (117, 117, 3, 11, NULL, 38, NULL, NULL, 55, 65, 95, 95, 45, 85, NULL),

  -- 0118 Goldeen — Water — Swift Swim / Water Veil / Lightning Rod
  (118, 118, 3, 11, NULL, 33, 41, NULL, 45, 67, 60, 35, 50, 63, NULL),

  -- 0119 Seaking — Water — Swift Swim / Water Veil / Lightning Rod
  (119, 119, 3, 11, NULL, 33, 41, NULL, 80, 92, 65, 65, 80, 68, NULL),

  -- 0120 Staryu — Water — Illuminate / Natural Cure
  (120, 120, 3, 11, NULL, 35, 30, NULL, 30, 45, 55, 70, 55, 85, NULL),

  -- 0121 Starmie — Water/Psychic — Illuminate / Natural Cure
  (121, 121, 3, 11, 14, 35, 30, NULL, 60, 75, 85, 100, 85, 115, NULL),

  -- 0122 Mr. Mime — Psychic — Soundproof
  (122, 122, 3, 14, NULL, 43, NULL, NULL, 40, 45, 65, 100, 120, 90, NULL),

  -- 0123 Scyther — Bug/Flying — Swarm
  (123, 123, 3, 7, 3, 68, NULL, NULL, 70, 110, 80, 55, 80, 105, NULL),

  -- 0124 Jynx — Ice/Psychic — Oblivious
  (124, 124, 3, 15, 14, 12, NULL, NULL, 65, 50, 35, 115, 95, 95, NULL),

  -- 0125 Electabuzz — Electric — Static
  (125, 125, 3, 13, NULL, 9, NULL, NULL, 65, 83, 57, 95, 85, 105, NULL),

  -- 0126 Magmar — Fire — Flame Body
  (126, 126, 3, 10, NULL, 49, NULL, NULL, 65, 95, 57, 100, 85, 93, NULL),

  -- 0127 Pinsir — Bug — Hyper Cutter
  (127, 127, 3, 7, NULL, 52, NULL, NULL, 65, 125, 100, 55, 70, 85, NULL),

  -- 0128 Tauros — Normal — Intimidate
  (128, 128, 3, 1, NULL, 22, NULL, NULL, 75, 100, 95, 40, 70, 110, NULL),

  -- 0129 Magikarp — Water — Swift Swim
  (129, 129, 3, 11, NULL, 33, NULL, NULL, 20, 10, 55, 15, 20, 80, NULL),

  -- 0130 Gyarados — Water/Flying — Intimidate
  (130, 130, 3, 11, 3, 22, NULL, NULL, 95, 125, 79, 60, 100, 81, NULL),

  -- 0131 Lapras — Water/Ice — Water Absorb
  (131, 131, 3, 11, 15, 11, NULL, NULL, 130, 85, 80, 85, 95, 60, NULL),

  -- 0132 Ditto — Normal — Limber
  (132, 132, 3, 1, NULL, 7, NULL, NULL, 48, 48, 48, 48, 48, 48, NULL),

  -- 0133 Eevee — Normal — Run Away
  (133, 133, 3, 1, NULL, 50, NULL, NULL, 55, 55, 50, 45, 65, 55, NULL),

  -- 0134 Vaporeon — Water — Water Absorb
  (134, 134, 3, 11, NULL, 11, NULL, NULL, 130, 65, 60, 110, 95, 65, NULL),

  -- 0135 Jolteon — Electric — Volt Absorb
  (135, 135, 3, 13, NULL, 10, NULL, NULL, 65, 65, 60, 110, 95, 130, NULL),

  -- 0136 Flareon — Fire — Flash Fire
  (136, 136, 3, 10, NULL, 18, NULL, NULL, 65, 130, 60, 95, 110, 65, NULL),

  -- 0137 Porygon — Normal — Trace
  (137, 137, 3, 1, NULL, 36, NULL, NULL, 65, 60, 70, 85, 75, 40, NULL),

  -- 0138 Omanyte — Rock/Water — Swift Swim
  (138, 138, 3, 6, 11, 33, NULL, NULL, 35, 40, 100, 90, 55, 35, NULL),

  -- 0139 Omastar — Rock/Water — Swift Swim
  (139, 139, 3, 6, 11, 33, NULL, NULL, 70, 60, 125, 115, 70, 55, NULL),

  -- 0140 Kabuto — Rock/Water — Swift Swim / Battle Armor
  (140, 140, 3, 6, 11, 33, 4, NULL, 30, 80, 90, 55, 45, 55, NULL),

  -- 0141 Kabutops — Rock/Water — Swift Swim / Battle Armor
  (141, 141, 3, 6, 11, 33, 4, NULL, 60, 115, 105, 65, 70, 80, NULL),

  -- 0142 Aerodactyl — Rock/Flying — Rock Head / Pressure
  (142, 142, 3, 6, 3, 69, 46, NULL, 80, 105, 65, 60, 75, 130, NULL),

  -- 0143 Snorlax — Normal — Immunity / Thick Fat
  (143, 143, 3, 1, NULL, 17, 47, NULL, 160, 110, 65, 65, 110, 30, NULL),

  -- 0144 Articuno — Ice/Flying — Pressure
  (144, 144, 3, 15, 3, 46, NULL, NULL, 90, 85, 100, 95, 125, 85, NULL),

  -- 0145 Zapdos — Electric/Flying — Pressure
  (145, 145, 3, 13, 3, 46, NULL, NULL, 90, 90, 85, 125, 90, 100, NULL),

  -- 0146 Moltres — Fire/Flying — Pressure
  (146, 146, 3, 10, 3, 46, NULL, NULL, 90, 100, 90, 125, 85, 90, NULL),

  -- 0147 Dratini — Dragon — Shed Skin
  (147, 147, 3, 16, NULL, 61, NULL, NULL, 41, 64, 45, 50, 50, 50, NULL),

  -- 0148 Dragonair — Dragon — Shed Skin
  (148, 148, 3, 16, NULL, 61, NULL, NULL, 61, 84, 65, 70, 70, 70, NULL),

  -- 0149 Dragonite — Dragon/Flying — Inner Focus
  (149, 149, 3, 16, 3, 39, NULL, NULL, 91, 134, 95, 100, 100, 80, NULL),

  -- 0150 Mewtwo — Psychic — Pressure
  (150, 150, 3, 14, NULL, 46, NULL, NULL, 106, 110, 90, 154, 90, 130, NULL),

  -- 0151 Mew — Psychic — Synchronize
  (151, 151, 3, 14, NULL, 28, NULL, NULL, 100, 100, 100, 100, 100, 100, NULL),

   -- 0152 Chikorita — Grass — Overgrow
  (152, 152, 3, 12, NULL, 65, NULL, NULL, 45, 49, 65, 49, 65, 45, NULL),

  -- 0153 Bayleef — Grass — Overgrow
  (153, 153, 3, 12, NULL, 65, NULL, NULL, 60, 62, 80, 63, 80, 60, NULL),

  -- 0154 Meganium — Grass — Overgrow
  (154, 154, 3, 12, NULL, 65, NULL, NULL, 80, 82, 100, 83, 100, 80, NULL),

  -- 0155 Cyndaquil — Fire — Blaze
  (155, 155, 3, 10, NULL, 66, NULL, NULL, 39, 52, 43, 60, 50, 65, NULL),

  -- 0156 Quilava — Fire — Blaze
  (156, 156, 3, 10, NULL, 66, NULL, NULL, 58, 64, 58, 80, 65, 80, NULL),

  -- 0157 Typhlosion — Fire — Blaze
  (157, 157, 3, 10, NULL, 66, NULL, NULL, 78, 84, 78, 109, 85, 100, NULL),

  -- 0158 Totodile — Water — Torrent
  (158, 158, 3, 11, NULL, 67, NULL, NULL, 50, 65, 64, 44, 48, 43, NULL),

  -- 0159 Croconaw — Water — Torrent
  (159, 159, 3, 11, NULL, 67, NULL, NULL, 65, 80, 80, 59, 63, 58, NULL),

  -- 0160 Feraligatr — Water — Torrent
  (160, 160, 3, 11, NULL, 67, NULL, NULL, 85, 105, 100, 79, 83, 78, NULL),

  -- 0161 Sentret — Normal — Run Away / Keen Eye
  (161, 161, 3, 1, NULL, 50, 51, NULL, 35, 46, 34, 35, 45, 20, NULL),

  -- 0162 Furret — Normal — Run Away / Keen Eye
  (162, 162, 3, 1, NULL, 50, 51, NULL, 85, 76, 64, 45, 55, 90, NULL),

  -- 0163 Hoothoot — Normal/Flying — Insomnia / Keen Eye
  (163, 163, 3, 1, 3, 15, 51, NULL, 60, 30, 30, 36, 56, 50, NULL),

  -- 0164 Noctowl — Normal/Flying — Insomnia / Keen Eye
  (164, 164, 3, 1, 3, 15, 51, NULL, 100, 50, 50, 76, 96, 70, NULL),

  -- 0165 Ledyba — Bug/Flying — Swarm / Early Bird
  (165, 165, 3, 7, 3, 68, 48, NULL, 40, 20, 30, 40, 80, 55, NULL),

  -- 0166 Ledian — Bug/Flying — Swarm / Early Bird
  (166, 166, 3, 7, 3, 68, 48, NULL, 55, 35, 50, 55, 110, 85, NULL),

  -- 0167 Spinarak — Bug/Poison — Swarm / Insomnia
  (167, 167, 3, 7, 4, 68, 15, NULL, 40, 60, 40, 40, 40, 30, NULL),

  -- 0168 Ariados — Bug/Poison — Swarm / Insomnia
  (168, 168, 3, 7, 4, 68, 15, NULL, 70, 90, 70, 60, 60, 40, NULL),

  -- 0169 Crobat — Poison/Flying — Inner Focus
  (169, 169, 3, 4, 3, 39, NULL, NULL, 85, 90, 80, 70, 80, 130, NULL),

  -- 0170 Chinchou — Water/Electric — Volt Absorb / Illuminate
  (170, 170, 3, 11, 13, 10, 35, NULL, 75, 38, 38, 56, 56, 67, NULL),

  -- 0171 Lanturn — Water/Electric — Volt Absorb / Illuminate
  (171, 171, 3, 11, 13, 10, 35, NULL, 125, 58, 58, 76, 76, 67, NULL),

  -- 0172 Pichu — Electric — Static
  (172, 172, 3, 13, NULL, 9, NULL, NULL, 20, 40, 15, 35, 35, 60, NULL),

  -- 0173 Cleffa — Normal — Cute Charm
  (173, 173, 3, 1, NULL, 56, NULL, NULL, 50, 25, 28, 45, 55, 15, NULL),

  -- 0174 Igglybuff — Normal — Cute Charm
  (174, 174, 3, 1, NULL, 56, NULL, NULL, 90, 30, 15, 40, 20, 15, NULL),

  -- 0175 Togepi — Normal — Hustle / Serene Grace
  (175, 175, 3, 1, NULL, 55, 32, NULL, 35, 20, 65, 40, 65, 20, NULL),

  -- 0176 Togetic — Normal/Flying — Hustle / Serene Grace
  (176, 176, 3, 1, 3, 55, 32, NULL, 55, 40, 85, 80, 105, 40, NULL),

  -- 0177 Natu — Psychic/Flying — Synchronize / Early Bird
  (177, 177, 3, 14, 3, 28, 48, NULL, 40, 50, 45, 70, 45, 70, NULL),

  -- 0178 Xatu — Psychic/Flying — Synchronize / Early Bird
  (178, 178, 3, 14, 3, 28, 48, NULL, 65, 75, 70, 95, 70, 95, NULL),

  -- 0179 Mareep — Electric — Static / Plus
  (179, 179, 3, 13, NULL, 9, 57, NULL, 55, 40, 40, 65, 45, 35, NULL),

  -- 0180 Flaaffy — Electric — Static / Plus
  (180, 180, 3, 13, NULL, 9, 57, NULL, 70, 55, 55, 80, 60, 45, NULL),

  -- 0181 Ampharos — Electric — Static / Plus
  (181, 181, 3, 13, NULL, 9, 57, NULL, 90, 75, 75, 115, 90, 55, NULL),

  -- 0182 Bellossom — Grass — Chlorophyll
  (182, 182, 3, 12, NULL, 34, NULL, NULL, 75, 80, 85, 90, 100, 50, NULL),

  -- 0183 Marill — Water — Thick Fat / Huge Power
  (183, 183, 3, 11, NULL, 47, 37, NULL, 70, 20, 50, 20, 50, 40, NULL),

  -- 0184 Azumarill — Water — Thick Fat / Huge Power
  (184, 184, 3, 11, NULL, 47, 37, NULL, 100, 50, 80, 50, 80, 50, NULL),

  -- 0185 Sudowoodo — Rock — Sturdy / Rock Head
  (185, 185, 3, 6, NULL, 5, 69, NULL, 70, 100, 115, 30, 65, 30, NULL),

  -- 0186 Politoed — Water — Drizzle? (No — Gen 3 ability set is Water Absorb / Damp alt line? For Politoed in Gen 3: Water Absorb / Damp)
  (186, 186, 3, 11, NULL, 11, 6, NULL, 90, 75, 75, 90, 100, 70, NULL),

  -- 0187 Hoppip — Grass/Flying — Chlorophyll
  (187, 187, 3, 12, 3, 34, NULL, NULL, 35, 35, 40, 35, 55, 50, NULL),

  -- 0188 Skiploom — Grass/Flying — Chlorophyll
  (188, 188, 3, 12, 3, 34, NULL, NULL, 55, 45, 50, 45, 65, 80, NULL),

  -- 0189 Jumpluff — Grass/Flying — Chlorophyll
  (189, 189, 3, 12, 3, 34, NULL, NULL, 75, 55, 70, 55, 85, 110, NULL),

  -- 0190 Aipom — Normal — Run Away / Pickup
  (190, 190, 3, 1, NULL, 50, 53, NULL, 55, 70, 55, 40, 55, 85, NULL),

    -- 0191 Sunkern — Grass — Chlorophyll
  (191, 191, 3, 12, NULL, 34, NULL, NULL, 30, 30, 30, 30, 30, 30, NULL),

  -- 0192 Sunflora — Grass — Chlorophyll
  (192, 192, 3, 12, NULL, 34, NULL, NULL, 75, 75, 55, 105, 85, 30, NULL),

  -- 0193 Yanma — Bug/Flying — Speed Boost / Compound Eyes
  (193, 193, 3, 7, 3, 3, 14, NULL, 65, 65, 45, 75, 45, 95, NULL),

  -- 0194 Wooper — Water/Ground — Damp / Water Absorb
  (194, 194, 3, 11, 5, 6, 11, NULL, 55, 45, 45, 25, 25, 15, NULL),

  -- 0195 Quagsire — Water/Ground — Damp / Water Absorb
  (195, 195, 3, 11, 5, 6, 11, NULL, 95, 85, 85, 65, 65, 35, NULL),

  -- 0196 Espeon — Psychic — Synchronize
  (196, 196, 3, 14, NULL, 28, NULL, NULL, 65, 65, 60, 130, 95, 110, NULL),

  -- 0197 Umbreon — Dark — Synchronize
  (197, 197, 3, 17, NULL, 28, NULL, NULL, 95, 65, 110, 60, 130, 65, NULL),

  -- 0198 Murkrow — Dark/Flying — Insomnia
  (198, 198, 3, 17, 3, 15, NULL, NULL, 60, 85, 42, 85, 42, 91, NULL),

  -- 0199 Slowking — Water/Psychic — Oblivious / Own Tempo
  (199, 199, 3, 11, 14, 12, 20, NULL, 95, 75, 80, 100, 110, 30, NULL),

  -- 0200 Misdreavus — Ghost — Levitate
  (200, 200, 3, 8, NULL, 26, NULL, NULL, 60, 60, 60, 85, 85, 85, NULL),

  -- 0201 Unown — Psychic — Levitate
  (201, 201, 3, 14, NULL, 26, NULL, NULL, 48, 72, 48, 72, 48, 48, NULL),

  -- 0202 Wobbuffet — Psychic — Shadow Tag
  (202, 202, 3, 14, NULL, 23, NULL, NULL, 190, 33, 58, 33, 58, 33, NULL),

  -- 0203 Girafarig — Normal/Psychic — Inner Focus / Early Bird
  (203, 203, 3, 1, 14, 39, 48, NULL, 70, 80, 65, 90, 65, 85, NULL),

  -- 0204 Pineco — Bug — Sturdy
  (204, 204, 3, 7, NULL, 5, NULL, NULL, 50, 65, 90, 35, 35, 15, NULL),

  -- 0205 Forretress — Bug/Steel — Sturdy
  (205, 205, 3, 7, 9, 5, NULL, NULL, 75, 90, 140, 60, 60, 40, NULL),

  -- 0206 Dunsparce — Normal — Serene Grace / Run Away
  (206, 206, 3, 1, NULL, 32, 50, NULL, 100, 70, 70, 65, 65, 45, NULL),

  -- 0207 Gligar — Ground/Flying — Hyper Cutter / Sand Veil / Immunity
  (207, 207, 3, 5, 3, 52, 8, 17, 65, 75, 105, 35, 65, 85, NULL),

  -- 0208 Steelix — Steel/Ground — Rock Head / Sturdy
  (208, 208, 3, 9, 5, 69, 5, NULL, 75, 85, 200, 55, 65, 30, NULL),

  -- 0209 Snubbull — Normal — Intimidate / Run Away
  (209, 209, 3, 1, NULL, 22, 50, NULL, 60, 80, 50, 40, 40, 30, NULL),

  -- 0210 Granbull — Normal — Intimidate
  (210, 210, 3, 1, NULL, 22, NULL, NULL, 90, 120, 75, 60, 60, 45, NULL),

  -- 0211 Qwilfish — Water/Poison — Poison Point / Swift Swim / Intimidate
  (211, 211, 3, 11, 4, 38, 33, 22, 65, 95, 75, 55, 55, 85, NULL),

  -- 0212 Scizor — Bug/Steel — Swarm
  (212, 212, 3, 7, 9, 68, NULL, NULL, 70, 130, 100, 55, 80, 65, NULL),

  -- 0213 Shuckle — Bug/Rock — Sturdy
  (213, 213, 3, 7, 6, 5, NULL, NULL, 20, 10, 230, 10, 230, 5, NULL),

  -- 0214 Heracross — Bug/Fighting — Swarm / Guts
  (214, 214, 3, 7, 2, 68, 62, NULL, 80, 125, 75, 40, 95, 85, NULL),

  -- 0215 Sneasel — Dark/Ice — Inner Focus / Keen Eye
  (215, 215, 3, 17, 15, 39, 51, NULL, 55, 95, 55, 35, 75, 115, NULL),

  -- 0216 Teddiursa — Normal — Pickup
  (216, 216, 3, 1, NULL, 53, NULL, NULL, 60, 80, 50, 50, 50, 40, NULL),

  -- 0217 Ursaring — Normal — Guts
  (217, 217, 3, 1, NULL, 62, NULL, NULL, 90, 130, 75, 75, 75, 55, NULL),

  -- 0218 Slugma — Fire — Magma Armor / Flame Body
  (218, 218, 3, 10, NULL, 40, 49, NULL, 40, 40, 40, 70, 40, 20, NULL),

  -- 0219 Magcargo — Fire/Rock — Magma Armor / Flame Body
  (219, 219, 3, 10, 6, 40, 49, NULL, 50, 50, 120, 80, 80, 30, NULL),

  -- 0220 Swinub — Ice/Ground — Oblivious
  (220, 220, 3, 15, 5, 12, NULL, NULL, 50, 50, 40, 30, 30, 50, NULL),

    -- 0221 Piloswine — Ice/Ground — Oblivious
  (221, 221, 3, 15, 5, 12, NULL, NULL, 100, 100, 80, 60, 60, 50, NULL),

  -- 0222 Corsola — Water/Rock — Hustle / Natural Cure
  (222, 222, 3, 11, 6, 55, 30, NULL, 55, 55, 85, 65, 85, 35, NULL),

  -- 0223 Remoraid — Water — Hustle
  (223, 223, 3, 11, NULL, 55, NULL, NULL, 35, 65, 35, 65, 35, 65, NULL),

  -- 0224 Octillery — Water — Suction Cups
  (224, 224, 3, 11, NULL, 21, NULL, NULL, 75, 105, 75, 105, 75, 45, NULL),

  -- 0225 Delibird — Ice/Flying — Vital Spirit / Hustle
  (225, 225, 3, 15, 3, 72, 55, NULL, 45, 55, 45, 65, 45, 75, NULL),

  -- 0226 Mantine — Water/Flying — Swift Swim / Water Absorb
  (226, 226, 3, 11, 3, 33, 11, NULL, 65, 40, 70, 80, 140, 70, NULL),

  -- 0227 Skarmory — Steel/Flying — Keen Eye / Sturdy
  (227, 227, 3, 9, 3, 51, 5, NULL, 65, 80, 140, 40, 70, 70, NULL),

  -- 0228 Houndour — Dark/Fire — Early Bird / Flash Fire
  (228, 228, 3, 17, 10, 48, 18, NULL, 45, 60, 30, 80, 50, 65, NULL),

  -- 0229 Houndoom — Dark/Fire — Early Bird / Flash Fire
  (229, 229, 3, 17, 10, 48, 18, NULL, 75, 90, 50, 110, 80, 95, NULL),

  -- 0230 Kingdra — Water/Dragon — Swift Swim
  (230, 230, 3, 11, 16, 33, NULL, NULL, 75, 95, 95, 95, 95, 85, NULL),

  -- 0231 Phanpy — Ground — Pickup
  (231, 231, 3, 5, NULL, 53, NULL, NULL, 90, 60, 60, 40, 40, 40, NULL),

  -- 0232 Donphan — Ground — Sturdy
  (232, 232, 3, 5, NULL, 5, NULL, NULL, 90, 120, 120, 60, 60, 50, NULL),

  -- 0233 Porygon2 — Normal — Trace
  (233, 233, 3, 1, NULL, 36, NULL, NULL, 85, 80, 90, 105, 95, 60, NULL),

  -- 0234 Stantler — Normal — Intimidate
  (234, 234, 3, 1, NULL, 22, NULL, NULL, 73, 95, 62, 85, 65, 85, NULL),

  -- 0235 Smeargle — Normal — Own Tempo
  (235, 235, 3, 1, NULL, 20, NULL, NULL, 55, 20, 35, 20, 45, 75, NULL),

  -- 0236 Tyrogue — Fighting — Guts
  (236, 236, 3, 2, NULL, 62, NULL, NULL, 35, 35, 35, 35, 35, 35, NULL),

  -- 0237 Hitmontop — Fighting — Intimidate
  (237, 237, 3, 2, NULL, 22, NULL, NULL, 50, 95, 95, 35, 110, 70, NULL),

  -- 0238 Smoochum — Ice/Psychic — Oblivious
  (238, 238, 3, 15, 14, 12, NULL, NULL, 45, 30, 15, 85, 65, 65, NULL),

  -- 0239 Elekid — Electric — Static
  (239, 239, 3, 13, NULL, 9, NULL, NULL, 45, 63, 37, 65, 55, 95, NULL),

  -- 0240 Magby — Fire — Flame Body
  (240, 240, 3, 10, NULL, 49, NULL, NULL, 45, 75, 37, 70, 55, 83, NULL),

  -- 0241 Miltank — Normal — Thick Fat
  (241, 241, 3, 1, NULL, 47, NULL, NULL, 95, 80, 105, 40, 70, 100, NULL),

  -- 0242 Blissey — Normal — Natural Cure / Serene Grace
  (242, 242, 3, 1, NULL, 30, 32, NULL, 255, 10, 10, 75, 135, 55, NULL),

  -- 0243 Raikou — Electric — Pressure
  (243, 243, 3, 13, NULL, 46, NULL, NULL, 90, 85, 75, 115, 100, 115, NULL),

  -- 0244 Entei — Fire — Pressure
  (244, 244, 3, 10, NULL, 46, NULL, NULL, 115, 115, 85, 90, 75, 100, NULL),

  -- 0245 Suicune — Water — Pressure
  (245, 245, 3, 11, NULL, 46, NULL, NULL, 100, 75, 115, 90, 115, 85, NULL),

  -- 0246 Larvitar — Rock/Ground — Guts
  (246, 246, 3, 6, 5, 62, NULL, NULL, 50, 64, 50, 45, 50, 41, NULL),

  -- 0247 Pupitar — Rock/Ground — Shed Skin
  (247, 247, 3, 6, 5, 61, NULL, NULL, 70, 84, 70, 65, 70, 51, NULL),

  -- 0248 Tyranitar — Rock/Dark — Sand Stream
  (248, 248, 3, 6, 17, 45, NULL, NULL, 100, 134, 110, 95, 100, 61, NULL),

  -- 0249 Lugia — Psychic/Flying — Pressure
  (249, 249, 3, 14, 3, 46, NULL, NULL, 106, 90, 130, 90, 154, 110, NULL),

  -- 0250 Ho-Oh — Fire/Flying — Pressure
  (250, 250, 3, 10, 3, 46, NULL, NULL, 106, 130, 90, 110, 154, 90, NULL),

  -- 0251 Celebi — Psychic/Grass — Natural Cure
  (251, 251, 3, 14, 12, 30, NULL, NULL, 100, 100, 100, 100, 100, 100, NULL),

   -- 0252 Treecko — Grass — Overgrow
  (252, 252, 3, 12, NULL, 65, NULL, NULL, 40, 45, 35, 65, 55, 70, NULL),

  -- 0253 Grovyle — Grass — Overgrow
  (253, 253, 3, 12, NULL, 65, NULL, NULL, 50, 65, 45, 85, 65, 95, NULL),

  -- 0254 Sceptile — Grass — Overgrow
  (254, 254, 3, 12, NULL, 65, NULL, NULL, 70, 85, 65, 105, 85, 120, NULL),

  -- 0255 Torchic — Fire — Blaze
  (255, 255, 3, 10, NULL, 66, NULL, NULL, 45, 60, 40, 70, 50, 45, NULL),

  -- 0256 Combusken — Fire/Fighting — Blaze
  (256, 256, 3, 10, 2, 66, NULL, NULL, 60, 85, 60, 85, 60, 55, NULL),

  -- 0257 Blaziken — Fire/Fighting — Blaze
  (257, 257, 3, 10, 2, 66, NULL, NULL, 80, 120, 70, 110, 70, 80, NULL),

  -- 0258 Mudkip — Water — Torrent
  (258, 258, 3, 11, NULL, 67, NULL, NULL, 50, 70, 50, 50, 50, 40, NULL),

  -- 0259 Marshtomp — Water/Ground — Torrent
  (259, 259, 3, 11, 5, 67, NULL, NULL, 70, 85, 70, 60, 70, 50, NULL),

  -- 0260 Swampert — Water/Ground — Torrent
  (260, 260, 3, 11, 5, 67, NULL, NULL, 100, 110, 90, 85, 90, 60, NULL),

  -- 0261 Poochyena — Dark — Run Away
  (261, 261, 3, 17, NULL, 50, NULL, NULL, 35, 55, 35, 30, 30, 35, NULL),

  -- 0262 Mightyena — Dark — Intimidate
  (262, 262, 3, 17, NULL, 22, NULL, NULL, 70, 90, 70, 60, 60, 70, NULL),

  -- 0263 Zigzagoon — Normal — Pickup
  (263, 263, 3, 1, NULL, 53, NULL, NULL, 38, 30, 41, 30, 41, 60, NULL),

  -- 0264 Linoone — Normal — Pickup
  (264, 264, 3, 1, NULL, 53, NULL, NULL, 78, 70, 61, 50, 61, 100, NULL),

  -- 0265 Wurmple — Bug — Shield Dust
  (265, 265, 3, 7, NULL, 19, NULL, NULL, 45, 45, 35, 20, 30, 20, NULL),

  -- 0266 Silcoon — Bug — Shed Skin
  (266, 266, 3, 7, NULL, 61, NULL, NULL, 50, 35, 55, 25, 25, 15, NULL),

  -- 0267 Beautifly — Bug/Flying — Swarm
  (267, 267, 3, 7, 3, 68, NULL, NULL, 60, 70, 50, 90, 50, 65, NULL),

  -- 0268 Cascoon — Bug — Shed Skin
  (268, 268, 3, 7, NULL, 61, NULL, NULL, 50, 35, 55, 25, 25, 15, NULL),

  -- 0269 Dustox — Bug/Poison — Shield Dust
  (269, 269, 3, 7, 4, 19, NULL, NULL, 60, 50, 70, 50, 90, 65, NULL),

  -- 0270 Lotad — Water/Grass — Swift Swim / Rain Dish
  (270, 270, 3, 11, 12, 33, 44, NULL, 40, 30, 30, 40, 50, 30, NULL),

  -- 0271 Lombre — Water/Grass — Swift Swim / Rain Dish
  (271, 271, 3, 11, 12, 33, 44, NULL, 60, 50, 50, 60, 70, 50, NULL),

  -- 0272 Ludicolo — Water/Grass — Swift Swim / Rain Dish
  (272, 272, 3, 11, 12, 33, 44, NULL, 80, 70, 70, 90, 100, 70, NULL),

  -- 0273 Seedot — Grass — Chlorophyll / Early Bird
  (273, 273, 3, 12, NULL, 34, 48, NULL, 40, 40, 50, 30, 30, 30, NULL),

  -- 0274 Nuzleaf — Grass/Dark — Chlorophyll / Early Bird
  (274, 274, 3, 12, 17, 34, 48, NULL, 70, 70, 40, 60, 40, 60, NULL),

  -- 0275 Shiftry — Grass/Dark — Chlorophyll / Early Bird  (fix you asked for)
  (275, 275, 3, 12, 17, 34, 48, NULL, 90, 100, 60, 90, 60, 80, NULL),

  -- 0276 Taillow — Normal/Flying — Guts
  (276, 276, 3, 1, 3, 62, NULL, NULL, 40, 55, 30, 30, 30, 85, NULL),

  -- 0277 Swellow — Normal/Flying — Guts
  (277, 277, 3, 1, 3, 62, NULL, NULL, 60, 85, 60, 50, 50, 125, NULL),

  -- 0278 Wingull — Water/Flying — Keen Eye / Rain Dish
  (278, 278, 3, 11, 3, 51, 44, NULL, 40, 30, 30, 55, 30, 85, NULL),

  -- 0279 Pelipper — Water/Flying — Keen Eye / Rain Dish
  (279, 279, 3, 11, 3, 51, 44, NULL, 60, 50, 100, 85, 70, 65, NULL),

  -- 0280 Ralts — Psychic — Synchronize / Trace
  (280, 280, 3, 14, NULL, 28, 36, NULL, 28, 25, 25, 45, 35, 40, NULL),

  -- 0281 Kirlia — Psychic — Synchronize / Trace
  (281, 281, 3, 14, NULL, 28, 36, NULL, 38, 35, 35, 65, 55, 50, NULL),

  -- 0282 Gardevoir — Psychic — Synchronize / Trace
  (282, 282, 3, 14, NULL, 28, 36, NULL, 68, 65, 65, 125, 115, 80, NULL),

  -- 0283 Surskit — Bug/Water — Swift Swim
  (283, 283, 3, 7, 11, 33, NULL, NULL, 40, 30, 32, 50, 52, 65, NULL),

  -- 0284 Masquerain — Bug/Flying — Intimidate
  (284, 284, 3, 7, 3, 22, NULL, NULL, 70, 60, 62, 80, 82, 60, NULL),

  -- 0285 Shroomish — Grass — Effect Spore
  (285, 285, 3, 12, NULL, 27, NULL, NULL, 60, 40, 60, 40, 60, 35, NULL),

  -- 0286 Breloom — Grass/Fighting — Effect Spore
  (286, 286, 3, 12, 2, 27, NULL, NULL, 60, 130, 80, 60, 60, 70, NULL),

  -- 0287 Slakoth — Normal — Truant
  (287, 287, 3, 1, NULL, 54, NULL, NULL, 60, 60, 60, 35, 35, 30, NULL),

  -- 0288 Vigoroth — Normal — Vital Spirit
  (288, 288, 3, 1, NULL, 72, NULL, NULL, 80, 80, 80, 55, 55, 90, NULL),

  -- 0289 Slaking — Normal — Truant
  (289, 289, 3, 1, NULL, 54, NULL, NULL, 150, 160, 100, 95, 65, 100, NULL),

  -- 0290 Nincada — Bug/Ground — Compound Eyes
  (290, 290, 3, 7, 5, 14, NULL, NULL, 31, 45, 90, 30, 30, 40, NULL),

  -- 0291 Ninjask — Bug/Flying — Speed Boost
  (291, 291, 3, 7, 3, 3, NULL, NULL, 61, 90, 45, 50, 50, 160, NULL),

  -- 0292 Shedinja — Bug/Ghost — Wonder Guard
  (292, 292, 3, 7, 8, 25, NULL, NULL, 1, 90, 45, 30, 30, 40, NULL),

  -- 0293 Whismur — Normal — Soundproof
  (293, 293, 3, 1, NULL, 43, NULL, NULL, 64, 51, 23, 51, 23, 28, NULL),

  -- 0294 Loudred — Normal — Soundproof
  (294, 294, 3, 1, NULL, 43, NULL, NULL, 84, 71, 43, 71, 43, 48, NULL),

  -- 0295 Exploud — Normal — Soundproof
  (295, 295, 3, 1, NULL, 43, NULL, NULL, 104, 91, 63, 91, 63, 68, NULL),

  -- 0296 Makuhita — Fighting — Thick Fat / Guts
  (296, 296, 3, 2, NULL, 47, 62, NULL, 72, 60, 30, 20, 30, 25, NULL),

  -- 0297 Hariyama — Fighting — Thick Fat / Guts
  (297, 297, 3, 2, NULL, 47, 62, NULL, 144, 120, 60, 40, 60, 50, NULL),

  -- 0298 Azurill — Normal — Thick Fat / Huge Power
  (298, 298, 3, 1, NULL, 47, 37, NULL, 50, 20, 40, 20, 40, 20, NULL),

  -- 0299 Nosepass — Rock — Sturdy / Magnet Pull
  (299, 299, 3, 6, NULL, 5, 42, NULL, 30, 45, 135, 45, 90, 30, NULL),

  -- 0300 Skitty — Normal — Cute Charm
  (300, 300, 3, 1, NULL, 56, NULL, NULL, 50, 45, 45, 35, 35, 50, NULL),

  -- 0301 Delcatty — Normal — Cute Charm
  (301, 301, 3, 1, NULL, 56, NULL, NULL, 70, 65, 65, 55, 55, 70, NULL),

  -- 0302 Sableye — Dark/Ghost — Keen Eye
  (302, 302, 3, 17, 8, 51, NULL, NULL, 50, 75, 75, 65, 65, 50, NULL),

  -- 0303 Mawile — Steel — Hyper Cutter / Intimidate
  (303, 303, 3, 9, NULL, 52, 22, NULL, 50, 85, 85, 55, 55, 50, NULL),

  -- 0304 Aron — Steel/Rock — Sturdy / Rock Head
  (304, 304, 3, 9, 6, 5, 69, NULL, 50, 70, 100, 40, 40, 30, NULL),

  -- 0305 Lairon — Steel/Rock — Sturdy / Rock Head
  (305, 305, 3, 9, 6, 5, 69, NULL, 60, 90, 140, 50, 50, 40, NULL),

  -- 0306 Aggron — Steel/Rock — Sturdy / Rock Head
  (306, 306, 3, 9, 6, 5, 69, NULL, 70, 110, 180, 60, 60, 50, NULL),

  -- 0307 Meditite — Fighting/Psychic — Pure Power
  (307, 307, 3, 2, 14, 74, NULL, NULL, 30, 40, 55, 40, 55, 60, NULL),

  -- 0308 Medicham — Fighting/Psychic — Pure Power
  (308, 308, 3, 2, 14, 74, NULL, NULL, 60, 60, 75, 60, 75, 80, NULL),

  -- 0309 Electrike — Electric — Static / Lightning Rod
  (309, 309, 3, 13, NULL, 9, 31, NULL, 40, 45, 40, 65, 40, 65, NULL),

  -- 0310 Manectric — Electric — Static / Lightning Rod
  (310, 310, 3, 13, NULL, 9, 31, NULL, 70, 75, 60, 105, 60, 105, NULL),

  -- 0311 Plusle — Electric — Plus
  (311, 311, 3, 13, NULL, 57, NULL, NULL, 60, 50, 40, 85, 75, 95, NULL),

  -- 0312 Minun — Electric — Minus
  (312, 312, 3, 13, NULL, 58, NULL, NULL, 60, 40, 50, 75, 85, 95, NULL),

  -- 0313 Volbeat — Bug — Illuminate / Swarm
  (313, 313, 3, 7, NULL, 35, 68, NULL, 65, 73, 55, 47, 75, 85, NULL),

  -- 0314 Illumise — Bug — Oblivious
  (314, 314, 3, 7, NULL, 12, NULL, NULL, 65, 47, 55, 73, 75, 85, NULL),

  -- 0315 Roselia — Grass/Poison — Natural Cure / Poison Point
  (315, 315, 3, 12, 4, 30, 38, NULL, 50, 60, 45, 100, 80, 65, NULL),

  -- 0316 Gulpin — Poison — Liquid Ooze / Sticky Hold
  (316, 316, 3, 4, NULL, 64, 60, NULL, 70, 43, 53, 43, 53, 40, NULL),

  -- 0317 Swalot — Poison — Liquid Ooze / Sticky Hold
  (317, 317, 3, 4, NULL, 64, 60, NULL, 100, 73, 83, 73, 83, 55, NULL),

  -- 0318 Carvanha — Water/Dark — Rough Skin
  (318, 318, 3, 11, 17, 24, NULL, NULL, 45, 90, 20, 65, 20, 65, NULL),

  -- 0319 Sharpedo — Water/Dark — Rough Skin
  (319, 319, 3, 11, 17, 24, NULL, NULL, 70, 120, 40, 95, 40, 95, NULL),

  -- 0320 Wailmer — Water — Water Veil / Oblivious
  (320, 320, 3, 11, NULL, 41, 12, NULL, 130, 70, 35, 70, 35, 60, NULL),

  -- 0321 Wailord — Water — Water Veil / Oblivious
  (321, 321, 3, 11, NULL, 41, 12, NULL, 170, 90, 45, 90, 45, 60, NULL),

  -- 0322 Numel — Fire/Ground — Oblivious
  (322, 322, 3, 10, 5, 12, NULL, NULL, 60, 60, 40, 65, 45, 35, NULL),

  -- 0323 Camerupt — Fire/Ground — Magma Armor
  (323, 323, 3, 10, 5, 40, NULL, NULL, 70, 100, 70, 105, 75, 40, NULL),

  -- 0324 Torkoal — Fire — White Smoke
  (324, 324, 3, 10, NULL, 73, NULL, NULL, 70, 85, 140, 85, 70, 20, NULL),

  -- 0325 Spoink — Psychic — Thick Fat / Own Tempo
  (325, 325, 3, 14, NULL, 47, 20, NULL, 60, 25, 35, 70, 80, 60, NULL),

  -- 0326 Grumpig — Psychic — Thick Fat / Own Tempo
  (326, 326, 3, 14, NULL, 47, 20, NULL, 80, 45, 65, 90, 110, 80, NULL),

  -- 0327 Spinda — Normal — Own Tempo
  (327, 327, 3, 1, NULL, 20, NULL, NULL, 60, 60, 60, 60, 60, 60, NULL),

  -- 0328 Trapinch — Ground — Hyper Cutter / Arena Trap
  (328, 328, 3, 5, NULL, 52, 71, NULL, 45, 100, 45, 45, 45, 10, NULL),

  -- 0329 Vibrava — Ground/Dragon — Levitate
  (329, 329, 3, 5, 16, 26, NULL, NULL, 50, 70, 50, 50, 50, 70, NULL),

  -- 0330 Flygon — Ground/Dragon — Levitate
  (330, 330, 3, 5, 16, 26, NULL, NULL, 80, 100, 80, 80, 80, 100, NULL),

  -- 0331 Cacnea — Grass — Sand Veil / Water Absorb
  (331, 331, 3, 12, NULL, 8, 11, NULL, 50, 85, 40, 85, 40, 35, NULL),

  -- 0332 Cacturne — Grass/Dark — Sand Veil / Water Absorb
  (332, 332, 3, 12, 17, 8, 11, NULL, 70, 115, 60, 115, 60, 55, NULL),

  -- 0333 Swablu — Normal/Flying — Natural Cure
  (333, 333, 3, 1, 3, 30, NULL, NULL, 45, 40, 60, 40, 75, 50, NULL),

  -- 0334 Altaria — Dragon/Flying — Natural Cure
  (334, 334, 3, 16, 3, 30, NULL, NULL, 75, 70, 90, 70, 105, 80, NULL),

  -- 0335 Zangoose — Normal — Immunity
  (335, 335, 3, 1, NULL, 17, NULL, NULL, 73, 115, 60, 60, 60, 90, NULL),

  -- 0336 Seviper — Poison — Shed Skin
  (336, 336, 3, 4, NULL, 61, NULL, NULL, 73, 100, 60, 100, 60, 65, NULL),

  -- 0337 Lunatone — Rock/Psychic — Levitate
  (337, 337, 3, 6, 14, 26, NULL, NULL, 70, 55, 65, 95, 85, 70, NULL),

  -- 0338 Solrock — Rock/Psychic — Levitate
  (338, 338, 3, 6, 14, 26, NULL, NULL, 70, 95, 85, 55, 65, 70, NULL),

  -- 0339 Barboach — Water/Ground — Oblivious
  (339, 339, 3, 11, 5, 12, NULL, NULL, 50, 48, 43, 46, 41, 60, NULL),

  -- 0340 Whiscash — Water/Ground — Oblivious
  (340, 340, 3, 11, 5, 12, NULL, NULL, 110, 78, 73, 76, 71, 60, NULL),

  -- 0341 Corphish — Water — Hyper Cutter / Shell Armor
  (341, 341, 3, 11, NULL, 52, 75, NULL, 43, 80, 65, 50, 35, 35, NULL),

  -- 0342 Crawdaunt — Water/Dark — Hyper Cutter / Shell Armor
  (342, 342, 3, 11, 17, 52, 75, NULL, 63, 120, 85, 90, 55, 55, NULL),

  -- 0343 Baltoy — Ground/Psychic — Levitate
  (343, 343, 3, 5, 14, 26, NULL, NULL, 40, 40, 55, 40, 70, 55, NULL),

  -- 0344 Claydol — Ground/Psychic — Levitate
  (344, 344, 3, 5, 14, 26, NULL, NULL, 60, 70, 105, 70, 120, 75, NULL),

  -- 0345 Lileep — Rock/Grass — Suction Cups
  (345, 345, 3, 6, 12, 21, NULL, NULL, 66, 41, 77, 61, 87, 23, NULL),

  -- 0346 Cradily — Rock/Grass — Suction Cups
  (346, 346, 3, 6, 12, 21, NULL, NULL, 86, 81, 97, 81, 107, 43, NULL),

  -- 0347 Anorith — Rock/Bug — Battle Armor
  (347, 347, 3, 6, 7, 4, NULL, NULL, 45, 95, 50, 40, 50, 75, NULL),

  -- 0348 Armaldo — Rock/Bug — Battle Armor
  (348, 348, 3, 6, 7, 4, NULL, NULL, 75, 125, 100, 70, 80, 45, NULL),

  -- 0349 Feebas — Water — Swift Swim
  (349, 349, 3, 11, NULL, 33, NULL, NULL, 20, 15, 20, 10, 55, 80, NULL),

  -- 0350 Milotic — Water — Marvel Scale
  (350, 350, 3, 11, NULL, 63, NULL, NULL, 95, 60, 79, 100, 125, 81, NULL),

  -- 0351 Castform — Normal — Forecast
  (351, 351, 3, 1, NULL, 59, NULL, NULL, 70, 70, 70, 70, 70, 70, NULL),

  -- 0352 Kecleon — Normal — Color Change
  (352, 352, 3, 1, NULL, 16, NULL, NULL, 60, 90, 70, 60, 120, 40, NULL),

  -- 0353 Shuppet — Ghost — Insomnia
  (353, 353, 3, 8, NULL, 15, NULL, NULL, 44, 75, 35, 63, 33, 45, NULL),

  -- 0354 Banette — Ghost — Insomnia
  (354, 354, 3, 8, NULL, 15, NULL, NULL, 64, 115, 65, 83, 63, 65, NULL),

  -- 0355 Duskull — Ghost — Levitate
  (355, 355, 3, 8, NULL, 26, NULL, NULL, 20, 40, 90, 30, 90, 25, NULL),

  -- 0356 Dusclops — Ghost — Pressure
  (356, 356, 3, 8, NULL, 46, NULL, NULL, 40, 70, 130, 60, 130, 25, NULL),

  -- 0357 Tropius — Grass/Flying — Chlorophyll
  (357, 357, 3, 12, 3, 34, NULL, NULL, 99, 68, 83, 72, 87, 51, NULL),

  -- 0358 Chimecho — Psychic — Levitate
  (358, 358, 3, 14, NULL, 26, NULL, NULL, 65, 50, 70, 95, 80, 65, NULL),

  -- 0359 Absol — Dark — Pressure
  (359, 359, 3, 17, NULL, 46, NULL, NULL, 65, 130, 60, 75, 60, 75, NULL),

  -- 0360 Wynaut — Psychic — Shadow Tag
  (360, 360, 3, 14, NULL, 23, NULL, NULL, 95, 23, 48, 23, 48, 23, NULL),

  -- 0361 Snorunt — Ice — Inner Focus
  (361, 361, 3, 15, NULL, 39, NULL, NULL, 50, 50, 50, 50, 50, 50, NULL),

  -- 0362 Glalie — Ice — Inner Focus
  (362, 362, 3, 15, NULL, 39, NULL, NULL, 80, 80, 80, 80, 80, 80, NULL),

  -- 0363 Spheal — Ice/Water — Thick Fat / Oblivious
  (363, 363, 3, 15, 11, 47, 12, NULL, 70, 40, 50, 55, 50, 25, NULL),

  -- 0364 Sealeo — Ice/Water — Thick Fat / Oblivious
  (364, 364, 3, 15, 11, 47, 12, NULL, 90, 60, 70, 75, 70, 45, NULL),

  -- 0365 Walrein — Ice/Water — Thick Fat / Oblivious
  (365, 365, 3, 15, 11, 47, 12, NULL, 110, 80, 90, 95, 90, 65, NULL),

  -- 0366 Clamperl — Water — Shell Armor
  (366, 366, 3, 11, NULL, 75, NULL, NULL, 35, 64, 85, 74, 55, 32, NULL),

  -- 0367 Huntail — Water — Swift Swim
  (367, 367, 3, 11, NULL, 33, NULL, NULL, 55, 104, 105, 94, 75, 52, NULL),

  -- 0368 Gorebyss — Water — Swift Swim
  (368, 368, 3, 11, NULL, 33, NULL, NULL, 55, 84, 105, 114, 75, 52, NULL),

  -- 0369 Relicanth — Water/Rock — Swift Swim / Rock Head
  (369, 369, 3, 11, 6, 33, 69, NULL, 100, 90, 130, 45, 65, 55, NULL),

  -- 0370 Luvdisc — Water — Swift Swim
  (370, 370, 3, 11, NULL, 33, NULL, NULL, 43, 30, 55, 40, 65, 97, NULL),

  -- 0371 Bagon — Dragon — Rock Head
  (371, 371, 3, 16, NULL, 69, NULL, NULL, 45, 75, 60, 40, 30, 50, NULL),

  -- 0372 Shelgon — Dragon — Rock Head
  (372, 372, 3, 16, NULL, 69, NULL, NULL, 65, 95, 100, 60, 50, 50, NULL),

  -- 0373 Salamence — Dragon/Flying — Intimidate
  (373, 373, 3, 16, 3, 22, NULL, NULL, 95, 135, 80, 110, 80, 100, NULL),

  -- 0374 Beldum — Steel/Psychic — Clear Body
  (374, 374, 3, 9, 14, 29, NULL, NULL, 40, 55, 80, 35, 60, 30, NULL),

  -- 0375 Metang — Steel/Psychic — Clear Body
  (375, 375, 3, 9, 14, 29, NULL, NULL, 60, 75, 100, 55, 80, 50, NULL),

  -- 0376 Metagross — Steel/Psychic — Clear Body
  (376, 376, 3, 9, 14, 29, NULL, NULL, 80, 135, 130, 95, 90, 70, NULL),

  -- 0377 Regirock — Rock — Clear Body
  (377, 377, 3, 6, NULL, 29, NULL, NULL, 80, 100, 200, 50, 100, 50, NULL),

  -- 0378 Regice — Ice — Clear Body
  (378, 378, 3, 15, NULL, 29, NULL, NULL, 80, 50, 100, 100, 200, 50, NULL),

  -- 0379 Registeel — Steel — Clear Body
  (379, 379, 3, 9, NULL, 29, NULL, NULL, 80, 75, 150, 75, 150, 50, NULL),

  -- 0380 Latias — Dragon/Psychic — Levitate
  (380, 380, 3, 16, 14, 26, NULL, NULL, 80, 80, 90, 110, 130, 110, NULL),

  -- 0381 Latios — Dragon/Psychic — Levitate
  (381, 381, 3, 16, 14, 26, NULL, NULL, 80, 90, 80, 130, 110, 110, NULL),

  -- 0382 Kyogre — Water — Drizzle
  (382, 382, 3, 11, NULL, 2, NULL, NULL, 100, 100, 90, 150, 140, 90, NULL),

  -- 0383 Groudon — Ground — Drought
  (383, 383, 3, 5, NULL, 70, NULL, NULL, 100, 150, 140, 100, 90, 90, NULL),

  -- 0384 Rayquaza — Dragon/Flying — Air Lock
  (384, 384, 3, 16, 3, 76, NULL, NULL, 105, 150, 90, 150, 90, 95, NULL),

  -- 0385 Jirachi — Steel/Psychic — Serene Grace
  (385, 385, 3, 9, 14, 32, NULL, NULL, 100, 100, 100, 100, 100, 100, NULL),

  -- 0386 Deoxys (Normal Forme) — Psychic — Pressure
  (386, 386, 3, 14, NULL, 46, NULL, NULL, 50, 150, 50, 150, 50, 150, NULL);