-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia list of moves.
-- Cross-check: PokemonDB move list and PokeAPI move IDs where one-to-one.
-- Scope limit: official core-series move identities through Generation IX; Shadow
-- and Mystery Dungeon-only moves are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 9 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Tera Blast
  (851, 'tera-blast', 'Tera Blast', 1, 851, 9, 833),
  -- Silk Trap
  (852, 'silk-trap', 'Silk Trap', 1, 852, 9, 834),
  -- Axe Kick
  (853, 'axe-kick', 'Axe Kick', 1, 853, 9, 835),
  -- Last Respects
  (854, 'last-respects', 'Last Respects', 1, 854, 9, 836),
  -- Lumina Crash
  (855, 'lumina-crash', 'Lumina Crash', 1, 855, 9, 837),
  -- Order Up
  (856, 'order-up', 'Order Up', 1, 856, 9, 838),
  -- Jet Punch
  (857, 'jet-punch', 'Jet Punch', 1, 857, 9, 839),
  -- Spicy Extract
  (858, 'spicy-extract', 'Spicy Extract', 1, 858, 9, 840),
  -- Spin Out
  (859, 'spin-out', 'Spin Out', 1, 859, 9, 841),
  -- Population Bomb
  (860, 'population-bomb', 'Population Bomb', 1, 860, 9, 842),
  -- Ice Spinner
  (861, 'ice-spinner', 'Ice Spinner', 1, 861, 9, 843),
  -- Glaive Rush
  (862, 'glaive-rush', 'Glaive Rush', 1, 862, 9, 844),
  -- Revival Blessing
  (863, 'revival-blessing', 'Revival Blessing', 1, 863, 9, 845),
  -- Salt Cure
  (864, 'salt-cure', 'Salt Cure', 1, 864, 9, 846),
  -- Triple Dive
  (865, 'triple-dive', 'Triple Dive', 1, 865, 9, 847),
  -- Mortal Spin
  (866, 'mortal-spin', 'Mortal Spin', 1, 866, 9, 848),
  -- Doodle
  (867, 'doodle', 'Doodle', 1, 867, 9, 849),
  -- Fillet Away
  (868, 'fillet-away', 'Fillet Away', 1, 868, 9, 850),
  -- Kowtow Cleave
  (869, 'kowtow-cleave', 'Kowtow Cleave', 1, 869, 9, 851),
  -- Flower Trick
  (870, 'flower-trick', 'Flower Trick', 1, 870, 9, 852),
  -- Torch Song
  (871, 'torch-song', 'Torch Song', 1, 871, 9, 853),
  -- Aqua Step
  (872, 'aqua-step', 'Aqua Step', 1, 872, 9, 854),
  -- Raging Bull
  (873, 'raging-bull', 'Raging Bull', 1, 873, 9, 855),
  -- Make It Rain
  (874, 'make-it-rain', 'Make It Rain', 1, 874, 9, 856),
  -- Psyblade
  (875, 'psyblade', 'Psyblade', 1, 875, 9, 857),
  -- Hydro Steam
  (876, 'hydro-steam', 'Hydro Steam', 1, 876, 9, 858),
  -- Ruination
  (877, 'ruination', 'Ruination', 1, 877, 9, 859),
  -- Collision Course
  (878, 'collision-course', 'Collision Course', 1, 878, 9, 860),
  -- Electro Drift
  (879, 'electro-drift', 'Electro Drift', 1, 879, 9, 861),
  -- Shed Tail
  (880, 'shed-tail', 'Shed Tail', 1, 880, 9, 862),
  -- Chilly Reception
  (881, 'chilly-reception', 'Chilly Reception', 1, 881, 9, 863),
  -- Tidy Up
  (882, 'tidy-up', 'Tidy Up', 1, 882, 9, 864),
  -- Snowscape
  (883, 'snowscape', 'Snowscape', 1, 883, 9, 865),
  -- Pounce
  (884, 'pounce', 'Pounce', 1, 884, 9, 866),
  -- Trailblaze
  (885, 'trailblaze', 'Trailblaze', 1, 885, 9, 867),
  -- Chilling Water
  (886, 'chilling-water', 'Chilling Water', 1, 886, 9, 868),
  -- Hyper Drill
  (887, 'hyper-drill', 'Hyper Drill', 1, 887, 9, 869),
  -- Twin Beam
  (888, 'twin-beam', 'Twin Beam', 1, 888, 9, 870),
  -- Rage Fist
  (889, 'rage-fist', 'Rage Fist', 1, 889, 9, 871),
  -- Armor Cannon
  (890, 'armor-cannon', 'Armor Cannon', 1, 890, 9, 872),
  -- Bitter Blade
  (891, 'bitter-blade', 'Bitter Blade', 1, 891, 9, 873),
  -- Double Shock
  (892, 'double-shock', 'Double Shock', 1, 892, 9, 874),
  -- Gigaton Hammer
  (893, 'gigaton-hammer', 'Gigaton Hammer', 1, 893, 9, 875),
  -- Comeuppance
  (894, 'comeuppance', 'Comeuppance', 1, 894, 9, 876),
  -- Aqua Cutter
  (895, 'aqua-cutter', 'Aqua Cutter', 1, 895, 9, 877),
  -- Blazing Torque
  (896, 'blazing-torque', 'Blazing Torque', 1, 896, 9, 878),
  -- Wicked Torque
  (897, 'wicked-torque', 'Wicked Torque', 1, 897, 9, 879),
  -- Noxious Torque
  (898, 'noxious-torque', 'Noxious Torque', 1, 898, 9, 880),
  -- Combat Torque
  (899, 'combat-torque', 'Combat Torque', 1, 899, 9, 881),
  -- Magical Torque
  (900, 'magical-torque', 'Magical Torque', 1, 900, 9, 882),
  -- Blood Moon
  (901, 'blood-moon', 'Blood Moon', 1, 901, 9, 883),
  -- Matcha Gotcha
  (902, 'matcha-gotcha', 'Matcha Gotcha', 1, 902, 9, 884),
  -- Syrup Bomb
  (903, 'syrup-bomb', 'Syrup Bomb', 1, 903, 9, 885),
  -- Ivy Cudgel
  (904, 'ivy-cudgel', 'Ivy Cudgel', 1, 904, 9, 886),
  -- Electro Shot
  (905, 'electro-shot', 'Electro Shot', 1, 905, 9, 887),
  -- Tera Starstorm
  (906, 'tera-starstorm', 'Tera Starstorm', 1, 906, 9, 888),
  -- Fickle Beam
  (907, 'fickle-beam', 'Fickle Beam', 1, 907, 9, 889),
  -- Burning Bulwark
  (908, 'burning-bulwark', 'Burning Bulwark', 1, 908, 9, 890),
  -- Thunderclap
  (909, 'thunderclap', 'Thunderclap', 1, 909, 9, 891),
  -- Mighty Cleave
  (910, 'mighty-cleave', 'Mighty Cleave', 1, 910, 9, 892),
  -- Tachyon Cutter
  (911, 'tachyon-cutter', 'Tachyon Cutter', 1, 911, 9, 893),
  -- Hard Press
  (912, 'hard-press', 'Hard Press', 1, 912, 9, 894),
  -- Dragon Cheer
  (913, 'dragon-cheer', 'Dragon Cheer', 1, 913, 9, 895),
  -- Alluring Voice
  (914, 'alluring-voice', 'Alluring Voice', 1, 914, 9, 896),
  -- Temper Flare
  (915, 'temper-flare', 'Temper Flare', 1, 915, 9, 897),
  -- Supercell Slam
  (916, 'supercell-slam', 'Supercell Slam', 1, 916, 9, 898),
  -- Psychic Noise
  (917, 'psychic-noise', 'Psychic Noise', 1, 917, 9, 899),
  -- Upper Hand
  (918, 'upper-hand', 'Upper Hand', 1, 918, 9, 900),
  -- Malignant Chain
  (919, 'malignant-chain', 'Malignant Chain', 1, 919, 9, 901),
  -- Nihil Light
  (920, 'nihil-light', 'Nihil Light', 1, 920, 9, 902);
