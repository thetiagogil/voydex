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
-- Generation 4 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Roost
  (355, 'roost', 'Roost', 1, 355, 4, 355),
  -- Gravity
  (356, 'gravity', 'Gravity', 1, 356, 4, 356),
  -- Miracle Eye
  (357, 'miracle-eye', 'Miracle Eye', 1, 357, 4, 357),
  -- Wake-Up Slap
  (358, 'wake-up-slap', 'Wake-Up Slap', 1, 358, 4, 358),
  -- Hammer Arm
  (359, 'hammer-arm', 'Hammer Arm', 1, 359, 4, 359),
  -- Gyro Ball
  (360, 'gyro-ball', 'Gyro Ball', 1, 360, 4, 360),
  -- Healing Wish
  (361, 'healing-wish', 'Healing Wish', 1, 361, 4, 361),
  -- Brine
  (362, 'brine', 'Brine', 1, 362, 4, 362),
  -- Natural Gift
  (363, 'natural-gift', 'Natural Gift', 1, 363, 4, 363),
  -- Feint
  (364, 'feint', 'Feint', 1, 364, 4, 364),
  -- Pluck
  (365, 'pluck', 'Pluck', 1, 365, 4, 365),
  -- Tailwind
  (366, 'tailwind', 'Tailwind', 1, 366, 4, 366),
  -- Acupressure
  (367, 'acupressure', 'Acupressure', 1, 367, 4, 367),
  -- Metal Burst
  (368, 'metal-burst', 'Metal Burst', 1, 368, 4, 368),
  -- U-turn
  (369, 'u-turn', 'U-turn', 1, 369, 4, 369),
  -- Close Combat
  (370, 'close-combat', 'Close Combat', 1, 370, 4, 370),
  -- Payback
  (371, 'payback', 'Payback', 1, 371, 4, 371),
  -- Assurance
  (372, 'assurance', 'Assurance', 1, 372, 4, 372),
  -- Embargo
  (373, 'embargo', 'Embargo', 1, 373, 4, 373),
  -- Fling
  (374, 'fling', 'Fling', 1, 374, 4, 374),
  -- Psycho Shift
  (375, 'psycho-shift', 'Psycho Shift', 1, 375, 4, 375),
  -- Trump Card
  (376, 'trump-card', 'Trump Card', 1, 376, 4, 376),
  -- Heal Block
  (377, 'heal-block', 'Heal Block', 1, 377, 4, 377),
  -- Wring Out
  (378, 'wring-out', 'Wring Out', 1, 378, 4, 378),
  -- Power Trick
  (379, 'power-trick', 'Power Trick', 1, 379, 4, 379),
  -- Gastro Acid
  (380, 'gastro-acid', 'Gastro Acid', 1, 380, 4, 380),
  -- Lucky Chant
  (381, 'lucky-chant', 'Lucky Chant', 1, 381, 4, 381),
  -- Me First
  (382, 'me-first', 'Me First', 1, 382, 4, 382),
  -- Copycat
  (383, 'copycat', 'Copycat', 1, 383, 4, 383),
  -- Power Swap
  (384, 'power-swap', 'Power Swap', 1, 384, 4, 384),
  -- Guard Swap
  (385, 'guard-swap', 'Guard Swap', 1, 385, 4, 385),
  -- Punishment
  (386, 'punishment', 'Punishment', 1, 386, 4, 386),
  -- Last Resort
  (387, 'last-resort', 'Last Resort', 1, 387, 4, 387),
  -- Worry Seed
  (388, 'worry-seed', 'Worry Seed', 1, 388, 4, 388),
  -- Sucker Punch
  (389, 'sucker-punch', 'Sucker Punch', 1, 389, 4, 389),
  -- Toxic Spikes
  (390, 'toxic-spikes', 'Toxic Spikes', 1, 390, 4, 390),
  -- Heart Swap
  (391, 'heart-swap', 'Heart Swap', 1, 391, 4, 391),
  -- Aqua Ring
  (392, 'aqua-ring', 'Aqua Ring', 1, 392, 4, 392),
  -- Magnet Rise
  (393, 'magnet-rise', 'Magnet Rise', 1, 393, 4, 393),
  -- Flare Blitz
  (394, 'flare-blitz', 'Flare Blitz', 1, 394, 4, 394),
  -- Force Palm
  (395, 'force-palm', 'Force Palm', 1, 395, 4, 395),
  -- Aura Sphere
  (396, 'aura-sphere', 'Aura Sphere', 1, 396, 4, 396),
  -- Rock Polish
  (397, 'rock-polish', 'Rock Polish', 1, 397, 4, 397),
  -- Poison Jab
  (398, 'poison-jab', 'Poison Jab', 1, 398, 4, 398),
  -- Dark Pulse
  (399, 'dark-pulse', 'Dark Pulse', 1, 399, 4, 399),
  -- Night Slash
  (400, 'night-slash', 'Night Slash', 1, 400, 4, 400),
  -- Aqua Tail
  (401, 'aqua-tail', 'Aqua Tail', 1, 401, 4, 401),
  -- Seed Bomb
  (402, 'seed-bomb', 'Seed Bomb', 1, 402, 4, 402),
  -- Air Slash
  (403, 'air-slash', 'Air Slash', 1, 403, 4, 403),
  -- X-Scissor
  (404, 'x-scissor', 'X-Scissor', 1, 404, 4, 404),
  -- Bug Buzz
  (405, 'bug-buzz', 'Bug Buzz', 1, 405, 4, 405),
  -- Dragon Pulse
  (406, 'dragon-pulse', 'Dragon Pulse', 1, 406, 4, 406),
  -- Dragon Rush
  (407, 'dragon-rush', 'Dragon Rush', 1, 407, 4, 407),
  -- Power Gem
  (408, 'power-gem', 'Power Gem', 1, 408, 4, 408),
  -- Drain Punch
  (409, 'drain-punch', 'Drain Punch', 1, 409, 4, 409),
  -- Vacuum Wave
  (410, 'vacuum-wave', 'Vacuum Wave', 1, 410, 4, 410),
  -- Focus Blast
  (411, 'focus-blast', 'Focus Blast', 1, 411, 4, 411),
  -- Energy Ball
  (412, 'energy-ball', 'Energy Ball', 1, 412, 4, 412),
  -- Brave Bird
  (413, 'brave-bird', 'Brave Bird', 1, 413, 4, 413),
  -- Earth Power
  (414, 'earth-power', 'Earth Power', 1, 414, 4, 414),
  -- Switcheroo
  (415, 'switcheroo', 'Switcheroo', 1, 415, 4, 415),
  -- Giga Impact
  (416, 'giga-impact', 'Giga Impact', 1, 416, 4, 416),
  -- Nasty Plot
  (417, 'nasty-plot', 'Nasty Plot', 1, 417, 4, 417),
  -- Bullet Punch
  (418, 'bullet-punch', 'Bullet Punch', 1, 418, 4, 418),
  -- Avalanche
  (419, 'avalanche', 'Avalanche', 1, 419, 4, 419),
  -- Ice Shard
  (420, 'ice-shard', 'Ice Shard', 1, 420, 4, 420),
  -- Shadow Claw
  (421, 'shadow-claw', 'Shadow Claw', 1, 421, 4, 421),
  -- Thunder Fang
  (422, 'thunder-fang', 'Thunder Fang', 1, 422, 4, 422),
  -- Ice Fang
  (423, 'ice-fang', 'Ice Fang', 1, 423, 4, 423),
  -- Fire Fang
  (424, 'fire-fang', 'Fire Fang', 1, 424, 4, 424),
  -- Shadow Sneak
  (425, 'shadow-sneak', 'Shadow Sneak', 1, 425, 4, 425),
  -- Mud Bomb
  (426, 'mud-bomb', 'Mud Bomb', 1, 426, 4, 426),
  -- Psycho Cut
  (427, 'psycho-cut', 'Psycho Cut', 1, 427, 4, 427),
  -- Zen Headbutt
  (428, 'zen-headbutt', 'Zen Headbutt', 1, 428, 4, 428),
  -- Mirror Shot
  (429, 'mirror-shot', 'Mirror Shot', 1, 429, 4, 429),
  -- Flash Cannon
  (430, 'flash-cannon', 'Flash Cannon', 1, 430, 4, 430),
  -- Rock Climb
  (431, 'rock-climb', 'Rock Climb', 1, 431, 4, 431),
  -- Defog
  (432, 'defog', 'Defog', 1, 432, 4, 432),
  -- Trick Room
  (433, 'trick-room', 'Trick Room', 1, 433, 4, 433),
  -- Draco Meteor
  (434, 'draco-meteor', 'Draco Meteor', 1, 434, 4, 434),
  -- Discharge
  (435, 'discharge', 'Discharge', 1, 435, 4, 435),
  -- Lava Plume
  (436, 'lava-plume', 'Lava Plume', 1, 436, 4, 436),
  -- Leaf Storm
  (437, 'leaf-storm', 'Leaf Storm', 1, 437, 4, 437),
  -- Power Whip
  (438, 'power-whip', 'Power Whip', 1, 438, 4, 438),
  -- Rock Wrecker
  (439, 'rock-wrecker', 'Rock Wrecker', 1, 439, 4, 439),
  -- Cross Poison
  (440, 'cross-poison', 'Cross Poison', 1, 440, 4, 440),
  -- Gunk Shot
  (441, 'gunk-shot', 'Gunk Shot', 1, 441, 4, 441),
  -- Iron Head
  (442, 'iron-head', 'Iron Head', 1, 442, 4, 442),
  -- Magnet Bomb
  (443, 'magnet-bomb', 'Magnet Bomb', 1, 443, 4, 443),
  -- Stone Edge
  (444, 'stone-edge', 'Stone Edge', 1, 444, 4, 444),
  -- Captivate
  (445, 'captivate', 'Captivate', 1, 445, 4, 445),
  -- Stealth Rock
  (446, 'stealth-rock', 'Stealth Rock', 1, 446, 4, 446),
  -- Grass Knot
  (447, 'grass-knot', 'Grass Knot', 1, 447, 4, 447),
  -- Chatter
  (448, 'chatter', 'Chatter', 1, 448, 4, 448),
  -- Judgment
  (449, 'judgment', 'Judgment', 1, 449, 4, 449),
  -- Bug Bite
  (450, 'bug-bite', 'Bug Bite', 1, 450, 4, 450),
  -- Charge Beam
  (451, 'charge-beam', 'Charge Beam', 1, 451, 4, 451),
  -- Wood Hammer
  (452, 'wood-hammer', 'Wood Hammer', 1, 452, 4, 452),
  -- Aqua Jet
  (453, 'aqua-jet', 'Aqua Jet', 1, 453, 4, 453),
  -- Attack Order
  (454, 'attack-order', 'Attack Order', 1, 454, 4, 454),
  -- Defend Order
  (455, 'defend-order', 'Defend Order', 1, 455, 4, 455),
  -- Heal Order
  (456, 'heal-order', 'Heal Order', 1, 456, 4, 456),
  -- Head Smash
  (457, 'head-smash', 'Head Smash', 1, 457, 4, 457),
  -- Double Hit
  (458, 'double-hit', 'Double Hit', 1, 458, 4, 458),
  -- Roar of Time
  (459, 'roar-of-time', 'Roar of Time', 1, 459, 4, 459),
  -- Spacial Rend
  (460, 'spacial-rend', 'Spacial Rend', 1, 460, 4, 460),
  -- Lunar Dance
  (461, 'lunar-dance', 'Lunar Dance', 1, 461, 4, 461),
  -- Crush Grip
  (462, 'crush-grip', 'Crush Grip', 1, 462, 4, 462),
  -- Magma Storm
  (463, 'magma-storm', 'Magma Storm', 1, 463, 4, 463),
  -- Dark Void
  (464, 'dark-void', 'Dark Void', 1, 464, 4, 464),
  -- Seed Flare
  (465, 'seed-flare', 'Seed Flare', 1, 465, 4, 465),
  -- Ominous Wind
  (466, 'ominous-wind', 'Ominous Wind', 1, 466, 4, 466),
  -- Shadow Force
  (467, 'shadow-force', 'Shadow Force', 1, 467, 4, 467);
