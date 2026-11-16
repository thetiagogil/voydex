-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's location pages (each place's catch tables, read
-- 2026-11-04) and, for the order places open in, its walkthroughs.
-- Cross-check and gap fill (gifts, fixed encounters, in-game trades, honey
-- trees): PokeAPI's encounter tables, Generation I to Sword / Shield.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.locations
-- Scope: every place a Pokémon is found in, one row per place across the
-- games that share it (Route 1 is one place in Red and in HeartGold), and
-- the places a Story milestone or battle happens at that have no wild
-- Pokémon (Red / Blue's S.S. Anne, Rocket Hideout, Underground Path
-- between Routes 7 and 8 and Kanto's Gyms, named as Bulbapedia names them,
-- and Gold / Silver's Johto Gyms, Mahogany Town, Professor Elm's Laboratory,
-- Mr. Pokémon's House, Olivine Lighthouse, Team Rocket HQ, Goldenrod Radio
-- Tower and Underground and the S.S. Aqua, named as those games name them,
-- and Hoenn's Gyms, towns without wild Pokémon, Professor Birch's Laboratory,
-- the Oceanic Museum and Mt. Chimney for Ruby / Sapphire, and the Sevii
-- Islands' towns, the Dotted Hole, the Rocket Warehouse, Navel Rock and Birth
-- Island for FireRed / LeafGreen, and the Mossdeep Space Center, Terra Cave
-- and Marine Cave for Emerald, and Sinnoh's Gyms, towns without wild
-- Pokémon, Professor Rowan's Laboratory, Team Galactic's two buildings, the
-- Spear Pillar, the Fight Area and Fullmoon Island for Diamond / Pearl, the
-- Distortion World for Platinum, the Ecruteak Dance Theater and the Embedded
-- Tower for HeartGold / SoulSilver, and Unova's Gyms, towns and bridges
-- without wild Pokémon, Professor Juniper's Laboratory and the Pokémon
-- League for Black / White, two more Gyms, two towns, the Pokémon World
-- Tournament, the Plasma Frigate and the Cave of Being for Black 2 / White 2,
-- Kalos's Gyms, two towns, Team Flare's places, the Pokémon League, Kiloude
-- City and the Unknown Dungeon for X / Y, Island Cave and six Mirage spots
-- for Omega Ruby / Alpha Sapphire, Heahea City, Hokulani Observatory, Po
-- Town, Ultra Space, the four ruins and the Pokémon League for Sun / Moon,
-- Megalo Tower and Mahalo Trail for Ultra Sun / Ultra Moon, and Galar's
-- missing Stadiums, Spikemuth's Gym, Ballonlea and the Energy Plant for
-- Sword / Shield, the Towers of Two Fists for the Isle of Armor, Ramanas
-- Park for Brilliant Diamond / Shining Pearl, Hisui's arenas, Prelude Beach,
-- the Stone Portal and the Ancient Retreat for Legends: Arceus, and
-- Paldea's Gyms, the towns without wild Pokémon and Team Star's five bases
-- for Scarlet / Violet).
-- ============================================================================
INSERT INTO reference.locations (id, region_id, slug, name)
VALUES
  -- Altering Cave
  (1, 1, 'kanto-altering-cave', 'Altering Cave'),
  -- Berry Forest
  (2, 1, 'kanto-berry-forest', 'Berry Forest'),
  -- Bond Bridge
  (3, 1, 'kanto-bond-bridge', 'Bond Bridge'),
  -- Canyon Entrance
  (4, 1, 'kanto-canyon-entrance', 'Canyon Entrance'),
  -- Cape Brink
  (5, 1, 'kanto-cape-brink', 'Cape Brink'),
  -- Celadon City
  (6, 1, 'kanto-celadon-city', 'Celadon City'),
  -- Celadon Condominiums
  (7, 1, 'kanto-celadon-condominiums', 'Celadon Condominiums'),
  -- Cerulean Cave
  (8, 1, 'kanto-cerulean-cave', 'Cerulean Cave'),
  -- Cerulean City
  (9, 1, 'kanto-cerulean-city', 'Cerulean City'),
  -- Cerulean Gym
  (10, 1, 'kanto-cerulean-gym', 'Cerulean Gym'),
  -- Cinnabar Island
  (11, 1, 'kanto-cinnabar-island', 'Cinnabar Island'),
  -- Cinnabar Lab
  (12, 1, 'kanto-cinnabar-lab', 'Cinnabar Lab'),
  -- Diglett's Cave
  (13, 1, 'kanto-digletts-cave', 'Diglett''s Cave'),
  -- Fighting Dojo
  (14, 1, 'kanto-fighting-dojo', 'Fighting Dojo'),
  -- Five Island (town)
  (15, 1, 'kanto-five-island-town', 'Five Island (town)'),
  -- Five Isle Meadow
  (16, 1, 'kanto-five-isle-meadow', 'Five Isle Meadow'),
  -- Four Island (town)
  (17, 1, 'kanto-four-island-town', 'Four Island (town)'),
  -- Fuchsia City
  (18, 1, 'kanto-fuchsia-city', 'Fuchsia City'),
  -- Green Path
  (19, 1, 'kanto-green-path', 'Green Path'),
  -- Icefall Cave
  (20, 1, 'kanto-icefall-cave', 'Icefall Cave'),
  -- Indigo Plateau
  (21, 1, 'kanto-indigo-plateau', 'Indigo Plateau'),
  -- Kindle Road
  (22, 1, 'kanto-kindle-road', 'Kindle Road'),
  -- Lavender Town
  (23, 1, 'kanto-lavender-town', 'Lavender Town'),
  -- Lost Cave
  (24, 1, 'kanto-lost-cave', 'Lost Cave'),
  -- Memorial Pillar
  (25, 1, 'kanto-memorial-pillar', 'Memorial Pillar'),
  -- Mt. Ember
  (26, 1, 'kanto-mt-ember', 'Mt. Ember'),
  -- Mt. Moon
  (27, 1, 'kanto-mt-moon', 'Mt. Moon'),
  -- One Island (town)
  (28, 1, 'kanto-one-island-town', 'One Island (town)'),
  -- Outcast Island
  (29, 1, 'kanto-outcast-island', 'Outcast Island'),
  -- Pallet Town
  (30, 1, 'kanto-pallet-town', 'Pallet Town'),
  -- Pattern Bush
  (31, 1, 'kanto-pattern-bush', 'Pattern Bush'),
  -- Pokémon Mansion
  (32, 1, 'kanto-pokemon-mansion', 'Pokémon Mansion'),
  -- Pokémon Tower
  (33, 1, 'kanto-pokemon-tower', 'Pokémon Tower'),
  -- Power Plant
  (34, 1, 'kanto-power-plant', 'Power Plant'),
  -- Professor Oak's Laboratory
  (35, 1, 'kanto-professor-oaks-laboratory', 'Professor Oak''s Laboratory'),
  -- Resort Gorgeous
  (36, 1, 'kanto-resort-gorgeous', 'Resort Gorgeous'),
  -- Rock Tunnel
  (37, 1, 'kanto-rock-tunnel', 'Rock Tunnel'),
  -- Route 1
  (38, 1, 'kanto-route-1', 'Route 1'),
  -- Route 10
  (39, 1, 'kanto-route-10', 'Route 10'),
  -- Route 11
  (40, 1, 'kanto-route-11', 'Route 11'),
  -- Route 12
  (41, 1, 'kanto-route-12', 'Route 12'),
  -- Route 13
  (42, 1, 'kanto-route-13', 'Route 13'),
  -- Route 14
  (43, 1, 'kanto-route-14', 'Route 14'),
  -- Route 15
  (44, 1, 'kanto-route-15', 'Route 15'),
  -- Route 16
  (45, 1, 'kanto-route-16', 'Route 16'),
  -- Route 17
  (46, 1, 'kanto-route-17', 'Route 17'),
  -- Route 18
  (47, 1, 'kanto-route-18', 'Route 18'),
  -- Route 19
  (48, 1, 'kanto-route-19', 'Route 19'),
  -- Route 2
  (49, 1, 'kanto-route-2', 'Route 2'),
  -- Route 20
  (50, 1, 'kanto-route-20', 'Route 20'),
  -- Route 21
  (51, 1, 'kanto-route-21', 'Route 21'),
  -- Route 22
  (52, 1, 'kanto-route-22', 'Route 22'),
  -- Route 23
  (53, 1, 'kanto-route-23', 'Route 23'),
  -- Route 24
  (54, 1, 'kanto-route-24', 'Route 24'),
  -- Route 25
  (55, 1, 'kanto-route-25', 'Route 25'),
  -- Route 3
  (56, 1, 'kanto-route-3', 'Route 3'),
  -- Route 4
  (57, 1, 'kanto-route-4', 'Route 4'),
  -- Route 5
  (58, 1, 'kanto-route-5', 'Route 5'),
  -- Route 6
  (59, 1, 'kanto-route-6', 'Route 6'),
  -- Route 7
  (60, 1, 'kanto-route-7', 'Route 7'),
  -- Route 8
  (61, 1, 'kanto-route-8', 'Route 8'),
  -- Route 9
  (62, 1, 'kanto-route-9', 'Route 9'),
  -- Ruin Valley
  (63, 1, 'kanto-ruin-valley', 'Ruin Valley'),
  -- Safari Zone
  (64, 1, 'kanto-safari-zone', 'Safari Zone'),
  -- Seafoam Islands
  (65, 1, 'kanto-seafoam-islands', 'Seafoam Islands'),
  -- Sevault Canyon
  (66, 1, 'kanto-sevault-canyon', 'Sevault Canyon'),
  -- Silph Co.
  (67, 1, 'kanto-silph-co', 'Silph Co.'),
  -- Tanoby Chambers
  (68, 1, 'kanto-tanoby-chambers', 'Tanoby Chambers'),
  -- Tanoby Ruins
  (69, 1, 'kanto-tanoby-ruins', 'Tanoby Ruins'),
  -- Three Isle Port
  (70, 1, 'kanto-three-isle-port', 'Three Isle Port'),
  -- Trainer Tower
  (71, 1, 'kanto-trainer-tower', 'Trainer Tower'),
  -- Treasure Beach
  (72, 1, 'kanto-treasure-beach', 'Treasure Beach'),
  -- Underground Path (Kanto Routes 5-6)
  (73, 1, 'kanto-underground-path-kanto-routes-5-6', 'Underground Path (Kanto Routes 5-6)'),
  -- Vermilion City
  (74, 1, 'kanto-vermilion-city', 'Vermilion City'),
  -- Victory Road
  (75, 1, 'kanto-victory-road', 'Victory Road'),
  -- Viridian City
  (76, 1, 'kanto-viridian-city', 'Viridian City'),
  -- Viridian Forest
  (77, 1, 'kanto-viridian-forest', 'Viridian Forest'),
  -- Water Labyrinth
  (78, 1, 'kanto-water-labyrinth', 'Water Labyrinth'),
  -- Water Path
  (79, 1, 'kanto-water-path', 'Water Path'),
  -- Azalea Town
  (80, 2, 'johto-azalea-town', 'Azalea Town'),
  -- Bell Tower
  (81, 2, 'johto-bell-tower', 'Bell Tower'),
  -- Blackthorn City
  (82, 2, 'johto-blackthorn-city', 'Blackthorn City'),
  -- Burned Tower
  (83, 2, 'johto-burned-tower', 'Burned Tower'),
  -- Cherrygrove City
  (84, 2, 'johto-cherrygrove-city', 'Cherrygrove City'),
  -- Cianwood City
  (85, 2, 'johto-cianwood-city', 'Cianwood City'),
  -- Cliff Cave
  (86, 2, 'johto-cliff-cave', 'Cliff Cave'),
  -- Cliff Edge Gate
  (87, 2, 'johto-cliff-edge-gate', 'Cliff Edge Gate'),
  -- Dark Cave
  (88, 2, 'johto-dark-cave', 'Dark Cave'),
  -- Dragon's Den
  (89, 2, 'johto-dragons-den', 'Dragon''s Den'),
  -- Ecruteak City
  (90, 2, 'johto-ecruteak-city', 'Ecruteak City'),
  -- Goldenrod City
  (91, 2, 'johto-goldenrod-city', 'Goldenrod City'),
  -- Goldenrod Department Store
  (92, 2, 'johto-goldenrod-department-store', 'Goldenrod Department Store'),
  -- Ice Path
  (93, 2, 'johto-ice-path', 'Ice Path'),
  -- Ilex Forest
  (94, 2, 'johto-ilex-forest', 'Ilex Forest'),
  -- Lake of Rage
  (95, 2, 'johto-lake-of-rage', 'Lake of Rage'),
  -- Mt. Moon Square
  (96, 1, 'kanto-mt-moon-square', 'Mt. Moon Square'),
  -- Mt. Mortar
  (97, 2, 'johto-mt-mortar', 'Mt. Mortar'),
  -- Mt. Silver
  (98, 2, 'johto-mt-silver', 'Mt. Silver'),
  -- Mt. Silver Cave
  (99, 2, 'johto-mt-silver-cave', 'Mt. Silver Cave'),
  -- National Park
  (100, 2, 'johto-national-park', 'National Park'),
  -- New Bark Town
  (101, 2, 'johto-new-bark-town', 'New Bark Town'),
  -- Olivine City
  (102, 2, 'johto-olivine-city', 'Olivine City'),
  -- Olivine Gym
  (103, 2, 'johto-olivine-gym', 'Olivine Gym'),
  -- Pewter City
  (104, 1, 'kanto-pewter-city', 'Pewter City'),
  -- Pewter Museum of Science
  (105, 1, 'kanto-pewter-museum-of-science', 'Pewter Museum of Science'),
  -- Pokémon Communication Center
  (106, 2, 'johto-pokemon-communication-center', 'Pokémon Communication Center'),
  -- Route 26
  (107, 1, 'kanto-route-26', 'Route 26'),
  -- Route 27
  (108, 1, 'kanto-route-27', 'Route 27'),
  -- Route 28
  (109, 1, 'kanto-route-28', 'Route 28'),
  -- Route 29
  (110, 2, 'johto-route-29', 'Route 29'),
  -- Route 30
  (111, 2, 'johto-route-30', 'Route 30'),
  -- Route 31
  (112, 2, 'johto-route-31', 'Route 31'),
  -- Route 32
  (113, 2, 'johto-route-32', 'Route 32'),
  -- Route 33
  (114, 2, 'johto-route-33', 'Route 33'),
  -- Route 34
  (115, 2, 'johto-route-34', 'Route 34'),
  -- Route 35
  (116, 2, 'johto-route-35', 'Route 35'),
  -- Route 36
  (117, 2, 'johto-route-36', 'Route 36'),
  -- Route 37
  (118, 2, 'johto-route-37', 'Route 37'),
  -- Route 38
  (119, 2, 'johto-route-38', 'Route 38'),
  -- Route 39
  (120, 2, 'johto-route-39', 'Route 39'),
  -- Route 40
  (121, 2, 'johto-route-40', 'Route 40'),
  -- Route 41
  (122, 2, 'johto-route-41', 'Route 41'),
  -- Route 42
  (123, 2, 'johto-route-42', 'Route 42'),
  -- Route 43
  (124, 2, 'johto-route-43', 'Route 43'),
  -- Route 44
  (125, 2, 'johto-route-44', 'Route 44'),
  -- Route 45
  (126, 2, 'johto-route-45', 'Route 45'),
  -- Route 46
  (127, 2, 'johto-route-46', 'Route 46'),
  -- Route 47
  (128, 2, 'johto-route-47', 'Route 47'),
  -- Route 48
  (129, 2, 'johto-route-48', 'Route 48'),
  -- Ruins of Alph
  (130, 2, 'johto-ruins-of-alph', 'Ruins of Alph'),
  -- Safari Zone
  (131, 2, 'johto-safari-zone', 'Safari Zone'),
  -- Safari Zone Gate
  (132, 2, 'johto-safari-zone-gate', 'Safari Zone Gate'),
  -- Saffron City
  (133, 1, 'kanto-saffron-city', 'Saffron City'),
  -- Slowpoke Well
  (134, 2, 'johto-slowpoke-well', 'Slowpoke Well'),
  -- Sprout Tower
  (135, 2, 'johto-sprout-tower', 'Sprout Tower'),
  -- Tohjo Falls
  (136, 1, 'kanto-tohjo-falls', 'Tohjo Falls'),
  -- Union Cave
  (137, 2, 'johto-union-cave', 'Union Cave'),
  -- Violet City
  (138, 2, 'johto-violet-city', 'Violet City'),
  -- Whirl Islands
  (139, 2, 'johto-whirl-islands', 'Whirl Islands'),
  -- Abandoned Ship
  (140, 3, 'hoenn-abandoned-ship', 'Abandoned Ship'),
  -- Artisan Cave
  (141, 3, 'hoenn-artisan-cave', 'Artisan Cave'),
  -- Battle Frontier (Generation III)
  (142, 3, 'hoenn-battle-frontier-generation-iii', 'Battle Frontier (Generation III)'),
  -- Battle Pike
  (143, 3, 'hoenn-battle-pike', 'Battle Pike'),
  -- Battle Resort
  (144, 3, 'hoenn-battle-resort', 'Battle Resort'),
  -- Cave of Origin
  (145, 3, 'hoenn-cave-of-origin', 'Cave of Origin'),
  -- Contest Hall
  (146, 3, 'hoenn-contest-hall', 'Contest Hall'),
  -- Desert Underpass
  (147, 3, 'hoenn-desert-underpass', 'Desert Underpass'),
  -- Devon Corporation
  (148, 3, 'hoenn-devon-corporation', 'Devon Corporation'),
  -- Dewford Town
  (149, 3, 'hoenn-dewford-town', 'Dewford Town'),
  -- Ever Grande City
  (150, 3, 'hoenn-ever-grande-city', 'Ever Grande City'),
  -- Fiery Path
  (152, 3, 'hoenn-fiery-path', 'Fiery Path'),
  -- Fortree City
  (153, 3, 'hoenn-fortree-city', 'Fortree City'),
  -- Granite Cave
  (154, 3, 'hoenn-granite-cave', 'Granite Cave'),
  -- Jagged Pass
  (155, 3, 'hoenn-jagged-pass', 'Jagged Pass'),
  -- Lavaridge Town
  (156, 3, 'hoenn-lavaridge-town', 'Lavaridge Town'),
  -- Lilycove City
  (157, 3, 'hoenn-lilycove-city', 'Lilycove City'),
  -- Littleroot Town
  (158, 3, 'hoenn-littleroot-town', 'Littleroot Town'),
  -- Magma Hideout (Jagged Pass)
  (159, 3, 'hoenn-magma-hideout-jagged-pass', 'Magma Hideout (Jagged Pass)'),
  -- Meteor Falls
  (160, 3, 'hoenn-meteor-falls', 'Meteor Falls'),
  -- Mirage Cave (north of Fallarbor Town)
  (161, 3, 'hoenn-mirage-cave-north-of-fallarbor-town', 'Mirage Cave (north of Fallarbor Town)'),
  -- Mirage Cave (north of Fortree City)
  (162, 3, 'hoenn-mirage-cave-north-of-fortree-city', 'Mirage Cave (north of Fortree City)'),
  -- Mirage Cave (north of Route 124)
  (163, 3, 'hoenn-mirage-cave-north-of-route-124', 'Mirage Cave (north of Route 124)'),
  -- Mirage Cave (north of Route 132)
  (164, 3, 'hoenn-mirage-cave-north-of-route-132', 'Mirage Cave (north of Route 132)'),
  -- Mirage Cave (south of Route 107)
  (165, 3, 'hoenn-mirage-cave-south-of-route-107', 'Mirage Cave (south of Route 107)'),
  -- Mirage Cave (south of Route 131)
  (166, 3, 'hoenn-mirage-cave-south-of-route-131', 'Mirage Cave (south of Route 131)'),
  -- Mirage Cave (southeast of Route 129)
  (167, 3, 'hoenn-mirage-cave-southeast-of-route-129', 'Mirage Cave (southeast of Route 129)'),
  -- Mirage Cave (west of Route 115)
  (168, 3, 'hoenn-mirage-cave-west-of-route-115', 'Mirage Cave (west of Route 115)'),
  -- Mirage Forest (east of Mossdeep City)
  (169, 3, 'hoenn-mirage-forest-east-of-mossdeep-city', 'Mirage Forest (east of Mossdeep City)'),
  -- Mirage Forest (north of Lilycove City)
  (170, 3, 'hoenn-mirage-forest-north-of-lilycove-city', 'Mirage Forest (north of Lilycove City)'),
  -- Mirage Forest (north of Route 111)
  (171, 3, 'hoenn-mirage-forest-north-of-route-111', 'Mirage Forest (north of Route 111)'),
  -- Mirage Forest (north of Route 124)
  (172, 3, 'hoenn-mirage-forest-north-of-route-124', 'Mirage Forest (north of Route 124)'),
  -- Mirage Forest (south of Route 109)
  (173, 3, 'hoenn-mirage-forest-south-of-route-109', 'Mirage Forest (south of Route 109)'),
  -- Mirage Forest (south of Route 132)
  (174, 3, 'hoenn-mirage-forest-south-of-route-132', 'Mirage Forest (south of Route 132)'),
  -- Mirage Forest (west of Route 105)
  (175, 3, 'hoenn-mirage-forest-west-of-route-105', 'Mirage Forest (west of Route 105)'),
  -- Mirage Forest (west of Route 114)
  (176, 3, 'hoenn-mirage-forest-west-of-route-114', 'Mirage Forest (west of Route 114)'),
  -- Mirage Island (Generation III)
  (177, 3, 'hoenn-mirage-island-generation-iii', 'Mirage Island (Generation III)'),
  -- Mirage Island (north of Route 113)
  (178, 3, 'hoenn-mirage-island-north-of-route-113', 'Mirage Island (north of Route 113)'),
  -- Mirage Island (north of Route 124)
  (179, 3, 'hoenn-mirage-island-north-of-route-124', 'Mirage Island (north of Route 124)'),
  -- Mirage Island (north of Route 125)
  (180, 3, 'hoenn-mirage-island-north-of-route-125', 'Mirage Island (north of Route 125)'),
  -- Mirage Island (south of Pacifidlog Town)
  (181, 3, 'hoenn-mirage-island-south-of-pacifidlog-town', 'Mirage Island (south of Pacifidlog Town)'),
  -- Mirage Island (south of Route 132)
  (182, 3, 'hoenn-mirage-island-south-of-route-132', 'Mirage Island (south of Route 132)'),
  -- Mirage Island (south of Route 134)
  (183, 3, 'hoenn-mirage-island-south-of-route-134', 'Mirage Island (south of Route 134)'),
  -- Mirage Island (west of Dewford Town)
  (184, 3, 'hoenn-mirage-island-west-of-dewford-town', 'Mirage Island (west of Dewford Town)'),
  -- Mirage Island (west of Route 104)
  (185, 3, 'hoenn-mirage-island-west-of-route-104', 'Mirage Island (west of Route 104)'),
  -- Mirage Mountain (east of Route 125)
  (186, 3, 'hoenn-mirage-mountain-east-of-route-125', 'Mirage Mountain (east of Route 125)'),
  -- Mirage Mountain (north of Lilycove City)
  (187, 3, 'hoenn-mirage-mountain-north-of-lilycove-city', 'Mirage Mountain (north of Lilycove City)'),
  -- Mirage Mountain (north of Route 125)
  (188, 3, 'hoenn-mirage-mountain-north-of-route-125', 'Mirage Mountain (north of Route 125)'),
  -- Mirage Mountain (northeast of Route 125)
  (189, 3, 'hoenn-mirage-mountain-northeast-of-route-125', 'Mirage Mountain (northeast of Route 125)'),
  -- Mirage Mountain (south of Route 129)
  (190, 3, 'hoenn-mirage-mountain-south-of-route-129', 'Mirage Mountain (south of Route 129)'),
  -- Mirage Mountain (south of Route 131)
  (191, 3, 'hoenn-mirage-mountain-south-of-route-131', 'Mirage Mountain (south of Route 131)'),
  -- Mirage Mountain (southeast of Route 129)
  (192, 3, 'hoenn-mirage-mountain-southeast-of-route-129', 'Mirage Mountain (southeast of Route 129)'),
  -- Mirage Mountain (west of Route 104)
  (193, 3, 'hoenn-mirage-mountain-west-of-route-104', 'Mirage Mountain (west of Route 104)'),
  -- Mirage Tower
  (194, 3, 'hoenn-mirage-tower', 'Mirage Tower'),
  -- Mossdeep City
  (195, 3, 'hoenn-mossdeep-city', 'Mossdeep City'),
  -- Mt. Pyre
  (196, 3, 'hoenn-mt-pyre', 'Mt. Pyre'),
  -- New Mauville
  (197, 3, 'hoenn-new-mauville', 'New Mauville'),
  -- Pacifidlog Town
  (198, 3, 'hoenn-pacifidlog-town', 'Pacifidlog Town'),
  -- Petalburg City
  (199, 3, 'hoenn-petalburg-city', 'Petalburg City'),
  -- Petalburg Woods
  (200, 3, 'hoenn-petalburg-woods', 'Petalburg Woods'),
  -- Route 101
  (201, 3, 'hoenn-route-101', 'Route 101'),
  -- Route 102
  (202, 3, 'hoenn-route-102', 'Route 102'),
  -- Route 103
  (203, 3, 'hoenn-route-103', 'Route 103'),
  -- Route 104
  (204, 3, 'hoenn-route-104', 'Route 104'),
  -- Route 105
  (205, 3, 'hoenn-route-105', 'Route 105'),
  -- Route 106
  (206, 3, 'hoenn-route-106', 'Route 106'),
  -- Route 107
  (207, 3, 'hoenn-route-107', 'Route 107'),
  -- Route 108
  (208, 3, 'hoenn-route-108', 'Route 108'),
  -- Route 109
  (209, 3, 'hoenn-route-109', 'Route 109'),
  -- Route 110
  (210, 3, 'hoenn-route-110', 'Route 110'),
  -- Route 111
  (211, 3, 'hoenn-route-111', 'Route 111'),
  -- Route 112
  (212, 3, 'hoenn-route-112', 'Route 112'),
  -- Route 113
  (213, 3, 'hoenn-route-113', 'Route 113'),
  -- Route 114
  (214, 3, 'hoenn-route-114', 'Route 114'),
  -- Route 115
  (215, 3, 'hoenn-route-115', 'Route 115'),
  -- Route 116
  (216, 3, 'hoenn-route-116', 'Route 116'),
  -- Route 117
  (217, 3, 'hoenn-route-117', 'Route 117'),
  -- Route 118
  (218, 3, 'hoenn-route-118', 'Route 118'),
  -- Route 119
  (219, 3, 'hoenn-route-119', 'Route 119'),
  -- Route 120
  (220, 3, 'hoenn-route-120', 'Route 120'),
  -- Route 121
  (221, 3, 'hoenn-route-121', 'Route 121'),
  -- Route 122
  (222, 3, 'hoenn-route-122', 'Route 122'),
  -- Route 123
  (223, 3, 'hoenn-route-123', 'Route 123'),
  -- Route 124
  (224, 3, 'hoenn-route-124', 'Route 124'),
  -- Route 125
  (225, 3, 'hoenn-route-125', 'Route 125'),
  -- Route 126
  (226, 3, 'hoenn-route-126', 'Route 126'),
  -- Route 127
  (227, 3, 'hoenn-route-127', 'Route 127'),
  -- Route 128
  (228, 3, 'hoenn-route-128', 'Route 128'),
  -- Route 129
  (229, 3, 'hoenn-route-129', 'Route 129'),
  -- Route 130
  (230, 3, 'hoenn-route-130', 'Route 130'),
  -- Route 131
  (231, 3, 'hoenn-route-131', 'Route 131'),
  -- Route 132
  (232, 3, 'hoenn-route-132', 'Route 132'),
  -- Route 133
  (233, 3, 'hoenn-route-133', 'Route 133'),
  -- Route 134
  (234, 3, 'hoenn-route-134', 'Route 134'),
  -- Rustboro City
  (235, 3, 'hoenn-rustboro-city', 'Rustboro City'),
  -- Rusturf Tunnel
  (236, 3, 'hoenn-rusturf-tunnel', 'Rusturf Tunnel'),
  -- Safari Zone
  (237, 3, 'hoenn-safari-zone', 'Safari Zone'),
  -- Scorched Slab
  (238, 3, 'hoenn-scorched-slab', 'Scorched Slab'),
  -- Sea Mauville
  (239, 3, 'hoenn-sea-mauville', 'Sea Mauville'),
  -- Seafloor Cavern
  (240, 3, 'hoenn-seafloor-cavern', 'Seafloor Cavern'),
  -- Sealed Chamber
  (241, 3, 'hoenn-sealed-chamber', 'Sealed Chamber'),
  -- Shoal Cave
  (242, 3, 'hoenn-shoal-cave', 'Shoal Cave'),
  -- Sky Pillar
  (243, 3, 'hoenn-sky-pillar', 'Sky Pillar'),
  -- Slateport City
  (244, 3, 'hoenn-slateport-city', 'Slateport City'),
  -- Soaring in the sky
  (245, 3, 'hoenn-soaring-in-the-sky', 'Soaring in the sky'),
  -- Sootopolis City
  (246, 3, 'hoenn-sootopolis-city', 'Sootopolis City'),
  -- Southern Island
  (247, 3, 'hoenn-southern-island', 'Southern Island'),
  -- Team Aqua Hideout
  (248, 3, 'hoenn-team-aqua-hideout', 'Team Aqua Hideout'),
  -- Team Magma Hideout
  (249, 3, 'hoenn-team-magma-hideout', 'Team Magma Hideout'),
  -- Underwater
  (250, 3, 'hoenn-underwater', 'Underwater'),
  -- Victory Road
  (252, 3, 'hoenn-victory-road', 'Victory Road'),
  -- Weather Institute
  (253, 3, 'hoenn-weather-institute', 'Weather Institute'),
  -- Acuity Lakefront
  (254, 4, 'sinnoh-acuity-lakefront', 'Acuity Lakefront'),
  -- Big Bluff Cavern
  (255, 4, 'sinnoh-big-bluff-cavern', 'Big Bluff Cavern'),
  -- Bogsunk Cavern
  (256, 4, 'sinnoh-bogsunk-cavern', 'Bogsunk Cavern'),
  -- Canalave City
  (257, 4, 'sinnoh-canalave-city', 'Canalave City'),
  -- Celestic Town
  (258, 4, 'sinnoh-celestic-town', 'Celestic Town'),
  -- Dazzling Cave
  (259, 4, 'sinnoh-dazzling-cave', 'Dazzling Cave'),
  -- Eterna City
  (260, 4, 'sinnoh-eterna-city', 'Eterna City'),
  -- Eterna Condominiums
  (261, 4, 'sinnoh-eterna-condominiums', 'Eterna Condominiums'),
  -- Eterna Forest
  (262, 4, 'sinnoh-eterna-forest', 'Eterna Forest'),
  -- Floaroma Town
  (263, 4, 'sinnoh-floaroma-town', 'Floaroma Town'),
  -- Fountainspring Cave
  (264, 4, 'sinnoh-fountainspring-cave', 'Fountainspring Cave'),
  -- Fuego Ironworks
  (265, 4, 'sinnoh-fuego-ironworks', 'Fuego Ironworks'),
  -- Glacial Cavern
  (266, 4, 'sinnoh-glacial-cavern', 'Glacial Cavern'),
  -- Grassland Cave
  (267, 4, 'sinnoh-grassland-cave', 'Grassland Cave'),
  -- Great Marsh
  (268, 4, 'sinnoh-great-marsh', 'Great Marsh'),
  -- Hearthome City
  (269, 4, 'sinnoh-hearthome-city', 'Hearthome City'),
  -- Icy Cave
  (270, 4, 'sinnoh-icy-cave', 'Icy Cave'),
  -- Iron Island
  (271, 4, 'sinnoh-iron-island', 'Iron Island'),
  -- Lake Acuity
  (272, 4, 'sinnoh-lake-acuity', 'Lake Acuity'),
  -- Lake Valor
  (273, 4, 'sinnoh-lake-valor', 'Lake Valor'),
  -- Lake Verity
  (274, 4, 'sinnoh-lake-verity', 'Lake Verity'),
  -- Lost Tower
  (275, 4, 'sinnoh-lost-tower', 'Lost Tower'),
  -- Maniac Tunnel
  (276, 4, 'sinnoh-maniac-tunnel', 'Maniac Tunnel'),
  -- Mount Coronet
  (277, 4, 'sinnoh-mount-coronet', 'Mount Coronet'),
  -- Old Chateau
  (278, 4, 'sinnoh-old-chateau', 'Old Chateau'),
  -- Oreburgh City
  (279, 4, 'sinnoh-oreburgh-city', 'Oreburgh City'),
  -- Oreburgh Gate
  (280, 4, 'sinnoh-oreburgh-gate', 'Oreburgh Gate'),
  -- Oreburgh Mine
  (281, 4, 'sinnoh-oreburgh-mine', 'Oreburgh Mine'),
  -- Oreburgh Mining Museum
  (282, 4, 'sinnoh-oreburgh-mining-museum', 'Oreburgh Mining Museum'),
  -- Pastoria City
  (283, 4, 'sinnoh-pastoria-city', 'Pastoria City'),
  -- Pokémon League
  (284, 4, 'sinnoh-pokemon-league', 'Pokémon League'),
  -- Ravaged Path
  (285, 4, 'sinnoh-ravaged-path', 'Ravaged Path'),
  -- Resort Area
  (286, 4, 'sinnoh-resort-area', 'Resort Area'),
  -- Riverbank Cave
  (287, 4, 'sinnoh-riverbank-cave', 'Riverbank Cave'),
  -- Rocky Cave
  (288, 4, 'sinnoh-rocky-cave', 'Rocky Cave'),
  -- Route 201
  (289, 4, 'sinnoh-route-201', 'Route 201'),
  -- Route 202
  (290, 4, 'sinnoh-route-202', 'Route 202'),
  -- Route 203
  (291, 4, 'sinnoh-route-203', 'Route 203'),
  -- Route 204
  (292, 4, 'sinnoh-route-204', 'Route 204'),
  -- Route 205
  (293, 4, 'sinnoh-route-205', 'Route 205'),
  -- Route 206
  (294, 4, 'sinnoh-route-206', 'Route 206'),
  -- Route 207
  (295, 4, 'sinnoh-route-207', 'Route 207'),
  -- Route 208
  (296, 4, 'sinnoh-route-208', 'Route 208'),
  -- Route 209
  (297, 4, 'sinnoh-route-209', 'Route 209'),
  -- Route 210
  (298, 4, 'sinnoh-route-210', 'Route 210'),
  -- Route 211
  (299, 4, 'sinnoh-route-211', 'Route 211'),
  -- Route 212
  (300, 4, 'sinnoh-route-212', 'Route 212'),
  -- Route 213
  (301, 4, 'sinnoh-route-213', 'Route 213'),
  -- Route 214
  (302, 4, 'sinnoh-route-214', 'Route 214'),
  -- Route 215
  (303, 4, 'sinnoh-route-215', 'Route 215'),
  -- Route 216
  (304, 4, 'sinnoh-route-216', 'Route 216'),
  -- Route 217
  (305, 4, 'sinnoh-route-217', 'Route 217'),
  -- Route 218
  (306, 4, 'sinnoh-route-218', 'Route 218'),
  -- Route 219
  (307, 4, 'sinnoh-route-219', 'Route 219'),
  -- Route 220
  (308, 4, 'sinnoh-route-220', 'Route 220'),
  -- Route 221
  (309, 4, 'sinnoh-route-221', 'Route 221'),
  -- Route 222
  (310, 4, 'sinnoh-route-222', 'Route 222'),
  -- Route 223
  (311, 4, 'sinnoh-route-223', 'Route 223'),
  -- Route 224
  (312, 4, 'sinnoh-route-224', 'Route 224'),
  -- Route 225
  (313, 4, 'sinnoh-route-225', 'Route 225'),
  -- Route 226
  (314, 4, 'sinnoh-route-226', 'Route 226'),
  -- Route 227
  (315, 4, 'sinnoh-route-227', 'Route 227'),
  -- Route 228
  (316, 4, 'sinnoh-route-228', 'Route 228'),
  -- Route 229
  (317, 4, 'sinnoh-route-229', 'Route 229'),
  -- Route 230
  (318, 4, 'sinnoh-route-230', 'Route 230'),
  -- Sandsear Cave
  (319, 4, 'sinnoh-sandsear-cave', 'Sandsear Cave'),
  -- Sendoff Spring
  (320, 4, 'sinnoh-sendoff-spring', 'Sendoff Spring'),
  -- Snowpoint City
  (321, 4, 'sinnoh-snowpoint-city', 'Snowpoint City'),
  -- Snowpoint Temple
  (322, 4, 'sinnoh-snowpoint-temple', 'Snowpoint Temple'),
  -- Solaceon Ruins
  (323, 4, 'sinnoh-solaceon-ruins', 'Solaceon Ruins'),
  -- Spacious Cave
  (324, 4, 'sinnoh-spacious-cave', 'Spacious Cave'),
  -- Stargleam Cavern
  (325, 4, 'sinnoh-stargleam-cavern', 'Stargleam Cavern'),
  -- Stark Mountain
  (326, 4, 'sinnoh-stark-mountain', 'Stark Mountain'),
  -- Still-Water Cavern
  (327, 4, 'sinnoh-still-water-cavern', 'Still-Water Cavern'),
  -- Sunlit Cavern
  (328, 4, 'sinnoh-sunlit-cavern', 'Sunlit Cavern'),
  -- Sunyshore City
  (329, 4, 'sinnoh-sunyshore-city', 'Sunyshore City'),
  -- Swampy Cave
  (330, 4, 'sinnoh-swampy-cave', 'Swampy Cave'),
  -- Trophy Garden
  (331, 4, 'sinnoh-trophy-garden', 'Trophy Garden'),
  -- Turnback Cave
  (332, 4, 'sinnoh-turnback-cave', 'Turnback Cave'),
  -- Twinleaf Town
  (333, 4, 'sinnoh-twinleaf-town', 'Twinleaf Town'),
  -- Typhlo Cavern
  (334, 4, 'sinnoh-typhlo-cavern', 'Typhlo Cavern'),
  -- Valley Windworks
  (335, 4, 'sinnoh-valley-windworks', 'Valley Windworks'),
  -- Valor Lakefront
  (336, 4, 'sinnoh-valor-lakefront', 'Valor Lakefront'),
  -- Veilstone City
  (337, 4, 'sinnoh-veilstone-city', 'Veilstone City'),
  -- Victory Road
  (338, 4, 'sinnoh-victory-road', 'Victory Road'),
  -- Volcanic Cave
  (339, 4, 'sinnoh-volcanic-cave', 'Volcanic Cave'),
  -- Wayward Cave
  (340, 4, 'sinnoh-wayward-cave', 'Wayward Cave'),
  -- Whiteout Cave
  (341, 4, 'sinnoh-whiteout-cave', 'Whiteout Cave'),
  -- Abundant Shrine
  (342, 5, 'unova-abundant-shrine', 'Abundant Shrine'),
  -- Accumula Town
  (343, 5, 'unova-accumula-town', 'Accumula Town'),
  -- Aspertia City
  (344, 5, 'unova-aspertia-city', 'Aspertia City'),
  -- Castelia City
  (345, 5, 'unova-castelia-city', 'Castelia City'),
  -- Castelia Sewers
  (346, 5, 'unova-castelia-sewers', 'Castelia Sewers'),
  -- Celestial Tower
  (347, 5, 'unova-celestial-tower', 'Celestial Tower'),
  -- Challenger's Cave
  (348, 5, 'unova-challengers-cave', 'Challenger''s Cave'),
  -- Chargestone Cave
  (349, 5, 'unova-chargestone-cave', 'Chargestone Cave'),
  -- Clay Tunnel
  (350, 5, 'unova-clay-tunnel', 'Clay Tunnel'),
  -- Cold Storage
  (351, 5, 'unova-cold-storage', 'Cold Storage'),
  -- Desert Resort
  (352, 5, 'unova-desert-resort', 'Desert Resort'),
  -- Dragonspiral Tower
  (353, 5, 'unova-dragonspiral-tower', 'Dragonspiral Tower'),
  -- Dreamyard
  (354, 5, 'unova-dreamyard', 'Dreamyard'),
  -- Driftveil City
  (355, 5, 'unova-driftveil-city', 'Driftveil City'),
  -- Driftveil Drawbridge
  (356, 5, 'unova-driftveil-drawbridge', 'Driftveil Drawbridge'),
  -- Floccesy Ranch
  (357, 5, 'unova-floccesy-ranch', 'Floccesy Ranch'),
  -- Floccesy Town
  (358, 5, 'unova-floccesy-town', 'Floccesy Town'),
  -- Giant Chasm
  (359, 5, 'unova-giant-chasm', 'Giant Chasm'),
  -- Hidden Grotto
  (360, 5, 'unova-hidden-grotto', 'Hidden Grotto'),
  -- Humilau City
  (361, 5, 'unova-humilau-city', 'Humilau City'),
  -- Icirrus City
  (362, 5, 'unova-icirrus-city', 'Icirrus City'),
  -- Lostlorn Forest
  (363, 5, 'unova-lostlorn-forest', 'Lostlorn Forest'),
  -- Marvelous Bridge
  (364, 5, 'unova-marvelous-bridge', 'Marvelous Bridge'),
  -- Mistralton Cave
  (365, 5, 'unova-mistralton-cave', 'Mistralton Cave'),
  -- Moor of Icirrus
  (366, 5, 'unova-moor-of-icirrus', 'Moor of Icirrus'),
  -- Nacrene City
  (367, 5, 'unova-nacrene-city', 'Nacrene City'),
  -- Nimbasa City
  (368, 5, 'unova-nimbasa-city', 'Nimbasa City'),
  -- Nuvema Town
  (369, 5, 'unova-nuvema-town', 'Nuvema Town'),
  -- P2 Laboratory
  (370, 5, 'unova-p2-laboratory', 'P2 Laboratory'),
  -- Pinwheel Forest
  (371, 5, 'unova-pinwheel-forest', 'Pinwheel Forest'),
  -- Relic Castle
  (372, 5, 'unova-relic-castle', 'Relic Castle'),
  -- Relic Passage
  (373, 5, 'unova-relic-passage', 'Relic Passage'),
  -- Reversal Mountain
  (374, 5, 'unova-reversal-mountain', 'Reversal Mountain'),
  -- Route 1
  (375, 5, 'unova-route-1', 'Route 1'),
  -- Route 10
  (376, 5, 'unova-route-10', 'Route 10'),
  -- Route 11
  (377, 5, 'unova-route-11', 'Route 11'),
  -- Route 12
  (378, 5, 'unova-route-12', 'Route 12'),
  -- Route 13
  (379, 5, 'unova-route-13', 'Route 13'),
  -- Route 14
  (380, 5, 'unova-route-14', 'Route 14'),
  -- Route 15
  (381, 5, 'unova-route-15', 'Route 15'),
  -- Route 16
  (382, 5, 'unova-route-16', 'Route 16'),
  -- Route 17
  (383, 5, 'unova-route-17', 'Route 17'),
  -- Route 18
  (384, 5, 'unova-route-18', 'Route 18'),
  -- Route 19
  (385, 5, 'unova-route-19', 'Route 19'),
  -- Route 2
  (386, 5, 'unova-route-2', 'Route 2'),
  -- Route 20
  (387, 5, 'unova-route-20', 'Route 20'),
  -- Route 21
  (388, 5, 'unova-route-21', 'Route 21'),
  -- Route 22
  (389, 5, 'unova-route-22', 'Route 22'),
  -- Route 23
  (390, 5, 'unova-route-23', 'Route 23'),
  -- Route 3
  (391, 5, 'unova-route-3', 'Route 3'),
  -- Route 4
  (392, 5, 'unova-route-4', 'Route 4'),
  -- Route 5
  (393, 5, 'unova-route-5', 'Route 5'),
  -- Route 6
  (394, 5, 'unova-route-6', 'Route 6'),
  -- Route 7
  (395, 5, 'unova-route-7', 'Route 7'),
  -- Route 8
  (396, 5, 'unova-route-8', 'Route 8'),
  -- Route 9
  (397, 5, 'unova-route-9', 'Route 9'),
  -- Seaside Cave
  (398, 5, 'unova-seaside-cave', 'Seaside Cave'),
  -- Strange House
  (399, 5, 'unova-strange-house', 'Strange House'),
  -- Striaton City
  (400, 5, 'unova-striaton-city', 'Striaton City'),
  -- Twist Mountain
  (401, 5, 'unova-twist-mountain', 'Twist Mountain'),
  -- Undella Bay
  (402, 5, 'unova-undella-bay', 'Undella Bay'),
  -- Undella Town
  (403, 5, 'unova-undella-town', 'Undella Town'),
  -- Underground Ruins
  (404, 5, 'unova-underground-ruins', 'Underground Ruins'),
  -- Victory Road (Black 2 and White 2)
  (405, 5, 'unova-victory-road-black-2-and-white-2', 'Victory Road (Black 2 and White 2)'),
  -- Victory Road (Black and White)
  (406, 5, 'unova-victory-road-black-and-white', 'Victory Road (Black and White)'),
  -- Village Bridge
  (407, 5, 'unova-village-bridge', 'Village Bridge'),
  -- Virbank City
  (408, 5, 'unova-virbank-city', 'Virbank City'),
  -- Virbank Complex
  (409, 5, 'unova-virbank-complex', 'Virbank Complex'),
  -- Wellspring Cave
  (410, 5, 'unova-wellspring-cave', 'Wellspring Cave'),
  -- White Forest
  (411, 5, 'unova-white-forest', 'White Forest'),
  -- Ambrette Town
  (412, 6, 'kalos-ambrette-town', 'Ambrette Town'),
  -- Aquacorde Town
  (413, 6, 'kalos-aquacorde-town', 'Aquacorde Town'),
  -- Azure Bay
  (414, 6, 'kalos-azure-bay', 'Azure Bay'),
  -- Berry fields
  (415, 6, 'kalos-berry-fields', 'Berry fields'),
  -- Bug-type Hyperspace Wild Zones
  (416, 6, 'kalos-bug-type-hyperspace-wild-zones', 'Bug-type Hyperspace Wild Zones'),
  -- Café Soleil
  (417, 6, 'kalos-cafe-soleil', 'Café Soleil'),
  -- Camphrier Town
  (418, 6, 'kalos-camphrier-town', 'Camphrier Town'),
  -- Connecting Cave
  (419, 6, 'kalos-connecting-cave', 'Connecting Cave'),
  -- Coumarine City
  (420, 6, 'kalos-coumarine-city', 'Coumarine City'),
  -- Couriway Town
  (421, 6, 'kalos-couriway-town', 'Couriway Town'),
  -- Cyllage City
  (422, 6, 'kalos-cyllage-city', 'Cyllage City'),
  -- Dark-type Hyperspace Wild Zones
  (423, 6, 'kalos-dark-type-hyperspace-wild-zones', 'Dark-type Hyperspace Wild Zones'),
  -- Dragon-type Hyperspace Wild Zones
  (424, 6, 'kalos-dragon-type-hyperspace-wild-zones', 'Dragon-type Hyperspace Wild Zones'),
  -- Electric-type Hyperspace Wild Zones
  (425, 6, 'kalos-electric-type-hyperspace-wild-zones', 'Electric-type Hyperspace Wild Zones'),
  -- Fairy-type Hyperspace Wild Zones
  (426, 6, 'kalos-fairy-type-hyperspace-wild-zones', 'Fairy-type Hyperspace Wild Zones'),
  -- Fighting-type Hyperspace Wild Zones
  (427, 6, 'kalos-fighting-type-hyperspace-wild-zones', 'Fighting-type Hyperspace Wild Zones'),
  -- Fire-type Hyperspace Wild Zones
  (428, 6, 'kalos-fire-type-hyperspace-wild-zones', 'Fire-type Hyperspace Wild Zones'),
  -- Flying-type Hyperspace Wild Zones
  (429, 6, 'kalos-flying-type-hyperspace-wild-zones', 'Flying-type Hyperspace Wild Zones'),
  -- Friend Safari
  (430, 6, 'kalos-friend-safari', 'Friend Safari'),
  -- Frost Cavern
  (431, 6, 'kalos-frost-cavern', 'Frost Cavern'),
  -- Geosenge Town
  (432, 6, 'kalos-geosenge-town', 'Geosenge Town'),
  -- Ghost-type Hyperspace Wild Zones
  (433, 6, 'kalos-ghost-type-hyperspace-wild-zones', 'Ghost-type Hyperspace Wild Zones'),
  -- Glittering Cave
  (434, 6, 'kalos-glittering-cave', 'Glittering Cave'),
  -- Grass-type Hyperspace Wild Zones
  (435, 6, 'kalos-grass-type-hyperspace-wild-zones', 'Grass-type Hyperspace Wild Zones'),
  -- Ground-type Hyperspace Wild Zones
  (436, 6, 'kalos-ground-type-hyperspace-wild-zones', 'Ground-type Hyperspace Wild Zones'),
  -- Hotel Z
  (437, 6, 'kalos-hotel-z', 'Hotel Z'),
  -- Ice-type Hyperspace Wild Zones
  (438, 6, 'kalos-ice-type-hyperspace-wild-zones', 'Ice-type Hyperspace Wild Zones'),
  -- Laverre City
  (439, 6, 'kalos-laverre-city', 'Laverre City'),
  -- Lost Hotel
  (440, 6, 'kalos-lost-hotel', 'Lost Hotel'),
  -- Lumiose Museum
  (441, 6, 'kalos-lumiose-museum', 'Lumiose Museum'),
  -- Normal-type Hyperspace Wild Zones
  (442, 6, 'kalos-normal-type-hyperspace-wild-zones', 'Normal-type Hyperspace Wild Zones'),
  -- Parfum Palace
  (443, 6, 'kalos-parfum-palace', 'Parfum Palace'),
  -- Poison-type Hyperspace Wild Zones
  (444, 6, 'kalos-poison-type-hyperspace-wild-zones', 'Poison-type Hyperspace Wild Zones'),
  -- Pokémon Research Lab
  (445, 6, 'kalos-pokemon-research-lab', 'Pokémon Research Lab'),
  -- Pokémon Village
  (446, 6, 'kalos-pokemon-village', 'Pokémon Village'),
  -- Psychic-type Hyperspace Wild Zones
  (447, 6, 'kalos-psychic-type-hyperspace-wild-zones', 'Psychic-type Hyperspace Wild Zones'),
  -- Quasartico Inc. (building)
  (448, 6, 'kalos-quasartico-inc-building', 'Quasartico Inc. (building)'),
  -- Reflection Cave
  (449, 6, 'kalos-reflection-cave', 'Reflection Cave'),
  -- Rock-type Hyperspace Wild Zones
  (450, 6, 'kalos-rock-type-hyperspace-wild-zones', 'Rock-type Hyperspace Wild Zones'),
  -- Route 10
  (451, 6, 'kalos-route-10', 'Route 10'),
  -- Route 11
  (452, 6, 'kalos-route-11', 'Route 11'),
  -- Route 12
  (453, 6, 'kalos-route-12', 'Route 12'),
  -- Route 13
  (454, 6, 'kalos-route-13', 'Route 13'),
  -- Route 14
  (455, 6, 'kalos-route-14', 'Route 14'),
  -- Route 15
  (456, 6, 'kalos-route-15', 'Route 15'),
  -- Route 16
  (457, 6, 'kalos-route-16', 'Route 16'),
  -- Route 17
  (458, 6, 'kalos-route-17', 'Route 17'),
  -- Route 18
  (459, 6, 'kalos-route-18', 'Route 18'),
  -- Route 19
  (460, 6, 'kalos-route-19', 'Route 19'),
  -- Route 2
  (461, 6, 'kalos-route-2', 'Route 2'),
  -- Route 20
  (462, 6, 'kalos-route-20', 'Route 20'),
  -- Route 21
  (463, 6, 'kalos-route-21', 'Route 21'),
  -- Route 22
  (464, 6, 'kalos-route-22', 'Route 22'),
  -- Route 3
  (465, 6, 'kalos-route-3', 'Route 3'),
  -- Route 4
  (466, 6, 'kalos-route-4', 'Route 4'),
  -- Route 5
  (467, 6, 'kalos-route-5', 'Route 5'),
  -- Route 6
  (468, 6, 'kalos-route-6', 'Route 6'),
  -- Route 7
  (469, 6, 'kalos-route-7', 'Route 7'),
  -- Route 8
  (470, 6, 'kalos-route-8', 'Route 8'),
  -- Route 9
  (471, 6, 'kalos-route-9', 'Route 9'),
  -- Saison Canal
  (472, 6, 'kalos-saison-canal', 'Saison Canal'),
  -- Santalune City
  (473, 6, 'kalos-santalune-city', 'Santalune City'),
  -- Santalune Forest
  (474, 6, 'kalos-santalune-forest', 'Santalune Forest'),
  -- Shalour City
  (475, 6, 'kalos-shalour-city', 'Shalour City'),
  -- Snowbelle City
  (476, 6, 'kalos-snowbelle-city', 'Snowbelle City'),
  -- South Boulevard
  (477, 6, 'kalos-south-boulevard', 'South Boulevard'),
  -- Steel-type Hyperspace Wild Zones
  (478, 6, 'kalos-steel-type-hyperspace-wild-zones', 'Steel-type Hyperspace Wild Zones'),
  -- Terminus Cave
  (479, 6, 'kalos-terminus-cave', 'Terminus Cave'),
  -- Tower of Mastery
  (480, 6, 'kalos-tower-of-mastery', 'Tower of Mastery'),
  -- Vaniville Town
  (481, 6, 'kalos-vaniville-town', 'Vaniville Town'),
  -- Victory Road
  (482, 6, 'kalos-victory-road', 'Victory Road'),
  -- Water-type Hyperspace Wild Zones
  (483, 6, 'kalos-water-type-hyperspace-wild-zones', 'Water-type Hyperspace Wild Zones'),
  -- Wild Zone 1
  (484, 6, 'kalos-wild-zone-1', 'Wild Zone 1'),
  -- Wild Zone 10
  (485, 6, 'kalos-wild-zone-10', 'Wild Zone 10'),
  -- Wild Zone 11
  (486, 6, 'kalos-wild-zone-11', 'Wild Zone 11'),
  -- Wild Zone 12
  (487, 6, 'kalos-wild-zone-12', 'Wild Zone 12'),
  -- Wild Zone 13
  (488, 6, 'kalos-wild-zone-13', 'Wild Zone 13'),
  -- Wild Zone 14
  (489, 6, 'kalos-wild-zone-14', 'Wild Zone 14'),
  -- Wild Zone 15
  (490, 6, 'kalos-wild-zone-15', 'Wild Zone 15'),
  -- Wild Zone 16
  (491, 6, 'kalos-wild-zone-16', 'Wild Zone 16'),
  -- Wild Zone 17
  (492, 6, 'kalos-wild-zone-17', 'Wild Zone 17'),
  -- Wild Zone 18
  (493, 6, 'kalos-wild-zone-18', 'Wild Zone 18'),
  -- Wild Zone 19
  (494, 6, 'kalos-wild-zone-19', 'Wild Zone 19'),
  -- Wild Zone 2
  (495, 6, 'kalos-wild-zone-2', 'Wild Zone 2'),
  -- Wild Zone 20
  (496, 6, 'kalos-wild-zone-20', 'Wild Zone 20'),
  -- Wild Zone 3
  (497, 6, 'kalos-wild-zone-3', 'Wild Zone 3'),
  -- Wild Zone 4
  (498, 6, 'kalos-wild-zone-4', 'Wild Zone 4'),
  -- Wild Zone 5
  (499, 6, 'kalos-wild-zone-5', 'Wild Zone 5'),
  -- Wild Zone 6
  (500, 6, 'kalos-wild-zone-6', 'Wild Zone 6'),
  -- Wild Zone 7
  (501, 6, 'kalos-wild-zone-7', 'Wild Zone 7'),
  -- Wild Zone 8
  (502, 6, 'kalos-wild-zone-8', 'Wild Zone 8'),
  -- Wild Zone 9
  (503, 6, 'kalos-wild-zone-9', 'Wild Zone 9'),
  -- Aether House
  (504, 7, 'alola-aether-house', 'Aether House'),
  -- Aether Paradise
  (505, 7, 'alola-aether-paradise', 'Aether Paradise'),
  -- Akala Outskirts
  (506, 7, 'alola-akala-outskirts', 'Akala Outskirts'),
  -- Ancient Poni Path
  (507, 7, 'alola-ancient-poni-path', 'Ancient Poni Path'),
  -- Blush Mountain
  (508, 7, 'alola-blush-mountain', 'Blush Mountain'),
  -- Brooklet Hill
  (509, 7, 'alola-brooklet-hill', 'Brooklet Hill'),
  -- Diglett's Tunnel
  (510, 7, 'alola-digletts-tunnel', 'Diglett''s Tunnel'),
  -- Dividing Peak Tunnel
  (511, 7, 'alola-dividing-peak-tunnel', 'Dividing Peak Tunnel'),
  -- Exeggutor Island
  (512, 7, 'alola-exeggutor-island', 'Exeggutor Island'),
  -- Haina Desert
  (513, 7, 'alola-haina-desert', 'Haina Desert'),
  -- Hano Beach
  (514, 7, 'alola-hano-beach', 'Hano Beach'),
  -- Hau'oli Cemetery
  (515, 7, 'alola-hauoli-cemetery', 'Hau''oli Cemetery'),
  -- Hau'oli City
  (516, 7, 'alola-hauoli-city', 'Hau''oli City'),
  -- Heahea Beach
  (517, 7, 'alola-heahea-beach', 'Heahea Beach'),
  -- Iki Town
  (519, 7, 'alola-iki-town', 'Iki Town'),
  -- Kala'e Bay
  (520, 7, 'alola-kalae-bay', 'Kala''e Bay'),
  -- Konikoni City
  (521, 7, 'alola-konikoni-city', 'Konikoni City'),
  -- Lake of the Moone
  (522, 7, 'alola-lake-of-the-moone', 'Lake of the Moone'),
  -- Lake of the Sunne
  (523, 7, 'alola-lake-of-the-sunne', 'Lake of the Sunne'),
  -- Lush Jungle
  (524, 7, 'alola-lush-jungle', 'Lush Jungle'),
  -- Malie City
  (525, 7, 'alola-malie-city', 'Malie City'),
  -- Malie Garden
  (526, 7, 'alola-malie-garden', 'Malie Garden'),
  -- Melemele Meadow
  (527, 7, 'alola-melemele-meadow', 'Melemele Meadow'),
  -- Melemele Sea
  (528, 7, 'alola-melemele-sea', 'Melemele Sea'),
  -- Memorial Hill
  (529, 7, 'alola-memorial-hill', 'Memorial Hill'),
  -- Mount Hokulani
  (530, 7, 'alola-mount-hokulani', 'Mount Hokulani'),
  -- Mount Lanakila
  (531, 7, 'alola-mount-lanakila', 'Mount Lanakila'),
  -- Paniola Ranch
  (532, 7, 'alola-paniola-ranch', 'Paniola Ranch'),
  -- Paniola Town
  (533, 7, 'alola-paniola-town', 'Paniola Town'),
  -- Pikachu Valley
  (534, 7, 'alola-pikachu-valley', 'Pikachu Valley'),
  -- Poni Breaker Coast
  (535, 7, 'alola-poni-breaker-coast', 'Poni Breaker Coast'),
  -- Poni Coast
  (536, 7, 'alola-poni-coast', 'Poni Coast'),
  -- Poni Gauntlet
  (537, 7, 'alola-poni-gauntlet', 'Poni Gauntlet'),
  -- Poni Grove
  (538, 7, 'alola-poni-grove', 'Poni Grove'),
  -- Poni Meadow
  (539, 7, 'alola-poni-meadow', 'Poni Meadow'),
  -- Poni Plains
  (540, 7, 'alola-poni-plains', 'Poni Plains'),
  -- Poni Wilds
  (541, 7, 'alola-poni-wilds', 'Poni Wilds'),
  -- Resolution Cave
  (542, 7, 'alola-resolution-cave', 'Resolution Cave'),
  -- Route 1
  (543, 7, 'alola-route-1', 'Route 1'),
  -- Route 10
  (544, 7, 'alola-route-10', 'Route 10'),
  -- Route 11
  (545, 7, 'alola-route-11', 'Route 11'),
  -- Route 12
  (546, 7, 'alola-route-12', 'Route 12'),
  -- Route 13
  (547, 7, 'alola-route-13', 'Route 13'),
  -- Route 14
  (548, 7, 'alola-route-14', 'Route 14'),
  -- Route 15
  (549, 7, 'alola-route-15', 'Route 15'),
  -- Route 16
  (550, 7, 'alola-route-16', 'Route 16'),
  -- Route 17
  (551, 7, 'alola-route-17', 'Route 17'),
  -- Route 2
  (552, 7, 'alola-route-2', 'Route 2'),
  -- Route 3
  (553, 7, 'alola-route-3', 'Route 3'),
  -- Route 4
  (554, 7, 'alola-route-4', 'Route 4'),
  -- Route 5
  (555, 7, 'alola-route-5', 'Route 5'),
  -- Route 6
  (556, 7, 'alola-route-6', 'Route 6'),
  -- Route 7
  (557, 7, 'alola-route-7', 'Route 7'),
  -- Route 8
  (558, 7, 'alola-route-8', 'Route 8'),
  -- Route 9
  (559, 7, 'alola-route-9', 'Route 9'),
  -- Royal Avenue
  (560, 7, 'alola-royal-avenue', 'Royal Avenue'),
  -- Sandy Cave
  (561, 7, 'alola-sandy-cave', 'Sandy Cave'),
  -- Seafolk Village
  (562, 7, 'alola-seafolk-village', 'Seafolk Village'),
  -- Seaward Cave
  (563, 7, 'alola-seaward-cave', 'Seaward Cave'),
  -- Tapu Village
  (564, 7, 'alola-tapu-village', 'Tapu Village'),
  -- Ten Carat Hill
  (565, 7, 'alola-ten-carat-hill', 'Ten Carat Hill'),
  -- Thrifty Megamart (Abandoned Site)
  (566, 7, 'alola-thrifty-megamart-abandoned-site', 'Thrifty Megamart (Abandoned Site)'),
  -- Trainers' School
  (567, 7, 'alola-trainers-school', 'Trainers'' School'),
  -- Ula'ula Beach
  (568, 7, 'alola-ulaula-beach', 'Ula''ula Beach'),
  -- Ula'ula Meadow
  (569, 7, 'alola-ulaula-meadow', 'Ula''ula Meadow'),
  -- Vast Poni Canyon
  (570, 7, 'alola-vast-poni-canyon', 'Vast Poni Canyon'),
  -- Verdant Cavern
  (571, 7, 'alola-verdant-cavern', 'Verdant Cavern'),
  -- Wela Volcano Park
  (572, 7, 'alola-wela-volcano-park', 'Wela Volcano Park'),
  -- Axew's Eye
  (573, 8, 'galar-axews-eye', 'Axew''s Eye'),
  -- Ballimere Lake
  (574, 8, 'galar-ballimere-lake', 'Ballimere Lake'),
  -- Ballonlea Stadium
  (575, 8, 'galar-ballonlea-stadium', 'Ballonlea Stadium'),
  -- Battle Tower
  (576, 8, 'galar-battle-tower', 'Battle Tower'),
  -- Brawlers' Cave
  (577, 8, 'galar-brawlers-cave', 'Brawlers'' Cave'),
  -- Bridge Field
  (578, 8, 'galar-bridge-field', 'Bridge Field'),
  -- Challenge Beach
  (579, 8, 'galar-challenge-beach', 'Challenge Beach'),
  -- Challenge Road
  (580, 8, 'galar-challenge-road', 'Challenge Road'),
  -- Circhester
  (581, 8, 'galar-circhester', 'Circhester'),
  -- Courageous Cavern
  (582, 8, 'galar-courageous-cavern', 'Courageous Cavern'),
  -- Crown Shrine
  (583, 8, 'galar-crown-shrine', 'Crown Shrine'),
  -- Dappled Grove
  (584, 8, 'galar-dappled-grove', 'Dappled Grove'),
  -- Dusty Bowl
  (585, 8, 'galar-dusty-bowl', 'Dusty Bowl'),
  -- Dyna Tree Hill
  (586, 8, 'galar-dyna-tree-hill', 'Dyna Tree Hill'),
  -- East Lake Axewell
  (587, 8, 'galar-east-lake-axewell', 'East Lake Axewell'),
  -- Fields of Honor
  (588, 8, 'galar-fields-of-honor', 'Fields of Honor'),
  -- Forest of Focus
  (589, 8, 'galar-forest-of-focus', 'Forest of Focus'),
  -- Freezington
  (590, 8, 'galar-freezington', 'Freezington'),
  -- Frigid Sea
  (591, 8, 'galar-frigid-sea', 'Frigid Sea'),
  -- Frostpoint Field
  (592, 8, 'galar-frostpoint-field', 'Frostpoint Field'),
  -- Galar Mine
  (593, 8, 'galar-galar-mine', 'Galar Mine'),
  -- Galar Mine No. 2
  (594, 8, 'galar-galar-mine-no-2', 'Galar Mine No. 2'),
  -- Giant's Bed
  (595, 8, 'galar-giants-bed', 'Giant''s Bed'),
  -- Giant's Cap
  (596, 8, 'galar-giants-cap', 'Giant''s Cap'),
  -- Giant's Foot
  (597, 8, 'galar-giants-foot', 'Giant''s Foot'),
  -- Giant's Mirror
  (598, 8, 'galar-giants-mirror', 'Giant''s Mirror'),
  -- Giant's Seat
  (599, 8, 'galar-giants-seat', 'Giant''s Seat'),
  -- Glimwood Tangle
  (600, 8, 'galar-glimwood-tangle', 'Glimwood Tangle'),
  -- Hammerlocke
  (601, 8, 'galar-hammerlocke', 'Hammerlocke'),
  -- Hammerlocke Hills
  (602, 8, 'galar-hammerlocke-hills', 'Hammerlocke Hills'),
  -- Honeycalm Island
  (603, 8, 'galar-honeycalm-island', 'Honeycalm Island'),
  -- Honeycalm Sea
  (604, 8, 'galar-honeycalm-sea', 'Honeycalm Sea'),
  -- Hulbury
  (605, 8, 'galar-hulbury', 'Hulbury'),
  -- Iceberg Ruins
  (606, 8, 'galar-iceberg-ruins', 'Iceberg Ruins'),
  -- Insular Sea
  (607, 8, 'galar-insular-sea', 'Insular Sea'),
  -- Iron Ruins
  (608, 8, 'galar-iron-ruins', 'Iron Ruins'),
  -- Lake of Outrage
  (609, 8, 'galar-lake-of-outrage', 'Lake of Outrage'),
  -- Lakeside Cave
  (610, 8, 'galar-lakeside-cave', 'Lakeside Cave'),
  -- Loop Lagoon
  (611, 8, 'galar-loop-lagoon', 'Loop Lagoon'),
  -- Master Dojo
  (612, 8, 'galar-master-dojo', 'Master Dojo'),
  -- Max Lair
  (613, 8, 'galar-max-lair', 'Max Lair'),
  -- Meetup Spot
  (614, 8, 'galar-meetup-spot', 'Meetup Spot'),
  -- Motostoke
  (615, 8, 'galar-motostoke', 'Motostoke'),
  -- Motostoke Outskirts
  (616, 8, 'galar-motostoke-outskirts', 'Motostoke Outskirts'),
  -- Motostoke Riverbank
  (617, 8, 'galar-motostoke-riverbank', 'Motostoke Riverbank'),
  -- Motostoke Stadium
  (618, 8, 'galar-motostoke-stadium', 'Motostoke Stadium'),
  -- North Lake Miloch
  (619, 8, 'galar-north-lake-miloch', 'North Lake Miloch'),
  -- Old Cemetery
  (620, 8, 'galar-old-cemetery', 'Old Cemetery'),
  -- Path to the Peak
  (621, 8, 'galar-path-to-the-peak', 'Path to the Peak'),
  -- Postwick
  (622, 8, 'galar-postwick', 'Postwick'),
  -- Potbottom Desert
  (623, 8, 'galar-potbottom-desert', 'Potbottom Desert'),
  -- Roaring-Sea Caves
  (624, 8, 'galar-roaring-sea-caves', 'Roaring-Sea Caves'),
  -- Rock Peak Ruins
  (625, 8, 'galar-rock-peak-ruins', 'Rock Peak Ruins'),
  -- Rolling Fields
  (626, 8, 'galar-rolling-fields', 'Rolling Fields'),
  -- Route 1
  (627, 8, 'galar-route-1', 'Route 1'),
  -- Route 10
  (628, 8, 'galar-route-10', 'Route 10'),
  -- Route 2
  (629, 8, 'galar-route-2', 'Route 2'),
  -- Route 3
  (630, 8, 'galar-route-3', 'Route 3'),
  -- Route 4
  (631, 8, 'galar-route-4', 'Route 4'),
  -- Route 5
  (632, 8, 'galar-route-5', 'Route 5'),
  -- Route 6
  (633, 8, 'galar-route-6', 'Route 6'),
  -- Route 7
  (634, 8, 'galar-route-7', 'Route 7'),
  -- Route 8
  (635, 8, 'galar-route-8', 'Route 8'),
  -- Route 9
  (636, 8, 'galar-route-9', 'Route 9'),
  -- Slippery Slope
  (637, 8, 'galar-slippery-slope', 'Slippery Slope'),
  -- Slumbering Weald
  (638, 8, 'galar-slumbering-weald', 'Slumbering Weald'),
  -- Snowslide Slope
  (639, 8, 'galar-snowslide-slope', 'Snowslide Slope'),
  -- Soothing Wetlands
  (640, 8, 'galar-soothing-wetlands', 'Soothing Wetlands'),
  -- South Lake Miloch
  (641, 8, 'galar-south-lake-miloch', 'South Lake Miloch'),
  -- Spikemuth
  (642, 8, 'galar-spikemuth', 'Spikemuth'),
  -- Split-Decision Ruins
  (643, 8, 'galar-split-decision-ruins', 'Split-Decision Ruins'),
  -- Stepping-Stone Sea
  (644, 8, 'galar-stepping-stone-sea', 'Stepping-Stone Sea'),
  -- Stony Wilderness
  (645, 8, 'galar-stony-wilderness', 'Stony Wilderness'),
  -- Stow-on-Side
  (646, 8, 'galar-stow-on-side', 'Stow-on-Side'),
  -- Three-Point Pass
  (647, 8, 'galar-three-point-pass', 'Three-Point Pass'),
  -- Tower summit
  (648, 8, 'galar-tower-summit', 'Tower summit'),
  -- Training Lowlands
  (649, 8, 'galar-training-lowlands', 'Training Lowlands'),
  -- Tunnel to the Top
  (650, 8, 'galar-tunnel-to-the-top', 'Tunnel to the Top'),
  -- Turffield
  (651, 8, 'galar-turffield', 'Turffield'),
  -- Turffield Stadium
  (652, 8, 'galar-turffield-stadium', 'Turffield Stadium'),
  -- Warm-Up Tunnel
  (653, 8, 'galar-warm-up-tunnel', 'Warm-Up Tunnel'),
  -- Watchtower Lair
  (654, 8, 'galar-watchtower-lair', 'Watchtower Lair'),
  -- Watchtower Ruins
  (655, 8, 'galar-watchtower-ruins', 'Watchtower Ruins'),
  -- Wedgehurst
  (656, 8, 'galar-wedgehurst', 'Wedgehurst'),
  -- West Lake Axewell
  (657, 8, 'galar-west-lake-axewell', 'West Lake Axewell'),
  -- Workout Sea
  (658, 8, 'galar-workout-sea', 'Workout Sea'),
  -- Wyndon
  (659, 8, 'galar-wyndon', 'Wyndon'),
  -- Aipom Hill
  (660, 9, 'hisui-aipom-hill', 'Aipom Hill'),
  -- Ancient Quarry
  (661, 9, 'hisui-ancient-quarry', 'Ancient Quarry'),
  -- Arena's Approach
  (662, 9, 'hisui-arenas-approach', 'Arena''s Approach'),
  -- Aspiration Hill
  (663, 9, 'hisui-aspiration-hill', 'Aspiration Hill'),
  -- Avalanche Slopes
  (664, 9, 'hisui-avalanche-slopes', 'Avalanche Slopes'),
  -- Avalugg's Legacy
  (665, 9, 'hisui-avaluggs-legacy', 'Avalugg''s Legacy'),
  -- Bathers' Lagoon
  (666, 9, 'hisui-bathers-lagoon', 'Bathers'' Lagoon'),
  -- Bolderoll Ravine
  (667, 9, 'hisui-bolderoll-ravine', 'Bolderoll Ravine'),
  -- Bolderoll Slope
  (668, 9, 'hisui-bolderoll-slope', 'Bolderoll Slope'),
  -- Bonechill Wastes
  (669, 9, 'hisui-bonechill-wastes', 'Bonechill Wastes'),
  -- Castaway Shore
  (670, 9, 'hisui-castaway-shore', 'Castaway Shore'),
  -- Celestica Ruins
  (671, 9, 'hisui-celestica-ruins', 'Celestica Ruins'),
  -- Celestica Trail
  (672, 9, 'hisui-celestica-trail', 'Celestica Trail'),
  -- Clamberclaw Cliffs
  (673, 9, 'hisui-clamberclaw-cliffs', 'Clamberclaw Cliffs'),
  -- Cloudcap Pass
  (674, 9, 'hisui-cloudcap-pass', 'Cloudcap Pass'),
  -- Cloudpool Ridge
  (675, 9, 'hisui-cloudpool-ridge', 'Cloudpool Ridge'),
  -- Cottonsedge Prairie
  (676, 9, 'hisui-cottonsedge-prairie', 'Cottonsedge Prairie'),
  -- Crevasse Passage
  (677, 9, 'hisui-crevasse-passage', 'Crevasse Passage'),
  -- Crossing Slope
  (678, 9, 'hisui-crossing-slope', 'Crossing Slope'),
  -- Deadwood Haunt
  (679, 9, 'hisui-deadwood-haunt', 'Deadwood Haunt'),
  -- Deertrack Heights
  (680, 9, 'hisui-deertrack-heights', 'Deertrack Heights'),
  -- Deertrack Path
  (681, 9, 'hisui-deertrack-path', 'Deertrack Path'),
  -- Diamond Heath
  (682, 9, 'hisui-diamond-heath', 'Diamond Heath'),
  -- Diamond Settlement
  (683, 9, 'hisui-diamond-settlement', 'Diamond Settlement'),
  -- Droning Meadow
  (684, 9, 'hisui-droning-meadow', 'Droning Meadow'),
  -- Fabled Spring
  (685, 9, 'hisui-fabled-spring', 'Fabled Spring'),
  -- Firespit Island
  (686, 9, 'hisui-firespit-island', 'Firespit Island'),
  -- Floaro Gardens
  (687, 9, 'hisui-floaro-gardens', 'Floaro Gardens'),
  -- Galaxy Hall
  (688, 9, 'hisui-galaxy-hall', 'Galaxy Hall'),
  -- Gapejaw Bog
  (689, 9, 'hisui-gapejaw-bog', 'Gapejaw Bog'),
  -- Ginkgo Landing
  (690, 9, 'hisui-ginkgo-landing', 'Ginkgo Landing'),
  -- Glacier Terrace
  (691, 9, 'hisui-glacier-terrace', 'Glacier Terrace'),
  -- Golden Lowlands
  (692, 9, 'hisui-golden-lowlands', 'Golden Lowlands'),
  -- Grandtree Arena
  (693, 9, 'hisui-grandtree-arena', 'Grandtree Arena'),
  -- Grueling Grove
  (694, 9, 'hisui-grueling-grove', 'Grueling Grove'),
  -- Heart's Crag
  (695, 9, 'hisui-hearts-crag', 'Heart''s Crag'),
  -- Heavenward Lookout
  (696, 9, 'hisui-heavenward-lookout', 'Heavenward Lookout'),
  -- Hideaway Bay
  (697, 9, 'hisui-hideaway-bay', 'Hideaway Bay'),
  -- Holm of Trials
  (698, 9, 'hisui-holm-of-trials', 'Holm of Trials'),
  -- Horseshoe Plains
  (699, 9, 'hisui-horseshoe-plains', 'Horseshoe Plains'),
  -- Ice Column Chamber
  (700, 9, 'hisui-ice-column-chamber', 'Ice Column Chamber'),
  -- Icebound Falls
  (701, 9, 'hisui-icebound-falls', 'Icebound Falls'),
  -- Icepeak Cavern
  (702, 9, 'hisui-icepeak-cavern', 'Icepeak Cavern'),
  -- Islespy Shore
  (703, 9, 'hisui-islespy-shore', 'Islespy Shore'),
  -- Jubilife Village
  (704, 9, 'hisui-jubilife-village', 'Jubilife Village'),
  -- Lonely Spring
  (705, 9, 'hisui-lonely-spring', 'Lonely Spring'),
  -- Lunker's Lair
  (706, 9, 'hisui-lunkers-lair', 'Lunker''s Lair'),
  -- Nature's Pantry
  (707, 9, 'hisui-natures-pantry', 'Nature''s Pantry'),
  -- Obsidian Falls
  (708, 9, 'hisui-obsidian-falls', 'Obsidian Falls'),
  -- Oreburrow Tunnel
  (709, 9, 'hisui-oreburrow-tunnel', 'Oreburrow Tunnel'),
  -- Pearl Settlement
  (710, 9, 'hisui-pearl-settlement', 'Pearl Settlement'),
  -- Primeval Grotto
  (711, 9, 'hisui-primeval-grotto', 'Primeval Grotto'),
  -- Ramanas Island
  (712, 9, 'hisui-ramanas-island', 'Ramanas Island'),
  -- Sacred Plaza
  (713, 9, 'hisui-sacred-plaza', 'Sacred Plaza'),
  -- Sand's Reach
  (714, 9, 'hisui-sands-reach', 'Sand''s Reach'),
  -- Sandgem Flats
  (715, 9, 'hisui-sandgem-flats', 'Sandgem Flats'),
  -- Scarlet Bog
  (716, 9, 'hisui-scarlet-bog', 'Scarlet Bog'),
  -- Seagrass Haven
  (717, 9, 'hisui-seagrass-haven', 'Seagrass Haven'),
  -- Seaside Hollow
  (718, 9, 'hisui-seaside-hollow', 'Seaside Hollow'),
  -- Secret Hollow
  (719, 9, 'hisui-secret-hollow', 'Secret Hollow'),
  -- Shrouded Ruins
  (720, 9, 'hisui-shrouded-ruins', 'Shrouded Ruins'),
  -- Sludge Mound
  (721, 9, 'hisui-sludge-mound', 'Sludge Mound'),
  -- Snowfall Hot Spring
  (722, 9, 'hisui-snowfall-hot-spring', 'Snowfall Hot Spring'),
  -- Sonorous Path
  (723, 9, 'hisui-sonorous-path', 'Sonorous Path'),
  -- Spring Path
  (724, 9, 'hisui-spring-path', 'Spring Path'),
  -- Stonetooth Rows
  (725, 9, 'hisui-stonetooth-rows', 'Stonetooth Rows'),
  -- The Heartwood
  (726, 9, 'hisui-the-heartwood', 'The Heartwood'),
  -- Tidewater Dam
  (727, 9, 'hisui-tidewater-dam', 'Tidewater Dam'),
  -- Tombolo Walk
  (728, 9, 'hisui-tombolo-walk', 'Tombolo Walk'),
  -- Tranquility Cove
  (729, 9, 'hisui-tranquility-cove', 'Tranquility Cove'),
  -- Ursa's Ring
  (730, 9, 'hisui-ursas-ring', 'Ursa''s Ring'),
  -- Veilstone Cape
  (731, 9, 'hisui-veilstone-cape', 'Veilstone Cape'),
  -- Wayward Wood
  (732, 9, 'hisui-wayward-wood', 'Wayward Wood'),
  -- Whiteout Valley
  (733, 9, 'hisui-whiteout-valley', 'Whiteout Valley'),
  -- Windbreak Stand
  (734, 9, 'hisui-windbreak-stand', 'Windbreak Stand'),
  -- Windswept Run
  (735, 9, 'hisui-windswept-run', 'Windswept Run'),
  -- Worn Bridge
  (736, 9, 'hisui-worn-bridge', 'Worn Bridge'),
  -- Alfornada Cavern
  (737, 10, 'paldea-alfornada-cavern', 'Alfornada Cavern'),
  -- Apple Hills
  (738, 10, 'paldea-apple-hills', 'Apple Hills'),
  -- Area Zero
  (739, 10, 'paldea-area-zero', 'Area Zero'),
  -- Asado Desert
  (740, 10, 'paldea-asado-desert', 'Asado Desert'),
  -- Cabo Poco
  (741, 10, 'paldea-cabo-poco', 'Cabo Poco'),
  -- Canyon Biome
  (742, 10, 'paldea-canyon-biome', 'Canyon Biome'),
  -- Cascarrafa
  (743, 10, 'paldea-cascarrafa', 'Cascarrafa'),
  -- Casseroya Lake
  (744, 10, 'paldea-casseroya-lake', 'Casseroya Lake'),
  -- Chargestone Cavern
  (745, 10, 'paldea-chargestone-cavern', 'Chargestone Cavern'),
  -- Chilling Waterhead
  (746, 10, 'paldea-chilling-waterhead', 'Chilling Waterhead'),
  -- Coastal Biome
  (747, 10, 'paldea-coastal-biome', 'Coastal Biome'),
  -- Colonnade Hollow
  (748, 10, 'paldea-colonnade-hollow', 'Colonnade Hollow'),
  -- Cortondo
  (749, 10, 'paldea-cortondo', 'Cortondo'),
  -- Crystal Pool
  (750, 10, 'paldea-crystal-pool', 'Crystal Pool'),
  -- Dalizapa Passage
  (751, 10, 'paldea-dalizapa-passage', 'Dalizapa Passage'),
  -- East Paldean Sea
  (752, 10, 'paldea-east-paldean-sea', 'East Paldean Sea'),
  -- East Province (Area One)
  (753, 10, 'paldea-east-province-area-one', 'East Province (Area One)'),
  -- East Province (Area Three)
  (754, 10, 'paldea-east-province-area-three', 'East Province (Area Three)'),
  -- East Province (Area Two)
  (755, 10, 'paldea-east-province-area-two', 'East Province (Area Two)'),
  -- Fellhorn Gorge
  (756, 10, 'paldea-fellhorn-gorge', 'Fellhorn Gorge'),
  -- Glaseado Mountain
  (757, 10, 'paldea-glaseado-mountain', 'Glaseado Mountain'),
  -- Infernal Pass
  (758, 10, 'paldea-infernal-pass', 'Infernal Pass'),
  -- Inlet Grotto
  (759, 10, 'paldea-inlet-grotto', 'Inlet Grotto'),
  -- Kitakami Hall
  (760, 10, 'paldea-kitakami-hall', 'Kitakami Hall'),
  -- Kitakami Road
  (761, 10, 'paldea-kitakami-road', 'Kitakami Road'),
  -- Kitakami Wilds
  (762, 10, 'paldea-kitakami-wilds', 'Kitakami Wilds'),
  -- Levincia
  (763, 10, 'paldea-levincia', 'Levincia'),
  -- Mossfell Confluence
  (764, 10, 'paldea-mossfell-confluence', 'Mossfell Confluence'),
  -- Mossui Town
  (765, 10, 'paldea-mossui-town', 'Mossui Town'),
  -- Naranja Academy
  (766, 10, 'paldea-naranja-academy', 'Naranja Academy'),
  -- North Paldean Sea
  (767, 10, 'paldea-north-paldean-sea', 'North Paldean Sea'),
  -- North Province (Area One)
  (768, 10, 'paldea-north-province-area-one', 'North Province (Area One)'),
  -- North Province (Area Three)
  (769, 10, 'paldea-north-province-area-three', 'North Province (Area Three)'),
  -- North Province (Area Two)
  (770, 10, 'paldea-north-province-area-two', 'North Province (Area Two)'),
  -- Oni Mountain
  (771, 10, 'paldea-oni-mountain', 'Oni Mountain'),
  -- Oni's Maw
  (772, 10, 'paldea-onis-maw', 'Oni''s Maw'),
  -- Paradise Barrens
  (773, 10, 'paldea-paradise-barrens', 'Paradise Barrens'),
  -- Poco Path
  (774, 10, 'paldea-poco-path', 'Poco Path'),
  -- Pokémon League
  (775, 10, 'paldea-pokemon-league', 'Pokémon League'),
  -- Polar Biome
  (776, 10, 'paldea-polar-biome', 'Polar Biome'),
  -- Reveler's Road
  (777, 10, 'paldea-revelers-road', 'Reveler''s Road'),
  -- Savanna Biome
  (778, 10, 'paldea-savanna-biome', 'Savanna Biome'),
  -- Socarrat Trail
  (779, 10, 'paldea-socarrat-trail', 'Socarrat Trail'),
  -- South Paldean Sea
  (780, 10, 'paldea-south-paldean-sea', 'South Paldean Sea'),
  -- South Province (Area Five)
  (781, 10, 'paldea-south-province-area-five', 'South Province (Area Five)'),
  -- South Province (Area Four)
  (782, 10, 'paldea-south-province-area-four', 'South Province (Area Four)'),
  -- South Province (Area One)
  (783, 10, 'paldea-south-province-area-one', 'South Province (Area One)'),
  -- South Province (Area Six)
  (784, 10, 'paldea-south-province-area-six', 'South Province (Area Six)'),
  -- South Province (Area Three)
  (785, 10, 'paldea-south-province-area-three', 'South Province (Area Three)'),
  -- South Province (Area Two)
  (786, 10, 'paldea-south-province-area-two', 'South Province (Area Two)'),
  -- Tagtree Thicket
  (787, 10, 'paldea-tagtree-thicket', 'Tagtree Thicket'),
  -- Torchlit Labyrinth
  (788, 10, 'paldea-torchlit-labyrinth', 'Torchlit Labyrinth'),
  -- Uva Academy
  (789, 10, 'paldea-uva-academy', 'Uva Academy'),
  -- West Paldean Sea
  (790, 10, 'paldea-west-paldean-sea', 'West Paldean Sea'),
  -- West Province (Area One)
  (791, 10, 'paldea-west-province-area-one', 'West Province (Area One)'),
  -- West Province (Area Three)
  (792, 10, 'paldea-west-province-area-three', 'West Province (Area Three)'),
  -- West Province (Area Two)
  (793, 10, 'paldea-west-province-area-two', 'West Province (Area Two)'),
  -- Wistful Fields
  (794, 10, 'paldea-wistful-fields', 'Wistful Fields'),
  -- Zero Lab
  (795, 10, 'paldea-zero-lab', 'Zero Lab'),
  -- Temple of Sinnoh
  (796, 9, 'hisui-temple-of-sinnoh', 'Temple of Sinnoh'),
  -- League Club Room
  (797, 10, 'paldea-league-club-room', 'League Club Room'),
  -- Lumiose City
  (798, 6, 'kalos-lumiose-city', 'Lumiose City'),
  -- Passage du Palais
  (799, 6, 'kalos-passage-du-palais', 'Passage du Palais'),
  -- Académie Étoile
  (800, 6, 'kalos-academie-etoile', 'Académie Étoile'),
  -- Magenta Sector 2
  (801, 6, 'kalos-magenta-sector-2', 'Magenta Sector 2'),
  -- North Boulevard
  (802, 6, 'kalos-north-boulevard', 'North Boulevard'),
  -- Rouge Sector 1
  (804, 6, 'kalos-rouge-sector-1', 'Rouge Sector 1'),
  -- Bleu Sector 6
  (805, 6, 'kalos-bleu-sector-6', 'Bleu Sector 6'),
  -- Hyperspace Lumiose
  (806, 6, 'kalos-hyperspace-lumiose', 'Hyperspace Lumiose'),
  -- S.S. Anne: a Story place with no wild Pokémon (Red / Blue's S.S. Anne beat)
  (807, 1, 'kanto-ss-anne', 'S.S. Anne'),
  -- Rocket Hideout: a Story place with no wild Pokémon (Red / Blue's Rocket Hideout beat)
  (808, 1, 'kanto-rocket-hideout', 'Rocket Hideout'),
  -- Underground Path (Kanto Routes 7-8): a Story place with no wild Pokémon (Red / Blue's way from Route 8 to Route 7)
  (809, 1, 'kanto-underground-path-kanto-routes-7-8', 'Underground Path (Kanto Routes 7-8)'),
  -- Pewter Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (810, 1, 'kanto-pewter-gym', 'Pewter Gym'),
  -- Vermilion Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (811, 1, 'kanto-vermilion-gym', 'Vermilion Gym'),
  -- Celadon Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (812, 1, 'kanto-celadon-gym', 'Celadon Gym'),
  -- Fuchsia Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (813, 1, 'kanto-fuchsia-gym', 'Fuchsia Gym'),
  -- Saffron Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (814, 1, 'kanto-saffron-gym', 'Saffron Gym'),
  -- Cinnabar Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (815, 1, 'kanto-cinnabar-gym', 'Cinnabar Gym'),
  -- Viridian Gym: a Story place with no wild Pokémon (Red / Blue's badge there)
  (816, 1, 'kanto-viridian-gym', 'Viridian Gym'),
  -- Professor Elm's Laboratory: a Story place with no wild Pokémon (Gold / Silver's Choose Starter beat)
  (817, 2, 'johto-professor-elms-laboratory', 'Professor Elm''s Laboratory'),
  -- Mr. Pokémon's House: a Story place with no wild Pokémon (Gold / Silver's Receive Pokédex beat)
  (818, 2, 'johto-mr-pokemons-house', 'Mr. Pokémon''s House'),
  -- Violet Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (819, 2, 'johto-violet-gym', 'Violet Gym'),
  -- Azalea Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (820, 2, 'johto-azalea-gym', 'Azalea Gym'),
  -- Goldenrod Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (821, 2, 'johto-goldenrod-gym', 'Goldenrod Gym'),
  -- Ecruteak Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (822, 2, 'johto-ecruteak-gym', 'Ecruteak Gym'),
  -- Cianwood Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (823, 2, 'johto-cianwood-gym', 'Cianwood Gym'),
  -- Mahogany Town: a Story place with no wild Pokémon (Gold / Silver's way to the Lake of Rage and Team Rocket HQ)
  (824, 2, 'johto-mahogany-town', 'Mahogany Town'),
  -- Mahogany Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (825, 2, 'johto-mahogany-gym', 'Mahogany Gym'),
  -- Blackthorn Gym: a Story place with no wild Pokémon (Gold / Silver's badge there)
  (826, 2, 'johto-blackthorn-gym', 'Blackthorn Gym'),
  -- Olivine Lighthouse: a Story place with no wild Pokémon (Gold / Silver's Olivine Lighthouse beat)
  (827, 2, 'johto-olivine-lighthouse', 'Olivine Lighthouse'),
  -- Team Rocket HQ: a Story place with no wild Pokémon (Gold / Silver's Team Rocket HQ beat)
  (828, 2, 'johto-team-rocket-hq', 'Team Rocket HQ'),
  -- Goldenrod Radio Tower: a Story place with no wild Pokémon (Gold / Silver's Radio Tower beat)
  (829, 2, 'johto-goldenrod-radio-tower', 'Goldenrod Radio Tower'),
  -- Goldenrod Underground: a Story place with no wild Pokémon (Gold / Silver's rival battle before the Radio Tower)
  (830, 2, 'johto-goldenrod-underground', 'Goldenrod Underground'),
  -- S.S. Aqua: a Story place with no wild Pokémon (Gold / Silver's ship to Kanto)
  (831, 2, 'johto-ss-aqua', 'S.S. Aqua'),
  -- Oldale Town: a Story place with no wild Pokémon (Ruby / Sapphire's way out of Littleroot Town)
  (832, 3, 'hoenn-oldale-town', 'Oldale Town'),
  -- Professor Birch's Laboratory: a Story place with no wild Pokémon (Ruby / Sapphire's Receive Pokédex beat)
  (833, 3, 'hoenn-professor-birchs-laboratory', 'Professor Birch''s Laboratory'),
  -- Rustboro Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (834, 3, 'hoenn-rustboro-gym', 'Rustboro Gym'),
  -- Dewford Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (835, 3, 'hoenn-dewford-gym', 'Dewford Gym'),
  -- Oceanic Museum: a Story place with no wild Pokémon (Ruby / Sapphire's Oceanic Museum beat)
  (836, 3, 'hoenn-oceanic-museum', 'Oceanic Museum'),
  -- Mauville City: a Story place with no wild Pokémon (Ruby / Sapphire's crossroads and Wally's battle)
  (837, 3, 'hoenn-mauville-city', 'Mauville City'),
  -- Mauville Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (838, 3, 'hoenn-mauville-gym', 'Mauville Gym'),
  -- Verdanturf Town: a Story place with no wild Pokémon (Ruby / Sapphire's way to Rusturf Tunnel)
  (839, 3, 'hoenn-verdanturf-town', 'Verdanturf Town'),
  -- Fallarbor Town: a Story place with no wild Pokémon (Ruby / Sapphire's way to Meteor Falls)
  (840, 3, 'hoenn-fallarbor-town', 'Fallarbor Town'),
  -- Mt. Chimney: a Story place with no wild Pokémon (Ruby / Sapphire's Mt. Chimney beat)
  (841, 3, 'hoenn-mt-chimney', 'Mt. Chimney'),
  -- Lavaridge Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (842, 3, 'hoenn-lavaridge-gym', 'Lavaridge Gym'),
  -- Petalburg Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (843, 3, 'hoenn-petalburg-gym', 'Petalburg Gym'),
  -- Fortree Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (844, 3, 'hoenn-fortree-gym', 'Fortree Gym'),
  -- Mossdeep Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (845, 3, 'hoenn-mossdeep-gym', 'Mossdeep Gym'),
  -- Sootopolis Gym: a Story place with no wild Pokémon (Ruby / Sapphire's badge there)
  (846, 3, 'hoenn-sootopolis-gym', 'Sootopolis Gym'),
  -- Two Island (town): a Story place with no wild Pokémon (FireRed / LeafGreen's Sevii Islands errand)
  (847, 1, 'kanto-two-island-town', 'Two Island (town)'),
  -- Three Island (town): a Story place with no wild Pokémon (FireRed / LeafGreen's Sevii Islands errand)
  (848, 1, 'kanto-three-island-town', 'Three Island (town)'),
  -- Six Island (town): a Story place with no wild Pokémon (FireRed / LeafGreen's way to the Dotted Hole)
  (849, 1, 'kanto-six-island-town', 'Six Island (town)'),
  -- Dotted Hole: a Story place with no wild Pokémon (FireRed / LeafGreen's Dotted Hole beat)
  (850, 1, 'kanto-dotted-hole', 'Dotted Hole'),
  -- Rocket Warehouse: a Story place with no wild Pokémon (FireRed / LeafGreen's Rocket Warehouse beat)
  (851, 1, 'kanto-rocket-warehouse', 'Rocket Warehouse'),
  -- Navel Rock: a Story place with no wild Pokémon (FireRed / LeafGreen's Ho-Oh and Lugia)
  (852, 1, 'kanto-navel-rock', 'Navel Rock'),
  -- Birth Island: a Story place with no wild Pokémon (FireRed / LeafGreen's Deoxys)
  (853, 1, 'kanto-birth-island', 'Birth Island'),
  -- Mossdeep Space Center: a Story place with no wild Pokémon (Emerald's Space Center beat)
  (854, 3, 'hoenn-mossdeep-space-center', 'Mossdeep Space Center'),
  -- Terra Cave: a Story place with no wild Pokémon (Emerald's Groudon)
  (855, 3, 'hoenn-terra-cave', 'Terra Cave'),
  -- Marine Cave: a Story place with no wild Pokémon (Emerald's Kyogre)
  (856, 3, 'hoenn-marine-cave', 'Marine Cave'),
  -- Sandgem Town: a Story place with no wild Pokémon (Diamond / Pearl's way out of Twinleaf Town)
  (857, 4, 'sinnoh-sandgem-town', 'Sandgem Town'),
  -- Professor Rowan's Laboratory: a Story place with no wild Pokémon (Diamond / Pearl's Receive Pokédex beat)
  (858, 4, 'sinnoh-professor-rowans-laboratory', 'Professor Rowan''s Laboratory'),
  -- Jubilife City: a Story place with no wild Pokémon (Diamond / Pearl's first city)
  (859, 4, 'sinnoh-jubilife-city', 'Jubilife City'),
  -- Oreburgh Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (860, 4, 'sinnoh-oreburgh-gym', 'Oreburgh Gym'),
  -- Eterna Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (861, 4, 'sinnoh-eterna-gym', 'Eterna Gym'),
  -- Team Galactic Eterna Building: a Story place with no wild Pokémon (Diamond / Pearl's Jupiter beat)
  (862, 4, 'sinnoh-team-galactic-eterna-building', 'Team Galactic Eterna Building'),
  -- Solaceon Town: a Story place with no wild Pokémon (Diamond / Pearl's way to Veilstone City)
  (863, 4, 'sinnoh-solaceon-town', 'Solaceon Town'),
  -- Veilstone Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (864, 4, 'sinnoh-veilstone-gym', 'Veilstone Gym'),
  -- Pastoria Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (865, 4, 'sinnoh-pastoria-gym', 'Pastoria Gym'),
  -- Hearthome Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (866, 4, 'sinnoh-hearthome-gym', 'Hearthome Gym'),
  -- Canalave Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (867, 4, 'sinnoh-canalave-gym', 'Canalave Gym'),
  -- Snowpoint Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (868, 4, 'sinnoh-snowpoint-gym', 'Snowpoint Gym'),
  -- Team Galactic HQ: a Story place with no wild Pokémon (Diamond / Pearl's Team Galactic HQ beat)
  (869, 4, 'sinnoh-team-galactic-hq', 'Team Galactic HQ'),
  -- Spear Pillar: a Story place with no wild Pokémon (Diamond / Pearl's Spear Pillar beat)
  (870, 4, 'sinnoh-spear-pillar', 'Spear Pillar'),
  -- Sunyshore Gym: a Story place with no wild Pokémon (Diamond / Pearl's badge there)
  (871, 4, 'sinnoh-sunyshore-gym', 'Sunyshore Gym'),
  -- Fight Area: a Story place with no wild Pokémon (Diamond / Pearl's Battle Zone arrival)
  (872, 4, 'sinnoh-fight-area', 'Fight Area'),
  -- Fullmoon Island: a Story place with no wild Pokémon (Diamond / Pearl's Cresselia)
  (873, 4, 'sinnoh-fullmoon-island', 'Fullmoon Island'),
  -- Distortion World: a Story place with no wild Pokémon (Platinum's Distortion World beat)
  (874, 4, 'sinnoh-distortion-world', 'Distortion World'),
  -- Ecruteak Dance Theater: a Story place with no wild Pokémon (HeartGold / SoulSilver's Kimono Girls)
  (875, 2, 'johto-ecruteak-dance-theater', 'Ecruteak Dance Theater'),
  -- Embedded Tower: a Story place with no wild Pokémon (HeartGold / SoulSilver's Kyogre, Groudon and Rayquaza)
  (876, 2, 'johto-embedded-tower', 'Embedded Tower'),
  -- Professor Juniper's Laboratory: a Story place with no wild Pokémon (Black / White's Receive Pokédex beat)
  (877, 5, 'unova-professor-junipers-laboratory', 'Professor Juniper''s Laboratory'),
  -- Striaton Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (878, 5, 'unova-striaton-gym', 'Striaton Gym'),
  -- Nacrene Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (879, 5, 'unova-nacrene-gym', 'Nacrene Gym'),
  -- Skyarrow Bridge: a Story place with no wild Pokémon (Black / White's way to Castelia City)
  (880, 5, 'unova-skyarrow-bridge', 'Skyarrow Bridge'),
  -- Castelia Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (881, 5, 'unova-castelia-gym', 'Castelia Gym'),
  -- Nimbasa Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (882, 5, 'unova-nimbasa-gym', 'Nimbasa Gym'),
  -- Driftveil Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (883, 5, 'unova-driftveil-gym', 'Driftveil Gym'),
  -- Mistralton City: a Story place with no wild Pokémon (Black / White's way to Celestial Tower)
  (884, 5, 'unova-mistralton-city', 'Mistralton City'),
  -- Mistralton Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (885, 5, 'unova-mistralton-gym', 'Mistralton Gym'),
  -- Icirrus Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (886, 5, 'unova-icirrus-gym', 'Icirrus Gym'),
  -- Tubeline Bridge: a Story place with no wild Pokémon (Black / White's way to Opelucid City)
  (887, 5, 'unova-tubeline-bridge', 'Tubeline Bridge'),
  -- Opelucid City: a Story place with no wild Pokémon (Black / White's last Gym town)
  (888, 5, 'unova-opelucid-city', 'Opelucid City'),
  -- Opelucid Gym: a Story place with no wild Pokémon (Black / White's badge there)
  (889, 5, 'unova-opelucid-gym', 'Opelucid Gym'),
  -- Pokémon League: a Story place with no wild Pokémon (Black / White's Pokémon League and N's Castle)
  (890, 5, 'unova-pokemon-league', 'Pokémon League'),
  -- Aspertia Gym: a Story place with no wild Pokémon (Black 2 / White 2's badge there)
  (891, 5, 'unova-aspertia-gym', 'Aspertia Gym'),
  -- Virbank Gym: a Story place with no wild Pokémon (Black 2 / White 2's badge there)
  (892, 5, 'unova-virbank-gym', 'Virbank Gym'),
  -- Pokémon World Tournament: a Story place with no wild Pokémon (Black 2 / White 2's Driftveil Tournament)
  (893, 5, 'unova-pokemon-world-tournament', 'Pokémon World Tournament'),
  -- Lentimas Town: a Story place with no wild Pokémon (Black 2 / White 2's way to Reversal Mountain)
  (894, 5, 'unova-lentimas-town', 'Lentimas Town'),
  -- Lacunosa Town: a Story place with no wild Pokémon (Black 2 / White 2's battle with Zinzolin)
  (895, 5, 'unova-lacunosa-town', 'Lacunosa Town'),
  -- Humilau Gym: a Story place with no wild Pokémon (Black 2 / White 2's badge there)
  (896, 5, 'unova-humilau-gym', 'Humilau Gym'),
  -- Plasma Frigate: a Story place with no wild Pokémon (Black 2 / White 2's Plasma Frigate beat)
  (897, 5, 'unova-plasma-frigate', 'Plasma Frigate'),
  -- Cave of Being: a Story place with no wild Pokémon (Black 2 / White 2's Uxie, Mesprit and Azelf)
  (898, 5, 'unova-cave-of-being', 'Cave of Being'),
  -- Santalune Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (899, 6, 'kalos-santalune-gym', 'Santalune Gym'),
  -- Cyllage Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (900, 6, 'kalos-cyllage-gym', 'Cyllage Gym'),
  -- Shalour Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (901, 6, 'kalos-shalour-gym', 'Shalour Gym'),
  -- Coumarine Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (902, 6, 'kalos-coumarine-gym', 'Coumarine Gym'),
  -- Kalos Power Plant: a Story place with no wild Pokémon (X / Y's Power Plant beat)
  (903, 6, 'kalos-kalos-power-plant', 'Kalos Power Plant'),
  -- Lumiose Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (904, 6, 'kalos-lumiose-gym', 'Lumiose Gym'),
  -- Laverre Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (905, 6, 'kalos-laverre-gym', 'Laverre Gym'),
  -- Poké Ball Factory: a Story place with no wild Pokémon (X / Y's Poké Ball Factory beat)
  (906, 6, 'kalos-poke-ball-factory', 'Poké Ball Factory'),
  -- Dendemille Town: a Story place with no wild Pokémon (X / Y's way to Frost Cavern)
  (907, 6, 'kalos-dendemille-town', 'Dendemille Town'),
  -- Anistar City: a Story place with no wild Pokémon (X / Y's seventh Gym town)
  (908, 6, 'kalos-anistar-city', 'Anistar City'),
  -- Anistar Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (909, 6, 'kalos-anistar-gym', 'Anistar Gym'),
  -- Lysandre Labs: a Story place with no wild Pokémon (X / Y's Lysandre Labs beat)
  (910, 6, 'kalos-lysandre-labs', 'Lysandre Labs'),
  -- Team Flare Secret HQ: a Story place with no wild Pokémon (X / Y's Team Flare Secret HQ beat)
  (911, 6, 'kalos-team-flare-secret-hq', 'Team Flare Secret HQ'),
  -- Snowbelle Gym: a Story place with no wild Pokémon (X / Y's badge there)
  (912, 6, 'kalos-snowbelle-gym', 'Snowbelle Gym'),
  -- Pokémon League: a Story place with no wild Pokémon (X / Y's Pokémon League)
  (913, 6, 'kalos-pokemon-league', 'Pokémon League'),
  -- Kiloude City: a Story place with no wild Pokémon (X / Y's battle after the credits)
  (914, 6, 'kalos-kiloude-city', 'Kiloude City'),
  -- Unknown Dungeon: a Story place with no wild Pokémon (X / Y's Mewtwo)
  (915, 6, 'kalos-unknown-dungeon', 'Unknown Dungeon'),
  -- Island Cave: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Regigigas)
  (916, 3, 'hoenn-island-cave', 'Island Cave'),
  -- Crescent Isle: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Cresselia)
  (917, 3, 'hoenn-crescent-isle', 'Crescent Isle'),
  -- Trackless Forest: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Raikou, Entei and Suicune)
  (918, 3, 'hoenn-trackless-forest', 'Trackless Forest'),
  -- Nameless Cavern: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Uxie, Mesprit and Azelf)
  (919, 3, 'hoenn-nameless-cavern', 'Nameless Cavern'),
  -- Pathless Plain: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Cobalion, Terrakion and Virizion)
  (920, 3, 'hoenn-pathless-plain', 'Pathless Plain'),
  -- Fabled Cave: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Reshiram or Zekrom)
  (921, 3, 'hoenn-fabled-cave', 'Fabled Cave'),
  -- Gnarled Den: a Story place with no wild Pokémon (Omega Ruby / Alpha Sapphire's Kyurem)
  (922, 3, 'hoenn-gnarled-den', 'Gnarled Den'),
  -- Heahea City: a Story place with no wild Pokémon (Sun / Moon's port on Akala Island)
  (923, 7, 'alola-heahea-city', 'Heahea City'),
  -- Hokulani Observatory: a Story place with no wild Pokémon (Sun / Moon's trial there)
  (924, 7, 'alola-hokulani-observatory', 'Hokulani Observatory'),
  -- Po Town: a Story place with no wild Pokémon (Sun / Moon's Po Town beat)
  (925, 7, 'alola-po-town', 'Po Town'),
  -- Ultra Space: a Story place with no wild Pokémon (Sun / Moon's Ultra Space beat)
  (926, 7, 'alola-ultra-space', 'Ultra Space'),
  -- Ruins of Conflict: a Story place with no wild Pokémon (Sun / Moon's Tapu Koko)
  (927, 7, 'alola-ruins-of-conflict', 'Ruins of Conflict'),
  -- Ruins of Life: a Story place with no wild Pokémon (Sun / Moon's grand trial and Tapu Lele)
  (928, 7, 'alola-ruins-of-life', 'Ruins of Life'),
  -- Ruins of Abundance: a Story place with no wild Pokémon (Sun / Moon's Tapu Bulu)
  (929, 7, 'alola-ruins-of-abundance', 'Ruins of Abundance'),
  -- Ruins of Hope: a Story place with no wild Pokémon (Sun / Moon's Tapu Fini)
  (930, 7, 'alola-ruins-of-hope', 'Ruins of Hope'),
  -- Pokémon League: a Story place with no wild Pokémon (Sun / Moon's Pokémon League)
  (931, 7, 'alola-pokemon-league', 'Pokémon League'),
  -- Megalo Tower: a Story place with no wild Pokémon (Ultra Sun / Ultra Moon's Ultra Necrozma)
  (932, 7, 'alola-megalo-tower', 'Megalo Tower'),
  -- Mahalo Trail: a Story place with no wild Pokémon (Ultra Sun / Ultra Moon's Solgaleo or Lunala)
  (933, 7, 'alola-mahalo-trail', 'Mahalo Trail'),
  -- Hulbury Stadium: a Story place with no wild Pokémon (Sword / Shield's badge there)
  (934, 8, 'galar-hulbury-stadium', 'Hulbury Stadium'),
  -- Stow-on-Side Stadium: a Story place with no wild Pokémon (Sword / Shield's badge there)
  (935, 8, 'galar-stow-on-side-stadium', 'Stow-on-Side Stadium'),
  -- Ballonlea: a Story place with no wild Pokémon (Sword / Shield's fifth Gym town)
  (936, 8, 'galar-ballonlea', 'Ballonlea'),
  -- Circhester Stadium: a Story place with no wild Pokémon (Sword / Shield's badge there)
  (937, 8, 'galar-circhester-stadium', 'Circhester Stadium'),
  -- Spikemuth Gym: a Story place with no wild Pokémon (Sword / Shield's badge there)
  (938, 8, 'galar-spikemuth-gym', 'Spikemuth Gym'),
  -- Hammerlocke Stadium: a Story place with no wild Pokémon (Sword / Shield's badge there)
  (939, 8, 'galar-hammerlocke-stadium', 'Hammerlocke Stadium'),
  -- Wyndon Stadium: a Story place with no wild Pokémon (Sword / Shield's Champion Cup)
  (940, 8, 'galar-wyndon-stadium', 'Wyndon Stadium'),
  -- Energy Plant: a Story place with no wild Pokémon (Sword / Shield's Eternatus beat)
  (941, 8, 'galar-energy-plant', 'Energy Plant'),
  -- Towers of Two Fists: a Story place with no wild Pokémon (the Isle of Armor's Tower of Darkness and Tower of Waters)
  (942, 8, 'galar-towers-of-two-fists', 'Towers of Two Fists'),
  -- Ramanas Park: a Story place with no wild Pokémon (Brilliant Diamond / Shining Pearl's legendary Pokémon rooms)
  (943, 4, 'sinnoh-ramanas-park', 'Ramanas Park'),
  -- Prelude Beach: a Story place with no wild Pokémon (Legends: Arceus's first place)
  (944, 9, 'hisui-prelude-beach', 'Prelude Beach'),
  -- Brava Arena: a Story place with no wild Pokémon (Legends: Arceus's noble Lilligant)
  (945, 9, 'hisui-brava-arena', 'Brava Arena'),
  -- Molten Arena: a Story place with no wild Pokémon (Legends: Arceus's noble Arcanine)
  (946, 9, 'hisui-molten-arena', 'Molten Arena'),
  -- Moonview Arena: a Story place with no wild Pokémon (Legends: Arceus's noble Electrode and Cresselia)
  (947, 9, 'hisui-moonview-arena', 'Moonview Arena'),
  -- Icepeak Arena: a Story place with no wild Pokémon (Legends: Arceus's noble Avalugg)
  (948, 9, 'hisui-icepeak-arena', 'Icepeak Arena'),
  -- Stone Portal: a Story place with no wild Pokémon (Legends: Arceus's battle with Beni)
  (949, 9, 'hisui-stone-portal', 'Stone Portal'),
  -- Ancient Retreat: a Story place with no wild Pokémon (Legends: Arceus's stay with Cogita)
  (950, 9, 'hisui-ancient-retreat', 'Ancient Retreat'),
  -- Mesagoza: a Story place with no wild Pokémon (Scarlet / Violet's academy city)
  (951, 10, 'paldea-mesagoza', 'Mesagoza'),
  -- Cortondo Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (952, 10, 'paldea-cortondo-gym', 'Cortondo Gym'),
  -- Artazon: a Story place with no wild Pokémon (Scarlet / Violet's Grass Gym town)
  (953, 10, 'paldea-artazon', 'Artazon'),
  -- Artazon Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (954, 10, 'paldea-artazon-gym', 'Artazon Gym'),
  -- Levincia Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (955, 10, 'paldea-levincia-gym', 'Levincia Gym'),
  -- Cascarrafa Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (956, 10, 'paldea-cascarrafa-gym', 'Cascarrafa Gym'),
  -- Medali: a Story place with no wild Pokémon (Scarlet / Violet's Normal Gym town)
  (957, 10, 'paldea-medali', 'Medali'),
  -- Medali Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (958, 10, 'paldea-medali-gym', 'Medali Gym'),
  -- Montenevera: a Story place with no wild Pokémon (Scarlet / Violet's Ghost Gym town)
  (959, 10, 'paldea-montenevera', 'Montenevera'),
  -- Montenevera Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (960, 10, 'paldea-montenevera-gym', 'Montenevera Gym'),
  -- Alfornada: a Story place with no wild Pokémon (Scarlet / Violet's Psychic Gym town)
  (961, 10, 'paldea-alfornada', 'Alfornada'),
  -- Alfornada Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (962, 10, 'paldea-alfornada-gym', 'Alfornada Gym'),
  -- Glaseado Gym: a Story place with no wild Pokémon (Scarlet / Violet's badge there)
  (963, 10, 'paldea-glaseado-gym', 'Glaseado Gym'),
  -- Team Star's Dark Crew Base: a Story place with no wild Pokémon (Scarlet / Violet's Dark Crew beat)
  (964, 10, 'paldea-team-star-dark-crew-base', 'Team Star''s Dark Crew Base'),
  -- Team Star's Fire Crew Base: a Story place with no wild Pokémon (Scarlet / Violet's Fire Crew beat)
  (965, 10, 'paldea-team-star-fire-crew-base', 'Team Star''s Fire Crew Base'),
  -- Team Star's Poison Crew Base: a Story place with no wild Pokémon (Scarlet / Violet's Poison Crew beat)
  (966, 10, 'paldea-team-star-poison-crew-base', 'Team Star''s Poison Crew Base'),
  -- Team Star's Fairy Crew Base: a Story place with no wild Pokémon (Scarlet / Violet's Fairy Crew beat)
  (967, 10, 'paldea-team-star-fairy-crew-base', 'Team Star''s Fairy Crew Base'),
  -- Team Star's Fighting Crew Base: a Story place with no wild Pokémon (Scarlet / Violet's Fighting Crew beat)
  (968, 10, 'paldea-team-star-fighting-crew-base', 'Team Star''s Fighting Crew Base'),
  -- Poco Path Lighthouse: a Story place with no wild Pokémon (Scarlet / Violet's battles with Arven)
  (969, 10, 'paldea-poco-path-lighthouse', 'Poco Path Lighthouse'),
  -- Los Platos: a Story place with no wild Pokémon (Scarlet / Violet's first Pokémon Center)
  (970, 10, 'paldea-los-platos', 'Los Platos'),
  -- Zapapico: a Story place with no wild Pokémon (Scarlet / Violet's way to Tagtree Thicket and Medali)
  (971, 10, 'paldea-zapapico', 'Zapapico'),
  -- Porto Marinada: a Story place with no wild Pokémon (Scarlet / Violet's Water Gym test)
  (972, 10, 'paldea-porto-marinada', 'Porto Marinada'),
  -- Loyalty Plaza: a Story place with no wild Pokémon (The Teal Mask's monument to the Loyal Three)
  (973, 10, 'paldea-loyalty-plaza', 'Loyalty Plaza'),
  -- Blueberry Academy: a Story place with no wild Pokémon (The Indigo Disk's school)
  (974, 10, 'paldea-blueberry-academy', 'Blueberry Academy'),
  -- Area Zero Underdepths: a Story place with no wild Pokémon (The Indigo Disk's last battles)
  (975, 10, 'paldea-area-zero-underdepths', 'Area Zero Underdepths'),
  -- Gare de Lumiose: a Story place with no wild Pokémon (Legends: Z-A's first place)
  (976, 6, 'kalos-gare-de-lumiose', 'Gare de Lumiose'),
  -- Bleu Plaza: a Story place with no wild Pokémon (Legends: Z-A's Rank X match)
  (977, 6, 'kalos-bleu-plaza', 'Bleu Plaza'),
  -- Restaurant Le Nah: a Story place with no wild Pokémon (Legends: Z-A's Rank V match)
  (978, 6, 'kalos-restaurant-le-nah', 'Restaurant Le Nah'),
  -- Racine Construction: a Story place with no wild Pokémon (Legends: Z-A's Rank E match)
  (979, 6, 'kalos-racine-construction', 'Racine Construction'),
  -- Justice Dojo: a Story place with no wild Pokémon (Legends: Z-A's Rank D match)
  (980, 6, 'kalos-justice-dojo', 'Justice Dojo'),
  -- Rust Syndicate Office: a Story place with no wild Pokémon (Legends: Z-A's Rank C match)
  (981, 6, 'kalos-rust-syndicate-office', 'Rust Syndicate Office'),
  -- Hotel Richissime: a Story place with no wild Pokémon (Legends: Z-A's Rank B tournament)
  (982, 6, 'kalos-hotel-richissime', 'Hotel Richissime'),
  -- Aymlis Park: a Story place with no wild Pokémon (Legends: Z-A's Rogue Mega Slowbro and Froslass)
  (983, 6, 'kalos-aymlis-park', 'Aymlis Park'),
  -- Centrico Plaza: a Story place with no wild Pokémon (Legends: Z-A's Prism Tower beats)
  (984, 6, 'kalos-centrico-plaza', 'Centrico Plaza'),
  -- Looker Bureau: a Story place with no wild Pokémon (Legends: Z-A's detective Emma)
  (985, 6, 'kalos-looker-bureau', 'Looker Bureau'),
  -- Jaune Sector 3: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (986, 6, 'kalos-jaune-sector-3', 'Jaune Sector 3'),
  -- Jaune Sector 4: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (987, 6, 'kalos-jaune-sector-4', 'Jaune Sector 4'),
  -- Jaune Sector 6: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (988, 6, 'kalos-jaune-sector-6', 'Jaune Sector 6'),
  -- Jaune Sector 8: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (989, 6, 'kalos-jaune-sector-8', 'Jaune Sector 8'),
  -- Jaune Sector 9: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (990, 6, 'kalos-jaune-sector-9', 'Jaune Sector 9'),
  -- Magenta Sector 3: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (991, 6, 'kalos-magenta-sector-3', 'Magenta Sector 3'),
  -- Magenta Sector 4: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (992, 6, 'kalos-magenta-sector-4', 'Magenta Sector 4'),
  -- Magenta Sector 6: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (993, 6, 'kalos-magenta-sector-6', 'Magenta Sector 6'),
  -- Magenta Sector 9: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (994, 6, 'kalos-magenta-sector-9', 'Magenta Sector 9'),
  -- Vert Sector 3: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (995, 6, 'kalos-vert-sector-3', 'Vert Sector 3'),
  -- Vert Sector 5: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (996, 6, 'kalos-vert-sector-5', 'Vert Sector 5'),
  -- Bleu Sector 5: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (997, 6, 'kalos-bleu-sector-5', 'Bleu Sector 5'),
  -- Bleu Sector 9: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (998, 6, 'kalos-bleu-sector-9', 'Bleu Sector 9'),
  -- Rouge Sector 6: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (999, 6, 'kalos-rouge-sector-6', 'Rouge Sector 6'),
  -- Rouge Sector 2: a Story place with no wild Pokémon (a Legends: Z-A Rogue Mega Evolution or legendary beat)
  (1000, 6, 'kalos-rouge-sector-2', 'Rouge Sector 2'),
  -- Coulant Waterway: a Story place with no wild Pokémon (Mega Dimension's first distortion)
  (1001, 6, 'kalos-coulant-waterway', 'Coulant Waterway'),
  -- Hyperspace Disaster Arena: a Story place with no wild Pokémon (Mega Dimension's Rogue Mega Absol Z)
  (1002, 6, 'kalos-hyperspace-disaster-arena', 'Hyperspace Disaster Arena'),
  -- Hyperspace Hunting Grounds: a Story place with no wild Pokémon (Mega Dimension's Rogue Mega Staraptor)
  (1003, 6, 'kalos-hyperspace-hunting-grounds', 'Hyperspace Hunting Grounds'),
  -- Hyperspace Sushi Paradise: a Story place with no wild Pokémon (Mega Dimension's Rogue Mega Tatsugiri)
  (1004, 6, 'kalos-hyperspace-sushi-paradise', 'Hyperspace Sushi Paradise'),
  -- Hyperspace Second-Sight Arena: a Story place with no wild Pokémon (Mega Dimension's Rogue Mega Meowstic)
  (1005, 6, 'kalos-hyperspace-second-sight-arena', 'Hyperspace Second-Sight Arena'),
  -- Hyperspace Infernal Arena: a Story place with no wild Pokémon (Mega Dimension's Heatran)
  (1006, 6, 'kalos-hyperspace-infernal-arena', 'Hyperspace Infernal Arena'),
  -- Hyperspace Newmoon Nightmare: a Story place with no wild Pokémon (Mega Dimension's Rogue Mega Darkrai)
  (1007, 6, 'kalos-hyperspace-newmoon-nightmare', 'Hyperspace Newmoon Nightmare'),
  -- Hyperspace Sky Pillar: a Story place with no wild Pokémon (Mega Dimension's Rogue Mega Rayquaza)
  (1008, 6, 'kalos-hyperspace-sky-pillar', 'Hyperspace Sky Pillar'),
  -- Seven Island (town): a Story place with no wild Pokémon (FireRed / LeafGreen's Sevii Islands)
  (1009, 1, 'kanto-seven-island-town', 'Seven Island (town)');
