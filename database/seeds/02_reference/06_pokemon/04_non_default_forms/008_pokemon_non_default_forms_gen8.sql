-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon with form differences and Regional form pages.
-- Cross-check: Serebii regional/alternate form pages and PokemonDB all-forms Pokedex output.
-- Scope note: includes persistent, selectable, mechanically relevant, evolution-relevant, regional, item-driven, or biography-relevant forms.
-- Excluded: battle-only transformations, Mega/Gigantamax/Primal forms, and purely cosmetic/living-dex variants.
-- ============================================================================
-- Heights and weights: the machine-readable species snapshot (PokeAPI), checked against Bulbapedia species pages on 2026-11-03.
-- Form categories: Bulbapedia's Pokémon category list, read on 2026-11-03.
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, category, gender)
VALUES
  -- Galarian Meowth
  (5202, 52, 'galarian-meowth', 'Galarian Meowth', 8, FALSE, 3, 4, 75, NULL, NULL),
  -- Hisuian Growlithe
  (5801, 58, 'hisuian-growlithe', 'Hisuian Growlithe', 8, FALSE, 2, 8, 227, 'Scout', NULL),
  -- Hisuian Arcanine
  (5901, 59, 'hisuian-arcanine', 'Hisuian Arcanine', 8, FALSE, 2, 20, 1680, NULL, NULL),
  -- Galarian Ponyta
  (7701, 77, 'galarian-ponyta', 'Galarian Ponyta', 8, FALSE, 2, 8, 240, 'Unique Horn', NULL),
  -- Galarian Rapidash
  (7801, 78, 'galarian-rapidash', 'Galarian Rapidash', 8, FALSE, 2, 17, 800, 'Unique Horn', NULL),
  -- Galarian Slowpoke
  (7901, 79, 'galarian-slowpoke', 'Galarian Slowpoke', 8, FALSE, 2, 12, 360, NULL, NULL),
  -- Galarian Slowbro
  (8002, 80, 'galarian-slowbro', 'Galarian Slowbro', 8, FALSE, 3, 16, 705, NULL, NULL),
  -- Galarian Farfetch'd
  (8301, 83, 'galarian-farfetchd', 'Galarian Farfetch''d', 8, FALSE, 2, 8, 420, NULL, NULL),
  -- Hisuian Voltorb
  (10001, 100, 'hisuian-voltorb', 'Hisuian Voltorb', 8, FALSE, 2, 5, 130, 'Sphere', NULL),
  -- Hisuian Electrode
  (10101, 101, 'hisuian-electrode', 'Hisuian Electrode', 8, FALSE, 2, 12, 710, 'Sphere', NULL),
  -- Galarian Weezing
  (11001, 110, 'galarian-weezing', 'Galarian Weezing', 8, FALSE, 2, 30, 160, NULL, NULL),
  -- Galarian Mr. Mime
  (12201, 122, 'galarian-mr-mime', 'Galarian Mr. Mime', 8, FALSE, 2, 14, 568, 'Dancing', NULL),
  -- Galarian Articuno
  (14401, 144, 'galarian-articuno', 'Galarian Articuno', 8, FALSE, 2, 17, 509, 'Cruel', NULL),
  -- Galarian Zapdos
  (14501, 145, 'galarian-zapdos', 'Galarian Zapdos', 8, FALSE, 2, 16, 582, 'Strong Legs', NULL),
  -- Galarian Moltres
  (14601, 146, 'galarian-moltres', 'Galarian Moltres', 8, FALSE, 2, 20, 660, 'Malevolent', NULL),
  -- Hisuian Typhlosion
  (15701, 157, 'hisuian-typhlosion', 'Hisuian Typhlosion', 8, FALSE, 2, 16, 698, 'Ghost Flame', NULL),
  -- Galarian Slowking
  (19901, 199, 'galarian-slowking', 'Galarian Slowking', 8, FALSE, 2, 18, 795, 'Hexpert', NULL),
  -- Hisuian Qwilfish
  (21101, 211, 'hisuian-qwilfish', 'Hisuian Qwilfish', 8, FALSE, 2, 5, 39, NULL, NULL),
  -- Hisuian Sneasel
  (21501, 215, 'hisuian-sneasel', 'Hisuian Sneasel', 8, FALSE, 2, 9, 270, NULL, NULL),
  -- Galarian Corsola
  (22201, 222, 'galarian-corsola', 'Galarian Corsola', 8, FALSE, 2, 6, 5, NULL, NULL),
  -- Galarian Zigzagoon
  (26301, 263, 'galarian-zigzagoon', 'Galarian Zigzagoon', 8, FALSE, 2, 4, 175, NULL, NULL),
  -- Galarian Linoone
  (26401, 264, 'galarian-linoone', 'Galarian Linoone', 8, FALSE, 2, 5, 325, NULL, NULL),
  -- Dialga (Origin Forme)
  (48301, 483, 'dialga-origin', 'Dialga (Origin Forme)', 8, FALSE, 2, 70, 8487, NULL, NULL),
  -- Palkia (Origin Forme)
  (48401, 484, 'palkia-origin', 'Palkia (Origin Forme)', 8, FALSE, 2, 63, 6590, NULL, NULL),
  -- Hisuian Samurott
  (50301, 503, 'hisuian-samurott', 'Hisuian Samurott', 8, FALSE, 2, 15, 582, NULL, NULL),
  -- Hisuian Lilligant
  (54901, 549, 'hisuian-lilligant', 'Hisuian Lilligant', 8, FALSE, 2, 12, 192, 'Spinning', NULL),
  -- Basculin (White-Striped)
  (55002, 550, 'basculin-white-striped', 'Basculin (White-Striped)', 8, FALSE, 3, 10, 180, 'Mellow', NULL),
  -- Galarian Darumaka
  (55401, 554, 'galarian-darumaka', 'Galarian Darumaka', 8, FALSE, 2, 7, 400, NULL, NULL),
  -- Galarian Darmanitan
  (55502, 555, 'galarian-darmanitan', 'Galarian Darmanitan', 8, FALSE, 3, 17, 1200, 'Zen Charm', NULL),
  -- Galarian Yamask
  (56201, 562, 'galarian-yamask', 'Galarian Yamask', 8, FALSE, 2, 5, 15, NULL, NULL),
  -- Hisuian Zorua
  (57001, 570, 'hisuian-zorua', 'Hisuian Zorua', 8, FALSE, 2, 7, 125, 'Spiteful Fox', NULL),
  -- Hisuian Zoroark
  (57101, 571, 'hisuian-zoroark', 'Hisuian Zoroark', 8, FALSE, 2, 16, 730, 'Baneful Fox', NULL),
  -- Galarian Stunfisk
  (61801, 618, 'galarian-stunfisk', 'Galarian Stunfisk', 8, FALSE, 2, 7, 205, NULL, NULL),
  -- Hisuian Braviary
  (62801, 628, 'hisuian-braviary', 'Hisuian Braviary', 8, FALSE, 2, 17, 434, 'Battle Cry', NULL),
  -- Hisuian Sliggoo
  (70501, 705, 'hisuian-sliggoo', 'Hisuian Sliggoo', 8, FALSE, 2, 7, 685, 'Snail', NULL),
  -- Hisuian Goodra
  (70601, 706, 'hisuian-goodra', 'Hisuian Goodra', 8, FALSE, 2, 17, 3341, 'Shell Bunker', NULL),
  -- Hisuian Avalugg
  (71301, 713, 'hisuian-avalugg', 'Hisuian Avalugg', 8, FALSE, 2, 14, 2624, NULL, NULL),
  -- Hisuian Decidueye
  (72401, 724, 'hisuian-decidueye', 'Hisuian Decidueye', 8, FALSE, 2, 16, 370, NULL, NULL),
  -- Toxtricity (Low Key)
  (84901, 849, 'toxtricity-low-key', 'Toxtricity (Low Key)', 8, FALSE, 2, 16, 400, NULL, NULL),
  -- Sinistea (Antique)
  (85401, 854, 'sinistea-antique', 'Sinistea (Antique)', 8, FALSE, 2, 1, 2, NULL, NULL),
  -- Polteageist (Antique)
  (85501, 855, 'polteageist-antique', 'Polteageist (Antique)', 8, FALSE, 2, 2, 4, NULL, NULL),
  -- Indeedee (Female)
  (87601, 876, 'indeedee-female', 'Indeedee (Female)', 8, FALSE, 2, 9, 280, NULL, 'female'),
  -- Urshifu (Rapid Strike)
  (89201, 892, 'urshifu-rapid-strike', 'Urshifu (Rapid Strike)', 8, FALSE, 2, 19, 1050, NULL, NULL),
  -- Calyrex (Ice Rider)
  (89801, 898, 'calyrex-ice-rider', 'Calyrex (Ice Rider)', 8, FALSE, 2, 24, 8091, 'High King', NULL),
  -- Calyrex (Shadow Rider)
  (89802, 898, 'calyrex-shadow-rider', 'Calyrex (Shadow Rider)', 8, FALSE, 3, 24, 536, 'High King', NULL),
  -- Basculegion (Female)
  (90201, 902, 'basculegion-female', 'Basculegion (Female)', 8, FALSE, 2, 30, 1100, NULL, 'female'),
  -- Enamorus (Therian)
  (90501, 905, 'enamorus-therian', 'Enamorus (Therian)', 8, FALSE, 2, 16, 480, NULL, NULL);
