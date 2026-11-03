-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- Heights and weights: the machine-readable species snapshot (PokeAPI), checked against Bulbapedia species pages on 2026-11-03.
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0810-0905
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, category, gender)
VALUES
  -- Grookey
  (81000, 810, 'grookey', 'Grookey', 8, TRUE, 1, 3, 50, NULL, NULL),
  -- Thwackey
  (81100, 811, 'thwackey', 'Thwackey', 8, TRUE, 1, 7, 140, NULL, NULL),
  -- Rillaboom
  (81200, 812, 'rillaboom', 'Rillaboom', 8, TRUE, 1, 21, 900, NULL, NULL),
  -- Scorbunny
  (81300, 813, 'scorbunny', 'Scorbunny', 8, TRUE, 1, 3, 45, NULL, NULL),
  -- Raboot
  (81400, 814, 'raboot', 'Raboot', 8, TRUE, 1, 6, 90, NULL, NULL),
  -- Cinderace
  (81500, 815, 'cinderace', 'Cinderace', 8, TRUE, 1, 14, 330, NULL, NULL),
  -- Sobble
  (81600, 816, 'sobble', 'Sobble', 8, TRUE, 1, 3, 40, NULL, NULL),
  -- Drizzile
  (81700, 817, 'drizzile', 'Drizzile', 8, TRUE, 1, 7, 115, NULL, NULL),
  -- Inteleon
  (81800, 818, 'inteleon', 'Inteleon', 8, TRUE, 1, 19, 452, NULL, NULL),
  -- Skwovet
  (81900, 819, 'skwovet', 'Skwovet', 8, TRUE, 1, 3, 25, NULL, NULL),
  -- Greedent
  (82000, 820, 'greedent', 'Greedent', 8, TRUE, 1, 6, 60, NULL, NULL),
  -- Rookidee
  (82100, 821, 'rookidee', 'Rookidee', 8, TRUE, 1, 2, 18, NULL, NULL),
  -- Corvisquire
  (82200, 822, 'corvisquire', 'Corvisquire', 8, TRUE, 1, 8, 160, NULL, NULL),
  -- Corviknight
  (82300, 823, 'corviknight', 'Corviknight', 8, TRUE, 1, 22, 750, NULL, NULL),
  -- Blipbug
  (82400, 824, 'blipbug', 'Blipbug', 8, TRUE, 1, 4, 80, NULL, NULL),
  -- Dottler
  (82500, 825, 'dottler', 'Dottler', 8, TRUE, 1, 4, 195, NULL, NULL),
  -- Orbeetle
  (82600, 826, 'orbeetle', 'Orbeetle', 8, TRUE, 1, 4, 408, NULL, NULL),
  -- Nickit
  (82700, 827, 'nickit', 'Nickit', 8, TRUE, 1, 6, 89, NULL, NULL),
  -- Thievul
  (82800, 828, 'thievul', 'Thievul', 8, TRUE, 1, 12, 199, NULL, NULL),
  -- Gossifleur
  (82900, 829, 'gossifleur', 'Gossifleur', 8, TRUE, 1, 4, 22, NULL, NULL),
  -- Eldegoss
  (83000, 830, 'eldegoss', 'Eldegoss', 8, TRUE, 1, 5, 25, NULL, NULL),
  -- Wooloo
  (83100, 831, 'wooloo', 'Wooloo', 8, TRUE, 1, 6, 60, NULL, NULL),
  -- Dubwool
  (83200, 832, 'dubwool', 'Dubwool', 8, TRUE, 1, 13, 430, NULL, NULL),
  -- Chewtle
  (83300, 833, 'chewtle', 'Chewtle', 8, TRUE, 1, 3, 85, NULL, NULL),
  -- Drednaw
  (83400, 834, 'drednaw', 'Drednaw', 8, TRUE, 1, 10, 1155, NULL, NULL),
  -- Yamper
  (83500, 835, 'yamper', 'Yamper', 8, TRUE, 1, 3, 135, NULL, NULL),
  -- Boltund
  (83600, 836, 'boltund', 'Boltund', 8, TRUE, 1, 10, 340, NULL, NULL),
  -- Rolycoly
  (83700, 837, 'rolycoly', 'Rolycoly', 8, TRUE, 1, 3, 120, NULL, NULL),
  -- Carkol
  (83800, 838, 'carkol', 'Carkol', 8, TRUE, 1, 11, 780, NULL, NULL),
  -- Coalossal
  (83900, 839, 'coalossal', 'Coalossal', 8, TRUE, 1, 28, 3105, NULL, NULL),
  -- Applin
  (84000, 840, 'applin', 'Applin', 8, TRUE, 1, 2, 5, NULL, NULL),
  -- Flapple
  (84100, 841, 'flapple', 'Flapple', 8, TRUE, 1, 3, 10, NULL, NULL),
  -- Appletun
  (84200, 842, 'appletun', 'Appletun', 8, TRUE, 1, 4, 130, NULL, NULL),
  -- Silicobra
  (84300, 843, 'silicobra', 'Silicobra', 8, TRUE, 1, 22, 76, NULL, NULL),
  -- Sandaconda
  (84400, 844, 'sandaconda', 'Sandaconda', 8, TRUE, 1, 38, 655, NULL, NULL),
  -- Cramorant
  (84500, 845, 'cramorant', 'Cramorant', 8, TRUE, 1, 8, 180, NULL, NULL),
  -- Arrokuda
  (84600, 846, 'arrokuda', 'Arrokuda', 8, TRUE, 1, 5, 10, NULL, NULL),
  -- Barraskewda
  (84700, 847, 'barraskewda', 'Barraskewda', 8, TRUE, 1, 13, 300, NULL, NULL),
  -- Toxel
  (84800, 848, 'toxel', 'Toxel', 8, TRUE, 1, 4, 110, NULL, NULL),
  -- Toxtricity
  (84900, 849, 'toxtricity', 'Toxtricity', 8, TRUE, 1, 16, 400, NULL, NULL),
  -- Sizzlipede
  (85000, 850, 'sizzlipede', 'Sizzlipede', 8, TRUE, 1, 7, 10, NULL, NULL),
  -- Centiskorch
  (85100, 851, 'centiskorch', 'Centiskorch', 8, TRUE, 1, 30, 1200, NULL, NULL),
  -- Clobbopus
  (85200, 852, 'clobbopus', 'Clobbopus', 8, TRUE, 1, 6, 40, NULL, NULL),
  -- Grapploct
  (85300, 853, 'grapploct', 'Grapploct', 8, TRUE, 1, 16, 390, NULL, NULL),
  -- Sinistea
  (85400, 854, 'sinistea', 'Sinistea', 8, TRUE, 1, 1, 2, NULL, NULL),
  -- Polteageist
  (85500, 855, 'polteageist', 'Polteageist', 8, TRUE, 1, 2, 4, NULL, NULL),
  -- Hatenna
  (85600, 856, 'hatenna', 'Hatenna', 8, TRUE, 1, 4, 34, NULL, NULL),
  -- Hattrem
  (85700, 857, 'hattrem', 'Hattrem', 8, TRUE, 1, 6, 48, NULL, NULL),
  -- Hatterene
  (85800, 858, 'hatterene', 'Hatterene', 8, TRUE, 1, 21, 51, NULL, NULL),
  -- Impidimp
  (85900, 859, 'impidimp', 'Impidimp', 8, TRUE, 1, 4, 55, NULL, NULL),
  -- Morgrem
  (86000, 860, 'morgrem', 'Morgrem', 8, TRUE, 1, 8, 125, NULL, NULL),
  -- Grimmsnarl
  (86100, 861, 'grimmsnarl', 'Grimmsnarl', 8, TRUE, 1, 15, 610, NULL, NULL),
  -- Obstagoon
  (86200, 862, 'obstagoon', 'Obstagoon', 8, TRUE, 1, 16, 460, NULL, NULL),
  -- Perrserker
  (86300, 863, 'perrserker', 'Perrserker', 8, TRUE, 1, 8, 280, NULL, NULL),
  -- Cursola
  (86400, 864, 'cursola', 'Cursola', 8, TRUE, 1, 10, 4, NULL, NULL),
  -- Sirfetch'd
  (86500, 865, 'sirfetchd', 'Sirfetch''d', 8, TRUE, 1, 8, 1170, NULL, NULL),
  -- Mr. Rime
  (86600, 866, 'mr-rime', 'Mr. Rime', 8, TRUE, 1, 15, 582, NULL, NULL),
  -- Runerigus
  (86700, 867, 'runerigus', 'Runerigus', 8, TRUE, 1, 16, 666, NULL, NULL),
  -- Milcery
  (86800, 868, 'milcery', 'Milcery', 8, TRUE, 1, 2, 3, NULL, NULL),
  -- Alcremie
  (86900, 869, 'alcremie', 'Alcremie', 8, TRUE, 1, 3, 5, NULL, NULL),
  -- Falinks
  (87000, 870, 'falinks', 'Falinks', 8, TRUE, 1, 30, 620, NULL, NULL),
  -- Pincurchin
  (87100, 871, 'pincurchin', 'Pincurchin', 8, TRUE, 1, 3, 10, NULL, NULL),
  -- Snom
  (87200, 872, 'snom', 'Snom', 8, TRUE, 1, 3, 38, NULL, NULL),
  -- Frosmoth
  (87300, 873, 'frosmoth', 'Frosmoth', 8, TRUE, 1, 13, 420, NULL, NULL),
  -- Stonjourner
  (87400, 874, 'stonjourner', 'Stonjourner', 8, TRUE, 1, 25, 5200, NULL, NULL),
  -- Eiscue
  (87500, 875, 'eiscue', 'Eiscue', 8, TRUE, 1, 14, 890, NULL, NULL),
  -- Indeedee
  (87600, 876, 'indeedee', 'Indeedee', 8, TRUE, 1, 9, 280, NULL, 'male'),
  -- Morpeko
  (87700, 877, 'morpeko', 'Morpeko', 8, TRUE, 1, 3, 30, NULL, NULL),
  -- Cufant
  (87800, 878, 'cufant', 'Cufant', 8, TRUE, 1, 12, 1000, NULL, NULL),
  -- Copperajah
  (87900, 879, 'copperajah', 'Copperajah', 8, TRUE, 1, 30, 6500, NULL, NULL),
  -- Dracozolt
  (88000, 880, 'dracozolt', 'Dracozolt', 8, TRUE, 1, 18, 1900, NULL, NULL),
  -- Arctozolt
  (88100, 881, 'arctozolt', 'Arctozolt', 8, TRUE, 1, 23, 1500, NULL, NULL),
  -- Dracovish
  (88200, 882, 'dracovish', 'Dracovish', 8, TRUE, 1, 23, 2150, NULL, NULL),
  -- Arctovish
  (88300, 883, 'arctovish', 'Arctovish', 8, TRUE, 1, 20, 1750, NULL, NULL),
  -- Duraludon
  (88400, 884, 'duraludon', 'Duraludon', 8, TRUE, 1, 18, 400, NULL, NULL),
  -- Dreepy
  (88500, 885, 'dreepy', 'Dreepy', 8, TRUE, 1, 5, 20, NULL, NULL),
  -- Drakloak
  (88600, 886, 'drakloak', 'Drakloak', 8, TRUE, 1, 14, 110, NULL, NULL),
  -- Dragapult
  (88700, 887, 'dragapult', 'Dragapult', 8, TRUE, 1, 30, 500, NULL, NULL),
  -- Zacian
  (88800, 888, 'zacian', 'Zacian', 8, TRUE, 1, 28, 1100, NULL, NULL),
  -- Zamazenta
  (88900, 889, 'zamazenta', 'Zamazenta', 8, TRUE, 1, 29, 2100, NULL, NULL),
  -- Eternatus
  (89000, 890, 'eternatus', 'Eternatus', 8, TRUE, 1, 200, 9500, NULL, NULL),
  -- Kubfu
  (89100, 891, 'kubfu', 'Kubfu', 8, TRUE, 1, 6, 120, NULL, NULL),
  -- Urshifu
  (89200, 892, 'urshifu', 'Urshifu', 8, TRUE, 1, 19, 1050, NULL, NULL),
  -- Zarude
  (89300, 893, 'zarude', 'Zarude', 8, TRUE, 1, 18, 700, NULL, NULL),
  -- Regieleki
  (89400, 894, 'regieleki', 'Regieleki', 8, TRUE, 1, 12, 1450, NULL, NULL),
  -- Regidrago
  (89500, 895, 'regidrago', 'Regidrago', 8, TRUE, 1, 21, 2000, NULL, NULL),
  -- Glastrier
  (89600, 896, 'glastrier', 'Glastrier', 8, TRUE, 1, 22, 8000, NULL, NULL),
  -- Spectrier
  (89700, 897, 'spectrier', 'Spectrier', 8, TRUE, 1, 20, 445, NULL, NULL),
  -- Calyrex
  (89800, 898, 'calyrex', 'Calyrex', 8, TRUE, 1, 11, 77, NULL, NULL),
  -- Wyrdeer
  (89900, 899, 'wyrdeer', 'Wyrdeer', 8, TRUE, 1, 18, 951, NULL, NULL),
  -- Kleavor
  (90000, 900, 'kleavor', 'Kleavor', 8, TRUE, 1, 18, 890, NULL, NULL),
  -- Ursaluna
  (90100, 901, 'ursaluna', 'Ursaluna', 8, TRUE, 1, 24, 2900, NULL, NULL),
  -- Basculegion
  (90200, 902, 'basculegion', 'Basculegion', 8, TRUE, 1, 30, 1100, NULL, 'male'),
  -- Sneasler
  (90300, 903, 'sneasler', 'Sneasler', 8, TRUE, 1, 13, 430, NULL, NULL),
  -- Overqwil
  (90400, 904, 'overqwil', 'Overqwil', 8, TRUE, 1, 25, 605, NULL, NULL),
  -- Enamorus
  (90500, 905, 'enamorus', 'Enamorus', 8, TRUE, 1, 16, 480, NULL, NULL);
