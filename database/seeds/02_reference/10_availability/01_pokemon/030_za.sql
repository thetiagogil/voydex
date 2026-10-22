-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual Pokémon game-location rows for Pokémon Legends: Z-A.
-- Cross-check: Bulbapedia Pokedex membership seeds already source-verified in Voydex, plus local Voydex form scope.
-- Scope note: Source-generated seed with explicit manual overrides for supported forms, event gates, special scans, and one-time encounters.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Pokémon Legends: Z-A
-- Table: reference.pokemon_availability
-- Scope: Lumiose Pokedex availability for Pokémon Legends: Z-A.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Chikorita - Starter
  (152, 15200, 26, NULL, 3, 'Lumiose first partner Pokémon choice.'),
  -- #0001 Chikorita - Native Encounter
  (152, 15200, 26, NULL, 1, 'Also available as a Wild Zone 20 encounter.'),
  -- #0002 Bayleef - Evolution
  (153, 15300, 26, NULL, 7, NULL),
  -- #0003 Meganium - Evolution
  (154, 15400, 26, NULL, 7, NULL),
  -- #0004 Tepig - Starter
  (498, 49800, 26, NULL, 3, 'Lumiose first partner Pokémon choice.'),
  -- #0004 Tepig - Native Encounter
  (498, 49800, 26, NULL, 1, 'Also available as a Wild Zone 20 encounter.'),
  -- #0005 Pignite - Evolution
  (499, 49900, 26, NULL, 7, NULL),
  -- #0006 Emboar - Evolution
  (500, 50000, 26, NULL, 7, NULL),
  -- #0007 Totodile - Starter
  (158, 15800, 26, NULL, 3, 'Lumiose first partner Pokémon choice.'),
  -- #0007 Totodile - Native Encounter
  (158, 15800, 26, NULL, 1, 'Also available as a Wild Zone 20 encounter.'),
  -- #0008 Croconaw - Evolution
  (159, 15900, 26, NULL, 7, NULL),
  -- #0009 Feraligatr - Evolution
  (160, 16000, 26, NULL, 7, NULL),
  -- #0010 Fletchling - Native Encounter
  (661, 66100, 26, NULL, 1, NULL),
  -- #0011 Fletchinder - Native Encounter
  (662, 66200, 26, NULL, 1, NULL),
  -- #0012 Talonflame - Native Encounter
  (663, 66300, 26, NULL, 1, NULL),
  -- #0013 Bunnelby - Native Encounter
  (659, 65900, 26, NULL, 1, NULL),
  -- #0014 Diggersby - Evolution
  (660, 66000, 26, NULL, 7, NULL),
  -- #0015 Scatterbug - Native Encounter
  (664, 66400, 26, NULL, 1, NULL),
  -- #0016 Spewpa - Evolution
  (665, 66500, 26, NULL, 7, NULL),
  -- #0017 Vivillon - Native Encounter
  (666, 66600, 26, NULL, 1, 'Meadow Pattern is available as a wild encounter; non-modeled cosmetic patterns remain outside current Voydex form scope.'),
  -- #0018 Weedle - Native Encounter
  (13, 1300, 26, NULL, 1, NULL),
  -- #0019 Kakuna - Native Encounter
  (14, 1400, 26, NULL, 1, NULL),
  -- #0020 Beedrill - Native Encounter
  (15, 1500, 26, NULL, 1, NULL),
  -- #0021 Pidgey - Native Encounter
  (16, 1600, 26, NULL, 1, NULL),
  -- #0022 Pidgeotto - Native Encounter
  (17, 1700, 26, NULL, 1, NULL),
  -- #0023 Pidgeot - Native Encounter
  (18, 1800, 26, NULL, 1, NULL),
  -- #0024 Mareep - Native Encounter
  (179, 17900, 26, NULL, 1, NULL),
  -- #0025 Flaaffy - Native Encounter
  (180, 18000, 26, NULL, 1, NULL),
  -- #0026 Ampharos - Native Encounter
  (181, 18100, 26, NULL, 1, NULL),
  -- #0027 Patrat - Native Encounter
  (504, 50400, 26, NULL, 1, NULL),
  -- #0028 Watchog - Evolution
  (505, 50500, 26, NULL, 7, NULL),
  -- #0029 Budew - Native Encounter
  (406, 40600, 26, NULL, 1, NULL),
  -- #0030 Roselia - Native Encounter
  (315, 31500, 26, NULL, 1, NULL),
  -- #0031 Roserade - Native Encounter
  (407, 40700, 26, NULL, 1, NULL),
  -- #0032 Magikarp - Native Encounter
  (129, 12900, 26, NULL, 1, NULL),
  -- #0033 Gyarados - Native Encounter
  (130, 13000, 26, NULL, 1, NULL),
  -- #0034 Binacle - Native Encounter
  (688, 68800, 26, NULL, 1, NULL),
  -- #0035 Barbaracle - Native Encounter
  (689, 68900, 26, NULL, 1, NULL),
  -- #0036 Staryu - Native Encounter
  (120, 12000, 26, NULL, 1, NULL),
  -- #0037 Starmie - Native Encounter
  (121, 12100, 26, NULL, 1, NULL),
  -- #0038 Flabebe - Native Encounter
  (669, 66900, 26, NULL, 1, 'Source displays form or size variants; current Voydex scope keeps the default/planning-relevant form row here.'),
  -- #0039 Floette - Native Encounter
  (670, 67000, 26, NULL, 1, 'Standard Floette flower colors are available as wild encounters.'),
  -- #0039 Floette (Eternal Flower) - Gift
  (670, 67002, 26, NULL, 4, 'Received after the main story as a Z-A Royale reward.'),
  -- #0040 Florges - Native Encounter
  (671, 67100, 26, NULL, 1, 'Source displays form or size variants; current Voydex scope keeps the default/planning-relevant form row here.'),
  -- #0041 Skiddo - Native Encounter
  (672, 67200, 26, NULL, 1, NULL),
  -- #0042 Gogoat - Native Encounter
  (673, 67300, 26, NULL, 1, NULL),
  -- #0043 Espurr - Native Encounter
  (677, 67700, 26, NULL, 1, NULL),
  -- #0044 Meowstic - Native Encounter
  (678, 67800, 26, NULL, 1, 'Source displays form or size variants; current Voydex scope keeps the default/planning-relevant form row here.'),
  -- #0045 Litleo - Native Encounter
  (667, 66700, 26, NULL, 1, NULL),
  -- #0046 Pyroar - Native Encounter
  (668, 66800, 26, NULL, 1, 'Source displays form or size variants; current Voydex scope keeps the default/planning-relevant form row here.'),
  -- #0047 Pancham - Native Encounter
  (674, 67400, 26, NULL, 1, NULL),
  -- #0048 Pangoro - Evolution
  (675, 67500, 26, NULL, 7, NULL),
  -- #0049 Trubbish - Native Encounter
  (568, 56800, 26, NULL, 1, NULL),
  -- #0050 Garbodor - Evolution
  (569, 56900, 26, NULL, 7, NULL),
  -- #0051 Dedenne - Native Encounter
  (702, 70200, 26, NULL, 1, NULL),
  -- #0052 Pichu - Native Encounter
  (172, 17200, 26, NULL, 1, NULL),
  -- #0053 Pikachu - Native Encounter
  (25, 2500, 26, NULL, 1, 'Default Pikachu is encounterable; cap forms remain outside current Voydex form scope.'),
  -- #0054 Raichu - Native Encounter
  (26, 2600, 26, NULL, 1, 'Kantonian Raichu is available as a Wild Zone 20 encounter.'),
  -- #0054 Alolan Raichu - In-Game Trade
  (26, 2601, 26, NULL, 5, 'Alolan Raichu is available through an NPC trade for Kantonian Raichu during Side Mission 108.'),
  -- #0055 Cleffa - Native Encounter
  (173, 17300, 26, NULL, 1, NULL),
  -- #0056 Clefairy - Native Encounter
  (35, 3500, 26, NULL, 1, NULL),
  -- #0057 Clefable - Native Encounter
  (36, 3600, 26, NULL, 1, NULL),
  -- #0058 Spinarak - Native Encounter
  (167, 16700, 26, NULL, 1, NULL),
  -- #0059 Ariados - Native Encounter
  (168, 16800, 26, NULL, 1, NULL),
  -- #0060 Ekans - Native Encounter
  (23, 2300, 26, NULL, 1, NULL),
  -- #0061 Arbok - Native Encounter
  (24, 2400, 26, NULL, 1, NULL),
  -- #0062 Abra - Native Encounter
  (63, 6300, 26, NULL, 1, NULL),
  -- #0063 Kadabra - Native Encounter
  (64, 6400, 26, NULL, 1, NULL),
  -- #0064 Alakazam - Native Encounter
  (65, 6500, 26, NULL, 1, NULL),
  -- #0065 Gastly - Native Encounter
  (92, 9200, 26, NULL, 1, NULL),
  -- #0066 Haunter - Native Encounter
  (93, 9300, 26, NULL, 1, NULL),
  -- #0067 Gengar - Native Encounter
  (94, 9400, 26, NULL, 1, NULL),
  -- #0068 Venipede - Native Encounter
  (543, 54300, 26, NULL, 1, NULL),
  -- #0069 Whirlipede - Native Encounter
  (544, 54400, 26, NULL, 1, NULL),
  -- #0070 Scolipede - Native Encounter
  (545, 54500, 26, NULL, 1, NULL),
  -- #0071 Honedge - Native Encounter
  (679, 67900, 26, NULL, 1, NULL),
  -- #0072 Doublade - Native Encounter
  (680, 68000, 26, NULL, 1, NULL),
  -- #0073 Aegislash - Native Encounter
  (681, 68100, 26, NULL, 1, NULL),
  -- #0074 Bellsprout - Native Encounter
  (69, 6900, 26, NULL, 1, NULL),
  -- #0075 Weepinbell - Native Encounter
  (70, 7000, 26, NULL, 1, NULL),
  -- #0076 Victreebel - Native Encounter
  (71, 7100, 26, NULL, 1, NULL),
  -- #0077 Pansage - Native Encounter
  (511, 51100, 26, NULL, 1, NULL),
  -- #0078 Simisage - Native Encounter
  (512, 51200, 26, NULL, 1, NULL),
  -- #0079 Pansear - Native Encounter
  (513, 51300, 26, NULL, 1, NULL),
  -- #0080 Simisear - Native Encounter
  (514, 51400, 26, NULL, 1, NULL),
  -- #0081 Panpour - Native Encounter
  (515, 51500, 26, NULL, 1, NULL),
  -- #0082 Simipour - Native Encounter
  (516, 51600, 26, NULL, 1, NULL),
  -- #0083 Meditite - Native Encounter
  (307, 30700, 26, NULL, 1, NULL),
  -- #0084 Medicham - Native Encounter
  (308, 30800, 26, NULL, 1, NULL),
  -- #0085 Electrike - Native Encounter
  (309, 30900, 26, NULL, 1, NULL),
  -- #0086 Manectric - Native Encounter
  (310, 31000, 26, NULL, 1, NULL),
  -- #0087 Ralts - Native Encounter
  (280, 28000, 26, NULL, 1, NULL),
  -- #0088 Kirlia - Evolution
  (281, 28100, 26, NULL, 7, NULL),
  -- #0089 Gardevoir - Native Encounter
  (282, 28200, 26, NULL, 1, NULL),
  -- #0090 Gallade - Evolution
  (475, 47500, 26, NULL, 7, NULL),
  -- #0091 Houndour - Native Encounter
  (228, 22800, 26, NULL, 1, NULL),
  -- #0092 Houndoom - Native Encounter
  (229, 22900, 26, NULL, 1, NULL),
  -- #0093 Swablu - Native Encounter
  (333, 33300, 26, NULL, 1, NULL),
  -- #0094 Altaria - Native Encounter
  (334, 33400, 26, NULL, 1, NULL),
  -- #0095 Audino - Native Encounter
  (531, 53100, 26, NULL, 1, NULL),
  -- #0096 Spritzee - Native Encounter
  (682, 68200, 26, NULL, 1, NULL),
  -- #0097 Aromatisse - Evolution
  (683, 68300, 26, NULL, 7, NULL),
  -- #0098 Swirlix - Native Encounter
  (684, 68400, 26, NULL, 1, NULL),
  -- #0099 Slurpuff - Evolution
  (685, 68500, 26, NULL, 7, NULL),
  -- #0100 Eevee - Native Encounter
  (133, 13300, 26, NULL, 1, NULL),
  -- #0101 Vaporeon - Native Encounter
  (134, 13400, 26, NULL, 1, NULL),
  -- #0102 Jolteon - Native Encounter
  (135, 13500, 26, NULL, 1, NULL),
  -- #0103 Flareon - Native Encounter
  (136, 13600, 26, NULL, 1, NULL),
  -- #0104 Espeon - Evolution
  (196, 19600, 26, NULL, 7, NULL),
  -- #0105 Umbreon - Evolution
  (197, 19700, 26, NULL, 7, NULL),
  -- #0106 Leafeon - Native Encounter
  (470, 47000, 26, NULL, 1, NULL),
  -- #0107 Glaceon - Native Encounter
  (471, 47100, 26, NULL, 1, NULL),
  -- #0108 Sylveon - Native Encounter
  (700, 70000, 26, NULL, 1, NULL),
  -- #0109 Buneary - Native Encounter
  (427, 42700, 26, NULL, 1, NULL),
  -- #0110 Lopunny - Native Encounter
  (428, 42800, 26, NULL, 1, NULL),
  -- #0111 Shuppet - Native Encounter
  (353, 35300, 26, NULL, 1, NULL),
  -- #0112 Banette - Native Encounter
  (354, 35400, 26, NULL, 1, NULL),
  -- #0113 Vanillite - Native Encounter
  (582, 58200, 26, NULL, 1, NULL),
  -- #0114 Vanillish - Evolution
  (583, 58300, 26, NULL, 7, NULL),
  -- #0115 Vanilluxe - Native Encounter
  (584, 58400, 26, NULL, 1, NULL),
  -- #0116 Numel - Native Encounter
  (322, 32200, 26, NULL, 1, NULL),
  -- #0117 Camerupt - Native Encounter
  (323, 32300, 26, NULL, 1, NULL),
  -- #0118 Hippopotas - Native Encounter
  (449, 44900, 26, NULL, 1, NULL),
  -- #0119 Hippowdon - Native Encounter
  (450, 45000, 26, NULL, 1, NULL),
  -- #0120 Drilbur - Native Encounter
  (529, 52900, 26, NULL, 1, NULL),
  -- #0121 Excadrill - Native Encounter
  (530, 53000, 26, NULL, 1, NULL),
  -- #0122 Sandile - Native Encounter
  (551, 55100, 26, NULL, 1, NULL),
  -- #0123 Krokorok - Native Encounter
  (552, 55200, 26, NULL, 1, NULL),
  -- #0124 Krookodile - Native Encounter
  (553, 55300, 26, NULL, 1, NULL),
  -- #0125 Machop - Native Encounter
  (66, 6600, 26, NULL, 1, NULL),
  -- #0126 Machoke - Native Encounter
  (67, 6700, 26, NULL, 1, NULL),
  -- #0127 Machamp - Native Encounter
  (68, 6800, 26, NULL, 1, NULL),
  -- #0128 Gible - Native Encounter
  (443, 44300, 26, NULL, 1, NULL),
  -- #0129 Gabite - Evolution
  (444, 44400, 26, NULL, 7, NULL),
  -- #0130 Garchomp - Native Encounter
  (445, 44500, 26, NULL, 1, NULL),
  -- #0131 Carbink - Native Encounter
  (703, 70300, 26, NULL, 1, 'Wild encounters are available; one event-gated side mission source is source-visible but not modeled as a separate row.'),
  -- #0132 Sableye - Native Encounter
  (302, 30200, 26, NULL, 1, NULL),
  -- #0133 Mawile - Native Encounter
  (303, 30300, 26, NULL, 1, NULL),
  -- #0134 Absol - Native Encounter
  (359, 35900, 26, NULL, 1, 'Available as wild encounters; one Main Mission reward source is source-visible but not modeled as a separate row.'),
  -- #0135 Riolu - Native Encounter
  (447, 44700, 26, NULL, 1, 'Wild encounter source is available; NPC trade source is source-visible but not modeled as a separate default-form row.'),
  -- #0136 Lucario - Evolution
  (448, 44800, 26, NULL, 7, NULL),
  -- #0137 Slowpoke - Native Encounter
  (79, 7900, 26, NULL, 1, 'Kantonian Slowpoke is available as a wild encounter.'),
  -- #0137 Galarian Slowpoke - In-Game Trade
  (79, 7901, 26, NULL, 5, 'Galarian Slowpoke is available through an NPC trade for Kantonian Slowpoke during Side Mission 39.'),
  -- #0138 Slowbro - Evolution
  (80, 8000, 26, NULL, 7, 'Kantonian Slowbro evolves from Kantonian Slowpoke; it is also listed as a wild encounter.'),
  -- #0138 Galarian Slowbro - Evolution
  (80, 8002, 26, NULL, 7, 'Galarian Slowbro evolves from Galarian Slowpoke.'),
  -- #0139 Slowking - Evolution
  (199, 19900, 26, NULL, 7, 'Johtonian Slowking evolves from Slowpoke.'),
  -- #0139 Galarian Slowking - Evolution
  (199, 19901, 26, NULL, 7, 'Galarian Slowking evolves from Galarian Slowpoke.'),
  -- #0140 Carvanha - Native Encounter
  (318, 31800, 26, NULL, 1, NULL),
  -- #0141 Sharpedo - Native Encounter
  (319, 31900, 26, NULL, 1, NULL),
  -- #0142 Tynamo - Native Encounter
  (602, 60200, 26, NULL, 1, NULL),
  -- #0143 Eelektrik - Evolution
  (603, 60300, 26, NULL, 7, NULL),
  -- #0144 Eelektross - Native Encounter
  (604, 60400, 26, NULL, 1, NULL),
  -- #0145 Dratini - Native Encounter
  (147, 14700, 26, NULL, 1, NULL),
  -- #0146 Dragonair - Native Encounter
  (148, 14800, 26, NULL, 1, NULL),
  -- #0147 Dragonite - Native Encounter
  (149, 14900, 26, NULL, 1, NULL),
  -- #0148 Bulbasaur - Gift
  (1, 100, 26, NULL, 4, 'Received from Mable during Side Mission 22.'),
  -- #0148 Bulbasaur - Native Encounter
  (1, 100, 26, NULL, 1, 'Also available as a Wild Zone 20 encounter.'),
  -- #0149 Ivysaur - Evolution
  (2, 200, 26, NULL, 7, NULL),
  -- #0150 Venusaur - Evolution
  (3, 300, 26, NULL, 7, NULL),
  -- #0151 Charmander - Gift
  (4, 400, 26, NULL, 4, 'Received from Mable during Side Mission 22.'),
  -- #0151 Charmander - Native Encounter
  (4, 400, 26, NULL, 1, 'Also available as a Wild Zone 20 encounter.'),
  -- #0152 Charmeleon - Evolution
  (5, 500, 26, NULL, 7, NULL),
  -- #0153 Charizard - Evolution
  (6, 600, 26, NULL, 7, NULL),
  -- #0154 Squirtle - Gift
  (7, 700, 26, NULL, 4, 'Received from Mable during Side Mission 22.'),
  -- #0154 Squirtle - Native Encounter
  (7, 700, 26, NULL, 1, 'Also available as a Wild Zone 20 encounter.'),
  -- #0155 Wartortle - Evolution
  (8, 800, 26, NULL, 7, NULL),
  -- #0156 Blastoise - Evolution
  (9, 900, 26, NULL, 7, NULL),
  -- #0157 Stunfisk - Native Encounter
  (618, 61800, 26, NULL, 1, 'Unovan Stunfisk is available as a wild encounter.'),
  -- #0157 Galarian Stunfisk - Static Encounter
  (618, 61801, 26, NULL, 2, 'Galarian Stunfisk is a one-time Side Mission 72 encounter.'),
  -- #0158 Furfrou - Native Encounter
  (676, 67600, 26, NULL, 1, NULL),
  -- #0159 Inkay - Native Encounter
  (686, 68600, 26, NULL, 1, NULL),
  -- #0160 Malamar - Native Encounter
  (687, 68700, 26, NULL, 1, NULL),
  -- #0161 Skrelp - Native Encounter
  (690, 69000, 26, NULL, 1, NULL),
  -- #0162 Dragalge - Native Encounter
  (691, 69100, 26, NULL, 1, NULL),
  -- #0163 Clauncher - Native Encounter
  (692, 69200, 26, NULL, 1, NULL),
  -- #0164 Clawitzer - Native Encounter
  (693, 69300, 26, NULL, 1, NULL),
  -- #0165 Goomy - Native Encounter
  (704, 70400, 26, NULL, 1, NULL),
  -- #0166 Sliggoo - Native Encounter
  (705, 70500, 26, NULL, 1, 'Kalosian Sliggoo is available as a wild encounter.'),
  -- #0166 Hisuian Sliggoo - External Trade
  (705, 70501, 26, NULL, 12, 'Hisuian Sliggoo is listed as trade-only in Legends: Z-A.'),
  -- #0167 Goodra - Native Encounter
  (706, 70600, 26, NULL, 1, 'Kalosian Goodra is available as a Wild Zone 20 encounter.'),
  -- #0167 Hisuian Goodra - External Trade
  (706, 70601, 26, NULL, 12, 'Hisuian Goodra is listed as trade-only in Legends: Z-A.'),
  -- #0168 Delibird - Native Encounter
  (225, 22500, 26, NULL, 1, NULL),
  -- #0169 Snorunt - Native Encounter
  (361, 36100, 26, NULL, 1, NULL),
  -- #0170 Glalie - Evolution
  (362, 36200, 26, NULL, 7, NULL),
  -- #0171 Froslass - Native Encounter
  (478, 47800, 26, NULL, 1, NULL),
  -- #0172 Snover - Native Encounter
  (459, 45900, 26, NULL, 1, NULL),
  -- #0173 Abomasnow - Native Encounter
  (460, 46000, 26, NULL, 1, NULL),
  -- #0174 Bergmite - Native Encounter
  (712, 71200, 26, NULL, 1, NULL),
  -- #0175 Avalugg - Native Encounter
  (713, 71300, 26, NULL, 1, 'Kalosian Avalugg is available as a Wild Zone 12 encounter.'),
  -- #0175 Hisuian Avalugg - External Trade
  (713, 71301, 26, NULL, 12, 'Hisuian Avalugg is listed as trade-only in Legends: Z-A.'),
  -- #0176 Scyther - Native Encounter
  (123, 12300, 26, NULL, 1, NULL),
  -- #0177 Scizor - Evolution
  (212, 21200, 26, NULL, 7, NULL),
  -- #0178 Pinsir - Native Encounter
  (127, 12700, 26, NULL, 1, NULL),
  -- #0179 Heracross - Native Encounter
  (214, 21400, 26, NULL, 1, 'Wild encounter source is available; NPC trade source is source-visible but not modeled as a separate default-form row.'),
  -- #0180 Emolga - Native Encounter
  (587, 58700, 26, NULL, 1, NULL),
  -- #0181 Hawlucha - Native Encounter
  (701, 70100, 26, NULL, 1, NULL),
  -- #0182 Phantump - Native Encounter
  (708, 70800, 26, NULL, 1, NULL),
  -- #0183 Trevenant - Native Encounter
  (709, 70900, 26, NULL, 1, NULL),
  -- #0184 Scraggy - Native Encounter
  (559, 55900, 26, NULL, 1, NULL),
  -- #0185 Scrafty - Native Encounter
  (560, 56000, 26, NULL, 1, NULL),
  -- #0186 Noibat - Native Encounter
  (714, 71400, 26, NULL, 1, NULL),
  -- #0187 Noivern - Native Encounter
  (715, 71500, 26, NULL, 1, NULL),
  -- #0188 Klefki - Native Encounter
  (707, 70700, 26, NULL, 1, NULL),
  -- #0189 Litwick - Native Encounter
  (607, 60700, 26, NULL, 1, NULL),
  -- #0190 Lampent - Native Encounter
  (608, 60800, 26, NULL, 1, NULL),
  -- #0191 Chandelure - Native Encounter
  (609, 60900, 26, NULL, 1, NULL),
  -- #0192 Aerodactyl - Native Encounter
  (142, 14200, 26, NULL, 1, NULL),
  -- #0193 Tyrunt - Native Encounter
  (696, 69600, 26, NULL, 1, NULL),
  -- #0194 Tyrantrum - Evolution
  (697, 69700, 26, NULL, 7, NULL),
  -- #0195 Amaura - Native Encounter
  (698, 69800, 26, NULL, 1, NULL),
  -- #0196 Aurorus - Evolution
  (699, 69900, 26, NULL, 7, NULL),
  -- #0197 Onix - Native Encounter
  (95, 9500, 26, NULL, 1, NULL),
  -- #0198 Steelix - Evolution
  (208, 20800, 26, NULL, 7, NULL),
  -- #0199 Aron - Native Encounter
  (304, 30400, 26, NULL, 1, NULL),
  -- #0200 Lairon - Native Encounter
  (305, 30500, 26, NULL, 1, NULL),
  -- #0201 Aggron - Native Encounter
  (306, 30600, 26, NULL, 1, NULL),
  -- #0202 Helioptile - Native Encounter
  (694, 69400, 26, NULL, 1, NULL),
  -- #0203 Heliolisk - Native Encounter
  (695, 69500, 26, NULL, 1, NULL),
  -- #0204 Pumpkaboo - Native Encounter
  (710, 71000, 26, NULL, 1, 'Source displays form or size variants; current Voydex scope keeps the default/planning-relevant form row here.'),
  -- #0205 Gourgeist - Native Encounter
  (711, 71100, 26, NULL, 1, 'Source displays form or size variants; current Voydex scope keeps the default/planning-relevant form row here.'),
  -- #0206 Larvitar - Native Encounter
  (246, 24600, 26, NULL, 1, NULL),
  -- #0207 Pupitar - Evolution
  (247, 24700, 26, NULL, 7, NULL),
  -- #0208 Tyranitar - Native Encounter
  (248, 24800, 26, NULL, 1, NULL),
  -- #0209 Froakie - Native Encounter
  (656, 65600, 26, NULL, 1, 'Available as a wild encounter; one side-mission source is source-visible but not modeled as a separate row.'),
  -- #0210 Frogadier - Evolution
  (657, 65700, 26, NULL, 7, NULL),
  -- #0211 Greninja - Evolution
  (658, 65800, 26, NULL, 7, NULL),
  -- #0212 Falinks - Native Encounter
  (870, 87000, 26, NULL, 1, NULL),
  -- #0213 Chespin - Native Encounter
  (650, 65000, 26, NULL, 1, 'Available as a wild encounter; one side-mission source is source-visible but not modeled as a separate row.'),
  -- #0214 Quilladin - Evolution
  (651, 65100, 26, NULL, 7, NULL),
  -- #0215 Chesnaught - Evolution
  (652, 65200, 26, NULL, 7, NULL),
  -- #0216 Skarmory - Native Encounter
  (227, 22700, 26, NULL, 1, NULL),
  -- #0217 Fennekin - Native Encounter
  (653, 65300, 26, NULL, 1, 'Available as a wild encounter; one side-mission source is source-visible but not modeled as a separate row.'),
  -- #0218 Braixen - Evolution
  (654, 65400, 26, NULL, 7, NULL),
  -- #0219 Delphox - Evolution
  (655, 65500, 26, NULL, 7, NULL),
  -- #0220 Bagon - Native Encounter
  (371, 37100, 26, NULL, 1, NULL),
  -- #0221 Shelgon - Evolution
  (372, 37200, 26, NULL, 7, NULL),
  -- #0222 Salamence - Native Encounter
  (373, 37300, 26, NULL, 1, NULL),
  -- #0223 Kangaskhan - Native Encounter
  (115, 11500, 26, NULL, 1, NULL),
  -- #0224 Drampa - Native Encounter
  (780, 78000, 26, NULL, 1, NULL),
  -- #0225 Beldum - Native Encounter
  (374, 37400, 26, NULL, 1, NULL),
  -- #0226 Metang - Native Encounter
  (375, 37500, 26, NULL, 1, NULL),
  -- #0227 Metagross - Native Encounter
  (376, 37600, 26, NULL, 1, NULL),
  -- #0228 Xerneas - Static Encounter
  (716, 71600, 26, NULL, 2, 'One-time Legendary Pokémon encounter in Legends: Z-A.'),
  -- #0229 Yveltal - Static Encounter
  (717, 71700, 26, NULL, 2, 'One-time Legendary Pokémon encounter in Legends: Z-A.'),
  -- #0230 Zygarde - Static Encounter
  (718, 71800, 26, NULL, 2, 'One-time Legendary Pokémon encounter in Legends: Z-A.'),
  -- #0231 Diancie - Event
  (719, 71900, 26, NULL, 11, 'Requires Mystery Gift activation or official event-unlocked access in Legends: Z-A.'),
  -- #0232 Mewtwo - Event
  (150, 15000, 26, NULL, 11, 'Requires Mystery Gift activation or official event-unlocked access in Legends: Z-A.');
