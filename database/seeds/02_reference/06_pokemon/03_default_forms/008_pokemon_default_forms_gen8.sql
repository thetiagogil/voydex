-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0810-0905
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Grookey
  (81000, 810, 'grookey', 'Grookey', 8, TRUE, 1, NULL, NULL, 'grookey'),
  -- Thwackey
  (81100, 811, 'thwackey', 'Thwackey', 8, TRUE, 1, NULL, NULL, 'thwackey'),
  -- Rillaboom
  (81200, 812, 'rillaboom', 'Rillaboom', 8, TRUE, 1, NULL, NULL, 'rillaboom'),
  -- Scorbunny
  (81300, 813, 'scorbunny', 'Scorbunny', 8, TRUE, 1, NULL, NULL, 'scorbunny'),
  -- Raboot
  (81400, 814, 'raboot', 'Raboot', 8, TRUE, 1, NULL, NULL, 'raboot'),
  -- Cinderace
  (81500, 815, 'cinderace', 'Cinderace', 8, TRUE, 1, NULL, NULL, 'cinderace'),
  -- Sobble
  (81600, 816, 'sobble', 'Sobble', 8, TRUE, 1, NULL, NULL, 'sobble'),
  -- Drizzile
  (81700, 817, 'drizzile', 'Drizzile', 8, TRUE, 1, NULL, NULL, 'drizzile'),
  -- Inteleon
  (81800, 818, 'inteleon', 'Inteleon', 8, TRUE, 1, NULL, NULL, 'inteleon'),
  -- Skwovet
  (81900, 819, 'skwovet', 'Skwovet', 8, TRUE, 1, NULL, NULL, 'skwovet'),
  -- Greedent
  (82000, 820, 'greedent', 'Greedent', 8, TRUE, 1, NULL, NULL, 'greedent'),
  -- Rookidee
  (82100, 821, 'rookidee', 'Rookidee', 8, TRUE, 1, NULL, NULL, 'rookidee'),
  -- Corvisquire
  (82200, 822, 'corvisquire', 'Corvisquire', 8, TRUE, 1, NULL, NULL, 'corvisquire'),
  -- Corviknight
  (82300, 823, 'corviknight', 'Corviknight', 8, TRUE, 1, NULL, NULL, 'corviknight'),
  -- Blipbug
  (82400, 824, 'blipbug', 'Blipbug', 8, TRUE, 1, NULL, NULL, 'blipbug'),
  -- Dottler
  (82500, 825, 'dottler', 'Dottler', 8, TRUE, 1, NULL, NULL, 'dottler'),
  -- Orbeetle
  (82600, 826, 'orbeetle', 'Orbeetle', 8, TRUE, 1, NULL, NULL, 'orbeetle'),
  -- Nickit
  (82700, 827, 'nickit', 'Nickit', 8, TRUE, 1, NULL, NULL, 'nickit'),
  -- Thievul
  (82800, 828, 'thievul', 'Thievul', 8, TRUE, 1, NULL, NULL, 'thievul'),
  -- Gossifleur
  (82900, 829, 'gossifleur', 'Gossifleur', 8, TRUE, 1, NULL, NULL, 'gossifleur'),
  -- Eldegoss
  (83000, 830, 'eldegoss', 'Eldegoss', 8, TRUE, 1, NULL, NULL, 'eldegoss'),
  -- Wooloo
  (83100, 831, 'wooloo', 'Wooloo', 8, TRUE, 1, NULL, NULL, 'wooloo'),
  -- Dubwool
  (83200, 832, 'dubwool', 'Dubwool', 8, TRUE, 1, NULL, NULL, 'dubwool'),
  -- Chewtle
  (83300, 833, 'chewtle', 'Chewtle', 8, TRUE, 1, NULL, NULL, 'chewtle'),
  -- Drednaw
  (83400, 834, 'drednaw', 'Drednaw', 8, TRUE, 1, NULL, NULL, 'drednaw'),
  -- Yamper
  (83500, 835, 'yamper', 'Yamper', 8, TRUE, 1, NULL, NULL, 'yamper'),
  -- Boltund
  (83600, 836, 'boltund', 'Boltund', 8, TRUE, 1, NULL, NULL, 'boltund'),
  -- Rolycoly
  (83700, 837, 'rolycoly', 'Rolycoly', 8, TRUE, 1, NULL, NULL, 'rolycoly'),
  -- Carkol
  (83800, 838, 'carkol', 'Carkol', 8, TRUE, 1, NULL, NULL, 'carkol'),
  -- Coalossal
  (83900, 839, 'coalossal', 'Coalossal', 8, TRUE, 1, NULL, NULL, 'coalossal'),
  -- Applin
  (84000, 840, 'applin', 'Applin', 8, TRUE, 1, NULL, NULL, 'applin'),
  -- Flapple
  (84100, 841, 'flapple', 'Flapple', 8, TRUE, 1, NULL, NULL, 'flapple'),
  -- Appletun
  (84200, 842, 'appletun', 'Appletun', 8, TRUE, 1, NULL, NULL, 'appletun'),
  -- Silicobra
  (84300, 843, 'silicobra', 'Silicobra', 8, TRUE, 1, NULL, NULL, 'silicobra'),
  -- Sandaconda
  (84400, 844, 'sandaconda', 'Sandaconda', 8, TRUE, 1, NULL, NULL, 'sandaconda'),
  -- Cramorant
  (84500, 845, 'cramorant', 'Cramorant', 8, TRUE, 1, NULL, NULL, 'cramorant'),
  -- Arrokuda
  (84600, 846, 'arrokuda', 'Arrokuda', 8, TRUE, 1, NULL, NULL, 'arrokuda'),
  -- Barraskewda
  (84700, 847, 'barraskewda', 'Barraskewda', 8, TRUE, 1, NULL, NULL, 'barraskewda'),
  -- Toxel
  (84800, 848, 'toxel', 'Toxel', 8, TRUE, 1, NULL, NULL, 'toxel'),
  -- Toxtricity
  (84900, 849, 'toxtricity', 'Toxtricity', 8, TRUE, 1, NULL, NULL, 'toxtricity'),
  -- Sizzlipede
  (85000, 850, 'sizzlipede', 'Sizzlipede', 8, TRUE, 1, NULL, NULL, 'sizzlipede'),
  -- Centiskorch
  (85100, 851, 'centiskorch', 'Centiskorch', 8, TRUE, 1, NULL, NULL, 'centiskorch'),
  -- Clobbopus
  (85200, 852, 'clobbopus', 'Clobbopus', 8, TRUE, 1, NULL, NULL, 'clobbopus'),
  -- Grapploct
  (85300, 853, 'grapploct', 'Grapploct', 8, TRUE, 1, NULL, NULL, 'grapploct'),
  -- Sinistea
  (85400, 854, 'sinistea', 'Sinistea', 8, TRUE, 1, NULL, NULL, 'sinistea'),
  -- Polteageist
  (85500, 855, 'polteageist', 'Polteageist', 8, TRUE, 1, NULL, NULL, 'polteageist'),
  -- Hatenna
  (85600, 856, 'hatenna', 'Hatenna', 8, TRUE, 1, NULL, NULL, 'hatenna'),
  -- Hattrem
  (85700, 857, 'hattrem', 'Hattrem', 8, TRUE, 1, NULL, NULL, 'hattrem'),
  -- Hatterene
  (85800, 858, 'hatterene', 'Hatterene', 8, TRUE, 1, NULL, NULL, 'hatterene'),
  -- Impidimp
  (85900, 859, 'impidimp', 'Impidimp', 8, TRUE, 1, NULL, NULL, 'impidimp'),
  -- Morgrem
  (86000, 860, 'morgrem', 'Morgrem', 8, TRUE, 1, NULL, NULL, 'morgrem'),
  -- Grimmsnarl
  (86100, 861, 'grimmsnarl', 'Grimmsnarl', 8, TRUE, 1, NULL, NULL, 'grimmsnarl'),
  -- Obstagoon
  (86200, 862, 'obstagoon', 'Obstagoon', 8, TRUE, 1, NULL, NULL, 'obstagoon'),
  -- Perrserker
  (86300, 863, 'perrserker', 'Perrserker', 8, TRUE, 1, NULL, NULL, 'perrserker'),
  -- Cursola
  (86400, 864, 'cursola', 'Cursola', 8, TRUE, 1, NULL, NULL, 'cursola'),
  -- Sirfetch'd
  (86500, 865, 'sirfetchd', 'Sirfetch''d', 8, TRUE, 1, NULL, NULL, 'sirfetchd'),
  -- Mr. Rime
  (86600, 866, 'mr-rime', 'Mr. Rime', 8, TRUE, 1, NULL, NULL, 'mr-rime'),
  -- Runerigus
  (86700, 867, 'runerigus', 'Runerigus', 8, TRUE, 1, NULL, NULL, 'runerigus'),
  -- Milcery
  (86800, 868, 'milcery', 'Milcery', 8, TRUE, 1, NULL, NULL, 'milcery'),
  -- Alcremie
  (86900, 869, 'alcremie', 'Alcremie', 8, TRUE, 1, NULL, NULL, 'alcremie'),
  -- Falinks
  (87000, 870, 'falinks', 'Falinks', 8, TRUE, 1, NULL, NULL, 'falinks'),
  -- Pincurchin
  (87100, 871, 'pincurchin', 'Pincurchin', 8, TRUE, 1, NULL, NULL, 'pincurchin'),
  -- Snom
  (87200, 872, 'snom', 'Snom', 8, TRUE, 1, NULL, NULL, 'snom'),
  -- Frosmoth
  (87300, 873, 'frosmoth', 'Frosmoth', 8, TRUE, 1, NULL, NULL, 'frosmoth'),
  -- Stonjourner
  (87400, 874, 'stonjourner', 'Stonjourner', 8, TRUE, 1, NULL, NULL, 'stonjourner'),
  -- Eiscue
  (87500, 875, 'eiscue', 'Eiscue', 8, TRUE, 1, NULL, NULL, 'eiscue'),
  -- Indeedee
  (87600, 876, 'indeedee', 'Indeedee', 8, TRUE, 1, NULL, NULL, 'indeedee'),
  -- Morpeko
  (87700, 877, 'morpeko', 'Morpeko', 8, TRUE, 1, NULL, NULL, 'morpeko'),
  -- Cufant
  (87800, 878, 'cufant', 'Cufant', 8, TRUE, 1, NULL, NULL, 'cufant'),
  -- Copperajah
  (87900, 879, 'copperajah', 'Copperajah', 8, TRUE, 1, NULL, NULL, 'copperajah'),
  -- Dracozolt
  (88000, 880, 'dracozolt', 'Dracozolt', 8, TRUE, 1, NULL, NULL, 'dracozolt'),
  -- Arctozolt
  (88100, 881, 'arctozolt', 'Arctozolt', 8, TRUE, 1, NULL, NULL, 'arctozolt'),
  -- Dracovish
  (88200, 882, 'dracovish', 'Dracovish', 8, TRUE, 1, NULL, NULL, 'dracovish'),
  -- Arctovish
  (88300, 883, 'arctovish', 'Arctovish', 8, TRUE, 1, NULL, NULL, 'arctovish'),
  -- Duraludon
  (88400, 884, 'duraludon', 'Duraludon', 8, TRUE, 1, NULL, NULL, 'duraludon'),
  -- Dreepy
  (88500, 885, 'dreepy', 'Dreepy', 8, TRUE, 1, NULL, NULL, 'dreepy'),
  -- Drakloak
  (88600, 886, 'drakloak', 'Drakloak', 8, TRUE, 1, NULL, NULL, 'drakloak'),
  -- Dragapult
  (88700, 887, 'dragapult', 'Dragapult', 8, TRUE, 1, NULL, NULL, 'dragapult'),
  -- Zacian
  (88800, 888, 'zacian', 'Zacian', 8, TRUE, 1, NULL, NULL, 'zacian'),
  -- Zamazenta
  (88900, 889, 'zamazenta', 'Zamazenta', 8, TRUE, 1, NULL, NULL, 'zamazenta'),
  -- Eternatus
  (89000, 890, 'eternatus', 'Eternatus', 8, TRUE, 1, NULL, NULL, 'eternatus'),
  -- Kubfu
  (89100, 891, 'kubfu', 'Kubfu', 8, TRUE, 1, NULL, NULL, 'kubfu'),
  -- Urshifu
  (89200, 892, 'urshifu', 'Urshifu', 8, TRUE, 1, NULL, NULL, 'urshifu'),
  -- Zarude
  (89300, 893, 'zarude', 'Zarude', 8, TRUE, 1, NULL, NULL, 'zarude'),
  -- Regieleki
  (89400, 894, 'regieleki', 'Regieleki', 8, TRUE, 1, NULL, NULL, 'regieleki'),
  -- Regidrago
  (89500, 895, 'regidrago', 'Regidrago', 8, TRUE, 1, NULL, NULL, 'regidrago'),
  -- Glastrier
  (89600, 896, 'glastrier', 'Glastrier', 8, TRUE, 1, NULL, NULL, 'glastrier'),
  -- Spectrier
  (89700, 897, 'spectrier', 'Spectrier', 8, TRUE, 1, NULL, NULL, 'spectrier'),
  -- Calyrex
  (89800, 898, 'calyrex', 'Calyrex', 8, TRUE, 1, NULL, NULL, 'calyrex'),
  -- Wyrdeer
  (89900, 899, 'wyrdeer', 'Wyrdeer', 8, TRUE, 1, NULL, NULL, 'wyrdeer'),
  -- Kleavor
  (90000, 900, 'kleavor', 'Kleavor', 8, TRUE, 1, NULL, NULL, 'kleavor'),
  -- Ursaluna
  (90100, 901, 'ursaluna', 'Ursaluna', 8, TRUE, 1, NULL, NULL, 'ursaluna'),
  -- Basculegion
  (90200, 902, 'basculegion', 'Basculegion', 8, TRUE, 1, NULL, NULL, 'basculegion'),
  -- Sneasler
  (90300, 903, 'sneasler', 'Sneasler', 8, TRUE, 1, NULL, NULL, 'sneasler'),
  -- Overqwil
  (90400, 904, 'overqwil', 'Overqwil', 8, TRUE, 1, NULL, NULL, 'overqwil'),
  -- Enamorus
  (90500, 905, 'enamorus', 'Enamorus', 8, TRUE, 1, NULL, NULL, 'enamorus');
