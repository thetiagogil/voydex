-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_species
-- Scope: National Dex #0650-0721
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Chespin
  (650, 650, 'chespin', 'Chespin', 6, 650, 'green', FALSE, FALSE, FALSE),
  -- Quilladin
  (651, 651, 'quilladin', 'Quilladin', 6, 650, 'green', FALSE, FALSE, FALSE),
  -- Chesnaught
  (652, 652, 'chesnaught', 'Chesnaught', 6, 650, 'green', FALSE, FALSE, FALSE),
  -- Fennekin
  (653, 653, 'fennekin', 'Fennekin', 6, 653, 'red', FALSE, FALSE, FALSE),
  -- Braixen
  (654, 654, 'braixen', 'Braixen', 6, 653, 'red', FALSE, FALSE, FALSE),
  -- Delphox
  (655, 655, 'delphox', 'Delphox', 6, 653, 'red', FALSE, FALSE, FALSE),
  -- Froakie
  (656, 656, 'froakie', 'Froakie', 6, 656, 'blue', FALSE, FALSE, FALSE),
  -- Frogadier
  (657, 657, 'frogadier', 'Frogadier', 6, 656, 'blue', FALSE, FALSE, FALSE),
  -- Greninja
  (658, 658, 'greninja', 'Greninja', 6, 656, 'blue', FALSE, FALSE, FALSE),
  -- Bunnelby
  (659, 659, 'bunnelby', 'Bunnelby', 6, 659, 'brown', FALSE, FALSE, FALSE),
  -- Diggersby
  (660, 660, 'diggersby', 'Diggersby', 6, 659, 'brown', FALSE, FALSE, FALSE),
  -- Fletchling
  (661, 661, 'fletchling', 'Fletchling', 6, 661, 'red', FALSE, FALSE, FALSE),
  -- Fletchinder
  (662, 662, 'fletchinder', 'Fletchinder', 6, 661, 'red', FALSE, FALSE, FALSE),
  -- Talonflame
  (663, 663, 'talonflame', 'Talonflame', 6, 661, 'red', FALSE, FALSE, FALSE),
  -- Scatterbug
  (664, 664, 'scatterbug', 'Scatterbug', 6, 664, 'black', FALSE, FALSE, FALSE),
  -- Spewpa
  (665, 665, 'spewpa', 'Spewpa', 6, 664, 'black', FALSE, FALSE, FALSE),
  -- Vivillon
  (666, 666, 'vivillon', 'Vivillon', 6, 664, 'white', FALSE, FALSE, FALSE),
  -- Litleo
  (667, 667, 'litleo', 'Litleo', 6, 667, 'brown', FALSE, FALSE, FALSE),
  -- Pyroar
  (668, 668, 'pyroar', 'Pyroar', 6, 667, 'brown', FALSE, FALSE, FALSE),
  -- Flabebe
  (669, 669, 'flabebe', 'Flabebe', 6, 669, 'white', FALSE, FALSE, FALSE),
  -- Floette
  (670, 670, 'floette', 'Floette', 6, 669, 'white', FALSE, FALSE, FALSE),
  -- Florges
  (671, 671, 'florges', 'Florges', 6, 669, 'white', FALSE, FALSE, FALSE),
  -- Skiddo
  (672, 672, 'skiddo', 'Skiddo', 6, 672, 'brown', FALSE, FALSE, FALSE),
  -- Gogoat
  (673, 673, 'gogoat', 'Gogoat', 6, 672, 'brown', FALSE, FALSE, FALSE),
  -- Pancham
  (674, 674, 'pancham', 'Pancham', 6, 674, 'white', FALSE, FALSE, FALSE),
  -- Pangoro
  (675, 675, 'pangoro', 'Pangoro', 6, 674, 'white', FALSE, FALSE, FALSE),
  -- Furfrou
  (676, 676, 'furfrou', 'Furfrou', 6, 676, 'white', FALSE, FALSE, FALSE),
  -- Espurr
  (677, 677, 'espurr', 'Espurr', 6, 677, 'gray', FALSE, FALSE, FALSE),
  -- Meowstic
  (678, 678, 'meowstic', 'Meowstic', 6, 677, 'blue', FALSE, FALSE, FALSE),
  -- Honedge
  (679, 679, 'honedge', 'Honedge', 6, 679, 'brown', FALSE, FALSE, FALSE),
  -- Doublade
  (680, 680, 'doublade', 'Doublade', 6, 679, 'brown', FALSE, FALSE, FALSE),
  -- Aegislash
  (681, 681, 'aegislash', 'Aegislash', 6, 679, 'brown', FALSE, FALSE, FALSE),
  -- Spritzee
  (682, 682, 'spritzee', 'Spritzee', 6, 682, 'pink', FALSE, FALSE, FALSE),
  -- Aromatisse
  (683, 683, 'aromatisse', 'Aromatisse', 6, 682, 'pink', FALSE, FALSE, FALSE),
  -- Swirlix
  (684, 684, 'swirlix', 'Swirlix', 6, 684, 'white', FALSE, FALSE, FALSE),
  -- Slurpuff
  (685, 685, 'slurpuff', 'Slurpuff', 6, 684, 'white', FALSE, FALSE, FALSE),
  -- Inkay
  (686, 686, 'inkay', 'Inkay', 6, 686, 'blue', FALSE, FALSE, FALSE),
  -- Malamar
  (687, 687, 'malamar', 'Malamar', 6, 686, 'blue', FALSE, FALSE, FALSE),
  -- Binacle
  (688, 688, 'binacle', 'Binacle', 6, 688, 'brown', FALSE, FALSE, FALSE),
  -- Barbaracle
  (689, 689, 'barbaracle', 'Barbaracle', 6, 688, 'brown', FALSE, FALSE, FALSE),
  -- Skrelp
  (690, 690, 'skrelp', 'Skrelp', 6, 690, 'brown', FALSE, FALSE, FALSE),
  -- Dragalge
  (691, 691, 'dragalge', 'Dragalge', 6, 690, 'brown', FALSE, FALSE, FALSE),
  -- Clauncher
  (692, 692, 'clauncher', 'Clauncher', 6, 692, 'blue', FALSE, FALSE, FALSE),
  -- Clawitzer
  (693, 693, 'clawitzer', 'Clawitzer', 6, 692, 'blue', FALSE, FALSE, FALSE),
  -- Helioptile
  (694, 694, 'helioptile', 'Helioptile', 6, 694, 'yellow', FALSE, FALSE, FALSE),
  -- Heliolisk
  (695, 695, 'heliolisk', 'Heliolisk', 6, 694, 'yellow', FALSE, FALSE, FALSE),
  -- Tyrunt
  (696, 696, 'tyrunt', 'Tyrunt', 6, 696, 'brown', FALSE, FALSE, FALSE),
  -- Tyrantrum
  (697, 697, 'tyrantrum', 'Tyrantrum', 6, 696, 'red', FALSE, FALSE, FALSE),
  -- Amaura
  (698, 698, 'amaura', 'Amaura', 6, 698, 'blue', FALSE, FALSE, FALSE),
  -- Aurorus
  (699, 699, 'aurorus', 'Aurorus', 6, 698, 'blue', FALSE, FALSE, FALSE),
  -- Sylveon
  (700, 700, 'sylveon', 'Sylveon', 6, 133, 'pink', FALSE, FALSE, FALSE),
  -- Hawlucha
  (701, 701, 'hawlucha', 'Hawlucha', 6, 701, 'green', FALSE, FALSE, FALSE),
  -- Dedenne
  (702, 702, 'dedenne', 'Dedenne', 6, 702, 'yellow', FALSE, FALSE, FALSE),
  -- Carbink
  (703, 703, 'carbink', 'Carbink', 6, 703, 'gray', FALSE, FALSE, FALSE),
  -- Goomy
  (704, 704, 'goomy', 'Goomy', 6, 704, 'purple', FALSE, FALSE, FALSE),
  -- Sliggoo
  (705, 705, 'sliggoo', 'Sliggoo', 6, 704, 'purple', FALSE, FALSE, FALSE),
  -- Goodra
  (706, 706, 'goodra', 'Goodra', 6, 704, 'purple', FALSE, FALSE, FALSE),
  -- Klefki
  (707, 707, 'klefki', 'Klefki', 6, 707, 'gray', FALSE, FALSE, FALSE),
  -- Phantump
  (708, 708, 'phantump', 'Phantump', 6, 708, 'brown', FALSE, FALSE, FALSE),
  -- Trevenant
  (709, 709, 'trevenant', 'Trevenant', 6, 708, 'brown', FALSE, FALSE, FALSE),
  -- Pumpkaboo
  (710, 710, 'pumpkaboo', 'Pumpkaboo', 6, 710, 'brown', FALSE, FALSE, FALSE),
  -- Gourgeist
  (711, 711, 'gourgeist', 'Gourgeist', 6, 710, 'brown', FALSE, FALSE, FALSE),
  -- Bergmite
  (712, 712, 'bergmite', 'Bergmite', 6, 712, 'blue', FALSE, FALSE, FALSE),
  -- Avalugg
  (713, 713, 'avalugg', 'Avalugg', 6, 712, 'blue', FALSE, FALSE, FALSE),
  -- Noibat
  (714, 714, 'noibat', 'Noibat', 6, 714, 'purple', FALSE, FALSE, FALSE),
  -- Noivern
  (715, 715, 'noivern', 'Noivern', 6, 714, 'purple', FALSE, FALSE, FALSE),
  -- Xerneas
  (716, 716, 'xerneas', 'Xerneas', 6, 716, 'blue', FALSE, TRUE, FALSE),
  -- Yveltal
  (717, 717, 'yveltal', 'Yveltal', 6, 717, 'red', FALSE, TRUE, FALSE),
  -- Zygarde
  (718, 718, 'zygarde', 'Zygarde', 6, 718, 'green', FALSE, TRUE, FALSE),
  -- Diancie
  (719, 719, 'diancie', 'Diancie', 6, 719, 'pink', FALSE, FALSE, TRUE),
  -- Hoopa
  (720, 720, 'hoopa', 'Hoopa', 6, 720, 'purple', FALSE, FALSE, TRUE),
  -- Volcanion
  (721, 721, 'volcanion', 'Volcanion', 6, 721, 'brown', FALSE, FALSE, TRUE);
