-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 6 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Chespin Family
  (650, 'chespin-family', 'Chespin Family', 330),
  -- Fennekin Family
  (653, 'fennekin-family', 'Fennekin Family', 331),
  -- Froakie Family
  (656, 'froakie-family', 'Froakie Family', 332),
  -- Bunnelby Family
  (659, 'bunnelby-family', 'Bunnelby Family', 333),
  -- Fletchling Family
  (661, 'fletchling-family', 'Fletchling Family', 334),
  -- Scatterbug Family
  (664, 'scatterbug-family', 'Scatterbug Family', 335),
  -- Litleo Family
  (667, 'litleo-family', 'Litleo Family', 336),
  -- Flabebe Family
  (669, 'flabebe-family', 'Flabebe Family', 337),
  -- Skiddo Family
  (672, 'skiddo-family', 'Skiddo Family', 338),
  -- Pancham Family
  (674, 'pancham-family', 'Pancham Family', 339),
  -- Furfrou Family
  (676, 'furfrou-family', 'Furfrou Family', 340),
  -- Espurr Family
  (677, 'espurr-family', 'Espurr Family', 341),
  -- Honedge Family
  (679, 'honedge-family', 'Honedge Family', 342),
  -- Spritzee Family
  (682, 'spritzee-family', 'Spritzee Family', 343),
  -- Swirlix Family
  (684, 'swirlix-family', 'Swirlix Family', 344),
  -- Inkay Family
  (686, 'inkay-family', 'Inkay Family', 345),
  -- Binacle Family
  (688, 'binacle-family', 'Binacle Family', 346),
  -- Skrelp Family
  (690, 'skrelp-family', 'Skrelp Family', 347),
  -- Clauncher Family
  (692, 'clauncher-family', 'Clauncher Family', 348),
  -- Helioptile Family
  (694, 'helioptile-family', 'Helioptile Family', 349),
  -- Tyrunt Family
  (696, 'tyrunt-family', 'Tyrunt Family', 350),
  -- Amaura Family
  (698, 'amaura-family', 'Amaura Family', 351),
  -- Hawlucha Family
  (701, 'hawlucha-family', 'Hawlucha Family', 352),
  -- Dedenne Family
  (702, 'dedenne-family', 'Dedenne Family', 353),
  -- Carbink Family
  (703, 'carbink-family', 'Carbink Family', 354),
  -- Goomy Family
  (704, 'goomy-family', 'Goomy Family', 355),
  -- Klefki Family
  (707, 'klefki-family', 'Klefki Family', 356),
  -- Phantump Family
  (708, 'phantump-family', 'Phantump Family', 357),
  -- Pumpkaboo Family
  (710, 'pumpkaboo-family', 'Pumpkaboo Family', 358),
  -- Bergmite Family
  (712, 'bergmite-family', 'Bergmite Family', 359),
  -- Noibat Family
  (714, 'noibat-family', 'Noibat Family', 360),
  -- Xerneas Family
  (716, 'xerneas-family', 'Xerneas Family', 361),
  -- Yveltal Family
  (717, 'yveltal-family', 'Yveltal Family', 362),
  -- Zygarde Family
  (718, 'zygarde-family', 'Zygarde Family', 363),
  -- Diancie Family
  (719, 'diancie-family', 'Diancie Family', 364),
  -- Hoopa Family
  (720, 'hoopa-family', 'Hoopa Family', 365),
  -- Volcanion Family
  (721, 'volcanion-family', 'Volcanion Family', 366);
