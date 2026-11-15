-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Brilliant Diamond / Shining Pearl battle milestones to their primary
-- opponents, as in Diamond / Pearl: the Pokémon League holds Barry, the Elite
-- Four and Champion Cynthia, and each Commander is on the beat where she or
-- he is fought. Ramanas Park lists its legendary Pokémon by room.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Barry on Route 203, in Hearthome City, in Pastoria City and in
-- Canalave City.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Coal Badge -> Barry (Route 203)
  (210003, 21014, 21, 'battle-opponent', 1, 'Just outside Jubilife City, on your way to Oreburgh Gate.', 291),
  -- Coal Badge -> Roark
  (210003, 21001, 21, 'battle-opponent', 2, NULL, NULL),
  -- Valley Windworks -> Mars
  (210026, 21042, 21, 'battle-opponent', 1, 'Valley Windworks, the back room', NULL),
  -- Forest Badge -> Gardenia
  (210004, 21002, 21, 'battle-opponent', 1, NULL, NULL),
  -- Team Galactic Eterna Building -> Jupiter
  (210027, 21043, 21, 'battle-opponent', 1, 'Team Galactic Eterna Building, top floor', NULL),
  -- Cobble Badge -> Barry (Hearthome City)
  (210005, 21014, 21, 'battle-opponent', 1, 'By the south gate, on your way out to Route 209.', 269),
  -- Cobble Badge -> Maylene
  (210005, 21003, 21, 'battle-opponent', 2, NULL, NULL),
  -- Fen Badge -> Crasher Wake
  (210006, 21004, 21, 'battle-opponent', 1, NULL, NULL),
  -- Celestic Town -> Barry (Pastoria City)
  (210028, 21014, 21, 'battle-opponent', 1, 'At the east gate after the Fen Badge, as you chase the Grunt.', 283),
  -- Relic Badge -> Fantina
  (210007, 21005, 21, 'battle-opponent', 1, NULL, NULL),
  -- Mine Badge -> Barry (Canalave City)
  (210008, 21014, 21, 'battle-opponent', 1, 'On the drawbridge.', 257),
  -- Mine Badge -> Byron
  (210008, 21006, 21, 'battle-opponent', 2, NULL, NULL),
  -- Lake Valor -> Saturn
  (210029, 21044, 21, 'battle-opponent', 1, 'Valor Cavern', NULL),
  -- Lake Verity -> Mars
  (210030, 21042, 21, 'battle-opponent', 1, 'By the water, where she has cornered the professor''s assistant', NULL),
  -- Icicle Badge -> Candice
  (210009, 21007, 21, 'battle-opponent', 1, NULL, NULL),
  -- Team Galactic HQ -> Cyrus
  (210018, 21015, 21, 'battle-opponent', 1, 'Team Galactic HQ, Cyrus''s office', NULL),
  -- Team Galactic HQ -> Saturn
  (210018, 21044, 21, 'battle-opponent', 2, 'Team Galactic HQ, the laboratory', NULL),
  -- Spear Pillar -> Mars & Jupiter
  (210019, 21045, 21, 'battle-opponent', 1, 'A Multi Battle with Barry at your side', NULL),
  -- Spear Pillar -> Cyrus
  (210019, 21015, 21, 'battle-opponent', 2, 'After Mars and Jupiter. Barry heals your team first.', NULL),
  -- Spear Pillar -> Dialga
  (210019, 21016, 21, 'battle-opponent', 3, 'After Cyrus (Brilliant Diamond)', NULL),
  -- Spear Pillar -> Palkia
  (210019, 21017, 21, 'battle-opponent', 4, 'After Cyrus (Shining Pearl)', NULL),
  -- Beacon Badge -> Volkner
  (210010, 21008, 21, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Barry
  (210015, 21014, 21, 'battle-opponent', 1, 'In the lobby, before the Elite Four''s door', NULL),
  -- Pokémon League -> Aaron
  (210015, 21009, 21, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Bertha
  (210015, 21010, 21, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Flint
  (210015, 21011, 21, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Lucian
  (210015, 21012, 21, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Cynthia
  (210015, 21013, 21, 'battle-opponent', 6, NULL, NULL),
  -- Fight Area -> Barry
  (210020, 21014, 21, 'battle-opponent', 1, 'At the Fight Area. You can skip this battle.', NULL),
  -- Stark Mountain -> Heatran
  (210024, 21023, 21, 'battle-opponent', 1, 'Stark Mountain, deepest room. You can skip this battle.', NULL),
  -- Lake Guardians -> Uxie
  (210021, 21018, 21, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity. You can skip this battle.', NULL),
  -- Lake Guardians -> Azelf
  (210021, 21019, 21, 'battle-opponent', 2, 'Valor Cavern, Lake Valor. You can skip this battle.', NULL),
  -- Lake Guardians -> Mesprit
  (210021, 21020, 21, 'battle-opponent', 3, 'Roams Sinnoh after you meet it in Verity Cavern. You can skip this battle.', NULL),
  -- Turnback Cave -> Giratina
  (210022, 21021, 21, 'battle-opponent', 1, 'Altered Forme. You can skip this battle.', NULL),
  -- Roaming Cresselia -> Cresselia
  (210023, 21022, 21, 'battle-opponent', 1, 'Roams Sinnoh after you meet it on Fullmoon Island. You can skip this battle.', NULL),
  -- Snowpoint Temple -> Regigigas
  (210025, 21024, 21, 'battle-opponent', 1, 'Snowpoint Temple B5F. You can skip this battle.', NULL),
  -- Ramanas Park -> Regirock
  (210017, 21025, 21, 'battle-opponent', 1, 'Discovery Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Regice
  (210017, 21026, 21, 'battle-opponent', 2, 'Discovery Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Registeel
  (210017, 21027, 21, 'battle-opponent', 3, 'Discovery Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Raikou
  (210017, 21028, 21, 'battle-opponent', 4, 'Johto Room (Brilliant Diamond). You can skip this battle.', NULL),
  -- Ramanas Park -> Entei
  (210017, 21029, 21, 'battle-opponent', 5, 'Johto Room (Brilliant Diamond). You can skip this battle.', NULL),
  -- Ramanas Park -> Suicune
  (210017, 21030, 21, 'battle-opponent', 6, 'Johto Room (Brilliant Diamond). You can skip this battle.', NULL),
  -- Ramanas Park -> Articuno
  (210017, 21031, 21, 'battle-opponent', 7, 'Kanto Room (Shining Pearl). You can skip this battle.', NULL),
  -- Ramanas Park -> Zapdos
  (210017, 21032, 21, 'battle-opponent', 8, 'Kanto Room (Shining Pearl). You can skip this battle.', NULL),
  -- Ramanas Park -> Moltres
  (210017, 21033, 21, 'battle-opponent', 9, 'Kanto Room (Shining Pearl). You can skip this battle.', NULL),
  -- Ramanas Park -> Latias
  (210017, 21034, 21, 'battle-opponent', 10, 'Soul Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Latios
  (210017, 21035, 21, 'battle-opponent', 11, 'Soul Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Ho-Oh
  (210017, 21036, 21, 'battle-opponent', 12, 'Rainbow Room (Brilliant Diamond). You can skip this battle.', NULL),
  -- Ramanas Park -> Lugia
  (210017, 21037, 21, 'battle-opponent', 13, 'Squall Room (Shining Pearl). You can skip this battle.', NULL),
  -- Ramanas Park -> Kyogre
  (210017, 21038, 21, 'battle-opponent', 14, 'Oceanic Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Groudon
  (210017, 21039, 21, 'battle-opponent', 15, 'Tectonic Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Rayquaza
  (210017, 21040, 21, 'battle-opponent', 16, 'Stratospheric Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Mewtwo
  (210017, 21041, 21, 'battle-opponent', 17, 'Genome Room. You can skip this battle.', NULL),
  -- Ramanas Park -> Giratina
  (210017, 21021, 21, 'battle-opponent', 18, 'Distortion Room. You can skip this battle.', NULL);
