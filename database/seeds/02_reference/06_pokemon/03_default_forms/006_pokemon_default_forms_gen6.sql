-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0650-0721
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Chespin
  (65000, 650, 'chespin', 'Chespin', 6, TRUE, 1, NULL, NULL),
  -- Quilladin
  (65100, 651, 'quilladin', 'Quilladin', 6, TRUE, 1, NULL, NULL),
  -- Chesnaught
  (65200, 652, 'chesnaught', 'Chesnaught', 6, TRUE, 1, NULL, NULL),
  -- Fennekin
  (65300, 653, 'fennekin', 'Fennekin', 6, TRUE, 1, NULL, NULL),
  -- Braixen
  (65400, 654, 'braixen', 'Braixen', 6, TRUE, 1, NULL, NULL),
  -- Delphox
  (65500, 655, 'delphox', 'Delphox', 6, TRUE, 1, NULL, NULL),
  -- Froakie
  (65600, 656, 'froakie', 'Froakie', 6, TRUE, 1, NULL, NULL),
  -- Frogadier
  (65700, 657, 'frogadier', 'Frogadier', 6, TRUE, 1, NULL, NULL),
  -- Greninja
  (65800, 658, 'greninja', 'Greninja', 6, TRUE, 1, NULL, NULL),
  -- Bunnelby
  (65900, 659, 'bunnelby', 'Bunnelby', 6, TRUE, 1, NULL, NULL),
  -- Diggersby
  (66000, 660, 'diggersby', 'Diggersby', 6, TRUE, 1, NULL, NULL),
  -- Fletchling
  (66100, 661, 'fletchling', 'Fletchling', 6, TRUE, 1, NULL, NULL),
  -- Fletchinder
  (66200, 662, 'fletchinder', 'Fletchinder', 6, TRUE, 1, NULL, NULL),
  -- Talonflame
  (66300, 663, 'talonflame', 'Talonflame', 6, TRUE, 1, NULL, NULL),
  -- Scatterbug
  (66400, 664, 'scatterbug', 'Scatterbug', 6, TRUE, 1, NULL, NULL),
  -- Spewpa
  (66500, 665, 'spewpa', 'Spewpa', 6, TRUE, 1, NULL, NULL),
  -- Vivillon
  (66600, 666, 'vivillon', 'Vivillon', 6, TRUE, 1, NULL, NULL),
  -- Litleo
  (66700, 667, 'litleo', 'Litleo', 6, TRUE, 1, NULL, NULL),
  -- Pyroar
  (66800, 668, 'pyroar', 'Pyroar', 6, TRUE, 1, NULL, NULL),
  -- Flabebe
  (66900, 669, 'flabebe', 'Flabebe', 6, TRUE, 1, NULL, NULL),
  -- Floette
  (67000, 670, 'floette', 'Floette', 6, TRUE, 1, NULL, NULL),
  -- Florges
  (67100, 671, 'florges', 'Florges', 6, TRUE, 1, NULL, NULL),
  -- Skiddo
  (67200, 672, 'skiddo', 'Skiddo', 6, TRUE, 1, NULL, NULL),
  -- Gogoat
  (67300, 673, 'gogoat', 'Gogoat', 6, TRUE, 1, NULL, NULL),
  -- Pancham
  (67400, 674, 'pancham', 'Pancham', 6, TRUE, 1, NULL, NULL),
  -- Pangoro
  (67500, 675, 'pangoro', 'Pangoro', 6, TRUE, 1, NULL, NULL),
  -- Furfrou
  (67600, 676, 'furfrou', 'Furfrou', 6, TRUE, 1, NULL, NULL),
  -- Espurr
  (67700, 677, 'espurr', 'Espurr', 6, TRUE, 1, NULL, NULL),
  -- Meowstic
  (67800, 678, 'meowstic', 'Meowstic', 6, TRUE, 1, NULL, NULL),
  -- Honedge
  (67900, 679, 'honedge', 'Honedge', 6, TRUE, 1, NULL, NULL),
  -- Doublade
  (68000, 680, 'doublade', 'Doublade', 6, TRUE, 1, NULL, NULL),
  -- Aegislash
  (68100, 681, 'aegislash', 'Aegislash', 6, TRUE, 1, NULL, NULL),
  -- Spritzee
  (68200, 682, 'spritzee', 'Spritzee', 6, TRUE, 1, NULL, NULL),
  -- Aromatisse
  (68300, 683, 'aromatisse', 'Aromatisse', 6, TRUE, 1, NULL, NULL),
  -- Swirlix
  (68400, 684, 'swirlix', 'Swirlix', 6, TRUE, 1, NULL, NULL),
  -- Slurpuff
  (68500, 685, 'slurpuff', 'Slurpuff', 6, TRUE, 1, NULL, NULL),
  -- Inkay
  (68600, 686, 'inkay', 'Inkay', 6, TRUE, 1, NULL, NULL),
  -- Malamar
  (68700, 687, 'malamar', 'Malamar', 6, TRUE, 1, NULL, NULL),
  -- Binacle
  (68800, 688, 'binacle', 'Binacle', 6, TRUE, 1, NULL, NULL),
  -- Barbaracle
  (68900, 689, 'barbaracle', 'Barbaracle', 6, TRUE, 1, NULL, NULL),
  -- Skrelp
  (69000, 690, 'skrelp', 'Skrelp', 6, TRUE, 1, NULL, NULL),
  -- Dragalge
  (69100, 691, 'dragalge', 'Dragalge', 6, TRUE, 1, NULL, NULL),
  -- Clauncher
  (69200, 692, 'clauncher', 'Clauncher', 6, TRUE, 1, NULL, NULL),
  -- Clawitzer
  (69300, 693, 'clawitzer', 'Clawitzer', 6, TRUE, 1, NULL, NULL),
  -- Helioptile
  (69400, 694, 'helioptile', 'Helioptile', 6, TRUE, 1, NULL, NULL),
  -- Heliolisk
  (69500, 695, 'heliolisk', 'Heliolisk', 6, TRUE, 1, NULL, NULL),
  -- Tyrunt
  (69600, 696, 'tyrunt', 'Tyrunt', 6, TRUE, 1, NULL, NULL),
  -- Tyrantrum
  (69700, 697, 'tyrantrum', 'Tyrantrum', 6, TRUE, 1, NULL, NULL),
  -- Amaura
  (69800, 698, 'amaura', 'Amaura', 6, TRUE, 1, NULL, NULL),
  -- Aurorus
  (69900, 699, 'aurorus', 'Aurorus', 6, TRUE, 1, NULL, NULL),
  -- Sylveon
  (70000, 700, 'sylveon', 'Sylveon', 6, TRUE, 1, NULL, NULL),
  -- Hawlucha
  (70100, 701, 'hawlucha', 'Hawlucha', 6, TRUE, 1, NULL, NULL),
  -- Dedenne
  (70200, 702, 'dedenne', 'Dedenne', 6, TRUE, 1, NULL, NULL),
  -- Carbink
  (70300, 703, 'carbink', 'Carbink', 6, TRUE, 1, NULL, NULL),
  -- Goomy
  (70400, 704, 'goomy', 'Goomy', 6, TRUE, 1, NULL, NULL),
  -- Sliggoo
  (70500, 705, 'sliggoo', 'Sliggoo', 6, TRUE, 1, NULL, NULL),
  -- Goodra
  (70600, 706, 'goodra', 'Goodra', 6, TRUE, 1, NULL, NULL),
  -- Klefki
  (70700, 707, 'klefki', 'Klefki', 6, TRUE, 1, NULL, NULL),
  -- Phantump
  (70800, 708, 'phantump', 'Phantump', 6, TRUE, 1, NULL, NULL),
  -- Trevenant
  (70900, 709, 'trevenant', 'Trevenant', 6, TRUE, 1, NULL, NULL),
  -- Pumpkaboo
  (71000, 710, 'pumpkaboo', 'Pumpkaboo', 6, TRUE, 1, NULL, NULL),
  -- Gourgeist
  (71100, 711, 'gourgeist', 'Gourgeist', 6, TRUE, 1, NULL, NULL),
  -- Bergmite
  (71200, 712, 'bergmite', 'Bergmite', 6, TRUE, 1, NULL, NULL),
  -- Avalugg
  (71300, 713, 'avalugg', 'Avalugg', 6, TRUE, 1, NULL, NULL),
  -- Noibat
  (71400, 714, 'noibat', 'Noibat', 6, TRUE, 1, NULL, NULL),
  -- Noivern
  (71500, 715, 'noivern', 'Noivern', 6, TRUE, 1, NULL, NULL),
  -- Xerneas
  (71600, 716, 'xerneas', 'Xerneas', 6, TRUE, 1, NULL, NULL),
  -- Yveltal
  (71700, 717, 'yveltal', 'Yveltal', 6, TRUE, 1, NULL, NULL),
  -- Zygarde
  (71800, 718, 'zygarde', 'Zygarde', 6, TRUE, 1, NULL, NULL),
  -- Diancie
  (71900, 719, 'diancie', 'Diancie', 6, TRUE, 1, NULL, NULL),
  -- Hoopa
  (72000, 720, 'hoopa', 'Hoopa', 6, TRUE, 1, NULL, NULL),
  -- Volcanion
  (72100, 721, 'volcanion', 'Volcanion', 6, TRUE, 1, NULL, NULL);
