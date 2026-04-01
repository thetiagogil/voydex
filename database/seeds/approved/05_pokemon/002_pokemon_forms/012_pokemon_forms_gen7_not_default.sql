-- Source: Bulbapedia
-- Generation: 7
-- Scope: non-default forms
-- Table: meta.pokemon_forms
-- Rows: 27
--
-- Non-default forms introduced in Gen 7.
-- id = species_id * 100 + form_offset (Bulbapedia form order).
-- Includes: 18 Alolan regional variants, Oricorio styles, Lycanroc forms,
--   Zygarde 10%/Complete (introduced gen 7), Necrozma fusions.
-- Excluded: Ultra Necrozma (Ultranecrozium Z held item + battle trigger),
--   Wishiwashi School (battle-only), Minior Core (battle-only),
--   Mimikyu Busted (battle-only), Silvally types (held item, no stat difference).
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- === Alolan Regional Variants ===
    (1901, 'alola-rattata', 'Alolan Rattata', 19, 7, NULL, NULL, FALSE, NULL),
    (2001, 'alola-raticate', 'Alolan Raticate', 20, 7, NULL, NULL, FALSE, NULL),
    (2601, 'alola-raichu', 'Alolan Raichu', 26, 7, NULL, NULL, FALSE, NULL),
    (2701, 'alola-sandshrew', 'Alolan Sandshrew', 27, 7, NULL, NULL, FALSE, NULL),
    (2801, 'alola-sandslash', 'Alolan Sandslash', 28, 7, NULL, NULL, FALSE, NULL),
    (3701, 'alola-vulpix', 'Alolan Vulpix', 37, 7, NULL, NULL, FALSE, NULL),
    (3801, 'alola-ninetales', 'Alolan Ninetales', 38, 7, NULL, NULL, FALSE, NULL),
    (5001, 'alola-diglett', 'Alolan Diglett', 50, 7, NULL, NULL, FALSE, NULL),
    (5101, 'alola-dugtrio', 'Alolan Dugtrio', 51, 7, NULL, NULL, FALSE, NULL),
    (5201, 'alola-meowth', 'Alolan Meowth', 52, 7, NULL, NULL, FALSE, NULL),
    (5301, 'alola-persian', 'Alolan Persian', 53, 7, NULL, NULL, FALSE, NULL),
    (7401, 'alola-geodude', 'Alolan Geodude', 74, 7, NULL, NULL, FALSE, NULL),
    (7501, 'alola-graveler', 'Alolan Graveler', 75, 7, NULL, NULL, FALSE, NULL),
    (7601, 'alola-golem', 'Alolan Golem', 76, 7, NULL, NULL, FALSE, NULL),
    (8801, 'alola-grimer', 'Alolan Grimer', 88, 7, NULL, NULL, FALSE, NULL),
    (8901, 'alola-muk', 'Alolan Muk', 89, 7, NULL, NULL, FALSE, NULL),
    (10301, 'alola-exeggutor', 'Alolan Exeggutor', 103, 7, NULL, NULL, FALSE, NULL),
    (10501, 'alola-marowak', 'Alolan Marowak', 105, 7, NULL, NULL, FALSE, NULL),
    -- === Oricorio Styles ===
    -- Baile Style is default (74100). Other styles are persistent via Nectar items.
    (74101, 'oricorio-pom-pom', 'Oricorio (Pom-Pom)', 741, 7, NULL, NULL, FALSE, NULL),
    (74102, 'oricorio-pau', 'Oricorio (Pa''u)', 741, 7, NULL, NULL, FALSE, NULL),
    (74103, 'oricorio-sensu', 'Oricorio (Sensu)', 741, 7, NULL, NULL, FALSE, NULL),
    -- === Lycanroc Forms ===
    -- Midday is default (74500). Midnight and Dusk are evolution-locked.
    (74501, 'lycanroc-midnight', 'Lycanroc (Midnight)', 745, 7, NULL, NULL, FALSE, NULL),
    (74502, 'lycanroc-dusk', 'Lycanroc (Dusk)', 745, 7, NULL, NULL, FALSE, NULL),
    -- === Zygarde Forms (species from Gen 6, forms introduced in Gen 7) ===
    -- 50% Forme is default (71800). 10% and Complete have different stats.
    (71801, 'zygarde-10-percent', 'Zygarde (10% Forme)', 718, 7, NULL, NULL, FALSE, NULL),
    (71802, 'zygarde-complete', 'Zygarde (Complete Forme)', 718, 7, NULL, NULL, FALSE, NULL),
    -- === Necrozma Fusions ===
    -- Normal is default (80000). Dusk Mane/Dawn Wings via N-Solarizer/N-Lunarizer (key items).
    (80001, 'necrozma-dusk-mane', 'Necrozma (Dusk Mane)', 800, 7, NULL, NULL, FALSE, NULL),
    (80002, 'necrozma-dawn-wings', 'Necrozma (Dawn Wings)', 800, 7, NULL, NULL, FALSE, NULL);