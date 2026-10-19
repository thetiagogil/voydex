-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Isle of Armor Pokedex number.
-- Cross-check: PokemonDB Isle of Armor Pokedex, Serebii Sword/Shield version exclusives, Serebii Sword/Shield gift Pokémon, and Bulbapedia Fields of Honor Diglett Trainer rewards.
-- Scope note: The Isle of Armor optional content scope only. Base Sword/Shield and Crown Tundra availability rows are seeded separately.
-- Form policy note: battle-only, Gigantamax, cap, cosmetic, and gender-only display rows are excluded. Galarian Slowking is modeled in Crown Tundra availability.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: The Isle of Armor
-- Table: reference.pokemon_availability
-- Scope: Isle of Armor Pokedex availability for Pokémon Sword/Shield Expansion Pass.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0079 Galarian Slowpoke - Native Encounter
  (79, 7901, 19, NULL, 1, 'Galarian Slowpoke is available in The Isle of Armor content scope.'),
  -- #0079 Slowpoke - Gift
  (79, 7900, 19, NULL, 4, 'Kantonian Slowpoke gift from the Fields of Honor Diglett Trainer after finding 10 Alolan Diglett; it holds a King''s Rock.'),
  -- #0080 Galarian Slowbro - Evolution
  (80, 8002, 19, NULL, 7, 'Evolves from Galarian Slowpoke using the Isle of Armor Galarica Cuff.'),
  -- #0080 Slowbro - Evolution
  (80, 8000, 19, NULL, 7, 'Evolves from Kantonian Slowpoke in Sword/Shield; Kantonian Slowpoke is available from the Isle of Armor Diglett Trainer reward.'),
  -- #0199 Slowking - Evolution
  (199, 19900, 19, NULL, 7, 'Evolves from Kantonian Slowpoke in Sword/Shield; Kantonian Slowpoke is available from the Isle of Armor Diglett Trainer reward.'),
  -- #0427 Buneary - Native Encounter
  (427, 42700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0428 Lopunny - Native Encounter
  (428, 42800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0242 Blissey - Native Encounter
  (242, 24200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0819 Skwovet - Native Encounter
  (819, 81900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0820 Greedent - Native Encounter
  (820, 82000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0174 Igglybuff - Native Encounter
  (174, 17400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0040 Wigglytuff - Native Encounter
  (40, 4000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0824 Blipbug - Native Encounter
  (824, 82400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0825 Dottler - Native Encounter
  (825, 82500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0826 Orbeetle - Native Encounter
  (826, 82600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0753 Fomantis - Native Encounter
  (753, 75300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0754 Lurantis - Native Encounter
  (754, 75400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0840 Applin - Native Encounter
  (840, 84000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0841 Flapple - Sword - Raid or Special Encounter
  (841, 84100, 19, 31, 10, 'Sword-native Flapple source through version-specific evolution item or raid/special availability in Sword/Shield.'),
  -- #0841 Flapple - Shield - External Trade
  (841, 84100, 19, 32, 12, 'Shield players require external trade or transferred Flapple because the Tart Apple source is Sword-exclusive.'),
  -- #0842 Appletun - Sword - External Trade
  (842, 84200, 19, 31, 12, 'Sword players require external trade or transferred Appletun because the Sweet Apple source is Shield-exclusive.'),
  -- #0842 Appletun - Shield - Raid or Special Encounter
  (842, 84200, 19, 32, 10, 'Shield-native Appletun source through version-specific evolution item or raid/special availability in Sword/Shield.'),
  -- #0661 Fletchling - Native Encounter
  (661, 66100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0662 Fletchinder - Native Encounter
  (662, 66200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0663 Talonflame - Native Encounter
  (663, 66300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0404 Luxio - Native Encounter
  (404, 40400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0405 Luxray - Native Encounter
  (405, 40500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0707 Klefki - Native Encounter
  (707, 70700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0625 Bisharp - Native Encounter
  (625, 62500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0063 Abra - Native Encounter
  (63, 6300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0065 Alakazam - Native Encounter
  (65, 6500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0281 Kirlia - Native Encounter
  (281, 28100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0282 Gardevoir - Native Encounter
  (282, 28200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0475 Gallade - Native Encounter
  (475, 47500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0099 Kingler - Native Encounter
  (99, 9900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0452 Drapion - Native Encounter
  (452, 45200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0626 Bouffalant - Native Encounter
  (626, 62600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0463 Lickilicky - Native Encounter
  (463, 46300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0833 Chewtle - Native Encounter
  (833, 83300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0834 Drednaw - Native Encounter
  (834, 83400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0705 Sliggoo - Native Encounter
  (705, 70500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0706 Goodra - Native Encounter
  (706, 70600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0616 Shelmet - Native Encounter
  (616, 61600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0617 Accelgor - Native Encounter
  (617, 61700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0588 Karrablast - Native Encounter
  (588, 58800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0589 Escavalier - Native Encounter
  (589, 58900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0001 Bulbasaur - Gift
  (1, 100, 19, NULL, 4, 'Master Dojo gift choice from Honey after the first trial; Bulbasaur and Squirtle are mutually exclusive in one save without trade.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 19, NULL, 7, 'Evolves from the Master Dojo Bulbasaur or Squirtle gift line; the initial gift choice is mutually exclusive in one save without trade.'),
  -- #0003 Venusaur - Evolution
  (3, 300, 19, NULL, 7, 'Evolves from the Master Dojo Bulbasaur or Squirtle gift line; the initial gift choice is mutually exclusive in one save without trade.'),
  -- #0007 Squirtle - Gift
  (7, 700, 19, NULL, 4, 'Master Dojo gift choice from Honey after the first trial; Bulbasaur and Squirtle are mutually exclusive in one save without trade.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 19, NULL, 7, 'Evolves from the Master Dojo Bulbasaur or Squirtle gift line; the initial gift choice is mutually exclusive in one save without trade.'),
  -- #0009 Blastoise - Evolution
  (9, 900, 19, NULL, 7, 'Evolves from the Master Dojo Bulbasaur or Squirtle gift line; the initial gift choice is mutually exclusive in one save without trade.'),
  -- #0543 Venipede - Native Encounter
  (543, 54300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0544 Whirlipede - Native Encounter
  (544, 54400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0545 Scolipede - Native Encounter
  (545, 54500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0590 Foongus - Native Encounter
  (590, 59000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0591 Amoonguss - Native Encounter
  (591, 59100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0764 Comfey - Native Encounter
  (764, 76400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0465 Tangrowth - Native Encounter
  (465, 46500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0453 Croagunk - Native Encounter
  (453, 45300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0454 Toxicroak - Native Encounter
  (454, 45400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0026 Raichu - Native Encounter
  (26, 2600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0026 Alolan Raichu - Gift
  (26, 2601, 19, NULL, 4, 'Regional-form gift from the Fields of Honor Diglett Trainer reward track in The Isle of Armor.'),
  -- #0570 Zorua - Native Encounter
  (570, 57000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0571 Zoroark - Native Encounter
  (571, 57100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0765 Oranguru - Native Encounter
  (765, 76500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0766 Passimian - Native Encounter
  (766, 76600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0845 Cramorant - Native Encounter
  (845, 84500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0846 Arrokuda - Native Encounter
  (846, 84600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0847 Barraskewda - Native Encounter
  (847, 84700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0121 Starmie - Native Encounter
  (121, 12100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0891 Kubfu - Gift
  (891, 89100, 19, NULL, 4, 'Kubfu gift from Mustard during the Isle of Armor storyline.'),
  -- #0892 Urshifu - Evolution
  (892, 89200, 19, NULL, 7, 'Evolves from Kubfu by completing the Tower of Darkness; Tower choice makes Urshifu style mutually exclusive in one save without trade.'),
  -- #0892 Urshifu (Rapid Strike) - Evolution
  (892, 89201, 19, NULL, 7, 'Evolves from Kubfu by completing the Tower of Waters; Tower choice makes Urshifu style mutually exclusive in one save without trade.'),
  -- #0587 Emolga - Native Encounter
  (587, 58700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0702 Dedenne - Native Encounter
  (702, 70200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0877 Morpeko - Native Encounter
  (877, 87700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0082 Magneton - Native Encounter
  (82, 8200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0462 Magnezone - Native Encounter
  (462, 46200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0686 Inkay - Native Encounter
  (686, 68600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0687 Malamar - Native Encounter
  (687, 68700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0746 Wishiwashi - Native Encounter
  (746, 74600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0506 Lillipup - Native Encounter
  (506, 50600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0507 Herdier - Native Encounter
  (507, 50700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0508 Stoutland - Native Encounter
  (508, 50800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0212 Scizor - Native Encounter
  (212, 21200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0127 Pinsir - Sword - Native Encounter
  (127, 12700, 19, 31, 1, 'Isle of Armor Sword-exclusive wild availability; Shield requires external trade for this version-exclusive line.'),
  -- #0127 Pinsir - Shield - External Trade
  (127, 12700, 19, 32, 12, 'Shield players require external trade from Sword for this Isle of Armor version-exclusive line.'),
  -- #0214 Heracross - Sword - External Trade
  (214, 21400, 19, 31, 12, 'Sword players require external trade from Shield for this Isle of Armor version-exclusive line.'),
  -- #0214 Heracross - Shield - Native Encounter
  (214, 21400, 19, 32, 1, 'Isle of Armor Shield-exclusive wild availability; Sword requires external trade for this version-exclusive line.'),
  -- #0557 Dwebble - Native Encounter
  (557, 55700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0558 Crustle - Native Encounter
  (558, 55800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0767 Wimpod - Native Encounter
  (767, 76700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0768 Golisopod - Native Encounter
  (768, 76800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0871 Pincurchin - Native Encounter
  (871, 87100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0747 Mareanie - Native Encounter
  (747, 74700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0748 Toxapex - Native Encounter
  (748, 74800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0852 Clobbopus - Native Encounter
  (852, 85200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0853 Grapploct - Native Encounter
  (853, 85300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0091 Cloyster - Native Encounter
  (91, 9100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0769 Sandygast - Native Encounter
  (769, 76900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0770 Palossand - Native Encounter
  (770, 77000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0426 Drifblim - Native Encounter
  (426, 42600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0183 Marill - Native Encounter
  (183, 18300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0184 Azumarill - Native Encounter
  (184, 18400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0186 Politoed - Native Encounter
  (186, 18600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0293 Whismur - Native Encounter
  (293, 29300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0294 Loudred - Native Encounter
  (294, 29400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0295 Exploud - Native Encounter
  (295, 29500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0527 Woobat - Native Encounter
  (527, 52700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0528 Swoobat - Native Encounter
  (528, 52800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0526 Gigalith - Native Encounter
  (526, 52600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0744 Rockruff - Native Encounter
  (744, 74400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0745 Lycanroc - Native Encounter
  (745, 74500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0745 Lycanroc (Midnight) - Evolution
  (745, 74501, 19, NULL, 7, 'Lycanroc form depends on Rockruff evolution timing and, for Dusk Form, Own Tempo Rockruff.'),
  -- #0745 Lycanroc (Dusk) - Evolution
  (745, 74502, 19, NULL, 7, 'Lycanroc form depends on Rockruff evolution timing and, for Dusk Form, Own Tempo Rockruff.'),
  -- #0757 Salandit - Native Encounter
  (757, 75700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0758 Salazzle - Native Encounter
  (758, 75800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0560 Scrafty - Native Encounter
  (560, 56000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0619 Mienfoo - Native Encounter
  (619, 61900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0620 Mienshao - Native Encounter
  (620, 62000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0782 Jangmo-o - Native Encounter
  (782, 78200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0783 Hakamo-o - Native Encounter
  (783, 78300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0784 Kommo-o - Native Encounter
  (784, 78400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0027 Alolan Sandshrew - Gift
  (27, 2701, 19, NULL, 4, 'Regional-form gift from the Fields of Honor Diglett Trainer reward track in The Isle of Armor.'),
  -- #0028 Sandslash - Native Encounter
  (28, 2800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0028 Alolan Sandslash - Evolution
  (28, 2801, 19, NULL, 7, 'Evolves from the corresponding Alolan regional-form Diglett Trainer reward.'),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0105 Marowak - Native Encounter
  (105, 10500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0105 Alolan Marowak - Gift
  (105, 10501, 19, NULL, 4, 'Regional-form gift from the Fields of Honor Diglett Trainer reward track in The Isle of Armor.'),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0843 Silicobra - Native Encounter
  (843, 84300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0844 Sandaconda - Native Encounter
  (844, 84400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0552 Krokorok - Native Encounter
  (552, 55200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0553 Krookodile - Native Encounter
  (553, 55300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0627 Rufflet - Native Encounter
  (627, 62700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0628 Braviary - Native Encounter
  (628, 62800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0629 Vullaby - Native Encounter
  (629, 62900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0630 Mandibuzz - Native Encounter
  (630, 63000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0464 Rhyperior - Native Encounter
  (464, 46400, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0636 Larvesta - Native Encounter
  (636, 63600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0637 Volcarona - Native Encounter
  (637, 63700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0592 Frillish - Native Encounter
  (592, 59200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0593 Jellicent - Native Encounter
  (593, 59300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0690 Skrelp - Sword - External Trade
  (690, 69000, 19, 31, 12, 'Sword players require external trade from Shield for this Isle of Armor version-exclusive line.'),
  -- #0690 Skrelp - Shield - Native Encounter
  (690, 69000, 19, 32, 1, 'Isle of Armor Shield-exclusive wild availability; Sword requires external trade for this version-exclusive line.'),
  -- #0691 Dragalge - Sword - External Trade
  (691, 69100, 19, 31, 12, 'Sword players require external trade from Shield for this Isle of Armor version-exclusive line.'),
  -- #0691 Dragalge - Shield - Native Encounter
  (691, 69100, 19, 32, 1, 'Isle of Armor Shield-exclusive wild availability; Sword requires external trade for this version-exclusive line.'),
  -- #0692 Clauncher - Sword - Native Encounter
  (692, 69200, 19, 31, 1, 'Isle of Armor Sword-exclusive wild availability; Shield requires external trade for this version-exclusive line.'),
  -- #0692 Clauncher - Shield - External Trade
  (692, 69200, 19, 32, 12, 'Shield players require external trade from Sword for this Isle of Armor version-exclusive line.'),
  -- #0693 Clawitzer - Sword - Native Encounter
  (693, 69300, 19, 31, 1, 'Isle of Armor Sword-exclusive wild availability; Shield requires external trade for this version-exclusive line.'),
  -- #0693 Clawitzer - Shield - External Trade
  (693, 69300, 19, 32, 12, 'Shield players require external trade from Sword for this Isle of Armor version-exclusive line.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0230 Kingdra - Native Encounter
  (230, 23000, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0548 Petilil - Native Encounter
  (548, 54800, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0549 Lilligant - Native Encounter
  (549, 54900, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0415 Combee - Native Encounter
  (415, 41500, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0416 Vespiquen - Native Encounter
  (416, 41600, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0103 Exeggutor - Native Encounter
  (103, 10300, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0103 Alolan Exeggutor - Gift
  (103, 10301, 19, NULL, 4, 'Regional-form gift from the Fields of Honor Diglett Trainer reward track in The Isle of Armor.'),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 19, NULL, 1, 'Wild, overworld, or den availability in The Isle of Armor content scope.'),
  -- #0137 Porygon - Gift
  (137, 13700, 19, NULL, 4, 'Porygon gift from Hyde in the Master Dojo after completing the Isle of Armor storyline.'),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 19, NULL, 7, 'Evolves from the Master Dojo Porygon gift using the relevant upgrade item and trade evolution path.'),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 19, NULL, 7, 'Evolves from the Master Dojo Porygon gift using the relevant upgrade item and trade evolution path.'),
  -- #0893 Zarude - Event
  (893, 89300, 19, NULL, 11, 'Official Zarude distribution; source-visible in the Isle of Armor Pokedex but not required for Pokedex completion.'),
  -- #0744 Rockruff (Own Tempo) - Raid or Special Encounter
  (744, 74401, 19, NULL, 10, 'Own Tempo Rockruff is available through Isle of Armor Max Raid sources and can evolve into Dusk Form Lycanroc.');
