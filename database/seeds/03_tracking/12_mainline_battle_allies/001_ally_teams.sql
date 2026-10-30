-- ============================================================================
-- Source
-- ============================================================================
-- Emerald: Steven's Multi Battle party in the game's own data (pret pokeemerald,
-- src/battle_tower.c), matching Bulbapedia.
-- Every other ally: Bulbapedia trainer pages (Trace, Hop, Barry, Calem and Serena, Arven, Carmine,
-- Kieran, Lida, Naveen, Taunie, Urbain and Korrina), the party listed for each
-- Multi Battle; Serebii's mission pages confirm who fights beside you in each
-- Legends: Z-A rogue Mega battle but list no partner teams, so those teams are
-- confirmed by one source only.
-- Korrina's Hyperspace team follows her own page (Machamp, Hawlucha, Lucario);
-- Bulbapedia's Rogue Mega Evolution table also lists Sirfetch'd.
-- Forms: no source names a form for Carmine's Poltchageist and Sinistcha, so
-- the default form is stored; allies are stored in the form they are sent out
-- in (Lucario, Emboar, Feraligatr and Meganium hold their Mega Stones).
-- Held items: as those parties list them (Steven's game data gives none); a
-- Pokémon with no listed item holds nothing.
-- Scope: Story battles where an ally fights beside the player: their Pokémon.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon of each ally fighting beside you in a Story battle, by slot.
-- A team that depends on your starter or on something Voydex doesn't record
-- is given once per choice or variant, like the opponent's.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
  milestone_id,
  opponent_id,
  ally_opponent_id,
  version_group_id,
  game_id,
  decision_milestone_id,
  decision_option_slug,
  variant_slug,
  variant_label,
  slot,
  species_id,
  form_id,
  level,
  held_item_id
) VALUES
  -- Steven beside you vs Maxie & Tabitha, Mind Badge 1: Metang Lv. 42
  (70010, 7018, 7014, 7, NULL, NULL, NULL, NULL, NULL, 1, 375, 37500, 42, NULL),
  -- Steven beside you vs Maxie & Tabitha, Mind Badge 2: Skarmory Lv. 43
  (70010, 7018, 7014, 7, NULL, NULL, NULL, NULL, NULL, 2, 227, 22700, 43, NULL),
  -- Steven beside you vs Maxie & Tabitha, Mind Badge 3: Aggron Lv. 44
  (70010, 7018, 7014, 7, NULL, NULL, NULL, NULL, NULL, 3, 306, 30600, 44, NULL),
  -- Serena / Calem beside you vs Tierno & Trevor (chose Chespin), Fossil Choice 1: Fletchling Lv. 15
  (130005, 13017, 13018, 13, NULL, 130001, 'chespin', NULL, NULL, 1, 661, 66100, 15, NULL),
  -- Serena / Calem beside you vs Tierno & Trevor (chose Chespin), Fossil Choice 2: Braixen Lv. 16
  (130005, 13017, 13018, 13, NULL, 130001, 'chespin', NULL, NULL, 2, 654, 65400, 16, NULL),
  -- Serena / Calem beside you vs Tierno & Trevor (chose Fennekin), Fossil Choice 1: Fletchling Lv. 15
  (130005, 13017, 13018, 13, NULL, 130001, 'fennekin', NULL, NULL, 1, 661, 66100, 15, NULL),
  -- Serena / Calem beside you vs Tierno & Trevor (chose Fennekin), Fossil Choice 2: Frogadier Lv. 16
  (130005, 13017, 13018, 13, NULL, 130001, 'fennekin', NULL, NULL, 2, 657, 65700, 16, NULL),
  -- Serena / Calem beside you vs Tierno & Trevor (chose Froakie), Fossil Choice 1: Fletchling Lv. 15
  (130005, 13017, 13018, 13, NULL, 130001, 'froakie', NULL, NULL, 1, 661, 66100, 15, NULL),
  -- Serena / Calem beside you vs Tierno & Trevor (chose Froakie), Fossil Choice 2: Quilladin Lv. 16
  (130005, 13017, 13018, 13, NULL, 130001, 'froakie', NULL, NULL, 2, 651, 65100, 16, NULL),
  -- Arven beside you vs Stony Cliff Titan, Stony Cliff Titan 1: Shellder Lv. 16
  (230024, 23022, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 90, 9000, 16, NULL),
  -- Arven beside you vs Open Sky Titan, Open Sky Titan 1: Nacli Lv. 19
  (230025, 23023, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 932, 93200, 19, NULL),
  -- Arven beside you vs Lurking Steel Titan, Lurking Steel Titan 1: Toedscool Lv. 28
  (230026, 23024, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 948, 94800, 28, NULL),
  -- Arven beside you vs Quaking Earth Titan, Quaking Earth Titan 1: Scovillain Lv. 44
  (230027, 23025, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 952, 95200, 44, NULL),
  -- Arven beside you vs False Dragon Titan, False Dragon Titan 1: Greedent Lv. 55
  (230028, 23026, 23027, 23, NULL, NULL, NULL, NULL, NULL, 1, 820, 82000, 55, NULL),
  -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 1: Morpeko Lv. 28
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 877, 87700, 28, NULL),
  -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 2: Swadloon Lv. 28
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 541, 54100, 28, NULL),
  -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 3: Mightyena Lv. 28
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 262, 26200, 28, NULL),
  -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 4: Poltchageist Lv. 28
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1012, 101200, 28, NULL),
  -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 1: Morpeko Lv. 70, holds Focus Sash
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 877, 87700, 70, 395),
  -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 2: Swadloon Lv. 70
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 541, 54100, 70, NULL),
  -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 3: Mightyena Lv. 70
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 262, 26200, 70, NULL),
  -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 4: Sinistcha Lv. 70, holds Occa Berry
  (240004, 24007, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1013, 101300, 70, 213),
  -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 1: Morpeko Lv. 28
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 877, 87700, 28, NULL),
  -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 2: Swadloon Lv. 28
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 541, 54100, 28, NULL),
  -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 3: Mightyena Lv. 28
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 262, 26200, 28, NULL),
  -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 4: Poltchageist Lv. 28
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1012, 101200, 28, NULL),
  -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 1: Morpeko Lv. 70, holds Focus Sash
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 877, 87700, 70, 395),
  -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 2: Swadloon Lv. 70
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 541, 54100, 70, NULL),
  -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 3: Mightyena Lv. 70
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 262, 26200, 70, NULL),
  -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 4: Sinistcha Lv. 70, holds Occa Berry
  (240004, 24008, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1013, 101300, 70, 213),
  -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 1: Morpeko Lv. 28
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 877, 87700, 28, NULL),
  -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 2: Swadloon Lv. 28
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 541, 54100, 28, NULL),
  -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 3: Mightyena Lv. 28
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 262, 26200, 28, NULL),
  -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 4: Poltchageist Lv. 28
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1012, 101200, 28, NULL),
  -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 1: Morpeko Lv. 70, holds Focus Sash
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 877, 87700, 70, 395),
  -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 2: Swadloon Lv. 70
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 541, 54100, 70, NULL),
  -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 3: Mightyena Lv. 70
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 262, 26200, 70, NULL),
  -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 4: Sinistcha Lv. 70, holds Occa Berry
  (240004, 24009, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1013, 101300, 70, 213),
  -- Carmine beside you vs Terapagos, Terapagos Battle 1: Sinistcha Lv. 75
  (250008, 25006, 25008, 25, NULL, NULL, NULL, NULL, NULL, 1, 1013, 101300, 75, NULL),
  -- Kieran beside you vs Terapagos, Terapagos Battle 1: Hydrapple Lv. 82
  (250008, 25006, 25009, 25, NULL, NULL, NULL, NULL, NULL, 1, 1019, 101900, 82, NULL),
  -- Kieran beside you vs Terapagos, Terapagos Battle 2: Dragonite Lv. 80
  (250008, 25006, 25009, 25, NULL, NULL, NULL, NULL, NULL, 2, 149, 14900, 80, NULL),
  -- Kieran beside you vs Terapagos, Terapagos Battle 3: Porygon-Z Lv. 81
  (250008, 25006, 25009, 25, NULL, NULL, NULL, NULL, NULL, 3, 474, 47400, 81, NULL),
  -- Kieran beside you vs Terapagos, Terapagos Battle 4: Grimmsnarl Lv. 81
  (250008, 25006, 25009, 25, NULL, NULL, NULL, NULL, NULL, 4, 861, 86100, 81, NULL),
  -- Kieran beside you vs Terapagos, Terapagos Battle 5: Incineroar Lv. 81
  (250008, 25006, 25009, 25, NULL, NULL, NULL, NULL, NULL, 5, 727, 72700, 81, NULL),
  -- Kieran beside you vs Arven & Penny, Mochi Mayhem 1: Poliwrath Lv. 85, holds Wacan Berry
  (250009, 25010, 25009, 25, NULL, NULL, NULL, NULL, NULL, 1, 62, 6200, 85, 215),
  -- Kieran beside you vs Arven & Penny, Mochi Mayhem 2: Dragonite Lv. 85, holds Expert Belt
  (250009, 25010, 25009, 25, NULL, NULL, NULL, NULL, NULL, 2, 149, 14900, 85, 391),
  -- Kieran beside you vs Arven & Penny, Mochi Mayhem 3: Porygon-Z Lv. 86, holds Life Orb
  (250009, 25010, 25009, 25, NULL, NULL, NULL, NULL, NULL, 3, 474, 47400, 86, 404),
  -- Kieran beside you vs Arven & Penny, Mochi Mayhem 4: Grimmsnarl Lv. 86, holds Focus Sash
  (250009, 25010, 25009, 25, NULL, NULL, NULL, NULL, NULL, 4, 861, 86100, 86, 395),
  -- Kieran beside you vs Arven & Penny, Mochi Mayhem 5: Incineroar Lv. 86, holds Sitrus Berry
  (250009, 25010, 25009, 25, NULL, NULL, NULL, NULL, NULL, 5, 727, 72700, 86, 187),
  -- Kieran beside you vs Arven & Penny, Mochi Mayhem 6: Hydrapple Lv. 87, holds Assault Vest
  (250009, 25010, 25009, 25, NULL, NULL, NULL, NULL, NULL, 6, 1019, 101900, 87, 373),
  -- Lida beside you vs Rogue Mega Camerupt, Rogue Mega Camerupt 1: Clauncher Lv. 29
  (260023, 26018, 26032, 26, NULL, NULL, NULL, NULL, NULL, 1, 692, 69200, 29, NULL),
  -- Lida beside you vs Rogue Mega Camerupt, Rogue Mega Camerupt 2: Vanillite Lv. 29
  (260023, 26018, 26032, 26, NULL, NULL, NULL, NULL, NULL, 2, 582, 58200, 29, NULL),
  -- Lida beside you vs Rogue Mega Camerupt, Rogue Mega Camerupt 3: Staryu Lv. 30
  (260023, 26018, 26032, 26, NULL, NULL, NULL, NULL, NULL, 3, 120, 12000, 30, NULL),
  -- Lida beside you vs Rogue Mega Hawlucha, Rogue Mega Hawlucha 1: Clauncher Lv. 36
  (260026, 26021, 26032, 26, NULL, NULL, NULL, NULL, NULL, 1, 692, 69200, 36, NULL),
  -- Lida beside you vs Rogue Mega Hawlucha, Rogue Mega Hawlucha 2: Vanillish Lv. 36
  (260026, 26021, 26032, 26, NULL, NULL, NULL, NULL, NULL, 2, 583, 58300, 36, NULL),
  -- Lida beside you vs Rogue Mega Hawlucha, Rogue Mega Hawlucha 3: Staryu Lv. 37
  (260026, 26021, 26032, 26, NULL, NULL, NULL, NULL, NULL, 3, 120, 12000, 37, NULL),
  -- Lida beside you vs Rogue Mega Barbaracle, Rogue Mega Barbaracle 1: Clawitzer Lv. 43
  (260029, 26024, 26032, 26, NULL, NULL, NULL, NULL, NULL, 1, 693, 69300, 43, NULL),
  -- Lida beside you vs Rogue Mega Barbaracle, Rogue Mega Barbaracle 2: Vanillish Lv. 43
  (260029, 26024, 26032, 26, NULL, NULL, NULL, NULL, NULL, 2, 583, 58300, 43, NULL),
  -- Lida beside you vs Rogue Mega Barbaracle, Rogue Mega Barbaracle 3: Staryu Lv. 44
  (260029, 26024, 26032, 26, NULL, NULL, NULL, NULL, NULL, 3, 120, 12000, 44, NULL),
  -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 1: Clawitzer Lv. 46
  (260032, 26027, 26032, 26, NULL, NULL, NULL, NULL, NULL, 1, 693, 69300, 46, NULL),
  -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 2: Vanillish Lv. 46
  (260032, 26027, 26032, 26, NULL, NULL, NULL, NULL, NULL, 2, 583, 58300, 46, NULL),
  -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 3: Emolga Lv. 47
  (260032, 26027, 26032, 26, NULL, NULL, NULL, NULL, NULL, 3, 587, 58700, 47, NULL),
  -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 4: Staryu Lv. 48
  (260032, 26027, 26032, 26, NULL, NULL, NULL, NULL, NULL, 4, 120, 12000, 48, NULL),
  -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 1: Starmie Lv. 55
  (260036, 26031, 26032, 26, NULL, NULL, NULL, NULL, NULL, 1, 121, 12100, 55, NULL),
  -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 2: Clawitzer Lv. 54
  (260036, 26031, 26032, 26, NULL, NULL, NULL, NULL, NULL, 2, 693, 69300, 54, NULL),
  -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 3: Emolga Lv. 54
  (260036, 26031, 26032, 26, NULL, NULL, NULL, NULL, NULL, 3, 587, 58700, 54, NULL),
  -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 4: Vanilluxe Lv. 54
  (260036, 26031, 26032, 26, NULL, NULL, NULL, NULL, NULL, 4, 584, 58400, 54, NULL),
  -- Naveen beside you vs Rogue Mega Victreebel, Rogue Mega Victreebel 1: Ariados Lv. 29
  (260024, 26019, 26033, 26, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 29, NULL),
  -- Naveen beside you vs Rogue Mega Victreebel, Rogue Mega Victreebel 2: Sableye Lv. 29
  (260024, 26019, 26033, 26, NULL, NULL, NULL, NULL, NULL, 2, 302, 30200, 29, NULL),
  -- Naveen beside you vs Rogue Mega Victreebel, Rogue Mega Victreebel 3: Scraggy Lv. 30
  (260024, 26019, 26033, 26, NULL, NULL, NULL, NULL, NULL, 3, 559, 55900, 30, NULL),
  -- Naveen beside you vs Rogue Mega Banette, Rogue Mega Banette 1: Ariados Lv. 36
  (260027, 26022, 26033, 26, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 36, NULL),
  -- Naveen beside you vs Rogue Mega Banette, Rogue Mega Banette 2: Sableye Lv. 36
  (260027, 26022, 26033, 26, NULL, NULL, NULL, NULL, NULL, 2, 302, 30200, 36, NULL),
  -- Naveen beside you vs Rogue Mega Banette, Rogue Mega Banette 3: Scraggy Lv. 37
  (260027, 26022, 26033, 26, NULL, NULL, NULL, NULL, NULL, 3, 559, 55900, 37, NULL),
  -- Naveen beside you vs Rogue Mega Ampharos, Rogue Mega Ampharos 1: Ariados Lv. 43
  (260030, 26025, 26033, 26, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 43, NULL),
  -- Naveen beside you vs Rogue Mega Ampharos, Rogue Mega Ampharos 2: Sableye Lv. 43
  (260030, 26025, 26033, 26, NULL, NULL, NULL, NULL, NULL, 2, 302, 30200, 43, NULL),
  -- Naveen beside you vs Rogue Mega Ampharos, Rogue Mega Ampharos 3: Scrafty Lv. 44
  (260030, 26025, 26033, 26, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 44, NULL),
  -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 1: Ariados Lv. 48
  (260031, 26026, 26033, 26, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 48, NULL),
  -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 2: Sableye Lv. 48
  (260031, 26026, 26033, 26, NULL, NULL, NULL, NULL, NULL, 2, 302, 30200, 48, NULL),
  -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 3: Krookodile Lv. 49
  (260031, 26026, 26033, 26, NULL, NULL, NULL, NULL, NULL, 3, 553, 55300, 49, NULL),
  -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 4: Scrafty Lv. 50
  (260031, 26026, 26033, 26, NULL, NULL, NULL, NULL, NULL, 4, 560, 56000, 50, NULL),
  -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 1: Ariados Lv. 54
  (260035, 26030, 26033, 26, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 54, NULL),
  -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 2: Sableye Lv. 54
  (260035, 26030, 26033, 26, NULL, NULL, NULL, NULL, NULL, 2, 302, 30200, 54, NULL),
  -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 3: Krookodile Lv. 54
  (260035, 26030, 26033, 26, NULL, NULL, NULL, NULL, NULL, 3, 553, 55300, 54, NULL),
  -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 4: Scrafty Lv. 55
  (260035, 26030, 26033, 26, NULL, NULL, NULL, NULL, NULL, 4, 560, 56000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Chikorita), Rogue Mega Slowbro 1: Croconaw Lv. 25
  (260022, 26017, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 159, 15900, 25, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Chikorita), Rogue Mega Slowbro 2: Pignite Lv. 25
  (260022, 26017, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 499, 49900, 25, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Chikorita), Rogue Mega Slowbro 3: Manectric Lv. 26
  (260022, 26017, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31000, 26, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Tepig), Rogue Mega Slowbro 1: Bayleef Lv. 25
  (260022, 26017, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 153, 15300, 25, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Tepig), Rogue Mega Slowbro 2: Croconaw Lv. 25
  (260022, 26017, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 159, 15900, 25, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Tepig), Rogue Mega Slowbro 3: Manectric Lv. 26
  (260022, 26017, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31000, 26, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Totodile), Rogue Mega Slowbro 1: Pignite Lv. 25
  (260022, 26017, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 499, 49900, 25, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Totodile), Rogue Mega Slowbro 2: Bayleef Lv. 25
  (260022, 26017, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 153, 15300, 25, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Totodile), Rogue Mega Slowbro 3: Manectric Lv. 26
  (260022, 26017, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31000, 26, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Chikorita), Rogue Mega Beedrill 1: Feraligatr Lv. 36
  (260025, 26020, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 160, 16000, 36, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Chikorita), Rogue Mega Beedrill 2: Emboar Lv. 36
  (260025, 26020, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 500, 50000, 36, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Chikorita), Rogue Mega Beedrill 3: Manectric Lv. 37
  (260025, 26020, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31000, 37, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Tepig), Rogue Mega Beedrill 1: Meganium Lv. 36
  (260025, 26020, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 154, 15400, 36, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Tepig), Rogue Mega Beedrill 2: Feraligatr Lv. 36
  (260025, 26020, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 160, 16000, 36, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Tepig), Rogue Mega Beedrill 3: Manectric Lv. 37
  (260025, 26020, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31000, 37, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Totodile), Rogue Mega Beedrill 1: Emboar Lv. 36
  (260025, 26020, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 500, 50000, 36, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Totodile), Rogue Mega Beedrill 2: Meganium Lv. 36
  (260025, 26020, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 154, 15400, 36, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Totodile), Rogue Mega Beedrill 3: Manectric Lv. 37
  (260025, 26020, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31000, 37, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Chikorita), Rogue Mega Mawile 1: Feraligatr Lv. 43
  (260028, 26023, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 160, 16000, 43, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Chikorita), Rogue Mega Mawile 2: Emboar Lv. 43
  (260028, 26023, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 500, 50000, 43, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Chikorita), Rogue Mega Mawile 3: Manectric Lv. 44
  (260028, 26023, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31000, 44, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Tepig), Rogue Mega Mawile 1: Meganium Lv. 43
  (260028, 26023, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 154, 15400, 43, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Tepig), Rogue Mega Mawile 2: Feraligatr Lv. 43
  (260028, 26023, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 160, 16000, 43, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Tepig), Rogue Mega Mawile 3: Manectric Lv. 44
  (260028, 26023, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31000, 44, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Totodile), Rogue Mega Mawile 1: Emboar Lv. 43
  (260028, 26023, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 500, 50000, 43, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Totodile), Rogue Mega Mawile 2: Meganium Lv. 43
  (260028, 26023, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 154, 15400, 43, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Totodile), Rogue Mega Mawile 3: Manectric Lv. 44
  (260028, 26023, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31000, 44, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Chikorita), Rogue Mega Venusaur 1: Feraligatr Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 160, 16000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Chikorita), Rogue Mega Venusaur 2: Emboar Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 500, 50000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Chikorita), Rogue Mega Venusaur 3: Manectric Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Tepig), Rogue Mega Venusaur 1: Meganium Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 154, 15400, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Tepig), Rogue Mega Venusaur 2: Feraligatr Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 160, 16000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Tepig), Rogue Mega Venusaur 3: Manectric Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Totodile), Rogue Mega Venusaur 1: Emboar Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 500, 50000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Totodile), Rogue Mega Venusaur 2: Meganium Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 154, 15400, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Totodile), Rogue Mega Venusaur 3: Manectric Lv. 50
  (260033, 26028, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31000, 50, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 1: Feraligatr Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 1, 160, 16000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 2: Emboar Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 2, 500, 50000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 3: Meowstic (Female) Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 3, 678, 67801, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 4: Manectric Lv. 56
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 4, 310, 31000, 56, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 1: Meganium Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 1, 154, 15400, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 2: Feraligatr Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 2, 160, 16000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 3: Meowstic (Female) Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 3, 678, 67801, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 4: Manectric Lv. 56
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 4, 310, 31000, 56, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 1: Emboar Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 1, 500, 50000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 2: Meganium Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 2, 154, 15400, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 3: Meowstic (Female) Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 3, 678, 67801, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 4: Manectric Lv. 56
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 4, 310, 31000, 56, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 1: Feraligatr Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 1, 160, 16000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 2: Emboar Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 2, 500, 50000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 3: Meowstic Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 3, 678, 67800, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 4: Manectric Lv. 56
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 4, 310, 31000, 56, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 1: Meganium Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 1, 154, 15400, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 2: Feraligatr Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 2, 160, 16000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 3: Meowstic Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 3, 678, 67800, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 4: Manectric Lv. 56
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 4, 310, 31000, 56, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 1: Emboar Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 1, 500, 50000, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 2: Meganium Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 2, 154, 15400, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 3: Meowstic Lv. 55
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 3, 678, 67800, 55, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 4: Manectric Lv. 56
  (260034, 26029, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 4, 310, 31000, 56, NULL),
  -- Korrina beside you vs Rogue Mega Absol Z, Rogue Mega Absol Z 1: Machamp Lv. 85
  (270012, 27011, 27016, 27, NULL, NULL, NULL, NULL, NULL, 1, 68, 6800, 85, NULL),
  -- Korrina beside you vs Rogue Mega Absol Z, Rogue Mega Absol Z 2: Hawlucha Lv. 85
  (270012, 27011, 27016, 27, NULL, NULL, NULL, NULL, NULL, 2, 701, 70100, 85, NULL),
  -- Korrina beside you vs Rogue Mega Absol Z, Rogue Mega Absol Z 3: Lucario Lv. 85, holds Lucarionite Z
  (270012, 27011, 27016, 27, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 85, 493),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Chikorita in Legends: Z-A), Rogue Mega Absol Z 1: Goodra Lv. 85
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Chikorita in Legends: Z-A), Rogue Mega Absol Z 2: Feraligatr Lv. 85
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 2, 160, 16000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Chikorita in Legends: Z-A), Rogue Mega Absol Z 3: Emboar Lv. 85, holds Emboarite
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 3, 500, 50000, 85, 468),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Tepig in Legends: Z-A), Rogue Mega Absol Z 1: Goodra Lv. 85
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Tepig in Legends: Z-A), Rogue Mega Absol Z 2: Meganium Lv. 85
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 2, 154, 15400, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Tepig in Legends: Z-A), Rogue Mega Absol Z 3: Feraligatr Lv. 85, holds Feraligite
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 3, 160, 16000, 85, 463),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Totodile in Legends: Z-A), Rogue Mega Absol Z 1: Goodra Lv. 85
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Totodile in Legends: Z-A), Rogue Mega Absol Z 2: Emboar Lv. 85
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 2, 500, 50000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Totodile in Legends: Z-A), Rogue Mega Absol Z 3: Meganium Lv. 85, holds Meganiumite
  (270012, 27011, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 3, 154, 15400, 85, 462),
  -- Korrina beside you vs Rogue Mega Staraptor, Rogue Mega Staraptor 1: Machamp Lv. 85
  (270013, 27012, 27016, 27, NULL, NULL, NULL, NULL, NULL, 1, 68, 6800, 85, NULL),
  -- Korrina beside you vs Rogue Mega Staraptor, Rogue Mega Staraptor 2: Hawlucha Lv. 85
  (270013, 27012, 27016, 27, NULL, NULL, NULL, NULL, NULL, 2, 701, 70100, 85, NULL),
  -- Korrina beside you vs Rogue Mega Staraptor, Rogue Mega Staraptor 3: Lucario Lv. 85, holds Lucarionite Z
  (270013, 27012, 27016, 27, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 85, 493),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Chikorita in Legends: Z-A), Rogue Mega Staraptor 1: Goodra Lv. 85
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Chikorita in Legends: Z-A), Rogue Mega Staraptor 2: Feraligatr Lv. 85
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 2, 160, 16000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Chikorita in Legends: Z-A), Rogue Mega Staraptor 3: Emboar Lv. 85, holds Emboarite
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 3, 500, 50000, 85, 468),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Tepig in Legends: Z-A), Rogue Mega Staraptor 1: Goodra Lv. 85
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Tepig in Legends: Z-A), Rogue Mega Staraptor 2: Meganium Lv. 85
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 2, 154, 15400, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Tepig in Legends: Z-A), Rogue Mega Staraptor 3: Feraligatr Lv. 85, holds Feraligite
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 3, 160, 16000, 85, 463),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Totodile in Legends: Z-A), Rogue Mega Staraptor 1: Goodra Lv. 85
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Totodile in Legends: Z-A), Rogue Mega Staraptor 2: Emboar Lv. 85
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 2, 500, 50000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Totodile in Legends: Z-A), Rogue Mega Staraptor 3: Meganium Lv. 85, holds Meganiumite
  (270013, 27012, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 3, 154, 15400, 85, 462),
  -- Korrina beside you vs Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 1: Machamp Lv. 85
  (270014, 27013, 27016, 27, NULL, NULL, NULL, NULL, NULL, 1, 68, 6800, 85, NULL),
  -- Korrina beside you vs Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 2: Hawlucha Lv. 85
  (270014, 27013, 27016, 27, NULL, NULL, NULL, NULL, NULL, 2, 701, 70100, 85, NULL),
  -- Korrina beside you vs Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 3: Lucario Lv. 85, holds Lucarionite Z
  (270014, 27013, 27016, 27, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 85, 493),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Chikorita in Legends: Z-A), Rogue Mega Tatsugiri 1: Goodra Lv. 85
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Chikorita in Legends: Z-A), Rogue Mega Tatsugiri 2: Feraligatr Lv. 85
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 2, 160, 16000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Chikorita in Legends: Z-A), Rogue Mega Tatsugiri 3: Emboar Lv. 85, holds Emboarite
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 3, 500, 50000, 85, 468),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Tepig in Legends: Z-A), Rogue Mega Tatsugiri 1: Goodra Lv. 85
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Tepig in Legends: Z-A), Rogue Mega Tatsugiri 2: Meganium Lv. 85
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 2, 154, 15400, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Tepig in Legends: Z-A), Rogue Mega Tatsugiri 3: Feraligatr Lv. 85, holds Feraligite
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 3, 160, 16000, 85, 463),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Totodile in Legends: Z-A), Rogue Mega Tatsugiri 1: Goodra Lv. 85
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Totodile in Legends: Z-A), Rogue Mega Tatsugiri 2: Emboar Lv. 85
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 2, 500, 50000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Totodile in Legends: Z-A), Rogue Mega Tatsugiri 3: Meganium Lv. 85, holds Meganiumite
  (270014, 27013, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 3, 154, 15400, 85, 462),
  -- Korrina beside you vs Rogue Mega Meowstic, Rogue Mega Meowstic 1: Machamp Lv. 85
  (270015, 27014, 27016, 27, NULL, NULL, NULL, NULL, NULL, 1, 68, 6800, 85, NULL),
  -- Korrina beside you vs Rogue Mega Meowstic, Rogue Mega Meowstic 2: Hawlucha Lv. 85
  (270015, 27014, 27016, 27, NULL, NULL, NULL, NULL, NULL, 2, 701, 70100, 85, NULL),
  -- Korrina beside you vs Rogue Mega Meowstic, Rogue Mega Meowstic 3: Lucario Lv. 85, holds Lucarionite Z
  (270015, 27014, 27016, 27, NULL, NULL, NULL, NULL, NULL, 3, 448, 44800, 85, 493),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Chikorita in Legends: Z-A), Rogue Mega Meowstic 1: Goodra Lv. 85
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Chikorita in Legends: Z-A), Rogue Mega Meowstic 2: Feraligatr Lv. 85
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 2, 160, 16000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Chikorita in Legends: Z-A), Rogue Mega Meowstic 3: Emboar Lv. 85, holds Emboarite
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-chikorita', 'You chose Chikorita in Legends: Z-A', 3, 500, 50000, 85, 468),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Tepig in Legends: Z-A), Rogue Mega Meowstic 1: Goodra Lv. 85
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Tepig in Legends: Z-A), Rogue Mega Meowstic 2: Meganium Lv. 85
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 2, 154, 15400, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Tepig in Legends: Z-A), Rogue Mega Meowstic 3: Feraligatr Lv. 85, holds Feraligite
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-tepig', 'You chose Tepig in Legends: Z-A', 3, 160, 16000, 85, 463),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Totodile in Legends: Z-A), Rogue Mega Meowstic 1: Goodra Lv. 85
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 1, 706, 70600, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Totodile in Legends: Z-A), Rogue Mega Meowstic 2: Emboar Lv. 85
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 2, 500, 50000, 85, NULL),
  -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Totodile in Legends: Z-A), Rogue Mega Meowstic 3: Meganium Lv. 85, holds Meganiumite
  (270015, 27014, 27015, 27, NULL, NULL, NULL, 'chose-totodile', 'You chose Totodile in Legends: Z-A', 3, 154, 15400, 85, 462),
  -- Trace beside you vs Blue (Let's Go, Pikachu!) 1: Cubone Lv. 36
  (170022, 17014, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 104, 10400, 36, NULL),
  -- Trace beside you vs Blue (Let's Go, Pikachu!) 2: Pidgeot Lv. 36
  (170022, 17014, 17016, 17, 29, NULL, NULL, NULL, NULL, 2, 18, 1800, 36, NULL),
  -- Trace beside you vs Blue (Let's Go, Pikachu!) 3: Gloom Lv. 36
  (170022, 17014, 17016, 17, 29, NULL, NULL, NULL, NULL, 3, 44, 4400, 36, NULL),
  -- Trace beside you vs Blue (Let's Go, Pikachu!) 4: Jolteon Lv. 37
  (170022, 17014, 17016, 17, 29, NULL, NULL, NULL, NULL, 4, 135, 13500, 37, NULL),
  -- Trace beside you vs Blue (Let's Go, Eevee!) 1: Cubone Lv. 36
  (170022, 17014, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 104, 10400, 36, NULL),
  -- Trace beside you vs Blue (Let's Go, Eevee!) 2: Pidgeot Lv. 36
  (170022, 17014, 17016, 17, 30, NULL, NULL, NULL, NULL, 2, 18, 1800, 36, NULL),
  -- Trace beside you vs Blue (Let's Go, Eevee!) 3: Gloom Lv. 36
  (170022, 17014, 17016, 17, 30, NULL, NULL, NULL, NULL, 3, 44, 4400, 36, NULL),
  -- Trace beside you vs Blue (Let's Go, Eevee!) 4: Raichu Lv. 37
  (170022, 17014, 17016, 17, 30, NULL, NULL, NULL, NULL, 4, 26, 2600, 37, NULL),
  -- Hop beside you vs Sordward & Shielbert [grookey] 1: Dubwool Lv. 61
  (180014, 18024, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 61, NULL),
  -- Hop beside you vs Sordward & Shielbert [grookey] 2: Corviknight Lv. 61
  (180014, 18024, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 823, 82300, 61, NULL),
  -- Hop beside you vs Sordward & Shielbert [grookey] 3: Inteleon Lv. 62
  (180014, 18024, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 818, 81800, 62, NULL),
  -- Hop beside you vs Sordward & Shielbert [scorbunny] 1: Dubwool Lv. 61
  (180014, 18024, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 61, NULL),
  -- Hop beside you vs Sordward & Shielbert [scorbunny] 2: Corviknight Lv. 61
  (180014, 18024, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 823, 82300, 61, NULL),
  -- Hop beside you vs Sordward & Shielbert [scorbunny] 3: Rillaboom Lv. 62
  (180014, 18024, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 812, 81200, 62, NULL),
  -- Hop beside you vs Sordward & Shielbert [sobble] 1: Dubwool Lv. 61
  (180014, 18024, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 61, NULL),
  -- Hop beside you vs Sordward & Shielbert [sobble] 2: Corviknight Lv. 61
  (180014, 18024, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 823, 82300, 61, NULL),
  -- Hop beside you vs Sordward & Shielbert [sobble] 3: Cinderace Lv. 62
  (180014, 18024, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 815, 81500, 62, NULL),
  -- Barry beside you vs Mars & Jupiter [turtwig] 1: Munchlax Lv. 42
  (210019, 21045, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 1, 446, 44600, 42, NULL),
  -- Barry beside you vs Mars & Jupiter [turtwig] 2: Staraptor Lv. 41, holds Quick Claw
  (210019, 21045, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 2, 398, 39800, 41, 417),
  -- Barry beside you vs Mars & Jupiter [turtwig] 3: Buizel Lv. 42, holds Sea Incense
  (210019, 21045, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 3, 418, 41800, 42, 347),
  -- Barry beside you vs Mars & Jupiter [turtwig] 4: Heracross Lv. 43
  (210019, 21045, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 4, 214, 21400, 43, NULL),
  -- Barry beside you vs Mars & Jupiter [turtwig] 5: Roselia Lv. 42, holds Big Root
  (210019, 21045, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 5, 315, 31500, 42, 375),
  -- Barry beside you vs Mars & Jupiter [turtwig] 6: Infernape Lv. 45, holds Shell Bell
  (210019, 21045, 21014, 21, NULL, 210001, 'turtwig', NULL, NULL, 6, 392, 39200, 45, 425),
  -- Barry beside you vs Mars & Jupiter [chimchar] 1: Munchlax Lv. 42
  (210019, 21045, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 1, 446, 44600, 42, NULL),
  -- Barry beside you vs Mars & Jupiter [chimchar] 2: Staraptor Lv. 41, holds Quick Claw
  (210019, 21045, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 2, 398, 39800, 41, 417),
  -- Barry beside you vs Mars & Jupiter [chimchar] 3: Roselia Lv. 42, holds Big Root
  (210019, 21045, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 3, 315, 31500, 42, 375),
  -- Barry beside you vs Mars & Jupiter [chimchar] 4: Heracross Lv. 43
  (210019, 21045, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 4, 214, 21400, 43, NULL),
  -- Barry beside you vs Mars & Jupiter [chimchar] 5: Ponyta Lv. 42, holds Shell Bell
  (210019, 21045, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 5, 77, 7700, 42, 425),
  -- Barry beside you vs Mars & Jupiter [chimchar] 6: Empoleon Lv. 45, holds Sea Incense
  (210019, 21045, 21014, 21, NULL, 210001, 'chimchar', NULL, NULL, 6, 395, 39500, 45, 347),
  -- Barry beside you vs Mars & Jupiter [piplup] 1: Munchlax Lv. 42
  (210019, 21045, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 1, 446, 44600, 42, NULL),
  -- Barry beside you vs Mars & Jupiter [piplup] 2: Staraptor Lv. 41, holds Quick Claw
  (210019, 21045, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 2, 398, 39800, 41, 417),
  -- Barry beside you vs Mars & Jupiter [piplup] 3: Buizel Lv. 42, holds Sea Incense
  (210019, 21045, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 3, 418, 41800, 42, 347),
  -- Barry beside you vs Mars & Jupiter [piplup] 4: Heracross Lv. 43
  (210019, 21045, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 4, 214, 21400, 43, NULL),
  -- Barry beside you vs Mars & Jupiter [piplup] 5: Ponyta Lv. 42, holds Shell Bell
  (210019, 21045, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 5, 77, 7700, 42, 425),
  -- Barry beside you vs Mars & Jupiter [piplup] 6: Torterra Lv. 45, holds Leftovers
  (210019, 21045, 21014, 21, NULL, 210001, 'piplup', NULL, NULL, 6, 389, 38900, 45, 403);
