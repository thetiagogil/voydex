-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.move_attributes
-- Scope: generation changes
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #014 Swords Dance
    (14, 7, 1, NULL, NULL, 20, 0, 'status'),
    -- #018 Whirlwind
    (18, 7, 1, NULL, NULL, 20, -6, 'status'),
    -- #022 Vine Whip
    (22, 7, 5, 45, 100, 25, 0, 'physical'),
    -- #042 Pin Missile
    (42, 7, 12, 25, 95, 20, 0, 'physical'),
    -- #046 Roar
    (46, 7, 1, NULL, NULL, 20, -6, 'status'),
    -- #053 Flamethrower
    (53, 7, 2, 90, 100, 15, 0, 'special'),
    -- #056 Hydro Pump
    (56, 7, 3, 110, 80, 5, 0, 'special'),
    -- #057 Surf
    (57, 7, 3, 90, 100, 15, 0, 'special'),
    -- #058 Ice Beam
    (58, 7, 6, 90, 100, 10, 0, 'special'),
    -- #059 Blizzard
    (59, 7, 6, 110, 70, 5, 0, 'special'),
    -- #066 Submission
    (66, 7, 7, 80, 80, 20, 0, 'physical'),
    -- #074 Growth
    (74, 7, 1, NULL, NULL, 20, 0, 'status'),
    -- #085 Thunderbolt
    (85, 7, 4, 90, 100, 15, 0, 'special'),
    -- #087 Thunder
    (87, 7, 4, 110, 70, 10, 0, 'special'),
    -- #107 Minimize
    (107, 7, 1, NULL, NULL, 10, 0, 'status'),
    -- #112 Barrier
    (112, 7, 11, NULL, NULL, 20, 0, 'status'),
    -- #122 Lick
    (122, 7, 14, 30, 100, 30, 0, 'physical'),
    -- #123 Smog
    (123, 7, 8, 30, 70, 20, 0, 'special'),
    -- #126 Fire Blast
    (126, 7, 2, 110, 85, 5, 0, 'special'),
    -- #130 Skull Bash
    (130, 7, 1, 130, 100, 10, 0, 'physical'),
    -- #137 Glare
    (137, 7, 1, NULL, 100, 30, 0, 'status'),
    -- #139 Poison Gas
    (139, 7, 8, NULL, 90, 40, 0, 'status'),
    -- #145 Bubble
    (145, 7, 3, 40, 100, 30, 0, 'special'),
    -- #149 Psywave
    (149, 7, 11, NULL, 100, 15, 0, 'special'),
    -- #151 Acid Armor
    (151, 7, 8, NULL, NULL, 20, 0, 'status'),
    -- #152 Crabhammer
    (152, 7, 3, 100, 90, 10, 0, 'physical'),
    -- #168 Thief
    (168, 7, 16, 60, 100, 25, 0, 'physical'),
    -- #173 Snore
    (173, 7, 1, 50, 100, 15, 0, 'special'),
    -- #186 Sweet Kiss
    (186, 7, 18, NULL, 75, 10, 0, 'status'),
    -- #204 Charm
    (204, 7, 18, NULL, 100, 20, 0, 'status'),
    -- #210 Fury Cutter
    (210, 7, 12, 40, 95, 20, 0, 'physical'),
    -- #236 Moonlight
    (236, 7, 18, NULL, NULL, 5, 0, 'status'),
    -- #237 Hidden Power
    (237, 7, 1, 60, 100, 15, 0, 'special'),
    -- #248 Future Sight
    (248, 7, 11, 120, 100, 10, 0, 'special'),
    -- #257 Heat Wave
    (257, 7, 2, 95, 90, 10, 0, 'special'),
    -- #261 Will-O-Wisp
    (261, 7, 2, NULL, 85, 15, 0, 'status'),
    -- #265 Smelling Salts
    (265, 7, 1, 70, 100, 10, 0, 'physical'),
    -- #282 Knock Off
    (282, 7, 16, 65, 100, 20, 0, 'physical'),
    -- #309 Meteor Mash
    (309, 7, 17, 90, 90, 10, 0, 'physical'),
    -- #314 Air Cutter
    (314, 7, 10, 60, 95, 25, 0, 'special'),
    -- #315 Overheat
    (315, 7, 2, 130, 90, 5, 0, 'special'),
    -- #317 Rock Tomb
    (317, 7, 13, 60, 95, 15, 0, 'physical'),
    -- #326 Extrasensory
    (326, 7, 11, 80, 100, 20, 0, 'special'),
    -- #330 Muddy Water
    (330, 7, 3, 90, 85, 10, 0, 'special'),
    -- #343 Covet
    (343, 7, 1, 60, 100, 25, 0, 'physical'),
    -- #358 Wake-Up Slap
    (358, 7, 7, 70, 100, 10, 0, 'physical'),
    -- #366 Tailwind
    (366, 7, 10, NULL, NULL, 15, 0, 'status'),
    -- #372 Assurance
    (372, 7, 16, 60, 100, 10, 0, 'physical'),
    -- #375 Psycho Shift
    (375, 7, 11, NULL, 100, 10, 0, 'status'),
    -- #396 Aura Sphere
    (396, 7, 7, 80, NULL, 20, 0, 'special'),
    -- #403 Air Slash
    (403, 7, 10, 75, 95, 15, 0, 'special'),
    -- #406 Dragon Pulse
    (406, 7, 15, 85, 100, 10, 0, 'special'),
    -- #408 Power Gem
    (408, 7, 13, 80, 100, 20, 0, 'special'),
    -- #412 Energy Ball
    (412, 7, 5, 90, 100, 10, 0, 'special'),
    -- #434 Draco Meteor
    (434, 7, 15, 130, 90, 5, 0, 'special'),
    -- #437 Leaf Storm
    (437, 7, 5, 130, 90, 5, 0, 'special'),
    -- #441 Gunk Shot
    (441, 7, 8, 120, 80, 5, 0, 'physical'),
    -- #448 Chatter
    (448, 7, 10, 65, 100, 20, 0, 'special'),
    -- #463 Magma Storm
    (463, 7, 2, 100, 75, 5, 0, 'special'),
    -- #480 Storm Throw
    (480, 7, 7, 60, 100, 10, 0, 'physical'),
    -- #485 Synchronoise
    (485, 7, 11, 120, 100, 10, 0, 'special'),
    -- #490 Low Sweep
    (490, 7, 7, 65, 100, 20, 0, 'physical'),
    -- #506 Hex
    (506, 7, 14, 65, 100, 10, 0, 'special'),
    -- #510 Incinerate
    (510, 7, 2, 60, 100, 15, 0, 'special'),
    -- #518 Water Pledge
    (518, 7, 3, 80, 100, 10, 0, 'special'),
    -- #519 Fire Pledge
    (519, 7, 2, 80, 100, 10, 0, 'special'),
    -- #520 Grass Pledge
    (520, 7, 5, 80, 100, 10, 0, 'special'),
    -- #522 Struggle Bug
    (522, 7, 12, 50, 100, 20, 0, 'special'),
    -- #524 Frost Breath
    (524, 7, 6, 60, 90, 10, 0, 'special'),
    -- #533 Sacred Sword
    (533, 7, 7, 90, 100, 15, 0, 'physical'),
    -- #542 Hurricane
    (542, 7, 10, 110, 70, 10, 0, 'special'),
    -- #546 Techno Blast
    (546, 7, 1, 120, 100, 5, 0, 'special');