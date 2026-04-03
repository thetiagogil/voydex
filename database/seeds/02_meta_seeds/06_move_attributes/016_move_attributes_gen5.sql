-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: meta.move_attributes
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #468 Hone Claws
    (468, 5, 16, NULL, NULL, 15, 0, 'status'),
    -- #469 Wide Guard
    (469, 5, 13, NULL, NULL, 10, 3, 'status'),
    -- #470 Guard Split
    (470, 5, 11, NULL, NULL, 10, 0, 'status'),
    -- #471 Power Split
    (471, 5, 11, NULL, NULL, 10, 0, 'status'),
    -- #472 Wonder Room
    (472, 5, 11, NULL, NULL, 10, 0, 'status'),
    -- #473 Psyshock
    (473, 5, 11, 80, 100, 10, 0, 'special'),
    -- #474 Venoshock
    (474, 5, 8, 65, 100, 10, 0, 'special'),
    -- #475 Autotomize
    (475, 5, 17, NULL, NULL, 15, 0, 'status'),
    -- #476 Rage Powder
    (476, 5, 12, NULL, NULL, 20, 2, 'status'),
    -- #477 Telekinesis
    (477, 5, 11, NULL, NULL, 15, 0, 'status'),
    -- #478 Magic Room
    (478, 5, 11, NULL, NULL, 10, 0, 'status'),
    -- #479 Smack Down
    (479, 5, 13, 50, 100, 15, 0, 'physical'),
    -- #480 Storm Throw
    (480, 5, 7, 40, 100, 10, 0, 'physical'),
    -- #481 Flame Burst
    (481, 5, 2, 70, 100, 15, 0, 'special'),
    -- #482 Sludge Wave
    (482, 5, 8, 95, 100, 10, 0, 'special'),
    -- #483 Quiver Dance
    (483, 5, 12, NULL, NULL, 20, 0, 'status'),
    -- #484 Heavy Slam
    (484, 5, 17, NULL, 100, 10, 0, 'physical'),
    -- #485 Synchronoise
    (485, 5, 11, 70, 100, 15, 0, 'special'),
    -- #486 Electro Ball
    (486, 5, 4, NULL, 100, 10, 0, 'special'),
    -- #487 Soak
    (487, 5, 3, NULL, 100, 20, 0, 'status'),
    -- #488 Flame Charge
    (488, 5, 2, 50, 100, 20, 0, 'physical'),
    -- #489 Coil
    (489, 5, 8, NULL, NULL, 20, 0, 'status'),
    -- #490 Low Sweep
    (490, 5, 7, 60, 100, 20, 0, 'physical'),
    -- #491 Acid Spray
    (491, 5, 8, 40, 100, 20, 0, 'special'),
    -- #492 Foul Play
    (492, 5, 16, 95, 100, 15, 0, 'physical'),
    -- #493 Simple Beam
    (493, 5, 1, NULL, 100, 15, 0, 'status'),
    -- #494 Entrainment
    (494, 5, 1, NULL, 100, 15, 0, 'status'),
    -- #495 After You
    (495, 5, 1, NULL, NULL, 15, 0, 'status'),
    -- #496 Round
    (496, 5, 1, 60, 100, 15, 0, 'special'),
    -- #497 Echoed Voice
    (497, 5, 1, 40, 100, 15, 0, 'special'),
    -- #498 Chip Away
    (498, 5, 1, 70, 100, 20, 0, 'physical'),
    -- #499 Clear Smog
    (499, 5, 8, 50, NULL, 15, 0, 'special'),
    -- #500 Stored Power
    (500, 5, 11, 20, 100, 10, 0, 'special'),
    -- #501 Quick Guard
    (501, 5, 7, NULL, NULL, 15, 3, 'status'),
    -- #502 Ally Switch
    (502, 5, 11, NULL, NULL, 15, 2, 'status'),
    -- #503 Scald
    (503, 5, 3, 80, 100, 15, 0, 'special'),
    -- #504 Shell Smash
    (504, 5, 1, NULL, NULL, 15, 0, 'status'),
    -- #505 Heal Pulse
    (505, 5, 11, NULL, NULL, 10, 0, 'status'),
    -- #506 Hex
    (506, 5, 14, 50, 100, 10, 0, 'special'),
    -- #507 Sky Drop
    (507, 5, 10, 60, 100, 10, 0, 'physical'),
    -- #508 Shift Gear
    (508, 5, 17, NULL, NULL, 10, 0, 'status'),
    -- #509 Circle Throw
    (509, 5, 7, 60, 90, 10, -6, 'physical'),
    -- #510 Incinerate
    (510, 5, 2, 30, 100, 15, 0, 'special'),
    -- #511 Quash
    (511, 5, 16, NULL, 100, 15, 0, 'status'),
    -- #512 Acrobatics
    (512, 5, 10, 55, 100, 15, 0, 'physical'),
    -- #513 Reflect Type
    (513, 5, 1, NULL, NULL, 15, 0, 'status'),
    -- #514 Retaliate
    (514, 5, 1, 70, 100, 5, 0, 'physical'),
    -- #515 Final Gambit
    (515, 5, 7, NULL, 100, 5, 0, 'special'),
    -- #516 Bestow
    (516, 5, 1, NULL, NULL, 15, 0, 'status'),
    -- #517 Inferno
    (517, 5, 2, 100, 50, 5, 0, 'special'),
    -- #518 Water Pledge
    (518, 5, 3, 50, 100, 10, 0, 'special'),
    -- #519 Fire Pledge
    (519, 5, 2, 50, 100, 10, 0, 'special'),
    -- #520 Grass Pledge
    (520, 5, 5, 50, 100, 10, 0, 'special'),
    -- #521 Volt Switch
    (521, 5, 4, 70, 100, 20, 0, 'special'),
    -- #522 Struggle Bug
    (522, 5, 12, 30, 100, 20, 0, 'special'),
    -- #523 Bulldoze
    (523, 5, 9, 60, 100, 20, 0, 'physical'),
    -- #524 Frost Breath
    (524, 5, 6, 40, 90, 10, 0, 'special'),
    -- #525 Dragon Tail
    (525, 5, 15, 60, 90, 10, -6, 'physical'),
    -- #526 Work Up
    (526, 5, 1, NULL, NULL, 30, 0, 'status'),
    -- #527 Electroweb
    (527, 5, 4, 55, 95, 15, 0, 'special'),
    -- #528 Wild Charge
    (528, 5, 4, 90, 100, 15, 0, 'physical'),
    -- #529 Drill Run
    (529, 5, 9, 80, 95, 10, 0, 'physical'),
    -- #530 Dual Chop
    (530, 5, 15, 40, 90, 15, 0, 'physical'),
    -- #531 Heart Stamp
    (531, 5, 11, 60, 100, 25, 0, 'physical'),
    -- #532 Horn Leech
    (532, 5, 5, 75, 100, 10, 0, 'physical'),
    -- #533 Sacred Sword
    (533, 5, 7, 90, 100, 20, 0, 'physical'),
    -- #534 Razor Shell
    (534, 5, 3, 75, 95, 10, 0, 'physical'),
    -- #535 Heat Crash
    (535, 5, 2, NULL, 100, 10, 0, 'physical'),
    -- #536 Leaf Tornado
    (536, 5, 5, 65, 90, 10, 0, 'special'),
    -- #537 Steamroller
    (537, 5, 12, 65, 100, 20, 0, 'physical'),
    -- #538 Cotton Guard
    (538, 5, 5, NULL, NULL, 10, 0, 'status'),
    -- #539 Night Daze
    (539, 5, 16, 85, 95, 10, 0, 'special'),
    -- #540 Psystrike
    (540, 5, 11, 100, 100, 10, 0, 'special'),
    -- #541 Tail Slap
    (541, 5, 1, 25, 85, 10, 0, 'physical'),
    -- #542 Hurricane
    (542, 5, 10, 120, 70, 10, 0, 'special'),
    -- #543 Head Charge
    (543, 5, 1, 120, 100, 15, 0, 'physical'),
    -- #544 Gear Grind
    (544, 5, 17, 50, 85, 15, 0, 'physical'),
    -- #545 Searing Shot
    (545, 5, 2, 100, 100, 5, 0, 'special'),
    -- #546 Techno Blast
    (546, 5, 1, 85, 100, 5, 0, 'special'),
    -- #547 Relic Song
    (547, 5, 1, 75, 100, 10, 0, 'special'),
    -- #548 Secret Sword
    (548, 5, 7, 85, 100, 10, 0, 'special'),
    -- #549 Glaciate
    (549, 5, 6, 65, 95, 10, 0, 'special'),
    -- #550 Bolt Strike
    (550, 5, 4, 130, 85, 5, 0, 'physical'),
    -- #551 Blue Flare
    (551, 5, 2, 130, 85, 5, 0, 'special'),
    -- #552 Fiery Dance
    (552, 5, 2, 80, 100, 10, 0, 'special'),
    -- #553 Freeze Shock
    (553, 5, 6, 140, 90, 5, 0, 'physical'),
    -- #554 Ice Burn
    (554, 5, 6, 140, 90, 5, 0, 'special'),
    -- #555 Snarl
    (555, 5, 16, 55, 95, 15, 0, 'special'),
    -- #556 Icicle Crash
    (556, 5, 6, 85, 90, 10, 0, 'physical'),
    -- #557 V-create
    (557, 5, 2, 180, 95, 5, 0, 'physical'),
    -- #558 Fusion Flare
    (558, 5, 2, 100, 100, 5, 0, 'special'),
    -- #559 Fusion Bolt
    (559, 5, 4, 100, 100, 5, 0, 'physical');
