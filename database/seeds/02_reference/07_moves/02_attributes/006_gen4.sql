-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen4 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Roost Generation IV
  (355, 4, 10, NULL, NULL, 5, 0, 'status', 'Restores half of the user''s max HP and drops its Flying type for the turn.'),
  -- Gravity Generation IV
  (356, 4, 11, NULL, NULL, 5, 0, 'status', 'Intensifies gravity for five turns, grounding every Pokémon and raising accuracy.'),
  -- Miracle Eye Generation IV
  (357, 4, 11, NULL, NULL, 40, 0, 'status', 'Lets Psychic moves hit a Dark target and ignores its evasion.'),
  -- Wake-Up Slap Generation IV
  (358, 4, 7, 60, 100, 10, 0, 'physical', 'Doubles in power against a sleeping target, then wakes it up.'),
  -- Hammer Arm Generation IV
  (359, 4, 7, 100, 90, 10, 0, 'physical', 'Lowers the user''s Speed by one stage.'),
  -- Gyro Ball Generation IV
  (360, 4, 17, NULL, 100, 5, 0, 'physical', 'Stronger the slower the user is compared with the target.'),
  -- Healing Wish Generation IV
  (361, 4, 11, NULL, NULL, 10, 0, 'status', 'The user faints to fully heal the Pokémon that replaces it.'),
  -- Brine Generation IV
  (362, 4, 3, 65, 100, 10, 0, 'special', 'Doubles in power against a target at half HP or less.'),
  -- Natural Gift Generation IV
  (363, 4, 1, NULL, 100, 15, 0, 'physical', 'Its type and power depend on the Berry the user holds, which is used up.'),
  -- Feint Generation IV
  (364, 4, 1, 50, 100, 10, 2, 'physical', 'Strikes first (+2 priority), but only hits a target that is protecting itself, breaking through.'),
  -- Pluck Generation IV
  (365, 4, 10, 60, 100, 20, 0, 'physical', 'Eats the target''s Berry and gains its effect.'),
  -- Tailwind Generation IV
  (366, 4, 10, NULL, NULL, 30, 0, 'status', 'Doubles the Speed of the user''s side for four turns. In Gen 4 it lasted three.'),
  -- Acupressure Generation IV
  (367, 4, 1, NULL, NULL, 30, 0, 'status', 'Raises a random stat of the user or an ally by two stages.'),
  -- Metal Burst Generation IV
  (368, 4, 17, NULL, 100, 10, 0, 'physical', 'Hits back for 1.5 times the damage the user took this turn.'),
  -- U-turn Generation IV
  (369, 4, 12, 70, 100, 20, 0, 'physical', 'Switches the user out after it attacks.'),
  -- Close Combat Generation IV
  (370, 4, 7, 120, 100, 5, 0, 'physical', 'Lowers the user''s Defense and Sp. Def by one stage.'),
  -- Payback Generation IV
  (371, 4, 16, 50, 100, 10, 0, 'physical', 'Doubles in power if the user moves after the target.'),
  -- Assurance Generation IV
  (372, 4, 16, 50, 100, 10, 0, 'physical', 'Doubles in power if the target was already hurt this turn.'),
  -- Embargo Generation IV
  (373, 4, 16, NULL, 100, 15, 0, 'status', 'Stops the target from using its held item for five turns.'),
  -- Fling Generation IV
  (374, 4, 16, NULL, 100, 10, 0, 'physical', 'Throws the user''s held item; power and effect depend on the item.'),
  -- Psycho Shift Generation IV
  (375, 4, 11, NULL, 90, 10, 0, 'status', 'Passes the user''s status condition to the target.'),
  -- Trump Card Generation IV
  (376, 4, 1, NULL, NULL, 5, 0, 'special', 'Grows stronger as its PP runs lower.'),
  -- Heal Block Generation IV
  (377, 4, 11, NULL, 100, 15, 0, 'status', 'Stops the target from healing for five turns.'),
  -- Wring Out Generation IV
  (378, 4, 1, NULL, 100, 5, 0, 'special', 'Stronger the more HP the target has left.'),
  -- Power Trick Generation IV
  (379, 4, 11, NULL, NULL, 10, 0, 'status', 'Swaps the user''s Attack and Defense stats.'),
  -- Gastro Acid Generation IV
  (380, 4, 8, NULL, 100, 10, 0, 'status', 'Suppresses the target''s Ability.'),
  -- Lucky Chant Generation IV
  (381, 4, 1, NULL, NULL, 30, 0, 'status', 'Protects the user''s side from critical hits for five turns.'),
  -- Me First Generation IV
  (382, 4, 1, NULL, NULL, 20, 0, 'status', 'Uses the target''s chosen move first, with 50% more power.'),
  -- Copycat Generation IV
  (383, 4, 1, NULL, NULL, 20, 0, 'status', 'Uses the last move used in the battle.'),
  -- Power Swap Generation IV
  (384, 4, 11, NULL, NULL, 10, 0, 'status', 'Swaps Attack and Sp. Atk changes with the target.'),
  -- Guard Swap Generation IV
  (385, 4, 11, NULL, NULL, 10, 0, 'status', 'Swaps Defense and Sp. Def changes with the target.'),
  -- Punishment Generation IV
  (386, 4, 16, 60, 100, 5, 0, 'physical', 'Stronger the more stat boosts the target has.'),
  -- Last Resort Generation IV
  (387, 4, 1, 130, 100, 5, 0, 'physical', 'Works only after the user has used every move it knows.'),
  -- Worry Seed Generation IV
  (388, 4, 5, NULL, 100, 10, 0, 'status', 'Changes the target''s Ability to Insomnia.'),
  -- Sucker Punch Generation IV
  (389, 4, 16, 80, 100, 5, 1, 'physical', 'Strikes first (+1 priority), but only if the target is about to attack.'),
  -- Toxic Spikes Generation IV
  (390, 4, 8, NULL, NULL, 20, 0, 'status', 'Lays poison spikes that poison foes switching in; two layers badly poison.'),
  -- Heart Swap Generation IV
  (391, 4, 11, NULL, NULL, 10, 0, 'status', 'Swaps all stat changes with the target.'),
  -- Aqua Ring Generation IV
  (392, 4, 3, NULL, NULL, 20, 0, 'status', 'Restores 1/16 of the user''s max HP each turn.'),
  -- Magnet Rise Generation IV
  (393, 4, 4, NULL, NULL, 10, 0, 'status', 'Lifts the user off the ground for five turns, avoiding Ground moves.'),
  -- Flare Blitz Generation IV
  (394, 4, 2, 120, 100, 15, 0, 'physical', 'May burn the target (10% chance); the user takes 1/3 of the damage dealt as recoil.'),
  -- Force Palm Generation IV
  (395, 4, 7, 60, 100, 10, 0, 'physical', 'May paralyze the target (30% chance).'),
  -- Aura Sphere Generation IV
  (396, 4, 7, 90, NULL, 20, 0, 'special', 'A plain attack that never misses.'),
  -- Rock Polish Generation IV
  (397, 4, 13, NULL, NULL, 20, 0, 'status', 'Raises the user''s Speed by two stages.'),
  -- Poison Jab Generation IV
  (398, 4, 8, 80, 100, 20, 0, 'physical', 'May poison the target (30% chance).'),
  -- Dark Pulse Generation IV
  (399, 4, 16, 80, 100, 15, 0, 'special', 'May make the target flinch (20% chance).'),
  -- Night Slash Generation IV
  (400, 4, 16, 70, 100, 15, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Aqua Tail Generation IV
  (401, 4, 3, 90, 90, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Seed Bomb Generation IV
  (402, 4, 5, 80, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Air Slash Generation IV
  (403, 4, 10, 75, 95, 20, 0, 'special', 'May make the target flinch (30% chance).'),
  -- X-Scissor Generation IV
  (404, 4, 12, 80, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Bug Buzz Generation IV
  (405, 4, 12, 90, 100, 10, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Dragon Pulse Generation IV
  (406, 4, 15, 90, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Dragon Rush Generation IV
  (407, 4, 15, 100, 75, 10, 0, 'physical', 'May make the target flinch (20% chance).'),
  -- Power Gem Generation IV
  (408, 4, 13, 70, 100, 20, 0, 'special', 'A plain attack with no added effect.'),
  -- Drain Punch Generation IV
  (409, 4, 7, 60, 100, 5, 0, 'physical', 'Restores the user''s HP by half of the damage dealt.'),
  -- Vacuum Wave Generation IV
  (410, 4, 7, 40, 100, 30, 1, 'special', 'Always strikes first (+1 priority).'),
  -- Focus Blast Generation IV
  (411, 4, 7, 120, 70, 5, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Energy Ball Generation IV
  (412, 4, 5, 80, 100, 10, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Brave Bird Generation IV
  (413, 4, 10, 120, 100, 15, 0, 'physical', 'The user takes 1/3 of the damage dealt as recoil.'),
  -- Earth Power Generation IV
  (414, 4, 9, 90, 100, 10, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Switcheroo Generation IV
  (415, 4, 16, NULL, 100, 10, 0, 'status', 'Swaps held items with the target.'),
  -- Giga Impact Generation IV
  (416, 4, 1, 150, 90, 5, 0, 'physical', 'The user must recharge on the next turn.'),
  -- Nasty Plot Generation IV
  (417, 4, 16, NULL, NULL, 20, 0, 'status', 'Raises the user''s Sp. Atk by two stages.'),
  -- Bullet Punch Generation IV
  (418, 4, 17, 40, 100, 30, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Avalanche Generation IV
  (419, 4, 6, 60, 100, 10, -4, 'physical', 'Moves last; doubles in power if the target hurt the user this turn.'),
  -- Ice Shard Generation IV
  (420, 4, 6, 40, 100, 30, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Shadow Claw Generation IV
  (421, 4, 14, 70, 100, 15, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Thunder Fang Generation IV
  (422, 4, 4, 65, 95, 15, 0, 'physical', 'May paralyze the target or make it flinch (10% chance each).'),
  -- Ice Fang Generation IV
  (423, 4, 6, 65, 95, 15, 0, 'physical', 'May freeze the target or make it flinch (10% chance each).'),
  -- Fire Fang Generation IV
  (424, 4, 2, 65, 95, 15, 0, 'physical', 'May burn the target or make it flinch (10% chance each).'),
  -- Shadow Sneak Generation IV
  (425, 4, 14, 40, 100, 30, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Mud Bomb Generation IV
  (426, 4, 9, 65, 85, 10, 0, 'special', 'May lower the target''s accuracy by one stage (30% chance).'),
  -- Psycho Cut Generation IV
  (427, 4, 11, 70, 100, 20, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Zen Headbutt Generation IV
  (428, 4, 11, 80, 90, 15, 0, 'physical', 'May make the target flinch (20% chance).'),
  -- Mirror Shot Generation IV
  (429, 4, 17, 65, 85, 10, 0, 'special', 'May lower the target''s accuracy by one stage (30% chance).'),
  -- Flash Cannon Generation IV
  (430, 4, 17, 80, 100, 10, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance).'),
  -- Rock Climb Generation IV
  (431, 4, 1, 90, 85, 20, 0, 'physical', 'May confuse the target (20% chance).'),
  -- Defog Generation IV
  (432, 4, 10, NULL, NULL, 15, 0, 'status', 'Lowers the target''s evasion by one stage and clears hazards and screens. In Gen 4-5 it cleared only the target''s side.'),
  -- Trick Room Generation IV
  (433, 4, 11, NULL, NULL, 5, -7, 'status', 'Makes slower Pokémon move first for five turns.'),
  -- Draco Meteor Generation IV
  (434, 4, 15, 140, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Discharge Generation IV
  (435, 4, 4, 80, 100, 15, 0, 'special', 'May paralyze the target (30% chance).'),
  -- Lava Plume Generation IV
  (436, 4, 2, 80, 100, 15, 0, 'special', 'May burn the target (30% chance).'),
  -- Leaf Storm Generation IV
  (437, 4, 5, 140, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Power Whip Generation IV
  (438, 4, 5, 120, 85, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Rock Wrecker Generation IV
  (439, 4, 13, 150, 90, 5, 0, 'physical', 'The user must recharge on the next turn.'),
  -- Cross Poison Generation IV
  (440, 4, 8, 70, 100, 20, 0, 'physical', 'May poison the target (10% chance); has a high critical-hit ratio.'),
  -- Gunk Shot Generation IV
  (441, 4, 8, 120, 70, 5, 0, 'physical', 'May poison the target (30% chance).'),
  -- Iron Head Generation IV
  (442, 4, 17, 80, 100, 15, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Magnet Bomb Generation IV
  (443, 4, 17, 60, NULL, 20, 0, 'physical', 'A plain attack that never misses.'),
  -- Stone Edge Generation IV
  (444, 4, 13, 100, 80, 5, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Captivate Generation IV
  (445, 4, 1, NULL, 100, 20, 0, 'status', 'Lowers the Sp. Atk of a target of the opposite gender by two stages.'),
  -- Stealth Rock Generation IV
  (446, 4, 13, NULL, NULL, 20, 0, 'status', 'Scatters rocks that hurt foes switching in, more when Rock is super effective on them.'),
  -- Grass Knot Generation IV
  (447, 4, 5, NULL, 100, 20, 0, 'special', 'Stronger against heavier targets (20 to 120 power).'),
  -- Chatter Generation IV
  (448, 4, 10, 60, 100, 20, 0, 'special', 'May confuse the target; in Gen 4-5 the chance depends on the cry Chatot recorded.'),
  -- Judgment Generation IV
  (449, 4, 1, 100, 100, 10, 0, 'special', 'Its type matches the Plate the user holds.'),
  -- Bug Bite Generation IV
  (450, 4, 12, 60, 100, 20, 0, 'physical', 'Eats the target''s Berry and gains its effect.'),
  -- Charge Beam Generation IV
  (451, 4, 4, 50, 90, 10, 0, 'special', 'May raise the user''s Sp. Atk by one stage (70% chance).'),
  -- Wood Hammer Generation IV
  (452, 4, 5, 120, 100, 15, 0, 'physical', 'The user takes 1/3 of the damage dealt as recoil.'),
  -- Aqua Jet Generation IV
  (453, 4, 3, 40, 100, 20, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Attack Order Generation IV
  (454, 4, 12, 90, 100, 15, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Defend Order Generation IV
  (455, 4, 12, NULL, NULL, 10, 0, 'status', 'Raises the user''s Defense and Sp. Def by one stage.'),
  -- Heal Order Generation IV
  (456, 4, 12, NULL, NULL, 10, 0, 'status', 'Restores half of the user''s max HP.'),
  -- Head Smash Generation IV
  (457, 4, 13, 150, 80, 5, 0, 'physical', 'The user takes 1/2 of the damage dealt as recoil.'),
  -- Double Hit Generation IV
  (458, 4, 1, 35, 90, 10, 0, 'physical', 'Hits twice in a row.'),
  -- Roar of Time Generation IV
  (459, 4, 15, 150, 90, 5, 0, 'special', 'The user must recharge on the next turn.'),
  -- Spacial Rend Generation IV
  (460, 4, 15, 100, 95, 5, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Lunar Dance Generation IV
  (461, 4, 11, NULL, NULL, 10, 0, 'status', 'The user faints to fully heal the Pokémon that replaces it, PP included.'),
  -- Crush Grip Generation IV
  (462, 4, 1, NULL, 100, 5, 0, 'physical', 'Stronger the more HP the target has left.'),
  -- Magma Storm Generation IV
  (463, 4, 2, 120, 70, 5, 0, 'special', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn.'),
  -- Dark Void Generation IV
  (464, 4, 16, NULL, 80, 10, 0, 'status', 'Puts the target to sleep.'),
  -- Seed Flare Generation IV
  (465, 4, 5, 120, 85, 5, 0, 'special', 'May lower the target''s Sp. Def by two stages (40% chance).'),
  -- Ominous Wind Generation IV
  (466, 4, 14, 60, 100, 5, 0, 'special', 'May raise all of the user''s stats by one stage (10% chance).'),
  -- Shadow Force Generation IV
  (467, 4, 14, 120, 100, 5, 0, 'physical', 'Vanishes on the first turn and strikes on the second, breaking through protection.');
