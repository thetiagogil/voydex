-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokedex form pages per game (Unown, Shellos/Gastrodon, Deerling/Sawsbuck, Vivillon, Flabebe family, Furfrou, Pikachu caps, Alcremie, Keldeo, Zarude, Gimmighoul, Pichu).
-- Cross-check: PokeAPI pokemon-form records for names, ids and images.
-- Scope note: persistent forms that are caught and kept (variants) or switched on a save (forms), purely cosmetic ones included. Alcremie is modelled by cream only; its sweet is a per-Pokemon detail. Cosplay Pikachu, Minior cores, Battle Bond Greninja and Power Construct Zygarde are left out for now.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_evolution_edges
-- Scope: a sea, flower colour or season evolves into the same sea, colour or season, by the default's method.
INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Shellos (East Sea) -> Gastrodon (East Sea)
  (422, 42201, 423, 42301, NULL, 4, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger": "level-up"}', 580),
  -- Deerling (Summer Form) -> Sawsbuck (Summer Form)
  (585, 58501, 586, 58601, NULL, 5, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger": "level-up"}', 581),
  -- Deerling (Autumn Form) -> Sawsbuck (Autumn Form)
  (585, 58502, 586, 58602, NULL, 5, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger": "level-up"}', 582),
  -- Deerling (Winter Form) -> Sawsbuck (Winter Form)
  (585, 58503, 586, 58603, NULL, 5, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger": "level-up"}', 583),
  -- Flabebe (Yellow Flower) -> Floette (Yellow Flower)
  (669, 66901, 670, 67003, NULL, 6, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 19', '{"source_trigger": "level-up"}', 584),
  -- Flabebe (Orange Flower) -> Floette (Orange Flower)
  (669, 66902, 670, 67004, NULL, 6, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 19', '{"source_trigger": "level-up"}', 585),
  -- Flabebe (Blue Flower) -> Floette (Blue Flower)
  (669, 66903, 670, 67005, NULL, 6, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 19', '{"source_trigger": "level-up"}', 586),
  -- Flabebe (White Flower) -> Floette (White Flower)
  (669, 66904, 670, 67006, NULL, 6, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 19', '{"source_trigger": "level-up"}', 587),
  -- Floette (Yellow Flower) -> Florges (Yellow Flower)
  (670, 67003, 671, 67101, NULL, 6, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"item": "shiny-stone", "source_trigger": "use-item"}', 588),
  -- Floette (Orange Flower) -> Florges (Orange Flower)
  (670, 67004, 671, 67102, NULL, 6, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"item": "shiny-stone", "source_trigger": "use-item"}', 589),
  -- Floette (Blue Flower) -> Florges (Blue Flower)
  (670, 67005, 671, 67103, NULL, 6, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"item": "shiny-stone", "source_trigger": "use-item"}', 590),
  -- Floette (White Flower) -> Florges (White Flower)
  (670, 67006, 671, 67104, NULL, 6, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"item": "shiny-stone", "source_trigger": "use-item"}', 591);
