-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.pokemon_forms
-- Scope: non-default forms
-- Excluded: Ultra Necrozma (battle-only transformation); Zygarde Complete (battle-only — Power Construct triggers in battle).
-- Excluded: Wishiwashi School, Minior Core, Mimikyu Busted (battle-only); Silvally types (no stat difference).
INSERT INTO
    reference.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, pokemondb_sprite_slug)
VALUES
    -- === Alolan Regional Variants ===
    (1901, 'alolan-rattata', 'Alolan Rattata', 19, 7, NULL, NULL, FALSE, 'rattata-alolan'),
    (2001, 'alolan-raticate', 'Alolan Raticate', 20, 7, NULL, NULL, FALSE, 'raticate-alolan'),
    (2601, 'alolan-raichu', 'Alolan Raichu', 26, 7, NULL, NULL, FALSE, 'raichu-alolan'),
    (2701, 'alolan-sandshrew', 'Alolan Sandshrew', 27, 7, NULL, NULL, FALSE, 'sandshrew-alolan'),
    (2801, 'alolan-sandslash', 'Alolan Sandslash', 28, 7, NULL, NULL, FALSE, 'sandslash-alolan'),
    (3701, 'alolan-vulpix', 'Alolan Vulpix', 37, 7, NULL, NULL, FALSE, 'vulpix-alolan'),
    (3801, 'alolan-ninetales', 'Alolan Ninetales', 38, 7, NULL, NULL, FALSE, 'ninetales-alolan'),
    (5001, 'alolan-diglett', 'Alolan Diglett', 50, 7, NULL, NULL, FALSE, 'diglett-alolan'),
    (5101, 'alolan-dugtrio', 'Alolan Dugtrio', 51, 7, NULL, NULL, FALSE, 'dugtrio-alolan'),
    (5201, 'alolan-meowth', 'Alolan Meowth', 52, 7, NULL, NULL, FALSE, 'meowth-alolan'),
    (5301, 'alolan-persian', 'Alolan Persian', 53, 7, NULL, NULL, FALSE, 'persian-alolan'),
    (7401, 'alolan-geodude', 'Alolan Geodude', 74, 7, NULL, NULL, FALSE, 'geodude-alolan'),
    (7501, 'alolan-graveler', 'Alolan Graveler', 75, 7, NULL, NULL, FALSE, 'graveler-alolan'),
    (7601, 'alolan-golem', 'Alolan Golem', 76, 7, NULL, NULL, FALSE, 'golem-alolan'),
    (8801, 'alolan-grimer', 'Alolan Grimer', 88, 7, NULL, NULL, FALSE, 'grimer-alolan'),
    (8901, 'alolan-muk', 'Alolan Muk', 89, 7, NULL, NULL, FALSE, 'muk-alolan'),
    (10301, 'alolan-exeggutor', 'Alolan Exeggutor', 103, 7, NULL, NULL, FALSE, 'exeggutor-alolan'),
    (10501, 'alolan-marowak', 'Alolan Marowak', 105, 7, NULL, NULL, FALSE, 'marowak-alolan'),
    -- === Oricorio Styles ===
    -- Baile Style is default (74100). Other styles are persistent via Nectar items.
    (74101, 'oricorio-pom-pom', 'Oricorio (Pom-Pom)', 741, 7, NULL, NULL, FALSE, 'oricorio-pom-pom'),
    (74102, 'oricorio-pau', 'Oricorio (Pa''u)', 741, 7, NULL, NULL, FALSE, 'oricorio-pau'),
    (74103, 'oricorio-sensu', 'Oricorio (Sensu)', 741, 7, NULL, NULL, FALSE, 'oricorio-sensu'),
    -- === Lycanroc Forms ===
    -- Midday is default (74500). Midnight and Dusk are evolution-locked.
    (74501, 'lycanroc-midnight', 'Lycanroc (Midnight)', 745, 7, NULL, NULL, FALSE, 'lycanroc-midnight'),
    (74502, 'lycanroc-dusk', 'Lycanroc (Dusk)', 745, 7, NULL, NULL, FALSE, 'lycanroc-dusk'),
    -- === Zygarde Forms (species from Gen 6, forms introduced in Gen 7) ===
    -- 50% Forme is default (71800). 10% has different stats. Complete excluded (battle-only).
    (71801, 'zygarde-10-percent', 'Zygarde (10% Forme)', 718, 7, NULL, NULL, FALSE, 'zygarde-10'),
    -- === Necrozma Fusions ===
    -- Normal is default (80000). Dusk Mane/Dawn Wings via N-Solarizer/N-Lunarizer (key items).
    (80001, 'necrozma-dusk-mane', 'Necrozma (Dusk Mane)', 800, 7, NULL, NULL, FALSE, 'necrozma-dusk-mane'),
    (80002, 'necrozma-dawn-wings', 'Necrozma (Dawn Wings)', 800, 7, NULL, NULL, FALSE, 'necrozma-dawn-wings');