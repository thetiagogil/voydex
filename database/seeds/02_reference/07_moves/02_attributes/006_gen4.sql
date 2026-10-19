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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Roost Generation IV
  (355, 4, 10, NULL, NULL, 5, 0, 'status'),
  -- Gravity Generation IV
  (356, 4, 11, NULL, NULL, 5, 0, 'status'),
  -- Miracle Eye Generation IV
  (357, 4, 11, NULL, NULL, 40, 0, 'status'),
  -- Wake-Up Slap Generation IV
  (358, 4, 7, 60, 100, 10, 0, 'physical'),
  -- Hammer Arm Generation IV
  (359, 4, 7, 100, 90, 10, 0, 'physical'),
  -- Gyro Ball Generation IV
  (360, 4, 17, NULL, 100, 5, 0, 'physical'),
  -- Healing Wish Generation IV
  (361, 4, 11, NULL, NULL, 10, 0, 'status'),
  -- Brine Generation IV
  (362, 4, 3, 65, 100, 10, 0, 'special'),
  -- Natural Gift Generation IV
  (363, 4, 1, NULL, 100, 15, 0, 'physical'),
  -- Feint Generation IV
  (364, 4, 1, 50, 100, 10, 2, 'physical'),
  -- Pluck Generation IV
  (365, 4, 10, 60, 100, 20, 0, 'physical'),
  -- Tailwind Generation IV
  (366, 4, 10, NULL, NULL, 30, 0, 'status'),
  -- Acupressure Generation IV
  (367, 4, 1, NULL, NULL, 30, 0, 'status'),
  -- Metal Burst Generation IV
  (368, 4, 17, NULL, 100, 10, 0, 'physical'),
  -- U-turn Generation IV
  (369, 4, 12, 70, 100, 20, 0, 'physical'),
  -- Close Combat Generation IV
  (370, 4, 7, 120, 100, 5, 0, 'physical'),
  -- Payback Generation IV
  (371, 4, 16, 50, 100, 10, 0, 'physical'),
  -- Assurance Generation IV
  (372, 4, 16, 50, 100, 10, 0, 'physical'),
  -- Embargo Generation IV
  (373, 4, 16, NULL, 100, 15, 0, 'status'),
  -- Fling Generation IV
  (374, 4, 16, NULL, 100, 10, 0, 'physical'),
  -- Psycho Shift Generation IV
  (375, 4, 11, NULL, 90, 10, 0, 'status'),
  -- Trump Card Generation IV
  (376, 4, 1, NULL, NULL, 5, 0, 'special'),
  -- Heal Block Generation IV
  (377, 4, 11, NULL, 100, 15, 0, 'status'),
  -- Wring Out Generation IV
  (378, 4, 1, NULL, 100, 5, 0, 'special'),
  -- Power Trick Generation IV
  (379, 4, 11, NULL, NULL, 10, 0, 'status'),
  -- Gastro Acid Generation IV
  (380, 4, 8, NULL, 100, 10, 0, 'status'),
  -- Lucky Chant Generation IV
  (381, 4, 1, NULL, NULL, 30, 0, 'status'),
  -- Me First Generation IV
  (382, 4, 1, NULL, NULL, 20, 0, 'status'),
  -- Copycat Generation IV
  (383, 4, 1, NULL, NULL, 20, 0, 'status'),
  -- Power Swap Generation IV
  (384, 4, 11, NULL, NULL, 10, 0, 'status'),
  -- Guard Swap Generation IV
  (385, 4, 11, NULL, NULL, 10, 0, 'status'),
  -- Punishment Generation IV
  (386, 4, 16, 60, 100, 5, 0, 'physical'),
  -- Last Resort Generation IV
  (387, 4, 1, 130, 100, 5, 0, 'physical'),
  -- Worry Seed Generation IV
  (388, 4, 5, NULL, 100, 10, 0, 'status'),
  -- Sucker Punch Generation IV
  (389, 4, 16, 80, 100, 5, 1, 'physical'),
  -- Toxic Spikes Generation IV
  (390, 4, 8, NULL, NULL, 20, 0, 'status'),
  -- Heart Swap Generation IV
  (391, 4, 11, NULL, NULL, 10, 0, 'status'),
  -- Aqua Ring Generation IV
  (392, 4, 3, NULL, NULL, 20, 0, 'status'),
  -- Magnet Rise Generation IV
  (393, 4, 4, NULL, NULL, 10, 0, 'status'),
  -- Flare Blitz Generation IV
  (394, 4, 2, 120, 100, 15, 0, 'physical'),
  -- Force Palm Generation IV
  (395, 4, 7, 60, 100, 10, 0, 'physical'),
  -- Aura Sphere Generation IV
  (396, 4, 7, 90, NULL, 20, 0, 'special'),
  -- Rock Polish Generation IV
  (397, 4, 13, NULL, NULL, 20, 0, 'status'),
  -- Poison Jab Generation IV
  (398, 4, 8, 80, 100, 20, 0, 'physical'),
  -- Dark Pulse Generation IV
  (399, 4, 16, 80, 100, 15, 0, 'special'),
  -- Night Slash Generation IV
  (400, 4, 16, 70, 100, 15, 0, 'physical'),
  -- Aqua Tail Generation IV
  (401, 4, 3, 90, 90, 10, 0, 'physical'),
  -- Seed Bomb Generation IV
  (402, 4, 5, 80, 100, 15, 0, 'physical'),
  -- Air Slash Generation IV
  (403, 4, 10, 75, 95, 20, 0, 'special'),
  -- X-Scissor Generation IV
  (404, 4, 12, 80, 100, 15, 0, 'physical'),
  -- Bug Buzz Generation IV
  (405, 4, 12, 90, 100, 10, 0, 'special'),
  -- Dragon Pulse Generation IV
  (406, 4, 15, 90, 100, 10, 0, 'special'),
  -- Dragon Rush Generation IV
  (407, 4, 15, 100, 75, 10, 0, 'physical'),
  -- Power Gem Generation IV
  (408, 4, 13, 70, 100, 20, 0, 'special'),
  -- Drain Punch Generation IV
  (409, 4, 7, 60, 100, 5, 0, 'physical'),
  -- Vacuum Wave Generation IV
  (410, 4, 7, 40, 100, 30, 1, 'special'),
  -- Focus Blast Generation IV
  (411, 4, 7, 120, 70, 5, 0, 'special'),
  -- Energy Ball Generation IV
  (412, 4, 5, 80, 100, 10, 0, 'special'),
  -- Brave Bird Generation IV
  (413, 4, 10, 120, 100, 15, 0, 'physical'),
  -- Earth Power Generation IV
  (414, 4, 9, 90, 100, 10, 0, 'special'),
  -- Switcheroo Generation IV
  (415, 4, 16, NULL, 100, 10, 0, 'status'),
  -- Giga Impact Generation IV
  (416, 4, 1, 150, 90, 5, 0, 'physical'),
  -- Nasty Plot Generation IV
  (417, 4, 16, NULL, NULL, 20, 0, 'status'),
  -- Bullet Punch Generation IV
  (418, 4, 17, 40, 100, 30, 1, 'physical'),
  -- Avalanche Generation IV
  (419, 4, 6, 60, 100, 10, -4, 'physical'),
  -- Ice Shard Generation IV
  (420, 4, 6, 40, 100, 30, 1, 'physical'),
  -- Shadow Claw Generation IV
  (421, 4, 14, 70, 100, 15, 0, 'physical'),
  -- Thunder Fang Generation IV
  (422, 4, 4, 65, 95, 15, 0, 'physical'),
  -- Ice Fang Generation IV
  (423, 4, 6, 65, 95, 15, 0, 'physical'),
  -- Fire Fang Generation IV
  (424, 4, 2, 65, 95, 15, 0, 'physical'),
  -- Shadow Sneak Generation IV
  (425, 4, 14, 40, 100, 30, 1, 'physical'),
  -- Mud Bomb Generation IV
  (426, 4, 9, 65, 85, 10, 0, 'special'),
  -- Psycho Cut Generation IV
  (427, 4, 11, 70, 100, 20, 0, 'physical'),
  -- Zen Headbutt Generation IV
  (428, 4, 11, 80, 90, 15, 0, 'physical'),
  -- Mirror Shot Generation IV
  (429, 4, 17, 65, 85, 10, 0, 'special'),
  -- Flash Cannon Generation IV
  (430, 4, 17, 80, 100, 10, 0, 'special'),
  -- Rock Climb Generation IV
  (431, 4, 1, 90, 85, 20, 0, 'physical'),
  -- Defog Generation IV
  (432, 4, 10, NULL, NULL, 15, 0, 'status'),
  -- Trick Room Generation IV
  (433, 4, 11, NULL, NULL, 5, -7, 'status'),
  -- Draco Meteor Generation IV
  (434, 4, 15, 140, 90, 5, 0, 'special'),
  -- Discharge Generation IV
  (435, 4, 4, 80, 100, 15, 0, 'special'),
  -- Lava Plume Generation IV
  (436, 4, 2, 80, 100, 15, 0, 'special'),
  -- Leaf Storm Generation IV
  (437, 4, 5, 140, 90, 5, 0, 'special'),
  -- Power Whip Generation IV
  (438, 4, 5, 120, 85, 10, 0, 'physical'),
  -- Rock Wrecker Generation IV
  (439, 4, 13, 150, 90, 5, 0, 'physical'),
  -- Cross Poison Generation IV
  (440, 4, 8, 70, 100, 20, 0, 'physical'),
  -- Gunk Shot Generation IV
  (441, 4, 8, 120, 70, 5, 0, 'physical'),
  -- Iron Head Generation IV
  (442, 4, 17, 80, 100, 15, 0, 'physical'),
  -- Magnet Bomb Generation IV
  (443, 4, 17, 60, NULL, 20, 0, 'physical'),
  -- Stone Edge Generation IV
  (444, 4, 13, 100, 80, 5, 0, 'physical'),
  -- Captivate Generation IV
  (445, 4, 1, NULL, 100, 20, 0, 'status'),
  -- Stealth Rock Generation IV
  (446, 4, 13, NULL, NULL, 20, 0, 'status'),
  -- Grass Knot Generation IV
  (447, 4, 5, NULL, 100, 20, 0, 'special'),
  -- Chatter Generation IV
  (448, 4, 10, 60, 100, 20, 0, 'special'),
  -- Judgment Generation IV
  (449, 4, 1, 100, 100, 10, 0, 'special'),
  -- Bug Bite Generation IV
  (450, 4, 12, 60, 100, 20, 0, 'physical'),
  -- Charge Beam Generation IV
  (451, 4, 4, 50, 90, 10, 0, 'special'),
  -- Wood Hammer Generation IV
  (452, 4, 5, 120, 100, 15, 0, 'physical'),
  -- Aqua Jet Generation IV
  (453, 4, 3, 40, 100, 20, 1, 'physical'),
  -- Attack Order Generation IV
  (454, 4, 12, 90, 100, 15, 0, 'physical'),
  -- Defend Order Generation IV
  (455, 4, 12, NULL, NULL, 10, 0, 'status'),
  -- Heal Order Generation IV
  (456, 4, 12, NULL, NULL, 10, 0, 'status'),
  -- Head Smash Generation IV
  (457, 4, 13, 150, 80, 5, 0, 'physical'),
  -- Double Hit Generation IV
  (458, 4, 1, 35, 90, 10, 0, 'physical'),
  -- Roar of Time Generation IV
  (459, 4, 15, 150, 90, 5, 0, 'special'),
  -- Spacial Rend Generation IV
  (460, 4, 15, 100, 95, 5, 0, 'special'),
  -- Lunar Dance Generation IV
  (461, 4, 11, NULL, NULL, 10, 0, 'status'),
  -- Crush Grip Generation IV
  (462, 4, 1, NULL, 100, 5, 0, 'physical'),
  -- Magma Storm Generation IV
  (463, 4, 2, 120, 70, 5, 0, 'special'),
  -- Dark Void Generation IV
  (464, 4, 16, NULL, 80, 10, 0, 'status'),
  -- Seed Flare Generation IV
  (465, 4, 5, 120, 85, 5, 0, 'special'),
  -- Ominous Wind Generation IV
  (466, 4, 14, 60, 100, 5, 0, 'special'),
  -- Shadow Force Generation IV
  (467, 4, 14, 120, 100, 5, 0, 'physical');
