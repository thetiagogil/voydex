-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 651-700.
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
  -- Diggersby - Scorching Sands - Tutor
  (660, 66000, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Fletchling - Dual Wingbeat - Tutor
  (661, 66100, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Fletchinder - Dual Wingbeat - Tutor
  (662, 66200, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Talonflame - Dual Wingbeat - Tutor
  (663, 66300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pancham - Lash Out - Tutor
  (674, 67400, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pancham - Coaching - Tutor
  (674, 67400, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pangoro - Lash Out - Tutor
  (675, 67500, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pangoro - Coaching - Tutor
  (675, 67500, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Espurr - Expanding Force - Tutor
  (677, 67700, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Meowstic - Expanding Force - Tutor
  (678, 67800, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Meowstic (Female) - Expanding Force - Tutor
  (678, 67801, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Spritzee - Misty Explosion - Tutor
  (682, 68200, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Aromatisse - Misty Explosion - Tutor
  (683, 68300, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Swirlix - Misty Explosion - Tutor
  (684, 68400, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Slurpuff - Misty Explosion - Tutor
  (685, 68500, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Inkay - Expanding Force - Tutor
  (686, 68600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Inkay - Lash Out - Tutor
  (686, 68600, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Malamar - Expanding Force - Tutor
  (687, 68700, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Malamar - Lash Out - Tutor
  (687, 68700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Barbaracle - Meteor Beam - Tutor
  (689, 68900, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Skrelp - Scale Shot - Tutor
  (690, 69000, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Skrelp - Flip Turn - Tutor
  (690, 69000, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dragalge - Scale Shot - Tutor
  (691, 69100, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dragalge - Flip Turn - Tutor
  (691, 69100, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Clauncher - Terrain Pulse - Tutor
  (692, 69200, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Clauncher - Flip Turn - Tutor
  (692, 69200, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Clawitzer - Terrain Pulse - Tutor
  (693, 69300, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Clawitzer - Flip Turn - Tutor
  (693, 69300, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Helioptile - Scale Shot - Tutor
  (694, 69400, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Helioptile - Rising Voltage - Tutor
  (694, 69400, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Heliolisk - Scale Shot - Tutor
  (695, 69500, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Heliolisk - Rising Voltage - Tutor
  (695, 69500, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tyrunt - Scale Shot - Tutor
  (696, 69600, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tyrunt - Meteor Beam - Tutor
  (696, 69600, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tyrunt - Lash Out - Tutor
  (696, 69600, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Tyrantrum - Scale Shot - Tutor
  (697, 69700, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tyrantrum - Meteor Beam - Tutor
  (697, 69700, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tyrantrum - Lash Out - Tutor
  (697, 69700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Amaura - Meteor Beam - Tutor
  (698, 69800, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Aurorus - Meteor Beam - Tutor
  (699, 69900, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sylveon - Misty Explosion - Tutor
  (700, 70000, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1);
