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
-- Generation 6 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Flying Press
  (560, 'flying-press', 'Flying Press', 1, 560, 6, 560),
  -- Mat Block
  (561, 'mat-block', 'Mat Block', 1, 561, 6, 561),
  -- Belch
  (562, 'belch', 'Belch', 1, 562, 6, 562),
  -- Rototiller
  (563, 'rototiller', 'Rototiller', 1, 563, 6, 563),
  -- Sticky Web
  (564, 'sticky-web', 'Sticky Web', 1, 564, 6, 564),
  -- Fell Stinger
  (565, 'fell-stinger', 'Fell Stinger', 1, 565, 6, 565),
  -- Phantom Force
  (566, 'phantom-force', 'Phantom Force', 1, 566, 6, 566),
  -- Trick-or-Treat
  (567, 'trick-or-treat', 'Trick-or-Treat', 1, 567, 6, 567),
  -- Noble Roar
  (568, 'noble-roar', 'Noble Roar', 1, 568, 6, 568),
  -- Ion Deluge
  (569, 'ion-deluge', 'Ion Deluge', 1, 569, 6, 569),
  -- Parabolic Charge
  (570, 'parabolic-charge', 'Parabolic Charge', 1, 570, 6, 570),
  -- Forest's Curse
  (571, 'forests-curse', 'Forest''s Curse', 1, 571, 6, 571),
  -- Petal Blizzard
  (572, 'petal-blizzard', 'Petal Blizzard', 1, 572, 6, 572),
  -- Freeze-Dry
  (573, 'freeze-dry', 'Freeze-Dry', 1, 573, 6, 573),
  -- Disarming Voice
  (574, 'disarming-voice', 'Disarming Voice', 1, 574, 6, 574),
  -- Parting Shot
  (575, 'parting-shot', 'Parting Shot', 1, 575, 6, 575),
  -- Topsy-Turvy
  (576, 'topsy-turvy', 'Topsy-Turvy', 1, 576, 6, 576),
  -- Draining Kiss
  (577, 'draining-kiss', 'Draining Kiss', 1, 577, 6, 577),
  -- Crafty Shield
  (578, 'crafty-shield', 'Crafty Shield', 1, 578, 6, 578),
  -- Flower Shield
  (579, 'flower-shield', 'Flower Shield', 1, 579, 6, 579),
  -- Grassy Terrain
  (580, 'grassy-terrain', 'Grassy Terrain', 1, 580, 6, 580),
  -- Misty Terrain
  (581, 'misty-terrain', 'Misty Terrain', 1, 581, 6, 581),
  -- Electrify
  (582, 'electrify', 'Electrify', 1, 582, 6, 582),
  -- Play Rough
  (583, 'play-rough', 'Play Rough', 1, 583, 6, 583),
  -- Fairy Wind
  (584, 'fairy-wind', 'Fairy Wind', 1, 584, 6, 584),
  -- Moonblast
  (585, 'moonblast', 'Moonblast', 1, 585, 6, 585),
  -- Boomburst
  (586, 'boomburst', 'Boomburst', 1, 586, 6, 586),
  -- Fairy Lock
  (587, 'fairy-lock', 'Fairy Lock', 1, 587, 6, 587),
  -- King's Shield
  (588, 'kings-shield', 'King''s Shield', 1, 588, 6, 588),
  -- Play Nice
  (589, 'play-nice', 'Play Nice', 1, 589, 6, 589),
  -- Confide
  (590, 'confide', 'Confide', 1, 590, 6, 590),
  -- Diamond Storm
  (591, 'diamond-storm', 'Diamond Storm', 1, 591, 6, 591),
  -- Steam Eruption
  (592, 'steam-eruption', 'Steam Eruption', 1, 592, 6, 592),
  -- Hyperspace Hole
  (593, 'hyperspace-hole', 'Hyperspace Hole', 1, 593, 6, 593),
  -- Water Shuriken
  (594, 'water-shuriken', 'Water Shuriken', 1, 594, 6, 594),
  -- Mystical Fire
  (595, 'mystical-fire', 'Mystical Fire', 1, 595, 6, 595),
  -- Spiky Shield
  (596, 'spiky-shield', 'Spiky Shield', 1, 596, 6, 596),
  -- Aromatic Mist
  (597, 'aromatic-mist', 'Aromatic Mist', 1, 597, 6, 597),
  -- Eerie Impulse
  (598, 'eerie-impulse', 'Eerie Impulse', 1, 598, 6, 598),
  -- Venom Drench
  (599, 'venom-drench', 'Venom Drench', 1, 599, 6, 599),
  -- Powder
  (600, 'powder', 'Powder', 1, 600, 6, 600),
  -- Geomancy
  (601, 'geomancy', 'Geomancy', 1, 601, 6, 601),
  -- Magnetic Flux
  (602, 'magnetic-flux', 'Magnetic Flux', 1, 602, 6, 602),
  -- Happy Hour
  (603, 'happy-hour', 'Happy Hour', 1, 603, 6, 603),
  -- Electric Terrain
  (604, 'electric-terrain', 'Electric Terrain', 1, 604, 6, 604),
  -- Dazzling Gleam
  (605, 'dazzling-gleam', 'Dazzling Gleam', 1, 605, 6, 605),
  -- Celebrate
  (606, 'celebrate', 'Celebrate', 1, 606, 6, 606),
  -- Hold Hands
  (607, 'hold-hands', 'Hold Hands', 1, 607, 6, 607),
  -- Baby-Doll Eyes
  (608, 'baby-doll-eyes', 'Baby-Doll Eyes', 1, 608, 6, 608),
  -- Nuzzle
  (609, 'nuzzle', 'Nuzzle', 1, 609, 6, 609),
  -- Hold Back
  (610, 'hold-back', 'Hold Back', 1, 610, 6, 610),
  -- Infestation
  (611, 'infestation', 'Infestation', 1, 611, 6, 611),
  -- Power-Up Punch
  (612, 'power-up-punch', 'Power-Up Punch', 1, 612, 6, 612),
  -- Oblivion Wing
  (613, 'oblivion-wing', 'Oblivion Wing', 1, 613, 6, 613),
  -- Thousand Arrows
  (614, 'thousand-arrows', 'Thousand Arrows', 1, 614, 6, 614),
  -- Thousand Waves
  (615, 'thousand-waves', 'Thousand Waves', 1, 615, 6, 615),
  -- Land's Wrath
  (616, 'lands-wrath', 'Land''s Wrath', 1, 616, 6, 616),
  -- Light of Ruin
  (617, 'light-of-ruin', 'Light of Ruin', 1, 617, 6, 617),
  -- Origin Pulse
  (618, 'origin-pulse', 'Origin Pulse', 1, 618, 6, 618),
  -- Precipice Blades
  (619, 'precipice-blades', 'Precipice Blades', 1, 619, 6, 619),
  -- Dragon Ascent
  (620, 'dragon-ascent', 'Dragon Ascent', 1, 620, 6, 620),
  -- Hyperspace Fury
  (621, 'hyperspace-fury', 'Hyperspace Fury', 1, 621, 6, 621);
