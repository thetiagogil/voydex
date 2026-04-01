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
-- Scope: base generation seed
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #560 Flying Press
    (560, 6, 7, 80, 95, 10, 0, 'physical'),
    -- #561 Mat Block
    (561, 6, 7, NULL, NULL, 10, 0, 'status'),
    -- #562 Belch
    (562, 6, 8, 120, 90, 10, 0, 'special'),
    -- #563 Rototiller
    (563, 6, 9, NULL, NULL, 10, 0, 'status'),
    -- #564 Sticky Web
    (564, 6, 12, NULL, NULL, 20, 0, 'status'),
    -- #565 Fell Stinger
    (565, 6, 12, 30, 100, 25, 0, 'physical'),
    -- #566 Phantom Force
    (566, 6, 14, 90, 100, 10, 0, 'physical'),
    -- #567 Trick-or-Treat
    (567, 6, 14, NULL, 100, 20, 0, 'status'),
    -- #568 Noble Roar
    (568, 6, 1, NULL, 100, 30, 0, 'status'),
    -- #569 Ion Deluge
    (569, 6, 4, NULL, NULL, 25, 1, 'status'),
    -- #570 Parabolic Charge
    (570, 6, 4, 50, 100, 20, 0, 'special'),
    -- #571 Forest
    (571, 6, 5, NULL, 100, 20, 0, 'status'),
    -- #572 Petal Blizzard
    (572, 6, 5, 90, 100, 15, 0, 'physical'),
    -- #573 Freeze-Dry
    (573, 6, 6, 70, 100, 20, 0, 'special'),
    -- #574 Disarming Voice
    (574, 6, 18, 40, NULL, 15, 0, 'special'),
    -- #575 Parting Shot
    (575, 6, 16, NULL, 100, 20, 0, 'status'),
    -- #576 Topsy-Turvy
    (576, 6, 16, NULL, NULL, 20, 0, 'status'),
    -- #577 Draining Kiss
    (577, 6, 18, 50, 100, 10, 0, 'special'),
    -- #578 Crafty Shield
    (578, 6, 18, NULL, NULL, 10, 3, 'status'),
    -- #579 Flower Shield
    (579, 6, 18, NULL, NULL, 10, 0, 'status'),
    -- #580 Grassy Terrain
    (580, 6, 5, NULL, NULL, 10, 0, 'status'),
    -- #581 Misty Terrain
    (581, 6, 18, NULL, NULL, 10, 0, 'status'),
    -- #582 Electrify
    (582, 6, 4, NULL, NULL, 20, 0, 'status'),
    -- #583 Play Rough
    (583, 6, 18, 90, 90, 10, 0, 'physical'),
    -- #584 Fairy Wind
    (584, 6, 18, 40, 100, 30, 0, 'special'),
    -- #585 Moonblast
    (585, 6, 18, 95, 100, 15, 0, 'special'),
    -- #586 Boomburst
    (586, 6, 1, 140, 100, 10, 0, 'special'),
    -- #587 Fairy Lock
    (587, 6, 18, NULL, NULL, 10, 0, 'status'),
    -- #588 King
    (588, 6, 17, NULL, NULL, 10, 4, 'status'),
    -- #589 Play Nice
    (589, 6, 1, NULL, NULL, 20, 0, 'status'),
    -- #590 Confide
    (590, 6, 1, NULL, NULL, 20, 0, 'status'),
    -- #591 Diamond Storm
    (591, 6, 13, 100, 95, 5, 0, 'physical'),
    -- #592 Steam Eruption
    (592, 6, 3, 110, 95, 5, 0, 'special'),
    -- #593 Hyperspace Hole
    (593, 6, 11, 80, NULL, 5, 0, 'special'),
    -- #594 Water Shuriken
    (594, 6, 3, 15, 100, 20, 1, 'special'),
    -- #595 Mystical Fire
    (595, 6, 2, 65, 100, 10, 0, 'special'),
    -- #596 Spiky Shield
    (596, 6, 5, NULL, NULL, 10, 4, 'status'),
    -- #597 Aromatic Mist
    (597, 6, 18, NULL, NULL, 20, 0, 'status'),
    -- #598 Eerie Impulse
    (598, 6, 4, NULL, 100, 15, 0, 'status'),
    -- #599 Venom Drench
    (599, 6, 8, NULL, 100, 20, 0, 'status'),
    -- #600 Powder
    (600, 6, 12, NULL, 100, 20, 1, 'status'),
    -- #601 Geomancy
    (601, 6, 18, NULL, NULL, 10, 0, 'status'),
    -- #602 Magnetic Flux
    (602, 6, 4, NULL, NULL, 20, 0, 'status'),
    -- #603 Happy Hour
    (603, 6, 1, NULL, NULL, 30, 0, 'status'),
    -- #604 Electric Terrain
    (604, 6, 4, NULL, NULL, 10, 0, 'status'),
    -- #605 Dazzling Gleam
    (605, 6, 18, 80, 100, 10, 0, 'special'),
    -- #606 Celebrate
    (606, 6, 1, NULL, NULL, 40, 0, 'status'),
    -- #607 Hold Hands
    (607, 6, 1, NULL, NULL, 40, 0, 'status'),
    -- #608 Baby-Doll Eyes
    (608, 6, 18, NULL, 100, 30, 1, 'status'),
    -- #609 Nuzzle
    (609, 6, 4, 20, 100, 20, 0, 'physical'),
    -- #610 Hold Back
    (610, 6, 1, 40, 100, 40, 0, 'physical'),
    -- #611 Infestation
    (611, 6, 12, 20, 100, 20, 0, 'special'),
    -- #612 Power-Up Punch
    (612, 6, 7, 40, 100, 20, 0, 'physical'),
    -- #613 Oblivion Wing
    (613, 6, 10, 80, 100, 10, 0, 'special'),
    -- #614 Thousand Arrows
    (614, 6, 9, 90, 100, 10, 0, 'physical'),
    -- #615 Thousand Waves
    (615, 6, 9, 90, 100, 10, 0, 'physical'),
    -- #616 Land
    (616, 6, 9, 90, 100, 10, 0, 'physical'),
    -- #617 Light of Ruin
    (617, 6, 18, 140, 90, 5, 0, 'special'),
    -- #618 Origin Pulse
    (618, 6, 3, 110, 85, 10, 0, 'special'),
    -- #619 Precipice Blades
    (619, 6, 9, 120, 85, 10, 0, 'physical'),
    -- #620 Dragon Ascent
    (620, 6, 10, 120, 100, 5, 0, 'physical'),
    -- #621 Hyperspace Fury
    (621, 6, 16, 100, NULL, 5, 0, 'physical');
