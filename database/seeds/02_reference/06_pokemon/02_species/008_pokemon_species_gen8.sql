-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- Category, gender ratio and egg cycles: the machine-readable species snapshot (PokeAPI), checked against Bulbapedia species pages on 2026-11-03.
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_species
-- Scope: National Dex #0810-0905
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, category, female_ratio_eighths, egg_cycles, is_baby, is_legendary, is_mythical)
VALUES
  -- Grookey
  (810, 810, 'grookey', 'Grookey', 8, 810, 'green', 'Chimp', 1, 20, FALSE, FALSE, FALSE),
  -- Thwackey
  (811, 811, 'thwackey', 'Thwackey', 8, 810, 'green', 'Beat', 1, 20, FALSE, FALSE, FALSE),
  -- Rillaboom
  (812, 812, 'rillaboom', 'Rillaboom', 8, 810, 'green', 'Drummer', 1, 20, FALSE, FALSE, FALSE),
  -- Scorbunny
  (813, 813, 'scorbunny', 'Scorbunny', 8, 813, 'white', 'Rabbit', 1, 20, FALSE, FALSE, FALSE),
  -- Raboot
  (814, 814, 'raboot', 'Raboot', 8, 813, 'gray', 'Rabbit', 1, 20, FALSE, FALSE, FALSE),
  -- Cinderace
  (815, 815, 'cinderace', 'Cinderace', 8, 813, 'white', 'Striker', 1, 20, FALSE, FALSE, FALSE),
  -- Sobble
  (816, 816, 'sobble', 'Sobble', 8, 816, 'blue', 'Water Lizard', 1, 20, FALSE, FALSE, FALSE),
  -- Drizzile
  (817, 817, 'drizzile', 'Drizzile', 8, 816, 'blue', 'Water Lizard', 1, 20, FALSE, FALSE, FALSE),
  -- Inteleon
  (818, 818, 'inteleon', 'Inteleon', 8, 816, 'blue', 'Secret Agent', 1, 20, FALSE, FALSE, FALSE),
  -- Skwovet
  (819, 819, 'skwovet', 'Skwovet', 8, 819, 'brown', 'Cheeky', 4, 20, FALSE, FALSE, FALSE),
  -- Greedent
  (820, 820, 'greedent', 'Greedent', 8, 819, 'brown', 'Greedy', 4, 20, FALSE, FALSE, FALSE),
  -- Rookidee
  (821, 821, 'rookidee', 'Rookidee', 8, 821, 'blue', 'Tiny Bird', 4, 15, FALSE, FALSE, FALSE),
  -- Corvisquire
  (822, 822, 'corvisquire', 'Corvisquire', 8, 821, 'blue', 'Raven', 4, 15, FALSE, FALSE, FALSE),
  -- Corviknight
  (823, 823, 'corviknight', 'Corviknight', 8, 821, 'purple', 'Raven', 4, 15, FALSE, FALSE, FALSE),
  -- Blipbug
  (824, 824, 'blipbug', 'Blipbug', 8, 824, 'blue', 'Larva', 4, 15, FALSE, FALSE, FALSE),
  -- Dottler
  (825, 825, 'dottler', 'Dottler', 8, 824, 'yellow', 'Radome', 4, 15, FALSE, FALSE, FALSE),
  -- Orbeetle
  (826, 826, 'orbeetle', 'Orbeetle', 8, 824, 'red', 'Seven Spot', 4, 15, FALSE, FALSE, FALSE),
  -- Nickit
  (827, 827, 'nickit', 'Nickit', 8, 827, 'brown', 'Fox', 4, 15, FALSE, FALSE, FALSE),
  -- Thievul
  (828, 828, 'thievul', 'Thievul', 8, 827, 'brown', 'Fox', 4, 15, FALSE, FALSE, FALSE),
  -- Gossifleur
  (829, 829, 'gossifleur', 'Gossifleur', 8, 829, 'green', 'Flowering', 4, 20, FALSE, FALSE, FALSE),
  -- Eldegoss
  (830, 830, 'eldegoss', 'Eldegoss', 8, 829, 'green', 'Cotton Bloom', 4, 20, FALSE, FALSE, FALSE),
  -- Wooloo
  (831, 831, 'wooloo', 'Wooloo', 8, 831, 'white', 'Sheep', 4, 15, FALSE, FALSE, FALSE),
  -- Dubwool
  (832, 832, 'dubwool', 'Dubwool', 8, 831, 'white', 'Sheep', 4, 15, FALSE, FALSE, FALSE),
  -- Chewtle
  (833, 833, 'chewtle', 'Chewtle', 8, 833, 'green', 'Snapping', 4, 20, FALSE, FALSE, FALSE),
  -- Drednaw
  (834, 834, 'drednaw', 'Drednaw', 8, 833, 'green', 'Bite', 4, 20, FALSE, FALSE, FALSE),
  -- Yamper
  (835, 835, 'yamper', 'Yamper', 8, 835, 'yellow', 'Puppy', 4, 20, FALSE, FALSE, FALSE),
  -- Boltund
  (836, 836, 'boltund', 'Boltund', 8, 835, 'yellow', 'Dog', 4, 20, FALSE, FALSE, FALSE),
  -- Rolycoly
  (837, 837, 'rolycoly', 'Rolycoly', 8, 837, 'black', 'Coal', 4, 15, FALSE, FALSE, FALSE),
  -- Carkol
  (838, 838, 'carkol', 'Carkol', 8, 837, 'black', 'Coal', 4, 15, FALSE, FALSE, FALSE),
  -- Coalossal
  (839, 839, 'coalossal', 'Coalossal', 8, 837, 'black', 'Coal', 4, 15, FALSE, FALSE, FALSE),
  -- Applin
  (840, 840, 'applin', 'Applin', 8, 840, 'green', 'Apple Core', 4, 20, FALSE, FALSE, FALSE),
  -- Flapple
  (841, 841, 'flapple', 'Flapple', 8, 840, 'green', 'Apple Wing', 4, 20, FALSE, FALSE, FALSE),
  -- Appletun
  (842, 842, 'appletun', 'Appletun', 8, 840, 'green', 'Apple Nectar', 4, 20, FALSE, FALSE, FALSE),
  -- Silicobra
  (843, 843, 'silicobra', 'Silicobra', 8, 843, 'green', 'Sand Snake', 4, 20, FALSE, FALSE, FALSE),
  -- Sandaconda
  (844, 844, 'sandaconda', 'Sandaconda', 8, 843, 'green', 'Sand Snake', 4, 20, FALSE, FALSE, FALSE),
  -- Cramorant
  (845, 845, 'cramorant', 'Cramorant', 8, 845, 'blue', 'Gulp', 4, 20, FALSE, FALSE, FALSE),
  -- Arrokuda
  (846, 846, 'arrokuda', 'Arrokuda', 8, 846, 'brown', 'Rush', 4, 20, FALSE, FALSE, FALSE),
  -- Barraskewda
  (847, 847, 'barraskewda', 'Barraskewda', 8, 846, 'brown', 'Skewer', 4, 20, FALSE, FALSE, FALSE),
  -- Toxel
  (848, 848, 'toxel', 'Toxel', 8, 848, 'purple', 'Baby', 4, 25, TRUE, FALSE, FALSE),
  -- Toxtricity
  (849, 849, 'toxtricity', 'Toxtricity', 8, 848, 'purple', 'Punk', 4, 25, FALSE, FALSE, FALSE),
  -- Sizzlipede
  (850, 850, 'sizzlipede', 'Sizzlipede', 8, 850, 'red', 'Radiator', 4, 20, FALSE, FALSE, FALSE),
  -- Centiskorch
  (851, 851, 'centiskorch', 'Centiskorch', 8, 850, 'red', 'Radiator', 4, 20, FALSE, FALSE, FALSE),
  -- Clobbopus
  (852, 852, 'clobbopus', 'Clobbopus', 8, 852, 'brown', 'Tantrum', 4, 25, FALSE, FALSE, FALSE),
  -- Grapploct
  (853, 853, 'grapploct', 'Grapploct', 8, 852, 'blue', 'Jujitsu', 4, 25, FALSE, FALSE, FALSE),
  -- Sinistea
  (854, 854, 'sinistea', 'Sinistea', 8, 854, 'purple', 'Black Tea', NULL, 20, FALSE, FALSE, FALSE),
  -- Polteageist
  (855, 855, 'polteageist', 'Polteageist', 8, 854, 'purple', 'Black Tea', NULL, 20, FALSE, FALSE, FALSE),
  -- Hatenna
  (856, 856, 'hatenna', 'Hatenna', 8, 856, 'pink', 'Calm', 8, 20, FALSE, FALSE, FALSE),
  -- Hattrem
  (857, 857, 'hattrem', 'Hattrem', 8, 856, 'pink', 'Serene', 8, 20, FALSE, FALSE, FALSE),
  -- Hatterene
  (858, 858, 'hatterene', 'Hatterene', 8, 856, 'pink', 'Silent', 8, 20, FALSE, FALSE, FALSE),
  -- Impidimp
  (859, 859, 'impidimp', 'Impidimp', 8, 859, 'pink', 'Wily', 0, 20, FALSE, FALSE, FALSE),
  -- Morgrem
  (860, 860, 'morgrem', 'Morgrem', 8, 859, 'pink', 'Devious', 0, 20, FALSE, FALSE, FALSE),
  -- Grimmsnarl
  (861, 861, 'grimmsnarl', 'Grimmsnarl', 8, 859, 'purple', 'Bulk Up', 0, 20, FALSE, FALSE, FALSE),
  -- Obstagoon
  (862, 862, 'obstagoon', 'Obstagoon', 8, 263, 'gray', 'Blocking', 4, 15, FALSE, FALSE, FALSE),
  -- Perrserker
  (863, 863, 'perrserker', 'Perrserker', 8, 52, 'brown', 'Viking', 4, 20, FALSE, FALSE, FALSE),
  -- Cursola
  (864, 864, 'cursola', 'Cursola', 8, 222, 'white', 'Coral', 6, 20, FALSE, FALSE, FALSE),
  -- Sirfetch'd
  (865, 865, 'sirfetchd', 'Sirfetch''d', 8, 83, 'white', 'Wild Duck', 4, 20, FALSE, FALSE, FALSE),
  -- Mr. Rime
  (866, 866, 'mr-rime', 'Mr. Rime', 8, 122, 'purple', 'Comedian', 4, 25, FALSE, FALSE, FALSE),
  -- Runerigus
  (867, 867, 'runerigus', 'Runerigus', 8, 562, 'gray', 'Grudge', 4, 25, FALSE, FALSE, FALSE),
  -- Milcery
  (868, 868, 'milcery', 'Milcery', 8, 868, 'white', 'Cream', 8, 20, FALSE, FALSE, FALSE),
  -- Alcremie
  (869, 869, 'alcremie', 'Alcremie', 8, 868, 'white', 'Cream', 8, 20, FALSE, FALSE, FALSE),
  -- Falinks
  (870, 870, 'falinks', 'Falinks', 8, 870, 'yellow', 'Formation', NULL, 25, FALSE, FALSE, FALSE),
  -- Pincurchin
  (871, 871, 'pincurchin', 'Pincurchin', 8, 871, 'purple', 'Sea Urchin', 4, 20, FALSE, FALSE, FALSE),
  -- Snom
  (872, 872, 'snom', 'Snom', 8, 872, 'white', 'Worm', 4, 20, FALSE, FALSE, FALSE),
  -- Frosmoth
  (873, 873, 'frosmoth', 'Frosmoth', 8, 872, 'white', 'Frost Moth', 4, 20, FALSE, FALSE, FALSE),
  -- Stonjourner
  (874, 874, 'stonjourner', 'Stonjourner', 8, 874, 'gray', 'Big Rock', 4, 25, FALSE, FALSE, FALSE),
  -- Eiscue
  (875, 875, 'eiscue', 'Eiscue', 8, 875, 'blue', 'Penguin', 4, 25, FALSE, FALSE, FALSE),
  -- Indeedee
  (876, 876, 'indeedee', 'Indeedee', 8, 876, 'purple', 'Emotion', 4, 40, FALSE, FALSE, FALSE),
  -- Morpeko
  (877, 877, 'morpeko', 'Morpeko', 8, 877, 'yellow', 'Two-Sided', 4, 10, FALSE, FALSE, FALSE),
  -- Cufant
  (878, 878, 'cufant', 'Cufant', 8, 878, 'yellow', 'Copperderm', 4, 25, FALSE, FALSE, FALSE),
  -- Copperajah
  (879, 879, 'copperajah', 'Copperajah', 8, 878, 'green', 'Copperderm', 4, 25, FALSE, FALSE, FALSE),
  -- Dracozolt
  (880, 880, 'dracozolt', 'Dracozolt', 8, 880, 'green', 'Fossil', NULL, 35, FALSE, FALSE, FALSE),
  -- Arctozolt
  (881, 881, 'arctozolt', 'Arctozolt', 8, 881, 'blue', 'Fossil', NULL, 35, FALSE, FALSE, FALSE),
  -- Dracovish
  (882, 882, 'dracovish', 'Dracovish', 8, 882, 'green', 'Fossil', NULL, 35, FALSE, FALSE, FALSE),
  -- Arctovish
  (883, 883, 'arctovish', 'Arctovish', 8, 883, 'blue', 'Fossil', NULL, 35, FALSE, FALSE, FALSE),
  -- Duraludon
  (884, 884, 'duraludon', 'Duraludon', 8, 884, 'white', 'Alloy', 4, 30, FALSE, FALSE, FALSE),
  -- Dreepy
  (885, 885, 'dreepy', 'Dreepy', 8, 885, 'green', 'Lingering', 4, 40, FALSE, FALSE, FALSE),
  -- Drakloak
  (886, 886, 'drakloak', 'Drakloak', 8, 885, 'green', 'Caretaker', 4, 40, FALSE, FALSE, FALSE),
  -- Dragapult
  (887, 887, 'dragapult', 'Dragapult', 8, 885, 'green', 'Stealth', 4, 40, FALSE, FALSE, FALSE),
  -- Zacian
  (888, 888, 'zacian', 'Zacian', 8, 888, 'blue', 'Warrior', NULL, 120, FALSE, TRUE, FALSE),
  -- Zamazenta
  (889, 889, 'zamazenta', 'Zamazenta', 8, 889, 'red', 'Warrior', NULL, 120, FALSE, TRUE, FALSE),
  -- Eternatus
  (890, 890, 'eternatus', 'Eternatus', 8, 890, 'purple', 'Gigantic', NULL, 120, FALSE, TRUE, FALSE),
  -- Kubfu
  (891, 891, 'kubfu', 'Kubfu', 8, 891, 'gray', 'Wushu', 1, 120, FALSE, TRUE, FALSE),
  -- Urshifu
  (892, 892, 'urshifu', 'Urshifu', 8, 891, 'gray', 'Wushu', 1, 120, FALSE, TRUE, FALSE),
  -- Zarude
  (893, 893, 'zarude', 'Zarude', 8, 893, 'green', 'Rogue Monkey', NULL, 120, FALSE, FALSE, TRUE),
  -- Regieleki
  (894, 894, 'regieleki', 'Regieleki', 8, 894, 'yellow', 'Electron', NULL, 120, FALSE, TRUE, FALSE),
  -- Regidrago
  (895, 895, 'regidrago', 'Regidrago', 8, 895, 'green', 'Dragon Orb', NULL, 120, FALSE, TRUE, FALSE),
  -- Glastrier
  (896, 896, 'glastrier', 'Glastrier', 8, 896, 'white', 'Wild Horse', NULL, 120, FALSE, TRUE, FALSE),
  -- Spectrier
  (897, 897, 'spectrier', 'Spectrier', 8, 897, 'black', 'Swift Horse', NULL, 120, FALSE, TRUE, FALSE),
  -- Calyrex
  (898, 898, 'calyrex', 'Calyrex', 8, 898, 'green', 'King', NULL, 120, FALSE, TRUE, FALSE),
  -- Wyrdeer
  (899, 899, 'wyrdeer', 'Wyrdeer', 8, 234, 'gray', 'Big Horn', 4, 20, FALSE, FALSE, FALSE),
  -- Kleavor
  (900, 900, 'kleavor', 'Kleavor', 8, 123, 'brown', 'Axe', 4, 20, FALSE, FALSE, FALSE),
  -- Ursaluna
  (901, 901, 'ursaluna', 'Ursaluna', 8, 216, 'brown', 'Peat', 4, 20, FALSE, FALSE, FALSE),
  -- Basculegion
  (902, 902, 'basculegion', 'Basculegion', 8, 550, 'green', 'Big Fish', 4, 20, FALSE, FALSE, FALSE),
  -- Sneasler
  (903, 903, 'sneasler', 'Sneasler', 8, 215, 'purple', 'Free Climb', 4, 20, FALSE, FALSE, FALSE),
  -- Overqwil
  (904, 904, 'overqwil', 'Overqwil', 8, 211, 'gray', 'Pin Cluster', 4, 20, FALSE, FALSE, FALSE),
  -- Enamorus
  (905, 905, 'enamorus', 'Enamorus', 8, 905, 'pink', 'Love-Hate', 8, 20, FALSE, TRUE, FALSE);
