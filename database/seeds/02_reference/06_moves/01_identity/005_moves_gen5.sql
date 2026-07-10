-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia list of moves.
-- Cross-check: PokemonDB move list and PokeAPI move IDs where one-to-one.
-- Scope limit: official core-series move identities through Generation IX; Shadow
-- and Mystery Dungeon-only moves are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 5 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Hone Claws
  (468, 'hone-claws', 'Hone Claws', 1, 468, 5, 468),
  -- Wide Guard
  (469, 'wide-guard', 'Wide Guard', 1, 469, 5, 469),
  -- Guard Split
  (470, 'guard-split', 'Guard Split', 1, 470, 5, 470),
  -- Power Split
  (471, 'power-split', 'Power Split', 1, 471, 5, 471),
  -- Wonder Room
  (472, 'wonder-room', 'Wonder Room', 1, 472, 5, 472),
  -- Psyshock
  (473, 'psyshock', 'Psyshock', 1, 473, 5, 473),
  -- Venoshock
  (474, 'venoshock', 'Venoshock', 1, 474, 5, 474),
  -- Autotomize
  (475, 'autotomize', 'Autotomize', 1, 475, 5, 475),
  -- Rage Powder
  (476, 'rage-powder', 'Rage Powder', 1, 476, 5, 476),
  -- Telekinesis
  (477, 'telekinesis', 'Telekinesis', 1, 477, 5, 477),
  -- Magic Room
  (478, 'magic-room', 'Magic Room', 1, 478, 5, 478),
  -- Smack Down
  (479, 'smack-down', 'Smack Down', 1, 479, 5, 479),
  -- Storm Throw
  (480, 'storm-throw', 'Storm Throw', 1, 480, 5, 480),
  -- Flame Burst
  (481, 'flame-burst', 'Flame Burst', 1, 481, 5, 481),
  -- Sludge Wave
  (482, 'sludge-wave', 'Sludge Wave', 1, 482, 5, 482),
  -- Quiver Dance
  (483, 'quiver-dance', 'Quiver Dance', 1, 483, 5, 483),
  -- Heavy Slam
  (484, 'heavy-slam', 'Heavy Slam', 1, 484, 5, 484),
  -- Synchronoise
  (485, 'synchronoise', 'Synchronoise', 1, 485, 5, 485),
  -- Electro Ball
  (486, 'electro-ball', 'Electro Ball', 1, 486, 5, 486),
  -- Soak
  (487, 'soak', 'Soak', 1, 487, 5, 487),
  -- Flame Charge
  (488, 'flame-charge', 'Flame Charge', 1, 488, 5, 488),
  -- Coil
  (489, 'coil', 'Coil', 1, 489, 5, 489),
  -- Low Sweep
  (490, 'low-sweep', 'Low Sweep', 1, 490, 5, 490),
  -- Acid Spray
  (491, 'acid-spray', 'Acid Spray', 1, 491, 5, 491),
  -- Foul Play
  (492, 'foul-play', 'Foul Play', 1, 492, 5, 492),
  -- Simple Beam
  (493, 'simple-beam', 'Simple Beam', 1, 493, 5, 493),
  -- Entrainment
  (494, 'entrainment', 'Entrainment', 1, 494, 5, 494),
  -- After You
  (495, 'after-you', 'After You', 1, 495, 5, 495),
  -- Round
  (496, 'round', 'Round', 1, 496, 5, 496),
  -- Echoed Voice
  (497, 'echoed-voice', 'Echoed Voice', 1, 497, 5, 497),
  -- Chip Away
  (498, 'chip-away', 'Chip Away', 1, 498, 5, 498),
  -- Clear Smog
  (499, 'clear-smog', 'Clear Smog', 1, 499, 5, 499),
  -- Stored Power
  (500, 'stored-power', 'Stored Power', 1, 500, 5, 500),
  -- Quick Guard
  (501, 'quick-guard', 'Quick Guard', 1, 501, 5, 501),
  -- Ally Switch
  (502, 'ally-switch', 'Ally Switch', 1, 502, 5, 502),
  -- Scald
  (503, 'scald', 'Scald', 1, 503, 5, 503),
  -- Shell Smash
  (504, 'shell-smash', 'Shell Smash', 1, 504, 5, 504),
  -- Heal Pulse
  (505, 'heal-pulse', 'Heal Pulse', 1, 505, 5, 505),
  -- Hex
  (506, 'hex', 'Hex', 1, 506, 5, 506),
  -- Sky Drop
  (507, 'sky-drop', 'Sky Drop', 1, 507, 5, 507),
  -- Shift Gear
  (508, 'shift-gear', 'Shift Gear', 1, 508, 5, 508),
  -- Circle Throw
  (509, 'circle-throw', 'Circle Throw', 1, 509, 5, 509),
  -- Incinerate
  (510, 'incinerate', 'Incinerate', 1, 510, 5, 510),
  -- Quash
  (511, 'quash', 'Quash', 1, 511, 5, 511),
  -- Acrobatics
  (512, 'acrobatics', 'Acrobatics', 1, 512, 5, 512),
  -- Reflect Type
  (513, 'reflect-type', 'Reflect Type', 1, 513, 5, 513),
  -- Retaliate
  (514, 'retaliate', 'Retaliate', 1, 514, 5, 514),
  -- Final Gambit
  (515, 'final-gambit', 'Final Gambit', 1, 515, 5, 515),
  -- Bestow
  (516, 'bestow', 'Bestow', 1, 516, 5, 516),
  -- Inferno
  (517, 'inferno', 'Inferno', 1, 517, 5, 517),
  -- Water Pledge
  (518, 'water-pledge', 'Water Pledge', 1, 518, 5, 518),
  -- Fire Pledge
  (519, 'fire-pledge', 'Fire Pledge', 1, 519, 5, 519),
  -- Grass Pledge
  (520, 'grass-pledge', 'Grass Pledge', 1, 520, 5, 520),
  -- Volt Switch
  (521, 'volt-switch', 'Volt Switch', 1, 521, 5, 521),
  -- Struggle Bug
  (522, 'struggle-bug', 'Struggle Bug', 1, 522, 5, 522),
  -- Bulldoze
  (523, 'bulldoze', 'Bulldoze', 1, 523, 5, 523),
  -- Frost Breath
  (524, 'frost-breath', 'Frost Breath', 1, 524, 5, 524),
  -- Dragon Tail
  (525, 'dragon-tail', 'Dragon Tail', 1, 525, 5, 525),
  -- Work Up
  (526, 'work-up', 'Work Up', 1, 526, 5, 526),
  -- Electroweb
  (527, 'electroweb', 'Electroweb', 1, 527, 5, 527),
  -- Wild Charge
  (528, 'wild-charge', 'Wild Charge', 1, 528, 5, 528),
  -- Drill Run
  (529, 'drill-run', 'Drill Run', 1, 529, 5, 529),
  -- Dual Chop
  (530, 'dual-chop', 'Dual Chop', 1, 530, 5, 530),
  -- Heart Stamp
  (531, 'heart-stamp', 'Heart Stamp', 1, 531, 5, 531),
  -- Horn Leech
  (532, 'horn-leech', 'Horn Leech', 1, 532, 5, 532),
  -- Sacred Sword
  (533, 'sacred-sword', 'Sacred Sword', 1, 533, 5, 533),
  -- Razor Shell
  (534, 'razor-shell', 'Razor Shell', 1, 534, 5, 534),
  -- Heat Crash
  (535, 'heat-crash', 'Heat Crash', 1, 535, 5, 535),
  -- Leaf Tornado
  (536, 'leaf-tornado', 'Leaf Tornado', 1, 536, 5, 536),
  -- Steamroller
  (537, 'steamroller', 'Steamroller', 1, 537, 5, 537),
  -- Cotton Guard
  (538, 'cotton-guard', 'Cotton Guard', 1, 538, 5, 538),
  -- Night Daze
  (539, 'night-daze', 'Night Daze', 1, 539, 5, 539),
  -- Psystrike
  (540, 'psystrike', 'Psystrike', 1, 540, 5, 540),
  -- Tail Slap
  (541, 'tail-slap', 'Tail Slap', 1, 541, 5, 541),
  -- Hurricane
  (542, 'hurricane', 'Hurricane', 1, 542, 5, 542),
  -- Head Charge
  (543, 'head-charge', 'Head Charge', 1, 543, 5, 543),
  -- Gear Grind
  (544, 'gear-grind', 'Gear Grind', 1, 544, 5, 544),
  -- Searing Shot
  (545, 'searing-shot', 'Searing Shot', 1, 545, 5, 545),
  -- Techno Blast
  (546, 'techno-blast', 'Techno Blast', 1, 546, 5, 546),
  -- Relic Song
  (547, 'relic-song', 'Relic Song', 1, 547, 5, 547),
  -- Secret Sword
  (548, 'secret-sword', 'Secret Sword', 1, 548, 5, 548),
  -- Glaciate
  (549, 'glaciate', 'Glaciate', 1, 549, 5, 549),
  -- Bolt Strike
  (550, 'bolt-strike', 'Bolt Strike', 1, 550, 5, 550),
  -- Blue Flare
  (551, 'blue-flare', 'Blue Flare', 1, 551, 5, 551),
  -- Fiery Dance
  (552, 'fiery-dance', 'Fiery Dance', 1, 552, 5, 552),
  -- Freeze Shock
  (553, 'freeze-shock', 'Freeze Shock', 1, 553, 5, 553),
  -- Ice Burn
  (554, 'ice-burn', 'Ice Burn', 1, 554, 5, 554),
  -- Snarl
  (555, 'snarl', 'Snarl', 1, 555, 5, 555),
  -- Icicle Crash
  (556, 'icicle-crash', 'Icicle Crash', 1, 556, 5, 556),
  -- V-create
  (557, 'v-create', 'V-create', 1, 557, 5, 557),
  -- Fusion Flare
  (558, 'fusion-flare', 'Fusion Flare', 1, 558, 5, 558),
  -- Fusion Bolt
  (559, 'fusion-bolt', 'Fusion Bolt', 1, 559, 5, 559);
