-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 2 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in gold
  (1, 100, 4, 'The seed on its back is filled with nutrients. The seed grows steadily larger as its body grows.'),
  -- ivysaur in gold
  (2, 200, 4, 'Exposure to sunlight adds to its strength. Sunlight also makes the bud on its back grow larger.'),
  -- venusaur in gold
  (3, 300, 4, 'By spreading the broad petals of its flower and catching the sun''s rays, it fills its body with power.'),
  -- charmander in gold
  (4, 400, 4, 'The flame on its tail shows the strength of its life force. If it is weak, the flame also burns weakly.'),
  -- charmeleon in gold
  (5, 500, 4, 'It is very hotheaded by nature, so it constantly seeks opponents. It calms down only when it wins.'),
  -- charizard in gold
  (6, 600, 4, 'If CHARIZARD becomes furious, the flame at the tip of its tail flares up in a whitish- blue color.'),
  -- squirtle in gold
  (7, 700, 4, 'The shell is soft when it is born. It soon becomes so resilient, prodding fingers will bounce off it.'),
  -- wartortle in gold
  (8, 800, 4, 'It is recognized as a symbol of longevity. If its shell has algae on it, that WARTORTLE is very old.'),
  -- blastoise in gold
  (9, 900, 4, 'It deliberately makes itself heavy so it can with stand the recoil of the water jets it fires.'),
  -- caterpie in gold
  (10, 1000, 4, 'For protection, it releases a horrible stench from the antenna on its head to drive away enemies.'),
  -- metapod in gold
  (11, 1100, 4, 'Inside the shell, it is soft and weak as it pre pares to evolve. It stays motionless in the shell.'),
  -- butterfree in gold
  (12, 1200, 4, 'It collects honey every day. It rubs honey onto the hairs on its legs to carry it back to its nest.'),
  -- weedle in gold
  (13, 1300, 4, 'Its poison stinger is very powerful. Its bright-colored body is intended to warn off its enemies.'),
  -- kakuna in gold
  (14, 1400, 4, 'Although it is a cocoon, it can move a little. It can extend its poison barb if it is attacked.'),
  -- beedrill in gold
  (15, 1500, 4, 'It can take down any opponent with its powerful poi son stingers. It sometimes attacks in swarms.'),
  -- pidgey in gold
  (16, 1600, 4, 'It usually hides in tall grass. Because it dislikes fighting, it protects itself by kicking up sand.'),
  -- pidgeotto in gold
  (17, 1700, 4, 'It has outstanding vision. However high it flies, it is able to distinguish the movements of its prey.'),
  -- pidgeot in gold
  (18, 1800, 4, 'Its well-developed chest muscles make it strong enough to whip up a gusty windstorm with just a few flaps.'),
  -- rattata in gold
  (19, 1900, 4, 'It eats anything. Wherever food is available, it will settle down and produce offspring continuously.'),
  -- raticate in gold
  (20, 2000, 4, 'Gnaws on anything with its tough fangs. It can even topple concrete buildings by gnawing on them.'),
  -- spearow in gold
  (21, 2100, 4, 'It flaps its short wings to flush out insects from tall grass. It then plucks them with its stubby beak.'),
  -- fearow in gold
  (22, 2200, 4, 'It shoots itself suddenly high into the sky, then plummets down in one fell swoop to strike its prey.'),
  -- ekans in gold
  (23, 2300, 4, 'It can freely detach its jaw to swallow large prey whole. It can become too heavy to move, however.'),
  -- arbok in gold
  (24, 2400, 4, 'Transfixing prey with the face-like pattern on its belly, it binds and poisons the frightened victim.'),
  -- pikachu in gold
  (25, 2500, 4, 'This intelligent POKéMON roasts hard BERRIES with electricity to make them tender enough to eat.'),
  -- raichu in gold
  (26, 2600, 4, 'When its electricity builds, its muscles are stimu lated, and it becomes more aggressive than usual.'),
  -- sandshrew in gold
  (27, 2700, 4, 'If it fell from a great height, this POKéMON could save itself by rolling into a ball and bouncing.'),
  -- sandslash in gold
  (28, 2800, 4, 'In an attempt to hide itself, it will run around at top speed to kick up a blinding dust storm.'),
  -- nidoran-f in gold
  (29, 2900, 4, 'The poison hidden in its small horn is extremely po tent. Even a tiny scratch can have fatal results.'),
  -- nidorina in gold
  (30, 3000, 4, 'When feeding its young, it first chews and tender izes the food, then spits it out for the offspring.'),
  -- nidoqueen in gold
  (31, 3100, 4, 'Its body is covered with needle- like scales. It never shows signs of shrinking from any attack.'),
  -- nidoran-m in gold
  (32, 3200, 4, 'It is small, but its horn is filled with poison. It charges then stabs with the horn to inject poison.'),
  -- nidorino in gold
  (33, 3300, 4, 'It raises its big ears to check its surroundings. If it senses anything, it attacks immediately.'),
  -- nidoking in gold
  (34, 3400, 4, 'It swings its big tail around during battle. If its foe flinches, it will charge with its sturdy body.'),
  -- clefairy in gold
  (35, 3500, 4, 'The moonlight that it stores in the wings on its back apparently gives it the ability to float in midair.'),
  -- clefable in gold
  (36, 3600, 4, 'With its acute hearing, it can pick up sounds from far away. It usually hides in quiet places.'),
  -- vulpix in gold
  (37, 3700, 4, 'As it develops, its single white tail gains color and splits into six. It is quite warm and cuddly.'),
  -- ninetales in gold
  (38, 3800, 4, 'Some legends claim that each of its nine tails has its own unique type of special mystical power.'),
  -- jigglypuff in gold
  (39, 3900, 4, 'If it inflates to SING a lullaby, it can perform longer and cause sure drowsiness in its audience.'),
  -- wigglytuff in gold
  (40, 4000, 4, 'Their fur feels so good that if two of them snuggle together, they won''t want to be separated.'),
  -- zubat in gold
  (41, 4100, 4, 'While flying, it constantly emits ultrasonic waves from its mouth to check its surroundings.'),
  -- golbat in gold
  (42, 4200, 4, 'However hard its victim''s hide may be, it punctures with sharp fangs and gorges itself with blood.'),
  -- oddish in gold
  (43, 4300, 4, 'Awakened by moonlight, it roams actively at night. In the day, it stays quietly underground.'),
  -- gloom in gold
  (44, 4400, 4, 'What appears to be drool is actually sweet honey. It is very sticky and clings stubbornly if touched.'),
  -- vileplume in gold
  (45, 4500, 4, 'It has the world''s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.'),
  -- paras in gold
  (46, 4600, 4, 'It is doused with mushroom spores when it is born. As its body grows, mushrooms sprout from its back.'),
  -- parasect in gold
  (47, 4700, 4, 'It stays mostly in dark, damp places, the preference not of the bug, but of the big mushrooms on its back.'),
  -- venonat in gold
  (48, 4800, 4, 'Its eyes also function as radar units. It catches and eats small bugs that hide in darkness.'),
  -- venomoth in gold
  (49, 4900, 4, 'When it attacks, it flaps its large wings violently to scatter its poisonous powder all around.'),
  -- diglett in gold
  (50, 5000, 4, 'Its skin is very thin. If it is exposed to light, its blood heats up, causing it to grow weak.'),
  -- dugtrio in gold
  (51, 5100, 4, 'Its three heads bob separately up and down to loosen the soil nearby, making it easier for it to burrow.'),
  -- meowth in gold
  (52, 5200, 4, 'It is fascinated by round objects. It can''t stop playing with them until it tires and falls asleep.'),
  -- persian in gold
  (53, 5300, 4, 'Many adore it for its sophisticated air. However, it will lash out and scratch for little reason.'),
  -- psyduck in gold
  (54, 5400, 4, 'It has mystical powers but doesn''t recall that it has used them. That is why it always looks puzzled.'),
  -- golduck in gold
  (55, 5500, 4, 'When it swims at full speed using its long, webbed limbs, its forehead somehow begins to glow.'),
  -- mankey in gold
  (56, 5600, 4, 'It is extremely ill-tempered. Groups of them will attack any handy target for no reason.'),
  -- primeape in gold
  (57, 5700, 4, 'If approached while asleep, it may awaken and angrily give chase in a groggy state of semi-sleep.'),
  -- growlithe in gold
  (58, 5800, 4, 'It has a brave and trustworthy nature. It fear lessly stands up to bigger and stronger foes.'),
  -- arcanine in gold
  (59, 5900, 4, 'This legendary Chinese POKEMON is considered magnif icent. Many people are enchanted by its grand mane.'),
  -- poliwag in gold
  (60, 6000, 4, 'Because it is inept at walking on its newly grown legs, it always swims around in water.'),
  -- poliwhirl in gold
  (61, 6100, 4, 'The swirl on its belly subtly undulates. Staring at it may gradually cause drowsiness.'),
  -- poliwrath in gold
  (62, 6200, 4, 'This strong and skilled swimmer is even capable of crossing the Pacific Ocean just by kicking.'),
  -- abra in gold
  (63, 6300, 4, 'It senses impending attacks and TELEPORTS away to safety before the actual attacks can strike.'),
  -- kadabra in gold
  (64, 6400, 4, 'It possesses strong spiritual power. The more danger it faces, the stronger its psychic power.'),
  -- alakazam in gold
  (65, 6500, 4, 'Closing both its eyes heightens all its other senses. This enables it to use its abilities to their extremes.'),
  -- machop in gold
  (66, 6600, 4, 'Always brimming with power, it passes time by lifting boulders. Doing so makes it even stronger.'),
  -- machoke in gold
  (67, 6700, 4, 'It always goes at its full power, but this very tough and durable POKéMON never gets tired.'),
  -- machamp in gold
  (68, 6800, 4, 'It quickly swings its four arms to rock its opponents with ceaseless punches and chops from all angles.'),
  -- bellsprout in gold
  (69, 6900, 4, 'Even though its body is extremely skinny, it is blindingly fast when catching its prey.'),
  -- weepinbell in gold
  (70, 7000, 4, 'Even though it is filled with ACID, it does not melt because it also oozes a neutralizing fluid.'),
  -- victreebel in gold
  (71, 7100, 4, 'ACID that has dissolved many prey becomes sweeter, making it even more effective at attracting prey.'),
  -- tentacool in gold
  (72, 7200, 4, 'When the tide goes out, dehydrated TENTACOOL remains can be found washed up on the shore.'),
  -- tentacruel in gold
  (73, 7300, 4, 'Its 80 tentacles absorb water and stretch almost endlessly to CONSTRICT its prey and enemies.'),
  -- geodude in gold
  (74, 7400, 4, 'Most people may not notice, but a closer look should reveal that there are many GEODUDE around.'),
  -- graveler in gold
  (75, 7500, 4, 'With a free and uncaring nature, it doesn''t mind if pieces break off while it rolls down mountains.'),
  -- golem in gold
  (76, 7600, 4, 'It sheds its skin once a year. The discarded shell immediately hardens and crumbles away.'),
  -- ponyta in gold
  (77, 7700, 4, 'It is a weak runner immediately after birth. It gradually becomes faster by chasing after its parents.'),
  -- rapidash in gold
  (78, 7800, 4, 'At full gallop, its four hooves barely touch the ground because it moves so incredibly fast.'),
  -- slowpoke in gold
  (79, 7900, 4, 'It lazes vacantly near water. If something bites its tail, it won''t even notice for a whole day.'),
  -- slowbro in gold
  (80, 8000, 4, 'If the tail-biting SHELLDER is thrown off in a harsh battle, it reverts to being an ordinary SLOWPOKE.'),
  -- magnemite in gold
  (81, 8100, 4, 'It is attracted by electromagnetic waves. It may approach trainers if they are using their POKéGEAR.'),
  -- magneton in gold
  (82, 8200, 4, 'Three MAGNEMITE are linked by a strong magnetic force. Earaches will occur if you get too close.'),
  -- farfetchd in gold
  (83, 8300, 4, 'If anyone tries to disturb where the essential plant sticks grow, it uses its own stick to thwart them.'),
  -- doduo in gold
  (84, 8400, 4, 'By alternately raising and lowering its two heads, it balances itself to be more stable while running.'),
  -- dodrio in gold
  (85, 8500, 4, 'It collects data and plans three times as wisely, but it may think too much and become immobilized.'),
  -- seel in gold
  (86, 8600, 4, 'Although it can''t walk well on land, it is a graceful swimmer. It especially loves being in frigid seas.'),
  -- dewgong in gold
  (87, 8700, 4, 'Its streamlined body has little drag in water. The colder the temperature, the friskier it gets.'),
  -- grimer in gold
  (88, 8800, 4, 'As it moves, it loses bits of its body from which new GRIMER emerge. This worsens the stench around it.'),
  -- muk in gold
  (89, 8900, 4, 'They love to gather in smelly areas where sludge ac cumulates, making the stench around them worse.'),
  -- shellder in gold
  (90, 9000, 4, 'It swims facing backward by opening and closing its two-piece shell. It is surprisingly fast.'),
  -- cloyster in gold
  (91, 9100, 4, 'Once it slams its shell shut, it is impossible to open, even by those with superior strength.'),
  -- gastly in gold
  (92, 9200, 4, 'With its gas-like body, it can sneak into any place it desires. However, it can be blown away by wind.'),
  -- haunter in gold
  (93, 9300, 4, 'In total darkness, where nothing is visible, HAUNTER lurks, silently stalking its next victim.'),
  -- gengar in gold
  (94, 9400, 4, 'It steals heat from its surroundings. If you feel a sudden chill, it is certain that a GENGAR appeared.'),
  -- onix in gold
  (95, 9500, 4, 'It twists and squirms through the ground. The thunderous roar of its tunneling echoes a long way.'),
  -- drowzee in gold
  (96, 9600, 4, 'If you think that you had a good dream, but you can''t remember it, a DROWZEE has probably eaten it.'),
  -- hypno in gold
  (97, 9700, 4, 'When it is very hungry, it puts humans it meets to sleep, then it feasts on their dreams.'),
  -- krabby in gold
  (98, 9800, 4, 'If it senses danger approaching, it cloaks itself with bubbles from its mouth so it will look bigger.'),
  -- kingler in gold
  (99, 9900, 4, 'It can hardly lift its massive, overgrown pincer. The pincer''s size makes it difficult to aim properly.'),
  -- voltorb in gold
  (100, 10000, 4, 'It rolls to move. If the ground is uneven, a sudden jolt from hitting a bump can cause it to explode.'),
  -- electrode in gold
  (101, 10100, 4, 'It is dangerous. If it has too much electricity and has nothing to do, it amuses itself by exploding.'),
  -- exeggcute in gold
  (102, 10200, 4, 'The shell is very durable. Even if it cracks, it can survive without spilling the contents.'),
  -- exeggutor in gold
  (103, 10300, 4, 'Its three heads think independently. However, they are friendly and never appear to squabble.'),
  -- cubone in gold
  (104, 10400, 4, 'If it is sad or lonely, the skull it wears shakes, and emits a plaintive and mournful sound.'),
  -- marowak in gold
  (105, 10500, 4, 'It has been seen pounding boulders with the bone it carries in order to tap out messages to others.'),
  -- hitmonlee in gold
  (106, 10600, 4, 'This amazing POKéMON has an awesome sense of balance. It can kick in succession from any position.'),
  -- hitmonchan in gold
  (107, 10700, 4, 'Its punches slice the air. However, it seems to need a short break after fighting for three minutes.'),
  -- lickitung in gold
  (108, 10800, 4, 'Its tongue has well-developed nerves that run to the very tip, so it can be deftly manipulated.'),
  -- koffing in gold
  (109, 10900, 4, 'Its thin, filmy body is filled with gases that cause constant sniffles, coughs and teary eyes.'),
  -- weezing in gold
  (110, 11000, 4, 'If one of the twin KOFFING inflates, the other one deflates. It constantly mixes its poisonous gases.'),
  -- rhyhorn in gold
  (111, 11100, 4, 'It is inept at turning because of its four short legs. It can only charge and run in one direction.'),
  -- rhydon in gold
  (112, 11200, 4, 'Its rugged hide protects it from even the heat of lava. However, the hide also makes it insensitive.'),
  -- chansey in gold
  (113, 11300, 4, 'It walks carefully to prevent its egg from breaking. However, it is extremely fast at running away.'),
  -- tangela in gold
  (114, 11400, 4, 'The vines that cloak its entire body are always jiggling. They effectively unnerve its foes.'),
  -- kangaskhan in gold
  (115, 11500, 4, 'If it is safe, the young gets out of the belly pouch to play. The adult keeps a close eye on the youngster.'),
  -- horsea in gold
  (116, 11600, 4, 'If attacked by a larger enemy, it quickly swims to safety by adeptly controlling its dorsal fin.'),
  -- seadra in gold
  (117, 11700, 4, 'An examination of its cells revealed the presence of a gene not found in HORSEA. It became a hot topic.'),
  -- goldeen in gold
  (118, 11800, 4, 'Its dorsal, pectoral and tail fins wave elegantly in water. That is why it is known as the water dancer.'),
  -- seaking in gold
  (119, 11900, 4, 'During spawning season, SEAKING gather from all over, coloring the rivers a brilliant red.'),
  -- staryu in gold
  (120, 12000, 4, 'At night, the center of its body slowly flickers with the same rhythm as a human heartbeat.'),
  -- starmie in gold
  (121, 12100, 4, 'The center section of its body is called the core. It glows in a different color each time it is seen.'),
  -- mr-mime in gold
  (122, 12200, 4, 'A skilled mime from birth, it gains the ability to create invisible objects as it matures.'),
  -- scyther in gold
  (123, 12300, 4, 'It slashes through grass with its sharp scythes, moving too fast for the human eye to track.'),
  -- jynx in gold
  (124, 12400, 4, 'It rocks its body rhythmically. It appears to alter the rhythm depending on how it is feeling.'),
  -- electabuzz in gold
  (125, 12500, 4, 'Electricity runs across the surface of its body. In darkness, its entire body glows a whitish-blue.'),
  -- magmar in gold
  (126, 12600, 4, 'It dislikes cold places, so it blows scorching flames to make the environment suitable for itself.'),
  -- pinsir in gold
  (127, 12700, 4, 'With its horns, it digs burrows to sleep in at night. In the morning, damp soil clings to its body.'),
  -- tauros in gold
  (128, 12800, 4, 'They fight each other by locking horns. The herd''s protector takes pride in its battle-scarred horns.'),
  -- magikarp in gold
  (129, 12900, 4, 'An underpowered, pathetic POKéMON. It may jump high on rare occasions, but never more than seven feet.'),
  -- gyarados in gold
  (130, 13000, 4, 'They say that during past wars, GYARADOS would appear and leave blazing ruins in its wake.'),
  -- lapras in gold
  (131, 13100, 4, 'They have gentle hearts. Because they rarely fight, many have been caught. Their number has dwindled.'),
  -- ditto in gold
  (132, 13200, 4, 'It can transform into anything. When it sleeps, it changes into a stone to avoid being attacked.'),
  -- eevee in gold
  (133, 13300, 4, 'It has the ability to alter the composition of its body to suit its surrounding environment.'),
  -- vaporeon in gold
  (134, 13400, 4, 'When VAPOREON''s fins begin to vibrate, it is a sign that rain will come within a few hours.'),
  -- jolteon in gold
  (135, 13500, 4, 'It concentrates the weak electric charges emitted by its cells and launches wicked lightning bolts.'),
  -- flareon in gold
  (136, 13600, 4, 'It stores some of the air it inhales in its internal flame pouch, which heats it to over 3,000 degrees.'),
  -- porygon in gold
  (137, 13700, 4, 'It is a manmade POKéMON. Since it doesn''t breathe, people are eager to try it in any environment.'),
  -- omanyte in gold
  (138, 13800, 4, 'Revived from an ancient fossil, this POKéMON uses air stored in its shell to sink and rise in water.'),
  -- omastar in gold
  (139, 13900, 4, 'Apparently, it cracked SHELLDER''s shell with its sharp fangs and sucked out the insides.'),
  -- kabuto in gold
  (140, 14000, 4, 'On rare occasions, some have been found as fossils which they became while hiding on the ocean floor.'),
  -- kabutops in gold
  (141, 14100, 4, 'In the water, it tucks in its limbs to become more compact, then it wiggles its shell to swim fast.'),
  -- aerodactyl in gold
  (142, 14200, 4, 'A vicious POKéMON from the distant past, it appears to have flown by spreading its wings and gliding.'),
  -- snorlax in gold
  (143, 14300, 4, 'What sounds like its cry may actually be its snores or the rumblings of its hungry belly.'),
  -- articuno in gold
  (144, 14400, 4, 'The magnificent, seemingly translucent wings of this legendary bird POKéMON are said to be made of ice.'),
  -- zapdos in gold
  (145, 14500, 4, 'This legendary bird POKéMON causes savage thunderstorms by flapping its glittering wings.'),
  -- moltres in gold
  (146, 14600, 4, 'This legendary POKéMON scatters embers with every flap of its wings. It is a thrilling sight to behold.'),
  -- dratini in gold
  (147, 14700, 4, 'It is born large to start with. It repeatedly sheds its skin as it steadily grows longer.'),
  -- dragonair in gold
  (148, 14800, 4, 'They say that if it emits an aura from its whole body, the weather will begin to change instantly.'),
  -- dragonite in gold
  (149, 14900, 4, 'It is said that this POKéMON constantly flies over the immense seas and rescues drowning people.'),
  -- mewtwo in gold
  (150, 15000, 4, 'Because its battle abilities were raised to the ultimate level, it thinks only of defeating its foes.'),
  -- mew in gold
  (151, 15100, 4, 'Apparently, it appears only to those people who are pure of heart and have a strong desire to see it.'),
  -- chikorita in gold
  (152, 15200, 4, 'A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up the sun''s rays.'),
  -- bayleef in gold
  (153, 15300, 4, 'The scent of spices comes from around its neck. Somehow, sniffing it makes you want to fight.'),
  -- meganium in gold
  (154, 15400, 4, 'The aroma that rises from its petals contains a substance that calms aggressive feelings.'),
  -- cyndaquil in gold
  (155, 15500, 4, 'It is timid, and always curls itself up in a ball. If attacked, it flares up its back for protection.'),
  -- quilava in gold
  (156, 15600, 4, 'Be careful if it turns its back during battle. It means that it will attack with the fire on its back.'),
  -- typhlosion in gold
  (157, 15700, 4, 'If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.'),
  -- totodile in gold
  (158, 15800, 4, 'Its well-developed jaws are powerful and capable of crushing anything. Even its trainer must be careful.'),
  -- croconaw in gold
  (159, 15900, 4, 'If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth.'),
  -- feraligatr in gold
  (160, 16000, 4, 'When it bites with its massive and powerful jaws, it shakes its head and savagely tears its victim up.'),
  -- sentret in gold
  (161, 16100, 4, 'A very cautious POKéMON, it raises itself up using its tail to get a better view of its surroundings.'),
  -- furret in gold
  (162, 16200, 4, 'It makes a nest to suit its long and skinny body. The nest is impossible for other POKéMON to enter.'),
  -- hoothoot in gold
  (163, 16300, 4, 'It always stands on one foot. It changes feet so fast, the movement can rarely be seen.'),
  -- noctowl in gold
  (164, 16400, 4, 'Its eyes are specially adapted. They concentrate even faint light and enable it to see in the dark.'),
  -- ledyba in gold
  (165, 16500, 4, 'It is very timid. It will be afraid to move if it is alone. But it will be active if it is in a group.'),
  -- ledian in gold
  (166, 16600, 4, 'When the stars flicker in the night sky, it flutters about, scattering a glowing powder.'),
  -- spinarak in gold
  (167, 16700, 4, 'It lies still in the same pose for days in its web, waiting for its unsuspecting prey to wander close.'),
  -- ariados in gold
  (168, 16800, 4, 'It spins string not only from its rear but also from its mouth. It is hard to tell which end is which.'),
  -- crobat in gold
  (169, 16900, 4, 'It flies so silently through the dark on its four wings that it may not be noticed even when nearby.'),
  -- chinchou in gold
  (170, 17000, 4, 'It shoots positive and negative electricity between the tips of its two antennae and zaps its enemies.'),
  -- lanturn in gold
  (171, 17100, 4, 'The light it emits is so bright that it can illuminate the sea''s surface from a depth of over three miles.'),
  -- pichu in gold
  (172, 17200, 4, 'It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.'),
  -- cleffa in gold
  (173, 17300, 4, 'Because of its unusual, star-like silhouette, people believe that it came here on a meteor.'),
  -- igglybuff in gold
  (174, 17400, 4, 'It has a very soft body. If it starts to roll, it will bounce all over and be impossible to stop.'),
  -- togepi in gold
  (175, 17500, 4, 'The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.'),
  -- togetic in gold
  (176, 17600, 4, 'They say that it will appear before kindhearted, car ing people and shower them with happiness.'),
  -- natu in gold
  (177, 17700, 4, 'Because its wings aren''t yet fully grown, it has to hop to get around. It is always staring at something.'),
  -- xatu in gold
  (178, 17800, 4, 'They say that it stays still and quiet because it is seeing both the past and future at the same time.'),
  -- mareep in gold
  (179, 17900, 4, 'If static electricity builds in its body, its fleece doubles in volume. Touching it will shock you.'),
  -- flaaffy in gold
  (180, 18000, 4, 'As a result of storing too much electricity, it developed patches where even downy wool won''t grow.'),
  -- ampharos in gold
  (181, 18100, 4, 'The tail''s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.'),
  -- bellossom in gold
  (182, 18200, 4, 'BELLOSSOM gather at times and appear to dance. They say that the dance is a ritual to summon the sun.'),
  -- marill in gold
  (183, 18300, 4, 'The tip of its tail, which contains oil that is lighter than water, lets it swim without drowning.'),
  -- azumarill in gold
  (184, 18400, 4, 'By keeping still and listening intently, it can tell what is in even wild, fast- moving rivers.'),
  -- sudowoodo in gold
  (185, 18500, 4, 'Although it always pretends to be a tree, its composi tion appears to be closer to a rock than a plant.'),
  -- politoed in gold
  (186, 18600, 4, 'If POLIWAG and POLIWHIRL hear its echoing cry, they respond by gathering from far and wide.'),
  -- hoppip in gold
  (187, 18700, 4, 'To keep from being blown away by the wind, they gather in clusters. They do enjoy gentle breezes, though.'),
  -- skiploom in gold
  (188, 18800, 4, 'The bloom on top of its head opens and closes as the temperature fluctuates up and down.'),
  -- jumpluff in gold
  (189, 18900, 4, 'Once it catches the wind, it deftly controls its cotton-puff spores to float, even around the world.'),
  -- aipom in gold
  (190, 19000, 4, 'Its tail is so powerful that it can use it to grab a tree branch and hold itself up in the air.'),
  -- sunkern in gold
  (191, 19100, 4, 'It may drop out of the sky suddenly. If attacked by a SPEAROW, it will violently shake its leaves.'),
  -- sunflora in gold
  (192, 19200, 4, 'It converts sunlight into energy. In the darkness after sunset, it closes its petals and becomes still.'),
  -- yanma in gold
  (193, 19300, 4, 'If it flaps its wings really fast, it can generate shock waves that will shatter windows in the area.'),
  -- wooper in gold
  (194, 19400, 4, 'This POKéMON lives in cold water. It will leave the water to search for food when it gets cold outside.'),
  -- quagsire in gold
  (195, 19500, 4, 'This carefree POKéMON has an easy-going nature. While swimming, it always bumps into boat hulls.'),
  -- espeon in gold
  (196, 19600, 4, 'It uses the fine hair that covers its body to sense air currents and predict its enemy''s actions.'),
  -- umbreon in gold
  (197, 19700, 4, 'When agitated, this POKéMON protects itself by spraying poisonous sweat from its pores.'),
  -- murkrow in gold
  (198, 19800, 4, 'Feared and loathed by many, it is believed to bring misfortune to all those who see it at night.'),
  -- slowking in gold
  (199, 19900, 4, 'It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.'),
  -- misdreavus in gold
  (200, 20000, 4, 'It likes playing mischievous tricks such as screaming and wailing to startle people at night.'),
  -- unown in gold
  (201, 20100, 4, 'Their shapes look like hieroglyphs on ancient tab lets. It is said that the two are somehow related.'),
  -- wobbuffet in gold
  (202, 20200, 4, 'It hates light and shock. If attacked, it inflates its body to pump up its counterstrike.'),
  -- girafarig in gold
  (203, 20300, 4, 'Its tail has a small brain of its own. Beware! If you get close, it may react to your scent and bite.'),
  -- pineco in gold
  (204, 20400, 4, 'It likes to make its shell thicker by adding layers of tree bark. The additional weight doesn''t bother it.'),
  -- forretress in gold
  (205, 20500, 4, 'Its entire body is shielded by a steel-hard shell. What lurks inside the armor is a total mystery.'),
  -- dunsparce in gold
  (206, 20600, 4, 'When spotted, this POKéMON escapes backward by furi ously boring into the ground with its tail.'),
  -- gligar in gold
  (207, 20700, 4, 'It flies straight at its target''s face then clamps down on the startled victim to inject poison.'),
  -- steelix in gold
  (208, 20800, 4, 'Its body has been compressed deep under the ground. As a result, it is even harder than a diamond.'),
  -- snubbull in gold
  (209, 20900, 4, 'Although it looks frightening, it is actually kind and affectionate. It is very popular among women.'),
  -- granbull in gold
  (210, 21000, 4, 'It is actually timid and easily spooked. If at tacked, it flails about to fend off its attacker.'),
  -- qwilfish in gold
  (211, 21100, 4, 'To fire its poison spikes, it must inflate its body by drinking over 2.6 gallons of water all at once.'),
  -- scizor in gold
  (212, 21200, 4, 'It swings its eye- patterned pincers up to scare its foes. This makes it look like it has three heads.'),
  -- shuckle in gold
  (213, 21300, 4, 'The BERRIES it stores in its vase-like shell decompose and become a gooey liquid.'),
  -- heracross in gold
  (214, 21400, 4, 'This powerful POKéMON thrusts its prized horn under its enemies’ bellies then lifts and throws them.'),
  -- sneasel in gold
  (215, 21500, 4, 'Its paws conceal sharp claws. If attacked, it sud denly extends the claws and startles its enemy.'),
  -- teddiursa in gold
  (216, 21600, 4, 'If it finds honey, its crescent mark glows. It always licks its paws because they are soaked with honey.'),
  -- ursaring in gold
  (217, 21700, 4, 'Although it is a good climber, it prefers to snap trees with its forelegs and eat fallen BERRIES.'),
  -- slugma in gold
  (218, 21800, 4, 'It never sleeps. It has to keep moving because if it stopped, its magma body would cool and harden.'),
  -- magcargo in gold
  (219, 21900, 4, 'The shell on its back is just skin that has cooled and hardened. It breaks easily with a slight touch.'),
  -- swinub in gold
  (220, 22000, 4, 'It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.'),
  -- piloswine in gold
  (221, 22100, 4, 'Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.'),
  -- corsola in gold
  (222, 22200, 4, 'It continuously sheds and grows. The tip of its head is prized as a treasure for its beauty.'),
  -- remoraid in gold
  (223, 22300, 4, 'It has superb accuracy. The water it shoots out can strike even moving prey from more than 300 feet.'),
  -- octillery in gold
  (224, 22400, 4, 'It traps enemies with its suction- cupped tentacles then smashes them with its rock-hard head.'),
  -- delibird in gold
  (225, 22500, 4, 'It carries food all day long. There are tales about lost people who were saved by the food it had.'),
  -- mantine in gold
  (226, 22600, 4, 'As it majestically swims, it doesn''t care if REMORAID attach to it for scavenging its leftovers.'),
  -- skarmory in gold
  (227, 22700, 4, 'Its sturdy wings look heavy, but they are actually hollow and light, allowing it to fly freely in the sky.'),
  -- houndour in gold
  (228, 22800, 4, 'It uses different kinds of cries for communicating with others of its kind and for pursuing its prey.'),
  -- houndoom in gold
  (229, 22900, 4, 'If you are burned by the flames it shoots from its mouth, the pain will never go away.'),
  -- kingdra in gold
  (230, 23000, 4, 'It is said that it usually hides in underwater caves. It can create whirlpools by yawning.'),
  -- phanpy in gold
  (231, 23100, 4, 'It swings its long snout around playfully, but because it is so strong, that can be dangerous.'),
  -- donphan in gold
  (232, 23200, 4, 'It has sharp, hard tusks and a rugged hide. Its TACKLE is strong enough to knock down a house.'),
  -- porygon2 in gold
  (233, 23300, 4, 'This upgraded version of PORYGON is designed for space exploration. It can''t fly, though.'),
  -- stantler in gold
  (234, 23400, 4, 'The curved antlers subtly change the flow of air to create a strange space where reality is distorted.'),
  -- smeargle in gold
  (235, 23500, 4, 'A special fluid oozes from the tip of its tail. It paints the fluid everywhere to mark its territory.'),
  -- tyrogue in gold
  (236, 23600, 4, 'It is always bursting with energy. To make it self stronger, it keeps on fighting even if it loses.'),
  -- hitmontop in gold
  (237, 23700, 4, 'If you become enchanted by its smooth, elegant, dance-like kicks, you may get drilled hard.'),
  -- smoochum in gold
  (238, 23800, 4, 'Its lips are the most sensitive parts on its body. It always uses its lips first to examine things.'),
  -- elekid in gold
  (239, 23900, 4, 'It rotates its arms to generate electricity, but it tires easily, so it charges up only a little bit.'),
  -- magby in gold
  (240, 24000, 4, 'Each and every time it inhales and exhales, hot embers dribble out of its mouth and nostrils.'),
  -- miltank in gold
  (241, 24100, 4, 'Its milk is packed with nutrition, making it the ultimate beverage for the sick or weary.'),
  -- blissey in gold
  (242, 24200, 4, 'Anyone who takes even one bite of BLISSEY''s egg be comes unfailingly caring and pleasant to everyone.'),
  -- raikou in gold
  (243, 24300, 4, 'The rain clouds it carries let it fire thunderbolts at will. They say that it descended with lightning.'),
  -- entei in gold
  (244, 24400, 4, 'Volcanoes erupt when it barks. Unable to restrain its extreme power, it races headlong around the land.'),
  -- suicune in gold
  (245, 24500, 4, 'Said to be the reincarnation of north winds, it can instantly purify filthy, murky water.'),
  -- larvitar in gold
  (246, 24600, 4, 'It feeds on soil. After it has eaten a large mountain, it will fall asleep so it can grow.'),
  -- pupitar in gold
  (247, 24700, 4, 'Its shell is as hard as sheet rock, and it is also very strong. Its THRASHING can topple a mountain.'),
  -- tyranitar in gold
  (248, 24800, 4, 'Its body can''t be harmed by any sort of attack, so it is very eager to make challenges against enemies.'),
  -- lugia in gold
  (249, 24900, 4, 'It is said that it quietly spends its time deep at the bottom of the sea because its powers are too strong.'),
  -- ho-oh in gold
  (250, 25000, 4, 'Legends claim this POKéMON flies the world''s skies con tinuously on its magnificent seven- colored wings.'),
  -- celebi in gold
  (251, 25100, 4, 'This POKéMON wanders across time. Grass and trees flourish in the forests in which it has appeared.'),
  -- bulbasaur in silver
  (1, 100, 5, 'It carries a seed on its back right from birth. As it grows older, the seed also grows larger.'),
  -- ivysaur in silver
  (2, 200, 5, 'If the bud on its back starts to smell sweet, it is evidence that the large flower will soon bloom.'),
  -- venusaur in silver
  (3, 300, 5, 'It is able to convert sunlight into energy. As a result, it is more powerful in the summertime.'),
  -- charmander in silver
  (4, 400, 5, 'The flame on its tail indicates CHARMANDER''s life force. If it is healthy, the flame burns brightly.'),
  -- charmeleon in silver
  (5, 500, 5, 'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.'),
  -- charizard in silver
  (6, 600, 5, 'Breathing intense, hot flames, it can melt almost any thing. Its breath inflicts terrible pain on enemies.'),
  -- squirtle in silver
  (7, 700, 5, 'The shell, which hardens soon after it is born, is resilient. If you poke it, it will bounce back out.'),
  -- wartortle in silver
  (8, 800, 5, 'It cleverly controls its furry ears and tail to maintain its balance while swimming.'),
  -- blastoise in silver
  (9, 900, 5, 'The rocket cannons on its shell fire jets of water capable of punching holes through thick steel.'),
  -- caterpie in silver
  (10, 1000, 5, 'Its feet have suction cups designed to stick to any surface. It tenaciously climbs trees to forage.'),
  -- metapod in silver
  (11, 1100, 5, 'It prepares for evolution by hardening its shell as much as possible to protect its soft body.'),
  -- butterfree in silver
  (12, 1200, 5, 'Water-repellent powder on its wings enables it to collect honey, even in the heaviest of rains.'),
  -- weedle in silver
  (13, 1300, 5, 'It attacks using a two-inch poison barb on its head. It can usually be found under the leaves it eats.'),
  -- kakuna in silver
  (14, 1400, 5, 'From this form, it will grow into an adult. As its body becomes softer, the external shell hardens.'),
  -- beedrill in silver
  (15, 1500, 5, 'It has three poison barbs. The barb on its tail secretes the most powerful poison.'),
  -- pidgey in silver
  (16, 1600, 5, 'Common in grassy areas and forests, it is very docile and will chase off enemies by flapping up sand.'),
  -- pidgeotto in silver
  (17, 1700, 5, 'It immobilizes its prey using well- developed claws, then carries the prey more than 60 miles to its nest.'),
  -- pidgeot in silver
  (18, 1800, 5, 'It spreads its beautiful wings wide to frighten its enemies. It can fly at Mach 2 speed.'),
  -- rattata in silver
  (19, 1900, 5, 'Living wherever there is food available, it ceaselessly scavenges for edibles the entire day.'),
  -- raticate in silver
  (20, 2000, 5, 'Its whiskers help it to maintain balance. Its fangs never stop growing, so it gnaws to pare them down.'),
  -- spearow in silver
  (21, 2100, 5, 'Very protective of its territory, it flaps its short wings busily to dart around at high speed.'),
  -- fearow in silver
  (22, 2200, 5, 'It cleverly uses its thin, long beak to pluck and eat small insects that hide under the ground.'),
  -- ekans in silver
  (23, 2300, 5, 'It always hides in grass. When first born, it has no poison, so its bite is painful, but harmless.'),
  -- arbok in silver
  (24, 2400, 5, 'With a very vengeful nature, it won''t give up the chase, no matter how far, once it targets its prey.'),
  -- pikachu in silver
  (25, 2500, 5, 'It raises its tail to check its surroundings. The tail is sometimes struck by lightning in this pose.'),
  -- raichu in silver
  (26, 2600, 5, 'If the electric pouches in its cheeks become fully charged, both ears will stand straight up.'),
  -- sandshrew in silver
  (27, 2700, 5, 'Disliking water, it lives in deep burrows in arid areas. It can roll itself instantly into a ball.'),
  -- sandslash in silver
  (28, 2800, 5, 'If it digs at an incredible pace, it may snap off its spikes and claws. They grow back in a day.'),
  -- nidoran-f in silver
  (29, 2900, 5, 'Although not very combative, it will torment its foes with poison spikes if it is threatened in any way.'),
  -- nidorina in silver
  (30, 3000, 5, 'It has a calm and caring nature. Because its horn grows slowly, it prefers not to fight.'),
  -- nidoqueen in silver
  (31, 3100, 5, 'It uses its scaly, rugged body to seal the entrance of its nest and protect its young from predators.'),
  -- nidoran-m in silver
  (32, 3200, 5, 'It raises its big ears to check its surroundings. It will strike first if it senses any danger.'),
  -- nidorino in silver
  (33, 3300, 5, 'Quick to anger, it stabs enemies with its horn to inject a powerful poison when it becomes agitated.'),
  -- nidoking in silver
  (34, 3400, 5, 'Its tail is thick and powerful. If it binds an enemy, it can snap the victim''s spine quite easily.'),
  -- clefairy in silver
  (35, 3500, 5, 'Its adorable behavior and cry make it highly popular. However, this cute POKéMON is rarely found.'),
  -- clefable in silver
  (36, 3600, 5, 'Its very sensitive ears lets it distinguish distant sounds. As a result, it prefers quiet places.'),
  -- vulpix in silver
  (37, 3700, 5, 'If it is attacked by an enemy that is stronger than itself, it feigns injury to fool the enemy and escapes.'),
  -- ninetales in silver
  (38, 3800, 5, 'Its nine beautiful tails are filled with a wondrous energy that could keep it alive for 1,000 years.'),
  -- jigglypuff in silver
  (39, 3900, 5, 'Looking into its cute, round eyes causes it to sing a relaxing melody, inducing its enemies to sleep.'),
  -- wigglytuff in silver
  (40, 4000, 5, 'It has a very fine fur. Take care not to make it angry, or it may inflate steadily and hit with a BODY SLAM.'),
  -- zubat in silver
  (41, 4100, 5, 'Capable of flying safely in dark places, it emits ultrasonic cries to check for any obstacles.'),
  -- golbat in silver
  (42, 4200, 5, 'It can drink more than 10 ounces of blood at once. If it has too much, it gets heavy and flies clumsily.'),
  -- oddish in silver
  (43, 4300, 5, 'If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.'),
  -- gloom in silver
  (44, 4400, 5, 'It secretes a sticky, drool-like honey. Although sweet, it smells too repulsive to get very close.'),
  -- vileplume in silver
  (45, 4500, 5, 'The bud bursts into bloom with a bang. It then starts scattering allergenic, poisonous pollen.'),
  -- paras in silver
  (46, 4600, 5, 'As its body grows large, oriental mushrooms named tochukaso start sprouting out of its back.'),
  -- parasect in silver
  (47, 4700, 5, 'The larger the mushroom on its back grows, the stronger the mushroom spores it scatters.'),
  -- venonat in silver
  (48, 4800, 5, 'Poison oozes from all over its body. It catches and eats small bugs at night that are attracted by light.'),
  -- venomoth in silver
  (49, 4900, 5, 'The powder on its wings is poisonous if it is dark in color. If it is light, it causes paralysis.'),
  -- diglett in silver
  (50, 5000, 5, 'If a DIGLETT DIGS through a field, it leaves the soil perfectly tilled and ideal for planting crops.'),
  -- dugtrio in silver
  (51, 5100, 5, 'Extremely powerful, they can DIG through even the hardest ground to a depth of over 60 miles.'),
  -- meowth in silver
  (52, 5200, 5, 'It loves anything that shines. It especially adores coins that it picks up and secretly hoards.'),
  -- persian in silver
  (53, 5300, 5, 'Its lithe muscles allow it to walk without making a sound. It attacks in an instant.'),
  -- psyduck in silver
  (54, 5400, 5, 'If its chronic headache peaks, it may exhibit odd powers. It seems unable to recall such an episode.'),
  -- golduck in silver
  (55, 5500, 5, 'It appears by waterways at dusk. It may use tele kinetic powers if its forehead glows mysteriously.'),
  -- mankey in silver
  (56, 5600, 5, 'It''s unsafe to approach if it gets violently enraged for no reason and can''t distinguish friends from foes.'),
  -- primeape in silver
  (57, 5700, 5, 'It becomes wildly furious if it even senses someone looking at it. It chases anyone that meets its glare.'),
  -- growlithe in silver
  (58, 5800, 5, 'Extremely loyal, it will fearlessly bark at any oppo nent to protect its own trainer from harm.'),
  -- arcanine in silver
  (59, 5900, 5, 'Its magnificent bark conveys a sense of majesty. Anyone hearing it can''t help but grovel before it.'),
  -- poliwag in silver
  (60, 6000, 5, 'The direction of its belly spiral differs by area. The equator is thought to have an effect on this.'),
  -- poliwhirl in silver
  (61, 6100, 5, 'The skin on most of its body is moist. However, the skin on its belly spiral feels smooth.'),
  -- poliwrath in silver
  (62, 6200, 5, 'Although an energetic, skilled swimmer that uses all of its muscles, it lives on dry land.'),
  -- abra in silver
  (63, 6300, 5, 'If it decides to TELEPORT randomly, it creates the illusion that it has created copies of itself.'),
  -- kadabra in silver
  (64, 6400, 5, 'If it uses its abilities, it emits special alpha waves that cause machines to malfunction.'),
  -- alakazam in silver
  (65, 6500, 5, 'Its brain cells multiply continually until it dies. As a result, it remembers everything.'),
  -- machop in silver
  (66, 6600, 5, 'It loves to work out and build its muscles. It is never satisfied, even if it trains hard all day long.'),
  -- machoke in silver
  (67, 6700, 5, 'The muscles covering its body teem with power. Even when still, it exudes an amazing sense of strength.'),
  -- machamp in silver
  (68, 6800, 5, 'It uses its four powerful arms to pin the limbs of its foe, then throws the victim over the horizon.'),
  -- bellsprout in silver
  (69, 6900, 5, 'It plants its feet deep underground to replenish wa ter. It can''t escape its enemy while it''s rooted.'),
  -- weepinbell in silver
  (70, 7000, 5, 'If its prey is bigger than its mouth, it slices up the victim with sharp leaves, then eats every morsel.'),
  -- victreebel in silver
  (71, 7100, 5, 'This horrifying plant POKéMON attracts prey with aromatic honey, then melts them in its mouth.'),
  -- tentacool in silver
  (72, 7200, 5, 'It drifts aimlessly in waves. Very difficult to see in water, it may not be noticed until it stings.'),
  -- tentacruel in silver
  (73, 7300, 5, 'In battle, it extends all 80 of its tentacles to entrap its opponent inside a poisonous net.'),
  -- geodude in silver
  (74, 7400, 5, 'It uses its arms to steadily climb steep mountain paths. It swings its fists around if angered.'),
  -- graveler in silver
  (75, 7500, 5, 'A slow walker, it rolls to move. It pays no attention to any object that happens to be in its path.'),
  -- golem in silver
  (76, 7600, 5, 'It is capable of blowing itself up. It uses this explosive force to jump from mountain to mountain.'),
  -- ponyta in silver
  (77, 7700, 5, 'Its hind legs, which have harder-than-diamond hooves, kick back at any presence it senses behind it.'),
  -- rapidash in silver
  (78, 7800, 5, 'With incredible acceleration, it reaches its top speed of 150 mph after running just ten steps.'),
  -- slowpoke in silver
  (79, 7900, 5, 'A sweet sap leaks from its tail''s tip. Although not nutritious, the tail is pleasant to chew on.'),
  -- slowbro in silver
  (80, 8000, 5, 'Naturally dull to begin with, it lost its ability to feel pain due to SHELLDER''s seeping poison.'),
  -- magnemite in silver
  (81, 8100, 5, 'The units at the sides of its body generate anti gravity energy to keep it aloft in the air.'),
  -- magneton in silver
  (82, 8200, 5, 'The MAGNEMITE are united by a magnetism so power ful, it dries all moisture in its vicinities.'),
  -- farfetchd in silver
  (83, 8300, 5, 'If it eats the plant stick it carries as emer gency rations, it runs off in search of a new stick.'),
  -- doduo in silver
  (84, 8400, 5, 'It races through grassy plains with powerful strides, leaving footprints up to four inches deep.'),
  -- dodrio in silver
  (85, 8500, 5, 'If one of the heads gets to eat, the others will be satisfied, too, and they will stop squabbling.'),
  -- seel in silver
  (86, 8600, 5, 'In daytime, it is often found asleep on the seabed in shallow waters. Its nostrils close while it swims.'),
  -- dewgong in silver
  (87, 8700, 5, 'It loves frigid seas with ice floes. It uses its long tail to change swimming direction quickly.'),
  -- grimer in silver
  (88, 8800, 5, 'Wherever GRIMER has passed, so many germs are left behind that no plants will ever grow again.'),
  -- muk in silver
  (89, 8900, 5, 'Its body is made of a powerful poison. Touching it accidentally will cause a fever that requires bed rest.'),
  -- shellder in silver
  (90, 9000, 5, 'Grains of sand trapped in its shells mix with its body fluids to form beautiful pearls.'),
  -- cloyster in silver
  (91, 9100, 5, 'CLOYSTER that live in seas with harsh tidal currents grow large, sharp spikes on their shells.'),
  -- gastly in silver
  (92, 9200, 5, 'Its thin body is made of gas. It can envelop an opponent of any size and cause suffocation.'),
  -- haunter in silver
  (93, 9300, 5, 'Its tongue is made of gas. If licked, its victim starts shaking constantly until death eventually comes.'),
  -- gengar in silver
  (94, 9400, 5, 'To steal the life of its target, it slips into the prey''s shadow and silently waits for an opportunity.'),
  -- onix in silver
  (95, 9500, 5, 'It rapidly bores through the ground at 50 mph by squirming and twisting its massive, rugged body.'),
  -- drowzee in silver
  (96, 9600, 5, 'It remembers every dream it eats. It rarely eats the dreams of adults because children''s are much tastier.'),
  -- hypno in silver
  (97, 9700, 5, 'Always holding a pendulum that it rocks at a steady rhythm, it causes drowsiness in anyone nearby.'),
  -- krabby in silver
  (98, 9800, 5, 'The pincers break off easily. If it loses a pincer, it somehow becomes incapable of walking sideways.'),
  -- kingler in silver
  (99, 9900, 5, 'Its pincers grow peculiarly large. If it lifts the pincers too fast, it loses its balance and staggers.'),
  -- voltorb in silver
  (100, 10000, 5, 'It was discovered when POKé BALLS were introduced. It is said that there is some connection.'),
  -- electrode in silver
  (101, 10100, 5, 'It stores an overflowing amount of electric energy inside its body. Even a small shock makes it explode.'),
  -- exeggcute in silver
  (102, 10200, 5, 'Using telepathy only they can receive, they always form a cluster of six EXEGGCUTE.'),
  -- exeggutor in silver
  (103, 10300, 5, 'If a head drops off, it emits a telepathic call in search of others to form an EXEGGCUTE cluster.'),
  -- cubone in silver
  (104, 10400, 5, 'It always wears the skull of its dead mother, so no one has any idea what its hidden face looks like.'),
  -- marowak in silver
  (105, 10500, 5, 'It collects bones from an unknown place. A MAROWAK graveyard exists somewhere in the world, rumors say.'),
  -- hitmonlee in silver
  (106, 10600, 5, 'If it starts kicking repeatedly, both legs will stretch even longer to strike a fleeing foe.'),
  -- hitmonchan in silver
  (107, 10700, 5, 'Its punches slice the air. They are launched at such high speed, even a slight graze could cause a burn.'),
  -- lickitung in silver
  (108, 10800, 5, 'Its long tongue, slathered with a gooey saliva, sticks to anything, so it is very useful.'),
  -- koffing in silver
  (109, 10900, 5, 'The poisonous gases it contains are a little bit lighter than air, keeping it slightly airborne.'),
  -- weezing in silver
  (110, 11000, 5, 'Top-grade perfume is made using its internal poison gases by diluting them to the highest level.'),
  -- rhyhorn in silver
  (111, 11100, 5, 'It doesn''t care if there is anything in its way. It just charges and destroys all obstacles.'),
  -- rhydon in silver
  (112, 11200, 5, 'Its brain developed when it began walking on hind legs. Its thick hide protects it even in magma.'),
  -- chansey in silver
  (113, 11300, 5, 'Few in number and difficult to capture, it is said to bring happiness to the trainer who catches it.'),
  -- tangela in silver
  (114, 11400, 5, 'It tangles any moving thing with its vines. Their subtle shaking is ticklish if you get ensnared.'),
  -- kangaskhan in silver
  (115, 11500, 5, 'To protect its young, it will never give up during battle, no matter how badly wounded it is.'),
  -- horsea in silver
  (116, 11600, 5, 'Its big, developed fins move rapidly, allowing it to swim backward while still facing forward.'),
  -- seadra in silver
  (117, 11700, 5, 'Its fin-tips leak poison. Its fins and bones are highly valued as ingredients in herbal medicine.'),
  -- goldeen in silver
  (118, 11800, 5, 'A strong swimmer, it is capable of swimming nonstop up fast streams at a steady speed of five knots.'),
  -- seaking in silver
  (119, 11900, 5, 'Using its horn, it bores holes in riverbed boulders, making nests to prevent its eggs from washing away.'),
  -- staryu in silver
  (120, 12000, 5, 'Even if its body is torn, it can regenerate as long as the glowing central core remains intact.'),
  -- starmie in silver
  (121, 12100, 5, 'Regardless of the environment it lives in, its body grows to form a symmetrical geometric shape.'),
  -- mr-mime in silver
  (122, 12200, 5, 'Its fingertips emit a peculiar force field that hardens air to create an actual wall.'),
  -- scyther in silver
  (123, 12300, 5, 'When it moves, it leaves only a blur. If it hides in grass, its protective colors make it invisible.'),
  -- jynx in silver
  (124, 12400, 5, 'It speaks a language similar to that of humans. However, it seems to use dancing to communicate.'),
  -- electabuzz in silver
  (125, 12500, 5, 'Its body constantly discharges electricity. Get ting close to it will make your hair stand on end.'),
  -- magmar in silver
  (126, 12600, 5, 'The fiery surface of its body gives off a wavering, rippling glare that is similar to the sun.'),
  -- pinsir in silver
  (127, 12700, 5, 'Swings its long antlers wildly to attack. During cold periods, it hides deep in forests.'),
  -- tauros in silver
  (128, 12800, 5, 'After heightening its will to fight by whipping itself with its three tails, it charges at full speed.'),
  -- magikarp in silver
  (129, 12900, 5, 'For no reason, it jumps and splashes about, making it easy for predators like PIDGEOTTO to catch it mid-jump.'),
  -- gyarados in silver
  (130, 13000, 5, 'Once it appears, it goes on a rampage. It remains enraged until it demolishes everything around it.'),
  -- lapras in silver
  (131, 13100, 5, 'It ferries people across the sea on its back. It may sing an enchanting cry if it is in a good mood.'),
  -- ditto in silver
  (132, 13200, 5, 'Its transformation ability is perfect. However, if made to laugh, it can''t maintain its disguise.'),
  -- eevee in silver
  (133, 13300, 5, 'Its irregularly configured DNA is affected by its surroundings. It evolves if its environment changes.'),
  -- vaporeon in silver
  (134, 13400, 5, 'It prefers beautiful shores. With cells similar to water molecules, it could melt in water.'),
  -- jolteon in silver
  (135, 13500, 5, 'Every hair on its body starts to stand sharply on end if it becomes charged with electricity.'),
  -- flareon in silver
  (136, 13600, 5, 'It fluffs out its fur collar to cool down its body temperature, which can reach 1,650 degrees.'),
  -- porygon in silver
  (137, 13700, 5, 'A manmade POKéMON that came about as a result of re search. It is programmed with only basic motions.'),
  -- omanyte in silver
  (138, 13800, 5, 'This POKéMON from ancient times is said to have navi gated the sea by adeptly twisting its 10 tentacles.'),
  -- omastar in silver
  (139, 13900, 5, 'Once wrapped around its prey, it never lets go. It eats the prey by tearing at it with sharp fangs.'),
  -- kabuto in silver
  (140, 14000, 5, 'This POKéMON lived in ancient times. On rare occasions, it has been discovered as a living fossil.'),
  -- kabutops in silver
  (141, 14100, 5, 'With sharp claws, this ferocious, ancient POKéMON rips apart prey and sucks their body fluids.'),
  -- aerodactyl in silver
  (142, 14200, 5, 'This vicious POKéMON is said to have flown in an cient skies while shrieking high- pitched cries.'),
  -- snorlax in silver
  (143, 14300, 5, 'Its stomach''s digestive juices can dissolve any kind of poison. It can even eat things off the ground.'),
  -- articuno in silver
  (144, 14400, 5, 'One of the legendary bird POKéMON, it chills moisture in the atmosphere to create snow while flying.'),
  -- zapdos in silver
  (145, 14500, 5, 'This legendary bird POKéMON is said to appear only when a thundercloud parts into two halves.'),
  -- moltres in silver
  (146, 14600, 5, 'This legendary bird POKéMON is said to bring early spring to the wintry lands it visits.'),
  -- dratini in silver
  (147, 14700, 5, 'This POKéMON is full of life energy. It continually sheds its skin and grows steadily larger.'),
  -- dragonair in silver
  (148, 14800, 5, 'Its crystalline orbs appear to give this POKéMON the power to freely control the weather.'),
  -- dragonite in silver
  (149, 14900, 5, 'This marine POKéMON has an impressive build that lets it freely fly over raging seas without trouble.'),
  -- mewtwo in silver
  (150, 15000, 5, 'It usually remains motionless to conserve energy, so that it may unleash its full power in battle.'),
  -- mew in silver
  (151, 15100, 5, 'Its DNA is said to contain the genetic codes of all POKéMON, so it can use all kinds of techniques.'),
  -- chikorita in silver
  (152, 15200, 5, 'Its pleasantly aromatic leaves have the ability to check the humidity and temperature.'),
  -- bayleef in silver
  (153, 15300, 5, 'A spicy aroma emanates from around its neck. The aroma acts as a stimulant to restore health.'),
  -- meganium in silver
  (154, 15400, 5, 'MEGANIUM''s breath has the power to revive dead grass and plants. It can make them healthy again.'),
  -- cyndaquil in silver
  (155, 15500, 5, 'It usually stays hunched over. If it is angry or surprised, it shoots flames out of its back.'),
  -- quilava in silver
  (156, 15600, 5, 'This POKéMON is fully covered by nonflammable fur. It can withstand any kind of fire attack.'),
  -- typhlosion in silver
  (157, 15700, 5, 'It has a secret, devastating move. It rubs its blaz ing fur together to cause huge explosions.'),
  -- totodile in silver
  (158, 15800, 5, 'It is small but rough and tough. It won''t hesitate to take a bite out of anything that moves.'),
  -- croconaw in silver
  (159, 15900, 5, 'It opens its huge jaws wide when attacking. If it loses any fangs while biting, they grow back in.'),
  -- feraligatr in silver
  (160, 16000, 5, 'It is hard for it to support its own weight out of water, so it gets down on all fours. But it moves fast.'),
  -- sentret in silver
  (161, 16100, 5, 'It stands on its tail so it can see a long way. If it spots an enemy, it cries loudly to warn its kind.'),
  -- furret in silver
  (162, 16200, 5, 'There is no telling where the tail begins. Despite its short legs, it is quick at hunting RATTATA.'),
  -- hoothoot in silver
  (163, 16300, 5, 'It has a perfect sense of time. Whatever happens, it keeps rhythm by precisely tilting its head in time.'),
  -- noctowl in silver
  (164, 16400, 5, 'When it needs to think, it rotates its head 180 de grees to sharpen its intellectual power.'),
  -- ledyba in silver
  (165, 16500, 5, 'When the weather turns cold, lots of LEDYBA gather from everywhere to cluster and keep each other warm.'),
  -- ledian in silver
  (166, 16600, 5, 'The star patterns on its back grow larger or smaller depending on the number of stars in the night sky.'),
  -- spinarak in silver
  (167, 16700, 5, 'It spins a web using fine--but durable--thread. It then waits patiently for prey to be trapped.'),
  -- ariados in silver
  (168, 16800, 5, 'A single strand of a special string is endlessly spun out of its rear. The string leads back to its nest.'),
  -- crobat in silver
  (169, 16900, 5, 'The development of wings on its legs enables it to fly fast but also makes it tough to stop and rest.'),
  -- chinchou in silver
  (170, 17000, 5, 'On the dark ocean floor, its only means of communi cation is its constantly flashing lights.'),
  -- lanturn in silver
  (171, 17100, 5, 'It blinds prey with an intense burst of light, then swallows the immobilized prey in a single gulp.'),
  -- pichu in silver
  (172, 17200, 5, 'Despite its small size, it can zap even adult humans. However, if it does so, it also surprises itself.'),
  -- cleffa in silver
  (173, 17300, 5, 'When numerous meteors illuminate the night sky, sightings of CLEFFA strangely increase.'),
  -- igglybuff in silver
  (174, 17400, 5, 'Its extremely flexible and elastic body makes it bounce continuously--anytime, anywhere.'),
  -- togepi in silver
  (175, 17500, 5, 'A proverb claims that happiness will come to any one who can make a sleeping TOGEPI stand up.'),
  -- togetic in silver
  (176, 17600, 5, 'It grows dispirited if it is not with kind people. It can float in midair without moving its wings.'),
  -- natu in silver
  (177, 17700, 5, 'It usually forages for food on the ground but may, on rare occasions, hop onto branches to peck at shoots.'),
  -- xatu in silver
  (178, 17800, 5, 'In South America, it is said that its right eye sees the future and its left eye views the past.'),
  -- mareep in silver
  (179, 17900, 5, 'Its fleece grows continually. In the summer, the fleece is fully shed, but it grows back in a week.'),
  -- flaaffy in silver
  (180, 18000, 5, 'Its fluffy fleece easily stores electricity. Its rubbery hide keeps it from being electrocuted.'),
  -- ampharos in silver
  (181, 18100, 5, 'The bright light on its tail can be seen far away. It has been treasured since ancient times as a beacon.'),
  -- bellossom in silver
  (182, 18200, 5, 'Plentiful in the tropics. When it dances, its petals rub together and make a pleasant ringing sound.'),
  -- marill in silver
  (183, 18300, 5, 'The end of its tail serves as a buoy that keeps it from drowning, even in a vicious current.'),
  -- azumarill in silver
  (184, 18400, 5, 'When it plays in water, it rolls up its elongated ears to prevent their insides from getting wet.'),
  -- sudowoodo in silver
  (185, 18500, 5, 'It disguises itself as a tree to avoid attack. It hates water, so it will disappear if it starts raining.'),
  -- politoed in silver
  (186, 18600, 5, 'Whenever three or more of these get together, they sing in a loud voice that sounds like bellowing.'),
  -- hoppip in silver
  (187, 18700, 5, 'Its body is so light, it must grip the ground firmly with its feet to keep from being blown away.'),
  -- skiploom in silver
  (188, 18800, 5, 'It spreads its petals to absorb sunlight. It also floats in the air to get closer to the sun.'),
  -- jumpluff in silver
  (189, 18900, 5, 'Drifts on seasonal winds and spreads its cotton-like spores all over the world to make more offspring.'),
  -- aipom in silver
  (190, 19000, 5, 'It lives atop tall trees. When leaping from branch to branch, it deftly uses its tail for balance.'),
  -- sunkern in silver
  (191, 19100, 5, 'It lives by drinking only dewdrops from under the leaves of plants. It is said that it eats nothing else.'),
  -- sunflora in silver
  (192, 19200, 5, 'In the daytime, it rushes about in a hectic manner, but it comes to a complete stop when the sun sets.'),
  -- yanma in silver
  (193, 19300, 5, 'Its large eyes can scan 360 degrees. It looks in all directions to seek out insects as its prey.'),
  -- wooper in silver
  (194, 19400, 5, 'When it walks around on the ground, it coats its body with a slimy, poisonous film.'),
  -- quagsire in silver
  (195, 19500, 5, 'Due to its relaxed and carefree attitude, it often bumps its head on boulders and boat hulls as it swims.'),
  -- espeon in silver
  (196, 19600, 5, 'By reading air currents, it can predict things such as the weather or its foe''s next move.'),
  -- umbreon in silver
  (197, 19700, 5, 'When darkness falls, the rings on the body begin to glow, striking fear in the hearts of anyone nearby.'),
  -- murkrow in silver
  (198, 19800, 5, 'It is said that when chased, it lures its attacker onto dark mountain trails where the foe will get lost.'),
  -- slowking in silver
  (199, 19900, 5, 'When its head was bitten, toxins entered SLOWPOKE''s head and unlocked an extraordinary power.'),
  -- misdreavus in silver
  (200, 20000, 5, 'It loves to bite and yank people''s hair from behind without warning, just to see their shocked reactions.'),
  -- unown in silver
  (201, 20100, 5, 'Its flat, thin body is always stuck on walls. Its shape appears to have some meaning.'),
  -- wobbuffet in silver
  (202, 20200, 5, 'To keep its pitch- black tail hidden, it lives quietly in the darkness. It is never first to attack.'),
  -- girafarig in silver
  (203, 20300, 5, 'Its tail, which also contains a small brain, may bite on its own if it notices an alluring smell.'),
  -- pineco in silver
  (204, 20400, 5, 'It hangs and waits for flying insect prey to come near. It does not move about much on its own.'),
  -- forretress in silver
  (205, 20500, 5, 'It remains immovably rooted to its tree. It scatters pieces of its hard shell to drive its enemies away.'),
  -- dunsparce in silver
  (206, 20600, 5, 'If spotted, it escapes by burrowing with its tail. It can float just slightly using its wings.'),
  -- gligar in silver
  (207, 20700, 5, 'It usually clings to cliffs. When it spots its prey, it spreads its wings and glides down to attack.'),
  -- steelix in silver
  (208, 20800, 5, 'It is said that if an ONIX lives for over 100 years, its composition changes to become diamond-like.'),
  -- snubbull in silver
  (209, 20900, 5, 'It has an active, playful nature. Many women like to frolic with it because of its affectionate ways.'),
  -- granbull in silver
  (210, 21000, 5, 'Because its fangs are too heavy, it always keeps its head tilted down. However, its BITE is powerful.'),
  -- qwilfish in silver
  (211, 21100, 5, 'The small spikes covering its body developed from scales. They inject a toxin that causes fainting.'),
  -- scizor in silver
  (212, 21200, 5, 'Its wings are not used for flying. They are flapped at high speed to adjust its body temperature.'),
  -- shuckle in silver
  (213, 21300, 5, 'It stores BERRIES inside its shell. To avoid attacks, it hides beneath rocks and remains completely still.'),
  -- heracross in silver
  (214, 21400, 5, 'Usually docile, but if disturbed while sipping honey, it chases off the intruder with its horn.'),
  -- sneasel in silver
  (215, 21500, 5, 'Vicious in nature, it drives PIDGEY from their nests and feasts on the eggs that are left behind.'),
  -- teddiursa in silver
  (216, 21600, 5, 'Before food becomes scarce in wintertime, its habit is to hoard food in many hidden locations.'),
  -- ursaring in silver
  (217, 21700, 5, 'With its ability to distinguish any aroma, it unfail ingly finds all food buried deep underground.'),
  -- slugma in silver
  (218, 21800, 5, 'A common sight in volcanic areas, it slowly slithers around in a constant search for warm places.'),
  -- magcargo in silver
  (219, 21900, 5, 'Its brittle shell occasionally spouts intense flames that circulate throughout its body.'),
  -- swinub in silver
  (220, 22000, 5, 'If it smells something enticing, it dashes headlong off to find the source of the aroma.'),
  -- piloswine in silver
  (221, 22100, 5, 'If it charges at an enemy, the hairs on its back stand up straight. It is very sensitive to sound.'),
  -- corsola in silver
  (222, 22200, 5, 'In a south sea nation, the people live in communi ties that are built on groups of these POKéMON.'),
  -- remoraid in silver
  (223, 22300, 5, 'Using its dorsal fin as a suction pad, it clings to a MANTINE''s underside to scavenge for leftovers.'),
  -- octillery in silver
  (224, 22400, 5, 'It instinctively sneaks into rocky holes. If it gets sleepy, it steals the nest of a fellow OCTILLERY.'),
  -- delibird in silver
  (225, 22500, 5, 'It nests at the edge of sharp cliffs. It spends all day carrying food to its awaiting chicks.'),
  -- mantine in silver
  (226, 22600, 5, 'Swimming freely in open seas, it may fly out of the water and over the waves if it builds up enough speed.'),
  -- skarmory in silver
  (227, 22700, 5, 'After nesting in bramble bushes, the wings of its chicks grow hard from scratches by thorns.'),
  -- houndour in silver
  (228, 22800, 5, 'To corner prey, they check each other''s location using barks that only they can understand.'),
  -- houndoom in silver
  (229, 22900, 5, 'Upon hearing its eerie howls, other POKéMON get the shivers and head straight back to their nests.'),
  -- kingdra in silver
  (230, 23000, 5, 'It sleeps deep on the ocean floor to build its energy. It is said to cause tornadoes as it wakes.'),
  -- phanpy in silver
  (231, 23100, 5, 'As a sign of affection, it bumps with its snout. However, it is so strong, it may send you flying.'),
  -- donphan in silver
  (232, 23200, 5, 'The longer and bigger its tusks, the higher its rank in its herd. The tusks take long to grow.'),
  -- porygon2 in silver
  (233, 23300, 5, 'Further research enhanced its abilities. Sometimes, it may exhibit motions that were not programmed.'),
  -- stantler in silver
  (234, 23400, 5, 'Those who stare at its antlers will gradually lose control of their senses and be unable to stand.'),
  -- smeargle in silver
  (235, 23500, 5, 'Once it becomes an adult, it has a tendency to let its comrades plant footprints on its back.'),
  -- tyrogue in silver
  (236, 23600, 5, 'Even though it is small, it can''t be ignored because it will slug any handy target without warning.'),
  -- hitmontop in silver
  (237, 23700, 5, 'It launches kicks while spinning. If it spins at high speed, it may bore its way into the ground.'),
  -- smoochum in silver
  (238, 23800, 5, 'It always rocks its head slowly backwards and for wards as if it is trying to kiss someone.'),
  -- elekid in silver
  (239, 23900, 5, 'Even in the most vicious storm, this POKéMON plays happily if thunder rumbles in the sky.'),
  -- magby in silver
  (240, 24000, 5, 'It is found in volcanic craters. Its body temp. is over 1100 degrees, so don''t underestimate it.'),
  -- miltank in silver
  (241, 24100, 5, 'If it has just had a baby, the milk it produces con tains much more nutrition than usual.'),
  -- blissey in silver
  (242, 24200, 5, 'It has a very compassionate nature. If it sees a sick POKéMON, it will nurse the sufferer back to health.'),
  -- raikou in silver
  (243, 24300, 5, 'A POKéMON that races across the land while barking a cry that sounds like crashing thunder.'),
  -- entei in silver
  (244, 24400, 5, 'A POKéMON that races across the land. It is said that one is born every time a new volcano appears.'),
  -- suicune in silver
  (245, 24500, 5, 'This POKéMON races across the land. It is said that north winds will somehow blow whenever it appears.'),
  -- larvitar in silver
  (246, 24600, 5, 'It is born deep underground. It can''t emerge until it has entirely consumed the soil around it.'),
  -- pupitar in silver
  (247, 24700, 5, 'Even sealed in its shell, it can move freely. Hard and fast, it has outstanding destructive power.'),
  -- tyranitar in silver
  (248, 24800, 5, 'Extremely strong, it can change the landscape. It has an insolent nature that makes it not care about others.'),
  -- lugia in silver
  (249, 24900, 5, 'It is said to be the guardian of the seas. It is rumored to have been seen on the night of a storm.'),
  -- ho-oh in silver
  (250, 25000, 5, 'A legend says that its body glows in seven colors. A rainbow is said to form behind it when it flies.'),
  -- celebi in silver
  (251, 25100, 5, 'When CELEBI disappears deep in a forest, it is said to leave behind an egg it brought from the future.'),
  -- bulbasaur in crystal
  (1, 100, 6, 'While it is young, it uses the nutrients that are stored in the seeds on its back in order to grow.'),
  -- ivysaur in crystal
  (2, 200, 6, 'The bulb on its back grows as it absorbs nutrients. The bulb gives off a pleasant aroma when it blooms.'),
  -- venusaur in crystal
  (3, 300, 6, 'As it warms itself and absorbs the sunlight, its flower petals release a pleasant fragrance.'),
  -- charmander in crystal
  (4, 400, 6, 'If it''s healthy, the flame on the tip of its tail will burn vigorously, even if it gets a bit wet.'),
  -- charmeleon in crystal
  (5, 500, 6, 'If it becomes agitated during battle, it spouts intense flames, incinerating its surroundings.'),
  -- charizard in crystal
  (6, 600, 6, 'It uses its wings to fly high. The temperature of its fire increases as it gains experience in battle.'),
  -- squirtle in crystal
  (7, 700, 6, 'When it feels threatened, it draws its legs inside its shell and sprays water from its mouth.'),
  -- wartortle in crystal
  (8, 800, 6, 'Its long, furry tail is a symbol of longevity, making it quite popular among older people.'),
  -- blastoise in crystal
  (9, 900, 6, 'It firmly plants its feet on the ground before shooting water from the jets on its back.'),
  -- caterpie in crystal
  (10, 1000, 6, 'It crawls into foliage where it camouflages itself among leaves that are the same color as its body.'),
  -- metapod in crystal
  (11, 1100, 6, 'This is its pre- evolved form. At this stage, it can only harden, so it remains motionless to avoid attack.'),
  -- butterfree in crystal
  (12, 1200, 6, 'It flits from flower to flower, collecting honey. It can even identify distant flowers in bloom.'),
  -- weedle in crystal
  (13, 1300, 6, 'The barb on top of its head secretes a strong poison. It uses this toxic barb to protect itself.'),
  -- kakuna in crystal
  (14, 1400, 6, 'Nearly incapable of movement, it leans against stout trees while waiting for its evolution.'),
  -- beedrill in crystal
  (15, 1500, 6, 'It uses sharp, poisonous stings to defeat prey, then takes the victim back to its nest for food.'),
  -- pidgey in crystal
  (16, 1600, 6, 'It rapidly flaps its wings in the grass, stirring up a dust cloud that drives insect prey out into the open.'),
  -- pidgeotto in crystal
  (17, 1700, 6, 'It slowly flies in a circular pattern, all the while keeping a sharp lookout for prey.'),
  -- pidgeot in crystal
  (18, 1800, 6, 'Its outstanding vision allows it to spot splashing MAGIKARP, even while flying at 3300 feet.'),
  -- rattata in crystal
  (19, 1900, 6, 'This POKéMON''s impressive vitality allows it to live anywhere. It also multiplies very quickly.'),
  -- raticate in crystal
  (20, 2000, 6, 'The webs on its hind legs enable it to cross rivers. It searches wide areas for food.'),
  -- spearow in crystal
  (21, 2100, 6, 'To protect its territory, it flies around ceaselessly, making high- pitched cries.'),
  -- fearow in crystal
  (22, 2200, 6, 'It uses its long beak to attack. It has a surprisingly long reach, so it must be treated with caution.'),
  -- ekans in crystal
  (23, 2300, 6, 'It flutters the tip of its tongue to seek out the scent of prey, then swallows the prey whole.'),
  -- arbok in crystal
  (24, 2400, 6, 'To intimidate foes, it spreads its chest wide and makes eerie sounds by expelling air from its mouth.'),
  -- pikachu in crystal
  (25, 2500, 6, 'When it is angered, it immediately discharges the energy stored in the pouches in its cheeks.'),
  -- raichu in crystal
  (26, 2600, 6, 'If its electric pouches run empty, it raises its tail to gather electricity from the atmosphere.'),
  -- sandshrew in crystal
  (27, 2700, 6, 'It prefers dry, sandy places because it uses the sand to protect itself when threatened.'),
  -- sandslash in crystal
  (28, 2800, 6, 'Adept at climbing trees, it rolls into a spiny ball, then attacks its enemies from above.'),
  -- nidoran-f in crystal
  (29, 2900, 6, 'Small and very docile, it protects itself with its small, poisonous horn when attacked.'),
  -- nidorina in crystal
  (30, 3000, 6, 'It has a docile nature. If it is threatened with attack, it raises the barbs that are all over its body.'),
  -- nidoqueen in crystal
  (31, 3100, 6, 'The hard scales that cover its strong body serve as excellent protection from any attack.'),
  -- nidoran-m in crystal
  (32, 3200, 6, 'It constantly moves its large ears in many directions in order to detect danger right away.'),
  -- nidorino in crystal
  (33, 3300, 6, 'It is easily agitated and uses its horn for offense as soon as it notices an attacker.'),
  -- nidoking in crystal
  (34, 3400, 6, 'It uses its thick arms, legs and tail to attack forcefully. Melee combat is its specialty.'),
  -- clefairy in crystal
  (35, 3500, 6, 'Though rarely seen, it becomes easier to spot, for some reason, on the night of a full moon.'),
  -- clefable in crystal
  (36, 3600, 6, 'Said to live in quiet, remote mountains, this type of fairy has a strong aversion to being seen.'),
  -- vulpix in crystal
  (37, 3700, 6, 'As its body grows larger, its six warm tails become more beautiful, with a more luxurious coat of fur.'),
  -- ninetales in crystal
  (38, 3800, 6, 'It is said to live a thousand years, and each of its tails is loaded with supernatural powers.'),
  -- jigglypuff in crystal
  (39, 3900, 6, 'It rolls its cute eyes as it sings a soothing lullaby. Its gentle song puts anyone who hears it to sleep.'),
  -- wigglytuff in crystal
  (40, 4000, 6, 'The rich, fluffy fur that covers its body feels so good that anyone who feels it can''t stop touching it.'),
  -- zubat in crystal
  (41, 4100, 6, 'During the day, it gathers with others and hangs from the ceilings of old buildings and caves.'),
  -- golbat in crystal
  (42, 4200, 6, 'When it plunges its fangs into its prey, it instantly draws and gulps down more than ten ounces of blood.'),
  -- oddish in crystal
  (43, 4300, 6, 'During the day, it stays in the cold underground to avoid the sun. It grows by bathing in moonlight.'),
  -- gloom in crystal
  (44, 4400, 6, 'The smell from its drool-like syrup and the pollen on its petals is so bad, it may make opponents faint.'),
  -- vileplume in crystal
  (45, 4500, 6, 'By shaking its big petals, it scatters toxic pollen into the air, turning the air yellow.'),
  -- paras in crystal
  (46, 4600, 6, 'The tochukaso growing on this POKéMON''s back orders it to extract juice from tree trunks.'),
  -- parasect in crystal
  (47, 4700, 6, 'When nothing''s left to extract from the bug, the mushrooms on its back leave spores on the bug''s egg.'),
  -- venonat in crystal
  (48, 4800, 6, 'The small bugs it eats appear only at night, so it sleeps in a hole in a tree until night falls.'),
  -- venomoth in crystal
  (49, 4900, 6, 'The scales it scatters will paralyze anyone who touches them, making that person unable to stand.'),
  -- diglett in crystal
  (50, 5000, 6, 'It digs underground and chews on tree roots, sticking its head out only when the sun isn''t bright.'),
  -- dugtrio in crystal
  (51, 5100, 6, 'These DIGLETT triplets dig over 60 miles below sea level. No one knows what it''s like underground.'),
  -- meowth in crystal
  (52, 5200, 6, 'It loves things that sparkle. When it sees a shiny object, the gold coin on its head shines too.'),
  -- persian in crystal
  (53, 5300, 6, 'Behind its lithe, elegant appearance lies a barbaric side. It will tear apart its prey on a mere whim.'),
  -- psyduck in crystal
  (54, 5400, 6, 'The only time it can use its psychic power is when its sleeping brain cells happen to wake.'),
  -- golduck in crystal
  (55, 5500, 6, 'It swims gracefully along on the quiet, slow-moving rivers and lakes of which it is so fond.'),
  -- mankey in crystal
  (56, 5600, 6, 'It lives in groups in the treetops. If it loses sight of its group, it becomes infuriated by its loneliness.'),
  -- primeape in crystal
  (57, 5700, 6, 'It will beat up anyone who makes it mad, even if it has to chase them until the end of the world.'),
  -- growlithe in crystal
  (58, 5800, 6, 'It controls a big territory. If it detects an unknown smell, it roars loudly to force out the intruder.'),
  -- arcanine in crystal
  (59, 5900, 6, 'An ancient picture scroll shows that people were attracted to its movement as it ran through prairies.'),
  -- poliwag in crystal
  (60, 6000, 6, 'The swirl on its belly is its insides showing through the skin. It looks clearer after it eats.'),
  -- poliwhirl in crystal
  (61, 6100, 6, 'Though it is skilled at walking, it prefers to live underwater where there is less danger.'),
  -- poliwrath in crystal
  (62, 6200, 6, 'It can use its well-developed arms and legs to run on the surface of the water for a split second.'),
  -- abra in crystal
  (63, 6300, 6, 'It hypnotizes itself so that it can teleport away when it senses danger, even if it is asleep.'),
  -- kadabra in crystal
  (64, 6400, 6, 'When it closes its eyes, twice as many alpha parti cles come out of the surface of its body.'),
  -- alakazam in crystal
  (65, 6500, 6, 'It has an IQ of 5000. It calculates many things in order to gain the edge in every battle.'),
  -- machop in crystal
  (66, 6600, 6, 'It trains by lifting rocks in the mountains. It can even pick up a GRAVELER with ease.'),
  -- machoke in crystal
  (67, 6700, 6, 'This tough POKéMON always stays in the zone. Its muscles become thicker after every battle.'),
  -- machamp in crystal
  (68, 6800, 6, 'With four arms that react more quickly than it can think, it can execute many punches at once.'),
  -- bellsprout in crystal
  (69, 6900, 6, 'If it notices anything that moves, it immediately flings its vine at the object.'),
  -- weepinbell in crystal
  (70, 7000, 6, 'When it''s hungry, it swings its razor-sharp leaves, slicing up any unlucky object nearby for food.'),
  -- victreebel in crystal
  (71, 7100, 6, 'Once ingested into this POKéMON''s body, even the hardest object will melt into nothing.'),
  -- tentacool in crystal
  (72, 7200, 6, 'As it floats along on the waves, it uses its toxic feelers to stab anything it touches.'),
  -- tentacruel in crystal
  (73, 7300, 6, 'When its 80 feelers absorb water, it stretches to become like a net to entangle its prey.'),
  -- geodude in crystal
  (74, 7400, 6, 'Proud of their sturdy bodies, they bash against each other in a contest to prove whose is harder.'),
  -- graveler in crystal
  (75, 7500, 6, 'It travels by rolling on mountain paths. If it gains too much speed, it stops by running into huge rocks.'),
  -- golem in crystal
  (76, 7600, 6, 'Its rock-like body is so durable, even high-powered dynamite blasts fail to scratch its rugged hide.'),
  -- ponyta in crystal
  (77, 7700, 6, 'Training by jumping over grass that grows longer every day has made it a world-class jumper.'),
  -- rapidash in crystal
  (78, 7800, 6, 'It just loves to gallop. The faster it goes, the long er the swaying flames of its mane will become.'),
  -- slowpoke in crystal
  (79, 7900, 6, 'It is always so absent-minded that it won''t react, even if its flavorful tail is bitten.'),
  -- slowbro in crystal
  (80, 8000, 6, 'An attached SHELLDER won''t let go because of the tasty flavor that oozes out of its tail.'),
  -- magnemite in crystal
  (81, 8100, 6, 'The electricity emitted by the units on each side of its body cause it to become a strong magnet.'),
  -- magneton in crystal
  (82, 8200, 6, 'When many MAGNETON gather together, the resulting magnetic storm disrupts radio waves.'),
  -- farfetchd in crystal
  (83, 8300, 6, 'In order to prevent their extinction, more people have made an effort to breed these POKéMON.'),
  -- doduo in crystal
  (84, 8400, 6, 'It lives on a grassy plain where it can see a long way. If it sees an enemy, it runs away at 60 mph.'),
  -- dodrio in crystal
  (85, 8500, 6, 'An enemy that takes its eyes off any of the three heads--even for a second--will get pecked severely.'),
  -- seel in crystal
  (86, 8600, 6, 'The light blue fur that covers it keeps it protected against the cold. It loves iceberg- filled oceans.'),
  -- dewgong in crystal
  (87, 8700, 6, 'It sleeps under shallow ocean waters during the day, then looks for food at night when it''s cold.'),
  -- grimer in crystal
  (88, 8800, 6, 'When two of these POKéMON''s bodies are combined together, new poisons are created.'),
  -- muk in crystal
  (89, 8900, 6, 'As it moves, a very strong poison leaks from it, making the ground there barren for three years.'),
  -- shellder in crystal
  (90, 9000, 6, 'Clamping on to an opponent reveals its vulnerable parts, so it uses this move only as a last resort.'),
  -- cloyster in crystal
  (91, 9100, 6, 'Even a missile can''t break the spikes it uses to stab opponents. They''re even harder than its shell.'),
  -- gastly in crystal
  (92, 9200, 6, 'It wraps its opponent in its gas- like body, slowly weakening its prey by poisoning it through the skin.'),
  -- haunter in crystal
  (93, 9300, 6, 'It hides in the dark, planning to take the life of the next living thing that wanders close by.'),
  -- gengar in crystal
  (94, 9400, 6, 'Hiding in people''s shadows at night, it absorbs their heat. The chill it causes makes the victims shake.'),
  -- onix in crystal
  (95, 9500, 6, 'As it digs through the ground, it absorbs many hard objects. This is what makes its body so solid.'),
  -- drowzee in crystal
  (96, 9600, 6, 'When it twitches its nose, it can tell where someone is sleeping and what that person is dreaming about.'),
  -- hypno in crystal
  (97, 9700, 6, 'The longer it swings its pendulum, the longer the effects of its hypnosis last.'),
  -- krabby in crystal
  (98, 9800, 6, 'If it is unable to find food, it will absorb nutrients by swallowing a mouthful of sand.'),
  -- kingler in crystal
  (99, 9900, 6, 'Its oversized claw is very powerful, but when it''s not in battle, the claw just gets in the way.'),
  -- voltorb in crystal
  (100, 10000, 6, 'During the study of this POKéMON, it was discovered that its components are not found in nature.'),
  -- electrode in crystal
  (101, 10100, 6, 'The more energy it charges up, the faster it gets. But this also makes it more likely to explode.'),
  -- exeggcute in crystal
  (102, 10200, 6, 'If even one is separated from the group, the energy bond between the six will make them rejoin instantly.'),
  -- exeggutor in crystal
  (103, 10300, 6, 'Living in a good environment makes it grow lots of heads. A head that drops off becomes an EXEGGCUTE.'),
  -- cubone in crystal
  (104, 10400, 6, 'It lost its mother after its birth. It wears its mother''s skull, never revealing its true face.'),
  -- marowak in crystal
  (105, 10500, 6, 'Somewhere in the world is a cemetery just for MAROWAK. It gets its bones from those graves.'),
  -- hitmonlee in crystal
  (106, 10600, 6, 'It is also called the Kick Master. It uses its elastic legs to execute every known kick.'),
  -- hitmonchan in crystal
  (107, 10700, 6, 'To increase the strength of all its punch moves, it spins its arms just before making contact.'),
  -- lickitung in crystal
  (108, 10800, 6, 'It has a tongue that is over 6’6’’ long. It uses this long tongue to lick its body clean.'),
  -- koffing in crystal
  (109, 10900, 6, 'If one gets close enough to it when it expels poison ous gas, the gas swirling inside it can be seen.'),
  -- weezing in crystal
  (110, 11000, 6, 'When it inhales poisonous gases from garbage, its body expands, and its insides smell much worse.'),
  -- rhyhorn in crystal
  (111, 11100, 6, 'It can remember only one thing at a time. Once it starts rushing, it forgets why it started.'),
  -- rhydon in crystal
  (112, 11200, 6, 'By lightly spinning its drill- like horn, it can easily shatter even a diamond in the rough.'),
  -- chansey in crystal
  (113, 11300, 6, 'People try to catch it for its extremely nutritious eggs, but it rarely can be found.'),
  -- tangela in crystal
  (114, 11400, 6, 'During battle, it constantly moves the vines that cover its body in order to annoy its opponent.'),
  -- kangaskhan in crystal
  (115, 11500, 6, 'To avoid crushing the baby it carries in its pouch, it always sleeps standing up.'),
  -- horsea in crystal
  (116, 11600, 6, 'When they''re in a safe location, they can be seen playfully tangling their tails together.'),
  -- seadra in crystal
  (117, 11700, 6, 'The male raises the young. If it is approached, it uses its toxic spikes to fend off the intruder.'),
  -- goldeen in crystal
  (118, 11800, 6, 'During spawning season, they swim gracefully in the water, searching for their perfect mate.'),
  -- seaking in crystal
  (119, 11900, 6, 'When autumn comes, the males patrol the area around their nests in order to protect their offspring.'),
  -- staryu in crystal
  (120, 12000, 6, 'When the stars twinkle at night, it floats up from the sea floor, and its body''s center core flickers.'),
  -- starmie in crystal
  (121, 12100, 6, 'It is said that it uses the seven- colored core of its body to send electric waves into outer space.'),
  -- mr-mime in crystal
  (122, 12200, 6, 'It uses the mysterious power it has in its fingers to solidify air into an invisible wall.'),
  -- scyther in crystal
  (123, 12300, 6, 'It''s very proud of its speed. It moves so fast that its opponent does not even know what knocked it down.'),
  -- jynx in crystal
  (124, 12400, 6, 'It has several different cry patterns, each of which seems to have its own meaning.'),
  -- electabuzz in crystal
  (125, 12500, 6, 'When two ELECTABUZZ touch, they control the electric currents to communicate their feelings.'),
  -- magmar in crystal
  (126, 12600, 6, 'It moves more frequently in hot areas. It can heal itself by dipping its wound into lava.'),
  -- pinsir in crystal
  (127, 12700, 6, 'When the temperature drops at night, it sleeps on treetops or among roots where it is well hidden.'),
  -- tauros in crystal
  (128, 12800, 6, 'These violent POKéMON fight with other mem bers of their herd in order to prove their strength.'),
  -- magikarp in crystal
  (129, 12900, 6, 'This weak and pathetic POKéMON gets easily pushed along rivers when there are strong currents.'),
  -- gyarados in crystal
  (130, 13000, 6, 'It appears whenever there is world conflict, burning down any place it travels through.'),
  -- lapras in crystal
  (131, 13100, 6, 'This gentle POKéMON loves to give people rides and provides a very comfortable way to get around.'),
  -- ditto in crystal
  (132, 13200, 6, 'When it encounters another DITTO, it will move faster than normal to duplicate that opponent exactly.'),
  -- eevee in crystal
  (133, 13300, 6, 'Its ability to evolve into many forms allows it to adapt smoothly and perfectly to any environment.'),
  -- vaporeon in crystal
  (134, 13400, 6, 'As it uses the fins on the tip of its tail to swim, it blends with the water perfectly.'),
  -- jolteon in crystal
  (135, 13500, 6, 'The negatively charged ions generated in its fur create a constant sparking noise.'),
  -- flareon in crystal
  (136, 13600, 6, 'Once it has stored up enough heat, this POKéMON''s body temperature can reach up to 1700 degrees.'),
  -- porygon in crystal
  (137, 13700, 6, 'An artificial POKéMON created due to extensive research, it can perform only what is in its program.'),
  -- omanyte in crystal
  (138, 13800, 6, 'In prehistoric times, it swam on the sea floor, eating plankton. Its fossils are sometimes found.'),
  -- omastar in crystal
  (139, 13900, 6, 'Its heavy shell allowed it to reach only nearby food. This could be the reason it is extinct.'),
  -- kabuto in crystal
  (140, 14000, 6, 'Three hundred million years ago, it hid on the sea floor. It also has eyes on its back that glow.'),
  -- kabutops in crystal
  (141, 14100, 6, 'It was able to swim quickly through the water by compactly folding up its razor-sharp sickles.'),
  -- aerodactyl in crystal
  (142, 14200, 6, 'In prehistoric times, this POKéMON flew freely and fearlessly through the skies.'),
  -- snorlax in crystal
  (143, 14300, 6, 'This POKéMON''s stomach is so strong, even eating moldy or rotten food will not affect it.'),
  -- articuno in crystal
  (144, 14400, 6, 'Legendary bird POKéMON. As it flies through the sky, it cools the air, causing snow to fall.'),
  -- zapdos in crystal
  (145, 14500, 6, 'Legendary bird POKéMON. They say lightning caused by the flapping of its wings causes summer storms.'),
  -- moltres in crystal
  (146, 14600, 6, 'Legendary bird POKéMON. It is said to migrate from the south along with the spring.'),
  -- dratini in crystal
  (147, 14700, 6, 'It sheds many layers of skin as it grows larger. Dur ing this process, it is protected by a rapid waterfall.'),
  -- dragonair in crystal
  (148, 14800, 6, 'It is called the divine POKéMON. When its entire body brightens slightly, the weather changes.'),
  -- dragonite in crystal
  (149, 14900, 6, 'It is said that somewhere in the ocean lies an island where these gather. Only they live there.'),
  -- mewtwo in crystal
  (150, 15000, 6, 'Said to rest quietly in an undiscovered cave, this POKéMON was created solely for battling.'),
  -- mew in crystal
  (151, 15100, 6, 'Because it can learn any move, some people began research to see if it is the ancestor of all POKéMON.'),
  -- chikorita in crystal
  (152, 15200, 6, 'It loves to bask in the sunlight. It uses the leaf on its head to seek out warm places.'),
  -- bayleef in crystal
  (153, 15300, 6, 'The scent that wafts from the leaves on its neck causes anyone who smells it to become energetic.'),
  -- meganium in crystal
  (154, 15400, 6, 'Anyone who stands beside it becomes refreshed, just as if they were relaxing in a sunny forest.'),
  -- cyndaquil in crystal
  (155, 15500, 6, 'The fire that spouts from its back burns hottest when it is angry. The flaring flames intimidate foes.'),
  -- quilava in crystal
  (156, 15600, 6, 'Before battle, it turns its back on its opponent to demonstrate how ferociously its fire blazes.'),
  -- typhlosion in crystal
  (157, 15700, 6, 'When heat from its body causes the air around it to shimmer, this is a sign that it is ready to battle.'),
  -- totodile in crystal
  (158, 15800, 6, 'This rough critter chomps at any moving object it sees. Turning your back on it is not recommended.'),
  -- croconaw in crystal
  (159, 15900, 6, 'The tips of its fangs are slanted backward. Once those fangs clamp down, the prey has no hope of escape.'),
  -- feraligatr in crystal
  (160, 16000, 6, 'Although it has a massive body, its powerful hind legs enable it to move quickly, even on the ground.'),
  -- sentret in crystal
  (161, 16100, 6, 'When acting as a lookout, it warns others of danger by screeching and hitting the ground with its tail.'),
  -- furret in crystal
  (162, 16200, 6, 'It lives in narrow burrows that fit its slim body. The deeper the nests go, the more mazelike they become.'),
  -- hoothoot in crystal
  (163, 16300, 6, 'It begins to hoot at the same time every day. Some trainers use them in place of clocks.'),
  -- noctowl in crystal
  (164, 16400, 6, 'Its extremely soft feathers make no sound in flight. It silently sneaks up on prey without being detected.'),
  -- ledyba in crystal
  (165, 16500, 6, 'It is timid and clusters together with others. The fluid secreted by its feet indicates its location.'),
  -- ledian in crystal
  (166, 16600, 6, 'In the daytime when it gets warm, it curls up inside a big leaf and drifts off into a deep slumber.'),
  -- spinarak in crystal
  (167, 16700, 6, 'If prey becomes ensnared in its nest of spun string, it waits motionlessly until it becomes dark.'),
  -- ariados in crystal
  (168, 16800, 6, 'Rather than making a nest in one specific spot, it wanders in search of food after darkness falls.'),
  -- crobat in crystal
  (169, 16900, 6, 'As a result of its pursuit of faster, yet more silent flight, a new set of wings grew on its hind legs.'),
  -- chinchou in crystal
  (170, 17000, 6, 'Its antennae, which evolved from a fin, have both po sitive and negative charges flowing through them.'),
  -- lanturn in crystal
  (171, 17100, 6, 'This POKéMON uses the bright part of its body, which changed from a dorsal fin, to lure prey.'),
  -- pichu in crystal
  (172, 17200, 6, 'It is unskilled at storing electric power. Any kind of shock causes it to discharge energy spontaneously.'),
  -- cleffa in crystal
  (173, 17300, 6, 'If the impact site of a meteorite is found, this POKéMON is certain to be within the immediate area.'),
  -- igglybuff in crystal
  (174, 17400, 6, 'Instead of walking with its short legs, it moves around by bouncing on its soft, tender body.'),
  -- togepi in crystal
  (175, 17500, 6, 'It is considered to be a symbol of good luck. Its shell is said to be filled with happiness.'),
  -- togetic in crystal
  (176, 17600, 6, 'Although it does not flap its wings very much, it can stay up in the air as it tags along after its trainer.'),
  -- natu in crystal
  (177, 17700, 6, 'It is extremely good at climbing tree trunks and likes to eat the new sprouts on the trees.'),
  -- xatu in crystal
  (178, 17800, 6, 'Once it begins to meditate at sunrise, the entire day will pass before it will move again.'),
  -- mareep in crystal
  (179, 17900, 6, 'It stores lots of air in its soft fur, allowing it to stay cool in summer and warm in winter.'),
  -- flaaffy in crystal
  (180, 18000, 6, 'Because of its rubbery, electricity-resistant skin, it can store lots of electricity in its fur.'),
  -- ampharos in crystal
  (181, 18100, 6, 'When it gets dark, the light from its bright, shiny tail can be seen from far away on the ocean''s surface.'),
  -- bellossom in crystal
  (182, 18200, 6, 'When these dance together, their petals rub against each other, making pretty, relaxing sounds.'),
  -- marill in crystal
  (183, 18300, 6, 'The fur on its body naturally repels water. It can stay dry, even when it plays in the water.'),
  -- azumarill in crystal
  (184, 18400, 6, 'The bubble-like pattern on its stomach helps it camouflage itself when it''s in the water.'),
  -- sudowoodo in crystal
  (185, 18500, 6, 'If a tree branch shakes when there is no wind, it''s a SUDOWOODO, not a tree. It hides from the rain.'),
  -- politoed in crystal
  (186, 18600, 6, 'When it expands its throat to croak out a tune, nearby POLIWAG and POLIWHIRL gather immediately.'),
  -- hoppip in crystal
  (187, 18700, 6, 'It can be carried away on even the gentlest breeze. It may even float all the way to the next town.'),
  -- skiploom in crystal
  (188, 18800, 6, 'As soon as it rains, it closes its flower and hides in the shade of a tree to avoid getting wet.'),
  -- jumpluff in crystal
  (189, 18900, 6, 'Even in the fiercest wind, it can control its fluff to make its way to any place in the world it wants.'),
  -- aipom in crystal
  (190, 19000, 6, 'It uses its tail to hang on to tree branches. It uses its momentum to swing from one branch to another.'),
  -- sunkern in crystal
  (191, 19100, 6, 'It is very weak. Its only means of defense is to shake its leaves desperately at its attacker.'),
  -- sunflora in crystal
  (192, 19200, 6, 'As the hot season approaches, the petals on this POKéMON''s face become more vivid and lively.'),
  -- yanma in crystal
  (193, 19300, 6, 'It can see in all directions without moving its big eyes, helping it spot attackers and food right away.'),
  -- wooper in crystal
  (194, 19400, 6, 'A mucous membrane covers its body. Touching it barehanded will cause a shooting pain.'),
  -- quagsire in crystal
  (195, 19500, 6, 'Its body is always slimy. It often bangs its head on the river bottom as it swims but seems not to care.'),
  -- espeon in crystal
  (196, 19600, 6, 'The tip of its forked tail quivers when it is predicting its opponent''s next move.'),
  -- umbreon in crystal
  (197, 19700, 6, 'On the night of a full moon, or when it gets excited, the ring patterns on its body glow yellow.'),
  -- murkrow in crystal
  (198, 19800, 6, 'It hides any shiny object it finds in a secret location. MURKROW and MEOWTH loot one another''s stashes.'),
  -- slowking in crystal
  (199, 19900, 6, 'Every time it yawns, SHELLDER injects more poi son into it. The poison makes it more intelligent.'),
  -- misdreavus in crystal
  (200, 20000, 6, 'It loves to watch people it''s scared. It frightens them by screaming loudly or appearing suddenly.'),
  -- unown in crystal
  (201, 20100, 6, 'Because different types of UNOWN exist, it is said that they must have a variety of abilities.'),
  -- wobbuffet in crystal
  (202, 20200, 6, 'In order to conceal its black tail, it lives in a dark cave and only moves about at night.'),
  -- girafarig in crystal
  (203, 20300, 6, 'When it is in danger, its tail uses some sort of mysterious powers to drive away the enemy.'),
  -- pineco in crystal
  (204, 20400, 6, 'It spits out a fluid that it uses to glue tree bark to its body. The fluid hardens when it touches air.'),
  -- forretress in crystal
  (205, 20500, 6, 'Usually found hanging on to a fat tree trunk. It shoots out bits of its shell when it sees action.'),
  -- dunsparce in crystal
  (206, 20600, 6, 'It hides deep inside caves where no light ever reaches it and remains virtually motionless there.'),
  -- gligar in crystal
  (207, 20700, 6, 'It builds its nest on a steep cliff. When it is done gliding, it hops along the ground back to its nest.'),
  -- steelix in crystal
  (208, 20800, 6, 'The many small metal particles that cover this POKéMON''s body reflect bright light well.'),
  -- snubbull in crystal
  (209, 20900, 6, 'In truth, it is a cowardly POKéMON. It growls eagerly in order to hide its fear from its opponent.'),
  -- granbull in crystal
  (210, 21000, 6, 'It can make most any POKéMON run away simply by opening its mouth wide to reveal its big fangs.'),
  -- qwilfish in crystal
  (211, 21100, 6, 'When faced with a larger opponent, it swallows as much water as it can to match the opponent''s size.'),
  -- scizor in crystal
  (212, 21200, 6, 'This POKéMON''s pincers, which contain steel, can crush any hard object it gets a hold of into bits.'),
  -- shuckle in crystal
  (213, 21300, 6, 'The fluid secreted by its toes carves holes in rocks for nesting and can be mixed with BERRIES to make a drink.'),
  -- heracross in crystal
  (214, 21400, 6, 'With its Herculean powers, it can easily throw arou nd an object that is 100 times its own weight.'),
  -- sneasel in crystal
  (215, 21500, 6, 'This cunning POKéMON hides under the cover of darkness, waiting to attack its prey.'),
  -- teddiursa in crystal
  (216, 21600, 6, 'It always licks honey. Its palm tastes sweet because of all the honey it has absorbed.'),
  -- ursaring in crystal
  (217, 21700, 6, 'Although it has a large body, it is quite skilled at climbing trees. It eats and sleeps in the treetops.'),
  -- slugma in crystal
  (218, 21800, 6, 'These group together in areas that are hotter than normal. If it cools off, its skin hardens.'),
  -- magcargo in crystal
  (219, 21900, 6, 'Its body is as hot as lava and is always billowing. Flames will occasionally burst from its shell.'),
  -- swinub in crystal
  (220, 22000, 6, 'It uses the tip of its nose to dig for food. Its nose is so tough that even frozen ground poses no problem.'),
  -- piloswine in crystal
  (221, 22100, 6, 'Although its legs are short, its rugged hooves prevent it from slipping, even on icy ground.'),
  -- corsola in crystal
  (222, 22200, 6, 'The points on its head absorb nutrients from clean water. They cannot survive in polluted water.'),
  -- remoraid in crystal
  (223, 22300, 6, 'To escape from an attacker, it may shoot water out of its mouth, then use that force to swim backward.'),
  -- octillery in crystal
  (224, 22400, 6, 'Its instinct is to bury itself in holes. It often steals the nesting holes of others to sleep in them.'),
  -- delibird in crystal
  (225, 22500, 6, 'It always carries its food with it, wherever it goes. If attacked, it throws its food at the opponent.'),
  -- mantine in crystal
  (226, 22600, 6, 'It swims along freely, eating things that swim into its mouth. Its whole body is very coarse.'),
  -- skarmory in crystal
  (227, 22700, 6, 'The feathers that it sheds are very sharp. It is said that people once used the feathers as swords.'),
  -- houndour in crystal
  (228, 22800, 6, 'Around dawn, its ominous howl echoes through the area to announce that this is its territory.'),
  -- houndoom in crystal
  (229, 22900, 6, 'The pungent- smelling flame that shoots from its mouth results from toxins burning in its body.'),
  -- kingdra in crystal
  (230, 23000, 6, 'It stores energy by sleeping at underwater depths at which no other life forms can survive.'),
  -- phanpy in crystal
  (231, 23100, 6, 'During the deserted morning hours, it comes ashore where it deftly uses its trunk to take a shower.'),
  -- donphan in crystal
  (232, 23200, 6, 'Because this POKéMON''s skin is so tough, a normal attack won''t even leave a scratch on it.'),
  -- porygon2 in crystal
  (233, 23300, 6, 'This manmade POKéMON evolved from the latest technology. It may have unprogrammed reactions.'),
  -- stantler in crystal
  (234, 23400, 6, 'The round balls found on the fallen antlers can be ground into a powder that aids in sleeping.'),
  -- smeargle in crystal
  (235, 23500, 6, 'The color of the mysterious fluid secreted from its tail is predetermined for each SMEARGLE.'),
  -- tyrogue in crystal
  (236, 23600, 6, 'To brush up on its fighting skills, it will challenge anyone. It has a very strong competitive spirit.'),
  -- hitmontop in crystal
  (237, 23700, 6, 'After doing a handstand to throw off the opponent''s timing, it presents its fancy kick moves.'),
  -- smoochum in crystal
  (238, 23800, 6, 'The sensitivity of its lips develops most quickly. It uses them to try to identify unknown objects.'),
  -- elekid in crystal
  (239, 23900, 6, 'It loves violent thunder. The space between its horns flickers bluish- white when it is charging energy.'),
  -- magby in crystal
  (240, 24000, 6, 'It naturally spits an 1100-degree flame. It is said when many appear, it heralds a volcanic eruption.'),
  -- miltank in crystal
  (241, 24100, 6, 'In order to milk a MILTANK, one must have a knack for rhythmically pulling up and down on its udders.'),
  -- blissey in crystal
  (242, 24200, 6, 'Biting into one of the delicious eggs that BLISSEY provides will make everyone around smile with joy.'),
  -- raikou in crystal
  (243, 24300, 6, 'This rough POKéMON stores energy inside its body, then sweeps across the land, shooting off electricity.'),
  -- entei in crystal
  (244, 24400, 6, 'This brawny POKéMON courses around the earth, spouting flames hotter than a volcano''s magma.'),
  -- suicune in crystal
  (245, 24500, 6, 'This divine POKéMON blows around the world, always in search of a pure reservoir.'),
  -- larvitar in crystal
  (246, 24600, 6, 'Born deep underground, this POKéMON becomes a pupa after eating enough dirt to make a mountain.'),
  -- pupitar in crystal
  (247, 24700, 6, 'It will not stay still, even while it''s a pupa. It already has arms and legs under its solid shell.'),
  -- tyranitar in crystal
  (248, 24800, 6, 'In just one of its mighty hands, it has the power to make the ground shake and mountains crumble.'),
  -- lugia in crystal
  (249, 24900, 6, 'It has an incredible ability to calm raging sto rms. It is said that LUGIA appears when storms start.'),
  -- ho-oh in crystal
  (250, 25000, 6, 'It will reveal itself before a pure-hearted trainer by shining its bright rainbow-colored wings.'),
  -- celebi in crystal
  (251, 25100, 6, 'Revered as a guardian of the forest, CELEBI appears wherever beautiful forests exist.');
