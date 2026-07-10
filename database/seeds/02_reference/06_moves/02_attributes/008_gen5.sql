-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen5 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Hone Claws Generation V
  (468, 5, 16, NULL, NULL, 15, 0, 'status'),
  -- Wide Guard Generation V
  (469, 5, 13, NULL, NULL, 10, 3, 'status'),
  -- Guard Split Generation V
  (470, 5, 11, NULL, NULL, 10, 0, 'status'),
  -- Power Split Generation V
  (471, 5, 11, NULL, NULL, 10, 0, 'status'),
  -- Wonder Room Generation V
  (472, 5, 11, NULL, NULL, 10, 0, 'status'),
  -- Psyshock Generation V
  (473, 5, 11, 80, 100, 10, 0, 'special'),
  -- Venoshock Generation V
  (474, 5, 8, 65, 100, 10, 0, 'special'),
  -- Autotomize Generation V
  (475, 5, 17, NULL, NULL, 15, 0, 'status'),
  -- Rage Powder Generation V
  (476, 5, 12, NULL, NULL, 20, 2, 'status'),
  -- Telekinesis Generation V
  (477, 5, 11, NULL, NULL, 15, 0, 'status'),
  -- Magic Room Generation V
  (478, 5, 11, NULL, NULL, 10, 0, 'status'),
  -- Smack Down Generation V
  (479, 5, 13, 50, 100, 15, 0, 'physical'),
  -- Storm Throw Generation V
  (480, 5, 7, 40, 100, 10, 0, 'physical'),
  -- Flame Burst Generation V
  (481, 5, 2, 70, 100, 15, 0, 'special'),
  -- Sludge Wave Generation V
  (482, 5, 8, 95, 100, 10, 0, 'special'),
  -- Quiver Dance Generation V
  (483, 5, 12, NULL, NULL, 20, 0, 'status'),
  -- Heavy Slam Generation V
  (484, 5, 17, NULL, 100, 10, 0, 'physical'),
  -- Synchronoise Generation V
  (485, 5, 11, 70, 100, 15, 0, 'special'),
  -- Electro Ball Generation V
  (486, 5, 4, NULL, 100, 10, 0, 'special'),
  -- Soak Generation V
  (487, 5, 3, NULL, 100, 20, 0, 'status'),
  -- Flame Charge Generation V
  (488, 5, 2, 50, 100, 20, 0, 'physical'),
  -- Coil Generation V
  (489, 5, 8, NULL, NULL, 20, 0, 'status'),
  -- Low Sweep Generation V
  (490, 5, 7, 60, 100, 20, 0, 'physical'),
  -- Acid Spray Generation V
  (491, 5, 8, 40, 100, 20, 0, 'special'),
  -- Foul Play Generation V
  (492, 5, 16, 95, 100, 15, 0, 'physical'),
  -- Simple Beam Generation V
  (493, 5, 1, NULL, 100, 15, 0, 'status'),
  -- Entrainment Generation V
  (494, 5, 1, NULL, 100, 15, 0, 'status'),
  -- After You Generation V
  (495, 5, 1, NULL, NULL, 15, 0, 'status'),
  -- Round Generation V
  (496, 5, 1, 60, 100, 15, 0, 'special'),
  -- Echoed Voice Generation V
  (497, 5, 1, 40, 100, 15, 0, 'special'),
  -- Chip Away Generation V
  (498, 5, 1, 70, 100, 20, 0, 'physical'),
  -- Clear Smog Generation V
  (499, 5, 8, 50, NULL, 15, 0, 'special'),
  -- Stored Power Generation V
  (500, 5, 11, 20, 100, 10, 0, 'special'),
  -- Quick Guard Generation V
  (501, 5, 7, NULL, NULL, 15, 3, 'status'),
  -- Ally Switch Generation V
  (502, 5, 11, NULL, NULL, 15, 2, 'status'),
  -- Scald Generation V
  (503, 5, 3, 80, 100, 15, 0, 'special'),
  -- Shell Smash Generation V
  (504, 5, 1, NULL, NULL, 15, 0, 'status'),
  -- Heal Pulse Generation V
  (505, 5, 11, NULL, NULL, 10, 0, 'status'),
  -- Hex Generation V
  (506, 5, 14, 50, 100, 10, 0, 'special'),
  -- Sky Drop Generation V
  (507, 5, 10, 60, 100, 10, 0, 'physical'),
  -- Shift Gear Generation V
  (508, 5, 17, NULL, NULL, 10, 0, 'status'),
  -- Circle Throw Generation V
  (509, 5, 7, 60, 90, 10, -6, 'physical'),
  -- Incinerate Generation V
  (510, 5, 2, 30, 100, 15, 0, 'special'),
  -- Quash Generation V
  (511, 5, 16, NULL, 100, 15, 0, 'status'),
  -- Acrobatics Generation V
  (512, 5, 10, 55, 100, 15, 0, 'physical'),
  -- Reflect Type Generation V
  (513, 5, 1, NULL, NULL, 15, 0, 'status'),
  -- Retaliate Generation V
  (514, 5, 1, 70, 100, 5, 0, 'physical'),
  -- Final Gambit Generation V
  (515, 5, 7, NULL, 100, 5, 0, 'special'),
  -- Bestow Generation V
  (516, 5, 1, NULL, NULL, 15, 0, 'status'),
  -- Inferno Generation V
  (517, 5, 2, 100, 50, 5, 0, 'special'),
  -- Water Pledge Generation V
  (518, 5, 3, 50, 100, 10, 0, 'special'),
  -- Fire Pledge Generation V
  (519, 5, 2, 50, 100, 10, 0, 'special'),
  -- Grass Pledge Generation V
  (520, 5, 5, 50, 100, 10, 0, 'special'),
  -- Volt Switch Generation V
  (521, 5, 4, 70, 100, 20, 0, 'special'),
  -- Struggle Bug Generation V
  (522, 5, 12, 30, 100, 20, 0, 'special'),
  -- Bulldoze Generation V
  (523, 5, 9, 60, 100, 20, 0, 'physical'),
  -- Frost Breath Generation V
  (524, 5, 6, 40, 90, 10, 0, 'special'),
  -- Dragon Tail Generation V
  (525, 5, 15, 60, 90, 10, -6, 'physical'),
  -- Work Up Generation V
  (526, 5, 1, NULL, NULL, 30, 0, 'status'),
  -- Electroweb Generation V
  (527, 5, 4, 55, 95, 15, 0, 'special'),
  -- Wild Charge Generation V
  (528, 5, 4, 90, 100, 15, 0, 'physical'),
  -- Drill Run Generation V
  (529, 5, 9, 80, 95, 10, 0, 'physical'),
  -- Dual Chop Generation V
  (530, 5, 15, 40, 90, 15, 0, 'physical'),
  -- Heart Stamp Generation V
  (531, 5, 11, 60, 100, 25, 0, 'physical'),
  -- Horn Leech Generation V
  (532, 5, 5, 75, 100, 10, 0, 'physical'),
  -- Sacred Sword Generation V
  (533, 5, 7, 90, 100, 20, 0, 'physical'),
  -- Razor Shell Generation V
  (534, 5, 3, 75, 95, 10, 0, 'physical'),
  -- Heat Crash Generation V
  (535, 5, 2, NULL, 100, 10, 0, 'physical'),
  -- Leaf Tornado Generation V
  (536, 5, 5, 65, 90, 10, 0, 'special'),
  -- Steamroller Generation V
  (537, 5, 12, 65, 100, 20, 0, 'physical'),
  -- Cotton Guard Generation V
  (538, 5, 5, NULL, NULL, 10, 0, 'status'),
  -- Night Daze Generation V
  (539, 5, 16, 85, 95, 10, 0, 'special'),
  -- Psystrike Generation V
  (540, 5, 11, 100, 100, 10, 0, 'special'),
  -- Tail Slap Generation V
  (541, 5, 1, 25, 85, 10, 0, 'physical'),
  -- Hurricane Generation V
  (542, 5, 10, 120, 70, 10, 0, 'special'),
  -- Head Charge Generation V
  (543, 5, 1, 120, 100, 15, 0, 'physical'),
  -- Gear Grind Generation V
  (544, 5, 17, 50, 85, 15, 0, 'physical'),
  -- Searing Shot Generation V
  (545, 5, 2, 100, 100, 5, 0, 'special'),
  -- Techno Blast Generation V
  (546, 5, 1, 85, 100, 5, 0, 'special'),
  -- Relic Song Generation V
  (547, 5, 1, 75, 100, 10, 0, 'special'),
  -- Secret Sword Generation V
  (548, 5, 7, 85, 100, 10, 0, 'special'),
  -- Glaciate Generation V
  (549, 5, 6, 65, 95, 10, 0, 'special'),
  -- Bolt Strike Generation V
  (550, 5, 4, 130, 85, 5, 0, 'physical'),
  -- Blue Flare Generation V
  (551, 5, 2, 130, 85, 5, 0, 'special'),
  -- Fiery Dance Generation V
  (552, 5, 2, 80, 100, 10, 0, 'special'),
  -- Freeze Shock Generation V
  (553, 5, 6, 140, 90, 5, 0, 'physical'),
  -- Ice Burn Generation V
  (554, 5, 6, 140, 90, 5, 0, 'special'),
  -- Snarl Generation V
  (555, 5, 16, 55, 95, 15, 0, 'special'),
  -- Icicle Crash Generation V
  (556, 5, 6, 85, 90, 10, 0, 'physical'),
  -- V-create Generation V
  (557, 5, 2, 180, 95, 5, 0, 'physical'),
  -- Fusion Flare Generation V
  (558, 5, 2, 100, 100, 5, 0, 'special'),
  -- Fusion Bolt Generation V
  (559, 5, 4, 100, 100, 5, 0, 'physical');
