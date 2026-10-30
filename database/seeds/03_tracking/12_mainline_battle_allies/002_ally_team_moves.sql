-- ============================================================================
-- Source
-- ============================================================================
-- Emerald: Steven's Multi Battle party in the game's own data (pret pokeemerald,
-- src/battle_tower.c), matching Bulbapedia.
-- Barry's Spear Pillar parties (Diamond / Pearl, Platinum) and Lance's Team Rocket HQ
-- party (HeartGold / SoulSilver): the pret trainer data only; Bulbapedia's trainer
-- pages list no partner team for those games.
-- Every other ally: Bulbapedia trainer pages (Trace, Hop, Hugh, Barry, Brendan and May, Steven,
-- Calem and Serena, Arven, Carmine,
-- Kieran, Lida, Naveen, Taunie, Urbain and Korrina), the party listed for each
-- Multi Battle; Serebii's mission pages confirm who fights beside you in each
-- Legends: Z-A rogue Mega battle but list no partner teams, so those teams are
-- confirmed by one source only.
-- Korrina's Hyperspace team follows her own page (Machamp, Hawlucha, Lucario);
-- Bulbapedia's Rogue Mega Evolution table also lists Sirfetch'd.
-- Forms: no source names a form for Carmine's Poltchageist and Sinistcha, so
-- the default form is stored; allies are stored in the form they are sent out
-- in (Lucario, Emboar, Feraligatr, Meganium and Steven's Metagross hold their Mega Stones).
-- Scope: Story battles where an ally fights beside the player: their Pokémon's moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each ally's Pokémon in each Story battle, by slot, matched to
-- its team row by battle, opponent, ally, choice, variant and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, ally_opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Steven beside you vs Maxie & Tabitha, Mind Badge 1: Metang Lv. 42: Light Screen, Psychic, Reflect, Metal Claw
    (70010, 7018, 7014, NULL, NULL, NULL, NULL, 1, ARRAY[113, 94, 115, 232]),
    -- Steven beside you vs Maxie & Tabitha, Mind Badge 2: Skarmory Lv. 43: Toxic, Aerial Ace, Protect, Steel Wing
    (70010, 7018, 7014, NULL, NULL, NULL, NULL, 2, ARRAY[92, 332, 182, 211]),
    -- Steven beside you vs Maxie & Tabitha, Mind Badge 3: Aggron Lv. 44: Thunder, Protect, Solar Beam, Dragon Claw
    (70010, 7018, 7014, NULL, NULL, NULL, NULL, 3, ARRAY[87, 182, 76, 337]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Munchlax Lv. 40: Body Slam, Stockpile, Swallow, Screech
    (80018, 8028, 8014, NULL, 80001, 'turtwig', NULL, 1, ARRAY[34, 254, 256, 103]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Staraptor Lv. 40: Close Combat, Aerial Ace, Take Down, Quick Attack
    (80018, 8028, 8014, NULL, 80001, 'turtwig', NULL, 2, ARRAY[370, 332, 36, 98]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Buizel Lv. 41: Aqua Jet, Pursuit, Brick Break, Iron Tail
    (80018, 8028, 8014, NULL, 80001, 'turtwig', NULL, 3, ARRAY[453, 228, 280, 231]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Heracross Lv. 42: Close Combat, Brick Break, Night Slash, Aerial Ace
    (80018, 8028, 8014, NULL, 80001, 'turtwig', NULL, 4, ARRAY[370, 280, 400, 332]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Roselia Lv. 41: Giga Drain, Toxic, Ingrain, Grass Whistle
    (80018, 8028, 8014, NULL, 80001, 'turtwig', NULL, 5, ARRAY[202, 92, 275, 320]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Infernape Lv. 43: Close Combat, Punishment, Flame Wheel, Will-O-Wisp
    (80018, 8028, 8014, NULL, 80001, 'turtwig', NULL, 6, ARRAY[370, 386, 172, 261]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Munchlax Lv. 40: Body Slam, Stockpile, Swallow, Screech
    (80018, 8028, 8014, NULL, 80001, 'chimchar', NULL, 1, ARRAY[34, 254, 256, 103]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Staraptor Lv. 40: Close Combat, Aerial Ace, Take Down, Quick Attack
    (80018, 8028, 8014, NULL, 80001, 'chimchar', NULL, 2, ARRAY[370, 332, 36, 98]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Roselia Lv. 41: Giga Drain, Toxic, Ingrain, Grass Whistle
    (80018, 8028, 8014, NULL, 80001, 'chimchar', NULL, 3, ARRAY[202, 92, 275, 320]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Heracross Lv. 42: Close Combat, Brick Break, Night Slash, Aerial Ace
    (80018, 8028, 8014, NULL, 80001, 'chimchar', NULL, 4, ARRAY[370, 280, 400, 332]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Ponyta Lv. 41: Fire Blast, Will-O-Wisp, Stomp, Take Down
    (80018, 8028, 8014, NULL, 80001, 'chimchar', NULL, 5, ARRAY[126, 261, 23, 36]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Empoleon Lv. 43: Aqua Jet, Aerial Ace, Metal Claw, Swagger
    (80018, 8028, 8014, NULL, 80001, 'chimchar', NULL, 6, ARRAY[453, 332, 232, 207]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Munchlax Lv. 40: Body Slam, Stockpile, Swallow, Screech
    (80018, 8028, 8014, NULL, 80001, 'piplup', NULL, 1, ARRAY[34, 254, 256, 103]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Staraptor Lv. 40: Close Combat, Aerial Ace, Take Down, Quick Attack
    (80018, 8028, 8014, NULL, 80001, 'piplup', NULL, 2, ARRAY[370, 332, 36, 98]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Buizel Lv. 41: Aqua Jet, Pursuit, Brick Break, Iron Tail
    (80018, 8028, 8014, NULL, 80001, 'piplup', NULL, 3, ARRAY[453, 228, 280, 231]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Heracross Lv. 42: Close Combat, Brick Break, Night Slash, Aerial Ace
    (80018, 8028, 8014, NULL, 80001, 'piplup', NULL, 4, ARRAY[370, 280, 400, 332]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Ponyta Lv. 41: Fire Blast, Will-O-Wisp, Stomp, Take Down
    (80018, 8028, 8014, NULL, 80001, 'piplup', NULL, 5, ARRAY[126, 261, 23, 36]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Torterra Lv. 43: Giga Drain, Bite, Leech Seed, Synthesis
    (80018, 8028, 8014, NULL, 80001, 'piplup', NULL, 6, ARRAY[202, 44, 73, 235]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Munchlax Lv. 40: Body Slam, Stockpile, Swallow, Screech
    (90019, 9031, 9014, NULL, 90001, 'turtwig', NULL, 1, ARRAY[34, 254, 256, 103]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Staraptor Lv. 42: Close Combat, Aerial Ace, Take Down, Quick Attack
    (90019, 9031, 9014, NULL, 90001, 'turtwig', NULL, 2, ARRAY[370, 332, 36, 98]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Floatzel Lv. 40: Aqua Jet, Pursuit, Brick Break, Iron Tail
    (90019, 9031, 9014, NULL, 90001, 'turtwig', NULL, 3, ARRAY[453, 228, 280, 231]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Heracross Lv. 42: Close Combat, Brick Break, Night Slash, Aerial Ace
    (90019, 9031, 9014, NULL, 90001, 'turtwig', NULL, 4, ARRAY[370, 280, 400, 332]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Roserade Lv. 40: Giga Drain, Toxic, Ingrain, Grass Whistle
    (90019, 9031, 9014, NULL, 90001, 'turtwig', NULL, 5, ARRAY[202, 92, 275, 320]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Infernape Lv. 44: Close Combat, Punishment, Flame Wheel, Will-O-Wisp
    (90019, 9031, 9014, NULL, 90001, 'turtwig', NULL, 6, ARRAY[370, 386, 172, 261]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Munchlax Lv. 40: Body Slam, Stockpile, Swallow, Screech
    (90019, 9031, 9014, NULL, 90001, 'chimchar', NULL, 1, ARRAY[34, 254, 256, 103]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Staraptor Lv. 42: Close Combat, Aerial Ace, Take Down, Quick Attack
    (90019, 9031, 9014, NULL, 90001, 'chimchar', NULL, 2, ARRAY[370, 332, 36, 98]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Roserade Lv. 40: Giga Drain, Toxic, Ingrain, Grass Whistle
    (90019, 9031, 9014, NULL, 90001, 'chimchar', NULL, 3, ARRAY[202, 92, 275, 320]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Heracross Lv. 42: Close Combat, Brick Break, Night Slash, Aerial Ace
    (90019, 9031, 9014, NULL, 90001, 'chimchar', NULL, 4, ARRAY[370, 280, 400, 332]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Rapidash Lv. 40: Fire Blast, Will-O-Wisp, Stomp, Take Down
    (90019, 9031, 9014, NULL, 90001, 'chimchar', NULL, 5, ARRAY[126, 261, 23, 36]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Empoleon Lv. 44: Aqua Jet, Aerial Ace, Metal Claw, Swagger
    (90019, 9031, 9014, NULL, 90001, 'chimchar', NULL, 6, ARRAY[453, 332, 232, 207]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Munchlax Lv. 40: Body Slam, Stockpile, Swallow, Screech
    (90019, 9031, 9014, NULL, 90001, 'piplup', NULL, 1, ARRAY[34, 254, 256, 103]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Staraptor Lv. 42: Close Combat, Aerial Ace, Take Down, Quick Attack
    (90019, 9031, 9014, NULL, 90001, 'piplup', NULL, 2, ARRAY[370, 332, 36, 98]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Floatzel Lv. 40: Aqua Jet, Pursuit, Brick Break, Iron Tail
    (90019, 9031, 9014, NULL, 90001, 'piplup', NULL, 3, ARRAY[453, 228, 280, 231]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Heracross Lv. 42: Close Combat, Brick Break, Night Slash, Aerial Ace
    (90019, 9031, 9014, NULL, 90001, 'piplup', NULL, 4, ARRAY[370, 280, 400, 332]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Rapidash Lv. 40: Fire Blast, Will-O-Wisp, Stomp, Take Down
    (90019, 9031, 9014, NULL, 90001, 'piplup', NULL, 5, ARRAY[126, 261, 23, 36]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Torterra Lv. 44: Giga Drain, Bite, Leech Seed, Synthesis
    (90019, 9031, 9014, NULL, 90001, 'piplup', NULL, 6, ARRAY[202, 44, 73, 235]),
    -- Lance beside you vs Ariana & Grunt: Dragonite Lv. 40: Fly, Twister, Thunder, Hyper Beam
    (100009, 10043, 10013, NULL, NULL, NULL, NULL, 1, ARRAY[19, 239, 87, 63]),
    -- Hugh beside you vs Zinzolin & Grunt [snivy]: Emboar Lv. 43: Take Down, Assurance, Heat Crash, Flamethrower
    (120009, 12035, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[36, 372, 535, 53]),
    -- Hugh beside you vs Zinzolin & Grunt [snivy]: Simipour Lv. 41: Scald, Leer, Lick, Fury Swipes
    (120009, 12035, 12016, NULL, 120001, 'snivy', NULL, 2, ARRAY[503, 43, 122, 154]),
    -- Hugh beside you vs Zinzolin & Grunt [snivy]: Unfezant Lv. 41: Taunt, Air Slash, Razor Wind, Detect
    (120009, 12035, 12016, NULL, 120001, 'snivy', NULL, 3, ARRAY[269, 403, 13, 197]),
    -- Hugh beside you vs Zinzolin & Grunt [tepig]: Samurott Lv. 43: Aqua Jet, Encore, Revenge, Slash
    (120009, 12035, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[453, 227, 279, 163]),
    -- Hugh beside you vs Zinzolin & Grunt [tepig]: Simisage Lv. 41: Seed Bomb, Leer, Lick, Fury Swipes
    (120009, 12035, 12016, NULL, 120001, 'tepig', NULL, 2, ARRAY[402, 43, 122, 154]),
    -- Hugh beside you vs Zinzolin & Grunt [tepig]: Unfezant Lv. 41: Taunt, Air Slash, Razor Wind, Detect
    (120009, 12035, 12016, NULL, 120001, 'tepig', NULL, 3, ARRAY[269, 403, 13, 197]),
    -- Hugh beside you vs Zinzolin & Grunt [oshawott]: Serperior Lv. 43: Coil, Leaf Blade, Slam, Mega Drain
    (120009, 12035, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[489, 348, 21, 72]),
    -- Hugh beside you vs Zinzolin & Grunt [oshawott]: Simisear Lv. 41: Flame Burst, Leer, Lick, Fury Swipes
    (120009, 12035, 12016, NULL, 120001, 'oshawott', NULL, 2, ARRAY[481, 43, 122, 154]),
    -- Hugh beside you vs Zinzolin & Grunt [oshawott]: Unfezant Lv. 41: Taunt, Air Slash, Razor Wind, Detect
    (120009, 12035, 12016, NULL, 120001, 'oshawott', NULL, 3, ARRAY[269, 403, 13, 197]),
    -- Hugh beside you vs Zinzolin & Grunt [snivy]: Emboar Lv. 50: Heat Crash, Assurance, Flamethrower, Head Smash
    (120011, 12035, 12016, NULL, 120001, 'snivy', NULL, 1, ARRAY[535, 372, 53, 457]),
    -- Hugh beside you vs Zinzolin & Grunt [snivy]: Unfezant Lv. 48: Razor Wind, Feather Dance, Air Slash, Taunt
    (120011, 12035, 12016, NULL, 120001, 'snivy', NULL, 2, ARRAY[13, 297, 403, 269]),
    -- Hugh beside you vs Zinzolin & Grunt [snivy]: Simipour Lv. 48: Leer, Lick, Fury Swipes, Scald
    (120011, 12035, 12016, NULL, 120001, 'snivy', NULL, 3, ARRAY[43, 122, 154, 503]),
    -- Hugh beside you vs Zinzolin & Grunt [tepig]: Samurott Lv. 50: Encore, Slash, Aqua Tail, Retaliate
    (120011, 12035, 12016, NULL, 120001, 'tepig', NULL, 1, ARRAY[227, 163, 401, 514]),
    -- Hugh beside you vs Zinzolin & Grunt [tepig]: Unfezant Lv. 48: Razor Wind, Feather Dance, Air Slash, Taunt
    (120011, 12035, 12016, NULL, 120001, 'tepig', NULL, 2, ARRAY[13, 297, 403, 269]),
    -- Hugh beside you vs Zinzolin & Grunt [tepig]: Simisage Lv. 48: Leer, Lick, Fury Swipes, Seed Bomb
    (120011, 12035, 12016, NULL, 120001, 'tepig', NULL, 3, ARRAY[43, 122, 154, 402]),
    -- Hugh beside you vs Zinzolin & Grunt [oshawott]: Serperior Lv. 50: Coil, Leaf Blade, Giga Drain, Wring Out
    (120011, 12035, 12016, NULL, 120001, 'oshawott', NULL, 1, ARRAY[489, 348, 202, 378]),
    -- Hugh beside you vs Zinzolin & Grunt [oshawott]: Unfezant Lv. 48: Razor Wind, Feather Dance, Air Slash, Taunt
    (120011, 12035, 12016, NULL, 120001, 'oshawott', NULL, 2, ARRAY[13, 297, 403, 269]),
    -- Hugh beside you vs Zinzolin & Grunt [oshawott]: Simisear Lv. 48: Leer, Lick, Fury Swipes, Flame Burst
    (120011, 12035, 12016, NULL, 120001, 'oshawott', NULL, 3, ARRAY[43, 122, 154, 481]),
    -- Serena / Calem beside you vs Tierno & Trevor (chose Chespin), Fossil Choice 1: Fletchling Lv. 15: Quick Attack, Growl, Peck
    (130005, 13017, 13018, NULL, 130001, 'chespin', NULL, 1, ARRAY[98, 45, 64]),
    -- Serena / Calem beside you vs Tierno & Trevor (chose Chespin), Fossil Choice 2: Braixen Lv. 16: Ember, Scratch
    (130005, 13017, 13018, NULL, 130001, 'chespin', NULL, 2, ARRAY[52, 10]),
    -- Serena / Calem beside you vs Tierno & Trevor (chose Fennekin), Fossil Choice 1: Fletchling Lv. 15: Quick Attack, Growl, Peck
    (130005, 13017, 13018, NULL, 130001, 'fennekin', NULL, 1, ARRAY[98, 45, 64]),
    -- Serena / Calem beside you vs Tierno & Trevor (chose Fennekin), Fossil Choice 2: Frogadier Lv. 16: Bubble, Quick Attack
    (130005, 13017, 13018, NULL, 130001, 'fennekin', NULL, 2, ARRAY[145, 98]),
    -- Serena / Calem beside you vs Tierno & Trevor (chose Froakie), Fossil Choice 1: Fletchling Lv. 15: Quick Attack, Growl, Peck
    (130005, 13017, 13018, NULL, 130001, 'froakie', NULL, 1, ARRAY[98, 45, 64]),
    -- Serena / Calem beside you vs Tierno & Trevor (chose Froakie), Fossil Choice 2: Quilladin Lv. 16: Vine Whip, Bite
    (130005, 13017, 13018, NULL, 130001, 'froakie', NULL, 2, ARRAY[22, 44]),
    -- Calem beside you vs Celosia & Bryony [chespin]: Meowstic Lv. 37: Psychic, Fake Out, Disarming Voice, Light Screen
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-chespin', 1, ARRAY[94, 252, 574, 113]),
    -- Calem beside you vs Celosia & Bryony [chespin]: Absol Lv. 39: Slash, Swords Dance, Quick Attack, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-chespin', 2, ARRAY[163, 14, 98, 44]),
    -- Calem beside you vs Celosia & Bryony [chespin]: Delphox Lv. 39: Mystical Fire, Psybeam
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-chespin', 3, ARRAY[595, 60]),
    -- Calem beside you vs Celosia & Bryony [fennekin]: Meowstic Lv. 37: Psychic, Fake Out, Disarming Voice, Light Screen
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-fennekin', 1, ARRAY[94, 252, 574, 113]),
    -- Calem beside you vs Celosia & Bryony [fennekin]: Absol Lv. 39: Slash, Swords Dance, Quick Attack, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-fennekin', 2, ARRAY[163, 14, 98, 44]),
    -- Calem beside you vs Celosia & Bryony [fennekin]: Greninja Lv. 39: Water Shuriken, Quick Attack
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-fennekin', 3, ARRAY[594, 98]),
    -- Calem beside you vs Celosia & Bryony [froakie]: Meowstic Lv. 37: Psychic, Fake Out, Disarming Voice, Light Screen
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-froakie', 1, ARRAY[94, 252, 574, 113]),
    -- Calem beside you vs Celosia & Bryony [froakie]: Absol Lv. 39: Slash, Swords Dance, Quick Attack, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-froakie', 2, ARRAY[163, 14, 98, 44]),
    -- Calem beside you vs Celosia & Bryony [froakie]: Chesnaught Lv. 39: Seed Bomb, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'calem-froakie', 3, ARRAY[402, 44]),
    -- Serena beside you vs Celosia & Bryony [chespin]: Meowstic Lv. 37: Psychic, Fake Out, Disarming Voice, Light Screen
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-chespin', 1, ARRAY[94, 252, 574, 113]),
    -- Serena beside you vs Celosia & Bryony [chespin]: Absol Lv. 39: Slash, Swords Dance, Quick Attack, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-chespin', 2, ARRAY[163, 14, 98, 44]),
    -- Serena beside you vs Celosia & Bryony [chespin]: Delphox Lv. 39: Mystical Fire, Psybeam
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-chespin', 3, ARRAY[595, 60]),
    -- Serena beside you vs Celosia & Bryony [fennekin]: Meowstic Lv. 37: Psychic, Fake Out, Disarming Voice, Light Screen
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-fennekin', 1, ARRAY[94, 252, 574, 113]),
    -- Serena beside you vs Celosia & Bryony [fennekin]: Absol Lv. 39: Slash, Swords Dance, Quick Attack, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-fennekin', 2, ARRAY[163, 14, 98, 44]),
    -- Serena beside you vs Celosia & Bryony [fennekin]: Greninja Lv. 39: Water Shuriken, Quick Attack
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-fennekin', 3, ARRAY[594, 98]),
    -- Serena beside you vs Celosia & Bryony [froakie]: Meowstic Lv. 37: Psychic, Fake Out, Disarming Voice, Light Screen
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-froakie', 1, ARRAY[94, 252, 574, 113]),
    -- Serena beside you vs Celosia & Bryony [froakie]: Absol Lv. 39: Slash, Swords Dance, Quick Attack, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-froakie', 2, ARRAY[163, 14, 98, 44]),
    -- Serena beside you vs Celosia & Bryony [froakie]: Chesnaught Lv. 39: Seed Bomb, Bite
    (130011, 13031, 13018, NULL, NULL, NULL, 'serena-froakie', 3, ARRAY[402, 44]),
    -- Brendan / May beside you vs Tabitha & Grunt [treecko]: Wailmer Lv. 24: Whirlpool, Astonish, Water Pulse, Mist
    (140019, 14051, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[250, 310, 352, 54]),
    -- Brendan / May beside you vs Tabitha & Grunt [treecko]: Shroomish Lv. 24: Mega Drain, Headbutt, Poison Powder, Worry Seed
    (140019, 14051, 14015, NULL, 140001, 'treecko', NULL, 2, ARRAY[72, 29, 77, 388]),
    -- Brendan / May beside you vs Tabitha & Grunt [treecko]: Combusken Lv. 26: Peck, Double Kick, Flame Charge, Quick Attack
    (140019, 14051, 14015, NULL, 140001, 'treecko', NULL, 3, ARRAY[64, 24, 488, 98]),
    -- Brendan / May beside you vs Tabitha & Grunt [torchic]: Shroomish Lv. 24: Mega Drain, Headbutt, Poison Powder, Worry Seed
    (140019, 14051, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[72, 29, 77, 388]),
    -- Brendan / May beside you vs Tabitha & Grunt [torchic]: Slugma Lv. 24: Harden, Incinerate, Clear Smog, Ancient Power
    (140019, 14051, 14015, NULL, 140001, 'torchic', NULL, 2, ARRAY[106, 510, 499, 246]),
    -- Brendan / May beside you vs Tabitha & Grunt [torchic]: Marshtomp Lv. 26: Foresight, Mud Shot, Bide, Mud Bomb
    (140019, 14051, 14015, NULL, 140001, 'torchic', NULL, 3, ARRAY[193, 341, 117, 426]),
    -- Brendan / May beside you vs Tabitha & Grunt [mudkip]: Slugma Lv. 24: Harden, Incinerate, Clear Smog, Ancient Power
    (140019, 14051, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[106, 510, 499, 246]),
    -- Brendan / May beside you vs Tabitha & Grunt [mudkip]: Wailmer Lv. 24: Whirlpool, Astonish, Water Pulse, Mist
    (140019, 14051, 14015, NULL, 140001, 'mudkip', NULL, 2, ARRAY[250, 310, 352, 54]),
    -- Brendan / May beside you vs Tabitha & Grunt [mudkip]: Grovyle Lv. 26: Mega Drain, Fury Cutter, Pursuit, Leaf Blade
    (140019, 14051, 14015, NULL, 140001, 'mudkip', NULL, 3, ARRAY[72, 210, 228, 348]),
    -- Brendan / May beside you vs Shelly & Grunt [treecko]: Wailmer Lv. 24: Whirlpool, Astonish, Water Pulse, Mist
    (140019, 14056, 14015, NULL, 140001, 'treecko', NULL, 1, ARRAY[250, 310, 352, 54]),
    -- Brendan / May beside you vs Shelly & Grunt [treecko]: Shroomish Lv. 24: Mega Drain, Headbutt, Poison Powder, Worry Seed
    (140019, 14056, 14015, NULL, 140001, 'treecko', NULL, 2, ARRAY[72, 29, 77, 388]),
    -- Brendan / May beside you vs Shelly & Grunt [treecko]: Combusken Lv. 26: Peck, Double Kick, Flame Charge, Quick Attack
    (140019, 14056, 14015, NULL, 140001, 'treecko', NULL, 3, ARRAY[64, 24, 488, 98]),
    -- Brendan / May beside you vs Shelly & Grunt [torchic]: Shroomish Lv. 24: Mega Drain, Headbutt, Poison Powder, Worry Seed
    (140019, 14056, 14015, NULL, 140001, 'torchic', NULL, 1, ARRAY[72, 29, 77, 388]),
    -- Brendan / May beside you vs Shelly & Grunt [torchic]: Slugma Lv. 24: Harden, Incinerate, Clear Smog, Ancient Power
    (140019, 14056, 14015, NULL, 140001, 'torchic', NULL, 2, ARRAY[106, 510, 499, 246]),
    -- Brendan / May beside you vs Shelly & Grunt [torchic]: Marshtomp Lv. 26: Foresight, Mud Shot, Bide, Mud Bomb
    (140019, 14056, 14015, NULL, 140001, 'torchic', NULL, 3, ARRAY[193, 341, 117, 426]),
    -- Brendan / May beside you vs Shelly & Grunt [mudkip]: Slugma Lv. 24: Harden, Incinerate, Clear Smog, Ancient Power
    (140019, 14056, 14015, NULL, 140001, 'mudkip', NULL, 1, ARRAY[106, 510, 499, 246]),
    -- Brendan / May beside you vs Shelly & Grunt [mudkip]: Wailmer Lv. 24: Whirlpool, Astonish, Water Pulse, Mist
    (140019, 14056, 14015, NULL, 140001, 'mudkip', NULL, 2, ARRAY[250, 310, 352, 54]),
    -- Brendan / May beside you vs Shelly & Grunt [mudkip]: Grovyle Lv. 26: Mega Drain, Fury Cutter, Pursuit, Leaf Blade
    (140019, 14056, 14015, NULL, 140001, 'mudkip', NULL, 3, ARRAY[72, 210, 228, 348]),
    -- Steven beside you vs Courtney & Grunt: Metang Lv. 35: Zen Headbutt, Bullet Punch, Pursuit, Metal Claw
    (140009, 14053, 14013, NULL, NULL, NULL, NULL, 1, ARRAY[428, 418, 228, 232]),
    -- Steven beside you vs Courtney & Grunt: Skarmory Lv. 57: Toxic, Aerial Ace, Spikes, Steel Wing
    (140018, 14053, 14013, NULL, NULL, NULL, NULL, 1, ARRAY[92, 332, 191, 211]),
    -- Steven beside you vs Courtney & Grunt: Claydol Lv. 57: Reflect, Light Screen, Extrasensory, Earth Power
    (140018, 14053, 14013, NULL, NULL, NULL, NULL, 2, ARRAY[115, 113, 326, 414]),
    -- Steven beside you vs Courtney & Grunt: Aggron Lv. 57: Stone Edge, Earthquake, Iron Tail, Dragon Claw
    (140018, 14053, 14013, NULL, NULL, NULL, NULL, 3, ARRAY[444, 89, 231, 337]),
    -- Steven beside you vs Courtney & Grunt: Cradily Lv. 57: Giga Drain, Ancient Power, Sludge Bomb, Confuse Ray
    (140018, 14053, 14013, NULL, NULL, NULL, NULL, 4, ARRAY[202, 246, 188, 109]),
    -- Steven beside you vs Courtney & Grunt: Armaldo Lv. 57: X-Scissor, Rock Blast, Metal Claw, Crush Claw
    (140018, 14053, 14013, NULL, NULL, NULL, NULL, 5, ARRAY[404, 350, 232, 306]),
    -- Steven beside you vs Courtney & Grunt: Metagross Lv. 59: Bullet Punch, Zen Headbutt, Meteor Mash, Giga Impact
    (140018, 14053, 14013, NULL, NULL, NULL, NULL, 6, ARRAY[418, 428, 309, 416]),
    -- Steven beside you vs Matt & Grunt: Metang Lv. 35: Zen Headbutt, Bullet Punch, Pursuit, Metal Claw
    (140009, 14058, 14013, NULL, NULL, NULL, NULL, 1, ARRAY[428, 418, 228, 232]),
    -- Steven beside you vs Matt & Grunt: Skarmory Lv. 57: Toxic, Aerial Ace, Spikes, Steel Wing
    (140018, 14058, 14013, NULL, NULL, NULL, NULL, 1, ARRAY[92, 332, 191, 211]),
    -- Steven beside you vs Matt & Grunt: Claydol Lv. 57: Reflect, Light Screen, Extrasensory, Earth Power
    (140018, 14058, 14013, NULL, NULL, NULL, NULL, 2, ARRAY[115, 113, 326, 414]),
    -- Steven beside you vs Matt & Grunt: Aggron Lv. 57: Stone Edge, Earthquake, Iron Tail, Dragon Claw
    (140018, 14058, 14013, NULL, NULL, NULL, NULL, 3, ARRAY[444, 89, 231, 337]),
    -- Steven beside you vs Matt & Grunt: Cradily Lv. 57: Giga Drain, Ancient Power, Sludge Bomb, Confuse Ray
    (140018, 14058, 14013, NULL, NULL, NULL, NULL, 4, ARRAY[202, 246, 188, 109]),
    -- Steven beside you vs Matt & Grunt: Armaldo Lv. 57: X-Scissor, Rock Blast, Metal Claw, Crush Claw
    (140018, 14058, 14013, NULL, NULL, NULL, NULL, 5, ARRAY[404, 350, 232, 306]),
    -- Steven beside you vs Matt & Grunt: Metagross Lv. 59: Bullet Punch, Zen Headbutt, Meteor Mash, Giga Impact
    (140018, 14058, 14013, NULL, NULL, NULL, NULL, 6, ARRAY[418, 428, 309, 416]),
    -- Arven beside you vs Stony Cliff Titan, Stony Cliff Titan 1: Shellder Lv. 16: Water Gun, Ice Shard, Life Dew, Leer
    (230024, 23022, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[55, 420, 791, 43]),
    -- Arven beside you vs Open Sky Titan, Open Sky Titan 1: Nacli Lv. 19: Headbutt, Rock Polish, Smack Down, Rock Throw
    (230025, 23023, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[29, 397, 479, 88]),
    -- Arven beside you vs Lurking Steel Titan, Lurking Steel Titan 1: Toedscool Lv. 28: Grass Knot, Hex, Supersonic, Screech
    (230026, 23024, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[447, 506, 48, 103]),
    -- Arven beside you vs Quaking Earth Titan, Quaking Earth Titan 1: Scovillain Lv. 44: Fire Fang, Razor Leaf, Scary Face, Headbutt
    (230027, 23025, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[424, 75, 184, 29]),
    -- Arven beside you vs False Dragon Titan, False Dragon Titan 1: Greedent Lv. 55: Body Slam, Bullet Seed, Tail Whip, Take Down
    (230028, 23026, 23027, NULL, NULL, NULL, NULL, 1, ARRAY[34, 331, 39, 36]),
    -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 1: Morpeko Lv. 28: Thunder Shock, Power Trip, Bite, Leer
    (240004, 24007, 24005, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[84, 681, 44, 43]),
    -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 2: Swadloon Lv. 28: Struggle Bug, Sticky Web, Razor Leaf, Trailblaze
    (240004, 24007, 24005, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[522, 564, 75, 885]),
    -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 3: Mightyena Lv. 28: Bite, Take Down, Howl, Fire Fang
    (240004, 24007, 24005, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[44, 36, 336, 424]),
    -- Carmine beside you vs Okidogi (You had not finished The Way Home yet), Loyal Three Quest 4: Poltchageist Lv. 28: Mega Drain, Astonish, Withdraw, Stun Spore
    (240004, 24007, 24005, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[72, 310, 110, 78]),
    -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 1: Morpeko Lv. 70: Aura Wheel, Lash Out, Thunder Wave, Seed Bomb
    (240004, 24007, 24005, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[783, 808, 86, 402]),
    -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 2: Swadloon Lv. 70: Bug Buzz, Sticky Web, Energy Ball, Trailblaze
    (240004, 24007, 24005, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 564, 412, 885]),
    -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 3: Mightyena Lv. 70: Crunch, Howl, Take Down, Fire Fang
    (240004, 24007, 24005, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[242, 336, 36, 424]),
    -- Carmine beside you vs Okidogi (You had already finished The Way Home), Loyal Three Quest 4: Sinistcha Lv. 70: Matcha Gotcha, Shadow Ball, Foul Play, Stun Spore
    (240004, 24007, 24005, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[902, 247, 492, 78]),
    -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 1: Morpeko Lv. 28: Thunder Shock, Power Trip, Bite, Leer
    (240004, 24008, 24005, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[84, 681, 44, 43]),
    -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 2: Swadloon Lv. 28: Struggle Bug, Sticky Web, Razor Leaf, Trailblaze
    (240004, 24008, 24005, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[522, 564, 75, 885]),
    -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 3: Mightyena Lv. 28: Bite, Take Down, Howl, Fire Fang
    (240004, 24008, 24005, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[44, 36, 336, 424]),
    -- Carmine beside you vs Munkidori (You had not finished The Way Home yet), Loyal Three Quest 4: Poltchageist Lv. 28: Mega Drain, Astonish, Withdraw, Stun Spore
    (240004, 24008, 24005, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[72, 310, 110, 78]),
    -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 1: Morpeko Lv. 70: Aura Wheel, Lash Out, Thunder Wave, Seed Bomb
    (240004, 24008, 24005, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[783, 808, 86, 402]),
    -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 2: Swadloon Lv. 70: Bug Buzz, Sticky Web, Energy Ball, Trailblaze
    (240004, 24008, 24005, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 564, 412, 885]),
    -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 3: Mightyena Lv. 70: Crunch, Howl, Take Down, Fire Fang
    (240004, 24008, 24005, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[242, 336, 36, 424]),
    -- Carmine beside you vs Munkidori (You had already finished The Way Home), Loyal Three Quest 4: Sinistcha Lv. 70: Matcha Gotcha, Shadow Ball, Foul Play, Stun Spore
    (240004, 24008, 24005, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[902, 247, 492, 78]),
    -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 1: Morpeko Lv. 28: Thunder Shock, Power Trip, Bite, Leer
    (240004, 24009, 24005, NULL, NULL, NULL, 'before-the-way-home', 1, ARRAY[84, 681, 44, 43]),
    -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 2: Swadloon Lv. 28: Struggle Bug, Sticky Web, Razor Leaf, Trailblaze
    (240004, 24009, 24005, NULL, NULL, NULL, 'before-the-way-home', 2, ARRAY[522, 564, 75, 885]),
    -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 3: Mightyena Lv. 28: Bite, Take Down, Howl, Fire Fang
    (240004, 24009, 24005, NULL, NULL, NULL, 'before-the-way-home', 3, ARRAY[44, 36, 336, 424]),
    -- Carmine beside you vs Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 4: Poltchageist Lv. 28: Mega Drain, Astonish, Withdraw, Stun Spore
    (240004, 24009, 24005, NULL, NULL, NULL, 'before-the-way-home', 4, ARRAY[72, 310, 110, 78]),
    -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 1: Morpeko Lv. 70: Aura Wheel, Lash Out, Thunder Wave, Seed Bomb
    (240004, 24009, 24005, NULL, NULL, NULL, 'after-the-way-home', 1, ARRAY[783, 808, 86, 402]),
    -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 2: Swadloon Lv. 70: Bug Buzz, Sticky Web, Energy Ball, Trailblaze
    (240004, 24009, 24005, NULL, NULL, NULL, 'after-the-way-home', 2, ARRAY[405, 564, 412, 885]),
    -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 3: Mightyena Lv. 70: Crunch, Howl, Take Down, Fire Fang
    (240004, 24009, 24005, NULL, NULL, NULL, 'after-the-way-home', 3, ARRAY[242, 336, 36, 424]),
    -- Carmine beside you vs Fezandipiti (You had already finished The Way Home), Loyal Three Quest 4: Sinistcha Lv. 70: Matcha Gotcha, Shadow Ball, Foul Play, Stun Spore
    (240004, 24009, 24005, NULL, NULL, NULL, 'after-the-way-home', 4, ARRAY[902, 247, 492, 78]),
    -- Carmine beside you vs Terapagos, Terapagos Battle 1: Sinistcha Lv. 75: Matcha Gotcha, Life Dew, Shadow Ball, Rage Powder
    (250008, 25006, 25008, NULL, NULL, NULL, NULL, 1, ARRAY[902, 791, 247, 476]),
    -- Kieran beside you vs Terapagos, Terapagos Battle 1: Hydrapple Lv. 82: Syrup Bomb, Fickle Beam, Dragon Cheer, Body Press
    (250008, 25006, 25009, NULL, NULL, NULL, NULL, 1, ARRAY[903, 907, 913, 776]),
    -- Kieran beside you vs Terapagos, Terapagos Battle 2: Dragonite Lv. 80: Hurricane, Thunder, Extreme Speed, Breaking Swipe
    (250008, 25006, 25009, NULL, NULL, NULL, NULL, 2, ARRAY[542, 87, 245, 784]),
    -- Kieran beside you vs Terapagos, Terapagos Battle 3: Porygon-Z Lv. 81: Hyper Beam, Shadow Ball, Thunderbolt, Ice Beam
    (250008, 25006, 25009, NULL, NULL, NULL, NULL, 3, ARRAY[63, 247, 85, 58]),
    -- Kieran beside you vs Terapagos, Terapagos Battle 4: Grimmsnarl Lv. 81: Sucker Punch, Spirit Break, Reflect, Light Screen
    (250008, 25006, 25009, NULL, NULL, NULL, NULL, 4, ARRAY[389, 789, 115, 113]),
    -- Kieran beside you vs Terapagos, Terapagos Battle 5: Incineroar Lv. 81: Flare Blitz, Darkest Lariat, Fake Out, Brick Break
    (250008, 25006, 25009, NULL, NULL, NULL, NULL, 5, ARRAY[394, 663, 252, 280]),
    -- Kieran beside you vs Arven & Penny, Mochi Mayhem 1: Poliwrath Lv. 85: Close Combat, Belly Drum, Liquidation, Ice Punch
    (250009, 25010, 25009, NULL, NULL, NULL, NULL, 1, ARRAY[370, 187, 710, 8]),
    -- Kieran beside you vs Arven & Penny, Mochi Mayhem 2: Dragonite Lv. 85: Breaking Swipe, Hurricane, Extreme Speed, Thunder
    (250009, 25010, 25009, NULL, NULL, NULL, NULL, 2, ARRAY[784, 542, 245, 87]),
    -- Kieran beside you vs Arven & Penny, Mochi Mayhem 3: Porygon-Z Lv. 86: Hyper Beam, Shadow Ball, Thunderbolt, Ice Beam
    (250009, 25010, 25009, NULL, NULL, NULL, NULL, 3, ARRAY[63, 247, 85, 58]),
    -- Kieran beside you vs Arven & Penny, Mochi Mayhem 4: Grimmsnarl Lv. 86: Reflect, Light Screen, Spirit Break, Sucker Punch
    (250009, 25010, 25009, NULL, NULL, NULL, NULL, 4, ARRAY[115, 113, 789, 389]),
    -- Kieran beside you vs Arven & Penny, Mochi Mayhem 5: Incineroar Lv. 86: Darkest Lariat, Flare Blitz, Fake Out, Brick Break
    (250009, 25010, 25009, NULL, NULL, NULL, NULL, 5, ARRAY[663, 394, 252, 280]),
    -- Kieran beside you vs Arven & Penny, Mochi Mayhem 6: Hydrapple Lv. 87: Fickle Beam, Tera Blast, Earth Power, Gyro Ball
    (250009, 25010, 25009, NULL, NULL, NULL, NULL, 6, ARRAY[907, 851, 414, 360]),
    -- Lida beside you vs Rogue Mega Camerupt, Rogue Mega Camerupt 1: Clauncher Lv. 29: Water Pulse, Water Gun, Aqua Jet
    (260023, 26018, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[352, 55, 453]),
    -- Lida beside you vs Rogue Mega Camerupt, Rogue Mega Camerupt 2: Vanillite Lv. 29: Icicle Crash, Harden, Tackle
    (260023, 26018, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[556, 106, 33]),
    -- Lida beside you vs Rogue Mega Camerupt, Rogue Mega Camerupt 3: Staryu Lv. 30: Psybeam, Water Gun, Aqua Jet, Safeguard
    (260023, 26018, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[60, 55, 453, 219]),
    -- Lida beside you vs Rogue Mega Hawlucha, Rogue Mega Hawlucha 1: Clauncher Lv. 36: Aura Sphere, Water Pulse, Water Gun, Aqua Jet
    (260026, 26021, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[396, 352, 55, 453]),
    -- Lida beside you vs Rogue Mega Hawlucha, Rogue Mega Hawlucha 2: Vanillish Lv. 36: Ice Beam, Icicle Crash, Tackle, Flash Cannon
    (260026, 26021, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[58, 556, 33, 430]),
    -- Lida beside you vs Rogue Mega Hawlucha, Rogue Mega Hawlucha 3: Staryu Lv. 37: Psybeam, Reflect, Aqua Jet, Power Gem
    (260026, 26021, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[60, 115, 453, 408]),
    -- Lida beside you vs Rogue Mega Barbaracle, Rogue Mega Barbaracle 1: Clawitzer Lv. 43: Dark Pulse, Aura Sphere, Water Pulse, Ice Beam
    (260029, 26024, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[399, 396, 352, 58]),
    -- Lida beside you vs Rogue Mega Barbaracle, Rogue Mega Barbaracle 2: Vanillish Lv. 43: Ice Beam, Icicle Crash, Tackle, Flash Cannon
    (260029, 26024, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[58, 556, 33, 430]),
    -- Lida beside you vs Rogue Mega Barbaracle, Rogue Mega Barbaracle 3: Staryu Lv. 44: Reflect, Psychic, Aqua Jet, Power Gem
    (260029, 26024, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[115, 94, 453, 408]),
    -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 1: Clawitzer Lv. 46: Dark Pulse, Aura Sphere, Water Pulse, Ice Beam
    (260032, 26027, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[399, 396, 352, 58]),
    -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 2: Vanillish Lv. 46: Flash Cannon, Tackle, Icicle Crash, Ice Beam
    (260032, 26027, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[430, 33, 556, 58]),
    -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 3: Emolga Lv. 47: Volt Switch, Air Slash, Spark, Quick Attack
    (260032, 26027, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[521, 403, 209, 98]),
    -- Lida beside you vs Rogue Mega Altaria, Rogue Mega Altaria 4: Staryu Lv. 48: Light Screen, Surf, Psychic, Power Gem
    (260032, 26027, 26032, NULL, NULL, NULL, NULL, 4, ARRAY[113, 57, 94, 408]),
    -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 1: Starmie Lv. 55: Ice Beam, Surf, Psychic, Power Gem
    (260036, 26031, 26032, NULL, NULL, NULL, NULL, 1, ARRAY[58, 57, 94, 408]),
    -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 2: Clawitzer Lv. 54: Dragon Pulse, Dark Pulse, Aura Sphere, Ice Beam
    (260036, 26031, 26032, NULL, NULL, NULL, NULL, 2, ARRAY[406, 399, 396, 58]),
    -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 3: Emolga Lv. 54: Volt Switch, Air Slash, Spark, Quick Attack
    (260036, 26031, 26032, NULL, NULL, NULL, NULL, 3, ARRAY[521, 403, 209, 98]),
    -- Lida beside you vs Rogue Mega Starmie, Rogue Mega Starmie 4: Vanilluxe Lv. 54: Ice Beam, Freeze-Dry, Flash Cannon, Icicle Crash
    (260036, 26031, 26032, NULL, NULL, NULL, NULL, 4, ARRAY[58, 573, 430, 556]),
    -- Naveen beside you vs Rogue Mega Victreebel, Rogue Mega Victreebel 1: Ariados Lv. 29: Shadow Sneak, Absorb, Pin Missile, X-Scissor
    (260024, 26019, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[425, 71, 42, 404]),
    -- Naveen beside you vs Rogue Mega Victreebel, Rogue Mega Victreebel 2: Sableye Lv. 29: Reflect, Knock Off, Shadow Claw, Psybeam
    (260024, 26019, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[115, 282, 421, 60]),
    -- Naveen beside you vs Rogue Mega Victreebel, Rogue Mega Victreebel 3: Scraggy Lv. 30: Tackle, Headbutt, Power-Up Punch
    (260024, 26019, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[33, 29, 612]),
    -- Naveen beside you vs Rogue Mega Banette, Rogue Mega Banette 1: Ariados Lv. 36: Shadow Sneak, Poison Jab, X-Scissor, Psychic
    (260027, 26022, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[425, 398, 404, 94]),
    -- Naveen beside you vs Rogue Mega Banette, Rogue Mega Banette 2: Sableye Lv. 36: Shadow Sneak, Safeguard, Shadow Claw, Night Slash
    (260027, 26022, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[425, 219, 421, 400]),
    -- Naveen beside you vs Rogue Mega Banette, Rogue Mega Banette 3: Scraggy Lv. 37: Brick Break, Work Up, Power-Up Punch, Dark Pulse
    (260027, 26022, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[280, 526, 612, 399]),
    -- Naveen beside you vs Rogue Mega Ampharos, Rogue Mega Ampharos 1: Ariados Lv. 43: Lunge, Dig, Poison Jab, Shadow Sneak
    (260030, 26025, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[679, 91, 398, 425]),
    -- Naveen beside you vs Rogue Mega Ampharos, Rogue Mega Ampharos 2: Sableye Lv. 43: Power Gem, Shadow Claw, Safeguard, Night Slash
    (260030, 26025, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[408, 421, 219, 400]),
    -- Naveen beside you vs Rogue Mega Ampharos, Rogue Mega Ampharos 3: Scrafty Lv. 44: Brick Break, Headbutt, Power-Up Punch, Crunch
    (260030, 26025, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[280, 29, 612, 242]),
    -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 1: Ariados Lv. 48: Megahorn, Shadow Sneak, Poison Jab, Dig
    (260031, 26026, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[224, 425, 398, 91]),
    -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 2: Sableye Lv. 48: Zen Headbutt, Shadow Claw, Safeguard, Night Slash
    (260031, 26026, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[428, 421, 219, 400]),
    -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 3: Krookodile Lv. 49: Crunch, Iron Tail, Earthquake, Iron Head
    (260031, 26026, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[242, 231, 89, 442]),
    -- Naveen beside you vs Rogue Mega Froslass, Rogue Mega Froslass 4: Scrafty Lv. 50: Brick Break, Zen Headbutt, Iron Tail, Crunch
    (260031, 26026, 26033, NULL, NULL, NULL, NULL, 4, ARRAY[280, 428, 231, 242]),
    -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 1: Ariados Lv. 54: Megahorn, Shadow Sneak, Poison Jab, Dig
    (260035, 26030, 26033, NULL, NULL, NULL, NULL, 1, ARRAY[224, 425, 398, 91]),
    -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 2: Sableye Lv. 54: Reflect, Shadow Claw, Power Gem, Night Slash
    (260035, 26030, 26033, NULL, NULL, NULL, NULL, 2, ARRAY[115, 421, 408, 400]),
    -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 3: Krookodile Lv. 54: Crunch, Iron Tail, Earthquake, Iron Head
    (260035, 26030, 26033, NULL, NULL, NULL, NULL, 3, ARRAY[242, 231, 89, 442]),
    -- Naveen beside you vs Rogue Mega Tyranitar, Rogue Mega Tyranitar 4: Scrafty Lv. 55: Dynamic Punch, Stone Edge, Iron Tail, Crunch
    (260035, 26030, 26033, NULL, NULL, NULL, NULL, 4, ARRAY[223, 444, 231, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Chikorita), Rogue Mega Slowbro 1: Croconaw Lv. 25: Aqua Jet, Tackle, Slash, Bite
    (260022, 26017, 26001, NULL, 260001, 'chikorita', NULL, 1, ARRAY[453, 33, 163, 44]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Chikorita), Rogue Mega Slowbro 2: Pignite Lv. 25: Power-Up Punch, Rollout, Flame Wheel, Tackle
    (260022, 26017, 26001, NULL, 260001, 'chikorita', NULL, 2, ARRAY[612, 205, 172, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Chikorita), Rogue Mega Slowbro 3: Manectric Lv. 26: Thunder Fang, Spark, Bite, Fire Fang
    (260022, 26017, 26001, NULL, 260001, 'chikorita', NULL, 3, ARRAY[422, 209, 44, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Tepig), Rogue Mega Slowbro 1: Bayleef Lv. 25: Giga Drain, Razor Leaf, Body Slam, Disarming Voice
    (260022, 26017, 26001, NULL, 260001, 'tepig', NULL, 1, ARRAY[202, 75, 34, 574]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Tepig), Rogue Mega Slowbro 2: Croconaw Lv. 25: Aqua Jet, Tackle, Slash, Bite
    (260022, 26017, 26001, NULL, 260001, 'tepig', NULL, 2, ARRAY[453, 33, 163, 44]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Tepig), Rogue Mega Slowbro 3: Manectric Lv. 26: Thunder Fang, Spark, Bite, Fire Fang
    (260022, 26017, 26001, NULL, 260001, 'tepig', NULL, 3, ARRAY[422, 209, 44, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Totodile), Rogue Mega Slowbro 1: Pignite Lv. 25: Power-Up Punch, Rollout, Flame Wheel, Tackle
    (260022, 26017, 26001, NULL, 260001, 'totodile', NULL, 1, ARRAY[612, 205, 172, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Totodile), Rogue Mega Slowbro 2: Bayleef Lv. 25: Giga Drain, Razor Leaf, Body Slam, Disarming Voice
    (260022, 26017, 26001, NULL, 260001, 'totodile', NULL, 2, ARRAY[202, 75, 34, 574]),
    -- Taunie / Urbain beside you vs Rogue Mega Slowbro (chose Totodile), Rogue Mega Slowbro 3: Manectric Lv. 26: Thunder Fang, Spark, Bite, Fire Fang
    (260022, 26017, 26001, NULL, 260001, 'totodile', NULL, 3, ARRAY[422, 209, 44, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Chikorita), Rogue Mega Beedrill 1: Feraligatr Lv. 36: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260025, 26020, 26001, NULL, 260001, 'chikorita', NULL, 1, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Chikorita), Rogue Mega Beedrill 2: Emboar Lv. 36: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260025, 26020, 26001, NULL, 260001, 'chikorita', NULL, 2, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Chikorita), Rogue Mega Beedrill 3: Manectric Lv. 37: Thunder Fang, Snarl, Discharge, Fire Fang
    (260025, 26020, 26001, NULL, 260001, 'chikorita', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Tepig), Rogue Mega Beedrill 1: Meganium Lv. 36: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260025, 26020, 26001, NULL, 260001, 'tepig', NULL, 1, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Tepig), Rogue Mega Beedrill 2: Feraligatr Lv. 36: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260025, 26020, 26001, NULL, 260001, 'tepig', NULL, 2, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Tepig), Rogue Mega Beedrill 3: Manectric Lv. 37: Thunder Fang, Snarl, Discharge, Fire Fang
    (260025, 26020, 26001, NULL, 260001, 'tepig', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Totodile), Rogue Mega Beedrill 1: Emboar Lv. 36: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260025, 26020, 26001, NULL, 260001, 'totodile', NULL, 1, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Totodile), Rogue Mega Beedrill 2: Meganium Lv. 36: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260025, 26020, 26001, NULL, 260001, 'totodile', NULL, 2, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Beedrill (chose Totodile), Rogue Mega Beedrill 3: Manectric Lv. 37: Thunder Fang, Snarl, Discharge, Fire Fang
    (260025, 26020, 26001, NULL, 260001, 'totodile', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Chikorita), Rogue Mega Mawile 1: Feraligatr Lv. 43: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260028, 26023, 26001, NULL, 260001, 'chikorita', NULL, 1, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Chikorita), Rogue Mega Mawile 2: Emboar Lv. 43: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260028, 26023, 26001, NULL, 260001, 'chikorita', NULL, 2, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Chikorita), Rogue Mega Mawile 3: Manectric Lv. 44: Thunder Fang, Snarl, Discharge, Fire Fang
    (260028, 26023, 26001, NULL, 260001, 'chikorita', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Tepig), Rogue Mega Mawile 1: Meganium Lv. 43: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260028, 26023, 26001, NULL, 260001, 'tepig', NULL, 1, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Tepig), Rogue Mega Mawile 2: Feraligatr Lv. 43: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260028, 26023, 26001, NULL, 260001, 'tepig', NULL, 2, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Tepig), Rogue Mega Mawile 3: Manectric Lv. 44: Thunder Fang, Snarl, Discharge, Fire Fang
    (260028, 26023, 26001, NULL, 260001, 'tepig', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Totodile), Rogue Mega Mawile 1: Emboar Lv. 43: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260028, 26023, 26001, NULL, 260001, 'totodile', NULL, 1, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Totodile), Rogue Mega Mawile 2: Meganium Lv. 43: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260028, 26023, 26001, NULL, 260001, 'totodile', NULL, 2, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Mawile (chose Totodile), Rogue Mega Mawile 3: Manectric Lv. 44: Thunder Fang, Snarl, Discharge, Fire Fang
    (260028, 26023, 26001, NULL, 260001, 'totodile', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Chikorita), Rogue Mega Venusaur 1: Feraligatr Lv. 50: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260033, 26028, 26001, NULL, 260001, 'chikorita', NULL, 1, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Chikorita), Rogue Mega Venusaur 2: Emboar Lv. 50: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260033, 26028, 26001, NULL, 260001, 'chikorita', NULL, 2, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Chikorita), Rogue Mega Venusaur 3: Manectric Lv. 50: Thunder Fang, Snarl, Discharge, Fire Fang
    (260033, 26028, 26001, NULL, 260001, 'chikorita', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Tepig), Rogue Mega Venusaur 1: Meganium Lv. 50: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260033, 26028, 26001, NULL, 260001, 'tepig', NULL, 1, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Tepig), Rogue Mega Venusaur 2: Feraligatr Lv. 50: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260033, 26028, 26001, NULL, 260001, 'tepig', NULL, 2, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Tepig), Rogue Mega Venusaur 3: Manectric Lv. 50: Thunder Fang, Snarl, Discharge, Fire Fang
    (260033, 26028, 26001, NULL, 260001, 'tepig', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Totodile), Rogue Mega Venusaur 1: Emboar Lv. 50: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260033, 26028, 26001, NULL, 260001, 'totodile', NULL, 1, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Totodile), Rogue Mega Venusaur 2: Meganium Lv. 50: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260033, 26028, 26001, NULL, 260001, 'totodile', NULL, 2, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Venusaur (chose Totodile), Rogue Mega Venusaur 3: Manectric Lv. 50: Thunder Fang, Snarl, Discharge, Fire Fang
    (260033, 26028, 26001, NULL, 260001, 'totodile', NULL, 3, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 1: Feraligatr Lv. 55: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-chikorita', 1, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 2: Emboar Lv. 55: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-chikorita', 2, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 3: Meowstic (Female) Lv. 55: Energy Ball, Psyshock, Psychic, Thunderbolt
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-chikorita', 3, ARRAY[412, 473, 94, 85]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Chikorita), Rogue Mega Dragonite 4: Manectric Lv. 56: Thunder Fang, Snarl, Discharge, Fire Fang
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-chikorita', 4, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 1: Meganium Lv. 55: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-tepig', 1, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 2: Feraligatr Lv. 55: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-tepig', 2, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 3: Meowstic (Female) Lv. 55: Energy Ball, Psyshock, Psychic, Thunderbolt
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-tepig', 3, ARRAY[412, 473, 94, 85]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Tepig), Rogue Mega Dragonite 4: Manectric Lv. 56: Thunder Fang, Snarl, Discharge, Fire Fang
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-tepig', 4, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 1: Emboar Lv. 55: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-totodile', 1, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 2: Meganium Lv. 55: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-totodile', 2, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 3: Meowstic (Female) Lv. 55: Energy Ball, Psyshock, Psychic, Thunderbolt
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-totodile', 3, ARRAY[412, 473, 94, 85]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Taunie (you play as Paxton), you chose Totodile), Rogue Mega Dragonite 4: Manectric Lv. 56: Thunder Fang, Snarl, Discharge, Fire Fang
    (260034, 26029, 26001, NULL, NULL, NULL, 'taunie-totodile', 4, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 1: Feraligatr Lv. 55: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-chikorita', 1, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 2: Emboar Lv. 55: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-chikorita', 2, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 3: Meowstic Lv. 55: Energy Ball, Psyshock, Psychic, Thunderbolt
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-chikorita', 3, ARRAY[412, 473, 94, 85]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Chikorita), Rogue Mega Dragonite 4: Manectric Lv. 56: Thunder Fang, Snarl, Discharge, Fire Fang
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-chikorita', 4, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 1: Meganium Lv. 55: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-tepig', 1, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 2: Feraligatr Lv. 55: Aqua Jet, Slash, Breaking Swipe, Crunch
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-tepig', 2, ARRAY[453, 163, 784, 242]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 3: Meowstic Lv. 55: Energy Ball, Psyshock, Psychic, Thunderbolt
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-tepig', 3, ARRAY[412, 473, 94, 85]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Tepig), Rogue Mega Dragonite 4: Manectric Lv. 56: Thunder Fang, Snarl, Discharge, Fire Fang
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-tepig', 4, ARRAY[422, 555, 435, 424]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 1: Emboar Lv. 55: Power-Up Punch, Heat Crash, Rollout, Tackle
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-totodile', 1, ARRAY[612, 535, 205, 33]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 2: Meganium Lv. 55: Tackle, Disarming Voice, Razor Leaf, Giga Drain
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-totodile', 2, ARRAY[33, 574, 75, 202]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 3: Meowstic Lv. 55: Energy Ball, Psyshock, Psychic, Thunderbolt
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-totodile', 3, ARRAY[412, 473, 94, 85]),
    -- Taunie / Urbain beside you vs Rogue Mega Dragonite (Rival is Urbain (you play as Harmony), you chose Totodile), Rogue Mega Dragonite 4: Manectric Lv. 56: Thunder Fang, Snarl, Discharge, Fire Fang
    (260034, 26029, 26001, NULL, NULL, NULL, 'urbain-totodile', 4, ARRAY[422, 555, 435, 424]),
    -- Korrina beside you vs Rogue Mega Absol Z, Rogue Mega Absol Z 1: Machamp Lv. 85: Knock Off, Fire Punch, Thunder Punch
    (270012, 27011, 27016, NULL, NULL, NULL, NULL, 1, ARRAY[282, 7, 9]),
    -- Korrina beside you vs Rogue Mega Absol Z, Rogue Mega Absol Z 2: Hawlucha Lv. 85: Bounce, Aerial Ace, Drain Punch
    (270012, 27011, 27016, NULL, NULL, NULL, NULL, 2, ARRAY[340, 332, 409]),
    -- Korrina beside you vs Rogue Mega Absol Z, Rogue Mega Absol Z 3: Lucario Lv. 85: Aura Sphere, Power-Up Punch, Extreme Speed
    (270012, 27011, 27016, NULL, NULL, NULL, NULL, 3, ARRAY[396, 612, 245]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Chikorita in Legends: Z-A), Rogue Mega Absol Z 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-chikorita', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Chikorita in Legends: Z-A), Rogue Mega Absol Z 2: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-chikorita', 2, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Chikorita in Legends: Z-A), Rogue Mega Absol Z 3: Emboar Lv. 85: Fire Punch, Bulk Up, Thunder Punch
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-chikorita', 3, ARRAY[7, 339, 9]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Tepig in Legends: Z-A), Rogue Mega Absol Z 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-tepig', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Tepig in Legends: Z-A), Rogue Mega Absol Z 2: Meganium Lv. 85: Giga Drain, Earth Power, Disarming Voice
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-tepig', 2, ARRAY[202, 414, 574]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Tepig in Legends: Z-A), Rogue Mega Absol Z 3: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-tepig', 3, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Totodile in Legends: Z-A), Rogue Mega Absol Z 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-totodile', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Totodile in Legends: Z-A), Rogue Mega Absol Z 2: Emboar Lv. 85: Fire Punch, Bulk Up, Thunder Punch
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-totodile', 2, ARRAY[7, 339, 9]),
    -- Taunie / Urbain beside you vs Rogue Mega Absol Z (You chose Totodile in Legends: Z-A), Rogue Mega Absol Z 3: Meganium Lv. 85: Giga Drain, Bulldoze, Disarming Voice
    (270012, 27011, 27015, NULL, NULL, NULL, 'chose-totodile', 3, ARRAY[202, 523, 574]),
    -- Korrina beside you vs Rogue Mega Staraptor, Rogue Mega Staraptor 1: Machamp Lv. 85: Knock Off, Fire Punch, Thunder Punch
    (270013, 27012, 27016, NULL, NULL, NULL, NULL, 1, ARRAY[282, 7, 9]),
    -- Korrina beside you vs Rogue Mega Staraptor, Rogue Mega Staraptor 2: Hawlucha Lv. 85: Bounce, Aerial Ace, Drain Punch
    (270013, 27012, 27016, NULL, NULL, NULL, NULL, 2, ARRAY[340, 332, 409]),
    -- Korrina beside you vs Rogue Mega Staraptor, Rogue Mega Staraptor 3: Lucario Lv. 85: Aura Sphere, Power-Up Punch, Extreme Speed
    (270013, 27012, 27016, NULL, NULL, NULL, NULL, 3, ARRAY[396, 612, 245]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Chikorita in Legends: Z-A), Rogue Mega Staraptor 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-chikorita', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Chikorita in Legends: Z-A), Rogue Mega Staraptor 2: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-chikorita', 2, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Chikorita in Legends: Z-A), Rogue Mega Staraptor 3: Emboar Lv. 85: Fire Punch, Bulk Up, Thunder Punch
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-chikorita', 3, ARRAY[7, 339, 9]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Tepig in Legends: Z-A), Rogue Mega Staraptor 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-tepig', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Tepig in Legends: Z-A), Rogue Mega Staraptor 2: Meganium Lv. 85: Giga Drain, Earth Power, Disarming Voice
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-tepig', 2, ARRAY[202, 414, 574]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Tepig in Legends: Z-A), Rogue Mega Staraptor 3: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-tepig', 3, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Totodile in Legends: Z-A), Rogue Mega Staraptor 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-totodile', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Totodile in Legends: Z-A), Rogue Mega Staraptor 2: Emboar Lv. 85: Fire Punch, Bulk Up, Thunder Punch
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-totodile', 2, ARRAY[7, 339, 9]),
    -- Taunie / Urbain beside you vs Rogue Mega Staraptor (You chose Totodile in Legends: Z-A), Rogue Mega Staraptor 3: Meganium Lv. 85: Giga Drain, Bulldoze, Disarming Voice
    (270013, 27012, 27015, NULL, NULL, NULL, 'chose-totodile', 3, ARRAY[202, 523, 574]),
    -- Korrina beside you vs Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 1: Machamp Lv. 85: Knock Off, Fire Punch, Thunder Punch
    (270014, 27013, 27016, NULL, NULL, NULL, NULL, 1, ARRAY[282, 7, 9]),
    -- Korrina beside you vs Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 2: Hawlucha Lv. 85: Bounce, Aerial Ace, Drain Punch
    (270014, 27013, 27016, NULL, NULL, NULL, NULL, 2, ARRAY[340, 332, 409]),
    -- Korrina beside you vs Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 3: Lucario Lv. 85: Aura Sphere, Power-Up Punch, Extreme Speed
    (270014, 27013, 27016, NULL, NULL, NULL, NULL, 3, ARRAY[396, 612, 245]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Chikorita in Legends: Z-A), Rogue Mega Tatsugiri 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-chikorita', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Chikorita in Legends: Z-A), Rogue Mega Tatsugiri 2: Feraligatr Lv. 85: Dragon Claw, Liquidation, Ice Fang
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-chikorita', 2, ARRAY[337, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Chikorita in Legends: Z-A), Rogue Mega Tatsugiri 3: Emboar Lv. 85: Fire Punch, Bulk Up, Thunder Punch
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-chikorita', 3, ARRAY[7, 339, 9]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Tepig in Legends: Z-A), Rogue Mega Tatsugiri 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-tepig', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Tepig in Legends: Z-A), Rogue Mega Tatsugiri 2: Meganium Lv. 85: Giga Drain, Bulldoze, Disarming Voice
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-tepig', 2, ARRAY[202, 523, 574]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Tepig in Legends: Z-A), Rogue Mega Tatsugiri 3: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-tepig', 3, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Totodile in Legends: Z-A), Rogue Mega Tatsugiri 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-totodile', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Totodile in Legends: Z-A), Rogue Mega Tatsugiri 2: Emboar Lv. 85: Fire Punch, Bulk Up, Thunder Punch
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-totodile', 2, ARRAY[7, 339, 9]),
    -- Taunie / Urbain beside you vs Rogue Mega Tatsugiri (You chose Totodile in Legends: Z-A), Rogue Mega Tatsugiri 3: Meganium Lv. 85: Giga Drain, Bulldoze, Disarming Voice
    (270014, 27013, 27015, NULL, NULL, NULL, 'chose-totodile', 3, ARRAY[202, 523, 574]),
    -- Korrina beside you vs Rogue Mega Meowstic, Rogue Mega Meowstic 1: Machamp Lv. 85: Knock Off, Fire Punch, Thunder Punch
    (270015, 27014, 27016, NULL, NULL, NULL, NULL, 1, ARRAY[282, 7, 9]),
    -- Korrina beside you vs Rogue Mega Meowstic, Rogue Mega Meowstic 2: Hawlucha Lv. 85: Bounce, Aerial Ace, Drain Punch
    (270015, 27014, 27016, NULL, NULL, NULL, NULL, 2, ARRAY[340, 332, 409]),
    -- Korrina beside you vs Rogue Mega Meowstic, Rogue Mega Meowstic 3: Lucario Lv. 85: Aura Sphere, Power-Up Punch, Extreme Speed
    (270015, 27014, 27016, NULL, NULL, NULL, NULL, 3, ARRAY[396, 612, 245]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Chikorita in Legends: Z-A), Rogue Mega Meowstic 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-chikorita', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Chikorita in Legends: Z-A), Rogue Mega Meowstic 2: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-chikorita', 2, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Chikorita in Legends: Z-A), Rogue Mega Meowstic 3: Emboar Lv. 85: Fire Punch, Bulk Up, Drain Punch
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-chikorita', 3, ARRAY[7, 339, 409]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Tepig in Legends: Z-A), Rogue Mega Meowstic 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-tepig', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Tepig in Legends: Z-A), Rogue Mega Meowstic 2: Meganium Lv. 85: Giga Drain, Bulldoze, Disarming Voice
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-tepig', 2, ARRAY[202, 523, 574]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Tepig in Legends: Z-A), Rogue Mega Meowstic 3: Feraligatr Lv. 85: Bulldoze, Liquidation, Ice Fang
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-tepig', 3, ARRAY[523, 710, 423]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Totodile in Legends: Z-A), Rogue Mega Meowstic 1: Goodra Lv. 85: Dragon Breath, Dragon Pulse, Knock Off
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-totodile', 1, ARRAY[225, 406, 282]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Totodile in Legends: Z-A), Rogue Mega Meowstic 2: Emboar Lv. 85: Fire Punch, Bulk Up, Drain Punch
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-totodile', 2, ARRAY[7, 339, 409]),
    -- Taunie / Urbain beside you vs Rogue Mega Meowstic (You chose Totodile in Legends: Z-A), Rogue Mega Meowstic 3: Meganium Lv. 85: Giga Drain, Bulldoze, Disarming Voice
    (270015, 27014, 27015, NULL, NULL, NULL, 'chose-totodile', 3, ARRAY[202, 523, 574]),
    -- Trace beside you vs Blue (Let's Go, Pikachu!): Cubone Lv. 36: Focus Energy, Bonemerang, Headbutt
    (170022, 17014, 17016, 29, NULL, NULL, NULL, 1, ARRAY[116, 155, 29]),
    -- Trace beside you vs Blue (Let's Go, Pikachu!): Pidgeot Lv. 36: Quick Attack, Air Slash, Sand Attack, Roost
    (170022, 17014, 17016, 29, NULL, NULL, NULL, 2, ARRAY[98, 403, 28, 355]),
    -- Trace beside you vs Blue (Let's Go, Pikachu!): Gloom Lv. 36: Razor Leaf, Toxic, Acid
    (170022, 17014, 17016, 29, NULL, NULL, NULL, 3, ARRAY[75, 92, 51]),
    -- Trace beside you vs Blue (Let's Go, Pikachu!): Jolteon Lv. 37: Thunder Shock, Quick Attack, Pin Missile, Double Kick
    (170022, 17014, 17016, 29, NULL, NULL, NULL, 4, ARRAY[84, 98, 42, 24]),
    -- Trace beside you vs Blue (Let's Go, Eevee!): Cubone Lv. 36: Focus Energy, Bonemerang, Headbutt
    (170022, 17014, 17016, 30, NULL, NULL, NULL, 1, ARRAY[116, 155, 29]),
    -- Trace beside you vs Blue (Let's Go, Eevee!): Pidgeot Lv. 36: Quick Attack, Air Slash, Sand Attack, Roost
    (170022, 17014, 17016, 30, NULL, NULL, NULL, 2, ARRAY[98, 403, 28, 355]),
    -- Trace beside you vs Blue (Let's Go, Eevee!): Gloom Lv. 36: Razor Leaf, Toxic, Acid
    (170022, 17014, 17016, 30, NULL, NULL, NULL, 3, ARRAY[75, 92, 51]),
    -- Trace beside you vs Blue (Let's Go, Eevee!): Raichu Lv. 37: Thunder Shock, Quick Attack, Thunder Punch, Slam
    (170022, 17014, 17016, 30, NULL, NULL, NULL, 4, ARRAY[84, 98, 9, 21]),
    -- Hop beside you vs Sordward & Shielbert [grookey]: Dubwool Lv. 61: Take Down, Double Kick, Double-Edge, Headbutt
    (180014, 18024, 18013, NULL, 180001, 'grookey', NULL, 1, ARRAY[36, 24, 38, 29]),
    -- Hop beside you vs Sordward & Shielbert [grookey]: Corviknight Lv. 61: Drill Peck, Steel Wing, Scary Face, Brave Bird
    (180014, 18024, 18013, NULL, 180001, 'grookey', NULL, 2, ARRAY[65, 211, 184, 413]),
    -- Hop beside you vs Sordward & Shielbert [grookey]: Inteleon Lv. 62: Snipe Shot, Sucker Punch, Liquidation, U-turn
    (180014, 18024, 18013, NULL, 180001, 'grookey', NULL, 3, ARRAY[745, 389, 710, 369]),
    -- Hop beside you vs Sordward & Shielbert [scorbunny]: Dubwool Lv. 61: Take Down, Double Kick, Double-Edge, Headbutt
    (180014, 18024, 18013, NULL, 180001, 'scorbunny', NULL, 1, ARRAY[36, 24, 38, 29]),
    -- Hop beside you vs Sordward & Shielbert [scorbunny]: Corviknight Lv. 61: Drill Peck, Steel Wing, Scary Face, Brave Bird
    (180014, 18024, 18013, NULL, 180001, 'scorbunny', NULL, 2, ARRAY[65, 211, 184, 413]),
    -- Hop beside you vs Sordward & Shielbert [scorbunny]: Rillaboom Lv. 62: Drum Beating, Slam, Knock Off, Uproar
    (180014, 18024, 18013, NULL, 180001, 'scorbunny', NULL, 3, ARRAY[778, 21, 282, 253]),
    -- Hop beside you vs Sordward & Shielbert [sobble]: Dubwool Lv. 61: Take Down, Double Kick, Double-Edge, Headbutt
    (180014, 18024, 18013, NULL, 180001, 'sobble', NULL, 1, ARRAY[36, 24, 38, 29]),
    -- Hop beside you vs Sordward & Shielbert [sobble]: Corviknight Lv. 61: Drill Peck, Steel Wing, Scary Face, Brave Bird
    (180014, 18024, 18013, NULL, 180001, 'sobble', NULL, 2, ARRAY[65, 211, 184, 413]),
    -- Hop beside you vs Sordward & Shielbert [sobble]: Cinderace Lv. 62: Double-Edge, Headbutt, Pyro Ball, Agility
    (180014, 18024, 18013, NULL, 180001, 'sobble', NULL, 3, ARRAY[38, 29, 780, 97]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Munchlax Lv. 42: Lick, Covet, Bite, Body Slam
    (210019, 21045, 21014, NULL, 210001, 'turtwig', NULL, 1, ARRAY[122, 343, 44, 34]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Staraptor Lv. 41: Close Combat, Quick Attack, Double Team, Pluck
    (210019, 21045, 21014, NULL, 210001, 'turtwig', NULL, 2, ARRAY[370, 98, 104, 365]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Buizel Lv. 42: Tail Whip, Bite, Swift, Brine
    (210019, 21045, 21014, NULL, 210001, 'turtwig', NULL, 3, ARRAY[39, 44, 129, 362]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Heracross Lv. 43: Leer, Brick Break, Pin Missile, Thief
    (210019, 21045, 21014, NULL, 210001, 'turtwig', NULL, 4, ARRAY[43, 280, 42, 168]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Roselia Lv. 42: Sweet Scent, Giga Drain, Toxic, Grass Knot
    (210019, 21045, 21014, NULL, 210001, 'turtwig', NULL, 5, ARRAY[230, 202, 92, 447]),
    -- Barry beside you vs Mars & Jupiter [turtwig]: Infernape Lv. 45: Close Combat, Flame Wheel, U-turn, Shadow Claw
    (210019, 21045, 21014, NULL, 210001, 'turtwig', NULL, 6, ARRAY[370, 172, 369, 421]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Munchlax Lv. 42: Lick, Covet, Bite, Body Slam
    (210019, 21045, 21014, NULL, 210001, 'chimchar', NULL, 1, ARRAY[122, 343, 44, 34]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Staraptor Lv. 41: Close Combat, Quick Attack, Double Team, Pluck
    (210019, 21045, 21014, NULL, 210001, 'chimchar', NULL, 2, ARRAY[370, 98, 104, 365]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Roselia Lv. 42: Growth, Stun Spore, Leech Seed, Giga Drain
    (210019, 21045, 21014, NULL, 210001, 'chimchar', NULL, 3, ARRAY[74, 78, 73, 202]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Heracross Lv. 43: Leer, Brick Break, Pin Missile, Thief
    (210019, 21045, 21014, NULL, 210001, 'chimchar', NULL, 4, ARRAY[43, 280, 42, 168]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Ponyta Lv. 42: Growl, Agility, Flame Wheel, Stomp
    (210019, 21045, 21014, NULL, 210001, 'chimchar', NULL, 5, ARRAY[45, 97, 172, 23]),
    -- Barry beside you vs Mars & Jupiter [chimchar]: Empoleon Lv. 45: Metal Claw, Charm, Grass Knot, Brine
    (210019, 21045, 21014, NULL, 210001, 'chimchar', NULL, 6, ARRAY[232, 204, 447, 362]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Munchlax Lv. 42: Lick, Covet, Bite, Body Slam
    (210019, 21045, 21014, NULL, 210001, 'piplup', NULL, 1, ARRAY[122, 343, 44, 34]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Staraptor Lv. 41: Close Combat, Quick Attack, Double Team, Pluck
    (210019, 21045, 21014, NULL, 210001, 'piplup', NULL, 2, ARRAY[370, 98, 104, 365]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Buizel Lv. 42: Tail Whip, Bite, Swift, Brine
    (210019, 21045, 21014, NULL, 210001, 'piplup', NULL, 3, ARRAY[39, 44, 129, 362]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Heracross Lv. 43: Leer, Brick Break, Pin Missile, Thief
    (210019, 21045, 21014, NULL, 210001, 'piplup', NULL, 4, ARRAY[43, 280, 42, 168]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Ponyta Lv. 42: Tail Whip, Agility, Flame Wheel, Stomp
    (210019, 21045, 21014, NULL, 210001, 'piplup', NULL, 5, ARRAY[39, 97, 172, 23]),
    -- Barry beside you vs Mars & Jupiter [piplup]: Torterra Lv. 45: Razor Leaf, Bite, Leech Seed, Stealth Rock
    (210019, 21045, 21014, NULL, 210001, 'piplup', NULL, 6, ARRAY[75, 44, 73, 446])
)
INSERT INTO tracking.mainline_opponent_team_member_moves (team_member_id, slot, move_id)
SELECT
  members.id,
  moves.slot,
  moves.move_id
FROM team_moves
LEFT JOIN tracking.mainline_opponent_team_members AS members
  ON members.milestone_id = team_moves.milestone_id
  AND members.opponent_id = team_moves.opponent_id
  AND members.ally_opponent_id = team_moves.ally_opponent_id
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
