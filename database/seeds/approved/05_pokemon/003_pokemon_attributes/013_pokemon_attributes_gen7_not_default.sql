-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.pokemon_attributes
-- Scope: non-default forms introduced in Gen 7
-- ============================================================================
-- Important Notes
-- ============================================================================
-- All Alolan forms were introduced in Gen 7 with Hidden Abilities from launch.
-- Zygarde 10% has Aura Break / Power Construct (both non-hidden). Complete excluded (battle-only).
-- Oricorio forms share identical stats (75/70/70/98/70/93) but differ in type1.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- === Alolan Regional Variants ===
    -- #019 Alolan Rattata (Gluttony / Hustle / HA: Thick Fat)
    (19, 1901, 7, 16, 1, 82, 55, 47, 7, NULL, 30, 56, 35, 25, 35, 72, NULL),
    -- #020 Alolan Raticate (Gluttony / Hustle / HA: Thick Fat)
    (20, 2001, 7, 16, 1, 82, 55, 47, 7, NULL, 75, 71, 70, 40, 80, 77, NULL),
    -- #026 Alolan Raichu (Surge Surfer only)
    (26, 2601, 7, 4, 11, 207, NULL, NULL, 7, 8, 60, 85, 50, 95, 85, 110, NULL),
    -- #027 Alolan Sandshrew (Snow Cloak / HA: Slush Rush)
    (27, 2701, 7, 6, 17, 81, NULL, 202, 7, NULL, 50, 75, 90, 10, 35, 40, NULL),
    -- #028 Alolan Sandslash (Snow Cloak / HA: Slush Rush)
    (28, 2801, 7, 6, 17, 81, NULL, 202, 7, NULL, 75, 100, 120, 25, 65, 65, NULL),
    -- #037 Alolan Vulpix (Snow Cloak / HA: Snow Warning)
    (37, 3701, 7, 6, NULL, 81, NULL, 117, 7, NULL, 38, 41, 40, 50, 65, 65, NULL),
    -- #038 Alolan Ninetales (Snow Cloak / HA: Snow Warning)
    (38, 3801, 7, 6, 18, 81, NULL, 117, 7, NULL, 73, 67, 75, 81, 100, 109, NULL),
    -- #050 Alolan Diglett (Sand Veil / Tangling Hair / HA: Sand Force)
    (50, 5001, 7, 9, 17, 8, 221, 159, 7, NULL, 10, 55, 30, 35, 45, 90, NULL),
    -- #051 Alolan Dugtrio (Sand Veil / Tangling Hair / HA: Sand Force)
    (51, 5101, 7, 9, 17, 8, 221, 159, 7, NULL, 35, 100, 60, 50, 70, 110, NULL),
    -- #052 Alolan Meowth (Pickup / Technician / HA: Rattled)
    (52, 5201, 7, 16, NULL, 53, 101, 155, 7, NULL, 40, 35, 35, 50, 40, 90, NULL),
    -- #053 Alolan Persian (Fur Coat / Technician / HA: Rattled)
    (53, 5301, 7, 16, NULL, 169, 101, 155, 7, NULL, 65, 60, 60, 75, 65, 115, NULL),
    -- #074 Alolan Geodude (Magnet Pull / Sturdy / HA: Galvanize)
    (74, 7401, 7, 13, 4, 42, 5, 206, 11, NULL, 40, 80, 100, 30, 30, 20, NULL),
    -- #075 Alolan Graveler (Magnet Pull / Sturdy / HA: Galvanize)
    (75, 7501, 7, 13, 4, 42, 5, 206, 11, NULL, 55, 95, 115, 45, 45, 35, NULL),
    -- #076 Alolan Golem (Magnet Pull / Sturdy / HA: Galvanize)
    (76, 7601, 7, 13, 4, 42, 5, 206, 11, NULL, 80, 120, 130, 55, 65, 45, NULL),
    -- #088 Alolan Grimer (Poison Touch / Gluttony / HA: Power of Alchemy)
    (88, 8801, 7, 8, 16, 143, 82, 223, 12, NULL, 80, 80, 50, 40, 50, 25, NULL),
    -- #089 Alolan Muk (Poison Touch / Gluttony / HA: Power of Alchemy)
    (89, 8901, 7, 8, 16, 143, 82, 223, 12, NULL, 105, 105, 75, 65, 100, 50, NULL),
    -- #103 Alolan Exeggutor (Frisk / HA: Harvest)
    (103, 10301, 7, 5, 15, 119, NULL, 139, 9, NULL, 95, 105, 85, 125, 75, 45, NULL),
    -- #105 Alolan Marowak (Cursed Body / Lightning Rod / HA: Rock Head)
    (105, 10501, 7, 2, 14, 130, 31, 69, 1, NULL, 60, 80, 110, 50, 80, 45, NULL),
    -- === Oricorio Styles (same stats, different type1) ===
    -- #741 Oricorio Pom-Pom (Dancer only)
    (741, 74101, 7, 4, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93, NULL),
    -- #741 Oricorio Pa'u (Dancer only)
    (741, 74102, 7, 11, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93, NULL),
    -- #741 Oricorio Sensu (Dancer only)
    (741, 74103, 7, 14, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93, NULL),
    -- === Lycanroc Forms ===
    -- #745 Lycanroc Midnight (Keen Eye / Vital Spirit / HA: No Guard)
    (745, 74501, 7, 13, NULL, 51, 72, 99, 7, NULL, 85, 115, 75, 55, 75, 82, NULL),
    -- #745 Lycanroc Dusk (Tough Claws only, no HA)
    (745, 74502, 7, 13, NULL, 181, NULL, NULL, 7, NULL, 75, 117, 65, 55, 65, 110, NULL),
    -- === Zygarde 10% Forme ===
    -- #718 Zygarde 10% (Aura Break / Power Construct, no HA)
    (718, 71801, 7, 15, 9, 188, 211, NULL, 15, NULL, 54, 100, 71, 61, 85, 115, NULL),
    -- === Necrozma Fusions ===
    -- #800 Necrozma Dusk Mane (Prism Armor, no HA)
    (800, 80001, 7, 11, 17, 232, NULL, NULL, 15, NULL, 97, 157, 127, 113, 109, 77, NULL),
    -- #800 Necrozma Dawn Wings (Prism Armor, no HA)
    (800, 80002, 7, 11, 14, 232, NULL, NULL, 15, NULL, 97, 113, 109, 157, 127, 77, NULL);