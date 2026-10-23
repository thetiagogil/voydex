-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokedex form pages per game (Unown, Shellos/Gastrodon, Deerling/Sawsbuck, Vivillon, Flabebe family, Furfrou, Pikachu caps, Alcremie, Keldeo, Zarude, Gimmighoul, Pichu).
-- Cross-check: PokeAPI pokemon-form records for names, ids and images.
-- Scope note: persistent forms that are caught and kept (variants) or switched on a save (forms), purely cosmetic ones included. Alcremie is modelled by cream only; its sweet is a per-Pokemon detail. Cosplay Pikachu, Minior cores, Battle Bond Greninja and Power Construct Zygarde are left out for now.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: cosmetic and other persistent forms; each repeats its default's change points from its own generation (Roaming Gimmighoul has its own stats and ability).
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0201 Unown - Unown (B)
  (201, 20101, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (B)
  (201, 20101, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (C)
  (201, 20102, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (C)
  (201, 20102, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (D)
  (201, 20103, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (D)
  (201, 20103, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (E)
  (201, 20104, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (E)
  (201, 20104, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (F)
  (201, 20105, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (F)
  (201, 20105, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (G)
  (201, 20106, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (G)
  (201, 20106, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (H)
  (201, 20107, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (H)
  (201, 20107, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (I)
  (201, 20108, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (I)
  (201, 20108, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (J)
  (201, 20109, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (J)
  (201, 20109, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (K)
  (201, 20110, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (K)
  (201, 20110, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (L)
  (201, 20111, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (L)
  (201, 20111, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (M)
  (201, 20112, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (M)
  (201, 20112, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (N)
  (201, 20113, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (N)
  (201, 20113, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (O)
  (201, 20114, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (O)
  (201, 20114, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (P)
  (201, 20115, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (P)
  (201, 20115, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (Q)
  (201, 20116, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (Q)
  (201, 20116, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (R)
  (201, 20117, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (R)
  (201, 20117, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (S)
  (201, 20118, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (S)
  (201, 20118, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (T)
  (201, 20119, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (T)
  (201, 20119, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (U)
  (201, 20120, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (U)
  (201, 20120, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (V)
  (201, 20121, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (V)
  (201, 20121, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (W)
  (201, 20122, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (W)
  (201, 20122, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (X)
  (201, 20123, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (X)
  (201, 20123, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (Y)
  (201, 20124, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (Y)
  (201, 20124, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (Z)
  (201, 20125, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (Z)
  (201, 20125, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (!)
  (201, 20126, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0201 Unown - Unown (?)
  (201, 20127, 3, 11, NULL, 26, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0422 Shellos - Shellos (East Sea)
  (422, 42201, 4, 3, NULL, 60, 114, NULL, 2, 12, 76, 48, 48, 57, 62, 34),
  -- #0422 Shellos - Shellos (East Sea)
  (422, 42201, 5, 3, NULL, 60, 114, 159, 2, 12, 76, 48, 48, 57, 62, 34),
  -- #0423 Gastrodon - Gastrodon (East Sea)
  (423, 42301, 4, 3, 9, 60, 114, NULL, 2, 12, 111, 83, 68, 92, 82, 39),
  -- #0423 Gastrodon - Gastrodon (East Sea)
  (423, 42301, 5, 3, 9, 60, 114, 159, 2, 12, 111, 83, 68, 92, 82, 39),
  -- #0585 Deerling - Deerling (Summer Form)
  (585, 58501, 5, 1, 5, 34, 157, 32, 7, NULL, 60, 60, 50, 40, 50, 75),
  -- #0585 Deerling - Deerling (Autumn Form)
  (585, 58502, 5, 1, 5, 34, 157, 32, 7, NULL, 60, 60, 50, 40, 50, 75),
  -- #0585 Deerling - Deerling (Winter Form)
  (585, 58503, 5, 1, 5, 34, 157, 32, 7, NULL, 60, 60, 50, 40, 50, 75),
  -- #0586 Sawsbuck - Sawsbuck (Summer Form)
  (586, 58601, 5, 1, 5, 34, 157, 32, 7, NULL, 80, 100, 70, 60, 70, 95),
  -- #0586 Sawsbuck - Sawsbuck (Autumn Form)
  (586, 58602, 5, 1, 5, 34, 157, 32, 7, NULL, 80, 100, 70, 60, 70, 95),
  -- #0586 Sawsbuck - Sawsbuck (Winter Form)
  (586, 58603, 5, 1, 5, 34, 157, 32, 7, NULL, 80, 100, 70, 60, 70, 95),
  -- #0666 Vivillon - Vivillon (Icy Snow Pattern)
  (666, 66601, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Polar Pattern)
  (666, 66602, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Tundra Pattern)
  (666, 66603, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Continental Pattern)
  (666, 66604, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Garden Pattern)
  (666, 66605, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Elegant Pattern)
  (666, 66606, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Modern Pattern)
  (666, 66607, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Marine Pattern)
  (666, 66608, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Archipelago Pattern)
  (666, 66609, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (High Plains Pattern)
  (666, 66610, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Sandstorm Pattern)
  (666, 66611, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (River Pattern)
  (666, 66612, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Monsoon Pattern)
  (666, 66613, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Savanna Pattern)
  (666, 66614, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Sun Pattern)
  (666, 66615, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Ocean Pattern)
  (666, 66616, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Jungle Pattern)
  (666, 66617, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Fancy Pattern)
  (666, 66618, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0666 Vivillon - Vivillon (Poke Ball Pattern)
  (666, 66619, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89),
  -- #0669 Flabebe - Flabebe (Yellow Flower)
  (669, 66901, 6, 18, NULL, 166, NULL, 180, 8, NULL, 44, 38, 39, 61, 79, 42),
  -- #0669 Flabebe - Flabebe (Orange Flower)
  (669, 66902, 6, 18, NULL, 166, NULL, 180, 8, NULL, 44, 38, 39, 61, 79, 42),
  -- #0669 Flabebe - Flabebe (Blue Flower)
  (669, 66903, 6, 18, NULL, 166, NULL, 180, 8, NULL, 44, 38, 39, 61, 79, 42),
  -- #0669 Flabebe - Flabebe (White Flower)
  (669, 66904, 6, 18, NULL, 166, NULL, 180, 8, NULL, 44, 38, 39, 61, 79, 42),
  -- #0670 Floette - Floette (Yellow Flower)
  (670, 67003, 6, 18, NULL, 166, NULL, 180, 8, NULL, 54, 45, 47, 75, 98, 52),
  -- #0670 Floette - Floette (Orange Flower)
  (670, 67004, 6, 18, NULL, 166, NULL, 180, 8, NULL, 54, 45, 47, 75, 98, 52),
  -- #0670 Floette - Floette (Blue Flower)
  (670, 67005, 6, 18, NULL, 166, NULL, 180, 8, NULL, 54, 45, 47, 75, 98, 52),
  -- #0670 Floette - Floette (White Flower)
  (670, 67006, 6, 18, NULL, 166, NULL, 180, 8, NULL, 54, 45, 47, 75, 98, 52),
  -- #0671 Florges - Florges (Yellow Flower)
  (671, 67101, 6, 18, NULL, 166, NULL, 180, 8, NULL, 78, 65, 68, 112, 154, 75),
  -- #0671 Florges - Florges (Orange Flower)
  (671, 67102, 6, 18, NULL, 166, NULL, 180, 8, NULL, 78, 65, 68, 112, 154, 75),
  -- #0671 Florges - Florges (Blue Flower)
  (671, 67103, 6, 18, NULL, 166, NULL, 180, 8, NULL, 78, 65, 68, 112, 154, 75),
  -- #0671 Florges - Florges (White Flower)
  (671, 67104, 6, 18, NULL, 166, NULL, 180, 8, NULL, 78, 65, 68, 112, 154, 75),
  -- #0676 Furfrou - Furfrou (Heart Trim)
  (676, 67601, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Star Trim)
  (676, 67602, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Diamond Trim)
  (676, 67603, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Debutante Trim)
  (676, 67604, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Matron Trim)
  (676, 67605, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Dandy Trim)
  (676, 67606, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (La Reine Trim)
  (676, 67607, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Kabuki Trim)
  (676, 67608, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0676 Furfrou - Furfrou (Pharaoh Trim)
  (676, 67609, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102),
  -- #0869 Alcremie - Alcremie (Ruby Cream)
  (869, 86902, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Matcha Cream)
  (869, 86903, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Mint Cream)
  (869, 86904, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Lemon Cream)
  (869, 86905, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Salted Cream)
  (869, 86906, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Ruby Swirl)
  (869, 86907, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Caramel Swirl)
  (869, 86908, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0869 Alcremie - Alcremie (Rainbow Swirl)
  (869, 86909, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0025 Pikachu - Pikachu (Original Cap)
  (25, 2503, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (Hoenn Cap)
  (25, 2504, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (Sinnoh Cap)
  (25, 2505, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (Unova Cap)
  (25, 2506, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (Kalos Cap)
  (25, 2507, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (Alola Cap)
  (25, 2508, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (Partner Cap)
  (25, 2509, 7, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0025 Pikachu - Pikachu (World Cap)
  (25, 2510, 8, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0172 Pichu - Pichu (Spiky-eared)
  (172, 17201, 4, 4, NULL, 9, NULL, NULL, 15, NULL, 20, 40, 15, 35, 35, 60),
  -- #0172 Pichu - Pichu (Spiky-eared)
  (172, 17201, 5, 4, NULL, 9, NULL, 31, 15, NULL, 20, 40, 15, 35, 35, 60),
  -- #0893 Zarude - Zarude (Dada)
  (893, 89301, 8, 16, 5, 102, NULL, NULL, 15, NULL, 105, 120, 105, 70, 95, 105),
  -- #0999 Gimmighoul - Gimmighoul (Roaming Form)
  (999, 99901, 9, 14, NULL, 50, NULL, NULL, 15, NULL, 45, 30, 25, 75, 45, 80),
  -- #0647 Keldeo - Keldeo (Resolute Form)
  (647, 64701, 5, 3, 7, 154, NULL, NULL, 15, NULL, 91, 72, 90, 129, 90, 108);
