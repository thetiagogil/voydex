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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Fake Out Generation III
  (252, 3, 1, 40, 100, 10, 3, 'physical'),
  -- Uproar Generation III
  (253, 3, 1, 50, 100, 10, 0, 'physical'),
  -- Stockpile Generation III
  (254, 3, 1, NULL, NULL, 10, 0, 'status'),
  -- Spit Up Generation III
  (255, 3, 1, NULL, 100, 10, 0, 'physical'),
  -- Swallow Generation III
  (256, 3, 1, NULL, NULL, 10, 0, 'status'),
  -- Heat Wave Generation III
  (257, 3, 2, 100, 90, 10, 0, 'special'),
  -- Hail Generation III
  (258, 3, 6, NULL, NULL, 10, 0, 'status'),
  -- Torment Generation III
  (259, 3, 16, NULL, 100, 15, 0, 'status'),
  -- Flatter Generation III
  (260, 3, 16, NULL, 100, 15, 0, 'status'),
  -- Will-O-Wisp Generation III
  (261, 3, 2, NULL, 75, 15, 0, 'status'),
  -- Memento Generation III
  (262, 3, 16, NULL, 100, 10, 0, 'status'),
  -- Facade Generation III
  (263, 3, 1, 70, 100, 20, 0, 'physical'),
  -- Focus Punch Generation III
  (264, 3, 7, 150, 100, 20, -3, 'physical'),
  -- Smelling Salts Generation III
  (265, 3, 1, 60, 100, 10, 0, 'physical'),
  -- Follow Me Generation III
  (266, 3, 1, NULL, NULL, 20, 2, 'status'),
  -- Nature Power Generation III
  (267, 3, 1, NULL, NULL, 20, 0, 'status'),
  -- Charge Generation III
  (268, 3, 4, NULL, NULL, 20, 0, 'status'),
  -- Taunt Generation III
  (269, 3, 16, NULL, 100, 20, 0, 'status'),
  -- Helping Hand Generation III
  (270, 3, 1, NULL, NULL, 20, 5, 'status'),
  -- Trick Generation III
  (271, 3, 11, NULL, 100, 10, 0, 'status'),
  -- Role Play Generation III
  (272, 3, 11, NULL, NULL, 10, 0, 'status'),
  -- Wish Generation III
  (273, 3, 1, NULL, NULL, 10, 0, 'status'),
  -- Assist Generation III
  (274, 3, 1, NULL, NULL, 20, 0, 'status'),
  -- Ingrain Generation III
  (275, 3, 5, NULL, NULL, 20, 0, 'status'),
  -- Superpower Generation III
  (276, 3, 7, 120, 100, 5, 0, 'physical'),
  -- Magic Coat Generation III
  (277, 3, 11, NULL, NULL, 15, 4, 'status'),
  -- Recycle Generation III
  (278, 3, 1, NULL, NULL, 10, 0, 'status'),
  -- Revenge Generation III
  (279, 3, 7, 60, 100, 10, -4, 'physical'),
  -- Brick Break Generation III
  (280, 3, 7, 75, 100, 15, 0, 'physical'),
  -- Yawn Generation III
  (281, 3, 1, NULL, NULL, 10, 0, 'status'),
  -- Knock Off Generation III
  (282, 3, 16, 20, 100, 20, 0, 'special'),
  -- Endeavor Generation III
  (283, 3, 1, NULL, 100, 5, 0, 'physical'),
  -- Eruption Generation III
  (284, 3, 2, 150, 100, 5, 0, 'special'),
  -- Skill Swap Generation III
  (285, 3, 11, NULL, NULL, 10, 0, 'status'),
  -- Imprison Generation III
  (286, 3, 11, NULL, NULL, 10, 0, 'status'),
  -- Refresh Generation III
  (287, 3, 1, NULL, NULL, 20, 0, 'status'),
  -- Grudge Generation III
  (288, 3, 14, NULL, NULL, 5, 0, 'status'),
  -- Snatch Generation III
  (289, 3, 16, NULL, NULL, 10, 4, 'status'),
  -- Secret Power Generation III
  (290, 3, 1, 70, 100, 20, 0, 'physical'),
  -- Dive Generation III
  (291, 3, 3, 60, 100, 10, 0, 'special'),
  -- Arm Thrust Generation III
  (292, 3, 7, 15, 100, 20, 0, 'physical'),
  -- Camouflage Generation III
  (293, 3, 1, NULL, NULL, 20, 0, 'status'),
  -- Tail Glow Generation III
  (294, 3, 12, NULL, NULL, 20, 0, 'status'),
  -- Luster Purge Generation III
  (295, 3, 11, 95, 100, 5, 0, 'special'),
  -- Mist Ball Generation III
  (296, 3, 11, 70, 100, 5, 0, 'special'),
  -- Feather Dance Generation III
  (297, 3, 10, NULL, 100, 15, 0, 'status'),
  -- Teeter Dance Generation III
  (298, 3, 1, NULL, 100, 20, 0, 'status'),
  -- Blaze Kick Generation III
  (299, 3, 2, 85, 90, 10, 0, 'special'),
  -- Mud Sport Generation III
  (300, 3, 9, NULL, NULL, 15, 0, 'status'),
  -- Ice Ball Generation III
  (301, 3, 6, 30, 90, 20, 0, 'special'),
  -- Needle Arm Generation III
  (302, 3, 5, 60, 100, 15, 0, 'special'),
  -- Slack Off Generation III
  (303, 3, 1, NULL, NULL, 5, 0, 'status'),
  -- Hyper Voice Generation III
  (304, 3, 1, 90, 100, 10, 0, 'physical'),
  -- Poison Fang Generation III
  (305, 3, 8, 50, 100, 15, 0, 'physical'),
  -- Crush Claw Generation III
  (306, 3, 1, 75, 95, 10, 0, 'physical'),
  -- Blast Burn Generation III
  (307, 3, 2, 150, 90, 5, 0, 'special'),
  -- Hydro Cannon Generation III
  (308, 3, 3, 150, 90, 5, 0, 'special'),
  -- Meteor Mash Generation III
  (309, 3, 17, 100, 85, 10, 0, 'physical'),
  -- Astonish Generation III
  (310, 3, 14, 30, 100, 15, 0, 'physical'),
  -- Weather Ball Generation III
  (311, 3, 1, 50, 100, 10, 0, 'physical'),
  -- Aromatherapy Generation III
  (312, 3, 5, NULL, NULL, 5, 0, 'status'),
  -- Fake Tears Generation III
  (313, 3, 16, NULL, 100, 20, 0, 'status'),
  -- Air Cutter Generation III
  (314, 3, 10, 55, 95, 25, 0, 'physical'),
  -- Overheat Generation III
  (315, 3, 2, 140, 90, 5, 0, 'special'),
  -- Odor Sleuth Generation III
  (316, 3, 1, NULL, NULL, 40, 0, 'status'),
  -- Rock Tomb Generation III
  (317, 3, 13, 50, 80, 10, 0, 'physical'),
  -- Silver Wind Generation III
  (318, 3, 12, 60, 100, 5, 0, 'physical'),
  -- Metal Sound Generation III
  (319, 3, 17, NULL, 85, 40, 0, 'status'),
  -- Grass Whistle Generation III
  (320, 3, 5, NULL, 55, 15, 0, 'status'),
  -- Tickle Generation III
  (321, 3, 1, NULL, 100, 20, 0, 'status'),
  -- Cosmic Power Generation III
  (322, 3, 11, NULL, NULL, 20, 0, 'status'),
  -- Water Spout Generation III
  (323, 3, 3, 150, 100, 5, 0, 'special'),
  -- Signal Beam Generation III
  (324, 3, 12, 75, 100, 15, 0, 'physical'),
  -- Shadow Punch Generation III
  (325, 3, 14, 60, NULL, 20, 0, 'physical'),
  -- Extrasensory Generation III
  (326, 3, 11, 80, 100, 30, 0, 'special'),
  -- Sky Uppercut Generation III
  (327, 3, 7, 85, 90, 15, 0, 'physical'),
  -- Sand Tomb Generation III
  (328, 3, 9, 15, 70, 15, 0, 'physical'),
  -- Sheer Cold Generation III
  (329, 3, 6, NULL, 30, 5, 0, 'special'),
  -- Muddy Water Generation III
  (330, 3, 3, 95, 85, 10, 0, 'special'),
  -- Bullet Seed Generation III
  (331, 3, 5, 10, 100, 30, 0, 'special'),
  -- Aerial Ace Generation III
  (332, 3, 10, 60, NULL, 20, 0, 'physical'),
  -- Icicle Spear Generation III
  (333, 3, 6, 10, 100, 30, 0, 'special'),
  -- Iron Defense Generation III
  (334, 3, 17, NULL, NULL, 15, 0, 'status'),
  -- Block Generation III
  (335, 3, 1, NULL, NULL, 5, 0, 'status'),
  -- Howl Generation III
  (336, 3, 1, NULL, NULL, 40, 0, 'status'),
  -- Dragon Claw Generation III
  (337, 3, 15, 80, 100, 15, 0, 'special'),
  -- Frenzy Plant Generation III
  (338, 3, 5, 150, 90, 5, 0, 'special'),
  -- Bulk Up Generation III
  (339, 3, 7, NULL, NULL, 20, 0, 'status'),
  -- Bounce Generation III
  (340, 3, 10, 85, 85, 5, 0, 'physical'),
  -- Mud Shot Generation III
  (341, 3, 9, 55, 95, 15, 0, 'physical'),
  -- Poison Tail Generation III
  (342, 3, 8, 50, 100, 25, 0, 'physical'),
  -- Covet Generation III
  (343, 3, 1, 40, 100, 40, 0, 'physical'),
  -- Volt Tackle Generation III
  (344, 3, 4, 120, 100, 15, 0, 'special'),
  -- Magical Leaf Generation III
  (345, 3, 5, 60, NULL, 20, 0, 'special'),
  -- Water Sport Generation III
  (346, 3, 3, NULL, NULL, 15, 0, 'status'),
  -- Calm Mind Generation III
  (347, 3, 11, NULL, NULL, 20, 0, 'status'),
  -- Leaf Blade Generation III
  (348, 3, 5, 70, 100, 15, 0, 'special'),
  -- Dragon Dance Generation III
  (349, 3, 15, NULL, NULL, 20, 0, 'status'),
  -- Rock Blast Generation III
  (350, 3, 13, 25, 80, 10, 0, 'physical'),
  -- Shock Wave Generation III
  (351, 3, 4, 60, NULL, 20, 0, 'special'),
  -- Water Pulse Generation III
  (352, 3, 3, 60, 100, 20, 0, 'special'),
  -- Doom Desire Generation III
  (353, 3, 17, 120, 85, 5, 0, 'physical'),
  -- Psycho Boost Generation III
  (354, 3, 11, 140, 90, 5, 0, 'special');
