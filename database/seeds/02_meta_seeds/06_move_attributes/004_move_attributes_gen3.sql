-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #252 Fake Out
    (252, 3, 1, 40, 100, 10, 3, 'physical'),
    -- #253 Uproar
    (253, 3, 1, 50, 100, 10, 0, 'physical'),
    -- #254 Stockpile
    (254, 3, 1, NULL, NULL, 10, 0, 'status'),
    -- #255 Spit Up
    (255, 3, 1, NULL, 100, 10, 0, 'physical'),
    -- #256 Swallow
    (256, 3, 1, NULL, NULL, 10, 0, 'status'),
    -- #257 Heat Wave
    (257, 3, 2, 100, 90, 10, 0, 'special'),
    -- #258 Hail
    (258, 3, 6, NULL, NULL, 10, 0, 'status'),
    -- #259 Torment
    (259, 3, 16, NULL, 100, 15, 0, 'status'),
    -- #260 Flatter
    (260, 3, 16, NULL, 100, 15, 0, 'status'),
    -- #261 Will-O-Wisp
    (261, 3, 2, NULL, 75, 15, 0, 'status'),
    -- #262 Memento
    (262, 3, 16, NULL, 100, 10, 0, 'status'),
    -- #263 Facade
    (263, 3, 1, 70, 100, 20, 0, 'physical'),
    -- #264 Focus Punch
    (264, 3, 7, 150, 100, 20, -3, 'physical'),
    -- #265 Smelling Salts
    (265, 3, 1, 60, 100, 10, 0, 'physical'),
    -- #266 Follow Me
    (266, 3, 1, NULL, NULL, 20, 2, 'status'),
    -- #267 Nature Power
    (267, 3, 1, NULL, NULL, 20, 0, 'status'),
    -- #268 Charge
    (268, 3, 4, NULL, NULL, 20, 0, 'status'),
    -- #269 Taunt
    (269, 3, 16, NULL, 100, 20, 0, 'status'),
    -- #270 Helping Hand
    (270, 3, 1, NULL, NULL, 20, 5, 'status'),
    -- #271 Trick
    (271, 3, 11, NULL, 100, 10, 0, 'status'),
    -- #272 Role Play
    (272, 3, 11, NULL, NULL, 10, 0, 'status'),
    -- #273 Wish
    (273, 3, 1, NULL, NULL, 10, 0, 'status'),
    -- #274 Assist
    (274, 3, 1, NULL, NULL, 20, 0, 'status'),
    -- #275 Ingrain
    (275, 3, 5, NULL, NULL, 20, 0, 'status'),
    -- #276 Superpower
    (276, 3, 7, 120, 100, 5, 0, 'physical'),
    -- #277 Magic Coat
    (277, 3, 11, NULL, NULL, 15, 4, 'status'),
    -- #278 Recycle
    (278, 3, 1, NULL, NULL, 10, 0, 'status'),
    -- #279 Revenge
    (279, 3, 7, 60, 100, 10, -4, 'physical'),
    -- #280 Brick Break
    (280, 3, 7, 75, 100, 15, 0, 'physical'),
    -- #281 Yawn
    (281, 3, 1, NULL, NULL, 10, 0, 'status'),
    -- #282 Knock Off
    (282, 3, 16, 20, 100, 20, 0, 'special'),
    -- #283 Endeavor
    (283, 3, 1, NULL, 100, 5, 0, 'physical'),
    -- #284 Eruption
    (284, 3, 2, 150, 100, 5, 0, 'special'),
    -- #285 Skill Swap
    (285, 3, 11, NULL, NULL, 10, 0, 'status'),
    -- #286 Imprison
    (286, 3, 11, NULL, NULL, 10, 0, 'status'),
    -- #287 Refresh
    (287, 3, 1, NULL, NULL, 20, 0, 'status'),
    -- #288 Grudge
    (288, 3, 14, NULL, NULL, 5, 0, 'status'),
    -- #289 Snatch
    (289, 3, 16, NULL, NULL, 10, 4, 'status'),
    -- #290 Secret Power
    (290, 3, 1, 70, 100, 20, 0, 'physical'),
    -- #291 Dive
    (291, 3, 3, 60, 100, 10, 0, 'special'),
    -- #292 Arm Thrust
    (292, 3, 7, 15, 100, 20, 0, 'physical'),
    -- #293 Camouflage
    (293, 3, 1, NULL, NULL, 20, 0, 'status'),
    -- #294 Tail Glow
    (294, 3, 12, NULL, NULL, 20, 0, 'status'),
    -- #295 Luster Purge
    (295, 3, 11, 95, 100, 5, 0, 'special'),
    -- #296 Mist Ball
    (296, 3, 11, 70, 100, 5, 0, 'special'),
    -- #297 Feather Dance
    (297, 3, 10, NULL, 100, 15, 0, 'status'),
    -- #298 Teeter Dance
    (298, 3, 1, NULL, 100, 20, 0, 'status'),
    -- #299 Blaze Kick
    (299, 3, 2, 85, 90, 10, 0, 'special'),
    -- #300 Mud Sport
    (300, 3, 9, NULL, NULL, 15, 0, 'status'),
    -- #301 Ice Ball
    (301, 3, 6, 30, 90, 20, 0, 'special'),
    -- #302 Needle Arm
    (302, 3, 5, 60, 100, 15, 0, 'special'),
    -- #303 Slack Off
    (303, 3, 1, NULL, NULL, 5, 0, 'status'),
    -- #304 Hyper Voice
    (304, 3, 1, 90, 100, 10, 0, 'physical'),
    -- #305 Poison Fang
    (305, 3, 8, 50, 100, 15, 0, 'physical'),
    -- #306 Crush Claw
    (306, 3, 1, 75, 95, 10, 0, 'physical'),
    -- #307 Blast Burn
    (307, 3, 2, 150, 90, 5, 0, 'special'),
    -- #308 Hydro Cannon
    (308, 3, 3, 150, 90, 5, 0, 'special'),
    -- #309 Meteor Mash
    (309, 3, 17, 100, 85, 10, 0, 'physical'),
    -- #310 Astonish
    (310, 3, 14, 30, 100, 15, 0, 'physical'),
    -- #311 Weather Ball
    (311, 3, 1, 50, 100, 10, 0, 'physical'),
    -- #312 Aromatherapy
    (312, 3, 5, NULL, NULL, 5, 0, 'status'),
    -- #313 Fake Tears
    (313, 3, 16, NULL, 100, 20, 0, 'status'),
    -- #314 Air Cutter
    (314, 3, 10, 55, 95, 25, 0, 'physical'),
    -- #315 Overheat
    (315, 3, 2, 140, 90, 5, 0, 'special'),
    -- #316 Odor Sleuth
    (316, 3, 1, NULL, NULL, 40, 0, 'status'),
    -- #317 Rock Tomb
    (317, 3, 13, 50, 80, 10, 0, 'physical'),
    -- #318 Silver Wind
    (318, 3, 12, 60, 100, 5, 0, 'physical'),
    -- #319 Metal Sound
    (319, 3, 17, NULL, 85, 40, 0, 'status'),
    -- #320 Grass Whistle
    (320, 3, 5, NULL, 55, 15, 0, 'status'),
    -- #321 Tickle
    (321, 3, 1, NULL, 100, 20, 0, 'status'),
    -- #322 Cosmic Power
    (322, 3, 11, NULL, NULL, 20, 0, 'status'),
    -- #323 Water Spout
    (323, 3, 3, 150, 100, 5, 0, 'special'),
    -- #324 Signal Beam
    (324, 3, 12, 75, 100, 15, 0, 'physical'),
    -- #325 Shadow Punch
    (325, 3, 14, 60, NULL, 20, 0, 'physical'),
    -- #326 Extrasensory
    (326, 3, 11, 80, 100, 30, 0, 'special'),
    -- #327 Sky Uppercut
    (327, 3, 7, 85, 90, 15, 0, 'physical'),
    -- #328 Sand Tomb
    (328, 3, 9, 15, 70, 15, 0, 'physical'),
    -- #329 Sheer Cold
    (329, 3, 6, NULL, 30, 5, 0, 'special'),
    -- #330 Muddy Water
    (330, 3, 3, 95, 85, 10, 0, 'special'),
    -- #331 Bullet Seed
    (331, 3, 5, 10, 100, 30, 0, 'special'),
    -- #332 Aerial Ace
    (332, 3, 10, 60, NULL, 20, 0, 'physical'),
    -- #333 Icicle Spear
    (333, 3, 6, 10, 100, 30, 0, 'special'),
    -- #334 Iron Defense
    (334, 3, 17, NULL, NULL, 15, 0, 'status'),
    -- #335 Block
    (335, 3, 1, NULL, NULL, 5, 0, 'status'),
    -- #336 Howl
    (336, 3, 1, NULL, NULL, 40, 0, 'status'),
    -- #337 Dragon Claw
    (337, 3, 15, 80, 100, 15, 0, 'special'),
    -- #338 Frenzy Plant
    (338, 3, 5, 150, 90, 5, 0, 'special'),
    -- #339 Bulk Up
    (339, 3, 7, NULL, NULL, 20, 0, 'status'),
    -- #340 Bounce
    (340, 3, 10, 85, 85, 5, 0, 'physical'),
    -- #341 Mud Shot
    (341, 3, 9, 55, 95, 15, 0, 'physical'),
    -- #342 Poison Tail
    (342, 3, 8, 50, 100, 25, 0, 'physical'),
    -- #343 Covet
    (343, 3, 1, 40, 100, 40, 0, 'physical'),
    -- #344 Volt Tackle
    (344, 3, 4, 120, 100, 15, 0, 'special'),
    -- #345 Magical Leaf
    (345, 3, 5, 60, NULL, 20, 0, 'special'),
    -- #346 Water Sport
    (346, 3, 3, NULL, NULL, 15, 0, 'status'),
    -- #347 Calm Mind
    (347, 3, 11, NULL, NULL, 20, 0, 'status'),
    -- #348 Leaf Blade
    (348, 3, 5, 70, 100, 15, 0, 'special'),
    -- #349 Dragon Dance
    (349, 3, 15, NULL, NULL, 20, 0, 'status'),
    -- #350 Rock Blast
    (350, 3, 13, 25, 80, 10, 0, 'physical'),
    -- #351 Shock Wave
    (351, 3, 4, 60, NULL, 20, 0, 'special'),
    -- #352 Water Pulse
    (352, 3, 3, 60, 100, 20, 0, 'special'),
    -- #353 Doom Desire
    (353, 3, 17, 120, 85, 5, 0, 'physical'),
    -- #354 Psycho Boost
    (354, 3, 11, 140, 90, 5, 0, 'special');