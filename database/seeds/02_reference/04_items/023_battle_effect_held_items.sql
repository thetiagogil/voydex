-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: battle-effect held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Ability Shield
  (370, 'ability-shield', 'Ability Shield', 10, 9, 1697, 370),
  -- Absorb Bulb
  (371, 'absorb-bulb', 'Absorb Bulb', 10, 5, 588, 371),
  -- Air Balloon
  (372, 'air-balloon', 'Air Balloon', 10, 5, 584, 372),
  -- Assault Vest
  (373, 'assault-vest', 'Assault Vest', 10, 6, 683, 373),
  -- Berserk Gene
  (374, 'berserk-gene', 'Berserk Gene', 10, 2, NULL, 374),
  -- Big Root
  (375, 'big-root', 'Big Root', 10, 4, 273, 375),
  -- Binding Band
  (376, 'binding-band', 'Binding Band', 10, 5, 587, 376),
  -- Black Sludge
  (377, 'black-sludge', 'Black Sludge', 10, 4, 258, 377),
  -- Blunder Policy
  (378, 'blunder-policy', 'Blunder Policy', 10, 8, 1179, 378),
  -- Bright Powder
  (379, 'bright-powder', 'Bright Powder', 10, 2, 190, 379),
  -- Cell Battery
  (380, 'cell-battery', 'Cell Battery', 10, 5, 589, 380),
  -- Choice Band
  (381, 'choice-band', 'Choice Band', 10, 3, 197, 381),
  -- Choice Scarf
  (382, 'choice-scarf', 'Choice Scarf', 10, 4, 264, 382),
  -- Choice Specs
  (383, 'choice-specs', 'Choice Specs', 10, 4, 274, 383),
  -- Clear Amulet
  (384, 'clear-amulet', 'Clear Amulet', 10, 9, 1698, 384),
  -- Covert Cloak
  (385, 'covert-cloak', 'Covert Cloak', 10, 9, 1701, 385),
  -- Damp Rock
  (386, 'damp-rock', 'Damp Rock', 10, 4, 262, 386),
  -- Eject Button
  (387, 'eject-button', 'Eject Button', 10, 5, 590, 387),
  -- Eject Pack
  (388, 'eject-pack', 'Eject Pack', 10, 8, 1177, 388),
  -- Electric Seed
  (389, 'electric-seed', 'Electric Seed', 10, 7, 898, 389),
  -- Eviolite
  (390, 'eviolite', 'Eviolite', 10, 5, 581, 390),
  -- Expert Belt
  (391, 'expert-belt', 'Expert Belt', 10, 4, 245, 391),
  -- Flame Orb
  (392, 'flame-orb', 'Flame Orb', 10, 4, 250, 392),
  -- Float Stone
  (393, 'float-stone', 'Float Stone', 10, 5, 582, 393),
  -- Focus Band
  (394, 'focus-band', 'Focus Band', 10, 2, 207, 394),
  -- Focus Sash
  (395, 'focus-sash', 'Focus Sash', 10, 4, 252, 395),
  -- Grassy Seed
  (396, 'grassy-seed', 'Grassy Seed', 10, 7, 901, 396),
  -- Grip Claw
  (397, 'grip-claw', 'Grip Claw', 10, 4, 263, 397),
  -- Heat Rock
  (398, 'heat-rock', 'Heat Rock', 10, 4, 261, 398),
  -- Heavy-Duty Boots
  (399, 'heavy-duty-boots', 'Heavy-Duty Boots', 10, 8, 1178, 399),
  -- Icy Rock
  (400, 'icy-rock', 'Icy Rock', 10, 4, 259, 400),
  -- Iron Ball
  (401, 'iron-ball', 'Iron Ball', 10, 4, 255, 401),
  -- Lagging Tail
  (402, 'lagging-tail', 'Lagging Tail', 10, 4, 256, 402),
  -- Leftovers
  (403, 'leftovers', 'Leftovers', 10, 2, 211, 403),
  -- Life Orb
  (404, 'life-orb', 'Life Orb', 10, 4, 247, 404),
  -- Light Clay
  (405, 'light-clay', 'Light Clay', 10, 4, 246, 405),
  -- Loaded Dice
  (406, 'loaded-dice', 'Loaded Dice', 10, 9, 1702, 406),
  -- Luminous Moss
  (407, 'luminous-moss', 'Luminous Moss', 10, 6, 688, 407),
  -- Mental Herb
  (408, 'mental-herb', 'Mental Herb', 10, 3, 196, 408),
  -- Metronome
  (409, 'metronome', 'Metronome', 10, 4, 254, 409),
  -- Mirror Herb
  (410, 'mirror-herb', 'Mirror Herb', 10, 9, 1699, 410),
  -- Misty Seed
  (411, 'misty-seed', 'Misty Seed', 10, 7, 900, 411),
  -- Muscle Band
  (412, 'muscle-band', 'Muscle Band', 10, 4, 243, 412),
  -- Power Herb
  (413, 'power-herb', 'Power Herb', 10, 4, 248, 413),
  -- Protective Pads
  (414, 'protective-pads', 'Protective Pads', 10, 7, 897, 414),
  -- Psychic Seed
  (415, 'psychic-seed', 'Psychic Seed', 10, 7, 899, 415),
  -- Punching Glove
  (416, 'punching-glove', 'Punching Glove', 10, 9, 1700, 416),
  -- Quick Claw
  (417, 'quick-claw', 'Quick Claw', 10, 2, 194, 417),
  -- Red Card
  (418, 'red-card', 'Red Card', 10, 5, 585, 418),
  -- Ring Target
  (419, 'ring-target', 'Ring Target', 10, 5, 586, 419),
  -- Rocky Helmet
  (420, 'rocky-helmet', 'Rocky Helmet', 10, 5, 583, 420),
  -- Room Service
  (421, 'room-service', 'Room Service', 10, 8, 1180, 421),
  -- Safety Goggles
  (422, 'safety-goggles', 'Safety Goggles', 10, 6, 690, 422),
  -- Scope Lens
  (423, 'scope-lens', 'Scope Lens', 10, 2, 209, 423),
  -- Shed Shell
  (424, 'shed-shell', 'Shed Shell', 10, 4, 272, 424),
  -- Shell Bell
  (425, 'shell-bell', 'Shell Bell', 10, 3, 230, 425),
  -- Smooth Rock
  (426, 'smooth-rock', 'Smooth Rock', 10, 4, 260, 426),
  -- Snowball
  (427, 'snowball', 'Snowball', 10, 6, 689, 427),
  -- Sticky Barb
  (428, 'sticky-barb', 'Sticky Barb', 10, 4, 265, 428),
  -- Terrain Extender
  (429, 'terrain-extender', 'Terrain Extender', 10, 7, 896, 429),
  -- Throat Spray
  (430, 'throat-spray', 'Throat Spray', 10, 8, 1176, 430),
  -- Toxic Orb
  (431, 'toxic-orb', 'Toxic Orb', 10, 4, 249, 431),
  -- Utility Umbrella
  (432, 'utility-umbrella', 'Utility Umbrella', 10, 8, 1181, 432),
  -- Weakness Policy
  (433, 'weakness-policy', 'Weakness Policy', 10, 6, 682, 433),
  -- White Herb
  (434, 'white-herb', 'White Herb', 10, 3, 191, 434),
  -- Wide Lens
  (435, 'wide-lens', 'Wide Lens', 10, 4, 242, 435),
  -- Wise Glasses
  (436, 'wise-glasses', 'Wise Glasses', 10, 4, 244, 436),
  -- Zoom Lens
  (437, 'zoom-lens', 'Zoom Lens', 10, 4, 253, 437);
