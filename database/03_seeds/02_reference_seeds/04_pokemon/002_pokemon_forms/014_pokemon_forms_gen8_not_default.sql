-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_forms
-- Scope: non-default forms
-- Excluded: battle-only forms; cosmetic variants (Zarude Dada, Magearna color, Alcremie, Sinistea/Polteageist).
INSERT INTO
    reference.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, pokemondb_sprite_slug)
VALUES
    -- === Galarian Regional Variants ===
    (5202, 'galarian-meowth', 'Galarian Meowth', 52, 8, NULL, NULL, FALSE, 'meowth-galarian'),
    (7701, 'galarian-ponyta', 'Galarian Ponyta', 77, 8, NULL, NULL, FALSE, 'ponyta-galarian'),
    (7801, 'galarian-rapidash', 'Galarian Rapidash', 78, 8, NULL, NULL, FALSE, 'rapidash-galarian'),
    (7901, 'galarian-slowpoke', 'Galarian Slowpoke', 79, 8, NULL, NULL, FALSE, 'slowpoke-galarian'),
    (8002, 'galarian-slowbro', 'Galarian Slowbro', 80, 8, NULL, NULL, FALSE, 'slowbro-galarian'),
    (8301, 'galarian-farfetchd', 'Galarian Farfetch''d', 83, 8, NULL, NULL, FALSE, 'farfetchd-galarian'),
    (11001, 'galarian-weezing', 'Galarian Weezing', 110, 8, NULL, NULL, FALSE, 'weezing-galarian'),
    (12201, 'galarian-mr-mime', 'Galarian Mr. Mime', 122, 8, NULL, NULL, FALSE, 'mr-mime-galarian'),
    (14401, 'galarian-articuno', 'Galarian Articuno', 144, 8, NULL, NULL, FALSE, 'articuno-galarian'),
    (14501, 'galarian-zapdos', 'Galarian Zapdos', 145, 8, NULL, NULL, FALSE, 'zapdos-galarian'),
    (14601, 'galarian-moltres', 'Galarian Moltres', 146, 8, NULL, NULL, FALSE, 'moltres-galarian'),
    (19901, 'galarian-slowking', 'Galarian Slowking', 199, 8, NULL, NULL, FALSE, 'slowking-galarian'),
    (22201, 'galarian-corsola', 'Galarian Corsola', 222, 8, NULL, NULL, FALSE, 'corsola-galarian'),
    (26301, 'galarian-zigzagoon', 'Galarian Zigzagoon', 263, 8, NULL, NULL, FALSE, 'zigzagoon-galarian'),
    (26401, 'galarian-linoone', 'Galarian Linoone', 264, 8, NULL, NULL, FALSE, 'linoone-galarian'),
    (55401, 'galarian-darumaka', 'Galarian Darumaka', 554, 8, NULL, NULL, FALSE, 'darumaka-galarian'),
    (55502, 'galarian-darmanitan', 'Galarian Darmanitan', 555, 8, NULL, NULL, FALSE, 'darmanitan-galarian'),
    (56201, 'galarian-yamask', 'Galarian Yamask', 562, 8, NULL, NULL, FALSE, 'yamask-galarian'),
    (61801, 'galarian-stunfisk', 'Galarian Stunfisk', 618, 8, NULL, NULL, FALSE, 'stunfisk-galarian'),
    -- === Hisuian Regional Variants ===
    (5801, 'hisuian-growlithe', 'Hisuian Growlithe', 58, 8, NULL, NULL, FALSE, 'growlithe-hisuian'),
    (5901, 'hisuian-arcanine', 'Hisuian Arcanine', 59, 8, NULL, NULL, FALSE, 'arcanine-hisuian'),
    (10001, 'hisuian-voltorb', 'Hisuian Voltorb', 100, 8, NULL, NULL, FALSE, 'voltorb-hisuian'),
    (10101, 'hisuian-electrode', 'Hisuian Electrode', 101, 8, NULL, NULL, FALSE, 'electrode-hisuian'),
    (15701, 'hisuian-typhlosion', 'Hisuian Typhlosion', 157, 8, NULL, NULL, FALSE, 'typhlosion-hisuian'),
    (21101, 'hisuian-qwilfish', 'Hisuian Qwilfish', 211, 8, NULL, NULL, FALSE, 'qwilfish-hisuian'),
    (21501, 'hisuian-sneasel', 'Hisuian Sneasel', 215, 8, NULL, NULL, FALSE, 'sneasel-hisuian'),
    (50301, 'hisuian-samurott', 'Hisuian Samurott', 503, 8, NULL, NULL, FALSE, 'samurott-hisuian'),
    (54901, 'hisuian-lilligant', 'Hisuian Lilligant', 549, 8, NULL, NULL, FALSE, 'lilligant-hisuian'),
    (57001, 'hisuian-zorua', 'Hisuian Zorua', 570, 8, NULL, NULL, FALSE, 'zorua-hisuian'),
    (57101, 'hisuian-zoroark', 'Hisuian Zoroark', 571, 8, NULL, NULL, FALSE, 'zoroark-hisuian'),
    (62801, 'hisuian-braviary', 'Hisuian Braviary', 628, 8, NULL, NULL, FALSE, 'braviary-hisuian'),
    (70501, 'hisuian-sliggoo', 'Hisuian Sliggoo', 705, 8, NULL, NULL, FALSE, 'sliggoo-hisuian'),
    (70601, 'hisuian-goodra', 'Hisuian Goodra', 706, 8, NULL, NULL, FALSE, 'goodra-hisuian'),
    (71301, 'hisuian-avalugg', 'Hisuian Avalugg', 713, 8, NULL, NULL, FALSE, 'avalugg-hisuian'),
    (72401, 'hisuian-decidueye', 'Hisuian Decidueye', 724, 8, NULL, NULL, FALSE, 'decidueye-hisuian'),
    -- === Other Generation 8 Non-Default Forms ===
    -- Basculin White-Striped: introduced in Legends Arceus. Blue-Striped is offset 1 (Generation 5).
    (55002, 'basculin-white-striped', 'Basculin (White-Striped)', 550, 8, NULL, NULL, FALSE, 'basculin-white-striped'),
    -- Toxtricity Low Key: nature-determined at evolution, different moves. Amped is default.
    (84901, 'toxtricity-low-key', 'Toxtricity (Low Key)', 849, 8, NULL, NULL, FALSE, 'toxtricity-low-key'),
    -- Indeedee Female: different stats, abilities, and movepool.
    (87601, 'indeedee-female', 'Indeedee (Female)', 876, 8, NULL, NULL, FALSE, 'indeedee-female'),
    -- Urshifu Rapid Strike: evolution-locked fighting style. Single Strike is default.
    (89201, 'urshifu-rapid-strike', 'Urshifu (Rapid Strike)', 892, 8, NULL, NULL, FALSE, 'urshifu-rapid-strike'),
    -- Calyrex fusions: persistent via Reins of Unity (key item).
    (89801, 'calyrex-ice-rider', 'Calyrex (Ice Rider)', 898, 8, NULL, NULL, FALSE, 'calyrex-ice-rider'),
    (89802, 'calyrex-shadow-rider', 'Calyrex (Shadow Rider)', 898, 8, NULL, NULL, FALSE, 'calyrex-shadow-rider'),
    -- Basculegion Female: different stats from male.
    (90201, 'basculegion-female', 'Basculegion (Female)', 902, 8, NULL, NULL, FALSE, 'basculegion-female'),
    -- Enamorus Therian: persistent via Reveal Glass (key item).
    (90501, 'enamorus-therian', 'Enamorus (Therian)', 905, 8, NULL, NULL, FALSE, 'enamorus-therian'),
    -- Zacian: Crowned Sword, persistent via Rusted Sword (held item). Hero is default (88800).
    (88801, 'zacian-crowned', 'Zacian (Crowned Sword)', 888, 8, NULL, NULL, FALSE, 'zacian-crowned'),
    -- Zamazenta: Crowned Shield, persistent via Rusted Shield (held item). Hero is default (88900).
    (88901, 'zamazenta-crowned', 'Zamazenta (Crowned Shield)', 889, 8, NULL, NULL, FALSE, 'zamazenta-crowned');