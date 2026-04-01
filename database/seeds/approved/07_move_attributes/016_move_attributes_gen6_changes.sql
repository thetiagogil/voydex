-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: meta.move_attributes
-- Scope: generation changes
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #020 Bind
    (20, 6, 1, 15, 85, 20, 0, 'physical'),
    -- #026 Jump Kick
    (26, 6, 7, 100, 95, 10, 0, 'physical'),
    -- #033 Tackle
    (33, 6, 1, 50, 100, 35, 0, 'physical'),
    -- #035 Wrap
    (35, 6, 1, 15, 90, 20, 0, 'physical'),
    -- #037 Thrash
    (37, 6, 1, 120, 100, 10, 0, 'physical'),
    -- #050 Disable
    (50, 6, 1, NULL, 100, 20, 0, 'status'),
    -- #080 Petal Dance
    (80, 6, 5, 120, 100, 10, 0, 'special'),
    -- #083 Fire Spin
    (83, 6, 2, 35, 85, 15, 0, 'special'),
    -- #092 Toxic
    (92, 6, 8, NULL, 90, 10, 0, 'status'),
    -- #128 Clamp
    (128, 6, 3, 35, 85, 15, 0, 'physical'),
    -- #136 High Jump Kick
    (136, 6, 7, 130, 90, 10, 0, 'physical'),
    -- #137 Glare
    (137, 6, 1, NULL, 90, 30, 0, 'status'),
    -- #139 Poison Gas
    (139, 6, 8, NULL, 80, 40, 0, 'status'),
    -- #152 Crabhammer
    (152, 6, 3, 90, 90, 10, 0, 'physical'),
    -- #170 Mind Reader
    (170, 6, 1, NULL, NULL, 5, 0, 'status'),
    -- #174 Curse
    (174, 6, 14, NULL, NULL, 10, 0, 'status'),
    -- #178 Cotton Spore
    (178, 6, 5, NULL, 100, 40, 0, 'status'),
    -- #184 Scary Face
    (184, 6, 1, NULL, 100, 10, 0, 'status'),
    -- #198 Bone Rush
    (198, 6, 9, 25, 90, 10, 0, 'physical'),
    -- #200 Outrage
    (200, 6, 15, 120, 100, 10, 0, 'physical'),
    -- #202 Giga Drain
    (202, 6, 5, 75, 100, 10, 0, 'special'),
    -- #210 Fury Cutter
    (210, 6, 12, 20, 95, 20, 0, 'physical'),
    -- #248 Future Sight
    (248, 6, 11, 100, 100, 10, 0, 'special'),
    -- #250 Whirlpool
    (250, 6, 3, 35, 85, 15, 0, 'special'),
    -- #251 Beat Up
    (251, 6, 16, NULL, 100, 10, 0, 'physical'),
    -- #253 Uproar
    (253, 6, 1, 90, 100, 10, 0, 'special'),
    -- #328 Sand Tomb
    (328, 6, 9, 35, 85, 15, 0, 'physical'),
    -- #331 Bullet Seed
    (331, 6, 5, 25, 100, 30, 0, 'physical'),
    -- #333 Icicle Spear
    (333, 6, 6, 25, 100, 30, 0, 'physical'),
    -- #343 Covet
    (343, 6, 1, 60, 100, 40, 0, 'physical'),
    -- #350 Rock Blast
    (350, 6, 13, 25, 90, 10, 0, 'physical'),
    -- #353 Doom Desire
    (353, 6, 17, 140, 100, 5, 0, 'special'),
    -- #364 Feint
    (364, 6, 1, 30, 100, 10, 2, 'physical'),
    -- #382 Me First
    (382, 6, 1, NULL, NULL, 20, 0, 'status'),
    -- #386 Punishment
    (386, 6, 16, NULL, 100, 5, 0, 'physical'),
    -- #387 Last Resort
    (387, 6, 1, 140, 100, 5, 0, 'physical'),
    -- #409 Drain Punch
    (409, 6, 7, 75, 100, 10, 0, 'physical'),
    -- #463 Magma Storm
    (463, 6, 2, 120, 75, 5, 0, 'special');
