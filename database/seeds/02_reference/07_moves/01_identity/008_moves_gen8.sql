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
-- Generation 8 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Max Guard
  (743, 'max-guard', 'Max Guard', 3, 743, 8, 725),
  -- Dynamax Cannon
  (744, 'dynamax-cannon', 'Dynamax Cannon', 1, 744, 8, 726),
  -- Snipe Shot
  (745, 'snipe-shot', 'Snipe Shot', 1, 745, 8, 727),
  -- Jaw Lock
  (746, 'jaw-lock', 'Jaw Lock', 1, 746, 8, 728),
  -- Stuff Cheeks
  (747, 'stuff-cheeks', 'Stuff Cheeks', 1, 747, 8, 729),
  -- No Retreat
  (748, 'no-retreat', 'No Retreat', 1, 748, 8, 730),
  -- Tar Shot
  (749, 'tar-shot', 'Tar Shot', 1, 749, 8, 731),
  -- Magic Powder
  (750, 'magic-powder', 'Magic Powder', 1, 750, 8, 732),
  -- Dragon Darts
  (751, 'dragon-darts', 'Dragon Darts', 1, 751, 8, 733),
  -- Teatime
  (752, 'teatime', 'Teatime', 1, 752, 8, 734),
  -- Octolock
  (753, 'octolock', 'Octolock', 1, 753, 8, 735),
  -- Bolt Beak
  (754, 'bolt-beak', 'Bolt Beak', 1, 754, 8, 736),
  -- Fishious Rend
  (755, 'fishious-rend', 'Fishious Rend', 1, 755, 8, 737),
  -- Court Change
  (756, 'court-change', 'Court Change', 1, 756, 8, 738),
  -- Max Flare
  (757, 'max-flare', 'Max Flare', 3, 757, 8, 739),
  -- Max Flutterby
  (758, 'max-flutterby', 'Max Flutterby', 3, 758, 8, 740),
  -- Max Lightning
  (759, 'max-lightning', 'Max Lightning', 3, 759, 8, 741),
  -- Max Strike
  (760, 'max-strike', 'Max Strike', 3, 760, 8, 742),
  -- Max Knuckle
  (761, 'max-knuckle', 'Max Knuckle', 3, 761, 8, 743),
  -- Max Phantasm
  (762, 'max-phantasm', 'Max Phantasm', 3, 762, 8, 744),
  -- Max Hailstorm
  (763, 'max-hailstorm', 'Max Hailstorm', 3, 763, 8, 745),
  -- Max Ooze
  (764, 'max-ooze', 'Max Ooze', 3, 764, 8, 746),
  -- Max Geyser
  (765, 'max-geyser', 'Max Geyser', 3, 765, 8, 747),
  -- Max Airstream
  (766, 'max-airstream', 'Max Airstream', 3, 766, 8, 748),
  -- Max Starfall
  (767, 'max-starfall', 'Max Starfall', 3, 767, 8, 749),
  -- Max Wyrmwind
  (768, 'max-wyrmwind', 'Max Wyrmwind', 3, 768, 8, 750),
  -- Max Mindstorm
  (769, 'max-mindstorm', 'Max Mindstorm', 3, 769, 8, 751),
  -- Max Rockfall
  (770, 'max-rockfall', 'Max Rockfall', 3, 770, 8, 752),
  -- Max Quake
  (771, 'max-quake', 'Max Quake', 3, 771, 8, 753),
  -- Max Darkness
  (772, 'max-darkness', 'Max Darkness', 3, 772, 8, 754),
  -- Max Overgrowth
  (773, 'max-overgrowth', 'Max Overgrowth', 3, 773, 8, 755),
  -- Max Steelspike
  (774, 'max-steelspike', 'Max Steelspike', 3, 774, 8, 756),
  -- Clangorous Soul
  (775, 'clangorous-soul', 'Clangorous Soul', 1, 775, 8, 757),
  -- Body Press
  (776, 'body-press', 'Body Press', 1, 776, 8, 758),
  -- Decorate
  (777, 'decorate', 'Decorate', 1, 777, 8, 759),
  -- Drum Beating
  (778, 'drum-beating', 'Drum Beating', 1, 778, 8, 760),
  -- Snap Trap
  (779, 'snap-trap', 'Snap Trap', 1, 779, 8, 761),
  -- Pyro Ball
  (780, 'pyro-ball', 'Pyro Ball', 1, 780, 8, 762),
  -- Behemoth Blade
  (781, 'behemoth-blade', 'Behemoth Blade', 1, 781, 8, 763),
  -- Behemoth Bash
  (782, 'behemoth-bash', 'Behemoth Bash', 1, 782, 8, 764),
  -- Aura Wheel
  (783, 'aura-wheel', 'Aura Wheel', 1, 783, 8, 765),
  -- Breaking Swipe
  (784, 'breaking-swipe', 'Breaking Swipe', 1, 784, 8, 766),
  -- Branch Poke
  (785, 'branch-poke', 'Branch Poke', 1, 785, 8, 767),
  -- Overdrive
  (786, 'overdrive', 'Overdrive', 1, 786, 8, 768),
  -- Apple Acid
  (787, 'apple-acid', 'Apple Acid', 1, 787, 8, 769),
  -- Grav Apple
  (788, 'grav-apple', 'Grav Apple', 1, 788, 8, 770),
  -- Spirit Break
  (789, 'spirit-break', 'Spirit Break', 1, 789, 8, 771),
  -- Strange Steam
  (790, 'strange-steam', 'Strange Steam', 1, 790, 8, 772),
  -- Life Dew
  (791, 'life-dew', 'Life Dew', 1, 791, 8, 773),
  -- Obstruct
  (792, 'obstruct', 'Obstruct', 1, 792, 8, 774),
  -- False Surrender
  (793, 'false-surrender', 'False Surrender', 1, 793, 8, 775),
  -- Meteor Assault
  (794, 'meteor-assault', 'Meteor Assault', 1, 794, 8, 776),
  -- Eternabeam
  (795, 'eternabeam', 'Eternabeam', 1, 795, 8, 777),
  -- Steel Beam
  (796, 'steel-beam', 'Steel Beam', 1, 796, 8, 778),
  -- Expanding Force
  (797, 'expanding-force', 'Expanding Force', 1, 797, 8, 779),
  -- Steel Roller
  (798, 'steel-roller', 'Steel Roller', 1, 798, 8, 780),
  -- Scale Shot
  (799, 'scale-shot', 'Scale Shot', 1, 799, 8, 781),
  -- Meteor Beam
  (800, 'meteor-beam', 'Meteor Beam', 1, 800, 8, 782),
  -- Shell Side Arm
  (801, 'shell-side-arm', 'Shell Side Arm', 1, 801, 8, 783),
  -- Misty Explosion
  (802, 'misty-explosion', 'Misty Explosion', 1, 802, 8, 784),
  -- Grassy Glide
  (803, 'grassy-glide', 'Grassy Glide', 1, 803, 8, 785),
  -- Rising Voltage
  (804, 'rising-voltage', 'Rising Voltage', 1, 804, 8, 786),
  -- Terrain Pulse
  (805, 'terrain-pulse', 'Terrain Pulse', 1, 805, 8, 787),
  -- Skitter Smack
  (806, 'skitter-smack', 'Skitter Smack', 1, 806, 8, 788),
  -- Burning Jealousy
  (807, 'burning-jealousy', 'Burning Jealousy', 1, 807, 8, 789),
  -- Lash Out
  (808, 'lash-out', 'Lash Out', 1, 808, 8, 790),
  -- Poltergeist
  (809, 'poltergeist', 'Poltergeist', 1, 809, 8, 791),
  -- Corrosive Gas
  (810, 'corrosive-gas', 'Corrosive Gas', 1, 810, 8, 792),
  -- Coaching
  (811, 'coaching', 'Coaching', 1, 811, 8, 793),
  -- Flip Turn
  (812, 'flip-turn', 'Flip Turn', 1, 812, 8, 794),
  -- Triple Axel
  (813, 'triple-axel', 'Triple Axel', 1, 813, 8, 795),
  -- Dual Wingbeat
  (814, 'dual-wingbeat', 'Dual Wingbeat', 1, 814, 8, 796),
  -- Scorching Sands
  (815, 'scorching-sands', 'Scorching Sands', 1, 815, 8, 797),
  -- Jungle Healing
  (816, 'jungle-healing', 'Jungle Healing', 1, 816, 8, 798),
  -- Wicked Blow
  (817, 'wicked-blow', 'Wicked Blow', 1, 817, 8, 799),
  -- Surging Strikes
  (818, 'surging-strikes', 'Surging Strikes', 1, 818, 8, 800),
  -- Thunder Cage
  (819, 'thunder-cage', 'Thunder Cage', 1, 819, 8, 801),
  -- Dragon Energy
  (820, 'dragon-energy', 'Dragon Energy', 1, 820, 8, 802),
  -- Freezing Glare
  (821, 'freezing-glare', 'Freezing Glare', 1, 821, 8, 803),
  -- Fiery Wrath
  (822, 'fiery-wrath', 'Fiery Wrath', 1, 822, 8, 804),
  -- Thunderous Kick
  (823, 'thunderous-kick', 'Thunderous Kick', 1, 823, 8, 805),
  -- Glacial Lance
  (824, 'glacial-lance', 'Glacial Lance', 1, 824, 8, 806),
  -- Astral Barrage
  (825, 'astral-barrage', 'Astral Barrage', 1, 825, 8, 807),
  -- Eerie Spell
  (826, 'eerie-spell', 'Eerie Spell', 1, 826, 8, 808),
  -- Dire Claw
  (827, 'dire-claw', 'Dire Claw', 1, 827, 8, 809),
  -- Psyshield Bash
  (828, 'psyshield-bash', 'Psyshield Bash', 1, 828, 8, 810),
  -- Power Shift
  (829, 'power-shift', 'Power Shift', 1, 829, 8, 811),
  -- Stone Axe
  (830, 'stone-axe', 'Stone Axe', 1, 830, 8, 812),
  -- Springtide Storm
  (831, 'springtide-storm', 'Springtide Storm', 1, 831, 8, 813),
  -- Mystical Power
  (832, 'mystical-power', 'Mystical Power', 1, 832, 8, 814),
  -- Raging Fury
  (833, 'raging-fury', 'Raging Fury', 1, 833, 8, 815),
  -- Wave Crash
  (834, 'wave-crash', 'Wave Crash', 1, 834, 8, 816),
  -- Chloroblast
  (835, 'chloroblast', 'Chloroblast', 1, 835, 8, 817),
  -- Mountain Gale
  (836, 'mountain-gale', 'Mountain Gale', 1, 836, 8, 818),
  -- Victory Dance
  (837, 'victory-dance', 'Victory Dance', 1, 837, 8, 819),
  -- Headlong Rush
  (838, 'headlong-rush', 'Headlong Rush', 1, 838, 8, 820),
  -- Barb Barrage
  (839, 'barb-barrage', 'Barb Barrage', 1, 839, 8, 821),
  -- Esper Wing
  (840, 'esper-wing', 'Esper Wing', 1, 840, 8, 822),
  -- Bitter Malice
  (841, 'bitter-malice', 'Bitter Malice', 1, 841, 8, 823),
  -- Shelter
  (842, 'shelter', 'Shelter', 1, 842, 8, 824),
  -- Triple Arrows
  (843, 'triple-arrows', 'Triple Arrows', 1, 843, 8, 825),
  -- Infernal Parade
  (844, 'infernal-parade', 'Infernal Parade', 1, 844, 8, 826),
  -- Ceaseless Edge
  (845, 'ceaseless-edge', 'Ceaseless Edge', 1, 845, 8, 827),
  -- Bleakwind Storm
  (846, 'bleakwind-storm', 'Bleakwind Storm', 1, 846, 8, 828),
  -- Wildbolt Storm
  (847, 'wildbolt-storm', 'Wildbolt Storm', 1, 847, 8, 829),
  -- Sandsear Storm
  (848, 'sandsear-storm', 'Sandsear Storm', 1, 848, 8, 830),
  -- Lunar Blessing
  (849, 'lunar-blessing', 'Lunar Blessing', 1, 849, 8, 831),
  -- Take Heart
  (850, 'take-heart', 'Take Heart', 1, 850, 8, 832);
