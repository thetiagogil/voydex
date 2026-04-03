-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    -- Johto gyms
    (201, 150), -- zephyr-badge → Falkner
    (202, 151), -- hive-badge → Bugsy
    (203, 152), -- plain-badge → Whitney
    (204, 153), -- fog-badge → Morty
    (205, 154), -- storm-badge → Chuck
    (206, 155), -- mineral-badge → Jasmine
    (207, 156), -- glacier-badge → Pryce
    (208, 157), -- rising-badge → Clair
    -- E4 + Champion
    (209, 158), -- elite-four-will → Will
    (210, 159), -- elite-four-koga → Koga
    (211, 160), -- elite-four-bruno → Bruno
    (212, 161), -- elite-four-karen → Karen
    (213, 162), -- champion-lance → Lance
    -- Kanto gyms (post-game)
    (215, 163), -- thunder-badge-kanto → Lt. Surge
    (216, 164), -- marsh-badge-kanto → Sabrina
    (217, 165), -- rainbow-badge-kanto → Erika
    (218, 166), -- soul-badge-kanto → Janine
    (219, 167), -- cascade-badge-kanto → Misty
    (220, 169), -- volcano-badge-kanto → Blaine
    (221, 170), -- earth-badge-kanto → Blue
    (222, 168), -- boulder-badge-kanto → Brock
    (223, 171);

-- red → Red