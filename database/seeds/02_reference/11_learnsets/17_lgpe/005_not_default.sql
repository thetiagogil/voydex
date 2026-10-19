-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages, LGPE sections.
-- Cross-check: PokemonDB Let's Go learnset pages and Serebii LGPE Pokedex pages.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! learnsets for non-default forms.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Rattata (Alolan Rattata) - Tackle - Level 1
  (19, 1901, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata (Alolan Rattata) - Tail Whip - Level 3
  (19, 1901, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Rattata (Alolan Rattata) - Quick Attack - Level 6
  (19, 1901, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rattata (Alolan Rattata) - Focus Energy - Level 9
  (19, 1901, 116, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Rattata (Alolan Rattata) - Bite - Level 12
  (19, 1901, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rattata (Alolan Rattata) - Super Fang - Level 15
  (19, 1901, 162, 17, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rattata (Alolan Rattata) - Crunch - Level 18
  (19, 1901, 242, 17, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rattata (Alolan Rattata) - Hyper Fang - Level 21
  (19, 1901, 158, 17, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Rattata (Alolan Rattata) - Sucker Punch - Level 24
  (19, 1901, 389, 17, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Rattata (Alolan Rattata) - Double-Edge - Level 27
  (19, 1901, 38, 17, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Rattata (Alolan Rattata) - Headbutt - TM01
  (19, 1901, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Rattata (Alolan Rattata) - Taunt - TM02
  (19, 1901, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Rattata (Alolan Rattata) - Rest - TM05
  (19, 1901, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Rattata (Alolan Rattata) - Protect - TM07
  (19, 1901, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Rattata (Alolan Rattata) - Substitute - TM08
  (19, 1901, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Rattata (Alolan Rattata) - Dig - TM10
  (19, 1901, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Rattata (Alolan Rattata) - Facade - TM12
  (19, 1901, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Rattata (Alolan Rattata) - U-turn - TM18
  (19, 1901, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 18),
  -- Rattata (Alolan Rattata) - Iron Tail - TM19
  (19, 1901, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Rattata (Alolan Rattata) - Dark Pulse - TM20
  (19, 1901, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 20),
  -- Rattata (Alolan Rattata) - Toxic - TM27
  (19, 1901, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Rattata (Alolan Rattata) - Shadow Ball - TM43
  (19, 1901, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 22),
  -- Rattata (Alolan Rattata) - Blizzard - TM51
  (19, 1901, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 23),
  -- Rattata (Alolan Rattata) - Sludge Bomb - TM52
  (19, 1901, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 24),
  -- Rattata (Alolan Rattata) - Ice Beam - TM55
  (19, 1901, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 25),
  -- Raticate (Alolan Raticate) - Swords Dance - Level 1
  (20, 2001, 14, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate (Alolan Raticate) - Counter - Level 1
  (20, 2001, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate (Alolan Raticate) - Fury Swipes - Level 1
  (20, 2001, 154, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate (Alolan Raticate) - Tackle - Level 1
  (20, 2001, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raticate (Alolan Raticate) - Tail Whip - Level 1
  (20, 2001, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raticate (Alolan Raticate) - Quick Attack - Level 1
  (20, 2001, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raticate (Alolan Raticate) - Focus Energy - Level 1
  (20, 2001, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raticate (Alolan Raticate) - Tail Whip - Level 3
  (20, 2001, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Raticate (Alolan Raticate) - Quick Attack - Level 6
  (20, 2001, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Raticate (Alolan Raticate) - Focus Energy - Level 9
  (20, 2001, 116, 17, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Raticate (Alolan Raticate) - Bite - Level 12
  (20, 2001, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Raticate (Alolan Raticate) - Super Fang - Level 15
  (20, 2001, 162, 17, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Raticate (Alolan Raticate) - Crunch - Level 18
  (20, 2001, 242, 17, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Raticate (Alolan Raticate) - Hyper Fang - Level 26
  (20, 2001, 158, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Raticate (Alolan Raticate) - Sucker Punch - Level 34
  (20, 2001, 389, 17, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Raticate (Alolan Raticate) - Double-Edge - Level 42
  (20, 2001, 38, 17, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Raticate (Alolan Raticate) - Headbutt - TM01
  (20, 2001, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Raticate (Alolan Raticate) - Taunt - TM02
  (20, 2001, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 18),
  -- Raticate (Alolan Raticate) - Rest - TM05
  (20, 2001, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Raticate (Alolan Raticate) - Protect - TM07
  (20, 2001, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Raticate (Alolan Raticate) - Substitute - TM08
  (20, 2001, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Raticate (Alolan Raticate) - Dig - TM10
  (20, 2001, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 22),
  -- Raticate (Alolan Raticate) - Facade - TM12
  (20, 2001, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Raticate (Alolan Raticate) - U-turn - TM18
  (20, 2001, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 24),
  -- Raticate (Alolan Raticate) - Iron Tail - TM19
  (20, 2001, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Raticate (Alolan Raticate) - Dark Pulse - TM20
  (20, 2001, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 26),
  -- Raticate (Alolan Raticate) - Toxic - TM27
  (20, 2001, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Raticate (Alolan Raticate) - Bulk Up - TM30
  (20, 2001, 339, 17, NULL, 2, NULL, NULL, 17002030, NULL, 28),
  -- Raticate (Alolan Raticate) - Shadow Ball - TM43
  (20, 2001, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 29),
  -- Raticate (Alolan Raticate) - Hyper Beam - TM48
  (20, 2001, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 30),
  -- Raticate (Alolan Raticate) - Blizzard - TM51
  (20, 2001, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 31),
  -- Raticate (Alolan Raticate) - Sludge Bomb - TM52
  (20, 2001, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 32),
  -- Raticate (Alolan Raticate) - Ice Beam - TM55
  (20, 2001, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Pikachu (Partner) - Thunder Shock - Level 1
  (25, 2501, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu (Partner) - Growl - Level 1
  (25, 2501, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu (Partner) - Tail Whip - Level 3
  (25, 2501, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Pikachu (Partner) - Quick Attack - Level 6
  (25, 2501, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Pikachu (Partner) - Double Kick - Level 9
  (25, 2501, 24, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pikachu (Partner) - Double Team - Level 12
  (25, 2501, 104, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pikachu (Partner) - Thunder Wave - Level 15
  (25, 2501, 86, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pikachu (Partner) - Light Screen - Level 18
  (25, 2501, 113, 17, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Pikachu (Partner) - Thunderbolt - Level 21
  (25, 2501, 85, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Pikachu (Partner) - Slam - Level 24
  (25, 2501, 21, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pikachu (Partner) - Agility - Level 27
  (25, 2501, 97, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Pikachu (Partner) - Thunder - Level 30
  (25, 2501, 87, 17, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Pikachu (Partner) - Headbutt - TM01
  (25, 2501, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Pikachu (Partner) - Helping Hand - TM03
  (25, 2501, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Pikachu (Partner) - Rest - TM05
  (25, 2501, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Pikachu (Partner) - Light Screen - TM06
  (25, 2501, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Pikachu (Partner) - Protect - TM07
  (25, 2501, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Pikachu (Partner) - Substitute - TM08
  (25, 2501, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Pikachu (Partner) - Reflect - TM09
  (25, 2501, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Pikachu (Partner) - Dig - TM10
  (25, 2501, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Pikachu (Partner) - Facade - TM12
  (25, 2501, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Pikachu (Partner) - Brick Break - TM13
  (25, 2501, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Pikachu (Partner) - Seismic Toss - TM15
  (25, 2501, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Pikachu (Partner) - Thunder Wave - TM16
  (25, 2501, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Pikachu (Partner) - Iron Tail - TM19
  (25, 2501, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Pikachu (Partner) - Thunder Punch - TM23
  (25, 2501, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Pikachu (Partner) - Toxic - TM27
  (25, 2501, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Pikachu (Partner) - Calm Mind - TM33
  (25, 2501, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 28),
  -- Pikachu (Partner) - Thunderbolt - TM36
  (25, 2501, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 29),
  -- Pikachu (Partner) - Thunder - TM38
  (25, 2501, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 30),
  -- Pikachu (Partner) - Pay Day - TM57
  (25, 2501, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 31),
  -- Pikachu (Partner) - Zippy Zap - Move Tutor
  (25, 2501, 729, 17, NULL, 6, NULL, NULL, NULL, 'Partner Pikachu Move Tutor in Cerulean City.', 32),
  -- Pikachu (Partner) - Floaty Fall - Move Tutor
  (25, 2501, 731, 17, NULL, 6, NULL, NULL, NULL, 'Partner Pikachu Move Tutor in Celadon City.', 33),
  -- Pikachu (Partner) - Splishy Splash - Move Tutor
  (25, 2501, 730, 17, NULL, 6, NULL, NULL, NULL, 'Partner Pikachu Move Tutor in Fuchsia City.', 34),
  -- Pikachu (Partner) - Pika Papow - Special Move
  (25, 2501, 732, 17, NULL, 12, NULL, NULL, NULL, 'Partner Power exclusive to Partner Pikachu.', 35),
  -- Raichu (Alolan Raichu) - Psychic - Level 1
  (26, 2601, 94, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu (Alolan Raichu) - Encore - Level 1
  (26, 2601, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu (Alolan Raichu) - Fake Out - Level 1
  (26, 2601, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu (Alolan Raichu) - Thunder Shock - Level 1
  (26, 2601, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu (Alolan Raichu) - Growl - Level 1
  (26, 2601, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raichu (Alolan Raichu) - Tail Whip - Level 1
  (26, 2601, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raichu (Alolan Raichu) - Double Team - Level 1
  (26, 2601, 104, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raichu (Alolan Raichu) - Psychic - Evolution
  (26, 2601, 94, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Raichu (Alolan Raichu) - Headbutt - TM01
  (26, 2601, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 9),
  -- Raichu (Alolan Raichu) - Helping Hand - TM03
  (26, 2601, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 10),
  -- Raichu (Alolan Raichu) - Teleport - TM04
  (26, 2601, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 11),
  -- Raichu (Alolan Raichu) - Rest - TM05
  (26, 2601, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Raichu (Alolan Raichu) - Light Screen - TM06
  (26, 2601, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 13),
  -- Raichu (Alolan Raichu) - Protect - TM07
  (26, 2601, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Raichu (Alolan Raichu) - Substitute - TM08
  (26, 2601, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Raichu (Alolan Raichu) - Reflect - TM09
  (26, 2601, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Raichu (Alolan Raichu) - Dig - TM10
  (26, 2601, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Raichu (Alolan Raichu) - Facade - TM12
  (26, 2601, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Raichu (Alolan Raichu) - Brick Break - TM13
  (26, 2601, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Raichu (Alolan Raichu) - Seismic Toss - TM15
  (26, 2601, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Raichu (Alolan Raichu) - Thunder Wave - TM16
  (26, 2601, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 21),
  -- Raichu (Alolan Raichu) - Iron Tail - TM19
  (26, 2601, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Raichu (Alolan Raichu) - Thunder Punch - TM23
  (26, 2601, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 23),
  -- Raichu (Alolan Raichu) - Toxic - TM27
  (26, 2601, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Raichu (Alolan Raichu) - Calm Mind - TM33
  (26, 2601, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 25),
  -- Raichu (Alolan Raichu) - Thunderbolt - TM36
  (26, 2601, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 26),
  -- Raichu (Alolan Raichu) - Thunder - TM38
  (26, 2601, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Raichu (Alolan Raichu) - Psychic - TM40
  (26, 2601, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 28),
  -- Raichu (Alolan Raichu) - Hyper Beam - TM48
  (26, 2601, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Raichu (Alolan Raichu) - Pay Day - TM57
  (26, 2601, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 30),
  -- Sandshrew (Alolan Sandshrew) - Scratch - Level 1
  (27, 2701, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew (Alolan Sandshrew) - Defense Curl - Level 1
  (27, 2701, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew (Alolan Sandshrew) - Bide - Level 4
  (27, 2701, 117, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sandshrew (Alolan Sandshrew) - Ice Shard - Level 8
  (27, 2701, 420, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sandshrew (Alolan Sandshrew) - Swift - Level 12
  (27, 2701, 129, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sandshrew (Alolan Sandshrew) - Mirror Coat - Level 16
  (27, 2701, 243, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sandshrew (Alolan Sandshrew) - Fury Swipes - Level 20
  (27, 2701, 154, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sandshrew (Alolan Sandshrew) - Ice Punch - Level 24
  (27, 2701, 8, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sandshrew (Alolan Sandshrew) - Swords Dance - Level 28
  (27, 2701, 14, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sandshrew (Alolan Sandshrew) - Slash - Level 32
  (27, 2701, 163, 17, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Sandshrew (Alolan Sandshrew) - Blizzard - Level 36
  (27, 2701, 59, 17, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sandshrew (Alolan Sandshrew) - Headbutt - TM01
  (27, 2701, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Sandshrew (Alolan Sandshrew) - Rest - TM05
  (27, 2701, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Sandshrew (Alolan Sandshrew) - Protect - TM07
  (27, 2701, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Sandshrew (Alolan Sandshrew) - Substitute - TM08
  (27, 2701, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Sandshrew (Alolan Sandshrew) - Dig - TM10
  (27, 2701, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Sandshrew (Alolan Sandshrew) - Facade - TM12
  (27, 2701, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Sandshrew (Alolan Sandshrew) - Brick Break - TM13
  (27, 2701, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Sandshrew (Alolan Sandshrew) - Seismic Toss - TM15
  (27, 2701, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Sandshrew (Alolan Sandshrew) - Iron Tail - TM19
  (27, 2701, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Sandshrew (Alolan Sandshrew) - Rock Slide - TM22
  (27, 2701, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Sandshrew (Alolan Sandshrew) - X-Scissor - TM24
  (27, 2701, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 22),
  -- Sandshrew (Alolan Sandshrew) - Poison Jab - TM26
  (27, 2701, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 23),
  -- Sandshrew (Alolan Sandshrew) - Toxic - TM27
  (27, 2701, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Sandshrew (Alolan Sandshrew) - Ice Punch - TM35
  (27, 2701, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 25),
  -- Sandshrew (Alolan Sandshrew) - Earthquake - TM41
  (27, 2701, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 26),
  -- Sandshrew (Alolan Sandshrew) - Blizzard - TM51
  (27, 2701, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 27),
  -- Sandshrew (Alolan Sandshrew) - Ice Beam - TM55
  (27, 2701, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 28),
  -- Sandshrew (Alolan Sandshrew) - Stealth Rock - TM56
  (27, 2701, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 29),
  -- Sandslash (Alolan Sandslash) - Counter - Level 1
  (28, 2801, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash (Alolan Sandslash) - Scratch - Level 1
  (28, 2801, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash (Alolan Sandslash) - Defense Curl - Level 1
  (28, 2801, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash (Alolan Sandslash) - Bide - Level 1
  (28, 2801, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash (Alolan Sandslash) - Ice Shard - Level 1
  (28, 2801, 420, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandslash (Alolan Sandslash) - Headbutt - TM01
  (28, 2801, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 6),
  -- Sandslash (Alolan Sandslash) - Rest - TM05
  (28, 2801, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 7),
  -- Sandslash (Alolan Sandslash) - Protect - TM07
  (28, 2801, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 8),
  -- Sandslash (Alolan Sandslash) - Substitute - TM08
  (28, 2801, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 9),
  -- Sandslash (Alolan Sandslash) - Dig - TM10
  (28, 2801, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 10),
  -- Sandslash (Alolan Sandslash) - Facade - TM12
  (28, 2801, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 11),
  -- Sandslash (Alolan Sandslash) - Brick Break - TM13
  (28, 2801, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 12),
  -- Sandslash (Alolan Sandslash) - Seismic Toss - TM15
  (28, 2801, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 13),
  -- Sandslash (Alolan Sandslash) - Iron Tail - TM19
  (28, 2801, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 14),
  -- Sandslash (Alolan Sandslash) - Rock Slide - TM22
  (28, 2801, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 15),
  -- Sandslash (Alolan Sandslash) - X-Scissor - TM24
  (28, 2801, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 16),
  -- Sandslash (Alolan Sandslash) - Poison Jab - TM26
  (28, 2801, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 17),
  -- Sandslash (Alolan Sandslash) - Toxic - TM27
  (28, 2801, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Sandslash (Alolan Sandslash) - Ice Punch - TM35
  (28, 2801, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 19),
  -- Sandslash (Alolan Sandslash) - Earthquake - TM41
  (28, 2801, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 20),
  -- Sandslash (Alolan Sandslash) - Hyper Beam - TM48
  (28, 2801, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 21),
  -- Sandslash (Alolan Sandslash) - Blizzard - TM51
  (28, 2801, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 22),
  -- Sandslash (Alolan Sandslash) - Ice Beam - TM55
  (28, 2801, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 23),
  -- Sandslash (Alolan Sandslash) - Stealth Rock - TM56
  (28, 2801, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 24),
  -- Sandslash (Alolan Sandslash) - Drill Run - TM58
  (28, 2801, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 25),
  -- Vulpix (Alolan Vulpix) - Tackle - Level 1
  (37, 3701, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix (Alolan Vulpix) - Tail Whip - Level 3
  (37, 3701, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Vulpix (Alolan Vulpix) - Mist - Level 7
  (37, 3701, 54, 17, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vulpix (Alolan Vulpix) - Ice Shard - Level 10
  (37, 3701, 420, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vulpix (Alolan Vulpix) - Confuse Ray - Level 14
  (37, 3701, 109, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Vulpix (Alolan Vulpix) - Aurora Beam - Level 17
  (37, 3701, 62, 17, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vulpix (Alolan Vulpix) - Dazzling Gleam - Level 21
  (37, 3701, 605, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Vulpix (Alolan Vulpix) - Ice Beam - Level 24
  (37, 3701, 58, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix (Alolan Vulpix) - Roar - Level 28
  (37, 3701, 46, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix (Alolan Vulpix) - Blizzard - Level 31
  (37, 3701, 59, 17, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vulpix (Alolan Vulpix) - Headbutt - TM01
  (37, 3701, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Vulpix (Alolan Vulpix) - Rest - TM05
  (37, 3701, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Vulpix (Alolan Vulpix) - Protect - TM07
  (37, 3701, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Vulpix (Alolan Vulpix) - Substitute - TM08
  (37, 3701, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Vulpix (Alolan Vulpix) - Reflect - TM09
  (37, 3701, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Vulpix (Alolan Vulpix) - Dig - TM10
  (37, 3701, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Vulpix (Alolan Vulpix) - Facade - TM12
  (37, 3701, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Vulpix (Alolan Vulpix) - Iron Tail - TM19
  (37, 3701, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 18),
  -- Vulpix (Alolan Vulpix) - Dark Pulse - TM20
  (37, 3701, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 19),
  -- Vulpix (Alolan Vulpix) - Foul Play - TM21
  (37, 3701, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 20),
  -- Vulpix (Alolan Vulpix) - Toxic - TM27
  (37, 3701, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Vulpix (Alolan Vulpix) - Dazzling Gleam - TM32
  (37, 3701, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 22),
  -- Vulpix (Alolan Vulpix) - Blizzard - TM51
  (37, 3701, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 23),
  -- Vulpix (Alolan Vulpix) - Ice Beam - TM55
  (37, 3701, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 24),
  -- Ninetales (Alolan Ninetales) - Hypnosis - Level 1
  (38, 3801, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales (Alolan Ninetales) - Nasty Plot - Level 1
  (38, 3801, 417, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales (Alolan Ninetales) - Tackle - Level 1
  (38, 3801, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales (Alolan Ninetales) - Tail Whip - Level 1
  (38, 3801, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales (Alolan Ninetales) - Mist - Level 1
  (38, 3801, 54, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninetales (Alolan Ninetales) - Ice Shard - Level 1
  (38, 3801, 420, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ninetales (Alolan Ninetales) - Headbutt - TM01
  (38, 3801, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 7),
  -- Ninetales (Alolan Ninetales) - Rest - TM05
  (38, 3801, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 8),
  -- Ninetales (Alolan Ninetales) - Protect - TM07
  (38, 3801, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 9),
  -- Ninetales (Alolan Ninetales) - Substitute - TM08
  (38, 3801, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 10),
  -- Ninetales (Alolan Ninetales) - Reflect - TM09
  (38, 3801, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 11),
  -- Ninetales (Alolan Ninetales) - Dig - TM10
  (38, 3801, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 12),
  -- Ninetales (Alolan Ninetales) - Facade - TM12
  (38, 3801, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 13),
  -- Ninetales (Alolan Ninetales) - Iron Tail - TM19
  (38, 3801, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 14),
  -- Ninetales (Alolan Ninetales) - Dark Pulse - TM20
  (38, 3801, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 15),
  -- Ninetales (Alolan Ninetales) - Foul Play - TM21
  (38, 3801, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 16),
  -- Ninetales (Alolan Ninetales) - Toxic - TM27
  (38, 3801, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - TM32
  (38, 3801, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 18),
  -- Ninetales (Alolan Ninetales) - Calm Mind - TM33
  (38, 3801, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 19),
  -- Ninetales (Alolan Ninetales) - Hyper Beam - TM48
  (38, 3801, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 20),
  -- Ninetales (Alolan Ninetales) - Blizzard - TM51
  (38, 3801, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 21),
  -- Ninetales (Alolan Ninetales) - Ice Beam - TM55
  (38, 3801, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 22),
  -- Ninetales (Alolan Ninetales) - Dream Eater - TM59
  (38, 3801, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 23),
  -- Diglett (Alolan Diglett) - Scratch - Level 1
  (50, 5001, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett (Alolan Diglett) - Sand Attack - Level 4
  (50, 5001, 28, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Diglett (Alolan Diglett) - Growl - Level 8
  (50, 5001, 45, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Diglett (Alolan Diglett) - Agility - Level 12
  (50, 5001, 97, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Diglett (Alolan Diglett) - Fury Swipes - Level 15
  (50, 5001, 154, 17, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Diglett (Alolan Diglett) - Dig - Level 18
  (50, 5001, 91, 17, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Diglett (Alolan Diglett) - Slash - Level 21
  (50, 5001, 163, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Diglett (Alolan Diglett) - Sucker Punch - Level 25
  (50, 5001, 389, 17, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Diglett (Alolan Diglett) - Earthquake - Level 29
  (50, 5001, 89, 17, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Diglett (Alolan Diglett) - Fissure - Level 33
  (50, 5001, 90, 17, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Diglett (Alolan Diglett) - Headbutt - TM01
  (50, 5001, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Diglett (Alolan Diglett) - Rest - TM05
  (50, 5001, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Diglett (Alolan Diglett) - Protect - TM07
  (50, 5001, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Diglett (Alolan Diglett) - Substitute - TM08
  (50, 5001, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Diglett (Alolan Diglett) - Dig - TM10
  (50, 5001, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Diglett (Alolan Diglett) - Facade - TM12
  (50, 5001, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Diglett (Alolan Diglett) - Rock Slide - TM22
  (50, 5001, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 17),
  -- Diglett (Alolan Diglett) - Toxic - TM27
  (50, 5001, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Diglett (Alolan Diglett) - Earthquake - TM41
  (50, 5001, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 19),
  -- Diglett (Alolan Diglett) - Sludge Bomb - TM52
  (50, 5001, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 20),
  -- Diglett (Alolan Diglett) - Flash Cannon - TM54
  (50, 5001, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 21),
  -- Diglett (Alolan Diglett) - Stealth Rock - TM56
  (50, 5001, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 22),
  -- Dugtrio (Alolan Dugtrio) - Tri Attack - Level 1
  (51, 5101, 161, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio (Alolan Dugtrio) - Screech - Level 1
  (51, 5101, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio (Alolan Dugtrio) - Scratch - Level 1
  (51, 5101, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio (Alolan Dugtrio) - Sand Attack - Level 1
  (51, 5101, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio (Alolan Dugtrio) - Growl - Level 1
  (51, 5101, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio (Alolan Dugtrio) - Agility - Level 1
  (51, 5101, 97, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio (Alolan Dugtrio) - Tri Attack - Evolution
  (51, 5101, 161, 17, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Dugtrio (Alolan Dugtrio) - Sand Attack - Level 4
  (51, 5101, 28, 17, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Dugtrio (Alolan Dugtrio) - Growl - Level 8
  (51, 5101, 45, 17, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Dugtrio (Alolan Dugtrio) - Agility - Level 12
  (51, 5101, 97, 17, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Dugtrio (Alolan Dugtrio) - Fury Swipes - Level 15
  (51, 5101, 154, 17, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Dugtrio (Alolan Dugtrio) - Dig - Level 18
  (51, 5101, 91, 17, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Dugtrio (Alolan Dugtrio) - Slash - Level 21
  (51, 5101, 163, 17, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Dugtrio (Alolan Dugtrio) - Sucker Punch - Level 25
  (51, 5101, 389, 17, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dugtrio (Alolan Dugtrio) - Earthquake - Level 35
  (51, 5101, 89, 17, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Dugtrio (Alolan Dugtrio) - Fissure - Level 45
  (51, 5101, 90, 17, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Dugtrio (Alolan Dugtrio) - Headbutt - TM01
  (51, 5101, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Dugtrio (Alolan Dugtrio) - Rest - TM05
  (51, 5101, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Dugtrio (Alolan Dugtrio) - Protect - TM07
  (51, 5101, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Dugtrio (Alolan Dugtrio) - Substitute - TM08
  (51, 5101, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Dugtrio (Alolan Dugtrio) - Dig - TM10
  (51, 5101, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Dugtrio (Alolan Dugtrio) - Facade - TM12
  (51, 5101, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Dugtrio (Alolan Dugtrio) - Rock Slide - TM22
  (51, 5101, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Dugtrio (Alolan Dugtrio) - Toxic - TM27
  (51, 5101, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Dugtrio (Alolan Dugtrio) - Tri Attack - TM28
  (51, 5101, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 25),
  -- Dugtrio (Alolan Dugtrio) - Earthquake - TM41
  (51, 5101, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 26),
  -- Dugtrio (Alolan Dugtrio) - Hyper Beam - TM48
  (51, 5101, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Dugtrio (Alolan Dugtrio) - Sludge Bomb - TM52
  (51, 5101, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 28),
  -- Dugtrio (Alolan Dugtrio) - Flash Cannon - TM54
  (51, 5101, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 29),
  -- Dugtrio (Alolan Dugtrio) - Stealth Rock - TM56
  (51, 5101, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 30),
  -- Meowth (Alolan Meowth) - Scratch - Level 1
  (52, 5201, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth (Alolan Meowth) - Growl - Level 1
  (52, 5201, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth (Alolan Meowth) - Bite - Level 1
  (52, 5201, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowth (Alolan Meowth) - Fake Out - Level 1
  (52, 5201, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowth (Alolan Meowth) - Bite - Level 3
  (52, 5201, 44, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Meowth (Alolan Meowth) - Fake Out - Level 6
  (52, 5201, 252, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Meowth (Alolan Meowth) - Taunt - Level 9
  (52, 5201, 269, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowth (Alolan Meowth) - Pay Day - Level 12
  (52, 5201, 6, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Meowth (Alolan Meowth) - Feint - Level 15
  (52, 5201, 364, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Meowth (Alolan Meowth) - Fury Swipes - Level 19
  (52, 5201, 154, 17, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Meowth (Alolan Meowth) - Screech - Level 23
  (52, 5201, 103, 17, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Meowth (Alolan Meowth) - Slash - Level 27
  (52, 5201, 163, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Meowth (Alolan Meowth) - Nasty Plot - Level 31
  (52, 5201, 417, 17, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Meowth (Alolan Meowth) - Play Rough - Level 35
  (52, 5201, 583, 17, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Meowth (Alolan Meowth) - Headbutt - TM01
  (52, 5201, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Meowth (Alolan Meowth) - Taunt - TM02
  (52, 5201, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Meowth (Alolan Meowth) - Rest - TM05
  (52, 5201, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Meowth (Alolan Meowth) - Protect - TM07
  (52, 5201, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Meowth (Alolan Meowth) - Substitute - TM08
  (52, 5201, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Meowth (Alolan Meowth) - Facade - TM12
  (52, 5201, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Meowth (Alolan Meowth) - U-turn - TM18
  (52, 5201, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 21),
  -- Meowth (Alolan Meowth) - Iron Tail - TM19
  (52, 5201, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Meowth (Alolan Meowth) - Dark Pulse - TM20
  (52, 5201, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 23),
  -- Meowth (Alolan Meowth) - Foul Play - TM21
  (52, 5201, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 24),
  -- Meowth (Alolan Meowth) - Toxic - TM27
  (52, 5201, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Meowth (Alolan Meowth) - Thunderbolt - TM36
  (52, 5201, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 26),
  -- Meowth (Alolan Meowth) - Thunder - TM38
  (52, 5201, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 27),
  -- Meowth (Alolan Meowth) - Shadow Ball - TM43
  (52, 5201, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 28),
  -- Meowth (Alolan Meowth) - Play Rough - TM44
  (52, 5201, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 29),
  -- Meowth (Alolan Meowth) - Pay Day - TM57
  (52, 5201, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 30),
  -- Meowth (Alolan Meowth) - Dream Eater - TM59
  (52, 5201, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 31),
  -- Persian (Alolan Persian) - Swift - Level 1
  (53, 5301, 129, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian (Alolan Persian) - Amnesia - Level 1
  (53, 5301, 133, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian (Alolan Persian) - Hypnosis - Level 1
  (53, 5301, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian (Alolan Persian) - Scratch - Level 1
  (53, 5301, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian (Alolan Persian) - Growl - Level 1
  (53, 5301, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian (Alolan Persian) - Bite - Level 1
  (53, 5301, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian (Alolan Persian) - Fake Out - Level 1
  (53, 5301, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Persian (Alolan Persian) - Swift - Evolution
  (53, 5301, 129, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Persian (Alolan Persian) - Bite - Level 3
  (53, 5301, 44, 17, NULL, 1, 3, NULL, NULL, NULL, 9),
  -- Persian (Alolan Persian) - Fake Out - Level 6
  (53, 5301, 252, 17, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Persian (Alolan Persian) - Taunt - Level 9
  (53, 5301, 269, 17, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Persian (Alolan Persian) - Pay Day - Level 12
  (53, 5301, 6, 17, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Persian (Alolan Persian) - Feint - Level 16
  (53, 5301, 364, 17, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Persian (Alolan Persian) - Fury Swipes - Level 19
  (53, 5301, 154, 17, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Persian (Alolan Persian) - Screech - Level 23
  (53, 5301, 103, 17, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Persian (Alolan Persian) - Slash - Level 27
  (53, 5301, 163, 17, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Persian (Alolan Persian) - Nasty Plot - Level 37
  (53, 5301, 417, 17, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Persian (Alolan Persian) - Play Rough - Level 47
  (53, 5301, 583, 17, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Persian (Alolan Persian) - Headbutt - TM01
  (53, 5301, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 19),
  -- Persian (Alolan Persian) - Taunt - TM02
  (53, 5301, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 20),
  -- Persian (Alolan Persian) - Rest - TM05
  (53, 5301, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 21),
  -- Persian (Alolan Persian) - Protect - TM07
  (53, 5301, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 22),
  -- Persian (Alolan Persian) - Substitute - TM08
  (53, 5301, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 23),
  -- Persian (Alolan Persian) - Facade - TM12
  (53, 5301, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Persian (Alolan Persian) - U-turn - TM18
  (53, 5301, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 25),
  -- Persian (Alolan Persian) - Iron Tail - TM19
  (53, 5301, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Persian (Alolan Persian) - Dark Pulse - TM20
  (53, 5301, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 27),
  -- Persian (Alolan Persian) - Foul Play - TM21
  (53, 5301, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 28),
  -- Persian (Alolan Persian) - Toxic - TM27
  (53, 5301, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Persian (Alolan Persian) - Thunderbolt - TM36
  (53, 5301, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 30),
  -- Persian (Alolan Persian) - Thunder - TM38
  (53, 5301, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 31),
  -- Persian (Alolan Persian) - Shadow Ball - TM43
  (53, 5301, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 32),
  -- Persian (Alolan Persian) - Play Rough - TM44
  (53, 5301, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 33),
  -- Persian (Alolan Persian) - Hyper Beam - TM48
  (53, 5301, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 34),
  -- Persian (Alolan Persian) - Pay Day - TM57
  (53, 5301, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 35),
  -- Persian (Alolan Persian) - Dream Eater - TM59
  (53, 5301, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 36),
  -- Geodude (Alolan Geodude) - Tackle - Level 1
  (74, 7401, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude (Alolan Geodude) - Defense Curl - Level 1
  (74, 7401, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude (Alolan Geodude) - Thunder Shock - Level 3
  (74, 7401, 84, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Geodude (Alolan Geodude) - Bide - Level 6
  (74, 7401, 117, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Geodude (Alolan Geodude) - Rock Throw - Level 9
  (74, 7401, 88, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Geodude (Alolan Geodude) - Stealth Rock - Level 12
  (74, 7401, 446, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Geodude (Alolan Geodude) - Take Down - Level 15
  (74, 7401, 36, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Geodude (Alolan Geodude) - Self-Destruct - Level 19
  (74, 7401, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Geodude (Alolan Geodude) - Rock Slide - Level 23
  (74, 7401, 157, 17, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Geodude (Alolan Geodude) - Thunder Punch - Level 27
  (74, 7401, 9, 17, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Geodude (Alolan Geodude) - Double-Edge - Level 31
  (74, 7401, 38, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Geodude (Alolan Geodude) - Explosion - Level 35
  (74, 7401, 153, 17, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Geodude (Alolan Geodude) - Headbutt - TM01
  (74, 7401, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Geodude (Alolan Geodude) - Rest - TM05
  (74, 7401, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Geodude (Alolan Geodude) - Protect - TM07
  (74, 7401, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Geodude (Alolan Geodude) - Substitute - TM08
  (74, 7401, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Geodude (Alolan Geodude) - Dig - TM10
  (74, 7401, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Geodude (Alolan Geodude) - Facade - TM12
  (74, 7401, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Geodude (Alolan Geodude) - Brick Break - TM13
  (74, 7401, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Geodude (Alolan Geodude) - Seismic Toss - TM15
  (74, 7401, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Geodude (Alolan Geodude) - Thunder Wave - TM16
  (74, 7401, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 21),
  -- Geodude (Alolan Geodude) - Rock Slide - TM22
  (74, 7401, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 22),
  -- Geodude (Alolan Geodude) - Thunder Punch - TM23
  (74, 7401, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 23),
  -- Geodude (Alolan Geodude) - Toxic - TM27
  (74, 7401, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Geodude (Alolan Geodude) - Fire Punch - TM31
  (74, 7401, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 25),
  -- Geodude (Alolan Geodude) - Thunderbolt - TM36
  (74, 7401, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 26),
  -- Geodude (Alolan Geodude) - Flamethrower - TM37
  (74, 7401, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 27),
  -- Geodude (Alolan Geodude) - Thunder - TM38
  (74, 7401, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 28),
  -- Geodude (Alolan Geodude) - Earthquake - TM41
  (74, 7401, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 29),
  -- Geodude (Alolan Geodude) - Self-Destruct - TM42
  (74, 7401, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 30),
  -- Geodude (Alolan Geodude) - Fire Blast - TM46
  (74, 7401, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 31),
  -- Geodude (Alolan Geodude) - Superpower - TM49
  (74, 7401, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 32),
  -- Geodude (Alolan Geodude) - Stealth Rock - TM56
  (74, 7401, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 33),
  -- Graveler (Alolan Graveler) - Tackle - Level 1
  (75, 7501, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler (Alolan Graveler) - Defense Curl - Level 1
  (75, 7501, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler (Alolan Graveler) - Thunder Shock - Level 1
  (75, 7501, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler (Alolan Graveler) - Bide - Level 1
  (75, 7501, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler (Alolan Graveler) - Thunder Shock - Level 3
  (75, 7501, 84, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Graveler (Alolan Graveler) - Bide - Level 6
  (75, 7501, 117, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Graveler (Alolan Graveler) - Rock Throw - Level 9
  (75, 7501, 88, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Graveler (Alolan Graveler) - Stealth Rock - Level 12
  (75, 7501, 446, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Graveler (Alolan Graveler) - Take Down - Level 15
  (75, 7501, 36, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Graveler (Alolan Graveler) - Self-Destruct - Level 19
  (75, 7501, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Graveler (Alolan Graveler) - Rock Slide - Level 23
  (75, 7501, 157, 17, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Graveler (Alolan Graveler) - Thunder Punch - Level 31
  (75, 7501, 9, 17, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Graveler (Alolan Graveler) - Double-Edge - Level 39
  (75, 7501, 38, 17, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Graveler (Alolan Graveler) - Explosion - Level 47
  (75, 7501, 153, 17, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Graveler (Alolan Graveler) - Headbutt - TM01
  (75, 7501, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Graveler (Alolan Graveler) - Rest - TM05
  (75, 7501, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Graveler (Alolan Graveler) - Protect - TM07
  (75, 7501, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Graveler (Alolan Graveler) - Substitute - TM08
  (75, 7501, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Graveler (Alolan Graveler) - Dig - TM10
  (75, 7501, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Graveler (Alolan Graveler) - Facade - TM12
  (75, 7501, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Graveler (Alolan Graveler) - Brick Break - TM13
  (75, 7501, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Graveler (Alolan Graveler) - Seismic Toss - TM15
  (75, 7501, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Graveler (Alolan Graveler) - Thunder Wave - TM16
  (75, 7501, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 23),
  -- Graveler (Alolan Graveler) - Rock Slide - TM22
  (75, 7501, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 24),
  -- Graveler (Alolan Graveler) - Thunder Punch - TM23
  (75, 7501, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 25),
  -- Graveler (Alolan Graveler) - Toxic - TM27
  (75, 7501, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Graveler (Alolan Graveler) - Fire Punch - TM31
  (75, 7501, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 27),
  -- Graveler (Alolan Graveler) - Thunderbolt - TM36
  (75, 7501, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 28),
  -- Graveler (Alolan Graveler) - Flamethrower - TM37
  (75, 7501, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 29),
  -- Graveler (Alolan Graveler) - Thunder - TM38
  (75, 7501, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 30),
  -- Graveler (Alolan Graveler) - Earthquake - TM41
  (75, 7501, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 31),
  -- Graveler (Alolan Graveler) - Self-Destruct - TM42
  (75, 7501, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 32),
  -- Graveler (Alolan Graveler) - Fire Blast - TM46
  (75, 7501, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 33),
  -- Graveler (Alolan Graveler) - Superpower - TM49
  (75, 7501, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 34),
  -- Graveler (Alolan Graveler) - Stealth Rock - TM56
  (75, 7501, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 35),
  -- Golem (Alolan Golem) - Mega Punch - Level 1
  (76, 7601, 5, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem (Alolan Golem) - Tackle - Level 1
  (76, 7601, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem (Alolan Golem) - Defense Curl - Level 1
  (76, 7601, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem (Alolan Golem) - Thunder Shock - Level 1
  (76, 7601, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem (Alolan Golem) - Bide - Level 1
  (76, 7601, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golem (Alolan Golem) - Thunder Shock - Level 3
  (76, 7601, 84, 17, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Golem (Alolan Golem) - Bide - Level 6
  (76, 7601, 117, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Golem (Alolan Golem) - Rock Throw - Level 9
  (76, 7601, 88, 17, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Golem (Alolan Golem) - Stealth Rock - Level 12
  (76, 7601, 446, 17, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Golem (Alolan Golem) - Take Down - Level 15
  (76, 7601, 36, 17, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Golem (Alolan Golem) - Self-Destruct - Level 19
  (76, 7601, 120, 17, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Golem (Alolan Golem) - Rock Slide - Level 23
  (76, 7601, 157, 17, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Golem (Alolan Golem) - Thunder Punch - Level 31
  (76, 7601, 9, 17, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Golem (Alolan Golem) - Double-Edge - Level 39
  (76, 7601, 38, 17, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Golem (Alolan Golem) - Explosion - Level 47
  (76, 7601, 153, 17, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Golem (Alolan Golem) - Headbutt - TM01
  (76, 7601, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Golem (Alolan Golem) - Rest - TM05
  (76, 7601, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Golem (Alolan Golem) - Protect - TM07
  (76, 7601, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Golem (Alolan Golem) - Substitute - TM08
  (76, 7601, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Golem (Alolan Golem) - Dig - TM10
  (76, 7601, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Golem (Alolan Golem) - Facade - TM12
  (76, 7601, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Golem (Alolan Golem) - Brick Break - TM13
  (76, 7601, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Golem (Alolan Golem) - Seismic Toss - TM15
  (76, 7601, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Golem (Alolan Golem) - Thunder Wave - TM16
  (76, 7601, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Golem (Alolan Golem) - Rock Slide - TM22
  (76, 7601, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 25),
  -- Golem (Alolan Golem) - Thunder Punch - TM23
  (76, 7601, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Golem (Alolan Golem) - Toxic - TM27
  (76, 7601, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Golem (Alolan Golem) - Fire Punch - TM31
  (76, 7601, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 28),
  -- Golem (Alolan Golem) - Thunderbolt - TM36
  (76, 7601, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 29),
  -- Golem (Alolan Golem) - Flamethrower - TM37
  (76, 7601, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 30),
  -- Golem (Alolan Golem) - Thunder - TM38
  (76, 7601, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 31),
  -- Golem (Alolan Golem) - Earthquake - TM41
  (76, 7601, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 32),
  -- Golem (Alolan Golem) - Self-Destruct - TM42
  (76, 7601, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 33),
  -- Golem (Alolan Golem) - Fire Blast - TM46
  (76, 7601, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 34),
  -- Golem (Alolan Golem) - Hyper Beam - TM48
  (76, 7601, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 35),
  -- Golem (Alolan Golem) - Superpower - TM49
  (76, 7601, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 36),
  -- Golem (Alolan Golem) - Stealth Rock - TM56
  (76, 7601, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 37),
  -- Grimer (Alolan Grimer) - Pound - Level 1
  (88, 8801, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer (Alolan Grimer) - Poison Gas - Level 1
  (88, 8801, 139, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer (Alolan Grimer) - Harden - Level 6
  (88, 8801, 106, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Grimer (Alolan Grimer) - Minimize - Level 12
  (88, 8801, 107, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Grimer (Alolan Grimer) - Disable - Level 18
  (88, 8801, 50, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Grimer (Alolan Grimer) - Bite - Level 24
  (88, 8801, 44, 17, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Grimer (Alolan Grimer) - Screech - Level 30
  (88, 8801, 103, 17, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Grimer (Alolan Grimer) - Crunch - Level 36
  (88, 8801, 242, 17, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Grimer (Alolan Grimer) - Acid Armor - Level 42
  (88, 8801, 151, 17, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Grimer (Alolan Grimer) - Sludge Bomb - Level 48
  (88, 8801, 188, 17, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Grimer (Alolan Grimer) - Headbutt - TM01
  (88, 8801, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Grimer (Alolan Grimer) - Taunt - TM02
  (88, 8801, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Grimer (Alolan Grimer) - Helping Hand - TM03
  (88, 8801, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Grimer (Alolan Grimer) - Rest - TM05
  (88, 8801, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Grimer (Alolan Grimer) - Protect - TM07
  (88, 8801, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Grimer (Alolan Grimer) - Substitute - TM08
  (88, 8801, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Grimer (Alolan Grimer) - Dig - TM10
  (88, 8801, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Grimer (Alolan Grimer) - Facade - TM12
  (88, 8801, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Grimer (Alolan Grimer) - Rock Slide - TM22
  (88, 8801, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 19),
  -- Grimer (Alolan Grimer) - Thunder Punch - TM23
  (88, 8801, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 20),
  -- Grimer (Alolan Grimer) - Poison Jab - TM26
  (88, 8801, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Grimer (Alolan Grimer) - Toxic - TM27
  (88, 8801, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Grimer (Alolan Grimer) - Fire Punch - TM31
  (88, 8801, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 23),
  -- Grimer (Alolan Grimer) - Ice Punch - TM35
  (88, 8801, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 24),
  -- Grimer (Alolan Grimer) - Flamethrower - TM37
  (88, 8801, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 25),
  -- Grimer (Alolan Grimer) - Self-Destruct - TM42
  (88, 8801, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 26),
  -- Grimer (Alolan Grimer) - Shadow Ball - TM43
  (88, 8801, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 27),
  -- Grimer (Alolan Grimer) - Fire Blast - TM46
  (88, 8801, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 28),
  -- Grimer (Alolan Grimer) - Sludge Bomb - TM52
  (88, 8801, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 29),
  -- Grimer (Alolan Grimer) - Mega Drain - TM53
  (88, 8801, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 30),
  -- Muk (Alolan Muk) - Haze - Level 1
  (89, 8901, 114, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk (Alolan Muk) - Moonblast - Level 1
  (89, 8901, 585, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk (Alolan Muk) - Pound - Level 1
  (89, 8901, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk (Alolan Muk) - Poison Gas - Level 1
  (89, 8901, 139, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk (Alolan Muk) - Harden - Level 1
  (89, 8901, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Muk (Alolan Muk) - Minimize - Level 1
  (89, 8901, 107, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Muk (Alolan Muk) - Harden - Level 6
  (89, 8901, 106, 17, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Muk (Alolan Muk) - Minimize - Level 12
  (89, 8901, 107, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Muk (Alolan Muk) - Disable - Level 18
  (89, 8901, 50, 17, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Muk (Alolan Muk) - Bite - Level 24
  (89, 8901, 44, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Muk (Alolan Muk) - Screech - Level 30
  (89, 8901, 103, 17, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Muk (Alolan Muk) - Crunch - Level 36
  (89, 8901, 242, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Muk (Alolan Muk) - Acid Armor - Level 48
  (89, 8901, 151, 17, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Muk (Alolan Muk) - Sludge Bomb - Level 60
  (89, 8901, 188, 17, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Muk (Alolan Muk) - Headbutt - TM01
  (89, 8901, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Muk (Alolan Muk) - Taunt - TM02
  (89, 8901, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 16),
  -- Muk (Alolan Muk) - Helping Hand - TM03
  (89, 8901, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 17),
  -- Muk (Alolan Muk) - Rest - TM05
  (89, 8901, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Muk (Alolan Muk) - Protect - TM07
  (89, 8901, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Muk (Alolan Muk) - Substitute - TM08
  (89, 8901, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Muk (Alolan Muk) - Dig - TM10
  (89, 8901, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Muk (Alolan Muk) - Facade - TM12
  (89, 8901, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Muk (Alolan Muk) - Brick Break - TM13
  (89, 8901, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 23),
  -- Muk (Alolan Muk) - Dark Pulse - TM20
  (89, 8901, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 24),
  -- Muk (Alolan Muk) - Foul Play - TM21
  (89, 8901, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 25),
  -- Muk (Alolan Muk) - Rock Slide - TM22
  (89, 8901, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 26),
  -- Muk (Alolan Muk) - Thunder Punch - TM23
  (89, 8901, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 27),
  -- Muk (Alolan Muk) - Poison Jab - TM26
  (89, 8901, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 28),
  -- Muk (Alolan Muk) - Toxic - TM27
  (89, 8901, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 29),
  -- Muk (Alolan Muk) - Fire Punch - TM31
  (89, 8901, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 30),
  -- Muk (Alolan Muk) - Ice Punch - TM35
  (89, 8901, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 31),
  -- Muk (Alolan Muk) - Flamethrower - TM37
  (89, 8901, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 32),
  -- Muk (Alolan Muk) - Self-Destruct - TM42
  (89, 8901, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 33),
  -- Muk (Alolan Muk) - Shadow Ball - TM43
  (89, 8901, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 34),
  -- Muk (Alolan Muk) - Fire Blast - TM46
  (89, 8901, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 35),
  -- Muk (Alolan Muk) - Hyper Beam - TM48
  (89, 8901, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 36),
  -- Muk (Alolan Muk) - Sludge Bomb - TM52
  (89, 8901, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 37),
  -- Muk (Alolan Muk) - Mega Drain - TM53
  (89, 8901, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 38),
  -- Exeggutor (Alolan Exeggutor) - Dragon Pulse - Level 1
  (103, 10301, 406, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor (Alolan Exeggutor) - Power Whip - Level 1
  (103, 10301, 438, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor (Alolan Exeggutor) - Egg Bomb - Level 1
  (103, 10301, 121, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor (Alolan Exeggutor) - Barrage - Level 1
  (103, 10301, 140, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor (Alolan Exeggutor) - Hypnosis - Level 1
  (103, 10301, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor (Alolan Exeggutor) - Confusion - Level 1
  (103, 10301, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exeggutor (Alolan Exeggutor) - Stun Spore - Level 1
  (103, 10301, 78, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exeggutor (Alolan Exeggutor) - Dragon Pulse - Evolution
  (103, 10301, 406, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Exeggutor (Alolan Exeggutor) - Headbutt - TM01
  (103, 10301, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 9),
  -- Exeggutor (Alolan Exeggutor) - Teleport - TM04
  (103, 10301, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 10),
  -- Exeggutor (Alolan Exeggutor) - Rest - TM05
  (103, 10301, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Exeggutor (Alolan Exeggutor) - Light Screen - TM06
  (103, 10301, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 12),
  -- Exeggutor (Alolan Exeggutor) - Protect - TM07
  (103, 10301, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Exeggutor (Alolan Exeggutor) - Substitute - TM08
  (103, 10301, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Exeggutor (Alolan Exeggutor) - Reflect - TM09
  (103, 10301, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Exeggutor (Alolan Exeggutor) - Facade - TM12
  (103, 10301, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Exeggutor (Alolan Exeggutor) - Brick Break - TM13
  (103, 10301, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 17),
  -- Exeggutor (Alolan Exeggutor) - Dragon Tail - TM17
  (103, 10301, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 18),
  -- Exeggutor (Alolan Exeggutor) - Iron Tail - TM19
  (103, 10301, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Exeggutor (Alolan Exeggutor) - Toxic - TM27
  (103, 10301, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Exeggutor (Alolan Exeggutor) - Dragon Pulse - TM34
  (103, 10301, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 21),
  -- Exeggutor (Alolan Exeggutor) - Flamethrower - TM37
  (103, 10301, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 22),
  -- Exeggutor (Alolan Exeggutor) - Outrage - TM39
  (103, 10301, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 23),
  -- Exeggutor (Alolan Exeggutor) - Psychic - TM40
  (103, 10301, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 24),
  -- Exeggutor (Alolan Exeggutor) - Earthquake - TM41
  (103, 10301, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 25),
  -- Exeggutor (Alolan Exeggutor) - Self-Destruct - TM42
  (103, 10301, 120, 17, NULL, 2, NULL, NULL, 17002042, NULL, 26),
  -- Exeggutor (Alolan Exeggutor) - Solar Beam - TM45
  (103, 10301, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 27),
  -- Exeggutor (Alolan Exeggutor) - Hyper Beam - TM48
  (103, 10301, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 28),
  -- Exeggutor (Alolan Exeggutor) - Superpower - TM49
  (103, 10301, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 29),
  -- Exeggutor (Alolan Exeggutor) - Sludge Bomb - TM52
  (103, 10301, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 30),
  -- Exeggutor (Alolan Exeggutor) - Mega Drain - TM53
  (103, 10301, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 31),
  -- Exeggutor (Alolan Exeggutor) - Dream Eater - TM59
  (103, 10301, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 32),
  -- Marowak (Alolan Marowak) - Swords Dance - Evolution
  (105, 10501, 14, 17, NULL, 7, NULL, NULL, NULL, NULL, 1),
  -- Marowak (Alolan Marowak) - Swords Dance - Level 1
  (105, 10501, 14, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak (Alolan Marowak) - Screech - Level 1
  (105, 10501, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak (Alolan Marowak) - Growl - Level 1
  (105, 10501, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak (Alolan Marowak) - Tail Whip - Level 1
  (105, 10501, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marowak (Alolan Marowak) - Leer - Level 1
  (105, 10501, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marowak (Alolan Marowak) - Bone Club - Level 1
  (105, 10501, 125, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marowak (Alolan Marowak) - Tail Whip - Level 2
  (105, 10501, 39, 17, NULL, 1, 2, NULL, NULL, NULL, 8),
  -- Marowak (Alolan Marowak) - Leer - Level 6
  (105, 10501, 43, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Marowak (Alolan Marowak) - Bone Club - Level 12
  (105, 10501, 125, 17, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Marowak (Alolan Marowak) - Fire Spin - Level 14
  (105, 10501, 83, 17, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Marowak (Alolan Marowak) - Rage - Level 18
  (105, 10501, 99, 17, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Marowak (Alolan Marowak) - Will-O-Wisp - Level 24
  (105, 10501, 261, 17, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Marowak (Alolan Marowak) - Bonemerang - Level 26
  (105, 10501, 155, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Marowak (Alolan Marowak) - Thrash - Level 36
  (105, 10501, 37, 17, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Marowak (Alolan Marowak) - Flare Blitz - Level 48
  (105, 10501, 394, 17, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Marowak (Alolan Marowak) - Headbutt - TM01
  (105, 10501, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Marowak (Alolan Marowak) - Rest - TM05
  (105, 10501, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Marowak (Alolan Marowak) - Protect - TM07
  (105, 10501, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Marowak (Alolan Marowak) - Substitute - TM08
  (105, 10501, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Marowak (Alolan Marowak) - Dig - TM10
  (105, 10501, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Marowak (Alolan Marowak) - Will-O-Wisp - TM11
  (105, 10501, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 22),
  -- Marowak (Alolan Marowak) - Facade - TM12
  (105, 10501, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Marowak (Alolan Marowak) - Brick Break - TM13
  (105, 10501, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 24),
  -- Marowak (Alolan Marowak) - Seismic Toss - TM15
  (105, 10501, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 25),
  -- Marowak (Alolan Marowak) - Iron Tail - TM19
  (105, 10501, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Marowak (Alolan Marowak) - Dark Pulse - TM20
  (105, 10501, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 27),
  -- Marowak (Alolan Marowak) - Rock Slide - TM22
  (105, 10501, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 28),
  -- Marowak (Alolan Marowak) - Thunder Punch - TM23
  (105, 10501, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 29),
  -- Marowak (Alolan Marowak) - Toxic - TM27
  (105, 10501, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 30),
  -- Marowak (Alolan Marowak) - Fire Punch - TM31
  (105, 10501, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 31),
  -- Marowak (Alolan Marowak) - Thunderbolt - TM36
  (105, 10501, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 32),
  -- Marowak (Alolan Marowak) - Flamethrower - TM37
  (105, 10501, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 33),
  -- Marowak (Alolan Marowak) - Thunder - TM38
  (105, 10501, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 34),
  -- Marowak (Alolan Marowak) - Outrage - TM39
  (105, 10501, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 35),
  -- Marowak (Alolan Marowak) - Earthquake - TM41
  (105, 10501, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 36),
  -- Marowak (Alolan Marowak) - Shadow Ball - TM43
  (105, 10501, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 37),
  -- Marowak (Alolan Marowak) - Fire Blast - TM46
  (105, 10501, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 38),
  -- Marowak (Alolan Marowak) - Hyper Beam - TM48
  (105, 10501, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 39),
  -- Marowak (Alolan Marowak) - Blizzard - TM51
  (105, 10501, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 40),
  -- Marowak (Alolan Marowak) - Ice Beam - TM55
  (105, 10501, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 41),
  -- Marowak (Alolan Marowak) - Stealth Rock - TM56
  (105, 10501, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 42),
  -- Marowak (Alolan Marowak) - Dream Eater - TM59
  (105, 10501, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 43),
  -- Eevee (Partner) - Tackle - Level 1
  (133, 13301, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee (Partner) - Growl - Level 1
  (133, 13301, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee (Partner) - Tail Whip - Level 3
  (133, 13301, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Eevee (Partner) - Quick Attack - Level 6
  (133, 13301, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Eevee (Partner) - Double Kick - Level 10
  (133, 13301, 24, 17, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Eevee (Partner) - Sand Attack - Level 14
  (133, 13301, 28, 17, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Eevee (Partner) - Bite - Level 17
  (133, 13301, 44, 17, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Eevee (Partner) - Swift - Level 21
  (133, 13301, 129, 17, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Eevee (Partner) - Take Down - Level 24
  (133, 13301, 36, 17, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Eevee (Partner) - Double-Edge - Level 28
  (133, 13301, 38, 17, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Eevee (Partner) - Helping Hand - Level 31
  (133, 13301, 270, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Eevee (Partner) - Headbutt - TM01
  (133, 13301, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Eevee (Partner) - Helping Hand - TM03
  (133, 13301, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Eevee (Partner) - Rest - TM05
  (133, 13301, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Eevee (Partner) - Protect - TM07
  (133, 13301, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Eevee (Partner) - Substitute - TM08
  (133, 13301, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Eevee (Partner) - Reflect - TM09
  (133, 13301, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Eevee (Partner) - Dig - TM10
  (133, 13301, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Eevee (Partner) - Facade - TM12
  (133, 13301, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Eevee (Partner) - Iron Tail - TM19
  (133, 13301, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Eevee (Partner) - Toxic - TM27
  (133, 13301, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Eevee (Partner) - Shadow Ball - TM43
  (133, 13301, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 22),
  -- Eevee (Partner) - Pay Day - TM57
  (133, 13301, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 23),
  -- Eevee (Partner) - Bouncy Bubble - Move Tutor
  (133, 13301, 733, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Cerulean City.', 24),
  -- Eevee (Partner) - Buzzy Buzz - Move Tutor
  (133, 13301, 734, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Cerulean City.', 25),
  -- Eevee (Partner) - Sizzly Slide - Move Tutor
  (133, 13301, 735, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Cerulean City.', 26),
  -- Eevee (Partner) - Glitzy Glow - Move Tutor
  (133, 13301, 736, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Celadon City.', 27),
  -- Eevee (Partner) - Baddy Bad - Move Tutor
  (133, 13301, 737, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Celadon City.', 28),
  -- Eevee (Partner) - Sappy Seed - Move Tutor
  (133, 13301, 738, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Fuchsia City.', 29),
  -- Eevee (Partner) - Freezy Frost - Move Tutor
  (133, 13301, 739, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Fuchsia City.', 30),
  -- Eevee (Partner) - Sparkly Swirl - Move Tutor
  (133, 13301, 740, 17, NULL, 6, NULL, NULL, NULL, 'Partner Eevee Move Tutor in Fuchsia City.', 31),
  -- Eevee (Partner) - Veevee Volley - Special Move
  (133, 13301, 741, 17, NULL, 12, NULL, NULL, NULL, 'Partner Power exclusive to Partner Eevee.', 32);
