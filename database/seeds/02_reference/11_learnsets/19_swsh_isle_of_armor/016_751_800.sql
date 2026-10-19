-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 751-800.
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
  -- Dewpider - Skitter Smack - Tutor
  (751, 75100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Araquanid - Skitter Smack - Tutor
  (752, 75200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Fomantis - Grassy Glide - Tutor
  (753, 75300, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lurantis - Grassy Glide - Tutor
  (754, 75400, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Salandit - Scale Shot - Tutor
  (757, 75700, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Salandit - Skitter Smack - Tutor
  (757, 75700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Salazzle - Scale Shot - Tutor
  (758, 75800, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Salazzle - Skitter Smack - Tutor
  (758, 75800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Salazzle - Corrosive Gas - Tutor
  (758, 75800, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Stufful - Coaching - Tutor
  (759, 75900, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Bewear - Coaching - Tutor
  (760, 76000, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Bounsweet - Grassy Glide - Tutor
  (761, 76100, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Steenee - Grassy Glide - Tutor
  (762, 76200, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Steenee - Triple Axel - Tutor
  (762, 76200, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tsareena - Grassy Glide - Tutor
  (763, 76300, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tsareena - Triple Axel - Tutor
  (763, 76300, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Comfey - Grassy Glide - Tutor
  (764, 76400, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Oranguru - Expanding Force - Tutor
  (765, 76500, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Oranguru - Terrain Pulse - Tutor
  (765, 76500, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Passimian - Coaching - Tutor
  (766, 76600, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Wimpod - Skitter Smack - Tutor
  (767, 76700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Golisopod - Skitter Smack - Tutor
  (768, 76800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sandygast - Poltergeist - Tutor
  (769, 76900, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sandygast - Scorching Sands - Tutor
  (769, 76900, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Palossand - Terrain Pulse - Tutor
  (770, 77000, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Palossand - Poltergeist - Tutor
  (770, 77000, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Palossand - Scorching Sands - Tutor
  (770, 77000, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Type: Null - Terrain Pulse - Tutor
  (772, 77200, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally - Terrain Pulse - Tutor
  (773, 77300, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Turtonator - Scale Shot - Tutor
  (776, 77600, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Turtonator - Burning Jealousy - Tutor
  (776, 77600, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Turtonator - Lash Out - Tutor
  (776, 77600, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Turtonator - Scorching Sands - Tutor
  (776, 77600, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 4),
  -- Togedemaru - Steel Roller - Tutor
  (777, 77700, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Togedemaru - Rising Voltage - Tutor
  (777, 77700, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mimikyu - Burning Jealousy - Tutor
  (778, 77800, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Drampa - Scale Shot - Tutor
  (780, 78000, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Drampa - Lash Out - Tutor
  (780, 78000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dhelmise - Steel Roller - Tutor
  (781, 78100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dhelmise - Grassy Glide - Tutor
  (781, 78100, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dhelmise - Poltergeist - Tutor
  (781, 78100, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Jangmo-o - Scale Shot - Tutor
  (782, 78200, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hakamo-o - Scale Shot - Tutor
  (783, 78300, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hakamo-o - Coaching - Tutor
  (783, 78300, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Kommo-o - Scale Shot - Tutor
  (784, 78400, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kommo-o - Coaching - Tutor
  (784, 78400, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Solgaleo - Expanding Force - Tutor
  (791, 79100, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Solgaleo - Steel Roller - Tutor
  (791, 79100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Solgaleo - Meteor Beam - Tutor
  (791, 79100, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Lunala - Expanding Force - Tutor
  (792, 79200, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lunala - Meteor Beam - Tutor
  (792, 79200, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Lunala - Poltergeist - Tutor
  (792, 79200, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Lunala - Dual Wingbeat - Tutor
  (792, 79200, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 4),
  -- Nihilego - Meteor Beam - Tutor
  (793, 79300, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Nihilego - Corrosive Gas - Tutor
  (793, 79300, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Buzzwole - Coaching - Tutor
  (794, 79400, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Buzzwole - Dual Wingbeat - Tutor
  (794, 79400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pheromosa - Skitter Smack - Tutor
  (795, 79500, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pheromosa - Coaching - Tutor
  (795, 79500, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pheromosa - Triple Axel - Tutor
  (795, 79500, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Xurkitree - Rising Voltage - Tutor
  (796, 79600, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Celesteela - Steel Roller - Tutor
  (797, 79700, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Celesteela - Meteor Beam - Tutor
  (797, 79700, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Guzzlord - Steel Roller - Tutor
  (799, 79900, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Guzzlord - Lash Out - Tutor
  (799, 79900, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Guzzlord - Corrosive Gas - Tutor
  (799, 79900, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Necrozma - Expanding Force - Tutor
  (800, 80000, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Necrozma - Meteor Beam - Tutor
  (800, 80000, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Necrozma (Dusk Mane) - Expanding Force - Tutor
  (800, 80001, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Necrozma (Dusk Mane) - Meteor Beam - Tutor
  (800, 80001, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Necrozma (Dawn Wings) - Expanding Force - Tutor
  (800, 80002, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Necrozma (Dawn Wings) - Meteor Beam - Tutor
  (800, 80002, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);

-- ============================================================================
-- Source Audit Corrections
-- ============================================================================
-- Rows below are source-verified Sword / Shield learnset rows omitted from the legacy migration.
-- They preserve current-species Generation VIII source tables, including evolved/form learn paths.
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
  -- Silvally (Fighting) - Terrain Pulse - Tutor
  (773, 77301, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Flying) - Terrain Pulse - Tutor
  (773, 77302, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Poison) - Terrain Pulse - Tutor
  (773, 77303, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Ground) - Terrain Pulse - Tutor
  (773, 77304, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Rock) - Terrain Pulse - Tutor
  (773, 77305, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Bug) - Terrain Pulse - Tutor
  (773, 77306, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Ghost) - Terrain Pulse - Tutor
  (773, 77307, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Steel) - Terrain Pulse - Tutor
  (773, 77308, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Fire) - Terrain Pulse - Tutor
  (773, 77309, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Water) - Terrain Pulse - Tutor
  (773, 77310, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Grass) - Terrain Pulse - Tutor
  (773, 77311, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Electric) - Terrain Pulse - Tutor
  (773, 77312, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Psychic) - Terrain Pulse - Tutor
  (773, 77313, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Ice) - Terrain Pulse - Tutor
  (773, 77314, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Dragon) - Terrain Pulse - Tutor
  (773, 77315, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Dark) - Terrain Pulse - Tutor
  (773, 77316, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Silvally (Fairy) - Terrain Pulse - Tutor
  (773, 77317, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1);
