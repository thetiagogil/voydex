-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Gigantamax and G-Max Move pages.
-- Cross-check: Serebii Sword / Shield Gigantamax pages.
-- Scope note: Gigantamax forms are battle forms: a Pokémon is never stored in one.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_forms
-- Scope: every Gigantamax form, one per Pokémon that can Gigantamax.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Gigantamax Venusaur
  (302, 3, 'gigantamax-venusaur', 'Gigantamax Venusaur', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Charizard
  (603, 6, 'gigantamax-charizard', 'Gigantamax Charizard', 8, FALSE, 4, NULL, NULL),
  -- Gigantamax Blastoise
  (902, 9, 'gigantamax-blastoise', 'Gigantamax Blastoise', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Butterfree
  (1201, 12, 'gigantamax-butterfree', 'Gigantamax Butterfree', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Pikachu
  (2502, 25, 'gigantamax-pikachu', 'Gigantamax Pikachu', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Meowth
  (5203, 52, 'gigantamax-meowth', 'Gigantamax Meowth', 8, FALSE, 4, NULL, NULL),
  -- Gigantamax Machamp
  (6801, 68, 'gigantamax-machamp', 'Gigantamax Machamp', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Gengar
  (9402, 94, 'gigantamax-gengar', 'Gigantamax Gengar', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Kingler
  (9901, 99, 'gigantamax-kingler', 'Gigantamax Kingler', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Lapras
  (13101, 131, 'gigantamax-lapras', 'Gigantamax Lapras', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Eevee
  (13302, 133, 'gigantamax-eevee', 'Gigantamax Eevee', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Snorlax
  (14301, 143, 'gigantamax-snorlax', 'Gigantamax Snorlax', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Garbodor
  (56901, 569, 'gigantamax-garbodor', 'Gigantamax Garbodor', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Melmetal
  (80901, 809, 'gigantamax-melmetal', 'Gigantamax Melmetal', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Rillaboom
  (81201, 812, 'gigantamax-rillaboom', 'Gigantamax Rillaboom', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Cinderace
  (81501, 815, 'gigantamax-cinderace', 'Gigantamax Cinderace', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Inteleon
  (81801, 818, 'gigantamax-inteleon', 'Gigantamax Inteleon', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Corviknight
  (82301, 823, 'gigantamax-corviknight', 'Gigantamax Corviknight', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Orbeetle
  (82601, 826, 'gigantamax-orbeetle', 'Gigantamax Orbeetle', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Drednaw
  (83401, 834, 'gigantamax-drednaw', 'Gigantamax Drednaw', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Coalossal
  (83901, 839, 'gigantamax-coalossal', 'Gigantamax Coalossal', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Flapple
  (84101, 841, 'gigantamax-flapple', 'Gigantamax Flapple', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Appletun
  (84201, 842, 'gigantamax-appletun', 'Gigantamax Appletun', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Sandaconda
  (84401, 844, 'gigantamax-sandaconda', 'Gigantamax Sandaconda', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Toxtricity
  (84902, 849, 'gigantamax-toxtricity', 'Gigantamax Toxtricity', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Toxtricity (Low Key)
  (84903, 849, 'gigantamax-toxtricity-low-key', 'Gigantamax Toxtricity (Low Key)', 8, FALSE, 4, NULL, NULL),
  -- Gigantamax Centiskorch
  (85101, 851, 'gigantamax-centiskorch', 'Gigantamax Centiskorch', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Hatterene
  (85801, 858, 'gigantamax-hatterene', 'Gigantamax Hatterene', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Grimmsnarl
  (86101, 861, 'gigantamax-grimmsnarl', 'Gigantamax Grimmsnarl', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Alcremie
  (86901, 869, 'gigantamax-alcremie', 'Gigantamax Alcremie', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Copperajah
  (87901, 879, 'gigantamax-copperajah', 'Gigantamax Copperajah', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Duraludon
  (88401, 884, 'gigantamax-duraludon', 'Gigantamax Duraludon', 8, FALSE, 2, NULL, NULL),
  -- Gigantamax Urshifu
  (89202, 892, 'gigantamax-urshifu', 'Gigantamax Urshifu', 8, FALSE, 3, NULL, NULL),
  -- Gigantamax Urshifu (Rapid Strike)
  (89203, 892, 'gigantamax-urshifu-rapid-strike', 'Gigantamax Urshifu (Rapid Strike)', 8, FALSE, 4, NULL, NULL);
