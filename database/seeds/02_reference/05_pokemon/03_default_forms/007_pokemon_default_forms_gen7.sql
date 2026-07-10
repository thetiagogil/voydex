-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0722-0809
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Rowlet
  (72200, 722, 'rowlet', 'Rowlet', 7, TRUE, 1, NULL, NULL, 'rowlet'),
  -- Dartrix
  (72300, 723, 'dartrix', 'Dartrix', 7, TRUE, 1, NULL, NULL, 'dartrix'),
  -- Decidueye
  (72400, 724, 'decidueye', 'Decidueye', 7, TRUE, 1, NULL, NULL, 'decidueye'),
  -- Litten
  (72500, 725, 'litten', 'Litten', 7, TRUE, 1, NULL, NULL, 'litten'),
  -- Torracat
  (72600, 726, 'torracat', 'Torracat', 7, TRUE, 1, NULL, NULL, 'torracat'),
  -- Incineroar
  (72700, 727, 'incineroar', 'Incineroar', 7, TRUE, 1, NULL, NULL, 'incineroar'),
  -- Popplio
  (72800, 728, 'popplio', 'Popplio', 7, TRUE, 1, NULL, NULL, 'popplio'),
  -- Brionne
  (72900, 729, 'brionne', 'Brionne', 7, TRUE, 1, NULL, NULL, 'brionne'),
  -- Primarina
  (73000, 730, 'primarina', 'Primarina', 7, TRUE, 1, NULL, NULL, 'primarina'),
  -- Pikipek
  (73100, 731, 'pikipek', 'Pikipek', 7, TRUE, 1, NULL, NULL, 'pikipek'),
  -- Trumbeak
  (73200, 732, 'trumbeak', 'Trumbeak', 7, TRUE, 1, NULL, NULL, 'trumbeak'),
  -- Toucannon
  (73300, 733, 'toucannon', 'Toucannon', 7, TRUE, 1, NULL, NULL, 'toucannon'),
  -- Yungoos
  (73400, 734, 'yungoos', 'Yungoos', 7, TRUE, 1, NULL, NULL, 'yungoos'),
  -- Gumshoos
  (73500, 735, 'gumshoos', 'Gumshoos', 7, TRUE, 1, NULL, NULL, 'gumshoos'),
  -- Grubbin
  (73600, 736, 'grubbin', 'Grubbin', 7, TRUE, 1, NULL, NULL, 'grubbin'),
  -- Charjabug
  (73700, 737, 'charjabug', 'Charjabug', 7, TRUE, 1, NULL, NULL, 'charjabug'),
  -- Vikavolt
  (73800, 738, 'vikavolt', 'Vikavolt', 7, TRUE, 1, NULL, NULL, 'vikavolt'),
  -- Crabrawler
  (73900, 739, 'crabrawler', 'Crabrawler', 7, TRUE, 1, NULL, NULL, 'crabrawler'),
  -- Crabominable
  (74000, 740, 'crabominable', 'Crabominable', 7, TRUE, 1, NULL, NULL, 'crabominable'),
  -- Oricorio
  (74100, 741, 'oricorio', 'Oricorio', 7, TRUE, 1, NULL, NULL, 'oricorio'),
  -- Cutiefly
  (74200, 742, 'cutiefly', 'Cutiefly', 7, TRUE, 1, NULL, NULL, 'cutiefly'),
  -- Ribombee
  (74300, 743, 'ribombee', 'Ribombee', 7, TRUE, 1, NULL, NULL, 'ribombee'),
  -- Rockruff
  (74400, 744, 'rockruff', 'Rockruff', 7, TRUE, 1, NULL, NULL, 'rockruff'),
  -- Lycanroc
  (74500, 745, 'lycanroc', 'Lycanroc', 7, TRUE, 1, NULL, NULL, 'lycanroc'),
  -- Wishiwashi
  (74600, 746, 'wishiwashi', 'Wishiwashi', 7, TRUE, 1, NULL, NULL, 'wishiwashi'),
  -- Mareanie
  (74700, 747, 'mareanie', 'Mareanie', 7, TRUE, 1, NULL, NULL, 'mareanie'),
  -- Toxapex
  (74800, 748, 'toxapex', 'Toxapex', 7, TRUE, 1, NULL, NULL, 'toxapex'),
  -- Mudbray
  (74900, 749, 'mudbray', 'Mudbray', 7, TRUE, 1, NULL, NULL, 'mudbray'),
  -- Mudsdale
  (75000, 750, 'mudsdale', 'Mudsdale', 7, TRUE, 1, NULL, NULL, 'mudsdale'),
  -- Dewpider
  (75100, 751, 'dewpider', 'Dewpider', 7, TRUE, 1, NULL, NULL, 'dewpider'),
  -- Araquanid
  (75200, 752, 'araquanid', 'Araquanid', 7, TRUE, 1, NULL, NULL, 'araquanid'),
  -- Fomantis
  (75300, 753, 'fomantis', 'Fomantis', 7, TRUE, 1, NULL, NULL, 'fomantis'),
  -- Lurantis
  (75400, 754, 'lurantis', 'Lurantis', 7, TRUE, 1, NULL, NULL, 'lurantis'),
  -- Morelull
  (75500, 755, 'morelull', 'Morelull', 7, TRUE, 1, NULL, NULL, 'morelull'),
  -- Shiinotic
  (75600, 756, 'shiinotic', 'Shiinotic', 7, TRUE, 1, NULL, NULL, 'shiinotic'),
  -- Salandit
  (75700, 757, 'salandit', 'Salandit', 7, TRUE, 1, NULL, NULL, 'salandit'),
  -- Salazzle
  (75800, 758, 'salazzle', 'Salazzle', 7, TRUE, 1, NULL, NULL, 'salazzle'),
  -- Stufful
  (75900, 759, 'stufful', 'Stufful', 7, TRUE, 1, NULL, NULL, 'stufful'),
  -- Bewear
  (76000, 760, 'bewear', 'Bewear', 7, TRUE, 1, NULL, NULL, 'bewear'),
  -- Bounsweet
  (76100, 761, 'bounsweet', 'Bounsweet', 7, TRUE, 1, NULL, NULL, 'bounsweet'),
  -- Steenee
  (76200, 762, 'steenee', 'Steenee', 7, TRUE, 1, NULL, NULL, 'steenee'),
  -- Tsareena
  (76300, 763, 'tsareena', 'Tsareena', 7, TRUE, 1, NULL, NULL, 'tsareena'),
  -- Comfey
  (76400, 764, 'comfey', 'Comfey', 7, TRUE, 1, NULL, NULL, 'comfey'),
  -- Oranguru
  (76500, 765, 'oranguru', 'Oranguru', 7, TRUE, 1, NULL, NULL, 'oranguru'),
  -- Passimian
  (76600, 766, 'passimian', 'Passimian', 7, TRUE, 1, NULL, NULL, 'passimian'),
  -- Wimpod
  (76700, 767, 'wimpod', 'Wimpod', 7, TRUE, 1, NULL, NULL, 'wimpod'),
  -- Golisopod
  (76800, 768, 'golisopod', 'Golisopod', 7, TRUE, 1, NULL, NULL, 'golisopod'),
  -- Sandygast
  (76900, 769, 'sandygast', 'Sandygast', 7, TRUE, 1, NULL, NULL, 'sandygast'),
  -- Palossand
  (77000, 770, 'palossand', 'Palossand', 7, TRUE, 1, NULL, NULL, 'palossand'),
  -- Pyukumuku
  (77100, 771, 'pyukumuku', 'Pyukumuku', 7, TRUE, 1, NULL, NULL, 'pyukumuku'),
  -- Type: Null
  (77200, 772, 'type-null', 'Type: Null', 7, TRUE, 1, NULL, NULL, 'type-null'),
  -- Silvally
  (77300, 773, 'silvally', 'Silvally', 7, TRUE, 1, NULL, NULL, 'silvally'),
  -- Minior
  (77400, 774, 'minior', 'Minior', 7, TRUE, 1, NULL, NULL, 'minior'),
  -- Komala
  (77500, 775, 'komala', 'Komala', 7, TRUE, 1, NULL, NULL, 'komala'),
  -- Turtonator
  (77600, 776, 'turtonator', 'Turtonator', 7, TRUE, 1, NULL, NULL, 'turtonator'),
  -- Togedemaru
  (77700, 777, 'togedemaru', 'Togedemaru', 7, TRUE, 1, NULL, NULL, 'togedemaru'),
  -- Mimikyu
  (77800, 778, 'mimikyu', 'Mimikyu', 7, TRUE, 1, NULL, NULL, 'mimikyu'),
  -- Bruxish
  (77900, 779, 'bruxish', 'Bruxish', 7, TRUE, 1, NULL, NULL, 'bruxish'),
  -- Drampa
  (78000, 780, 'drampa', 'Drampa', 7, TRUE, 1, NULL, NULL, 'drampa'),
  -- Dhelmise
  (78100, 781, 'dhelmise', 'Dhelmise', 7, TRUE, 1, NULL, NULL, 'dhelmise'),
  -- Jangmo-o
  (78200, 782, 'jangmo-o', 'Jangmo-o', 7, TRUE, 1, NULL, NULL, 'jangmo-o'),
  -- Hakamo-o
  (78300, 783, 'hakamo-o', 'Hakamo-o', 7, TRUE, 1, NULL, NULL, 'hakamo-o'),
  -- Kommo-o
  (78400, 784, 'kommo-o', 'Kommo-o', 7, TRUE, 1, NULL, NULL, 'kommo-o'),
  -- Tapu Koko
  (78500, 785, 'tapu-koko', 'Tapu Koko', 7, TRUE, 1, NULL, NULL, 'tapu-koko'),
  -- Tapu Lele
  (78600, 786, 'tapu-lele', 'Tapu Lele', 7, TRUE, 1, NULL, NULL, 'tapu-lele'),
  -- Tapu Bulu
  (78700, 787, 'tapu-bulu', 'Tapu Bulu', 7, TRUE, 1, NULL, NULL, 'tapu-bulu'),
  -- Tapu Fini
  (78800, 788, 'tapu-fini', 'Tapu Fini', 7, TRUE, 1, NULL, NULL, 'tapu-fini'),
  -- Cosmog
  (78900, 789, 'cosmog', 'Cosmog', 7, TRUE, 1, NULL, NULL, 'cosmog'),
  -- Cosmoem
  (79000, 790, 'cosmoem', 'Cosmoem', 7, TRUE, 1, NULL, NULL, 'cosmoem'),
  -- Solgaleo
  (79100, 791, 'solgaleo', 'Solgaleo', 7, TRUE, 1, NULL, NULL, 'solgaleo'),
  -- Lunala
  (79200, 792, 'lunala', 'Lunala', 7, TRUE, 1, NULL, NULL, 'lunala'),
  -- Nihilego
  (79300, 793, 'nihilego', 'Nihilego', 7, TRUE, 1, NULL, NULL, 'nihilego'),
  -- Buzzwole
  (79400, 794, 'buzzwole', 'Buzzwole', 7, TRUE, 1, NULL, NULL, 'buzzwole'),
  -- Pheromosa
  (79500, 795, 'pheromosa', 'Pheromosa', 7, TRUE, 1, NULL, NULL, 'pheromosa'),
  -- Xurkitree
  (79600, 796, 'xurkitree', 'Xurkitree', 7, TRUE, 1, NULL, NULL, 'xurkitree'),
  -- Celesteela
  (79700, 797, 'celesteela', 'Celesteela', 7, TRUE, 1, NULL, NULL, 'celesteela'),
  -- Kartana
  (79800, 798, 'kartana', 'Kartana', 7, TRUE, 1, NULL, NULL, 'kartana'),
  -- Guzzlord
  (79900, 799, 'guzzlord', 'Guzzlord', 7, TRUE, 1, NULL, NULL, 'guzzlord'),
  -- Necrozma
  (80000, 800, 'necrozma', 'Necrozma', 7, TRUE, 1, NULL, NULL, 'necrozma'),
  -- Magearna
  (80100, 801, 'magearna', 'Magearna', 7, TRUE, 1, NULL, NULL, 'magearna'),
  -- Marshadow
  (80200, 802, 'marshadow', 'Marshadow', 7, TRUE, 1, NULL, NULL, 'marshadow'),
  -- Poipole
  (80300, 803, 'poipole', 'Poipole', 7, TRUE, 1, NULL, NULL, 'poipole'),
  -- Naganadel
  (80400, 804, 'naganadel', 'Naganadel', 7, TRUE, 1, NULL, NULL, 'naganadel'),
  -- Stakataka
  (80500, 805, 'stakataka', 'Stakataka', 7, TRUE, 1, NULL, NULL, 'stakataka'),
  -- Blacephalon
  (80600, 806, 'blacephalon', 'Blacephalon', 7, TRUE, 1, NULL, NULL, 'blacephalon'),
  -- Zeraora
  (80700, 807, 'zeraora', 'Zeraora', 7, TRUE, 1, NULL, NULL, 'zeraora'),
  -- Meltan
  (80800, 808, 'meltan', 'Meltan', 7, TRUE, 1, NULL, NULL, 'meltan'),
  -- Melmetal
  (80900, 809, 'melmetal', 'Melmetal', 7, TRUE, 1, NULL, NULL, 'melmetal');
