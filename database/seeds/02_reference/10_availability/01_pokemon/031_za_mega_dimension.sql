-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual Pokémon game-location rows for Pokémon Legends: Z-A: Mega Dimension.
-- Cross-check: Bulbapedia Pokedex membership seeds already source-verified in Voydex, plus local Voydex form scope.
-- Scope note: Source-generated seed with explicit manual overrides for supported forms, event gates, special scans, and one-time encounters.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Pokémon Legends: Z-A: Mega Dimension
-- Table: reference.pokemon_availability
-- Scope: Hyperspace Pokedex availability for Pokémon Legends: Z-A: Mega Dimension.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Mankey - Native Encounter
  (56, 5600, 27, NULL, 1, NULL),
  -- #0002 Primeape - Native Encounter
  (57, 5700, 27, NULL, 1, NULL),
  -- #0003 Annihilape - Evolution
  (979, 97900, 27, NULL, 7, NULL),
  -- #0004 Meowth - Native Encounter
  (52, 5200, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0004 Alolan Meowth - Native Encounter
  (52, 5201, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0004 Galarian Meowth - Native Encounter
  (52, 5202, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0005 Persian - Native Encounter
  (53, 5300, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0005 Alolan Persian - Native Encounter
  (53, 5301, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0006 Perrserker - Native Encounter
  (863, 86300, 27, NULL, 1, NULL),
  -- #0007 Farfetch'd - Native Encounter
  (83, 8300, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0007 Galarian Farfetch'd - Native Encounter
  (83, 8301, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0008 Sirfetch'd - Evolution
  (865, 86500, 27, NULL, 7, NULL),
  -- #0009 Cubone - Native Encounter
  (104, 10400, 27, NULL, 1, NULL),
  -- #0010 Marowak - Native Encounter
  (105, 10500, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0010 Alolan Marowak - Native Encounter
  (105, 10501, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0011 Porygon - Native Encounter
  (137, 13700, 27, NULL, 1, 'Porygon is available in Hyperspace Lumiose; the source also lists an NPC trade that immediately evolves it.'),
  -- #0012 Porygon2 - Evolution
  (233, 23300, 27, NULL, 7, 'Porygon2 is obtained by evolving Porygon through the Side Mission 167 NPC trade.'),
  -- #0013 Porygon-Z - Raid or Special Encounter
  (474, 47400, 27, NULL, 10, NULL),
  -- #0014 Capsakid - Native Encounter
  (951, 95100, 27, NULL, 1, NULL),
  -- #0015 Scovillain - Native Encounter
  (952, 95200, 27, NULL, 1, NULL),
  -- #0016 Tinkatink - Native Encounter
  (957, 95700, 27, NULL, 1, NULL),
  -- #0017 Tinkatuff - Native Encounter
  (958, 95800, 27, NULL, 1, NULL),
  -- #0018 Tinkaton - Native Encounter
  (959, 95900, 27, NULL, 1, NULL),
  -- #0019 Cyclizar - Native Encounter
  (967, 96700, 27, NULL, 1, NULL),
  -- #0020 Glimmet - Native Encounter
  (969, 96900, 27, NULL, 1, NULL),
  -- #0021 Glimmora - Native Encounter
  (970, 97000, 27, NULL, 1, NULL),
  -- #0022 Rotom - Raid or Special Encounter
  (479, 47900, 27, NULL, 10, 'Hyperspace Lumiose source lists all Rotom forms behind Special Scan access.'),
  -- #0022 Rotom (Heat) - Raid or Special Encounter
  (479, 47901, 27, NULL, 10, 'Hyperspace Lumiose source lists all Rotom forms behind Special Scan access.'),
  -- #0022 Rotom (Wash) - Raid or Special Encounter
  (479, 47902, 27, NULL, 10, 'Hyperspace Lumiose source lists all Rotom forms behind Special Scan access.'),
  -- #0022 Rotom (Frost) - Raid or Special Encounter
  (479, 47903, 27, NULL, 10, 'Hyperspace Lumiose source lists all Rotom forms behind Special Scan access.'),
  -- #0022 Rotom (Fan) - Raid or Special Encounter
  (479, 47904, 27, NULL, 10, 'Hyperspace Lumiose source lists all Rotom forms behind Special Scan access.'),
  -- #0022 Rotom (Mow) - Raid or Special Encounter
  (479, 47905, 27, NULL, 10, 'Hyperspace Lumiose source lists all Rotom forms behind Special Scan access.'),
  -- #0023 Greavard - Native Encounter
  (971, 97100, 27, NULL, 1, NULL),
  -- #0024 Houndstone - Native Encounter
  (972, 97200, 27, NULL, 1, NULL),
  -- #0025 Sandygast - Native Encounter
  (769, 76900, 27, NULL, 1, NULL),
  -- #0026 Palossand - Native Encounter
  (770, 77000, 27, NULL, 1, NULL),
  -- #0027 Kecleon - Native Encounter
  (352, 35200, 27, NULL, 1, NULL),
  -- #0028 Flamigo - Native Encounter
  (973, 97300, 27, NULL, 1, NULL),
  -- #0029 Cryogonal - Native Encounter
  (615, 61500, 27, NULL, 1, 'No Bulbapedia game-location row found.'),
  -- #0030 Dondozo - Native Encounter
  (977, 97700, 27, NULL, 1, NULL),
  -- #0031 Tatsugiri - Native Encounter
  (978, 97800, 27, NULL, 1, 'Hyperspace Lumiose source lists all Tatsugiri forms.'),
  -- #0031 Tatsugiri (Droopy) - Native Encounter
  (978, 97801, 27, NULL, 1, 'Hyperspace Lumiose source lists all Tatsugiri forms.'),
  -- #0031 Tatsugiri (Stretchy) - Native Encounter
  (978, 97802, 27, NULL, 1, 'Hyperspace Lumiose source lists all Tatsugiri forms.'),
  -- #0032 Frigibax - Raid or Special Encounter
  (996, 99600, 27, NULL, 10, 'Frigibax is available through Special Scan-gated Hyperspace wild zones.'),
  -- #0033 Arctibax - Evolution
  (997, 99700, 27, NULL, 7, 'Arctibax evolves from Frigibax.'),
  -- #0034 Baxcalibur - Evolution
  (998, 99800, 27, NULL, 7, 'Baxcalibur evolves from Arctibax.'),
  -- #0035 Gimmighoul - Gift
  (999, 99900, 27, NULL, 4, 'Chest Form Gimmighoul is received upon starting Side Mission 122.'),
  -- #0036 Gholdengo - Evolution
  (1000, 100000, 27, NULL, 7, NULL),
  -- #0037 Qwilfish - Native Encounter
  (211, 21100, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0037 Hisuian Qwilfish - Native Encounter
  (211, 21101, 27, NULL, 1, 'Hyperspace Lumiose source lists all forms.'),
  -- #0038 Overqwil - Evolution
  (904, 90400, 27, NULL, 7, 'Overqwil evolves from Hisuian Qwilfish in Mega Dimension.'),
  -- #0039 Treecko - Native Encounter
  (252, 25200, 27, NULL, 1, 'Treecko is available in lower-star Hyperspace wild zones; higher-star sources require Special Scan.'),
  -- #0040 Grovyle - Evolution
  (253, 25300, 27, NULL, 7, NULL),
  -- #0041 Sceptile - Evolution
  (254, 25400, 27, NULL, 7, 'Sceptile evolves from Grovyle; source also lists high-star wild-zone encounters.'),
  -- #0042 Torchic - Native Encounter
  (255, 25500, 27, NULL, 1, 'Torchic is available in lower-star Hyperspace wild zones; higher-star sources require Special Scan.'),
  -- #0043 Combusken - Evolution
  (256, 25600, 27, NULL, 7, NULL),
  -- #0044 Blaziken - Evolution
  (257, 25700, 27, NULL, 7, 'Blaziken evolves from Combusken; source also lists high-star wild-zone encounters.'),
  -- #0045 Mudkip - Native Encounter
  (258, 25800, 27, NULL, 1, 'Mudkip is available in lower-star Hyperspace wild zones; higher-star sources require Special Scan.'),
  -- #0046 Marshtomp - Evolution
  (259, 25900, 27, NULL, 7, NULL),
  -- #0047 Swampert - Evolution
  (260, 26000, 27, NULL, 7, 'Swampert evolves from Marshtomp; source also lists high-star wild-zone encounters.'),
  -- #0048 Feebas - Native Encounter
  (349, 34900, 27, NULL, 1, NULL),
  -- #0049 Milotic - Evolution
  (350, 35000, 27, NULL, 7, NULL),
  -- #0050 Chingling - Native Encounter
  (433, 43300, 27, NULL, 1, NULL),
  -- #0051 Chimecho - Native Encounter
  (358, 35800, 27, NULL, 1, NULL),
  -- #0052 Indeedee - Native Encounter
  (876, 87600, 27, NULL, 1, 'Hyperspace Lumiose source supports Indeedee availability.'),
  -- #0052 Indeedee (Female) - Native Encounter
  (876, 87601, 27, NULL, 1, 'Hyperspace Lumiose source supports Indeedee female form availability.'),
  -- #0053 Purrloin - Native Encounter
  (509, 50900, 27, NULL, 1, NULL),
  -- #0054 Liepard - Native Encounter
  (510, 51000, 27, NULL, 1, NULL),
  -- #0055 Munna - Native Encounter
  (517, 51700, 27, NULL, 1, NULL),
  -- #0056 Musharna - Native Encounter
  (518, 51800, 27, NULL, 1, NULL),
  -- #0057 Throh - Native Encounter
  (538, 53800, 27, NULL, 1, NULL),
  -- #0058 Sawk - Native Encounter
  (539, 53900, 27, NULL, 1, NULL),
  -- #0059 Yamask - Native Encounter
  (562, 56200, 27, NULL, 1, 'Hyperspace Lumiose source supports Yamask availability.'),
  -- #0059 Galarian Yamask - Native Encounter
  (562, 56201, 27, NULL, 1, 'Galarian Yamask is required for the source-listed Runerigus evolution path.'),
  -- #0060 Cofagrigus - Native Encounter
  (563, 56300, 27, NULL, 1, NULL),
  -- #0061 Runerigus - Evolution
  (867, 86700, 27, NULL, 7, NULL),
  -- #0062 Wimpod - Native Encounter
  (767, 76700, 27, NULL, 1, NULL),
  -- #0063 Golisopod - Native Encounter
  (768, 76800, 27, NULL, 1, NULL),
  -- #0064 Nickit - Native Encounter
  (827, 82700, 27, NULL, 1, NULL),
  -- #0065 Thievul - Native Encounter
  (828, 82800, 27, NULL, 1, NULL),
  -- #0066 Clobbopus - Native Encounter
  (852, 85200, 27, NULL, 1, NULL),
  -- #0067 Grapploct - Native Encounter
  (853, 85300, 27, NULL, 1, NULL),
  -- #0068 Mimikyu - Native Encounter
  (778, 77800, 27, NULL, 1, NULL),
  -- #0069 Kleavor - Native Encounter
  (900, 90000, 27, NULL, 1, NULL),
  -- #0070 Morpeko - Native Encounter
  (877, 87700, 27, NULL, 1, NULL),
  -- #0071 Golett - Native Encounter
  (622, 62200, 27, NULL, 1, NULL),
  -- #0072 Golurk - Native Encounter
  (623, 62300, 27, NULL, 1, NULL),
  -- #0073 Rookidee - Native Encounter
  (821, 82100, 27, NULL, 1, NULL),
  -- #0074 Corvisquire - Native Encounter
  (822, 82200, 27, NULL, 1, NULL),
  -- #0075 Corviknight - Native Encounter
  (823, 82300, 27, NULL, 1, NULL),
  -- #0076 Igglybuff - Native Encounter
  (174, 17400, 27, NULL, 1, NULL),
  -- #0077 Jigglypuff - Native Encounter
  (39, 3900, 27, NULL, 1, NULL),
  -- #0078 Wigglytuff - Native Encounter
  (40, 4000, 27, NULL, 1, NULL),
  -- #0079 Fidough - Native Encounter
  (926, 92600, 27, NULL, 1, NULL),
  -- #0080 Dachsbun - Native Encounter
  (927, 92700, 27, NULL, 1, NULL),
  -- #0081 Starly - Native Encounter
  (396, 39600, 27, NULL, 1, NULL),
  -- #0082 Staravia - Native Encounter
  (397, 39700, 27, NULL, 1, NULL),
  -- #0083 Staraptor - Evolution
  (398, 39800, 27, NULL, 7, 'Staraptor evolves from Staravia; source also lists a one-time Hyperspace Hunting Grounds encounter.'),
  -- #0084 Spoink - Native Encounter
  (325, 32500, 27, NULL, 1, NULL),
  -- #0085 Grumpig - Native Encounter
  (326, 32600, 27, NULL, 1, NULL),
  -- #0086 Squawkabilly - Native Encounter
  (931, 93100, 27, NULL, 1, NULL),
  -- #0087 Crabrawler - Native Encounter
  (739, 73900, 27, NULL, 1, NULL),
  -- #0088 Crabominable - Native Encounter
  (740, 74000, 27, NULL, 1, NULL),
  -- #0089 Nacli - Static Encounter
  (932, 93200, 27, NULL, 2, 'One-time Nacli encounter during Side Mission 142.'),
  -- #0090 Naclstack - Native Encounter
  (933, 93300, 27, NULL, 1, NULL),
  -- #0091 Garganacl - Native Encounter
  (934, 93400, 27, NULL, 1, NULL),
  -- #0092 Gulpin - Native Encounter
  (316, 31600, 27, NULL, 1, NULL),
  -- #0093 Swalot - Native Encounter
  (317, 31700, 27, NULL, 1, NULL),
  -- #0094 Zubat - Native Encounter
  (41, 4100, 27, NULL, 1, NULL),
  -- #0095 Golbat - Native Encounter
  (42, 4200, 27, NULL, 1, NULL),
  -- #0096 Crobat - Native Encounter
  (169, 16900, 27, NULL, 1, NULL),
  -- #0097 Charcadet - Native Encounter
  (935, 93500, 27, NULL, 1, NULL),
  -- #0098 Armarouge - Evolution
  (936, 93600, 27, NULL, 7, NULL),
  -- #0099 Ceruledge - Evolution
  (937, 93700, 27, NULL, 7, NULL),
  -- #0100 Maschiff - Native Encounter
  (942, 94200, 27, NULL, 1, NULL),
  -- #0101 Mabosstiff - Native Encounter
  (943, 94300, 27, NULL, 1, NULL),
  -- #0102 Toxel - Native Encounter
  (848, 84800, 27, NULL, 1, NULL),
  -- #0103 Toxtricity - Native Encounter
  (849, 84900, 27, NULL, 1, NULL),
  -- #0104 Shroodle - Native Encounter
  (944, 94400, 27, NULL, 1, NULL),
  -- #0105 Grafaiai - Native Encounter
  (945, 94500, 27, NULL, 1, NULL),
  -- #0106 Zangoose - Native Encounter
  (335, 33500, 27, NULL, 1, NULL),
  -- #0107 Seviper - Native Encounter
  (336, 33600, 27, NULL, 1, NULL),
  -- #0108 Mime Jr. - Native Encounter
  (439, 43900, 27, NULL, 1, NULL),
  -- #0109 Mr. Mime - Native Encounter
  (122, 12200, 27, NULL, 1, NULL),
  -- #0110 Mr. Rime - Native Encounter
  (866, 86600, 27, NULL, 1, NULL),
  -- #0111 Foongus - Native Encounter
  (590, 59000, 27, NULL, 1, NULL),
  -- #0112 Amoonguss - Native Encounter
  (591, 59100, 27, NULL, 1, NULL),
  -- #0113 Heatran - Static Encounter
  (485, 48500, 27, NULL, 2, NULL),
  -- #0114 Volcanion - Static Encounter
  (721, 72100, 27, NULL, 2, 'One-time Volcanion encounter during Side Mission 194.'),
  -- #0115 Cobalion - Raid or Special Encounter
  (638, 63800, 27, NULL, 10, NULL),
  -- #0116 Terrakion - Raid or Special Encounter
  (639, 63900, 27, NULL, 10, NULL),
  -- #0117 Virizion - Raid or Special Encounter
  (640, 64000, 27, NULL, 10, NULL),
  -- #0118 Keldeo - Raid or Special Encounter
  (647, 64700, 27, NULL, 10, NULL),
  -- #0119 Meloetta - Raid or Special Encounter
  (648, 64800, 27, NULL, 10, NULL),
  -- #0120 Genesect - Static Encounter
  (649, 64900, 27, NULL, 2, 'One-time Genesect encounter during Side Mission 191.'),
  -- #0120 Genesect (Douse Drive) - Static Encounter
  (649, 64901, 27, NULL, 2, 'Genesect Drive forms are available through the Side Mission 191 Genesect source and Drive access.'),
  -- #0120 Genesect (Shock Drive) - Static Encounter
  (649, 64902, 27, NULL, 2, 'Genesect Drive forms are available through the Side Mission 191 Genesect source and Drive access.'),
  -- #0120 Genesect (Burn Drive) - Static Encounter
  (649, 64903, 27, NULL, 2, 'Genesect Drive forms are available through the Side Mission 191 Genesect source and Drive access.'),
  -- #0120 Genesect (Chill Drive) - Static Encounter
  (649, 64904, 27, NULL, 2, 'Genesect Drive forms are available through the Side Mission 191 Genesect source and Drive access.'),
  -- #0121 Hoopa - Static Encounter
  (720, 72000, 27, NULL, 2, 'One-time Hoopa encounter during Side Mission 196.'),
  -- #0121 Hoopa (Unbound) - Static Encounter
  (720, 72001, 27, NULL, 2, 'Hoopa Unbound is available through the Side Mission 196 Hoopa source and form access.'),
  -- #0122 Marshadow - Static Encounter
  (802, 80200, 27, NULL, 2, 'One-time Marshadow encounter during Side Mission 192.'),
  -- #0123 Meltan - Static Encounter
  (808, 80800, 27, NULL, 2, 'One-time Meltan encounter during Side Mission 193.'),
  -- #0124 Melmetal - Static Encounter
  (809, 80900, 27, NULL, 2, 'One-time Melmetal encounter during Side Mission 193.'),
  -- #0125 Darkrai - Static Encounter
  (491, 49100, 27, NULL, 2, NULL),
  -- #0126 Latias - Raid or Special Encounter
  (380, 38000, 27, NULL, 10, NULL),
  -- #0127 Latios - Raid or Special Encounter
  (381, 38100, 27, NULL, 10, NULL),
  -- #0128 Kyogre - Static Encounter
  (382, 38200, 27, NULL, 2, NULL),
  -- #0129 Groudon - Static Encounter
  (383, 38300, 27, NULL, 2, NULL),
  -- #0130 Rayquaza - Static Encounter
  (384, 38400, 27, NULL, 2, NULL),
  -- #0131 Magearna - Static Encounter
  (801, 80100, 27, NULL, 2, 'One-time Magearna encounter during Side Mission 195; Original Color form remains outside current Voydex form scope.'),
  -- #0132 Zeraora - Event
  (807, 80700, 27, NULL, 11, 'Requires Mystery Gift activation in Mega Dimension.');
