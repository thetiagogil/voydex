-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #166 Sketch
    (166, 2, 1, NULL, NULL, 1, 0, 'status'),
    -- #167 Triple Kick
    (167, 2, 7, 10, 90, 10, 0, 'physical'),
    -- #168 Thief
    (168, 2, 16, 40, 100, 10, 0, 'special'),
    -- #169 Spider Web
    (169, 2, 12, NULL, NULL, 10, 0, 'status'),
    -- #170 Mind Reader
    (170, 2, 1, NULL, NULL, 40, 0, 'status'),
    -- #171 Nightmare
    (171, 2, 14, NULL, 100, 15, 0, 'status'),
    -- #172 Flame Wheel
    (172, 2, 2, 60, 100, 25, 0, 'special'),
    -- #173 Snore
    (173, 2, 1, 40, 100, 15, 0, 'physical'),
    -- #174 Curse
    (174, 2, undefined, NULL, NULL, 10, 0, 'status'),
    -- #175 Flail
    (175, 2, 1, NULL, 100, 15, 0, 'physical'),
    -- #176 Conversion 2
    (176, 2, 1, NULL, NULL, 30, 0, 'status'),
    -- #177 Aeroblast
    (177, 2, 10, 100, 95, 5, 0, 'physical'),
    -- #178 Cotton Spore
    (178, 2, 5, NULL, 85, 40, 0, 'status'),
    -- #179 Reversal
    (179, 2, 7, NULL, 100, 15, 0, 'physical'),
    -- #180 Spite
    (180, 2, 14, NULL, 100, 10, 0, 'status'),
    -- #181 Powder Snow
    (181, 2, 6, 40, 100, 25, 0, 'special'),
    -- #182 Protect
    (182, 2, 1, NULL, NULL, 10, 4, 'status'),
    -- #183 Mach Punch
    (183, 2, 7, 40, 100, 30, 1, 'physical'),
    -- #184 Scary Face
    (184, 2, 1, NULL, 90, 10, 0, 'status'),
    -- #185 Feint Attack
    (185, 2, 16, 60, NULL, 20, 0, 'special'),
    -- #186 Sweet Kiss
    (186, 2, 1, NULL, 75, 10, 0, 'status'),
    -- #187 Belly Drum
    (187, 2, 1, NULL, NULL, 10, 0, 'status'),
    -- #188 Sludge Bomb
    (188, 2, 8, 90, 100, 10, 0, 'physical'),
    -- #189 Mud-Slap
    (189, 2, 9, 20, 100, 10, 0, 'physical'),
    -- #190 Octazooka
    (190, 2, 3, 65, 85, 10, 0, 'special'),
    -- #191 Spikes
    (191, 2, 9, NULL, NULL, 20, 0, 'status'),
    -- #192 Zap Cannon
    (192, 2, 4, 100, 50, 5, 0, 'special'),
    -- #193 Foresight
    (193, 2, 1, NULL, NULL, 40, 0, 'status'),
    -- #194 Destiny Bond
    (194, 2, 14, NULL, NULL, 5, 0, 'status'),
    -- #195 Perish Song
    (195, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #196 Icy Wind
    (196, 2, 6, 55, 95, 15, 0, 'special'),
    -- #197 Detect
    (197, 2, 7, NULL, NULL, 5, 4, 'status'),
    -- #198 Bone Rush
    (198, 2, 9, 25, 80, 10, 0, 'physical'),
    -- #199 Lock-On
    (199, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #200 Outrage
    (200, 2, 15, 90, 100, 15, 0, 'special'),
    -- #201 Sandstorm
    (201, 2, 13, NULL, NULL, 10, 0, 'status'),
    -- #202 Giga Drain
    (202, 2, 5, 60, 100, 5, 0, 'special'),
    -- #203 Endure
    (203, 2, 1, NULL, NULL, 10, 4, 'status'),
    -- #204 Charm
    (204, 2, 1, NULL, 100, 20, 0, 'status'),
    -- #205 Rollout
    (205, 2, 13, 30, 90, 20, 0, 'physical'),
    -- #206 False Swipe
    (206, 2, 1, 40, 100, 40, 0, 'physical'),
    -- #207 Swagger
    (207, 2, 1, NULL, 90, 15, 0, 'status'),
    -- #208 Milk Drink
    (208, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #209 Spark
    (209, 2, 4, 65, 100, 20, 0, 'special'),
    -- #210 Fury Cutter
    (210, 2, 12, 10, 95, 20, 0, 'physical'),
    -- #211 Steel Wing
    (211, 2, 17, 70, 90, 25, 0, 'physical'),
    -- #212 Mean Look
    (212, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #213 Attract
    (213, 2, 1, NULL, 100, 15, 0, 'status'),
    -- #214 Sleep Talk
    (214, 2, 1, NULL, NULL, 10, 0, 'status'),
    -- #215 Heal Bell
    (215, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #216 Return
    (216, 2, 1, NULL, 100, 20, 0, 'physical'),
    -- #217 Present
    (217, 2, 1, NULL, 90, 15, 0, 'physical'),
    -- #218 Frustration
    (218, 2, 1, NULL, 100, 20, 0, 'physical'),
    -- #219 Safeguard
    (219, 2, 1, NULL, NULL, 25, 0, 'status'),
    -- #220 Pain Split
    (220, 2, 1, NULL, NULL, 20, 0, 'status'),
    -- #221 Sacred Fire
    (221, 2, 2, 100, 95, 5, 0, 'special'),
    -- #222 Magnitude
    (222, 2, 9, NULL, 100, 30, 0, 'physical'),
    -- #223 Dynamic Punch
    (223, 2, 7, 100, 50, 5, 0, 'physical'),
    -- #224 Megahorn
    (224, 2, 12, 120, 85, 10, 0, 'physical'),
    -- #225 Dragon Breath
    (225, 2, 15, 60, 100, 20, 0, 'special'),
    -- #226 Baton Pass
    (226, 2, 1, NULL, NULL, 40, 0, 'status'),
    -- #227 Encore
    (227, 2, 1, NULL, 100, 5, 0, 'status'),
    -- #228 Pursuit
    (228, 2, 16, 40, 100, 20, 0, 'special'),
    -- #229 Rapid Spin
    (229, 2, 1, 20, 100, 40, 0, 'physical'),
    -- #230 Sweet Scent
    (230, 2, 1, NULL, 100, 20, 0, 'status'),
    -- #231 Iron Tail
    (231, 2, 17, 100, 75, 15, 0, 'physical'),
    -- #232 Metal Claw
    (232, 2, 17, 50, 95, 35, 0, 'physical'),
    -- #233 Vital Throw
    (233, 2, 7, 70, NULL, 10, -1, 'physical'),
    -- #234 Morning Sun
    (234, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #235 Synthesis
    (235, 2, 5, NULL, NULL, 5, 0, 'status'),
    -- #236 Moonlight
    (236, 2, 1, NULL, NULL, 5, 0, 'status'),
    -- #237 Hidden Power
    (237, 2, 1, 1, 100, 15, 0, 'physical'),
    -- #238 Cross Chop
    (238, 2, 7, 100, 80, 5, 0, 'physical'),
    -- #239 Twister
    (239, 2, 15, 40, 100, 20, 0, 'special'),
    -- #240 Rain Dance
    (240, 2, 3, NULL, NULL, 5, 0, 'status'),
    -- #241 Sunny Day
    (241, 2, 2, NULL, NULL, 5, 0, 'status'),
    -- #242 Crunch
    (242, 2, 16, 80, 100, 15, 0, 'special'),
    -- #243 Mirror Coat
    (243, 2, 11, NULL, 100, 20, -5, 'special'),
    -- #244 Psych Up
    (244, 2, 1, NULL, NULL, 10, 0, 'status'),
    -- #245 Extreme Speed
    (245, 2, 1, 80, 100, 5, 2, 'physical'),
    -- #246 Ancient Power
    (246, 2, 13, 60, 100, 5, 0, 'physical'),
    -- #247 Shadow Ball
    (247, 2, 14, 80, 100, 15, 0, 'physical'),
    -- #248 Future Sight
    (248, 2, 11, 80, 90, 15, 0, 'special'),
    -- #249 Rock Smash
    (249, 2, 7, 20, 100, 15, 0, 'physical'),
    -- #250 Whirlpool
    (250, 2, 3, 15, 70, 15, 0, 'special'),
    -- #251 Beat Up
    (251, 2, 16, 10, 100, 10, 0, 'special');
