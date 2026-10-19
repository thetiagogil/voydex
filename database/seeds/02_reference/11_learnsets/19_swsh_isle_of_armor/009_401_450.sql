-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 401-450.
-- Rows represent acquisition-method deltas for the Master Dojo Move Tutor.
-- The Crown Tundra depends on The Isle of Armor and inherits these rows through resolved content-scope views.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Shinx - Rising Voltage - Tutor
  (403, 40300, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Luxio - Rising Voltage - Tutor
  (404, 40400, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Luxray - Rising Voltage - Tutor
  (405, 40500, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Budew - Grassy Glide - Tutor
  (406, 40600, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Roserade - Grassy Glide - Tutor
  (407, 40700, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Combee - Dual Wingbeat - Tutor
  (415, 41500, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Vespiquen - Dual Wingbeat - Tutor
  (416, 41600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cherubi - Grassy Glide - Tutor
  (420, 42000, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cherrim - Grassy Glide - Tutor
  (421, 42100, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Shellos - Skitter Smack - Tutor
  (422, 42200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gastrodon - Skitter Smack - Tutor
  (423, 42300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Buneary - Triple Axel - Tutor
  (427, 42700, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lopunny - Triple Axel - Tutor
  (428, 42800, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Stunky - Lash Out - Tutor
  (434, 43400, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Stunky - Corrosive Gas - Tutor
  (434, 43400, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Skuntank - Burning Jealousy - Tutor
  (435, 43500, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Skuntank - Lash Out - Tutor
  (435, 43500, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Skuntank - Corrosive Gas - Tutor
  (435, 43500, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Bronzor - Expanding Force - Tutor
  (436, 43600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Bronzor - Steel Roller - Tutor
  (436, 43600, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Bronzong - Expanding Force - Tutor
  (437, 43700, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Bronzong - Steel Roller - Tutor
  (437, 43700, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Bronzong - Meteor Beam - Tutor
  (437, 43700, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Spiritomb - Burning Jealousy - Tutor
  (442, 44200, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Spiritomb - Lash Out - Tutor
  (442, 44200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Spiritomb - Poltergeist - Tutor
  (442, 44200, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Gible - Scale Shot - Tutor
  (443, 44300, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gible - Scorching Sands - Tutor
  (443, 44300, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gabite - Scale Shot - Tutor
  (444, 44400, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gabite - Scorching Sands - Tutor
  (444, 44400, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Garchomp - Scale Shot - Tutor
  (445, 44500, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Garchomp - Scorching Sands - Tutor
  (445, 44500, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Riolu - Coaching - Tutor
  (447, 44700, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lucario - Terrain Pulse - Tutor
  (448, 44800, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lucario - Coaching - Tutor
  (448, 44800, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Hippopotas - Scorching Sands - Tutor
  (449, 44900, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hippowdon - Scorching Sands - Tutor
  (450, 45000, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1);
