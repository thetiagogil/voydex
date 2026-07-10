-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_species
-- Scope: National Dex #0810-0905
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Grookey
  (810, 810, 'grookey', 'Grookey', 8, 810, 'green', FALSE, FALSE, FALSE),
  -- Thwackey
  (811, 811, 'thwackey', 'Thwackey', 8, 810, 'green', FALSE, FALSE, FALSE),
  -- Rillaboom
  (812, 812, 'rillaboom', 'Rillaboom', 8, 810, 'green', FALSE, FALSE, FALSE),
  -- Scorbunny
  (813, 813, 'scorbunny', 'Scorbunny', 8, 813, 'white', FALSE, FALSE, FALSE),
  -- Raboot
  (814, 814, 'raboot', 'Raboot', 8, 813, 'gray', FALSE, FALSE, FALSE),
  -- Cinderace
  (815, 815, 'cinderace', 'Cinderace', 8, 813, 'white', FALSE, FALSE, FALSE),
  -- Sobble
  (816, 816, 'sobble', 'Sobble', 8, 816, 'blue', FALSE, FALSE, FALSE),
  -- Drizzile
  (817, 817, 'drizzile', 'Drizzile', 8, 816, 'blue', FALSE, FALSE, FALSE),
  -- Inteleon
  (818, 818, 'inteleon', 'Inteleon', 8, 816, 'blue', FALSE, FALSE, FALSE),
  -- Skwovet
  (819, 819, 'skwovet', 'Skwovet', 8, 819, 'brown', FALSE, FALSE, FALSE),
  -- Greedent
  (820, 820, 'greedent', 'Greedent', 8, 819, 'brown', FALSE, FALSE, FALSE),
  -- Rookidee
  (821, 821, 'rookidee', 'Rookidee', 8, 821, 'blue', FALSE, FALSE, FALSE),
  -- Corvisquire
  (822, 822, 'corvisquire', 'Corvisquire', 8, 821, 'blue', FALSE, FALSE, FALSE),
  -- Corviknight
  (823, 823, 'corviknight', 'Corviknight', 8, 821, 'purple', FALSE, FALSE, FALSE),
  -- Blipbug
  (824, 824, 'blipbug', 'Blipbug', 8, 824, 'blue', FALSE, FALSE, FALSE),
  -- Dottler
  (825, 825, 'dottler', 'Dottler', 8, 824, 'yellow', FALSE, FALSE, FALSE),
  -- Orbeetle
  (826, 826, 'orbeetle', 'Orbeetle', 8, 824, 'red', FALSE, FALSE, FALSE),
  -- Nickit
  (827, 827, 'nickit', 'Nickit', 8, 827, 'brown', FALSE, FALSE, FALSE),
  -- Thievul
  (828, 828, 'thievul', 'Thievul', 8, 827, 'brown', FALSE, FALSE, FALSE),
  -- Gossifleur
  (829, 829, 'gossifleur', 'Gossifleur', 8, 829, 'green', FALSE, FALSE, FALSE),
  -- Eldegoss
  (830, 830, 'eldegoss', 'Eldegoss', 8, 829, 'green', FALSE, FALSE, FALSE),
  -- Wooloo
  (831, 831, 'wooloo', 'Wooloo', 8, 831, 'white', FALSE, FALSE, FALSE),
  -- Dubwool
  (832, 832, 'dubwool', 'Dubwool', 8, 831, 'white', FALSE, FALSE, FALSE),
  -- Chewtle
  (833, 833, 'chewtle', 'Chewtle', 8, 833, 'green', FALSE, FALSE, FALSE),
  -- Drednaw
  (834, 834, 'drednaw', 'Drednaw', 8, 833, 'green', FALSE, FALSE, FALSE),
  -- Yamper
  (835, 835, 'yamper', 'Yamper', 8, 835, 'yellow', FALSE, FALSE, FALSE),
  -- Boltund
  (836, 836, 'boltund', 'Boltund', 8, 835, 'yellow', FALSE, FALSE, FALSE),
  -- Rolycoly
  (837, 837, 'rolycoly', 'Rolycoly', 8, 837, 'black', FALSE, FALSE, FALSE),
  -- Carkol
  (838, 838, 'carkol', 'Carkol', 8, 837, 'black', FALSE, FALSE, FALSE),
  -- Coalossal
  (839, 839, 'coalossal', 'Coalossal', 8, 837, 'black', FALSE, FALSE, FALSE),
  -- Applin
  (840, 840, 'applin', 'Applin', 8, 840, 'green', FALSE, FALSE, FALSE),
  -- Flapple
  (841, 841, 'flapple', 'Flapple', 8, 840, 'green', FALSE, FALSE, FALSE),
  -- Appletun
  (842, 842, 'appletun', 'Appletun', 8, 840, 'green', FALSE, FALSE, FALSE),
  -- Silicobra
  (843, 843, 'silicobra', 'Silicobra', 8, 843, 'green', FALSE, FALSE, FALSE),
  -- Sandaconda
  (844, 844, 'sandaconda', 'Sandaconda', 8, 843, 'green', FALSE, FALSE, FALSE),
  -- Cramorant
  (845, 845, 'cramorant', 'Cramorant', 8, 845, 'blue', FALSE, FALSE, FALSE),
  -- Arrokuda
  (846, 846, 'arrokuda', 'Arrokuda', 8, 846, 'brown', FALSE, FALSE, FALSE),
  -- Barraskewda
  (847, 847, 'barraskewda', 'Barraskewda', 8, 846, 'brown', FALSE, FALSE, FALSE),
  -- Toxel
  (848, 848, 'toxel', 'Toxel', 8, 848, 'purple', TRUE, FALSE, FALSE),
  -- Toxtricity
  (849, 849, 'toxtricity', 'Toxtricity', 8, 848, 'purple', FALSE, FALSE, FALSE),
  -- Sizzlipede
  (850, 850, 'sizzlipede', 'Sizzlipede', 8, 850, 'red', FALSE, FALSE, FALSE),
  -- Centiskorch
  (851, 851, 'centiskorch', 'Centiskorch', 8, 850, 'red', FALSE, FALSE, FALSE),
  -- Clobbopus
  (852, 852, 'clobbopus', 'Clobbopus', 8, 852, 'brown', FALSE, FALSE, FALSE),
  -- Grapploct
  (853, 853, 'grapploct', 'Grapploct', 8, 852, 'blue', FALSE, FALSE, FALSE),
  -- Sinistea
  (854, 854, 'sinistea', 'Sinistea', 8, 854, 'purple', FALSE, FALSE, FALSE),
  -- Polteageist
  (855, 855, 'polteageist', 'Polteageist', 8, 854, 'purple', FALSE, FALSE, FALSE),
  -- Hatenna
  (856, 856, 'hatenna', 'Hatenna', 8, 856, 'pink', FALSE, FALSE, FALSE),
  -- Hattrem
  (857, 857, 'hattrem', 'Hattrem', 8, 856, 'pink', FALSE, FALSE, FALSE),
  -- Hatterene
  (858, 858, 'hatterene', 'Hatterene', 8, 856, 'pink', FALSE, FALSE, FALSE),
  -- Impidimp
  (859, 859, 'impidimp', 'Impidimp', 8, 859, 'pink', FALSE, FALSE, FALSE),
  -- Morgrem
  (860, 860, 'morgrem', 'Morgrem', 8, 859, 'pink', FALSE, FALSE, FALSE),
  -- Grimmsnarl
  (861, 861, 'grimmsnarl', 'Grimmsnarl', 8, 859, 'purple', FALSE, FALSE, FALSE),
  -- Obstagoon
  (862, 862, 'obstagoon', 'Obstagoon', 8, 263, 'gray', FALSE, FALSE, FALSE),
  -- Perrserker
  (863, 863, 'perrserker', 'Perrserker', 8, 52, 'brown', FALSE, FALSE, FALSE),
  -- Cursola
  (864, 864, 'cursola', 'Cursola', 8, 222, 'white', FALSE, FALSE, FALSE),
  -- Sirfetch'd
  (865, 865, 'sirfetchd', 'Sirfetch''d', 8, 83, 'white', FALSE, FALSE, FALSE),
  -- Mr. Rime
  (866, 866, 'mr-rime', 'Mr. Rime', 8, 122, 'purple', FALSE, FALSE, FALSE),
  -- Runerigus
  (867, 867, 'runerigus', 'Runerigus', 8, 562, 'gray', FALSE, FALSE, FALSE),
  -- Milcery
  (868, 868, 'milcery', 'Milcery', 8, 868, 'white', FALSE, FALSE, FALSE),
  -- Alcremie
  (869, 869, 'alcremie', 'Alcremie', 8, 868, 'white', FALSE, FALSE, FALSE),
  -- Falinks
  (870, 870, 'falinks', 'Falinks', 8, 870, 'yellow', FALSE, FALSE, FALSE),
  -- Pincurchin
  (871, 871, 'pincurchin', 'Pincurchin', 8, 871, 'purple', FALSE, FALSE, FALSE),
  -- Snom
  (872, 872, 'snom', 'Snom', 8, 872, 'white', FALSE, FALSE, FALSE),
  -- Frosmoth
  (873, 873, 'frosmoth', 'Frosmoth', 8, 872, 'white', FALSE, FALSE, FALSE),
  -- Stonjourner
  (874, 874, 'stonjourner', 'Stonjourner', 8, 874, 'gray', FALSE, FALSE, FALSE),
  -- Eiscue
  (875, 875, 'eiscue', 'Eiscue', 8, 875, 'blue', FALSE, FALSE, FALSE),
  -- Indeedee
  (876, 876, 'indeedee', 'Indeedee', 8, 876, 'purple', FALSE, FALSE, FALSE),
  -- Morpeko
  (877, 877, 'morpeko', 'Morpeko', 8, 877, 'yellow', FALSE, FALSE, FALSE),
  -- Cufant
  (878, 878, 'cufant', 'Cufant', 8, 878, 'yellow', FALSE, FALSE, FALSE),
  -- Copperajah
  (879, 879, 'copperajah', 'Copperajah', 8, 878, 'green', FALSE, FALSE, FALSE),
  -- Dracozolt
  (880, 880, 'dracozolt', 'Dracozolt', 8, 880, 'green', FALSE, FALSE, FALSE),
  -- Arctozolt
  (881, 881, 'arctozolt', 'Arctozolt', 8, 881, 'blue', FALSE, FALSE, FALSE),
  -- Dracovish
  (882, 882, 'dracovish', 'Dracovish', 8, 882, 'green', FALSE, FALSE, FALSE),
  -- Arctovish
  (883, 883, 'arctovish', 'Arctovish', 8, 883, 'blue', FALSE, FALSE, FALSE),
  -- Duraludon
  (884, 884, 'duraludon', 'Duraludon', 8, 884, 'white', FALSE, FALSE, FALSE),
  -- Dreepy
  (885, 885, 'dreepy', 'Dreepy', 8, 885, 'green', FALSE, FALSE, FALSE),
  -- Drakloak
  (886, 886, 'drakloak', 'Drakloak', 8, 885, 'green', FALSE, FALSE, FALSE),
  -- Dragapult
  (887, 887, 'dragapult', 'Dragapult', 8, 885, 'green', FALSE, FALSE, FALSE),
  -- Zacian
  (888, 888, 'zacian', 'Zacian', 8, 888, 'blue', FALSE, TRUE, FALSE),
  -- Zamazenta
  (889, 889, 'zamazenta', 'Zamazenta', 8, 889, 'red', FALSE, TRUE, FALSE),
  -- Eternatus
  (890, 890, 'eternatus', 'Eternatus', 8, 890, 'purple', FALSE, TRUE, FALSE),
  -- Kubfu
  (891, 891, 'kubfu', 'Kubfu', 8, 891, 'gray', FALSE, TRUE, FALSE),
  -- Urshifu
  (892, 892, 'urshifu', 'Urshifu', 8, 891, 'gray', FALSE, TRUE, FALSE),
  -- Zarude
  (893, 893, 'zarude', 'Zarude', 8, 893, 'green', FALSE, FALSE, TRUE),
  -- Regieleki
  (894, 894, 'regieleki', 'Regieleki', 8, 894, 'yellow', FALSE, TRUE, FALSE),
  -- Regidrago
  (895, 895, 'regidrago', 'Regidrago', 8, 895, 'green', FALSE, TRUE, FALSE),
  -- Glastrier
  (896, 896, 'glastrier', 'Glastrier', 8, 896, 'white', FALSE, TRUE, FALSE),
  -- Spectrier
  (897, 897, 'spectrier', 'Spectrier', 8, 897, 'black', FALSE, TRUE, FALSE),
  -- Calyrex
  (898, 898, 'calyrex', 'Calyrex', 8, 898, 'green', FALSE, TRUE, FALSE),
  -- Wyrdeer
  (899, 899, 'wyrdeer', 'Wyrdeer', 8, 234, 'gray', FALSE, FALSE, FALSE),
  -- Kleavor
  (900, 900, 'kleavor', 'Kleavor', 8, 123, 'brown', FALSE, FALSE, FALSE),
  -- Ursaluna
  (901, 901, 'ursaluna', 'Ursaluna', 8, 216, 'brown', FALSE, FALSE, FALSE),
  -- Basculegion
  (902, 902, 'basculegion', 'Basculegion', 8, 550, 'green', FALSE, FALSE, FALSE),
  -- Sneasler
  (903, 903, 'sneasler', 'Sneasler', 8, 215, 'purple', FALSE, FALSE, FALSE),
  -- Overqwil
  (904, 904, 'overqwil', 'Overqwil', 8, 211, 'gray', FALSE, FALSE, FALSE),
  -- Enamorus
  (905, 905, 'enamorus', 'Enamorus', 8, 905, 'pink', FALSE, TRUE, FALSE);
