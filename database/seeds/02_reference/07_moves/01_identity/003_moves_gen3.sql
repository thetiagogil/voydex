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
-- Generation 3 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Fake Out
  (252, 'fake-out', 'Fake Out', 1, 252, 3, 252),
  -- Uproar
  (253, 'uproar', 'Uproar', 1, 253, 3, 253),
  -- Stockpile
  (254, 'stockpile', 'Stockpile', 1, 254, 3, 254),
  -- Spit Up
  (255, 'spit-up', 'Spit Up', 1, 255, 3, 255),
  -- Swallow
  (256, 'swallow', 'Swallow', 1, 256, 3, 256),
  -- Heat Wave
  (257, 'heat-wave', 'Heat Wave', 1, 257, 3, 257),
  -- Hail
  (258, 'hail', 'Hail', 1, 258, 3, 258),
  -- Torment
  (259, 'torment', 'Torment', 1, 259, 3, 259),
  -- Flatter
  (260, 'flatter', 'Flatter', 1, 260, 3, 260),
  -- Will-O-Wisp
  (261, 'will-o-wisp', 'Will-O-Wisp', 1, 261, 3, 261),
  -- Memento
  (262, 'memento', 'Memento', 1, 262, 3, 262),
  -- Facade
  (263, 'facade', 'Facade', 1, 263, 3, 263),
  -- Focus Punch
  (264, 'focus-punch', 'Focus Punch', 1, 264, 3, 264),
  -- Smelling Salts
  (265, 'smelling-salts', 'Smelling Salts', 1, 265, 3, 265),
  -- Follow Me
  (266, 'follow-me', 'Follow Me', 1, 266, 3, 266),
  -- Nature Power
  (267, 'nature-power', 'Nature Power', 1, 267, 3, 267),
  -- Charge
  (268, 'charge', 'Charge', 1, 268, 3, 268),
  -- Taunt
  (269, 'taunt', 'Taunt', 1, 269, 3, 269),
  -- Helping Hand
  (270, 'helping-hand', 'Helping Hand', 1, 270, 3, 270),
  -- Trick
  (271, 'trick', 'Trick', 1, 271, 3, 271),
  -- Role Play
  (272, 'role-play', 'Role Play', 1, 272, 3, 272),
  -- Wish
  (273, 'wish', 'Wish', 1, 273, 3, 273),
  -- Assist
  (274, 'assist', 'Assist', 1, 274, 3, 274),
  -- Ingrain
  (275, 'ingrain', 'Ingrain', 1, 275, 3, 275),
  -- Superpower
  (276, 'superpower', 'Superpower', 1, 276, 3, 276),
  -- Magic Coat
  (277, 'magic-coat', 'Magic Coat', 1, 277, 3, 277),
  -- Recycle
  (278, 'recycle', 'Recycle', 1, 278, 3, 278),
  -- Revenge
  (279, 'revenge', 'Revenge', 1, 279, 3, 279),
  -- Brick Break
  (280, 'brick-break', 'Brick Break', 1, 280, 3, 280),
  -- Yawn
  (281, 'yawn', 'Yawn', 1, 281, 3, 281),
  -- Knock Off
  (282, 'knock-off', 'Knock Off', 1, 282, 3, 282),
  -- Endeavor
  (283, 'endeavor', 'Endeavor', 1, 283, 3, 283),
  -- Eruption
  (284, 'eruption', 'Eruption', 1, 284, 3, 284),
  -- Skill Swap
  (285, 'skill-swap', 'Skill Swap', 1, 285, 3, 285),
  -- Imprison
  (286, 'imprison', 'Imprison', 1, 286, 3, 286),
  -- Refresh
  (287, 'refresh', 'Refresh', 1, 287, 3, 287),
  -- Grudge
  (288, 'grudge', 'Grudge', 1, 288, 3, 288),
  -- Snatch
  (289, 'snatch', 'Snatch', 1, 289, 3, 289),
  -- Secret Power
  (290, 'secret-power', 'Secret Power', 1, 290, 3, 290),
  -- Dive
  (291, 'dive', 'Dive', 1, 291, 3, 291),
  -- Arm Thrust
  (292, 'arm-thrust', 'Arm Thrust', 1, 292, 3, 292),
  -- Camouflage
  (293, 'camouflage', 'Camouflage', 1, 293, 3, 293),
  -- Tail Glow
  (294, 'tail-glow', 'Tail Glow', 1, 294, 3, 294),
  -- Luster Purge
  (295, 'luster-purge', 'Luster Purge', 1, 295, 3, 295),
  -- Mist Ball
  (296, 'mist-ball', 'Mist Ball', 1, 296, 3, 296),
  -- Feather Dance
  (297, 'feather-dance', 'Feather Dance', 1, 297, 3, 297),
  -- Teeter Dance
  (298, 'teeter-dance', 'Teeter Dance', 1, 298, 3, 298),
  -- Blaze Kick
  (299, 'blaze-kick', 'Blaze Kick', 1, 299, 3, 299),
  -- Mud Sport
  (300, 'mud-sport', 'Mud Sport', 1, 300, 3, 300),
  -- Ice Ball
  (301, 'ice-ball', 'Ice Ball', 1, 301, 3, 301),
  -- Needle Arm
  (302, 'needle-arm', 'Needle Arm', 1, 302, 3, 302),
  -- Slack Off
  (303, 'slack-off', 'Slack Off', 1, 303, 3, 303),
  -- Hyper Voice
  (304, 'hyper-voice', 'Hyper Voice', 1, 304, 3, 304),
  -- Poison Fang
  (305, 'poison-fang', 'Poison Fang', 1, 305, 3, 305),
  -- Crush Claw
  (306, 'crush-claw', 'Crush Claw', 1, 306, 3, 306),
  -- Blast Burn
  (307, 'blast-burn', 'Blast Burn', 1, 307, 3, 307),
  -- Hydro Cannon
  (308, 'hydro-cannon', 'Hydro Cannon', 1, 308, 3, 308),
  -- Meteor Mash
  (309, 'meteor-mash', 'Meteor Mash', 1, 309, 3, 309),
  -- Astonish
  (310, 'astonish', 'Astonish', 1, 310, 3, 310),
  -- Weather Ball
  (311, 'weather-ball', 'Weather Ball', 1, 311, 3, 311),
  -- Aromatherapy
  (312, 'aromatherapy', 'Aromatherapy', 1, 312, 3, 312),
  -- Fake Tears
  (313, 'fake-tears', 'Fake Tears', 1, 313, 3, 313),
  -- Air Cutter
  (314, 'air-cutter', 'Air Cutter', 1, 314, 3, 314),
  -- Overheat
  (315, 'overheat', 'Overheat', 1, 315, 3, 315),
  -- Odor Sleuth
  (316, 'odor-sleuth', 'Odor Sleuth', 1, 316, 3, 316),
  -- Rock Tomb
  (317, 'rock-tomb', 'Rock Tomb', 1, 317, 3, 317),
  -- Silver Wind
  (318, 'silver-wind', 'Silver Wind', 1, 318, 3, 318),
  -- Metal Sound
  (319, 'metal-sound', 'Metal Sound', 1, 319, 3, 319),
  -- Grass Whistle
  (320, 'grass-whistle', 'Grass Whistle', 1, 320, 3, 320),
  -- Tickle
  (321, 'tickle', 'Tickle', 1, 321, 3, 321),
  -- Cosmic Power
  (322, 'cosmic-power', 'Cosmic Power', 1, 322, 3, 322),
  -- Water Spout
  (323, 'water-spout', 'Water Spout', 1, 323, 3, 323),
  -- Signal Beam
  (324, 'signal-beam', 'Signal Beam', 1, 324, 3, 324),
  -- Shadow Punch
  (325, 'shadow-punch', 'Shadow Punch', 1, 325, 3, 325),
  -- Extrasensory
  (326, 'extrasensory', 'Extrasensory', 1, 326, 3, 326),
  -- Sky Uppercut
  (327, 'sky-uppercut', 'Sky Uppercut', 1, 327, 3, 327),
  -- Sand Tomb
  (328, 'sand-tomb', 'Sand Tomb', 1, 328, 3, 328),
  -- Sheer Cold
  (329, 'sheer-cold', 'Sheer Cold', 1, 329, 3, 329),
  -- Muddy Water
  (330, 'muddy-water', 'Muddy Water', 1, 330, 3, 330),
  -- Bullet Seed
  (331, 'bullet-seed', 'Bullet Seed', 1, 331, 3, 331),
  -- Aerial Ace
  (332, 'aerial-ace', 'Aerial Ace', 1, 332, 3, 332),
  -- Icicle Spear
  (333, 'icicle-spear', 'Icicle Spear', 1, 333, 3, 333),
  -- Iron Defense
  (334, 'iron-defense', 'Iron Defense', 1, 334, 3, 334),
  -- Block
  (335, 'block', 'Block', 1, 335, 3, 335),
  -- Howl
  (336, 'howl', 'Howl', 1, 336, 3, 336),
  -- Dragon Claw
  (337, 'dragon-claw', 'Dragon Claw', 1, 337, 3, 337),
  -- Frenzy Plant
  (338, 'frenzy-plant', 'Frenzy Plant', 1, 338, 3, 338),
  -- Bulk Up
  (339, 'bulk-up', 'Bulk Up', 1, 339, 3, 339),
  -- Bounce
  (340, 'bounce', 'Bounce', 1, 340, 3, 340),
  -- Mud Shot
  (341, 'mud-shot', 'Mud Shot', 1, 341, 3, 341),
  -- Poison Tail
  (342, 'poison-tail', 'Poison Tail', 1, 342, 3, 342),
  -- Covet
  (343, 'covet', 'Covet', 1, 343, 3, 343),
  -- Volt Tackle
  (344, 'volt-tackle', 'Volt Tackle', 1, 344, 3, 344),
  -- Magical Leaf
  (345, 'magical-leaf', 'Magical Leaf', 1, 345, 3, 345),
  -- Water Sport
  (346, 'water-sport', 'Water Sport', 1, 346, 3, 346),
  -- Calm Mind
  (347, 'calm-mind', 'Calm Mind', 1, 347, 3, 347),
  -- Leaf Blade
  (348, 'leaf-blade', 'Leaf Blade', 1, 348, 3, 348),
  -- Dragon Dance
  (349, 'dragon-dance', 'Dragon Dance', 1, 349, 3, 349),
  -- Rock Blast
  (350, 'rock-blast', 'Rock Blast', 1, 350, 3, 350),
  -- Shock Wave
  (351, 'shock-wave', 'Shock Wave', 1, 351, 3, 351),
  -- Water Pulse
  (352, 'water-pulse', 'Water Pulse', 1, 352, 3, 352),
  -- Doom Desire
  (353, 'doom-desire', 'Doom Desire', 1, 353, 3, 353),
  -- Psycho Boost
  (354, 'psycho-boost', 'Psycho Boost', 1, 354, 3, 354);
