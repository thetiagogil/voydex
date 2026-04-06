-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_availability
-- Scope: DLC additions (swsh-ioa)
-- DLC additions only. Base game Pokemon are in the parent VG.
-- Pokemon: 110 (DLC additions)
INSERT INTO
    reference.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (8576, 1, 100, 19, NULL, 'native'),
    -- #002 Ivysaur
    (8577, 2, 200, 19, NULL, 'native'),
    -- #003 Venusaur
    (8578, 3, 300, 19, NULL, 'native'),
    -- #007 Squirtle
    (8579, 7, 700, 19, NULL, 'native'),
    -- #008 Wartortle
    (8580, 8, 800, 19, NULL, 'native'),
    -- #009 Blastoise
    (8581, 9, 900, 19, NULL, 'native'),
    -- #027 Sandshrew
    (8582, 27, 2700, 19, NULL, 'native'),
    -- #028 Sandslash
    (8583, 28, 2800, 19, NULL, 'native'),
    -- #039 Jigglypuff
    (8584, 39, 3900, 19, NULL, 'native'),
    -- #040 Wigglytuff
    (8585, 40, 4000, 19, NULL, 'native'),
    -- #054 Psyduck
    (8586, 54, 5400, 19, NULL, 'native'),
    -- #055 Golduck
    (8587, 55, 5500, 19, NULL, 'native'),
    -- #060 Poliwag
    (8588, 60, 6000, 19, NULL, 'native'),
    -- #061 Poliwhirl
    (8589, 61, 6100, 19, NULL, 'native'),
    -- #062 Poliwrath
    (8590, 62, 6200, 19, NULL, 'native'),
    -- #063 Abra
    (8591, 63, 6300, 19, NULL, 'native'),
    -- #064 Kadabra
    (8592, 64, 6400, 19, NULL, 'native'),
    -- #065 Alakazam
    (8593, 65, 6500, 19, NULL, 'native'),
    -- #072 Tentacool
    (8594, 72, 7200, 19, NULL, 'native'),
    -- #073 Tentacruel
    (8595, 73, 7300, 19, NULL, 'native'),
    -- #079 Slowpoke
    (8596, 79, 7900, 19, NULL, 'native'),
    -- #080 Slowbro
    (8597, 80, 8000, 19, NULL, 'native'),
    -- #081 Magnemite
    (8598, 81, 8100, 19, NULL, 'native'),
    -- #082 Magneton
    (8599, 82, 8200, 19, NULL, 'native'),
    -- #102 Exeggcute
    (8600, 102, 10200, 19, NULL, 'native'),
    -- #103 Exeggutor
    (8601, 103, 10300, 19, NULL, 'native'),
    -- #104 Cubone
    (8602, 104, 10400, 19, NULL, 'native'),
    -- #105 Marowak
    (8603, 105, 10500, 19, NULL, 'native'),
    -- #108 Lickitung
    (8604, 108, 10800, 19, NULL, 'native'),
    -- #113 Chansey
    (8605, 113, 11300, 19, NULL, 'native'),
    -- #114 Tangela
    (8606, 114, 11400, 19, NULL, 'native'),
    -- #115 Kangaskhan
    (8607, 115, 11500, 19, NULL, 'native'),
    -- #116 Horsea
    (8608, 116, 11600, 19, NULL, 'native'),
    -- #117 Seadra
    (8609, 117, 11700, 19, NULL, 'native'),
    -- #120 Staryu
    (8610, 120, 12000, 19, NULL, 'native'),
    -- #121 Starmie
    (8611, 121, 12100, 19, NULL, 'native'),
    -- #123 Scyther
    (8612, 123, 12300, 19, NULL, 'native'),
    -- #127 Pinsir
    (8613, 127, 12700, 19, NULL, 'native'),
    -- #128 Tauros
    (8614, 128, 12800, 19, NULL, 'native'),
    -- #137 Porygon
    (8615, 137, 13700, 19, NULL, 'native'),
    -- #174 Igglybuff
    (8616, 174, 17400, 19, NULL, 'native'),
    -- #183 Marill
    (8617, 183, 18300, 19, NULL, 'native'),
    -- #184 Azumarill
    (8618, 184, 18400, 19, NULL, 'native'),
    -- #186 Politoed
    (8619, 186, 18600, 19, NULL, 'native'),
    -- #199 Slowking
    (8620, 199, 19900, 19, NULL, 'native'),
    -- #206 Dunsparce
    (8621, 206, 20600, 19, NULL, 'native'),
    -- #212 Scizor
    (8622, 212, 21200, 19, NULL, 'native'),
    -- #214 Heracross
    (8623, 214, 21400, 19, NULL, 'native'),
    -- #227 Skarmory
    (8624, 227, 22700, 19, NULL, 'native'),
    -- #230 Kingdra
    (8625, 230, 23000, 19, NULL, 'native'),
    -- #233 Porygon2
    (8626, 233, 23300, 19, NULL, 'native'),
    -- #241 Miltank
    (8627, 241, 24100, 19, NULL, 'native'),
    -- #242 Blissey
    (8628, 242, 24200, 19, NULL, 'native'),
    -- #293 Whismur
    (8629, 293, 29300, 19, NULL, 'native'),
    -- #294 Loudred
    (8630, 294, 29400, 19, NULL, 'native'),
    -- #295 Exploud
    (8631, 295, 29500, 19, NULL, 'native'),
    -- #298 Azurill
    (8632, 298, 29800, 19, NULL, 'native'),
    -- #318 Carvanha
    (8633, 318, 31800, 19, NULL, 'native'),
    -- #319 Sharpedo
    (8634, 319, 31900, 19, NULL, 'native'),
    -- #403 Shinx
    (8635, 403, 40300, 19, NULL, 'native'),
    -- #404 Luxio
    (8636, 404, 40400, 19, NULL, 'native'),
    -- #405 Luxray
    (8637, 405, 40500, 19, NULL, 'native'),
    -- #427 Buneary
    (8638, 427, 42700, 19, NULL, 'native'),
    -- #428 Lopunny
    (8639, 428, 42800, 19, NULL, 'native'),
    -- #440 Happiny
    (8640, 440, 44000, 19, NULL, 'native'),
    -- #462 Magnezone
    (8641, 462, 46200, 19, NULL, 'native'),
    -- #463 Lickilicky
    (8642, 463, 46300, 19, NULL, 'native'),
    -- #465 Tangrowth
    (8643, 465, 46500, 19, NULL, 'native'),
    -- #474 Porygon-Z
    (8644, 474, 47400, 19, NULL, 'native'),
    -- #506 Lillipup
    (8645, 506, 50600, 19, NULL, 'native'),
    -- #507 Herdier
    (8646, 507, 50700, 19, NULL, 'native'),
    -- #508 Stoutland
    (8647, 508, 50800, 19, NULL, 'native'),
    -- #543 Venipede
    (8648, 543, 54300, 19, NULL, 'native'),
    -- #544 Whirlipede
    (8649, 544, 54400, 19, NULL, 'native'),
    -- #545 Scolipede
    (8650, 545, 54500, 19, NULL, 'native'),
    -- #548 Petilil
    (8651, 548, 54800, 19, NULL, 'native'),
    -- #549 Lilligant
    (8652, 549, 54900, 19, NULL, 'native'),
    -- #551 Sandile
    (8653, 551, 55100, 19, NULL, 'native'),
    -- #552 Krokorok
    (8654, 552, 55200, 19, NULL, 'native'),
    -- #553 Krookodile
    (8655, 553, 55300, 19, NULL, 'native'),
    -- #570 Zorua
    (8656, 570, 57000, 19, NULL, 'native'),
    -- #571 Zoroark
    (8657, 571, 57100, 19, NULL, 'native'),
    -- #587 Emolga
    (8658, 587, 58700, 19, NULL, 'native'),
    -- #590 Foongus
    (8659, 590, 59000, 19, NULL, 'native'),
    -- #591 Amoonguss
    (8660, 591, 59100, 19, NULL, 'native'),
    -- #619 Mienfoo
    (8661, 619, 61900, 19, NULL, 'native'),
    -- #620 Mienshao
    (8662, 620, 62000, 19, NULL, 'native'),
    -- #621 Druddigon
    (8663, 621, 62100, 19, NULL, 'native'),
    -- #626 Bouffalant
    (8664, 626, 62600, 19, NULL, 'native'),
    -- #636 Larvesta
    (8665, 636, 63600, 19, NULL, 'native'),
    -- #637 Volcarona
    (8666, 637, 63700, 19, NULL, 'native'),
    -- #661 Fletchling
    (8667, 661, 66100, 19, NULL, 'native'),
    -- #662 Fletchinder
    (8668, 662, 66200, 19, NULL, 'native'),
    -- #663 Talonflame
    (8669, 663, 66300, 19, NULL, 'native'),
    -- #690 Skrelp
    (8670, 690, 69000, 19, NULL, 'native'),
    -- #691 Dragalge
    (8671, 691, 69100, 19, NULL, 'native'),
    -- #692 Clauncher
    (8672, 692, 69200, 19, NULL, 'native'),
    -- #693 Clawitzer
    (8673, 693, 69300, 19, NULL, 'native'),
    -- #702 Dedenne
    (8674, 702, 70200, 19, NULL, 'native'),
    -- #707 Klefki
    (8675, 707, 70700, 19, NULL, 'native'),
    -- #744 Rockruff
    (8676, 744, 74400, 19, NULL, 'native'),
    -- #745 Lycanroc
    (8677, 745, 74500, 19, NULL, 'native'),
    -- #753 Fomantis
    (8678, 753, 75300, 19, NULL, 'native'),
    -- #754 Lurantis
    (8679, 754, 75400, 19, NULL, 'native'),
    -- #764 Comfey
    (8680, 764, 76400, 19, NULL, 'native'),
    -- #769 Sandygast
    (8681, 769, 76900, 19, NULL, 'native'),
    -- #770 Palossand
    (8682, 770, 77000, 19, NULL, 'native'),
    -- #891 Kubfu
    (8683, 891, 89100, 19, NULL, 'native'),
    -- #892 Urshifu
    (8684, 892, 89200, 19, NULL, 'native'),
    -- #893 Zarude
    (8685, 893, 89300, 19, NULL, 'native');