-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: battle-effect held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Ability Shield
  (370, 'ability-shield', 'Ability Shield', 10, 9, 1697, 370, 'Stops the holder''s Ability from being changed or suppressed.'),
  -- Absorb Bulb
  (371, 'absorb-bulb', 'Absorb Bulb', 10, 5, 588, 371, 'Raises Sp. Atk by one stage when a Water-type move hits the holder, then is used up.'),
  -- Air Balloon
  (372, 'air-balloon', 'Air Balloon', 10, 5, 584, 372, 'Makes the holder immune to Ground-type moves until an attack hits it and pops it.'),
  -- Assault Vest
  (373, 'assault-vest', 'Assault Vest', 10, 6, 683, 373, 'Raises Sp. Def by 50%, but the holder can only use damaging moves.'),
  -- Berserk Gene
  (374, 'berserk-gene', 'Berserk Gene', 10, 2, NULL, 374, 'Sharply raises the holder''s Attack but leaves it confused, then is used up.'),
  -- Big Root
  (375, 'big-root', 'Big Root', 10, 4, 273, 375, 'Raises the HP the holder recovers from draining moves, Leech Seed and Ingrain by 30%.'),
  -- Binding Band
  (376, 'binding-band', 'Binding Band', 10, 5, 587, 376, 'Makes the holder''s binding moves, such as Wrap and Fire Spin, deal a sixth of max HP each turn instead of an eighth.'),
  -- Black Sludge
  (377, 'black-sludge', 'Black Sludge', 10, 4, 258, 377, 'Restores a sixteenth of max HP each turn for Poison types, but hurts a holder of any different type by an eighth.'),
  -- Blunder Policy
  (378, 'blunder-policy', 'Blunder Policy', 10, 8, 1179, 378, 'Sharply raises Speed when the holder''s move misses on accuracy, then is used up.'),
  -- Bright Powder
  (379, 'bright-powder', 'Bright Powder', 10, 2, 190, 379, 'Lowers the accuracy of moves used on the holder by 10%.'),
  -- Cell Battery
  (380, 'cell-battery', 'Cell Battery', 10, 5, 589, 380, 'Raises Attack by one stage when an Electric-type move hits the holder, then is used up.'),
  -- Choice Band
  (381, 'choice-band', 'Choice Band', 10, 3, 197, 381, 'Raises Attack by 50%, but the holder is locked into the first move it uses.'),
  -- Choice Scarf
  (382, 'choice-scarf', 'Choice Scarf', 10, 4, 264, 382, 'Raises Speed by 50%, but the holder is locked into the first move it uses.'),
  -- Choice Specs
  (383, 'choice-specs', 'Choice Specs', 10, 4, 274, 383, 'Raises Sp. Atk by 50%, but the holder is locked into the first move it uses.'),
  -- Clear Amulet
  (384, 'clear-amulet', 'Clear Amulet', 10, 9, 1698, 384, 'Stops opponents and allies from lowering the holder''s stats with their moves or Abilities.'),
  -- Covert Cloak
  (385, 'covert-cloak', 'Covert Cloak', 10, 9, 1701, 385, 'Protects the holder from the added effects of moves used on it, such as flinching.'),
  -- Damp Rock
  (386, 'damp-rock', 'Damp Rock', 10, 4, 262, 386, 'Makes rain started by the holder last 8 turns instead of 5.'),
  -- Eject Button
  (387, 'eject-button', 'Eject Button', 10, 5, 590, 387, 'Switches the holder out after an attack hits it, then is used up.'),
  -- Eject Pack
  (388, 'eject-pack', 'Eject Pack', 10, 8, 1177, 388, 'Switches the holder out when its stats are lowered, then is used up.'),
  -- Electric Seed
  (389, 'electric-seed', 'Electric Seed', 10, 7, 898, 389, 'Raises Defense by one stage on Electric Terrain, then is used up.'),
  -- Eviolite
  (390, 'eviolite', 'Eviolite', 10, 5, 581, 390, 'Raises Defense and Sp. Def by 50% while the holder can still evolve.'),
  -- Expert Belt
  (391, 'expert-belt', 'Expert Belt', 10, 4, 245, 391, 'Raises the power of super-effective moves by 20%.'),
  -- Flame Orb
  (392, 'flame-orb', 'Flame Orb', 10, 4, 250, 392, 'Burns the holder at the end of the turn.'),
  -- Float Stone
  (393, 'float-stone', 'Float Stone', 10, 5, 582, 393, 'Halves the holder''s weight, so weight-based moves such as Low Kick deal less damage to it.'),
  -- Focus Band
  (394, 'focus-band', 'Focus Band', 10, 2, 207, 394, 'Gives the holder a 10% chance to survive a knockout hit with 1 HP.'),
  -- Focus Sash
  (395, 'focus-sash', 'Focus Sash', 10, 4, 252, 395, 'At full HP, the holder survives one knockout hit with 1 HP, then the sash is used up.'),
  -- Grassy Seed
  (396, 'grassy-seed', 'Grassy Seed', 10, 7, 901, 396, 'Raises Defense by one stage on Grassy Terrain, then is used up.'),
  -- Grip Claw
  (397, 'grip-claw', 'Grip Claw', 10, 4, 263, 397, 'Makes the holder''s binding moves, such as Wrap, last 7 turns.'),
  -- Heat Rock
  (398, 'heat-rock', 'Heat Rock', 10, 4, 261, 398, 'Makes harsh sunlight started by the holder last 8 turns instead of 5.'),
  -- Heavy-Duty Boots
  (399, 'heavy-duty-boots', 'Heavy-Duty Boots', 10, 8, 1178, 399, 'Protects the holder from entry hazards such as Stealth Rock and Spikes.'),
  -- Icy Rock
  (400, 'icy-rock', 'Icy Rock', 10, 4, 259, 400, 'Makes snow started by the holder last 8 turns instead of 5. Before Gen 9 it extended hail.'),
  -- Iron Ball
  (401, 'iron-ball', 'Iron Ball', 10, 4, 255, 401, 'Halves the holder''s Speed and grounds it, so Ground-type moves can hit it.'),
  -- Lagging Tail
  (402, 'lagging-tail', 'Lagging Tail', 10, 4, 256, 402, 'Makes the holder move last in its priority bracket.'),
  -- Leftovers
  (403, 'leftovers', 'Leftovers', 10, 2, 211, 403, 'Restores a sixteenth of the holder''s max HP at the end of each turn.'),
  -- Life Orb
  (404, 'life-orb', 'Life Orb', 10, 4, 247, 404, 'Raises the power of the holder''s moves by 30%, but each hit costs it a tenth of max HP.'),
  -- Light Clay
  (405, 'light-clay', 'Light Clay', 10, 4, 246, 405, 'Makes Reflect, Light Screen and Aurora Veil set by the holder last 8 turns instead of 5.'),
  -- Loaded Dice
  (406, 'loaded-dice', 'Loaded Dice', 10, 9, 1702, 406, 'Makes the holder''s multi-strike moves hit more often, usually four or five times.'),
  -- Luminous Moss
  (407, 'luminous-moss', 'Luminous Moss', 10, 6, 688, 407, 'Raises Sp. Def by one stage when a Water-type move hits the holder, then is used up.'),
  -- Mental Herb
  (408, 'mental-herb', 'Mental Herb', 10, 3, 196, 408, 'Frees the holder from infatuation, Taunt, Encore, Torment, Disable or Heal Block once, then is used up.'),
  -- Metronome
  (409, 'metronome', 'Metronome', 10, 4, 254, 409, 'Boosts a move each time the holder uses it in a row, up to double power.'),
  -- Mirror Herb
  (410, 'mirror-herb', 'Mirror Herb', 10, 9, 1699, 410, 'Copies the stat boosts an opponent or ally gains, then is used up. At a picnic it passes egg moves between Pokémon.'),
  -- Misty Seed
  (411, 'misty-seed', 'Misty Seed', 10, 7, 900, 411, 'Raises Sp. Def by one stage on Misty Terrain, then is used up.'),
  -- Muscle Band
  (412, 'muscle-band', 'Muscle Band', 10, 4, 243, 412, 'Raises the power of physical moves by 10%.'),
  -- Power Herb
  (413, 'power-herb', 'Power Herb', 10, 4, 248, 413, 'Lets the holder use a two-turn move, such as Solar Beam, in one turn, then is used up.'),
  -- Protective Pads
  (414, 'protective-pads', 'Protective Pads', 10, 7, 897, 414, 'Protects the holder from the effects of making contact, such as Rocky Helmet.'),
  -- Psychic Seed
  (415, 'psychic-seed', 'Psychic Seed', 10, 7, 899, 415, 'Raises Sp. Def by one stage on Psychic Terrain, then is used up.'),
  -- Punching Glove
  (416, 'punching-glove', 'Punching Glove', 10, 9, 1700, 416, 'Raises the power of punching moves by 10% and stops them from making contact.'),
  -- Quick Claw
  (417, 'quick-claw', 'Quick Claw', 10, 2, 194, 417, 'Gives the holder a 20% chance to move first in its priority bracket.'),
  -- Red Card
  (418, 'red-card', 'Red Card', 10, 5, 585, 418, 'Forces the Pokémon that hits the holder to switch out, then is used up.'),
  -- Ring Target
  (419, 'ring-target', 'Ring Target', 10, 5, 586, 419, 'Removes the holder''s type immunities, so moves it would be immune to can hit it.'),
  -- Rocky Helmet
  (420, 'rocky-helmet', 'Rocky Helmet', 10, 5, 583, 420, 'Hurts a Pokémon that makes contact with the holder by a sixth of its max HP.'),
  -- Room Service
  (421, 'room-service', 'Room Service', 10, 8, 1180, 421, 'Lowers the holder''s Speed by one stage when Trick Room starts, then is used up.'),
  -- Safety Goggles
  (422, 'safety-goggles', 'Safety Goggles', 10, 6, 690, 422, 'Protects the holder from weather damage and from powder and spore moves.'),
  -- Scope Lens
  (423, 'scope-lens', 'Scope Lens', 10, 2, 209, 423, 'Raises the holder''s critical-hit ratio by one stage.'),
  -- Shed Shell
  (424, 'shed-shell', 'Shed Shell', 10, 4, 272, 424, 'Lets the holder always switch out, even when a move or Ability traps it.'),
  -- Shell Bell
  (425, 'shell-bell', 'Shell Bell', 10, 3, 230, 425, 'Restores HP equal to an eighth of the damage the holder deals.'),
  -- Smooth Rock
  (426, 'smooth-rock', 'Smooth Rock', 10, 4, 260, 426, 'Makes a sandstorm started by the holder last 8 turns instead of 5.'),
  -- Snowball
  (427, 'snowball', 'Snowball', 10, 6, 689, 427, 'Raises Attack by one stage when an Ice-type move hits the holder, then is used up.'),
  -- Sticky Barb
  (428, 'sticky-barb', 'Sticky Barb', 10, 4, 265, 428, 'Hurts the holder by an eighth of max HP each turn and can stick to a Pokémon that touches it.'),
  -- Terrain Extender
  (429, 'terrain-extender', 'Terrain Extender', 10, 7, 896, 429, 'Makes terrain set by the holder last 8 turns instead of 5.'),
  -- Throat Spray
  (430, 'throat-spray', 'Throat Spray', 10, 8, 1176, 430, 'Raises Sp. Atk by one stage after the holder uses a sound move, then is used up.'),
  -- Toxic Orb
  (431, 'toxic-orb', 'Toxic Orb', 10, 4, 249, 431, 'Badly poisons the holder at the end of the turn.'),
  -- Utility Umbrella
  (432, 'utility-umbrella', 'Utility Umbrella', 10, 8, 1181, 432, 'Shields the holder from the effects of sun and rain.'),
  -- Weakness Policy
  (433, 'weakness-policy', 'Weakness Policy', 10, 6, 682, 433, 'Sharply raises Attack and Sp. Atk when a super-effective move hits the holder, then is used up.'),
  -- White Herb
  (434, 'white-herb', 'White Herb', 10, 3, 191, 434, 'Restores the holder''s lowered stats once, then is used up.'),
  -- Wide Lens
  (435, 'wide-lens', 'Wide Lens', 10, 4, 242, 435, 'Raises the accuracy of the holder''s moves by 10%.'),
  -- Wise Glasses
  (436, 'wise-glasses', 'Wise Glasses', 10, 4, 244, 436, 'Raises the power of special moves by 10%.'),
  -- Zoom Lens
  (437, 'zoom-lens', 'Zoom Lens', 10, 4, 253, 437, 'Raises the holder''s accuracy by 20% when it moves after its target.');
