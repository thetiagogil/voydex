-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Crown Tundra Pokedex number.
-- Cross-check: PokemonDB Crown Tundra Pokedex and Serebii Sword/Shield version exclusives.
-- Scope note: The Crown Tundra optional content scope and source-visible Crown Tundra Pokedex forms only.
-- Non-dex Dynamax Adventure and compatible legendary extras are seeded separately.
-- Form policy note: battle-only, Gigantamax, cap, cosmetic, and temporary battle-state forms are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: The Crown Tundra
-- Table: reference.pokemon_availability
-- Scope: Crown Tundra Pokedex availability for Pokémon Sword/Shield Expansion Pass.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0872 Snom - Native Encounter
  (872, 87200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0873 Frosmoth - Native Encounter
  (873, 87300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0831 Wooloo - Native Encounter
  (831, 83100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0832 Dubwool - Native Encounter
  (832, 83200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0819 Skwovet - Native Encounter
  (819, 81900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0820 Greedent - Native Encounter
  (820, 82000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0221 Piloswine - Native Encounter
  (221, 22100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0473 Mamoswine - Native Encounter
  (473, 47300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0439 Mime Jr. - Native Encounter
  (439, 43900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0122 Galarian Mr. Mime - Native Encounter
  (122, 12201, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0122 Mr. Mime - In-Game Trade
  (122, 12200, 20, NULL, 5, 'Kantonian Mr. Mime is source-visible for the Crown Tundra Pokedex and is available through Sword/Shield in-game trade/form access, while Galarian Mr. Mime is the Crown-native form.'),
  -- #0866 Mr. Rime - Native Encounter
  (866, 86600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0238 Smoochum - Native Encounter
  (238, 23800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0239 Elekid - Native Encounter
  (239, 23900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0466 Electivire - Native Encounter
  (466, 46600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0240 Magby - Native Encounter
  (240, 24000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0467 Magmortar - Native Encounter
  (467, 46700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0531 Audino - Native Encounter
  (531, 53100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0582 Vanillite - Native Encounter
  (582, 58200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0583 Vanillish - Native Encounter
  (583, 58300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0584 Vanilluxe - Native Encounter
  (584, 58400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0362 Glalie - Native Encounter
  (362, 36200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0478 Froslass - Native Encounter
  (478, 47800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0461 Weavile - Native Encounter
  (461, 46100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0615 Cryogonal - Native Encounter
  (615, 61500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0459 Snover - Native Encounter
  (459, 45900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0709 Trevenant - Native Encounter
  (709, 70900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0334 Altaria - Native Encounter
  (334, 33400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0859 Impidimp - Native Encounter
  (859, 85900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0860 Morgrem - Native Encounter
  (860, 86000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0861 Grimmsnarl - Native Encounter
  (861, 86100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0856 Hatenna - Native Encounter
  (856, 85600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0857 Hattrem - Native Encounter
  (857, 85700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0858 Hatterene - Native Encounter
  (858, 85800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0036 Clefable - Native Encounter
  (36, 3600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0778 Mimikyu - Native Encounter
  (778, 77800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0442 Spiritomb - Static Encounter
  (442, 44200, 20, NULL, 2, 'Static Spiritomb encounter unlocked through the Crown Tundra tombstone side quest.'),
  -- #0607 Litwick - Native Encounter
  (607, 60700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0608 Lampent - Native Encounter
  (608, 60800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0609 Chandelure - Native Encounter
  (609, 60900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0574 Gothita - Sword - Native Encounter
  (574, 57400, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0574 Gothita - Shield - External Trade
  (574, 57400, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0575 Gothorita - Sword - Native Encounter
  (575, 57500, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0575 Gothorita - Shield - External Trade
  (575, 57500, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0576 Gothitelle - Sword - Native Encounter
  (576, 57600, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0576 Gothitelle - Shield - External Trade
  (576, 57600, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0577 Solosis - Sword - External Trade
  (577, 57700, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0577 Solosis - Shield - Native Encounter
  (577, 57700, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0578 Duosion - Sword - External Trade
  (578, 57800, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0578 Duosion - Shield - Native Encounter
  (578, 57800, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0579 Reuniclus - Sword - External Trade
  (579, 57900, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0579 Reuniclus - Shield - Native Encounter
  (579, 57900, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0532 Timburr - Native Encounter
  (532, 53200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0533 Gurdurr - Native Encounter
  (533, 53300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0534 Conkeldurr - Native Encounter
  (534, 53400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0550 Basculin - Sword - Native Encounter
  (550, 55000, 20, 31, 1, 'Red-Striped Basculin is Sword-exclusive in Sword/Shield version-exclusive source listings.'),
  -- #0550 Basculin - Shield - External Trade
  (550, 55000, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0550 Basculin (Blue-Striped) - Sword - External Trade
  (550, 55001, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0550 Basculin (Blue-Striped) - Shield - Native Encounter
  (550, 55001, 20, 32, 1, 'Blue-Striped Basculin is Shield-exclusive in Sword/Shield version-exclusive source listings.'),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0030 Nidorina - Native Encounter
  (30, 3000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0031 Nidoqueen - Native Encounter
  (31, 3100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0033 Nidorino - Native Encounter
  (33, 3300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0034 Nidoking - Native Encounter
  (34, 3400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0263 Galarian Zigzagoon - Native Encounter
  (263, 26301, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0263 Zigzagoon - Native Encounter
  (263, 26300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0264 Galarian Linoone - Native Encounter
  (264, 26401, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0264 Linoone - Native Encounter
  (264, 26400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0862 Obstagoon - Native Encounter
  (862, 86200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0134 Vaporeon - Native Encounter
  (134, 13400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0135 Jolteon - Native Encounter
  (135, 13500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0136 Flareon - Native Encounter
  (136, 13600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0197 Umbreon - Native Encounter
  (197, 19700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0196 Espeon - Native Encounter
  (196, 19600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0471 Glaceon - Native Encounter
  (471, 47100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0470 Leafeon - Native Encounter
  (470, 47000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0700 Sylveon - Native Encounter
  (700, 70000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0696 Tyrunt - Native Encounter
  (696, 69600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0697 Tyrantrum - Native Encounter
  (697, 69700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0698 Amaura - Native Encounter
  (698, 69800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0699 Aurorus - Native Encounter
  (699, 69900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0874 Stonjourner - Sword - Native Encounter
  (874, 87400, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0874 Stonjourner - Shield - External Trade
  (874, 87400, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0875 Eiscue - Sword - External Trade
  (875, 87500, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0875 Eiscue - Shield - Native Encounter
  (875, 87500, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0751 Dewpider - Native Encounter
  (751, 75100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0752 Araquanid - Native Encounter
  (752, 75200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0595 Joltik - Native Encounter
  (595, 59500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0596 Galvantula - Native Encounter
  (596, 59600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0588 Karrablast - Native Encounter
  (588, 58800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0589 Escavalier - Native Encounter
  (589, 58900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0616 Shelmet - Native Encounter
  (616, 61600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0617 Accelgor - Native Encounter
  (617, 61700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0850 Sizzlipede - Native Encounter
  (850, 85000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0851 Centiskorch - Native Encounter
  (851, 85100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0632 Durant - Native Encounter
  (632, 63200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0631 Heatmor - Native Encounter
  (631, 63100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0554 Galarian Darumaka - Sword - Native Encounter
  (554, 55401, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0554 Galarian Darumaka - Shield - External Trade
  (554, 55401, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0554 Darumaka - Sword - Raid or Special Encounter
  (554, 55400, 20, 31, 10, 'Sword-exclusive Max Raid Battle or special den source for this source-visible form.'),
  -- #0554 Darumaka - Shield - External Trade
  (554, 55400, 20, 32, 12, 'Shield requires external trade from Sword for this source-visible form.'),
  -- #0555 Galarian Darmanitan - Sword - Native Encounter
  (555, 55502, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0555 Galarian Darmanitan - Shield - External Trade
  (555, 55502, 20, 32, 12, 'Shield requires external trade from Sword for this source-visible form.'),
  -- #0555 Darmanitan - Sword - Raid or Special Encounter
  (555, 55500, 20, 31, 10, 'Sword-exclusive Max Raid Battle or special den source for this source-visible form.'),
  -- #0555 Darmanitan - Shield - External Trade
  (555, 55500, 20, 32, 12, 'Shield requires external trade from Sword for this source-visible form.'),
  -- #0077 Galarian Ponyta - Sword - External Trade
  (77, 7701, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0077 Galarian Ponyta - Shield - Native Encounter
  (77, 7701, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0077 Ponyta - Sword - External Trade
  (77, 7700, 20, 31, 12, 'Sword requires external trade from Shield for this source-visible form.'),
  -- #0077 Ponyta - Shield - Raid or Special Encounter
  (77, 7700, 20, 32, 10, 'Shield-exclusive Max Raid Battle or special den source for this source-visible form.'),
  -- #0078 Galarian Rapidash - Sword - External Trade
  (78, 7801, 20, 31, 12, 'Sword requires external trade from Shield for this source-visible form.'),
  -- #0078 Galarian Rapidash - Shield - Raid or Special Encounter
  (78, 7801, 20, 32, 10, 'Shield-exclusive Max Raid Battle or special den source for this source-visible form.'),
  -- #0078 Rapidash - Sword - External Trade
  (78, 7800, 20, 31, 12, 'Sword requires external trade from Shield for this source-visible form.'),
  -- #0078 Rapidash - Shield - Raid or Special Encounter
  (78, 7800, 20, 32, 10, 'Shield-exclusive Max Raid Battle or special den source for this source-visible form.'),
  -- #0359 Absol - Native Encounter
  (359, 35900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0878 Cufant - Native Encounter
  (878, 87800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0879 Copperajah - Native Encounter
  (879, 87900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0885 Dreepy - Native Encounter
  (885, 88500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0886 Drakloak - Native Encounter
  (886, 88600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0887 Dragapult - Native Encounter
  (887, 88700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0371 Bagon - Sword - Native Encounter
  (371, 37100, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0371 Bagon - Shield - External Trade
  (371, 37100, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0372 Shelgon - Sword - Native Encounter
  (372, 37200, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0372 Shelgon - Shield - External Trade
  (372, 37200, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0373 Salamence - Sword - Native Encounter
  (373, 37300, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0373 Salamence - Shield - External Trade
  (373, 37300, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0443 Gible - Sword - External Trade
  (443, 44300, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0443 Gible - Shield - Native Encounter
  (443, 44300, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0444 Gabite - Sword - External Trade
  (444, 44400, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0444 Gabite - Shield - Native Encounter
  (444, 44400, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0445 Garchomp - Sword - External Trade
  (445, 44500, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0445 Garchomp - Shield - Native Encounter
  (445, 44500, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0614 Beartic - Native Encounter
  (614, 61400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0138 Omanyte - Sword - Native Encounter
  (138, 13800, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0138 Omanyte - Shield - External Trade
  (138, 13800, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0139 Omastar - Sword - Native Encounter
  (139, 13900, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0139 Omastar - Shield - External Trade
  (139, 13900, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0140 Kabuto - Sword - External Trade
  (140, 14000, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0140 Kabuto - Shield - Native Encounter
  (140, 14000, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0141 Kabutops - Sword - External Trade
  (141, 14100, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0141 Kabutops - Shield - Native Encounter
  (141, 14100, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0142 Aerodactyl - Native Encounter
  (142, 14200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0703 Carbink - Native Encounter
  (703, 70300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0374 Beldum - Native Encounter
  (374, 37400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0375 Metang - Native Encounter
  (375, 37500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0376 Metagross - Native Encounter
  (376, 37600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0854 Sinistea - Native Encounter
  (854, 85400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0855 Polteageist - Native Encounter
  (855, 85500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0448 Lucario - Native Encounter
  (448, 44800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0633 Deino - Sword - Native Encounter
  (633, 63300, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0633 Deino - Shield - External Trade
  (633, 63300, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0634 Zweilous - Sword - Native Encounter
  (634, 63400, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0634 Zweilous - Shield - External Trade
  (634, 63400, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0635 Hydreigon - Sword - Native Encounter
  (635, 63500, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0635 Hydreigon - Shield - External Trade
  (635, 63500, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0246 Larvitar - Sword - External Trade
  (246, 24600, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0246 Larvitar - Shield - Native Encounter
  (246, 24600, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0247 Pupitar - Sword - External Trade
  (247, 24700, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0247 Pupitar - Shield - Native Encounter
  (247, 24700, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0248 Tyranitar - Sword - External Trade
  (248, 24800, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0248 Tyranitar - Shield - Native Encounter
  (248, 24800, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0712 Bergmite - Native Encounter
  (712, 71200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0713 Avalugg - Native Encounter
  (713, 71300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0169 Crobat - Native Encounter
  (169, 16900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0564 Tirtouga - Native Encounter
  (564, 56400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0565 Carracosta - Native Encounter
  (565, 56500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0566 Archen - Native Encounter
  (566, 56600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0567 Archeops - Native Encounter
  (567, 56700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0344 Claydol - Native Encounter
  (344, 34400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0622 Golett - Native Encounter
  (622, 62200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0623 Golurk - Native Encounter
  (623, 62300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0835 Yamper - Native Encounter
  (835, 83500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0836 Boltund - Native Encounter
  (836, 83600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0877 Morpeko - Native Encounter
  (877, 87700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0871 Pincurchin - Native Encounter
  (871, 87100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0364 Sealeo - Native Encounter
  (364, 36400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0365 Walrein - Native Encounter
  (365, 36500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0781 Dhelmise - Native Encounter
  (781, 78100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0821 Rookidee - Native Encounter
  (821, 82100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0822 Corvisquire - Native Encounter
  (822, 82200, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0823 Corviknight - Native Encounter
  (823, 82300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0829 Gossifleur - Native Encounter
  (829, 82900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0830 Eldegoss - Native Encounter
  (830, 83000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0546 Cottonee - Native Encounter
  (546, 54600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0547 Whimsicott - Native Encounter
  (547, 54700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0876 Indeedee - Sword - Native Encounter
  (876, 87600, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0876 Indeedee - Shield - Breeding
  (876, 87600, 20, 32, 8, 'Male Indeedee can be bred in Shield from compatible Indeedee availability, but wild/source-native encounters are Sword-exclusive.'),
  -- #0876 Indeedee (Female) - Sword - Breeding
  (876, 87601, 20, 31, 8, 'Female Indeedee can be bred in Sword from compatible Indeedee availability, but wild/source-native encounters are Shield-exclusive.'),
  -- #0876 Indeedee (Female) - Shield - Native Encounter
  (876, 87601, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0143 Snorlax - Native Encounter
  (143, 14300, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0302 Sableye - Sword - External Trade
  (302, 30200, 20, 31, 12, 'Requires external trade from Shield for this Crown Tundra version-exclusive line.'),
  -- #0302 Sableye - Shield - Native Encounter
  (302, 30200, 20, 32, 1, 'Crown Tundra Shield-exclusive availability; Sword requires external trade for this version-exclusive line.'),
  -- #0303 Mawile - Sword - Native Encounter
  (303, 30300, 20, 31, 1, 'Crown Tundra Sword-exclusive availability; Shield requires external trade for this version-exclusive line.'),
  -- #0303 Mawile - Shield - External Trade
  (303, 30300, 20, 32, 12, 'Requires external trade from Sword for this Crown Tundra version-exclusive line.'),
  -- #0837 Rolycoly - Native Encounter
  (837, 83700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0838 Carkol - Native Encounter
  (838, 83800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0839 Coalossal - Native Encounter
  (839, 83900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0597 Ferroseed - Native Encounter
  (597, 59700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0598 Ferrothorn - Native Encounter
  (598, 59800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0714 Noibat - Native Encounter
  (714, 71400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0715 Noivern - Native Encounter
  (715, 71500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0345 Lileep - Native Encounter
  (345, 34500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0346 Cradily - Native Encounter
  (346, 34600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0347 Anorith - Native Encounter
  (347, 34700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0348 Armaldo - Native Encounter
  (348, 34800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0350 Milotic - Native Encounter
  (350, 35000, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0304 Aron - Native Encounter
  (304, 30400, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0305 Lairon - Native Encounter
  (305, 30500, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0306 Aggron - Native Encounter
  (306, 30600, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0149 Dragonite - Native Encounter
  (149, 14900, 20, NULL, 1, 'Wild, overworld, or den availability in The Crown Tundra content scope.'),
  -- #0377 Regirock - Static Encounter
  (377, 37700, 20, NULL, 2, 'Static Legendary Clue encounter in The Crown Tundra temple questline.'),
  -- #0378 Regice - Static Encounter
  (378, 37800, 20, NULL, 2, 'Static Legendary Clue encounter in The Crown Tundra temple questline.'),
  -- #0379 Registeel - Static Encounter
  (379, 37900, 20, NULL, 2, 'Static Legendary Clue encounter in The Crown Tundra temple questline.'),
  -- #0894 Regieleki - Static Encounter
  (894, 89400, 20, NULL, 2, 'Static Legendary Clue encounter in The Crown Tundra temple questline. Regieleki and Regidrago are mutually exclusive Split-Decision Ruins choices in one save.'),
  -- #0895 Regidrago - Static Encounter
  (895, 89500, 20, NULL, 2, 'Static Legendary Clue encounter in The Crown Tundra temple questline. Regieleki and Regidrago are mutually exclusive Split-Decision Ruins choices in one save.'),
  -- #0144 Galarian Articuno - Roaming Encounter
  (144, 14401, 20, NULL, 9, 'Galarian Legendary bird unlocked by the Crown Tundra Legendary Tree event; roaming encounter occurs across Galar after the Crown Tundra story trigger.'),
  -- #0144 Articuno - Raid or Special Encounter
  (144, 14400, 20, NULL, 10, 'Kantonian Legendary bird source-visible through Crown Tundra Dynamax Adventures.'),
  -- #0145 Galarian Zapdos - Roaming Encounter
  (145, 14501, 20, NULL, 9, 'Galarian Legendary bird unlocked by the Crown Tundra Legendary Tree event; roaming encounter occurs across Galar after the Crown Tundra story trigger.'),
  -- #0145 Zapdos - Raid or Special Encounter
  (145, 14500, 20, NULL, 10, 'Kantonian Legendary bird source-visible through Crown Tundra Dynamax Adventures.'),
  -- #0146 Galarian Moltres - Roaming Encounter
  (146, 14601, 20, NULL, 9, 'Galarian Legendary bird unlocked by the Crown Tundra Legendary Tree event; roaming encounter occurs across Galar after the Crown Tundra story trigger.'),
  -- #0146 Moltres - Raid or Special Encounter
  (146, 14600, 20, NULL, 10, 'Kantonian Legendary bird source-visible through Crown Tundra Dynamax Adventures.'),
  -- #0638 Cobalion - Static Encounter
  (638, 63800, 20, NULL, 2, 'Static Swords of Justice encounter unlocked through Crown Tundra footprint evidence.'),
  -- #0639 Terrakion - Static Encounter
  (639, 63900, 20, NULL, 2, 'Static Swords of Justice encounter unlocked through Crown Tundra footprint evidence.'),
  -- #0640 Virizion - Static Encounter
  (640, 64000, 20, NULL, 2, 'Static Swords of Justice encounter unlocked through Crown Tundra footprint evidence.'),
  -- #0896 Glastrier - Static Encounter
  (896, 89600, 20, NULL, 2, 'Static steed encounter in the Crown Tundra Calyrex questline; Glastrier and Spectrier are mutually exclusive choices in one save.'),
  -- #0897 Spectrier - Static Encounter
  (897, 89700, 20, NULL, 2, 'Static steed encounter in the Crown Tundra Calyrex questline; Glastrier and Spectrier are mutually exclusive choices in one save.'),
  -- #0898 Calyrex - Static Encounter
  (898, 89800, 20, NULL, 2, 'Static Calyrex encounter in the Crown Tundra King of Bountiful Harvests questline.'),
  -- #0898 Calyrex (Ice Rider) - Static Encounter
  (898, 89801, 20, NULL, 2, 'Calyrex rider form associated with the Crown Tundra Calyrex questline, the selected steed, and the Reins of Unity.'),
  -- #0898 Calyrex (Shadow Rider) - Static Encounter
  (898, 89802, 20, NULL, 2, 'Calyrex rider form associated with the Crown Tundra Calyrex questline, the selected steed, and the Reins of Unity.');
