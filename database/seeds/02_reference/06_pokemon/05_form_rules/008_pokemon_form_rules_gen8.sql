-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product scope for team-selectable Pokémon forms.
-- Cross-check: Bulbapedia form behavior pages, Serebii form pages, and PokemonDB all-forms output.
-- Scope note: every seeded non-default form receives behavior metadata; item-driven behavior lives in reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_form_rules
-- Scope: UI/planning behavior for curated non-default forms.
INSERT INTO reference.pokemon_form_rules (form_id, form_kind, is_team_selectable, is_battle_only, is_cosmetic, is_regional, is_evolution_locked, condition_summary, notes)
VALUES
  -- Galarian Meowth
  (5202, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Hisuian Growlithe
  (5801, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Arcanine
  (5901, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Galarian Ponyta
  (7701, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Rapidash
  (7801, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Slowpoke
  (7901, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Slowbro
  (8002, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Farfetch'd
  (8301, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Hisuian Voltorb
  (10001, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Electrode
  (10101, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Galarian Weezing
  (11001, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Mr. Mime
  (12201, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Articuno
  (14401, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Zapdos
  (14501, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Moltres
  (14601, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Hisuian Typhlosion
  (15701, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Galarian Slowking
  (19901, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Hisuian Qwilfish
  (21101, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Sneasel
  (21501, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Galarian Corsola
  (22201, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Zigzagoon
  (26301, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Linoone
  (26401, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Dialga (Origin Forme)
  (48301, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Origin Forme selected by Adamant Crystal where supported.', NULL),
  -- Palkia (Origin Forme)
  (48401, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Origin Forme selected by Lustrous Globe where supported.', NULL),
  -- Hisuian Samurott
  (50301, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Lilligant
  (54901, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Basculin (White-Striped)
  (55002, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Galarian Darumaka
  (55401, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Darmanitan
  (55502, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Galarian Yamask
  (56201, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Hisuian Zorua
  (57001, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Zoroark
  (57101, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Galarian Stunfisk
  (61801, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Galar.', NULL),
  -- Hisuian Braviary
  (62801, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Sliggoo
  (70501, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Goodra
  (70601, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Avalugg
  (71301, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Hisuian Decidueye
  (72401, 'regional', TRUE, FALSE, FALSE, TRUE, FALSE, 'Regional form from Hisui.', NULL),
  -- Toxtricity (Low Key)
  (84901, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Sinistea (Antique)
  (85401, 'special', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Polteageist (Antique)
  (85501, 'special', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Indeedee (Female)
  (87601, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent selectable form with gameplay-relevant type, stat, ability, evolution, or availability differences.', NULL),
  -- Urshifu (Rapid Strike)
  (89201, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Calyrex (Ice Rider)
  (89801, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Reins of Unity rider form.', NULL),
  -- Calyrex (Shadow Rider)
  (89802, 'special', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Reins of Unity rider form.', NULL),
  -- Basculegion (Female)
  (90201, 'alternate', TRUE, FALSE, FALSE, FALSE, TRUE, 'Persistent form determined by evolution, gender, size, authenticity, or encounter outcome.', NULL),
  -- Enamorus (Therian)
  (90501, 'alternate', TRUE, FALSE, FALSE, FALSE, FALSE, 'Persistent Reveal Glass form.', NULL);
