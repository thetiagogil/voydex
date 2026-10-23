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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Hone Claws Generation V
  (468, 5, 16, NULL, NULL, 15, 0, 'status', 'Raises the user''s Attack and accuracy by one stage.'),
  -- Wide Guard Generation V
  (469, 5, 13, NULL, NULL, 10, 3, 'status', 'Protects the user''s side from moves that hit several targets this turn.'),
  -- Guard Split Generation V
  (470, 5, 11, NULL, NULL, 10, 0, 'status', 'Averages the user''s Defense and Sp. Def with the target''s.'),
  -- Power Split Generation V
  (471, 5, 11, NULL, NULL, 10, 0, 'status', 'Averages the user''s Attack and Sp. Atk with the target''s.'),
  -- Wonder Room Generation V
  (472, 5, 11, NULL, NULL, 10, 0, 'status', 'Swaps every Pokémon''s Defense and Sp. Def for five turns.'),
  -- Psyshock Generation V
  (473, 5, 11, 80, 100, 10, 0, 'special', 'A special attack that deals damage against the target''s Defense.'),
  -- Venoshock Generation V
  (474, 5, 8, 65, 100, 10, 0, 'special', 'Doubles in power against a poisoned target.'),
  -- Autotomize Generation V
  (475, 5, 17, NULL, NULL, 15, 0, 'status', 'Raises the user''s Speed by two stages and makes it lighter.'),
  -- Rage Powder Generation V
  (476, 5, 12, NULL, NULL, 20, 2, 'status', 'Draws the foes'' attacks to the user this turn.'),
  -- Telekinesis Generation V
  (477, 5, 11, NULL, NULL, 15, 0, 'status', 'Lifts the target for three turns, so most moves hit it but Ground moves miss.'),
  -- Magic Room Generation V
  (478, 5, 11, NULL, NULL, 10, 0, 'status', 'Stops every Pokémon''s held item from working for five turns.'),
  -- Smack Down Generation V
  (479, 5, 13, 50, 100, 15, 0, 'physical', 'Knocks a flying or levitating target to the ground.'),
  -- Storm Throw Generation V
  (480, 5, 7, 40, 100, 10, 0, 'physical', 'Always lands a critical hit.'),
  -- Flame Burst Generation V
  (481, 5, 2, 70, 100, 15, 0, 'special', 'Also hurts Pokémon next to the target by 1/16 of their max HP.'),
  -- Sludge Wave Generation V
  (482, 5, 8, 95, 100, 10, 0, 'special', 'May poison the target (10% chance).'),
  -- Quiver Dance Generation V
  (483, 5, 12, NULL, NULL, 20, 0, 'status', 'Raises the user''s Sp. Atk, Sp. Def and Speed by one stage.'),
  -- Heavy Slam Generation V
  (484, 5, 17, NULL, 100, 10, 0, 'physical', 'Stronger the heavier the user is than the target.'),
  -- Synchronoise Generation V
  (485, 5, 11, 70, 100, 15, 0, 'special', 'Hits only Pokémon that share a type with the user.'),
  -- Electro Ball Generation V
  (486, 5, 4, NULL, 100, 10, 0, 'special', 'Stronger the faster the user is than the target.'),
  -- Soak Generation V
  (487, 5, 3, NULL, 100, 20, 0, 'status', 'Changes the target''s type to Water.'),
  -- Flame Charge Generation V
  (488, 5, 2, 50, 100, 20, 0, 'physical', 'Raises the user''s Speed by one stage.'),
  -- Coil Generation V
  (489, 5, 8, NULL, NULL, 20, 0, 'status', 'Raises the user''s Attack, Defense and accuracy by one stage.'),
  -- Low Sweep Generation V
  (490, 5, 7, 60, 100, 20, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Acid Spray Generation V
  (491, 5, 8, 40, 100, 20, 0, 'special', 'Lowers the target''s Sp. Def by two stages.'),
  -- Foul Play Generation V
  (492, 5, 16, 95, 100, 15, 0, 'physical', 'Deals damage with the target''s Attack stat instead of the user''s.'),
  -- Simple Beam Generation V
  (493, 5, 1, NULL, 100, 15, 0, 'status', 'Changes the target''s Ability to Simple.'),
  -- Entrainment Generation V
  (494, 5, 1, NULL, 100, 15, 0, 'status', 'Makes the target''s Ability the same as the user''s.'),
  -- After You Generation V
  (495, 5, 1, NULL, NULL, 15, 0, 'status', 'Makes the target move right after the user.'),
  -- Round Generation V
  (496, 5, 1, 60, 100, 15, 0, 'special', 'Doubles in power when an ally uses it the same turn.'),
  -- Echoed Voice Generation V
  (497, 5, 1, 40, 100, 15, 0, 'special', 'Grows stronger each turn it is used in a row.'),
  -- Chip Away Generation V
  (498, 5, 1, 70, 100, 20, 0, 'physical', 'Ignores the target''s stat changes.'),
  -- Clear Smog Generation V
  (499, 5, 8, 50, NULL, 15, 0, 'special', 'Resets the target''s stat changes; never misses.'),
  -- Stored Power Generation V
  (500, 5, 11, 20, 100, 10, 0, 'special', 'Gains 20 power for each of the user''s stat boosts.'),
  -- Quick Guard Generation V
  (501, 5, 7, NULL, NULL, 15, 3, 'status', 'Protects the user''s side from priority moves this turn.'),
  -- Ally Switch Generation V
  (502, 5, 11, NULL, NULL, 15, 2, 'status', 'Swaps places with an ally.'),
  -- Scald Generation V
  (503, 5, 3, 80, 100, 15, 0, 'special', 'May burn the target (30% chance); thaws the user if frozen.'),
  -- Shell Smash Generation V
  (504, 5, 1, NULL, NULL, 15, 0, 'status', 'Raises the user''s Attack, Sp. Atk and Speed by two stages, but lowers Defense and Sp. Def by one.'),
  -- Heal Pulse Generation V
  (505, 5, 11, NULL, NULL, 10, 0, 'status', 'Restores half of the target''s max HP.'),
  -- Hex Generation V
  (506, 5, 14, 50, 100, 10, 0, 'special', 'Doubles in power against a target with a status condition.'),
  -- Sky Drop Generation V
  (507, 5, 10, 60, 100, 10, 0, 'physical', 'Carries the target into the air on the first turn and drops it on the second.'),
  -- Shift Gear Generation V
  (508, 5, 17, NULL, NULL, 10, 0, 'status', 'Raises the user''s Attack by one stage and Speed by two stages.'),
  -- Circle Throw Generation V
  (509, 5, 7, 60, 90, 10, -6, 'physical', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Incinerate Generation V
  (510, 5, 2, 30, 100, 15, 0, 'special', 'Burns up the target''s held Berry.'),
  -- Quash Generation V
  (511, 5, 16, NULL, 100, 15, 0, 'status', 'Makes the target move last this turn.'),
  -- Acrobatics Generation V
  (512, 5, 10, 55, 100, 15, 0, 'physical', 'Doubles in power if the user holds no item.'),
  -- Reflect Type Generation V
  (513, 5, 1, NULL, NULL, 15, 0, 'status', 'Changes the user''s type to match the target''s.'),
  -- Retaliate Generation V
  (514, 5, 1, 70, 100, 5, 0, 'physical', 'Doubles in power if an ally fainted on the previous turn.'),
  -- Final Gambit Generation V
  (515, 5, 7, NULL, 100, 5, 0, 'special', 'The user faints to deal damage equal to its remaining HP.'),
  -- Bestow Generation V
  (516, 5, 1, NULL, NULL, 15, 0, 'status', 'Gives the user''s held item to the target.'),
  -- Inferno Generation V
  (517, 5, 2, 100, 50, 5, 0, 'special', 'Burns the target if it hits.'),
  -- Water Pledge Generation V
  (518, 5, 3, 50, 100, 10, 0, 'special', 'Combines with an ally''s Pledge move for a stronger attack and a lasting field effect.'),
  -- Fire Pledge Generation V
  (519, 5, 2, 50, 100, 10, 0, 'special', 'Combines with an ally''s Pledge move for a stronger attack and a lasting field effect.'),
  -- Grass Pledge Generation V
  (520, 5, 5, 50, 100, 10, 0, 'special', 'Combines with an ally''s Pledge move for a stronger attack and a lasting field effect.'),
  -- Volt Switch Generation V
  (521, 5, 4, 70, 100, 20, 0, 'special', 'Switches the user out after it attacks.'),
  -- Struggle Bug Generation V
  (522, 5, 12, 30, 100, 20, 0, 'special', 'Lowers the target''s Sp. Atk by one stage.'),
  -- Bulldoze Generation V
  (523, 5, 9, 60, 100, 20, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Frost Breath Generation V
  (524, 5, 6, 40, 90, 10, 0, 'special', 'Always lands a critical hit.'),
  -- Dragon Tail Generation V
  (525, 5, 15, 60, 90, 10, -6, 'physical', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Work Up Generation V
  (526, 5, 1, NULL, NULL, 30, 0, 'status', 'Raises the user''s Attack and Sp. Atk by one stage.'),
  -- Electroweb Generation V
  (527, 5, 4, 55, 95, 15, 0, 'special', 'Lowers the target''s Speed by one stage.'),
  -- Wild Charge Generation V
  (528, 5, 4, 90, 100, 15, 0, 'physical', 'The user takes 1/4 of the damage dealt as recoil.'),
  -- Drill Run Generation V
  (529, 5, 9, 80, 95, 10, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Dual Chop Generation V
  (530, 5, 15, 40, 90, 15, 0, 'physical', 'Hits twice in a row.'),
  -- Heart Stamp Generation V
  (531, 5, 11, 60, 100, 25, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Horn Leech Generation V
  (532, 5, 5, 75, 100, 10, 0, 'physical', 'Restores the user''s HP by half of the damage dealt.'),
  -- Sacred Sword Generation V
  (533, 5, 7, 90, 100, 20, 0, 'physical', 'Ignores the target''s stat changes.'),
  -- Razor Shell Generation V
  (534, 5, 3, 75, 95, 10, 0, 'physical', 'May lower the target''s Defense by one stage (50% chance).'),
  -- Heat Crash Generation V
  (535, 5, 2, NULL, 100, 10, 0, 'physical', 'Stronger the heavier the user is than the target.'),
  -- Leaf Tornado Generation V
  (536, 5, 5, 65, 90, 10, 0, 'special', 'May lower the target''s accuracy by one stage (50% chance).'),
  -- Steamroller Generation V
  (537, 5, 12, 65, 100, 20, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Cotton Guard Generation V
  (538, 5, 5, NULL, NULL, 10, 0, 'status', 'Raises the user''s Defense by three stages.'),
  -- Night Daze Generation V
  (539, 5, 16, 85, 95, 10, 0, 'special', 'May lower the target''s accuracy by one stage (40% chance).'),
  -- Psystrike Generation V
  (540, 5, 11, 100, 100, 10, 0, 'special', 'A special attack that deals damage against the target''s Defense.'),
  -- Tail Slap Generation V
  (541, 5, 1, 25, 85, 10, 0, 'physical', 'Hits two to five times in a row.'),
  -- Hurricane Generation V
  (542, 5, 10, 120, 70, 10, 0, 'special', 'May confuse the target (30% chance) and never misses in rain.'),
  -- Head Charge Generation V
  (543, 5, 1, 120, 100, 15, 0, 'physical', 'The user takes 1/4 of the damage dealt as recoil.'),
  -- Gear Grind Generation V
  (544, 5, 17, 50, 85, 15, 0, 'physical', 'Hits twice in a row.'),
  -- Searing Shot Generation V
  (545, 5, 2, 100, 100, 5, 0, 'special', 'May burn the target (30% chance).'),
  -- Techno Blast Generation V
  (546, 5, 1, 85, 100, 5, 0, 'special', 'Its type matches the Drive the user holds.'),
  -- Relic Song Generation V
  (547, 5, 1, 75, 100, 10, 0, 'special', 'May put the target to sleep (10% chance); changes Meloetta''s form.'),
  -- Secret Sword Generation V
  (548, 5, 7, 85, 100, 10, 0, 'special', 'A special attack that deals damage against the target''s Defense.'),
  -- Glaciate Generation V
  (549, 5, 6, 65, 95, 10, 0, 'special', 'Lowers the target''s Speed by one stage.'),
  -- Bolt Strike Generation V
  (550, 5, 4, 130, 85, 5, 0, 'physical', 'May paralyze the target (20% chance).'),
  -- Blue Flare Generation V
  (551, 5, 2, 130, 85, 5, 0, 'special', 'May burn the target (20% chance).'),
  -- Fiery Dance Generation V
  (552, 5, 2, 80, 100, 10, 0, 'special', 'May raise the user''s Sp. Atk by one stage (50% chance).'),
  -- Freeze Shock Generation V
  (553, 5, 6, 140, 90, 5, 0, 'physical', 'Charges on the first turn and strikes on the second; may paralyze the target (30% chance).'),
  -- Ice Burn Generation V
  (554, 5, 6, 140, 90, 5, 0, 'special', 'Charges on the first turn and strikes on the second; may burn the target (30% chance).'),
  -- Snarl Generation V
  (555, 5, 16, 55, 95, 15, 0, 'special', 'Lowers the target''s Sp. Atk by one stage.'),
  -- Icicle Crash Generation V
  (556, 5, 6, 85, 90, 10, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- V-create Generation V
  (557, 5, 2, 180, 95, 5, 0, 'physical', 'Lowers the user''s Defense, Sp. Def and Speed by one stage.'),
  -- Fusion Flare Generation V
  (558, 5, 2, 100, 100, 5, 0, 'special', 'Doubles in power right after Fusion Bolt is used.'),
  -- Fusion Bolt Generation V
  (559, 5, 4, 100, 100, 5, 0, 'physical', 'Doubles in power right after Fusion Flare is used.');
