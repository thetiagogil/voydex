-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Brilliant Diamond / Shining Pearl battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Coal Badge -> Roark
  (210003, 21001, 21, 'battle-opponent', 2, NULL),
  -- Forest Badge -> Gardenia
  (210004, 21002, 21, 'battle-opponent', 2, NULL),
  -- Forest Badge -> Mars
  (210004, 21042, 21, 'battle-opponent', 1, 'Valley Windworks'),
  -- Forest Badge -> Jupiter
  (210004, 21043, 21, 'battle-opponent', 3, 'Team Galactic Eterna Building'),
  -- Cobble Badge -> Maylene
  (210005, 21003, 21, 'battle-opponent', 2, NULL),
  -- Fen Badge -> Crasher Wake
  (210006, 21004, 21, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (210007, 21005, 21, 'battle-opponent', 1, NULL),
  -- Mine Badge -> Byron
  (210008, 21006, 21, 'battle-opponent', 2, NULL),
  -- Icicle Badge -> Candice
  (210009, 21007, 21, 'battle-opponent', 3, NULL),
  -- Icicle Badge -> Saturn
  (210009, 21044, 21, 'battle-opponent', 1, 'Lake Valor'),
  -- Icicle Badge -> Mars
  (210009, 21042, 21, 'battle-opponent', 2, 'Lake Verity'),
  -- Beacon Badge -> Volkner
  (210010, 21008, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (210011, 21009, 21, 'battle-opponent', 2, NULL),
  -- Elite Four Bertha -> Bertha
  (210012, 21010, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (210013, 21011, 21, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (210014, 21012, 21, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (210015, 21013, 21, 'battle-opponent', 1, NULL),
  -- Coal Badge -> Barry
  (210003, 21014, 21, 'battle-opponent', 1, 'Route 203'),
  -- Cobble Badge -> Barry
  (210005, 21014, 21, 'battle-opponent', 1, 'Hearthome City'),
  -- Fen Badge -> Barry
  (210006, 21014, 21, 'battle-opponent', 2, 'Pastoria City'),
  -- Mine Badge -> Barry
  (210008, 21014, 21, 'battle-opponent', 1, 'Canalave City'),
  -- Team Galactic HQ -> Cyrus
  (210018, 21015, 21, 'battle-opponent', 1, 'Team Galactic HQ, Veilstone City'),
  -- Team Galactic HQ -> Saturn
  (210018, 21044, 21, 'battle-opponent', 2, 'Team Galactic HQ, Veilstone City'),
  -- Spear Pillar -> Cyrus
  (210019, 21015, 21, 'battle-opponent', 2, 'Spear Pillar'),
  -- Spear Pillar -> Mars & Jupiter (a Multi Battle, Barry at your side)
  (210019, 21045, 21, 'battle-opponent', 1, 'Spear Pillar (with Barry)'),
  -- Elite Four Aaron -> Barry
  (210011, 21014, 21, 'battle-opponent', 1, 'Pokémon League'),
  -- Fight Area -> Barry
  (210020, 21014, 21, 'battle-opponent', 1, 'Fight Area. You can skip this battle.'),
  -- Spear Pillar -> Dialga
  (210019, 21016, 21, 'battle-opponent', 3, 'Spear Pillar, Mt. Coronet (after defeating Cyrus)'),
  -- Spear Pillar -> Palkia
  (210019, 21017, 21, 'battle-opponent', 4, 'Spear Pillar, Mt. Coronet (after defeating Cyrus)'),
  -- Lake Guardians -> Uxie
  (210021, 21018, 21, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity. You can skip this battle.'),
  -- Lake Guardians -> Azelf
  (210021, 21019, 21, 'battle-opponent', 2, 'Valor Cavern, Lake Valor. You can skip this battle.'),
  -- Lake Guardians -> Mesprit
  (210021, 21020, 21, 'battle-opponent', 3, 'Roams Sinnoh after fleeing from Verity Cavern, Lake Verity. You can skip this battle.'),
  -- Turnback Cave -> Giratina
  (210022, 21021, 21, 'battle-opponent', 1, 'Turnback Cave, Giratina''s room (Altered Forme). You can skip this battle.'),
  -- Roaming Cresselia -> Cresselia
  (210023, 21022, 21, 'battle-opponent', 1, 'Roams Sinnoh after meeting it on Fullmoon Island. You can skip this battle.'),
  -- Stark Mountain -> Heatran
  (210024, 21023, 21, 'battle-opponent', 1, 'Stark Mountain, deepest room. You can skip this battle.'),
  -- Snowpoint Temple -> Regigigas
  (210025, 21024, 21, 'battle-opponent', 1, 'Snowpoint Temple B5F. You can skip this battle.'),
  -- Ramanas Park -> Regirock
  (210017, 21025, 21, 'battle-opponent', 1, 'Ramanas Park, Discovery Room (Discovery Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Regice
  (210017, 21026, 21, 'battle-opponent', 2, 'Ramanas Park, Discovery Room (Discovery Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Registeel
  (210017, 21027, 21, 'battle-opponent', 3, 'Ramanas Park, Discovery Room (Discovery Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Raikou
  (210017, 21028, 21, 'battle-opponent', 4, 'Ramanas Park, Johto Room (Johto Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Entei
  (210017, 21029, 21, 'battle-opponent', 5, 'Ramanas Park, Johto Room (Johto Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Suicune
  (210017, 21030, 21, 'battle-opponent', 6, 'Ramanas Park, Johto Room (Johto Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Articuno
  (210017, 21031, 21, 'battle-opponent', 7, 'Ramanas Park, Kanto Room (Kanto Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Zapdos
  (210017, 21032, 21, 'battle-opponent', 8, 'Ramanas Park, Kanto Room (Kanto Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Moltres
  (210017, 21033, 21, 'battle-opponent', 9, 'Ramanas Park, Kanto Room (Kanto Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Latias
  (210017, 21034, 21, 'battle-opponent', 10, 'Ramanas Park, Soul Room (Soul Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Latios
  (210017, 21035, 21, 'battle-opponent', 11, 'Ramanas Park, Soul Room (Soul Slate, Pure Space). You can skip this battle.'),
  -- Ramanas Park -> Ho-Oh
  (210017, 21036, 21, 'battle-opponent', 12, 'Ramanas Park, Rainbow Room (Rainbow Slate, Strange Space). You can skip this battle.'),
  -- Ramanas Park -> Lugia
  (210017, 21037, 21, 'battle-opponent', 13, 'Ramanas Park, Squall Room (Squall Slate, Strange Space). You can skip this battle.'),
  -- Ramanas Park -> Kyogre
  (210017, 21038, 21, 'battle-opponent', 14, 'Ramanas Park, Oceanic Room (Oceanic Slate, Strange Space). You can skip this battle.'),
  -- Ramanas Park -> Groudon
  (210017, 21039, 21, 'battle-opponent', 15, 'Ramanas Park, Tectonic Room (Tectonic Slate, Strange Space). You can skip this battle.'),
  -- Ramanas Park -> Rayquaza
  (210017, 21040, 21, 'battle-opponent', 16, 'Ramanas Park, Stratospheric Room (Stratospheric Slate, Strange Space). You can skip this battle.'),
  -- Ramanas Park -> Mewtwo
  (210017, 21041, 21, 'battle-opponent', 17, 'Ramanas Park, Genome Room (Genome Slate, Strange Space). You can skip this battle.'),
  -- Ramanas Park -> Giratina
  (210017, 21021, 21, 'battle-opponent', 18, 'Ramanas Park, Distortion Room (Distortion Slate, Strange Space). You can skip this battle.');
