-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
-- Magma and Aqua Admins (Tabitha, Courtney, Shelly, Matt) and the Brendan / May and
-- Steven partner teams: Bulbapedia's trainer pages, cross-checked with Serebii's Pokéarth
-- where it lists them (Southern Island and the Space Center Grunts are Bulbapedia only).
-- Scope: Pokémon Omega Ruby / Alpha Sapphire milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Omega Ruby / Alpha Sapphire battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Stone Badge -> Roxanne
  (140003, 14001, 14, 'battle-opponent', 1, NULL),
  -- Knuckle Badge -> Brawly
  (140004, 14002, 14, 'battle-opponent', 1, NULL),
  -- Dynamo Badge -> Wattson
  (140005, 14003, 14, 'battle-opponent', 3, NULL),
  -- Heat Badge -> Flannery
  (140007, 14004, 14, 'battle-opponent', 1, NULL),
  -- Balance Badge -> Norman
  (140008, 14005, 14, 'battle-opponent', 1, NULL),
  -- Feather Badge -> Winona
  (140009, 14006, 14, 'battle-opponent', 6, NULL),
  -- Mind Badge -> Tate & Liza
  (140010, 14007, 14, 'battle-opponent', 6, NULL),
  -- Rain Badge -> Wallace
  (140011, 14008, 14, 'battle-opponent', 3, NULL),
  -- Elite Four Sidney -> Sidney
  (140012, 14009, 14, 'battle-opponent', 2, NULL),
  -- Elite Four Phoebe -> Phoebe
  (140013, 14010, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Glacia -> Glacia
  (140014, 14011, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Drake -> Drake
  (140015, 14012, 14, 'battle-opponent', 1, NULL),
  -- Champion Steven -> Steven
  (140016, 14013, 14, 'battle-opponent', 1, NULL),
  -- Delta Episode -> Zinnia
  (140018, 14014, 14, 'battle-opponent', 8, 'Sky Pillar summit'),
  -- Delta Episode -> Zinnia (Granite Cave)
  (140018, 14049, 14, 'battle-opponent', 3, 'Granite Cave'),
  -- Delta Episode -> Wallace
  (140018, 14050, 14, 'battle-opponent', 6, 'Route 131, at the foot of the Sky Pillar'),
  -- Receive Pokedex -> May / Brendan
  (140002, 14015, 14, 'battle-opponent', 1, 'Route 103'),
  -- Dynamo Badge -> May / Brendan
  (140005, 14015, 14, 'battle-opponent', 1, 'Route 110'),
  -- Dynamo Badge -> Wally
  (140005, 14016, 14, 'battle-opponent', 2, 'Mauville City'),
  -- Mt. Chimney -> Maxie
  (140019, 14017, 14, 'battle-opponent', 5, 'Mt. Chimney'),
  -- Mt. Chimney -> Archie
  (140019, 14018, 14, 'battle-opponent', 6, 'Mt. Chimney'),
  -- Feather Badge -> May / Brendan
  (140009, 14015, 14, 'battle-opponent', 5, 'Route 119'),
  -- Mind Badge -> May / Brendan
  (140010, 14015, 14, 'battle-opponent', 3, 'Lilycove City'),
  -- Seafloor Cavern -> Maxie
  (140020, 14017, 14, 'battle-opponent', 1, 'Seafloor Cavern'),
  -- Seafloor Cavern -> Archie
  (140020, 14018, 14, 'battle-opponent', 2, 'Seafloor Cavern'),
  -- Elite Four Sidney -> Wally
  (140012, 14016, 14, 'battle-opponent', 1, 'Victory Road'),
  -- Hall of Fame -> May / Brendan
  (140017, 14015, 14, 'battle-opponent', 1, 'Route 103'),
  -- Rain Badge -> Groudon
  (140011, 14019, 14, 'battle-opponent', 1, 'Cave of Origin, deepest chamber'),
  -- Rain Badge -> Kyogre
  (140011, 14020, 14, 'battle-opponent', 2, 'Cave of Origin, deepest chamber'),
  -- Delta Episode -> Rayquaza
  (140018, 14021, 14, 'battle-opponent', 7, 'Sky Pillar summit'),
  -- Delta Episode -> Deoxys
  (140018, 14022, 14, 'battle-opponent', 9, 'Edge of space (met location Sky Pillar)'),
  -- Sealed Chamber -> Regirock
  (140021, 14023, 14, 'battle-opponent', 1, 'Desert Ruins (Route 111). You can skip this battle.'),
  -- Sealed Chamber -> Regice
  (140021, 14024, 14, 'battle-opponent', 2, 'Island Cave (Route 105). You can skip this battle.'),
  -- Sealed Chamber -> Registeel
  (140021, 14025, 14, 'battle-opponent', 3, 'Ancient Tomb (Route 120). You can skip this battle.'),
  -- Scorched Slab -> Heatran
  (140022, 14026, 14, 'battle-opponent', 1, 'Scorched Slab B3F (portal). You can skip this battle.'),
  -- Sea Mauville -> Ho-Oh
  (140023, 14027, 14, 'battle-opponent', 1, 'Sea Mauville, end of the upper beam (portal). You can skip this battle.'),
  -- Sea Mauville -> Lugia
  (140023, 14028, 14, 'battle-opponent', 2, 'Sea Mauville, underwater control room (portal). You can skip this battle.'),
  -- Crescent Isle -> Cresselia
  (140024, 14029, 14, 'battle-opponent', 1, 'Crescent Isle Mirage spot (portal). You can skip this battle.'),
  -- Storm Clouds -> Tornadus
  (140025, 14030, 14, 'battle-opponent', 1, 'Storm cloud above Fortree City (soaring). You can skip this battle.'),
  -- Storm Clouds -> Thundurus
  (140025, 14031, 14, 'battle-opponent', 2, 'Storm cloud above Fortree City (soaring). You can skip this battle.'),
  -- Storm Clouds -> Landorus
  (140025, 14032, 14, 'battle-opponent', 3, 'Storm cloud above Fortree City (soaring). You can skip this battle.'),
  -- Regigigas in Island Cave -> Regigigas
  (140026, 14033, 14, 'battle-opponent', 1, 'Island Cave (Route 105), Regice''s chamber. You can skip this battle.'),
  -- Trackless Forest -> Raikou
  (140027, 14034, 14, 'battle-opponent', 1, 'Trackless Forest Mirage spot (portal). You can skip this battle.'),
  -- Trackless Forest -> Entei
  (140027, 14035, 14, 'battle-opponent', 2, 'Trackless Forest Mirage spot (portal). You can skip this battle.'),
  -- Trackless Forest -> Suicune
  (140027, 14036, 14, 'battle-opponent', 3, 'Trackless Forest Mirage spot (portal). You can skip this battle.'),
  -- Nameless Cavern -> Uxie
  (140028, 14037, 14, 'battle-opponent', 1, 'Nameless Cavern Mirage spot (portal). You can skip this battle.'),
  -- Nameless Cavern -> Mesprit
  (140028, 14038, 14, 'battle-opponent', 2, 'Nameless Cavern Mirage spot (portal). You can skip this battle.'),
  -- Nameless Cavern -> Azelf
  (140028, 14039, 14, 'battle-opponent', 3, 'Nameless Cavern Mirage spot (portal). You can skip this battle.'),
  -- Dimensional Rift -> Palkia
  (140029, 14040, 14, 'battle-opponent', 1, 'Dimensional rift south of Dewford Town (soaring). You can skip this battle.'),
  -- Dimensional Rift -> Dialga
  (140029, 14041, 14, 'battle-opponent', 2, 'Dimensional rift south of Dewford Town (soaring). You can skip this battle.'),
  -- Dimensional Rift -> Giratina
  (140029, 14042, 14, 'battle-opponent', 3, 'Dimensional rift south of Dewford Town (soaring). You can skip this battle.'),
  -- Pathless Plain -> Cobalion
  (140030, 14043, 14, 'battle-opponent', 1, 'Pathless Plain Mirage spot (portal). You can skip this battle.'),
  -- Pathless Plain -> Terrakion
  (140030, 14044, 14, 'battle-opponent', 2, 'Pathless Plain Mirage spot (portal). You can skip this battle.'),
  -- Pathless Plain -> Virizion
  (140030, 14045, 14, 'battle-opponent', 3, 'Pathless Plain Mirage spot (portal). You can skip this battle.'),
  -- Fabled Cave -> Reshiram
  (140031, 14046, 14, 'battle-opponent', 1, 'Fabled Cave Mirage spot (portal). You can skip this battle.'),
  -- Fabled Cave -> Zekrom
  (140031, 14047, 14, 'battle-opponent', 2, 'Fabled Cave Mirage spot (portal). You can skip this battle.'),
  -- Gnarled Den -> Kyurem
  (140032, 14048, 14, 'battle-opponent', 1, 'Gnarled Den Mirage spot (portal). You can skip this battle.'),
  -- Mt. Chimney -> Tabitha & Grunt (a Multi Battle, Brendan / May at your side)
  (140019, 14051, 14, 'battle-opponent', 1, 'Meteor Falls (with Brendan / May)'),
  -- Mt. Chimney -> Shelly & Grunt (a Multi Battle, Brendan / May at your side)
  (140019, 14056, 14, 'battle-opponent', 2, 'Meteor Falls (with Brendan / May)'),
  -- Mt. Chimney -> Tabitha
  (140019, 14052, 14, 'battle-opponent', 3, 'Mt. Chimney'),
  -- Mt. Chimney -> Shelly
  (140019, 14057, 14, 'battle-opponent', 4, 'Mt. Chimney'),
  -- Feather Badge -> Courtney & Grunt (a Multi Battle, Steven at your side)
  (140009, 14053, 14, 'battle-opponent', 1, 'Southern Island (with Steven)'),
  -- Feather Badge -> Matt & Grunt (a Multi Battle, Steven at your side)
  (140009, 14058, 14, 'battle-opponent', 2, 'Southern Island (with Steven)'),
  -- Feather Badge -> Tabitha
  (140009, 14052, 14, 'battle-opponent', 3, 'Weather Institute, Route 119'),
  -- Feather Badge -> Shelly
  (140009, 14057, 14, 'battle-opponent', 4, 'Weather Institute, Route 119'),
  -- Mind Badge -> Courtney
  (140010, 14054, 14, 'battle-opponent', 1, 'Mt. Pyre summit'),
  -- Mind Badge -> Matt
  (140010, 14059, 14, 'battle-opponent', 2, 'Mt. Pyre summit'),
  -- Mind Badge -> Courtney
  (140010, 14055, 14, 'battle-opponent', 4, 'Team Magma Hideout'),
  -- Mind Badge -> Matt
  (140010, 14060, 14, 'battle-opponent', 5, 'Team Aqua Hideout'),
  -- Delta Episode -> Courtney
  (140018, 14054, 14, 'battle-opponent', 1, 'Petalburg City'),
  -- Delta Episode -> Matt
  (140018, 14059, 14, 'battle-opponent', 2, 'Petalburg City'),
  -- Delta Episode -> Courtney & Grunt (a Multi Battle, Steven at your side)
  (140018, 14053, 14, 'battle-opponent', 4, 'Mossdeep Space Center (with Steven)'),
  -- Delta Episode -> Matt & Grunt (a Multi Battle, Steven at your side)
  (140018, 14058, 14, 'battle-opponent', 5, 'Mossdeep Space Center (with Steven)');
