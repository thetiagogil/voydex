-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokedex form pages per game (Unown, Shellos/Gastrodon, Deerling/Sawsbuck, Vivillon, Flabebe family, Furfrou, Pikachu caps, Alcremie, Keldeo, Zarude, Gimmighoul, Pichu).
-- Cross-check: PokeAPI pokemon-form records for names, ids and images.
-- Scope note: persistent forms that are caught and kept (variants) or switched on a save (forms), purely cosmetic ones included. Alcremie is modelled by cream only; its sweet is a per-Pokemon detail. Cosplay Pikachu, Minior cores, Battle Bond Greninja and Power Construct Zygarde are left out for now.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_forms
-- Scope: cosmetic and other persistent forms (variants and switchable forms).
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Unown (B)
  (20101, 201, 'unown-b', 'Unown (B)', 2, FALSE, 2, NULL, NULL),
  -- Unown (C)
  (20102, 201, 'unown-c', 'Unown (C)', 2, FALSE, 3, NULL, NULL),
  -- Unown (D)
  (20103, 201, 'unown-d', 'Unown (D)', 2, FALSE, 4, NULL, NULL),
  -- Unown (E)
  (20104, 201, 'unown-e', 'Unown (E)', 2, FALSE, 5, NULL, NULL),
  -- Unown (F)
  (20105, 201, 'unown-f', 'Unown (F)', 2, FALSE, 6, NULL, NULL),
  -- Unown (G)
  (20106, 201, 'unown-g', 'Unown (G)', 2, FALSE, 7, NULL, NULL),
  -- Unown (H)
  (20107, 201, 'unown-h', 'Unown (H)', 2, FALSE, 8, NULL, NULL),
  -- Unown (I)
  (20108, 201, 'unown-i', 'Unown (I)', 2, FALSE, 9, NULL, NULL),
  -- Unown (J)
  (20109, 201, 'unown-j', 'Unown (J)', 2, FALSE, 10, NULL, NULL),
  -- Unown (K)
  (20110, 201, 'unown-k', 'Unown (K)', 2, FALSE, 11, NULL, NULL),
  -- Unown (L)
  (20111, 201, 'unown-l', 'Unown (L)', 2, FALSE, 12, NULL, NULL),
  -- Unown (M)
  (20112, 201, 'unown-m', 'Unown (M)', 2, FALSE, 13, NULL, NULL),
  -- Unown (N)
  (20113, 201, 'unown-n', 'Unown (N)', 2, FALSE, 14, NULL, NULL),
  -- Unown (O)
  (20114, 201, 'unown-o', 'Unown (O)', 2, FALSE, 15, NULL, NULL),
  -- Unown (P)
  (20115, 201, 'unown-p', 'Unown (P)', 2, FALSE, 16, NULL, NULL),
  -- Unown (Q)
  (20116, 201, 'unown-q', 'Unown (Q)', 2, FALSE, 17, NULL, NULL),
  -- Unown (R)
  (20117, 201, 'unown-r', 'Unown (R)', 2, FALSE, 18, NULL, NULL),
  -- Unown (S)
  (20118, 201, 'unown-s', 'Unown (S)', 2, FALSE, 19, NULL, NULL),
  -- Unown (T)
  (20119, 201, 'unown-t', 'Unown (T)', 2, FALSE, 20, NULL, NULL),
  -- Unown (U)
  (20120, 201, 'unown-u', 'Unown (U)', 2, FALSE, 21, NULL, NULL),
  -- Unown (V)
  (20121, 201, 'unown-v', 'Unown (V)', 2, FALSE, 22, NULL, NULL),
  -- Unown (W)
  (20122, 201, 'unown-w', 'Unown (W)', 2, FALSE, 23, NULL, NULL),
  -- Unown (X)
  (20123, 201, 'unown-x', 'Unown (X)', 2, FALSE, 24, NULL, NULL),
  -- Unown (Y)
  (20124, 201, 'unown-y', 'Unown (Y)', 2, FALSE, 25, NULL, NULL),
  -- Unown (Z)
  (20125, 201, 'unown-z', 'Unown (Z)', 2, FALSE, 26, NULL, NULL),
  -- Unown (!)
  (20126, 201, 'unown-exclamation', 'Unown (!)', 3, FALSE, 27, NULL, NULL),
  -- Unown (?)
  (20127, 201, 'unown-question', 'Unown (?)', 3, FALSE, 28, NULL, NULL),
  -- Shellos (East Sea)
  (42201, 422, 'shellos-east', 'Shellos (East Sea)', 4, FALSE, 2, NULL, NULL),
  -- Gastrodon (East Sea)
  (42301, 423, 'gastrodon-east', 'Gastrodon (East Sea)', 4, FALSE, 2, NULL, NULL),
  -- Deerling (Summer Form)
  (58501, 585, 'deerling-summer', 'Deerling (Summer Form)', 5, FALSE, 2, NULL, NULL),
  -- Deerling (Autumn Form)
  (58502, 585, 'deerling-autumn', 'Deerling (Autumn Form)', 5, FALSE, 3, NULL, NULL),
  -- Deerling (Winter Form)
  (58503, 585, 'deerling-winter', 'Deerling (Winter Form)', 5, FALSE, 4, NULL, NULL),
  -- Sawsbuck (Summer Form)
  (58601, 586, 'sawsbuck-summer', 'Sawsbuck (Summer Form)', 5, FALSE, 2, NULL, NULL),
  -- Sawsbuck (Autumn Form)
  (58602, 586, 'sawsbuck-autumn', 'Sawsbuck (Autumn Form)', 5, FALSE, 3, NULL, NULL),
  -- Sawsbuck (Winter Form)
  (58603, 586, 'sawsbuck-winter', 'Sawsbuck (Winter Form)', 5, FALSE, 4, NULL, NULL),
  -- Vivillon (Icy Snow Pattern)
  (66601, 666, 'vivillon-icy-snow', 'Vivillon (Icy Snow Pattern)', 6, FALSE, 2, NULL, NULL),
  -- Vivillon (Polar Pattern)
  (66602, 666, 'vivillon-polar', 'Vivillon (Polar Pattern)', 6, FALSE, 3, NULL, NULL),
  -- Vivillon (Tundra Pattern)
  (66603, 666, 'vivillon-tundra', 'Vivillon (Tundra Pattern)', 6, FALSE, 4, NULL, NULL),
  -- Vivillon (Continental Pattern)
  (66604, 666, 'vivillon-continental', 'Vivillon (Continental Pattern)', 6, FALSE, 5, NULL, NULL),
  -- Vivillon (Garden Pattern)
  (66605, 666, 'vivillon-garden', 'Vivillon (Garden Pattern)', 6, FALSE, 6, NULL, NULL),
  -- Vivillon (Elegant Pattern)
  (66606, 666, 'vivillon-elegant', 'Vivillon (Elegant Pattern)', 6, FALSE, 7, NULL, NULL),
  -- Vivillon (Modern Pattern)
  (66607, 666, 'vivillon-modern', 'Vivillon (Modern Pattern)', 6, FALSE, 8, NULL, NULL),
  -- Vivillon (Marine Pattern)
  (66608, 666, 'vivillon-marine', 'Vivillon (Marine Pattern)', 6, FALSE, 9, NULL, NULL),
  -- Vivillon (Archipelago Pattern)
  (66609, 666, 'vivillon-archipelago', 'Vivillon (Archipelago Pattern)', 6, FALSE, 10, NULL, NULL),
  -- Vivillon (High Plains Pattern)
  (66610, 666, 'vivillon-high-plains', 'Vivillon (High Plains Pattern)', 6, FALSE, 11, NULL, NULL),
  -- Vivillon (Sandstorm Pattern)
  (66611, 666, 'vivillon-sandstorm', 'Vivillon (Sandstorm Pattern)', 6, FALSE, 12, NULL, NULL),
  -- Vivillon (River Pattern)
  (66612, 666, 'vivillon-river', 'Vivillon (River Pattern)', 6, FALSE, 13, NULL, NULL),
  -- Vivillon (Monsoon Pattern)
  (66613, 666, 'vivillon-monsoon', 'Vivillon (Monsoon Pattern)', 6, FALSE, 14, NULL, NULL),
  -- Vivillon (Savanna Pattern)
  (66614, 666, 'vivillon-savanna', 'Vivillon (Savanna Pattern)', 6, FALSE, 15, NULL, NULL),
  -- Vivillon (Sun Pattern)
  (66615, 666, 'vivillon-sun', 'Vivillon (Sun Pattern)', 6, FALSE, 16, NULL, NULL),
  -- Vivillon (Ocean Pattern)
  (66616, 666, 'vivillon-ocean', 'Vivillon (Ocean Pattern)', 6, FALSE, 17, NULL, NULL),
  -- Vivillon (Jungle Pattern)
  (66617, 666, 'vivillon-jungle', 'Vivillon (Jungle Pattern)', 6, FALSE, 18, NULL, NULL),
  -- Vivillon (Fancy Pattern)
  (66618, 666, 'vivillon-fancy', 'Vivillon (Fancy Pattern)', 6, FALSE, 19, NULL, NULL),
  -- Vivillon (Poke Ball Pattern)
  (66619, 666, 'vivillon-poke-ball', 'Vivillon (Poke Ball Pattern)', 6, FALSE, 20, NULL, NULL),
  -- Flabebe (Yellow Flower)
  (66901, 669, 'flabebe-yellow', 'Flabebe (Yellow Flower)', 6, FALSE, 2, NULL, NULL),
  -- Flabebe (Orange Flower)
  (66902, 669, 'flabebe-orange', 'Flabebe (Orange Flower)', 6, FALSE, 3, NULL, NULL),
  -- Flabebe (Blue Flower)
  (66903, 669, 'flabebe-blue', 'Flabebe (Blue Flower)', 6, FALSE, 4, NULL, NULL),
  -- Flabebe (White Flower)
  (66904, 669, 'flabebe-white', 'Flabebe (White Flower)', 6, FALSE, 5, NULL, NULL),
  -- Floette (Yellow Flower)
  (67003, 670, 'floette-yellow', 'Floette (Yellow Flower)', 6, FALSE, 4, NULL, NULL),
  -- Floette (Orange Flower)
  (67004, 670, 'floette-orange', 'Floette (Orange Flower)', 6, FALSE, 5, NULL, NULL),
  -- Floette (Blue Flower)
  (67005, 670, 'floette-blue', 'Floette (Blue Flower)', 6, FALSE, 6, NULL, NULL),
  -- Floette (White Flower)
  (67006, 670, 'floette-white', 'Floette (White Flower)', 6, FALSE, 7, NULL, NULL),
  -- Florges (Yellow Flower)
  (67101, 671, 'florges-yellow', 'Florges (Yellow Flower)', 6, FALSE, 2, NULL, NULL),
  -- Florges (Orange Flower)
  (67102, 671, 'florges-orange', 'Florges (Orange Flower)', 6, FALSE, 3, NULL, NULL),
  -- Florges (Blue Flower)
  (67103, 671, 'florges-blue', 'Florges (Blue Flower)', 6, FALSE, 4, NULL, NULL),
  -- Florges (White Flower)
  (67104, 671, 'florges-white', 'Florges (White Flower)', 6, FALSE, 5, NULL, NULL),
  -- Furfrou (Heart Trim)
  (67601, 676, 'furfrou-heart', 'Furfrou (Heart Trim)', 6, FALSE, 2, NULL, NULL),
  -- Furfrou (Star Trim)
  (67602, 676, 'furfrou-star', 'Furfrou (Star Trim)', 6, FALSE, 3, NULL, NULL),
  -- Furfrou (Diamond Trim)
  (67603, 676, 'furfrou-diamond', 'Furfrou (Diamond Trim)', 6, FALSE, 4, NULL, NULL),
  -- Furfrou (Debutante Trim)
  (67604, 676, 'furfrou-debutante', 'Furfrou (Debutante Trim)', 6, FALSE, 5, NULL, NULL),
  -- Furfrou (Matron Trim)
  (67605, 676, 'furfrou-matron', 'Furfrou (Matron Trim)', 6, FALSE, 6, NULL, NULL),
  -- Furfrou (Dandy Trim)
  (67606, 676, 'furfrou-dandy', 'Furfrou (Dandy Trim)', 6, FALSE, 7, NULL, NULL),
  -- Furfrou (La Reine Trim)
  (67607, 676, 'furfrou-la-reine', 'Furfrou (La Reine Trim)', 6, FALSE, 8, NULL, NULL),
  -- Furfrou (Kabuki Trim)
  (67608, 676, 'furfrou-kabuki', 'Furfrou (Kabuki Trim)', 6, FALSE, 9, NULL, NULL),
  -- Furfrou (Pharaoh Trim)
  (67609, 676, 'furfrou-pharaoh', 'Furfrou (Pharaoh Trim)', 6, FALSE, 10, NULL, NULL),
  -- Alcremie (Ruby Cream)
  (86902, 869, 'alcremie-ruby-cream', 'Alcremie (Ruby Cream)', 8, FALSE, 3, NULL, NULL),
  -- Alcremie (Matcha Cream)
  (86903, 869, 'alcremie-matcha-cream', 'Alcremie (Matcha Cream)', 8, FALSE, 4, NULL, NULL),
  -- Alcremie (Mint Cream)
  (86904, 869, 'alcremie-mint-cream', 'Alcremie (Mint Cream)', 8, FALSE, 5, NULL, NULL),
  -- Alcremie (Lemon Cream)
  (86905, 869, 'alcremie-lemon-cream', 'Alcremie (Lemon Cream)', 8, FALSE, 6, NULL, NULL),
  -- Alcremie (Salted Cream)
  (86906, 869, 'alcremie-salted-cream', 'Alcremie (Salted Cream)', 8, FALSE, 7, NULL, NULL),
  -- Alcremie (Ruby Swirl)
  (86907, 869, 'alcremie-ruby-swirl', 'Alcremie (Ruby Swirl)', 8, FALSE, 8, NULL, NULL),
  -- Alcremie (Caramel Swirl)
  (86908, 869, 'alcremie-caramel-swirl', 'Alcremie (Caramel Swirl)', 8, FALSE, 9, NULL, NULL),
  -- Alcremie (Rainbow Swirl)
  (86909, 869, 'alcremie-rainbow-swirl', 'Alcremie (Rainbow Swirl)', 8, FALSE, 10, NULL, NULL),
  -- Pikachu (Original Cap)
  (2503, 25, 'pikachu-original-cap', 'Pikachu (Original Cap)', 7, FALSE, 4, NULL, NULL),
  -- Pikachu (Hoenn Cap)
  (2504, 25, 'pikachu-hoenn-cap', 'Pikachu (Hoenn Cap)', 7, FALSE, 5, NULL, NULL),
  -- Pikachu (Sinnoh Cap)
  (2505, 25, 'pikachu-sinnoh-cap', 'Pikachu (Sinnoh Cap)', 7, FALSE, 6, NULL, NULL),
  -- Pikachu (Unova Cap)
  (2506, 25, 'pikachu-unova-cap', 'Pikachu (Unova Cap)', 7, FALSE, 7, NULL, NULL),
  -- Pikachu (Kalos Cap)
  (2507, 25, 'pikachu-kalos-cap', 'Pikachu (Kalos Cap)', 7, FALSE, 8, NULL, NULL),
  -- Pikachu (Alola Cap)
  (2508, 25, 'pikachu-alola-cap', 'Pikachu (Alola Cap)', 7, FALSE, 9, NULL, NULL),
  -- Pikachu (Partner Cap)
  (2509, 25, 'pikachu-partner-cap', 'Pikachu (Partner Cap)', 7, FALSE, 10, NULL, NULL),
  -- Pikachu (World Cap)
  (2510, 25, 'pikachu-world-cap', 'Pikachu (World Cap)', 8, FALSE, 11, NULL, NULL),
  -- Pichu (Spiky-eared)
  (17201, 172, 'pichu-spiky-eared', 'Pichu (Spiky-eared)', 4, FALSE, 2, NULL, NULL),
  -- Zarude (Dada)
  (89301, 893, 'zarude-dada', 'Zarude (Dada)', 8, FALSE, 2, NULL, NULL),
  -- Gimmighoul (Roaming Form)
  (99901, 999, 'gimmighoul-roaming', 'Gimmighoul (Roaming Form)', 9, FALSE, 2, NULL, NULL),
  -- Keldeo (Resolute Form)
  (64701, 647, 'keldeo-resolute', 'Keldeo (Resolute Form)', 5, FALSE, 2, NULL, NULL);
