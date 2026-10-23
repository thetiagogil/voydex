-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_class, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Alolan Rattata
  (1901, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Raticate
  (2001, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Pikachu (Partner)
  (2501, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Alolan Raichu
  (2601, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Sandshrew
  (2701, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Sandslash
  (2801, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Vulpix
  (3701, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Ninetales
  (3801, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Diglett
  (5001, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Dugtrio
  (5101, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Meowth
  (5201, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Persian
  (5301, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Geodude
  (7401, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Graveler
  (7501, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Golem
  (7601, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Grimer
  (8801, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Muk
  (8901, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Exeggutor
  (10301, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Alolan Marowak
  (10501, 'variant', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Alola.', NULL),
  -- Eevee (Partner)
  (13301, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Zygarde (10% Forme)
  (71801, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Oricorio (Pom-Pom)
  (74101, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Nectar style form.', NULL),
  -- Oricorio (Pa'u)
  (74102, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Nectar style form.', NULL),
  -- Oricorio (Sensu)
  (74103, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Nectar style form.', NULL),
  -- Rockruff (Own Tempo)
  (74401, 'variant', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Lycanroc (Midnight)
  (74501, 'variant', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Lycanroc (Dusk)
  (74502, 'variant', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Silvally (Fighting)
  (77301, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Flying)
  (77302, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Poison)
  (77303, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Ground)
  (77304, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Rock)
  (77305, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Bug)
  (77306, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Ghost)
  (77307, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Steel)
  (77308, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Fire)
  (77309, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Water)
  (77310, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Grass)
  (77311, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Electric)
  (77312, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Psychic)
  (77313, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Ice)
  (77314, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Dragon)
  (77315, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Dark)
  (77316, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Silvally (Fairy)
  (77317, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Type form selected by RKS System when holding a matching Memory.', NULL),
  -- Necrozma (Dusk Mane)
  (80001, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Necrozma fusion form.', NULL),
  -- Necrozma (Dawn Wings)
  (80002, 'form', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Necrozma fusion form.', NULL),
  -- Magearna (Original Color)
  (80102, 'variant', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent gift form with the same type, stats and ability as Magearna.', NULL);
