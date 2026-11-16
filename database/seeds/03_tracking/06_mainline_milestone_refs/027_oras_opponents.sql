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
-- Links Omega Ruby / Alpha Sapphire battle milestones to their primary
-- opponents, in Red / Blue's pattern. The Pokémon League holds its six
-- battles in the order they are fought: Wally in Victory Road, the Elite
-- Four, then Champion Steven. A Gym lists only its own battle, so each Admin
-- is on the beat where he or she is fought. Team Magma's battles are Omega
-- Ruby's and Team Aqua's are Alpha Sapphire's.
-- location_id is set only where the battle is fought away from its milestone's
-- place: the rival on Route 103, on Route 110 and on Route 119, and Wally in
-- Mauville City and in Victory Road. NULL means the battle is at the
-- milestone's place.
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
  -- Receive Pokédex -> May / Brendan (Route 103)
  (140002, 14015, 14, 'battle-opponent', 1, 'At the north end of the route, before you go back to the lab.', 203),
  -- Stone Badge -> Roxanne
  (140003, 14001, 14, 'battle-opponent', 1, NULL, NULL),
  -- Knuckle Badge -> Brawly
  (140004, 14002, 14, 'battle-opponent', 1, NULL, NULL),
  -- Dynamo Badge -> May / Brendan (Route 110)
  (140005, 14015, 14, 'battle-opponent', 1, 'Near the Trick House. Your rival gives you a Dowsing Machine afterward.', 210),
  -- Dynamo Badge -> Wally (Mauville City)
  (140005, 14016, 14, 'battle-opponent', 2, 'In front of the Gym.', 837),
  -- Dynamo Badge -> Wattson
  (140005, 14003, 14, 'battle-opponent', 3, NULL, NULL),
  -- Meteor Falls -> Tabitha & Grunt
  (140036, 14051, 14, 'battle-opponent', 1, 'A Multi Battle with your rival at your side (Omega Ruby)', NULL),
  -- Meteor Falls -> Shelly & Grunt
  (140036, 14056, 14, 'battle-opponent', 2, 'A Multi Battle with your rival at your side (Alpha Sapphire)', NULL),
  -- Mt. Chimney -> Tabitha
  (140019, 14052, 14, 'battle-opponent', 1, 'On the glass bridge, before Maxie (Omega Ruby)', NULL),
  -- Mt. Chimney -> Maxie
  (140019, 14017, 14, 'battle-opponent', 2, 'At the crater (Omega Ruby)', NULL),
  -- Mt. Chimney -> Shelly
  (140019, 14057, 14, 'battle-opponent', 3, 'On the glass bridge, before Archie (Alpha Sapphire)', NULL),
  -- Mt. Chimney -> Archie
  (140019, 14018, 14, 'battle-opponent', 4, 'At the crater (Alpha Sapphire)', NULL),
  -- Heat Badge -> Flannery
  (140007, 14004, 14, 'battle-opponent', 1, NULL, NULL),
  -- Balance Badge -> Norman
  (140008, 14005, 14, 'battle-opponent', 1, NULL, NULL),
  -- Southern Island -> Courtney & Grunt
  (140037, 14053, 14, 'battle-opponent', 1, 'A Multi Battle with Steven at your side (Omega Ruby)', NULL),
  -- Southern Island -> Matt & Grunt
  (140037, 14058, 14, 'battle-opponent', 2, 'A Multi Battle with Steven at your side (Alpha Sapphire)', NULL),
  -- Weather Institute -> Tabitha
  (140038, 14052, 14, 'battle-opponent', 1, 'Weather Institute 2F (Omega Ruby)', NULL),
  -- Weather Institute -> Shelly
  (140038, 14057, 14, 'battle-opponent', 2, 'Weather Institute 2F (Alpha Sapphire)', NULL),
  -- Feather Badge -> May / Brendan (Route 119)
  (140009, 14015, 14, 'battle-opponent', 1, 'Past the Weather Institute. Your rival gives you HM02 Fly afterward.', 219),
  -- Feather Badge -> Winona
  (140009, 14006, 14, 'battle-opponent', 2, NULL, NULL),
  -- Mt. Pyre -> Courtney
  (140039, 14054, 14, 'battle-opponent', 1, 'At the summit, after Maxie leaves with the orb (Omega Ruby)', NULL),
  -- Mt. Pyre -> Matt
  (140039, 14059, 14, 'battle-opponent', 2, 'At the summit, after Archie leaves with the orb (Alpha Sapphire)', NULL),
  -- Team Magma or Aqua Hideout -> May / Brendan
  (140040, 14015, 14, 'battle-opponent', 1, 'In front of the Lilycove Department Store. You can skip this battle.', NULL),
  -- Team Magma or Aqua Hideout -> Courtney (hideout)
  (140040, 14055, 14, 'battle-opponent', 2, 'Team Magma Hideout, by the submarine (Omega Ruby)', NULL),
  -- Team Magma or Aqua Hideout -> Matt (hideout)
  (140040, 14060, 14, 'battle-opponent', 3, 'Team Aqua Hideout, by the submarine (Alpha Sapphire)', NULL),
  -- Mind Badge -> Tate & Liza
  (140010, 14007, 14, 'battle-opponent', 1, NULL, NULL),
  -- Seafloor Cavern -> Maxie
  (140020, 14017, 14, 'battle-opponent', 1, 'Deepest chamber (Omega Ruby)', NULL),
  -- Seafloor Cavern -> Archie
  (140020, 14018, 14, 'battle-opponent', 2, 'Deepest chamber (Alpha Sapphire)', NULL),
  -- Cave of Origin -> Groudon
  (140033, 14019, 14, 'battle-opponent', 1, 'Primal Groudon (Omega Ruby)', NULL),
  -- Cave of Origin -> Kyogre
  (140033, 14020, 14, 'battle-opponent', 2, 'Primal Kyogre (Alpha Sapphire)', NULL),
  -- Rain Badge -> Wallace
  (140011, 14008, 14, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Wally (Victory Road)
  (140016, 14016, 14, 'battle-opponent', 1, NULL, 252),
  -- Pokémon League -> Sidney
  (140016, 14009, 14, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Phoebe
  (140016, 14010, 14, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Glacia
  (140016, 14011, 14, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Drake
  (140016, 14012, 14, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Steven
  (140016, 14013, 14, 'battle-opponent', 6, NULL, NULL),
  -- Delta Episode -> Courtney
  (140018, 14054, 14, 'battle-opponent', 1, 'In front of Wally''s house in Petalburg City (Omega Ruby)', NULL),
  -- Delta Episode -> Matt
  (140018, 14059, 14, 'battle-opponent', 2, 'In front of Wally''s house in Petalburg City (Alpha Sapphire)', NULL),
  -- Delta Episode -> Zinnia (Granite Cave)
  (140018, 14049, 14, 'battle-opponent', 3, 'Granite Cave, by the wall painting', NULL),
  -- Delta Episode -> Courtney & Grunt
  (140018, 14053, 14, 'battle-opponent', 4, 'Mossdeep Space Center, a Multi Battle with Steven at your side (Omega Ruby)', NULL),
  -- Delta Episode -> Matt & Grunt
  (140018, 14058, 14, 'battle-opponent', 5, 'Mossdeep Space Center, a Multi Battle with Steven at your side (Alpha Sapphire)', NULL),
  -- Delta Episode -> Wallace (Delta Episode)
  (140018, 14050, 14, 'battle-opponent', 6, 'Route 131, at the foot of the Sky Pillar', NULL),
  -- Delta Episode -> Rayquaza
  (140018, 14021, 14, 'battle-opponent', 7, 'Sky Pillar summit. You have to catch it.', NULL),
  -- Delta Episode -> Zinnia
  (140018, 14014, 14, 'battle-opponent', 8, 'Sky Pillar summit, right after Rayquaza', NULL),
  -- Delta Episode -> Deoxys
  (140018, 14022, 14, 'battle-opponent', 9, 'In space, once Mega Rayquaza has broken the meteoroid', NULL),
  -- Delta Episode -> May / Brendan
  (140018, 14015, 14, 'battle-opponent', 10, 'Route 103, after the Delta Episode', NULL),
  -- Sealed Chamber -> Regirock
  (140021, 14023, 14, 'battle-opponent', 1, 'Desert Ruins (Route 111). You can skip this battle.', NULL),
  -- Sealed Chamber -> Regice
  (140021, 14024, 14, 'battle-opponent', 2, 'Island Cave (Route 105). You can skip this battle.', NULL),
  -- Sealed Chamber -> Registeel
  (140021, 14025, 14, 'battle-opponent', 3, 'Ancient Tomb (Route 120). You can skip this battle.', NULL),
  -- Scorched Slab -> Heatran
  (140022, 14026, 14, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Sea Mauville -> Ho-Oh
  (140023, 14027, 14, 'battle-opponent', 1, 'At the end of the upper beam (Omega Ruby). You can skip this battle.', NULL),
  -- Sea Mauville -> Lugia
  (140023, 14028, 14, 'battle-opponent', 2, 'In the underwater control room (Alpha Sapphire). You can skip this battle.', NULL),
  -- Crescent Isle -> Cresselia
  (140024, 14029, 14, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Storm Clouds -> Tornadus
  (140025, 14030, 14, 'battle-opponent', 1, 'With a Castform (Omega Ruby). You can skip this battle.', NULL),
  -- Storm Clouds -> Thundurus
  (140025, 14031, 14, 'battle-opponent', 2, 'With a Castform (Alpha Sapphire). You can skip this battle.', NULL),
  -- Storm Clouds -> Landorus
  (140025, 14032, 14, 'battle-opponent', 3, 'With Tornadus and Thundurus. You can skip this battle.', NULL),
  -- Regigigas in Island Cave -> Regigigas
  (140026, 14033, 14, 'battle-opponent', 1, 'Regice''s chamber. You can skip this battle.', NULL),
  -- Trackless Forest -> Raikou
  (140027, 14034, 14, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Trackless Forest -> Entei
  (140027, 14035, 14, 'battle-opponent', 2, 'You can skip this battle.', NULL),
  -- Trackless Forest -> Suicune
  (140027, 14036, 14, 'battle-opponent', 3, 'You can skip this battle.', NULL),
  -- Nameless Cavern -> Uxie
  (140028, 14037, 14, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Nameless Cavern -> Mesprit
  (140028, 14038, 14, 'battle-opponent', 2, 'You can skip this battle.', NULL),
  -- Nameless Cavern -> Azelf
  (140028, 14039, 14, 'battle-opponent', 3, 'You can skip this battle.', NULL),
  -- Dimensional Rift -> Palkia
  (140029, 14040, 14, 'battle-opponent', 1, 'With the lake trio (Omega Ruby). You can skip this battle.', NULL),
  -- Dimensional Rift -> Dialga
  (140029, 14041, 14, 'battle-opponent', 2, 'With the lake trio (Alpha Sapphire). You can skip this battle.', NULL),
  -- Dimensional Rift -> Giratina
  (140029, 14042, 14, 'battle-opponent', 3, 'With Dialga and Palkia. You can skip this battle.', NULL),
  -- Pathless Plain -> Cobalion
  (140030, 14043, 14, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Pathless Plain -> Terrakion
  (140030, 14044, 14, 'battle-opponent', 2, 'You can skip this battle.', NULL),
  -- Pathless Plain -> Virizion
  (140030, 14045, 14, 'battle-opponent', 3, 'You can skip this battle.', NULL),
  -- Fabled Cave -> Reshiram
  (140031, 14046, 14, 'battle-opponent', 1, '(Omega Ruby) You can skip this battle.', NULL),
  -- Fabled Cave -> Zekrom
  (140031, 14047, 14, 'battle-opponent', 2, '(Alpha Sapphire) You can skip this battle.', NULL),
  -- Gnarled Den -> Kyurem
  (140032, 14048, 14, 'battle-opponent', 1, 'You can skip this battle.', NULL);
