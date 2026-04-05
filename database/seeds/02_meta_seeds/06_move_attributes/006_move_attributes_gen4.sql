-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #355 Roost
    (355, 4, 10, NULL, NULL, 5, 0, 'status'),
    -- #356 Gravity
    (356, 4, 11, NULL, NULL, 5, 0, 'status'),
    -- #357 Miracle Eye
    (357, 4, 11, NULL, NULL, 40, 0, 'status'),
    -- #358 Wake-Up Slap
    (358, 4, 7, 60, 100, 10, 0, 'physical'),
    -- #359 Hammer Arm
    (359, 4, 7, 100, 90, 10, 0, 'physical'),
    -- #360 Gyro Ball
    (360, 4, 17, NULL, 100, 5, 0, 'physical'),
    -- #361 Healing Wish
    (361, 4, 11, NULL, NULL, 10, 0, 'status'),
    -- #362 Brine
    (362, 4, 3, 65, 100, 10, 0, 'special'),
    -- #363 Natural Gift
    (363, 4, 1, NULL, 100, 15, 0, 'physical'),
    -- #364 Feint
    (364, 4, 1, 50, 100, 10, 2, 'physical'),
    -- #365 Pluck
    (365, 4, 10, 60, 100, 20, 0, 'physical'),
    -- #366 Tailwind
    (366, 4, 10, NULL, NULL, 30, 0, 'status'),
    -- #367 Acupressure
    (367, 4, 1, NULL, NULL, 30, 0, 'status'),
    -- #368 Metal Burst
    (368, 4, 17, NULL, 100, 10, 0, 'physical'),
    -- #369 U-turn
    (369, 4, 12, 70, 100, 20, 0, 'physical'),
    -- #370 Close Combat
    (370, 4, 7, 120, 100, 5, 0, 'physical'),
    -- #371 Payback
    (371, 4, 16, 50, 100, 10, 0, 'physical'),
    -- #372 Assurance
    (372, 4, 16, 50, 100, 10, 0, 'physical'),
    -- #373 Embargo
    (373, 4, 16, NULL, 100, 15, 0, 'status'),
    -- #374 Fling
    (374, 4, 16, NULL, 100, 10, 0, 'physical'),
    -- #375 Psycho Shift
    (375, 4, 11, NULL, 90, 10, 0, 'status'),
    -- #376 Trump Card
    (376, 4, 1, NULL, NULL, 5, 0, 'special'),
    -- #377 Heal Block
    (377, 4, 11, NULL, 100, 15, 0, 'status'),
    -- #378 Wring Out
    (378, 4, 1, NULL, 100, 5, 0, 'special'),
    -- #379 Power Trick
    (379, 4, 11, NULL, NULL, 10, 0, 'status'),
    -- #380 Gastro Acid
    (380, 4, 8, NULL, 100, 10, 0, 'status'),
    -- #381 Lucky Chant
    (381, 4, 1, NULL, NULL, 30, 0, 'status'),
    -- #382 Me First
    (382, 4, 1, NULL, NULL, 20, 0, 'status'),
    -- #383 Copycat
    (383, 4, 1, NULL, NULL, 20, 0, 'status'),
    -- #384 Power Swap
    (384, 4, 11, NULL, NULL, 10, 0, 'status'),
    -- #385 Guard Swap
    (385, 4, 11, NULL, NULL, 10, 0, 'status'),
    -- #386 Punishment
    (386, 4, 16, 60, 100, 5, 0, 'physical'),
    -- #387 Last Resort
    (387, 4, 1, 130, 100, 5, 0, 'physical'),
    -- #388 Worry Seed
    (388, 4, 5, NULL, 100, 10, 0, 'status'),
    -- #389 Sucker Punch
    (389, 4, 16, 80, 100, 5, 1, 'physical'),
    -- #390 Toxic Spikes
    (390, 4, 8, NULL, NULL, 20, 0, 'status'),
    -- #391 Heart Swap
    (391, 4, 11, NULL, NULL, 10, 0, 'status'),
    -- #392 Aqua Ring
    (392, 4, 3, NULL, NULL, 20, 0, 'status'),
    -- #393 Magnet Rise
    (393, 4, 4, NULL, NULL, 10, 0, 'status'),
    -- #394 Flare Blitz
    (394, 4, 2, 120, 100, 15, 0, 'physical'),
    -- #395 Force Palm
    (395, 4, 7, 60, 100, 10, 0, 'physical'),
    -- #396 Aura Sphere
    (396, 4, 7, 90, NULL, 20, 0, 'special'),
    -- #397 Rock Polish
    (397, 4, 13, NULL, NULL, 20, 0, 'status'),
    -- #398 Poison Jab
    (398, 4, 8, 80, 100, 20, 0, 'physical'),
    -- #399 Dark Pulse
    (399, 4, 16, 80, 100, 15, 0, 'special'),
    -- #400 Night Slash
    (400, 4, 16, 70, 100, 15, 0, 'physical'),
    -- #401 Aqua Tail
    (401, 4, 3, 90, 90, 10, 0, 'physical'),
    -- #402 Seed Bomb
    (402, 4, 5, 80, 100, 15, 0, 'physical'),
    -- #403 Air Slash
    (403, 4, 10, 75, 95, 20, 0, 'special'),
    -- #404 X-Scissor
    (404, 4, 12, 80, 100, 15, 0, 'physical'),
    -- #405 Bug Buzz
    (405, 4, 12, 90, 100, 10, 0, 'special'),
    -- #406 Dragon Pulse
    (406, 4, 15, 90, 100, 10, 0, 'special'),
    -- #407 Dragon Rush
    (407, 4, 15, 100, 75, 10, 0, 'physical'),
    -- #408 Power Gem
    (408, 4, 13, 70, 100, 20, 0, 'special'),
    -- #409 Drain Punch
    (409, 4, 7, 60, 100, 5, 0, 'physical'),
    -- #410 Vacuum Wave
    (410, 4, 7, 40, 100, 30, 1, 'special'),
    -- #411 Focus Blast
    (411, 4, 7, 120, 70, 5, 0, 'special'),
    -- #412 Energy Ball
    (412, 4, 5, 80, 100, 10, 0, 'special'),
    -- #413 Brave Bird
    (413, 4, 10, 120, 100, 15, 0, 'physical'),
    -- #414 Earth Power
    (414, 4, 9, 90, 100, 10, 0, 'special'),
    -- #415 Switcheroo
    (415, 4, 16, NULL, 100, 10, 0, 'status'),
    -- #416 Giga Impact
    (416, 4, 1, 150, 90, 5, 0, 'physical'),
    -- #417 Nasty Plot
    (417, 4, 16, NULL, NULL, 20, 0, 'status'),
    -- #418 Bullet Punch
    (418, 4, 17, 40, 100, 30, 1, 'physical'),
    -- #419 Avalanche
    (419, 4, 6, 60, 100, 10, -4, 'physical'),
    -- #420 Ice Shard
    (420, 4, 6, 40, 100, 30, 1, 'physical'),
    -- #421 Shadow Claw
    (421, 4, 14, 70, 100, 15, 0, 'physical'),
    -- #422 Thunder Fang
    (422, 4, 4, 65, 95, 15, 0, 'physical'),
    -- #423 Ice Fang
    (423, 4, 6, 65, 95, 15, 0, 'physical'),
    -- #424 Fire Fang
    (424, 4, 2, 65, 95, 15, 0, 'physical'),
    -- #425 Shadow Sneak
    (425, 4, 14, 40, 100, 30, 1, 'physical'),
    -- #426 Mud Bomb
    (426, 4, 9, 65, 85, 10, 0, 'special'),
    -- #427 Psycho Cut
    (427, 4, 11, 70, 100, 20, 0, 'physical'),
    -- #428 Zen Headbutt
    (428, 4, 11, 80, 90, 15, 0, 'physical'),
    -- #429 Mirror Shot
    (429, 4, 17, 65, 85, 10, 0, 'special'),
    -- #430 Flash Cannon
    (430, 4, 17, 80, 100, 10, 0, 'special'),
    -- #431 Rock Climb
    (431, 4, 1, 90, 85, 20, 0, 'physical'),
    -- #432 Defog
    (432, 4, 10, NULL, NULL, 15, 0, 'status'),
    -- #433 Trick Room
    (433, 4, 11, NULL, NULL, 5, -7, 'status'),
    -- #434 Draco Meteor
    (434, 4, 15, 140, 90, 5, 0, 'special'),
    -- #435 Discharge
    (435, 4, 4, 80, 100, 15, 0, 'special'),
    -- #436 Lava Plume
    (436, 4, 2, 80, 100, 15, 0, 'special'),
    -- #437 Leaf Storm
    (437, 4, 5, 140, 90, 5, 0, 'special'),
    -- #438 Power Whip
    (438, 4, 5, 120, 85, 10, 0, 'physical'),
    -- #439 Rock Wrecker
    (439, 4, 13, 150, 90, 5, 0, 'physical'),
    -- #440 Cross Poison
    (440, 4, 8, 70, 100, 20, 0, 'physical'),
    -- #441 Gunk Shot
    (441, 4, 8, 120, 70, 5, 0, 'physical'),
    -- #442 Iron Head
    (442, 4, 17, 80, 100, 15, 0, 'physical'),
    -- #443 Magnet Bomb
    (443, 4, 17, 60, NULL, 20, 0, 'physical'),
    -- #444 Stone Edge
    (444, 4, 13, 100, 80, 5, 0, 'physical'),
    -- #445 Captivate
    (445, 4, 1, NULL, 100, 20, 0, 'status'),
    -- #446 Stealth Rock
    (446, 4, 13, NULL, NULL, 20, 0, 'status'),
    -- #447 Grass Knot
    (447, 4, 5, NULL, 100, 20, 0, 'special'),
    -- #448 Chatter
    (448, 4, 10, 60, 100, 20, 0, 'special'),
    -- #449 Judgment
    (449, 4, 1, 100, 100, 10, 0, 'special'),
    -- #450 Bug Bite
    (450, 4, 12, 60, 100, 20, 0, 'physical'),
    -- #451 Charge Beam
    (451, 4, 4, 50, 90, 10, 0, 'special'),
    -- #452 Wood Hammer
    (452, 4, 5, 120, 100, 15, 0, 'physical'),
    -- #453 Aqua Jet
    (453, 4, 3, 40, 100, 20, 1, 'physical'),
    -- #454 Attack Order
    (454, 4, 12, 90, 100, 15, 0, 'physical'),
    -- #455 Defend Order
    (455, 4, 12, NULL, NULL, 10, 0, 'status'),
    -- #456 Heal Order
    (456, 4, 12, NULL, NULL, 10, 0, 'status'),
    -- #457 Head Smash
    (457, 4, 13, 150, 80, 5, 0, 'physical'),
    -- #458 Double Hit
    (458, 4, 1, 35, 90, 10, 0, 'physical'),
    -- #459 Roar of Time
    (459, 4, 15, 150, 90, 5, 0, 'special'),
    -- #460 Spacial Rend
    (460, 4, 15, 100, 95, 5, 0, 'special'),
    -- #461 Lunar Dance
    (461, 4, 11, NULL, NULL, 10, 0, 'status'),
    -- #462 Crush Grip
    (462, 4, 1, NULL, 100, 5, 0, 'physical'),
    -- #463 Magma Storm
    (463, 4, 2, 120, 70, 5, 0, 'special'),
    -- #464 Dark Void
    (464, 4, 16, NULL, 80, 10, 0, 'status'),
    -- #465 Seed Flare
    (465, 4, 5, 120, 85, 5, 0, 'special'),
    -- #466 Ominous Wind
    (466, 4, 14, 60, 100, 5, 0, 'special'),
    -- #467 Shadow Force
    (467, 4, 14, 120, 100, 5, 0, 'physical');