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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Rowlet
  (72200, 722, 'rowlet', 'Rowlet', 7, TRUE, 1, NULL, NULL),
  -- Dartrix
  (72300, 723, 'dartrix', 'Dartrix', 7, TRUE, 1, NULL, NULL),
  -- Decidueye
  (72400, 724, 'decidueye', 'Decidueye', 7, TRUE, 1, NULL, NULL),
  -- Litten
  (72500, 725, 'litten', 'Litten', 7, TRUE, 1, NULL, NULL),
  -- Torracat
  (72600, 726, 'torracat', 'Torracat', 7, TRUE, 1, NULL, NULL),
  -- Incineroar
  (72700, 727, 'incineroar', 'Incineroar', 7, TRUE, 1, NULL, NULL),
  -- Popplio
  (72800, 728, 'popplio', 'Popplio', 7, TRUE, 1, NULL, NULL),
  -- Brionne
  (72900, 729, 'brionne', 'Brionne', 7, TRUE, 1, NULL, NULL),
  -- Primarina
  (73000, 730, 'primarina', 'Primarina', 7, TRUE, 1, NULL, NULL),
  -- Pikipek
  (73100, 731, 'pikipek', 'Pikipek', 7, TRUE, 1, NULL, NULL),
  -- Trumbeak
  (73200, 732, 'trumbeak', 'Trumbeak', 7, TRUE, 1, NULL, NULL),
  -- Toucannon
  (73300, 733, 'toucannon', 'Toucannon', 7, TRUE, 1, NULL, NULL),
  -- Yungoos
  (73400, 734, 'yungoos', 'Yungoos', 7, TRUE, 1, NULL, NULL),
  -- Gumshoos
  (73500, 735, 'gumshoos', 'Gumshoos', 7, TRUE, 1, NULL, NULL),
  -- Grubbin
  (73600, 736, 'grubbin', 'Grubbin', 7, TRUE, 1, NULL, NULL),
  -- Charjabug
  (73700, 737, 'charjabug', 'Charjabug', 7, TRUE, 1, NULL, NULL),
  -- Vikavolt
  (73800, 738, 'vikavolt', 'Vikavolt', 7, TRUE, 1, NULL, NULL),
  -- Crabrawler
  (73900, 739, 'crabrawler', 'Crabrawler', 7, TRUE, 1, NULL, NULL),
  -- Crabominable
  (74000, 740, 'crabominable', 'Crabominable', 7, TRUE, 1, NULL, NULL),
  -- Oricorio
  (74100, 741, 'oricorio', 'Oricorio', 7, TRUE, 1, NULL, NULL),
  -- Cutiefly
  (74200, 742, 'cutiefly', 'Cutiefly', 7, TRUE, 1, NULL, NULL),
  -- Ribombee
  (74300, 743, 'ribombee', 'Ribombee', 7, TRUE, 1, NULL, NULL),
  -- Rockruff
  (74400, 744, 'rockruff', 'Rockruff', 7, TRUE, 1, NULL, NULL),
  -- Lycanroc
  (74500, 745, 'lycanroc', 'Lycanroc', 7, TRUE, 1, NULL, NULL),
  -- Wishiwashi
  (74600, 746, 'wishiwashi', 'Wishiwashi', 7, TRUE, 1, NULL, NULL),
  -- Mareanie
  (74700, 747, 'mareanie', 'Mareanie', 7, TRUE, 1, NULL, NULL),
  -- Toxapex
  (74800, 748, 'toxapex', 'Toxapex', 7, TRUE, 1, NULL, NULL),
  -- Mudbray
  (74900, 749, 'mudbray', 'Mudbray', 7, TRUE, 1, NULL, NULL),
  -- Mudsdale
  (75000, 750, 'mudsdale', 'Mudsdale', 7, TRUE, 1, NULL, NULL),
  -- Dewpider
  (75100, 751, 'dewpider', 'Dewpider', 7, TRUE, 1, NULL, NULL),
  -- Araquanid
  (75200, 752, 'araquanid', 'Araquanid', 7, TRUE, 1, NULL, NULL),
  -- Fomantis
  (75300, 753, 'fomantis', 'Fomantis', 7, TRUE, 1, NULL, NULL),
  -- Lurantis
  (75400, 754, 'lurantis', 'Lurantis', 7, TRUE, 1, NULL, NULL),
  -- Morelull
  (75500, 755, 'morelull', 'Morelull', 7, TRUE, 1, NULL, NULL),
  -- Shiinotic
  (75600, 756, 'shiinotic', 'Shiinotic', 7, TRUE, 1, NULL, NULL),
  -- Salandit
  (75700, 757, 'salandit', 'Salandit', 7, TRUE, 1, NULL, NULL),
  -- Salazzle
  (75800, 758, 'salazzle', 'Salazzle', 7, TRUE, 1, NULL, NULL),
  -- Stufful
  (75900, 759, 'stufful', 'Stufful', 7, TRUE, 1, NULL, NULL),
  -- Bewear
  (76000, 760, 'bewear', 'Bewear', 7, TRUE, 1, NULL, NULL),
  -- Bounsweet
  (76100, 761, 'bounsweet', 'Bounsweet', 7, TRUE, 1, NULL, NULL),
  -- Steenee
  (76200, 762, 'steenee', 'Steenee', 7, TRUE, 1, NULL, NULL),
  -- Tsareena
  (76300, 763, 'tsareena', 'Tsareena', 7, TRUE, 1, NULL, NULL),
  -- Comfey
  (76400, 764, 'comfey', 'Comfey', 7, TRUE, 1, NULL, NULL),
  -- Oranguru
  (76500, 765, 'oranguru', 'Oranguru', 7, TRUE, 1, NULL, NULL),
  -- Passimian
  (76600, 766, 'passimian', 'Passimian', 7, TRUE, 1, NULL, NULL),
  -- Wimpod
  (76700, 767, 'wimpod', 'Wimpod', 7, TRUE, 1, NULL, NULL),
  -- Golisopod
  (76800, 768, 'golisopod', 'Golisopod', 7, TRUE, 1, NULL, NULL),
  -- Sandygast
  (76900, 769, 'sandygast', 'Sandygast', 7, TRUE, 1, NULL, NULL),
  -- Palossand
  (77000, 770, 'palossand', 'Palossand', 7, TRUE, 1, NULL, NULL),
  -- Pyukumuku
  (77100, 771, 'pyukumuku', 'Pyukumuku', 7, TRUE, 1, NULL, NULL),
  -- Type: Null
  (77200, 772, 'type-null', 'Type: Null', 7, TRUE, 1, NULL, NULL),
  -- Silvally
  (77300, 773, 'silvally', 'Silvally', 7, TRUE, 1, NULL, NULL),
  -- Minior
  (77400, 774, 'minior', 'Minior', 7, TRUE, 1, NULL, NULL),
  -- Komala
  (77500, 775, 'komala', 'Komala', 7, TRUE, 1, NULL, NULL),
  -- Turtonator
  (77600, 776, 'turtonator', 'Turtonator', 7, TRUE, 1, NULL, NULL),
  -- Togedemaru
  (77700, 777, 'togedemaru', 'Togedemaru', 7, TRUE, 1, NULL, NULL),
  -- Mimikyu
  (77800, 778, 'mimikyu', 'Mimikyu', 7, TRUE, 1, NULL, NULL),
  -- Bruxish
  (77900, 779, 'bruxish', 'Bruxish', 7, TRUE, 1, NULL, NULL),
  -- Drampa
  (78000, 780, 'drampa', 'Drampa', 7, TRUE, 1, NULL, NULL),
  -- Dhelmise
  (78100, 781, 'dhelmise', 'Dhelmise', 7, TRUE, 1, NULL, NULL),
  -- Jangmo-o
  (78200, 782, 'jangmo-o', 'Jangmo-o', 7, TRUE, 1, NULL, NULL),
  -- Hakamo-o
  (78300, 783, 'hakamo-o', 'Hakamo-o', 7, TRUE, 1, NULL, NULL),
  -- Kommo-o
  (78400, 784, 'kommo-o', 'Kommo-o', 7, TRUE, 1, NULL, NULL),
  -- Tapu Koko
  (78500, 785, 'tapu-koko', 'Tapu Koko', 7, TRUE, 1, NULL, NULL),
  -- Tapu Lele
  (78600, 786, 'tapu-lele', 'Tapu Lele', 7, TRUE, 1, NULL, NULL),
  -- Tapu Bulu
  (78700, 787, 'tapu-bulu', 'Tapu Bulu', 7, TRUE, 1, NULL, NULL),
  -- Tapu Fini
  (78800, 788, 'tapu-fini', 'Tapu Fini', 7, TRUE, 1, NULL, NULL),
  -- Cosmog
  (78900, 789, 'cosmog', 'Cosmog', 7, TRUE, 1, NULL, NULL),
  -- Cosmoem
  (79000, 790, 'cosmoem', 'Cosmoem', 7, TRUE, 1, NULL, NULL),
  -- Solgaleo
  (79100, 791, 'solgaleo', 'Solgaleo', 7, TRUE, 1, NULL, NULL),
  -- Lunala
  (79200, 792, 'lunala', 'Lunala', 7, TRUE, 1, NULL, NULL),
  -- Nihilego
  (79300, 793, 'nihilego', 'Nihilego', 7, TRUE, 1, NULL, NULL),
  -- Buzzwole
  (79400, 794, 'buzzwole', 'Buzzwole', 7, TRUE, 1, NULL, NULL),
  -- Pheromosa
  (79500, 795, 'pheromosa', 'Pheromosa', 7, TRUE, 1, NULL, NULL),
  -- Xurkitree
  (79600, 796, 'xurkitree', 'Xurkitree', 7, TRUE, 1, NULL, NULL),
  -- Celesteela
  (79700, 797, 'celesteela', 'Celesteela', 7, TRUE, 1, NULL, NULL),
  -- Kartana
  (79800, 798, 'kartana', 'Kartana', 7, TRUE, 1, NULL, NULL),
  -- Guzzlord
  (79900, 799, 'guzzlord', 'Guzzlord', 7, TRUE, 1, NULL, NULL),
  -- Necrozma
  (80000, 800, 'necrozma', 'Necrozma', 7, TRUE, 1, NULL, NULL),
  -- Magearna
  (80100, 801, 'magearna', 'Magearna', 7, TRUE, 1, NULL, NULL),
  -- Marshadow
  (80200, 802, 'marshadow', 'Marshadow', 7, TRUE, 1, NULL, NULL),
  -- Poipole
  (80300, 803, 'poipole', 'Poipole', 7, TRUE, 1, NULL, NULL),
  -- Naganadel
  (80400, 804, 'naganadel', 'Naganadel', 7, TRUE, 1, NULL, NULL),
  -- Stakataka
  (80500, 805, 'stakataka', 'Stakataka', 7, TRUE, 1, NULL, NULL),
  -- Blacephalon
  (80600, 806, 'blacephalon', 'Blacephalon', 7, TRUE, 1, NULL, NULL),
  -- Zeraora
  (80700, 807, 'zeraora', 'Zeraora', 7, TRUE, 1, NULL, NULL),
  -- Meltan
  (80800, 808, 'meltan', 'Meltan', 7, TRUE, 1, NULL, NULL),
  -- Melmetal
  (80900, 809, 'melmetal', 'Melmetal', 7, TRUE, 1, NULL, NULL);
