-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (gs, VG 3)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    -- Johto gyms
    (1031, 128), -- zephyr-badge → Falkner
    (1032, 129), -- hive-badge → Bugsy
    (1033, 130), -- plain-badge → Whitney
    (1034, 131), -- fog-badge → Morty
    (1035, 132), -- storm-badge → Chuck
    (1036, 133), -- mineral-badge → Jasmine
    (1037, 134), -- glacier-badge → Pryce
    (1038, 135), -- rising-badge → Clair
    -- E4 + Champion
    (1039, 136), -- elite-four-will → Will
    (1040, 137), -- elite-four-koga → Koga
    (1041, 138), -- elite-four-bruno → Bruno
    (1042, 139), -- elite-four-karen → Karen
    (1043, 140), -- champion-lance → Lance
    -- Kanto gyms (post-game)
    (1044, 141), -- thunder-badge-kanto → Lt. Surge
    (1045, 142), -- marsh-badge-kanto → Sabrina
    (1046, 143), -- rainbow-badge-kanto → Erika
    (1047, 144), -- soul-badge-kanto → Janine
    (1048, 145), -- cascade-badge-kanto → Misty
    (1049, 147), -- volcano-badge-kanto → Blaine
    (1050, 148), -- earth-badge-kanto → Blue
    (1051, 146), -- boulder-badge-kanto → Brock
    (1052, 149);

-- red → Red