-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Berry, Generation II berry, and individual berry item pages.
-- Cross-check: Serebii berry pages and PokemonDB item pages where available.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_category_memberships
-- Scope: Berry and held-item category memberships for berry items.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Berry (Gen II) -> Held Items
  (168, 2),
  -- Berry (Gen II) -> Berries
  (168, 6),
  -- Gold Berry -> Held Items
  (169, 2),
  -- Gold Berry -> Berries
  (169, 6),
  -- PRZCureBerry -> Held Items
  (170, 2),
  -- PRZCureBerry -> Berries
  (170, 6),
  -- PSNCureBerry -> Held Items
  (171, 2),
  -- PSNCureBerry -> Berries
  (171, 6),
  -- Burnt Berry -> Held Items
  (172, 2),
  -- Burnt Berry -> Berries
  (172, 6),
  -- Ice Berry -> Held Items
  (173, 2),
  -- Ice Berry -> Berries
  (173, 6),
  -- Mint Berry -> Held Items
  (174, 2),
  -- Mint Berry -> Berries
  (174, 6),
  -- Bitter Berry -> Held Items
  (175, 2),
  -- Bitter Berry -> Berries
  (175, 6),
  -- MiracleBerry -> Held Items
  (176, 2),
  -- MiracleBerry -> Berries
  (176, 6),
  -- MysteryBerry -> Held Items
  (177, 2),
  -- MysteryBerry -> Berries
  (177, 6),
  -- Cheri Berry -> Held Items
  (178, 2),
  -- Cheri Berry -> Berries
  (178, 6),
  -- Chesto Berry -> Held Items
  (179, 2),
  -- Chesto Berry -> Berries
  (179, 6),
  -- Pecha Berry -> Held Items
  (180, 2),
  -- Pecha Berry -> Berries
  (180, 6),
  -- Rawst Berry -> Held Items
  (181, 2),
  -- Rawst Berry -> Berries
  (181, 6),
  -- Aspear Berry -> Held Items
  (182, 2),
  -- Aspear Berry -> Berries
  (182, 6),
  -- Leppa Berry -> Held Items
  (183, 2),
  -- Leppa Berry -> Berries
  (183, 6),
  -- Oran Berry -> Held Items
  (184, 2),
  -- Oran Berry -> Berries
  (184, 6),
  -- Persim Berry -> Held Items
  (185, 2),
  -- Persim Berry -> Berries
  (185, 6),
  -- Lum Berry -> Held Items
  (186, 2),
  -- Lum Berry -> Berries
  (186, 6),
  -- Sitrus Berry -> Held Items
  (187, 2),
  -- Sitrus Berry -> Berries
  (187, 6),
  -- Figy Berry -> Held Items
  (188, 2),
  -- Figy Berry -> Berries
  (188, 6),
  -- Wiki Berry -> Held Items
  (189, 2),
  -- Wiki Berry -> Berries
  (189, 6),
  -- Mago Berry -> Held Items
  (190, 2),
  -- Mago Berry -> Berries
  (190, 6),
  -- Aguav Berry -> Held Items
  (191, 2),
  -- Aguav Berry -> Berries
  (191, 6),
  -- Iapapa Berry -> Held Items
  (192, 2),
  -- Iapapa Berry -> Berries
  (192, 6),
  -- Razz Berry -> Held Items
  (193, 2),
  -- Razz Berry -> Berries
  (193, 6),
  -- Bluk Berry -> Held Items
  (194, 2),
  -- Bluk Berry -> Berries
  (194, 6),
  -- Nanab Berry -> Held Items
  (195, 2),
  -- Nanab Berry -> Berries
  (195, 6),
  -- Wepear Berry -> Held Items
  (196, 2),
  -- Wepear Berry -> Berries
  (196, 6),
  -- Pinap Berry -> Held Items
  (197, 2),
  -- Pinap Berry -> Berries
  (197, 6),
  -- Pomeg Berry -> Held Items
  (198, 2),
  -- Pomeg Berry -> Berries
  (198, 6),
  -- Kelpsy Berry -> Held Items
  (199, 2),
  -- Kelpsy Berry -> Berries
  (199, 6),
  -- Qualot Berry -> Held Items
  (200, 2),
  -- Qualot Berry -> Berries
  (200, 6),
  -- Hondew Berry -> Held Items
  (201, 2),
  -- Hondew Berry -> Berries
  (201, 6),
  -- Grepa Berry -> Held Items
  (202, 2),
  -- Grepa Berry -> Berries
  (202, 6),
  -- Tamato Berry -> Held Items
  (203, 2),
  -- Tamato Berry -> Berries
  (203, 6),
  -- Cornn Berry -> Held Items
  (204, 2),
  -- Cornn Berry -> Berries
  (204, 6),
  -- Magost Berry -> Held Items
  (205, 2),
  -- Magost Berry -> Berries
  (205, 6),
  -- Rabuta Berry -> Held Items
  (206, 2),
  -- Rabuta Berry -> Berries
  (206, 6),
  -- Nomel Berry -> Held Items
  (207, 2),
  -- Nomel Berry -> Berries
  (207, 6),
  -- Spelon Berry -> Held Items
  (208, 2),
  -- Spelon Berry -> Berries
  (208, 6),
  -- Pamtre Berry -> Held Items
  (209, 2),
  -- Pamtre Berry -> Berries
  (209, 6),
  -- Watmel Berry -> Held Items
  (210, 2),
  -- Watmel Berry -> Berries
  (210, 6),
  -- Durin Berry -> Held Items
  (211, 2),
  -- Durin Berry -> Berries
  (211, 6),
  -- Belue Berry -> Held Items
  (212, 2),
  -- Belue Berry -> Berries
  (212, 6),
  -- Occa Berry -> Held Items
  (213, 2),
  -- Occa Berry -> Berries
  (213, 6),
  -- Passho Berry -> Held Items
  (214, 2),
  -- Passho Berry -> Berries
  (214, 6),
  -- Wacan Berry -> Held Items
  (215, 2),
  -- Wacan Berry -> Berries
  (215, 6),
  -- Rindo Berry -> Held Items
  (216, 2),
  -- Rindo Berry -> Berries
  (216, 6),
  -- Yache Berry -> Held Items
  (217, 2),
  -- Yache Berry -> Berries
  (217, 6),
  -- Chople Berry -> Held Items
  (218, 2),
  -- Chople Berry -> Berries
  (218, 6),
  -- Kebia Berry -> Held Items
  (219, 2),
  -- Kebia Berry -> Berries
  (219, 6),
  -- Shuca Berry -> Held Items
  (220, 2),
  -- Shuca Berry -> Berries
  (220, 6),
  -- Coba Berry -> Held Items
  (221, 2),
  -- Coba Berry -> Berries
  (221, 6),
  -- Payapa Berry -> Held Items
  (222, 2),
  -- Payapa Berry -> Berries
  (222, 6),
  -- Tanga Berry -> Held Items
  (223, 2),
  -- Tanga Berry -> Berries
  (223, 6),
  -- Charti Berry -> Held Items
  (224, 2),
  -- Charti Berry -> Berries
  (224, 6),
  -- Kasib Berry -> Held Items
  (225, 2),
  -- Kasib Berry -> Berries
  (225, 6),
  -- Haban Berry -> Held Items
  (226, 2),
  -- Haban Berry -> Berries
  (226, 6),
  -- Colbur Berry -> Held Items
  (227, 2),
  -- Colbur Berry -> Berries
  (227, 6),
  -- Babiri Berry -> Held Items
  (228, 2),
  -- Babiri Berry -> Berries
  (228, 6),
  -- Chilan Berry -> Held Items
  (229, 2),
  -- Chilan Berry -> Berries
  (229, 6),
  -- Liechi Berry -> Held Items
  (230, 2),
  -- Liechi Berry -> Berries
  (230, 6),
  -- Ganlon Berry -> Held Items
  (231, 2),
  -- Ganlon Berry -> Berries
  (231, 6),
  -- Salac Berry -> Held Items
  (232, 2),
  -- Salac Berry -> Berries
  (232, 6),
  -- Petaya Berry -> Held Items
  (233, 2),
  -- Petaya Berry -> Berries
  (233, 6),
  -- Apicot Berry -> Held Items
  (234, 2),
  -- Apicot Berry -> Berries
  (234, 6),
  -- Lansat Berry -> Held Items
  (235, 2),
  -- Lansat Berry -> Berries
  (235, 6),
  -- Starf Berry -> Held Items
  (236, 2),
  -- Starf Berry -> Berries
  (236, 6),
  -- Enigma Berry -> Held Items
  (237, 2),
  -- Enigma Berry -> Berries
  (237, 6),
  -- Micle Berry -> Held Items
  (238, 2),
  -- Micle Berry -> Berries
  (238, 6),
  -- Custap Berry -> Held Items
  (239, 2),
  -- Custap Berry -> Berries
  (239, 6),
  -- Jaboca Berry -> Held Items
  (240, 2),
  -- Jaboca Berry -> Berries
  (240, 6),
  -- Rowap Berry -> Held Items
  (241, 2),
  -- Rowap Berry -> Berries
  (241, 6),
  -- Roseli Berry -> Held Items
  (242, 2),
  -- Roseli Berry -> Berries
  (242, 6),
  -- Kee Berry -> Held Items
  (243, 2),
  -- Kee Berry -> Berries
  (243, 6),
  -- Maranga Berry -> Held Items
  (244, 2),
  -- Maranga Berry -> Berries
  (244, 6);
