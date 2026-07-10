-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Scope note: category memberships for reduced held-item catalog rows.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_category_memberships
-- Scope: battle-effect held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Ability Shield -> Held Items
  (370, 2),
  -- Ability Shield -> Battle-Effect Items
  (370, 10),
  -- Absorb Bulb -> Held Items
  (371, 2),
  -- Absorb Bulb -> Battle-Effect Items
  (371, 10),
  -- Air Balloon -> Held Items
  (372, 2),
  -- Air Balloon -> Battle-Effect Items
  (372, 10),
  -- Assault Vest -> Held Items
  (373, 2),
  -- Assault Vest -> Battle-Effect Items
  (373, 10),
  -- Berserk Gene -> Held Items
  (374, 2),
  -- Berserk Gene -> Battle-Effect Items
  (374, 10),
  -- Big Root -> Held Items
  (375, 2),
  -- Big Root -> Battle-Effect Items
  (375, 10),
  -- Binding Band -> Held Items
  (376, 2),
  -- Binding Band -> Battle-Effect Items
  (376, 10),
  -- Black Sludge -> Held Items
  (377, 2),
  -- Black Sludge -> Battle-Effect Items
  (377, 10),
  -- Blunder Policy -> Held Items
  (378, 2),
  -- Blunder Policy -> Battle-Effect Items
  (378, 10),
  -- Bright Powder -> Held Items
  (379, 2),
  -- Bright Powder -> Battle-Effect Items
  (379, 10),
  -- Cell Battery -> Held Items
  (380, 2),
  -- Cell Battery -> Battle-Effect Items
  (380, 10),
  -- Choice Band -> Held Items
  (381, 2),
  -- Choice Band -> Battle-Effect Items
  (381, 10),
  -- Choice Scarf -> Held Items
  (382, 2),
  -- Choice Scarf -> Battle-Effect Items
  (382, 10),
  -- Choice Specs -> Held Items
  (383, 2),
  -- Choice Specs -> Battle-Effect Items
  (383, 10),
  -- Clear Amulet -> Held Items
  (384, 2),
  -- Clear Amulet -> Battle-Effect Items
  (384, 10),
  -- Covert Cloak -> Held Items
  (385, 2),
  -- Covert Cloak -> Battle-Effect Items
  (385, 10),
  -- Damp Rock -> Held Items
  (386, 2),
  -- Damp Rock -> Battle-Effect Items
  (386, 10),
  -- Eject Button -> Held Items
  (387, 2),
  -- Eject Button -> Battle-Effect Items
  (387, 10),
  -- Eject Pack -> Held Items
  (388, 2),
  -- Eject Pack -> Battle-Effect Items
  (388, 10),
  -- Electric Seed -> Held Items
  (389, 2),
  -- Electric Seed -> Battle-Effect Items
  (389, 10),
  -- Eviolite -> Held Items
  (390, 2),
  -- Eviolite -> Battle-Effect Items
  (390, 10),
  -- Expert Belt -> Held Items
  (391, 2),
  -- Expert Belt -> Battle-Effect Items
  (391, 10),
  -- Flame Orb -> Held Items
  (392, 2),
  -- Flame Orb -> Battle-Effect Items
  (392, 10),
  -- Float Stone -> Held Items
  (393, 2),
  -- Float Stone -> Battle-Effect Items
  (393, 10),
  -- Focus Band -> Held Items
  (394, 2),
  -- Focus Band -> Battle-Effect Items
  (394, 10),
  -- Focus Sash -> Held Items
  (395, 2),
  -- Focus Sash -> Battle-Effect Items
  (395, 10),
  -- Grassy Seed -> Held Items
  (396, 2),
  -- Grassy Seed -> Battle-Effect Items
  (396, 10),
  -- Grip Claw -> Held Items
  (397, 2),
  -- Grip Claw -> Battle-Effect Items
  (397, 10),
  -- Heat Rock -> Held Items
  (398, 2),
  -- Heat Rock -> Battle-Effect Items
  (398, 10),
  -- Heavy-Duty Boots -> Held Items
  (399, 2),
  -- Heavy-Duty Boots -> Battle-Effect Items
  (399, 10),
  -- Icy Rock -> Held Items
  (400, 2),
  -- Icy Rock -> Battle-Effect Items
  (400, 10),
  -- Iron Ball -> Held Items
  (401, 2),
  -- Iron Ball -> Battle-Effect Items
  (401, 10),
  -- Lagging Tail -> Held Items
  (402, 2),
  -- Lagging Tail -> Battle-Effect Items
  (402, 10),
  -- Leftovers -> Held Items
  (403, 2),
  -- Leftovers -> Battle-Effect Items
  (403, 10),
  -- Life Orb -> Held Items
  (404, 2),
  -- Life Orb -> Battle-Effect Items
  (404, 10),
  -- Light Clay -> Held Items
  (405, 2),
  -- Light Clay -> Battle-Effect Items
  (405, 10),
  -- Loaded Dice -> Held Items
  (406, 2),
  -- Loaded Dice -> Battle-Effect Items
  (406, 10),
  -- Luminous Moss -> Held Items
  (407, 2),
  -- Luminous Moss -> Battle-Effect Items
  (407, 10),
  -- Mental Herb -> Held Items
  (408, 2),
  -- Mental Herb -> Battle-Effect Items
  (408, 10),
  -- Metronome -> Held Items
  (409, 2),
  -- Metronome -> Battle-Effect Items
  (409, 10),
  -- Mirror Herb -> Held Items
  (410, 2),
  -- Mirror Herb -> Battle-Effect Items
  (410, 10),
  -- Mirror Herb -> Breeding Items
  (410, 13),
  -- Misty Seed -> Held Items
  (411, 2),
  -- Misty Seed -> Battle-Effect Items
  (411, 10),
  -- Muscle Band -> Held Items
  (412, 2),
  -- Muscle Band -> Battle-Effect Items
  (412, 10),
  -- Power Herb -> Held Items
  (413, 2),
  -- Power Herb -> Battle-Effect Items
  (413, 10),
  -- Protective Pads -> Held Items
  (414, 2),
  -- Protective Pads -> Battle-Effect Items
  (414, 10),
  -- Psychic Seed -> Held Items
  (415, 2),
  -- Psychic Seed -> Battle-Effect Items
  (415, 10),
  -- Punching Glove -> Held Items
  (416, 2),
  -- Punching Glove -> Battle-Effect Items
  (416, 10),
  -- Quick Claw -> Held Items
  (417, 2),
  -- Quick Claw -> Battle-Effect Items
  (417, 10),
  -- Red Card -> Held Items
  (418, 2),
  -- Red Card -> Battle-Effect Items
  (418, 10),
  -- Ring Target -> Held Items
  (419, 2),
  -- Ring Target -> Battle-Effect Items
  (419, 10),
  -- Rocky Helmet -> Held Items
  (420, 2),
  -- Rocky Helmet -> Battle-Effect Items
  (420, 10),
  -- Room Service -> Held Items
  (421, 2),
  -- Room Service -> Battle-Effect Items
  (421, 10),
  -- Safety Goggles -> Held Items
  (422, 2),
  -- Safety Goggles -> Battle-Effect Items
  (422, 10),
  -- Scope Lens -> Held Items
  (423, 2),
  -- Scope Lens -> Battle-Effect Items
  (423, 10),
  -- Shed Shell -> Held Items
  (424, 2),
  -- Shed Shell -> Battle-Effect Items
  (424, 10),
  -- Shell Bell -> Held Items
  (425, 2),
  -- Shell Bell -> Battle-Effect Items
  (425, 10),
  -- Smooth Rock -> Held Items
  (426, 2),
  -- Smooth Rock -> Battle-Effect Items
  (426, 10),
  -- Snowball -> Held Items
  (427, 2),
  -- Snowball -> Battle-Effect Items
  (427, 10),
  -- Sticky Barb -> Held Items
  (428, 2),
  -- Sticky Barb -> Battle-Effect Items
  (428, 10),
  -- Terrain Extender -> Held Items
  (429, 2),
  -- Terrain Extender -> Battle-Effect Items
  (429, 10),
  -- Throat Spray -> Held Items
  (430, 2),
  -- Throat Spray -> Battle-Effect Items
  (430, 10),
  -- Toxic Orb -> Held Items
  (431, 2),
  -- Toxic Orb -> Battle-Effect Items
  (431, 10),
  -- Utility Umbrella -> Held Items
  (432, 2),
  -- Utility Umbrella -> Battle-Effect Items
  (432, 10),
  -- Weakness Policy -> Held Items
  (433, 2),
  -- Weakness Policy -> Battle-Effect Items
  (433, 10),
  -- White Herb -> Held Items
  (434, 2),
  -- White Herb -> Battle-Effect Items
  (434, 10),
  -- Wide Lens -> Held Items
  (435, 2),
  -- Wide Lens -> Battle-Effect Items
  (435, 10),
  -- Wise Glasses -> Held Items
  (436, 2),
  -- Wise Glasses -> Battle-Effect Items
  (436, 10),
  -- Zoom Lens -> Held Items
  (437, 2),
  -- Zoom Lens -> Battle-Effect Items
  (437, 10);
