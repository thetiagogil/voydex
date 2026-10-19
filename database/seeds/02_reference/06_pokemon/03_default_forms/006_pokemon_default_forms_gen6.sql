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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Chespin
  (65000, 650, 'chespin', 'Chespin', 6, TRUE, 1, NULL, NULL, 'chespin'),
  -- Quilladin
  (65100, 651, 'quilladin', 'Quilladin', 6, TRUE, 1, NULL, NULL, 'quilladin'),
  -- Chesnaught
  (65200, 652, 'chesnaught', 'Chesnaught', 6, TRUE, 1, NULL, NULL, 'chesnaught'),
  -- Fennekin
  (65300, 653, 'fennekin', 'Fennekin', 6, TRUE, 1, NULL, NULL, 'fennekin'),
  -- Braixen
  (65400, 654, 'braixen', 'Braixen', 6, TRUE, 1, NULL, NULL, 'braixen'),
  -- Delphox
  (65500, 655, 'delphox', 'Delphox', 6, TRUE, 1, NULL, NULL, 'delphox'),
  -- Froakie
  (65600, 656, 'froakie', 'Froakie', 6, TRUE, 1, NULL, NULL, 'froakie'),
  -- Frogadier
  (65700, 657, 'frogadier', 'Frogadier', 6, TRUE, 1, NULL, NULL, 'frogadier'),
  -- Greninja
  (65800, 658, 'greninja', 'Greninja', 6, TRUE, 1, NULL, NULL, 'greninja'),
  -- Bunnelby
  (65900, 659, 'bunnelby', 'Bunnelby', 6, TRUE, 1, NULL, NULL, 'bunnelby'),
  -- Diggersby
  (66000, 660, 'diggersby', 'Diggersby', 6, TRUE, 1, NULL, NULL, 'diggersby'),
  -- Fletchling
  (66100, 661, 'fletchling', 'Fletchling', 6, TRUE, 1, NULL, NULL, 'fletchling'),
  -- Fletchinder
  (66200, 662, 'fletchinder', 'Fletchinder', 6, TRUE, 1, NULL, NULL, 'fletchinder'),
  -- Talonflame
  (66300, 663, 'talonflame', 'Talonflame', 6, TRUE, 1, NULL, NULL, 'talonflame'),
  -- Scatterbug
  (66400, 664, 'scatterbug', 'Scatterbug', 6, TRUE, 1, NULL, NULL, 'scatterbug'),
  -- Spewpa
  (66500, 665, 'spewpa', 'Spewpa', 6, TRUE, 1, NULL, NULL, 'spewpa'),
  -- Vivillon
  (66600, 666, 'vivillon', 'Vivillon', 6, TRUE, 1, NULL, NULL, 'vivillon'),
  -- Litleo
  (66700, 667, 'litleo', 'Litleo', 6, TRUE, 1, NULL, NULL, 'litleo'),
  -- Pyroar
  (66800, 668, 'pyroar', 'Pyroar', 6, TRUE, 1, NULL, NULL, 'pyroar'),
  -- Flabebe
  (66900, 669, 'flabebe', 'Flabebe', 6, TRUE, 1, NULL, NULL, 'flabebe'),
  -- Floette
  (67000, 670, 'floette', 'Floette', 6, TRUE, 1, NULL, NULL, 'floette'),
  -- Florges
  (67100, 671, 'florges', 'Florges', 6, TRUE, 1, NULL, NULL, 'florges'),
  -- Skiddo
  (67200, 672, 'skiddo', 'Skiddo', 6, TRUE, 1, NULL, NULL, 'skiddo'),
  -- Gogoat
  (67300, 673, 'gogoat', 'Gogoat', 6, TRUE, 1, NULL, NULL, 'gogoat'),
  -- Pancham
  (67400, 674, 'pancham', 'Pancham', 6, TRUE, 1, NULL, NULL, 'pancham'),
  -- Pangoro
  (67500, 675, 'pangoro', 'Pangoro', 6, TRUE, 1, NULL, NULL, 'pangoro'),
  -- Furfrou
  (67600, 676, 'furfrou', 'Furfrou', 6, TRUE, 1, NULL, NULL, 'furfrou'),
  -- Espurr
  (67700, 677, 'espurr', 'Espurr', 6, TRUE, 1, NULL, NULL, 'espurr'),
  -- Meowstic
  (67800, 678, 'meowstic', 'Meowstic', 6, TRUE, 1, NULL, NULL, 'meowstic'),
  -- Honedge
  (67900, 679, 'honedge', 'Honedge', 6, TRUE, 1, NULL, NULL, 'honedge'),
  -- Doublade
  (68000, 680, 'doublade', 'Doublade', 6, TRUE, 1, NULL, NULL, 'doublade'),
  -- Aegislash
  (68100, 681, 'aegislash', 'Aegislash', 6, TRUE, 1, NULL, NULL, 'aegislash'),
  -- Spritzee
  (68200, 682, 'spritzee', 'Spritzee', 6, TRUE, 1, NULL, NULL, 'spritzee'),
  -- Aromatisse
  (68300, 683, 'aromatisse', 'Aromatisse', 6, TRUE, 1, NULL, NULL, 'aromatisse'),
  -- Swirlix
  (68400, 684, 'swirlix', 'Swirlix', 6, TRUE, 1, NULL, NULL, 'swirlix'),
  -- Slurpuff
  (68500, 685, 'slurpuff', 'Slurpuff', 6, TRUE, 1, NULL, NULL, 'slurpuff'),
  -- Inkay
  (68600, 686, 'inkay', 'Inkay', 6, TRUE, 1, NULL, NULL, 'inkay'),
  -- Malamar
  (68700, 687, 'malamar', 'Malamar', 6, TRUE, 1, NULL, NULL, 'malamar'),
  -- Binacle
  (68800, 688, 'binacle', 'Binacle', 6, TRUE, 1, NULL, NULL, 'binacle'),
  -- Barbaracle
  (68900, 689, 'barbaracle', 'Barbaracle', 6, TRUE, 1, NULL, NULL, 'barbaracle'),
  -- Skrelp
  (69000, 690, 'skrelp', 'Skrelp', 6, TRUE, 1, NULL, NULL, 'skrelp'),
  -- Dragalge
  (69100, 691, 'dragalge', 'Dragalge', 6, TRUE, 1, NULL, NULL, 'dragalge'),
  -- Clauncher
  (69200, 692, 'clauncher', 'Clauncher', 6, TRUE, 1, NULL, NULL, 'clauncher'),
  -- Clawitzer
  (69300, 693, 'clawitzer', 'Clawitzer', 6, TRUE, 1, NULL, NULL, 'clawitzer'),
  -- Helioptile
  (69400, 694, 'helioptile', 'Helioptile', 6, TRUE, 1, NULL, NULL, 'helioptile'),
  -- Heliolisk
  (69500, 695, 'heliolisk', 'Heliolisk', 6, TRUE, 1, NULL, NULL, 'heliolisk'),
  -- Tyrunt
  (69600, 696, 'tyrunt', 'Tyrunt', 6, TRUE, 1, NULL, NULL, 'tyrunt'),
  -- Tyrantrum
  (69700, 697, 'tyrantrum', 'Tyrantrum', 6, TRUE, 1, NULL, NULL, 'tyrantrum'),
  -- Amaura
  (69800, 698, 'amaura', 'Amaura', 6, TRUE, 1, NULL, NULL, 'amaura'),
  -- Aurorus
  (69900, 699, 'aurorus', 'Aurorus', 6, TRUE, 1, NULL, NULL, 'aurorus'),
  -- Sylveon
  (70000, 700, 'sylveon', 'Sylveon', 6, TRUE, 1, NULL, NULL, 'sylveon'),
  -- Hawlucha
  (70100, 701, 'hawlucha', 'Hawlucha', 6, TRUE, 1, NULL, NULL, 'hawlucha'),
  -- Dedenne
  (70200, 702, 'dedenne', 'Dedenne', 6, TRUE, 1, NULL, NULL, 'dedenne'),
  -- Carbink
  (70300, 703, 'carbink', 'Carbink', 6, TRUE, 1, NULL, NULL, 'carbink'),
  -- Goomy
  (70400, 704, 'goomy', 'Goomy', 6, TRUE, 1, NULL, NULL, 'goomy'),
  -- Sliggoo
  (70500, 705, 'sliggoo', 'Sliggoo', 6, TRUE, 1, NULL, NULL, 'sliggoo'),
  -- Goodra
  (70600, 706, 'goodra', 'Goodra', 6, TRUE, 1, NULL, NULL, 'goodra'),
  -- Klefki
  (70700, 707, 'klefki', 'Klefki', 6, TRUE, 1, NULL, NULL, 'klefki'),
  -- Phantump
  (70800, 708, 'phantump', 'Phantump', 6, TRUE, 1, NULL, NULL, 'phantump'),
  -- Trevenant
  (70900, 709, 'trevenant', 'Trevenant', 6, TRUE, 1, NULL, NULL, 'trevenant'),
  -- Pumpkaboo
  (71000, 710, 'pumpkaboo', 'Pumpkaboo', 6, TRUE, 1, NULL, NULL, 'pumpkaboo'),
  -- Gourgeist
  (71100, 711, 'gourgeist', 'Gourgeist', 6, TRUE, 1, NULL, NULL, 'gourgeist'),
  -- Bergmite
  (71200, 712, 'bergmite', 'Bergmite', 6, TRUE, 1, NULL, NULL, 'bergmite'),
  -- Avalugg
  (71300, 713, 'avalugg', 'Avalugg', 6, TRUE, 1, NULL, NULL, 'avalugg'),
  -- Noibat
  (71400, 714, 'noibat', 'Noibat', 6, TRUE, 1, NULL, NULL, 'noibat'),
  -- Noivern
  (71500, 715, 'noivern', 'Noivern', 6, TRUE, 1, NULL, NULL, 'noivern'),
  -- Xerneas
  (71600, 716, 'xerneas', 'Xerneas', 6, TRUE, 1, NULL, NULL, 'xerneas'),
  -- Yveltal
  (71700, 717, 'yveltal', 'Yveltal', 6, TRUE, 1, NULL, NULL, 'yveltal'),
  -- Zygarde
  (71800, 718, 'zygarde', 'Zygarde', 6, TRUE, 1, NULL, NULL, 'zygarde'),
  -- Diancie
  (71900, 719, 'diancie', 'Diancie', 6, TRUE, 1, NULL, NULL, 'diancie'),
  -- Hoopa
  (72000, 720, 'hoopa', 'Hoopa', 6, TRUE, 1, NULL, NULL, 'hoopa'),
  -- Volcanion
  (72100, 721, 'volcanion', 'Volcanion', 6, TRUE, 1, NULL, NULL, 'volcanion');
