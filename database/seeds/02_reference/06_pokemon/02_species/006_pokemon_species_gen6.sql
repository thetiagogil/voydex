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
-- Generation: 6
-- Table: reference.pokemon_species
-- Scope: National Dex #0650-0721
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, category, female_ratio_eighths, egg_cycles, is_baby, is_legendary, is_mythical)
VALUES
  -- Chespin
  (650, 650, 'chespin', 'Chespin', 6, 650, 'green', 'Spiny Nut', 1, 20, FALSE, FALSE, FALSE),
  -- Quilladin
  (651, 651, 'quilladin', 'Quilladin', 6, 650, 'green', 'Spiny Armor', 1, 20, FALSE, FALSE, FALSE),
  -- Chesnaught
  (652, 652, 'chesnaught', 'Chesnaught', 6, 650, 'green', 'Spiny Armor', 1, 20, FALSE, FALSE, FALSE),
  -- Fennekin
  (653, 653, 'fennekin', 'Fennekin', 6, 653, 'red', 'Fox', 1, 20, FALSE, FALSE, FALSE),
  -- Braixen
  (654, 654, 'braixen', 'Braixen', 6, 653, 'red', 'Fox', 1, 20, FALSE, FALSE, FALSE),
  -- Delphox
  (655, 655, 'delphox', 'Delphox', 6, 653, 'red', 'Fox', 1, 20, FALSE, FALSE, FALSE),
  -- Froakie
  (656, 656, 'froakie', 'Froakie', 6, 656, 'blue', 'Bubble Frog', 1, 20, FALSE, FALSE, FALSE),
  -- Frogadier
  (657, 657, 'frogadier', 'Frogadier', 6, 656, 'blue', 'Bubble Frog', 1, 20, FALSE, FALSE, FALSE),
  -- Greninja
  (658, 658, 'greninja', 'Greninja', 6, 656, 'blue', 'Ninja', 1, 20, FALSE, FALSE, FALSE),
  -- Bunnelby
  (659, 659, 'bunnelby', 'Bunnelby', 6, 659, 'brown', 'Digging', 4, 15, FALSE, FALSE, FALSE),
  -- Diggersby
  (660, 660, 'diggersby', 'Diggersby', 6, 659, 'brown', 'Digging', 4, 15, FALSE, FALSE, FALSE),
  -- Fletchling
  (661, 661, 'fletchling', 'Fletchling', 6, 661, 'red', 'Tiny Robin', 4, 15, FALSE, FALSE, FALSE),
  -- Fletchinder
  (662, 662, 'fletchinder', 'Fletchinder', 6, 661, 'red', 'Ember', 4, 15, FALSE, FALSE, FALSE),
  -- Talonflame
  (663, 663, 'talonflame', 'Talonflame', 6, 661, 'red', 'Scorching', 4, 15, FALSE, FALSE, FALSE),
  -- Scatterbug
  (664, 664, 'scatterbug', 'Scatterbug', 6, 664, 'black', 'Scatterdust', 4, 15, FALSE, FALSE, FALSE),
  -- Spewpa
  (665, 665, 'spewpa', 'Spewpa', 6, 664, 'black', 'Scatterdust', 4, 15, FALSE, FALSE, FALSE),
  -- Vivillon
  (666, 666, 'vivillon', 'Vivillon', 6, 664, 'white', 'Scale', 4, 15, FALSE, FALSE, FALSE),
  -- Litleo
  (667, 667, 'litleo', 'Litleo', 6, 667, 'brown', 'Lion Cub', 7, 20, FALSE, FALSE, FALSE),
  -- Pyroar
  (668, 668, 'pyroar', 'Pyroar', 6, 667, 'brown', 'Royal', 7, 20, FALSE, FALSE, FALSE),
  -- Flabebe
  (669, 669, 'flabebe', 'Flabebe', 6, 669, 'white', 'Single Bloom', 8, 20, FALSE, FALSE, FALSE),
  -- Floette
  (670, 670, 'floette', 'Floette', 6, 669, 'white', 'Single Bloom', 8, 20, FALSE, FALSE, FALSE),
  -- Florges
  (671, 671, 'florges', 'Florges', 6, 669, 'white', 'Garden', 8, 20, FALSE, FALSE, FALSE),
  -- Skiddo
  (672, 672, 'skiddo', 'Skiddo', 6, 672, 'brown', 'Mount', 4, 20, FALSE, FALSE, FALSE),
  -- Gogoat
  (673, 673, 'gogoat', 'Gogoat', 6, 672, 'brown', 'Mount', 4, 20, FALSE, FALSE, FALSE),
  -- Pancham
  (674, 674, 'pancham', 'Pancham', 6, 674, 'white', 'Playful', 4, 25, FALSE, FALSE, FALSE),
  -- Pangoro
  (675, 675, 'pangoro', 'Pangoro', 6, 674, 'white', 'Daunting', 4, 25, FALSE, FALSE, FALSE),
  -- Furfrou
  (676, 676, 'furfrou', 'Furfrou', 6, 676, 'white', 'Poodle', 4, 20, FALSE, FALSE, FALSE),
  -- Espurr
  (677, 677, 'espurr', 'Espurr', 6, 677, 'gray', 'Restraint', 4, 20, FALSE, FALSE, FALSE),
  -- Meowstic
  (678, 678, 'meowstic', 'Meowstic', 6, 677, 'blue', 'Constraint', 4, 20, FALSE, FALSE, FALSE),
  -- Honedge
  (679, 679, 'honedge', 'Honedge', 6, 679, 'brown', 'Sword', 4, 20, FALSE, FALSE, FALSE),
  -- Doublade
  (680, 680, 'doublade', 'Doublade', 6, 679, 'brown', 'Sword', 4, 20, FALSE, FALSE, FALSE),
  -- Aegislash
  (681, 681, 'aegislash', 'Aegislash', 6, 679, 'brown', 'Royal Sword', 4, 20, FALSE, FALSE, FALSE),
  -- Spritzee
  (682, 682, 'spritzee', 'Spritzee', 6, 682, 'pink', 'Perfume', 4, 20, FALSE, FALSE, FALSE),
  -- Aromatisse
  (683, 683, 'aromatisse', 'Aromatisse', 6, 682, 'pink', 'Fragrance', 4, 20, FALSE, FALSE, FALSE),
  -- Swirlix
  (684, 684, 'swirlix', 'Swirlix', 6, 684, 'white', 'Cotton Candy', 4, 20, FALSE, FALSE, FALSE),
  -- Slurpuff
  (685, 685, 'slurpuff', 'Slurpuff', 6, 684, 'white', 'Meringue', 4, 20, FALSE, FALSE, FALSE),
  -- Inkay
  (686, 686, 'inkay', 'Inkay', 6, 686, 'blue', 'Revolving', 4, 20, FALSE, FALSE, FALSE),
  -- Malamar
  (687, 687, 'malamar', 'Malamar', 6, 686, 'blue', 'Overturning', 4, 20, FALSE, FALSE, FALSE),
  -- Binacle
  (688, 688, 'binacle', 'Binacle', 6, 688, 'brown', 'Two-Handed', 4, 20, FALSE, FALSE, FALSE),
  -- Barbaracle
  (689, 689, 'barbaracle', 'Barbaracle', 6, 688, 'brown', 'Collective', 4, 20, FALSE, FALSE, FALSE),
  -- Skrelp
  (690, 690, 'skrelp', 'Skrelp', 6, 690, 'brown', 'Mock Kelp', 4, 20, FALSE, FALSE, FALSE),
  -- Dragalge
  (691, 691, 'dragalge', 'Dragalge', 6, 690, 'brown', 'Mock Kelp', 4, 20, FALSE, FALSE, FALSE),
  -- Clauncher
  (692, 692, 'clauncher', 'Clauncher', 6, 692, 'blue', 'Water Gun', 4, 15, FALSE, FALSE, FALSE),
  -- Clawitzer
  (693, 693, 'clawitzer', 'Clawitzer', 6, 692, 'blue', 'Howitzer', 4, 15, FALSE, FALSE, FALSE),
  -- Helioptile
  (694, 694, 'helioptile', 'Helioptile', 6, 694, 'yellow', 'Generator', 4, 20, FALSE, FALSE, FALSE),
  -- Heliolisk
  (695, 695, 'heliolisk', 'Heliolisk', 6, 694, 'yellow', 'Generator', 4, 20, FALSE, FALSE, FALSE),
  -- Tyrunt
  (696, 696, 'tyrunt', 'Tyrunt', 6, 696, 'brown', 'Royal Heir', 1, 30, FALSE, FALSE, FALSE),
  -- Tyrantrum
  (697, 697, 'tyrantrum', 'Tyrantrum', 6, 696, 'red', 'Despot', 1, 30, FALSE, FALSE, FALSE),
  -- Amaura
  (698, 698, 'amaura', 'Amaura', 6, 698, 'blue', 'Tundra', 1, 30, FALSE, FALSE, FALSE),
  -- Aurorus
  (699, 699, 'aurorus', 'Aurorus', 6, 698, 'blue', 'Tundra', 1, 30, FALSE, FALSE, FALSE),
  -- Sylveon
  (700, 700, 'sylveon', 'Sylveon', 6, 133, 'pink', 'Intertwining', 1, 35, FALSE, FALSE, FALSE),
  -- Hawlucha
  (701, 701, 'hawlucha', 'Hawlucha', 6, 701, 'green', 'Wrestling', 4, 20, FALSE, FALSE, FALSE),
  -- Dedenne
  (702, 702, 'dedenne', 'Dedenne', 6, 702, 'yellow', 'Antenna', 4, 20, FALSE, FALSE, FALSE),
  -- Carbink
  (703, 703, 'carbink', 'Carbink', 6, 703, 'gray', 'Jewel', NULL, 25, FALSE, FALSE, FALSE),
  -- Goomy
  (704, 704, 'goomy', 'Goomy', 6, 704, 'purple', 'Soft Tissue', 4, 40, FALSE, FALSE, FALSE),
  -- Sliggoo
  (705, 705, 'sliggoo', 'Sliggoo', 6, 704, 'purple', 'Soft Tissue', 4, 40, FALSE, FALSE, FALSE),
  -- Goodra
  (706, 706, 'goodra', 'Goodra', 6, 704, 'purple', 'Dragon', 4, 40, FALSE, FALSE, FALSE),
  -- Klefki
  (707, 707, 'klefki', 'Klefki', 6, 707, 'gray', 'Key Ring', 4, 20, FALSE, FALSE, FALSE),
  -- Phantump
  (708, 708, 'phantump', 'Phantump', 6, 708, 'brown', 'Stump', 4, 20, FALSE, FALSE, FALSE),
  -- Trevenant
  (709, 709, 'trevenant', 'Trevenant', 6, 708, 'brown', 'Elder Tree', 4, 20, FALSE, FALSE, FALSE),
  -- Pumpkaboo
  (710, 710, 'pumpkaboo', 'Pumpkaboo', 6, 710, 'brown', 'Pumpkin', 4, 20, FALSE, FALSE, FALSE),
  -- Gourgeist
  (711, 711, 'gourgeist', 'Gourgeist', 6, 710, 'brown', 'Pumpkin', 4, 20, FALSE, FALSE, FALSE),
  -- Bergmite
  (712, 712, 'bergmite', 'Bergmite', 6, 712, 'blue', 'Ice Chunk', 4, 20, FALSE, FALSE, FALSE),
  -- Avalugg
  (713, 713, 'avalugg', 'Avalugg', 6, 712, 'blue', 'Iceberg', 4, 20, FALSE, FALSE, FALSE),
  -- Noibat
  (714, 714, 'noibat', 'Noibat', 6, 714, 'purple', 'Sound Wave', 4, 20, FALSE, FALSE, FALSE),
  -- Noivern
  (715, 715, 'noivern', 'Noivern', 6, 714, 'purple', 'Sound Wave', 4, 20, FALSE, FALSE, FALSE),
  -- Xerneas
  (716, 716, 'xerneas', 'Xerneas', 6, 716, 'blue', 'Life', NULL, 120, FALSE, TRUE, FALSE),
  -- Yveltal
  (717, 717, 'yveltal', 'Yveltal', 6, 717, 'red', 'Destruction', NULL, 120, FALSE, TRUE, FALSE),
  -- Zygarde
  (718, 718, 'zygarde', 'Zygarde', 6, 718, 'green', 'Order', NULL, 120, FALSE, TRUE, FALSE),
  -- Diancie
  (719, 719, 'diancie', 'Diancie', 6, 719, 'pink', 'Jewel', NULL, 25, FALSE, FALSE, TRUE),
  -- Hoopa
  (720, 720, 'hoopa', 'Hoopa', 6, 720, 'purple', 'Mischief', NULL, 120, FALSE, FALSE, TRUE),
  -- Volcanion
  (721, 721, 'volcanion', 'Volcanion', 6, 721, 'brown', 'Steam', NULL, 120, FALSE, FALSE, TRUE);
