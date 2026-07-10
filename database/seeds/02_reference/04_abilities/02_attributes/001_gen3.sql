-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB ability list and ability pages for concise effect summaries.
-- Cross-check: Bulbapedia ability pages for generation/version behavior changes.
-- Sanity: PokeAPI ability changelog CSV for older machine-readable change hints.
-- Scope: product-facing summaries for mainline playthrough-game abilities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 3 ability introduction summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Stench
  (1, 5, 'No battle effect; no overworld effect before Emerald.'),
  -- Drizzle
  (2, 5, 'Summons rain indefinitely when entering battle.'),
  -- Speed Boost
  (3, 5, 'Its Speed stat is gradually boosted.'),
  -- Battle Armor
  (4, 5, 'The Pokémon is protected against critical hits.'),
  -- Sturdy
  (5, 5, 'Blocks one-hit KO moves.'),
  -- Damp
  (6, 5, 'Prevents the use of self-destructing moves.'),
  -- Limber
  (7, 5, 'The Pokémon is protected from paralysis.'),
  -- Sand Veil
  (8, 5, 'Boosts the Pokémon''s evasion in a sandstorm.'),
  -- Static
  (9, 5, 'Contact may paralyze the attacker.'),
  -- Volt Absorb
  (10, 5, 'Restores HP when hit by a damaging Electric-type move.'),
  -- Water Absorb
  (11, 5, 'Restores HP if hit by a Water-type move.'),
  -- Oblivious
  (12, 5, 'Prevents infatuation.'),
  -- Cloud Nine
  (13, 5, 'Eliminates the effects of weather.'),
  -- Compound Eyes
  (14, 5, 'Boosts accuracy.'),
  -- Insomnia
  (15, 5, 'Prevents the Pokémon from falling asleep.'),
  -- Color Change
  (16, 5, 'Changes type after the first hit of a multi-hit move; later hits use the new type.'),
  -- Immunity
  (17, 5, 'Prevents the Pokémon from getting poisoned.'),
  -- Flash Fire
  (18, 5, 'Grants immunity to damaging Fire-type moves and powers up Fire moves after being hit by one.'),
  -- Shield Dust
  (19, 5, 'Blocks the added effects of attacks taken.'),
  -- Own Tempo
  (20, 5, 'Prevents confusion.'),
  -- Suction Cups
  (21, 5, 'Prevents forced switching.'),
  -- Intimidate
  (22, 5, 'Lowers opposing Attack when entering battle; no overworld effect.'),
  -- Shadow Tag
  (23, 5, 'Prevents opposing Pokémon from fleeing or switching, including Shadow Tag users.'),
  -- Rough Skin
  (24, 5, 'Contact deals 1/16 of the attacker''s maximum HP.'),
  -- Wonder Guard
  (25, 5, 'Only super-effective damaging moves hit, but Fire Fang and typeless damage can bypass it.'),
  -- Levitate
  (26, 5, 'Gives immunity to Ground type moves.'),
  -- Effect Spore
  (27, 5, 'Contact may poison or cause paralysis or sleep.'),
  -- Synchronize
  (28, 5, 'Mirrors poison, paralysis, or burn to the attacker; no overworld effect.'),
  -- Clear Body
  (29, 5, 'Prevents stat drops caused by opposing Pokémon.'),
  -- Natural Cure
  (30, 5, 'All status problems heal when it switches out.'),
  -- Lightning Rod
  (31, 5, 'Redirects Electric-type moves in double battles but does not absorb them or raise Sp. Atk.'),
  -- Serene Grace
  (32, 5, 'Boosts the likelihood of added effects appearing.'),
  -- Swift Swim
  (33, 5, 'Boosts the Pokémon''s Speed in rain.'),
  -- Chlorophyll
  (34, 5, 'Boosts the Pokémon''s Speed in sunshine.'),
  -- Illuminate
  (35, 5, 'No battle effect; as lead, increases wild encounter rate.'),
  -- Trace
  (36, 5, 'The Pokémon copies a foe''s Ability.'),
  -- Huge Power
  (37, 5, 'Raises the Pokémon''s Attack stat.'),
  -- Poison Point
  (38, 5, 'Contact with the Pokémon may poison the attacker.'),
  -- Inner Focus
  (39, 5, 'Prevents flinching.'),
  -- Magma Armor
  (40, 5, 'Prevents freezing.'),
  -- Water Veil
  (41, 5, 'Prevents the Pokémon from getting a burn.'),
  -- Magnet Pull
  (42, 5, 'Prevents Steel-type Pokémon from fleeing or switching.'),
  -- Soundproof
  (43, 5, 'Gives immunity to sound-based moves.'),
  -- Rain Dish
  (44, 5, 'The Pokémon gradually regains HP in rain.'),
  -- Sand Stream
  (45, 5, 'Summons a sandstorm indefinitely when entering battle.'),
  -- Pressure
  (46, 5, 'Makes opposing moves use 1 extra PP.'),
  -- Thick Fat
  (47, 5, 'Ups resistance to Fire- and Ice-type moves.'),
  -- Early Bird
  (48, 5, 'The Pokémon awakens quickly from sleep.'),
  -- Flame Body
  (49, 5, 'Contact may burn the attacker.'),
  -- Run Away
  (50, 5, 'Enables a sure getaway from wild Pokémon.'),
  -- Keen Eye
  (51, 5, 'Prevents accuracy drops.'),
  -- Hyper Cutter
  (52, 5, 'Prevents Attack drops.'),
  -- Pickup
  (53, 5, 'May pick up items after battle; no battle effect.'),
  -- Truant
  (54, 5, 'Pokémon can''t attack on consecutive turns.'),
  -- Hustle
  (55, 5, 'Boosts Attack but lowers physical move accuracy.'),
  -- Cute Charm
  (56, 5, 'Contact may infatuate the attacker.'),
  -- Plus
  (57, 5, 'Raises Sp. Atk when paired with Minus.'),
  -- Minus
  (58, 5, 'Raises Sp. Atk when paired with Plus.'),
  -- Forecast
  (59, 5, 'Castform transforms with the weather.'),
  -- Sticky Hold
  (60, 5, 'Prevents held item theft.'),
  -- Shed Skin
  (61, 5, 'May cure its own status condition at the end of each turn.'),
  -- Guts
  (62, 5, 'Boosts Attack while poisoned, burned, paralyzed, or frozen, but not while asleep.'),
  -- Marvel Scale
  (63, 5, 'Ups Defense if there is a status problem.'),
  -- Liquid Ooze
  (64, 5, 'Damages attackers using any draining move.'),
  -- Overgrow
  (65, 5, 'Powers up Grass-type moves in a pinch.'),
  -- Blaze
  (66, 5, 'Powers up Fire-type moves in a pinch.'),
  -- Torrent
  (67, 5, 'Powers up Water-type moves in a pinch.'),
  -- Swarm
  (68, 5, 'Powers up Bug-type moves in a pinch.'),
  -- Rock Head
  (69, 5, 'Protects the Pokémon from recoil damage.'),
  -- Drought
  (70, 5, 'Summons harsh sunlight indefinitely when entering battle.'),
  -- Arena Trap
  (71, 5, 'Prevents grounded opposing Pokémon from fleeing or switching.'),
  -- Vital Spirit
  (72, 5, 'Prevents sleep.'),
  -- White Smoke
  (73, 5, 'Prevents stat drops caused by opposing Pokémon.'),
  -- Pure Power
  (74, 5, 'Raises the Pokémon''s Attack stat.'),
  -- Shell Armor
  (75, 5, 'The Pokémon is protected against critical hits.'),
  -- Air Lock
  (76, 5, 'Eliminates the effects of weather.');
