-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.pokemon_forms
-- Scope: non-default forms
-- Excluded: battle-only forms; cosmetic variants (Zarude Dada, Magearna color, Alcremie, Sinistea/Polteageist).
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- === Galarian Regional Variants ===
    (5202, 'galar-meowth', 'Galarian Meowth', 52, 8, NULL, NULL, FALSE, NULL),
    (7701, 'galar-ponyta', 'Galarian Ponyta', 77, 8, NULL, NULL, FALSE, NULL),
    (7801, 'galar-rapidash', 'Galarian Rapidash', 78, 8, NULL, NULL, FALSE, NULL),
    (7901, 'galar-slowpoke', 'Galarian Slowpoke', 79, 8, NULL, NULL, FALSE, NULL),
    (8002, 'galar-slowbro', 'Galarian Slowbro', 80, 8, NULL, NULL, FALSE, NULL),
    (8301, 'galar-farfetchd', 'Galarian Farfetch''d', 83, 8, NULL, NULL, FALSE, NULL),
    (11001, 'galar-weezing', 'Galarian Weezing', 110, 8, NULL, NULL, FALSE, NULL),
    (12201, 'galar-mr-mime', 'Galarian Mr. Mime', 122, 8, NULL, NULL, FALSE, NULL),
    (14401, 'galar-articuno', 'Galarian Articuno', 144, 8, NULL, NULL, FALSE, NULL),
    (14501, 'galar-zapdos', 'Galarian Zapdos', 145, 8, NULL, NULL, FALSE, NULL),
    (14601, 'galar-moltres', 'Galarian Moltres', 146, 8, NULL, NULL, FALSE, NULL),
    (19901, 'galar-slowking', 'Galarian Slowking', 199, 8, NULL, NULL, FALSE, NULL),
    (22201, 'galar-corsola', 'Galarian Corsola', 222, 8, NULL, NULL, FALSE, NULL),
    (26301, 'galar-zigzagoon', 'Galarian Zigzagoon', 263, 8, NULL, NULL, FALSE, NULL),
    (26401, 'galar-linoone', 'Galarian Linoone', 264, 8, NULL, NULL, FALSE, NULL),
    (55401, 'galar-darumaka', 'Galarian Darumaka', 554, 8, NULL, NULL, FALSE, NULL),
    (55502, 'galar-darmanitan', 'Galarian Darmanitan', 555, 8, NULL, NULL, FALSE, NULL),
    (56201, 'galar-yamask', 'Galarian Yamask', 562, 8, NULL, NULL, FALSE, NULL),
    (61801, 'galar-stunfisk', 'Galarian Stunfisk', 618, 8, NULL, NULL, FALSE, NULL),
    -- === Hisuian Regional Variants ===
    (5801, 'hisui-growlithe', 'Hisuian Growlithe', 58, 8, NULL, NULL, FALSE, NULL),
    (5901, 'hisui-arcanine', 'Hisuian Arcanine', 59, 8, NULL, NULL, FALSE, NULL),
    (10001, 'hisui-voltorb', 'Hisuian Voltorb', 100, 8, NULL, NULL, FALSE, NULL),
    (10101, 'hisui-electrode', 'Hisuian Electrode', 101, 8, NULL, NULL, FALSE, NULL),
    (15701, 'hisui-typhlosion', 'Hisuian Typhlosion', 157, 8, NULL, NULL, FALSE, NULL),
    (21101, 'hisui-qwilfish', 'Hisuian Qwilfish', 211, 8, NULL, NULL, FALSE, NULL),
    (21501, 'hisui-sneasel', 'Hisuian Sneasel', 215, 8, NULL, NULL, FALSE, NULL),
    (50301, 'hisui-samurott', 'Hisuian Samurott', 503, 8, NULL, NULL, FALSE, NULL),
    (54901, 'hisui-lilligant', 'Hisuian Lilligant', 549, 8, NULL, NULL, FALSE, NULL),
    (57001, 'hisui-zorua', 'Hisuian Zorua', 570, 8, NULL, NULL, FALSE, NULL),
    (57101, 'hisui-zoroark', 'Hisuian Zoroark', 571, 8, NULL, NULL, FALSE, NULL),
    (62801, 'hisui-braviary', 'Hisuian Braviary', 628, 8, NULL, NULL, FALSE, NULL),
    (70501, 'hisui-sliggoo', 'Hisuian Sliggoo', 705, 8, NULL, NULL, FALSE, NULL),
    (70601, 'hisui-goodra', 'Hisuian Goodra', 706, 8, NULL, NULL, FALSE, NULL),
    (71301, 'hisui-avalugg', 'Hisuian Avalugg', 713, 8, NULL, NULL, FALSE, NULL),
    (72401, 'hisui-decidueye', 'Hisuian Decidueye', 724, 8, NULL, NULL, FALSE, NULL),
    -- === Other Gen 8 Non-Default Forms ===
    -- Basculin White-Striped: introduced in Legends Arceus. Blue-Striped is offset 1 (Gen 5).
    (55002, 'basculin-white-striped', 'Basculin (White-Striped)', 550, 8, NULL, NULL, FALSE, NULL),
    -- Toxtricity Low Key: nature-determined at evolution, different moves. Amped is default.
    (84901, 'toxtricity-low-key', 'Toxtricity (Low Key)', 849, 8, NULL, NULL, FALSE, NULL),
    -- Indeedee Female: different stats, abilities, and movepool.
    (87601, 'indeedee-female', 'Indeedee (Female)', 876, 8, NULL, NULL, FALSE, NULL),
    -- Urshifu Rapid Strike: evolution-locked fighting style. Single Strike is default.
    (89201, 'urshifu-rapid-strike', 'Urshifu (Rapid Strike)', 892, 8, NULL, NULL, FALSE, NULL),
    -- Calyrex fusions: persistent via Reins of Unity (key item).
    (89801, 'calyrex-ice-rider', 'Calyrex (Ice Rider)', 898, 8, NULL, NULL, FALSE, NULL),
    (89802, 'calyrex-shadow-rider', 'Calyrex (Shadow Rider)', 898, 8, NULL, NULL, FALSE, NULL),
    -- Basculegion Female: different stats from male.
    (90201, 'basculegion-female', 'Basculegion (Female)', 902, 8, NULL, NULL, FALSE, NULL),
    -- Enamorus Therian: persistent via Reveal Glass (key item).
    (90501, 'enamorus-therian', 'Enamorus (Therian)', 905, 8, NULL, NULL, FALSE, NULL),
    -- Zacian: Crowned Sword, persistent via Rusted Sword (held item). Hero is default (88800).
    (88801, 'zacian-crowned-sword', 'Zacian (Crowned Sword)', 888, 8, NULL, NULL, FALSE, NULL),
    -- Zamazenta: Crowned Shield, persistent via Rusted Shield (held item). Hero is default (88900).
    (88901, 'zamazenta-crowned-shield', 'Zamazenta (Crowned Shield)', 889, 8, NULL, NULL, FALSE, NULL);