-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Berry, Generation II berry, and individual berry item pages.
-- Cross-check: Serebii berry pages and PokemonDB item pages where available.
-- Machine-readable sanity: PokeAPI item IDs for modern Generation III+ berries only.
-- Scope note: berries relevant as held items, Pokémon biography data, and future team planning filters.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Historical Generation II berries and modern Generation III+ berry catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Berry (Gen II)
  (168, 'gen2-berry', 'Berry (Gen II)', 6, 2, NULL, 168),
  -- Gold Berry
  (169, 'gold-berry', 'Gold Berry', 6, 2, NULL, 169),
  -- PRZCureBerry
  (170, 'przcureberry', 'PRZCureBerry', 6, 2, NULL, 170),
  -- PSNCureBerry
  (171, 'psncureberry', 'PSNCureBerry', 6, 2, NULL, 171),
  -- Burnt Berry
  (172, 'burnt-berry', 'Burnt Berry', 6, 2, NULL, 172),
  -- Ice Berry
  (173, 'ice-berry', 'Ice Berry', 6, 2, NULL, 173),
  -- Mint Berry
  (174, 'mint-berry', 'Mint Berry', 6, 2, NULL, 174),
  -- Bitter Berry
  (175, 'bitter-berry', 'Bitter Berry', 6, 2, NULL, 175),
  -- MiracleBerry
  (176, 'miracleberry', 'MiracleBerry', 6, 2, NULL, 176),
  -- MysteryBerry
  (177, 'mysteryberry', 'MysteryBerry', 6, 2, NULL, 177),
  -- Cheri Berry
  (178, 'cheri-berry', 'Cheri Berry', 6, 3, 126, 178),
  -- Chesto Berry
  (179, 'chesto-berry', 'Chesto Berry', 6, 3, 127, 179),
  -- Pecha Berry
  (180, 'pecha-berry', 'Pecha Berry', 6, 3, 128, 180),
  -- Rawst Berry
  (181, 'rawst-berry', 'Rawst Berry', 6, 3, 129, 181),
  -- Aspear Berry
  (182, 'aspear-berry', 'Aspear Berry', 6, 3, 130, 182),
  -- Leppa Berry
  (183, 'leppa-berry', 'Leppa Berry', 6, 3, 131, 183),
  -- Oran Berry
  (184, 'oran-berry', 'Oran Berry', 6, 3, 132, 184),
  -- Persim Berry
  (185, 'persim-berry', 'Persim Berry', 6, 3, 133, 185),
  -- Lum Berry
  (186, 'lum-berry', 'Lum Berry', 6, 3, 134, 186),
  -- Sitrus Berry
  (187, 'sitrus-berry', 'Sitrus Berry', 6, 3, 135, 187),
  -- Figy Berry
  (188, 'figy-berry', 'Figy Berry', 6, 3, 136, 188),
  -- Wiki Berry
  (189, 'wiki-berry', 'Wiki Berry', 6, 3, 137, 189),
  -- Mago Berry
  (190, 'mago-berry', 'Mago Berry', 6, 3, 138, 190),
  -- Aguav Berry
  (191, 'aguav-berry', 'Aguav Berry', 6, 3, 139, 191),
  -- Iapapa Berry
  (192, 'iapapa-berry', 'Iapapa Berry', 6, 3, 140, 192),
  -- Razz Berry
  (193, 'razz-berry', 'Razz Berry', 6, 3, 141, 193),
  -- Bluk Berry
  (194, 'bluk-berry', 'Bluk Berry', 6, 3, 142, 194),
  -- Nanab Berry
  (195, 'nanab-berry', 'Nanab Berry', 6, 3, 143, 195),
  -- Wepear Berry
  (196, 'wepear-berry', 'Wepear Berry', 6, 3, 144, 196),
  -- Pinap Berry
  (197, 'pinap-berry', 'Pinap Berry', 6, 3, 145, 197),
  -- Pomeg Berry
  (198, 'pomeg-berry', 'Pomeg Berry', 6, 3, 146, 198),
  -- Kelpsy Berry
  (199, 'kelpsy-berry', 'Kelpsy Berry', 6, 3, 147, 199),
  -- Qualot Berry
  (200, 'qualot-berry', 'Qualot Berry', 6, 3, 148, 200),
  -- Hondew Berry
  (201, 'hondew-berry', 'Hondew Berry', 6, 3, 149, 201),
  -- Grepa Berry
  (202, 'grepa-berry', 'Grepa Berry', 6, 3, 150, 202),
  -- Tamato Berry
  (203, 'tamato-berry', 'Tamato Berry', 6, 3, 151, 203),
  -- Cornn Berry
  (204, 'cornn-berry', 'Cornn Berry', 6, 3, 152, 204),
  -- Magost Berry
  (205, 'magost-berry', 'Magost Berry', 6, 3, 153, 205),
  -- Rabuta Berry
  (206, 'rabuta-berry', 'Rabuta Berry', 6, 3, 154, 206),
  -- Nomel Berry
  (207, 'nomel-berry', 'Nomel Berry', 6, 3, 155, 207),
  -- Spelon Berry
  (208, 'spelon-berry', 'Spelon Berry', 6, 3, 156, 208),
  -- Pamtre Berry
  (209, 'pamtre-berry', 'Pamtre Berry', 6, 3, 157, 209),
  -- Watmel Berry
  (210, 'watmel-berry', 'Watmel Berry', 6, 3, 158, 210),
  -- Durin Berry
  (211, 'durin-berry', 'Durin Berry', 6, 3, 159, 211),
  -- Belue Berry
  (212, 'belue-berry', 'Belue Berry', 6, 3, 160, 212),
  -- Occa Berry
  (213, 'occa-berry', 'Occa Berry', 6, 4, 161, 213),
  -- Passho Berry
  (214, 'passho-berry', 'Passho Berry', 6, 4, 162, 214),
  -- Wacan Berry
  (215, 'wacan-berry', 'Wacan Berry', 6, 4, 163, 215),
  -- Rindo Berry
  (216, 'rindo-berry', 'Rindo Berry', 6, 4, 164, 216),
  -- Yache Berry
  (217, 'yache-berry', 'Yache Berry', 6, 4, 165, 217),
  -- Chople Berry
  (218, 'chople-berry', 'Chople Berry', 6, 4, 166, 218),
  -- Kebia Berry
  (219, 'kebia-berry', 'Kebia Berry', 6, 4, 167, 219),
  -- Shuca Berry
  (220, 'shuca-berry', 'Shuca Berry', 6, 4, 168, 220),
  -- Coba Berry
  (221, 'coba-berry', 'Coba Berry', 6, 4, 169, 221),
  -- Payapa Berry
  (222, 'payapa-berry', 'Payapa Berry', 6, 4, 170, 222),
  -- Tanga Berry
  (223, 'tanga-berry', 'Tanga Berry', 6, 4, 171, 223),
  -- Charti Berry
  (224, 'charti-berry', 'Charti Berry', 6, 4, 172, 224),
  -- Kasib Berry
  (225, 'kasib-berry', 'Kasib Berry', 6, 4, 173, 225),
  -- Haban Berry
  (226, 'haban-berry', 'Haban Berry', 6, 4, 174, 226),
  -- Colbur Berry
  (227, 'colbur-berry', 'Colbur Berry', 6, 4, 175, 227),
  -- Babiri Berry
  (228, 'babiri-berry', 'Babiri Berry', 6, 4, 176, 228),
  -- Chilan Berry
  (229, 'chilan-berry', 'Chilan Berry', 6, 4, 177, 229),
  -- Liechi Berry
  (230, 'liechi-berry', 'Liechi Berry', 6, 3, 178, 230),
  -- Ganlon Berry
  (231, 'ganlon-berry', 'Ganlon Berry', 6, 3, 179, 231),
  -- Salac Berry
  (232, 'salac-berry', 'Salac Berry', 6, 3, 180, 232),
  -- Petaya Berry
  (233, 'petaya-berry', 'Petaya Berry', 6, 3, 181, 233),
  -- Apicot Berry
  (234, 'apicot-berry', 'Apicot Berry', 6, 3, 182, 234),
  -- Lansat Berry
  (235, 'lansat-berry', 'Lansat Berry', 6, 3, 183, 235),
  -- Starf Berry
  (236, 'starf-berry', 'Starf Berry', 6, 3, 184, 236),
  -- Enigma Berry
  (237, 'enigma-berry', 'Enigma Berry', 6, 3, 185, 237),
  -- Micle Berry
  (238, 'micle-berry', 'Micle Berry', 6, 4, 186, 238),
  -- Custap Berry
  (239, 'custap-berry', 'Custap Berry', 6, 4, 187, 239),
  -- Jaboca Berry
  (240, 'jaboca-berry', 'Jaboca Berry', 6, 4, 188, 240),
  -- Rowap Berry
  (241, 'rowap-berry', 'Rowap Berry', 6, 4, 189, 241),
  -- Roseli Berry
  (242, 'roseli-berry', 'Roseli Berry', 6, 6, 723, 242),
  -- Kee Berry
  (243, 'kee-berry', 'Kee Berry', 6, 6, 724, 243),
  -- Maranga Berry
  (244, 'maranga-berry', 'Maranga Berry', 6, 6, 725, 244);
