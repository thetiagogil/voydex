-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.pokemon_species
-- Scope: National Dex #0722-0809
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Rowlet
  (722, 722, 'rowlet', 'Rowlet', 7, 722, 'brown', FALSE, FALSE, FALSE),
  -- Dartrix
  (723, 723, 'dartrix', 'Dartrix', 7, 722, 'brown', FALSE, FALSE, FALSE),
  -- Decidueye
  (724, 724, 'decidueye', 'Decidueye', 7, 722, 'brown', FALSE, FALSE, FALSE),
  -- Litten
  (725, 725, 'litten', 'Litten', 7, 725, 'red', FALSE, FALSE, FALSE),
  -- Torracat
  (726, 726, 'torracat', 'Torracat', 7, 725, 'red', FALSE, FALSE, FALSE),
  -- Incineroar
  (727, 727, 'incineroar', 'Incineroar', 7, 725, 'red', FALSE, FALSE, FALSE),
  -- Popplio
  (728, 728, 'popplio', 'Popplio', 7, 728, 'blue', FALSE, FALSE, FALSE),
  -- Brionne
  (729, 729, 'brionne', 'Brionne', 7, 728, 'blue', FALSE, FALSE, FALSE),
  -- Primarina
  (730, 730, 'primarina', 'Primarina', 7, 728, 'blue', FALSE, FALSE, FALSE),
  -- Pikipek
  (731, 731, 'pikipek', 'Pikipek', 7, 731, 'black', FALSE, FALSE, FALSE),
  -- Trumbeak
  (732, 732, 'trumbeak', 'Trumbeak', 7, 731, 'black', FALSE, FALSE, FALSE),
  -- Toucannon
  (733, 733, 'toucannon', 'Toucannon', 7, 731, 'black', FALSE, FALSE, FALSE),
  -- Yungoos
  (734, 734, 'yungoos', 'Yungoos', 7, 734, 'brown', FALSE, FALSE, FALSE),
  -- Gumshoos
  (735, 735, 'gumshoos', 'Gumshoos', 7, 734, 'brown', FALSE, FALSE, FALSE),
  -- Grubbin
  (736, 736, 'grubbin', 'Grubbin', 7, 736, 'gray', FALSE, FALSE, FALSE),
  -- Charjabug
  (737, 737, 'charjabug', 'Charjabug', 7, 736, 'green', FALSE, FALSE, FALSE),
  -- Vikavolt
  (738, 738, 'vikavolt', 'Vikavolt', 7, 736, 'blue', FALSE, FALSE, FALSE),
  -- Crabrawler
  (739, 739, 'crabrawler', 'Crabrawler', 7, 739, 'purple', FALSE, FALSE, FALSE),
  -- Crabominable
  (740, 740, 'crabominable', 'Crabominable', 7, 739, 'white', FALSE, FALSE, FALSE),
  -- Oricorio
  (741, 741, 'oricorio', 'Oricorio', 7, 741, 'red', FALSE, FALSE, FALSE),
  -- Cutiefly
  (742, 742, 'cutiefly', 'Cutiefly', 7, 742, 'yellow', FALSE, FALSE, FALSE),
  -- Ribombee
  (743, 743, 'ribombee', 'Ribombee', 7, 742, 'yellow', FALSE, FALSE, FALSE),
  -- Rockruff
  (744, 744, 'rockruff', 'Rockruff', 7, 744, 'brown', FALSE, FALSE, FALSE),
  -- Lycanroc
  (745, 745, 'lycanroc', 'Lycanroc', 7, 744, 'brown', FALSE, FALSE, FALSE),
  -- Wishiwashi
  (746, 746, 'wishiwashi', 'Wishiwashi', 7, 746, 'blue', FALSE, FALSE, FALSE),
  -- Mareanie
  (747, 747, 'mareanie', 'Mareanie', 7, 747, 'blue', FALSE, FALSE, FALSE),
  -- Toxapex
  (748, 748, 'toxapex', 'Toxapex', 7, 747, 'blue', FALSE, FALSE, FALSE),
  -- Mudbray
  (749, 749, 'mudbray', 'Mudbray', 7, 749, 'brown', FALSE, FALSE, FALSE),
  -- Mudsdale
  (750, 750, 'mudsdale', 'Mudsdale', 7, 749, 'brown', FALSE, FALSE, FALSE),
  -- Dewpider
  (751, 751, 'dewpider', 'Dewpider', 7, 751, 'green', FALSE, FALSE, FALSE),
  -- Araquanid
  (752, 752, 'araquanid', 'Araquanid', 7, 751, 'green', FALSE, FALSE, FALSE),
  -- Fomantis
  (753, 753, 'fomantis', 'Fomantis', 7, 753, 'pink', FALSE, FALSE, FALSE),
  -- Lurantis
  (754, 754, 'lurantis', 'Lurantis', 7, 753, 'pink', FALSE, FALSE, FALSE),
  -- Morelull
  (755, 755, 'morelull', 'Morelull', 7, 755, 'purple', FALSE, FALSE, FALSE),
  -- Shiinotic
  (756, 756, 'shiinotic', 'Shiinotic', 7, 755, 'purple', FALSE, FALSE, FALSE),
  -- Salandit
  (757, 757, 'salandit', 'Salandit', 7, 757, 'black', FALSE, FALSE, FALSE),
  -- Salazzle
  (758, 758, 'salazzle', 'Salazzle', 7, 757, 'black', FALSE, FALSE, FALSE),
  -- Stufful
  (759, 759, 'stufful', 'Stufful', 7, 759, 'pink', FALSE, FALSE, FALSE),
  -- Bewear
  (760, 760, 'bewear', 'Bewear', 7, 759, 'pink', FALSE, FALSE, FALSE),
  -- Bounsweet
  (761, 761, 'bounsweet', 'Bounsweet', 7, 761, 'green', FALSE, FALSE, FALSE),
  -- Steenee
  (762, 762, 'steenee', 'Steenee', 7, 761, 'green', FALSE, FALSE, FALSE),
  -- Tsareena
  (763, 763, 'tsareena', 'Tsareena', 7, 761, 'green', FALSE, FALSE, FALSE),
  -- Comfey
  (764, 764, 'comfey', 'Comfey', 7, 764, 'green', FALSE, FALSE, FALSE),
  -- Oranguru
  (765, 765, 'oranguru', 'Oranguru', 7, 765, 'white', FALSE, FALSE, FALSE),
  -- Passimian
  (766, 766, 'passimian', 'Passimian', 7, 766, 'white', FALSE, FALSE, FALSE),
  -- Wimpod
  (767, 767, 'wimpod', 'Wimpod', 7, 767, 'gray', FALSE, FALSE, FALSE),
  -- Golisopod
  (768, 768, 'golisopod', 'Golisopod', 7, 767, 'gray', FALSE, FALSE, FALSE),
  -- Sandygast
  (769, 769, 'sandygast', 'Sandygast', 7, 769, 'brown', FALSE, FALSE, FALSE),
  -- Palossand
  (770, 770, 'palossand', 'Palossand', 7, 769, 'brown', FALSE, FALSE, FALSE),
  -- Pyukumuku
  (771, 771, 'pyukumuku', 'Pyukumuku', 7, 771, 'black', FALSE, FALSE, FALSE),
  -- Type: Null
  (772, 772, 'type-null', 'Type: Null', 7, 772, 'gray', FALSE, TRUE, FALSE),
  -- Silvally
  (773, 773, 'silvally', 'Silvally', 7, 772, 'gray', FALSE, TRUE, FALSE),
  -- Minior
  (774, 774, 'minior', 'Minior', 7, 774, 'brown', FALSE, FALSE, FALSE),
  -- Komala
  (775, 775, 'komala', 'Komala', 7, 775, 'blue', FALSE, FALSE, FALSE),
  -- Turtonator
  (776, 776, 'turtonator', 'Turtonator', 7, 776, 'red', FALSE, FALSE, FALSE),
  -- Togedemaru
  (777, 777, 'togedemaru', 'Togedemaru', 7, 777, 'gray', FALSE, FALSE, FALSE),
  -- Mimikyu
  (778, 778, 'mimikyu', 'Mimikyu', 7, 778, 'yellow', FALSE, FALSE, FALSE),
  -- Bruxish
  (779, 779, 'bruxish', 'Bruxish', 7, 779, 'pink', FALSE, FALSE, FALSE),
  -- Drampa
  (780, 780, 'drampa', 'Drampa', 7, 780, 'white', FALSE, FALSE, FALSE),
  -- Dhelmise
  (781, 781, 'dhelmise', 'Dhelmise', 7, 781, 'green', FALSE, FALSE, FALSE),
  -- Jangmo-o
  (782, 782, 'jangmo-o', 'Jangmo-o', 7, 782, 'gray', FALSE, FALSE, FALSE),
  -- Hakamo-o
  (783, 783, 'hakamo-o', 'Hakamo-o', 7, 782, 'gray', FALSE, FALSE, FALSE),
  -- Kommo-o
  (784, 784, 'kommo-o', 'Kommo-o', 7, 782, 'gray', FALSE, FALSE, FALSE),
  -- Tapu Koko
  (785, 785, 'tapu-koko', 'Tapu Koko', 7, 785, 'yellow', FALSE, TRUE, FALSE),
  -- Tapu Lele
  (786, 786, 'tapu-lele', 'Tapu Lele', 7, 786, 'pink', FALSE, TRUE, FALSE),
  -- Tapu Bulu
  (787, 787, 'tapu-bulu', 'Tapu Bulu', 7, 787, 'red', FALSE, TRUE, FALSE),
  -- Tapu Fini
  (788, 788, 'tapu-fini', 'Tapu Fini', 7, 788, 'purple', FALSE, TRUE, FALSE),
  -- Cosmog
  (789, 789, 'cosmog', 'Cosmog', 7, 789, 'blue', FALSE, TRUE, FALSE),
  -- Cosmoem
  (790, 790, 'cosmoem', 'Cosmoem', 7, 789, 'blue', FALSE, TRUE, FALSE),
  -- Solgaleo
  (791, 791, 'solgaleo', 'Solgaleo', 7, 789, 'white', FALSE, TRUE, FALSE),
  -- Lunala
  (792, 792, 'lunala', 'Lunala', 7, 789, 'purple', FALSE, TRUE, FALSE),
  -- Nihilego
  (793, 793, 'nihilego', 'Nihilego', 7, 793, 'white', FALSE, FALSE, FALSE),
  -- Buzzwole
  (794, 794, 'buzzwole', 'Buzzwole', 7, 794, 'red', FALSE, FALSE, FALSE),
  -- Pheromosa
  (795, 795, 'pheromosa', 'Pheromosa', 7, 795, 'white', FALSE, FALSE, FALSE),
  -- Xurkitree
  (796, 796, 'xurkitree', 'Xurkitree', 7, 796, 'black', FALSE, FALSE, FALSE),
  -- Celesteela
  (797, 797, 'celesteela', 'Celesteela', 7, 797, 'green', FALSE, FALSE, FALSE),
  -- Kartana
  (798, 798, 'kartana', 'Kartana', 7, 798, 'white', FALSE, FALSE, FALSE),
  -- Guzzlord
  (799, 799, 'guzzlord', 'Guzzlord', 7, 799, 'black', FALSE, FALSE, FALSE),
  -- Necrozma
  (800, 800, 'necrozma', 'Necrozma', 7, 800, 'black', FALSE, TRUE, FALSE),
  -- Magearna
  (801, 801, 'magearna', 'Magearna', 7, 801, 'gray', FALSE, FALSE, TRUE),
  -- Marshadow
  (802, 802, 'marshadow', 'Marshadow', 7, 802, 'gray', FALSE, FALSE, TRUE),
  -- Poipole
  (803, 803, 'poipole', 'Poipole', 7, 803, 'purple', FALSE, FALSE, FALSE),
  -- Naganadel
  (804, 804, 'naganadel', 'Naganadel', 7, 803, 'purple', FALSE, FALSE, FALSE),
  -- Stakataka
  (805, 805, 'stakataka', 'Stakataka', 7, 805, 'gray', FALSE, FALSE, FALSE),
  -- Blacephalon
  (806, 806, 'blacephalon', 'Blacephalon', 7, 806, 'white', FALSE, FALSE, FALSE),
  -- Zeraora
  (807, 807, 'zeraora', 'Zeraora', 7, 807, 'yellow', FALSE, FALSE, TRUE),
  -- Meltan
  (808, 808, 'meltan', 'Meltan', 7, 808, 'gray', FALSE, FALSE, TRUE),
  -- Melmetal
  (809, 809, 'melmetal', 'Melmetal', 7, 808, 'gray', FALSE, FALSE, TRUE);
