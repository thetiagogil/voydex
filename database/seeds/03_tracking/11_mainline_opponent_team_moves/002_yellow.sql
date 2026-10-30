-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokeyellow disassembly of the game: its trainer parties,
-- set moves and level-up learnsets.
-- A Pokémon the game gives no set moves, and every legendary encounter, gets
-- the game's own default: the last four moves it learns by level up to its
-- level, worked out from the same learnsets as the game does.
-- Jessie & James: the pret pokeyellow disassembly's trainer parties, cross-checked
-- with Bulbapedia's Team Rocket trio page. Their Pokémon have no set moves and get
-- the game's default: the base moves plus the level-up moves to their level, the
-- last four kept, worked out from the Yellow learnsets as the game does.
-- Scope: Yellow Story battle opponents' moves.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The moves of each Yellow opponent's Pokémon in each Story battle, by
-- slot, matched to its team row by battle, opponent, game, choice, variant
-- and team slot.
-- ============================================================================

WITH team_moves (milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, member_slot, move_ids) AS (
  VALUES
    -- Brock: Geodude Lv. 10: Tackle
    (20003, 2001, NULL, NULL, NULL, NULL, 1, ARRAY[33]),
    -- Brock: Onix Lv. 12: Tackle, Screech, Bind, Bide
    (20003, 2001, NULL, NULL, NULL, NULL, 2, ARRAY[33, 103, 20, 117]),
    -- Misty: Staryu Lv. 18: Tackle, Water Gun
    (20005, 2002, NULL, NULL, NULL, NULL, 1, ARRAY[33, 55]),
    -- Misty: Starmie Lv. 21: Tackle, Water Gun, Harden, Bubble Beam
    (20005, 2002, NULL, NULL, NULL, NULL, 2, ARRAY[33, 55, 106, 61]),
    -- Lt. Surge: Raichu Lv. 28: Thunderbolt, Mega Punch, Mega Kick, Growl
    (20006, 2003, NULL, NULL, NULL, NULL, 1, ARRAY[85, 5, 25, 45]),
    -- Erika: Tangela Lv. 30: Constrict, Bind, Mega Drain, Vine Whip
    (20007, 2004, NULL, NULL, NULL, NULL, 1, ARRAY[132, 20, 72, 22]),
    -- Erika: Weepinbell Lv. 32: Razor Leaf, Sleep Powder, Stun Spore, Acid
    (20007, 2004, NULL, NULL, NULL, NULL, 2, ARRAY[75, 79, 78, 51]),
    -- Erika: Gloom Lv. 32: Petal Dance, Stun Spore, Sleep Powder, Acid
    (20007, 2004, NULL, NULL, NULL, NULL, 3, ARRAY[80, 78, 79, 51]),
    -- Koga: Venonat Lv. 44: Toxic, Tackle, Sleep Powder, Psychic
    (20008, 2005, NULL, NULL, NULL, NULL, 1, ARRAY[92, 33, 79, 94]),
    -- Koga: Venonat Lv. 46: Toxic, Psybeam, Supersonic, Psychic
    (20008, 2005, NULL, NULL, NULL, NULL, 2, ARRAY[92, 60, 48, 94]),
    -- Koga: Venonat Lv. 48: Toxic, Double-Edge, Sleep Powder, Psychic
    (20008, 2005, NULL, NULL, NULL, NULL, 3, ARRAY[92, 38, 79, 94]),
    -- Koga: Venomoth Lv. 50: Leech Life, Double Team, Psychic, Toxic
    (20008, 2005, NULL, NULL, NULL, NULL, 4, ARRAY[141, 104, 94, 92]),
    -- Sabrina: Abra Lv. 50: Flash
    (20009, 2006, NULL, NULL, NULL, NULL, 1, ARRAY[148]),
    -- Sabrina: Kadabra Lv. 50: Kinesis, Recover, Psychic, Psywave
    (20009, 2006, NULL, NULL, NULL, NULL, 2, ARRAY[134, 105, 94, 149]),
    -- Sabrina: Alakazam Lv. 50: Psywave, Recover, Psychic, Reflect
    (20009, 2006, NULL, NULL, NULL, NULL, 3, ARRAY[149, 105, 94, 115]),
    -- Blaine: Ninetales Lv. 48: Flamethrower, Tail Whip, Quick Attack, Confuse Ray
    (20011, 2007, NULL, NULL, NULL, NULL, 1, ARRAY[53, 39, 98, 109]),
    -- Blaine: Rapidash Lv. 50: Stomp, Growl, Fire Spin, Take Down
    (20011, 2007, NULL, NULL, NULL, NULL, 2, ARRAY[23, 45, 83, 36]),
    -- Blaine: Arcanine Lv. 54: Flamethrower, Fire Blast, Reflect, Take Down
    (20011, 2007, NULL, NULL, NULL, NULL, 3, ARRAY[53, 126, 115, 36]),
    -- Giovanni: Dugtrio Lv. 50: Dig, Sand Attack, Fissure, Earthquake
    (20012, 2008, NULL, NULL, NULL, NULL, 1, ARRAY[91, 28, 90, 89]),
    -- Giovanni: Persian Lv. 53: Screech, Double Team, Fury Swipes, Slash
    (20012, 2008, NULL, NULL, NULL, NULL, 2, ARRAY[103, 104, 154, 163]),
    -- Giovanni: Nidoqueen Lv. 53: Earthquake, Tail Whip, Thunder, Double Kick
    (20012, 2008, NULL, NULL, NULL, NULL, 3, ARRAY[89, 39, 87, 24]),
    -- Giovanni: Nidoking Lv. 55: Earthquake, Leer, Thunder, Double Kick
    (20012, 2008, NULL, NULL, NULL, NULL, 4, ARRAY[89, 43, 87, 24]),
    -- Giovanni: Rhydon Lv. 55: Rock Slide, Fury Attack, Horn Drill, Earthquake
    (20012, 2008, NULL, NULL, NULL, NULL, 5, ARRAY[157, 31, 32, 89]),
    -- Lorelei: Dewgong Lv. 54: Bubble Beam, Aurora Beam, Rest, Take Down
    (20013, 2009, NULL, NULL, NULL, NULL, 1, ARRAY[61, 62, 156, 36]),
    -- Lorelei: Cloyster Lv. 53: Supersonic, Clamp, Ice Beam, Spike Cannon
    (20013, 2009, NULL, NULL, NULL, NULL, 2, ARRAY[48, 128, 58, 131]),
    -- Lorelei: Slowbro Lv. 54: Psychic, Surf, Withdraw, Amnesia
    (20013, 2009, NULL, NULL, NULL, NULL, 3, ARRAY[94, 57, 110, 133]),
    -- Lorelei: Jynx Lv. 56: Double Slap, Ice Punch, Lovely Kiss, Thrash
    (20013, 2009, NULL, NULL, NULL, NULL, 4, ARRAY[3, 8, 142, 37]),
    -- Lorelei: Lapras Lv. 56: Body Slam, Confuse Ray, Blizzard, Hydro Pump
    (20013, 2009, NULL, NULL, NULL, NULL, 5, ARRAY[34, 109, 59, 56]),
    -- Bruno: Onix Lv. 53: Rock Slide, Screech, Slam, Dig
    (20014, 2010, NULL, NULL, NULL, NULL, 1, ARRAY[157, 103, 21, 91]),
    -- Bruno: Hitmonchan Lv. 55: Ice Punch, Thunder Punch, Fire Punch, Double Team
    (20014, 2010, NULL, NULL, NULL, NULL, 2, ARRAY[8, 9, 7, 104]),
    -- Bruno: Hitmonlee Lv. 55: Double Kick, Mega Kick, High Jump Kick, Double Team
    (20014, 2010, NULL, NULL, NULL, NULL, 3, ARRAY[24, 25, 136, 104]),
    -- Bruno: Onix Lv. 56: Rock Slide, Screech, Slam, Earthquake
    (20014, 2010, NULL, NULL, NULL, NULL, 4, ARRAY[157, 103, 21, 89]),
    -- Bruno: Machamp Lv. 58: Leer, Karate Chop, Strength, Submission
    (20014, 2010, NULL, NULL, NULL, NULL, 5, ARRAY[43, 2, 70, 66]),
    -- Agatha: Gengar Lv. 56: Confuse Ray, Substitute, Lick, Mega Drain
    (20015, 2011, NULL, NULL, NULL, NULL, 1, ARRAY[109, 164, 122, 72]),
    -- Agatha: Golbat Lv. 56: Supersonic, Toxic, Wing Attack, Leech Life
    (20015, 2011, NULL, NULL, NULL, NULL, 2, ARRAY[48, 92, 17, 141]),
    -- Agatha: Haunter Lv. 55: Confuse Ray, Lick, Hypnosis, Dream Eater
    (20015, 2011, NULL, NULL, NULL, NULL, 3, ARRAY[109, 122, 95, 138]),
    -- Agatha: Arbok Lv. 58: Wrap, Glare, Screech, Acid
    (20015, 2011, NULL, NULL, NULL, NULL, 4, ARRAY[35, 137, 103, 51]),
    -- Agatha: Gengar Lv. 60: Confuse Ray, Psychic, Hypnosis, Dream Eater
    (20015, 2011, NULL, NULL, NULL, NULL, 5, ARRAY[109, 94, 95, 138]),
    -- Lance: Gyarados Lv. 58: Dragon Rage, Leer, Hydro Pump, Hyper Beam
    (20016, 2012, NULL, NULL, NULL, NULL, 1, ARRAY[82, 43, 56, 63]),
    -- Lance: Dragonair Lv. 56: Thunder Wave, Slam, Thunderbolt, Hyper Beam
    (20016, 2012, NULL, NULL, NULL, NULL, 2, ARRAY[86, 21, 85, 63]),
    -- Lance: Dragonair Lv. 56: Bubble Beam, Wrap, Ice Beam, Hyper Beam
    (20016, 2012, NULL, NULL, NULL, NULL, 3, ARRAY[61, 35, 58, 63]),
    -- Lance: Aerodactyl Lv. 60: Wing Attack, Swift, Fly, Hyper Beam
    (20016, 2012, NULL, NULL, NULL, NULL, 4, ARRAY[17, 129, 19, 63]),
    -- Lance: Dragonite Lv. 62: Blizzard, Fire Blast, Thunder, Hyper Beam
    (20016, 2012, NULL, NULL, NULL, NULL, 5, ARRAY[59, 126, 87, 63]),
    -- Blue: Sandslash Lv. 61: Slash, Poison Sting, Earthquake, Fury Swipes
    (20017, 2013, NULL, NULL, NULL, 'rival-jolteon', 1, ARRAY[163, 40, 89, 154]),
    -- Blue: Alakazam Lv. 59: Psybeam, Recover, Psychic, Kinesis
    (20017, 2013, NULL, NULL, NULL, 'rival-jolteon', 2, ARRAY[60, 105, 94, 134]),
    -- Blue: Exeggutor Lv. 61: Barrage, Hypnosis, Stomp, Leech Seed
    (20017, 2013, NULL, NULL, NULL, 'rival-jolteon', 3, ARRAY[140, 95, 23, 73]),
    -- Blue: Cloyster Lv. 61: Ice Beam, Clamp, Aurora Beam, Spike Cannon
    (20017, 2013, NULL, NULL, NULL, 'rival-jolteon', 4, ARRAY[58, 128, 62, 131]),
    -- Blue: Ninetales Lv. 63: Confuse Ray, Tail Whip, Quick Attack, Fire Spin
    (20017, 2013, NULL, NULL, NULL, 'rival-jolteon', 5, ARRAY[109, 39, 98, 83]),
    -- Blue: Jolteon Lv. 65: Pin Missile, Thunder Wave, Quick Attack, Thunder
    (20017, 2013, NULL, NULL, NULL, 'rival-jolteon', 6, ARRAY[42, 86, 98, 87]),
    -- Blue: Sandslash Lv. 61: Slash, Poison Sting, Earthquake, Fury Swipes
    (20017, 2013, NULL, NULL, NULL, 'rival-flareon', 1, ARRAY[163, 40, 89, 154]),
    -- Blue: Alakazam Lv. 59: Psybeam, Recover, Psychic, Kinesis
    (20017, 2013, NULL, NULL, NULL, 'rival-flareon', 2, ARRAY[60, 105, 94, 134]),
    -- Blue: Exeggutor Lv. 61: Barrage, Hypnosis, Stomp, Leech Seed
    (20017, 2013, NULL, NULL, NULL, 'rival-flareon', 3, ARRAY[140, 95, 23, 73]),
    -- Blue: Magneton Lv. 61: Thunderbolt, Thunder Wave, Swift, Screech
    (20017, 2013, NULL, NULL, NULL, 'rival-flareon', 4, ARRAY[85, 86, 129, 103]),
    -- Blue: Cloyster Lv. 63: Ice Beam, Clamp, Aurora Beam, Spike Cannon
    (20017, 2013, NULL, NULL, NULL, 'rival-flareon', 5, ARRAY[58, 128, 62, 131]),
    -- Blue: Flareon Lv. 65: Fire Spin, Reflect, Quick Attack, Flamethrower
    (20017, 2013, NULL, NULL, NULL, 'rival-flareon', 6, ARRAY[83, 115, 98, 53]),
    -- Blue: Sandslash Lv. 61: Slash, Poison Sting, Earthquake, Fury Swipes
    (20017, 2013, NULL, NULL, NULL, 'rival-vaporeon', 1, ARRAY[163, 40, 89, 154]),
    -- Blue: Alakazam Lv. 59: Psybeam, Recover, Psychic, Kinesis
    (20017, 2013, NULL, NULL, NULL, 'rival-vaporeon', 2, ARRAY[60, 105, 94, 134]),
    -- Blue: Exeggutor Lv. 61: Barrage, Hypnosis, Stomp, Leech Seed
    (20017, 2013, NULL, NULL, NULL, 'rival-vaporeon', 3, ARRAY[140, 95, 23, 73]),
    -- Blue: Ninetales Lv. 61: Confuse Ray, Tail Whip, Quick Attack, Fire Spin
    (20017, 2013, NULL, NULL, NULL, 'rival-vaporeon', 4, ARRAY[109, 39, 98, 83]),
    -- Blue: Magneton Lv. 63: Thunderbolt, Thunder Wave, Swift, Screech
    (20017, 2013, NULL, NULL, NULL, 'rival-vaporeon', 5, ARRAY[85, 86, 129, 103]),
    -- Blue: Vaporeon Lv. 65: Aurora Beam, Mist, Quick Attack, Hydro Pump
    (20017, 2013, NULL, NULL, NULL, 'rival-vaporeon', 6, ARRAY[62, 54, 98, 56]),
    -- Blue: Eevee Lv. 5: Tackle, Tail Whip
    (20001, 2014, NULL, NULL, NULL, NULL, 1, ARRAY[33, 39]),
    -- Blue: Spearow Lv. 9: Peck, Growl, Leer
    (20003, 2014, NULL, NULL, NULL, NULL, 1, ARRAY[64, 45, 43]),
    -- Blue: Eevee Lv. 8: Tackle, Tail Whip, Sand Attack
    (20003, 2014, NULL, NULL, NULL, NULL, 2, ARRAY[33, 39, 28]),
    -- Blue: Spearow Lv. 18: Peck, Growl, Leer, Fury Attack
    (20005, 2014, NULL, NULL, NULL, NULL, 1, ARRAY[64, 45, 43, 31]),
    -- Blue: Sandshrew Lv. 15: Scratch, Sand Attack
    (20005, 2014, NULL, NULL, NULL, NULL, 2, ARRAY[10, 28]),
    -- Blue: Rattata Lv. 15: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (20005, 2014, NULL, NULL, NULL, NULL, 3, ARRAY[33, 39, 98, 158]),
    -- Blue: Eevee Lv. 17: Tackle, Tail Whip, Sand Attack, Growl
    (20005, 2014, NULL, NULL, NULL, NULL, 4, ARRAY[33, 39, 28, 45]),
    -- Blue: Spearow Lv. 19: Peck, Growl, Leer, Fury Attack
    (20019, 2014, NULL, NULL, NULL, NULL, 1, ARRAY[64, 45, 43, 31]),
    -- Blue: Rattata Lv. 16: Tackle, Tail Whip, Quick Attack, Hyper Fang
    (20019, 2014, NULL, NULL, NULL, NULL, 2, ARRAY[33, 39, 98, 158]),
    -- Blue: Sandshrew Lv. 18: Scratch, Sand Attack, Slash
    (20019, 2014, NULL, NULL, NULL, NULL, 3, ARRAY[10, 28, 163]),
    -- Blue: Eevee Lv. 20: Tackle, Tail Whip, Sand Attack, Growl
    (20019, 2014, NULL, NULL, NULL, NULL, 4, ARRAY[33, 39, 28, 45]),
    -- Blue: Fearow Lv. 25: Growl, Leer, Fury Attack, Mirror Move
    (20021, 2014, NULL, NULL, NULL, 'rival-jolteon', 1, ARRAY[45, 43, 31, 119]),
    -- Blue: Shellder Lv. 23: Tackle, Withdraw, Supersonic, Clamp
    (20021, 2014, NULL, NULL, NULL, 'rival-jolteon', 2, ARRAY[33, 110, 48, 128]),
    -- Blue: Vulpix Lv. 22: Ember, Tail Whip, Quick Attack, Roar
    (20021, 2014, NULL, NULL, NULL, 'rival-jolteon', 3, ARRAY[52, 39, 98, 46]),
    -- Blue: Sandshrew Lv. 20: Scratch, Sand Attack, Slash
    (20021, 2014, NULL, NULL, NULL, 'rival-jolteon', 4, ARRAY[10, 28, 163]),
    -- Blue: Eevee Lv. 25: Tail Whip, Sand Attack, Growl, Quick Attack
    (20021, 2014, NULL, NULL, NULL, 'rival-jolteon', 5, ARRAY[39, 28, 45, 98]),
    -- Blue: Fearow Lv. 25: Growl, Leer, Fury Attack, Mirror Move
    (20021, 2014, NULL, NULL, NULL, 'rival-flareon', 1, ARRAY[45, 43, 31, 119]),
    -- Blue: Magnemite Lv. 23: Tackle, Sonic Boom
    (20021, 2014, NULL, NULL, NULL, 'rival-flareon', 2, ARRAY[33, 49]),
    -- Blue: Shellder Lv. 22: Tackle, Withdraw, Supersonic
    (20021, 2014, NULL, NULL, NULL, 'rival-flareon', 3, ARRAY[33, 110, 48]),
    -- Blue: Sandshrew Lv. 20: Scratch, Sand Attack, Slash
    (20021, 2014, NULL, NULL, NULL, 'rival-flareon', 4, ARRAY[10, 28, 163]),
    -- Blue: Eevee Lv. 25: Tail Whip, Sand Attack, Growl, Quick Attack
    (20021, 2014, NULL, NULL, NULL, 'rival-flareon', 5, ARRAY[39, 28, 45, 98]),
    -- Blue: Fearow Lv. 25: Growl, Leer, Fury Attack, Mirror Move
    (20021, 2014, NULL, NULL, NULL, 'rival-vaporeon', 1, ARRAY[45, 43, 31, 119]),
    -- Blue: Vulpix Lv. 23: Ember, Tail Whip, Quick Attack, Roar
    (20021, 2014, NULL, NULL, NULL, 'rival-vaporeon', 2, ARRAY[52, 39, 98, 46]),
    -- Blue: Magnemite Lv. 22: Tackle, Sonic Boom
    (20021, 2014, NULL, NULL, NULL, 'rival-vaporeon', 3, ARRAY[33, 49]),
    -- Blue: Sandshrew Lv. 20: Scratch, Sand Attack, Slash
    (20021, 2014, NULL, NULL, NULL, 'rival-vaporeon', 4, ARRAY[10, 28, 163]),
    -- Blue: Eevee Lv. 25: Tail Whip, Sand Attack, Growl, Quick Attack
    (20021, 2014, NULL, NULL, NULL, 'rival-vaporeon', 5, ARRAY[39, 28, 45, 98]),
    -- Giovanni: Onix Lv. 25: Screech, Bind, Rock Throw, Rage
    (20020, 2015, NULL, NULL, NULL, NULL, 1, ARRAY[103, 20, 88, 99]),
    -- Giovanni: Rhyhorn Lv. 24: Horn Attack
    (20020, 2015, NULL, NULL, NULL, NULL, 2, ARRAY[30]),
    -- Giovanni: Persian Lv. 29: Growl, Bite, Screech, Pay Day
    (20020, 2015, NULL, NULL, NULL, NULL, 3, ARRAY[45, 44, 103, 6]),
    -- Blue: Sandslash Lv. 38: Sand Attack, Slash, Poison Sting, Swift
    (20022, 2014, NULL, NULL, NULL, 'rival-jolteon', 1, ARRAY[28, 163, 40, 129]),
    -- Blue: Ninetales Lv. 35: Ember, Tail Whip, Quick Attack, Roar
    (20022, 2014, NULL, NULL, NULL, 'rival-jolteon', 2, ARRAY[52, 39, 98, 46]),
    -- Blue: Cloyster Lv. 37: Withdraw, Supersonic, Clamp, Aurora Beam
    (20022, 2014, NULL, NULL, NULL, 'rival-jolteon', 3, ARRAY[110, 48, 128, 62]),
    -- Blue: Kadabra Lv. 35: Confusion, Disable, Psybeam, Recover
    (20022, 2014, NULL, NULL, NULL, 'rival-jolteon', 4, ARRAY[93, 50, 60, 105]),
    -- Blue: Jolteon Lv. 40: Thunder Shock, Sand Attack, Double Kick, Pin Missile
    (20022, 2014, NULL, NULL, NULL, 'rival-jolteon', 5, ARRAY[84, 28, 24, 42]),
    -- Blue: Sandslash Lv. 38: Sand Attack, Slash, Poison Sting, Swift
    (20022, 2014, NULL, NULL, NULL, 'rival-flareon', 1, ARRAY[28, 163, 40, 129]),
    -- Blue: Cloyster Lv. 35: Withdraw, Supersonic, Clamp, Aurora Beam
    (20022, 2014, NULL, NULL, NULL, 'rival-flareon', 2, ARRAY[110, 48, 128, 62]),
    -- Blue: Magneton Lv. 37: Tackle, Sonic Boom, Thunder Shock, Supersonic
    (20022, 2014, NULL, NULL, NULL, 'rival-flareon', 3, ARRAY[33, 49, 84, 48]),
    -- Blue: Kadabra Lv. 35: Confusion, Disable, Psybeam, Recover
    (20022, 2014, NULL, NULL, NULL, 'rival-flareon', 4, ARRAY[93, 50, 60, 105]),
    -- Blue: Flareon Lv. 40: Ember, Sand Attack, Bite, Fire Spin
    (20022, 2014, NULL, NULL, NULL, 'rival-flareon', 5, ARRAY[52, 28, 44, 83]),
    -- Blue: Sandslash Lv. 38: Sand Attack, Slash, Poison Sting, Swift
    (20022, 2014, NULL, NULL, NULL, 'rival-vaporeon', 1, ARRAY[28, 163, 40, 129]),
    -- Blue: Magneton Lv. 35: Tackle, Sonic Boom, Thunder Shock, Supersonic
    (20022, 2014, NULL, NULL, NULL, 'rival-vaporeon', 2, ARRAY[33, 49, 84, 48]),
    -- Blue: Ninetales Lv. 37: Ember, Tail Whip, Quick Attack, Roar
    (20022, 2014, NULL, NULL, NULL, 'rival-vaporeon', 3, ARRAY[52, 39, 98, 46]),
    -- Blue: Kadabra Lv. 35: Confusion, Disable, Psybeam, Recover
    (20022, 2014, NULL, NULL, NULL, 'rival-vaporeon', 4, ARRAY[93, 50, 60, 105]),
    -- Blue: Vaporeon Lv. 40: Water Gun, Sand Attack, Bite, Aurora Beam
    (20022, 2014, NULL, NULL, NULL, 'rival-vaporeon', 5, ARRAY[55, 28, 44, 62]),
    -- Giovanni: Nidorino Lv. 37: Double Kick, Poison Sting, Focus Energy, Fury Attack
    (20022, 2015, NULL, NULL, NULL, NULL, 1, ARRAY[24, 40, 116, 31]),
    -- Giovanni: Persian Lv. 35: Growl, Bite, Screech, Pay Day
    (20022, 2015, NULL, NULL, NULL, NULL, 2, ARRAY[45, 44, 103, 6]),
    -- Giovanni: Rhyhorn Lv. 37: Horn Attack, Stomp, Tail Whip
    (20022, 2015, NULL, NULL, NULL, NULL, 3, ARRAY[30, 23, 39]),
    -- Giovanni: Nidoqueen Lv. 41: Scratch, Tail Whip, Body Slam, Double Kick
    (20022, 2015, NULL, NULL, NULL, NULL, 4, ARRAY[10, 39, 34, 24]),
    -- Blue: Sandslash Lv. 47: Slash, Poison Sting, Swift, Fury Swipes
    (20013, 2014, NULL, NULL, NULL, 'rival-jolteon', 1, ARRAY[163, 40, 129, 154]),
    -- Blue: Exeggcute Lv. 45: Leech Seed, Stun Spore, Poison Powder, Solar Beam
    (20013, 2014, NULL, NULL, NULL, 'rival-jolteon', 2, ARRAY[73, 78, 77, 76]),
    -- Blue: Ninetales Lv. 45: Ember, Tail Whip, Quick Attack, Roar
    (20013, 2014, NULL, NULL, NULL, 'rival-jolteon', 3, ARRAY[52, 39, 98, 46]),
    -- Blue: Cloyster Lv. 47: Withdraw, Supersonic, Clamp, Aurora Beam
    (20013, 2014, NULL, NULL, NULL, 'rival-jolteon', 4, ARRAY[110, 48, 128, 62]),
    -- Blue: Kadabra Lv. 50: Psybeam, Recover, Psychic, Reflect
    (20013, 2014, NULL, NULL, NULL, 'rival-jolteon', 5, ARRAY[60, 105, 94, 115]),
    -- Blue: Jolteon Lv. 53: Pin Missile, Thunder Wave, Agility, Thunder
    (20013, 2014, NULL, NULL, NULL, 'rival-jolteon', 6, ARRAY[42, 86, 97, 87]),
    -- Blue: Sandslash Lv. 47: Slash, Poison Sting, Swift, Fury Swipes
    (20013, 2014, NULL, NULL, NULL, 'rival-flareon', 1, ARRAY[163, 40, 129, 154]),
    -- Blue: Exeggcute Lv. 45: Leech Seed, Stun Spore, Poison Powder, Solar Beam
    (20013, 2014, NULL, NULL, NULL, 'rival-flareon', 2, ARRAY[73, 78, 77, 76]),
    -- Blue: Cloyster Lv. 45: Withdraw, Supersonic, Clamp, Aurora Beam
    (20013, 2014, NULL, NULL, NULL, 'rival-flareon', 3, ARRAY[110, 48, 128, 62]),
    -- Blue: Magneton Lv. 47: Thunder Shock, Supersonic, Thunder Wave, Swift
    (20013, 2014, NULL, NULL, NULL, 'rival-flareon', 4, ARRAY[84, 48, 86, 129]),
    -- Blue: Kadabra Lv. 50: Psybeam, Recover, Psychic, Reflect
    (20013, 2014, NULL, NULL, NULL, 'rival-flareon', 5, ARRAY[60, 105, 94, 115]),
    -- Blue: Flareon Lv. 53: Fire Spin, Smog, Leer, Flamethrower
    (20013, 2014, NULL, NULL, NULL, 'rival-flareon', 6, ARRAY[83, 123, 43, 53]),
    -- Blue: Sandslash Lv. 47: Slash, Poison Sting, Swift, Fury Swipes
    (20013, 2014, NULL, NULL, NULL, 'rival-vaporeon', 1, ARRAY[163, 40, 129, 154]),
    -- Blue: Exeggcute Lv. 45: Leech Seed, Stun Spore, Poison Powder, Solar Beam
    (20013, 2014, NULL, NULL, NULL, 'rival-vaporeon', 2, ARRAY[73, 78, 77, 76]),
    -- Blue: Magneton Lv. 45: Sonic Boom, Thunder Shock, Supersonic, Thunder Wave
    (20013, 2014, NULL, NULL, NULL, 'rival-vaporeon', 3, ARRAY[49, 84, 48, 86]),
    -- Blue: Ninetales Lv. 47: Ember, Tail Whip, Quick Attack, Roar
    (20013, 2014, NULL, NULL, NULL, 'rival-vaporeon', 4, ARRAY[52, 39, 98, 46]),
    -- Blue: Kadabra Lv. 50: Psybeam, Recover, Psychic, Reflect
    (20013, 2014, NULL, NULL, NULL, 'rival-vaporeon', 5, ARRAY[60, 105, 94, 115]),
    -- Blue: Vaporeon Lv. 53: Haze, Mist, Acid Armor, Hydro Pump
    (20013, 2014, NULL, NULL, NULL, 'rival-vaporeon', 6, ARRAY[114, 54, 151, 56]),
    -- Zapdos: Zapdos Lv. 50: Thunder Shock, Drill Peck
    (20023, 2016, NULL, NULL, NULL, NULL, 1, ARRAY[84, 65]),
    -- Articuno: Articuno Lv. 50: Peck, Ice Beam
    (20024, 2017, NULL, NULL, NULL, NULL, 1, ARRAY[64, 58]),
    -- Moltres: Moltres Lv. 50: Peck, Fire Spin
    (20025, 2018, NULL, NULL, NULL, NULL, 1, ARRAY[64, 83]),
    -- Mewtwo: Mewtwo Lv. 70: Swift, Psychic, Barrier, Recover
    (20026, 2019, NULL, NULL, NULL, NULL, 1, ARRAY[129, 94, 112, 105]),
    -- Jessie & James: Ekans Lv. 14: Wrap, Leer, Poison Sting
    (20004, 2020, NULL, NULL, NULL, NULL, 1, ARRAY[35, 43, 40]),
    -- Jessie & James: Meowth Lv. 14: Scratch, Growl, Bite
    (20004, 2020, NULL, NULL, NULL, NULL, 2, ARRAY[10, 45, 44]),
    -- Jessie & James: Koffing Lv. 14: Tackle, Smog
    (20004, 2020, NULL, NULL, NULL, NULL, 3, ARRAY[33, 123]),
    -- Jessie & James: Koffing Lv. 25: Tackle, Smog
    (20020, 2020, NULL, NULL, NULL, NULL, 1, ARRAY[33, 123]),
    -- Jessie & James: Meowth Lv. 25: Growl, Bite, Pay Day, Screech
    (20020, 2020, NULL, NULL, NULL, NULL, 2, ARRAY[45, 44, 6, 103]),
    -- Jessie & James: Ekans Lv. 25: Leer, Poison Sting, Bite, Glare
    (20020, 2020, NULL, NULL, NULL, NULL, 3, ARRAY[43, 40, 44, 137]),
    -- Jessie & James: Meowth Lv. 27: Growl, Bite, Pay Day, Screech
    (20021, 2020, NULL, NULL, NULL, NULL, 1, ARRAY[45, 44, 6, 103]),
    -- Jessie & James: Arbok Lv. 27: Leer, Poison Sting, Bite, Glare
    (20021, 2020, NULL, NULL, NULL, NULL, 2, ARRAY[43, 40, 44, 137]),
    -- Jessie & James: Weezing Lv. 27: Tackle, Smog, Sludge
    (20021, 2020, NULL, NULL, NULL, NULL, 3, ARRAY[33, 123, 124]),
    -- Jessie & James: Weezing Lv. 31: Tackle, Smog, Sludge
    (20022, 2020, NULL, NULL, NULL, NULL, 1, ARRAY[33, 123, 124]),
    -- Jessie & James: Arbok Lv. 31: Leer, Poison Sting, Bite, Glare
    (20022, 2020, NULL, NULL, NULL, NULL, 2, ARRAY[43, 40, 44, 137]),
    -- Jessie & James: Meowth Lv. 31: Growl, Bite, Pay Day, Screech
    (20022, 2020, NULL, NULL, NULL, NULL, 3, ARRAY[45, 44, 6, 103])
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
  AND members.ally_opponent_id IS NULL
  AND members.game_id IS NOT DISTINCT FROM team_moves.game_id::integer
  AND members.decision_milestone_id IS NOT DISTINCT FROM team_moves.decision_milestone_id::integer
  AND members.decision_option_slug IS NOT DISTINCT FROM team_moves.decision_option_slug::text
  AND members.variant_slug IS NOT DISTINCT FROM team_moves.variant_slug::text
  AND members.slot = team_moves.member_slot
CROSS JOIN LATERAL UNNEST(team_moves.move_ids) WITH ORDINALITY AS moves (move_id, slot);
