-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon with form differences and Regional form pages.
-- Cross-check: Serebii regional/alternate form pages and PokemonDB all-forms Pokedex output.
-- Scope note: includes persistent, selectable, mechanically relevant, evolution-relevant, regional, item-driven, or biography-relevant forms.
-- Excluded: battle-only transformations, Mega/Gigantamax/Primal forms, and purely cosmetic/living-dex variants.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Basculin (Blue-Striped)
  (55001, 550, 'basculin-blue-striped', 'Basculin (Blue-Striped)', 5, FALSE, 2, NULL, NULL),
  -- Tornadus (Therian)
  (64101, 641, 'tornadus-therian', 'Tornadus (Therian)', 5, FALSE, 2, NULL, NULL),
  -- Thundurus (Therian)
  (64201, 642, 'thundurus-therian', 'Thundurus (Therian)', 5, FALSE, 2, NULL, NULL),
  -- Landorus (Therian)
  (64501, 645, 'landorus-therian', 'Landorus (Therian)', 5, FALSE, 2, NULL, NULL),
  -- Kyurem (White)
  (64601, 646, 'kyurem-white', 'Kyurem (White)', 5, FALSE, 2, NULL, NULL),
  -- Kyurem (Black)
  (64602, 646, 'kyurem-black', 'Kyurem (Black)', 5, FALSE, 3, NULL, NULL),
  -- Genesect (Douse Drive)
  (64901, 649, 'genesect-douse-drive', 'Genesect (Douse Drive)', 5, FALSE, 2, NULL, NULL),
  -- Genesect (Shock Drive)
  (64902, 649, 'genesect-shock-drive', 'Genesect (Shock Drive)', 5, FALSE, 3, NULL, NULL),
  -- Genesect (Burn Drive)
  (64903, 649, 'genesect-burn-drive', 'Genesect (Burn Drive)', 5, FALSE, 4, NULL, NULL),
  -- Genesect (Chill Drive)
  (64904, 649, 'genesect-chill-drive', 'Genesect (Chill Drive)', 5, FALSE, 5, NULL, NULL);
