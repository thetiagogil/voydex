-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 701-750.
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
  -- Hawlucha - Coaching - Tutor
  (701, 70100, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hawlucha - Dual Wingbeat - Tutor
  (701, 70100, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dedenne - Rising Voltage - Tutor
  (702, 70200, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Carbink - Meteor Beam - Tutor
  (703, 70300, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Carbink - Misty Explosion - Tutor
  (703, 70300, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Carbink - Terrain Pulse - Tutor
  (703, 70300, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Goomy - Skitter Smack - Tutor
  (704, 70400, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sliggoo - Skitter Smack - Tutor
  (705, 70500, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Goodra - Skitter Smack - Tutor
  (706, 70600, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Phantump - Grassy Glide - Tutor
  (708, 70800, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Phantump - Skitter Smack - Tutor
  (708, 70800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Phantump - Poltergeist - Tutor
  (708, 70800, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Trevenant - Grassy Glide - Tutor
  (709, 70900, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Trevenant - Skitter Smack - Tutor
  (709, 70900, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Trevenant - Poltergeist - Tutor
  (709, 70900, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Pumpkaboo - Grassy Glide - Tutor
  (710, 71000, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pumpkaboo - Skitter Smack - Tutor
  (710, 71000, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pumpkaboo - Poltergeist - Tutor
  (710, 71000, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Pumpkaboo (Small) - Grassy Glide - Tutor
  (710, 71001, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pumpkaboo (Small) - Skitter Smack - Tutor
  (710, 71001, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pumpkaboo (Small) - Poltergeist - Tutor
  (710, 71001, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Pumpkaboo (Large) - Grassy Glide - Tutor
  (710, 71002, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pumpkaboo (Large) - Skitter Smack - Tutor
  (710, 71002, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pumpkaboo (Large) - Poltergeist - Tutor
  (710, 71002, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Pumpkaboo (Super) - Grassy Glide - Tutor
  (710, 71003, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pumpkaboo (Super) - Skitter Smack - Tutor
  (710, 71003, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pumpkaboo (Super) - Poltergeist - Tutor
  (710, 71003, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Gourgeist - Grassy Glide - Tutor
  (711, 71100, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gourgeist - Skitter Smack - Tutor
  (711, 71100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gourgeist - Poltergeist - Tutor
  (711, 71100, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Gourgeist (Small) - Grassy Glide - Tutor
  (711, 71101, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gourgeist (Small) - Skitter Smack - Tutor
  (711, 71101, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gourgeist (Small) - Poltergeist - Tutor
  (711, 71101, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Gourgeist (Large) - Grassy Glide - Tutor
  (711, 71102, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gourgeist (Large) - Skitter Smack - Tutor
  (711, 71102, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gourgeist (Large) - Poltergeist - Tutor
  (711, 71102, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Gourgeist (Super) - Grassy Glide - Tutor
  (711, 71103, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gourgeist (Super) - Skitter Smack - Tutor
  (711, 71103, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Gourgeist (Super) - Poltergeist - Tutor
  (711, 71103, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Noibat - Dual Wingbeat - Tutor
  (714, 71400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Noivern - Dual Wingbeat - Tutor
  (715, 71500, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Xerneas - Misty Explosion - Tutor
  (716, 71600, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Xerneas - Terrain Pulse - Tutor
  (716, 71600, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Yveltal - Lash Out - Tutor
  (717, 71700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Yveltal - Dual Wingbeat - Tutor
  (717, 71700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zygarde - Scale Shot - Tutor
  (718, 71800, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zygarde - Skitter Smack - Tutor
  (718, 71800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zygarde - Scorching Sands - Tutor
  (718, 71800, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Zygarde (10% Forme) - Scale Shot - Tutor
  (718, 71801, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zygarde (10% Forme) - Skitter Smack - Tutor
  (718, 71801, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zygarde (10% Forme) - Scorching Sands - Tutor
  (718, 71801, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Diancie - Meteor Beam - Tutor
  (719, 71900, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Diancie - Misty Explosion - Tutor
  (719, 71900, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Diancie - Terrain Pulse - Tutor
  (719, 71900, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Volcanion - Scorching Sands - Tutor
  (721, 72100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rowlet - Grassy Glide - Tutor
  (722, 72200, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rowlet - Dual Wingbeat - Tutor
  (722, 72200, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dartrix - Grassy Glide - Tutor
  (723, 72300, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dartrix - Dual Wingbeat - Tutor
  (723, 72300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Decidueye - Grassy Glide - Tutor
  (724, 72400, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Decidueye - Skitter Smack - Tutor
  (724, 72400, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Decidueye - Poltergeist - Tutor
  (724, 72400, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Decidueye - Dual Wingbeat - Tutor
  (724, 72400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 4),
  -- Incineroar - Burning Jealousy - Tutor
  (727, 72700, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Incineroar - Lash Out - Tutor
  (727, 72700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Incineroar - Scorching Sands - Tutor
  (727, 72700, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Popplio - Flip Turn - Tutor
  (728, 72800, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Popplio - Triple Axel - Tutor
  (728, 72800, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Brionne - Flip Turn - Tutor
  (729, 72900, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Brionne - Triple Axel - Tutor
  (729, 72900, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Primarina - Misty Explosion - Tutor
  (730, 73000, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Primarina - Flip Turn - Tutor
  (730, 73000, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Primarina - Triple Axel - Tutor
  (730, 73000, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Grubbin - Rising Voltage - Tutor
  (736, 73600, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Grubbin - Skitter Smack - Tutor
  (736, 73600, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Charjabug - Rising Voltage - Tutor
  (737, 73700, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Charjabug - Skitter Smack - Tutor
  (737, 73700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Vikavolt - Rising Voltage - Tutor
  (738, 73800, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Vikavolt - Skitter Smack - Tutor
  (738, 73800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Vikavolt - Dual Wingbeat - Tutor
  (738, 73800, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Cutiefly - Dual Wingbeat - Tutor
  (742, 74200, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Ribombee - Dual Wingbeat - Tutor
  (743, 74300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lycanroc (Midnight) - Lash Out - Tutor
  (745, 74501, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Wishiwashi - Scale Shot - Tutor
  (746, 74600, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Wishiwashi - Flip Turn - Tutor
  (746, 74600, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mudsdale - Lash Out - Tutor
  (750, 75000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1);
