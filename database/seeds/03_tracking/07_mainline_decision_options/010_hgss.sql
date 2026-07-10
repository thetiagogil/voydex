-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon, Gift Pokémon, and HeartGold /
-- SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Scope: Pokémon HeartGold / SoulSilver decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for HeartGold / SoulSilver Johto starter and post-Red
-- Kanto and Hoenn starter choices.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_decision_options (
  milestone_id,
  slug,
  label,
  description,
  pokemon_species_id,
  pokemon_form_id,
  item_id,
  sort_order
) VALUES
  -- Choose Johto Starter -> Chikorita
  (100001, 'chikorita', 'Chikorita', 'Choose Chikorita as the first partner Pokémon.', 152, 15200, NULL, 1),
  -- Choose Johto Starter -> Cyndaquil
  (100001, 'cyndaquil', 'Cyndaquil', 'Choose Cyndaquil as the first partner Pokémon.', 155, 15500, NULL, 2),
  -- Choose Johto Starter -> Totodile
  (100001, 'totodile', 'Totodile', 'Choose Totodile as the first partner Pokémon.', 158, 15800, NULL, 3),
  -- Choose Kanto Starter -> Bulbasaur
  (100026, 'bulbasaur', 'Bulbasaur', 'Choose Bulbasaur from Professor Oak after defeating Red.', 1, 100, NULL, 1),
  -- Choose Kanto Starter -> Charmander
  (100026, 'charmander', 'Charmander', 'Choose Charmander from Professor Oak after defeating Red.', 4, 400, NULL, 2),
  -- Choose Kanto Starter -> Squirtle
  (100026, 'squirtle', 'Squirtle', 'Choose Squirtle from Professor Oak after defeating Red.', 7, 700, NULL, 3),
  -- Choose Hoenn Starter -> Treecko
  (100027, 'treecko', 'Treecko', 'Choose Treecko from Steven Stone after defeating Red.', 252, 25200, NULL, 1),
  -- Choose Hoenn Starter -> Torchic
  (100027, 'torchic', 'Torchic', 'Choose Torchic from Steven Stone after defeating Red.', 255, 25500, NULL, 2),
  -- Choose Hoenn Starter -> Mudkip
  (100027, 'mudkip', 'Mudkip', 'Choose Mudkip from Steven Stone after defeating Red.', 258, 25800, NULL, 3);
