-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 1 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in red
  (1, 100, 1, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.'),
  -- ivysaur in red
  (2, 200, 1, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.'),
  -- venusaur in red
  (3, 300, 1, 'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.'),
  -- charmander in red
  (4, 400, 1, 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.'),
  -- charmeleon in red
  (5, 500, 1, 'When it swings its burning tail, it elevates the temperature to unbearably high levels.'),
  -- charizard in red
  (6, 600, 1, 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.'),
  -- squirtle in red
  (7, 700, 1, 'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.'),
  -- wartortle in red
  (8, 800, 1, 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.'),
  -- blastoise in red
  (9, 900, 1, 'A brutal POKéMON with pressurized water jets on its shell. They are used for high speed tackles.'),
  -- caterpie in red
  (10, 1000, 1, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.'),
  -- metapod in red
  (11, 1100, 1, 'This POKéMON is vulnerable to attack while its shell is soft, exposing its weak and tender body.'),
  -- butterfree in red
  (12, 1200, 1, 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.'),
  -- weedle in red
  (13, 1300, 1, 'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.'),
  -- kakuna in red
  (14, 1400, 1, 'Almost incapable of moving, this POKéMON can only harden its shell to protect itself from predators.'),
  -- beedrill in red
  (15, 1500, 1, 'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.'),
  -- pidgey in red
  (16, 1600, 1, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.'),
  -- pidgeotto in red
  (17, 1700, 1, 'Very protective of its sprawling territorial area, this POKéMON will fiercely peck at any intruder.'),
  -- pidgeot in red
  (18, 1800, 1, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as MAGIKARP.'),
  -- rattata in red
  (19, 1900, 1, 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.'),
  -- raticate in red
  (20, 2000, 1, 'It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.'),
  -- spearow in red
  (21, 2100, 1, 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.'),
  -- fearow in red
  (22, 2200, 1, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.'),
  -- ekans in red
  (23, 2300, 1, 'Moves silently and stealthily. Eats the eggs of birds, such as PIDGEY and SPEAROW, whole.'),
  -- arbok in red
  (24, 2400, 1, 'It is rumored that the ferocious warning markings on its belly differ from area to area.'),
  -- pikachu in red
  (25, 2500, 1, 'When several of these POKéMON gather, their electricity could build and cause lightning storms.'),
  -- raichu in red
  (26, 2600, 1, 'Its long tail serves as a ground to protect itself from its own high voltage power.'),
  -- sandshrew in red
  (27, 2700, 1, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.'),
  -- sandslash in red
  (28, 2800, 1, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.'),
  -- nidoran-f in red
  (29, 2900, 1, 'Although small, its venomous barbs render this POKéMON dangerous. The female has smaller horns.'),
  -- nidorina in red
  (30, 3000, 1, 'The female''s horn develops slowly. Prefers physical attacks such as clawing and biting.'),
  -- nidoqueen in red
  (31, 3100, 1, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.'),
  -- nidoran-m in red
  (32, 3200, 1, 'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.'),
  -- nidorino in red
  (33, 3300, 1, 'An aggressive POKéMON that is quick to attack. The horn on its head secretes a powerful venom.'),
  -- nidoking in red
  (34, 3400, 1, 'It uses its powerful tail in battle to smash, constrict, then break the prey''s bones.'),
  -- clefairy in red
  (35, 3500, 1, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.'),
  -- clefable in red
  (36, 3600, 1, 'A timid fairy POKéMON that is rarely seen. It will run and hide the moment it senses people.'),
  -- vulpix in red
  (37, 3700, 1, 'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.'),
  -- ninetales in red
  (38, 3800, 1, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.'),
  -- jigglypuff in red
  (39, 3900, 1, 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.'),
  -- wigglytuff in red
  (40, 4000, 1, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.'),
  -- zubat in red
  (41, 4100, 1, 'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.'),
  -- golbat in red
  (42, 4200, 1, 'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.'),
  -- oddish in red
  (43, 4300, 1, 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.'),
  -- gloom in red
  (44, 4400, 1, 'The fluid that oozes from its mouth isn''t drool. It is a nectar that is used to attract prey.'),
  -- vileplume in red
  (45, 4500, 1, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.'),
  -- paras in red
  (46, 4600, 1, 'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.'),
  -- parasect in red
  (47, 4700, 1, 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.'),
  -- venonat in red
  (48, 4800, 1, 'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.'),
  -- venomoth in red
  (49, 4900, 1, 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.'),
  -- diglett in red
  (50, 5000, 1, 'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.'),
  -- dugtrio in red
  (51, 5100, 1, 'A team of DIGLETT triplets. It triggers huge earthquakes by burrowing 60 miles underground.'),
  -- meowth in red
  (52, 5200, 1, 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.'),
  -- persian in red
  (53, 5300, 1, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.'),
  -- psyduck in red
  (54, 5400, 1, 'While lulling its enemies with its vacant look, this wily POKéMON will use psychokinetic powers.'),
  -- golduck in red
  (55, 5500, 1, 'Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.'),
  -- mankey in red
  (56, 5600, 1, 'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.'),
  -- primeape in red
  (57, 5700, 1, 'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.'),
  -- growlithe in red
  (58, 5800, 1, 'Very protective of its territory. It will bark and bite to repel intruders from its space.'),
  -- arcanine in red
  (59, 5900, 1, 'A POKéMON that has been admired since the past for its beauty. It runs agilely as if on wings.'),
  -- poliwag in red
  (60, 6000, 1, 'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.'),
  -- poliwhirl in red
  (61, 6100, 1, 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.'),
  -- poliwrath in red
  (62, 6200, 1, 'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.'),
  -- abra in red
  (63, 6300, 1, 'Using its ability to read minds, it will identify impending danger and TELEPORT to safety.'),
  -- kadabra in red
  (64, 6400, 1, 'It emits special alpha waves from its body that induce headaches just by being close by.'),
  -- alakazam in red
  (65, 6500, 1, 'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.'),
  -- machop in red
  (66, 6600, 1, 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.'),
  -- machoke in red
  (67, 6700, 1, 'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.'),
  -- machamp in red
  (68, 6800, 1, 'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.'),
  -- bellsprout in red
  (69, 6900, 1, 'A carnivorous POKéMON that traps and eats bugs. It uses its root feet to soak up needed moisture.'),
  -- weepinbell in red
  (70, 7000, 1, 'It spits out POISONPOWDER to immobilize the enemy and then finishes it with a spray of ACID.'),
  -- victreebel in red
  (71, 7100, 1, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.'),
  -- tentacool in red
  (72, 7200, 1, 'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.'),
  -- tentacruel in red
  (73, 7300, 1, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.'),
  -- geodude in red
  (74, 7400, 1, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.'),
  -- graveler in red
  (75, 7500, 1, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.'),
  -- golem in red
  (76, 7600, 1, 'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.'),
  -- ponyta in red
  (77, 7700, 1, 'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.'),
  -- rapidash in red
  (78, 7800, 1, 'Very competitive, this POKéMON will chase anything that moves fast in the hopes of racing it.'),
  -- slowpoke in red
  (79, 7900, 1, 'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.'),
  -- slowbro in red
  (80, 8000, 1, 'The SHELLDER that is latched onto SLOWPOKE''s tail is said to feed on the host''s left over scraps.'),
  -- magnemite in red
  (81, 8100, 1, 'Uses anti-gravity to stay suspended. Appears without warning and uses THUNDER WAVE and similar moves.'),
  -- magneton in red
  (82, 8200, 1, 'Formed by several MAGNEMITEs linked together. They frequently appear when sunspots flare up.'),
  -- farfetchd in red
  (83, 8300, 1, 'The sprig of green onions it holds is its weapon. It is used much like a metal sword.'),
  -- doduo in red
  (84, 8400, 1, 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.'),
  -- dodrio in red
  (85, 8500, 1, 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.'),
  -- seel in red
  (86, 8600, 1, 'The protruding horn on its head is very hard. It is used for bashing through thick ice.'),
  -- dewgong in red
  (87, 8700, 1, 'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.'),
  -- grimer in red
  (88, 8800, 1, 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.'),
  -- muk in red
  (89, 8900, 1, 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.'),
  -- shellder in red
  (90, 9000, 1, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.'),
  -- cloyster in red
  (91, 9100, 1, 'When attacked, it launches its horns in quick volleys. Its innards have never been seen.'),
  -- gastly in red
  (92, 9200, 1, 'Almost invisible, this gaseous POKéMON cloaks the target and puts it to sleep without notice.'),
  -- haunter in red
  (93, 9300, 1, 'Because of its ability to slip through block walls, it is said to be from another dimension.'),
  -- gengar in red
  (94, 9400, 1, 'Under a full moon, this POKéMON likes to mimic the shadows of people and laugh at their fright.'),
  -- onix in red
  (95, 9500, 1, 'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.'),
  -- drowzee in red
  (96, 9600, 1, 'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.'),
  -- hypno in red
  (97, 9700, 1, 'When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.'),
  -- krabby in red
  (98, 9800, 1, 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.'),
  -- kingler in red
  (99, 9900, 1, 'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.'),
  -- voltorb in red
  (100, 10000, 1, 'Usually found in power plants. Easily mistaken for a POKé BALL, they have zapped many people.'),
  -- electrode in red
  (101, 10100, 1, 'It stores electric energy under very high pressure. It often explodes with little or no provocation.'),
  -- exeggcute in red
  (102, 10200, 1, 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.'),
  -- exeggutor in red
  (103, 10300, 1, 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an EXEGGCUTE.'),
  -- cubone in red
  (104, 10400, 1, 'Because it never removes its skull helmet, no one has ever seen this POKéMON''s real face.'),
  -- marowak in red
  (105, 10500, 1, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.'),
  -- hitmonlee in red
  (106, 10600, 1, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.'),
  -- hitmonchan in red
  (107, 10700, 1, 'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.'),
  -- lickitung in red
  (108, 10800, 1, 'Its tongue can be extended like a chameleon''s. It leaves a tingling sensation when it licks enemies.'),
  -- koffing in red
  (109, 10900, 1, 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.'),
  -- weezing in red
  (110, 11000, 1, 'Where two kinds of poison gases meet, 2 KOFFINGs can fuse into a WEEZING over many years.'),
  -- rhyhorn in red
  (111, 11100, 1, 'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.'),
  -- rhydon in red
  (112, 11200, 1, 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.'),
  -- chansey in red
  (113, 11300, 1, 'A rare and elusive POKéMON that is said to bring happiness to those who manage to get it.'),
  -- tangela in red
  (114, 11400, 1, 'The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.'),
  -- kangaskhan in red
  (115, 11500, 1, 'The infant rarely ventures out of its mother''s protective pouch until it is 3 years old.'),
  -- horsea in red
  (116, 11600, 1, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.'),
  -- seadra in red
  (117, 11700, 1, 'Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.'),
  -- goldeen in red
  (118, 11800, 1, 'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.'),
  -- seaking in red
  (119, 11900, 1, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.'),
  -- staryu in red
  (120, 12000, 1, 'An enigmatic POKéMON that can effortlessly regenerate any appendage it loses in battle.'),
  -- starmie in red
  (121, 12100, 1, 'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.'),
  -- mr-mime in red
  (122, 12200, 1, 'If interrupted while it is miming, it will slap around the offender with its broad hands.'),
  -- scyther in red
  (123, 12300, 1, 'With ninja-like agility and speed, it can create the illusion that there is more than one.'),
  -- jynx in red
  (124, 12400, 1, 'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.'),
  -- electabuzz in red
  (125, 12500, 1, 'Normally found near power plants, they can wander away and cause major blackouts in cities.'),
  -- magmar in red
  (126, 12600, 1, 'Its body always burns with an orange glow that enables it to hide perfectly among flames.'),
  -- pinsir in red
  (127, 12700, 1, 'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.'),
  -- tauros in red
  (128, 12800, 1, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.'),
  -- magikarp in red
  (129, 12900, 1, 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.'),
  -- gyarados in red
  (130, 13000, 1, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.'),
  -- lapras in red
  (131, 13100, 1, 'A POKéMON that has been overhunted almost to extinction. It can ferry people across the water.'),
  -- ditto in red
  (132, 13200, 1, 'Capable of copying an enemy''s genetic code to instantly transform itself into a duplicate of the enemy.'),
  -- eevee in red
  (133, 13300, 1, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from element STONEs.'),
  -- vaporeon in red
  (134, 13400, 1, 'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid''s.'),
  -- jolteon in red
  (135, 13500, 1, 'It accumulates negative ions in the atmosphere to blast out 10000- volt lightning bolts.'),
  -- flareon in red
  (136, 13600, 1, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.'),
  -- porygon in red
  (137, 13700, 1, 'A POKéMON that consists entirely of programming code. Capable of moving freely in cyberspace.'),
  -- omanyte in red
  (138, 13800, 1, 'Although long extinct, in rare cases, it can be genetically resurrected from fossils.'),
  -- omastar in red
  (139, 13900, 1, 'A prehistoric POKéMON that died out when its heavy shell made it impossible to catch prey.'),
  -- kabuto in red
  (140, 14000, 1, 'A POKéMON that was resurrected from a fossil found in what was once the ocean floor eons ago.'),
  -- kabutops in red
  (141, 14100, 1, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.'),
  -- aerodactyl in red
  (142, 14200, 1, 'A ferocious, prehistoric POKéMON that goes for the enemy''s throat with its serrated saw-like fangs.'),
  -- snorlax in red
  (143, 14300, 1, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.'),
  -- articuno in red
  (144, 14400, 1, 'A legendary bird POKéMON that is said to appear to doomed people who are lost in icy mountains.'),
  -- zapdos in red
  (145, 14500, 1, 'A legendary bird POKéMON that is said to appear from clouds while dropping enormous lightning bolts.'),
  -- moltres in red
  (146, 14600, 1, 'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.'),
  -- dratini in red
  (147, 14700, 1, 'Long considered a mythical POKéMON until recently when a small colony was found living underwater.'),
  -- dragonair in red
  (148, 14800, 1, 'A mystical POKéMON that exudes a gentle aura. Has the ability to change climate conditions.'),
  -- dragonite in red
  (149, 14900, 1, 'An extremely rarely seen marine POKéMON. Its intelligence is said to match that of humans.'),
  -- mewtwo in red
  (150, 15000, 1, 'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.'),
  -- mew in red
  (151, 15100, 1, 'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.'),
  -- bulbasaur in blue
  (1, 100, 2, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.'),
  -- ivysaur in blue
  (2, 200, 2, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.'),
  -- venusaur in blue
  (3, 300, 2, 'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.'),
  -- charmander in blue
  (4, 400, 2, 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.'),
  -- charmeleon in blue
  (5, 500, 2, 'When it swings its burning tail, it elevates the temperature to unbearably high levels.'),
  -- charizard in blue
  (6, 600, 2, 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.'),
  -- squirtle in blue
  (7, 700, 2, 'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.'),
  -- wartortle in blue
  (8, 800, 2, 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.'),
  -- blastoise in blue
  (9, 900, 2, 'A brutal POKéMON with pressurized water jets on its shell. They are used for high speed tackles.'),
  -- caterpie in blue
  (10, 1000, 2, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.'),
  -- metapod in blue
  (11, 1100, 2, 'This POKéMON is vulnerable to attack while its shell is soft, exposing its weak and tender body.'),
  -- butterfree in blue
  (12, 1200, 2, 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.'),
  -- weedle in blue
  (13, 1300, 2, 'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.'),
  -- kakuna in blue
  (14, 1400, 2, 'Almost incapable of moving, this POKéMON can only harden its shell to protect itself from predators.'),
  -- beedrill in blue
  (15, 1500, 2, 'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.'),
  -- pidgey in blue
  (16, 1600, 2, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.'),
  -- pidgeotto in blue
  (17, 1700, 2, 'Very protective of its sprawling territorial area, this POKéMON will fiercely peck at any intruder.'),
  -- pidgeot in blue
  (18, 1800, 2, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as MAGIKARP.'),
  -- rattata in blue
  (19, 1900, 2, 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.'),
  -- raticate in blue
  (20, 2000, 2, 'It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.'),
  -- spearow in blue
  (21, 2100, 2, 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.'),
  -- fearow in blue
  (22, 2200, 2, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.'),
  -- ekans in blue
  (23, 2300, 2, 'Moves silently and stealthily. Eats the eggs of birds, such as PIDGEY and SPEAROW, whole.'),
  -- arbok in blue
  (24, 2400, 2, 'It is rumored that the ferocious warning markings on its belly differ from area to area.'),
  -- pikachu in blue
  (25, 2500, 2, 'When several of these POKéMON gather, their electricity could build and cause lightning storms.'),
  -- raichu in blue
  (26, 2600, 2, 'Its long tail serves as a ground to protect itself from its own high voltage power.'),
  -- sandshrew in blue
  (27, 2700, 2, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.'),
  -- sandslash in blue
  (28, 2800, 2, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.'),
  -- nidoran-f in blue
  (29, 2900, 2, 'Although small, its venomous barbs render this POKéMON dangerous. The female has smaller horns.'),
  -- nidorina in blue
  (30, 3000, 2, 'The female''s horn develops slowly. Prefers physical attacks such as clawing and biting.'),
  -- nidoqueen in blue
  (31, 3100, 2, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.'),
  -- nidoran-m in blue
  (32, 3200, 2, 'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.'),
  -- nidorino in blue
  (33, 3300, 2, 'An aggressive POKéMON that is quick to attack. The horn on its head secretes a powerful venom.'),
  -- nidoking in blue
  (34, 3400, 2, 'It uses its powerful tail in battle to smash, constrict, then break the prey''s bones.'),
  -- clefairy in blue
  (35, 3500, 2, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.'),
  -- clefable in blue
  (36, 3600, 2, 'A timid fairy POKéMON that is rarely seen. It will run and hide the moment it senses people.'),
  -- vulpix in blue
  (37, 3700, 2, 'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.'),
  -- ninetales in blue
  (38, 3800, 2, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.'),
  -- jigglypuff in blue
  (39, 3900, 2, 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.'),
  -- wigglytuff in blue
  (40, 4000, 2, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.'),
  -- zubat in blue
  (41, 4100, 2, 'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.'),
  -- golbat in blue
  (42, 4200, 2, 'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.'),
  -- oddish in blue
  (43, 4300, 2, 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.'),
  -- gloom in blue
  (44, 4400, 2, 'The fluid that oozes from its mouth isn''t drool. It is a nectar that is used to attract prey.'),
  -- vileplume in blue
  (45, 4500, 2, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.'),
  -- paras in blue
  (46, 4600, 2, 'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.'),
  -- parasect in blue
  (47, 4700, 2, 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.'),
  -- venonat in blue
  (48, 4800, 2, 'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.'),
  -- venomoth in blue
  (49, 4900, 2, 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.'),
  -- diglett in blue
  (50, 5000, 2, 'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.'),
  -- dugtrio in blue
  (51, 5100, 2, 'A team of DIGLETT triplets. It triggers huge earthquakes by burrowing 60 miles underground.'),
  -- meowth in blue
  (52, 5200, 2, 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.'),
  -- persian in blue
  (53, 5300, 2, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.'),
  -- psyduck in blue
  (54, 5400, 2, 'While lulling its enemies with its vacant look, this wily POKéMON will use psychokinetic powers.'),
  -- golduck in blue
  (55, 5500, 2, 'Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.'),
  -- mankey in blue
  (56, 5600, 2, 'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.'),
  -- primeape in blue
  (57, 5700, 2, 'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.'),
  -- growlithe in blue
  (58, 5800, 2, 'Very protective of its territory. It will bark and bite to repel intruders from its space.'),
  -- arcanine in blue
  (59, 5900, 2, 'A POKéMON that has been admired since the past for its beauty. It runs agilely as if on wings.'),
  -- poliwag in blue
  (60, 6000, 2, 'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.'),
  -- poliwhirl in blue
  (61, 6100, 2, 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.'),
  -- poliwrath in blue
  (62, 6200, 2, 'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.'),
  -- abra in blue
  (63, 6300, 2, 'Using its ability to read minds, it will identify impending danger and TELEPORT to safety.'),
  -- kadabra in blue
  (64, 6400, 2, 'It emits special alpha waves from its body that induce headaches just by being close by.'),
  -- alakazam in blue
  (65, 6500, 2, 'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.'),
  -- machop in blue
  (66, 6600, 2, 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.'),
  -- machoke in blue
  (67, 6700, 2, 'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.'),
  -- machamp in blue
  (68, 6800, 2, 'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.'),
  -- bellsprout in blue
  (69, 6900, 2, 'A carnivorous POKéMON that traps and eats bugs. It uses its root feet to soak up needed moisture.'),
  -- weepinbell in blue
  (70, 7000, 2, 'It spits out POISONPOWDER to immobilize the enemy and then finishes it with a spray of ACID.'),
  -- victreebel in blue
  (71, 7100, 2, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.'),
  -- tentacool in blue
  (72, 7200, 2, 'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.'),
  -- tentacruel in blue
  (73, 7300, 2, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.'),
  -- geodude in blue
  (74, 7400, 2, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.'),
  -- graveler in blue
  (75, 7500, 2, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.'),
  -- golem in blue
  (76, 7600, 2, 'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.'),
  -- ponyta in blue
  (77, 7700, 2, 'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.'),
  -- rapidash in blue
  (78, 7800, 2, 'Very competitive, this POKéMON will chase anything that moves fast in the hopes of racing it.'),
  -- slowpoke in blue
  (79, 7900, 2, 'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.'),
  -- slowbro in blue
  (80, 8000, 2, 'The SHELLDER that is latched onto SLOWPOKE''s tail is said to feed on the host''s left over scraps.'),
  -- magnemite in blue
  (81, 8100, 2, 'Uses anti-gravity to stay suspended. Appears without warning and uses THUNDER WAVE and similar moves.'),
  -- magneton in blue
  (82, 8200, 2, 'Formed by several MAGNEMITEs linked together. They frequently appear when sunspots flare up.'),
  -- farfetchd in blue
  (83, 8300, 2, 'The sprig of green onions it holds is its weapon. It is used much like a metal sword.'),
  -- doduo in blue
  (84, 8400, 2, 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.'),
  -- dodrio in blue
  (85, 8500, 2, 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.'),
  -- seel in blue
  (86, 8600, 2, 'The protruding horn on its head is very hard. It is used for bashing through thick ice.'),
  -- dewgong in blue
  (87, 8700, 2, 'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.'),
  -- grimer in blue
  (88, 8800, 2, 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.'),
  -- muk in blue
  (89, 8900, 2, 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.'),
  -- shellder in blue
  (90, 9000, 2, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.'),
  -- cloyster in blue
  (91, 9100, 2, 'When attacked, it launches its horns in quick volleys. Its innards have never been seen.'),
  -- gastly in blue
  (92, 9200, 2, 'Almost invisible, this gaseous POKéMON cloaks the target and puts it to sleep without notice.'),
  -- haunter in blue
  (93, 9300, 2, 'Because of its ability to slip through block walls, it is said to be from another dimension.'),
  -- gengar in blue
  (94, 9400, 2, 'Under a full moon, this POKéMON likes to mimic the shadows of people and laugh at their fright.'),
  -- onix in blue
  (95, 9500, 2, 'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.'),
  -- drowzee in blue
  (96, 9600, 2, 'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.'),
  -- hypno in blue
  (97, 9700, 2, 'When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.'),
  -- krabby in blue
  (98, 9800, 2, 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.'),
  -- kingler in blue
  (99, 9900, 2, 'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.'),
  -- voltorb in blue
  (100, 10000, 2, 'Usually found in power plants. Easily mistaken for a POKé BALL, they have zapped many people.'),
  -- electrode in blue
  (101, 10100, 2, 'It stores electric energy under very high pressure. It often explodes with little or no provocation.'),
  -- exeggcute in blue
  (102, 10200, 2, 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.'),
  -- exeggutor in blue
  (103, 10300, 2, 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an EXEGGCUTE.'),
  -- cubone in blue
  (104, 10400, 2, 'Because it never removes its skull helmet, no one has ever seen this POKéMON''s real face.'),
  -- marowak in blue
  (105, 10500, 2, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.'),
  -- hitmonlee in blue
  (106, 10600, 2, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.'),
  -- hitmonchan in blue
  (107, 10700, 2, 'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.'),
  -- lickitung in blue
  (108, 10800, 2, 'Its tongue can be extended like a chameleon''s. It leaves a tingling sensation when it licks enemies.'),
  -- koffing in blue
  (109, 10900, 2, 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.'),
  -- weezing in blue
  (110, 11000, 2, 'Where two kinds of poison gases meet, 2 KOFFINGs can fuse into a WEEZING over many years.'),
  -- rhyhorn in blue
  (111, 11100, 2, 'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.'),
  -- rhydon in blue
  (112, 11200, 2, 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.'),
  -- chansey in blue
  (113, 11300, 2, 'A rare and elusive POKéMON that is said to bring happiness to those who manage to get it.'),
  -- tangela in blue
  (114, 11400, 2, 'The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.'),
  -- kangaskhan in blue
  (115, 11500, 2, 'The infant rarely ventures out of its mother''s protective pouch until it is 3 years old.'),
  -- horsea in blue
  (116, 11600, 2, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.'),
  -- seadra in blue
  (117, 11700, 2, 'Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.'),
  -- goldeen in blue
  (118, 11800, 2, 'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.'),
  -- seaking in blue
  (119, 11900, 2, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.'),
  -- staryu in blue
  (120, 12000, 2, 'An enigmatic POKéMON that can effortlessly regenerate any appendage it loses in battle.'),
  -- starmie in blue
  (121, 12100, 2, 'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.'),
  -- mr-mime in blue
  (122, 12200, 2, 'If interrupted while it is miming, it will slap around the offender with its broad hands.'),
  -- scyther in blue
  (123, 12300, 2, 'With ninja-like agility and speed, it can create the illusion that there is more than one.'),
  -- jynx in blue
  (124, 12400, 2, 'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.'),
  -- electabuzz in blue
  (125, 12500, 2, 'Normally found near power plants, they can wander away and cause major blackouts in cities.'),
  -- magmar in blue
  (126, 12600, 2, 'Its body always burns with an orange glow that enables it to hide perfectly among flames.'),
  -- pinsir in blue
  (127, 12700, 2, 'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.'),
  -- tauros in blue
  (128, 12800, 2, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.'),
  -- magikarp in blue
  (129, 12900, 2, 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.'),
  -- gyarados in blue
  (130, 13000, 2, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.'),
  -- lapras in blue
  (131, 13100, 2, 'A POKéMON that has been overhunted almost to extinction. It can ferry people across the water.'),
  -- ditto in blue
  (132, 13200, 2, 'Capable of copying an enemy''s genetic code to instantly transform itself into a duplicate of the enemy.'),
  -- eevee in blue
  (133, 13300, 2, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from element STONEs.'),
  -- vaporeon in blue
  (134, 13400, 2, 'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid''s.'),
  -- jolteon in blue
  (135, 13500, 2, 'It accumulates negative ions in the atmosphere to blast out 10000- volt lightning bolts.'),
  -- flareon in blue
  (136, 13600, 2, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.'),
  -- porygon in blue
  (137, 13700, 2, 'A POKéMON that consists entirely of programming code. Capable of moving freely in cyberspace.'),
  -- omanyte in blue
  (138, 13800, 2, 'Although long extinct, in rare cases, it can be genetically resurrected from fossils.'),
  -- omastar in blue
  (139, 13900, 2, 'A prehistoric POKéMON that died out when its heavy shell made it impossible to catch prey.'),
  -- kabuto in blue
  (140, 14000, 2, 'A POKéMON that was resurrected from a fossil found in what was once the ocean floor eons ago.'),
  -- kabutops in blue
  (141, 14100, 2, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.'),
  -- aerodactyl in blue
  (142, 14200, 2, 'A ferocious, prehistoric POKéMON that goes for the enemy''s throat with its serrated saw-like fangs.'),
  -- snorlax in blue
  (143, 14300, 2, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.'),
  -- articuno in blue
  (144, 14400, 2, 'A legendary bird POKéMON that is said to appear to doomed people who are lost in icy mountains.'),
  -- zapdos in blue
  (145, 14500, 2, 'A legendary bird POKéMON that is said to appear from clouds while dropping enormous lightning bolts.'),
  -- moltres in blue
  (146, 14600, 2, 'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.'),
  -- dratini in blue
  (147, 14700, 2, 'Long considered a mythical POKéMON until recently when a small colony was found living underwater.'),
  -- dragonair in blue
  (148, 14800, 2, 'A mystical POKéMON that exudes a gentle aura. Has the ability to change climate conditions.'),
  -- dragonite in blue
  (149, 14900, 2, 'An extremely rarely seen marine POKéMON. Its intelligence is said to match that of humans.'),
  -- mewtwo in blue
  (150, 15000, 2, 'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.'),
  -- mew in blue
  (151, 15100, 2, 'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.'),
  -- bulbasaur in yellow
  (1, 100, 3, 'It can go for days without eating a single morsel. In the bulb on its back, it stores energy.'),
  -- ivysaur in yellow
  (2, 200, 3, 'The bulb on its back grows by drawing energy. It gives off an aroma when it is ready to bloom.'),
  -- venusaur in yellow
  (3, 300, 3, 'The flower on its back catches the sun''s rays. The sunlight is then absorbed and used for energy.'),
  -- charmander in yellow
  (4, 400, 3, 'The flame at the tip of its tail makes a sound as it burns. You can only hear it in quiet places.'),
  -- charmeleon in yellow
  (5, 500, 3, 'Tough fights could excite this POKéMON. When excited, it may blow out bluish- white flames.'),
  -- charizard in yellow
  (6, 600, 3, 'When expelling a blast of super hot fire, the red flame at the tip of its tail burns more intensely.'),
  -- squirtle in yellow
  (7, 700, 3, 'Shoots water at prey while in the water. Withdraws into its shell when in danger.'),
  -- wartortle in yellow
  (8, 800, 3, 'When tapped, this POKéMON will pull in its head, but its tail will still stick out a little bit.'),
  -- blastoise in yellow
  (9, 900, 3, 'Once it takes aim at its enemy, it blasts out water with even more force than a fire hose.'),
  -- caterpie in yellow
  (10, 1000, 3, 'If you touch the feeler on top of its head, it will release a horrible stink to protect itself.'),
  -- metapod in yellow
  (11, 1100, 3, 'Hardens its shell to protect itself. However, a large impact may cause it to pop out of its shell.'),
  -- butterfree in yellow
  (12, 1200, 3, 'Its wings, covered with poisonous powders, repel water. This allows it to fly in the rain.'),
  -- weedle in yellow
  (13, 1300, 3, 'Beware of the sharp stinger on its head. It hides in grass and bushes where it eats leaves.'),
  -- kakuna in yellow
  (14, 1400, 3, 'Able to move only slightly. When endangered, it may stick out its stinger and poison its enemy.'),
  -- beedrill in yellow
  (15, 1500, 3, 'It has 3 poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.'),
  -- pidgey in yellow
  (16, 1600, 3, 'Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.'),
  -- pidgeotto in yellow
  (17, 1700, 3, 'This POKéMON is full of vitality. It constantly flies around its large territory in search of prey.'),
  -- pidgeot in yellow
  (18, 1800, 3, 'This POKéMON flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons.'),
  -- rattata in yellow
  (19, 1900, 3, 'Will chew on anything with its fangs. If you see one, it is certain that 40 more live in the area.'),
  -- raticate in yellow
  (20, 2000, 3, 'Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey.'),
  -- spearow in yellow
  (21, 2100, 3, 'Inept at flying high. However, it can fly around very fast to protect its territory.'),
  -- fearow in yellow
  (22, 2200, 3, 'A POKéMON that dates back many years. If it senses danger, it flies high and away, instantly.'),
  -- ekans in yellow
  (23, 2300, 3, 'The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.'),
  -- arbok in yellow
  (24, 2400, 3, 'The frightening patterns on its belly have been studied. Six variations have been confirmed.'),
  -- pikachu in yellow
  (25, 2500, 3, 'It keeps its tail raised to monitor its surroundings. If you yank its tail, it will try to bite you.'),
  -- raichu in yellow
  (26, 2600, 3, 'When electricity builds up inside its body, it becomes feisty. It also glows in the dark.'),
  -- sandshrew in yellow
  (27, 2700, 3, 'Its body is dry. When it gets cold at night, its hide is said to become coated with a fine dew.'),
  -- sandslash in yellow
  (28, 2800, 3, 'It is skilled at slashing enemies with its claws. If broken, they start to grow back in a day.'),
  -- nidoran-f in yellow
  (29, 2900, 3, 'A mild-mannered POKéMON that does not like to fight. Beware, its small horns secrete venom.'),
  -- nidorina in yellow
  (30, 3000, 3, 'When resting deep in its burrow, its thorns always retract. This is proof that it is relaxed.'),
  -- nidoqueen in yellow
  (31, 3100, 3, 'Tough scales cover the sturdy body of this POKéMON. It appears that the scales grow in cycles.'),
  -- nidoran-m in yellow
  (32, 3200, 3, 'Its large ears are always kept upright. If it senses danger, it will attack with a poisonous sting.'),
  -- nidorino in yellow
  (33, 3300, 3, 'Its horns contain venom. If they are stabbed into an enemy, the impact makes the poison leak out.'),
  -- nidoking in yellow
  (34, 3400, 3, 'Its steel-like hide adds to its powerful tackle. Its horns are so hard, they can pierce a diamond.'),
  -- clefairy in yellow
  (35, 3500, 3, 'Adored for their cute looks and playfulness. They are thought to be rare, as they do not appear often.'),
  -- clefable in yellow
  (36, 3600, 3, 'They appear to be very protective of their own world. It is a kind of fairy, rarely seen by people.'),
  -- vulpix in yellow
  (37, 3700, 3, 'Both its fur and its tails are beautiful. As it grows, the tails split and form more tails.'),
  -- ninetales in yellow
  (38, 3800, 3, 'According to an enduring legend, 9 noble saints were united and reincarnated as this POKéMON.'),
  -- jigglypuff in yellow
  (39, 3900, 3, 'Uses its alluring eyes to enrapture its foe. It then sings a pleasing melody that lulls the foe to sleep.'),
  -- wigglytuff in yellow
  (40, 4000, 3, 'Its body is full of elasticity. By inhaling deeply, it can continue to inflate itself without limit.'),
  -- zubat in yellow
  (41, 4100, 3, 'Emits ultrasonic cries while it flies. They act as a sonar used to check for objects in its way.'),
  -- golbat in yellow
  (42, 4200, 3, 'It attacks in a stealthy manner, without warning. Its sharp fangs are used to bite and suck blood.'),
  -- oddish in yellow
  (43, 4300, 3, 'It may be mistaken for a clump of weeds. If you try to yank it out of the ground, it shrieks horribly.'),
  -- gloom in yellow
  (44, 4400, 3, 'Smells incredibly foul! However, around 1 out of 1,000 people enjoy sniffing its nose- bending stink.'),
  -- vileplume in yellow
  (45, 4500, 3, 'Flaps its broad flower petals to scatter its poisonous pollen. The flapping sound is very loud.'),
  -- paras in yellow
  (46, 4600, 3, 'Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.'),
  -- parasect in yellow
  (47, 4700, 3, 'The bug host is drained of energy by the mushrooms on its back. They appear to do all the thinking.'),
  -- venonat in yellow
  (48, 4800, 3, 'Its large eyes act as radars. In a bright place, you can see that they are clusters of many tiny eyes.'),
  -- venomoth in yellow
  (49, 4900, 3, 'The powdery scales on its wings are hard to remove. They also contain poison that leaks out on contact.'),
  -- diglett in yellow
  (50, 5000, 3, 'It prefers dark places. It spends most of its time underground, though it may pop up in caves.'),
  -- dugtrio in yellow
  (51, 5100, 3, 'A team of triplets that can burrow over 60 MPH. Due to this, some people think it''s an earthquake.'),
  -- meowth in yellow
  (52, 5200, 3, 'Appears to be more active at night. It loves round and shiny things. It can''t stop from picking them up.'),
  -- persian in yellow
  (53, 5300, 3, 'The gem in its forehead glows on its own! It walks with all the grace and elegance of a proud queen.'),
  -- psyduck in yellow
  (54, 5400, 3, 'Always tormented by headaches. It uses psychic powers, but it is not known if it intends to do so.'),
  -- golduck in yellow
  (55, 5500, 3, 'Its slim and long limbs end in broad flippers. They are used for swimming gracefully in lakes.'),
  -- mankey in yellow
  (56, 5600, 3, 'An agile POKéMON that lives in trees. It angers easily and will not hesitate to attack anything.'),
  -- primeape in yellow
  (57, 5700, 3, 'It stops being angry only when nobody else is around. To view this moment is very difficult.'),
  -- growlithe in yellow
  (58, 5800, 3, 'A POKéMON with a friendly nature. However, it will bark fiercely at anything invading its territory.'),
  -- arcanine in yellow
  (59, 5900, 3, 'A legendary POKéMON in China. Many people are charmed by its grace and beauty while running.'),
  -- poliwag in yellow
  (60, 6000, 3, 'The direction of the spiral on the belly differs by area. It is more adept at swimming than walking.'),
  -- poliwhirl in yellow
  (61, 6100, 3, 'Under attack, it uses its belly spiral to put the foe to sleep. It then makes its escape.'),
  -- poliwrath in yellow
  (62, 6200, 3, 'Swims powerfully using all the muscles in its body. It can even overtake champion swimmers.'),
  -- abra in yellow
  (63, 6300, 3, 'Sleeps 18 hours a day. If it senses danger, it will teleport itself to safety even as it sleeps.'),
  -- kadabra in yellow
  (64, 6400, 3, 'Many odd things happen if this POKéMON is close by. For example, it makes clocks run backwards.'),
  -- alakazam in yellow
  (65, 6500, 3, 'A POKéMON that can memorize anything. It never forgets what it learns-- that''s why this POKéMON is smart.'),
  -- machop in yellow
  (66, 6600, 3, 'Very powerful in spite of its small size. Its mastery of many types of martial arts makes it very tough.'),
  -- machoke in yellow
  (67, 6700, 3, 'The belt around its waist holds back its energy. Without it, this POKéMON would be unstoppable.'),
  -- machamp in yellow
  (68, 6800, 3, 'One arm alone can move mountains. Using all four arms, this POKéMON fires off awesome punches.'),
  -- bellsprout in yellow
  (69, 6900, 3, 'Prefers hot and humid places. It ensnares tiny insects with its vines and devours them.'),
  -- weepinbell in yellow
  (70, 7000, 3, 'When hungry, it swallows anything that moves. Its hapless prey is melted inside by strong acids.'),
  -- victreebel in yellow
  (71, 7100, 3, 'Lures prey with the sweet aroma of honey. Swallowed whole, the prey is melted in a day, bones and all.'),
  -- tentacool in yellow
  (72, 7200, 3, 'It can sometimes be found all dry and shriveled up on a beach. Toss it back into the sea to revive it.'),
  -- tentacruel in yellow
  (73, 7300, 3, 'Its 80 tentacles can stretch and contract freely. They wrap around prey and weaken it with poison.'),
  -- geodude in yellow
  (74, 7400, 3, 'Commonly found near mountain trails, etc. If you step on one by accident, it gets angry.'),
  -- graveler in yellow
  (75, 7500, 3, 'Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid.'),
  -- golem in yellow
  (76, 7600, 3, 'Once it sheds its skin, its body turns tender and whitish. Its hide hardens when it''s exposed to air.'),
  -- ponyta in yellow
  (77, 7700, 3, 'Capable of jumping incredibly high. Its hooves and sturdy legs absorb the impact of a hard landing.'),
  -- rapidash in yellow
  (78, 7800, 3, 'Just loves to run. If it sees something faster than itself, it will give chase at top speed.'),
  -- slowpoke in yellow
  (79, 7900, 3, 'Incredibly slow and sluggish. It is quite content to loll about without worrying about the time.'),
  -- slowbro in yellow
  (80, 8000, 3, 'Lives lazily by the sea. If the SHELLDER on its tail comes off, it becomes a SLOWPOKE again.'),
  -- magnemite in yellow
  (81, 8100, 3, 'It is born with the ability to defy gravity. It floats in air on powerful electromagnetic waves.'),
  -- magneton in yellow
  (82, 8200, 3, 'Generates strange radio signals. It raises the tem perature by 3.6F degrees within 3,300 feet.'),
  -- farfetchd in yellow
  (83, 8300, 3, 'Lives where reedy plants grow. They are rarely seen, so it''s thought their numbers are decreasing.'),
  -- doduo in yellow
  (84, 8400, 3, 'Its short wings make flying difficult. Instead, this POKéMON runs at high speed on developed legs.'),
  -- dodrio in yellow
  (85, 8500, 3, 'One of DODUO''s 2 heads splits to form a unique species. It runs close to 40 MPH in prairies.'),
  -- seel in yellow
  (86, 8600, 3, 'Loves freezing cold conditions. Relishes swimming in a frigid climate of around 14F degrees.'),
  -- dewgong in yellow
  (87, 8700, 3, 'Its entire body is a snowy-white. Unharmed by even intense cold, it swims powerfully in icy waters.'),
  -- grimer in yellow
  (88, 8800, 3, 'Made of hardened sludge. It smells too putrid to touch. Even weeds won''t grow in its path.'),
  -- muk in yellow
  (89, 8900, 3, 'Smells so awful, it can cause fainting. Through degeneration, it lost its sense of smell.'),
  -- shellder in yellow
  (90, 9000, 3, 'The shell can withstand any attack. However, when it is open, the tender body is exposed.'),
  -- cloyster in yellow
  (91, 9100, 3, 'For protection, it uses its harder- than-diamonds shell. It also shoots spikes from the shell.'),
  -- gastly in yellow
  (92, 9200, 3, 'Said to appear in decrepit, deserted buildings. It has no real shape as it appears to be made of a gas.'),
  -- haunter in yellow
  (93, 9300, 3, 'By licking, it saps the victim''s life. It causes shaking that won''t stop until the victim''s demise.'),
  -- gengar in yellow
  (94, 9400, 3, 'A GENGAR is close by if you feel a sudden chill. It may be trying to lay a curse on you.'),
  -- onix in yellow
  (95, 9500, 3, 'Burrows at high speed in search of food. The tunnels it leaves are used as homes by DIGLETTs.'),
  -- drowzee in yellow
  (96, 9600, 3, 'If you sleep by it all the time, it will sometimes show you dreams it has eaten in the past.'),
  -- hypno in yellow
  (97, 9700, 3, 'Avoid eye contact if you come across one. It will try to put you to sleep by using its pendulum.'),
  -- krabby in yellow
  (98, 9800, 3, 'Its pincers are superb weapons. They sometimes break off during battle, but they grow back fast.'),
  -- kingler in yellow
  (99, 9900, 3, 'One claw grew massively and as hard as steel. It has 10,000-HP strength. However, it is too heavy.'),
  -- voltorb in yellow
  (100, 10000, 3, 'It is said to camouflage itself as a POKé BALL. It will self-destruct with very little stimulus.'),
  -- electrode in yellow
  (101, 10100, 3, 'Stores electrical energy inside its body. Even the slightest shock could trigger a huge explosion.'),
  -- exeggcute in yellow
  (102, 10200, 3, 'The heads attract each other and spin around. There must be 6 heads for it to maintain balance.'),
  -- exeggutor in yellow
  (103, 10300, 3, 'Its cries are very noisy. This is because each of the 3 heads thinks about whatever it likes.'),
  -- cubone in yellow
  (104, 10400, 3, 'Wears the skull of its deceased mother. Its cries echo inside the skull and come out as a sad melody.'),
  -- marowak in yellow
  (105, 10500, 3, 'Small and weak, this POKéMON is adept with its bone club. It has grown more vicious over the ages.'),
  -- hitmonlee in yellow
  (106, 10600, 3, 'When kicking, the sole of its foot turns as hard as a diamond on impact and destroys its enemy.'),
  -- hitmonchan in yellow
  (107, 10700, 3, 'Punches in corkscrew fashion. It can punch its way through a concrete wall in the same way as a drill.'),
  -- lickitung in yellow
  (108, 10800, 3, 'Its tongue spans almost 7 feet and moves more freely than its forelegs. Its licks can cause paralysis.'),
  -- koffing in yellow
  (109, 10900, 3, 'In hot places, its internal gases could expand and explode without any warning. Be very careful!'),
  -- weezing in yellow
  (110, 11000, 3, 'It lives and grows by absorbing dust, germs and poison gases that are contained in toxic waste and garbage.'),
  -- rhyhorn in yellow
  (111, 11100, 3, 'A POKéMON with a one-track mind. Once it charges, it won''t stop running until it falls asleep.'),
  -- rhydon in yellow
  (112, 11200, 3, 'Walks on its hind legs. Shows signs of intelligence. Its armor-like hide even repels molten lava.'),
  -- chansey in yellow
  (113, 11300, 3, 'A gentle and kindhearted POKéMON that shares its nutritious eggs if it sees an injured POKéMON.'),
  -- tangela in yellow
  (114, 11400, 3, 'Its identity is obscured by masses of thick, blue vines. The vines are said to never stop growing.'),
  -- kangaskhan in yellow
  (115, 11500, 3, 'Raises its young in its belly pouch. Won''t run from any fight to keep its young protected.'),
  -- horsea in yellow
  (116, 11600, 3, 'If it senses any danger, it will vigorously spray water or a special type of ink from its mouth.'),
  -- seadra in yellow
  (117, 11700, 3, 'Touching the back fin causes numbness. It hooks its tail to coral to stay in place while sleeping.'),
  -- goldeen in yellow
  (118, 11800, 3, 'When it is time for them to lay eggs, they can be seen swimming up rivers and falls in large groups.'),
  -- seaking in yellow
  (119, 11900, 3, 'It is the male''s job to make a nest by carving out boulders in a stream using the horn on its head.'),
  -- staryu in yellow
  (120, 12000, 3, 'As long as the center section is unharmed, it can grow back fully even if it is chopped to bits.'),
  -- starmie in yellow
  (121, 12100, 3, 'The center section is named the core. People think it is communicating when it glows in 7 colors.'),
  -- mr-mime in yellow
  (122, 12200, 3, 'Always practices its pantomime act. It makes enemies believe something exists that really doesn''t.'),
  -- scyther in yellow
  (123, 12300, 3, 'Leaps out of tall grass and slices prey with its scythes. The movement looks like that of a ninja.'),
  -- jynx in yellow
  (124, 12400, 3, 'Appears to move to a rhythm of its own, as if it were dancing. It wiggles its hips as it walks.'),
  -- electabuzz in yellow
  (125, 12500, 3, 'If a major power outage occurs, it is certain that this POKéMON has eaten electricity at a power plant.'),
  -- magmar in yellow
  (126, 12600, 3, 'Born in an active volcano. Its body is always cloaked in flames, so it looks like a big ball of fire.'),
  -- pinsir in yellow
  (127, 12700, 3, 'Grips its prey in its pincers and squeezes hard! It can''t move if it''s cold, so it lives in warm places.'),
  -- tauros in yellow
  (128, 12800, 3, 'A rowdy POKéMON with a lot of stamina. Once running, it won''t stop until it hits something.'),
  -- magikarp in yellow
  (129, 12900, 3, 'Famous for being very unreliable. It can be found swimming in seas, lakes, rivers and shallow puddles.'),
  -- gyarados in yellow
  (130, 13000, 3, 'Brutally vicious and enormously destructive. Known for totally destroying cities in ancient times.'),
  -- lapras in yellow
  (131, 13100, 3, 'A gentle soul that can read the minds of people. It can ferry people across the sea on its back.'),
  -- ditto in yellow
  (132, 13200, 3, 'When it spots an enemy, its body transfigures into an almost perfect copy of its opponent.'),
  -- eevee in yellow
  (133, 13300, 3, 'Its genetic code is unstable, so it could evolve in a variety of ways. There are only a few alive.'),
  -- vaporeon in yellow
  (134, 13400, 3, 'Its cell structure is similar to water molecules. It will melt away and become invisible in water.'),
  -- jolteon in yellow
  (135, 13500, 3, 'A sensitive POKéMON that easily becomes sad or angry. Every time its mood changes, it charges power.'),
  -- flareon in yellow
  (136, 13600, 3, 'It has a flame chamber inside its body. It inhales, then blows out fire that is over 3,000F degrees.'),
  -- porygon in yellow
  (137, 13700, 3, 'The only POKéMON people anticipate can fly into space. None has managed the feat yet, however.'),
  -- omanyte in yellow
  (138, 13800, 3, 'An ancient POKéMON that was recovered from a fossil. It swims by cleverly twisting its 10 tentacles about.'),
  -- omastar in yellow
  (139, 13900, 3, 'Sharp beaks ring its mouth. Its shell was too big for it to move freely, so it became extinct.'),
  -- kabuto in yellow
  (140, 14000, 3, 'A POKéMON that was recovered from a fossil. It uses the eyes on its back while hiding on the sea floor.'),
  -- kabutops in yellow
  (141, 14100, 3, 'A slim and fast swimmer. It slices its prey with its sharp sickles and drinks the body fluids.'),
  -- aerodactyl in yellow
  (142, 14200, 3, 'A savage POKéMON that died out in ancient times. It was resurrected using DNA taken from amber.'),
  -- snorlax in yellow
  (143, 14300, 3, 'Will eat anything, even if the food happens to be a little moldy. It never gets an upset stomach.'),
  -- articuno in yellow
  (144, 14400, 3, 'A legendary bird POKéMON. It freezes water that is contained in winter air and makes it snow.'),
  -- zapdos in yellow
  (145, 14500, 3, 'This legendary bird POKéMON is said to appear when the sky turns dark and lightning showers down.'),
  -- moltres in yellow
  (146, 14600, 3, 'A legendary bird POKéMON. As it flaps its flaming wings, even the night sky will turn red.'),
  -- dratini in yellow
  (147, 14700, 3, 'The existence of this mythical POKéMON was only recently confirmed by a fisherman who caught one.'),
  -- dragonair in yellow
  (148, 14800, 3, 'According to a witness, its body was surrounded by a strange aura that gave it a mystical look.'),
  -- dragonite in yellow
  (149, 14900, 3, 'It is said that this POKéMON lives somewhere in the sea and that it flies. However, it is only a rumor.'),
  -- mewtwo in yellow
  (150, 15000, 3, 'Its DNA is almost the same as MEW''s. However, its size and disposition are vastly different.'),
  -- mew in yellow
  (151, 15100, 3, 'When viewed through a microscope, this POKéMON''s short, fine, delicate hair can be seen.');
