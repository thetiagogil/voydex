-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.pokemon_attributes
-- Scope: non-default forms introduced in Gen 8
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Galarian birds (Articuno/Zapdos/Moltres) have no Hidden Abilities.
-- Hisuian forms received HA assignments when introduced to Gen 9 (HOME/SV).
-- Basculegion Female ab1=Rattled(155) in Gen 8; changed to Swift Swim(33) in Gen 9 (see gen9_not_default).
-- Zacian/Zamazenta Crowned: Gen 8 stats used here; Gen 9 nerfs in gen9_not_default.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- === Galarian Regional Variants ===
    -- #052 Galarian Meowth (Pickup / Tough Claws / HA: Unnerve)
    (52, 5202, 8, 17, NULL, 53, 181, 127, 7, NULL, 50, 65, 55, 40, 40, 40, NULL),
    -- #077 Galarian Ponyta (Run Away / Pastel Veil / HA: Anticipation)
    (77, 7701, 8, 11, NULL, 50, 257, 107, 7, NULL, 50, 85, 55, 65, 65, 90, NULL),
    -- #078 Galarian Rapidash (Run Away / Pastel Veil / HA: Anticipation)
    (78, 7801, 8, 11, 18, 50, 257, 107, 7, NULL, 65, 100, 70, 80, 80, 105, NULL),
    -- #079 Galarian Slowpoke (Gluttony / Own Tempo / HA: Regenerator)
    (79, 7901, 8, 11, NULL, 82, 20, 144, 1, 2, 90, 65, 65, 40, 40, 15, NULL),
    -- #080 Galarian Slowbro (Quick Draw / Own Tempo / HA: Regenerator)
    (80, 8002, 8, 8, 11, 259, 20, 144, 1, 2, 95, 100, 95, 100, 70, 30, NULL),
    -- #083 Galarian Farfetch'd (Steadfast / HA: Scrappy)
    (83, 8301, 8, 7, NULL, 80, NULL, 113, 6, 7, 52, 95, 55, 58, 62, 55, NULL),
    -- #110 Galarian Weezing (Levitate / Neutralizing Gas / HA: Misty Surge)
    (110, 11001, 8, 8, 18, 26, 256, 228, 12, NULL, 65, 90, 120, 85, 70, 60, NULL),
    -- #122 Galarian Mr. Mime (Vital Spirit / Screen Cleaner / HA: Ice Body)
    (122, 12201, 8, 6, 11, 72, 251, 115, 10, NULL, 50, 65, 65, 90, 90, 100, NULL),
    -- #144 Galarian Articuno (Competitive, no HA)
    (144, 14401, 8, 11, 10, 172, NULL, NULL, 15, NULL, 90, 85, 85, 125, 100, 95, NULL),
    -- #145 Galarian Zapdos (Defiant, no HA)
    (145, 14501, 8, 7, 10, 128, NULL, NULL, 15, NULL, 90, 125, 90, 85, 90, 100, NULL),
    -- #146 Galarian Moltres (Berserk, no HA)
    (146, 14601, 8, 16, 10, 201, NULL, NULL, 15, NULL, 90, 85, 90, 100, 125, 90, NULL),
    -- #199 Galarian Slowking (Curious Medicine / Own Tempo / HA: Regenerator)
    (199, 19901, 8, 8, 11, 261, 20, 144, 1, 2, 95, 65, 80, 110, 110, 30, NULL),
    -- #222 Galarian Corsola (Weak Armor / HA: Cursed Body)
    (222, 22201, 8, 14, NULL, 133, NULL, 130, 2, 4, 60, 55, 100, 65, 100, 30, NULL),
    -- #263 Galarian Zigzagoon (Pickup / Gluttony / HA: Quick Feet)
    (263, 26301, 8, 16, 1, 53, 82, 95, 7, NULL, 38, 30, 41, 30, 41, 60, NULL),
    -- #264 Galarian Linoone (Pickup / Gluttony / HA: Quick Feet)
    (264, 26401, 8, 16, 1, 53, 82, 95, 7, NULL, 78, 70, 61, 50, 61, 100, NULL),
    -- #554 Galarian Darumaka (Hustle / HA: Inner Focus)
    (554, 55401, 8, 6, NULL, 55, NULL, 39, 7, NULL, 70, 90, 45, 15, 45, 50, NULL),
    -- #555 Galarian Darmanitan (Gorilla Tactics / HA: Zen Mode)
    (555, 55502, 8, 6, NULL, 255, NULL, 161, 7, NULL, 105, 140, 55, 30, 55, 95, NULL),
    -- #562 Galarian Yamask (Wandering Spirit, no HA)
    (562, 56201, 8, 9, 14, 254, NULL, NULL, 11, 12, 38, 55, 85, 30, 65, 30, NULL),
    -- #618 Galarian Stunfisk (Mimicry, no HA)
    (618, 61801, 8, 9, 17, 250, NULL, NULL, 2, 12, 109, 81, 99, 66, 84, 32, NULL),
    -- === Hisuian Regional Variants ===
    -- #058 Hisuian Growlithe (Intimidate / Flash Fire / HA: Rock Head)
    (58, 5801, 8, 2, 13, 22, 18, 69, 7, NULL, 60, 75, 45, 65, 50, 55, NULL),
    -- #059 Hisuian Arcanine (Intimidate / Flash Fire / HA: Rock Head)
    (59, 5901, 8, 2, 13, 22, 18, 69, 7, NULL, 95, 115, 80, 95, 80, 90, NULL),
    -- #100 Hisuian Voltorb (Soundproof / Static / HA: Aftermath)
    (100, 10001, 8, 4, 5, 43, 9, 106, 11, NULL, 40, 30, 50, 55, 55, 100, NULL),
    -- #101 Hisuian Electrode (Soundproof / Static / HA: Aftermath)
    (101, 10101, 8, 4, 5, 43, 9, 106, 11, NULL, 60, 50, 70, 80, 80, 150, NULL),
    -- #157 Hisuian Typhlosion (Blaze / HA: Frisk)
    (157, 15701, 8, 2, 14, 66, NULL, 119, 7, NULL, 73, 84, 78, 119, 85, 95, NULL),
    -- #211 Hisuian Qwilfish (Poison Point / Swift Swim / HA: Intimidate)
    (211, 21101, 8, 16, 8, 38, 33, 22, 3, NULL, 65, 95, 85, 55, 55, 85, NULL),
    -- #215 Hisuian Sneasel (Inner Focus / Keen Eye / HA: Pickpocket)
    (215, 21501, 8, 7, 8, 39, 51, 124, 7, NULL, 55, 95, 55, 35, 75, 115, NULL),
    -- #503 Hisuian Samurott (Torrent / HA: Sharpness)
    (503, 50301, 8, 3, 16, 67, NULL, 292, 7, NULL, 90, 108, 80, 100, 65, 85, NULL),
    -- #549 Hisuian Lilligant (Chlorophyll / Hustle / HA: Leaf Guard)
    (549, 54901, 8, 5, 7, 34, 55, 102, 9, NULL, 70, 105, 75, 50, 75, 105, NULL),
    -- #570 Hisuian Zorua (Illusion, no HA)
    (570, 57001, 8, 1, 14, 149, NULL, NULL, 7, NULL, 35, 60, 40, 85, 40, 70, NULL),
    -- #571 Hisuian Zoroark (Illusion, no HA)
    (571, 57101, 8, 1, 14, 149, NULL, NULL, 7, NULL, 55, 100, 60, 125, 60, 110, NULL),
    -- #628 Hisuian Braviary (Keen Eye / Sheer Force / HA: Tinted Lens)
    (628, 62801, 8, 11, 10, 51, 125, 110, 6, NULL, 110, 83, 70, 112, 70, 65, NULL),
    -- #705 Hisuian Sliggoo (Sap Sipper / Shell Armor / HA: Gooey)
    (705, 70501, 8, 17, 15, 157, 75, 183, 13, NULL, 58, 75, 83, 83, 113, 40, NULL),
    -- #706 Hisuian Goodra (Sap Sipper / Shell Armor / HA: Gooey)
    (706, 70601, 8, 17, 15, 157, 75, 183, 13, NULL, 80, 100, 100, 110, 150, 60, NULL),
    -- #713 Hisuian Avalugg (Strong Jaw / Ice Body / HA: Sturdy)
    (713, 71301, 8, 6, 13, 173, 115, 5, 1, 11, 95, 127, 184, 34, 36, 38, NULL),
    -- #724 Hisuian Decidueye (Overgrow / HA: Scrappy)
    (724, 72401, 8, 5, 7, 65, NULL, 113, 6, NULL, 88, 112, 80, 95, 95, 60, NULL),
    -- === Other Gen 8 Non-Default Forms ===
    -- #550 Basculin White-Striped (Rattled / Adaptability / HA: Mold Breaker)
    (550, 55002, 8, 3, NULL, 155, 91, 104, 3, NULL, 70, 92, 65, 80, 55, 98, NULL),
    -- #849 Toxtricity Low Key (Punk Rock / Minus / HA: Technician)
    (849, 84901, 8, 4, 8, 244, 58, 101, 10, NULL, 75, 98, 70, 114, 70, 75, NULL),
    -- #876 Indeedee Female (Own Tempo / Synchronize / HA: Psychic Surge)
    (876, 87601, 8, 11, 1, 20, 28, 227, 8, NULL, 70, 55, 65, 95, 105, 85, NULL),
    -- #888 Zacian Crowned Sword (Intrepid Sword, no HA) — Gen 8 stats
    (888, 88801, 8, 18, 17, 234, NULL, NULL, 15, NULL, 92, 170, 115, 80, 115, 148, NULL),
    -- #889 Zamazenta Crowned Shield (Dauntless Shield, no HA) — Gen 8 stats
    (889, 88901, 8, 7, 17, 235, NULL, NULL, 15, NULL, 92, 130, 145, 80, 145, 128, NULL),
    -- #892 Urshifu Rapid Strike (Unseen Fist, no HA)
    (892, 89201, 8, 7, 3, 260, NULL, NULL, 15, NULL, 100, 130, 100, 63, 60, 97, NULL),
    -- #898 Calyrex Ice Rider (As One Glastrier, no HA)
    (898, 89801, 8, 11, 6, 266, NULL, NULL, 15, NULL, 100, 165, 150, 85, 130, 50, NULL),
    -- #898 Calyrex Shadow Rider (As One Spectrier, no HA)
    (898, 89802, 8, 11, 14, 267, NULL, NULL, 15, NULL, 100, 85, 80, 165, 100, 150, NULL),
    -- #902 Basculegion Female (Rattled / Adaptability / HA: Mold Breaker) — higher SpAtk, lower Atk than Male
    (902, 90201, 8, 3, 14, 155, 91, 104, 3, NULL, 120, 92, 65, 100, 75, 78, NULL),
    -- #905 Enamorus Therian (Overcoat, no HA)
    (905, 90501, 8, 18, 10, 142, NULL, NULL, 15, NULL, 74, 115, 110, 135, 100, 46, NULL);