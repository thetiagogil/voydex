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
-- Generation: 7
-- Table: reference.pokemon_species
-- Scope: National Dex #0722-0809
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, category, female_ratio_eighths, egg_cycles, is_baby, is_legendary, is_mythical)
VALUES
  -- Rowlet
  (722, 722, 'rowlet', 'Rowlet', 7, 722, 'brown', 'Grass Quill', 1, 15, FALSE, FALSE, FALSE),
  -- Dartrix
  (723, 723, 'dartrix', 'Dartrix', 7, 722, 'brown', 'Blade Quill', 1, 15, FALSE, FALSE, FALSE),
  -- Decidueye
  (724, 724, 'decidueye', 'Decidueye', 7, 722, 'brown', 'Arrow Quill', 1, 15, FALSE, FALSE, FALSE),
  -- Litten
  (725, 725, 'litten', 'Litten', 7, 725, 'red', 'Fire Cat', 1, 15, FALSE, FALSE, FALSE),
  -- Torracat
  (726, 726, 'torracat', 'Torracat', 7, 725, 'red', 'Fire Cat', 1, 15, FALSE, FALSE, FALSE),
  -- Incineroar
  (727, 727, 'incineroar', 'Incineroar', 7, 725, 'red', 'Heel', 1, 15, FALSE, FALSE, FALSE),
  -- Popplio
  (728, 728, 'popplio', 'Popplio', 7, 728, 'blue', 'Sea Lion', 1, 15, FALSE, FALSE, FALSE),
  -- Brionne
  (729, 729, 'brionne', 'Brionne', 7, 728, 'blue', 'Pop Star', 1, 15, FALSE, FALSE, FALSE),
  -- Primarina
  (730, 730, 'primarina', 'Primarina', 7, 728, 'blue', 'Soloist', 1, 15, FALSE, FALSE, FALSE),
  -- Pikipek
  (731, 731, 'pikipek', 'Pikipek', 7, 731, 'black', 'Woodpecker', 4, 15, FALSE, FALSE, FALSE),
  -- Trumbeak
  (732, 732, 'trumbeak', 'Trumbeak', 7, 731, 'black', 'Bugle Beak', 4, 15, FALSE, FALSE, FALSE),
  -- Toucannon
  (733, 733, 'toucannon', 'Toucannon', 7, 731, 'black', 'Cannon', 4, 15, FALSE, FALSE, FALSE),
  -- Yungoos
  (734, 734, 'yungoos', 'Yungoos', 7, 734, 'brown', 'Loitering', 4, 15, FALSE, FALSE, FALSE),
  -- Gumshoos
  (735, 735, 'gumshoos', 'Gumshoos', 7, 734, 'brown', 'Stakeout', 4, 15, FALSE, FALSE, FALSE),
  -- Grubbin
  (736, 736, 'grubbin', 'Grubbin', 7, 736, 'gray', 'Larva', 4, 15, FALSE, FALSE, FALSE),
  -- Charjabug
  (737, 737, 'charjabug', 'Charjabug', 7, 736, 'green', 'Battery', 4, 15, FALSE, FALSE, FALSE),
  -- Vikavolt
  (738, 738, 'vikavolt', 'Vikavolt', 7, 736, 'blue', 'Stag Beetle', 4, 15, FALSE, FALSE, FALSE),
  -- Crabrawler
  (739, 739, 'crabrawler', 'Crabrawler', 7, 739, 'purple', 'Boxing', 4, 20, FALSE, FALSE, FALSE),
  -- Crabominable
  (740, 740, 'crabominable', 'Crabominable', 7, 739, 'white', 'Woolly Crab', 4, 20, FALSE, FALSE, FALSE),
  -- Oricorio
  (741, 741, 'oricorio', 'Oricorio', 7, 741, 'red', 'Dancing', 6, 20, FALSE, FALSE, FALSE),
  -- Cutiefly
  (742, 742, 'cutiefly', 'Cutiefly', 7, 742, 'yellow', 'Bee Fly', 4, 20, FALSE, FALSE, FALSE),
  -- Ribombee
  (743, 743, 'ribombee', 'Ribombee', 7, 742, 'yellow', 'Bee Fly', 4, 20, FALSE, FALSE, FALSE),
  -- Rockruff
  (744, 744, 'rockruff', 'Rockruff', 7, 744, 'brown', 'Puppy', 4, 15, FALSE, FALSE, FALSE),
  -- Lycanroc
  (745, 745, 'lycanroc', 'Lycanroc', 7, 744, 'brown', 'Wolf', 4, 15, FALSE, FALSE, FALSE),
  -- Wishiwashi
  (746, 746, 'wishiwashi', 'Wishiwashi', 7, 746, 'blue', 'Small Fry', 4, 15, FALSE, FALSE, FALSE),
  -- Mareanie
  (747, 747, 'mareanie', 'Mareanie', 7, 747, 'blue', 'Brutal Star', 4, 20, FALSE, FALSE, FALSE),
  -- Toxapex
  (748, 748, 'toxapex', 'Toxapex', 7, 747, 'blue', 'Brutal Star', 4, 20, FALSE, FALSE, FALSE),
  -- Mudbray
  (749, 749, 'mudbray', 'Mudbray', 7, 749, 'brown', 'Donkey', 4, 20, FALSE, FALSE, FALSE),
  -- Mudsdale
  (750, 750, 'mudsdale', 'Mudsdale', 7, 749, 'brown', 'Draft Horse', 4, 20, FALSE, FALSE, FALSE),
  -- Dewpider
  (751, 751, 'dewpider', 'Dewpider', 7, 751, 'green', 'Water Bubble', 4, 15, FALSE, FALSE, FALSE),
  -- Araquanid
  (752, 752, 'araquanid', 'Araquanid', 7, 751, 'green', 'Water Bubble', 4, 15, FALSE, FALSE, FALSE),
  -- Fomantis
  (753, 753, 'fomantis', 'Fomantis', 7, 753, 'pink', 'Sickle Grass', 4, 20, FALSE, FALSE, FALSE),
  -- Lurantis
  (754, 754, 'lurantis', 'Lurantis', 7, 753, 'pink', 'Bloom Sickle', 4, 20, FALSE, FALSE, FALSE),
  -- Morelull
  (755, 755, 'morelull', 'Morelull', 7, 755, 'purple', 'Illuminating', 4, 20, FALSE, FALSE, FALSE),
  -- Shiinotic
  (756, 756, 'shiinotic', 'Shiinotic', 7, 755, 'purple', 'Illuminating', 4, 20, FALSE, FALSE, FALSE),
  -- Salandit
  (757, 757, 'salandit', 'Salandit', 7, 757, 'black', 'Toxic Lizard', 1, 20, FALSE, FALSE, FALSE),
  -- Salazzle
  (758, 758, 'salazzle', 'Salazzle', 7, 757, 'black', 'Toxic Lizard', 8, 20, FALSE, FALSE, FALSE),
  -- Stufful
  (759, 759, 'stufful', 'Stufful', 7, 759, 'pink', 'Flailing', 4, 15, FALSE, FALSE, FALSE),
  -- Bewear
  (760, 760, 'bewear', 'Bewear', 7, 759, 'pink', 'Strong Arm', 4, 15, FALSE, FALSE, FALSE),
  -- Bounsweet
  (761, 761, 'bounsweet', 'Bounsweet', 7, 761, 'green', 'Fruit', 8, 20, FALSE, FALSE, FALSE),
  -- Steenee
  (762, 762, 'steenee', 'Steenee', 7, 761, 'green', 'Fruit', 8, 20, FALSE, FALSE, FALSE),
  -- Tsareena
  (763, 763, 'tsareena', 'Tsareena', 7, 761, 'green', 'Fruit', 8, 20, FALSE, FALSE, FALSE),
  -- Comfey
  (764, 764, 'comfey', 'Comfey', 7, 764, 'green', 'Posy Picker', 6, 20, FALSE, FALSE, FALSE),
  -- Oranguru
  (765, 765, 'oranguru', 'Oranguru', 7, 765, 'white', 'Sage', 4, 20, FALSE, FALSE, FALSE),
  -- Passimian
  (766, 766, 'passimian', 'Passimian', 7, 766, 'white', 'Teamwork', 4, 20, FALSE, FALSE, FALSE),
  -- Wimpod
  (767, 767, 'wimpod', 'Wimpod', 7, 767, 'gray', 'Turn Tail', 4, 20, FALSE, FALSE, FALSE),
  -- Golisopod
  (768, 768, 'golisopod', 'Golisopod', 7, 767, 'gray', 'Hard Scale', 4, 20, FALSE, FALSE, FALSE),
  -- Sandygast
  (769, 769, 'sandygast', 'Sandygast', 7, 769, 'brown', 'Sand Heap', 4, 15, FALSE, FALSE, FALSE),
  -- Palossand
  (770, 770, 'palossand', 'Palossand', 7, 769, 'brown', 'Sand Castle', 4, 15, FALSE, FALSE, FALSE),
  -- Pyukumuku
  (771, 771, 'pyukumuku', 'Pyukumuku', 7, 771, 'black', 'Sea Cucumber', 4, 15, FALSE, FALSE, FALSE),
  -- Type: Null
  (772, 772, 'type-null', 'Type: Null', 7, 772, 'gray', 'Synthetic', NULL, 120, FALSE, TRUE, FALSE),
  -- Silvally
  (773, 773, 'silvally', 'Silvally', 7, 772, 'gray', 'Synthetic', NULL, 120, FALSE, TRUE, FALSE),
  -- Minior
  (774, 774, 'minior', 'Minior', 7, 774, 'brown', 'Meteor', NULL, 25, FALSE, FALSE, FALSE),
  -- Komala
  (775, 775, 'komala', 'Komala', 7, 775, 'blue', 'Drowsing', 4, 20, FALSE, FALSE, FALSE),
  -- Turtonator
  (776, 776, 'turtonator', 'Turtonator', 7, 776, 'red', 'Blast Turtle', 4, 20, FALSE, FALSE, FALSE),
  -- Togedemaru
  (777, 777, 'togedemaru', 'Togedemaru', 7, 777, 'gray', 'Roly-Poly', 4, 10, FALSE, FALSE, FALSE),
  -- Mimikyu
  (778, 778, 'mimikyu', 'Mimikyu', 7, 778, 'yellow', 'Disguise', 4, 20, FALSE, FALSE, FALSE),
  -- Bruxish
  (779, 779, 'bruxish', 'Bruxish', 7, 779, 'pink', 'Gnash Teeth', 4, 15, FALSE, FALSE, FALSE),
  -- Drampa
  (780, 780, 'drampa', 'Drampa', 7, 780, 'white', 'Placid', 4, 20, FALSE, FALSE, FALSE),
  -- Dhelmise
  (781, 781, 'dhelmise', 'Dhelmise', 7, 781, 'green', 'Sea Creeper', NULL, 25, FALSE, FALSE, FALSE),
  -- Jangmo-o
  (782, 782, 'jangmo-o', 'Jangmo-o', 7, 782, 'gray', 'Scaly', 4, 40, FALSE, FALSE, FALSE),
  -- Hakamo-o
  (783, 783, 'hakamo-o', 'Hakamo-o', 7, 782, 'gray', 'Scaly', 4, 40, FALSE, FALSE, FALSE),
  -- Kommo-o
  (784, 784, 'kommo-o', 'Kommo-o', 7, 782, 'gray', 'Scaly', 4, 40, FALSE, FALSE, FALSE),
  -- Tapu Koko
  (785, 785, 'tapu-koko', 'Tapu Koko', 7, 785, 'yellow', 'Land Spirit', NULL, 15, FALSE, TRUE, FALSE),
  -- Tapu Lele
  (786, 786, 'tapu-lele', 'Tapu Lele', 7, 786, 'pink', 'Land Spirit', NULL, 15, FALSE, TRUE, FALSE),
  -- Tapu Bulu
  (787, 787, 'tapu-bulu', 'Tapu Bulu', 7, 787, 'red', 'Land Spirit', NULL, 15, FALSE, TRUE, FALSE),
  -- Tapu Fini
  (788, 788, 'tapu-fini', 'Tapu Fini', 7, 788, 'purple', 'Land Spirit', NULL, 15, FALSE, TRUE, FALSE),
  -- Cosmog
  (789, 789, 'cosmog', 'Cosmog', 7, 789, 'blue', 'Nebula', NULL, 120, FALSE, TRUE, FALSE),
  -- Cosmoem
  (790, 790, 'cosmoem', 'Cosmoem', 7, 789, 'blue', 'Protostar', NULL, 120, FALSE, TRUE, FALSE),
  -- Solgaleo
  (791, 791, 'solgaleo', 'Solgaleo', 7, 789, 'white', 'Sunne', NULL, 120, FALSE, TRUE, FALSE),
  -- Lunala
  (792, 792, 'lunala', 'Lunala', 7, 789, 'purple', 'Moone', NULL, 120, FALSE, TRUE, FALSE),
  -- Nihilego
  (793, 793, 'nihilego', 'Nihilego', 7, 793, 'white', 'Parasite', NULL, 120, FALSE, FALSE, FALSE),
  -- Buzzwole
  (794, 794, 'buzzwole', 'Buzzwole', 7, 794, 'red', 'Swollen', NULL, 120, FALSE, FALSE, FALSE),
  -- Pheromosa
  (795, 795, 'pheromosa', 'Pheromosa', 7, 795, 'white', 'Lissome', NULL, 120, FALSE, FALSE, FALSE),
  -- Xurkitree
  (796, 796, 'xurkitree', 'Xurkitree', 7, 796, 'black', 'Glowing', NULL, 120, FALSE, FALSE, FALSE),
  -- Celesteela
  (797, 797, 'celesteela', 'Celesteela', 7, 797, 'green', 'Launch', NULL, 120, FALSE, FALSE, FALSE),
  -- Kartana
  (798, 798, 'kartana', 'Kartana', 7, 798, 'white', 'Drawn Sword', NULL, 120, FALSE, FALSE, FALSE),
  -- Guzzlord
  (799, 799, 'guzzlord', 'Guzzlord', 7, 799, 'black', 'Junkivore', NULL, 120, FALSE, FALSE, FALSE),
  -- Necrozma
  (800, 800, 'necrozma', 'Necrozma', 7, 800, 'black', 'Prism', NULL, 120, FALSE, TRUE, FALSE),
  -- Magearna
  (801, 801, 'magearna', 'Magearna', 7, 801, 'gray', 'Artificial', NULL, 120, FALSE, FALSE, TRUE),
  -- Marshadow
  (802, 802, 'marshadow', 'Marshadow', 7, 802, 'gray', 'Gloomdweller', NULL, 120, FALSE, FALSE, TRUE),
  -- Poipole
  (803, 803, 'poipole', 'Poipole', 7, 803, 'purple', 'Poison Pin', NULL, 120, FALSE, FALSE, FALSE),
  -- Naganadel
  (804, 804, 'naganadel', 'Naganadel', 7, 803, 'purple', 'Poison Pin', NULL, 120, FALSE, FALSE, FALSE),
  -- Stakataka
  (805, 805, 'stakataka', 'Stakataka', 7, 805, 'gray', 'Rampart', NULL, 120, FALSE, FALSE, FALSE),
  -- Blacephalon
  (806, 806, 'blacephalon', 'Blacephalon', 7, 806, 'white', 'Fireworks', NULL, 120, FALSE, FALSE, FALSE),
  -- Zeraora
  (807, 807, 'zeraora', 'Zeraora', 7, 807, 'yellow', 'Thunderclap', NULL, 120, FALSE, FALSE, TRUE),
  -- Meltan
  (808, 808, 'meltan', 'Meltan', 7, 808, 'gray', 'Hex Nut', NULL, 120, FALSE, FALSE, TRUE),
  -- Melmetal
  (809, 809, 'melmetal', 'Melmetal', 7, 808, 'gray', 'Hex Nut', NULL, 120, FALSE, FALSE, TRUE);
