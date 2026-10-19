-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 051-100.
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
  -- Dugtrio - Scorching Sands - Tutor
  (51, 5100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dugtrio (Alolan Dugtrio) - Scorching Sands - Tutor
  (51, 5101, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Meowth - Lash Out - Tutor
  (52, 5200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Meowth (Alolan Meowth) - Lash Out - Tutor
  (52, 5201, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Meowth (Galarian Meowth) - Lash Out - Tutor
  (52, 5202, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Persian - Skitter Smack - Tutor
  (53, 5300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Persian - Lash Out - Tutor
  (53, 5300, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Persian (Alolan Persian) - Skitter Smack - Tutor
  (53, 5301, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Persian (Alolan Persian) - Burning Jealousy - Tutor
  (53, 5301, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Persian (Alolan Persian) - Lash Out - Tutor
  (53, 5301, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Golduck - Flip Turn - Tutor
  (55, 5500, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Arcanine - Scorching Sands - Tutor
  (59, 5900, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Poliwrath - Coaching - Tutor
  (62, 6200, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kadabra - Expanding Force - Tutor
  (64, 6400, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Alakazam - Expanding Force - Tutor
  (65, 6500, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Machop - Coaching - Tutor
  (66, 6600, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Machoke - Coaching - Tutor
  (67, 6700, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Machamp - Coaching - Tutor
  (68, 6800, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tentacruel - Corrosive Gas - Tutor
  (73, 7300, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Ponyta (Galarian Ponyta) - Expanding Force - Tutor
  (77, 7701, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rapidash - Scorching Sands - Tutor
  (78, 7800, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rapidash (Galarian Rapidash) - Expanding Force - Tutor
  (78, 7801, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slowpoke - Expanding Force - Tutor
  (79, 7900, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slowpoke (Galarian Slowpoke) - Expanding Force - Tutor
  (79, 7901, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slowbro - Expanding Force - Tutor
  (80, 8000, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slowbro (Galarian Slowbro) - Expanding Force - Tutor
  (80, 8002, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magnemite - Rising Voltage - Tutor
  (81, 8100, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magneton - Rising Voltage - Tutor
  (82, 8200, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Farfetch'd - Dual Wingbeat - Tutor
  (83, 8300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Farfetch'd (Galarian Farfetch'd) - Dual Wingbeat - Tutor
  (83, 8301, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cloyster - Steel Roller - Tutor
  (91, 9100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gastly - Skitter Smack - Tutor
  (92, 9200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gastly - Poltergeist - Tutor
  (92, 9200, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gastly - Corrosive Gas - Tutor
  (92, 9200, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Haunter - Skitter Smack - Tutor
  (93, 9300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Haunter - Poltergeist - Tutor
  (93, 9300, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Haunter - Corrosive Gas - Tutor
  (93, 9300, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Gengar - Skitter Smack - Tutor
  (94, 9400, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gengar - Poltergeist - Tutor
  (94, 9400, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gengar - Corrosive Gas - Tutor
  (94, 9400, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Onix - Meteor Beam - Tutor
  (95, 9500, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Onix - Scorching Sands - Tutor
  (95, 9500, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);
