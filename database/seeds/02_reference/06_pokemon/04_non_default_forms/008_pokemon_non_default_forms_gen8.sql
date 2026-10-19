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
-- Generation: 8
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Galarian Meowth
  (5202, 52, 'galarian-meowth', 'Galarian Meowth', 8, FALSE, 3, NULL, NULL, 'meowth-galarian'),
  -- Hisuian Growlithe
  (5801, 58, 'hisuian-growlithe', 'Hisuian Growlithe', 8, FALSE, 2, NULL, NULL, 'growlithe-hisuian'),
  -- Hisuian Arcanine
  (5901, 59, 'hisuian-arcanine', 'Hisuian Arcanine', 8, FALSE, 2, NULL, NULL, 'arcanine-hisuian'),
  -- Galarian Ponyta
  (7701, 77, 'galarian-ponyta', 'Galarian Ponyta', 8, FALSE, 2, NULL, NULL, 'ponyta-galarian'),
  -- Galarian Rapidash
  (7801, 78, 'galarian-rapidash', 'Galarian Rapidash', 8, FALSE, 2, NULL, NULL, 'rapidash-galarian'),
  -- Galarian Slowpoke
  (7901, 79, 'galarian-slowpoke', 'Galarian Slowpoke', 8, FALSE, 2, NULL, NULL, 'slowpoke-galarian'),
  -- Galarian Slowbro
  (8002, 80, 'galarian-slowbro', 'Galarian Slowbro', 8, FALSE, 3, NULL, NULL, 'slowbro-galarian'),
  -- Galarian Farfetch'd
  (8301, 83, 'galarian-farfetchd', 'Galarian Farfetch''d', 8, FALSE, 2, NULL, NULL, 'farfetchd-galarian'),
  -- Hisuian Voltorb
  (10001, 100, 'hisuian-voltorb', 'Hisuian Voltorb', 8, FALSE, 2, NULL, NULL, 'voltorb-hisuian'),
  -- Hisuian Electrode
  (10101, 101, 'hisuian-electrode', 'Hisuian Electrode', 8, FALSE, 2, NULL, NULL, 'electrode-hisuian'),
  -- Galarian Weezing
  (11001, 110, 'galarian-weezing', 'Galarian Weezing', 8, FALSE, 2, NULL, NULL, 'weezing-galarian'),
  -- Galarian Mr. Mime
  (12201, 122, 'galarian-mr-mime', 'Galarian Mr. Mime', 8, FALSE, 2, NULL, NULL, 'mr-mime-galarian'),
  -- Galarian Articuno
  (14401, 144, 'galarian-articuno', 'Galarian Articuno', 8, FALSE, 2, NULL, NULL, 'articuno-galarian'),
  -- Galarian Zapdos
  (14501, 145, 'galarian-zapdos', 'Galarian Zapdos', 8, FALSE, 2, NULL, NULL, 'zapdos-galarian'),
  -- Galarian Moltres
  (14601, 146, 'galarian-moltres', 'Galarian Moltres', 8, FALSE, 2, NULL, NULL, 'moltres-galarian'),
  -- Hisuian Typhlosion
  (15701, 157, 'hisuian-typhlosion', 'Hisuian Typhlosion', 8, FALSE, 2, NULL, NULL, 'typhlosion-hisuian'),
  -- Galarian Slowking
  (19901, 199, 'galarian-slowking', 'Galarian Slowking', 8, FALSE, 2, NULL, NULL, 'slowking-galarian'),
  -- Hisuian Qwilfish
  (21101, 211, 'hisuian-qwilfish', 'Hisuian Qwilfish', 8, FALSE, 2, NULL, NULL, 'qwilfish-hisuian'),
  -- Hisuian Sneasel
  (21501, 215, 'hisuian-sneasel', 'Hisuian Sneasel', 8, FALSE, 2, NULL, NULL, 'sneasel-hisuian'),
  -- Galarian Corsola
  (22201, 222, 'galarian-corsola', 'Galarian Corsola', 8, FALSE, 2, NULL, NULL, 'corsola-galarian'),
  -- Galarian Zigzagoon
  (26301, 263, 'galarian-zigzagoon', 'Galarian Zigzagoon', 8, FALSE, 2, NULL, NULL, 'zigzagoon-galarian'),
  -- Galarian Linoone
  (26401, 264, 'galarian-linoone', 'Galarian Linoone', 8, FALSE, 2, NULL, NULL, 'linoone-galarian'),
  -- Dialga (Origin Forme)
  (48301, 483, 'dialga-origin', 'Dialga (Origin Forme)', 8, FALSE, 2, NULL, NULL, 'dialga-origin'),
  -- Palkia (Origin Forme)
  (48401, 484, 'palkia-origin', 'Palkia (Origin Forme)', 8, FALSE, 2, NULL, NULL, 'palkia-origin'),
  -- Hisuian Samurott
  (50301, 503, 'hisuian-samurott', 'Hisuian Samurott', 8, FALSE, 2, NULL, NULL, 'samurott-hisuian'),
  -- Hisuian Lilligant
  (54901, 549, 'hisuian-lilligant', 'Hisuian Lilligant', 8, FALSE, 2, NULL, NULL, 'lilligant-hisuian'),
  -- Basculin (White-Striped)
  (55002, 550, 'basculin-white-striped', 'Basculin (White-Striped)', 8, FALSE, 3, NULL, NULL, 'basculin-white-striped'),
  -- Galarian Darumaka
  (55401, 554, 'galarian-darumaka', 'Galarian Darumaka', 8, FALSE, 2, NULL, NULL, 'darumaka-galarian'),
  -- Galarian Darmanitan
  (55502, 555, 'galarian-darmanitan', 'Galarian Darmanitan', 8, FALSE, 3, NULL, NULL, 'darmanitan-galarian'),
  -- Galarian Yamask
  (56201, 562, 'galarian-yamask', 'Galarian Yamask', 8, FALSE, 2, NULL, NULL, 'yamask-galarian'),
  -- Hisuian Zorua
  (57001, 570, 'hisuian-zorua', 'Hisuian Zorua', 8, FALSE, 2, NULL, NULL, 'zorua-hisuian'),
  -- Hisuian Zoroark
  (57101, 571, 'hisuian-zoroark', 'Hisuian Zoroark', 8, FALSE, 2, NULL, NULL, 'zoroark-hisuian'),
  -- Galarian Stunfisk
  (61801, 618, 'galarian-stunfisk', 'Galarian Stunfisk', 8, FALSE, 2, NULL, NULL, 'stunfisk-galarian'),
  -- Hisuian Braviary
  (62801, 628, 'hisuian-braviary', 'Hisuian Braviary', 8, FALSE, 2, NULL, NULL, 'braviary-hisuian'),
  -- Hisuian Sliggoo
  (70501, 705, 'hisuian-sliggoo', 'Hisuian Sliggoo', 8, FALSE, 2, NULL, NULL, 'sliggoo-hisuian'),
  -- Hisuian Goodra
  (70601, 706, 'hisuian-goodra', 'Hisuian Goodra', 8, FALSE, 2, NULL, NULL, 'goodra-hisuian'),
  -- Hisuian Avalugg
  (71301, 713, 'hisuian-avalugg', 'Hisuian Avalugg', 8, FALSE, 2, NULL, NULL, 'avalugg-hisuian'),
  -- Hisuian Decidueye
  (72401, 724, 'hisuian-decidueye', 'Hisuian Decidueye', 8, FALSE, 2, NULL, NULL, 'decidueye-hisuian'),
  -- Toxtricity (Low Key)
  (84901, 849, 'toxtricity-low-key', 'Toxtricity (Low Key)', 8, FALSE, 2, NULL, NULL, 'toxtricity-low-key'),
  -- Sinistea (Antique)
  (85401, 854, 'sinistea-antique', 'Sinistea (Antique)', 8, FALSE, 2, NULL, NULL, 'sinistea-antique'),
  -- Polteageist (Antique)
  (85501, 855, 'polteageist-antique', 'Polteageist (Antique)', 8, FALSE, 2, NULL, NULL, 'polteageist-antique'),
  -- Indeedee (Female)
  (87601, 876, 'indeedee-female', 'Indeedee (Female)', 8, FALSE, 2, NULL, NULL, 'indeedee-female'),
  -- Urshifu (Rapid Strike)
  (89201, 892, 'urshifu-rapid-strike', 'Urshifu (Rapid Strike)', 8, FALSE, 2, NULL, NULL, 'urshifu-rapid-strike'),
  -- Calyrex (Ice Rider)
  (89801, 898, 'calyrex-ice-rider', 'Calyrex (Ice Rider)', 8, FALSE, 2, NULL, NULL, 'calyrex-ice-rider'),
  -- Calyrex (Shadow Rider)
  (89802, 898, 'calyrex-shadow-rider', 'Calyrex (Shadow Rider)', 8, FALSE, 3, NULL, NULL, 'calyrex-shadow-rider'),
  -- Basculegion (Female)
  (90201, 902, 'basculegion-female', 'Basculegion (Female)', 8, FALSE, 2, NULL, NULL, 'basculegion-female'),
  -- Enamorus (Therian)
  (90501, 905, 'enamorus-therian', 'Enamorus (Therian)', 8, FALSE, 2, NULL, NULL, 'enamorus-therian');
