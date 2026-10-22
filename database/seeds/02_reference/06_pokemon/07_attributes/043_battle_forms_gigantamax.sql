-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Gigantamax and G-Max Move pages.
-- Cross-check: Serebii Sword / Shield Gigantamax pages.
-- Scope note: Gigantamax keeps its Pokémon's types, abilities and base stats,
-- so each row copies the form it Gigantamaxes from in Generation 8.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: Gigantamax forms.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0003 Venusaur - Gigantamax Venusaur (same as Venusaur)
  (3, 302, 8, 5, 8, 65, NULL, 34, 1, 9, 80, 82, 83, 100, 100, 80),
  -- #0006 Charizard - Gigantamax Charizard (same as Charizard)
  (6, 603, 8, 2, 10, 66, NULL, 94, 1, 13, 78, 84, 78, 109, 85, 100),
  -- #0009 Blastoise - Gigantamax Blastoise (same as Blastoise)
  (9, 902, 8, 3, NULL, 67, NULL, 44, 1, 2, 79, 83, 100, 85, 105, 78),
  -- #0012 Butterfree - Gigantamax Butterfree (same as Butterfree)
  (12, 1201, 8, 12, 10, 14, NULL, 110, 5, NULL, 60, 45, 50, 90, 80, 70),
  -- #0025 Pikachu - Gigantamax Pikachu (same as Pikachu)
  (25, 2502, 8, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0052 Meowth - Gigantamax Meowth (same as Meowth)
  (52, 5203, 8, 1, NULL, 53, 101, 127, 7, NULL, 40, 45, 35, 40, 40, 90),
  -- #0068 Machamp - Gigantamax Machamp (same as Machamp)
  (68, 6801, 8, 7, NULL, 62, 99, 80, 10, NULL, 90, 130, 80, 65, 85, 55),
  -- #0094 Gengar - Gigantamax Gengar (same as Gengar)
  (94, 9402, 8, 14, 8, 130, NULL, NULL, 12, NULL, 60, 65, 60, 130, 75, 110),
  -- #0099 Kingler - Gigantamax Kingler (same as Kingler)
  (99, 9901, 8, 3, NULL, 52, 75, 125, 4, NULL, 55, 130, 115, 50, 50, 75),
  -- #0131 Lapras - Gigantamax Lapras (same as Lapras)
  (131, 13101, 8, 3, 6, 11, 75, 93, 1, 2, 130, 85, 80, 85, 95, 60),
  -- #0133 Eevee - Gigantamax Eevee (same as Eevee)
  (133, 13302, 8, 1, NULL, 50, 91, 107, 7, NULL, 55, 55, 50, 45, 65, 55),
  -- #0143 Snorlax - Gigantamax Snorlax (same as Snorlax)
  (143, 14301, 8, 1, NULL, 17, 47, 82, 1, NULL, 160, 110, 65, 65, 110, 30),
  -- #0569 Garbodor - Gigantamax Garbodor (same as Garbodor)
  (569, 56901, 8, 8, NULL, 1, 133, 106, 11, NULL, 80, 95, 82, 60, 82, 75),
  -- #0809 Melmetal - Gigantamax Melmetal (same as Melmetal)
  (809, 80901, 8, 17, NULL, 89, NULL, NULL, 15, NULL, 135, 143, 143, 80, 65, 34),
  -- #0812 Rillaboom - Gigantamax Rillaboom (same as Rillaboom)
  (812, 81201, 8, 5, NULL, 65, NULL, 229, 7, 9, 100, 125, 90, 60, 70, 85),
  -- #0815 Cinderace - Gigantamax Cinderace (same as Cinderace)
  (815, 81501, 8, 2, NULL, 66, NULL, 236, 7, 10, 80, 116, 75, 65, 75, 119),
  -- #0818 Inteleon - Gigantamax Inteleon (same as Inteleon)
  (818, 81801, 8, 3, NULL, 67, NULL, 97, 2, 7, 70, 85, 65, 125, 65, 120),
  -- #0823 Corviknight - Gigantamax Corviknight (same as Corviknight)
  (823, 82301, 8, 10, 17, 46, 127, 240, 6, NULL, 98, 87, 105, 53, 85, 67),
  -- #0826 Orbeetle - Gigantamax Orbeetle (same as Orbeetle)
  (826, 82601, 8, 12, 11, 68, 119, 140, 5, NULL, 60, 45, 110, 80, 120, 90),
  -- #0834 Drednaw - Gigantamax Drednaw (same as Drednaw)
  (834, 83401, 8, 3, 13, 173, 75, 33, 1, 2, 90, 115, 90, 48, 68, 74),
  -- #0839 Coalossal - Gigantamax Coalossal (same as Coalossal)
  (839, 83901, 8, 13, 2, 243, 49, 18, 11, NULL, 110, 80, 120, 80, 90, 30),
  -- #0841 Flapple - Gigantamax Flapple (same as Flapple)
  (841, 84101, 8, 5, 15, 247, 82, 55, 9, 13, 70, 110, 80, 95, 60, 70),
  -- #0842 Appletun - Gigantamax Appletun (same as Appletun)
  (842, 84201, 8, 5, 15, 247, 82, 47, 9, 13, 110, 85, 80, 100, 80, 30),
  -- #0844 Sandaconda - Gigantamax Sandaconda (same as Sandaconda)
  (844, 84401, 8, 9, NULL, 245, 61, 8, 7, 13, 72, 107, 125, 65, 70, 71),
  -- #0849 Toxtricity - Gigantamax Toxtricity (same as Toxtricity)
  (849, 84902, 8, 4, 8, 244, 57, 101, 10, NULL, 75, 98, 70, 114, 70, 75),
  -- #0849 Toxtricity - Gigantamax Toxtricity (Low Key) (same as its form)
  (849, 84903, 8, 4, 8, 244, 58, 101, 10, NULL, 75, 98, 70, 114, 70, 75),
  -- #0851 Centiskorch - Gigantamax Centiskorch (same as Centiskorch)
  (851, 85101, 8, 2, 12, 18, 73, 49, 5, NULL, 100, 115, 65, 90, 90, 65),
  -- #0858 Hatterene - Gigantamax Hatterene (same as Hatterene)
  (858, 85801, 8, 11, 18, 131, 107, 156, 8, NULL, 57, 90, 95, 136, 103, 29),
  -- #0861 Grimmsnarl - Gigantamax Grimmsnarl (same as Grimmsnarl)
  (861, 86101, 8, 16, 18, 158, 119, 124, 8, 10, 95, 120, 65, 95, 75, 60),
  -- #0869 Alcremie - Gigantamax Alcremie (same as Alcremie)
  (869, 86901, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64),
  -- #0879 Copperajah - Gigantamax Copperajah (same as Copperajah)
  (879, 87901, 8, 17, NULL, 125, NULL, 134, 7, 11, 122, 130, 69, 80, 69, 30),
  -- #0884 Duraludon - Gigantamax Duraludon (same as Duraludon)
  (884, 88401, 8, 17, 15, 135, 134, 242, 11, 13, 70, 95, 115, 120, 50, 85),
  -- #0892 Urshifu - Gigantamax Urshifu (same as Urshifu)
  (892, 89202, 8, 7, 16, 260, NULL, NULL, 15, NULL, 100, 130, 100, 63, 60, 97),
  -- #0892 Urshifu - Gigantamax Urshifu (Rapid Strike) (same as its form)
  (892, 89203, 8, 7, 3, 260, NULL, NULL, 15, NULL, 100, 130, 100, 63, 60, 97);
