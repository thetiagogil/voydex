-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen3 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Fake Out Generation III
  (252, 3, 1, 40, 100, 10, 1, 'physical', 'Strikes first and makes the target flinch; works only on the user''s first turn out.'),
  -- Uproar Generation III
  (253, 3, 1, 50, 100, 10, 0, 'physical', 'Causes an uproar for two to five turns that keeps every Pokémon awake.'),
  -- Stockpile Generation III
  (254, 3, 1, NULL, NULL, 10, 0, 'status', 'Stores power up to three times for Spit Up and Swallow.'),
  -- Spit Up Generation III
  (255, 3, 1, NULL, 100, 10, 0, 'physical', 'Releases stored power; stronger the more times the user used Stockpile.'),
  -- Swallow Generation III
  (256, 3, 1, NULL, NULL, 10, 0, 'status', 'Heals the user more the more times it used Stockpile.'),
  -- Heat Wave Generation III
  (257, 3, 2, 100, 90, 10, 0, 'special', 'May burn the target (10% chance).'),
  -- Hail Generation III
  (258, 3, 6, NULL, NULL, 10, 0, 'status', 'Summons hail for five turns, hurting all but Ice types each turn.'),
  -- Torment Generation III
  (259, 3, 16, NULL, 100, 15, 0, 'status', 'Stops the target from using the same move twice in a row.'),
  -- Flatter Generation III
  (260, 3, 16, NULL, 100, 15, 0, 'status', 'Confuses the target but raises its Sp. Atk by one stage.'),
  -- Will-O-Wisp Generation III
  (261, 3, 2, NULL, 75, 15, 0, 'status', 'Burns the target.'),
  -- Memento Generation III
  (262, 3, 16, NULL, 100, 10, 0, 'status', 'The user faints to lower the target''s Attack and Sp. Atk by two stages.'),
  -- Facade Generation III
  (263, 3, 1, 70, 100, 20, 0, 'physical', 'Doubles in power if the user is burned, poisoned or paralyzed.'),
  -- Focus Punch Generation III
  (264, 3, 7, 150, 100, 20, -3, 'physical', 'Moves last and fails if the user is hit before it strikes.'),
  -- Smelling Salts Generation III
  (265, 3, 1, 60, 100, 10, 0, 'physical', 'Doubles in power against a paralyzed target, then cures its paralysis.'),
  -- Follow Me Generation III
  (266, 3, 1, NULL, NULL, 20, 2, 'status', 'Draws the foes'' attacks to the user this turn.'),
  -- Nature Power Generation III
  (267, 3, 1, NULL, NULL, 20, 0, 'status', 'Turns into a move that depends on the battle terrain or location.'),
  -- Charge Generation III
  (268, 3, 4, NULL, NULL, 20, 0, 'status', 'Doubles the power of the user''s next Electric move and raises Sp. Def by one stage. In Gen 3 it did not raise Sp. Def.'),
  -- Taunt Generation III
  (269, 3, 16, NULL, 100, 20, 0, 'status', 'Stops the target from using status moves for a few turns.'),
  -- Helping Hand Generation III
  (270, 3, 1, NULL, NULL, 20, 5, 'status', 'Powers up an ally''s move by 50% this turn.'),
  -- Trick Generation III
  (271, 3, 11, NULL, 100, 10, 0, 'status', 'Swaps held items with the target.'),
  -- Role Play Generation III
  (272, 3, 11, NULL, NULL, 10, 0, 'status', 'Copies the target''s Ability.'),
  -- Wish Generation III
  (273, 3, 1, NULL, NULL, 10, 0, 'status', 'Heals whoever is in the user''s spot at the end of the next turn by half of the user''s max HP.'),
  -- Assist Generation III
  (274, 3, 1, NULL, NULL, 20, 0, 'status', 'Uses a random move known by a party member.'),
  -- Ingrain Generation III
  (275, 3, 5, NULL, NULL, 20, 0, 'status', 'Roots the user to restore 1/16 of its max HP each turn, but it cannot switch out.'),
  -- Superpower Generation III
  (276, 3, 7, 120, 100, 5, 0, 'physical', 'Lowers the user''s Attack and Defense by one stage.'),
  -- Magic Coat Generation III
  (277, 3, 11, NULL, NULL, 15, 4, 'status', 'Reflects status moves back at their user this turn.'),
  -- Recycle Generation III
  (278, 3, 1, NULL, NULL, 10, 0, 'status', 'Restores the held item the user last used up.'),
  -- Revenge Generation III
  (279, 3, 7, 60, 100, 10, -4, 'physical', 'Moves last; doubles in power if the target hurt the user this turn.'),
  -- Brick Break Generation III
  (280, 3, 7, 75, 100, 15, 0, 'physical', 'Breaks Reflect and Light Screen on the target''s side.'),
  -- Yawn Generation III
  (281, 3, 1, NULL, NULL, 10, 0, 'status', 'Makes the target drowsy so it falls asleep at the end of the next turn.'),
  -- Knock Off Generation III
  (282, 3, 16, 20, 100, 20, 0, 'special', 'Makes the target lose its held item for the rest of the battle.'),
  -- Endeavor Generation III
  (283, 3, 1, NULL, 100, 5, 0, 'physical', 'Cuts the target''s HP down to match the user''s HP.'),
  -- Eruption Generation III
  (284, 3, 2, 150, 100, 5, 0, 'special', 'Stronger the more HP the user has left.'),
  -- Skill Swap Generation III
  (285, 3, 11, NULL, NULL, 10, 0, 'status', 'Swaps Abilities with the target.'),
  -- Imprison Generation III
  (286, 3, 11, NULL, NULL, 10, 0, 'status', 'Stops foes from using any move the user also knows.'),
  -- Refresh Generation III
  (287, 3, 1, NULL, NULL, 20, 0, 'status', 'Cures the user of a burn, poison or paralysis.'),
  -- Grudge Generation III
  (288, 3, 14, NULL, NULL, 5, 0, 'status', 'If an attack makes the user faint, that move loses all its PP.'),
  -- Snatch Generation III
  (289, 3, 16, NULL, NULL, 10, 4, 'status', 'Steals the effect of a foe''s healing or stat-raising move this turn.'),
  -- Secret Power Generation III
  (290, 3, 1, 70, 100, 20, 0, 'physical', 'Has a 30% chance of an added effect that depends on the battle location.'),
  -- Dive Generation III
  (291, 3, 3, 60, 100, 10, 0, 'special', 'Dives underwater on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Arm Thrust Generation III
  (292, 3, 7, 15, 100, 20, 0, 'physical', 'Hits two to five times in a row.'),
  -- Camouflage Generation III
  (293, 3, 1, NULL, NULL, 20, 0, 'status', 'Changes the user''s type to suit the battle location.'),
  -- Tail Glow Generation III
  (294, 3, 12, NULL, NULL, 20, 0, 'status', 'Raises the user''s Sp. Atk by three stages. In Gen 3-4 it was two stages.'),
  -- Luster Purge Generation III
  (295, 3, 11, 95, 100, 5, 0, 'special', 'May lower the target''s Sp. Def by one stage (50% chance).'),
  -- Mist Ball Generation III
  (296, 3, 11, 70, 100, 5, 0, 'special', 'May lower the target''s Sp. Atk by one stage (50% chance).'),
  -- Feather Dance Generation III
  (297, 3, 10, NULL, 100, 15, 0, 'status', 'Lowers the target''s Attack by two stages.'),
  -- Teeter Dance Generation III
  (298, 3, 1, NULL, 100, 20, 0, 'status', 'Confuses every Pokémon around the user.'),
  -- Blaze Kick Generation III
  (299, 3, 2, 85, 90, 10, 0, 'special', 'May burn the target (10% chance); has a high critical-hit ratio.'),
  -- Mud Sport Generation III
  (300, 3, 9, NULL, NULL, 15, 0, 'status', 'Weakens Electric moves for five turns. In Gen 3-5 it lasted while the user stayed in.'),
  -- Ice Ball Generation III
  (301, 3, 6, 30, 90, 20, 0, 'special', 'Attacks for five turns, gaining power with each hit; stops if it misses.'),
  -- Needle Arm Generation III
  (302, 3, 5, 60, 100, 15, 0, 'special', 'May make the target flinch (30% chance).'),
  -- Slack Off Generation III
  (303, 3, 1, NULL, NULL, 5, 0, 'status', 'Restores half of the user''s max HP.'),
  -- Hyper Voice Generation III
  (304, 3, 1, 90, 100, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Poison Fang Generation III
  (305, 3, 8, 50, 100, 15, 0, 'physical', 'May badly poison the target (50% chance). In Gen 3-5 the chance was 30%.'),
  -- Crush Claw Generation III
  (306, 3, 1, 75, 95, 10, 0, 'physical', 'May lower the target''s Defense by one stage (50% chance).'),
  -- Blast Burn Generation III
  (307, 3, 2, 150, 90, 5, 0, 'special', 'The user must recharge on the next turn.'),
  -- Hydro Cannon Generation III
  (308, 3, 3, 150, 90, 5, 0, 'special', 'The user must recharge on the next turn.'),
  -- Meteor Mash Generation III
  (309, 3, 17, 100, 85, 10, 0, 'physical', 'May raise the user''s Attack by one stage (20% chance).'),
  -- Astonish Generation III
  (310, 3, 14, 30, 100, 15, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Weather Ball Generation III
  (311, 3, 1, 50, 100, 10, 0, 'physical', 'Doubles in power and changes type to match the weather.'),
  -- Aromatherapy Generation III
  (312, 3, 5, NULL, NULL, 5, 0, 'status', 'Cures the status conditions of the user''s whole party.'),
  -- Fake Tears Generation III
  (313, 3, 16, NULL, 100, 20, 0, 'status', 'Lowers the target''s Sp. Def by two stages.'),
  -- Air Cutter Generation III
  (314, 3, 10, 55, 95, 25, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Overheat Generation III
  (315, 3, 2, 140, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Odor Sleuth Generation III
  (316, 3, 1, NULL, NULL, 40, 0, 'status', 'Lets Normal and Fighting moves hit a Ghost target and ignores its evasion.'),
  -- Rock Tomb Generation III
  (317, 3, 13, 50, 80, 10, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Silver Wind Generation III
  (318, 3, 12, 60, 100, 5, 0, 'physical', 'May raise all of the user''s stats by one stage (10% chance).'),
  -- Metal Sound Generation III
  (319, 3, 17, NULL, 85, 40, 0, 'status', 'Lowers the target''s Sp. Def by two stages.'),
  -- Grass Whistle Generation III
  (320, 3, 5, NULL, 55, 15, 0, 'status', 'Puts the target to sleep.'),
  -- Tickle Generation III
  (321, 3, 1, NULL, 100, 20, 0, 'status', 'Lowers the target''s Attack and Defense by one stage.'),
  -- Cosmic Power Generation III
  (322, 3, 11, NULL, NULL, 20, 0, 'status', 'Raises the user''s Defense and Sp. Def by one stage.'),
  -- Water Spout Generation III
  (323, 3, 3, 150, 100, 5, 0, 'special', 'Stronger the more HP the user has left.'),
  -- Signal Beam Generation III
  (324, 3, 12, 75, 100, 15, 0, 'physical', 'May confuse the target (10% chance).'),
  -- Shadow Punch Generation III
  (325, 3, 14, 60, NULL, 20, 0, 'physical', 'A plain attack that never misses.'),
  -- Extrasensory Generation III
  (326, 3, 11, 80, 100, 30, 0, 'special', 'May make the target flinch (10% chance).'),
  -- Sky Uppercut Generation III
  (327, 3, 7, 85, 90, 15, 0, 'physical', 'Can hit a target in the air from Fly or Bounce.'),
  -- Sand Tomb Generation III
  (328, 3, 9, 15, 70, 15, 0, 'physical', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn.'),
  -- Sheer Cold Generation III
  (329, 3, 6, NULL, 30, 5, 0, 'special', 'Knocks out the target in one hit if it lands; fails on a higher-level target. From Gen 7 Ice types are immune.'),
  -- Muddy Water Generation III
  (330, 3, 3, 95, 85, 10, 0, 'special', 'May lower the target''s accuracy by one stage (30% chance).'),
  -- Bullet Seed Generation III
  (331, 3, 5, 10, 100, 30, 0, 'special', 'Hits two to five times in a row.'),
  -- Aerial Ace Generation III
  (332, 3, 10, 60, NULL, 20, 0, 'physical', 'A plain attack that never misses.'),
  -- Icicle Spear Generation III
  (333, 3, 6, 10, 100, 30, 0, 'special', 'Hits two to five times in a row.'),
  -- Iron Defense Generation III
  (334, 3, 17, NULL, NULL, 15, 0, 'status', 'Raises the user''s Defense by two stages.'),
  -- Block Generation III
  (335, 3, 1, NULL, NULL, 5, 0, 'status', 'Stops the target from fleeing or switching out.'),
  -- Howl Generation III
  (336, 3, 1, NULL, NULL, 40, 0, 'status', 'Raises the user''s Attack by one stage.'),
  -- Dragon Claw Generation III
  (337, 3, 15, 80, 100, 15, 0, 'special', 'A plain attack with no added effect.'),
  -- Frenzy Plant Generation III
  (338, 3, 5, 150, 90, 5, 0, 'special', 'The user must recharge on the next turn.'),
  -- Bulk Up Generation III
  (339, 3, 7, NULL, NULL, 20, 0, 'status', 'Raises the user''s Attack and Defense by one stage.'),
  -- Bounce Generation III
  (340, 3, 10, 85, 85, 5, 0, 'physical', 'Springs up on the first turn and strikes on the second; may paralyze the target (30% chance).'),
  -- Mud Shot Generation III
  (341, 3, 9, 55, 95, 15, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Poison Tail Generation III
  (342, 3, 8, 50, 100, 25, 0, 'physical', 'May poison the target (10% chance); has a high critical-hit ratio.'),
  -- Covet Generation III
  (343, 3, 1, 40, 100, 40, 0, 'physical', 'Steals the target''s held item if the user holds none.'),
  -- Volt Tackle Generation III
  (344, 3, 4, 120, 100, 15, 0, 'special', 'The user takes 1/3 of the damage dealt as recoil.'),
  -- Magical Leaf Generation III
  (345, 3, 5, 60, NULL, 20, 0, 'special', 'A plain attack that never misses.'),
  -- Water Sport Generation III
  (346, 3, 3, NULL, NULL, 15, 0, 'status', 'Weakens Fire moves for five turns. In Gen 3-5 it lasted while the user stayed in.'),
  -- Calm Mind Generation III
  (347, 3, 11, NULL, NULL, 20, 0, 'status', 'Raises the user''s Sp. Atk and Sp. Def by one stage.'),
  -- Leaf Blade Generation III
  (348, 3, 5, 70, 100, 15, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Dragon Dance Generation III
  (349, 3, 15, NULL, NULL, 20, 0, 'status', 'Raises the user''s Attack and Speed by one stage.'),
  -- Rock Blast Generation III
  (350, 3, 13, 25, 80, 10, 0, 'physical', 'Hits two to five times in a row.'),
  -- Shock Wave Generation III
  (351, 3, 4, 60, NULL, 20, 0, 'special', 'A plain attack that never misses.'),
  -- Water Pulse Generation III
  (352, 3, 3, 60, 100, 20, 0, 'special', 'May confuse the target (20% chance).'),
  -- Doom Desire Generation III
  (353, 3, 17, 120, 85, 5, 0, 'physical', 'Strikes the target two turns after it is used.'),
  -- Psycho Boost Generation III
  (354, 3, 11, 140, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.');
