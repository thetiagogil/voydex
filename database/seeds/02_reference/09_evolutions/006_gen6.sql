-- ============================================================================
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolution method and Pokémon species pages.
-- Cross-check: Serebii evolution pages and PokemonDB evolution chains.
-- Machine-readable sanity: PokeAPI evolution-chain detail fields.
-- Scope note: official core-series Pokémon evolution edges through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 6 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kalos Route 13', 'at Kalos Route 13', '{"source_trigger":"level-up","location":"kalos-route-13"}', 329),
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New Mauville', 'at New Mauville', '{"source_trigger":"level-up","location":"new-mauville"}', 330),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kalos Route 20', 'at Kalos Route 20', '{"source_trigger":"level-up","location":"kalos-route-20"}', 331),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Petalburg Woods', 'at Petalburg Woods', '{"source_trigger":"level-up","location":"petalburg-woods"}', 332),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Frost Cavern', 'at Frost Cavern', '{"source_trigger":"level-up","location":"frost-cavern"}', 333),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shoal Cave', 'at Shoal Cave', '{"source_trigger":"level-up","location":"shoal-cave"}', 334),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kalos Route 13', 'at Kalos Route 13', '{"source_trigger":"level-up","location":"kalos-route-13"}', 335),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New Mauville', 'at New Mauville', '{"source_trigger":"level-up","location":"new-mauville"}', 336),
  -- Eevee -> Sylveon
  (133, 13300, 700, 70000, NULL, 6, 4, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 'affection 2+; knows a Fairy-type move', '{"source_trigger":"level-up","known_move_type":"fairy","min_affection":2}', 337),
  -- Chespin -> Quilladin
  (650, 65000, 651, 65100, NULL, 6, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 338),
  -- Quilladin -> Chesnaught
  (651, 65100, 652, 65200, NULL, 6, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 339),
  -- Fennekin -> Braixen
  (653, 65300, 654, 65400, NULL, 6, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 340),
  -- Braixen -> Delphox
  (654, 65400, 655, 65500, NULL, 6, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 341),
  -- Froakie -> Frogadier
  (656, 65600, 657, 65700, NULL, 6, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 342),
  -- Frogadier -> Greninja
  (657, 65700, 658, 65800, NULL, 6, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 343),
  -- Bunnelby -> Diggersby
  (659, 65900, 660, 66000, NULL, 6, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 344),
  -- Fletchling -> Fletchinder
  (661, 66100, 662, 66200, NULL, 6, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 345),
  -- Fletchinder -> Talonflame
  (662, 66200, 663, 66300, NULL, 6, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 346),
  -- Scatterbug -> Spewpa
  (664, 66400, 665, 66500, NULL, 6, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 9', '{"source_trigger":"level-up"}', 347),
  -- Spewpa -> Vivillon
  (665, 66500, 666, 66600, NULL, 6, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 12', '{"source_trigger":"level-up"}', 348),
  -- Litleo -> Pyroar
  (667, 66700, 668, 66800, NULL, 6, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 349),
  -- Flabebe -> Floette
  (669, 66900, 670, 67000, NULL, 6, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 19', '{"source_trigger":"level-up"}', 350),
  -- Floette -> Florges
  (670, 67000, 671, 67100, NULL, 6, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"source_trigger":"use-item","item":"shiny-stone"}', 351),
  -- Skiddo -> Gogoat
  (672, 67200, 673, 67300, NULL, 6, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 352),
  -- Pancham -> Pangoro
  (674, 67400, 675, 67500, NULL, 6, 9, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32; Dark-type Pokémon in party', '{"source_trigger":"level-up","party_type":"dark"}', 353),
  -- Espurr -> Meowstic
  (677, 67700, 678, 67800, NULL, 6, 8, 25, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 'Level 25; male only', '{"source_trigger":"level-up","target_form_rule":"male"}', 354),
  -- Espurr -> Meowstic (Female)
  (677, 67700, 678, 67801, NULL, 6, 8, 25, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 25; female only', '{"source_trigger":"level-up","target_form_rule":"female"}', 355),
  -- Honedge -> Doublade
  (679, 67900, 680, 68000, NULL, 6, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 356),
  -- Doublade -> Aegislash
  (680, 68000, 681, 68100, NULL, 6, 2, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 'use Dusk Stone', '{"source_trigger":"use-item","item":"dusk-stone"}', 357),
  -- Spritzee -> Aromatisse
  (682, 68200, 683, 68300, NULL, 6, 3, NULL, NULL, 87, NULL, NULL, NULL, NULL, NULL, 'trade holding Sachet', '{"source_trigger":"trade","held_item":"sachet"}', 358),
  -- Swirlix -> Slurpuff
  (684, 68400, 685, 68500, NULL, 6, 3, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 'trade holding Whipped Dream', '{"source_trigger":"trade","held_item":"whipped-dream"}', 359),
  -- Inkay -> Malamar
  (686, 68600, 687, 68700, NULL, 6, 9, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30; turn system upside down', '{"source_trigger":"level-up","turn_upside_down":true}', 360),
  -- Binacle -> Barbaracle
  (688, 68800, 689, 68900, NULL, 6, 1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 39', '{"source_trigger":"level-up"}', 361),
  -- Skrelp -> Dragalge
  (690, 69000, 691, 69100, NULL, 6, 1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 48', '{"source_trigger":"level-up"}', 362),
  -- Clauncher -> Clawitzer
  (692, 69200, 693, 69300, NULL, 6, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 363),
  -- Helioptile -> Heliolisk
  (694, 69400, 695, 69500, NULL, 6, 2, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sun Stone', '{"source_trigger":"use-item","item":"sun-stone"}', 364),
  -- Tyrunt -> Tyrantrum
  (696, 69600, 697, 69700, NULL, 6, 7, 39, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'Level 39; during day', '{"source_trigger":"level-up"}', 365),
  -- Amaura -> Aurorus
  (698, 69800, 699, 69900, NULL, 6, 7, 39, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'Level 39; during night', '{"source_trigger":"level-up"}', 366),
  -- Goomy -> Sliggoo
  (704, 70400, 705, 70500, NULL, 6, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 367),
  -- Sliggoo -> Goodra
  (705, 70500, 706, 70600, NULL, 6, 9, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 50; during rain or fog', '{"source_trigger":"level-up","needs_overworld_rain":true}', 368),
  -- Phantump -> Trevenant
  (708, 70800, 709, 70900, NULL, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 369),
  -- Pumpkaboo -> Gourgeist
  (710, 71000, 711, 71100, NULL, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 370),
  -- Pumpkaboo (Small) -> Gourgeist (Small)
  (710, 71001, 711, 71101, NULL, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trade; size is preserved', '{"source_trigger":"trade","target_form_rule":"same-size"}', 371),
  -- Pumpkaboo (Large) -> Gourgeist (Large)
  (710, 71002, 711, 71102, NULL, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trade; size is preserved', '{"source_trigger":"trade","target_form_rule":"same-size"}', 372),
  -- Pumpkaboo (Super) -> Gourgeist (Super)
  (710, 71003, 711, 71103, NULL, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trade; size is preserved', '{"source_trigger":"trade","target_form_rule":"same-size"}', 373),
  -- Bergmite -> Avalugg
  (712, 71200, 713, 71300, NULL, 6, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 374),
  -- Noibat -> Noivern
  (714, 71400, 715, 71500, NULL, 6, 1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 48', '{"source_trigger":"level-up"}', 375);

-- ============================================================================
