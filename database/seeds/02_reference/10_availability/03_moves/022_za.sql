-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IX move availability table, ZA column.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 9
-- Version Group: Pokémon Legends: Z-A
-- Rows: 340
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #004 Comet Punch
  (4, 26, NULL),
  -- #006 Pay Day
  (6, 26, NULL),
  -- #007 Fire Punch
  (7, 26, NULL),
  -- #008 Ice Punch
  (8, 26, NULL),
  -- #009 Thunder Punch
  (9, 26, NULL),
  -- #013 Razor Wind
  (13, 26, NULL),
  -- #014 Swords Dance
  (14, 26, NULL),
  -- #016 Gust
  (16, 26, NULL),
  -- #017 Wing Attack
  (17, 26, NULL),
  -- #018 Whirlwind
  (18, 26, NULL),
  -- #019 Fly
  (19, 26, NULL),
  -- #022 Vine Whip
  (22, 26, NULL),
  -- #029 Headbutt
  (29, 26, NULL),
  -- #033 Tackle
  (33, 26, NULL),
  -- #034 Body Slam
  (34, 26, NULL),
  -- #036 Take Down
  (36, 26, NULL),
  -- #038 Double-Edge
  (38, 26, NULL),
  -- #039 Tail Whip
  (39, 26, NULL),
  -- #040 Poison Sting
  (40, 26, NULL),
  -- #042 Pin Missile
  (42, 26, NULL),
  -- #043 Leer
  (43, 26, NULL),
  -- #044 Bite
  (44, 26, NULL),
  -- #045 Growl
  (45, 26, NULL),
  -- #046 Roar
  (46, 26, NULL),
  -- #047 Sing
  (47, 26, NULL),
  -- #048 Supersonic
  (48, 26, NULL),
  -- #052 Ember
  (52, 26, NULL),
  -- #053 Flamethrower
  (53, 26, NULL),
  -- #054 Mist
  (54, 26, NULL),
  -- #055 Water Gun
  (55, 26, NULL),
  -- #056 Hydro Pump
  (56, 26, NULL),
  -- #057 Surf
  (57, 26, NULL),
  -- #058 Ice Beam
  (58, 26, NULL),
  -- #059 Blizzard
  (59, 26, NULL),
  -- #060 Psybeam
  (60, 26, NULL),
  -- #061 Bubble Beam
  (61, 26, NULL),
  -- #063 Hyper Beam
  (63, 26, NULL),
  -- #064 Peck
  (64, 26, NULL),
  -- #071 Absorb
  (71, 26, NULL),
  -- #073 Leech Seed
  (73, 26, NULL),
  -- #074 Growth
  (74, 26, NULL),
  -- #075 Razor Leaf
  (75, 26, NULL),
  -- #076 Solar Beam
  (76, 26, NULL),
  -- #077 Poison Powder
  (77, 26, NULL),
  -- #078 Stun Spore
  (78, 26, NULL),
  -- #079 Sleep Powder
  (79, 26, NULL),
  -- #080 Petal Dance
  (80, 26, NULL),
  -- #081 String Shot
  (81, 26, NULL),
  -- #083 Fire Spin
  (83, 26, NULL),
  -- #084 Thunder Shock
  (84, 26, NULL),
  -- #085 Thunderbolt
  (85, 26, NULL),
  -- #086 Thunder Wave
  (86, 26, NULL),
  -- #087 Thunder
  (87, 26, NULL),
  -- #088 Rock Throw
  (88, 26, NULL),
  -- #089 Earthquake
  (89, 26, NULL),
  -- #090 Fissure
  (90, 26, NULL),
  -- #091 Dig
  (91, 26, NULL),
  -- #092 Toxic
  (92, 26, NULL),
  -- #093 Confusion
  (93, 26, NULL),
  -- #094 Psychic
  (94, 26, NULL),
  -- #095 Hypnosis
  (95, 26, NULL),
  -- #097 Agility
  (97, 26, NULL),
  -- #098 Quick Attack
  (98, 26, NULL),
  -- #100 Teleport
  (100, 26, NULL),
  -- #102 Mimic
  (102, 26, NULL),
  -- #103 Screech
  (103, 26, NULL),
  -- #104 Double Team
  (104, 26, NULL),
  -- #105 Recover
  (105, 26, NULL),
  -- #106 Harden
  (106, 26, NULL),
  -- #108 Smokescreen
  (108, 26, NULL),
  -- #109 Confuse Ray
  (109, 26, NULL),
  -- #113 Light Screen
  (113, 26, NULL),
  -- #114 Haze
  (114, 26, NULL),
  -- #115 Reflect
  (115, 26, NULL),
  -- #116 Focus Energy
  (116, 26, NULL),
  -- #118 Metronome
  (118, 26, NULL),
  -- #120 Self-Destruct
  (120, 26, NULL),
  -- #122 Lick
  (122, 26, NULL),
  -- #126 Fire Blast
  (126, 26, NULL),
  -- #127 Waterfall
  (127, 26, NULL),
  -- #129 Swift
  (129, 26, NULL),
  -- #130 Skull Bash
  (130, 26, NULL),
  -- #133 Amnesia
  (133, 26, NULL),
  -- #137 Glare
  (137, 26, NULL),
  -- #138 Dream Eater
  (138, 26, NULL),
  -- #141 Leech Life
  (141, 26, NULL),
  -- #143 Sky Attack
  (143, 26, NULL),
  -- #147 Spore
  (147, 26, NULL),
  -- #150 Splash
  (150, 26, NULL),
  -- #151 Acid Armor
  (151, 26, NULL),
  -- #153 Explosion
  (153, 26, NULL),
  -- #155 Bonemerang
  (155, 26, NULL),
  -- #157 Rock Slide
  (157, 26, NULL),
  -- #160 Conversion
  (160, 26, NULL),
  -- #161 Tri Attack
  (161, 26, NULL),
  -- #162 Super Fang
  (162, 26, NULL),
  -- #163 Slash
  (163, 26, NULL),
  -- #164 Substitute
  (164, 26, NULL),
  -- #172 Flame Wheel
  (172, 26, NULL),
  -- #174 Curse
  (174, 26, NULL),
  -- #176 Conversion 2
  (176, 26, NULL),
  -- #182 Protect
  (182, 26, NULL),
  -- #183 Mach Punch
  (183, 26, NULL),
  -- #188 Sludge Bomb
  (188, 26, NULL),
  -- #191 Spikes
  (191, 26, NULL),
  -- #192 Zap Cannon
  (192, 26, NULL),
  -- #195 Perish Song
  (195, 26, NULL),
  -- #196 Icy Wind
  (196, 26, NULL),
  -- #197 Detect
  (197, 26, NULL),
  -- #200 Outrage
  (200, 26, NULL),
  -- #202 Giga Drain
  (202, 26, NULL),
  -- #203 Endure
  (203, 26, NULL),
  -- #204 Charm
  (204, 26, NULL),
  -- #205 Rollout
  (205, 26, NULL),
  -- #206 False Swipe
  (206, 26, NULL),
  -- #207 Swagger
  (207, 26, NULL),
  -- #209 Spark
  (209, 26, NULL),
  -- #211 Steel Wing
  (211, 26, NULL),
  -- #219 Safeguard
  (219, 26, NULL),
  -- #223 Dynamic Punch
  (223, 26, NULL),
  -- #224 Megahorn
  (224, 26, NULL),
  -- #225 Dragon Breath
  (225, 26, NULL),
  -- #231 Iron Tail
  (231, 26, NULL),
  -- #232 Metal Claw
  (232, 26, NULL),
  -- #234 Morning Sun
  (234, 26, NULL),
  -- #235 Synthesis
  (235, 26, NULL),
  -- #236 Moonlight
  (236, 26, NULL),
  -- #239 Twister
  (239, 26, NULL),
  -- #242 Crunch
  (242, 26, NULL),
  -- #245 Extreme Speed
  (245, 26, NULL),
  -- #246 Ancient Power
  (246, 26, NULL),
  -- #247 Shadow Ball
  (247, 26, NULL),
  -- #248 Future Sight
  (248, 26, NULL),
  -- #249 Rock Smash
  (249, 26, NULL),
  -- #250 Whirlpool
  (250, 26, NULL),
  -- #252 Fake Out
  (252, 26, NULL),
  -- #257 Heat Wave
  (257, 26, NULL),
  -- #259 Torment
  (259, 26, NULL),
  -- #261 Will-O-Wisp
  (261, 26, NULL),
  -- #263 Facade
  (263, 26, NULL),
  -- #268 Charge
  (268, 26, NULL),
  -- #269 Taunt
  (269, 26, NULL),
  -- #273 Wish
  (273, 26, NULL),
  -- #280 Brick Break
  (280, 26, NULL),
  -- #282 Knock Off
  (282, 26, NULL),
  -- #295 Luster Purge
  (295, 26, NULL),
  -- #296 Mist Ball
  (296, 26, NULL),
  -- #297 Feather Dance
  (297, 26, NULL),
  -- #299 Blaze Kick
  (299, 26, NULL),
  -- #304 Hyper Voice
  (304, 26, NULL),
  -- #305 Poison Fang
  (305, 26, NULL),
  -- #307 Blast Burn
  (307, 26, NULL),
  -- #308 Hydro Cannon
  (308, 26, NULL),
  -- #313 Fake Tears
  (313, 26, NULL),
  -- #315 Overheat
  (315, 26, NULL),
  -- #317 Rock Tomb
  (317, 26, NULL),
  -- #318 Silver Wind
  (318, 26, NULL),
  -- #319 Metal Sound
  (319, 26, NULL),
  -- #325 Shadow Punch
  (325, 26, NULL),
  -- #328 Sand Tomb
  (328, 26, NULL),
  -- #329 Sheer Cold
  (329, 26, NULL),
  -- #330 Muddy Water
  (330, 26, NULL),
  -- #331 Bullet Seed
  (331, 26, NULL),
  -- #332 Aerial Ace
  (332, 26, NULL),
  -- #333 Icicle Spear
  (333, 26, NULL),
  -- #334 Iron Defense
  (334, 26, NULL),
  -- #337 Dragon Claw
  (337, 26, NULL),
  -- #338 Frenzy Plant
  (338, 26, NULL),
  -- #339 Bulk Up
  (339, 26, NULL),
  -- #340 Bounce
  (340, 26, NULL),
  -- #341 Mud Shot
  (341, 26, NULL),
  -- #344 Volt Tackle
  (344, 26, NULL),
  -- #345 Magical Leaf
  (345, 26, NULL),
  -- #347 Calm Mind
  (347, 26, NULL),
  -- #348 Leaf Blade
  (348, 26, NULL),
  -- #350 Rock Blast
  (350, 26, NULL),
  -- #352 Water Pulse
  (352, 26, NULL),
  -- #369 U-turn
  (369, 26, NULL),
  -- #370 Close Combat
  (370, 26, NULL),
  -- #377 Heal Block
  (377, 26, NULL),
  -- #390 Toxic Spikes
  (390, 26, NULL),
  -- #392 Aqua Ring
  (392, 26, NULL),
  -- #394 Flare Blitz
  (394, 26, NULL),
  -- #396 Aura Sphere
  (396, 26, NULL),
  -- #398 Poison Jab
  (398, 26, NULL),
  -- #399 Dark Pulse
  (399, 26, NULL),
  -- #400 Night Slash
  (400, 26, NULL),
  -- #402 Seed Bomb
  (402, 26, NULL),
  -- #403 Air Slash
  (403, 26, NULL),
  -- #404 X-Scissor
  (404, 26, NULL),
  -- #405 Bug Buzz
  (405, 26, NULL),
  -- #406 Dragon Pulse
  (406, 26, NULL),
  -- #407 Dragon Rush
  (407, 26, NULL),
  -- #408 Power Gem
  (408, 26, NULL),
  -- #409 Drain Punch
  (409, 26, NULL),
  -- #410 Vacuum Wave
  (410, 26, NULL),
  -- #411 Focus Blast
  (411, 26, NULL),
  -- #412 Energy Ball
  (412, 26, NULL),
  -- #413 Brave Bird
  (413, 26, NULL),
  -- #414 Earth Power
  (414, 26, NULL),
  -- #416 Giga Impact
  (416, 26, NULL),
  -- #417 Nasty Plot
  (417, 26, NULL),
  -- #418 Bullet Punch
  (418, 26, NULL),
  -- #420 Ice Shard
  (420, 26, NULL),
  -- #421 Shadow Claw
  (421, 26, NULL),
  -- #422 Thunder Fang
  (422, 26, NULL),
  -- #423 Ice Fang
  (423, 26, NULL),
  -- #424 Fire Fang
  (424, 26, NULL),
  -- #425 Shadow Sneak
  (425, 26, NULL),
  -- #427 Psycho Cut
  (427, 26, NULL),
  -- #428 Zen Headbutt
  (428, 26, NULL),
  -- #430 Flash Cannon
  (430, 26, NULL),
  -- #434 Draco Meteor
  (434, 26, NULL),
  -- #435 Discharge
  (435, 26, NULL),
  -- #436 Lava Plume
  (436, 26, NULL),
  -- #437 Leaf Storm
  (437, 26, NULL),
  -- #438 Power Whip
  (438, 26, NULL),
  -- #441 Gunk Shot
  (441, 26, NULL),
  -- #442 Iron Head
  (442, 26, NULL),
  -- #443 Magnet Bomb
  (443, 26, NULL),
  -- #444 Stone Edge
  (444, 26, NULL),
  -- #446 Stealth Rock
  (446, 26, NULL),
  -- #451 Charge Beam
  (451, 26, NULL),
  -- #452 Wood Hammer
  (452, 26, NULL),
  -- #453 Aqua Jet
  (453, 26, NULL),
  -- #457 Head Smash
  (457, 26, NULL),
  -- #458 Double Hit
  (458, 26, NULL),
  -- #463 Magma Storm
  (463, 26, NULL),
  -- #464 Dark Void
  (464, 26, NULL),
  -- #466 Ominous Wind
  (466, 26, NULL),
  -- #473 Psyshock
  (473, 26, NULL),
  -- #480 Storm Throw
  (480, 26, NULL),
  -- #482 Sludge Wave
  (482, 26, NULL),
  -- #484 Heavy Slam
  (484, 26, NULL),
  -- #488 Flame Charge
  (488, 26, NULL),
  -- #490 Low Sweep
  (490, 26, NULL),
  -- #491 Acid Spray
  (491, 26, NULL),
  -- #503 Scald
  (503, 26, NULL),
  -- #509 Circle Throw
  (509, 26, NULL),
  -- #521 Volt Switch
  (521, 26, NULL),
  -- #523 Bulldoze
  (523, 26, NULL),
  -- #524 Frost Breath
  (524, 26, NULL),
  -- #526 Work Up
  (526, 26, NULL),
  -- #527 Electroweb
  (527, 26, NULL),
  -- #528 Wild Charge
  (528, 26, NULL),
  -- #529 Drill Run
  (529, 26, NULL),
  -- #530 Dual Chop
  (530, 26, NULL),
  -- #532 Horn Leech
  (532, 26, NULL),
  -- #533 Sacred Sword
  (533, 26, NULL),
  -- #535 Heat Crash
  (535, 26, NULL),
  -- #538 Cotton Guard
  (538, 26, NULL),
  -- #540 Psystrike
  (540, 26, NULL),
  -- #542 Hurricane
  (542, 26, NULL),
  -- #546 Techno Blast
  (546, 26, NULL),
  -- #547 Relic Song
  (547, 26, NULL),
  -- #548 Secret Sword
  (548, 26, NULL),
  -- #555 Snarl
  (555, 26, NULL),
  -- #556 Icicle Crash
  (556, 26, NULL),
  -- #560 Flying Press
  (560, 26, NULL),
  -- #564 Sticky Web
  (564, 26, NULL),
  -- #566 Phantom Force
  (566, 26, NULL),
  -- #567 Trick-or-Treat
  (567, 26, NULL),
  -- #570 Parabolic Charge
  (570, 26, NULL),
  -- #571 Forest''s Curse
  (571, 26, NULL),
  -- #573 Freeze-Dry
  (573, 26, NULL),
  -- #574 Disarming Voice
  (574, 26, NULL),
  -- #575 Parting Shot
  (575, 26, NULL),
  -- #576 Topsy-Turvy
  (576, 26, NULL),
  -- #577 Draining Kiss
  (577, 26, NULL),
  -- #583 Play Rough
  (583, 26, NULL),
  -- #584 Fairy Wind
  (584, 26, NULL),
  -- #585 Moonblast
  (585, 26, NULL),
  -- #586 Boomburst
  (586, 26, NULL),
  -- #588 King''s Shield
  (588, 26, NULL),
  -- #591 Diamond Storm
  (591, 26, NULL),
  -- #592 Steam Eruption
  (592, 26, NULL),
  -- #593 Hyperspace Hole
  (593, 26, NULL),
  -- #594 Water Shuriken
  (594, 26, NULL),
  -- #595 Mystical Fire
  (595, 26, NULL),
  -- #596 Spiky Shield
  (596, 26, NULL),
  -- #598 Eerie Impulse
  (598, 26, NULL),
  -- #601 Geomancy
  (601, 26, NULL),
  -- #605 Dazzling Gleam
  (605, 26, NULL),
  -- #609 Nuzzle
  (609, 26, NULL),
  -- #611 Infestation
  (611, 26, NULL),
  -- #612 Power-Up Punch
  (612, 26, NULL),
  -- #613 Oblivion Wing
  (613, 26, NULL),
  -- #614 Thousand Arrows
  (614, 26, NULL),
  -- #615 Thousand Waves
  (615, 26, NULL),
  -- #616 Land''s Wrath
  (616, 26, NULL),
  -- #617 Light of Ruin
  (617, 26, NULL),
  -- #618 Origin Pulse
  (618, 26, NULL),
  -- #619 Precipice Blades
  (619, 26, NULL),
  -- #620 Dragon Ascent
  (620, 26, NULL),
  -- #621 Hyperspace Fury
  (621, 26, NULL),
  -- #659 Shore Up
  (659, 26, NULL),
  -- #660 First Impression
  (660, 26, NULL),
  -- #665 Ice Hammer
  (665, 26, NULL),
  -- #669 Solar Blade
  (669, 26, NULL),
  -- #670 Leafage
  (670, 26, NULL),
  -- #679 Lunge
  (679, 26, NULL),
  -- #687 Core Enforcer
  (687, 26, NULL),
  -- #693 Brutal Swing
  (693, 26, NULL),
  -- #705 Fleur Cannon
  (705, 26, NULL),
  -- #706 Psychic Fangs
  (706, 26, NULL),
  -- #708 Shadow Bone
  (708, 26, NULL),
  -- #710 Liquidation
  (710, 26, NULL),
  -- #712 Spectral Thief
  (712, 26, NULL),
  -- #721 Plasma Fists
  (721, 26, NULL),
  -- #742 Double Iron Bash
  (742, 26, NULL),
  -- #748 No Retreat
  (748, 26, NULL),
  -- #753 Octolock
  (753, 26, NULL),
  -- #783 Aura Wheel
  (783, 26, NULL),
  -- #784 Breaking Swipe
  (784, 26, NULL),
  -- #786 Overdrive
  (786, 26, NULL),
  -- #794 Meteor Assault
  (794, 26, NULL),
  -- #796 Steel Beam
  (796, 26, NULL),
  -- #799 Scale Shot
  (799, 26, NULL),
  -- #800 Meteor Beam
  (800, 26, NULL),
  -- #812 Flip Turn
  (812, 26, NULL),
  -- #813 Triple Axel
  (813, 26, NULL),
  -- #814 Dual Wingbeat
  (814, 26, NULL),
  -- #815 Scorching Sands
  (815, 26, NULL),
  -- #830 Stone Axe
  (830, 26, NULL),
  -- #839 Barb Barrage
  (839, 26, NULL),
  -- #854 Last Respects
  (854, 26, NULL),
  -- #856 Order Up
  (856, 26, NULL),
  -- #858 Spicy Extract
  (858, 26, NULL),
  -- #862 Glaive Rush
  (862, 26, NULL),
  -- #864 Salt Cure
  (864, 26, NULL),
  -- #866 Mortal Spin
  (866, 26, NULL),
  -- #874 Make It Rain
  (874, 26, NULL),
  -- #880 Shed Tail
  (880, 26, NULL),
  -- #885 Trailblaze
  (885, 26, NULL),
  -- #886 Chilling Water
  (886, 26, NULL),
  -- #889 Rage Fist
  (889, 26, NULL),
  -- #890 Armor Cannon
  (890, 26, NULL),
  -- #891 Bitter Blade
  (891, 26, NULL),
  -- #893 Gigaton Hammer
  (893, 26, NULL),
  -- #920 Nihil Light
  (920, 26, NULL);
