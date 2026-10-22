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
-- Generation: 7
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Alolan Rattata
  (1901, 19, 'alolan-rattata', 'Alolan Rattata', 7, FALSE, 2, NULL, NULL),
  -- Alolan Raticate
  (2001, 20, 'alolan-raticate', 'Alolan Raticate', 7, FALSE, 2, NULL, NULL),
  -- Pikachu (Partner)
  (2501, 25, 'pikachu-partner', 'Pikachu (Partner)', 7, FALSE, 2, NULL, NULL),
  -- Alolan Raichu
  (2601, 26, 'alolan-raichu', 'Alolan Raichu', 7, FALSE, 2, NULL, NULL),
  -- Alolan Sandshrew
  (2701, 27, 'alolan-sandshrew', 'Alolan Sandshrew', 7, FALSE, 2, NULL, NULL),
  -- Alolan Sandslash
  (2801, 28, 'alolan-sandslash', 'Alolan Sandslash', 7, FALSE, 2, NULL, NULL),
  -- Alolan Vulpix
  (3701, 37, 'alolan-vulpix', 'Alolan Vulpix', 7, FALSE, 2, NULL, NULL),
  -- Alolan Ninetales
  (3801, 38, 'alolan-ninetales', 'Alolan Ninetales', 7, FALSE, 2, NULL, NULL),
  -- Alolan Diglett
  (5001, 50, 'alolan-diglett', 'Alolan Diglett', 7, FALSE, 2, NULL, NULL),
  -- Alolan Dugtrio
  (5101, 51, 'alolan-dugtrio', 'Alolan Dugtrio', 7, FALSE, 2, NULL, NULL),
  -- Alolan Meowth
  (5201, 52, 'alolan-meowth', 'Alolan Meowth', 7, FALSE, 2, NULL, NULL),
  -- Alolan Persian
  (5301, 53, 'alolan-persian', 'Alolan Persian', 7, FALSE, 2, NULL, NULL),
  -- Alolan Geodude
  (7401, 74, 'alolan-geodude', 'Alolan Geodude', 7, FALSE, 2, NULL, NULL),
  -- Alolan Graveler
  (7501, 75, 'alolan-graveler', 'Alolan Graveler', 7, FALSE, 2, NULL, NULL),
  -- Alolan Golem
  (7601, 76, 'alolan-golem', 'Alolan Golem', 7, FALSE, 2, NULL, NULL),
  -- Alolan Grimer
  (8801, 88, 'alolan-grimer', 'Alolan Grimer', 7, FALSE, 2, NULL, NULL),
  -- Alolan Muk
  (8901, 89, 'alolan-muk', 'Alolan Muk', 7, FALSE, 2, NULL, NULL),
  -- Alolan Exeggutor
  (10301, 103, 'alolan-exeggutor', 'Alolan Exeggutor', 7, FALSE, 2, NULL, NULL),
  -- Alolan Marowak
  (10501, 105, 'alolan-marowak', 'Alolan Marowak', 7, FALSE, 2, NULL, NULL),
  -- Eevee (Partner)
  (13301, 133, 'eevee-partner', 'Eevee (Partner)', 7, FALSE, 2, NULL, NULL),
  -- Zygarde (10% Forme)
  (71801, 718, 'zygarde-10-percent', 'Zygarde (10% Forme)', 7, FALSE, 2, NULL, NULL),
  -- Oricorio (Pom-Pom)
  (74101, 741, 'oricorio-pom-pom', 'Oricorio (Pom-Pom)', 7, FALSE, 2, NULL, NULL),
  -- Oricorio (Pa'u)
  (74102, 741, 'oricorio-pau', 'Oricorio (Pa''u)', 7, FALSE, 3, NULL, NULL),
  -- Oricorio (Sensu)
  (74103, 741, 'oricorio-sensu', 'Oricorio (Sensu)', 7, FALSE, 4, NULL, NULL),
  -- Rockruff (Own Tempo)
  (74401, 744, 'rockruff-own-tempo', 'Rockruff (Own Tempo)', 7, FALSE, 2, NULL, NULL),
  -- Lycanroc (Midnight)
  (74501, 745, 'lycanroc-midnight', 'Lycanroc (Midnight)', 7, FALSE, 2, NULL, NULL),
  -- Lycanroc (Dusk)
  (74502, 745, 'lycanroc-dusk', 'Lycanroc (Dusk)', 7, FALSE, 3, NULL, NULL),
  -- Silvally (Fighting)
  (77301, 773, 'silvally-fighting', 'Silvally (Fighting)', 7, FALSE, 2, NULL, NULL),
  -- Silvally (Flying)
  (77302, 773, 'silvally-flying', 'Silvally (Flying)', 7, FALSE, 3, NULL, NULL),
  -- Silvally (Poison)
  (77303, 773, 'silvally-poison', 'Silvally (Poison)', 7, FALSE, 4, NULL, NULL),
  -- Silvally (Ground)
  (77304, 773, 'silvally-ground', 'Silvally (Ground)', 7, FALSE, 5, NULL, NULL),
  -- Silvally (Rock)
  (77305, 773, 'silvally-rock', 'Silvally (Rock)', 7, FALSE, 6, NULL, NULL),
  -- Silvally (Bug)
  (77306, 773, 'silvally-bug', 'Silvally (Bug)', 7, FALSE, 7, NULL, NULL),
  -- Silvally (Ghost)
  (77307, 773, 'silvally-ghost', 'Silvally (Ghost)', 7, FALSE, 8, NULL, NULL),
  -- Silvally (Steel)
  (77308, 773, 'silvally-steel', 'Silvally (Steel)', 7, FALSE, 9, NULL, NULL),
  -- Silvally (Fire)
  (77309, 773, 'silvally-fire', 'Silvally (Fire)', 7, FALSE, 10, NULL, NULL),
  -- Silvally (Water)
  (77310, 773, 'silvally-water', 'Silvally (Water)', 7, FALSE, 11, NULL, NULL),
  -- Silvally (Grass)
  (77311, 773, 'silvally-grass', 'Silvally (Grass)', 7, FALSE, 12, NULL, NULL),
  -- Silvally (Electric)
  (77312, 773, 'silvally-electric', 'Silvally (Electric)', 7, FALSE, 13, NULL, NULL),
  -- Silvally (Psychic)
  (77313, 773, 'silvally-psychic', 'Silvally (Psychic)', 7, FALSE, 14, NULL, NULL),
  -- Silvally (Ice)
  (77314, 773, 'silvally-ice', 'Silvally (Ice)', 7, FALSE, 15, NULL, NULL),
  -- Silvally (Dragon)
  (77315, 773, 'silvally-dragon', 'Silvally (Dragon)', 7, FALSE, 16, NULL, NULL),
  -- Silvally (Dark)
  (77316, 773, 'silvally-dark', 'Silvally (Dark)', 7, FALSE, 17, NULL, NULL),
  -- Silvally (Fairy)
  (77317, 773, 'silvally-fairy', 'Silvally (Fairy)', 7, FALSE, 18, NULL, NULL),
  -- Necrozma (Dusk Mane)
  (80001, 800, 'necrozma-dusk-mane', 'Necrozma (Dusk Mane)', 7, FALSE, 2, NULL, NULL),
  -- Necrozma (Dawn Wings)
  (80002, 800, 'necrozma-dawn-wings', 'Necrozma (Dawn Wings)', 7, FALSE, 3, NULL, NULL),
  -- Magearna (Original Color)
  (80102, 801, 'magearna-original-color', 'Magearna (Original Color)', 7, FALSE, 3, NULL, NULL);
