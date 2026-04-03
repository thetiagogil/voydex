-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (hgss, VG 10)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    -- Johto gyms
    (1161, 276), -- zephyr-badge → Falkner
    (1162, 277), -- hive-badge → Bugsy
    (1163, 278), -- plain-badge → Whitney
    (1164, 279), -- fog-badge → Morty
    (1165, 280), -- storm-badge → Chuck
    (1166, 281), -- mineral-badge → Jasmine
    (1167, 282), -- glacier-badge → Pryce
    (1168, 283), -- rising-badge → Clair
    -- E4 + Champion
    (1169, 284), -- elite-four-will → Will
    (1170, 285), -- elite-four-koga → Koga
    (1171, 286), -- elite-four-bruno → Bruno
    (1172, 287), -- elite-four-karen → Karen
    (1173, 288), -- champion-lance → Lance
    -- Kanto gyms (post-game)
    (1174, 289), -- thunder-badge-kanto → Lt. Surge
    (1175, 290), -- marsh-badge-kanto → Sabrina
    (1176, 291), -- rainbow-badge-kanto → Erika
    (1177, 292), -- soul-badge-kanto → Janine
    (1178, 293), -- cascade-badge-kanto → Misty
    (1179, 295), -- volcano-badge-kanto → Blaine
    (1180, 296), -- earth-badge-kanto → Blue
    (1181, 294), -- boulder-badge-kanto → Brock
    (1182, 297);

-- red → Red