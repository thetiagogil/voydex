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
-- Generation: 6
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0650-0721
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, category, gender)
VALUES
  -- Chespin
  (65000, 650, 'chespin', 'Chespin', 6, TRUE, 1, 4, 90, NULL, NULL),
  -- Quilladin
  (65100, 651, 'quilladin', 'Quilladin', 6, TRUE, 1, 7, 290, NULL, NULL),
  -- Chesnaught
  (65200, 652, 'chesnaught', 'Chesnaught', 6, TRUE, 1, 16, 900, NULL, NULL),
  -- Fennekin
  (65300, 653, 'fennekin', 'Fennekin', 6, TRUE, 1, 4, 94, NULL, NULL),
  -- Braixen
  (65400, 654, 'braixen', 'Braixen', 6, TRUE, 1, 10, 145, NULL, NULL),
  -- Delphox
  (65500, 655, 'delphox', 'Delphox', 6, TRUE, 1, 15, 390, NULL, NULL),
  -- Froakie
  (65600, 656, 'froakie', 'Froakie', 6, TRUE, 1, 3, 70, NULL, NULL),
  -- Frogadier
  (65700, 657, 'frogadier', 'Frogadier', 6, TRUE, 1, 6, 109, NULL, NULL),
  -- Greninja
  (65800, 658, 'greninja', 'Greninja', 6, TRUE, 1, 15, 400, NULL, NULL),
  -- Bunnelby
  (65900, 659, 'bunnelby', 'Bunnelby', 6, TRUE, 1, 4, 50, NULL, NULL),
  -- Diggersby
  (66000, 660, 'diggersby', 'Diggersby', 6, TRUE, 1, 10, 424, NULL, NULL),
  -- Fletchling
  (66100, 661, 'fletchling', 'Fletchling', 6, TRUE, 1, 3, 17, NULL, NULL),
  -- Fletchinder
  (66200, 662, 'fletchinder', 'Fletchinder', 6, TRUE, 1, 7, 160, NULL, NULL),
  -- Talonflame
  (66300, 663, 'talonflame', 'Talonflame', 6, TRUE, 1, 12, 245, NULL, NULL),
  -- Scatterbug
  (66400, 664, 'scatterbug', 'Scatterbug', 6, TRUE, 1, 3, 25, NULL, NULL),
  -- Spewpa
  (66500, 665, 'spewpa', 'Spewpa', 6, TRUE, 1, 3, 84, NULL, NULL),
  -- Vivillon
  (66600, 666, 'vivillon', 'Vivillon', 6, TRUE, 1, 12, 170, NULL, NULL),
  -- Litleo
  (66700, 667, 'litleo', 'Litleo', 6, TRUE, 1, 6, 135, NULL, NULL),
  -- Pyroar
  (66800, 668, 'pyroar', 'Pyroar', 6, TRUE, 1, 15, 815, NULL, NULL),
  -- Flabebe
  (66900, 669, 'flabebe', 'Flabebe', 6, TRUE, 1, 1, 1, NULL, NULL),
  -- Floette
  (67000, 670, 'floette', 'Floette', 6, TRUE, 1, 2, 9, NULL, NULL),
  -- Florges
  (67100, 671, 'florges', 'Florges', 6, TRUE, 1, 11, 100, NULL, NULL),
  -- Skiddo
  (67200, 672, 'skiddo', 'Skiddo', 6, TRUE, 1, 9, 310, NULL, NULL),
  -- Gogoat
  (67300, 673, 'gogoat', 'Gogoat', 6, TRUE, 1, 17, 910, NULL, NULL),
  -- Pancham
  (67400, 674, 'pancham', 'Pancham', 6, TRUE, 1, 6, 80, NULL, NULL),
  -- Pangoro
  (67500, 675, 'pangoro', 'Pangoro', 6, TRUE, 1, 21, 1360, NULL, NULL),
  -- Furfrou
  (67600, 676, 'furfrou', 'Furfrou', 6, TRUE, 1, 12, 280, NULL, NULL),
  -- Espurr
  (67700, 677, 'espurr', 'Espurr', 6, TRUE, 1, 3, 35, NULL, NULL),
  -- Meowstic
  (67800, 678, 'meowstic', 'Meowstic', 6, TRUE, 1, 6, 85, NULL, 'male'),
  -- Honedge
  (67900, 679, 'honedge', 'Honedge', 6, TRUE, 1, 8, 20, NULL, NULL),
  -- Doublade
  (68000, 680, 'doublade', 'Doublade', 6, TRUE, 1, 8, 45, NULL, NULL),
  -- Aegislash
  (68100, 681, 'aegislash', 'Aegislash', 6, TRUE, 1, 17, 530, NULL, NULL),
  -- Spritzee
  (68200, 682, 'spritzee', 'Spritzee', 6, TRUE, 1, 2, 5, NULL, NULL),
  -- Aromatisse
  (68300, 683, 'aromatisse', 'Aromatisse', 6, TRUE, 1, 8, 155, NULL, NULL),
  -- Swirlix
  (68400, 684, 'swirlix', 'Swirlix', 6, TRUE, 1, 4, 35, NULL, NULL),
  -- Slurpuff
  (68500, 685, 'slurpuff', 'Slurpuff', 6, TRUE, 1, 8, 50, NULL, NULL),
  -- Inkay
  (68600, 686, 'inkay', 'Inkay', 6, TRUE, 1, 4, 35, NULL, NULL),
  -- Malamar
  (68700, 687, 'malamar', 'Malamar', 6, TRUE, 1, 15, 470, NULL, NULL),
  -- Binacle
  (68800, 688, 'binacle', 'Binacle', 6, TRUE, 1, 5, 310, NULL, NULL),
  -- Barbaracle
  (68900, 689, 'barbaracle', 'Barbaracle', 6, TRUE, 1, 13, 960, NULL, NULL),
  -- Skrelp
  (69000, 690, 'skrelp', 'Skrelp', 6, TRUE, 1, 5, 73, NULL, NULL),
  -- Dragalge
  (69100, 691, 'dragalge', 'Dragalge', 6, TRUE, 1, 18, 815, NULL, NULL),
  -- Clauncher
  (69200, 692, 'clauncher', 'Clauncher', 6, TRUE, 1, 5, 83, NULL, NULL),
  -- Clawitzer
  (69300, 693, 'clawitzer', 'Clawitzer', 6, TRUE, 1, 13, 353, NULL, NULL),
  -- Helioptile
  (69400, 694, 'helioptile', 'Helioptile', 6, TRUE, 1, 5, 60, NULL, NULL),
  -- Heliolisk
  (69500, 695, 'heliolisk', 'Heliolisk', 6, TRUE, 1, 10, 210, NULL, NULL),
  -- Tyrunt
  (69600, 696, 'tyrunt', 'Tyrunt', 6, TRUE, 1, 8, 260, NULL, NULL),
  -- Tyrantrum
  (69700, 697, 'tyrantrum', 'Tyrantrum', 6, TRUE, 1, 25, 2700, NULL, NULL),
  -- Amaura
  (69800, 698, 'amaura', 'Amaura', 6, TRUE, 1, 13, 252, NULL, NULL),
  -- Aurorus
  (69900, 699, 'aurorus', 'Aurorus', 6, TRUE, 1, 27, 2250, NULL, NULL),
  -- Sylveon
  (70000, 700, 'sylveon', 'Sylveon', 6, TRUE, 1, 10, 235, NULL, NULL),
  -- Hawlucha
  (70100, 701, 'hawlucha', 'Hawlucha', 6, TRUE, 1, 8, 215, NULL, NULL),
  -- Dedenne
  (70200, 702, 'dedenne', 'Dedenne', 6, TRUE, 1, 2, 22, NULL, NULL),
  -- Carbink
  (70300, 703, 'carbink', 'Carbink', 6, TRUE, 1, 3, 57, NULL, NULL),
  -- Goomy
  (70400, 704, 'goomy', 'Goomy', 6, TRUE, 1, 3, 28, NULL, NULL),
  -- Sliggoo
  (70500, 705, 'sliggoo', 'Sliggoo', 6, TRUE, 1, 8, 175, NULL, NULL),
  -- Goodra
  (70600, 706, 'goodra', 'Goodra', 6, TRUE, 1, 20, 1505, NULL, NULL),
  -- Klefki
  (70700, 707, 'klefki', 'Klefki', 6, TRUE, 1, 2, 30, NULL, NULL),
  -- Phantump
  (70800, 708, 'phantump', 'Phantump', 6, TRUE, 1, 4, 70, NULL, NULL),
  -- Trevenant
  (70900, 709, 'trevenant', 'Trevenant', 6, TRUE, 1, 15, 710, NULL, NULL),
  -- Pumpkaboo
  (71000, 710, 'pumpkaboo', 'Pumpkaboo', 6, TRUE, 1, 4, 50, NULL, NULL),
  -- Gourgeist
  (71100, 711, 'gourgeist', 'Gourgeist', 6, TRUE, 1, 9, 125, NULL, NULL),
  -- Bergmite
  (71200, 712, 'bergmite', 'Bergmite', 6, TRUE, 1, 10, 995, NULL, NULL),
  -- Avalugg
  (71300, 713, 'avalugg', 'Avalugg', 6, TRUE, 1, 20, 5050, NULL, NULL),
  -- Noibat
  (71400, 714, 'noibat', 'Noibat', 6, TRUE, 1, 5, 80, NULL, NULL),
  -- Noivern
  (71500, 715, 'noivern', 'Noivern', 6, TRUE, 1, 15, 850, NULL, NULL),
  -- Xerneas
  (71600, 716, 'xerneas', 'Xerneas', 6, TRUE, 1, 30, 2150, NULL, NULL),
  -- Yveltal
  (71700, 717, 'yveltal', 'Yveltal', 6, TRUE, 1, 58, 2030, NULL, NULL),
  -- Zygarde
  (71800, 718, 'zygarde', 'Zygarde', 6, TRUE, 1, 50, 3050, NULL, NULL),
  -- Diancie
  (71900, 719, 'diancie', 'Diancie', 6, TRUE, 1, 7, 88, NULL, NULL),
  -- Hoopa
  (72000, 720, 'hoopa', 'Hoopa', 6, TRUE, 1, 5, 90, NULL, NULL),
  -- Volcanion
  (72100, 721, 'volcanion', 'Volcanion', 6, TRUE, 1, 17, 1950, NULL, NULL);
