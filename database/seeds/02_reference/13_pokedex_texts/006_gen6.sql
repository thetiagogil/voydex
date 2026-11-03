-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 6 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in x
  (1, 100, 21, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.'),
  -- ivysaur in x
  (2, 200, 21, 'There is a plant bulb on its back. When it absorbs nutrients, the bulb is said to blossom into a large flower.'),
  -- venusaur in x
  (3, 300, 21, 'By spreading the broad petals of its flower and catching the sun’s rays, it fills its body with power.'),
  -- charmander in x
  (4, 400, 21, 'The flame on its tail indicates Charmander’s life force. If it is healthy, the flame burns brightly.'),
  -- charmeleon in x
  (5, 500, 21, 'It lashes about with its tail to knock down its foe. It then tears up the fallen opponent with sharp claws.'),
  -- charizard in x
  (6, 600, 21, 'When expelling a blast of superhot fire, the red flame at the tip of its tail burns more intensely.'),
  -- squirtle in x
  (7, 700, 21, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in x
  (8, 800, 21, 'When tapped, this Pokémon will pull in its head, but its tail will still stick out a little bit.'),
  -- blastoise in x
  (9, 900, 21, 'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.'),
  -- caterpie in x
  (10, 1000, 21, 'For protection, it releases a horrible stench from the antennae on its head to drive away enemies.'),
  -- metapod in x
  (11, 1100, 21, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in x
  (12, 1200, 21, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in x
  (13, 1300, 21, 'Often found in forests and grasslands. It has a sharp, toxic barb of around two inches on top of its head.'),
  -- kakuna in x
  (14, 1400, 21, 'Almost incapable of moving, this Pokémon can only harden its shell to protect itself when it is in danger.'),
  -- beedrill in x
  (15, 1500, 21, 'It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.'),
  -- pidgey in x
  (16, 1600, 21, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.'),
  -- pidgeotto in x
  (17, 1700, 21, 'The claws on its feet are well developed. It can carry prey such as an Exeggcute to its nest over 60 miles away.'),
  -- pidgeot in x
  (18, 1800, 21, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.'),
  -- rattata in x
  (19, 1900, 21, 'Living wherever there is food available, it ceaselessly scavenges for edibles the entire day.'),
  -- raticate in x
  (20, 2000, 21, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in x
  (21, 2100, 21, 'Very protective of its territory, it flaps its short wings busily to dart around at high speed.'),
  -- fearow in x
  (22, 2200, 21, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.'),
  -- ekans in x
  (23, 2300, 21, 'The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.'),
  -- arbok in x
  (24, 2400, 21, 'The pattern on its belly appears to be a frightening face. Weak foes will flee just at the sight of the pattern.'),
  -- pikachu in x
  (25, 2500, 21, 'It raises its tail to check its surroundings. The tail is sometimes struck by lightning in this pose.'),
  -- raichu in x
  (26, 2600, 21, 'When its electricity builds, its muscles are stimulated, and it becomes more aggressive than usual.'),
  -- sandshrew in x
  (27, 2700, 21, 'It burrows and lives underground. If threatened, it curls itself up into a ball for protection.'),
  -- sandslash in x
  (28, 2800, 21, 'If it digs at an incredible pace, it may snap off its spikes and claws. They grow back in a day.'),
  -- nidoran-f in x
  (29, 2900, 21, 'Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.'),
  -- nidorina in x
  (30, 3000, 21, 'The female has a gentle temperament. It emits ultrasonic cries that have the power to befuddle foes.'),
  -- nidoqueen in x
  (31, 3100, 21, 'It uses its scaly, rugged body to seal the entrance of its nest and protect its young from predators.'),
  -- nidoran-m in x
  (32, 3200, 21, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in x
  (33, 3300, 21, 'It raises its big ears to check its surroundings. If it senses anything, it attacks immediately.'),
  -- nidoking in x
  (34, 3400, 21, 'It is recognized by its rock-hard hide and its extended horn. Be careful with the horn, as it contains venom.'),
  -- clefairy in x
  (35, 3500, 21, 'It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.'),
  -- clefable in x
  (36, 3600, 21, 'Its hearing is so acute it can hear a pin drop over half a mile away. It lives on quiet mountains.'),
  -- vulpix in x
  (37, 3700, 21, 'When it is born, it has just one snow-white tail. The tail splits from its tip as it grows older.'),
  -- ninetales in x
  (38, 3800, 21, 'It has nine long tails and fur that gleams gold. It is said to live for 1,000 years.'),
  -- jigglypuff in x
  (39, 3900, 21, 'It captivates foes with its huge, round eyes, then lulls them to sleep by singing a soothing melody.'),
  -- wigglytuff in x
  (40, 4000, 21, 'Their fur feels so good that if two of them snuggle together, they won’t want to be separated.'),
  -- zubat in x
  (41, 4100, 21, 'Even though it has no eyes, it can sense obstacles using ultrasonic waves it emits from its mouth.'),
  -- golbat in x
  (42, 4200, 21, 'Once it bites, it will not stop draining energy from the victim even if it gets too heavy to fly.'),
  -- oddish in x
  (43, 4300, 21, 'During the day, it stays in the cold underground to avoid the sun. It grows by bathing in moonlight.'),
  -- gloom in x
  (44, 4400, 21, 'Smells incredibly foul! However, around one out of a thousand people enjoy sniffing its nose-bending stink.'),
  -- vileplume in x
  (45, 4500, 21, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.'),
  -- paras in x
  (46, 4600, 21, 'Growing out of the bug’s back are mushrooms called tochukaso. The mushrooms grow with the bug host.'),
  -- parasect in x
  (47, 4700, 21, 'A mushroom grown larger than the host’s body controls Parasect. It scatters poisonous spores.'),
  -- venonat in x
  (48, 4800, 21, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in x
  (49, 4900, 21, 'The scales it scatters will paralyze anyone who touches them, making that person unable to stand.'),
  -- diglett in x
  (50, 5000, 21, 'Lives about one yard underground where it feeds on plant roots. It sometimes appears aboveground.'),
  -- dugtrio in x
  (51, 5100, 21, 'In battle, it digs through the ground and strikes the unsuspecting foe from an unexpected direction.'),
  -- meowth in x
  (52, 5200, 21, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in x
  (53, 5300, 21, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.'),
  -- psyduck in x
  (54, 5400, 21, 'It is constantly wracked by a headache. When the headache turns intense, it begins using mysterious powers.'),
  -- golduck in x
  (55, 5500, 21, 'It appears by waterways at dusk. It may use telekinetic powers if its forehead glows mysteriously.'),
  -- mankey in x
  (56, 5600, 21, 'It’s unsafe to approach if it gets violently enraged for no reason and can’t distinguish friends from foes.'),
  -- primeape in x
  (57, 5700, 21, 'It stops being angry only when nobody else is around. To view this moment is very difficult.'),
  -- growlithe in x
  (58, 5800, 21, 'Very friendly and faithful to people. It will try to repel enemies by barking and biting.'),
  -- arcanine in x
  (59, 5900, 21, 'A Pokémon that has long been admired for its beauty. It runs agilely as if on wings.'),
  -- poliwag in x
  (60, 6000, 21, 'Its slick black skin is thin and damp. A part of its internal organs can be seen through the skin as a spiral pattern.'),
  -- poliwhirl in x
  (61, 6100, 21, 'It can live in or out of water. When out of water, it constantly sweats to keep its body slimy.'),
  -- poliwrath in x
  (62, 6200, 21, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in x
  (63, 6300, 21, 'It sleeps for 18 hours a day. It uses a variety of extrasensory powers even while asleep.'),
  -- kadabra in x
  (64, 6400, 21, 'When it uses its psychic power, it emits strong alpha waves that can ruin precision devices.'),
  -- alakazam in x
  (65, 6500, 21, 'Its brain cells multiply continually until it dies. As a result, it remembers everything.'),
  -- machop in x
  (66, 6600, 21, 'It hefts a Graveler repeatedly to strengthen its entire body. It uses every type of martial arts.'),
  -- machoke in x
  (67, 6700, 21, 'Its muscular body is so powerful, it must wear a power-save belt to be able to regulate its motions.'),
  -- machamp in x
  (68, 6800, 21, 'Its four ruggedly developed arms can launch a flurry of 1,000 punches in just two seconds.'),
  -- bellsprout in x
  (69, 6900, 21, 'Even though its body is extremely skinny, it is blindingly fast when catching its prey.'),
  -- weepinbell in x
  (70, 7000, 21, 'The leafy parts act as cutters for slashing foes. It spits a fluid that dissolves everything.'),
  -- victreebel in x
  (71, 7100, 21, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.'),
  -- tentacool in x
  (72, 7200, 21, 'Its body is virtually composed of water. It shoots strange beams from its crystal-like eyes.'),
  -- tentacruel in x
  (73, 7300, 21, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.'),
  -- geodude in x
  (74, 7400, 21, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.'),
  -- graveler in x
  (75, 7500, 21, 'With a free and uncaring nature, it doesn’t mind if pieces break off while it rolls down mountains.'),
  -- golem in x
  (76, 7600, 21, 'It tumbles down mountains, leaving grooves from peak to base. Stay clear of these grooves.'),
  -- ponyta in x
  (77, 7700, 21, 'As a newborn, it can barely stand. However, through galloping, its legs are made tougher and faster.'),
  -- rapidash in x
  (78, 7800, 21, 'Very competitive, this Pokémon will chase anything that moves fast in the hopes of racing it.'),
  -- slowpoke in x
  (79, 7900, 21, 'It is always vacantly lost in thought, but no one knows what it is thinking about. It is good at fishing with its tail.'),
  -- slowbro in x
  (80, 8000, 21, 'An attached Shellder won’t let go because of the tasty flavor that oozes out of its tail.'),
  -- magnemite in x
  (81, 8100, 21, 'The units at the sides of its body generate antigravity energy to keep it aloft in the air.'),
  -- magneton in x
  (82, 8200, 21, 'A linked cluster formed of several Magnemite. It discharges powerful magnetic waves at high voltage.'),
  -- farfetchd in x
  (83, 8300, 21, 'The plant stalk it holds is its weapon. The stalk is used like a sword to cut all sorts of things.'),
  -- doduo in x
  (84, 8400, 21, 'A two-headed Pokémon that was discovered as a sudden mutation. It runs at a pace of over 60 miles per hour.'),
  -- dodrio in x
  (85, 8500, 21, 'An enemy that takes its eyes off any of the three heads--even for a second--will get pecked severely.'),
  -- seel in x
  (86, 8600, 21, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in x
  (87, 8700, 21, 'Its body is covered with a pure white fur. The colder the weather, the more active it becomes.'),
  -- grimer in x
  (88, 8800, 21, 'Sludge exposed to X-rays from the moon transformed into Grimer. It loves feeding on filthy things.'),
  -- muk in x
  (89, 8900, 21, 'They love to gather in smelly areas where sludge accumulates, making the stench around them worse.'),
  -- shellder in x
  (90, 9000, 21, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.'),
  -- cloyster in x
  (91, 9100, 21, 'Cloyster that live in seas with harsh tidal currents grow large, sharp spikes on their shells.'),
  -- gastly in x
  (92, 9200, 21, 'Its body is made of gas. Despite lacking substance, it can envelop an opponent of any size and cause suffocation.'),
  -- haunter in x
  (93, 9300, 21, 'If you get the feeling of being watched in darkness when nobody is around, Haunter is there.'),
  -- gengar in x
  (94, 9400, 21, 'It hides in shadows. It is said that if Gengar is hiding, it cools the area by nearly 10 degrees Fahrenheit.'),
  -- onix in x
  (95, 9500, 21, 'Burrows at high speed in search of food. The tunnels it leaves are used as homes by Diglett.'),
  -- drowzee in x
  (96, 9600, 21, 'Puts enemies to sleep, then eats their dreams. Occasionally gets sick from eating only bad dreams.'),
  -- hypno in x
  (97, 9700, 21, 'It carries a pendulum-like device. There once was an incident in which it took away a child it hypnotized.'),
  -- krabby in x
  (98, 9800, 21, 'If it senses danger approaching, it cloaks itself with bubbles from its mouth so it will look bigger.'),
  -- kingler in x
  (99, 9900, 21, 'Its large and hard pincer has 10,000-horsepower strength. However, being so big, it is unwieldy to move.'),
  -- voltorb in x
  (100, 10000, 21, 'It was discovered when Poké Balls were introduced. It is said that there is some connection.'),
  -- electrode in x
  (101, 10100, 21, 'It explodes in response to even minor stimuli. It is feared, with the nickname of “The Bomb Ball.”'),
  -- exeggcute in x
  (102, 10200, 21, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in x
  (103, 10300, 21, 'Its three heads think independently. However, they are friendly and never appear to squabble.'),
  -- cubone in x
  (104, 10400, 21, 'It wears the skull of its dead mother on its head. When it becomes lonesome, it is said to cry loudly.'),
  -- marowak in x
  (105, 10500, 21, 'It is small and was originally very weak. Its temperament turned ferocious when it began using bones.'),
  -- hitmonlee in x
  (106, 10600, 21, 'The legs freely contract and stretch. The stretchy legs allow it to hit a distant foe with a rising kick.'),
  -- hitmonchan in x
  (107, 10700, 21, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in x
  (108, 10800, 21, 'Its long tongue, slathered with a gooey saliva, sticks to anything, so it is very useful.'),
  -- koffing in x
  (109, 10900, 21, 'Its thin, balloon-like body is inflated by horribly toxic gases. It reeks when it is nearby.'),
  -- weezing in x
  (110, 11000, 21, 'If one of the twin Koffing inflates, the other one deflates. It constantly mixes its poisonous gases.'),
  -- rhyhorn in x
  (111, 11100, 21, 'Strong, but not too bright, this Pokémon can shatter even a skyscraper with its charging Tackles.'),
  -- rhydon in x
  (112, 11200, 21, 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees Fahrenheit.'),
  -- chansey in x
  (113, 11300, 21, 'It is said to deliver happiness. Being compassionate, it shares its eggs with injured people.'),
  -- tangela in x
  (114, 11400, 21, 'Many writhing vines cover it, so its true identity remains unknown. The blue vines grow its whole life long.'),
  -- kangaskhan in x
  (115, 11500, 21, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in x
  (116, 11600, 21, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.'),
  -- seadra in x
  (117, 11700, 21, 'Its body bristles with sharp spikes. Carelessly trying to touch it could cause fainting from the spikes.'),
  -- goldeen in x
  (118, 11800, 21, 'It swims at a steady 5 knots. If it senses danger, it will strike back with its sharp horn.'),
  -- seaking in x
  (119, 11900, 21, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.'),
  -- staryu in x
  (120, 12000, 21, 'Even if its body is torn, it can regenerate as long as the glowing central core remains intact.'),
  -- starmie in x
  (121, 12100, 21, 'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.'),
  -- mr-mime in x
  (122, 12200, 21, 'Emanations from its fingertips solidify the air into invisible walls that repel even harsh attacks.'),
  -- scyther in x
  (123, 12300, 21, 'It tears and shreds prey with its wickedly sharp scythes. It very rarely spreads its wings to fly.'),
  -- jynx in x
  (124, 12400, 21, 'It wiggles its hips as it walks. It can cause people to dance in unison with it.'),
  -- electabuzz in x
  (125, 12500, 21, 'Electricity runs across the surface of its body. In darkness, its entire body glows a whitish blue.'),
  -- magmar in x
  (126, 12600, 21, 'Found near the mouth of a volcano. This fire-breather’s body temperature is nearly 2,200 degrees Fahrenheit.'),
  -- pinsir in x
  (127, 12700, 21, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in x
  (128, 12800, 21, 'After heightening its will to fight by whipping itself with its three tails, it charges at full speed.'),
  -- magikarp in x
  (129, 12900, 21, 'It is virtually worthless in terms of both power and speed. It is the most weak and pathetic Pokémon in the world.'),
  -- gyarados in x
  (130, 13000, 21, 'In ancient literature, there is a record of a Gyarados that razed a village when violence flared.'),
  -- lapras in x
  (131, 13100, 21, 'They have gentle hearts. Because they rarely fight, many have been caught. Their number has dwindled.'),
  -- ditto in x
  (132, 13200, 21, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in x
  (133, 13300, 21, 'A rare Pokémon that adapts to harsh environments by taking on different evolutionary forms.'),
  -- vaporeon in x
  (134, 13400, 21, 'It prefers beautiful shores. With cells similar to water molecules, it could melt in water.'),
  -- jolteon in x
  (135, 13500, 21, 'Every hair on its body starts to stand sharply on end if it becomes charged with electricity.'),
  -- flareon in x
  (136, 13600, 21, 'It has a flame sac in its body. Its body temperature tops 1,650 degrees Fahrenheit before battle.'),
  -- porygon in x
  (137, 13700, 21, 'A man-made Pokémon that came about as a result of research. It is programmed with only basic motions.'),
  -- omanyte in x
  (138, 13800, 21, 'A prehistoric Pokémon that lived in the primordial sea, it swims by twisting its 10 tentacles about.'),
  -- omastar in x
  (139, 13900, 21, 'Its tentacles are highly developed as if they are hands and feet. As soon as it ensnares prey, it bites.'),
  -- kabuto in x
  (140, 14000, 21, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in x
  (141, 14100, 21, 'In the water, it tucks in its limbs to become more compact, then it wiggles its shell to swim fast.'),
  -- aerodactyl in x
  (142, 14200, 21, 'It was regenerated from a dinosaur’s genetic matter that was found in amber. It flies with high-pitched cries.'),
  -- snorlax in x
  (143, 14300, 21, 'It is not satisfied unless it eats over 880 pounds of food every day. When it is done eating, it goes promptly to sleep.'),
  -- articuno in x
  (144, 14400, 21, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in x
  (145, 14500, 21, 'A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.'),
  -- moltres in x
  (146, 14600, 21, 'It is said to be the legendary bird Pokémon of fire. Every flap of its wings creates a dazzling flare of flames.'),
  -- dratini in x
  (147, 14700, 21, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in x
  (148, 14800, 21, 'Its crystalline orbs appear to give this Pokémon the power to freely control the weather.'),
  -- dragonite in x
  (149, 14900, 21, 'It can fly in spite of its big and bulky physique. It circles the globe in just 16 hours.'),
  -- mewtwo in x
  (150, 15000, 21, 'It was created by a scientist after years of horrific gene-splicing and DNA-engineering experiments.'),
  -- mew in x
  (151, 15100, 21, 'Because it can use all kinds of moves, many scientists believe Mew to be the ancestor of Pokémon.'),
  -- chikorita in x
  (152, 15200, 21, 'A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up sun rays.'),
  -- bayleef in x
  (153, 15300, 21, 'A spicy aroma emanates from around its neck. The aroma acts as a stimulant to restore health.'),
  -- meganium in x
  (154, 15400, 21, 'The aroma that rises from its petals contains a substance that calms aggressive feelings.'),
  -- cyndaquil in x
  (155, 15500, 21, 'It is timid and always curls itself up in a ball. If attacked, it flares up its back for protection.'),
  -- quilava in x
  (156, 15600, 21, 'Before battle, it turns its back on its opponent to demonstrate how ferociously its fire blazes.'),
  -- typhlosion in x
  (157, 15700, 21, 'If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.'),
  -- totodile in x
  (158, 15800, 21, 'It is small but rough and tough. It won’t hesitate to take a bite out of anything that moves.'),
  -- croconaw in x
  (159, 15900, 21, 'If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth.'),
  -- feraligatr in x
  (160, 16000, 21, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in x
  (161, 16100, 21, 'When acting as a lookout, it warns others of danger by screeching and hitting the ground with its tail.'),
  -- furret in x
  (162, 16200, 21, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in x
  (163, 16300, 21, 'It has a perfect sense of time. Whatever happens, it keeps rhythm by precisely tilting its head in time.'),
  -- noctowl in x
  (164, 16400, 21, 'Its eyes are specially adapted. They concentrate even faint light and enable it to see in the dark.'),
  -- ledyba in x
  (165, 16500, 21, 'When the weather turns cold, lots of Ledyba gather from everywhere to cluster and keep each other warm.'),
  -- ledian in x
  (166, 16600, 21, 'When the stars flicker in the night sky, it flutters about, scattering a glowing powder.'),
  -- spinarak in x
  (167, 16700, 21, 'It spins a web using fine--but durable--thread. It then waits patiently for prey to be trapped.'),
  -- ariados in x
  (168, 16800, 21, 'It spins string not only from its rear but also from its mouth. It’s hard to tell which end is which.'),
  -- crobat in x
  (169, 16900, 21, 'It flies so silently through the dark on its four wings that it may not be noticed even when nearby.'),
  -- chinchou in x
  (170, 17000, 21, 'On the dark ocean floor, its only means of communication is its constantly flashing lights.'),
  -- lanturn in x
  (171, 17100, 21, 'Lanturn’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in x
  (172, 17200, 21, 'It plays with others by touching tails and setting off sparks. This appears to be a test of courage.'),
  -- cleffa in x
  (173, 17300, 21, 'Because of its unusual, starlike silhouette, people believe that it came here on a meteor.'),
  -- igglybuff in x
  (174, 17400, 21, 'Instead of walking with its short legs, it moves around by bouncing on its soft, tender body.'),
  -- togepi in x
  (175, 17500, 21, 'The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.'),
  -- togetic in x
  (176, 17600, 21, 'It grows dispirited if it is not with kind people. It can float in midair without moving its wings.'),
  -- natu in x
  (177, 17700, 21, 'Because its wings aren’t yet fully grown, it has to hop to get around. It is always staring at something.'),
  -- xatu in x
  (178, 17800, 21, 'Once it begins to meditate at sunrise, the entire day will pass before it will move again.'),
  -- mareep in x
  (179, 17900, 21, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in x
  (180, 18000, 21, 'Its fluffy fleece easily stores electricity. Its rubbery hide keeps it from being electrocuted.'),
  -- ampharos in x
  (181, 18100, 21, 'The tail’s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.'),
  -- bellossom in x
  (182, 18200, 21, 'Bellossom gather at times and seem to dance. They say that the dance is a ritual to summon the sun.'),
  -- marill in x
  (183, 18300, 21, 'The fur on its body naturally repels water. It can stay dry, even when it plays in the water.'),
  -- azumarill in x
  (184, 18400, 21, 'Its long ears are superb sensors. It can distinguish the movements of living things on riverbeds.'),
  -- sudowoodo in x
  (185, 18500, 21, 'Although it always pretends to be a tree, its composition appears more similar to rock than to vegetation.'),
  -- politoed in x
  (186, 18600, 21, 'Whenever three or more of these get together, they sing in a loud voice that sounds like bellowing.'),
  -- hoppip in x
  (187, 18700, 21, 'Its body is so light, it must grip the ground firmly with its feet to keep from being blown away.'),
  -- skiploom in x
  (188, 18800, 21, 'The bloom on top of its head opens and closes as the temperature fluctuates up and down.'),
  -- jumpluff in x
  (189, 18900, 21, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in x
  (190, 19000, 21, 'It lives atop tall trees. When leaping from branch to branch, it deftly uses its tail for balance.'),
  -- sunkern in x
  (191, 19100, 21, 'It may plummet from the sky. If attacked by a Spearow, it will violently shake its leaves.'),
  -- sunflora in x
  (192, 19200, 21, 'As the hot season approaches, the petals on this Pokémon’s face become more vivid and lively.'),
  -- yanma in x
  (193, 19300, 21, 'Its eyes can see 360 degrees without moving its head. It won’t miss prey--even those behind it.'),
  -- wooper in x
  (194, 19400, 21, 'This Pokémon lives in cold water. It will leave the water to search for food when it gets cold outside.'),
  -- quagsire in x
  (195, 19500, 21, 'It has a sluggish nature. It lies at the river’s bottom, waiting for prey to stray into its mouth.'),
  -- espeon in x
  (196, 19600, 21, 'The tip of its forked tail quivers when it is predicting its opponent’s next move.'),
  -- umbreon in x
  (197, 19700, 21, 'The light of the moon changed Eevee’s genetic structure. It lurks in darkness for prey.'),
  -- murkrow in x
  (198, 19800, 21, 'It hides any shiny object it finds in a secret location. Murkrow and Meowth loot one another’s stashes.'),
  -- slowking in x
  (199, 19900, 21, 'It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.'),
  -- misdreavus in x
  (200, 20000, 21, 'It gets nourishment from fear that it absorbs into its red orbs. In daytime, it sleeps in darkness.'),
  -- unown in x
  (201, 20100, 21, 'Its flat, thin body is always stuck on walls. Its shape appears to have some meaning.'),
  -- wobbuffet in x
  (202, 20200, 21, 'It hates light and shock. If attacked, it inflates its body to build up its counterstrike.'),
  -- girafarig in x
  (203, 20300, 21, 'While it sleeps, the head on its tail keeps watch. The tail doesn’t need to sleep.'),
  -- pineco in x
  (204, 20400, 21, 'It likes to make its shell thicker by adding layers of tree bark. The additional weight doesn’t bother it.'),
  -- forretress in x
  (205, 20500, 21, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in x
  (206, 20600, 21, 'When spotted, this Pokémon escapes backward by furiously boring into the ground with its tail.'),
  -- gligar in x
  (207, 20700, 21, 'It usually clings to cliffs. When it spots its prey, it spreads its wings and glides down to attack.'),
  -- steelix in x
  (208, 20800, 21, 'Tempered underground under high pressure and heat, its body is harder than any metal.'),
  -- snubbull in x
  (209, 20900, 21, 'It has an active, playful nature. Many women like to frolic with it because of its affectionate ways.'),
  -- granbull in x
  (210, 21000, 21, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in x
  (211, 21100, 21, 'To fire its poison spikes, it must inflate its body by drinking over 2.6 gallons of water all at once.'),
  -- scizor in x
  (212, 21200, 21, 'This Pokémon’s pincers, which contain steel, can crush any hard object it gets ahold of into bits.'),
  -- shuckle in x
  (213, 21300, 21, 'The berries stored in its jar-like shell eventually become a thick, pulpy juice.'),
  -- heracross in x
  (214, 21400, 21, 'This powerful Pokémon thrusts its prized horn under its enemies’ bellies, then lifts and throws them.'),
  -- sneasel in x
  (215, 21500, 21, 'It feeds on eggs stolen from nests. Its sharply hooked claws rip vulnerable spots on prey.'),
  -- teddiursa in x
  (216, 21600, 21, 'If it finds honey, its crescent mark glows. It always licks its paws because they’re soaked with honey.'),
  -- ursaring in x
  (217, 21700, 21, 'With its ability to distinguish any aroma, it unfailingly finds all food buried deep underground.'),
  -- slugma in x
  (218, 21800, 21, 'A common sight in volcanic areas, it slowly slithers around in a constant search for warm places.'),
  -- magcargo in x
  (219, 21900, 21, 'Its brittle shell occasionally spouts intense flames that circulate throughout its body.'),
  -- swinub in x
  (220, 22000, 21, 'It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.'),
  -- piloswine in x
  (221, 22100, 21, 'Although its legs are short, its rugged hooves prevent it from slipping, even on icy ground.'),
  -- corsola in x
  (222, 22200, 21, 'It continuously sheds and grows. The tip of its head is prized as a treasure because of its beauty.'),
  -- remoraid in x
  (223, 22300, 21, 'It has superb accuracy. The water it shoots out can strike moving prey from more than 300 feet away.'),
  -- octillery in x
  (224, 22400, 21, 'It has a tendency to want to be in holes. It prefers rock crags or pots and sprays ink from them before attacking.'),
  -- delibird in x
  (225, 22500, 21, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in x
  (226, 22600, 21, 'If it builds up enough speed swimming, it can fly over 300 feet out of the water from the surface of the ocean.'),
  -- skarmory in x
  (227, 22700, 21, 'After nesting in bramble bushes, the wings of its chicks grow hard from scratches by thorns.'),
  -- houndour in x
  (228, 22800, 21, 'Around dawn, its ominous howl echoes through the area to announce that this is its territory.'),
  -- houndoom in x
  (229, 22900, 21, 'Long ago, people imagined its eerie howls to be the call of the grim reaper.'),
  -- kingdra in x
  (230, 23000, 21, 'It is said that it usually hides in underwater caves. It can create whirlpools by yawning.'),
  -- phanpy in x
  (231, 23100, 21, 'As a sign of affection, it bumps with its snout. However, it is so strong, it may send you flying.'),
  -- donphan in x
  (232, 23200, 21, 'It has sharp, hard tusks and a rugged hide. Its Tackle is strong enough to knock down a house.'),
  -- porygon2 in x
  (233, 23300, 21, 'Further research enhanced its abilities. Sometimes, it may exhibit motions that were not programmed.'),
  -- stantler in x
  (234, 23400, 21, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in x
  (235, 23500, 21, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in x
  (236, 23600, 21, 'It is always bursting with energy. To make itself stronger, it keeps on fighting even if it loses.'),
  -- hitmontop in x
  (237, 23700, 21, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by 10.'),
  -- smoochum in x
  (238, 23800, 21, 'Its lips are the most sensitive part of its body. It always uses its lips first to examine things.'),
  -- elekid in x
  (239, 23900, 21, 'It generates electricity by whirling its arms. However, it can’t store the energy it makes.'),
  -- magby in x
  (240, 24000, 21, 'It’s small, but its body temperature is over 1,100 degrees Fahrenheit. Embers escape its mouth and nose when it breathes.'),
  -- miltank in x
  (241, 24100, 21, 'If it is around babies, the milk it produces contains much more nutrition than usual.'),
  -- blissey in x
  (242, 24200, 21, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- raikou in x
  (243, 24300, 21, 'The rain clouds it carries let it fire thunderbolts at will. They say that it descended with lightning.'),
  -- entei in x
  (244, 24400, 21, 'A Pokémon that races across the land. It is said that one is born every time a new volcano appears.'),
  -- suicune in x
  (245, 24500, 21, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in x
  (246, 24600, 21, 'It feeds on soil. After it has eaten a large mountain, it falls asleep so it can grow.'),
  -- pupitar in x
  (247, 24700, 21, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in x
  (248, 24800, 21, 'In just one of its mighty hands, it has the power to make the ground shake and mountains crumble.'),
  -- lugia in x
  (249, 24900, 21, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in x
  (250, 25000, 21, 'A legend says that its body glows in seven colors. A rainbow is said to form behind it when it flies.'),
  -- celebi in x
  (251, 25100, 21, 'This Pokémon wanders across time. Grass and trees flourish in the forests in which it has appeared.'),
  -- treecko in x
  (252, 25200, 21, 'It quickly scales even vertical walls. It senses humidity with its tail to predict the next day’s weather.'),
  -- grovyle in x
  (253, 25300, 21, 'Its strongly developed thigh muscles give it astounding agility and jumping performance.'),
  -- sceptile in x
  (254, 25400, 21, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in x
  (255, 25500, 21, 'It has a flame sac inside its belly that perpetually burns. It feels warm if it is hugged.'),
  -- combusken in x
  (256, 25600, 21, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in x
  (257, 25700, 21, 'It can clear a 30-story building in a leap. Its fiery punches scorch its foes.'),
  -- mudkip in x
  (258, 25800, 21, 'Its large tail fin propels it through water with powerful acceleration. It is strong in spite of its size.'),
  -- marshtomp in x
  (259, 25900, 21, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in x
  (260, 26000, 21, 'Its arms are hard as rock. With one swing, it can break a boulder into pieces.'),
  -- poochyena in x
  (261, 26100, 21, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in x
  (262, 26200, 21, 'It will always obey the commands of a skilled Trainer. Its behavior arises from its living in packs in ancient times.'),
  -- zigzagoon in x
  (263, 26300, 21, 'It walks in zigzag fashion. It’s good at finding items in the grass and even in the ground.'),
  -- linoone in x
  (264, 26400, 21, 'When running in a straight line, it can easily top 60 miles an hour. It has a tough time with curved roads.'),
  -- wurmple in x
  (265, 26500, 21, 'It loves to eat leaves. If it is attacked by a Starly, it will defend itself with its spiked rear.'),
  -- silcoon in x
  (266, 26600, 21, 'It wraps silk around the branches of a tree. It drinks rainwater on its silk while awaiting evolution.'),
  -- beautifly in x
  (267, 26700, 21, 'Vibrantly patterned wings are its prominent feature. It sucks sweet flower nectar with its long mouth.'),
  -- cascoon in x
  (268, 26800, 21, 'Its body, which is made of soft silk, hardens over time. When cracks appear, evolution is near.'),
  -- dustox in x
  (269, 26900, 21, 'A nocturnal Pokémon. Drawn by streetlights, they messily eat the leaves of trees lining boulevards.'),
  -- lotad in x
  (270, 27000, 21, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in x
  (271, 27100, 21, 'It lives at the water’s edge where it is sunny. It sleeps on a bed of water-grass by day and becomes active at night.'),
  -- ludicolo in x
  (272, 27200, 21, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in x
  (273, 27300, 21, 'It attaches itself to a tree branch using the top of its head. Strong winds can sometimes make it fall.'),
  -- nuzleaf in x
  (274, 27400, 21, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in x
  (275, 27500, 21, 'A Pokémon that was feared as a forest guardian. It can read the foe’s mind and take preemptive action.'),
  -- taillow in x
  (276, 27600, 21, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in x
  (277, 27700, 21, 'If its two tail feathers are standing at attention, it is proof of good health. It soars elegantly in the sky.'),
  -- wingull in x
  (278, 27800, 21, 'Catching sea winds with its long wings, it soars as if it were a glider. It folds its wings to rest.'),
  -- pelipper in x
  (279, 27900, 21, 'It dips its large bill in the sea, then scoops up numerous prey along with water.'),
  -- ralts in x
  (280, 28000, 21, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in x
  (281, 28100, 21, 'The cheerful spirit of its Trainer gives it energy for its psychokinetic power. It spins and dances when happy.'),
  -- gardevoir in x
  (282, 28200, 21, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in x
  (283, 28300, 21, 'They usually live on ponds, but after an evening shower, they may appear on puddles in towns.'),
  -- masquerain in x
  (284, 28400, 21, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in x
  (285, 28500, 21, 'It prefers damp places. By day it remains still in the forest shade. It releases toxic powder from its head.'),
  -- breloom in x
  (286, 28600, 21, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in x
  (287, 28700, 21, 'The way Slakoth lolls around makes anyone who watches it feel like doing the same.'),
  -- vigoroth in x
  (288, 28800, 21, 'Its heartbeat is fast and its blood so agitated that it can’t sit still for one second.'),
  -- slaking in x
  (289, 28900, 21, 'The world’s laziest Pokémon. It moves to another spot when there’s no food left within its reach.'),
  -- nincada in x
  (290, 29000, 21, 'Because it lived almost entirely underground, it is nearly blind. It uses its antennae instead.'),
  -- ninjask in x
  (291, 29100, 21, 'Its cry leaves a lasting headache if heard for too long. It moves so quickly that it is almost invisible.'),
  -- shedinja in x
  (292, 29200, 21, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in x
  (293, 29300, 21, 'It usually murmurs but starts crying loudly if it senses danger. It stops when its ear covers are shut.'),
  -- loudred in x
  (294, 29400, 21, 'It shouts loudly by inhaling air, and then uses its well-developed stomach muscles to exhale.'),
  -- exploud in x
  (295, 29500, 21, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in x
  (296, 29600, 21, 'It toughens up by slamming into thick trees over and over. It gains a sturdy body and dauntless spirit.'),
  -- hariyama in x
  (297, 29700, 21, 'It stomps on the ground to build power. It can send a 10-ton truck flying with a straight-arm punch.'),
  -- azurill in x
  (298, 29800, 21, 'A Pokémon that lives by water. It moves quickly on land by bouncing on its big tail.'),
  -- nosepass in x
  (299, 29900, 21, 'Its magnetic nose always faces north and draws iron objects to its body to protect itself better.'),
  -- skitty in x
  (300, 30000, 21, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in x
  (301, 30100, 21, 'It dislikes dirty places. It often searches for a comfortable place in which to groom itself.'),
  -- sableye in x
  (302, 30200, 21, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in x
  (303, 30300, 21, 'It uses its docile-looking face to lull foes into complacency, then bites with its huge, relentless jaws.'),
  -- aron in x
  (304, 30400, 21, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in x
  (305, 30500, 21, 'It loves iron ore. Groups of them fight for territory by bashing one another with their steel bodies.'),
  -- aggron in x
  (306, 30600, 21, 'It claims an entire mountain as its own. The more wounds it has, the more it has battled, so don’t take it lightly.'),
  -- meditite in x
  (307, 30700, 21, 'It always trains deep in mountains. It levitates when it heightens its spiritual power through meditation.'),
  -- medicham in x
  (308, 30800, 21, 'It elegantly avoids attacks with dance-like steps, then launches a devastating blow in the same motion.'),
  -- electrike in x
  (309, 30900, 21, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in x
  (310, 31000, 21, 'It rarely appears before people. It is said to nest where lightning has fallen.'),
  -- plusle in x
  (311, 31100, 21, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in x
  (312, 31200, 21, 'Exposure to electricity from Minun and Plusle promotes blood circulation and relaxes muscles.'),
  -- volbeat in x
  (313, 31300, 21, 'It communicates with others by lighting up its rear at night. It loves Illumise’s sweet aroma.'),
  -- illumise in x
  (314, 31400, 21, 'Its fragrance attracts a swarm of Volbeat, so they draw over 200 patterns in the night sky.'),
  -- roselia in x
  (315, 31500, 21, 'It uses the different poisons in each hand separately when it attacks. The stronger its aroma, the healthier it is.'),
  -- gulpin in x
  (316, 31600, 21, 'It has a small heart and brain. Its stomach comprises most of its body, with enzymes to dissolve anything.'),
  -- swalot in x
  (317, 31700, 21, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in x
  (318, 31800, 21, 'They form packs to attack boats and rip out their hulls to sink them. They live in rivers in the jungle.'),
  -- sharpedo in x
  (319, 31900, 21, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in x
  (320, 32000, 21, 'It bounces playfully like a ball. The more seawater it swallows, the higher it bounces.'),
  -- wailord in x
  (321, 32100, 21, 'It can sometimes knock out opponents with the shock created by breaching and crashing its big body onto the water.'),
  -- numel in x
  (322, 32200, 21, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in x
  (323, 32300, 21, 'The volcanoes on its back have a major eruption every 10 years--or whenever it becomes really angry.'),
  -- torkoal in x
  (324, 32400, 21, 'You find abandoned coal mines full of them. They dig tirelessly in search of coal.'),
  -- spoink in x
  (325, 32500, 21, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in x
  (326, 32600, 21, 'It uses black pearls to amplify its psychic power. It does a strange dance to control foes’ minds.'),
  -- spinda in x
  (327, 32700, 21, 'No two Spinda have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in x
  (328, 32800, 21, 'It lives in arid deserts. It makes a sloping pit trap in sand where it patiently awaits prey.'),
  -- vibrava in x
  (329, 32900, 21, 'The ultrasonic waves it generates by rubbing its two wings together cause severe headaches.'),
  -- flygon in x
  (330, 33000, 21, 'It hides itself by kicking up desert sand with its wings. Red covers shield its eyes from sand.'),
  -- cacnea in x
  (331, 33100, 21, 'It lives in arid locations. Its yellow flowers bloom once a year.'),
  -- cacturne in x
  (332, 33200, 21, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in x
  (333, 33300, 21, 'For some reason, it likes to land on people’s heads softly and act like it’s a hat.'),
  -- altaria in x
  (334, 33400, 21, 'It flies gracefully through the sky. Its melodic humming makes you feel like you’re in a dream.'),
  -- zangoose in x
  (335, 33500, 21, 'It has feuded with Seviper for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in x
  (336, 33600, 21, 'In battle, it uses its bladed tail to counter any Zangoose. It secretes a deadly venom in its tail.'),
  -- lunatone in x
  (337, 33700, 21, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in x
  (338, 33800, 21, 'Solar energy is the source of its power, so it is strong during the daytime. When it spins, its body shines.'),
  -- barboach in x
  (339, 33900, 21, 'It coats its entire body with a slimy fluid so it can squirm and slip away if grabbed.'),
  -- whiscash in x
  (340, 34000, 21, 'It claims a large swamp to itself. If a foe comes near it, it sets off tremors by thrashing around.'),
  -- corphish in x
  (341, 34100, 21, 'No matter how dirty the water in the river, it will adapt and thrive. It has a strong will to survive.'),
  -- crawdaunt in x
  (342, 34200, 21, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in x
  (343, 34300, 21, 'It moves while spinning around on its single foot. Some Baltoy have been seen spinning on their heads.'),
  -- claydol in x
  (344, 34400, 21, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in x
  (345, 34500, 21, 'It disguises its tentacles as flowers to attract and catch prey. It became extinct in ancient times.'),
  -- cradily in x
  (346, 34600, 21, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in x
  (347, 34700, 21, 'It is a kind of Pokémon progenitor. It uses its extending claws to catch prey hiding among rocks on the seafloor.'),
  -- armaldo in x
  (348, 34800, 21, 'Its enormous, retractable claws can cut through most anything. Its entire body is clad in sturdy plates.'),
  -- feebas in x
  (349, 34900, 21, 'It eats anything, so it can even live in polluted streams and lakes. No one pays any attention to it.'),
  -- milotic in x
  (350, 35000, 21, 'Milotic is breathtakingly beautiful. Those that see it are said to forget their combative spirits.'),
  -- castform in x
  (351, 35100, 21, 'This Pokémon can change its cells, taking different forms based on the temperature and humidity.'),
  -- kecleon in x
  (352, 35200, 21, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in x
  (353, 35300, 21, 'It uses its horn to feed on envy and malice-- or so it’s said. It’s very active at night.'),
  -- banette in x
  (354, 35400, 21, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in x
  (355, 35500, 21, 'It doggedly pursues its prey wherever it goes. However, the chase is abandoned at sunrise.'),
  -- dusclops in x
  (356, 35600, 21, 'Anyone who dares peer into its body to see its spectral ball of fire will have their spirit stolen away.'),
  -- tropius in x
  (357, 35700, 21, 'It flies by flapping its broad leaves and gives the sweet, delicious fruit around its neck to children.'),
  -- chimecho in x
  (358, 35800, 21, 'It uses the sucker on its head to hang from a tree or from eaves. It can produce seven different tones.'),
  -- absol in x
  (359, 35900, 21, 'It senses coming disasters and appears before people only to warn them of impending danger.'),
  -- wynaut in x
  (360, 36000, 21, 'It tends to move in a pack with others. They cluster in a tight group to sleep in a cave.'),
  -- snorunt in x
  (361, 36100, 21, 'It is said that several Snorunt gather under giant leaves and live together in harmony.'),
  -- glalie in x
  (362, 36200, 21, 'To protect itself, it clad its body in an armor of ice, made by freezing moisture in the air.'),
  -- spheal in x
  (363, 36300, 21, 'They can’t swim well yet, and they move much faster by rolling. When they’re happy, they clap fins.'),
  -- sealeo in x
  (364, 36400, 21, 'It has a very sensitive nose. It touches new things with its nose to examine them.'),
  -- walrein in x
  (365, 36500, 21, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in x
  (366, 36600, 21, 'When it evolves, it makes a mysterious pearl that amplifies psychic powers when it’s held.'),
  -- huntail in x
  (367, 36700, 21, 'It lives deep in the sea where no light ever filters down. It lights up its small fishlike tail to attract prey.'),
  -- gorebyss in x
  (368, 36800, 21, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in x
  (369, 36900, 21, 'It has remained unchanged for 100 million years. It was discovered during a deep-sea exploration.'),
  -- luvdisc in x
  (370, 37000, 21, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in x
  (371, 37100, 21, 'Its well-developed neck muscles and iron-like head can smash boulders into pieces.'),
  -- shelgon in x
  (372, 37200, 21, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in x
  (373, 37300, 21, 'It becomes uncontrollable if it is enraged. It destroys everything with shredding claws and fire.'),
  -- beldum in x
  (374, 37400, 21, 'The magnetic force generated by its body repels the ground’s natural magnetism, letting it float.'),
  -- metang in x
  (375, 37500, 21, 'It is formed by two Beldum joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in x
  (376, 37600, 21, 'With four linked brains, it’s more intelligent than a supercomputer, and it uses calculations to analyze foes.'),
  -- regirock in x
  (377, 37700, 21, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in x
  (378, 37800, 21, 'It is said to have slept in a glacier for thousands of years. Its body can’t be melted, even by magma.'),
  -- registeel in x
  (379, 37900, 21, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in x
  (380, 38000, 21, 'It communicates using telepathy. Its body is covered in down that refracts light to make it invisible.'),
  -- latios in x
  (381, 38100, 21, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in x
  (382, 38200, 21, 'A mythical Pokémon said to have swelled the seas with rain and tidal waves. It battled with Groudon.'),
  -- groudon in x
  (383, 38300, 21, 'Said to have expanded the lands by evaporating water with raging heat. It battled titanically with Kyogre.'),
  -- rayquaza in x
  (384, 38400, 21, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in x
  (385, 38500, 21, 'Generations have believed that any wish written on a note on its head will come true when it awakens.'),
  -- deoxys in x
  (386, 38600, 21, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in x
  (387, 38700, 21, 'Photosynthesis occurs across its body under the sun. The shell on its back is actually hardened soil.'),
  -- grotle in x
  (388, 38800, 21, 'It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell.'),
  -- torterra in x
  (389, 38900, 21, 'Ancient people imagined that beneath the ground, a gigantic Torterra dwelled.'),
  -- chimchar in x
  (390, 39000, 21, 'Its fiery rear end is fueled by gas made in its belly. Even rain can’t extinguish the fire.'),
  -- monferno in x
  (391, 39100, 21, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in x
  (392, 39200, 21, 'Its crown of fire is indicative of its fiery nature. It is beaten by none in terms of quickness.'),
  -- piplup in x
  (393, 39300, 21, 'It doesn’t like to be taken care of. It’s difficult to bond with since it won’t listen to its Trainer.'),
  -- prinplup in x
  (394, 39400, 21, 'It lives alone, away from others. Apparently, every one of them believes it is the most important.'),
  -- empoleon in x
  (395, 39500, 21, 'It swims as fast as a jet boat. The edges of its wings are sharp and can slice apart drifting ice.'),
  -- starly in x
  (396, 39600, 21, 'They flock in great numbers. Though small, they flap their wings with great power.'),
  -- staravia in x
  (397, 39700, 21, 'They maintain huge flocks, although fierce scuffles break out between various flocks.'),
  -- staraptor in x
  (398, 39800, 21, 'The muscles in its wings and legs are strong. It can easily fly while gripping a small Pokémon.'),
  -- bidoof in x
  (399, 39900, 21, 'With nerves of steel, nothing can perturb it. It is more agile and active than it appears.'),
  -- bibarel in x
  (400, 40000, 21, 'It busily makes its nest with stacks of branches and roots it has cut up with its sharp incisors.'),
  -- kricketot in x
  (401, 40100, 21, 'It chats with others using the sounds of its colliding antennae. These sounds are fall hallmarks.'),
  -- kricketune in x
  (402, 40200, 21, 'It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib.'),
  -- shinx in x
  (403, 40300, 21, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in x
  (404, 40400, 21, 'Its claws loose electricity with enough amperage to cause fainting. They live in small groups.'),
  -- luxray in x
  (405, 40500, 21, 'When its eyes gleam gold, it can spot hiding prey--even those taking shelter behind a wall.'),
  -- budew in x
  (406, 40600, 21, 'When it feels the sun’s warm touch, it opens its bud to release pollen. It lives alongside clear pools.'),
  -- roserade in x
  (407, 40700, 21, 'Luring prey with a sweet scent, it uses poison whips on its arms to poison, bind, and finish off the prey.'),
  -- cranidos in x
  (408, 40800, 21, 'It was resurrected from an iron ball-like fossil. It downs prey with its headbutts.'),
  -- rampardos in x
  (409, 40900, 21, 'Its skull withstands impacts of any magnitude. As a result, its brain never gets the chance to grow.'),
  -- shieldon in x
  (410, 41000, 21, 'It habitually polishes its face by rubbing it against tree trunks. It is weak to attacks from behind.'),
  -- bastiodon in x
  (411, 41100, 21, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in x
  (412, 41200, 21, 'To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves.'),
  -- wormadam in x
  (413, 41300, 21, 'Its appearance changes depending on where it evolved. The materials on hand become a part of its body.'),
  -- mothim in x
  (414, 41400, 21, 'It loves the honey of flowers and steals honey collected by Combee.'),
  -- combee in x
  (415, 41500, 21, 'The trio is together from birth. It constantly gathers honey from flowers to please Vespiquen.'),
  -- vespiquen in x
  (416, 41600, 21, 'It houses its colony in cells in its body and releases various pheromones to make those grubs do its bidding.'),
  -- pachirisu in x
  (417, 41700, 21, 'It makes fur balls that crackle with static electricity. It stores them with berries in tree holes.'),
  -- buizel in x
  (418, 41800, 21, 'It swims by rotating its two tails like a screw. When it dives, its flotation sac collapses.'),
  -- floatzel in x
  (419, 41900, 21, 'It floats using its well-developed flotation sac. It assists in the rescues of drowning people.'),
  -- cherubi in x
  (420, 42000, 21, 'Sunlight colors it red. When the small ball is drained of nutrients, it shrivels to herald evolution.'),
  -- cherrim in x
  (421, 42100, 21, 'During times of strong sunlight, its bud blooms, its petals open fully, and it becomes very active.'),
  -- shellos in x
  (422, 42200, 21, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in x
  (423, 42300, 21, 'When its natural enemy attacks, it oozes purple fluid and escapes.'),
  -- ambipom in x
  (424, 42400, 21, 'They work in large colonies and make rings by linking their tails, apparently in friendship.'),
  -- drifloon in x
  (425, 42500, 21, 'A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons.'),
  -- drifblim in x
  (426, 42600, 21, 'It carries people and Pokémon when it flies. But since it only drifts, it can end up anywhere.'),
  -- buneary in x
  (427, 42700, 21, 'Its ears are always rolled up. They can be forcefully extended to shatter even a large boulder.'),
  -- lopunny in x
  (428, 42800, 21, 'Extremely cautious, it quickly bounds off when it senses danger.'),
  -- mismagius in x
  (429, 42900, 21, 'It chants incantations. While they usually torment targets, some chants bring happiness.'),
  -- honchkrow in x
  (430, 43000, 21, 'If one utters a deep cry, many Murkrow gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in x
  (431, 43100, 21, 'It claws if displeased and purrs when affectionate. Its fickleness is very popular among some.'),
  -- purugly in x
  (432, 43200, 21, 'It would claim another Pokémon’s nest as its own if it finds a nest sufficiently comfortable.'),
  -- chingling in x
  (433, 43300, 21, 'Each time it hops, it makes a ringing sound. It deafens foes by emitting high-frequency cries.'),
  -- stunky in x
  (434, 43400, 21, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in x
  (435, 43500, 21, 'It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet.'),
  -- bronzor in x
  (436, 43600, 21, 'Ancient people believed that the pattern on Bronzor’s back contained a mysterious power.'),
  -- bronzong in x
  (437, 43700, 21, 'In ages past, this Pokémon was revered as a bringer of rain. It was found buried in the ground.'),
  -- bonsly in x
  (438, 43800, 21, 'It prefers arid environments. It leaks water from its eyes to adjust its body’s fluid levels.'),
  -- mime-jr in x
  (439, 43900, 21, 'In an attempt to confuse its enemy, it mimics the enemy’s movements. Then it wastes no time in making itself scarce!'),
  -- happiny in x
  (440, 44000, 21, 'It carries a round, egg-shaped rock in its belly pouch and gives the rock to its friends.'),
  -- chatot in x
  (441, 44100, 21, 'It mimics the cries of other Pokémon to trick them into thinking it’s one of them. This way they won’t attack it.'),
  -- spiritomb in x
  (442, 44200, 21, 'A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone.'),
  -- gible in x
  (443, 44300, 21, 'It nests in horizontal holes warmed by geothermal heat. Foes who get too close can expect to be pounced on and bitten.'),
  -- gabite in x
  (444, 44400, 21, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in x
  (445, 44500, 21, 'When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed.'),
  -- munchlax in x
  (446, 44600, 21, 'It hides food under its long body hair. However, it forgets it has hidden the food.'),
  -- riolu in x
  (447, 44700, 21, 'It uses the shapes of auras, which change according to emotion, to communicate with others.'),
  -- lucario in x
  (448, 44800, 21, 'By catching the aura emanating from others, it can read their thoughts and movements.'),
  -- hippopotas in x
  (449, 44900, 21, 'It lives in arid places. Instead of perspiration, it expels grainy sand from its body.'),
  -- hippowdon in x
  (450, 45000, 21, 'It brandishes its gaping mouth in a display of fearsome strength. It raises vast quantities of sand while attacking.'),
  -- skorupi in x
  (451, 45100, 21, 'It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes.'),
  -- drapion in x
  (452, 45200, 21, 'It takes pride in its strength. Even though it can tear foes apart, it finishes them off with powerful poison.'),
  -- croagunk in x
  (453, 45300, 21, 'Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers.'),
  -- toxicroak in x
  (454, 45400, 21, 'It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.'),
  -- carnivine in x
  (455, 45500, 21, 'It attracts prey with its sweet-smelling saliva, then chomps down. It takes a whole day to eat prey.'),
  -- finneon in x
  (456, 45600, 21, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in x
  (457, 45700, 21, 'It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins.'),
  -- mantyke in x
  (458, 45800, 21, 'The pattern on its back varies by region. It often swims in a school of Remoraid.'),
  -- snover in x
  (459, 45900, 21, 'During cold seasons, it migrates to the mountain’s lower reaches. It returns to the snow-covered summit in the spring.'),
  -- abomasnow in x
  (460, 46000, 21, 'It blankets wide areas in snow by whipping up blizzards. It is also known as “The Ice Monster.”'),
  -- weavile in x
  (461, 46100, 21, 'It lives in snowy regions. It carves patterns in trees with its claws as a signal to others.'),
  -- magnezone in x
  (462, 46200, 21, 'Sometimes the magnetism emitted by Magnezone is too strong, making them attract each other so they cannot move.'),
  -- lickilicky in x
  (463, 46300, 21, 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.'),
  -- rhyperior in x
  (464, 46400, 21, 'From holes in its palms, it fires out Geodude. Its carapace can withstand volcanic eruptions.'),
  -- tangrowth in x
  (465, 46500, 21, 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.'),
  -- electivire in x
  (466, 46600, 21, 'As its electric charge amplifies, blue sparks begin to crackle between its horns.'),
  -- magmortar in x
  (467, 46700, 21, 'It blasts fireballs of over 3,600 degrees Fahrenheit from the ends of its arms. It lives in volcanic craters.'),
  -- togekiss in x
  (468, 46800, 21, 'As everyone knows, it visits peaceful regions, bringing them gifts of kindness and sweet blessings.'),
  -- yanmega in x
  (469, 46900, 21, 'It prefers to battle by biting apart foes’ heads instantly while flying by at high speed.'),
  -- leafeon in x
  (470, 47000, 21, 'When you see Leafeon asleep in a patch of sunshine, you’ll know it is using photosynthesis to produce clean air.'),
  -- glaceon in x
  (471, 47100, 21, 'By controlling its body heat, it can freeze the atmosphere around it to make a diamond-dust flurry.'),
  -- gliscor in x
  (472, 47200, 21, 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!'),
  -- mamoswine in x
  (473, 47300, 21, 'A frozen Mamoswine was dug from ice dating back 10,000 years. This Pokémon has been around a long, long, long time.'),
  -- porygon-z in x
  (474, 47400, 21, 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.'),
  -- gallade in x
  (475, 47500, 21, 'Because it can sense what its foe is thinking, its attacks burst out first, fast, and fierce.'),
  -- probopass in x
  (476, 47600, 21, 'It exudes strong magnetism from all over. It controls three small units called Mini-Noses.'),
  -- dusknoir in x
  (477, 47700, 21, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in x
  (478, 47800, 21, 'It freezes foes with an icy breath nearly -60 degrees Fahrenheit. What seems to be its body is actually hollow.'),
  -- rotom in x
  (479, 47900, 21, 'Research continues on this Pokémon, which could be the power source of a unique motor.'),
  -- uxie in x
  (480, 48000, 21, 'Known as “The Being of Knowledge.” It is said that it can wipe out the memory of those who see its eyes.'),
  -- mesprit in x
  (481, 48100, 21, 'Known as “The Being of Emotion.” It taught humans the nobility of sorrow, pain, and joy.'),
  -- azelf in x
  (482, 48200, 21, 'Known as “The Being of Willpower.” It sleeps at the bottom of a lake to keep the world in balance.'),
  -- dialga in x
  (483, 48300, 21, 'A Pokémon spoken of in legend. It is said that time began moving when Dialga was born.'),
  -- palkia in x
  (484, 48400, 21, 'It is said to live in a gap in the spatial dimension parallel to ours. It appears in mythology.'),
  -- heatran in x
  (485, 48500, 21, 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.'),
  -- regigigas in x
  (486, 48600, 21, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in x
  (487, 48700, 21, 'This Pokémon is said to live in a world on the reverse side of ours, where common knowledge is distorted and strange.'),
  -- cresselia in x
  (488, 48800, 21, 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.'),
  -- phione in x
  (489, 48900, 21, 'When the water warms, they inflate the flotation sac on their heads and drift languidly on the sea in packs.'),
  -- manaphy in x
  (490, 49000, 21, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in x
  (491, 49100, 21, 'It chases people and Pokémon from its territory by causing them to experience deep, nightmarish slumbers.'),
  -- shaymin in x
  (492, 49200, 21, 'It can dissolve toxins in the air to instantly transform ruined land into a lush field of flowers.'),
  -- arceus in x
  (493, 49300, 21, 'According to the legends of Sinnoh, this Pokémon emerged from an egg and shaped all there is in this world.'),
  -- victini in x
  (494, 49400, 21, 'This Pokémon brings victory. It is said that Trainers with Victini always win, regardless of the type of encounter.'),
  -- snivy in x
  (495, 49500, 21, 'Being exposed to sunlight makes its movements swifter. It uses vines more adeptly than its hands.'),
  -- servine in x
  (496, 49600, 21, 'It moves along the ground as if sliding. Its swift movements befuddle its foes, and it then attacks with a vine whip.'),
  -- serperior in x
  (497, 49700, 21, 'It only gives its all against strong opponents who are not fazed by the glare from Serperior’s noble eyes.'),
  -- tepig in x
  (498, 49800, 21, 'It can deftly dodge its foe’s attacks while shooting fireballs from its nose. It roasts berries before it eats them.'),
  -- pignite in x
  (499, 49900, 21, 'The more it eats, the more fuel it has to make the fire in its stomach stronger. This fills it with even more power.'),
  -- emboar in x
  (500, 50000, 21, 'It can throw a fire punch by setting its fists on fire with its fiery chin. It cares deeply about its friends.'),
  -- oshawott in x
  (501, 50100, 21, 'The scalchop on its stomach isn’t just used for battle--it can be used to break open hard berries as well.'),
  -- dewott in x
  (502, 50200, 21, 'Strict training is how it learns its flowing double-scalchop technique.'),
  -- samurott in x
  (503, 50300, 21, 'In the time it takes a foe to blink, it can draw and sheathe the seamitars attached to its front legs.'),
  -- patrat in x
  (504, 50400, 21, 'Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.'),
  -- watchog in x
  (505, 50500, 21, 'Using luminescent matter, it makes its eyes and body glow and stuns attacking opponents.'),
  -- lillipup in x
  (506, 50600, 21, 'The long hair around its face provides an amazing radar that lets it sense subtle changes in its surroundings.'),
  -- herdier in x
  (507, 50700, 21, 'This very loyal Pokémon helps Trainers, and it also takes care of other Pokémon.'),
  -- stoutland in x
  (508, 50800, 21, 'It rescues people stranded by blizzards in the mountains. Its shaggy fur shields it from the cold.'),
  -- purrloin in x
  (509, 50900, 21, 'Its cute act is a ruse. When victims let down their guard, they find their items taken. It attacks with sharp claws.'),
  -- liepard in x
  (510, 51000, 21, 'Their beautiful form comes from the muscles they have developed. They run silently in the night.'),
  -- pansage in x
  (511, 51100, 21, 'It shares the leaf on its head with weary-looking Pokémon. These leaves are known to relieve stress.'),
  -- simisage in x
  (512, 51200, 21, 'It attacks enemies with strikes of its thorn-covered tail. This Pokémon is wild tempered.'),
  -- pansear in x
  (513, 51300, 21, 'Very intelligent, it roasts berries before eating them. It likes to help people.'),
  -- simisear in x
  (514, 51400, 21, 'A flame burns inside its body. It scatters embers from its head and tail to sear its opponents.'),
  -- panpour in x
  (515, 51500, 21, 'The water stored inside the tuft on its head is full of nutrients. It waters plants with it using its tail.'),
  -- simipour in x
  (516, 51600, 21, 'The high-pressure water expelled from its tail is so powerful, it can destroy a concrete wall.'),
  -- munna in x
  (517, 51700, 21, 'This Pokémon appears before people and Pokémon who are having nightmares and eats those dreams.'),
  -- musharna in x
  (518, 51800, 21, 'The mist emanating from their foreheads is packed with the dreams of people and Pokémon.'),
  -- pidove in x
  (519, 51900, 21, 'This very forgetful Pokémon will wait for a new order from its Trainer even though it already has one.'),
  -- tranquill in x
  (520, 52000, 21, 'Many people believe that, deep in the forest where Tranquill live, there is a peaceful place where there is no war.'),
  -- unfezant in x
  (521, 52100, 21, 'Males swing their head plumage to threaten opponents. The females’ flying abilities surpass those of the males.'),
  -- blitzle in x
  (522, 52200, 21, 'When thunderclouds cover the sky, it will appear. It can catch lightning with its mane and store the electricity.'),
  -- zebstrika in x
  (523, 52300, 21, 'When this ill-tempered Pokémon runs wild, it shoots lightning from its mane in all directions.'),
  -- roggenrola in x
  (524, 52400, 21, 'Its ear is hexagonal in shape. Compressed underground, its body is as hard as steel.'),
  -- boldore in x
  (525, 52500, 21, 'Because its energy was too great to be contained, the energy leaked and formed orange crystals.'),
  -- gigalith in x
  (526, 52600, 21, 'The solar rays it absorbs are processed in its energy core and fired as a ball of light.'),
  -- woobat in x
  (527, 52700, 21, 'Its habitat is dark forests and caves. It emits ultrasonic waves from its nose to learn about its surroundings.'),
  -- swoobat in x
  (528, 52800, 21, 'It shakes its tail vigorously when it emits ultrasonic waves strong enough to reduce concrete to rubble.'),
  -- drilbur in x
  (529, 52900, 21, 'It makes its way swiftly through the soil by putting both claws together and rotating at high speed.'),
  -- excadrill in x
  (530, 53000, 21, 'It can help in tunnel construction. Its drill has evolved into steel strong enough to bore through iron plates.'),
  -- audino in x
  (531, 53100, 21, 'Using the feelers on its ears, it can tell how someone is feeling or when an egg might hatch.'),
  -- timburr in x
  (532, 53200, 21, 'These Pokémon appear at building sites and help out with construction. They always carry squared logs.'),
  -- gurdurr in x
  (533, 53300, 21, 'With strengthened bodies, they skillfully wield steel beams to take down buildings.'),
  -- conkeldurr in x
  (534, 53400, 21, 'It is thought that Conkeldurr taught humans how to make concrete more than 2,000 years ago.'),
  -- tympole in x
  (535, 53500, 21, 'By vibrating its cheeks, it emits sound waves imperceptible to humans and warns others of danger.'),
  -- palpitoad in x
  (536, 53600, 21, 'When they vibrate the bumps on their heads, they can make waves in water or earthquake-like vibrations on land.'),
  -- seismitoad in x
  (537, 53700, 21, 'It increases the power of its punches by vibrating the bumps on its fists. It can turn a boulder to rubble with one punch.'),
  -- throh in x
  (538, 53800, 21, 'When it tightens its belt, it becomes stronger. Wild Throh use vines to weave their own belts.'),
  -- sawk in x
  (539, 53900, 21, 'Desiring the strongest karate chop, they seclude themselves in mountains and train without sleeping.'),
  -- sewaddle in x
  (540, 54000, 21, 'This Pokémon makes clothes for itself. It chews up leaves and sews them with sticky thread extruded from its mouth.'),
  -- swadloon in x
  (541, 54100, 21, 'Forests where Swadloon live have superb foliage because the nutrients they make from fallen leaves nourish the plant life.'),
  -- leavanny in x
  (542, 54200, 21, 'Upon finding a small Pokémon, it weaves clothing for it from leaves by using the sticky silk secreted from its mouth.'),
  -- venipede in x
  (543, 54300, 21, 'It discovers what is going on around it by using the feelers on its head and tail. It is brutally aggressive.'),
  -- whirlipede in x
  (544, 54400, 21, 'Protected by a hard shell, it spins its body like a wheel and crashes furiously into its enemies.'),
  -- scolipede in x
  (545, 54500, 21, 'It clasps its prey with the claws on its neck until it stops moving. Then it finishes it off with deadly poison.'),
  -- cottonee in x
  (546, 54600, 21, 'When attacked, it escapes by shooting cotton from its body. The cotton serves as a decoy to distract the attacker.'),
  -- whimsicott in x
  (547, 54700, 21, 'They appear along with whirlwinds. They pull pranks, such as moving furniture and leaving balls of cotton in homes.'),
  -- petilil in x
  (548, 54800, 21, 'The leaves on its head are very bitter. Eating one of these leaves is known to refresh a tired body.'),
  -- lilligant in x
  (549, 54900, 21, 'The fragrance of the garland on its head has a relaxing effect. It withers if a Trainer does not take good care of it.'),
  -- basculin in x
  (550, 55000, 21, 'Red- and blue-striped Basculin are very violent and always fighting. They are also remarkably tasty.'),
  -- sandile in x
  (551, 55100, 21, 'It moves along below the sand’s surface, except for its nose and eyes. A dark membrane shields its eyes from the sun.'),
  -- krokorok in x
  (552, 55200, 21, 'They live in groups of a few individuals. Protective membranes shield their eyes from sandstorms.'),
  -- krookodile in x
  (553, 55300, 21, 'Very violent Pokémon, they try to clamp down on anything that moves in front of their eyes.'),
  -- darumaka in x
  (554, 55400, 21, 'Darumaka’s droppings are hot, so people used to put them in their clothes to keep themselves warm.'),
  -- darmanitan in x
  (555, 55500, 21, 'When one is injured in a fierce battle, it hardens into a stone-like form. Then it meditates and sharpens its mind.'),
  -- maractus in x
  (556, 55600, 21, 'It uses an up-tempo song and dance to drive away the bird Pokémon that prey on its flower seeds.'),
  -- dwebble in x
  (557, 55700, 21, 'It makes a hole in a suitable rock. If that rock breaks, the Pokémon remains agitated until it locates a replacement.'),
  -- crustle in x
  (558, 55800, 21, 'It possesses legs of enormous strength, enabling it to carry heavy slabs for many days, even when crossing arid land.'),
  -- scraggy in x
  (559, 55900, 21, 'Its skin has a rubbery elasticity, so it can reduce damage by defensively pulling its skin up to its neck.'),
  -- scrafty in x
  (560, 56000, 21, 'It pulls up its shed skin to protect itself while it kicks. The bigger the crest, the more respected it is.'),
  -- sigilyph in x
  (561, 56100, 21, 'The guardians of an ancient city, they use their psychic power to attack enemies that invade their territory.'),
  -- yamask in x
  (562, 56200, 21, 'These Pokémon arose from the spirits of people interred in graves. Each retains memories of its former life.'),
  -- cofagrigus in x
  (563, 56300, 21, 'It has been said that they swallow those who get too close and turn them into mummies. They like to eat gold nuggets.'),
  -- tirtouga in x
  (564, 56400, 21, 'About 100 million years ago, these Pokémon swam in oceans. It is thought they also went on land to attack prey.'),
  -- carracosta in x
  (565, 56500, 21, 'They can live both in the ocean and on land. A slap from one of them is enough to open a hole in the bottom of a tanker.'),
  -- archen in x
  (566, 56600, 21, 'Revived from a fossil, this Pokémon is thought to be the ancestor of all bird Pokémon.'),
  -- archeops in x
  (567, 56700, 21, 'They are intelligent and will cooperate to catch prey. From the ground, they use a running start to take flight.'),
  -- trubbish in x
  (568, 56800, 21, 'The combination of garbage bags and industrial waste caused the chemical reaction that created this Pokémon.'),
  -- garbodor in x
  (569, 56900, 21, 'It clenches opponents with its left arm and finishes them off with foul-smelling poison gas belched from its mouth.'),
  -- zorua in x
  (570, 57000, 21, 'It changes so it looks just like its foe, tricks it, and then uses that opportunity to flee.'),
  -- zoroark in x
  (571, 57100, 21, 'Each has the ability to fool a large group of people simultaneously. They protect their lair with illusory scenery.'),
  -- minccino in x
  (572, 57200, 21, 'Minccino greet each other by grooming one another thoroughly with their tails.'),
  -- cinccino in x
  (573, 57300, 21, 'Their white fur feels amazing to touch. Their fur repels dust and prevents static electricity from building up.'),
  -- gothita in x
  (574, 57400, 21, 'Their ribbonlike feelers increase their psychic power. They are always staring at something.'),
  -- gothorita in x
  (575, 57500, 21, 'Starlight is the source of their power. At night, they mark star positions by using psychic power to float stones.'),
  -- gothitelle in x
  (576, 57600, 21, 'Starry skies thousands of light-years away are visible in the space distorted by their intense psychic power.'),
  -- solosis in x
  (577, 57700, 21, 'Because their bodies are enveloped in a special liquid, they are fine in any environment, no matter how severe.'),
  -- duosion in x
  (578, 57800, 21, 'Since they have two divided brains, at times they suddenly try to take two different actions at once.'),
  -- reuniclus in x
  (579, 57900, 21, 'They use psychic power to control their arms, which are made of a special liquid. They can crush boulders psychically.'),
  -- ducklett in x
  (580, 58000, 21, 'When attacked, it uses its feathers to splash water, escaping under cover of the spray.'),
  -- swanna in x
  (581, 58100, 21, 'Despite their elegant appearance, they can flap their wings strongly and fly for thousands of miles.'),
  -- vanillite in x
  (582, 58200, 21, 'The temperature of their breath is -58 degrees Fahrenheit. They create snow crystals and make snow fall in the areas around them.'),
  -- vanillish in x
  (583, 58300, 21, 'They cool down the surrounding air and create ice particles, which they use to freeze their foes.'),
  -- vanilluxe in x
  (584, 58400, 21, 'If both heads get angry simultaneously, this Pokémon expels a blizzard, burying everything in snow.'),
  -- deerling in x
  (585, 58500, 21, 'Their coloring changes according to the seasons and can be slightly affected by the temperature and humidity as well.'),
  -- sawsbuck in x
  (586, 58600, 21, 'They migrate according to the seasons. People can tell the season by looking at Sawsbuck’s horns.'),
  -- emolga in x
  (587, 58700, 21, 'They live on treetops and glide using the inside of a cape-like membrane while discharging electricity.'),
  -- karrablast in x
  (588, 58800, 21, 'These mysterious Pokémon evolve when they receive electrical stimulation while they are in the same place as Shelmet.'),
  -- escavalier in x
  (589, 58900, 21, 'Wearing the shell covering they stole from Shelmet, they defend themselves and attack with two lances.'),
  -- foongus in x
  (590, 59000, 21, 'It lures people in with its Poké Ball pattern, then releases poison spores. Why it resembles a Poké Ball is unknown.'),
  -- amoonguss in x
  (591, 59100, 21, 'They show off their Poké Ball caps to lure prey, but very few Pokémon are fooled by this.'),
  -- frillish in x
  (592, 59200, 21, 'They paralyze prey with poison, then drag them down to their lairs, five miles below the surface.'),
  -- jellicent in x
  (593, 59300, 21, 'Its body is mostly seawater. It’s said there’s a castle of ships Jellicent have sunk on the seafloor.'),
  -- alomomola in x
  (594, 59400, 21, 'Floating in the open sea is how they live. When they find a wounded Pokémon, they embrace it and bring it to shore.'),
  -- joltik in x
  (595, 59500, 21, 'Since it can’t generate its own electricity, it sticks onto large-bodied Pokémon and absorbs static electricity.'),
  -- galvantula in x
  (596, 59600, 21, 'They employ an electrically charged web to trap their prey. While it is immobilized by shock, they leisurely consume it.'),
  -- ferroseed in x
  (597, 59700, 21, 'When threatened, it attacks by shooting a barrage of spikes, which gives it a chance to escape by rolling away.'),
  -- ferrothorn in x
  (598, 59800, 21, 'By swinging around its three spiky feelers and shooting spikes, it can obliterate an opponent.'),
  -- klink in x
  (599, 59900, 21, 'Interlocking two bodies and spinning around generates the energy they need to live.'),
  -- klang in x
  (600, 60000, 21, 'By changing the direction in which it rotates, it communicates its feelings to others. When angry, it rotates faster.'),
  -- klinklang in x
  (601, 60100, 21, 'The gear with the red core is rotated at high speed for a rapid energy charge.'),
  -- tynamo in x
  (602, 60200, 21, 'While one alone doesn’t have much power, a chain of many Tynamo can be as powerful as lightning.'),
  -- eelektrik in x
  (603, 60300, 21, 'It wraps itself around its prey and paralyzes it with electricity from the round spots on its sides. Then it chomps.'),
  -- eelektross in x
  (604, 60400, 21, 'With their sucker mouths, they suck in prey. Then they use their fangs to shock the prey with electricity.'),
  -- elgyem in x
  (605, 60500, 21, 'It uses its strong psychic power to squeeze its opponent’s brain, causing unendurable headaches.'),
  -- beheeyem in x
  (606, 60600, 21, 'Apparently, it communicates by flashing its three fingers, but those patterns haven’t been decoded.'),
  -- litwick in x
  (607, 60700, 21, 'While shining a light and pretending to be a guide, it leeches off the life force of any who follow it.'),
  -- lampent in x
  (608, 60800, 21, 'The spirits it absorbs fuel its baleful fire. It hangs around hospitals waiting for people to pass on.'),
  -- chandelure in x
  (609, 60900, 21, 'Being consumed in Chandelure’s flame burns up the spirit, leaving the body behind.'),
  -- axew in x
  (610, 61000, 21, 'They use their tusks to crush the berries they eat. Repeated regrowth makes their tusks strong and sharp.'),
  -- fraxure in x
  (611, 61100, 21, 'Their tusks can shatter rocks. Territory battles between Fraxure can be intensely violent.'),
  -- haxorus in x
  (612, 61200, 21, 'They are kind but can be relentless when defending territory. They challenge foes with tusks that can cut steel.'),
  -- cubchoo in x
  (613, 61300, 21, 'Its nose is always running. It sniffs the snot back up because the mucus provides the raw material for its moves.'),
  -- beartic in x
  (614, 61400, 21, 'They love the cold seas of the north. They create pathways across the ocean waters by freezing their own breath.'),
  -- cryogonal in x
  (615, 61500, 21, 'They are born in snow clouds. They use chains made of ice crystals to capture prey.'),
  -- shelmet in x
  (616, 61600, 21, 'When it and Karrablast are together, and both receive electrical stimulation, they both evolve.'),
  -- accelgor in x
  (617, 61700, 21, 'Having removed its heavy shell, it becomes very light and can fight with ninja-like movements.'),
  -- stunfisk in x
  (618, 61800, 21, 'Its skin is very hard, so it is unhurt even if stepped on by sumo wrestlers. It smiles when transmitting electricity.'),
  -- mienfoo in x
  (619, 61900, 21, 'It takes pride in the speed at which it can use moves. What it loses in power, it makes up for in quantity.'),
  -- mienshao in x
  (620, 62000, 21, 'It wields the fur on its arms like a whip. Its arm attacks come with such rapidity that they cannot even be seen.'),
  -- druddigon in x
  (621, 62100, 21, 'It races through narrow caves, using its sharp claws to catch prey. The skin on its face is harder than a rock.'),
  -- golett in x
  (622, 62200, 21, 'The energy that burns inside it enables it to move, but no one has yet been able to identify this energy.'),
  -- golurk in x
  (623, 62300, 21, 'It is said that Golurk were ordered to protect people and Pokémon by the ancient people who made them.'),
  -- pawniard in x
  (624, 62400, 21, 'Blades comprise this Pokémon’s entire body. If battling dulls the blades, it sharpens them on stones by the river.'),
  -- bisharp in x
  (625, 62500, 21, 'This pitiless Pokémon commands a group of Pawniard to hound prey into immobility. It then moves in to finish the prey off.'),
  -- bouffalant in x
  (626, 62600, 21, 'They charge wildly and headbutt everything. Their headbutts have enough destructive force to derail a train.'),
  -- rufflet in x
  (627, 62700, 21, 'They crush berries with their talons. They bravely stand up to any opponent, no matter how strong it is.'),
  -- braviary in x
  (628, 62800, 21, 'For the sake of its friends, this brave warrior of the sky will not stop battling, even if injured.'),
  -- vullaby in x
  (629, 62900, 21, 'Its wings are too tiny to allow it to fly. As the time approaches for it to evolve, it discards the bones it was wearing.'),
  -- mandibuzz in x
  (630, 63000, 21, 'They fly in circles around the sky. When they spot prey, they attack and carry it back to their nest with ease.'),
  -- heatmor in x
  (631, 63100, 21, 'Using their very hot, flame-covered tongues, they burn through Durant’s steel bodies and consume their insides.'),
  -- durant in x
  (632, 63200, 21, 'Individuals each play different roles in driving Heatmor, their natural predator, away from their colony.'),
  -- deino in x
  (633, 63300, 21, 'They cannot see, so they tackle and bite to learn about their surroundings. Their bodies are covered in wounds.'),
  -- zweilous in x
  (634, 63400, 21, 'The two heads do not get along. Whichever head eats more than the other gets to be the leader.'),
  -- hydreigon in x
  (635, 63500, 21, 'The heads on their arms do not have brains. They use all three heads to consume and destroy everything.'),
  -- larvesta in x
  (636, 63600, 21, 'Said to have been born from the sun, it spews fire from its horns and encases itself in a cocoon of fire when it evolves.'),
  -- volcarona in x
  (637, 63700, 21, 'A sea of fire engulfs the surroundings of their battles, since they use their six wings to scatter their ember scales.'),
  -- cobalion in x
  (638, 63800, 21, 'It has a body and heart of steel. Its glare is sufficient to make even an unruly Pokémon obey it.'),
  -- terrakion in x
  (639, 63900, 21, 'Its charge is strong enough to break through a giant castle wall in one blow. This Pokémon is spoken of in legends.'),
  -- virizion in x
  (640, 64000, 21, 'Its head sprouts horns as sharp as blades. Using whirlwind-like movements, it confounds and swiftly cuts opponents.'),
  -- tornadus in x
  (641, 64100, 21, 'The lower half of its body is wrapped in a cloud of energy. It zooms through the sky at 200 mph.'),
  -- thundurus in x
  (642, 64200, 21, 'The spikes on its tail discharge immense bolts of lightning. It flies around the Unova region firing off lightning bolts.'),
  -- reshiram in x
  (643, 64300, 21, 'This legendary Pokémon can scorch the world with fire. It helps those who want to build a world of truth.'),
  -- zekrom in x
  (644, 64400, 21, 'This legendary Pokémon can scorch the world with lightning. It assists those who want to build an ideal world.'),
  -- landorus in x
  (645, 64500, 21, 'Lands visited by Landorus grant such bountiful crops that it has been hailed as “The Guardian of the Fields.”'),
  -- kyurem in x
  (646, 64600, 21, 'This legendary ice Pokémon waits for a hero to fill in the missing parts of its body with truth or ideals.'),
  -- keldeo in x
  (647, 64700, 21, 'It crosses the world, running over the surfaces of oceans and rivers. It appears at scenic waterfronts.'),
  -- meloetta in x
  (648, 64800, 21, 'The melodies sung by Meloetta have the power to make Pokémon that hear them happy or sad.'),
  -- genesect in x
  (649, 64900, 21, 'This ancient bug Pokémon was altered by Team Plasma. They upgraded the cannon on its back.'),
  -- chespin in x
  (650, 65000, 21, 'The quills on its head are usually soft. When it flexes them, the points become so hard and sharp that they can pierce rock.'),
  -- quilladin in x
  (651, 65100, 21, 'It relies on its sturdy shell to deflect predators’ attacks. It counterattacks with its sharp quills.'),
  -- chesnaught in x
  (652, 65200, 21, 'Its Tackle is forceful enough to flip a 50-ton tank. It shields its allies from danger with its own body.'),
  -- fennekin in x
  (653, 65300, 21, 'Eating a twig fills it with energy, and its roomy ears give vent to air hotter than 390 degrees Fahrenheit.'),
  -- braixen in x
  (654, 65400, 21, 'It has a twig stuck in its tail. With friction from its tail fur, it sets the twig on fire and launches into battle.'),
  -- delphox in x
  (655, 65500, 21, 'It gazes into the flame at the tip of its branch to achieve a focused state, which allows it to see into the future.'),
  -- froakie in x
  (656, 65600, 21, 'It secretes flexible bubbles from its chest and back. The bubbles reduce the damage it would otherwise take when attacked.'),
  -- frogadier in x
  (657, 65700, 21, 'It can throw bubble-covered pebbles with precise control, hitting empty cans up to a hundred feet away.'),
  -- greninja in x
  (658, 65800, 21, 'It creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two.'),
  -- bunnelby in x
  (659, 65900, 21, 'They use their large ears to dig burrows. They will dig the whole night through.'),
  -- diggersby in x
  (660, 66000, 21, 'With their powerful ears, they can heft boulders of a ton or more with ease. They can be a big help at construction sites.'),
  -- fletchling in x
  (661, 66100, 21, 'These friendly Pokémon send signals to one another with beautiful chirps and tail-feather movements.'),
  -- fletchinder in x
  (662, 66200, 21, 'From its beak, it expels embers that set the tall grass on fire. Then it pounces on the bewildered prey that pop out of the grass.'),
  -- talonflame in x
  (663, 66300, 21, 'In the fever of an exciting battle, it showers embers from the gaps between its feathers and takes to the air.'),
  -- scatterbug in x
  (664, 66400, 21, 'When under attack from bird Pokémon, it spews a poisonous black powder that causes paralysis on contact.'),
  -- spewpa in x
  (665, 66500, 21, 'It lives hidden within thicket shadows. When predators attack, it quickly bristles the fur covering its body in an effort to threaten them.'),
  -- vivillon in x
  (666, 66600, 21, 'Vivillon with many different patterns are found all over the world. These patterns are affected by the climate of their habitat.'),
  -- litleo in x
  (667, 66700, 21, 'The stronger the opponent it faces, the more heat surges from its mane and the more power flows through its body.'),
  -- pyroar in x
  (668, 66800, 21, 'The male with the largest mane of fire is the leader of the pride.'),
  -- flabebe in x
  (669, 66900, 21, 'It draws out and controls the hidden power of flowers. The flower Flabébé holds is most likely part of its body.'),
  -- floette in x
  (670, 67000, 21, 'It flutters around fields of flowers and cares for flowers that are starting to wilt. It draws out the hidden power of flowers to battle.'),
  -- florges in x
  (671, 67100, 21, 'It claims exquisite flower gardens as its territory, and it obtains power from basking in the energy emitted by flowering plants.'),
  -- skiddo in x
  (672, 67200, 21, 'Thought to be one of the first Pokémon to live in harmony with humans, it has a placid disposition.'),
  -- gogoat in x
  (673, 67300, 21, 'It can tell how its Trainer is feeling by subtle shifts in the grip on its horns. This empathic sense lets them run as if one being.'),
  -- pancham in x
  (674, 67400, 21, 'It does its best to be taken seriously by its enemies, but its glare is not sufficiently intimidating. Chewing on a leaf is its trademark.'),
  -- pangoro in x
  (675, 67500, 21, 'Although it possesses a violent temperament, it won’t put up with bullying. It uses the leaf in its mouth to sense the movements of its enemies.'),
  -- furfrou in x
  (676, 67600, 21, 'Trimming its fluffy fur not only makes it more elegant but also increases the swiftness of its movements.'),
  -- espurr in x
  (677, 67700, 21, 'The organ that emits its intense psychic power is sheltered by its ears to keep power from leaking out.'),
  -- meowstic in x
  (678, 67800, 21, 'When in danger, it raises its ears and releases enough psychic power to grind a 10-ton truck into dust.'),
  -- honedge in x
  (679, 67900, 21, 'Apparently this Pokémon is born when a departed spirit inhabits a sword. It attaches itself to people and drinks their life force.'),
  -- doublade in x
  (680, 68000, 21, 'When Honedge evolves, it divides into two swords, which cooperate via telepathy to coordinate attacks and slash their enemies to ribbons.'),
  -- aegislash in x
  (681, 68100, 21, 'Generations of kings were attended by these Pokémon, which used their spectral power to manipulate and control people and Pokémon.'),
  -- spritzee in x
  (682, 68200, 21, 'It emits a scent that enraptures those who smell it. This fragrance changes depending on what it has eaten.'),
  -- aromatisse in x
  (683, 68300, 21, 'It devises various scents, pleasant and unpleasant, and emits scents that its enemies dislike in order to gain an edge in battle.'),
  -- swirlix in x
  (684, 68400, 21, 'To entangle its opponents in battle, it extrudes white threads as sweet and sticky as cotton candy.'),
  -- slurpuff in x
  (685, 68500, 21, 'It can distinguish the faintest of scents. It puts its sensitive sense of smell to use by helping pastry chefs in their work.'),
  -- inkay in x
  (686, 68600, 21, 'Opponents who stare at the flashing of the light-emitting spots on its body become dazed and lose their will to fight.'),
  -- malamar in x
  (687, 68700, 21, 'It wields the most compelling hypnotic powers of any Pokémon, and it forces others to do whatever it wants.'),
  -- binacle in x
  (688, 68800, 21, 'Two Binacle live together on one rock. When they fight, one of them will move to a different rock.'),
  -- barbaracle in x
  (689, 68900, 21, 'When they evolve, two Binacle multiply into seven. They fight with the power of seven Binacle.'),
  -- skrelp in x
  (690, 69000, 21, 'Camouflaged as rotten kelp, they spray liquid poison on prey that approaches unawares and then finish it off.'),
  -- dragalge in x
  (691, 69100, 21, 'Their poison is strong enough to eat through the hull of a tanker, and they spit it indiscriminately at anything that enters their territory.'),
  -- clauncher in x
  (692, 69200, 21, 'They knock down flying prey by firing compressed water from their massive claws like shooting a pistol.'),
  -- clawitzer in x
  (693, 69300, 21, 'Their enormous claws launch cannonballs of water powerful enough to pierce tanker hulls.'),
  -- helioptile in x
  (694, 69400, 21, 'They make their home in deserts. They can generate their energy from basking in the sun, so eating food is not a requirement.'),
  -- heliolisk in x
  (695, 69500, 21, 'They flare their frills and generate energy. A single Heliolisk can generate sufficient electricity to power a skyscraper.'),
  -- tyrunt in x
  (696, 69600, 21, 'This Pokémon was restored from a fossil. If something happens that it doesn’t like, it throws a tantrum and runs wild.'),
  -- tyrantrum in x
  (697, 69700, 21, 'Thanks to its gargantuan jaws, which could shred thick metal plates as if they were paper, it was invincible in the ancient world it once inhabited.'),
  -- amaura in x
  (698, 69800, 21, 'This ancient Pokémon was restored from part of its body that had been frozen in ice for over 100 million years.'),
  -- aurorus in x
  (699, 69900, 21, 'The diamond-shaped crystals on its body expel air as cold as -240 degrees Fahrenheit, surrounding its enemies and encasing them in ice.'),
  -- sylveon in x
  (700, 70000, 21, 'It sends a soothing aura from its ribbonlike feelers to calm fights.'),
  -- hawlucha in x
  (701, 70100, 21, 'Although its body is small, its proficient fighting skills enable it to keep up with big bruisers like Machamp and Hariyama.'),
  -- dedenne in x
  (702, 70200, 21, 'Its whiskers serve as antennas. By sending and receiving electrical waves, it can communicate with others over vast distances.'),
  -- carbink in x
  (703, 70300, 21, 'Born from the temperatures and pressures deep underground, it fires beams from the stone in its head.'),
  -- goomy in x
  (704, 70400, 21, 'The weakest Dragon-type Pokémon, it lives in damp, shady places, so its body doesn’t dry out.'),
  -- sliggoo in x
  (705, 70500, 21, 'It drives away opponents by excreting a sticky liquid that can dissolve anything. Its eyes devolved, so it can’t see anything.'),
  -- goodra in x
  (706, 70600, 21, 'This very friendly Dragon-type Pokémon will hug its beloved Trainer, leaving that Trainer covered in sticky slime.'),
  -- klefki in x
  (707, 70700, 21, 'These key collectors threaten any attackers by fiercely jingling their keys at them.'),
  -- phantump in x
  (708, 70800, 21, 'These Pokémon are created when spirits possess rotten tree stumps. They prefer to live in abandoned forests.'),
  -- trevenant in x
  (709, 70900, 21, 'It can control trees at will. It will trap people who harm the forest, so they can never leave.'),
  -- pumpkaboo in x
  (710, 71000, 21, 'The pumpkin body is inhabited by a spirit trapped in this world. As the sun sets, it becomes restless and active.'),
  -- gourgeist in x
  (711, 71100, 21, 'Singing in eerie voices, they wander town streets on the night of the new moon. Anyone who hears their song is cursed.'),
  -- bergmite in x
  (712, 71200, 21, 'It blocks opponents’ attacks with the ice that shields its body. It uses cold air to repair any cracks with new ice.'),
  -- avalugg in x
  (713, 71300, 21, 'Its ice-covered body is as hard as steel. Its cumbersome frame crushes anything that stands in its way.'),
  -- noibat in x
  (714, 71400, 21, 'They live in pitch-black caves. Their enormous ears can emit ultrasonic waves of 200,000 hertz.'),
  -- noivern in x
  (715, 71500, 21, 'They fly around on moonless nights and attack careless prey. Nothing can beat them in a battle in the dark.'),
  -- xerneas in x
  (716, 71600, 21, 'Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival.'),
  -- yveltal in x
  (717, 71700, 21, 'When this legendary Pokémon’s wings and tail feathers spread wide and glow red, it absorbs the life force of living creatures.'),
  -- zygarde in x
  (718, 71800, 21, 'When the Kalos region’s ecosystem falls into disarray, it appears and reveals its secret power.'),
  -- diancie in x
  (719, 71900, 21, 'A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world.'),
  -- hoopa in x
  (720, 72000, 21, 'This troublemaker sends anything and everything to faraway places using its loop, which can warp space.'),
  -- volcanion in x
  (721, 72100, 21, 'It lets out billows of steam and disappears into the dense fog. It’s said to live in mountains where humans do not tread.'),
  -- bulbasaur in y
  (1, 100, 22, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in y
  (2, 200, 22, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in y
  (3, 300, 22, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in y
  (4, 400, 22, 'From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.'),
  -- charmeleon in y
  (5, 500, 22, 'When it swings its burning tail, it elevates the air temperature to unbearably high levels.'),
  -- charizard in y
  (6, 600, 22, 'Its wings can carry this Pokémon close to an altitude of 4,600 feet. It blows out fire at very high temperatures.'),
  -- squirtle in y
  (7, 700, 22, 'Shoots water at prey while in the water. Withdraws into its shell when in danger.'),
  -- wartortle in y
  (8, 800, 22, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in y
  (9, 900, 22, 'The pressurized water jets on this brutal Pokémon’s shell are used for high-speed tackles.'),
  -- caterpie in y
  (10, 1000, 22, 'Its feet have suction cups designed to stick to any surface. It tenaciously climbs trees to forage.'),
  -- metapod in y
  (11, 1100, 22, 'This Pokémon is vulnerable to attack while its shell is soft, exposing its weak and tender body.'),
  -- butterfree in y
  (12, 1200, 22, 'The wings are protected by rain-repellent dust. As a result, this Pokémon can fly about even in rain.'),
  -- weedle in y
  (13, 1300, 22, 'Its poison stinger is very powerful. Its bright-colored body is intended to warn off its enemies.'),
  -- kakuna in y
  (14, 1400, 22, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in y
  (15, 1500, 22, 'May appear in a swarm. Flies at violent speeds, all the while stabbing with the toxic stinger on its rear.'),
  -- pidgey in y
  (16, 1600, 22, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in y
  (17, 1700, 22, 'Very protective of its sprawling territorial area, this Pokémon will fiercely peck at any intruder.'),
  -- pidgeot in y
  (18, 1800, 22, 'It spreads its gorgeous wings widely to intimidate enemies. It races through the skies at Mach-2 speed.'),
  -- rattata in y
  (19, 1900, 22, 'Its fangs are long and very sharp. They grow continuously, so it gnaws on hard things to whittle them down.'),
  -- raticate in y
  (20, 2000, 22, 'The webs on its hind legs enable it to cross rivers. It searches wide areas for food.'),
  -- spearow in y
  (21, 2100, 22, 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.'),
  -- fearow in y
  (22, 2200, 22, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in y
  (23, 2300, 22, 'Moving silently and stealthily, it eats the eggs of birds, such as Pidgey and Spearow, whole.'),
  -- arbok in y
  (24, 2400, 22, 'To intimidate foes, it spreads its chest wide and makes eerie sounds by expelling air from its mouth.'),
  -- pikachu in y
  (25, 2500, 22, 'It has small electric sacs on both its cheeks. If threatened, it looses electric charges from the sacs.'),
  -- raichu in y
  (26, 2600, 22, 'It can loose 100,000-volt bursts of electricity, instantly downing foes several times its size.'),
  -- sandshrew in y
  (27, 2700, 22, 'Disliking water, it lives in deep burrows in arid areas. It can roll itself instantly into a ball.'),
  -- sandslash in y
  (28, 2800, 22, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.'),
  -- nidoran-f in y
  (29, 2900, 22, 'Small and very docile, it protects itself with its small, poisonous horn when attacked.'),
  -- nidorina in y
  (30, 3000, 22, 'When feeding its young, it first chews the food into a paste, then spits it out for the offspring.'),
  -- nidoqueen in y
  (31, 3100, 22, 'The body is covered by stiff, needlelike scales. If it becomes excited, the needles bristle outwards.'),
  -- nidoran-m in y
  (32, 3200, 22, 'Its large ears are flapped like wings when it is listening to distant sounds. It extends toxic barbs when angered.'),
  -- nidorino in y
  (33, 3300, 22, 'An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.'),
  -- nidoking in y
  (34, 3400, 22, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in y
  (35, 3500, 22, 'The moonlight that it stores in the wings on its back apparently gives it the ability to float in midair.'),
  -- clefable in y
  (36, 3600, 22, 'A timid fairy Pokémon that is rarely seen, it will run and hide the moment it senses people.'),
  -- vulpix in y
  (37, 3700, 22, 'While young, it has six gorgeous tails. When it grows, several new tails are sprouted.'),
  -- ninetales in y
  (38, 3800, 22, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.'),
  -- jigglypuff in y
  (39, 3900, 22, 'If it inflates to sing a lullaby, it can perform longer and cause sure drowsiness in its audience.'),
  -- wigglytuff in y
  (40, 4000, 22, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.'),
  -- zubat in y
  (41, 4100, 22, 'It has no eyes. Instead, it relies on its ultrasonic cries for echolocation to flit about in darkness.'),
  -- golbat in y
  (42, 4200, 22, 'Once it starts sucking blood, it does not stop until it is full. It flies at night in search of prey.'),
  -- oddish in y
  (43, 4300, 22, 'Its scientific name is “Oddium Wanderus.” At night, it is said to walk nearly 1,000 feet on its two roots.'),
  -- gloom in y
  (44, 4400, 22, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in y
  (45, 4500, 22, 'It has the world’s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.'),
  -- paras in y
  (46, 4600, 22, 'Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.'),
  -- parasect in y
  (47, 4700, 22, 'The larger the mushroom on its back grows, the stronger the mushroom spores it scatters.'),
  -- venonat in y
  (48, 4800, 22, 'Lives in the shadows of tall trees where it eats bugs. It is attracted by light at night.'),
  -- venomoth in y
  (49, 4900, 22, 'The wings are covered with dustlike scales. Every time it flaps its wings, it looses highly toxic dust.'),
  -- diglett in y
  (50, 5000, 22, 'Its skin is very thin. If it is exposed to light, its blood heats up, causing it to grow weak.'),
  -- dugtrio in y
  (51, 5100, 22, 'Extremely powerful, they can dig through even the hardest ground to a depth of over 60 miles.'),
  -- meowth in y
  (52, 5200, 22, 'Adores round objects. It wanders the streets on a nightly basis to look for dropped loose change.'),
  -- persian in y
  (53, 5300, 22, 'Its lithe muscles allow it to walk without making a sound. It attacks in an instant.'),
  -- psyduck in y
  (54, 5400, 22, 'It has mystical powers but doesn’t recall that it has used them. That is why it always looks puzzled.'),
  -- golduck in y
  (55, 5500, 22, 'The forelegs are webbed, helping to make it an adept swimmer. It can be seen swimming elegantly in lakes, etc.'),
  -- mankey in y
  (56, 5600, 22, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in y
  (57, 5700, 22, 'It is always outrageously furious. If it gives chase, it will tenaciously track the target no matter how far.'),
  -- growlithe in y
  (58, 5800, 22, 'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.'),
  -- arcanine in y
  (59, 5900, 22, 'Its magnificent bark conveys a sense of majesty. Anyone hearing it can’t help but grovel before it.'),
  -- poliwag in y
  (60, 6000, 22, 'The direction of the spiral on the belly differs by area. It is more adept at swimming than walking.'),
  -- poliwhirl in y
  (61, 6100, 22, 'Its two legs are well developed. Even though it can live on the ground, it prefers living in water.'),
  -- poliwrath in y
  (62, 6200, 22, 'A swimmer adept at both the front crawl and breaststroke. Easily overtakes the best human swimmers.'),
  -- abra in y
  (63, 6300, 22, 'It senses impending attacks and teleports away to safety before the actual attacks can strike.'),
  -- kadabra in y
  (64, 6400, 22, 'If it uses its abilities, it emits special alpha waves that cause machines to malfunction.'),
  -- alakazam in y
  (65, 6500, 22, 'Its brain can outperform a supercomputer. Its IQ (intelligence quotient) is said to be around 5,000.'),
  -- machop in y
  (66, 6600, 22, 'Its whole body is composed of muscles. Even though it’s the size of a human child, it can hurl 100 grown-ups.'),
  -- machoke in y
  (67, 6700, 22, 'It can lift a dump truck with one hand. Using that power, it helps people with heavy jobs.'),
  -- machamp in y
  (68, 6800, 22, 'It uses its four powerful arms to pin the limbs of its foe, then throws the victim over the horizon.'),
  -- bellsprout in y
  (69, 6900, 22, 'Its bud looks like a human face. Because of the bud, it is rumored to be a type of legendary mandrake plant.'),
  -- weepinbell in y
  (70, 7000, 22, 'It spits out Poison Powder to immobilize the enemy and then finishes it with a spray of Acid.'),
  -- victreebel in y
  (71, 7100, 22, 'Once ingested into this Pokémon’s body, even the hardest object will melt into nothing.'),
  -- tentacool in y
  (72, 7200, 22, 'Drifts in shallow seas. Anglers who hook them by accident are often punished by their stingers.'),
  -- tentacruel in y
  (73, 7300, 22, 'It has 80 tentacles that move about freely. They can sting, causing poisoning and sharp, stabbing pain.'),
  -- geodude in y
  (74, 7400, 22, 'It is impossible to distinguish from rocks. It slams against others in contests of hardness.'),
  -- graveler in y
  (75, 7500, 22, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.'),
  -- golem in y
  (76, 7600, 22, 'Even dynamite can’t harm its hard, boulder-like body. It sheds its hide just once a year.'),
  -- ponyta in y
  (77, 7700, 22, 'Its legs grow strong while it chases after its parent. It runs in fields and mountains all day.'),
  -- rapidash in y
  (78, 7800, 22, 'It gallops at nearly 150 mph. With its mane blazing ferociously, it races as if it were an arrow.'),
  -- slowpoke in y
  (79, 7900, 22, 'It lazes vacantly near water. If something bites its tail, it won’t even notice for a whole day.'),
  -- slowbro in y
  (80, 8000, 22, 'When a Slowpoke went hunting in the sea, its tail was bitten by a Shellder. That made it evolve into Slowbro.'),
  -- magnemite in y
  (81, 8100, 22, 'It moves while constantly hovering. It discharges Thunder Wave and so on from the units at its sides.'),
  -- magneton in y
  (82, 8200, 22, 'Generates strange radio signals. It raises the temperature by 3.6 degrees Fahrenheit within 3,300 feet.'),
  -- farfetchd in y
  (83, 8300, 22, 'It always walks about with a plant stalk clamped in its beak. The stalk is used for building its nest.'),
  -- doduo in y
  (84, 8400, 22, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in y
  (85, 8500, 22, 'An odd species that is rarely found. The three heads respectively represent joy, sadness, and anger.'),
  -- seel in y
  (86, 8600, 22, 'Covered with light blue fur, its hide is thick and tough. It is active in bitter cold of -40 degrees Fahrenheit.'),
  -- dewgong in y
  (87, 8700, 22, 'Its streamlined body has little drag in water. The colder the temperature, the friskier it gets.'),
  -- grimer in y
  (88, 8800, 22, 'Appears in filthy areas. It thrives by sucking up polluted sludge that is pumped out of factories.'),
  -- muk in y
  (89, 8900, 22, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in y
  (90, 9000, 22, 'Clamping on to an opponent reveals its vulnerable parts, so it uses this move only as a last resort.'),
  -- cloyster in y
  (91, 9100, 22, 'Its shell is extremely hard. It cannot be shattered, even with a bomb. The shell opens only when it is attacking.'),
  -- gastly in y
  (92, 9200, 22, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in y
  (93, 9300, 22, 'It licks with its gaseous tongue to steal the victim’s life force. It lurks in darkness for prey.'),
  -- gengar in y
  (94, 9400, 22, 'Hiding in people’s shadows at night, it absorbs their heat. The chill it causes makes the victims shake.'),
  -- onix in y
  (95, 9500, 22, 'It usually lives underground. It searches for food while boring its way through the ground at 50 miles per hour.'),
  -- drowzee in y
  (96, 9600, 22, 'If you think that you had a good dream but you can’t remember it, a Drowzee has probably eaten it.'),
  -- hypno in y
  (97, 9700, 22, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in y
  (98, 9800, 22, 'It can be found near the sea. The large pincers grow back if they are torn out of their sockets.'),
  -- kingler in y
  (99, 9900, 22, 'Its pincers grow peculiarly large. If it lifts the pincers too fast, it loses its balance and staggers.'),
  -- voltorb in y
  (100, 10000, 22, 'Usually found in power plants. Easily mistaken for a Poké Ball, it has zapped many people.'),
  -- electrode in y
  (101, 10100, 22, 'It stores an overflowing amount of electric energy inside its body. Even a small shock makes it explode.'),
  -- exeggcute in y
  (102, 10200, 22, 'Even though it appears to be eggs of some sort, it was discovered to be a life-form more like plant seeds.'),
  -- exeggutor in y
  (103, 10300, 22, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an Exeggcute.'),
  -- cubone in y
  (104, 10400, 22, 'It always wears the skull of its dead mother, so no one has any idea what its hidden face looks like.'),
  -- marowak in y
  (105, 10500, 22, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.'),
  -- hitmonlee in y
  (106, 10600, 22, 'If it starts kicking repeatedly, both legs will stretch even longer to strike a fleeing foe.'),
  -- hitmonchan in y
  (107, 10700, 22, 'The spirit of a pro boxer has infused this Pokémon. It throws punches that are faster than a bullet train.'),
  -- lickitung in y
  (108, 10800, 22, 'Its tongue is twice the length of its body. It can be moved like an arm for grabbing food and attacking.'),
  -- koffing in y
  (109, 10900, 22, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in y
  (110, 11000, 22, 'Very rarely, a sudden mutation can result in two small Koffing twins becoming conjoined as a Weezing.'),
  -- rhyhorn in y
  (111, 11100, 22, 'It is inept at turning because of its four short legs. It can only charge and run in one direction.'),
  -- rhydon in y
  (112, 11200, 22, 'It begins walking on its hind legs after evolution. It can punch holes through boulders with its horn.'),
  -- chansey in y
  (113, 11300, 22, 'It lays several eggs a day. The eggs are apparently rich in nutrients and extremely delicious.'),
  -- tangela in y
  (114, 11400, 22, 'It tangles any moving thing with its vines. Their subtle shaking is ticklish if you get ensnared.'),
  -- kangaskhan in y
  (115, 11500, 22, 'If it is safe, the young gets out of the belly pouch to play. The adult keeps a close eye on the youngster.'),
  -- horsea in y
  (116, 11600, 22, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in y
  (117, 11700, 22, 'It is capable of swimming backwards by rapidly flapping its winglike pectoral fins and stout tail.'),
  -- goldeen in y
  (118, 11800, 22, 'Its dorsal, pectoral, and tail fins wave elegantly in water. That is why it is known as the water dancer.'),
  -- seaking in y
  (119, 11900, 22, 'It makes its nest by hollowing out boulders in streams with its horn. It defends its eggs with its life.'),
  -- staryu in y
  (120, 12000, 22, 'It appears in large numbers by seashores. At night, its central core flashes with a red light.'),
  -- starmie in y
  (121, 12100, 22, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in y
  (122, 12200, 22, 'It is adept at conning people. It is said to be able to create walls out of thin air by miming.'),
  -- scyther in y
  (123, 12300, 22, 'It slashes through grass with its sharp scythes, moving too fast for the human eye to track.'),
  -- jynx in y
  (124, 12400, 22, 'It speaks using a language that sounds human. Research is under way to determine what is being said.'),
  -- electabuzz in y
  (125, 12500, 22, 'It loves to feed on strong electricity. It occasionally appears around large power plants and so on.'),
  -- magmar in y
  (126, 12600, 22, 'Born in the spout of a volcano, its body is covered by flames that shimmer like the sun.'),
  -- pinsir in y
  (127, 12700, 22, 'It swings its long pincer horns wildly to attack. During cold periods, it hides deep in forests.'),
  -- tauros in y
  (128, 12800, 22, 'When it is about to tackle, it whips its body repeatedly with its three long tails.'),
  -- magikarp in y
  (129, 12900, 22, 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.'),
  -- gyarados in y
  (130, 13000, 22, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.'),
  -- lapras in y
  (131, 13100, 22, 'Its high intelligence enables it to understand human speech. It likes to ferry people on its back.'),
  -- ditto in y
  (132, 13200, 22, 'It can freely recombine its own cellular structure to transform into other life-forms.'),
  -- eevee in y
  (133, 13300, 22, 'Thanks to its unstable genetic makeup, this special Pokémon conceals many different possible evolutions.'),
  -- vaporeon in y
  (134, 13400, 22, 'It has evolved to be suitable for an aquatic life. It can invisibly melt away into water.'),
  -- jolteon in y
  (135, 13500, 22, 'It accumulates negative ions in the atmosphere to blast out 10,000-volt lightning bolts.'),
  -- flareon in y
  (136, 13600, 22, 'It has a flame bag inside its body. After inhaling deeply, it blows out flames of nearly 3,000 degrees Fahrenheit.'),
  -- porygon in y
  (137, 13700, 22, 'A Pokémon that consists entirely of programming code. It is capable of moving freely in cyberspace.'),
  -- omanyte in y
  (138, 13800, 22, 'Revived from an ancient fossil, this Pokémon uses air stored in its shell to sink and rise in water.'),
  -- omastar in y
  (139, 13900, 22, 'Once wrapped around its prey, it never lets go. It eats the prey by tearing at it with sharp fangs.'),
  -- kabuto in y
  (140, 14000, 22, 'This Pokémon was regenerated from the fossil of an ancient creature. It protects itself with a hard shell.'),
  -- kabutops in y
  (141, 14100, 22, 'A slim and fast swimmer. It slices its prey with its sharp sickles and drinks the body fluids.'),
  -- aerodactyl in y
  (142, 14200, 22, 'This vicious Pokémon is said to have flown in ancient skies while shrieking high-pitched cries.'),
  -- snorlax in y
  (143, 14300, 22, 'Its stomach can digest any kind of food, even if it happens to be moldy or rotten.'),
  -- articuno in y
  (144, 14400, 22, 'A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.'),
  -- zapdos in y
  (145, 14500, 22, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in y
  (146, 14600, 22, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in y
  (147, 14700, 22, 'This Pokémon is full of life energy. It continually sheds its skin and grows steadily larger.'),
  -- dragonair in y
  (148, 14800, 22, 'A mystical Pokémon that exudes a gentle aura. It is said to have the ability to change the weather.'),
  -- dragonite in y
  (149, 14900, 22, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in y
  (150, 15000, 22, 'A Pokémon created by recombining Mew’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in y
  (151, 15100, 22, 'Its DNA is said to contain the genetic codes of all Pokémon, so it can use all kinds of techniques.'),
  -- chikorita in y
  (152, 15200, 22, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in y
  (153, 15300, 22, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in y
  (154, 15400, 22, 'Meganium’s breath has the power to revive dead grass and plants. It can make them healthy again.'),
  -- cyndaquil in y
  (155, 15500, 22, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in y
  (156, 15600, 22, 'Be careful if it turns its back during battle. It means that it will attack with the fire on its back.'),
  -- typhlosion in y
  (157, 15700, 22, 'It has a secret, devastating move. It rubs its blazing fur together to cause huge explosions.'),
  -- totodile in y
  (158, 15800, 22, 'Its powerful, well-developed jaws are capable of crushing anything. Even its Trainer must be careful.'),
  -- croconaw in y
  (159, 15900, 22, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in y
  (160, 16000, 22, 'When it bites with its massive and powerful jaws, it shakes its head and savagely tears its victim up.'),
  -- sentret in y
  (161, 16100, 22, 'It stands on its tail so it can see a long way. If it spots an enemy, it cries loudly to warn its kind.'),
  -- furret in y
  (162, 16200, 22, 'It makes a nest to suit its long and skinny body. The nest is impossible for other Pokémon to enter.'),
  -- hoothoot in y
  (163, 16300, 22, 'It always stands on one foot. It changes feet so fast, the movement can rarely be seen.'),
  -- noctowl in y
  (164, 16400, 22, 'When it needs to think, it rotates its head 180 degrees to sharpen its intellectual power.'),
  -- ledyba in y
  (165, 16500, 22, 'It is timid and clusters together with others. The fluid secreted by its feet indicates its location.'),
  -- ledian in y
  (166, 16600, 22, 'The spot patterns on its back grow larger or smaller depending on the number of stars in the night sky.'),
  -- spinarak in y
  (167, 16700, 22, 'It lies still in the same pose for days in its web, waiting for its unsuspecting prey to wander close.'),
  -- ariados in y
  (168, 16800, 22, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in y
  (169, 16900, 22, 'Having four wings allows it to fly more quickly and quietly so it can sneak up on prey without its noticing.'),
  -- chinchou in y
  (170, 17000, 22, 'It shoots positive and negative electricity between the tips of its two antennae and zaps its enemies.'),
  -- lanturn in y
  (171, 17100, 22, 'It blinds prey with an intense burst of light. With the prey incapacitated, the Pokémon swallows it in a single gulp.'),
  -- pichu in y
  (172, 17200, 22, 'It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.'),
  -- cleffa in y
  (173, 17300, 22, 'Many appear when the night skies are filled with shooting stars. They disappear with sunrise.'),
  -- igglybuff in y
  (174, 17400, 22, 'It has a very soft body. If it starts to roll, it will bounce all over and be impossible to stop.'),
  -- togepi in y
  (175, 17500, 22, 'A proverb claims that happiness will come to anyone who can make a sleeping Togepi stand up.'),
  -- togetic in y
  (176, 17600, 22, 'They say that it will appear before kindhearted, caring people and shower them with happiness.'),
  -- natu in y
  (177, 17700, 22, 'It usually forages for food on the ground but may, on rare occasions, hop onto branches to peck at shoots.'),
  -- xatu in y
  (178, 17800, 22, 'They say that it stays still and quiet because it is seeing both the past and future at the same time.'),
  -- mareep in y
  (179, 17900, 22, 'It stores lots of air in its soft fur, allowing it to stay cool in summer and warm in winter.'),
  -- flaaffy in y
  (180, 18000, 22, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in y
  (181, 18100, 22, 'The tail’s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.'),
  -- bellossom in y
  (182, 18200, 22, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in y
  (183, 18300, 22, 'The tip of its tail is filled with oil that is lighter than water, so it acts as a float.'),
  -- azumarill in y
  (184, 18400, 22, 'The bubble-like pattern on its stomach helps it camouflage itself when it’s in the water.'),
  -- sudowoodo in y
  (185, 18500, 22, 'It disguises itself as a tree to avoid attack. It hates water, so it will disappear if it starts raining.'),
  -- politoed in y
  (186, 18600, 22, 'If Poliwag and Poliwhirl hear its echoing cry, they respond by gathering from far and wide.'),
  -- hoppip in y
  (187, 18700, 22, 'It drifts on winds. It is said that when Hoppip gather in fields and mountains, spring is on the way.'),
  -- skiploom in y
  (188, 18800, 22, 'It spreads its petals to absorb sunlight. It also floats in the air to get closer to the sun.'),
  -- jumpluff in y
  (189, 18900, 22, 'Even in the fiercest wind, it can control its fluff to make its way to any place in the world it wants.'),
  -- aipom in y
  (190, 19000, 22, 'Its tail is so powerful that it can use it to grab a tree branch and hold itself up in the air.'),
  -- sunkern in y
  (191, 19100, 22, 'It lives by drinking only dewdrops from under the leaves of plants. It is said that it eats nothing else.'),
  -- sunflora in y
  (192, 19200, 22, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in y
  (193, 19300, 22, 'If it flaps its wings really fast, it can generate shock waves that will shatter windows in the area.'),
  -- wooper in y
  (194, 19400, 22, 'When the temperature cools in the evening, they emerge from water to seek food along the shore.'),
  -- quagsire in y
  (195, 19500, 22, 'This carefree Pokémon has an easygoing nature. While swimming, it always bumps into boat hulls.'),
  -- espeon in y
  (196, 19600, 22, 'Its fur is so sensitive, it can feel minute shifts in the air and predict the weather...and its foes’ thoughts.'),
  -- umbreon in y
  (197, 19700, 22, 'When exposed to the moon’s aura, the rings on its body glow faintly and it’s filled with a mysterious power.'),
  -- murkrow in y
  (198, 19800, 22, 'Feared and loathed by many, it is believed to bring misfortune to all those who see it at night.'),
  -- slowking in y
  (199, 19900, 22, 'When its head was bitten, toxins entered Slowpoke’s head and unlocked an extraordinary power.'),
  -- misdreavus in y
  (200, 20000, 22, 'It likes playing mischievous tricks, such as screaming and wailing to startle people at night.'),
  -- unown in y
  (201, 20100, 22, 'Shaped like ancient writing, it is a huge mystery whether language or Unown came first.'),
  -- wobbuffet in y
  (202, 20200, 22, 'To keep its pitch-black tail hidden, it lives quietly in the darkness. It is never first to attack.'),
  -- girafarig in y
  (203, 20300, 22, 'Its tail has a small brain of its own. Beware! If you get close, it may react to your scent by biting.'),
  -- pineco in y
  (204, 20400, 22, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in y
  (205, 20500, 22, 'It remains immovably rooted to its tree. It scatters pieces of its hard shell to drive its enemies away.'),
  -- dunsparce in y
  (206, 20600, 22, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in y
  (207, 20700, 22, 'It flies straight at its target’s face, then clamps down on the startled victim to inject poison.'),
  -- steelix in y
  (208, 20800, 22, 'It chews its way through boulders with its sturdy jaws. Its eyes can see in the darkness underground.'),
  -- snubbull in y
  (209, 20900, 22, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in y
  (210, 21000, 22, 'It can make most any Pokémon run away simply by opening its mouth wide to reveal its big fangs.'),
  -- qwilfish in y
  (211, 21100, 22, 'The small spikes covering its body developed from scales. They inject a toxin that causes fainting.'),
  -- scizor in y
  (212, 21200, 22, 'It has a steel-hard body. It intimidates foes by upraising its eye-patterned pincers.'),
  -- shuckle in y
  (213, 21300, 22, 'It stores berries inside its shell. To avoid attacks, it hides beneath rocks and remains completely still.'),
  -- heracross in y
  (214, 21400, 22, 'With its Herculean powers, it can easily throw around an object that is 100 times its own weight.'),
  -- sneasel in y
  (215, 21500, 22, 'Its paws conceal sharp claws. If attacked, it suddenly extends the claws and startles its enemy.'),
  -- teddiursa in y
  (216, 21600, 22, 'Before food becomes scarce in wintertime, its habit is to hoard food in many hidden locations.'),
  -- ursaring in y
  (217, 21700, 22, 'Although it has a large body, it is quite skilled at climbing trees. It eats and sleeps in the treetops.'),
  -- slugma in y
  (218, 21800, 22, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in y
  (219, 21900, 22, 'Its body is as hot as lava and is always billowing. Flames will occasionally burst from its shell.'),
  -- swinub in y
  (220, 22000, 22, 'If it smells something enticing, it dashes off headlong to find the source of the aroma.'),
  -- piloswine in y
  (221, 22100, 22, 'Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.'),
  -- corsola in y
  (222, 22200, 22, 'They prefer unpolluted southern seas. Their coral branches lose their color and deteriorate in dirty water.'),
  -- remoraid in y
  (223, 22300, 22, 'Using its dorsal fin as a suction pad, it clings to a Mantine’s underside to scavenge for leftovers.'),
  -- octillery in y
  (224, 22400, 22, 'It traps foes with the suction cups on its tentacles, then smashes them with its rock-hard head.'),
  -- delibird in y
  (225, 22500, 22, 'It carries food all day long. When someone is lost in the mountains, it shares that food.'),
  -- mantine in y
  (226, 22600, 22, 'While elegantly swimming in the sea, it ignores Remoraid that cling to its fins seeking food scraps.'),
  -- skarmory in y
  (227, 22700, 22, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in y
  (228, 22800, 22, 'To corner prey, they check each other’s location using barks that only they can understand.'),
  -- houndoom in y
  (229, 22900, 22, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- kingdra in y
  (230, 23000, 22, 'It stores energy by sleeping at underwater depths at which no other life-forms can survive.'),
  -- phanpy in y
  (231, 23100, 22, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in y
  (232, 23200, 22, 'The longer and bigger its tusks, the higher its rank in its herd. The tusks take long to grow.'),
  -- porygon2 in y
  (233, 23300, 22, 'With planetary development software installed, it became capable of working in space.'),
  -- stantler in y
  (234, 23400, 22, 'The curved antlers subtly change the flow of air to create a strange space where reality is distorted.'),
  -- smeargle in y
  (235, 23500, 22, 'Once it becomes an adult, it has a tendency to let its comrades plant footprints on its back.'),
  -- tyrogue in y
  (236, 23600, 22, 'To brush up on its fighting skills, it will challenge anyone. It has a very strong competitive spirit.'),
  -- hitmontop in y
  (237, 23700, 22, 'If you are enchanted by its smooth, dance-like kicks, you may get a closer experience with one than you’d like.'),
  -- smoochum in y
  (238, 23800, 22, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in y
  (239, 23900, 22, 'Spinning its arms around to generate electricity makes the area between its horns shine light blue.'),
  -- magby in y
  (240, 24000, 22, 'Its magma-like blood circulates throughout its body. Its body’s heat can top 1,100 degrees Fahrenheit.'),
  -- miltank in y
  (241, 24100, 22, 'Its milk is packed with nutrition, making it the ultimate beverage for the sick or weary.'),
  -- blissey in y
  (242, 24200, 22, 'This kindhearted Pokémon nurses sick Pokémon to health. It senses feelings of sadness.'),
  -- raikou in y
  (243, 24300, 22, 'This rough Pokémon stores energy inside its body, then sweeps across the land, shooting off electricity.'),
  -- entei in y
  (244, 24400, 22, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in y
  (245, 24500, 22, 'Said to be the embodiment of north winds, it can instantly purify filthy, murky water.'),
  -- larvitar in y
  (246, 24600, 22, 'Born deep underground, it comes aboveground and becomes a pupa once it has finished eating the surrounding soil.'),
  -- pupitar in y
  (247, 24700, 22, 'Its shell is as hard as sheet rock, and it is also very strong. Its thrashing can topple a mountain.'),
  -- tyranitar in y
  (248, 24800, 22, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in y
  (249, 24900, 22, 'It is said to be the guardian of the seas. It is rumored to have been seen on the night of a storm.'),
  -- ho-oh in y
  (250, 25000, 22, 'It will reveal itself before a pure-hearted Trainer by shining its bright, rainbow-colored wings.'),
  -- celebi in y
  (251, 25100, 22, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in y
  (252, 25200, 22, 'Small hooks on the bottom of its feet catch on walls and ceilings. That is how it can hang from above.'),
  -- grovyle in y
  (253, 25300, 22, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in y
  (254, 25400, 22, 'It agilely leaps about the jungle and uses the sharp leaves on its arms to strike its prey.'),
  -- torchic in y
  (255, 25500, 22, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees Fahrenheit.'),
  -- combusken in y
  (256, 25600, 22, 'During a battle, the hot flame in its body increases. Its kicks have outstanding destructive power.'),
  -- blaziken in y
  (257, 25700, 22, 'When facing a tough foe, it looses flames from its wrists. Its powerful legs let it jump clear over buildings.'),
  -- mudkip in y
  (258, 25800, 22, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in y
  (259, 25900, 22, 'Living on muddy ground that provides poor footing has made its legs sturdy.'),
  -- swampert in y
  (260, 26000, 22, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in y
  (261, 26100, 22, 'It has a very tenacious nature. Its acute sense of smell lets it chase a chosen prey without ever losing track.'),
  -- mightyena in y
  (262, 26200, 22, 'It chases down prey in a pack of around ten. They defeat foes with perfectly coordinated teamwork.'),
  -- zigzagoon in y
  (263, 26300, 22, 'A Pokémon with abundant curiosity. It shows an interest in everything, so it always zigzags.'),
  -- linoone in y
  (264, 26400, 22, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in y
  (265, 26500, 22, 'It lives among the tall grass and in forests. It repels attacks by raising up the spikes on its rear.'),
  -- silcoon in y
  (266, 26600, 22, 'It drinks dew that collects on its silk and waits for evolution. Its hard cocoon repels attacks.'),
  -- beautifly in y
  (267, 26700, 22, 'It has an aggressive nature. It stabs prey with its long, narrow mouth to drain the prey’s fluids.'),
  -- cascoon in y
  (268, 26800, 22, 'It never forgets any attack it endured while in the cocoon. After evolution, it seeks payback.'),
  -- dustox in y
  (269, 26900, 22, 'It violently flutters its wings to scatter toxic dust when attacked. It becomes active after sunset.'),
  -- lotad in y
  (270, 27000, 22, 'It searches about for clean water. If it does not drink water for too long, the leaf on its head wilts.'),
  -- lombre in y
  (271, 27100, 22, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in y
  (272, 27200, 22, 'The rhythm of bright, festive music activates Ludicolo’s cells, making it more powerful.'),
  -- seedot in y
  (273, 27300, 22, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in y
  (274, 27400, 22, 'It lives deep in forests. With the leaf on its head, it makes a flute whose song makes listeners uneasy.'),
  -- shiftry in y
  (275, 27500, 22, 'By flapping its leafy fan, it can whip up gusts of 100 feet per second that can level houses.'),
  -- taillow in y
  (276, 27600, 22, 'It dislikes cold seasons. They migrate to other lands in search of warmth, flying over 180 miles a day.'),
  -- swellow in y
  (277, 27700, 22, 'It dives at a steep angle as soon as it spots its prey. It catches its prey with sharp claws.'),
  -- wingull in y
  (278, 27800, 22, 'It makes its nest on steep sea cliffs. Riding updrafts, it soars to great heights.'),
  -- pelipper in y
  (279, 27900, 22, 'It is a messenger of the skies, carrying small Pokémon and eggs to safety in its bill.'),
  -- ralts in y
  (280, 28000, 22, 'It is highly attuned to the emotions of people and Pokémon. It hides if it senses hostility.'),
  -- kirlia in y
  (281, 28100, 22, 'It has a psychic power that enables it to distort the space around it and see into the future.'),
  -- gardevoir in y
  (282, 28200, 22, 'It has the power to predict the future. Its power peaks when it is protecting its Trainer.'),
  -- surskit in y
  (283, 28300, 22, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in y
  (284, 28400, 22, 'It flaps its four wings to hover and fly freely in any direction--to and fro and sideways.'),
  -- shroomish in y
  (285, 28500, 22, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in y
  (286, 28600, 22, 'It scatters poisonous spores and throws powerful punches while its foe is hampered by inhaled spores.'),
  -- slakoth in y
  (287, 28700, 22, 'If it eats just three leaves in a day, it is satisfied. Other than that, it sleeps for 20 hours a day.'),
  -- vigoroth in y
  (288, 28800, 22, 'Its stress level rises if it cannot keep moving constantly. Too much stress makes it feel sick.'),
  -- slaking in y
  (289, 28900, 22, 'It is the world’s most slothful Pokémon. However, it can exert horrifying power by releasing pent-up energy all at once.'),
  -- nincada in y
  (290, 29000, 22, 'It can sometimes live underground for more than 10 years. It absorbs nutrients from the roots of trees.'),
  -- ninjask in y
  (291, 29100, 22, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in y
  (292, 29200, 22, 'A most peculiar Pokémon that somehow appears in a Poké Ball when a Nincada evolves.'),
  -- whismur in y
  (293, 29300, 22, 'If it senses danger, it scares the foe by crying out with the volume of a jet-plane engine.'),
  -- loudred in y
  (294, 29400, 22, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in y
  (295, 29500, 22, 'Its roar in battle shakes the ground like a tremor--or like an earthquake has struck.'),
  -- makuhita in y
  (296, 29600, 22, 'It grows stronger by enduring harsh training. It is a gutsy Pokémon that can withstand any attack.'),
  -- hariyama in y
  (297, 29700, 22, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in y
  (298, 29800, 22, 'It swings its large, nutrient-filled tail around to fight opponents bigger than itself.'),
  -- nosepass in y
  (299, 29900, 22, 'Its magnetic nose consistently faces north. Travelers check Nosepass to get their bearings.'),
  -- skitty in y
  (300, 30000, 22, 'It shows its cute side by chasing its own tail until it gets dizzy.'),
  -- delcatty in y
  (301, 30100, 22, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in y
  (302, 30200, 22, 'It dwells in the darkness of caves. It uses its sharp claws to dig up gems to nourish itself.'),
  -- mawile in y
  (303, 30300, 22, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in y
  (304, 30400, 22, 'When it evolves, it sheds the steel carapace that covered its whole body and develops a new one.'),
  -- lairon in y
  (305, 30500, 22, 'It habitually shows off its strength with the size of sparks it creates by ramming its steel body into boulders.'),
  -- aggron in y
  (306, 30600, 22, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in y
  (307, 30700, 22, 'It eats just one berry a day. By enduring hunger, its spirit is tempered and made sharper.'),
  -- medicham in y
  (308, 30800, 22, 'Through yoga training, it gained the psychic power to predict its foe’s next move.'),
  -- electrike in y
  (309, 30900, 22, 'It stores static electricity in its fur for discharging. It gives off sparks if a storm approaches.'),
  -- manectric in y
  (310, 31000, 22, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in y
  (311, 31100, 22, 'It absorbs electricity from telephone poles. It shorts out its body to create crackling noises.'),
  -- minun in y
  (312, 31200, 22, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in y
  (313, 31300, 22, 'It lives around clean ponds. At night, its rear lights up. It converses with others by flashing its light.'),
  -- illumise in y
  (314, 31400, 22, 'With its sweet aroma, it guides Volbeat to draw signs with light in the night sky.'),
  -- roselia in y
  (315, 31500, 22, 'Roselia that drink nutritionally rich springwater are said to reveal rare coloration when they bloom.'),
  -- gulpin in y
  (316, 31600, 22, 'There is nothing its stomach can’t digest. While it is digesting, vile, overpowering gases are expelled.'),
  -- swalot in y
  (317, 31700, 22, 'It gulps anything that fits in its mouth. Its special enzymes can dissolve anything.'),
  -- carvanha in y
  (318, 31800, 22, 'It lives in massive rivers that course through jungles. It swarms prey that enter its territory.'),
  -- sharpedo in y
  (319, 31900, 22, 'It can swim at speeds of 75 mph by jetting seawater through its body. It is the bandit of the sea.'),
  -- wailmer in y
  (320, 32000, 22, 'It eats one ton of food every day. It plays by shooting stored seawater out its blowholes with great force.'),
  -- wailord in y
  (321, 32100, 22, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in y
  (322, 32200, 22, 'The magma in its body reaches 2,200 degrees Fahrenheit. Its hump gets smaller when it uses Fire-type moves.'),
  -- camerupt in y
  (323, 32300, 22, 'If angered, the humps on its back erupt in a shower of molten lava. It lives in the craters of volcanoes.'),
  -- torkoal in y
  (324, 32400, 22, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in y
  (325, 32500, 22, 'It bounces around on its tail to keep its heart pumping. It carries a pearl from Clamperl on its head.'),
  -- grumpig in y
  (326, 32600, 22, 'It uses black pearls to amplify its psychic power. It does an odd dance to gain control over foes.'),
  -- spinda in y
  (327, 32700, 22, 'The chances of two Spinda having identical spot patterns is less than one in four billion.'),
  -- trapinch in y
  (328, 32800, 22, 'It makes an inescapable conical pit and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in y
  (329, 32900, 22, 'It generates ultrasonic waves by violently flapping its wings. After making its prey faint, it melts the prey with acid.'),
  -- flygon in y
  (330, 33000, 22, 'Known as “The Desert Spirit,” this Pokémon hides in the sandstorms it causes by beating its wings.'),
  -- cacnea in y
  (331, 33100, 22, 'It prefers harsh environments such as deserts. It can survive for 30 days on water stored in its body.'),
  -- cacturne in y
  (332, 33200, 22, 'Packs of them follow travelers through the desert until the travelers can no longer move.'),
  -- swablu in y
  (333, 33300, 22, 'It constantly grooms its cotton-like wings. It takes a shower to clean itself if it becomes dirty.'),
  -- altaria in y
  (334, 33400, 22, 'On sunny days, it flies freely through the sky and blends into the clouds. It sings in a beautiful soprano.'),
  -- zangoose in y
  (335, 33500, 22, 'Its fur would all stand on end if it smelled a Seviper nearby. Its sharp claws tear up its foes.'),
  -- seviper in y
  (336, 33600, 22, 'Constant polishing makes the edge of the blade on its tail extremely sharp. It’s Zangoose’s archrival.'),
  -- lunatone in y
  (337, 33700, 22, 'It was discovered at the site of a meteor strike 40 years ago. Its stare can lull its foes to sleep.'),
  -- solrock in y
  (338, 33800, 22, 'It absorbs solar energy during the day. Always expressionless, it can sense what its foe is thinking.'),
  -- barboach in y
  (339, 33900, 22, 'Its whiskers make a superb radar. They are used to locate prey, even in the murkiest of water.'),
  -- whiscash in y
  (340, 34000, 22, 'It makes its nest at the bottom of swamps. It will eat anything--if it is alive, Whiscash will eat it.'),
  -- corphish in y
  (341, 34100, 22, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in y
  (342, 34200, 22, 'Loving to battle, this Pokémon pinches all Pokémon that enter its territory with its pincers and throws them out.'),
  -- baltoy in y
  (343, 34300, 22, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in y
  (344, 34400, 22, 'It is said that it originates from clay dolls made by an ancient civilization.'),
  -- lileep in y
  (345, 34500, 22, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in y
  (346, 34600, 22, 'It ensnares prey with its eight tentacles. It then melts the prey with a strong acid before feeding.'),
  -- anorith in y
  (347, 34700, 22, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in y
  (348, 34800, 22, 'Protected by a hard shell, its body is very sturdy. It skewers prey with its claws to feed.'),
  -- feebas in y
  (349, 34900, 22, 'It is the shabbiest Pokémon of all. It forms in schools and lives at the bottom of rivers.'),
  -- milotic in y
  (350, 35000, 22, 'It is the world’s most beautiful Pokémon. There are many works of art featuring Milotic.'),
  -- castform in y
  (351, 35100, 22, 'It has the ability to change its form into the sun, the rain, or a snow cloud, depending on the weather.'),
  -- kecleon in y
  (352, 35200, 22, 'It changes its shading to match its surroundings so it can sneak up on prey. Only its belly patterns stay fixed.'),
  -- shuppet in y
  (353, 35300, 22, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in y
  (354, 35400, 22, 'Strong feelings of hatred turned a puppet into a Pokémon. If it opens its mouth, its cursed energy escapes.'),
  -- duskull in y
  (355, 35500, 22, 'If it finds bad children who won’t listen to their parents, it will spirit them away--or so it’s said.'),
  -- dusclops in y
  (356, 35600, 22, 'Its body is hollow. It is said that those who look into its body are sucked into the void.'),
  -- tropius in y
  (357, 35700, 22, 'The bunch of fruit around its neck ripens twice a year and is delicious. It’s a highly favored tropical snack.'),
  -- chimecho in y
  (358, 35800, 22, 'Emitting ultrasonic cries, it floats on winds to travel great distances.'),
  -- absol in y
  (359, 35900, 22, 'It appears when it senses an impending natural disaster. As a result, it was mistaken as a doom bringer.'),
  -- wynaut in y
  (360, 36000, 22, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in y
  (361, 36100, 22, 'In the snow country, certain folklore says a house will prosper if a Snorunt lives there.'),
  -- glalie in y
  (362, 36200, 22, 'It can instantly freeze moisture in the atmosphere. It uses this power to freeze its foes.'),
  -- spheal in y
  (363, 36300, 22, 'Its body is covered in fluffy fur. The fur keeps it from feeling cold while it is rolling on ice.'),
  -- sealeo in y
  (364, 36400, 22, 'Be it Spheal or Poké Ball, it will spin any round object on its nose with the greatest of ease.'),
  -- walrein in y
  (365, 36500, 22, 'It shatters drift ice with its strong tusks. Its thick layer of blubber repels enemy attacks.'),
  -- clamperl in y
  (366, 36600, 22, 'It is protected by a sturdy shell. Once in a lifetime, it makes a magnificent pearl.'),
  -- huntail in y
  (367, 36700, 22, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in y
  (368, 36800, 22, 'Its swimming form is exquisitely elegant. With its thin mouth, it feeds on seaweed that grows between rocks.'),
  -- relicanth in y
  (369, 36900, 22, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in y
  (370, 37000, 22, 'During the spawning season, countless Luvdisc congregate at coral reefs, turning the waters pink.'),
  -- bagon in y
  (371, 37100, 22, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in y
  (372, 37200, 22, 'Its armored body makes all attacks bounce off. The armor is too tough, however, making it heavy and somewhat sluggish.'),
  -- salamence in y
  (373, 37300, 22, 'It’s uncontrollable if enraged. It flies around spouting flames and scorching fields and mountains.'),
  -- beldum in y
  (374, 37400, 22, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in y
  (375, 37500, 22, 'It is formed by two Beldum joining together. Its two brains are linked, amplifying its psychic power.'),
  -- metagross in y
  (376, 37600, 22, 'Metang combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in y
  (377, 37700, 22, 'The same rocks that form its body have been found in ground layers around the world.'),
  -- regice in y
  (378, 37800, 22, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in y
  (379, 37900, 22, 'Its body is said to be harder than any kind of metal. A study has revealed that its body is hollow.'),
  -- latias in y
  (380, 38000, 22, 'It can telepathically communicate with people. It changes its appearance using its down that refracts light.'),
  -- latios in y
  (381, 38100, 22, 'It understands human speech and is highly intelligent. It is a tender Pokémon that dislikes fighting.'),
  -- kyogre in y
  (382, 38200, 22, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in y
  (383, 38300, 22, 'This legendary Pokémon is said to represent the land. It went to sleep after dueling Kyogre.'),
  -- rayquaza in y
  (384, 38400, 22, 'It flies in the ozone layer, way up high in the sky. Until recently, no one had ever seen it.'),
  -- jirachi in y
  (385, 38500, 22, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in y
  (386, 38600, 22, 'DNA from a space virus mutated and became a Pokémon. It appears where auroras are seen.'),
  -- turtwig in y
  (387, 38700, 22, 'It undertakes photosynthesis with its body, making oxygen. The leaf on its head wilts if it is thirsty.'),
  -- grotle in y
  (388, 38800, 22, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in y
  (389, 38900, 22, 'Small Pokémon occasionally gather on its unmoving back to begin building their nests.'),
  -- chimchar in y
  (390, 39000, 22, 'The gas made in its belly burns from its rear end. The fire burns weakly when it feels sick.'),
  -- monferno in y
  (391, 39100, 22, 'It uses ceilings and walls to launch aerial attacks. Its fiery tail is but one weapon.'),
  -- infernape in y
  (392, 39200, 22, 'It tosses its enemies around with agility. It uses all its limbs to fight in its own unique style.'),
  -- piplup in y
  (393, 39300, 22, 'Because it is very proud, it hates accepting food from people. Its thick down guards it from cold.'),
  -- prinplup in y
  (394, 39400, 22, 'It lives a solitary life. Its wings deliver wicked blows that can snap even the thickest of trees.'),
  -- empoleon in y
  (395, 39500, 22, 'The three horns that extend from its beak attest to its power. The leader has the biggest horns.'),
  -- starly in y
  (396, 39600, 22, 'They flock around mountains and fields, chasing after bug Pokémon. Their singing is noisy and annoying.'),
  -- staravia in y
  (397, 39700, 22, 'It lives in forests and fields. Squabbles over territory occur when flocks collide.'),
  -- staraptor in y
  (398, 39800, 22, 'When Staravia evolve into Staraptor, they leave the flock to live alone. They have sturdy wings.'),
  -- bidoof in y
  (399, 39900, 22, 'It constantly gnaws on logs and rocks to whittle down its front teeth. It nests alongside water.'),
  -- bibarel in y
  (400, 40000, 22, 'It makes its nest by damming streams with bark and mud. It is known as an industrious worker.'),
  -- kricketot in y
  (401, 40100, 22, 'When its antennae hit each other, it sounds like the music of a xylophone.'),
  -- kricketune in y
  (402, 40200, 22, 'It signals its emotions with its melodies. Scientists are studying these melodic patterns.'),
  -- shinx in y
  (403, 40300, 22, 'All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded.'),
  -- luxio in y
  (404, 40400, 22, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in y
  (405, 40500, 22, 'Luxray’s ability to see through objects comes in handy when it’s scouting for danger.'),
  -- budew in y
  (406, 40600, 22, 'Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen.'),
  -- roserade in y
  (407, 40700, 22, 'With the movements of a dancer, it strikes with whips that are densely lined with poison thorns.'),
  -- cranidos in y
  (408, 40800, 22, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with headbutts.'),
  -- rampardos in y
  (409, 40900, 22, 'Its skull is as hard as iron. It is a brute that tears down jungle trees while catching prey.'),
  -- shieldon in y
  (410, 41000, 22, 'It was generated from a fossil dug out of a layer of clay that was older than anyone knows. It has a sturdy face.'),
  -- bastiodon in y
  (411, 41100, 22, 'Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries.'),
  -- burmy in y
  (412, 41200, 22, 'If its cloak is broken in battle, it quickly remakes the cloak with materials nearby.'),
  -- wormadam in y
  (413, 41300, 22, 'When Burmy evolved, its cloak became a part of this Pokémon’s body. The cloak is never shed.'),
  -- mothim in y
  (414, 41400, 22, 'It flutters around at night and steals honey from the Combee hive.'),
  -- combee in y
  (415, 41500, 22, 'It collects and delivers honey to its colony. At night, they cluster to form a beehive and sleep.'),
  -- vespiquen in y
  (416, 41600, 22, 'Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by Combee.'),
  -- pachirisu in y
  (417, 41700, 22, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in y
  (418, 41800, 22, 'It inflates the flotation sac around its neck and pokes its head out of the water to see what is going on.'),
  -- floatzel in y
  (419, 41900, 22, 'Its flotation sac developed as a result of pursuing aquatic prey. It can double as a rubber raft.'),
  -- cherubi in y
  (420, 42000, 22, 'It evolves by sucking the energy out of the small ball where it had been storing nutrients.'),
  -- cherrim in y
  (421, 42100, 22, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in y
  (422, 42200, 22, 'Its shape and coloration vary, depending on its habitat.'),
  -- gastrodon in y
  (423, 42300, 22, 'It apparently had a huge shell for protection in ancient times. It lives in shallow tidal pools.'),
  -- ambipom in y
  (424, 42400, 22, 'To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now.'),
  -- drifloon in y
  (425, 42500, 22, 'These Pokémon are called the “Signpost for Wandering Spirits.” Children holding them sometimes vanish.'),
  -- drifblim in y
  (426, 42600, 22, 'It’s drowsy in daytime, but flies off in the evening in big groups. No one knows where they go.'),
  -- buneary in y
  (427, 42700, 22, 'When it senses danger, it perks up its ears. On cold nights, it sleeps with its head tucked into its fur.'),
  -- lopunny in y
  (428, 42800, 22, 'The ears appear to be delicate. If they are touched roughly, it kicks with its graceful legs.'),
  -- mismagius in y
  (429, 42900, 22, 'Its cries sound like incantations to torment the foe. It appears where you least expect it.'),
  -- honchkrow in y
  (430, 43000, 22, 'Becoming active at night, it is known to swarm with numerous Murkrow in tow.'),
  -- glameow in y
  (431, 43100, 22, 'When it’s happy, Glameow demonstrates beautiful movements of its tail, like a dancing ribbon.'),
  -- purugly in y
  (432, 43200, 22, 'To make itself appear intimidatingly beefy, it tightly cinches its waist with its twin tails.'),
  -- chingling in y
  (433, 43300, 22, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in y
  (434, 43400, 22, 'It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours.'),
  -- skuntank in y
  (435, 43500, 22, 'It sprays a stinky fluid from its tail. The fluid smells worse the longer it is allowed to fester.'),
  -- bronzor in y
  (436, 43600, 22, 'Implements shaped like it were discovered in ancient tombs. It is unknown if they are related.'),
  -- bronzong in y
  (437, 43700, 22, 'Ancient people believed that petitioning Bronzong for rain was the way to make crops grow.'),
  -- bonsly in y
  (438, 43800, 22, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in y
  (439, 43900, 22, 'It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon.'),
  -- happiny in y
  (440, 44000, 22, 'It carefully carries a round, white rock that it thinks is an egg. It’s bothered by how curly its hair looks.'),
  -- chatot in y
  (441, 44100, 22, 'It can learn and speak human words. If they gather, they all learn the same saying.'),
  -- spiritomb in y
  (442, 44200, 22, 'It was bound to a fissure in an odd keystone as punishment for misdeeds 500 years ago.'),
  -- gible in y
  (443, 44300, 22, 'It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.'),
  -- gabite in y
  (444, 44400, 22, 'As it digs to expand its nest, it habitually digs up gems that it then hoards in its nest.'),
  -- garchomp in y
  (445, 44500, 22, 'It flies at speeds equal to a jet fighter plane. It never allows its prey to escape.'),
  -- munchlax in y
  (446, 44600, 22, 'It conceals food under the long fur on its body. It carts around this food stash and swallows it without chewing.'),
  -- riolu in y
  (447, 44700, 22, 'The aura that emanates from its body intensifies to alert others if it is afraid or sad.'),
  -- lucario in y
  (448, 44800, 22, 'By reading the auras of all things, it can tell how others are feeling from over half a mile away.'),
  -- hippopotas in y
  (449, 44900, 22, 'It enshrouds itself with sand to protect itself from germs. It does not enjoy getting wet.'),
  -- hippowdon in y
  (450, 45000, 22, 'It blasts internally stored sand from ports on its body to create a towering twister for attack.'),
  -- skorupi in y
  (451, 45100, 22, 'It burrows under the sand to lie in wait for prey. Its tail claws can inject its prey with a savage poison.'),
  -- drapion in y
  (452, 45200, 22, 'It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison.'),
  -- croagunk in y
  (453, 45300, 22, 'Inflating its poison sacs, it fills the area with an odd sound and hits flinching opponents with a poison jab.'),
  -- toxicroak in y
  (454, 45400, 22, 'Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal.'),
  -- carnivine in y
  (455, 45500, 22, 'It binds itself to trees in marshes. It attracts prey with its sweet-smelling drool and gulps them down.'),
  -- finneon in y
  (456, 45600, 22, 'After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives.'),
  -- lumineon in y
  (457, 45700, 22, 'To avoid detection by predators, it crawls along the seafloor using the two fins on its chest.'),
  -- mantyke in y
  (458, 45800, 22, 'When it swims close to the surface of the ocean, people aboard ships are able to observe the pattern on its back.'),
  -- snover in y
  (459, 45900, 22, 'In the spring, it grows berries with the texture of frozen treats around its belly.'),
  -- abomasnow in y
  (460, 46000, 22, 'It lives a quiet life on mountains that are perpetually covered in snow. It hides itself by whipping up blizzards.'),
  -- weavile in y
  (461, 46100, 22, 'They live in cold regions, forming groups of four or five that hunt prey with impressive coordination.'),
  -- magnezone in y
  (462, 46200, 22, 'It evolved from exposure to a special magnetic field. Three units generate magnetism.'),
  -- lickilicky in y
  (463, 46300, 22, 'Their saliva contains lots of components that can dissolve anything. The numbness caused by their lick does not dissipate.'),
  -- rhyperior in y
  (464, 46400, 22, 'It puts rocks in holes in its palms and uses its muscles to shoot them. Geodude are shot at rare times.'),
  -- tangrowth in y
  (465, 46500, 22, 'Its vines grow so profusely that, in the warm season, you can’t even see its eyes.'),
  -- electivire in y
  (466, 46600, 22, 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.'),
  -- magmortar in y
  (467, 46700, 22, 'It blasts fireballs of over 3,600 degrees Fahrenheit out of its arms. Its breath also sears and sizzles.'),
  -- togekiss in y
  (468, 46800, 22, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in y
  (469, 46900, 22, 'This six-legged Pokémon is easily capable of transporting an adult in flight. The wings on its tail help it stay balanced.'),
  -- leafeon in y
  (470, 47000, 22, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in y
  (471, 47100, 22, 'It lowers its body heat to freeze its fur. The hairs then become like needles it can fire.'),
  -- gliscor in y
  (472, 47200, 22, 'Its flight is soundless. It uses its lengthy tail to carry off its prey... Then its elongated fangs do the rest.'),
  -- mamoswine in y
  (473, 47300, 22, 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.'),
  -- porygon-z in y
  (474, 47400, 22, 'Its programming was modified to enable it to travel through alien dimensions. Seems there might have been an error...'),
  -- gallade in y
  (475, 47500, 22, 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.'),
  -- probopass in y
  (476, 47600, 22, 'It freely controls three small units called Mini-Noses using magnetic force.'),
  -- dusknoir in y
  (477, 47700, 22, 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.'),
  -- froslass in y
  (478, 47800, 22, 'Legends in snowy regions say that a woman who was lost on an icy mountain was reborn as Froslass.'),
  -- rotom in y
  (479, 47900, 22, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- uxie in y
  (480, 48000, 22, 'It is said that its emergence gave humans the intelligence to improve their quality of life.'),
  -- mesprit in y
  (481, 48100, 22, 'It sleeps at the bottom of a lake. Its spirit is said to leave its body to fly on the lake’s surface.'),
  -- azelf in y
  (482, 48200, 22, 'It is thought that Uxie, Mesprit, and Azelf all came from the same egg.'),
  -- dialga in y
  (483, 48300, 22, 'It has the power to control time. It appears in Sinnoh-region myths as an ancient deity.'),
  -- palkia in y
  (484, 48400, 22, 'It has the ability to distort space. It is described as a deity in Sinnoh-region mythology.'),
  -- heatran in y
  (485, 48500, 22, 'Boiling blood, like magma, circulates through its body. It makes its dwelling place in volcanic caves.'),
  -- regigigas in y
  (486, 48600, 22, 'There is an enduring legend that states this Pokémon towed continents with ropes.'),
  -- giratina in y
  (487, 48700, 22, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in y
  (488, 48800, 22, 'Those who sleep holding Cresselia’s feather are assured of joyful dreams. It is said to represent the crescent moon.'),
  -- phione in y
  (489, 48900, 22, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in y
  (490, 49000, 22, 'It starts its life with a wondrous power that permits it to bond with any kind of Pokémon.'),
  -- darkrai in y
  (491, 49100, 22, 'It can lull people to sleep and make them dream. It is active during nights of the new moon.'),
  -- shaymin in y
  (492, 49200, 22, 'The blooming of Gracidea flowers confers the power of flight upon it. Feelings of gratitude are the message it delivers.'),
  -- arceus in y
  (493, 49300, 22, 'It is told in mythology that this Pokémon was born before the universe even existed.'),
  -- victini in y
  (494, 49400, 22, 'When it shares the infinite energy it creates, that being’s entire body will be overflowing with power.'),
  -- snivy in y
  (495, 49500, 22, 'They photosynthesize by bathing their tails in sunlight. When they are not feeling well, their tails droop.'),
  -- servine in y
  (496, 49600, 22, 'When it gets dirty, its leaves can’t be used in photosynthesis, so it always keeps itself clean.'),
  -- serperior in y
  (497, 49700, 22, 'It can stop its opponents’ movements with just a glare. It takes in solar energy and boosts it internally.'),
  -- tepig in y
  (498, 49800, 22, 'It loves to eat roasted berries, but sometimes it gets too excited and burns them to a crisp.'),
  -- pignite in y
  (499, 49900, 22, 'When its internal fire flares up, its movements grow sharper and faster. When in trouble, it emits smoke.'),
  -- emboar in y
  (500, 50000, 22, 'It has mastered fast and powerful fighting moves. It grows a beard of fire.'),
  -- oshawott in y
  (501, 50100, 22, 'It fights using the scalchop on its stomach. In response to an attack, it retaliates immediately by slashing.'),
  -- dewott in y
  (502, 50200, 22, 'As a result of strict training, each Dewott learns different forms for using the scalchops.'),
  -- samurott in y
  (503, 50300, 22, 'One swing of the sword incorporated in its armor can fell an opponent. A simple glare from one of them quiets everybody.'),
  -- patrat in y
  (504, 50400, 22, 'Extremely cautious, one of them will always be on the lookout, but it won’t notice a foe coming from behind.'),
  -- watchog in y
  (505, 50500, 22, 'When they see an enemy, their tails stand high, and they spit the seeds of berries stored in their cheek pouches.'),
  -- lillipup in y
  (506, 50600, 22, 'Though it is a very brave Pokémon, it’s also smart enough to check its foe’s strength and avoid battle.'),
  -- herdier in y
  (507, 50700, 22, 'It has black, cape-like fur that is very hard and decreases the amount of damage it receives.'),
  -- stoutland in y
  (508, 50800, 22, 'Being wrapped in its long fur is so comfortable that a person would be fine even overnight on a wintry mountain.'),
  -- purrloin in y
  (509, 50900, 22, 'They steal from people for fun, but their victims can’t help but forgive them. Their deceptively cute act is perfect.'),
  -- liepard in y
  (510, 51000, 22, 'Stealthily, it sneaks up on its target, striking from behind before its victim has a chance to react.'),
  -- pansage in y
  (511, 51100, 22, 'It’s good at finding berries and gathers them from all over. It’s kind enough to share them with friends.'),
  -- simisage in y
  (512, 51200, 22, 'Ill tempered, it fights by swinging its barbed tail around wildly. The leaf growing on its head is very bitter.'),
  -- pansear in y
  (513, 51300, 22, 'This Pokémon lives in caves in volcanoes. The fire within the tuft on its head can reach 600 degrees Fahrenheit.'),
  -- simisear in y
  (514, 51400, 22, 'When it gets excited, embers rise from its head and tail and it gets hot. For some reason, it loves sweets.'),
  -- panpour in y
  (515, 51500, 22, 'The water stored inside the tuft on its head is full of nutrients. Plants that receive its water grow large.'),
  -- simipour in y
  (516, 51600, 22, 'It prefers places with clean water. When its tuft runs low, it replenishes it by siphoning up water with its tail.'),
  -- munna in y
  (517, 51700, 22, 'It eats the dreams of people and Pokémon. When it eats a pleasant dream, it expels pink-colored mist.'),
  -- musharna in y
  (518, 51800, 22, 'The dream mist coming from its forehead changes into many different colors depending on the dream that was eaten.'),
  -- pidove in y
  (519, 51900, 22, 'These Pokémon live in cities. They are accustomed to people. Flocks often gather in parks and plazas.'),
  -- tranquill in y
  (520, 52000, 22, 'No matter where in the world it goes, it knows where its nest is, so it never gets separated from its Trainer.'),
  -- unfezant in y
  (521, 52100, 22, 'Males have plumage on their heads. They will never let themselves feel close to anyone other than their Trainers.'),
  -- blitzle in y
  (522, 52200, 22, 'Its mane shines when it discharges electricity. They use the frequency and rhythm of these flashes to communicate.'),
  -- zebstrika in y
  (523, 52300, 22, 'They have lightning-like movements. When Zebstrika run at full speed, the sound of thunder reverberates.'),
  -- roggenrola in y
  (524, 52400, 22, 'They were discovered a hundred years ago in an earthquake fissure. Inside each one is an energy core.'),
  -- boldore in y
  (525, 52500, 22, 'When it is healthy, its core sticks out. Always facing the same way, it swiftly moves front to back and left to right.'),
  -- gigalith in y
  (526, 52600, 22, 'Compressing the energy from its internal core lets it fire off an attack capable of blowing away a mountain.'),
  -- woobat in y
  (527, 52700, 22, 'The heart-shaped mark left on a body after a Woobat has been attached to it is said to bring good fortune.'),
  -- swoobat in y
  (528, 52800, 22, 'Anyone who comes into contact with the ultrasonic waves emitted by a courting male experiences a positive mood shift.'),
  -- drilbur in y
  (529, 52900, 22, 'By spinning its body, it can dig straight through the ground at a speed of 30 mph.'),
  -- excadrill in y
  (530, 53000, 22, 'More than 300 feet below the surface, they build mazelike nests. Their activity can be destructive to subway tunnels.'),
  -- audino in y
  (531, 53100, 22, 'It touches others with the feelers on its ears, using the sound of their heartbeats to tell how they are feeling.'),
  -- timburr in y
  (532, 53200, 22, 'Always carrying squared logs, they help out with construction. As they grow, they carry bigger logs.'),
  -- gurdurr in y
  (533, 53300, 22, 'This Pokémon is so muscular and strongly built that even a group of wrestlers could not make it budge an inch.'),
  -- conkeldurr in y
  (534, 53400, 22, 'Rather than rely on force, they master moves that utilize the centrifugal force of spinning concrete.'),
  -- tympole in y
  (535, 53500, 22, 'By vibrating its cheeks, it emits sound waves imperceptible to humans. It uses the rhythm of these sounds to talk.'),
  -- palpitoad in y
  (536, 53600, 22, 'It lives in the water and on land. It uses its long, sticky tongue to immobilize its opponents.'),
  -- seismitoad in y
  (537, 53700, 22, 'They shoot paralyzing liquid from their head bumps. They use vibration to hurt their opponents.'),
  -- throh in y
  (538, 53800, 22, 'When it encounters a foe bigger than itself, it wants to throw it. It changes belts as it gets stronger.'),
  -- sawk in y
  (539, 53900, 22, 'Tying their belts gets them pumped and makes their punches more destructive. Disturbing their training angers them.'),
  -- sewaddle in y
  (540, 54000, 22, 'Since this Pokémon makes its own clothes out of leaves, it is a popular mascot for fashion designers.'),
  -- swadloon in y
  (541, 54100, 22, 'It protects itself from the cold by wrapping up in leaves. It stays on the move, eating leaves in forests.'),
  -- leavanny in y
  (542, 54200, 22, 'It keeps its eggs warm with heat from fermenting leaves. It also uses leaves to make warm wrappings for Sewaddle.'),
  -- venipede in y
  (543, 54300, 22, 'Its bite injects a potent poison, enough to paralyze large bird Pokémon that try to prey on it.'),
  -- whirlipede in y
  (544, 54400, 22, 'It is usually motionless, but when attacked, it rotates at high speed and then crashes into its opponent.'),
  -- scolipede in y
  (545, 54500, 22, 'With quick movements, it chases down its foes, attacking relentlessly with its horns until it prevails.'),
  -- cottonee in y
  (546, 54600, 22, 'Perhaps because they feel more at ease in a group, they stick to others they find. They end up looking like a cloud.'),
  -- whimsicott in y
  (547, 54700, 22, 'Like the wind, it can slip through any gap, no matter how small. It leaves balls of white fluff behind.'),
  -- petilil in y
  (548, 54800, 22, 'Since they prefer moist, nutrient-rich soil, the areas where Petilil live are known to be good for growing plants.'),
  -- lilligant in y
  (549, 54900, 22, 'Even veteran Trainers face a challenge in getting its beautiful flower to bloom. This Pokémon is popular with celebrities.'),
  -- basculin in y
  (550, 55000, 22, 'Red and blue Basculin usually do not get along, but sometimes members of one school mingle with the other’s school.'),
  -- sandile in y
  (551, 55100, 22, 'They live buried in the sands of the desert. The sun-warmed sands prevent their body temperature from dropping.'),
  -- krokorok in y
  (552, 55200, 22, 'The special membrane covering its eyes can sense the heat of objects, so it can see its surroundings even in darkness.'),
  -- krookodile in y
  (553, 55300, 22, 'They never allow prey to escape. Their jaws are so powerful, they can crush the body of an automobile.'),
  -- darumaka in y
  (554, 55400, 22, 'When it sleeps, it pulls its limbs into its body and its internal fire goes down to 1,100 degrees Fahrenheit.'),
  -- darmanitan in y
  (555, 55500, 22, 'Its internal fire burns at 2,500 degrees Fahrenheit, making enough power that it can destroy a dump truck with one punch.'),
  -- maractus in y
  (556, 55600, 22, 'Arid regions are their habitat. They move rhythmically, making a sound similar to maracas.'),
  -- dwebble in y
  (557, 55700, 22, 'When it finds a stone of a suitable size, it secretes a liquid from its mouth to open up a hole to crawl into.'),
  -- crustle in y
  (558, 55800, 22, 'Competing for territory, Crustle fight viciously. The one whose boulder is broken is the loser of the battle.'),
  -- scraggy in y
  (559, 55900, 22, 'Proud of its sturdy skull, it suddenly headbutts everything, but its weight makes it unstable, too.'),
  -- scrafty in y
  (560, 56000, 22, 'It can smash concrete blocks with its kicking attacks. The one with the biggest crest is the group leader.'),
  -- sigilyph in y
  (561, 56100, 22, 'The guardians of an ancient city, they always fly the same route while keeping watch for invaders.'),
  -- yamask in y
  (562, 56200, 22, 'Each of them carries a mask that used to be its face when it was human. Sometimes they look at it and cry.'),
  -- cofagrigus in y
  (563, 56300, 22, 'Grave robbers who mistake them for real coffins and get too close end up trapped inside their bodies.'),
  -- tirtouga in y
  (564, 56400, 22, 'Restored from a fossil, this Pokémon can dive to depths beyond half a mile.'),
  -- carracosta in y
  (565, 56500, 22, 'It could knock out a foe with a slap from one of its developed front appendages and chew it up, shell or bones and all.'),
  -- archen in y
  (566, 56600, 22, 'Said to be an ancestor of bird Pokémon, they were unable to fly and moved about by hopping from one branch to another.'),
  -- archeops in y
  (567, 56700, 22, 'It runs better than it flies. It takes off into the sky by running at a speed of 25 mph.'),
  -- trubbish in y
  (568, 56800, 22, 'Inhaling the gas they belch will make you sleep for a week. They prefer unsanitary places.'),
  -- garbodor in y
  (569, 56900, 22, 'Consuming garbage makes new kinds of poison gases and liquids inside their bodies.'),
  -- zorua in y
  (570, 57000, 22, 'To protect themselves from danger, they hide their true identities by transforming into people and Pokémon.'),
  -- zoroark in y
  (571, 57100, 22, 'Bonds between these Pokémon are very strong. It protects the safety of its pack by tricking its opponents.'),
  -- minccino in y
  (572, 57200, 22, 'These Pokémon prefer a tidy habitat. They are always sweeping and dusting, using their tails as brooms.'),
  -- cinccino in y
  (573, 57300, 22, 'Cinccino’s body is coated in a special oil that helps it deflect attacks, such as punches.'),
  -- gothita in y
  (574, 57400, 22, 'They intently observe both Trainers and Pokémon. Apparently, they are looking at something that only Gothita can see.'),
  -- gothorita in y
  (575, 57500, 22, 'According to many old tales, it creates friends for itself by controlling sleeping children on starry nights.'),
  -- gothitelle in y
  (576, 57600, 22, 'They can predict the future from the placement and movement of the stars. They can see Trainers’ life spans.'),
  -- solosis in y
  (577, 57700, 22, 'They drive away attackers by unleashing psychic power. They can use telepathy to talk with others.'),
  -- duosion in y
  (578, 57800, 22, 'When their two divided brains think the same thoughts, their psychic power is maximized.'),
  -- reuniclus in y
  (579, 57900, 22, 'When Reuniclus shake hands, a network forms between their brains, increasing their psychic power.'),
  -- ducklett in y
  (580, 58000, 22, 'They are better at swimming than flying, and they happily eat their favorite food, peat moss, as they dive underwater.'),
  -- swanna in y
  (581, 58100, 22, 'Swanna start to dance at dusk. The one dancing in the middle is the leader of the flock.'),
  -- vanillite in y
  (582, 58200, 22, 'This Pokémon formed from icicles bathed in energy from the morning sun. It sleeps buried in snow.'),
  -- vanillish in y
  (583, 58300, 22, 'Snowy mountains are this Pokémon’s habitat. During an ancient ice age, they moved to southern areas.'),
  -- vanilluxe in y
  (584, 58400, 22, 'Swallowing large amounts of water, they make snow clouds inside their bodies and, when angry, cause violent blizzards.'),
  -- deerling in y
  (585, 58500, 22, 'The turning of the seasons changes the color and scent of this Pokémon’s fur. People use it to mark the seasons.'),
  -- sawsbuck in y
  (586, 58600, 22, 'They migrate according to the seasons, so some people call Sawsbuck the harbingers of spring.'),
  -- emolga in y
  (587, 58700, 22, 'The energy made in its cheeks’ electric pouches is stored inside its membrane and released while it is gliding.'),
  -- karrablast in y
  (588, 58800, 22, 'For some reason they evolve when they receive electrical energy while they are attacking Shelmet.'),
  -- escavalier in y
  (589, 58900, 22, 'These Pokémon evolve by wearing the shell covering of a Shelmet. The steel armor protects their whole body.'),
  -- foongus in y
  (590, 59000, 22, 'It lures Pokémon with its pattern that looks just like a Poké Ball, then releases poison spores.'),
  -- amoonguss in y
  (591, 59100, 22, 'It lures prey close by dancing and waving its arm caps, which resemble Poké Balls, in a swaying motion.'),
  -- frillish in y
  (592, 59200, 22, 'If its veil-like arms stun and wrap a foe, that foe will be dragged miles below the surface, never to return.'),
  -- jellicent in y
  (593, 59300, 22, 'The fate of the ships and crew that wander into Jellicent’s habitat: all sunken, all lost, all vanished.'),
  -- alomomola in y
  (594, 59400, 22, 'It gently holds injured and weak Pokémon in its fins. Its special membrane heals their wounds.'),
  -- joltik in y
  (595, 59500, 22, 'They attach themselves to large-bodied Pokémon and absorb static electricity, which they store in an electric pouch.'),
  -- galvantula in y
  (596, 59600, 22, 'When attacked, they create an electric barrier by spitting out many electrically charged threads.'),
  -- ferroseed in y
  (597, 59700, 22, 'It absorbs the iron it finds in the rock while clinging to the ceiling. It shoots spikes when in danger.'),
  -- ferrothorn in y
  (598, 59800, 22, 'They attach themselves to cave ceilings, firing steel spikes at targets passing beneath them.'),
  -- klink in y
  (599, 59900, 22, 'The two minigears that mesh together are predetermined. Each will rebound from other minigears without meshing.'),
  -- klang in y
  (600, 60000, 22, 'A minigear and big gear comprise its body. If the minigear it launches at a foe doesn’t return, it will die.'),
  -- klinklang in y
  (601, 60100, 22, 'Its red core functions as an energy tank. It fires the charged energy through its spikes into an area.'),
  -- tynamo in y
  (602, 60200, 22, 'One alone can emit only a trickle of electricity, so a group of them gathers to unleash a powerful electric shock.'),
  -- eelektrik in y
  (603, 60300, 22, 'These Pokémon have a big appetite. When they spot their prey, they attack it and paralyze it with electricity.'),
  -- eelektross in y
  (604, 60400, 22, 'They crawl out of the ocean using their arms. They will attack prey on shore and immediately drag it into the ocean.'),
  -- elgyem in y
  (605, 60500, 22, 'Rumors of its origin are linked to a UFO crash site in the desert 50 years ago.'),
  -- beheeyem in y
  (606, 60600, 22, 'It uses psychic power to control an opponent’s brain and tamper with its memories.'),
  -- litwick in y
  (607, 60700, 22, 'Litwick shines a light that absorbs the life energy of people and Pokémon, which becomes the fuel that it burns.'),
  -- lampent in y
  (608, 60800, 22, 'It arrives near the moment of death and steals spirit from the body.'),
  -- chandelure in y
  (609, 60900, 22, 'The spirits burned up in its ominous flame lose their way and wander this world forever.'),
  -- axew in y
  (610, 61000, 22, 'They mark their territory by leaving gashes in trees with their tusks. If a tusk breaks, a new one grows in quickly.'),
  -- fraxure in y
  (611, 61100, 22, 'A broken tusk will not grow back, so it diligently sharpens its tusks on river rocks after the end of a battle.'),
  -- haxorus in y
  (612, 61200, 22, 'Their sturdy tusks will stay sharp even if used to cut steel beams. These Pokémon are covered in hard armor.'),
  -- cubchoo in y
  (613, 61300, 22, 'Their snot is a barometer of health. When healthy, their snot is sticky and the power of their ice moves increases.'),
  -- beartic in y
  (614, 61400, 22, 'It freezes its breath to create fangs and claws of ice to fight with. Cold northern areas are its habitat.'),
  -- cryogonal in y
  (615, 61500, 22, 'They are composed of ice crystals. They capture prey with chains of ice, freezing the prey at -148 degrees Fahrenheit.'),
  -- shelmet in y
  (616, 61600, 22, 'It evolves when bathed in an electric-like energy along with Karrablast. The reason is still unknown.'),
  -- accelgor in y
  (617, 61700, 22, 'When its body dries out, it weakens. So, to prevent dehydration, it wraps itself in many layers of thin membrane.'),
  -- stunfisk in y
  (618, 61800, 22, 'It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of electricity.'),
  -- mienfoo in y
  (619, 61900, 22, 'In fights, they dominate with onslaughts of flowing, continuous attacks. With their sharp claws, they cut enemies.'),
  -- mienshao in y
  (620, 62000, 22, 'Using the long fur on its arms like whips, it launches into combo attacks that, once started, no one can stop.'),
  -- druddigon in y
  (621, 62100, 22, 'It warms its body by absorbing sunlight with its wings. When its body temperature falls, it can no longer move.'),
  -- golett in y
  (622, 62200, 22, 'Ancient science fashioned this Pokémon from clay. It’s been active for thousands of years.'),
  -- golurk in y
  (623, 62300, 22, 'It flies across the sky at Mach speeds. Removing the seal on its chest makes its internal energy go out of control.'),
  -- pawniard in y
  (624, 62400, 22, 'Ignoring their injuries, groups attack by sinking the blades that cover their bodies into their prey.'),
  -- bisharp in y
  (625, 62500, 22, 'Bisharp pursues prey in the company of a large group of Pawniard. Then Bisharp finishes off the prey.'),
  -- bouffalant in y
  (626, 62600, 22, 'Their fluffy fur absorbs damage, even if they strike foes with a fierce headbutt.'),
  -- rufflet in y
  (627, 62700, 22, 'They will challenge anything, even strong opponents, without fear. Their frequent fights help them become stronger.'),
  -- braviary in y
  (628, 62800, 22, 'They fight for their friends without any thought about danger to themselves. One can carry a car while flying.'),
  -- vullaby in y
  (629, 62900, 22, 'Their wings are too tiny to allow them to fly. They guard their posteriors with bones that were gathered by Mandibuzz.'),
  -- mandibuzz in y
  (630, 63000, 22, 'Watching from the sky, they swoop to strike weakened Pokémon on the ground. They decorate themselves with bones.'),
  -- heatmor in y
  (631, 63100, 22, 'It draws in air through its tail, transforms it into fire, and uses it like a tongue. It melts Durant and eats them.'),
  -- durant in y
  (632, 63200, 22, 'They attack in groups, covering themselves in steel armor to protect themselves from Heatmor.'),
  -- deino in y
  (633, 63300, 22, 'Lacking sight, it’s unaware of its surroundings, so it bumps into things and eats anything that moves.'),
  -- zweilous in y
  (634, 63400, 22, 'After it has eaten up all the food in its territory, it moves to another area. Its two heads do not get along.'),
  -- hydreigon in y
  (635, 63500, 22, 'It responds to movement by attacking. This scary, three-headed Pokémon devours everything in its path!'),
  -- larvesta in y
  (636, 63600, 22, 'The base of volcanoes is where they make their homes. They shoot fire from their five horns to repel attacking enemies.'),
  -- volcarona in y
  (637, 63700, 22, 'When volcanic ash darkened the atmosphere, it is said that Volcarona’s fire provided a replacement for the sun.'),
  -- cobalion in y
  (638, 63800, 22, 'It has a body and heart of steel. It worked with its allies to punish people when they hurt Pokémon.'),
  -- terrakion in y
  (639, 63900, 22, 'Spoken of in legend, this Pokémon used its phenomenal power to destroy a castle in its effort to protect Pokémon.'),
  -- virizion in y
  (640, 64000, 22, 'Legends say this Pokémon confounded opponents with its swift movements.'),
  -- tornadus in y
  (641, 64100, 22, 'Tornadus expels massive energy from its tail, causing severe storms. Its power is great enough to blow houses away.'),
  -- thundurus in y
  (642, 64200, 22, 'As it flies around, it shoots lightning all over the place and causes forest fires. It is therefore disliked.'),
  -- reshiram in y
  (643, 64300, 22, 'When Reshiram’s tail flares, the heat energy moves the atmosphere and changes the world’s weather.'),
  -- zekrom in y
  (644, 64400, 22, 'Concealing itself in lightning clouds, it flies throughout the Unova region. It creates electricity in its tail.'),
  -- landorus in y
  (645, 64500, 22, 'From the forces of lightning and wind, it creates energy to give nutrients to the soil and make the land abundant.'),
  -- kyurem in y
  (646, 64600, 22, 'It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out.'),
  -- keldeo in y
  (647, 64700, 22, 'When it is resolute, its body fills with power and it becomes swifter. Its jumps are then too fast to follow.'),
  -- meloetta in y
  (648, 64800, 22, 'Its melodies are sung with a special vocalization method that can control the feelings of those who hear it.'),
  -- genesect in y
  (649, 64900, 22, 'This Pokémon existed 300 million years ago. Team Plasma altered it and attached a cannon to its back.'),
  -- chespin in y
  (650, 65000, 22, 'Such a thick shell of wood covers its head and back that even a direct hit from a truck wouldn’t faze it.'),
  -- quilladin in y
  (651, 65100, 22, 'They strengthen their lower bodies by running into one another. They are very kind and won’t start fights.'),
  -- chesnaught in y
  (652, 65200, 22, 'When it takes a defensive posture with its fists guarding its face, it could withstand a bomb blast.'),
  -- fennekin in y
  (653, 65300, 22, 'As it walks, it munches on a twig in place of a snack. It intimidates opponents by puffing hot air out of its ears.'),
  -- braixen in y
  (654, 65400, 22, 'When the twig is plucked from its tail, friction sets the twig alight. The flame is used to send signals to its allies.'),
  -- delphox in y
  (655, 65500, 22, 'Using psychic power, it generates a fiery vortex of 5,400 degrees Fahrenheit, incinerating foes swept into this whirl of flame.'),
  -- froakie in y
  (656, 65600, 22, 'It protects its skin by covering its body in delicate bubbles. Beneath its happy-go-lucky air, it keeps a watchful eye on its surroundings.'),
  -- frogadier in y
  (657, 65700, 22, 'Its swiftness is unparalleled. It can scale a tower of more than 2,000 feet in a minute’s time.'),
  -- greninja in y
  (658, 65800, 22, 'It appears and vanishes with a ninja’s grace. It toys with its enemies using swift movements, while slicing them with throwing stars of sharpest water.'),
  -- bunnelby in y
  (659, 65900, 22, 'It has ears like shovels. Digging holes strengthens its ears so much that they can sever thick roots effortlessly.'),
  -- diggersby in y
  (660, 66000, 22, 'As powerful as an excavator, its ears can reduce dense bedrock to rubble. When it’s finished digging, it lounges lazily.'),
  -- fletchling in y
  (661, 66100, 22, 'Despite the beauty of its lilting voice, it’s merciless to intruders that enter its territory.'),
  -- fletchinder in y
  (662, 66200, 22, 'The hotter the flame sac on its belly, the faster it can fly, but it takes some time to get the fire going.'),
  -- talonflame in y
  (663, 66300, 22, 'When attacking prey, it can reach speeds of up to 310 mph. It finishes its prey off with a colossal kick.'),
  -- scatterbug in y
  (664, 66400, 22, 'The powder that covers its body regulates its temperature, so it can live in any region or climate.'),
  -- spewpa in y
  (665, 66500, 22, 'The beaks of bird Pokémon can’t begin to scratch its stalwart body. To defend itself, it spews powder.'),
  -- vivillon in y
  (666, 66600, 22, 'The patterns on this Pokémon’s wings depend on the climate and topography of its habitat. It scatters colorful scales.'),
  -- litleo in y
  (667, 66700, 22, 'They set off on their own from their pride and live by themselves to become stronger. These hot-blooded Pokémon are quick to fight.'),
  -- pyroar in y
  (668, 66800, 22, 'With fiery breath of more than 10,000 degrees Fahrenheit, they viciously threaten any challenger. The females protect the pride’s cubs.'),
  -- flabebe in y
  (669, 66900, 22, 'When it finds a flower it likes, it dwells on that flower its whole life long. It floats in the wind’s embrace with an untroubled heart.'),
  -- floette in y
  (670, 67000, 22, 'When the flowers of a well-tended flower bed bloom, it appears and celebrates with an elegant dance.'),
  -- florges in y
  (671, 67100, 22, 'In times long past, governors of castles would invite Florges to create flower gardens to embellish the castle domains.'),
  -- skiddo in y
  (672, 67200, 22, 'If it has sunshine and water, it doesn’t need to eat, because it can generate energy from the leaves on its back.'),
  -- gogoat in y
  (673, 67300, 22, 'They inhabit mountainous regions. The leader of the herd is decided by a battle of clashing horns.'),
  -- pancham in y
  (674, 67400, 22, 'It does its level best to glare and pull a scary face, but it can’t help grinning if anyone pats its head.'),
  -- pangoro in y
  (675, 67500, 22, 'It charges ahead and bashes its opponents like a berserker, uncaring about any hits it might take. Its arms are mighty enough to snap a telephone pole.'),
  -- furfrou in y
  (676, 67600, 22, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- espurr in y
  (677, 67700, 22, 'It has enough psychic energy to blast everything within 300 feet of itself, but it has no control over its power.'),
  -- meowstic in y
  (678, 67800, 22, 'The eyeball patterns on the interior of its ears emit psychic energy. It keeps the patterns tightly covered because that power is too immense.'),
  -- honedge in y
  (679, 67900, 22, 'If anyone dares to grab its hilt, it wraps a blue cloth around that person’s arm and drains that person’s life energy completely.'),
  -- doublade in y
  (680, 68000, 22, 'The complex attack patterns of its two swords are unstoppable, even for an opponent greatly accomplished at swordplay.'),
  -- aegislash in y
  (681, 68100, 22, 'Apparently, it can detect the innate qualities of leadership. According to legend, whoever it recognizes is destined to become king.'),
  -- spritzee in y
  (682, 68200, 22, 'In the past, rather than using perfume, royal ladies carried a Spritzee that would waft a fragrance they liked.'),
  -- aromatisse in y
  (683, 68300, 22, 'Its scent is so overpowering that, unless a Trainer happens to really enjoy the smell, he or she will have a hard time walking alongside it.'),
  -- swirlix in y
  (684, 68400, 22, 'Because it eats nothing but sweets, its fur is as sticky sweet as cotton candy.'),
  -- slurpuff in y
  (685, 68500, 22, 'Its sense of smell is 100 million times better than a human’s, so even the faintest scent tells it about everything in the area. It’s like it can see with its nose!'),
  -- inkay in y
  (686, 68600, 22, 'It flashes the light-emitting spots on its body, which drains its opponent’s will to fight. It takes the opportunity to scuttle away and hide.'),
  -- malamar in y
  (687, 68700, 22, 'It lures its prey close with hypnotic motions, then wraps its tentacles around it before finishing it off with digestive fluids.'),
  -- binacle in y
  (688, 68800, 22, 'They stretch and then contract, yanking their rocks along with them in bold hops. They eat seaweed that washes up on the shoreline.'),
  -- barbaracle in y
  (689, 68900, 22, 'Barbaracle’s legs and hands have minds of their own, and they will move independently. But they usually follow the head’s orders.'),
  -- skrelp in y
  (690, 69000, 22, 'It looks just like rotten kelp. It hides from foes while storing up power for its evolution.'),
  -- dragalge in y
  (691, 69100, 22, 'Tales are told of ships that wander into seas where Dragalge live, never to return.'),
  -- clauncher in y
  (692, 69200, 22, 'Through controlled explosions of internal gas, it can expel water like a pistol shot. At close distances, it can shatter rock.'),
  -- clawitzer in y
  (693, 69300, 22, 'By expelling water from the nozzle in the back of its claw, it can move at a speed of 60 knots.'),
  -- helioptile in y
  (694, 69400, 22, 'The frills on either side of its head have cells that generate electricity when exposed to sunlight.'),
  -- heliolisk in y
  (695, 69500, 22, 'It stimulates its muscles with electricity, boosting the strength in its legs and enabling it to run 100 yards in five seconds.'),
  -- tyrunt in y
  (696, 69600, 22, 'Its immense jaws have enough destructive force that it can chew up an automobile. It lived 100 million years ago.'),
  -- tyrantrum in y
  (697, 69700, 22, 'Nothing could stop this Pokémon 100 million years ago, so it behaved like a king.'),
  -- amaura in y
  (698, 69800, 22, 'This calm Pokémon lived in a cold land where there were no violent predators like Tyrantrum.'),
  -- aurorus in y
  (699, 69900, 22, 'Using its diamond-shaped crystals, it can instantly create a wall of ice to block an opponent’s attack.'),
  -- sylveon in y
  (700, 70000, 22, 'It wraps its ribbonlike feelers around the arm of its beloved Trainer and walks with him or her.'),
  -- hawlucha in y
  (701, 70100, 22, 'With its wings, it controls its position in the air. It likes to attack from above, a maneuver that is difficult to defend against.'),
  -- dedenne in y
  (702, 70200, 22, 'It uses its tail to absorb electricity from power plants or from outlets in houses, and then it fires the electricity from its whiskers.'),
  -- carbink in y
  (703, 70300, 22, 'It has slept underground for hundreds of millions of years since its birth. It’s occasionally found during the excavation of caves.'),
  -- goomy in y
  (704, 70400, 22, 'It’s covered in a slimy membrane that makes any punches or kicks slide off it harmlessly.'),
  -- sliggoo in y
  (705, 70500, 22, 'Its four horns are a high-performance radar system. It uses them to sense sounds and smells, rather than using ears or a nose.'),
  -- goodra in y
  (706, 70600, 22, 'It attacks with retractable horns. It throws a punch that’s the equivalent of the force of a hundred pro boxers.'),
  -- klefki in y
  (707, 70700, 22, 'It never lets go of a key that it likes, so people give it the keys to vaults and safes as a way to prevent crime.'),
  -- phantump in y
  (708, 70800, 22, 'According to old tales, these Pokémon are stumps possessed by the spirits of children who died while lost in the forest.'),
  -- trevenant in y
  (709, 70900, 22, 'Using its roots as a nervous system, it controls the trees in the forest. It’s kind to the Pokémon that reside in its body.'),
  -- pumpkaboo in y
  (710, 71000, 22, 'It is said to carry wandering spirits to the place where they belong so they can move on.'),
  -- gourgeist in y
  (711, 71100, 22, 'It enwraps its prey in its hairlike arms. It sings joyfully as it observes the suffering of its prey.'),
  -- bergmite in y
  (712, 71200, 22, 'Using air of -150 degrees Fahrenheit, they freeze opponents solid. They live in herds above the snow line on mountains.'),
  -- avalugg in y
  (713, 71300, 22, 'The way several Bergmite huddle on its back makes it look like an aircraft carrier made of ice.'),
  -- noibat in y
  (714, 71400, 22, 'Even a robust wrestler will become dizzy and unable to stand when exposed to its 200,000-hertz ultrasonic waves.'),
  -- noivern in y
  (715, 71500, 22, 'The ultrasonic waves it emits from its ears can reduce a large boulder to pebbles. It swoops out of the dark to attack.'),
  -- xerneas in y
  (716, 71600, 22, 'When the horns on its head shine in seven colors, it is said to be sharing everlasting life.'),
  -- yveltal in y
  (717, 71700, 22, 'When its life comes to an end, it absorbs the life energy of every living thing and turns into a cocoon once more.'),
  -- zygarde in y
  (718, 71800, 22, 'It’s hypothesized that it’s monitoring those who destroy the ecosystem from deep in the cave where it lives.'),
  -- diancie in y
  (719, 71900, 22, 'It can instantly create many diamonds by compressing the carbon in the air between its hands.'),
  -- hoopa in y
  (720, 72000, 22, 'It gathers things it likes and passes them through its loop to teleport them to a secret place.'),
  -- volcanion in y
  (721, 72100, 22, 'It expels its internal steam from the arms on its back. It has enough power to blow away a mountain.'),
  -- bulbasaur in omega-ruby
  (1, 100, 23, 'Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.'),
  -- ivysaur in omega-ruby
  (2, 200, 23, 'There is a bud on this Pokémon’s back. To support its weight, Ivysaur’s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it’s a sign that the bud will bloom into a large flower soon.'),
  -- venusaur in omega-ruby
  (3, 300, 23, 'There is a large flower on Venusaur’s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower’s aroma soothes the emotions of people.'),
  -- charmander in omega-ruby
  (4, 400, 23, 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.'),
  -- charmeleon in omega-ruby
  (5, 500, 23, 'Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.'),
  -- charizard in omega-ruby
  (6, 600, 23, 'Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.'),
  -- squirtle in omega-ruby
  (7, 700, 23, 'Squirtle’s shell is not merely used for protection. The shell’s rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.'),
  -- wartortle in omega-ruby
  (8, 800, 23, 'Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as Wartortle ages. The scratches on its shell are evidence of this Pokémon’s toughness as a battler.'),
  -- blastoise in omega-ruby
  (9, 900, 23, 'Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.'),
  -- caterpie in omega-ruby
  (10, 1000, 23, 'Caterpie has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this Pokémon releases a terrifically strong odor.'),
  -- metapod in omega-ruby
  (11, 1100, 23, 'The shell covering this Pokémon’s body is as hard as an iron slab. Metapod does not move very much. It stays still because it is preparing its soft innards for evolution inside the hard shell.'),
  -- butterfree in omega-ruby
  (12, 1200, 23, 'Butterfree has a superior ability to search for delicious honey from flowers. It can even search out, extract, and carry honey from flowers that are blooming over six miles from its nest.'),
  -- weedle in omega-ruby
  (13, 1300, 23, 'Weedle has an extremely acute sense of smell. It is capable of distinguishing its favorite kinds of leaves from those it dislikes just by sniffing with its big red proboscis (nose).'),
  -- kakuna in omega-ruby
  (14, 1400, 23, 'Kakuna remains virtually immobile as it clings to a tree. However, on the inside, it is extremely busy as it prepares for its coming evolution. This is evident from how hot the shell becomes to the touch.'),
  -- beedrill in omega-ruby
  (15, 1500, 23, 'Beedrill is extremely territorial. No one should ever approach its nest—this is for their own safety. If angered, they will attack in a furious swarm.'),
  -- pidgey in omega-ruby
  (16, 1600, 23, 'Pidgey has an extremely sharp sense of direction. It is capable of unerringly returning home to its nest, however far it may be removed from its familiar surroundings.'),
  -- pidgeotto in omega-ruby
  (17, 1700, 23, 'Pidgeotto claims a large area as its own territory. This Pokémon flies around, patrolling its living space. If its territory is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.'),
  -- pidgeot in omega-ruby
  (18, 1800, 23, 'This Pokémon has a dazzling plumage of beautifully glossy feathers. Many Trainers are captivated by the striking beauty of the feathers on its head, compelling them to choose Pidgeot as their Pokémon.'),
  -- rattata in omega-ruby
  (19, 1900, 23, 'Rattata is cautious in the extreme. Even while it is asleep, it constantly listens by moving its ears around. It is not picky about where it lives—it will make its nest anywhere.'),
  -- raticate in omega-ruby
  (20, 2000, 23, 'Raticate’s sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses.'),
  -- spearow in omega-ruby
  (21, 2100, 23, 'Spearow has a very loud cry that can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger.'),
  -- fearow in omega-ruby
  (22, 2200, 23, 'Fearow is recognized by its long neck and elongated beak. They are conveniently shaped for catching prey in soil or water. It deftly moves its long and skinny beak to pluck prey.'),
  -- ekans in omega-ruby
  (23, 2300, 23, 'Ekans curls itself up in a spiral while it rests. Assuming this position allows it to quickly respond to a threat from any direction with a glare from its upraised head.'),
  -- arbok in omega-ruby
  (24, 2400, 23, 'This Pokémon is terrifically strong in order to constrict things with its body. It can even flatten steel oil drums. Once Arbok wraps its body around its foe, escaping its crunching embrace is impossible.'),
  -- pikachu in omega-ruby
  (25, 2500, 23, 'Whenever Pikachu comes across something new, it blasts it with a jolt of electricity. If you come across a blackened berry, it’s evidence that this Pokémon mistook the intensity of its charge.'),
  -- raichu in omega-ruby
  (26, 2600, 23, 'If the electrical sacs become excessively charged, Raichu plants its tail in the ground and discharges. Scorched patches of ground will be found near this Pokémon’s nest.'),
  -- sandshrew in omega-ruby
  (27, 2700, 23, 'Sandshrew’s body is configured to absorb water without waste, enabling it to survive in an arid desert. This Pokémon curls up to protect itself from its enemies.'),
  -- sandslash in omega-ruby
  (28, 2800, 23, 'Sandslash’s body is covered by tough spikes, which are hardened sections of its hide. Once a year, the old spikes fall out, to be replaced with new spikes that grow out from beneath the old ones.'),
  -- nidoran-f in omega-ruby
  (29, 2900, 23, 'Nidoran♀ has barbs that secrete a powerful poison. They are thought to have developed as protection for this small-bodied Pokémon. When enraged, it releases a horrible toxin from its horn.'),
  -- nidorina in omega-ruby
  (30, 3000, 23, 'When Nidorina are with their friends or family, they keep their barbs tucked away to prevent hurting each other. This Pokémon appears to become nervous if separated from the others.'),
  -- nidoqueen in omega-ruby
  (31, 3100, 23, 'Nidoqueen’s body is encased in extremely hard scales. It is adept at sending foes flying with harsh tackles. This Pokémon is at its strongest when it is defending its young.'),
  -- nidoran-m in omega-ruby
  (32, 3200, 23, 'Nidoran♂ has developed muscles for moving its ears. Thanks to them, the ears can be freely moved in any direction. Even the slightest sound does not escape this Pokémon’s notice.'),
  -- nidorino in omega-ruby
  (33, 3300, 23, 'Nidorino has a horn that is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.'),
  -- nidoking in omega-ruby
  (34, 3400, 23, 'Nidoking’s thick tail packs enormously destructive power. With one swing, it can topple a metal transmission tower. Once this Pokémon goes on a rampage, there is no stopping it.'),
  -- clefairy in omega-ruby
  (35, 3500, 23, 'On every night of a full moon, groups of this Pokémon come out to play. When dawn arrives, the tired Clefairy return to their quiet mountain retreats and go to sleep nestled up against each other.'),
  -- clefable in omega-ruby
  (36, 3600, 23, 'Clefable moves by skipping lightly as if it were flying using its wings. Its bouncy step lets it even walk on water. It is known to take strolls on lakes on quiet, moonlit nights.'),
  -- vulpix in omega-ruby
  (37, 3700, 23, 'At the time of its birth, Vulpix has one white tail. The tail separates into six if this Pokémon receives plenty of love from its Trainer. The six tails become magnificently curled.'),
  -- ninetales in omega-ruby
  (38, 3800, 23, 'Ninetales casts a sinister light from its bright red eyes to gain total control over its foe’s mind. This Pokémon is said to live for a thousand years.'),
  -- jigglypuff in omega-ruby
  (39, 3900, 23, 'Jigglypuff’s vocal cords can freely adjust the wavelength of its voice. This Pokémon uses this ability to sing at precisely the right wavelength to make its foes most drowsy.'),
  -- wigglytuff in omega-ruby
  (40, 4000, 23, 'Wigglytuff has large, saucerlike eyes. The surfaces of its eyes are always covered with a thin layer of tears. If any dust gets in this Pokémon’s eyes, it is quickly washed away.'),
  -- zubat in omega-ruby
  (41, 4100, 23, 'Zubat remains quietly unmoving in a dark spot during the bright daylight hours. It does so because prolonged exposure to the sun causes its body to become slightly burned.'),
  -- golbat in omega-ruby
  (42, 4200, 23, 'Golbat loves to drink the blood of living things. It is particularly active in the pitch black of night. This Pokémon flits around in the night skies, seeking fresh blood.'),
  -- oddish in omega-ruby
  (43, 4300, 23, 'During the daytime, Oddish buries itself in soil to absorb nutrients from the ground using its entire body. The more fertile the soil, the glossier its leaves become.'),
  -- gloom in omega-ruby
  (44, 4400, 23, 'Gloom releases a foul fragrance from the pistil of its flower. When faced with danger, the stench worsens. If this Pokémon is feeling calm and secure, it does not release its usual stinky aroma.'),
  -- vileplume in omega-ruby
  (45, 4500, 23, 'Vileplume’s toxic pollen triggers atrocious allergy attacks. That’s why it is advisable never to approach any attractive flowers in a jungle, however pretty they may be.'),
  -- paras in omega-ruby
  (46, 4600, 23, 'Paras has parasitic mushrooms growing on its back called tochukaso. They grow large by drawing nutrients from this Bug Pokémon host. They are highly valued as a medicine for extending life.'),
  -- parasect in omega-ruby
  (47, 4700, 23, 'Parasect is known to infest large trees en masse and drain nutrients from the lower trunk and roots. When an infested tree dies, they move onto another tree all at once.'),
  -- venonat in omega-ruby
  (48, 4800, 23, 'Venonat is said to have evolved with a coat of thin, stiff hair that covers its entire body for protection. It possesses large eyes that never fail to spot even minuscule prey.'),
  -- venomoth in omega-ruby
  (49, 4900, 23, 'Venomoth is nocturnal—it is a Pokémon that only becomes active at night. Its favorite prey are small insects that gather around streetlights, attracted by the light in the darkness.'),
  -- diglett in omega-ruby
  (50, 5000, 23, 'Diglett are raised in most farms. The reason is simple— wherever this Pokémon burrows, the soil is left perfectly tilled for planting crops. This soil is made ideal for growing delicious vegetables.'),
  -- dugtrio in omega-ruby
  (51, 5100, 23, 'Dugtrio are actually triplets that emerged from one body. As a result, each triplet thinks exactly like the other two triplets. They work cooperatively to burrow endlessly.'),
  -- meowth in omega-ruby
  (52, 5200, 23, 'Meowth withdraws its sharp claws into its paws to slinkily sneak about without making any incriminating footsteps. For some reason, this Pokémon loves shiny coins that glitter with light.'),
  -- persian in omega-ruby
  (53, 5300, 23, 'Persian has six bold whiskers that give it a look of toughness. The whiskers sense air movements to determine what is in the Pokémon’s surrounding vicinity. It becomes docile if grabbed by the whiskers.'),
  -- psyduck in omega-ruby
  (54, 5400, 23, 'Psyduck uses a mysterious power. When it does so, this Pokémon generates brain waves that are supposedly only seen in sleepers. This discovery spurred controversy among scholars.'),
  -- golduck in omega-ruby
  (55, 5500, 23, 'The webbed flippers on its forelegs and hind legs and the streamlined body of Golduck give it frightening speed. This Pokémon is definitely much faster than even the most athletic swimmer.'),
  -- mankey in omega-ruby
  (56, 5600, 23, 'When Mankey starts shaking and its nasal breathing turns rough, it’s a sure sign that it is becoming angry. However, because it goes into a towering rage almost instantly, it is impossible for anyone to flee its wrath.'),
  -- primeape in omega-ruby
  (57, 5700, 23, 'When Primeape becomes furious, its blood circulation is boosted. In turn, its muscles are made even stronger. However, it also becomes much less intelligent at the same time.'),
  -- growlithe in omega-ruby
  (58, 5800, 23, 'Growlithe has a superb sense of smell. Once it smells anything, this Pokémon won’t forget the scent, no matter what. It uses its advanced olfactory sense to determine the emotions of other living things.'),
  -- arcanine in omega-ruby
  (59, 5900, 23, 'Arcanine is known for its high speed. It is said to be capable of running over 6,200 miles in a single day and night. The fire that blazes wildly within this Pokémon’s body is its source of power.'),
  -- poliwag in omega-ruby
  (60, 6000, 23, 'Poliwag has a very thin skin. It is possible to see the Pokémon’s spiral innards right through the skin. Despite its thinness, however, the skin is also very flexible. Even sharp fangs bounce right off it.'),
  -- poliwhirl in omega-ruby
  (61, 6100, 23, 'The surface of Poliwhirl’s body is always wet and slick with a slimy fluid. Because of this slippery covering, it can easily slip and slide out of the clutches of any enemy in battle.'),
  -- poliwrath in omega-ruby
  (62, 6200, 23, 'Poliwrath’s highly developed, brawny muscles never grow fatigued, however much it exercises. It is so tirelessly strong, this Pokémon can swim back and forth across the ocean without effort.'),
  -- abra in omega-ruby
  (63, 6300, 23, 'Abra sleeps for eighteen hours a day. However, it can sense the presence of foes even while it is sleeping. In such a situation, this Pokémon immediately teleports to safety.'),
  -- kadabra in omega-ruby
  (64, 6400, 23, 'Kadabra emits a peculiar alpha wave if it develops a headache. Only those people with a particularly strong psyche can hope to become a Trainer of this Pokémon.'),
  -- alakazam in omega-ruby
  (65, 6500, 23, 'Alakazam’s brain continually grows, making its head far too heavy to support with its neck. This Pokémon holds its head up using its psychokinetic power instead.'),
  -- machop in omega-ruby
  (66, 6600, 23, 'Machop’s muscles are special—they never get sore no matter how much they are used in exercise. This Pokémon has sufficient power to hurl a hundred adult humans.'),
  -- machoke in omega-ruby
  (67, 6700, 23, 'Machoke’s thoroughly toned muscles possess the hardness of steel. This Pokémon has so much strength, it can easily hold aloft a sumo wrestler on just one finger.'),
  -- machamp in omega-ruby
  (68, 6800, 23, 'Machamp has the power to hurl anything aside. However, trying to do any work requiring care and dexterity causes its arms to get tangled. This Pokémon tends to leap into action before it thinks.'),
  -- bellsprout in omega-ruby
  (69, 6900, 23, 'Bellsprout’s thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, this Pokémon spits a corrosive fluid that melts even iron.'),
  -- weepinbell in omega-ruby
  (70, 7000, 23, 'Weepinbell has a large hook on its rear end. At night, the Pokémon hooks on to a tree branch and goes to sleep. If it moves around in its sleep, it may wake up to find itself on the ground.'),
  -- victreebel in omega-ruby
  (71, 7100, 23, 'Victreebel has a long vine that extends from its head. This vine is waved and flicked about as if it were an animal to attract prey. When an unsuspecting prey draws near, this Pokémon swallows it whole.'),
  -- tentacool in omega-ruby
  (72, 7200, 23, 'Tentacool’s body is largely composed of water. If it is removed from the sea, it dries up like parchment. If this Pokémon happens to become dehydrated, put it back into the sea.'),
  -- tentacruel in omega-ruby
  (73, 7300, 23, 'Tentacruel has large red orbs on its head. The orbs glow before lashing the vicinity with a harsh ultrasonic blast. This Pokémon’s outburst creates rough waves around it.'),
  -- geodude in omega-ruby
  (74, 7400, 23, 'The longer a Geodude lives, the more its edges are chipped and worn away, making it more rounded in appearance. However, this Pokémon’s heart will remain hard, craggy, and rough always.'),
  -- graveler in omega-ruby
  (75, 7500, 23, 'Graveler grows by feeding on rocks. Apparently, it prefers to eat rocks that are covered in moss. This Pokémon eats its way through a ton of rocks on a daily basis.'),
  -- golem in omega-ruby
  (76, 7600, 23, 'Golem live up on mountains. If there is a large earthquake, these Pokémon will come rolling down off the mountains en masse to the foothills below.'),
  -- ponyta in omega-ruby
  (77, 7700, 23, 'Ponyta is very weak at birth. It can barely stand up. This Pokémon becomes stronger by stumbling and falling to keep up with its parent.'),
  -- rapidash in omega-ruby
  (78, 7800, 23, 'Rapidash usually can be seen casually cantering in the fields and plains. However, when this Pokémon turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.'),
  -- slowpoke in omega-ruby
  (79, 7900, 23, 'Slowpoke uses its tail to catch prey by dipping it in water at the side of a river. However, this Pokémon often forgets what it’s doing and often spends entire days just loafing at water’s edge.'),
  -- slowbro in omega-ruby
  (80, 8000, 23, 'Slowbro’s tail has a Shellder firmly attached with a bite. As a result, the tail can’t be used for fishing anymore. This causes Slowbro to grudgingly swim and catch prey instead.'),
  -- magnemite in omega-ruby
  (81, 8100, 23, 'Magnemite attaches itself to power lines to feed on electricity. If your house has a power outage, check your circuit breakers. You may find a large number of this Pokémon clinging to the breaker box.'),
  -- magneton in omega-ruby
  (82, 8200, 23, 'Magneton emits a powerful magnetic force that is fatal to mechanical devices. As a result, large cities sound sirens to warn citizens of large-scale outbreaks of this Pokémon.'),
  -- farfetchd in omega-ruby
  (83, 8300, 23, 'Farfetch’d is always seen with a stalk from a plant of some sort. Apparently, there are good stalks and bad stalks. This Pokémon has been known to fight with others over stalks.'),
  -- doduo in omega-ruby
  (84, 8400, 23, 'Doduo’s two heads never sleep at the same time. Its two heads take turns sleeping, so one head can always keep watch for enemies while the other one sleeps.'),
  -- dodrio in omega-ruby
  (85, 8500, 23, 'Watch out if Dodrio’s three heads are looking in three separate directions. It’s a sure sign that it is on its guard. Don’t go near this Pokémon if it’s being wary—it may decide to peck you.'),
  -- seel in omega-ruby
  (86, 8600, 23, 'Seel hunts for prey in the frigid sea underneath sheets of ice. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head.'),
  -- dewgong in omega-ruby
  (87, 8700, 23, 'Dewgong loves to snooze on bitterly cold ice. The sight of this Pokémon sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.'),
  -- grimer in omega-ruby
  (88, 8800, 23, 'Grimer’s sludgy and rubbery body can be forced through any opening, however small it may be. This Pokémon enters sewer pipes to drink filthy wastewater.'),
  -- muk in omega-ruby
  (89, 8900, 23, 'From Muk’s body seeps a foul fluid that gives off a nose-bendingly horrible stench. Just one drop of this Pokémon’s body fluid can turn a pool stagnant and rancid.'),
  -- shellder in omega-ruby
  (90, 9000, 23, 'At night, this Pokémon uses its broad tongue to burrow a hole in the seafloor sand and then sleep in it. While it is sleeping, Shellder closes its shell, but leaves its tongue hanging out.'),
  -- cloyster in omega-ruby
  (91, 9100, 23, 'Cloyster is capable of swimming in the sea. It does so by swallowing water, then jetting it out toward the rear. This Pokémon shoots spikes from its shell using the same system.'),
  -- gastly in omega-ruby
  (92, 9200, 23, 'Gastly is largely composed of gaseous matter. When exposed to a strong wind, the gaseous body quickly dwindles away. Groups of this Pokémon cluster under the eaves of houses to escape the ravages of wind.'),
  -- haunter in omega-ruby
  (93, 9300, 23, 'Haunter is a dangerous Pokémon. If one beckons you while floating in darkness, you must never approach it. This Pokémon will try to lick you with its tongue and steal your life away.'),
  -- gengar in omega-ruby
  (94, 9400, 23, 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow.'),
  -- onix in omega-ruby
  (95, 9500, 23, 'Onix has a magnet in its brain. It acts as a compass so that this Pokémon does not lose direction while it is tunneling. As it grows older, its body becomes increasingly rounder and smoother.'),
  -- drowzee in omega-ruby
  (96, 9600, 23, 'If your nose becomes itchy while you are sleeping, it’s a sure sign that one of these Pokémon is standing above your pillow and trying to eat your dream through your nostrils.'),
  -- hypno in omega-ruby
  (97, 9700, 23, 'Hypno holds a pendulum in its hand. The arcing movement and glitter of the pendulum lull the foe into a deep state of hypnosis. While this Pokémon searches for prey, it polishes the pendulum.'),
  -- krabby in omega-ruby
  (98, 9800, 23, 'Krabby live on beaches, burrowed inside holes dug into the sand. On sandy beaches with little in the way of food, these Pokémon can be seen squabbling with each other over territory.'),
  -- kingler in omega-ruby
  (99, 9900, 23, 'Kingler has an enormous, oversized claw. It waves this huge claw in the air to communicate with others. However, because the claw is so heavy, the Pokémon quickly tires.'),
  -- voltorb in omega-ruby
  (100, 10000, 23, 'Voltorb was first sighted at a company that manufactures Poké Balls. The link between that sighting and the fact that this Pokémon looks very similar to a Poké Ball remains a mystery.'),
  -- electrode in omega-ruby
  (101, 10100, 23, 'Electrode eats electricity in the atmosphere. On days when lightning strikes, you can see this Pokémon exploding all over the place from eating too much electricity.'),
  -- exeggcute in omega-ruby
  (102, 10200, 23, 'This Pokémon consists of six eggs that form a closely knit cluster. The six eggs attract each other and spin around. When cracks increasingly appear on the eggs, Exeggcute is close to evolution.'),
  -- exeggutor in omega-ruby
  (103, 10300, 23, 'Exeggutor originally came from the tropics. Its heads steadily grow larger from exposure to strong sunlight. It is said that when the heads fall off, they group together to form Exeggcute.'),
  -- cubone in omega-ruby
  (104, 10400, 23, 'Cubone pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull the Pokémon wears are made by the tears it sheds.'),
  -- marowak in omega-ruby
  (105, 10500, 23, 'Marowak is the evolved form of a Cubone that has overcome its sadness at the loss of its mother and grown tough. This Pokémon’s tempered and hardened spirit is not easily broken.'),
  -- hitmonlee in omega-ruby
  (106, 10600, 23, 'Hitmonlee’s legs freely contract and stretch. Using these springlike legs, it bowls over foes with devastating kicks. After battle, it rubs down its legs and loosens the muscles to overcome fatigue.'),
  -- hitmonchan in omega-ruby
  (107, 10700, 23, 'Hitmonchan is said to possess the spirit of a boxer who had been working toward a world championship. This Pokémon has an indomitable spirit and will never give up in the face of adversity.'),
  -- lickitung in omega-ruby
  (108, 10800, 23, 'Whenever Lickitung comes across something new, it will unfailingly give it a lick. It does so because it memorizes things by texture and by taste. It is somewhat put off by sour things.'),
  -- koffing in omega-ruby
  (109, 10900, 23, 'If Koffing becomes agitated, it raises the toxicity of its internal gases and jets them out from all over its body. This Pokémon may also overinflate its round body, then explode.'),
  -- weezing in omega-ruby
  (110, 11000, 23, 'Weezing loves the gases given off by rotted kitchen garbage. This Pokémon will find a dirty, unkempt house and make it its home. At night, when the people in the house are asleep, it will go through the trash.'),
  -- rhyhorn in omega-ruby
  (111, 11100, 23, 'Rhyhorn runs in a straight line, smashing everything in its path. It is not bothered even if it rushes headlong into a block of steel. This Pokémon may feel some pain from the collision the next day, however.'),
  -- rhydon in omega-ruby
  (112, 11200, 23, 'Rhydon’s horn can crush even uncut diamonds. One sweeping blow of its tail can topple a building. This Pokémon’s hide is extremely tough. Even direct cannon hits don’t leave a scratch.'),
  -- chansey in omega-ruby
  (113, 11300, 23, 'Chansey lays nutritionally excellent eggs on an everyday basis. The eggs are so delicious, they are easily and eagerly devoured by even those people who have lost their appetite.'),
  -- tangela in omega-ruby
  (114, 11400, 23, 'Tangela’s vines snap off easily if they are grabbed. This happens without pain, allowing it to make a quick getaway. The lost vines are replaced by newly grown vines the very next day.'),
  -- kangaskhan in omega-ruby
  (115, 11500, 23, 'If you come across a young Kangaskhan playing by itself, you must never disturb it or attempt to catch it. The baby Pokémon’s parent is sure to be in the area, and it will become violently enraged at you.'),
  -- horsea in omega-ruby
  (116, 11600, 23, 'Horsea eats small insects and moss off of rocks. If the ocean current turns fast, this Pokémon anchors itself by wrapping its tail around rocks or coral to prevent being washed away.'),
  -- seadra in omega-ruby
  (117, 11700, 23, 'Seadra sleeps after wriggling itself between the branches of coral. Those trying to harvest coral are occasionally stung by this Pokémon’s poison barbs if they fail to notice it.'),
  -- goldeen in omega-ruby
  (118, 11800, 23, 'Goldeen is a very beautiful Pokémon with fins that billow elegantly in water. However, don’t let your guard down around this Pokémon—it could ram you powerfully with its horn.'),
  -- seaking in omega-ruby
  (119, 11900, 23, 'In the autumn, Seaking males can be seen performing courtship dances in riverbeds to woo females. During this season, this Pokémon’s body coloration is at its most beautiful.'),
  -- staryu in omega-ruby
  (120, 12000, 23, 'Staryu’s center section has an organ called the core that shines bright red. If you go to a beach toward the end of summer, the glowing cores of these Pokémon look like the stars in the sky.'),
  -- starmie in omega-ruby
  (121, 12100, 23, 'Starmie’s center section—the core—glows brightly in seven colors. Because of its luminous nature, this Pokémon has been given the nickname “the gem of the sea.”'),
  -- mr-mime in omega-ruby
  (122, 12200, 23, 'Mr. Mime is a master of pantomime. Its gestures and motions convince watchers that something unseeable actually exists. Once the watchers are convinced, the unseeable thing exists as if it were real.'),
  -- scyther in omega-ruby
  (123, 12300, 23, 'Scyther is blindingly fast. Its blazing speed enhances the effectiveness of the twin scythes on its forearms. This Pokémon’s scythes are so effective, they can slice through thick logs in one wicked stroke.'),
  -- jynx in omega-ruby
  (124, 12400, 23, 'Jynx walks rhythmically, swaying and shaking its hips as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without giving any thought to what they are doing.'),
  -- electabuzz in omega-ruby
  (125, 12500, 23, 'When a storm arrives, gangs of this Pokémon compete with each other to scale heights that are likely to be stricken by lightning bolts. Some towns use Electabuzz in place of lightning rods.'),
  -- magmar in omega-ruby
  (126, 12600, 23, 'In battle, Magmar blows out intensely hot flames from all over its body to intimidate its opponent. This Pokémon’s fiery bursts create heat waves that ignite grass and trees in its surroundings.'),
  -- pinsir in omega-ruby
  (127, 12700, 23, 'Pinsir is astoundingly strong. It can grip a foe weighing twice its weight in its horns and easily lift it. This Pokémon’s movements turn sluggish in cold places.'),
  -- tauros in omega-ruby
  (128, 12800, 23, 'This Pokémon is not satisfied unless it is rampaging at all times. If there is no opponent for Tauros to battle, it will charge at thick trees and knock them down to calm itself.'),
  -- magikarp in omega-ruby
  (129, 12900, 23, 'Magikarp is a pathetic excuse for a Pokémon that is only capable of flopping and splashing. This behavior prompted scientists to undertake research into it.'),
  -- gyarados in omega-ruby
  (130, 13000, 23, 'When Magikarp evolves into Gyarados, its brain cells undergo a structural transformation. It is said that this transformation is to blame for this Pokémon’s wildly violent nature.'),
  -- lapras in omega-ruby
  (131, 13100, 23, 'People have driven Lapras almost to the point of extinction. In the evenings, this Pokémon is said to sing plaintively as it seeks what few others of its kind still remain.'),
  -- ditto in omega-ruby
  (132, 13200, 23, 'Ditto rearranges its cell structure to transform itself into other shapes. However, if it tries to transform itself into something by relying on its memory, this Pokémon manages to get details wrong.'),
  -- eevee in omega-ruby
  (133, 13300, 23, 'Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pokémon to evolve.'),
  -- vaporeon in omega-ruby
  (134, 13400, 23, 'Vaporeon underwent a spontaneous mutation and grew fins and gills that allow it to live underwater. This Pokémon has the ability to freely control water.'),
  -- jolteon in omega-ruby
  (135, 13500, 23, 'Jolteon’s cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the Pokémon to drop thunderbolts. The bristling fur is made of electrically charged needles.'),
  -- flareon in omega-ruby
  (136, 13600, 23, 'Flareon’s fluffy fur has a functional purpose—it releases heat into the air so that its body does not get excessively hot. This Pokémon’s body temperature can rise to a maximum of 1,650 degrees Fahrenheit.'),
  -- porygon in omega-ruby
  (137, 13700, 23, 'Porygon is capable of reverting itself entirely back to program data and entering cyberspace. This Pokémon is copy protected so it cannot be duplicated by copying.'),
  -- omanyte in omega-ruby
  (138, 13800, 23, 'Omanyte is one of the ancient and long-since-extinct Pokémon that have been regenerated from fossils by people. If attacked by an enemy, it withdraws itself inside its hard shell.'),
  -- omastar in omega-ruby
  (139, 13900, 23, 'Omastar uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large and heavy, causing its movements to become too slow and ponderous.'),
  -- kabuto in omega-ruby
  (140, 14000, 23, 'Kabuto is a Pokémon that has been regenerated from a fossil. However, in extremely rare cases, living examples have been discovered. The Pokémon has not changed at all for 300 million years.'),
  -- kabutops in omega-ruby
  (141, 14100, 23, 'Kabutops swam underwater to hunt for its prey in ancient times. The Pokémon was apparently evolving from being a water dweller to living on land as evident from the beginnings of change in its gills and legs.'),
  -- aerodactyl in omega-ruby
  (142, 14200, 23, 'Aerodactyl is a Pokémon from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.'),
  -- snorlax in omega-ruby
  (143, 14300, 23, 'Snorlax’s typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its expansive belly as a place to play.'),
  -- articuno in omega-ruby
  (144, 14400, 23, 'Articuno is a legendary bird Pokémon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokémon flies, snow will fall.'),
  -- zapdos in omega-ruby
  (145, 14500, 23, 'Zapdos is a legendary bird Pokémon that has the ability to control electricity. It usually lives in thunderclouds. The Pokémon gains power if it is stricken by lightning bolts.'),
  -- moltres in omega-ruby
  (146, 14600, 23, 'Moltres is a legendary bird Pokémon that has the ability to control fire. If this Pokémon is injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.'),
  -- dratini in omega-ruby
  (147, 14700, 23, 'Dratini continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels.'),
  -- dragonair in omega-ruby
  (148, 14800, 23, 'Dragonair stores an enormous amount of energy inside its body. It is said to alter weather conditions in its vicinity by discharging energy from the crystals on its neck and tail.'),
  -- dragonite in omega-ruby
  (149, 14900, 23, 'Dragonite is capable of circling the globe in just 16 hours. It is a kindhearted Pokémon that leads lost and foundering ships in a storm to the safety of land.'),
  -- mewtwo in omega-ruby
  (150, 15000, 23, 'Mewtwo is a Pokémon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokémon’s body, they failed to endow Mewtwo with a compassionate heart.'),
  -- mew in omega-ruby
  (151, 15100, 23, 'Mew is said to possess the genetic composition of all Pokémon. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people.'),
  -- chikorita in omega-ruby
  (152, 15200, 23, 'In battle, Chikorita waves its leaf around to keep the foe at bay. However, a sweet fragrance also wafts from the leaf, becalming the battling Pokémon and creating a cozy, friendly atmosphere all around.'),
  -- bayleef in omega-ruby
  (153, 15300, 23, 'Bayleef’s neck is ringed by curled-up leaves. Inside each tubular leaf is a small shoot of a tree. The fragrance of this shoot makes people peppy.'),
  -- meganium in omega-ruby
  (154, 15400, 23, 'The fragrance of Meganium’s flower soothes and calms emotions. In battle, this Pokémon gives off more of its becalming scent to blunt the foe’s fighting spirit.'),
  -- cyndaquil in omega-ruby
  (155, 15500, 23, 'Cyndaquil protects itself by flaring up the flames on its back. The flames are vigorous if the Pokémon is angry. However, if it is tired, the flames splutter fitfully with incomplete combustion.'),
  -- quilava in omega-ruby
  (156, 15600, 23, 'Quilava keeps its foes at bay with the intensity of its flames and gusts of superheated air. This Pokémon applies its outstanding nimbleness to dodge attacks even while scorching the foe with flames.'),
  -- typhlosion in omega-ruby
  (157, 15700, 23, 'Typhlosion obscures itself behind a shimmering heat haze that it creates using its intensely hot flames. This Pokémon creates blazing explosive blasts that burn everything to cinders.'),
  -- totodile in omega-ruby
  (158, 15800, 23, 'Despite the smallness of its body, Totodile’s jaws are very powerful. While the Pokémon may think it is just playfully nipping, its bite has enough power to cause serious injury.'),
  -- croconaw in omega-ruby
  (159, 15900, 23, 'Once Croconaw has clamped its jaws on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like barbed fishhooks, they become impossible to remove when they have sunk in.'),
  -- feraligatr in omega-ruby
  (160, 16000, 23, 'Feraligatr intimidates its foes by opening its huge mouth. In battle, it will kick the ground hard with its thick and powerful hind legs to charge at the foe at an incredible speed.'),
  -- sentret in omega-ruby
  (161, 16100, 23, 'When Sentret sleeps, it does so while another stands guard. The sentry wakes the others at the first sign of danger. When this Pokémon becomes separated from its pack, it becomes incapable of sleep due to fear.'),
  -- furret in omega-ruby
  (162, 16200, 23, 'Furret has a very slim build. When under attack, it can slickly squirm through narrow spaces and get away. In spite of its short limbs, this Pokémon is very nimble and fleet.'),
  -- hoothoot in omega-ruby
  (163, 16300, 23, 'Hoothoot has an internal organ that senses and tracks the earth’s rotation. Using this special organ, this Pokémon begins hooting at precisely the same time every day.'),
  -- noctowl in omega-ruby
  (164, 16400, 23, 'Noctowl never fails at catching prey in darkness. This Pokémon owes its success to its superior vision that allows it to see in minimal light, and to its soft, supple wings that make no sound in flight.'),
  -- ledyba in omega-ruby
  (165, 16500, 23, 'Ledyba secretes an aromatic fluid from where its legs join its body. This fluid is used for communicating with others. This Pokémon conveys its feelings to others by altering the fluid’s scent.'),
  -- ledian in omega-ruby
  (166, 16600, 23, 'It is said that in lands with clean air, where the stars fill the sky, there live Ledian in countless numbers. There is a good reason for this—the Pokémon uses the light of the stars as its energy.'),
  -- spinarak in omega-ruby
  (167, 16700, 23, 'The web spun by Spinarak can be considered its second nervous system. It is said that this Pokémon can determine what kind of prey is touching its web just by the tiny vibrations it feels through the web’s strands.'),
  -- ariados in omega-ruby
  (168, 16800, 23, 'Ariados’s feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. This Pokémon constricts the foe with thin and strong silk webbing.'),
  -- crobat in omega-ruby
  (169, 16900, 23, 'If this Pokémon is flying by fluttering only a pair of wings on either the forelegs or hind legs, it’s proof that Crobat has been flying a long distance. It switches the wings it uses if it is tired.'),
  -- chinchou in omega-ruby
  (170, 17000, 23, 'Chinchou lets loose positive and negative electrical charges from its two antennas to make its prey faint. This Pokémon flashes its electric lights to exchange signals with others.'),
  -- lanturn in omega-ruby
  (171, 17100, 23, 'Lanturn is nicknamed “the deep-sea star” for its illuminated antenna. This Pokémon produces light by causing a chemical reaction between bacteria and its bodily fluids inside the antenna.'),
  -- pichu in omega-ruby
  (172, 17200, 23, 'Pichu charges itself with electricity more easily on days with thunderclouds or when the air is very dry. You can hear the crackling of static electricity coming off this Pokémon.'),
  -- cleffa in omega-ruby
  (173, 17300, 23, 'On nights with many shooting stars, Cleffa can be seen dancing in a ring. They dance through the night and stop only at the break of day, when these Pokémon quench their thirst with the morning dew.'),
  -- igglybuff in omega-ruby
  (174, 17400, 23, 'Igglybuff’s vocal cords are not sufficiently developed. It would hurt its throat if it were to sing too much. This Pokémon gargles with freshwater from a clean stream.'),
  -- togepi in omega-ruby
  (175, 17500, 23, 'As its energy, Togepi uses the positive emotions of compassion and pleasure exuded by people and Pokémon. This Pokémon stores up feelings of happiness inside its shell, then shares them with others.'),
  -- togetic in omega-ruby
  (176, 17600, 23, 'Togetic is said to be a Pokémon that brings good fortune. When the Pokémon spots someone who is pure of heart, it is said to appear and share its happiness with that person.'),
  -- natu in omega-ruby
  (177, 17700, 23, 'Natu cannot fly because its wings are not yet fully grown. If your eyes meet with this Pokémon’s eyes, it will stare back intently at you. But if you move even slightly, it will hop away to safety.'),
  -- xatu in omega-ruby
  (178, 17800, 23, 'Xatu stands rooted and still in one spot all day long. People believe that this Pokémon does so out of fear of the terrible things it has foreseen in the future.'),
  -- mareep in omega-ruby
  (179, 17900, 23, 'Mareep’s fluffy coat of wool rubs together and builds a static charge. The more static electricity is charged, the more brightly the lightbulb at the tip of its tail glows.'),
  -- flaaffy in omega-ruby
  (180, 18000, 23, 'Flaaffy’s wool quality changes so that it can generate a high amount of static electricity with a small amount of wool. The bare and slick parts of its hide are shielded against electricity.'),
  -- ampharos in omega-ruby
  (181, 18100, 23, 'Ampharos gives off so much light that it can be seen even from space. People in the old days used the light of this Pokémon to send signals back and forth with others far away.'),
  -- bellossom in omega-ruby
  (182, 18200, 23, 'When Bellossom gets exposed to plenty of sunlight, the leaves ringing its body begin to spin around. This Pokémon’s dancing is renowned in the southern lands.'),
  -- marill in omega-ruby
  (183, 18300, 23, 'Marill’s oil-filled tail acts much like a life preserver. If you see just its tail bobbing on the water’s surface, it’s a sure indication that this Pokémon is diving beneath the water to feed on aquatic plants.'),
  -- azumarill in omega-ruby
  (184, 18400, 23, 'Azumarill’s long ears are indispensable sensors. By focusing its hearing, this Pokémon can identify what kinds of prey are around, even in rough and fast-running rivers.'),
  -- sudowoodo in omega-ruby
  (185, 18500, 23, 'Sudowoodo camouflages itself as a tree to avoid being attacked by enemies. However, because its hands remain green throughout the year, the Pokémon is easily identified as a fake during the winter.'),
  -- politoed in omega-ruby
  (186, 18600, 23, 'The curled hair on Politoed’s head is proof of its status as a king. It is said that the longer and more curled the hair, the more respect this Pokémon earns from its peers.'),
  -- hoppip in omega-ruby
  (187, 18700, 23, 'This Pokémon drifts and floats with the wind. If it senses the approach of strong winds, Hoppip links its leaves with other Hoppip to prepare against being blown away.'),
  -- skiploom in omega-ruby
  (188, 18800, 23, 'Skiploom’s flower blossoms when the temperature rises above 64 degrees Fahrenheit. How much the flower opens depends on the temperature. For that reason, this Pokémon is sometimes used as a thermometer.'),
  -- jumpluff in omega-ruby
  (189, 18900, 23, 'Jumpluff rides warm southern winds to cross the sea and fly to foreign lands. The Pokémon descends to the ground when it encounters cold air while it is floating.'),
  -- aipom in omega-ruby
  (190, 19000, 23, 'Aipom’s tail ends in a hand-like appendage that can be cleverly manipulated. However, because the Pokémon uses its tail so much, its real hands have become rather clumsy.'),
  -- sunkern in omega-ruby
  (191, 19100, 23, 'Sunkern tries to move as little as it possibly can. It does so because it tries to conserve all the nutrients it has stored in its body for its evolution. It will not eat a thing, subsisting only on morning dew.'),
  -- sunflora in omega-ruby
  (192, 19200, 23, 'Sunflora converts solar energy into nutrition. It moves around actively in the daytime when it is warm. It stops moving as soon as the sun goes down for the night.'),
  -- yanma in omega-ruby
  (193, 19300, 23, 'Yanma is capable of seeing 360 degrees without having to move its eyes. It is a great flier that is adept at making sudden stops and turning midair. This Pokémon uses its flying ability to quickly chase down targeted prey.'),
  -- wooper in omega-ruby
  (194, 19400, 23, 'Wooper usually lives in water. However, it occasionally comes out onto land in search of food. On land, it coats its body with a gooey, toxic film.'),
  -- quagsire in omega-ruby
  (195, 19500, 23, 'Quagsire hunts for food by leaving its mouth wide open in water and waiting for its prey to blunder in unaware. Because the Pokémon does not move, it does not get very hungry.'),
  -- espeon in omega-ruby
  (196, 19600, 23, 'Espeon is extremely loyal to any Trainer it considers to be worthy. It is said that this Pokémon developed its precognitive powers to protect its Trainer from harm.'),
  -- umbreon in omega-ruby
  (197, 19700, 23, 'Umbreon evolved as a result of exposure to the moon’s waves. It hides silently in darkness and waits for its foes to make a move. The rings on its body glow when it leaps to attack.'),
  -- murkrow in omega-ruby
  (198, 19800, 23, 'Murkrow was feared and loathed as the alleged bearer of ill fortune. This Pokémon shows strong interest in anything that sparkles or glitters. It will even try to steal rings from women.'),
  -- slowking in omega-ruby
  (199, 19900, 23, 'Slowking undertakes research every day in an effort to solve the mysteries of the world. However, this Pokémon apparently forgets everything it has learned if the Shellder on its head comes off.'),
  -- misdreavus in omega-ruby
  (200, 20000, 23, 'Misdreavus frightens people with a creepy, sobbing cry. The Pokémon apparently uses its red spheres to absorb the fearful feelings of foes and turn them into nutrition.'),
  -- unown in omega-ruby
  (201, 20100, 23, 'This Pokémon is shaped like ancient writing. It is a mystery as to which came first, the ancient writings or the various Unown. Research into this topic is ongoing but nothing is known.'),
  -- wobbuffet in omega-ruby
  (202, 20200, 23, 'If two or more Wobbuffet meet, they will turn competitive and try to outdo each other’s endurance. However, they may try to see which one can endure the longest without food. Trainers need to beware of this habit.'),
  -- girafarig in omega-ruby
  (203, 20300, 23, 'Girafarig’s rear head also has a brain, but it is small. The rear head attacks in response to smells and sounds. Approaching this Pokémon from behind can cause the rear head to suddenly lash out and bite.'),
  -- pineco in omega-ruby
  (204, 20400, 23, 'Pineco hangs from a tree branch and patiently waits for prey to come along. If the Pokémon is disturbed while eating by someone shaking its tree, it drops down to the ground and explodes with no warning.'),
  -- forretress in omega-ruby
  (205, 20500, 23, 'Forretress conceals itself inside its hardened steel shell. The shell is opened when the Pokémon is catching prey, but it does so at such a quick pace that the shell’s inside cannot be seen.'),
  -- dunsparce in omega-ruby
  (206, 20600, 23, 'Dunsparce has a drill for its tail. It uses this tail to burrow into the ground backward. This Pokémon is known to make its nest in complex shapes deep under the ground.'),
  -- gligar in omega-ruby
  (207, 20700, 23, 'Gligar glides through the air without a sound as if it were sliding. This Pokémon hangs on to the face of its foe using its clawed hind legs and the large pincers on its forelegs, then injects the prey with its poison barb.'),
  -- steelix in omega-ruby
  (208, 20800, 23, 'Steelix lives even further underground than Onix. This Pokémon is known to dig toward the earth’s core. There are records of this Pokémon reaching a depth of over six-tenths of a mile underground.'),
  -- snubbull in omega-ruby
  (209, 20900, 23, 'By baring its fangs and making a scary face, Snubbull sends smaller Pokémon scurrying away in terror. However, this Pokémon seems a little sad at making its foes flee.'),
  -- granbull in omega-ruby
  (210, 21000, 23, 'Granbull has a particularly well-developed lower jaw. The enormous fangs are heavy, causing the Pokémon to tip its head back for balance. Unless it is startled, it will not try to bite indiscriminately.'),
  -- qwilfish in omega-ruby
  (211, 21100, 23, 'Qwilfish sucks in water, inflating itself. This Pokémon uses the pressure of the water it swallowed to shoot toxic quills all at once from all over its body. It finds swimming somewhat challenging.'),
  -- scizor in omega-ruby
  (212, 21200, 23, 'Scizor has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. This Pokémon flaps its wings to regulate its body temperature.'),
  -- shuckle in omega-ruby
  (213, 21300, 23, 'Shuckle quietly hides itself under rocks, keeping its body concealed inside its hard shell while eating berries it has stored away. The berries mix with its body fluids to become a juice.'),
  -- heracross in omega-ruby
  (214, 21400, 23, 'Heracross charges in a straight line at its foe, slips beneath the foe’s grasp, and then scoops up and hurls the opponent with its mighty horn. This Pokémon even has enough power to topple a massive tree.'),
  -- sneasel in omega-ruby
  (215, 21500, 23, 'Sneasel scales trees by punching its hooked claws into the bark. This Pokémon seeks out unguarded nests and steals eggs for food while the parents are away.'),
  -- teddiursa in omega-ruby
  (216, 21600, 23, 'This Pokémon likes to lick its palms that are sweetened by being soaked in honey. Teddiursa concocts its own honey by blending fruits and pollen collected by Beedrill.'),
  -- ursaring in omega-ruby
  (217, 21700, 23, 'In the forests inhabited by Ursaring, it is said that there are many streams and towering trees where they gather food. This Pokémon walks through its forest gathering food every day.'),
  -- slugma in omega-ruby
  (218, 21800, 23, 'Molten magma courses throughout Slugma’s circulatory system. If this Pokémon is chilled, the magma cools and hardens. Its body turns brittle and chunks fall off, reducing its size.'),
  -- magcargo in omega-ruby
  (219, 21900, 23, 'Magcargo’s shell is actually its skin that hardened as a result of cooling. Its shell is very brittle and fragile—just touching it causes it to crumble apart. This Pokémon returns to its original size by dipping itself in magma.'),
  -- swinub in omega-ruby
  (220, 22000, 23, 'Swinub roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under the cover of dead grass. This Pokémon occasionally roots out hot springs.'),
  -- piloswine in omega-ruby
  (221, 22100, 23, 'Piloswine is covered by a thick coat of long hair that enables it to endure the freezing cold. This Pokémon uses its tusks to dig up food that has been buried under ice.'),
  -- corsola in omega-ruby
  (222, 22200, 23, 'Corsola’s branches glitter very beautifully in seven colors when they catch sunlight. If any branch breaks off, this Pokémon grows it back in just one night.'),
  -- remoraid in omega-ruby
  (223, 22300, 23, 'Remoraid sucks in water, then expels it at high velocity using its abdominal muscles to shoot down flying prey. When evolution draws near, this Pokémon travels downstream from rivers.'),
  -- octillery in omega-ruby
  (224, 22400, 23, 'Octillery grabs onto its foe using its tentacles. This Pokémon tries to immobilize it before delivering the finishing blow. If the foe turns out to be too strong, Octillery spews ink to escape.'),
  -- delibird in omega-ruby
  (225, 22500, 23, 'Delibird carries its food bundled up in its tail. There once was a famous explorer who managed to reach the peak of the world’s highest mountain, thanks to one of these Pokémon sharing its food.'),
  -- mantine in omega-ruby
  (226, 22600, 23, 'On sunny days, schools of Mantine can be seen elegantly leaping over the sea’s waves. This Pokémon is not bothered by the Remoraid that hitches rides.'),
  -- skarmory in omega-ruby
  (227, 22700, 23, 'Skarmory is entirely encased in hard, protective armor. This Pokémon flies at close to 190 mph. It slashes foes with its wings that possess swordlike cutting edges.'),
  -- houndour in omega-ruby
  (228, 22800, 23, 'Houndour hunt as a coordinated pack. They communicate with each other using a variety of cries to corner their prey. This Pokémon’s remarkable teamwork is unparalleled.'),
  -- houndoom in omega-ruby
  (229, 22900, 23, 'In a Houndoom pack, the one with its horns raked sharply toward the back serves a leadership role. These Pokémon choose their leader by fighting among themselves.'),
  -- kingdra in omega-ruby
  (230, 23000, 23, 'Kingdra lives at extreme ocean depths that are otherwise uninhabited. It has long been believed that the yawning of this Pokémon creates spiraling ocean currents.'),
  -- phanpy in omega-ruby
  (231, 23100, 23, 'For its nest, Phanpy digs a vertical pit in the ground at the edge of a river. It marks the area around its nest with its trunk to let the others know that the area has been claimed.'),
  -- donphan in omega-ruby
  (232, 23200, 23, 'Donphan’s favorite attack is curling its body into a ball, then charging at its foe while rolling at high speed. Once it starts rolling, this Pokémon can’t stop very easily.'),
  -- porygon2 in omega-ruby
  (233, 23300, 23, 'Porygon2 was created by humans using the power of science. The man-made Pokémon has been endowed with artificial intelligence that enables it to learn new gestures and emotions on its own.'),
  -- stantler in omega-ruby
  (234, 23400, 23, 'Stantler’s magnificent antlers were traded at high prices as works of art. As a result, this Pokémon was hunted close to extinction by those who were after the priceless antlers.'),
  -- smeargle in omega-ruby
  (235, 23500, 23, 'Smeargle marks the boundaries of its territory using a body fluid that leaks out from the tip of its tail. Over 5,000 different marks left by this Pokémon have been found.'),
  -- tyrogue in omega-ruby
  (236, 23600, 23, 'Tyrogue becomes stressed out if it does not get to train every day. When raising this Pokémon, the Trainer must establish and uphold various training methods.'),
  -- hitmontop in omega-ruby
  (237, 23700, 23, 'Hitmontop spins on its head at high speed, all the while delivering kicks. This technique is a remarkable mix of both offense and defense at the same time. The Pokémon travels faster spinning than it does walking.'),
  -- smoochum in omega-ruby
  (238, 23800, 23, 'Smoochum actively runs about, but also falls quite often. Whenever the chance arrives, it will look for its reflection to make sure its face hasn’t become dirty.'),
  -- elekid in omega-ruby
  (239, 23900, 23, 'Elekid stores electricity in its body. If it touches metal and accidentally discharges all its built-up electricity, this Pokémon begins swinging its arms in circles to recharge itself.'),
  -- magby in omega-ruby
  (240, 24000, 23, 'Magby’s state of health is determined by observing the fire it breathes. If the Pokémon is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames.'),
  -- miltank in omega-ruby
  (241, 24100, 23, 'Miltank gives over five gallons of milk on a daily basis. Its sweet milk is enjoyed by children and grown-ups alike. People who can’t drink milk turn it into yogurt and eat it instead.'),
  -- blissey in omega-ruby
  (242, 24200, 23, 'Blissey senses sadness with its fluffy coat of fur. If it does so, this Pokémon will rush over to a sad person, no matter how far away, to share a Lucky Egg that brings a smile to any face.'),
  -- raikou in omega-ruby
  (243, 24300, 23, 'Raikou embodies the speed of lightning. The roars of this Pokémon send shock waves shuddering through the air and shake the ground as if lightning bolts had come crashing down.'),
  -- entei in omega-ruby
  (244, 24400, 23, 'Entei embodies the passion of magma. This Pokémon is thought to have been born in the eruption of a volcano. It sends up massive bursts of fire that utterly consume all that they touch.'),
  -- suicune in omega-ruby
  (245, 24500, 23, 'Suicune embodies the compassion of a pure spring of water. It runs across the land with gracefulness. This Pokémon has the power to purify dirty water.'),
  -- larvitar in omega-ruby
  (246, 24600, 23, 'Larvitar is born deep under the ground. To come up to the surface, this Pokémon must eat its way through the soil above. Until it does so, Larvitar cannot see its parents.'),
  -- pupitar in omega-ruby
  (247, 24700, 23, 'Pupitar creates a gas inside its body that it compresses and forcefully ejects to propel itself like a jet. The body is very durable—it avoids damage even if it hits solid steel.'),
  -- tyranitar in omega-ruby
  (248, 24800, 23, 'Tyranitar is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. This Pokémon wanders about in mountains seeking new opponents to fight.'),
  -- lugia in omega-ruby
  (249, 24900, 23, 'Lugia’s wings pack devastating power—a light fluttering of its wings can blow apart regular houses. As a result, this Pokémon chooses to live out of sight deep under the sea.'),
  -- ho-oh in omega-ruby
  (250, 25000, 23, 'Ho-Oh’s feathers glow in seven colors depending on the angle at which they are struck by light. These feathers are said to bring happiness to the bearers. This Pokémon is said to live at the foot of a rainbow.'),
  -- celebi in omega-ruby
  (251, 25100, 23, 'This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits us.'),
  -- treecko in omega-ruby
  (252, 25200, 23, 'Treecko has small hooks on the bottom of its feet that enable it to scale vertical walls. This Pokémon attacks by slamming foes with its thick tail.'),
  -- grovyle in omega-ruby
  (253, 25300, 23, 'The leaves growing out of Grovyle’s body are convenient for camouflaging it from enemies in the forest. This Pokémon is a master at climbing trees in jungles.'),
  -- sceptile in omega-ruby
  (254, 25400, 23, 'The leaves growing on Sceptile’s body are very sharp edged. This Pokémon is very agile—it leaps all over the branches of trees and jumps on its foe from above or behind.'),
  -- torchic in omega-ruby
  (255, 25500, 23, 'Torchic sticks with its Trainer, following behind with unsteady steps. This Pokémon breathes fire of over 1,800 degrees Fahrenheit, including fireballs that leave the foe scorched black.'),
  -- combusken in omega-ruby
  (256, 25600, 23, 'Combusken toughens up its legs and thighs by running through fields and mountains. This Pokémon’s legs possess both speed and power, enabling it to dole out 10 kicks in one second.'),
  -- blaziken in omega-ruby
  (257, 25700, 23, 'In battle, Blaziken blows out intense flames from its wrists and attacks foes courageously. The stronger the foe, the more intensely this Pokémon’s wrists burn.'),
  -- mudkip in omega-ruby
  (258, 25800, 23, 'The fin on Mudkip’s head acts as highly sensitive radar. Using this fin to sense movements of water and air, this Pokémon can determine what is taking place around it without using its eyes.'),
  -- marshtomp in omega-ruby
  (259, 25900, 23, 'The surface of Marshtomp’s body is enveloped by a thin, sticky film that enables it to live on land. This Pokémon plays in mud on beaches when the ocean tide is low.'),
  -- swampert in omega-ruby
  (260, 26000, 23, 'Swampert is very strong. It has enough power to easily drag a boulder weighing more than a ton. This Pokémon also has powerful vision that lets it see even in murky water.'),
  -- poochyena in omega-ruby
  (261, 26100, 23, 'At first sight, Poochyena takes a bite at anything that moves. This Pokémon chases after prey until the victim becomes exhausted. However, it may turn tail if the prey strikes back.'),
  -- mightyena in omega-ruby
  (262, 26200, 23, 'Mightyena gives obvious signals when it is preparing to attack. It starts to growl deeply and then flattens its body. This Pokémon will bite savagely with its sharply pointed fangs.'),
  -- zigzagoon in omega-ruby
  (263, 26300, 23, 'Zigzagoon restlessly wanders everywhere at all times. This Pokémon does so because it is very curious. It becomes interested in anything that it happens to see.'),
  -- linoone in omega-ruby
  (264, 26400, 23, 'Linoone always runs full speed and only in straight lines. If facing an obstacle, it makes a right-angle turn to evade it. This Pokémon is very challenged by gently curving roads.'),
  -- wurmple in omega-ruby
  (265, 26500, 23, 'Using the spikes on its rear end, Wurmple peels the bark off trees and feeds on the sap that oozes out. This Pokémon’s feet are tipped with suction pads that allow it to cling to glass without slipping.'),
  -- silcoon in omega-ruby
  (266, 26600, 23, 'Silcoon tethers itself to a tree branch using silk to keep from falling. There, this Pokémon hangs quietly while it awaits evolution. It peers out of the silk cocoon through a small hole.'),
  -- beautifly in omega-ruby
  (267, 26700, 23, 'Beautifly’s favorite food is the sweet pollen of flowers. If you want to see this Pokémon, just leave a potted flower by an open window. Beautifly is sure to come looking for pollen.'),
  -- cascoon in omega-ruby
  (268, 26800, 23, 'Cascoon makes its protective cocoon by wrapping its body entirely with a fine silk from its mouth. Once the silk goes around its body, it hardens. This Pokémon prepares for its evolution inside the cocoon.'),
  -- dustox in omega-ruby
  (269, 26900, 23, 'Dustox is instinctively drawn to light. Swarms of this Pokémon are attracted by the bright lights of cities, where they wreak havoc by stripping the leaves off roadside trees for food.'),
  -- lotad in omega-ruby
  (270, 27000, 23, 'Lotad live in ponds and lakes, where they float on the surface. It grows weak if its broad leaf dies. On rare occasions, this Pokémon travels on land in search of clean water.'),
  -- lombre in omega-ruby
  (271, 27100, 23, 'Lombre is nocturnal—it will get active after dusk. It is also a mischief maker. When this Pokémon spots anglers, it tugs on their fishing lines from beneath the surface and enjoys their consternation.'),
  -- ludicolo in omega-ruby
  (272, 27200, 23, 'Ludicolo begins dancing as soon as it hears cheerful, festive music. This Pokémon is said to appear when it hears the singing of children on hiking outings.'),
  -- seedot in omega-ruby
  (273, 27300, 23, 'Seedot attaches itself to a tree branch using the top of its head. It sucks moisture from the tree while hanging off the branch. The more water it drinks, the glossier this Pokémon’s body becomes.'),
  -- nuzleaf in omega-ruby
  (274, 27400, 23, 'Nuzleaf live in densely overgrown forests. They occasionally venture out of the forest to startle people. This Pokémon dislikes having its long nose pinched.'),
  -- shiftry in omega-ruby
  (275, 27500, 23, 'Shiftry is a mysterious Pokémon that is said to live atop towering trees dating back over a thousand years. It creates terrific windstorms with the fans it holds.'),
  -- taillow in omega-ruby
  (276, 27600, 23, 'Taillow courageously stands its ground against foes, however strong they may be. This gutsy Pokémon will remain defiant even after a loss. On the other hand, it cries loudly if it becomes hungry.'),
  -- swellow in omega-ruby
  (277, 27700, 23, 'Swellow flies high above our heads, making graceful arcs in the sky. This Pokémon dives at a steep angle as soon as it spots its prey. The hapless prey is tightly grasped by Swellow’s clawed feet, preventing escape.'),
  -- wingull in omega-ruby
  (278, 27800, 23, 'Wingull has the habit of carrying prey and valuables in its beak and hiding them in all sorts of locations. This Pokémon rides the winds and flies as if it were skating across the sky.'),
  -- pelipper in omega-ruby
  (279, 27900, 23, 'Pelipper is a flying transporter that carries small Pokémon and eggs inside its massive bill. This Pokémon builds its nest on steep cliffs facing the sea.'),
  -- ralts in omega-ruby
  (280, 28000, 23, 'Ralts senses the emotions of people using the horns on its head. This Pokémon rarely appears before people. But when it does, it draws closer if it senses that the person has a positive disposition.'),
  -- kirlia in omega-ruby
  (281, 28100, 23, 'It is said that a Kirlia that is exposed to the positive emotions of its Trainer grows beautiful. This Pokémon controls psychokinetic powers with its highly developed brain.'),
  -- gardevoir in omega-ruby
  (282, 28200, 23, 'Gardevoir has the ability to read the future. If it senses impending danger to its Trainer, this Pokémon is said to unleash its psychokinetic energy at full power.'),
  -- surskit in omega-ruby
  (283, 28300, 23, 'From the tips of its feet, Surskit secretes an oil that enables it to walk on water as if it were skating. This Pokémon feeds on microscopic organisms in ponds and lakes.'),
  -- masquerain in omega-ruby
  (284, 28400, 23, 'Masquerain intimidates enemies with the eyelike patterns on its antennas. This Pokémon flaps its four wings to freely fly in any direction—even sideways and backwards—as if it were a helicopter.'),
  -- shroomish in omega-ruby
  (285, 28500, 23, 'Shroomish live in damp soil in the dark depths of forests. They are often found keeping still under fallen leaves. This Pokémon feeds on compost that is made up of fallen, rotted leaves.'),
  -- breloom in omega-ruby
  (286, 28600, 23, 'Breloom closes in on its foe with light and sprightly footwork, then throws punches with its stretchy arms. This Pokémon’s fighting technique puts boxers to shame.'),
  -- slakoth in omega-ruby
  (287, 28700, 23, 'Slakoth lolls around for over 20 hours every day. Because it moves so little, it does not need much food. This Pokémon’s sole daily meal consists of just three leaves.'),
  -- vigoroth in omega-ruby
  (288, 28800, 23, 'Vigoroth is always itching and agitated to go on a wild rampage. It simply can’t tolerate sitting still for even a minute. This Pokémon’s stress level rises if it can’t be moving constantly.'),
  -- slaking in omega-ruby
  (289, 28900, 23, 'Slaking spends all day lying down and lolling about. It eats grass growing within its reach. If it eats all the grass it can reach, this Pokémon reluctantly moves to another spot.'),
  -- nincada in omega-ruby
  (290, 29000, 23, 'Nincada lives underground for many years in complete darkness. This Pokémon absorbs nutrients from the roots of trees. It stays motionless as it waits for evolution.'),
  -- ninjask in omega-ruby
  (291, 29100, 23, 'Ninjask moves around at such a high speed that it cannot be seen, even while its crying can be clearly heard. For that reason, this Pokémon was long believed to be invisible.'),
  -- shedinja in omega-ruby
  (292, 29200, 23, 'Shedinja’s hard body doesn’t move—not even a twitch. In fact, its body appears to be merely a hollow shell. It is believed that this Pokémon will steal the spirit of anyone peering into its hollow body from its back.'),
  -- whismur in omega-ruby
  (293, 29300, 23, 'Normally, Whismur’s voice is very quiet—it is barely audible even if one is paying close attention. However, if this Pokémon senses danger, it starts crying at an earsplitting volume.'),
  -- loudred in omega-ruby
  (294, 29400, 23, 'Loudred’s bellowing can completely decimate a wood-frame house. It uses its voice to punish its foes. This Pokémon’s round ears serve as loudspeakers.'),
  -- exploud in omega-ruby
  (295, 29500, 23, 'Exploud triggers earthquakes with the tremors it creates by bellowing. If this Pokémon violently inhales from the ports on its body, it’s a sign that it is preparing to let loose a huge bellow.'),
  -- makuhita in omega-ruby
  (296, 29600, 23, 'Makuhita is tenacious—it will keep getting up and attacking its foe however many times it is knocked down. Every time it gets back up, this Pokémon stores more energy in its body for evolving.'),
  -- hariyama in omega-ruby
  (297, 29700, 23, 'Hariyama practices its straight-arm slaps in any number of locations. One hit of this Pokémon’s powerful, openhanded, straight-arm punches could snap a telephone pole in two.'),
  -- azurill in omega-ruby
  (298, 29800, 23, 'Azurill spins its tail as if it were a lasso, then hurls it far. The momentum of the throw sends its body flying, too. Using this unique action, one of these Pokémon managed to hurl itself a record 33 feet.'),
  -- nosepass in omega-ruby
  (299, 29900, 23, 'Nosepass’s magnetic nose is always pointed to the north. If two of these Pokémon meet, they cannot turn their faces to each other when they are close because their magnetic noses repel one another.'),
  -- skitty in omega-ruby
  (300, 30000, 23, 'Skitty has the habit of becoming fascinated by moving objects and chasing them around. This Pokémon is known to chase after its own tail and become dizzy.'),
  -- delcatty in omega-ruby
  (301, 30100, 23, 'Delcatty prefers to live an unfettered existence in which it can do as it pleases at its own pace. Because this Pokémon eats and sleeps whenever it decides, its daily routines are completely random.'),
  -- sableye in omega-ruby
  (302, 30200, 23, 'Sableye lead quiet lives deep inside caverns. They are feared, however, because these Pokémon are thought to steal the spirits of people when their eyes burn with a sinister glow in the darkness.'),
  -- mawile in omega-ruby
  (303, 30300, 23, 'Mawile’s huge jaws are actually steel horns that have been transformed. Its docile-looking face serves to lull its foe into letting down its guard. When the foe least expects it, Mawile chomps it with its gaping jaws.'),
  -- aron in omega-ruby
  (304, 30400, 23, 'This Pokémon has a body of steel. To make its body, Aron feeds on iron ore that it digs from mountains. Occasionally, it causes major trouble by eating bridges and rails.'),
  -- lairon in omega-ruby
  (305, 30500, 23, 'Lairon tempers its steel body by drinking highly nutritious mineral springwater until it is bloated. This Pokémon makes its nest close to springs of delicious water.'),
  -- aggron in omega-ruby
  (306, 30600, 23, 'Aggron claims an entire mountain as its own territory. It mercilessly beats up anything that violates its environment. This Pokémon vigilantly patrols its territory at all times.'),
  -- meditite in omega-ruby
  (307, 30700, 23, 'Meditite undertakes rigorous mental training deep in the mountains. However, whenever it meditates, this Pokémon always loses its concentration and focus. As a result, its training never ends.'),
  -- medicham in omega-ruby
  (308, 30800, 23, 'It is said that through meditation, Medicham heightens energy inside its body and sharpens its sixth sense. This Pokémon hides its presence by merging itself with fields and mountains.'),
  -- electrike in omega-ruby
  (309, 30900, 23, 'Electrike stores electricity in its long body hair. This Pokémon stimulates its leg muscles with electric charges. These jolts of power give its legs explosive acceleration performance.'),
  -- manectric in omega-ruby
  (310, 31000, 23, 'Manectric is constantly discharging electricity from its mane. The sparks sometimes ignite forest fires. When it enters a battle, this Pokémon creates thunderclouds.'),
  -- plusle in omega-ruby
  (311, 31100, 23, 'Plusle always acts as a cheerleader for its partners. Whenever a teammate puts out a good effort in battle, this Pokémon shorts out its body to create the crackling noises of sparks to show its joy.'),
  -- minun in omega-ruby
  (312, 31200, 23, 'Minun is more concerned about cheering on its partners than its own safety. It shorts out the electricity in its body to create brilliant showers of sparks to cheer on its teammates.'),
  -- volbeat in omega-ruby
  (313, 31300, 23, 'With the arrival of night, Volbeat emits light from its tail. It communicates with others by adjusting the intensity and flashing of its light. This Pokémon is attracted by the sweet aroma of Illumise.'),
  -- illumise in omega-ruby
  (314, 31400, 23, 'Illumise attracts a swarm of Volbeat using a sweet fragrance. Once the Volbeat have gathered, this Pokémon leads the lit-up swarm in drawing geometric designs on the canvas of the night sky.'),
  -- roselia in omega-ruby
  (315, 31500, 23, 'Roselia shoots sharp thorns as projectiles at any opponent that tries to steal the flowers on its arms. The aroma of this Pokémon brings serenity to living things.'),
  -- gulpin in omega-ruby
  (316, 31600, 23, 'Virtually all of Gulpin’s body is its stomach. As a result, it can swallow something its own size. This Pokémon’s stomach contains a special fluid that digests anything.'),
  -- swalot in omega-ruby
  (317, 31700, 23, 'When Swalot spots prey, it spurts out a hideously toxic fluid from its pores and sprays the target. Once the prey has weakened, this Pokémon gulps it down whole with its cavernous mouth.'),
  -- carvanha in omega-ruby
  (318, 31800, 23, 'Carvanha’s strongly developed jaws and its sharply pointed fangs pack the destructive power to rip out boat hulls. Many boats have been attacked and sunk by this Pokémon.'),
  -- sharpedo in omega-ruby
  (319, 31900, 23, 'Nicknamed “the bully of the sea,” Sharpedo is widely feared. Its cruel fangs grow back immediately if they snap off. Just one of these Pokémon can thoroughly tear apart a supertanker.'),
  -- wailmer in omega-ruby
  (320, 32000, 23, 'Wailmer’s nostrils are located above its eyes. This playful Pokémon loves to startle people by forcefully snorting out seawater it stores inside its body out of its nostrils.'),
  -- wailord in omega-ruby
  (321, 32100, 23, 'Wailord is the largest of all identified Pokémon up to now. This giant Pokémon swims languorously in the vast open sea, eating massive amounts of food at once with its enormous mouth.'),
  -- numel in omega-ruby
  (322, 32200, 23, 'Numel is extremely dull witted—it doesn’t notice being hit. However, it can’t stand hunger for even a second. This Pokémon’s body is a seething cauldron of boiling magma.'),
  -- camerupt in omega-ruby
  (323, 32300, 23, 'Camerupt has a volcano inside its body. Magma of 18,000 degrees Fahrenheit courses through its body. Occasionally, the humps on this Pokémon’s back erupt, spewing the superheated magma.'),
  -- torkoal in omega-ruby
  (324, 32400, 23, 'Torkoal digs through mountains in search of coal. If it finds some, it fills hollow spaces on its shell with the coal and burns it. If it is attacked, this Pokémon spouts thick black smoke to beat a retreat.'),
  -- spoink in omega-ruby
  (325, 32500, 23, 'Spoink bounces around on its tail. The shock of its bouncing makes its heart pump. As a result, this Pokémon cannot afford to stop bouncing—if it stops, its heart will stop.'),
  -- grumpig in omega-ruby
  (326, 32600, 23, 'Grumpig uses the black pearls on its body to amplify its psychic power waves for gaining total control over its foe. When this Pokémon uses its special power, its snorting breath grows labored.'),
  -- spinda in omega-ruby
  (327, 32700, 23, 'All the Spinda that exist in the world are said to have utterly unique spot patterns. The shaky, tottering steps of this Pokémon give it the appearance of dancing.'),
  -- trapinch in omega-ruby
  (328, 32800, 23, 'Trapinch’s nest is a sloped, bowl-like pit dug in sand. This Pokémon patiently waits for prey to tumble down the pit. Its giant jaws have enough strength to crush even boulders.'),
  -- vibrava in omega-ruby
  (329, 32900, 23, 'To make prey faint, Vibrava generates ultrasonic waves by vigorously making its two wings vibrate. This Pokémon’s ultrasonic waves are so powerful, they can bring on headaches in people.'),
  -- flygon in omega-ruby
  (330, 33000, 23, 'Flygon is nicknamed “the elemental spirit of the desert.” Because its flapping wings whip up a cloud of sand, this Pokémon is always enveloped in a sandstorm while flying.'),
  -- cacnea in omega-ruby
  (331, 33100, 23, 'Cacnea lives in arid locations such as deserts. It releases a strong aroma from its flower to attract prey. When prey comes near, this Pokémon shoots sharp thorns from its body to bring the victim down.'),
  -- cacturne in omega-ruby
  (332, 33200, 23, 'During the daytime, Cacturne remains unmoving so that it does not lose any moisture to the harsh desert sun. This Pokémon becomes active at night when the temperature drops.'),
  -- swablu in omega-ruby
  (333, 33300, 23, 'Swablu has light and fluffy wings that are like cottony clouds. This Pokémon is not frightened of people. It lands on the heads of people and sits there like a cotton-fluff hat.'),
  -- altaria in omega-ruby
  (334, 33400, 23, 'Altaria dances and wheels through the sky among billowing, cotton-like clouds. By singing melodies in its crystal-clear voice, this Pokémon makes its listeners experience dreamy wonderment.'),
  -- zangoose in omega-ruby
  (335, 33500, 23, 'Memories of battling its archrival Seviper are etched into every cell of Zangoose’s body. This Pokémon adroitly dodges attacks with incredible agility.'),
  -- seviper in omega-ruby
  (336, 33600, 23, 'Seviper shares a generations-long feud with Zangoose. The scars on its body are evidence of vicious battles. This Pokémon attacks using its sword-edged tail.'),
  -- lunatone in omega-ruby
  (337, 33700, 23, 'Lunatone was discovered at a location where a meteoroid fell. As a result, some people theorize that this Pokémon came from space. However, no one has been able to prove this theory so far.'),
  -- solrock in omega-ruby
  (338, 33800, 23, 'Solrock is a new species of Pokémon that is said to have fallen from space. It floats in air and moves silently. In battle, this Pokémon releases intensely bright light.'),
  -- barboach in omega-ruby
  (339, 33900, 23, 'Barboach’s sensitive whiskers serve as a superb radar system. This Pokémon hides in mud, leaving only its two whiskers exposed while it waits for prey to come along.'),
  -- whiscash in omega-ruby
  (340, 34000, 23, 'Whiscash is extremely territorial. Just one of these Pokémon will claim a large pond as its exclusive territory. If a foe approaches it, it thrashes about and triggers a massive earthquake.'),
  -- corphish in omega-ruby
  (341, 34100, 23, 'Corphish were originally foreign Pokémon that were imported as pets. They eventually turned up in the wild. This Pokémon is very hardy and has greatly increased its population.'),
  -- crawdaunt in omega-ruby
  (342, 34200, 23, 'Crawdaunt has an extremely violent nature that compels it to challenge other living things to battle. Other life-forms refuse to live in ponds inhabited by this Pokémon, making them desolate places.'),
  -- baltoy in omega-ruby
  (343, 34300, 23, 'Baltoy moves while spinning around on its one foot. Primitive wall paintings depicting this Pokémon living among people were discovered in some ancient ruins.'),
  -- claydol in omega-ruby
  (344, 34400, 23, 'Claydol are said to be dolls of mud made by primitive humans and brought to life by exposure to a mysterious ray. This Pokémon moves about while levitating.'),
  -- lileep in omega-ruby
  (345, 34500, 23, 'Lileep became extinct approximately a hundred million years ago. This ancient Pokémon attaches itself to a rock on the seafloor and catches approaching prey using tentacles shaped like flower petals.'),
  -- cradily in omega-ruby
  (346, 34600, 23, 'Cradily roams around the ocean floor in search of food. This Pokémon freely extends its tree trunk-like neck and captures unwary prey using its eight tentacles.'),
  -- anorith in omega-ruby
  (347, 34700, 23, 'Anorith was regenerated from a prehistoric fossil. This primitive Pokémon once lived in warm seas. It grips its prey firmly between its two large claws.'),
  -- armaldo in omega-ruby
  (348, 34800, 23, 'Armaldo’s tough armor makes all attacks bounce off. This Pokémon’s two enormous claws can be freely extended or contracted. They have the power to punch right through a steel slab.'),
  -- feebas in omega-ruby
  (349, 34900, 23, 'Feebas’s fins are ragged and tattered from the start of its life. Because of its shoddy appearance, this Pokémon is largely ignored. It is capable of living in both the sea and in rivers.'),
  -- milotic in omega-ruby
  (350, 35000, 23, 'Milotic is said to be the most beautiful of all the Pokémon. It has the power to becalm such emotions as anger and hostility to quell bitter feuding.'),
  -- castform in omega-ruby
  (351, 35100, 23, 'Castform’s appearance changes with the weather. This Pokémon gained the ability to use the vast power of nature to protect its tiny body.'),
  -- kecleon in omega-ruby
  (352, 35200, 23, 'Kecleon is capable of changing its body colors at will to blend in with its surroundings. There is one exception—this Pokémon can’t change the zigzag pattern on its belly.'),
  -- shuppet in omega-ruby
  (353, 35300, 23, 'Shuppet is attracted by feelings of jealousy and vindictiveness. If someone develops strong feelings of vengeance, this Pokémon will appear in a swarm and line up beneath the eaves of that person’s home.'),
  -- banette in omega-ruby
  (354, 35400, 23, 'Banette generates energy for laying strong curses by sticking pins into its own body. This Pokémon was originally a pitiful plush doll that was thrown away.'),
  -- duskull in omega-ruby
  (355, 35500, 23, 'Duskull can pass through any wall no matter how thick it may be. Once this Pokémon chooses a target, it will doggedly pursue the intended victim until the break of dawn.'),
  -- dusclops in omega-ruby
  (356, 35600, 23, 'Dusclops’s body is completely hollow—there is nothing at all inside. It is said that its body is like a black hole. This Pokémon will absorb anything into its body, but nothing will ever come back out.'),
  -- tropius in omega-ruby
  (357, 35700, 23, 'The bunches of fruit around Tropius’s neck are very popular with children. This Pokémon loves fruit, and eats it continuously. Apparently, its love for fruit resulted in its own outgrowth of fruit.'),
  -- chimecho in omega-ruby
  (358, 35800, 23, 'Chimecho makes its cries echo inside its hollow body. When this Pokémon becomes enraged, its cries result in ultrasonic waves that have the power to knock foes flying.'),
  -- absol in omega-ruby
  (359, 35900, 23, 'Every time Absol appears before people, it is followed by a disaster such as an earthquake or a tidal wave. As a result, it came to be known as the disaster Pokémon.'),
  -- wynaut in omega-ruby
  (360, 36000, 23, 'Wynaut can always be seen with a big, happy smile on its face. Look at its tail to determine if it is angry. When angered, this Pokémon will be slapping the ground with its tail.'),
  -- snorunt in omega-ruby
  (361, 36100, 23, 'Snorunt live in regions with heavy snowfall. In seasons without snow, such as spring and summer, this Pokémon steals away to live quietly among stalactites and stalagmites deep in caverns.'),
  -- glalie in omega-ruby
  (362, 36200, 23, 'Glalie has a body made of rock, which it hardens with an armor of ice. This Pokémon has the ability to freeze moisture in the atmosphere into any shape it desires.'),
  -- spheal in omega-ruby
  (363, 36300, 23, 'Spheal is much faster rolling than walking to get around. When groups of this Pokémon eat, they all clap at once to show their pleasure. Because of this, their mealtimes are noisy.'),
  -- sealeo in omega-ruby
  (364, 36400, 23, 'Sealeo has the habit of always juggling on the tip of its nose anything it sees for the first time. This Pokémon occasionally entertains itself by balancing and rolling a Spheal on its nose.'),
  -- walrein in omega-ruby
  (365, 36500, 23, 'Walrein’s two massively developed tusks can totally shatter blocks of ice weighing 10 tons with one blow. This Pokémon’s thick coat of blubber insulates it from subzero temperatures.'),
  -- clamperl in omega-ruby
  (366, 36600, 23, 'Clamperl’s sturdy shell is not only good for protection—it is also used for clamping and catching prey. A fully grown Clamperl’s shell will be scored with nicks and scratches all over.'),
  -- huntail in omega-ruby
  (367, 36700, 23, 'Huntail’s presence went unnoticed by people for a long time because it lives at extreme depths in the sea. This Pokémon’s eyes can see clearly even in the murky dark depths of the ocean.'),
  -- gorebyss in omega-ruby
  (368, 36800, 23, 'Gorebyss lives in the southern seas at extreme depths. Its body is built to withstand the enormous pressure of water at incredible depths. Because of this, this Pokémon’s body is unharmed by ordinary attacks.'),
  -- relicanth in omega-ruby
  (369, 36900, 23, 'Relicanth is a Pokémon species that existed for a hundred million years without ever changing its form. This ancient Pokémon feeds on microscopic organisms with its toothless mouth.'),
  -- luvdisc in omega-ruby
  (370, 37000, 23, 'Luvdisc live in shallow seas in the tropics. This heart-shaped Pokémon earned its name by swimming after loving couples it spotted in the ocean’s waves.'),
  -- bagon in omega-ruby
  (371, 37100, 23, 'Bagon has a dream of one day soaring in the sky. In doomed efforts to fly, this Pokémon hurls itself off cliffs. As a result of its dives, its head has grown tough and as hard as tempered steel.'),
  -- shelgon in omega-ruby
  (372, 37200, 23, 'Inside Shelgon’s armor-like shell, cells are in the midst of transformation to create an entirely new body. This Pokémon’s shell is extremely heavy, making its movements sluggish.'),
  -- salamence in omega-ruby
  (373, 37300, 23, 'Salamence came about as a result of a strong, long-held dream of growing wings. It is said that this powerful desire triggered a sudden mutation in this Pokémon’s cells, causing it to sprout its magnificent wings.'),
  -- beldum in omega-ruby
  (374, 37400, 23, 'Instead of blood, a powerful magnetic force courses throughout Beldum’s body. This Pokémon communicates with others by sending controlled pulses of magnetism.'),
  -- metang in omega-ruby
  (375, 37500, 23, 'When two Beldum fuse together, Metang is formed. The brains of the Beldum are joined by a magnetic nervous system. By linking its brains magnetically, this Pokémon generates strong psychokinetic power.'),
  -- metagross in omega-ruby
  (376, 37600, 23, 'Metagross has four brains in total. Combined, the four brains can breeze through difficult calculations faster than a supercomputer. This Pokémon can float in the air by tucking in its four legs.'),
  -- regirock in omega-ruby
  (377, 37700, 23, 'Regirock was sealed away by people long ago. If this Pokémon’s body is damaged in battle, it is said to seek out suitable rocks on its own to repair itself.'),
  -- regice in omega-ruby
  (378, 37800, 23, 'Regice’s body was made during an ice age. The deep-frozen body can’t be melted, even by fire. This Pokémon controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in omega-ruby
  (379, 37900, 23, 'Registeel has a body that is harder than any kind of metal. Its body is apparently hollow. No one has any idea what this Pokémon eats.'),
  -- latias in omega-ruby
  (380, 38000, 23, 'Latias is highly sensitive to the emotions of people. If it senses any hostility, this Pokémon ruffles the feathers all over its body and cries shrilly to intimidate the foe.'),
  -- latios in omega-ruby
  (381, 38100, 23, 'Latios has the ability to make others see an image of what it has seen or imagines in its head. This Pokémon is intelligent and understands human speech.'),
  -- kyogre in omega-ruby
  (382, 38200, 23, 'Through Primal Reversion and with nature’s full power, it will take back its true form. It can summon storms that cause the sea levels to rise.'),
  -- groudon in omega-ruby
  (383, 38300, 23, 'Groudon is said to be the personification of the land itself. Legends tell of its many clashes against Kyogre, as each sought to gain the power of nature.'),
  -- rayquaza in omega-ruby
  (384, 38400, 23, 'Rayquaza is said to have lived for hundreds of millions of years. Legends remain of how it put to rest the clash between Kyogre and Groudon.'),
  -- jirachi in omega-ruby
  (385, 38500, 23, 'A legend states that Jirachi will make true any wish that is written on notes attached to its head when it awakens. If this Pokémon senses danger, it will fight without awakening.'),
  -- deoxys in omega-ruby
  (386, 38600, 23, 'The DNA of a space virus underwent a sudden mutation upon exposure to a laser beam and resulted in Deoxys. The crystalline organ on this Pokémon’s chest appears to be its brain.'),
  -- turtwig in omega-ruby
  (387, 38700, 23, 'Photosynthesis occurs across its body under the sun. The shell on its back is actually hardened soil.'),
  -- grotle in omega-ruby
  (388, 38800, 23, 'It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell.'),
  -- torterra in omega-ruby
  (389, 38900, 23, 'Ancient people imagined that beneath the ground, a gigantic Torterra dwelled.'),
  -- chimchar in omega-ruby
  (390, 39000, 23, 'Its fiery rear end is fueled by gas made in its belly. Even rain can’t extinguish the fire.'),
  -- monferno in omega-ruby
  (391, 39100, 23, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in omega-ruby
  (392, 39200, 23, 'Its crown of fire is indicative of its fiery nature. It is beaten by none in terms of quickness.'),
  -- piplup in omega-ruby
  (393, 39300, 23, 'It doesn’t like to be taken care of. It’s difficult to bond with since it won’t listen to its Trainer.'),
  -- prinplup in omega-ruby
  (394, 39400, 23, 'It lives alone, away from others. Apparently, every one of them believes it is the most important.'),
  -- empoleon in omega-ruby
  (395, 39500, 23, 'It swims as fast as a jet boat. The edges of its wings are sharp and can slice apart drifting ice.'),
  -- starly in omega-ruby
  (396, 39600, 23, 'They flock in great numbers. Though small, they flap their wings with great power.'),
  -- staravia in omega-ruby
  (397, 39700, 23, 'They maintain huge flocks, although fierce scuffles break out between various flocks.'),
  -- staraptor in omega-ruby
  (398, 39800, 23, 'The muscles in its wings and legs are strong. It can easily fly while gripping a small Pokémon.'),
  -- bidoof in omega-ruby
  (399, 39900, 23, 'With nerves of steel, nothing can perturb it. It is more agile and active than it appears.'),
  -- bibarel in omega-ruby
  (400, 40000, 23, 'It busily makes its nest with stacks of branches and roots it has cut up with its sharp incisors.'),
  -- kricketot in omega-ruby
  (401, 40100, 23, 'It chats with others using the sounds of its colliding antennae. These sounds are fall hallmarks.'),
  -- kricketune in omega-ruby
  (402, 40200, 23, 'It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib.'),
  -- shinx in omega-ruby
  (403, 40300, 23, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in omega-ruby
  (404, 40400, 23, 'Its claws loose electricity with enough amperage to cause fainting. They live in small groups.'),
  -- luxray in omega-ruby
  (405, 40500, 23, 'When its eyes gleam gold, it can spot hiding prey—even those taking shelter behind a wall.'),
  -- budew in omega-ruby
  (406, 40600, 23, 'When it feels the sun’s warm touch, it opens its bud to release pollen. It lives alongside clear pools.'),
  -- roserade in omega-ruby
  (407, 40700, 23, 'Luring prey with a sweet scent, it uses poison whips on its arms to poison, bind, and finish off the prey.'),
  -- cranidos in omega-ruby
  (408, 40800, 23, 'It was resurrected from an iron ball-like fossil. It downs prey with its headbutts.'),
  -- rampardos in omega-ruby
  (409, 40900, 23, 'Its skull withstands impacts of any magnitude. As a result, its brain never gets the chance to grow.'),
  -- shieldon in omega-ruby
  (410, 41000, 23, 'It habitually polishes its face by rubbing it against tree trunks. It is weak to attacks from behind.'),
  -- bastiodon in omega-ruby
  (411, 41100, 23, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in omega-ruby
  (412, 41200, 23, 'To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves.'),
  -- wormadam in omega-ruby
  (413, 41300, 23, 'Its appearance changes depending on where it evolved. The materials on hand become a part of its body.'),
  -- mothim in omega-ruby
  (414, 41400, 23, 'It loves the honey of flowers and steals honey collected by Combee.'),
  -- combee in omega-ruby
  (415, 41500, 23, 'The trio is together from birth. It constantly gathers honey from flowers to please Vespiquen.'),
  -- vespiquen in omega-ruby
  (416, 41600, 23, 'It houses its colony in cells in its body and releases various pheromones to make those grubs do its bidding.'),
  -- pachirisu in omega-ruby
  (417, 41700, 23, 'It makes fur balls that crackle with static electricity. It stores them with berries in tree holes.'),
  -- buizel in omega-ruby
  (418, 41800, 23, 'It swims by rotating its two tails like a screw. When it dives, its flotation sac collapses.'),
  -- floatzel in omega-ruby
  (419, 41900, 23, 'It floats using its well-developed flotation sac. It assists in the rescues of drowning people.'),
  -- cherubi in omega-ruby
  (420, 42000, 23, 'Sunlight colors it red. When the small ball is drained of nutrients, it shrivels to herald evolution.'),
  -- cherrim in omega-ruby
  (421, 42100, 23, 'During times of strong sunlight, its bud blooms, its petals open fully, and it becomes very active.'),
  -- shellos in omega-ruby
  (422, 42200, 23, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in omega-ruby
  (423, 42300, 23, 'When its natural enemy attacks, it oozes purple fluid and escapes.'),
  -- ambipom in omega-ruby
  (424, 42400, 23, 'They work in large colonies and make rings by linking their tails, apparently in friendship.'),
  -- drifloon in omega-ruby
  (425, 42500, 23, 'A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons.'),
  -- drifblim in omega-ruby
  (426, 42600, 23, 'It carries people and Pokémon when it flies. But since it only drifts, it can end up anywhere.'),
  -- buneary in omega-ruby
  (427, 42700, 23, 'Its ears are always rolled up. They can be forcefully extended to shatter even a large boulder.'),
  -- lopunny in omega-ruby
  (428, 42800, 23, 'Extremely cautious, it quickly bounds off when it senses danger.'),
  -- mismagius in omega-ruby
  (429, 42900, 23, 'It chants incantations. While they usually torment targets, some chants bring happiness.'),
  -- honchkrow in omega-ruby
  (430, 43000, 23, 'If one utters a deep cry, many Murkrow gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in omega-ruby
  (431, 43100, 23, 'It claws if displeased and purrs when affectionate. Its fickleness is very popular among some.'),
  -- purugly in omega-ruby
  (432, 43200, 23, 'It would claim another Pokémon’s nest as its own if it finds a nest sufficiently comfortable.'),
  -- chingling in omega-ruby
  (433, 43300, 23, 'Each time it hops, it makes a ringing sound. It deafens foes by emitting high-frequency cries.'),
  -- stunky in omega-ruby
  (434, 43400, 23, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in omega-ruby
  (435, 43500, 23, 'It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet.'),
  -- bronzor in omega-ruby
  (436, 43600, 23, 'Ancient people believed that the pattern on Bronzor’s back contained a mysterious power.'),
  -- bronzong in omega-ruby
  (437, 43700, 23, 'In ages past, this Pokémon was revered as a bringer of rain. It was found buried in the ground.'),
  -- bonsly in omega-ruby
  (438, 43800, 23, 'It prefers arid environments. It leaks water from its eyes to adjust its body’s fluid levels.'),
  -- mime-jr in omega-ruby
  (439, 43900, 23, 'In an attempt to confuse its enemy, it mimics the enemy’s movements. Then it wastes no time in making itself scarce!'),
  -- happiny in omega-ruby
  (440, 44000, 23, 'It carries a round, egg-shaped rock in its belly pouch and gives the rock to its friends.'),
  -- chatot in omega-ruby
  (441, 44100, 23, 'It mimics the cries of other Pokémon to trick them into thinking it’s one of them. This way they won’t attack it.'),
  -- spiritomb in omega-ruby
  (442, 44200, 23, 'A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone.'),
  -- gible in omega-ruby
  (443, 44300, 23, 'It nests in horizontal holes warmed by geothermal heat. Foes who get too close can expect to be pounced on and bitten.'),
  -- gabite in omega-ruby
  (444, 44400, 23, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in omega-ruby
  (445, 44500, 23, 'When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed.'),
  -- munchlax in omega-ruby
  (446, 44600, 23, 'It hides food under its long body hair. However, it forgets it has hidden the food.'),
  -- riolu in omega-ruby
  (447, 44700, 23, 'It uses the shapes of auras, which change according to emotion, to communicate with others.'),
  -- lucario in omega-ruby
  (448, 44800, 23, 'By catching the aura emanating from others, it can read their thoughts and movements.'),
  -- hippopotas in omega-ruby
  (449, 44900, 23, 'It lives in arid places. Instead of perspiration, it expels grainy sand from its body.'),
  -- hippowdon in omega-ruby
  (450, 45000, 23, 'It brandishes its gaping mouth in a display of fearsome strength. It raises vast quantities of sand while attacking.'),
  -- skorupi in omega-ruby
  (451, 45100, 23, 'It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes.'),
  -- drapion in omega-ruby
  (452, 45200, 23, 'It takes pride in its strength. Even though it can tear foes apart, it finishes them off with powerful poison.'),
  -- croagunk in omega-ruby
  (453, 45300, 23, 'Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers.'),
  -- toxicroak in omega-ruby
  (454, 45400, 23, 'It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.'),
  -- carnivine in omega-ruby
  (455, 45500, 23, 'It attracts prey with its sweet-smelling saliva, then chomps down. It takes a whole day to eat prey.'),
  -- finneon in omega-ruby
  (456, 45600, 23, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in omega-ruby
  (457, 45700, 23, 'It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins.'),
  -- mantyke in omega-ruby
  (458, 45800, 23, 'The pattern on its back varies by region. It often swims in a school of Remoraid.'),
  -- snover in omega-ruby
  (459, 45900, 23, 'During cold seasons, it migrates to the mountain’s lower reaches. It returns to the snow-covered summit in the spring.'),
  -- abomasnow in omega-ruby
  (460, 46000, 23, 'It blankets wide areas in snow by whipping up blizzards. It is also known as “The Ice Monster.”'),
  -- weavile in omega-ruby
  (461, 46100, 23, 'It lives in snowy regions. It carves patterns in trees with its claws as a signal to others.'),
  -- magnezone in omega-ruby
  (462, 46200, 23, 'Sometimes the magnetism emitted by Magnezone is too strong, making them attract each other so they cannot move.'),
  -- lickilicky in omega-ruby
  (463, 46300, 23, 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.'),
  -- rhyperior in omega-ruby
  (464, 46400, 23, 'From holes in its palms, it fires out Geodude. Its carapace can withstand volcanic eruptions.'),
  -- tangrowth in omega-ruby
  (465, 46500, 23, 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.'),
  -- electivire in omega-ruby
  (466, 46600, 23, 'As its electric charge amplifies, blue sparks begin to crackle between its horns.'),
  -- magmortar in omega-ruby
  (467, 46700, 23, 'It blasts fireballs of over 3,600 degrees Fahrenheit from the ends of its arms. It lives in volcanic craters.'),
  -- togekiss in omega-ruby
  (468, 46800, 23, 'As everyone knows, it visits peaceful regions, bringing them gifts of kindness and sweet blessings.'),
  -- yanmega in omega-ruby
  (469, 46900, 23, 'It prefers to battle by biting apart foes’ heads instantly while flying by at high speed.'),
  -- leafeon in omega-ruby
  (470, 47000, 23, 'When you see Leafeon asleep in a patch of sunshine, you’ll know it is using photosynthesis to produce clean air.'),
  -- glaceon in omega-ruby
  (471, 47100, 23, 'By controlling its body heat, it can freeze the atmosphere around it to make a diamond-dust flurry.'),
  -- gliscor in omega-ruby
  (472, 47200, 23, 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!'),
  -- mamoswine in omega-ruby
  (473, 47300, 23, 'A frozen Mamoswine was dug from ice dating back 10,000 years. This Pokémon has been around a long, long, long time.'),
  -- porygon-z in omega-ruby
  (474, 47400, 23, 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.'),
  -- gallade in omega-ruby
  (475, 47500, 23, 'Because it can sense what its foe is thinking, its attacks burst out first, fast, and fierce.'),
  -- probopass in omega-ruby
  (476, 47600, 23, 'It exudes strong magnetism from all over. It controls three small units called Mini-Noses.'),
  -- dusknoir in omega-ruby
  (477, 47700, 23, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in omega-ruby
  (478, 47800, 23, 'It freezes foes with an icy breath nearly -60 degrees Fahrenheit. What seems to be its body is actually hollow.'),
  -- rotom in omega-ruby
  (479, 47900, 23, 'Research continues on this Pokémon, which could be the power source of a unique motor.'),
  -- uxie in omega-ruby
  (480, 48000, 23, 'Known as “The Being of Knowledge.” It is said that it can wipe out the memory of those who see its eyes.'),
  -- mesprit in omega-ruby
  (481, 48100, 23, 'Known as “The Being of Emotion.” It taught humans the nobility of sorrow, pain, and joy.'),
  -- azelf in omega-ruby
  (482, 48200, 23, 'Known as “The Being of Willpower.” It sleeps at the bottom of a lake to keep the world in balance.'),
  -- dialga in omega-ruby
  (483, 48300, 23, 'A Pokémon spoken of in legend. It is said that time began moving when Dialga was born.'),
  -- palkia in omega-ruby
  (484, 48400, 23, 'It is said to live in a gap in the spatial dimension parallel to ours. It appears in mythology.'),
  -- heatran in omega-ruby
  (485, 48500, 23, 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.'),
  -- regigigas in omega-ruby
  (486, 48600, 23, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in omega-ruby
  (487, 48700, 23, 'This Pokémon is said to live in a world on the reverse side of ours, where common knowledge is distorted and strange.'),
  -- cresselia in omega-ruby
  (488, 48800, 23, 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.'),
  -- phione in omega-ruby
  (489, 48900, 23, 'When the water warms, they inflate the flotation sac on their heads and drift languidly on the sea in packs.'),
  -- manaphy in omega-ruby
  (490, 49000, 23, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in omega-ruby
  (491, 49100, 23, 'It chases people and Pokémon from its territory by causing them to experience deep, nightmarish slumbers.'),
  -- shaymin in omega-ruby
  (492, 49200, 23, 'It can dissolve toxins in the air to instantly transform ruined land into a lush field of flowers.'),
  -- arceus in omega-ruby
  (493, 49300, 23, 'According to the legends of Sinnoh, this Pokémon emerged from an egg and shaped all there is in this world.'),
  -- victini in omega-ruby
  (494, 49400, 23, 'This Pokémon brings victory. It is said that Trainers with Victini always win, regardless of the type of encounter.'),
  -- snivy in omega-ruby
  (495, 49500, 23, 'Being exposed to sunlight makes its movements swifter. It uses vines more adeptly than its hands.'),
  -- servine in omega-ruby
  (496, 49600, 23, 'It moves along the ground as if sliding. Its swift movements befuddle its foes, and it then attacks with a vine whip.'),
  -- serperior in omega-ruby
  (497, 49700, 23, 'It only gives its all against strong opponents who are not fazed by the glare from Serperior’s noble eyes.'),
  -- tepig in omega-ruby
  (498, 49800, 23, 'It can deftly dodge its foe’s attacks while shooting fireballs from its nose. It roasts berries before it eats them.'),
  -- pignite in omega-ruby
  (499, 49900, 23, 'The more it eats, the more fuel it has to make the fire in its stomach stronger. This fills it with even more power.'),
  -- emboar in omega-ruby
  (500, 50000, 23, 'It can throw a fire punch by setting its fists on fire with its fiery chin. It cares deeply about its friends.'),
  -- oshawott in omega-ruby
  (501, 50100, 23, 'The scalchop on its stomach isn’t just used for battle—it can be used to break open hard berries as well.'),
  -- dewott in omega-ruby
  (502, 50200, 23, 'Strict training is how it learns its flowing double-scalchop technique.'),
  -- samurott in omega-ruby
  (503, 50300, 23, 'In the time it takes a foe to blink, it can draw and sheathe the seamitars attached to its front legs.'),
  -- patrat in omega-ruby
  (504, 50400, 23, 'Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.'),
  -- watchog in omega-ruby
  (505, 50500, 23, 'Using luminescent matter, it makes its eyes and body glow and stuns attacking opponents.'),
  -- lillipup in omega-ruby
  (506, 50600, 23, 'The long hair around its face provides an amazing radar that lets it sense subtle changes in its surroundings.'),
  -- herdier in omega-ruby
  (507, 50700, 23, 'This very loyal Pokémon helps Trainers, and it also takes care of other Pokémon.'),
  -- stoutland in omega-ruby
  (508, 50800, 23, 'It rescues people stranded by blizzards in the mountains. Its shaggy fur shields it from the cold.'),
  -- purrloin in omega-ruby
  (509, 50900, 23, 'Its cute act is a ruse. When victims let down their guard, they find their items taken. It attacks with sharp claws.'),
  -- liepard in omega-ruby
  (510, 51000, 23, 'Their beautiful form comes from the muscles they have developed. They run silently in the night.'),
  -- pansage in omega-ruby
  (511, 51100, 23, 'It shares the leaf on its head with weary-looking Pokémon. These leaves are known to relieve stress.'),
  -- simisage in omega-ruby
  (512, 51200, 23, 'It attacks enemies with strikes of its thorn-covered tail. This Pokémon is wild tempered.'),
  -- pansear in omega-ruby
  (513, 51300, 23, 'Very intelligent, it roasts berries before eating them. It likes to help people.'),
  -- simisear in omega-ruby
  (514, 51400, 23, 'A flame burns inside its body. It scatters embers from its head and tail to sear its opponents.'),
  -- panpour in omega-ruby
  (515, 51500, 23, 'The water stored inside the tuft on its head is full of nutrients. It waters plants with it using its tail.'),
  -- simipour in omega-ruby
  (516, 51600, 23, 'The high-pressure water expelled from its tail is so powerful, it can destroy a concrete wall.'),
  -- munna in omega-ruby
  (517, 51700, 23, 'This Pokémon appears before people and Pokémon who are having nightmares and eats those dreams.'),
  -- musharna in omega-ruby
  (518, 51800, 23, 'The mist emanating from their foreheads is packed with the dreams of people and Pokémon.'),
  -- pidove in omega-ruby
  (519, 51900, 23, 'This very forgetful Pokémon will wait for a new order from its Trainer even though it already has one.'),
  -- tranquill in omega-ruby
  (520, 52000, 23, 'Many people believe that, deep in the forest where Tranquill live, there is a peaceful place where there is no war.'),
  -- unfezant in omega-ruby
  (521, 52100, 23, 'Males swing their head plumage to threaten opponents. The females’ flying abilities surpass those of the males.'),
  -- blitzle in omega-ruby
  (522, 52200, 23, 'When thunderclouds cover the sky, it will appear. It can catch lightning with its mane and store the electricity.'),
  -- zebstrika in omega-ruby
  (523, 52300, 23, 'When this ill-tempered Pokémon runs wild, it shoots lightning from its mane in all directions.'),
  -- roggenrola in omega-ruby
  (524, 52400, 23, 'Its ear is hexagonal in shape. Compressed underground, its body is as hard as steel.'),
  -- boldore in omega-ruby
  (525, 52500, 23, 'Because its energy was too great to be contained, the energy leaked and formed orange crystals.'),
  -- gigalith in omega-ruby
  (526, 52600, 23, 'The solar rays it absorbs are processed in its energy core and fired as a ball of light.'),
  -- woobat in omega-ruby
  (527, 52700, 23, 'Its habitat is dark forests and caves. It emits ultrasonic waves from its nose to learn about its surroundings.'),
  -- swoobat in omega-ruby
  (528, 52800, 23, 'It shakes its tail vigorously when it emits ultrasonic waves strong enough to reduce concrete to rubble.'),
  -- drilbur in omega-ruby
  (529, 52900, 23, 'It makes its way swiftly through the soil by putting both claws together and rotating at high speed.'),
  -- excadrill in omega-ruby
  (530, 53000, 23, 'It can help in tunnel construction. Its drill has evolved into steel strong enough to bore through iron plates.'),
  -- audino in omega-ruby
  (531, 53100, 23, 'Using the feelers on its ears, it can tell how someone is feeling or when an egg might hatch.'),
  -- timburr in omega-ruby
  (532, 53200, 23, 'These Pokémon appear at building sites and help out with construction. They always carry squared logs.'),
  -- gurdurr in omega-ruby
  (533, 53300, 23, 'With strengthened bodies, they skillfully wield steel beams to take down buildings.'),
  -- conkeldurr in omega-ruby
  (534, 53400, 23, 'It is thought that Conkeldurr taught humans how to make concrete more than 2,000 years ago.'),
  -- tympole in omega-ruby
  (535, 53500, 23, 'By vibrating its cheeks, it emits sound waves imperceptible to humans and warns others of danger.'),
  -- palpitoad in omega-ruby
  (536, 53600, 23, 'When they vibrate the bumps on their heads, they can make waves in water or earthquake-like vibrations on land.'),
  -- seismitoad in omega-ruby
  (537, 53700, 23, 'It increases the power of its punches by vibrating the bumps on its fists. It can turn a boulder to rubble with one punch.'),
  -- throh in omega-ruby
  (538, 53800, 23, 'When it tightens its belt, it becomes stronger. Wild Throh use vines to weave their own belts.'),
  -- sawk in omega-ruby
  (539, 53900, 23, 'Desiring the strongest karate chop, they seclude themselves in mountains and train without sleeping.'),
  -- sewaddle in omega-ruby
  (540, 54000, 23, 'This Pokémon makes clothes for itself. It chews up leaves and sews them with sticky thread extruded from its mouth.'),
  -- swadloon in omega-ruby
  (541, 54100, 23, 'Forests where Swadloon live have superb foliage because the nutrients they make from fallen leaves nourish the plant life.'),
  -- leavanny in omega-ruby
  (542, 54200, 23, 'Upon finding a small Pokémon, it weaves clothing for it from leaves by using the sticky silk secreted from its mouth.'),
  -- venipede in omega-ruby
  (543, 54300, 23, 'It discovers what is going on around it by using the feelers on its head and tail. It is brutally aggressive.'),
  -- whirlipede in omega-ruby
  (544, 54400, 23, 'Protected by a hard shell, it spins its body like a wheel and crashes furiously into its enemies.'),
  -- scolipede in omega-ruby
  (545, 54500, 23, 'It clasps its prey with the claws on its neck until it stops moving. Then it finishes it off with deadly poison.'),
  -- cottonee in omega-ruby
  (546, 54600, 23, 'When attacked, it escapes by shooting cotton from its body. The cotton serves as a decoy to distract the attacker.'),
  -- whimsicott in omega-ruby
  (547, 54700, 23, 'They appear along with whirlwinds. They pull pranks, such as moving furniture and leaving balls of cotton in homes.'),
  -- petilil in omega-ruby
  (548, 54800, 23, 'The leaves on its head are very bitter. Eating one of these leaves is known to refresh a tired body.'),
  -- lilligant in omega-ruby
  (549, 54900, 23, 'The fragrance of the garland on its head has a relaxing effect. It withers if a Trainer does not take good care of it.'),
  -- basculin in omega-ruby
  (550, 55000, 23, 'Red- and blue-striped Basculin are very violent and always fighting. They are also remarkably tasty.'),
  -- sandile in omega-ruby
  (551, 55100, 23, 'It moves along below the sand’s surface, except for its nose and eyes. A dark membrane shields its eyes from the sun.'),
  -- krokorok in omega-ruby
  (552, 55200, 23, 'They live in groups of a few individuals. Protective membranes shield their eyes from sandstorms.'),
  -- krookodile in omega-ruby
  (553, 55300, 23, 'Very violent Pokémon, they try to clamp down on anything that moves in front of their eyes.'),
  -- darumaka in omega-ruby
  (554, 55400, 23, 'Darumaka’s droppings are hot, so people used to put them in their clothes to keep themselves warm.'),
  -- darmanitan in omega-ruby
  (555, 55500, 23, 'When one is injured in a fierce battle, it hardens into a stone-like form. Then it meditates and sharpens its mind.'),
  -- maractus in omega-ruby
  (556, 55600, 23, 'It uses an up-tempo song and dance to drive away the bird Pokémon that prey on its flower seeds.'),
  -- dwebble in omega-ruby
  (557, 55700, 23, 'It makes a hole in a suitable rock. If that rock breaks, the Pokémon remains agitated until it locates a replacement.'),
  -- crustle in omega-ruby
  (558, 55800, 23, 'It possesses legs of enormous strength, enabling it to carry heavy slabs for many days, even when crossing arid land.'),
  -- scraggy in omega-ruby
  (559, 55900, 23, 'Its skin has a rubbery elasticity, so it can reduce damage by defensively pulling its skin up to its neck.'),
  -- scrafty in omega-ruby
  (560, 56000, 23, 'It pulls up its shed skin to protect itself while it kicks. The bigger the crest, the more respected it is.'),
  -- sigilyph in omega-ruby
  (561, 56100, 23, 'The guardians of an ancient city, they use their psychic power to attack enemies that invade their territory.'),
  -- yamask in omega-ruby
  (562, 56200, 23, 'These Pokémon arose from the spirits of people interred in graves. Each retains memories of its former life.'),
  -- cofagrigus in omega-ruby
  (563, 56300, 23, 'It has been said that they swallow those who get too close and turn them into mummies. They like to eat gold nuggets.'),
  -- tirtouga in omega-ruby
  (564, 56400, 23, 'About 100 million years ago, these Pokémon swam in oceans. It is thought they also went on land to attack prey.'),
  -- carracosta in omega-ruby
  (565, 56500, 23, 'They can live both in the ocean and on land. A slap from one of them is enough to open a hole in the bottom of a tanker.'),
  -- archen in omega-ruby
  (566, 56600, 23, 'Revived from a fossil, this Pokémon is thought to be the ancestor of all bird Pokémon.'),
  -- archeops in omega-ruby
  (567, 56700, 23, 'They are intelligent and will cooperate to catch prey. From the ground, they use a running start to take flight.'),
  -- trubbish in omega-ruby
  (568, 56800, 23, 'The combination of garbage bags and industrial waste caused the chemical reaction that created this Pokémon.'),
  -- garbodor in omega-ruby
  (569, 56900, 23, 'It clenches opponents with its left arm and finishes them off with foul-smelling poison gas belched from its mouth.'),
  -- zorua in omega-ruby
  (570, 57000, 23, 'It changes so it looks just like its foe, tricks it, and then uses that opportunity to flee.'),
  -- zoroark in omega-ruby
  (571, 57100, 23, 'Each has the ability to fool a large group of people simultaneously. They protect their lair with illusory scenery.'),
  -- minccino in omega-ruby
  (572, 57200, 23, 'Minccino greet each other by grooming one another thoroughly with their tails.'),
  -- cinccino in omega-ruby
  (573, 57300, 23, 'Their white fur feels amazing to touch. Their fur repels dust and prevents static electricity from building up.'),
  -- gothita in omega-ruby
  (574, 57400, 23, 'Their ribbonlike feelers increase their psychic power. They are always staring at something.'),
  -- gothorita in omega-ruby
  (575, 57500, 23, 'Starlight is the source of their power. At night, they mark star positions by using psychic power to float stones.'),
  -- gothitelle in omega-ruby
  (576, 57600, 23, 'Starry skies thousands of light-years away are visible in the space distorted by their intense psychic power.'),
  -- solosis in omega-ruby
  (577, 57700, 23, 'Because their bodies are enveloped in a special liquid, they are fine in any environment, no matter how severe.'),
  -- duosion in omega-ruby
  (578, 57800, 23, 'Since they have two divided brains, at times they suddenly try to take two different actions at once.'),
  -- reuniclus in omega-ruby
  (579, 57900, 23, 'They use psychic power to control their arms, which are made of a special liquid. They can crush boulders psychically.'),
  -- ducklett in omega-ruby
  (580, 58000, 23, 'When attacked, it uses its feathers to splash water, escaping under cover of the spray.'),
  -- swanna in omega-ruby
  (581, 58100, 23, 'Despite their elegant appearance, they can flap their wings strongly and fly for thousands of miles.'),
  -- vanillite in omega-ruby
  (582, 58200, 23, 'The temperature of their breath is -58 degrees Fahrenheit. They create snow crystals and make snow fall in the areas around them.'),
  -- vanillish in omega-ruby
  (583, 58300, 23, 'They cool down the surrounding air and create ice particles, which they use to freeze their foes.'),
  -- vanilluxe in omega-ruby
  (584, 58400, 23, 'If both heads get angry simultaneously, this Pokémon expels a blizzard, burying everything in snow.'),
  -- deerling in omega-ruby
  (585, 58500, 23, 'Their coloring changes according to the seasons and can be slightly affected by the temperature and humidity as well.'),
  -- sawsbuck in omega-ruby
  (586, 58600, 23, 'They migrate according to the seasons. People can tell the season by looking at Sawsbuck’s horns.'),
  -- emolga in omega-ruby
  (587, 58700, 23, 'They live on treetops and glide using the inside of a cape-like membrane while discharging electricity.'),
  -- karrablast in omega-ruby
  (588, 58800, 23, 'These mysterious Pokémon evolve when they receive electrical stimulation while they are in the same place as Shelmet.'),
  -- escavalier in omega-ruby
  (589, 58900, 23, 'Wearing the shell covering they stole from Shelmet, they defend themselves and attack with two lances.'),
  -- foongus in omega-ruby
  (590, 59000, 23, 'It lures people in with its Poké Ball pattern, then releases poison spores. Why it resembles a Poké Ball is unknown.'),
  -- amoonguss in omega-ruby
  (591, 59100, 23, 'They show off their Poké Ball caps to lure prey, but very few Pokémon are fooled by this.'),
  -- frillish in omega-ruby
  (592, 59200, 23, 'They paralyze prey with poison, then drag them down to their lairs, five miles below the surface.'),
  -- jellicent in omega-ruby
  (593, 59300, 23, 'Its body is mostly seawater. It’s said there’s a castle of ships Jellicent have sunk on the seafloor.'),
  -- alomomola in omega-ruby
  (594, 59400, 23, 'Floating in the open sea is how they live. When they find a wounded Pokémon, they embrace it and bring it to shore.'),
  -- joltik in omega-ruby
  (595, 59500, 23, 'Since it can’t generate its own electricity, it sticks onto large-bodied Pokémon and absorbs static electricity.'),
  -- galvantula in omega-ruby
  (596, 59600, 23, 'They employ an electrically charged web to trap their prey. While it is immobilized by shock, they leisurely consume it.'),
  -- ferroseed in omega-ruby
  (597, 59700, 23, 'When threatened, it attacks by shooting a barrage of spikes, which gives it a chance to escape by rolling away.'),
  -- ferrothorn in omega-ruby
  (598, 59800, 23, 'By swinging around its three spiky feelers and shooting spikes, it can obliterate an opponent.'),
  -- klink in omega-ruby
  (599, 59900, 23, 'Interlocking two bodies and spinning around generates the energy they need to live.'),
  -- klang in omega-ruby
  (600, 60000, 23, 'By changing the direction in which it rotates, it communicates its feelings to others. When angry, it rotates faster.'),
  -- klinklang in omega-ruby
  (601, 60100, 23, 'The gear with the red core is rotated at high speed for a rapid energy charge.'),
  -- tynamo in omega-ruby
  (602, 60200, 23, 'While one alone doesn’t have much power, a chain of many Tynamo can be as powerful as lightning.'),
  -- eelektrik in omega-ruby
  (603, 60300, 23, 'It wraps itself around its prey and paralyzes it with electricity from the round spots on its sides. Then it chomps.'),
  -- eelektross in omega-ruby
  (604, 60400, 23, 'With their sucker mouths, they suck in prey. Then they use their fangs to shock the prey with electricity.'),
  -- elgyem in omega-ruby
  (605, 60500, 23, 'It uses its strong psychic power to squeeze its opponent’s brain, causing unendurable headaches.'),
  -- beheeyem in omega-ruby
  (606, 60600, 23, 'Apparently, it communicates by flashing its three fingers, but those patterns haven’t been decoded.'),
  -- litwick in omega-ruby
  (607, 60700, 23, 'While shining a light and pretending to be a guide, it leeches off the life force of any who follow it.'),
  -- lampent in omega-ruby
  (608, 60800, 23, 'The spirits it absorbs fuel its baleful fire. It hangs around hospitals waiting for people to pass on.'),
  -- chandelure in omega-ruby
  (609, 60900, 23, 'Being consumed in Chandelure’s flame burns up the spirit, leaving the body behind.'),
  -- axew in omega-ruby
  (610, 61000, 23, 'They use their tusks to crush the berries they eat. Repeated regrowth makes their tusks strong and sharp.'),
  -- fraxure in omega-ruby
  (611, 61100, 23, 'Their tusks can shatter rocks. Territory battles between Fraxure can be intensely violent.'),
  -- haxorus in omega-ruby
  (612, 61200, 23, 'They are kind but can be relentless when defending territory. They challenge foes with tusks that can cut steel.'),
  -- cubchoo in omega-ruby
  (613, 61300, 23, 'Its nose is always running. It sniffs the snot back up because the mucus provides the raw material for its moves.'),
  -- beartic in omega-ruby
  (614, 61400, 23, 'They love the cold seas of the north. They create pathways across the ocean waters by freezing their own breath.'),
  -- cryogonal in omega-ruby
  (615, 61500, 23, 'They are born in snow clouds. They use chains made of ice crystals to capture prey.'),
  -- shelmet in omega-ruby
  (616, 61600, 23, 'When it and Karrablast are together, and both receive electrical stimulation, they both evolve.'),
  -- accelgor in omega-ruby
  (617, 61700, 23, 'Having removed its heavy shell, it becomes very light and can fight with ninja-like movements.'),
  -- stunfisk in omega-ruby
  (618, 61800, 23, 'Its skin is very hard, so it is unhurt even if stepped on by sumo wrestlers. It smiles when transmitting electricity.'),
  -- mienfoo in omega-ruby
  (619, 61900, 23, 'It takes pride in the speed at which it can use moves. What it loses in power, it makes up for in quantity.'),
  -- mienshao in omega-ruby
  (620, 62000, 23, 'It wields the fur on its arms like a whip. Its arm attacks come with such rapidity that they cannot even be seen.'),
  -- druddigon in omega-ruby
  (621, 62100, 23, 'It races through narrow caves, using its sharp claws to catch prey. The skin on its face is harder than a rock.'),
  -- golett in omega-ruby
  (622, 62200, 23, 'The energy that burns inside it enables it to move, but no one has yet been able to identify this energy.'),
  -- golurk in omega-ruby
  (623, 62300, 23, 'It is said that Golurk were ordered to protect people and Pokémon by the ancient people who made them.'),
  -- pawniard in omega-ruby
  (624, 62400, 23, 'Blades comprise this Pokémon’s entire body. If battling dulls the blades, it sharpens them on stones by the river.'),
  -- bisharp in omega-ruby
  (625, 62500, 23, 'This pitiless Pokémon commands a group of Pawniard to hound prey into immobility. It then moves in to finish the prey off.'),
  -- bouffalant in omega-ruby
  (626, 62600, 23, 'They charge wildly and headbutt everything. Their headbutts have enough destructive force to derail a train.'),
  -- rufflet in omega-ruby
  (627, 62700, 23, 'They crush berries with their talons. They bravely stand up to any opponent, no matter how strong it is.'),
  -- braviary in omega-ruby
  (628, 62800, 23, 'For the sake of its friends, this brave warrior of the sky will not stop battling, even if injured.'),
  -- vullaby in omega-ruby
  (629, 62900, 23, 'Its wings are too tiny to allow it to fly. As the time approaches for it to evolve, it discards the bones it was wearing.'),
  -- mandibuzz in omega-ruby
  (630, 63000, 23, 'They fly in circles around the sky. When they spot prey, they attack and carry it back to their nest with ease.'),
  -- heatmor in omega-ruby
  (631, 63100, 23, 'Using their very hot, flame-covered tongues, they burn through Durant’s steel bodies and consume their insides.'),
  -- durant in omega-ruby
  (632, 63200, 23, 'Individuals each play different roles in driving Heatmor, their natural predator, away from their colony.'),
  -- deino in omega-ruby
  (633, 63300, 23, 'They cannot see, so they tackle and bite to learn about their surroundings. Their bodies are covered in wounds.'),
  -- zweilous in omega-ruby
  (634, 63400, 23, 'The two heads do not get along. Whichever head eats more than the other gets to be the leader.'),
  -- hydreigon in omega-ruby
  (635, 63500, 23, 'The heads on their arms do not have brains. They use all three heads to consume and destroy everything.'),
  -- larvesta in omega-ruby
  (636, 63600, 23, 'Said to have been born from the sun, it spews fire from its horns and encases itself in a cocoon of fire when it evolves.'),
  -- volcarona in omega-ruby
  (637, 63700, 23, 'A sea of fire engulfs the surroundings of their battles, since they use their six wings to scatter their ember scales.'),
  -- cobalion in omega-ruby
  (638, 63800, 23, 'It has a body and heart of steel. Its glare is sufficient to make even an unruly Pokémon obey it.'),
  -- terrakion in omega-ruby
  (639, 63900, 23, 'Its charge is strong enough to break through a giant castle wall in one blow. This Pokémon is spoken of in legends.'),
  -- virizion in omega-ruby
  (640, 64000, 23, 'Its head sprouts horns as sharp as blades. Using whirlwind-like movements, it confounds and swiftly cuts opponents.'),
  -- tornadus in omega-ruby
  (641, 64100, 23, 'The lower half of its body is wrapped in a cloud of energy. It zooms through the sky at 200 mph.'),
  -- thundurus in omega-ruby
  (642, 64200, 23, 'The spikes on its tail discharge immense bolts of lightning. It flies around the Unova region firing off lightning bolts.'),
  -- reshiram in omega-ruby
  (643, 64300, 23, 'This legendary Pokémon can scorch the world with fire. It helps those who want to build a world of truth.'),
  -- zekrom in omega-ruby
  (644, 64400, 23, 'This legendary Pokémon can scorch the world with lightning. It assists those who want to build an ideal world.'),
  -- landorus in omega-ruby
  (645, 64500, 23, 'Lands visited by Landorus grant such bountiful crops that it has been hailed as “The Guardian of the Fields.”'),
  -- kyurem in omega-ruby
  (646, 64600, 23, 'This legendary ice Pokémon waits for a hero to fill in the missing parts of its body with truth or ideals.'),
  -- keldeo in omega-ruby
  (647, 64700, 23, 'It crosses the world, running over the surfaces of oceans and rivers. It appears at scenic waterfronts.'),
  -- meloetta in omega-ruby
  (648, 64800, 23, 'The melodies sung by Meloetta have the power to make Pokémon that hear them happy or sad.'),
  -- genesect in omega-ruby
  (649, 64900, 23, 'This ancient bug Pokémon was altered by Team Plasma. They upgraded the cannon on its back.'),
  -- chespin in omega-ruby
  (650, 65000, 23, 'The quills on its head are usually soft. When it flexes them, the points become so hard and sharp that they can pierce rock.'),
  -- quilladin in omega-ruby
  (651, 65100, 23, 'It relies on its sturdy shell to deflect predators’ attacks. It counterattacks with its sharp quills.'),
  -- chesnaught in omega-ruby
  (652, 65200, 23, 'Its Tackle is forceful enough to flip a 50-ton tank. It shields its allies from danger with its own body.'),
  -- fennekin in omega-ruby
  (653, 65300, 23, 'Eating a twig fills it with energy, and its roomy ears give vent to air hotter than 390 degrees Fahrenheit.'),
  -- braixen in omega-ruby
  (654, 65400, 23, 'It has a twig stuck in its tail. With friction from its tail fur, it sets the twig on fire and launches into battle.'),
  -- delphox in omega-ruby
  (655, 65500, 23, 'It gazes into the flame at the tip of its branch to achieve a focused state, which allows it to see into the future.'),
  -- froakie in omega-ruby
  (656, 65600, 23, 'It secretes flexible bubbles from its chest and back. The bubbles reduce the damage it would otherwise take when attacked.'),
  -- frogadier in omega-ruby
  (657, 65700, 23, 'It can throw bubble-covered pebbles with precise control, hitting empty cans up to a hundred feet away.'),
  -- greninja in omega-ruby
  (658, 65800, 23, 'It creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two.'),
  -- bunnelby in omega-ruby
  (659, 65900, 23, 'They use their large ears to dig burrows. They will dig the whole night through.'),
  -- diggersby in omega-ruby
  (660, 66000, 23, 'With their powerful ears, they can heft boulders of a ton or more with ease. They can be a big help at construction sites.'),
  -- fletchling in omega-ruby
  (661, 66100, 23, 'These friendly Pokémon send signals to one another with beautiful chirps and tail-feather movements.'),
  -- fletchinder in omega-ruby
  (662, 66200, 23, 'From its beak, it expels embers that set the tall grass on fire. Then it pounces on the bewildered prey that pop out of the grass.'),
  -- talonflame in omega-ruby
  (663, 66300, 23, 'In the fever of an exciting battle, it showers embers from the gaps between its feathers and takes to the air.'),
  -- scatterbug in omega-ruby
  (664, 66400, 23, 'When under attack from bird Pokémon, it spews a poisonous black powder that causes paralysis on contact.'),
  -- spewpa in omega-ruby
  (665, 66500, 23, 'It lives hidden within thicket shadows. When predators attack, it quickly bristles the fur covering its body in an effort to threaten them.'),
  -- vivillon in omega-ruby
  (666, 66600, 23, 'Vivillon with many different patterns are found all over the world. These patterns are affected by the climate of their habitat.'),
  -- litleo in omega-ruby
  (667, 66700, 23, 'The stronger the opponent it faces, the more heat surges from its mane and the more power flows through its body.'),
  -- pyroar in omega-ruby
  (668, 66800, 23, 'The male with the largest mane of fire is the leader of the pride.'),
  -- flabebe in omega-ruby
  (669, 66900, 23, 'It draws out and controls the hidden power of flowers. The flower Flabébé holds is most likely part of its body.'),
  -- floette in omega-ruby
  (670, 67000, 23, 'It flutters around fields of flowers and cares for flowers that are starting to wilt. It draws out the hidden power of flowers to battle.'),
  -- florges in omega-ruby
  (671, 67100, 23, 'It claims exquisite flower gardens as its territory, and it obtains power from basking in the energy emitted by flowering plants.'),
  -- skiddo in omega-ruby
  (672, 67200, 23, 'Thought to be one of the first Pokémon to live in harmony with humans, it has a placid disposition.'),
  -- gogoat in omega-ruby
  (673, 67300, 23, 'It can tell how its Trainer is feeling by subtle shifts in the grip on its horns. This empathic sense lets them run as if one being.'),
  -- pancham in omega-ruby
  (674, 67400, 23, 'It does its best to be taken seriously by its enemies, but its glare is not sufficiently intimidating. Chewing on a leaf is its trademark.'),
  -- pangoro in omega-ruby
  (675, 67500, 23, 'Although it possesses a violent temperament, it won’t put up with bullying. It uses the leaf in its mouth to sense the movements of its enemies.'),
  -- furfrou in omega-ruby
  (676, 67600, 23, 'Trimming its fluffy fur not only makes it more elegant but also increases the swiftness of its movements.'),
  -- espurr in omega-ruby
  (677, 67700, 23, 'The organ that emits its intense psychic power is sheltered by its ears to keep power from leaking out.'),
  -- meowstic in omega-ruby
  (678, 67800, 23, 'When in danger, it raises its ears and releases enough psychic power to grind a 10-ton truck into dust.'),
  -- honedge in omega-ruby
  (679, 67900, 23, 'Apparently this Pokémon is born when a departed spirit inhabits a sword. It attaches itself to people and drinks their life force.'),
  -- doublade in omega-ruby
  (680, 68000, 23, 'When Honedge evolves, it divides into two swords, which cooperate via telepathy to coordinate attacks and slash their enemies to ribbons.'),
  -- aegislash in omega-ruby
  (681, 68100, 23, 'Generations of kings were attended by these Pokémon, which used their spectral power to manipulate and control people and Pokémon.'),
  -- spritzee in omega-ruby
  (682, 68200, 23, 'It emits a scent that enraptures those who smell it. This fragrance changes depending on what it has eaten.'),
  -- aromatisse in omega-ruby
  (683, 68300, 23, 'It devises various scents, pleasant and unpleasant, and emits scents that its enemies dislike in order to gain an edge in battle.'),
  -- swirlix in omega-ruby
  (684, 68400, 23, 'To entangle its opponents in battle, it extrudes white threads as sweet and sticky as cotton candy.'),
  -- slurpuff in omega-ruby
  (685, 68500, 23, 'It can distinguish the faintest of scents. It puts its sensitive sense of smell to use by helping pastry chefs in their work.'),
  -- inkay in omega-ruby
  (686, 68600, 23, 'Opponents who stare at the flashing of the light-emitting spots on its body become dazed and lose their will to fight.'),
  -- malamar in omega-ruby
  (687, 68700, 23, 'It wields the most compelling hypnotic powers of any Pokémon, and it forces others to do whatever it wants.'),
  -- binacle in omega-ruby
  (688, 68800, 23, 'Two Binacle live together on one rock. When they fight, one of them will move to a different rock.'),
  -- barbaracle in omega-ruby
  (689, 68900, 23, 'When they evolve, two Binacle multiply into seven. They fight with the power of seven Binacle.'),
  -- skrelp in omega-ruby
  (690, 69000, 23, 'Camouflaged as rotten kelp, they spray liquid poison on prey that approaches unawares and then finish it off.'),
  -- dragalge in omega-ruby
  (691, 69100, 23, 'Their poison is strong enough to eat through the hull of a tanker, and they spit it indiscriminately at anything that enters their territory.'),
  -- clauncher in omega-ruby
  (692, 69200, 23, 'They knock down flying prey by firing compressed water from their massive claws like shooting a pistol.'),
  -- clawitzer in omega-ruby
  (693, 69300, 23, 'Their enormous claws launch cannonballs of water powerful enough to pierce tanker hulls.'),
  -- helioptile in omega-ruby
  (694, 69400, 23, 'They make their home in deserts. They can generate their energy from basking in the sun, so eating food is not a requirement.'),
  -- heliolisk in omega-ruby
  (695, 69500, 23, 'They flare their frills and generate energy. A single Heliolisk can generate sufficient electricity to power a skyscraper.'),
  -- tyrunt in omega-ruby
  (696, 69600, 23, 'This Pokémon was restored from a fossil. If something happens that it doesn’t like, it throws a tantrum and runs wild.'),
  -- tyrantrum in omega-ruby
  (697, 69700, 23, 'Thanks to its gargantuan jaws, which could shred thick metal plates as if they were paper, it was invincible in the ancient world it once inhabited.'),
  -- amaura in omega-ruby
  (698, 69800, 23, 'This ancient Pokémon was restored from part of its body that had been frozen in ice for over 100 million years.'),
  -- aurorus in omega-ruby
  (699, 69900, 23, 'The diamond-shaped crystals on its body expel air as cold as -240 degrees Fahrenheit, surrounding its enemies and encasing them in ice.'),
  -- sylveon in omega-ruby
  (700, 70000, 23, 'It sends a soothing aura from its ribbonlike feelers to calm fights.'),
  -- hawlucha in omega-ruby
  (701, 70100, 23, 'Although its body is small, its proficient fighting skills enable it to keep up with big bruisers like Machamp and Hariyama.'),
  -- dedenne in omega-ruby
  (702, 70200, 23, 'Its whiskers serve as antennas. By sending and receiving electrical waves, it can communicate with others over vast distances.'),
  -- carbink in omega-ruby
  (703, 70300, 23, 'Born from the temperatures and pressures deep underground, it fires beams from the stone in its head.'),
  -- goomy in omega-ruby
  (704, 70400, 23, 'The weakest Dragon-type Pokémon, it lives in damp, shady places, so its body doesn’t dry out.'),
  -- sliggoo in omega-ruby
  (705, 70500, 23, 'It drives away opponents by excreting a sticky liquid that can dissolve anything. Its eyes devolved, so it can’t see anything.'),
  -- goodra in omega-ruby
  (706, 70600, 23, 'This very friendly Dragon-type Pokémon will hug its beloved Trainer, leaving that Trainer covered in sticky slime.'),
  -- klefki in omega-ruby
  (707, 70700, 23, 'These key collectors threaten any attackers by fiercely jingling their keys at them.'),
  -- phantump in omega-ruby
  (708, 70800, 23, 'These Pokémon are created when spirits possess rotten tree stumps. They prefer to live in abandoned forests.'),
  -- trevenant in omega-ruby
  (709, 70900, 23, 'It can control trees at will. It will trap people who harm the forest, so they can never leave.'),
  -- pumpkaboo in omega-ruby
  (710, 71000, 23, 'The pumpkin body is inhabited by a spirit trapped in this world. As the sun sets, it becomes restless and active.'),
  -- gourgeist in omega-ruby
  (711, 71100, 23, 'Singing in eerie voices, they wander town streets on the night of the new moon. Anyone who hears their song is cursed.'),
  -- bergmite in omega-ruby
  (712, 71200, 23, 'It blocks opponents’ attacks with the ice that shields its body. It uses cold air to repair any cracks with new ice.'),
  -- avalugg in omega-ruby
  (713, 71300, 23, 'Its ice-covered body is as hard as steel. Its cumbersome frame crushes anything that stands in its way.'),
  -- noibat in omega-ruby
  (714, 71400, 23, 'They live in pitch-black caves. Their enormous ears can emit ultrasonic waves of 200,000 hertz.'),
  -- noivern in omega-ruby
  (715, 71500, 23, 'They fly around on moonless nights and attack careless prey. Nothing can beat them in a battle in the dark.'),
  -- xerneas in omega-ruby
  (716, 71600, 23, 'Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival.'),
  -- yveltal in omega-ruby
  (717, 71700, 23, 'When this legendary Pokémon’s wings and tail feathers spread wide and glow red, it absorbs the life force of living creatures.'),
  -- zygarde in omega-ruby
  (718, 71800, 23, 'When the Kalos region’s ecosystem falls into disarray, it appears and reveals its secret power.'),
  -- diancie in omega-ruby
  (719, 71900, 23, 'A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world.'),
  -- hoopa in omega-ruby
  (720, 72000, 23, 'In its true form, it possess a huge amount of power. Legends of its avarice tell how it once carried off an entire castle to gain the treasure hidden within.'),
  -- volcanion in omega-ruby
  (721, 72100, 23, 'It lets out billows of steam and disappears into the dense fog. It’s said to live in mountains where humans do not tread.'),
  -- bulbasaur in alpha-sapphire
  (1, 100, 24, 'Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.'),
  -- ivysaur in alpha-sapphire
  (2, 200, 24, 'There is a bud on this Pokémon’s back. To support its weight, Ivysaur’s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it’s a sign that the bud will bloom into a large flower soon.'),
  -- venusaur in alpha-sapphire
  (3, 300, 24, 'There is a large flower on Venusaur’s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower’s aroma soothes the emotions of people.'),
  -- charmander in alpha-sapphire
  (4, 400, 24, 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.'),
  -- charmeleon in alpha-sapphire
  (5, 500, 24, 'Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.'),
  -- charizard in alpha-sapphire
  (6, 600, 24, 'Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.'),
  -- squirtle in alpha-sapphire
  (7, 700, 24, 'Squirtle’s shell is not merely used for protection. The shell’s rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.'),
  -- wartortle in alpha-sapphire
  (8, 800, 24, 'Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as Wartortle ages. The scratches on its shell are evidence of this Pokémon’s toughness as a battler.'),
  -- blastoise in alpha-sapphire
  (9, 900, 24, 'Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.'),
  -- caterpie in alpha-sapphire
  (10, 1000, 24, 'Caterpie has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this Pokémon releases a terrifically strong odor.'),
  -- metapod in alpha-sapphire
  (11, 1100, 24, 'The shell covering this Pokémon’s body is as hard as an iron slab. Metapod does not move very much. It stays still because it is preparing its soft innards for evolution inside the hard shell.'),
  -- butterfree in alpha-sapphire
  (12, 1200, 24, 'Butterfree has a superior ability to search for delicious honey from flowers. It can even search out, extract, and carry honey from flowers that are blooming over six miles from its nest.'),
  -- weedle in alpha-sapphire
  (13, 1300, 24, 'Weedle has an extremely acute sense of smell. It is capable of distinguishing its favorite kinds of leaves from those it dislikes just by sniffing with its big red proboscis (nose).'),
  -- kakuna in alpha-sapphire
  (14, 1400, 24, 'Kakuna remains virtually immobile as it clings to a tree. However, on the inside, it is extremely busy as it prepares for its coming evolution. This is evident from how hot the shell becomes to the touch.'),
  -- beedrill in alpha-sapphire
  (15, 1500, 24, 'Beedrill is extremely territorial. No one should ever approach its nest—this is for their own safety. If angered, they will attack in a furious swarm.'),
  -- pidgey in alpha-sapphire
  (16, 1600, 24, 'Pidgey has an extremely sharp sense of direction. It is capable of unerringly returning home to its nest, however far it may be removed from its familiar surroundings.'),
  -- pidgeotto in alpha-sapphire
  (17, 1700, 24, 'Pidgeotto claims a large area as its own territory. This Pokémon flies around, patrolling its living space. If its territory is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.'),
  -- pidgeot in alpha-sapphire
  (18, 1800, 24, 'This Pokémon has a dazzling plumage of beautifully glossy feathers. Many Trainers are captivated by the striking beauty of the feathers on its head, compelling them to choose Pidgeot as their Pokémon.'),
  -- rattata in alpha-sapphire
  (19, 1900, 24, 'Rattata is cautious in the extreme. Even while it is asleep, it constantly listens by moving its ears around. It is not picky about where it lives—it will make its nest anywhere.'),
  -- raticate in alpha-sapphire
  (20, 2000, 24, 'Raticate’s sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses.'),
  -- spearow in alpha-sapphire
  (21, 2100, 24, 'Spearow has a very loud cry that can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger.'),
  -- fearow in alpha-sapphire
  (22, 2200, 24, 'Fearow is recognized by its long neck and elongated beak. They are conveniently shaped for catching prey in soil or water. It deftly moves its long and skinny beak to pluck prey.'),
  -- ekans in alpha-sapphire
  (23, 2300, 24, 'Ekans curls itself up in a spiral while it rests. Assuming this position allows it to quickly respond to a threat from any direction with a glare from its upraised head.'),
  -- arbok in alpha-sapphire
  (24, 2400, 24, 'This Pokémon is terrifically strong in order to constrict things with its body. It can even flatten steel oil drums. Once Arbok wraps its body around its foe, escaping its crunching embrace is impossible.'),
  -- pikachu in alpha-sapphire
  (25, 2500, 24, 'This Pokémon has electricity-storing pouches on its cheeks. These appear to become electrically charged during the night while Pikachu sleeps. It occasionally discharges electricity when it is dozy after waking up.'),
  -- raichu in alpha-sapphire
  (26, 2600, 24, 'This Pokémon exudes a weak electrical charge from all over its body that makes it take on a slight glow in darkness. Raichu plants its tail in the ground to discharge electricity.'),
  -- sandshrew in alpha-sapphire
  (27, 2700, 24, 'Sandshrew has a very dry hide that is extremely tough. The Pokémon can roll into a ball that repels any attack. At night, it burrows into the desert sand to sleep.'),
  -- sandslash in alpha-sapphire
  (28, 2800, 24, 'Sandslash can roll up its body as if it were a ball covered with large spikes. In battle, this Pokémon will try to make the foe flinch by jabbing it with its spines. It then leaps at the stunned foe to tear wildly with its sharp claws.'),
  -- nidoran-f in alpha-sapphire
  (29, 2900, 24, 'Nidoran♀ has barbs that secrete a powerful poison. They are thought to have developed as protection for this small-bodied Pokémon. When enraged, it releases a horrible toxin from its horn.'),
  -- nidorina in alpha-sapphire
  (30, 3000, 24, 'When Nidorina are with their friends or family, they keep their barbs tucked away to prevent hurting each other. This Pokémon appears to become nervous if separated from the others.'),
  -- nidoqueen in alpha-sapphire
  (31, 3100, 24, 'Nidoqueen’s body is encased in extremely hard scales. It is adept at sending foes flying with harsh tackles. This Pokémon is at its strongest when it is defending its young.'),
  -- nidoran-m in alpha-sapphire
  (32, 3200, 24, 'Nidoran♂ has developed muscles for moving its ears. Thanks to them, the ears can be freely moved in any direction. Even the slightest sound does not escape this Pokémon’s notice.'),
  -- nidorino in alpha-sapphire
  (33, 3300, 24, 'Nidorino has a horn that is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.'),
  -- nidoking in alpha-sapphire
  (34, 3400, 24, 'Nidoking’s thick tail packs enormously destructive power. With one swing, it can topple a metal transmission tower. Once this Pokémon goes on a rampage, there is no stopping it.'),
  -- clefairy in alpha-sapphire
  (35, 3500, 24, 'On every night of a full moon, groups of this Pokémon come out to play. When dawn arrives, the tired Clefairy return to their quiet mountain retreats and go to sleep nestled up against each other.'),
  -- clefable in alpha-sapphire
  (36, 3600, 24, 'Clefable moves by skipping lightly as if it were flying using its wings. Its bouncy step lets it even walk on water. It is known to take strolls on lakes on quiet, moonlit nights.'),
  -- vulpix in alpha-sapphire
  (37, 3700, 24, 'Inside Vulpix’s body burns a flame that never goes out. During the daytime, when the temperatures rise, this Pokémon releases flames from its mouth to prevent its body from growing too hot.'),
  -- ninetales in alpha-sapphire
  (38, 3800, 24, 'Legend has it that Ninetales came into being when nine wizards possessing sacred powers merged into one. This Pokémon is highly intelligent—it can understand human speech.'),
  -- jigglypuff in alpha-sapphire
  (39, 3900, 24, 'When this Pokémon sings, it never pauses to breathe. If it is in a battle against an opponent that does not easily fall asleep, Jigglypuff cannot breathe, endangering its life.'),
  -- wigglytuff in alpha-sapphire
  (40, 4000, 24, 'Wigglytuff’s body is very flexible. By inhaling deeply, this Pokémon can inflate itself seemingly without end. Once inflated, Wigglytuff bounces along lightly like a balloon.'),
  -- zubat in alpha-sapphire
  (41, 4100, 24, 'Zubat avoids sunlight because exposure causes it to become unhealthy. During the daytime, it stays in caves or under the eaves of old houses, sleeping while hanging upside down.'),
  -- golbat in alpha-sapphire
  (42, 4200, 24, 'Golbat bites down on prey with its four fangs and drinks the victim’s blood. It becomes active on inky dark moonless nights, flying around to attack people and Pokémon.'),
  -- oddish in alpha-sapphire
  (43, 4300, 24, 'Oddish searches for fertile, nutrient-rich soil, then plants itself. During the daytime, while it is planted, this Pokémon’s feet are thought to change shape and become similar to the roots of trees.'),
  -- gloom in alpha-sapphire
  (44, 4400, 24, 'From its mouth Gloom drips honey that smells absolutely horrible. Apparently, it loves the horrid stench. It sniffs the noxious fumes and then drools even more of its honey.'),
  -- vileplume in alpha-sapphire
  (45, 4500, 24, 'Vileplume has the world’s largest petals. They are used to attract prey that are then doused with toxic spores. Once the prey are immobilized, this Pokémon catches and devours them.'),
  -- paras in alpha-sapphire
  (46, 4600, 24, 'Paras has parasitic mushrooms growing on its back called tochukaso. They grow large by drawing nutrients from this Bug Pokémon host. They are highly valued as a medicine for extending life.'),
  -- parasect in alpha-sapphire
  (47, 4700, 24, 'Parasect is known to infest large trees en masse and drain nutrients from the lower trunk and roots. When an infested tree dies, they move onto another tree all at once.'),
  -- venonat in alpha-sapphire
  (48, 4800, 24, 'Venonat is said to have evolved with a coat of thin, stiff hair that covers its entire body for protection. It possesses large eyes that never fail to spot even minuscule prey.'),
  -- venomoth in alpha-sapphire
  (49, 4900, 24, 'Venomoth is nocturnal—it is a Pokémon that only becomes active at night. Its favorite prey are small insects that gather around streetlights, attracted by the light in the darkness.'),
  -- diglett in alpha-sapphire
  (50, 5000, 24, 'Diglett are raised in most farms. The reason is simple— wherever this Pokémon burrows, the soil is left perfectly tilled for planting crops. This soil is made ideal for growing delicious vegetables.'),
  -- dugtrio in alpha-sapphire
  (51, 5100, 24, 'Dugtrio are actually triplets that emerged from one body. As a result, each triplet thinks exactly like the other two triplets. They work cooperatively to burrow endlessly.'),
  -- meowth in alpha-sapphire
  (52, 5200, 24, 'Meowth withdraws its sharp claws into its paws to slinkily sneak about without making any incriminating footsteps. For some reason, this Pokémon loves shiny coins that glitter with light.'),
  -- persian in alpha-sapphire
  (53, 5300, 24, 'Persian has six bold whiskers that give it a look of toughness. The whiskers sense air movements to determine what is in the Pokémon’s surrounding vicinity. It becomes docile if grabbed by the whiskers.'),
  -- psyduck in alpha-sapphire
  (54, 5400, 24, 'If it uses its mysterious power, Psyduck can’t remember having done so. It apparently can’t form a memory of such an event because it goes into an altered state that is much like deep sleep.'),
  -- golduck in alpha-sapphire
  (55, 5500, 24, 'Golduck is the fastest swimmer among all Pokémon. It swims effortlessly, even in a rough, stormy sea. It sometimes rescues people from wrecked ships floundering in high seas.'),
  -- mankey in alpha-sapphire
  (56, 5600, 24, 'When Mankey starts shaking and its nasal breathing turns rough, it’s a sure sign that it is becoming angry. However, because it goes into a towering rage almost instantly, it is impossible for anyone to flee its wrath.'),
  -- primeape in alpha-sapphire
  (57, 5700, 24, 'When Primeape becomes furious, its blood circulation is boosted. In turn, its muscles are made even stronger. However, it also becomes much less intelligent at the same time.'),
  -- growlithe in alpha-sapphire
  (58, 5800, 24, 'Growlithe has a superb sense of smell. Once it smells anything, this Pokémon won’t forget the scent, no matter what. It uses its advanced olfactory sense to determine the emotions of other living things.'),
  -- arcanine in alpha-sapphire
  (59, 5900, 24, 'Arcanine is known for its high speed. It is said to be capable of running over 6,200 miles in a single day and night. The fire that blazes wildly within this Pokémon’s body is its source of power.'),
  -- poliwag in alpha-sapphire
  (60, 6000, 24, 'Poliwag has a very thin skin. It is possible to see the Pokémon’s spiral innards right through the skin. Despite its thinness, however, the skin is also very flexible. Even sharp fangs bounce right off it.'),
  -- poliwhirl in alpha-sapphire
  (61, 6100, 24, 'The surface of Poliwhirl’s body is always wet and slick with a slimy fluid. Because of this slippery covering, it can easily slip and slide out of the clutches of any enemy in battle.'),
  -- poliwrath in alpha-sapphire
  (62, 6200, 24, 'Poliwrath’s highly developed, brawny muscles never grow fatigued, however much it exercises. It is so tirelessly strong, this Pokémon can swim back and forth across the ocean without effort.'),
  -- abra in alpha-sapphire
  (63, 6300, 24, 'Abra needs to sleep for eighteen hours a day. If it doesn’t, this Pokémon loses its ability to use telekinetic powers. If it is attacked, Abra escapes using Teleport while it is still sleeping.'),
  -- kadabra in alpha-sapphire
  (64, 6400, 24, 'Kadabra holds a silver spoon in its hand. The spoon is used to amplify the alpha waves in its brain. Without the spoon, the Pokémon is said to be limited to half the usual amount of its telekinetic powers.'),
  -- alakazam in alpha-sapphire
  (65, 6500, 24, 'Alakazam’s brain continually grows, infinitely multiplying brain cells. This amazing brain gives this Pokémon an astoundingly high IQ of 5,000. It has a thorough memory of everything that has occurred in the world.'),
  -- machop in alpha-sapphire
  (66, 6600, 24, 'Machop exercises by hefting around a Graveler as if it were a barbell. There are some Machop that travel the world in a quest to master all kinds of martial arts.'),
  -- machoke in alpha-sapphire
  (67, 6700, 24, 'Machoke undertakes bodybuilding every day even as it helps people with tough, physically demanding labor. On its days off, this Pokémon heads to the fields and mountains to exercise and train.'),
  -- machamp in alpha-sapphire
  (68, 6800, 24, 'Machamp is known as the Pokémon that has mastered every kind of martial arts. If it grabs hold of the foe with its four arms, the battle is all but over. The hapless foe is thrown far over the horizon.'),
  -- bellsprout in alpha-sapphire
  (69, 6900, 24, 'Bellsprout’s thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, this Pokémon spits a corrosive fluid that melts even iron.'),
  -- weepinbell in alpha-sapphire
  (70, 7000, 24, 'Weepinbell has a large hook on its rear end. At night, the Pokémon hooks on to a tree branch and goes to sleep. If it moves around in its sleep, it may wake up to find itself on the ground.'),
  -- victreebel in alpha-sapphire
  (71, 7100, 24, 'Victreebel has a long vine that extends from its head. This vine is waved and flicked about as if it were an animal to attract prey. When an unsuspecting prey draws near, this Pokémon swallows it whole.'),
  -- tentacool in alpha-sapphire
  (72, 7200, 24, 'Tentacool absorbs sunlight and refracts it using water inside its body to convert it into beam energy. This Pokémon shoots beams from the small round organ above its eyes.'),
  -- tentacruel in alpha-sapphire
  (73, 7300, 24, 'Tentacruel has tentacles that can be freely elongated and shortened at will. It ensnares prey with its tentacles and weakens the prey by dosing it with a harsh toxin. It can catch up to 80 prey at the same time.'),
  -- geodude in alpha-sapphire
  (74, 7400, 24, 'When Geodude sleeps deeply, it buries itself halfway into the ground. It will not awaken even if hikers step on it unwittingly. In the morning, this Pokémon rolls downhill in search of food.'),
  -- graveler in alpha-sapphire
  (75, 7500, 24, 'Rocks are Graveler’s favorite food. This Pokémon will climb a mountain from the base to the summit, crunchingly feasting on rocks all the while. Upon reaching the peak, it rolls back down to the bottom.'),
  -- golem in alpha-sapphire
  (76, 7600, 24, 'Golem is known for rolling down from mountains. To prevent them from rolling into the homes of people downhill, grooves have been dug into the sides of mountains to serve as guideways for diverting this Pokémon’s course.'),
  -- ponyta in alpha-sapphire
  (77, 7700, 24, 'Ponyta is very weak at birth. It can barely stand up. This Pokémon becomes stronger by stumbling and falling to keep up with its parent.'),
  -- rapidash in alpha-sapphire
  (78, 7800, 24, 'Rapidash usually can be seen casually cantering in the fields and plains. However, when this Pokémon turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.'),
  -- slowpoke in alpha-sapphire
  (79, 7900, 24, 'Slowpoke uses its tail to catch prey by dipping it in water at the side of a river. However, this Pokémon often forgets what it’s doing and often spends entire days just loafing at water’s edge.'),
  -- slowbro in alpha-sapphire
  (80, 8000, 24, 'Slowbro’s tail has a Shellder firmly attached with a bite. As a result, the tail can’t be used for fishing anymore. This causes Slowbro to grudgingly swim and catch prey instead.'),
  -- magnemite in alpha-sapphire
  (81, 8100, 24, 'Magnemite floats in the air by emitting electromagnetic waves from the units at its sides. These waves block gravity. This Pokémon becomes incapable of flight if its internal electrical supply is depleted.'),
  -- magneton in alpha-sapphire
  (82, 8200, 24, 'Magneton emits a powerful magnetic force that is fatal to electronics and precision instruments. Because of this, it is said that some towns warn people to keep this Pokémon inside a Poké Ball.'),
  -- farfetchd in alpha-sapphire
  (83, 8300, 24, 'Farfetch’d is always seen with a stalk from a plant of some sort. Apparently, there are good stalks and bad stalks. This Pokémon has been known to fight with others over stalks.'),
  -- doduo in alpha-sapphire
  (84, 8400, 24, 'Doduo’s two heads contain completely identical brains. A scientific study reported that on rare occasions, there will be examples of this Pokémon possessing different sets of brains.'),
  -- dodrio in alpha-sapphire
  (85, 8500, 24, 'Apparently, the heads aren’t the only parts of the body that Dodrio has three of. It has three sets of hearts and lungs as well, so it is capable of running long distances without rest.'),
  -- seel in alpha-sapphire
  (86, 8600, 24, 'Seel hunts for prey in the frigid sea underneath sheets of ice. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head.'),
  -- dewgong in alpha-sapphire
  (87, 8700, 24, 'Dewgong loves to snooze on bitterly cold ice. The sight of this Pokémon sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.'),
  -- grimer in alpha-sapphire
  (88, 8800, 24, 'Grimer emerged from the sludge that settled on a polluted seabed. This Pokémon loves anything filthy. It constantly leaks a horribly germ-infested fluid from all over its body.'),
  -- muk in alpha-sapphire
  (89, 8900, 24, 'This Pokémon’s favorite food is anything that is repugnantly filthy. In dirty towns where people think nothing of throwing away litter on the streets, Muk are certain to gather.'),
  -- shellder in alpha-sapphire
  (90, 9000, 24, 'At night, this Pokémon uses its broad tongue to burrow a hole in the seafloor sand and then sleep in it. While it is sleeping, Shellder closes its shell, but leaves its tongue hanging out.'),
  -- cloyster in alpha-sapphire
  (91, 9100, 24, 'Cloyster is capable of swimming in the sea. It does so by swallowing water, then jetting it out toward the rear. This Pokémon shoots spikes from its shell using the same system.'),
  -- gastly in alpha-sapphire
  (92, 9200, 24, 'Gastly is largely composed of gaseous matter. When exposed to a strong wind, the gaseous body quickly dwindles away. Groups of this Pokémon cluster under the eaves of houses to escape the ravages of wind.'),
  -- haunter in alpha-sapphire
  (93, 9300, 24, 'Haunter is a dangerous Pokémon. If one beckons you while floating in darkness, you must never approach it. This Pokémon will try to lick you with its tongue and steal your life away.'),
  -- gengar in alpha-sapphire
  (94, 9400, 24, 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow.'),
  -- onix in alpha-sapphire
  (95, 9500, 24, 'Onix has a magnet in its brain. It acts as a compass so that this Pokémon does not lose direction while it is tunneling. As it grows older, its body becomes increasingly rounder and smoother.'),
  -- drowzee in alpha-sapphire
  (96, 9600, 24, 'If your nose becomes itchy while you are sleeping, it’s a sure sign that one of these Pokémon is standing above your pillow and trying to eat your dream through your nostrils.'),
  -- hypno in alpha-sapphire
  (97, 9700, 24, 'Hypno holds a pendulum in its hand. The arcing movement and glitter of the pendulum lull the foe into a deep state of hypnosis. While this Pokémon searches for prey, it polishes the pendulum.'),
  -- krabby in alpha-sapphire
  (98, 9800, 24, 'Krabby live on beaches, burrowed inside holes dug into the sand. On sandy beaches with little in the way of food, these Pokémon can be seen squabbling with each other over territory.'),
  -- kingler in alpha-sapphire
  (99, 9900, 24, 'Kingler has an enormous, oversized claw. It waves this huge claw in the air to communicate with others. However, because the claw is so heavy, the Pokémon quickly tires.'),
  -- voltorb in alpha-sapphire
  (100, 10000, 24, 'Voltorb is extremely sensitive—it explodes at the slightest of shocks. It is rumored that it was first created when a Poké Ball was exposed to a powerful pulse of energy.'),
  -- electrode in alpha-sapphire
  (101, 10100, 24, 'One of Electrode’s characteristics is its attraction to electricity. It is a problematical Pokémon that congregates mostly at electrical power plants to feed on electricity that has just been generated.'),
  -- exeggcute in alpha-sapphire
  (102, 10200, 24, 'This Pokémon consists of six eggs that form a closely knit cluster. The six eggs attract each other and spin around. When cracks increasingly appear on the eggs, Exeggcute is close to evolution.'),
  -- exeggutor in alpha-sapphire
  (103, 10300, 24, 'Exeggutor originally came from the tropics. Its heads steadily grow larger from exposure to strong sunlight. It is said that when the heads fall off, they group together to form Exeggcute.'),
  -- cubone in alpha-sapphire
  (104, 10400, 24, 'Cubone pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull the Pokémon wears are made by the tears it sheds.'),
  -- marowak in alpha-sapphire
  (105, 10500, 24, 'Marowak is the evolved form of a Cubone that has overcome its sadness at the loss of its mother and grown tough. This Pokémon’s tempered and hardened spirit is not easily broken.'),
  -- hitmonlee in alpha-sapphire
  (106, 10600, 24, 'Hitmonlee’s legs freely contract and stretch. Using these springlike legs, it bowls over foes with devastating kicks. After battle, it rubs down its legs and loosens the muscles to overcome fatigue.'),
  -- hitmonchan in alpha-sapphire
  (107, 10700, 24, 'Hitmonchan is said to possess the spirit of a boxer who had been working toward a world championship. This Pokémon has an indomitable spirit and will never give up in the face of adversity.'),
  -- lickitung in alpha-sapphire
  (108, 10800, 24, 'Whenever Lickitung comes across something new, it will unfailingly give it a lick. It does so because it memorizes things by texture and by taste. It is somewhat put off by sour things.'),
  -- koffing in alpha-sapphire
  (109, 10900, 24, 'Koffing embodies toxic substances. It mixes the toxins with raw garbage to set off a chemical reaction that results in a terribly powerful poison gas. The higher the temperature, the more gas is concocted by this Pokémon.'),
  -- weezing in alpha-sapphire
  (110, 11000, 24, 'Weezing alternately shrinks and inflates its twin bodies to mix together toxic gases inside. The more the gases are mixed, the more powerful the toxins become. The Pokémon also becomes more putrid.'),
  -- rhyhorn in alpha-sapphire
  (111, 11100, 24, 'Rhyhorn’s brain is very small. It is so dense, while on a run it forgets why it started running in the first place. It apparently remembers sometimes if it demolishes something.'),
  -- rhydon in alpha-sapphire
  (112, 11200, 24, 'Rhydon has a horn that serves as a drill. It is used for destroying rocks and boulders. This Pokémon occasionally rams into streams of magma, but the armor-like hide prevents it from feeling the heat.'),
  -- chansey in alpha-sapphire
  (113, 11300, 24, 'Chansey lays nutritionally excellent eggs on an everyday basis. The eggs are so delicious, they are easily and eagerly devoured by even those people who have lost their appetite.'),
  -- tangela in alpha-sapphire
  (114, 11400, 24, 'Tangela’s vines snap off easily if they are grabbed. This happens without pain, allowing it to make a quick getaway. The lost vines are replaced by newly grown vines the very next day.'),
  -- kangaskhan in alpha-sapphire
  (115, 11500, 24, 'If you come across a young Kangaskhan playing by itself, you must never disturb it or attempt to catch it. The baby Pokémon’s parent is sure to be in the area, and it will become violently enraged at you.'),
  -- horsea in alpha-sapphire
  (116, 11600, 24, 'If Horsea senses danger, it will reflexively spray a dense black ink from its mouth and try to escape. This Pokémon swims by cleverly flapping the fin on its back.'),
  -- seadra in alpha-sapphire
  (117, 11700, 24, 'Seadra generates whirlpools by spinning its body. The whirlpools are strong enough to swallow even fishing boats. This Pokémon weakens prey with these currents, then swallows it whole.'),
  -- goldeen in alpha-sapphire
  (118, 11800, 24, 'Goldeen loves swimming wild and free in rivers and ponds. If one of these Pokémon is placed in an aquarium, it will shatter even the thickest glass with one ram of its horn and make its escape.'),
  -- seaking in alpha-sapphire
  (119, 11900, 24, 'Seaking is very protective of its eggs. The male and female will take turns patrolling around their nest and eggs. The guarding of eggs by these Pokémon goes on for over a month.'),
  -- staryu in alpha-sapphire
  (120, 12000, 24, 'Staryu apparently communicates with the stars in the night sky by flashing the red core at the center of its body. If parts of its body are torn, this Pokémon simply regenerates the missing pieces and limbs.'),
  -- starmie in alpha-sapphire
  (121, 12100, 24, 'Starmie swims through water by spinning its star-shaped body as if it were a propeller on a ship. The core at the center of this Pokémon’s body glows in seven colors.'),
  -- mr-mime in alpha-sapphire
  (122, 12200, 24, 'Mr. Mime is a master of pantomime. Its gestures and motions convince watchers that something unseeable actually exists. Once the watchers are convinced, the unseeable thing exists as if it were real.'),
  -- scyther in alpha-sapphire
  (123, 12300, 24, 'Scyther is blindingly fast. Its blazing speed enhances the effectiveness of the twin scythes on its forearms. This Pokémon’s scythes are so effective, they can slice through thick logs in one wicked stroke.'),
  -- jynx in alpha-sapphire
  (124, 12400, 24, 'Jynx walks rhythmically, swaying and shaking its hips as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without giving any thought to what they are doing.'),
  -- electabuzz in alpha-sapphire
  (125, 12500, 24, 'When a storm arrives, gangs of this Pokémon compete with each other to scale heights that are likely to be stricken by lightning bolts. Some towns use Electabuzz in place of lightning rods.'),
  -- magmar in alpha-sapphire
  (126, 12600, 24, 'In battle, Magmar blows out intensely hot flames from all over its body to intimidate its opponent. This Pokémon’s fiery bursts create heat waves that ignite grass and trees in its surroundings.'),
  -- pinsir in alpha-sapphire
  (127, 12700, 24, 'Pinsir has a pair of massive horns. Protruding from the surface of these horns are thorns. These thorns are driven deeply into the foe’s body when the pincer closes, making it tough for the foe to escape.'),
  -- tauros in alpha-sapphire
  (128, 12800, 24, 'This Pokémon is not satisfied unless it is rampaging at all times. If there is no opponent for Tauros to battle, it will charge at thick trees and knock them down to calm itself.'),
  -- magikarp in alpha-sapphire
  (129, 12900, 24, 'Magikarp is virtually useless in battle as it can only splash around. As a result, it is considered to be weak. However, it is actually a very hardy Pokémon that can survive in any body of water no matter how polluted it is.'),
  -- gyarados in alpha-sapphire
  (130, 13000, 24, 'Once Gyarados goes on a rampage, its ferociously violent blood doesn’t calm until it has burned everything down. There are records of this Pokémon’s rampages lasting a whole month.'),
  -- lapras in alpha-sapphire
  (131, 13100, 24, 'People have driven Lapras almost to the point of extinction. In the evenings, this Pokémon is said to sing plaintively as it seeks what few others of its kind still remain.'),
  -- ditto in alpha-sapphire
  (132, 13200, 24, 'Ditto rearranges its cell structure to transform itself into other shapes. However, if it tries to transform itself into something by relying on its memory, this Pokémon manages to get details wrong.'),
  -- eevee in alpha-sapphire
  (133, 13300, 24, 'Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pokémon to evolve.'),
  -- vaporeon in alpha-sapphire
  (134, 13400, 24, 'Vaporeon underwent a spontaneous mutation and grew fins and gills that allow it to live underwater. This Pokémon has the ability to freely control water.'),
  -- jolteon in alpha-sapphire
  (135, 13500, 24, 'Jolteon’s cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the Pokémon to drop thunderbolts. The bristling fur is made of electrically charged needles.'),
  -- flareon in alpha-sapphire
  (136, 13600, 24, 'Flareon’s fluffy fur has a functional purpose—it releases heat into the air so that its body does not get excessively hot. This Pokémon’s body temperature can rise to a maximum of 1,650 degrees Fahrenheit.'),
  -- porygon in alpha-sapphire
  (137, 13700, 24, 'Porygon is capable of reverting itself entirely back to program data and entering cyberspace. This Pokémon is copy protected so it cannot be duplicated by copying.'),
  -- omanyte in alpha-sapphire
  (138, 13800, 24, 'Omanyte is one of the ancient and long-since-extinct Pokémon that have been regenerated from fossils by people. If attacked by an enemy, it withdraws itself inside its hard shell.'),
  -- omastar in alpha-sapphire
  (139, 13900, 24, 'Omastar uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large and heavy, causing its movements to become too slow and ponderous.'),
  -- kabuto in alpha-sapphire
  (140, 14000, 24, 'Kabuto is a Pokémon that has been regenerated from a fossil. However, in extremely rare cases, living examples have been discovered. The Pokémon has not changed at all for 300 million years.'),
  -- kabutops in alpha-sapphire
  (141, 14100, 24, 'Kabutops swam underwater to hunt for its prey in ancient times. The Pokémon was apparently evolving from being a water dweller to living on land as evident from the beginnings of change in its gills and legs.'),
  -- aerodactyl in alpha-sapphire
  (142, 14200, 24, 'Aerodactyl is a Pokémon from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.'),
  -- snorlax in alpha-sapphire
  (143, 14300, 24, 'Snorlax’s typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its expansive belly as a place to play.'),
  -- articuno in alpha-sapphire
  (144, 14400, 24, 'Articuno is a legendary bird Pokémon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokémon flies, snow will fall.'),
  -- zapdos in alpha-sapphire
  (145, 14500, 24, 'Zapdos is a legendary bird Pokémon that has the ability to control electricity. It usually lives in thunderclouds. The Pokémon gains power if it is stricken by lightning bolts.'),
  -- moltres in alpha-sapphire
  (146, 14600, 24, 'Moltres is a legendary bird Pokémon that has the ability to control fire. If this Pokémon is injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.'),
  -- dratini in alpha-sapphire
  (147, 14700, 24, 'Dratini continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels.'),
  -- dragonair in alpha-sapphire
  (148, 14800, 24, 'Dragonair stores an enormous amount of energy inside its body. It is said to alter weather conditions in its vicinity by discharging energy from the crystals on its neck and tail.'),
  -- dragonite in alpha-sapphire
  (149, 14900, 24, 'Dragonite is capable of circling the globe in just 16 hours. It is a kindhearted Pokémon that leads lost and foundering ships in a storm to the safety of land.'),
  -- mewtwo in alpha-sapphire
  (150, 15000, 24, 'Mewtwo is a Pokémon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokémon’s body, they failed to endow Mewtwo with a compassionate heart.'),
  -- mew in alpha-sapphire
  (151, 15100, 24, 'Mew is said to possess the genetic composition of all Pokémon. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people.'),
  -- chikorita in alpha-sapphire
  (152, 15200, 24, 'In battle, Chikorita waves its leaf around to keep the foe at bay. However, a sweet fragrance also wafts from the leaf, becalming the battling Pokémon and creating a cozy, friendly atmosphere all around.'),
  -- bayleef in alpha-sapphire
  (153, 15300, 24, 'Bayleef’s neck is ringed by curled-up leaves. Inside each tubular leaf is a small shoot of a tree. The fragrance of this shoot makes people peppy.'),
  -- meganium in alpha-sapphire
  (154, 15400, 24, 'The fragrance of Meganium’s flower soothes and calms emotions. In battle, this Pokémon gives off more of its becalming scent to blunt the foe’s fighting spirit.'),
  -- cyndaquil in alpha-sapphire
  (155, 15500, 24, 'Cyndaquil protects itself by flaring up the flames on its back. The flames are vigorous if the Pokémon is angry. However, if it is tired, the flames splutter fitfully with incomplete combustion.'),
  -- quilava in alpha-sapphire
  (156, 15600, 24, 'Quilava keeps its foes at bay with the intensity of its flames and gusts of superheated air. This Pokémon applies its outstanding nimbleness to dodge attacks even while scorching the foe with flames.'),
  -- typhlosion in alpha-sapphire
  (157, 15700, 24, 'Typhlosion obscures itself behind a shimmering heat haze that it creates using its intensely hot flames. This Pokémon creates blazing explosive blasts that burn everything to cinders.'),
  -- totodile in alpha-sapphire
  (158, 15800, 24, 'Despite the smallness of its body, Totodile’s jaws are very powerful. While the Pokémon may think it is just playfully nipping, its bite has enough power to cause serious injury.'),
  -- croconaw in alpha-sapphire
  (159, 15900, 24, 'Once Croconaw has clamped its jaws on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like barbed fishhooks, they become impossible to remove when they have sunk in.'),
  -- feraligatr in alpha-sapphire
  (160, 16000, 24, 'Feraligatr intimidates its foes by opening its huge mouth. In battle, it will kick the ground hard with its thick and powerful hind legs to charge at the foe at an incredible speed.'),
  -- sentret in alpha-sapphire
  (161, 16100, 24, 'When Sentret sleeps, it does so while another stands guard. The sentry wakes the others at the first sign of danger. When this Pokémon becomes separated from its pack, it becomes incapable of sleep due to fear.'),
  -- furret in alpha-sapphire
  (162, 16200, 24, 'Furret has a very slim build. When under attack, it can slickly squirm through narrow spaces and get away. In spite of its short limbs, this Pokémon is very nimble and fleet.'),
  -- hoothoot in alpha-sapphire
  (163, 16300, 24, 'Hoothoot has an internal organ that senses and tracks the earth’s rotation. Using this special organ, this Pokémon begins hooting at precisely the same time every day.'),
  -- noctowl in alpha-sapphire
  (164, 16400, 24, 'Noctowl never fails at catching prey in darkness. This Pokémon owes its success to its superior vision that allows it to see in minimal light, and to its soft, supple wings that make no sound in flight.'),
  -- ledyba in alpha-sapphire
  (165, 16500, 24, 'Ledyba secretes an aromatic fluid from where its legs join its body. This fluid is used for communicating with others. This Pokémon conveys its feelings to others by altering the fluid’s scent.'),
  -- ledian in alpha-sapphire
  (166, 16600, 24, 'It is said that in lands with clean air, where the stars fill the sky, there live Ledian in countless numbers. There is a good reason for this—the Pokémon uses the light of the stars as its energy.'),
  -- spinarak in alpha-sapphire
  (167, 16700, 24, 'The web spun by Spinarak can be considered its second nervous system. It is said that this Pokémon can determine what kind of prey is touching its web just by the tiny vibrations it feels through the web’s strands.'),
  -- ariados in alpha-sapphire
  (168, 16800, 24, 'Ariados’s feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. This Pokémon constricts the foe with thin and strong silk webbing.'),
  -- crobat in alpha-sapphire
  (169, 16900, 24, 'Crobat sneaks up on its intended prey using wings that barely make a sound. This Pokémon rests by hanging on a tree branch with its rear legs that serve as wings.'),
  -- chinchou in alpha-sapphire
  (170, 17000, 24, 'Chinchou’s two antennas are filled with cells that generate strong electricity. This Pokémon’s cells create so much electrical power, it even makes itself tingle slightly.'),
  -- lanturn in alpha-sapphire
  (171, 17100, 24, 'Lanturn is known to emit light. If you peer down into the dark sea from a ship at night, you can sometimes see this Pokémon’s light rising from the depths where it swims. It gives the sea an appearance of a starlit night.'),
  -- pichu in alpha-sapphire
  (172, 17200, 24, 'When Pichu plays with others, it may short out electricity with another Pichu, creating a shower of sparks. In that event, this Pokémon will begin crying, startled by the flash of sparks.'),
  -- cleffa in alpha-sapphire
  (173, 17300, 24, 'On nights with many shooting stars, Cleffa can be seen dancing in a ring. They dance through the night and stop only at the break of day, when these Pokémon quench their thirst with the morning dew.'),
  -- igglybuff in alpha-sapphire
  (174, 17400, 24, 'Igglybuff has a soft and plushy body that feels very much like a marshmallow. From this body wafts a gently sweet fragrance that soothes and calms the emotions of its foes.'),
  -- togepi in alpha-sapphire
  (175, 17500, 24, 'As its energy, Togepi uses the positive emotions of compassion and pleasure exuded by people and Pokémon. This Pokémon stores up feelings of happiness inside its shell, then shares them with others.'),
  -- togetic in alpha-sapphire
  (176, 17600, 24, 'Togetic is said to be a Pokémon that brings good fortune. When the Pokémon spots someone who is pure of heart, it is said to appear and share its happiness with that person.'),
  -- natu in alpha-sapphire
  (177, 17700, 24, 'Natu has a highly developed jumping ability. The Pokémon flaps and leaps onto tree branches that are taller than grown-up people to pick at the tree’s new shoots.'),
  -- xatu in alpha-sapphire
  (178, 17800, 24, 'Xatu is known to stand motionless while staring at the sun all day long. Some people revere it as a mystical Pokémon out of their belief that Xatu is in possession of the power to see into the future.'),
  -- mareep in alpha-sapphire
  (179, 17900, 24, 'Mareep’s fluffy coat of wool rubs together and builds a static charge. The more static electricity is charged, the more brightly the lightbulb at the tip of its tail glows.'),
  -- flaaffy in alpha-sapphire
  (180, 18000, 24, 'Flaaffy’s wool quality changes so that it can generate a high amount of static electricity with a small amount of wool. The bare and slick parts of its hide are shielded against electricity.'),
  -- ampharos in alpha-sapphire
  (181, 18100, 24, 'Ampharos gives off so much light that it can be seen even from space. People in the old days used the light of this Pokémon to send signals back and forth with others far away.'),
  -- bellossom in alpha-sapphire
  (182, 18200, 24, 'A Bellossom grows flowers more beautifully if it has evolved from a smelly Gloom—the more stinky the better. At night, this Pokémon closes its petals and goes to sleep.'),
  -- marill in alpha-sapphire
  (183, 18300, 24, 'When fishing for food at the edge of a fast-running stream, Marill wraps its tail around the trunk of a tree. This Pokémon’s tail is flexible and configured to stretch.'),
  -- azumarill in alpha-sapphire
  (184, 18400, 24, 'Azumarill can make balloons out of air. It makes these air balloons if it spots a drowning Pokémon. The air balloons enable the Pokémon in trouble to breathe.'),
  -- sudowoodo in alpha-sapphire
  (185, 18500, 24, 'Sudowoodo camouflages itself as a tree to avoid being attacked by enemies. However, because its hands remain green throughout the year, the Pokémon is easily identified as a fake during the winter.'),
  -- politoed in alpha-sapphire
  (186, 18600, 24, 'The curled hair on Politoed’s head is proof of its status as a king. It is said that the longer and more curled the hair, the more respect this Pokémon earns from its peers.'),
  -- hoppip in alpha-sapphire
  (187, 18700, 24, 'This Pokémon drifts and floats with the wind. If it senses the approach of strong winds, Hoppip links its leaves with other Hoppip to prepare against being blown away.'),
  -- skiploom in alpha-sapphire
  (188, 18800, 24, 'Skiploom’s flower blossoms when the temperature rises above 64 degrees Fahrenheit. How much the flower opens depends on the temperature. For that reason, this Pokémon is sometimes used as a thermometer.'),
  -- jumpluff in alpha-sapphire
  (189, 18900, 24, 'Jumpluff rides warm southern winds to cross the sea and fly to foreign lands. The Pokémon descends to the ground when it encounters cold air while it is floating.'),
  -- aipom in alpha-sapphire
  (190, 19000, 24, 'Aipom’s tail ends in a hand-like appendage that can be cleverly manipulated. However, because the Pokémon uses its tail so much, its real hands have become rather clumsy.'),
  -- sunkern in alpha-sapphire
  (191, 19100, 24, 'Sunkern tries to move as little as it possibly can. It does so because it tries to conserve all the nutrients it has stored in its body for its evolution. It will not eat a thing, subsisting only on morning dew.'),
  -- sunflora in alpha-sapphire
  (192, 19200, 24, 'Sunflora converts solar energy into nutrition. It moves around actively in the daytime when it is warm. It stops moving as soon as the sun goes down for the night.'),
  -- yanma in alpha-sapphire
  (193, 19300, 24, 'Yanma is capable of seeing 360 degrees without having to move its eyes. It is a great flier that is adept at making sudden stops and turning midair. This Pokémon uses its flying ability to quickly chase down targeted prey.'),
  -- wooper in alpha-sapphire
  (194, 19400, 24, 'Wooper usually lives in water. However, it occasionally comes out onto land in search of food. On land, it coats its body with a gooey, toxic film.'),
  -- quagsire in alpha-sapphire
  (195, 19500, 24, 'Quagsire hunts for food by leaving its mouth wide open in water and waiting for its prey to blunder in unaware. Because the Pokémon does not move, it does not get very hungry.'),
  -- espeon in alpha-sapphire
  (196, 19600, 24, 'Espeon is extremely loyal to any Trainer it considers to be worthy. It is said that this Pokémon developed its precognitive powers to protect its Trainer from harm.'),
  -- umbreon in alpha-sapphire
  (197, 19700, 24, 'Umbreon evolved as a result of exposure to the moon’s waves. It hides silently in darkness and waits for its foes to make a move. The rings on its body glow when it leaps to attack.'),
  -- murkrow in alpha-sapphire
  (198, 19800, 24, 'Murkrow was feared and loathed as the alleged bearer of ill fortune. This Pokémon shows strong interest in anything that sparkles or glitters. It will even try to steal rings from women.'),
  -- slowking in alpha-sapphire
  (199, 19900, 24, 'Slowking undertakes research every day in an effort to solve the mysteries of the world. However, this Pokémon apparently forgets everything it has learned if the Shellder on its head comes off.'),
  -- misdreavus in alpha-sapphire
  (200, 20000, 24, 'Misdreavus frightens people with a creepy, sobbing cry. The Pokémon apparently uses its red spheres to absorb the fearful feelings of foes and turn them into nutrition.'),
  -- unown in alpha-sapphire
  (201, 20100, 24, 'This Pokémon is shaped like ancient writing. It is a mystery as to which came first, the ancient writings or the various Unown. Research into this topic is ongoing but nothing is known.'),
  -- wobbuffet in alpha-sapphire
  (202, 20200, 24, 'Wobbuffet does nothing but endure attacks—it won’t attack on its own. However, it won’t endure an attack on its tail. When that happens, the Pokémon will try to take the foe with it using Destiny Bond.'),
  -- girafarig in alpha-sapphire
  (203, 20300, 24, 'Girafarig’s rear head contains a tiny brain that is too small for thinking. However, the rear head doesn’t need to sleep, so it can keep watch over its surroundings 24 hours a day.'),
  -- pineco in alpha-sapphire
  (204, 20400, 24, 'Pineco hangs from a tree branch and patiently waits for prey to come along. If the Pokémon is disturbed while eating by someone shaking its tree, it drops down to the ground and explodes with no warning.'),
  -- forretress in alpha-sapphire
  (205, 20500, 24, 'Forretress conceals itself inside its hardened steel shell. The shell is opened when the Pokémon is catching prey, but it does so at such a quick pace that the shell’s inside cannot be seen.'),
  -- dunsparce in alpha-sapphire
  (206, 20600, 24, 'Dunsparce has a drill for its tail. It uses this tail to burrow into the ground backward. This Pokémon is known to make its nest in complex shapes deep under the ground.'),
  -- gligar in alpha-sapphire
  (207, 20700, 24, 'Gligar glides through the air without a sound as if it were sliding. This Pokémon hangs on to the face of its foe using its clawed hind legs and the large pincers on its forelegs, then injects the prey with its poison barb.'),
  -- steelix in alpha-sapphire
  (208, 20800, 24, 'Steelix lives even further underground than Onix. This Pokémon is known to dig toward the earth’s core. There are records of this Pokémon reaching a depth of over six-tenths of a mile underground.'),
  -- snubbull in alpha-sapphire
  (209, 20900, 24, 'By baring its fangs and making a scary face, Snubbull sends smaller Pokémon scurrying away in terror. However, this Pokémon seems a little sad at making its foes flee.'),
  -- granbull in alpha-sapphire
  (210, 21000, 24, 'Granbull has a particularly well-developed lower jaw. The enormous fangs are heavy, causing the Pokémon to tip its head back for balance. Unless it is startled, it will not try to bite indiscriminately.'),
  -- qwilfish in alpha-sapphire
  (211, 21100, 24, 'Qwilfish sucks in water, inflating itself. This Pokémon uses the pressure of the water it swallowed to shoot toxic quills all at once from all over its body. It finds swimming somewhat challenging.'),
  -- scizor in alpha-sapphire
  (212, 21200, 24, 'Scizor has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. This Pokémon flaps its wings to regulate its body temperature.'),
  -- shuckle in alpha-sapphire
  (213, 21300, 24, 'Shuckle quietly hides itself under rocks, keeping its body concealed inside its hard shell while eating berries it has stored away. The berries mix with its body fluids to become a juice.'),
  -- heracross in alpha-sapphire
  (214, 21400, 24, 'Heracross has sharp claws on its feet. These are planted firmly into the ground or the bark of a tree, giving the Pokémon a secure and solid footing to forcefully fling away foes with its proud horn.'),
  -- sneasel in alpha-sapphire
  (215, 21500, 24, 'Sneasel scales trees by punching its hooked claws into the bark. This Pokémon seeks out unguarded nests and steals eggs for food while the parents are away.'),
  -- teddiursa in alpha-sapphire
  (216, 21600, 24, 'This Pokémon likes to lick its palms that are sweetened by being soaked in honey. Teddiursa concocts its own honey by blending fruits and pollen collected by Beedrill.'),
  -- ursaring in alpha-sapphire
  (217, 21700, 24, 'In the forests inhabited by Ursaring, it is said that there are many streams and towering trees where they gather food. This Pokémon walks through its forest gathering food every day.'),
  -- slugma in alpha-sapphire
  (218, 21800, 24, 'Slugma does not have any blood in its body. Instead, intensely hot magma circulates throughout this Pokémon’s body, carrying essential nutrients and oxygen to its organs.'),
  -- magcargo in alpha-sapphire
  (219, 21900, 24, 'Magcargo’s body temperature is approximately 18,000 degrees Fahrenheit. Water is vaporized on contact. If this Pokémon is caught in the rain, the raindrops instantly turn into steam, cloaking the area in a thick fog.'),
  -- swinub in alpha-sapphire
  (220, 22000, 24, 'Swinub roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under the cover of dead grass. This Pokémon occasionally roots out hot springs.'),
  -- piloswine in alpha-sapphire
  (221, 22100, 24, 'Piloswine is covered by a thick coat of long hair that enables it to endure the freezing cold. This Pokémon uses its tusks to dig up food that has been buried under ice.'),
  -- corsola in alpha-sapphire
  (222, 22200, 24, 'Clusters of Corsola congregate in warm seas where they serve as ideal hiding places for smaller Pokémon. When the water temperature falls, this Pokémon migrates to the southern seas.'),
  -- remoraid in alpha-sapphire
  (223, 22300, 24, 'Remoraid sucks in water, then expels it at high velocity using its abdominal muscles to shoot down flying prey. When evolution draws near, this Pokémon travels downstream from rivers.'),
  -- octillery in alpha-sapphire
  (224, 22400, 24, 'Octillery grabs onto its foe using its tentacles. This Pokémon tries to immobilize it before delivering the finishing blow. If the foe turns out to be too strong, Octillery spews ink to escape.'),
  -- delibird in alpha-sapphire
  (225, 22500, 24, 'Delibird carries its food bundled up in its tail. There once was a famous explorer who managed to reach the peak of the world’s highest mountain, thanks to one of these Pokémon sharing its food.'),
  -- mantine in alpha-sapphire
  (226, 22600, 24, 'On sunny days, schools of Mantine can be seen elegantly leaping over the sea’s waves. This Pokémon is not bothered by the Remoraid that hitches rides.'),
  -- skarmory in alpha-sapphire
  (227, 22700, 24, 'Skarmory’s steel wings become tattered and bashed in from repeated battles. Once a year, the battered wings grow back completely, restoring the cutting edges to their pristine state.'),
  -- houndour in alpha-sapphire
  (228, 22800, 24, 'Houndour hunt as a coordinated pack. They communicate with each other using a variety of cries to corner their prey. This Pokémon’s remarkable teamwork is unparalleled.'),
  -- houndoom in alpha-sapphire
  (229, 22900, 24, 'In a Houndoom pack, the one with its horns raked sharply toward the back serves a leadership role. These Pokémon choose their leader by fighting among themselves.'),
  -- kingdra in alpha-sapphire
  (230, 23000, 24, 'Kingdra sleeps on the seafloor where it is otherwise devoid of life. When a storm arrives, the Pokémon is said to awaken and wander about in search of prey.'),
  -- phanpy in alpha-sapphire
  (231, 23100, 24, 'Phanpy uses its long nose to shower itself. When others gather around, they thoroughly douse each other with water. These Pokémon can be seen drying their soaking-wet bodies at the edge of water.'),
  -- donphan in alpha-sapphire
  (232, 23200, 24, 'If Donphan were to tackle with its hard body, even a house could be destroyed. Using its massive strength, the Pokémon helps clear rock and mud slides that block mountain trails.'),
  -- porygon2 in alpha-sapphire
  (233, 23300, 24, 'Porygon2 was created by humans using the power of science. The man-made Pokémon has been endowed with artificial intelligence that enables it to learn new gestures and emotions on its own.'),
  -- stantler in alpha-sapphire
  (234, 23400, 24, 'Stantler’s magnificent antlers were traded at high prices as works of art. As a result, this Pokémon was hunted close to extinction by those who were after the priceless antlers.'),
  -- smeargle in alpha-sapphire
  (235, 23500, 24, 'Smeargle marks the boundaries of its territory using a body fluid that leaks out from the tip of its tail. Over 5,000 different marks left by this Pokémon have been found.'),
  -- tyrogue in alpha-sapphire
  (236, 23600, 24, 'Tyrogue becomes stressed out if it does not get to train every day. When raising this Pokémon, the Trainer must establish and uphold various training methods.'),
  -- hitmontop in alpha-sapphire
  (237, 23700, 24, 'Hitmontop spins on its head at high speed, all the while delivering kicks. This technique is a remarkable mix of both offense and defense at the same time. The Pokémon travels faster spinning than it does walking.'),
  -- smoochum in alpha-sapphire
  (238, 23800, 24, 'Smoochum actively runs about, but also falls quite often. Whenever the chance arrives, it will look for its reflection to make sure its face hasn’t become dirty.'),
  -- elekid in alpha-sapphire
  (239, 23900, 24, 'Elekid stores electricity in its body. If it touches metal and accidentally discharges all its built-up electricity, this Pokémon begins swinging its arms in circles to recharge itself.'),
  -- magby in alpha-sapphire
  (240, 24000, 24, 'Magby’s state of health is determined by observing the fire it breathes. If the Pokémon is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames.'),
  -- miltank in alpha-sapphire
  (241, 24100, 24, 'Miltank gives over five gallons of milk on a daily basis. Its sweet milk is enjoyed by children and grown-ups alike. People who can’t drink milk turn it into yogurt and eat it instead.'),
  -- blissey in alpha-sapphire
  (242, 24200, 24, 'Blissey senses sadness with its fluffy coat of fur. If it does so, this Pokémon will rush over to a sad person, no matter how far away, to share a Lucky Egg that brings a smile to any face.'),
  -- raikou in alpha-sapphire
  (243, 24300, 24, 'Raikou embodies the speed of lightning. The roars of this Pokémon send shock waves shuddering through the air and shake the ground as if lightning bolts had come crashing down.'),
  -- entei in alpha-sapphire
  (244, 24400, 24, 'Entei embodies the passion of magma. This Pokémon is thought to have been born in the eruption of a volcano. It sends up massive bursts of fire that utterly consume all that they touch.'),
  -- suicune in alpha-sapphire
  (245, 24500, 24, 'Suicune embodies the compassion of a pure spring of water. It runs across the land with gracefulness. This Pokémon has the power to purify dirty water.'),
  -- larvitar in alpha-sapphire
  (246, 24600, 24, 'Larvitar is born deep under the ground. To come up to the surface, this Pokémon must eat its way through the soil above. Until it does so, Larvitar cannot see its parents.'),
  -- pupitar in alpha-sapphire
  (247, 24700, 24, 'Pupitar creates a gas inside its body that it compresses and forcefully ejects to propel itself like a jet. The body is very durable—it avoids damage even if it hits solid steel.'),
  -- tyranitar in alpha-sapphire
  (248, 24800, 24, 'Tyranitar is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. This Pokémon wanders about in mountains seeking new opponents to fight.'),
  -- lugia in alpha-sapphire
  (249, 24900, 24, 'Lugia’s wings pack devastating power—a light fluttering of its wings can blow apart regular houses. As a result, this Pokémon chooses to live out of sight deep under the sea.'),
  -- ho-oh in alpha-sapphire
  (250, 25000, 24, 'Ho-Oh’s feathers glow in seven colors depending on the angle at which they are struck by light. These feathers are said to bring happiness to the bearers. This Pokémon is said to live at the foot of a rainbow.'),
  -- celebi in alpha-sapphire
  (251, 25100, 24, 'This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits us.'),
  -- treecko in alpha-sapphire
  (252, 25200, 24, 'Treecko is cool, calm, and collected—it never panics under any situation. If a bigger foe were to glare at this Pokémon, it would glare right back without conceding an inch of ground.'),
  -- grovyle in alpha-sapphire
  (253, 25300, 24, 'This Pokémon adeptly flies from branch to branch in trees. In a forest, no Pokémon can ever hope to catch a fleeing Grovyle however fast they may be.'),
  -- sceptile in alpha-sapphire
  (254, 25400, 24, 'Sceptile has seeds growing on its back. They are said to be bursting with nutrients that revitalize trees. This Pokémon raises the trees in a forest with loving care.'),
  -- torchic in alpha-sapphire
  (255, 25500, 24, 'Torchic has a place inside its body where it keeps its flame. Give it a hug—it will be glowing with warmth. This Pokémon is covered all over by a fluffy coat of down.'),
  -- combusken in alpha-sapphire
  (256, 25600, 24, 'Combusken battles with the intensely hot flames it spews from its beak and with outstandingly destructive kicks. This Pokémon’s cry is very loud and distracting.'),
  -- blaziken in alpha-sapphire
  (257, 25700, 24, 'Blaziken has incredibly strong legs—it can easily clear a 30-story building in one leap. This Pokémon’s blazing punches leave its foes scorched and blackened.'),
  -- mudkip in alpha-sapphire
  (258, 25800, 24, 'In water, Mudkip breathes using the gills on its cheeks. If it is faced with a tight situation in battle, this Pokémon will unleash its amazing power—it can crush rocks bigger than itself.'),
  -- marshtomp in alpha-sapphire
  (259, 25900, 24, 'Marshtomp is much faster at traveling through mud than it is at swimming. This Pokémon’s hindquarters exhibit obvious development, giving it the ability to walk on just its hind legs.'),
  -- swampert in alpha-sapphire
  (260, 26000, 24, 'Swampert predicts storms by sensing subtle differences in the sounds of waves and tidal winds with its fins. If a storm is approaching, it piles up boulders to protect itself.'),
  -- poochyena in alpha-sapphire
  (261, 26100, 24, 'Poochyena is an omnivore—it will eat anything. A distinguishing feature is how large its fangs are compared to its body. This Pokémon tries to intimidate its foes by making the hair on its tail bristle out.'),
  -- mightyena in alpha-sapphire
  (262, 26200, 24, 'Mightyena travel and act as a pack in the wild. The memory of its life in the wild compels the Pokémon to obey only those Trainers that it recognizes to possess superior skill.'),
  -- zigzagoon in alpha-sapphire
  (263, 26300, 24, 'The hair on Zigzagoon’s back is bristly. It rubs the hard back hair against trees to leave its territorial markings. This Pokémon may play dead to fool foes in battle.'),
  -- linoone in alpha-sapphire
  (264, 26400, 24, 'When hunting, Linoone will make a beeline straight for the prey at a full run. While this Pokémon is capable of topping 60 mph, it has to come to a screeching halt before it can turn.'),
  -- wurmple in alpha-sapphire
  (265, 26500, 24, 'Wurmple is targeted by Swellow as prey. This Pokémon will try to resist by pointing the spikes on its rear at the attacking predator. It will weaken the foe by leaking poison from the spikes.'),
  -- silcoon in alpha-sapphire
  (266, 26600, 24, 'Silcoon was thought to endure hunger and not consume anything before its evolution. However, it is now thought that this Pokémon slakes its thirst by drinking rainwater that collects on its silk.'),
  -- beautifly in alpha-sapphire
  (267, 26700, 24, 'Beautifly has a long mouth like a coiled needle, which is very convenient for collecting pollen from flowers. This Pokémon rides the spring winds as it flits around gathering pollen.'),
  -- cascoon in alpha-sapphire
  (268, 26800, 24, 'If it is attacked, Cascoon remains motionless however badly it may be hurt. It does so because if it were to move, its body would be weak upon evolution. This Pokémon will also not forget the pain it endured.'),
  -- dustox in alpha-sapphire
  (269, 26900, 24, 'When Dustox flaps its wings, a fine dust is scattered all over. This dust is actually a powerful poison that will even make a pro wrestler sick. This Pokémon searches for food using its antennae like radar.'),
  -- lotad in alpha-sapphire
  (270, 27000, 24, 'Lotad is said to have dwelled on land before. However, this Pokémon is thought to have returned to water because the leaf on its head grew large and heavy. It now lives by floating atop the water.'),
  -- lombre in alpha-sapphire
  (271, 27100, 24, 'Lombre’s entire body is covered by a slippery, slimy film. It feels horribly unpleasant to be touched by this Pokémon’s hands. Lombre is often mistaken for a human child.'),
  -- ludicolo in alpha-sapphire
  (272, 27200, 24, 'Upon hearing an upbeat and cheerful rhythm, the cells in Ludicolo’s body become very energetic and active. Even in battle, this Pokémon will exhibit an amazing amount of power.'),
  -- seedot in alpha-sapphire
  (273, 27300, 24, 'Seedot looks exactly like an acorn when it is dangling from a tree branch. It startles other Pokémon by suddenly moving. This Pokémon polishes its body once a day using leaves.'),
  -- nuzleaf in alpha-sapphire
  (274, 27400, 24, 'This Pokémon pulls out the leaf on its head and makes a flute with it. The sound of Nuzleaf’s flute strikes fear and uncertainty in the hearts of people lost in a forest.'),
  -- shiftry in alpha-sapphire
  (275, 27500, 24, 'Shiftry’s large fans generate awesome gusts of wind at a speed close to 100 feet per second. The whipped-up wind blows anything away. This Pokémon chooses to live quietly deep in forests.'),
  -- taillow in alpha-sapphire
  (276, 27600, 24, 'Taillow is young—it has only just left its nest. As a result, it sometimes becomes lonesome and cries at night. This Pokémon feeds on Wurmple that live in forests.'),
  -- swellow in alpha-sapphire
  (277, 27700, 24, 'Swellow is very conscientious about the upkeep of its glossy wings. Once two Swellow are gathered, they diligently take care of cleaning each other’s wings.'),
  -- wingull in alpha-sapphire
  (278, 27800, 24, 'Wingull rides updrafts rising from the sea by extending its long and narrow wings to glide. This Pokémon’s long beak is useful for catching prey.'),
  -- pelipper in alpha-sapphire
  (279, 27900, 24, 'Pelipper searches for food while in flight by skimming the wave tops. This Pokémon dips its large bill in the sea to scoop up food, then swallows everything in one big gulp.'),
  -- ralts in alpha-sapphire
  (280, 28000, 24, 'Ralts has the ability to sense the emotions of people. If its Trainer is in a cheerful mood, this Pokémon grows cheerful and joyous in the same way.'),
  -- kirlia in alpha-sapphire
  (281, 28100, 24, 'Kirlia uses the horns on its head to amplify its psychokinetic power. When the Pokémon uses its power, the air around it becomes distorted, creating mirages of nonexistent scenery.'),
  -- gardevoir in alpha-sapphire
  (282, 28200, 24, 'Gardevoir has the psychokinetic power to distort the dimensions and create a small black hole. This Pokémon will try to protect its Trainer even at the risk of its own life.'),
  -- surskit in alpha-sapphire
  (283, 28300, 24, 'If Surskit senses danger, it secretes a thick, sugary syrup from the tip of its head. There are some Pokémon that love eating this syrup.'),
  -- masquerain in alpha-sapphire
  (284, 28400, 24, 'Masquerain’s antennas have eyelike patterns that usually give it an angry look. If the “eyes” are droopy and appear sad, it is said to be a sign that a heavy rainfall is on its way.'),
  -- shroomish in alpha-sapphire
  (285, 28500, 24, 'If Shroomish senses danger, it shakes its body and scatters spores from the top of its head. This Pokémon’s spores are so toxic, they make trees and weeds wilt.'),
  -- breloom in alpha-sapphire
  (286, 28600, 24, 'The seeds ringing Breloom’s tail are made of hardened toxic spores. It is horrible to eat the seeds. Just taking a bite of this Pokémon’s seed will cause your stomach to rumble.'),
  -- slakoth in alpha-sapphire
  (287, 28700, 24, 'Slakoth’s heart beats just once a minute. Whatever happens, it is content to loaf around motionless. It is rare to see this Pokémon in motion.'),
  -- vigoroth in alpha-sapphire
  (288, 28800, 24, 'Vigoroth is simply incapable of remaining still. Even when it tries to sleep, the blood in its veins grows agitated, compelling this Pokémon to run wild throughout the jungle before it can settle down.'),
  -- slaking in alpha-sapphire
  (289, 28900, 24, 'Wherever Slaking live, rings of over a yard in diameter appear in grassy fields. They are made by the Pokémon as it eats all the grass within reach while lying prone on the ground.'),
  -- nincada in alpha-sapphire
  (290, 29000, 24, 'Nincada lives underground. It uses its sharp claws to carve the roots of trees and absorb moisture and nutrients. This Pokémon can’t withstand bright sunlight so avoids it.'),
  -- ninjask in alpha-sapphire
  (291, 29100, 24, 'If Ninjask is not trained properly, it will refuse to obey the Trainer and cry loudly continuously. Because of this quality, this Pokémon is said to be one that puts the Trainer’s abilities to the test.'),
  -- shedinja in alpha-sapphire
  (292, 29200, 24, 'Shedinja is a peculiar Pokémon. It seems to appear unsought in a Poké Ball after a Nincada evolves. This bizarre Pokémon is entirely immobile—it doesn’t even breathe.'),
  -- whismur in alpha-sapphire
  (293, 29300, 24, 'Whismur is very timid. If it starts to cry loudly, it becomes startled by its own crying and cries even harder. When it finally stops crying, the Pokémon goes to sleep, all tired out.'),
  -- loudred in alpha-sapphire
  (294, 29400, 24, 'Loudred shouts while stamping its feet. After it finishes shouting, this Pokémon becomes incapable of hearing anything for a while. This is considered to be a weak point.'),
  -- exploud in alpha-sapphire
  (295, 29500, 24, 'Exploud communicates its feelings to the others by emitting whistle-like sounds from the tubes on its body. This Pokémon only raises its voice when it is in battle.'),
  -- makuhita in alpha-sapphire
  (296, 29600, 24, 'Makuhita has a tireless spirit—it will never give up hope. It eats a lot of food, gets plenty of sleep, and it trains very rigorously. By living that way, this Pokémon packs its body with energy.'),
  -- hariyama in alpha-sapphire
  (297, 29700, 24, 'Hariyama’s thick body may appear fat, but it is actually a hunk of solid muscle. If this Pokémon bears down and tightens all its muscles, its body becomes as hard as a rock.'),
  -- azurill in alpha-sapphire
  (298, 29800, 24, 'Azurill’s tail is large and bouncy. It is packed full of the nutrients this Pokémon needs to grow. Azurill can be seen bouncing and playing on its big, rubbery tail.'),
  -- nosepass in alpha-sapphire
  (299, 29900, 24, 'Nosepass had been said to be completely unmoving, with its magnetic nose pointed due north. However, close observation has revealed that the Pokémon actually moves by a little over 3/8 of an inch every year.'),
  -- skitty in alpha-sapphire
  (300, 30000, 24, 'Skitty is known to chase around playfully after its own tail. In the wild, this Pokémon lives in holes in the trees of forests. It is very popular as a pet because of its adorable looks.'),
  -- delcatty in alpha-sapphire
  (301, 30100, 24, 'Delcatty sleeps anywhere it wants without keeping a permanent nest. If other Pokémon approach it as it sleeps, this Pokémon will never fight—it will just move away somewhere else.'),
  -- sableye in alpha-sapphire
  (302, 30200, 24, 'Sableye digs the ground with sharpened claws to find rocks that it eats. Substances in the eaten rocks crystallize and rise up to the Pokémon’s body surface.'),
  -- mawile in alpha-sapphire
  (303, 30300, 24, 'Don’t be taken in by this Pokémon’s cute face—it’s very dangerous. Mawile fools the foe into letting down its guard, then chomps down with its massive jaws. The steel jaws are really horns that have been transformed.'),
  -- aron in alpha-sapphire
  (304, 30400, 24, 'Aron has a body of steel. With one all-out charge, this Pokémon can demolish even a heavy dump truck. The destroyed dump truck then becomes a handy meal for the Pokémon.'),
  -- lairon in alpha-sapphire
  (305, 30500, 24, 'Lairon feeds on iron contained in rocks and water. It makes its nest on mountains where iron ore is buried. As a result, the Pokémon often clashes with humans mining the iron ore.'),
  -- aggron in alpha-sapphire
  (306, 30600, 24, 'Aggron is protective of its environment. If its mountain is ravaged by a landslide or a fire, this Pokémon will haul topsoil to the area, plant trees, and beautifully restore its own territory.'),
  -- meditite in alpha-sapphire
  (307, 30700, 24, 'Meditite heightens its inner energy through meditation. It survives on just one berry a day. Minimal eating is another aspect of this Pokémon’s training.'),
  -- medicham in alpha-sapphire
  (308, 30800, 24, 'Through the power of meditation, Medicham developed its sixth sense. It gained the ability to use psychokinetic powers. This Pokémon is known to meditate for a whole month without eating.'),
  -- electrike in alpha-sapphire
  (309, 30900, 24, 'Electrike runs faster than the human eye can follow. The friction from running is converted into electricity, which is then stored in this Pokémon’s fur.'),
  -- manectric in alpha-sapphire
  (310, 31000, 24, 'Manectric discharges strong electricity from its mane. The mane is used for collecting electricity in the atmosphere. This Pokémon creates thunderclouds above its head.'),
  -- plusle in alpha-sapphire
  (311, 31100, 24, 'When Plusle is cheering on its partner, it flashes with electric sparks from all over its body. If its partner loses, this Pokémon cries loudly.'),
  -- minun in alpha-sapphire
  (312, 31200, 24, 'Minun loves to cheer on its partner in battle. It gives off sparks from its body while it is doing so. If its partner is in trouble, this Pokémon gives off increasing amounts of sparks.'),
  -- volbeat in alpha-sapphire
  (313, 31300, 24, 'Volbeat’s tail glows like a lightbulb. With other Volbeat, it uses its tail to draw geometric shapes in the night sky. This Pokémon loves the sweet aroma given off by Illumise.'),
  -- illumise in alpha-sapphire
  (314, 31400, 24, 'Illumise leads a flight of illuminated Volbeat to draw signs in the night sky. This Pokémon is said to earn greater respect from its peers by composing more complex designs in the sky.'),
  -- roselia in alpha-sapphire
  (315, 31500, 24, 'On extremely rare occasions, a Roselia is said to appear with its flowers in unusual colors. The thorns on this Pokémon’s head contain a vicious poison.'),
  -- gulpin in alpha-sapphire
  (316, 31600, 24, 'Most of Gulpin’s body is made up of its stomach—its heart and brain are very small in comparison. This Pokémon’s stomach contains special enzymes that dissolve anything.'),
  -- swalot in alpha-sapphire
  (317, 31700, 24, 'Swalot has no teeth, so what it eats, it swallows whole, no matter what. Its cavernous mouth yawns widely. An automobile tire could easily fit inside this Pokémon’s mouth.'),
  -- carvanha in alpha-sapphire
  (318, 31800, 24, 'If anything invades Carvanha’s territory, it will swarm and tear at the intruder with its pointed fangs. On its own, however, this Pokémon turns suddenly timid.'),
  -- sharpedo in alpha-sapphire
  (319, 31900, 24, 'Sharpedo can swim at speeds of up to 75 mph by jetting seawater out of its backside. This Pokémon’s drawback is its inability to swim long distances.'),
  -- wailmer in alpha-sapphire
  (320, 32000, 24, 'Wailmer can store water inside its body to transform itself into a ball for bouncing around on the ground. By filling itself up with more water, this Pokémon can elevate the height of its bounces.'),
  -- wailord in alpha-sapphire
  (321, 32100, 24, 'When chasing prey, Wailord herds them by leaping out of the water and making a humongous splash. It is breathtaking to see this Pokémon leaping out of the sea with others in its pod.'),
  -- numel in alpha-sapphire
  (322, 32200, 24, 'Numel stores magma of almost 2,200 degrees Fahrenheit within its body. If it gets wet, the magma cools and hardens. In that event, the Pokémon’s body grows heavy and its movements become sluggish.'),
  -- camerupt in alpha-sapphire
  (323, 32300, 24, 'The humps on Camerupt’s back are formed by a transformation of its bones. They sometimes blast out molten magma. This Pokémon apparently erupts often when it is enraged.'),
  -- torkoal in alpha-sapphire
  (324, 32400, 24, 'Torkoal generates energy by burning coal. It grows weaker as the fire dies down. When it is preparing for battle, this Pokémon burns more coal.'),
  -- spoink in alpha-sapphire
  (325, 32500, 24, 'Spoink keeps a pearl on top of its head. The pearl functions to amplify this Pokémon’s psychokinetic powers. It is therefore on a constant search for a bigger pearl.'),
  -- grumpig in alpha-sapphire
  (326, 32600, 24, 'Grumpig uses the black pearls on its body to wield its fantastic powers. When it is doing so, it dances bizarrely. This Pokémon’s black pearls are valuable as works of art.'),
  -- spinda in alpha-sapphire
  (327, 32700, 24, 'No two Spinda are said to have identical spot patterns on their hides. This Pokémon moves in a curious manner as if it is stumbling in dizziness. Its lurching movements can cause the opponent to become confused.'),
  -- trapinch in alpha-sapphire
  (328, 32800, 24, 'Trapinch is a patient hunter. It digs an inescapable pit in a desert and waits for its prey to come tumbling down. This Pokémon can go a whole week without access to any water.'),
  -- vibrava in alpha-sapphire
  (329, 32900, 24, 'Vibrava’s wings have not yet completed the process of growing. Rather than flying long distances, they are more useful for generating ultrasonic waves by vibrating.'),
  -- flygon in alpha-sapphire
  (330, 33000, 24, 'Flygon whips up a sandstorm by flapping its wings. The wings create a series of notes that sound like singing. Because the “singing” is the only thing that can be heard in a sandstorm, this Pokémon is said to be the desert spirit.'),
  -- cacnea in alpha-sapphire
  (331, 33100, 24, 'The more arid and harsh the environment, the more pretty and fragrant a flower Cacnea grows. This Pokémon battles by wildly swinging its thorny arms.'),
  -- cacturne in alpha-sapphire
  (332, 33200, 24, 'If a traveler is going through a desert in the thick of night, Cacturne will follow in a ragtag group. The Pokémon are biding their time, waiting for the traveler to tire and become incapable of moving.'),
  -- swablu in alpha-sapphire
  (333, 33300, 24, 'Swablu loves to make things clean. If it spots something dirty, it will wipe and polish it with its cottony wings. If its wings become dirty, this Pokémon finds a stream and showers itself.'),
  -- altaria in alpha-sapphire
  (334, 33400, 24, 'Altaria sings in a gorgeous soprano. Its wings are like cotton clouds. This Pokémon catches updrafts with its buoyant wings and soars way up into the wild blue yonder.'),
  -- zangoose in alpha-sapphire
  (335, 33500, 24, 'Zangoose usually stays on all fours, but when angered, it gets up on its hind legs and extends its claws. This Pokémon shares a bitter rivalry with Seviper that dates back over generations.'),
  -- seviper in alpha-sapphire
  (336, 33600, 24, 'Seviper’s swordlike tail serves two purposes—it slashes foes and douses them with secreted poison. This Pokémon will not give up its long-running blood feud with Zangoose.'),
  -- lunatone in alpha-sapphire
  (337, 33700, 24, 'Lunatone becomes active around the time of the full moon. Instead of walking, it moves by floating in midair. The Pokémon’s intimidating red eyes cause all those who see it to become transfixed with fear.'),
  -- solrock in alpha-sapphire
  (338, 33800, 24, 'Sunlight is the source of Solrock’s power. It is said to possess the ability to read the emotions of others. This Pokémon gives off intense heat while rotating its body.'),
  -- barboach in alpha-sapphire
  (339, 33900, 24, 'Barboach’s body is covered with a slimy film. If a foe grabs it, this Pokémon just slips out of the enemy’s grip. This Pokémon grows weak if the slimy coating dries up.'),
  -- whiscash in alpha-sapphire
  (340, 34000, 24, 'If Whiscash goes on a wild rampage, it sets off a quake-like tremor with a radius of over three miles. This Pokémon has the ability to predict real earthquakes.'),
  -- corphish in alpha-sapphire
  (341, 34100, 24, 'Corphish catches prey with its sharp claws. It has no likes or dislikes when it comes to food—it will eat anything. This Pokémon has no trouble living in filthy water.'),
  -- crawdaunt in alpha-sapphire
  (342, 34200, 24, 'Crawdaunt molts (sheds) its shell regularly. Immediately after molting, its shell is soft and tender. Until the shell hardens, this Pokémon hides in its streambed burrow to avoid attack from its foes.'),
  -- baltoy in alpha-sapphire
  (343, 34300, 24, 'As soon as it spots others of its kind, Baltoy congregates with them and then begins crying noisily in unison. This Pokémon sleeps while cleverly balancing itself on its one foot.'),
  -- claydol in alpha-sapphire
  (344, 34400, 24, 'Claydol is an enigma that appeared from a clay statue made by an ancient civilization dating back 20,000 years. This Pokémon shoots beams from both its hands.'),
  -- lileep in alpha-sapphire
  (345, 34500, 24, 'Lileep is an ancient Pokémon that was regenerated from a fossil. It remains permanently anchored to a rock. From its immobile perch, this Pokémon intently scans for prey with its two eyes.'),
  -- cradily in alpha-sapphire
  (346, 34600, 24, 'Cradily’s body serves as an anchor, preventing it from being washed away in rough seas. This Pokémon secretes a strong digestive fluid from its tentacles.'),
  -- anorith in alpha-sapphire
  (347, 34700, 24, 'Anorith is said to be a type of Pokémon predecessor, with eight wings at the sides of its body. This Pokémon swam in the primordial sea by undulating these eight wings.'),
  -- armaldo in alpha-sapphire
  (348, 34800, 24, 'Armaldo is a Pokémon species that became extinct in prehistoric times. This Pokémon is said to have walked on its hind legs, which would have been more convenient for life on land.'),
  -- feebas in alpha-sapphire
  (349, 34900, 24, 'While Feebas’s body is in tatters, it has a hardy and tenacious life force that enables it to live anywhere. However, this Pokémon is also slow and dimwitted, making it an easy catch.'),
  -- milotic in alpha-sapphire
  (350, 35000, 24, 'Milotic live at the bottom of large lakes. When this Pokémon’s body glows a vivid pink, it releases a pulsing wave of energy that brings soothing calm to troubled hearts.'),
  -- castform in alpha-sapphire
  (351, 35100, 24, 'Castform borrows the power of nature to transform itself into the guises of the sun, rain, and snow-clouds. This Pokémon’s feelings change with the weather.'),
  -- kecleon in alpha-sapphire
  (352, 35200, 24, 'Kecleon alters its body coloration to blend in with its surroundings, allowing it to sneak up on its prey unnoticed. Then it lashes out with its long, stretchy tongue to instantly ensnare the unsuspecting target.'),
  -- shuppet in alpha-sapphire
  (353, 35300, 24, 'Shuppet grows by feeding on dark emotions, such as vengefulness and envy, in the hearts of people. It roams through cities in search of grudges that taint people.'),
  -- banette in alpha-sapphire
  (354, 35400, 24, 'A cursed energy permeated the stuffing of a discarded and forgotten plush doll, giving it new life as Banette. The Pokémon’s energy would escape if it were to ever open its mouth.'),
  -- duskull in alpha-sapphire
  (355, 35500, 24, 'Duskull wanders lost among the deep darkness of midnight. There is an oft-told admonishment given to misbehaving children that this Pokémon will spirit away bad children who earn scoldings from their mothers.'),
  -- dusclops in alpha-sapphire
  (356, 35600, 24, 'Dusclops absorbs anything, however large the object may be. This Pokémon hypnotizes its foe by waving its hands in a macabre manner and by bringing its single eye to bear. The hypnotized foe is made to do Dusclops’s bidding.'),
  -- tropius in alpha-sapphire
  (357, 35700, 24, 'Children of the southern tropics eat as snacks the fruit that grows in bunches around the neck of Tropius. This Pokémon flies by flapping the leaves on its back as if they were wings.'),
  -- chimecho in alpha-sapphire
  (358, 35800, 24, 'In high winds, Chimecho cries as it hangs from a tree branch or the eaves of a building using a suction cup on its head. This Pokémon plucks berries with its long tail and eats them.'),
  -- absol in alpha-sapphire
  (359, 35900, 24, 'Absol has the ability to foretell the coming of natural disasters. It lives in a harsh, rugged mountain environment. This Pokémon very rarely ventures down from the mountains.'),
  -- wynaut in alpha-sapphire
  (360, 36000, 24, 'Wynaut gather on moonlit nights to play by squeezing up against each other. By being squeezed, this Pokémon gains endurance and is trained to dole out powerful counterattacks.'),
  -- snorunt in alpha-sapphire
  (361, 36100, 24, 'Snorunt survives by eating only snow and ice. Old folklore claims that a house visited by this Pokémon is sure to prosper for many generations to come.'),
  -- glalie in alpha-sapphire
  (362, 36200, 24, 'Glalie has the ability to freely control ice. For example, it can instantly freeze its prey solid. After immobilizing its prey in ice, this Pokémon enjoys eating it in leisurely fashion.'),
  -- spheal in alpha-sapphire
  (363, 36300, 24, 'Spheal always travels by rolling around on its ball-like body. When the season for ice floes arrives, this Pokémon can be seen rolling about on ice and crossing the sea.'),
  -- sealeo in alpha-sapphire
  (364, 36400, 24, 'Sealeo often balances and rolls things on the tip of its nose. While the Pokémon is rolling something, it checks the object’s aroma and texture to determine whether it likes the object or not.'),
  -- walrein in alpha-sapphire
  (365, 36500, 24, 'Walrein swims all over in frigid seawater while crushing icebergs with its grand, imposing tusks. Its thick layer of blubber makes enemy attacks bounce off harmlessly.'),
  -- clamperl in alpha-sapphire
  (366, 36600, 24, 'Clamperl grows while being protected by its rock-hard shell. When its body becomes too large to fit inside the shell, it is sure evidence that this Pokémon is getting close to evolution.'),
  -- huntail in alpha-sapphire
  (367, 36700, 24, 'Huntail’s tail is shaped like a fish. It uses the tail to attract prey, then swallows the prey whole with its large, gaping mouth. This Pokémon swims by wiggling its slender body like a snake.'),
  -- gorebyss in alpha-sapphire
  (368, 36800, 24, 'Although Gorebyss is the very picture of elegance and beauty while swimming, it is also cruel. When it spots prey, this Pokémon inserts its thin mouth into the prey’s body and drains the prey of its body fluids.'),
  -- relicanth in alpha-sapphire
  (369, 36900, 24, 'Relicanth is a rare species that was discovered in deep-sea explorations. This Pokémon’s body withstands the enormous water pressure of the ocean depths. Its body is covered in tough scales that are like craggy rocks.'),
  -- luvdisc in alpha-sapphire
  (370, 37000, 24, 'Luvdisc’s heart-shaped body is a symbol of love and romance. It is said that any couple meeting this Pokémon is promised a loving relationship that never ends.'),
  -- bagon in alpha-sapphire
  (371, 37100, 24, 'Bagon harbors a never-ending dream of one day soaring high among the clouds. As if trying to dispel its frustration over its inability to fly, this Pokémon slams its hard head against huge rocks and shatters them into pebbles.'),
  -- shelgon in alpha-sapphire
  (372, 37200, 24, 'Covering Shelgon’s body are outgrowths much like bones. The shell is very hard and bounces off enemy attacks. When awaiting evolution, this Pokémon hides away in a cavern.'),
  -- salamence in alpha-sapphire
  (373, 37300, 24, 'By evolving into Salamence, this Pokémon finally realizes its long-held dream of growing wings. To express its joy, it flies and wheels all over the sky while spouting flames from its mouth.'),
  -- beldum in alpha-sapphire
  (374, 37400, 24, 'Beldum keeps itself floating by generating a magnetic force that repels earth’s natural magnetism. When it sleeps, this Pokémon anchors itself to a cliff using the hooks on its rear.'),
  -- metang in alpha-sapphire
  (375, 37500, 24, 'When two Beldum fuse together, Metang is formed. The brains of the Beldum are joined by a magnetic nervous system. This Pokémon turns its arms to the rear for traveling at high speed.'),
  -- metagross in alpha-sapphire
  (376, 37600, 24, 'Metagross is the result of two Metang achieving fusion. When hunting, this Pokémon pins the prey to the ground under its massive body. It then eats the helpless victim using the large mouth on its stomach.'),
  -- regirock in alpha-sapphire
  (377, 37700, 24, 'Regirock’s body is composed entirely of rocks. Recently, a study made the startling discovery that the rocks were all unearthed from different locations.'),
  -- regice in alpha-sapphire
  (378, 37800, 24, 'Regice cloaks itself with frigid air of -328 degrees Fahrenheit. Things will freeze solid just by going near this Pokémon. Its icy body is so cold, it will not melt even if it is immersed in magma.'),
  -- registeel in alpha-sapphire
  (379, 37900, 24, 'Registeel was imprisoned by people in ancient times. The metal composing its body is thought to be a curious substance that is not of this earth.'),
  -- latias in alpha-sapphire
  (380, 38000, 24, 'Latias is highly intelligent and capable of understanding human speech. It is covered with a glass-like down. The Pokémon enfolds its body with its down and refracts light to alter its appearance.'),
  -- latios in alpha-sapphire
  (381, 38100, 24, 'Latios will only open its heart to a Trainer with a compassionate spirit. This Pokémon can fly faster than a jet plane by folding its forelegs to minimize air resistance.'),
  -- kyogre in alpha-sapphire
  (382, 38200, 24, 'Kyogre is said to be the personification of the sea itself. Legends tell of its many clashes against Groudon, as each sought to gain the power of nature.'),
  -- groudon in alpha-sapphire
  (383, 38300, 24, 'Through Primal Reversion and with nature’s full power, it will take back its true form. It can cause magma to erupt and expand the landmass of the world.'),
  -- rayquaza in alpha-sapphire
  (384, 38400, 24, 'It flies forever through the ozone layer, consuming meteoroids for sustenance. The many meteoroids in its body provide the energy it needs to Mega Evolve.'),
  -- jirachi in alpha-sapphire
  (385, 38500, 24, 'Jirachi will awaken from its sleep of a thousand years if you sing to it in a voice of purity. It is said to make true any wish that people desire.'),
  -- deoxys in alpha-sapphire
  (386, 38600, 24, 'Deoxys emerged from a virus that came from space. It is highly intelligent and wields psychokinetic powers. This Pokémon shoots lasers from the crystalline organ on its chest.'),
  -- turtwig in alpha-sapphire
  (387, 38700, 24, 'It undertakes photosynthesis with its body, making oxygen. The leaf on its head wilts if it is thirsty.'),
  -- grotle in alpha-sapphire
  (388, 38800, 24, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in alpha-sapphire
  (389, 38900, 24, 'Small Pokémon occasionally gather on its unmoving back to begin building their nests.'),
  -- chimchar in alpha-sapphire
  (390, 39000, 24, 'The gas made in its belly burns from its rear end. The fire burns weakly when it feels sick.'),
  -- monferno in alpha-sapphire
  (391, 39100, 24, 'It uses ceilings and walls to launch aerial attacks. Its fiery tail is but one weapon.'),
  -- infernape in alpha-sapphire
  (392, 39200, 24, 'It tosses its enemies around with agility. It uses all its limbs to fight in its own unique style.'),
  -- piplup in alpha-sapphire
  (393, 39300, 24, 'Because it is very proud, it hates accepting food from people. Its thick down guards it from cold.'),
  -- prinplup in alpha-sapphire
  (394, 39400, 24, 'It lives a solitary life. Its wings deliver wicked blows that can snap even the thickest of trees.'),
  -- empoleon in alpha-sapphire
  (395, 39500, 24, 'The three horns that extend from its beak attest to its power. The leader has the biggest horns.'),
  -- starly in alpha-sapphire
  (396, 39600, 24, 'They flock around mountains and fields, chasing after bug Pokémon. Their singing is noisy and annoying.'),
  -- staravia in alpha-sapphire
  (397, 39700, 24, 'It lives in forests and fields. Squabbles over territory occur when flocks collide.'),
  -- staraptor in alpha-sapphire
  (398, 39800, 24, 'When Staravia evolve into Staraptor, they leave the flock to live alone. They have sturdy wings.'),
  -- bidoof in alpha-sapphire
  (399, 39900, 24, 'It constantly gnaws on logs and rocks to whittle down its front teeth. It nests alongside water.'),
  -- bibarel in alpha-sapphire
  (400, 40000, 24, 'It makes its nest by damming streams with bark and mud. It is known as an industrious worker.'),
  -- kricketot in alpha-sapphire
  (401, 40100, 24, 'When its antennae hit each other, it sounds like the music of a xylophone.'),
  -- kricketune in alpha-sapphire
  (402, 40200, 24, 'It signals its emotions with its melodies. Scientists are studying these melodic patterns.'),
  -- shinx in alpha-sapphire
  (403, 40300, 24, 'All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded.'),
  -- luxio in alpha-sapphire
  (404, 40400, 24, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in alpha-sapphire
  (405, 40500, 24, 'Luxray’s ability to see through objects comes in handy when it’s scouting for danger.'),
  -- budew in alpha-sapphire
  (406, 40600, 24, 'Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen.'),
  -- roserade in alpha-sapphire
  (407, 40700, 24, 'With the movements of a dancer, it strikes with whips that are densely lined with poison thorns.'),
  -- cranidos in alpha-sapphire
  (408, 40800, 24, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with headbutts.'),
  -- rampardos in alpha-sapphire
  (409, 40900, 24, 'Its skull is as hard as iron. It is a brute that tears down jungle trees while catching prey.'),
  -- shieldon in alpha-sapphire
  (410, 41000, 24, 'It was generated from a fossil dug out of a layer of clay that was older than anyone knows. It has a sturdy face.'),
  -- bastiodon in alpha-sapphire
  (411, 41100, 24, 'Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries.'),
  -- burmy in alpha-sapphire
  (412, 41200, 24, 'If its cloak is broken in battle, it quickly remakes the cloak with materials nearby.'),
  -- wormadam in alpha-sapphire
  (413, 41300, 24, 'When Burmy evolved, its cloak became a part of this Pokémon’s body. The cloak is never shed.'),
  -- mothim in alpha-sapphire
  (414, 41400, 24, 'It flutters around at night and steals honey from the Combee hive.'),
  -- combee in alpha-sapphire
  (415, 41500, 24, 'It collects and delivers honey to its colony. At night, they cluster to form a beehive and sleep.'),
  -- vespiquen in alpha-sapphire
  (416, 41600, 24, 'Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by Combee.'),
  -- pachirisu in alpha-sapphire
  (417, 41700, 24, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in alpha-sapphire
  (418, 41800, 24, 'It inflates the flotation sac around its neck and pokes its head out of the water to see what is going on.'),
  -- floatzel in alpha-sapphire
  (419, 41900, 24, 'Its flotation sac developed as a result of pursuing aquatic prey. It can double as a rubber raft.'),
  -- cherubi in alpha-sapphire
  (420, 42000, 24, 'It evolves by sucking the energy out of the small ball where it had been storing nutrients.'),
  -- cherrim in alpha-sapphire
  (421, 42100, 24, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in alpha-sapphire
  (422, 42200, 24, 'Its shape and coloration vary, depending on its habitat.'),
  -- gastrodon in alpha-sapphire
  (423, 42300, 24, 'It apparently had a huge shell for protection in ancient times. It lives in shallow tidal pools.'),
  -- ambipom in alpha-sapphire
  (424, 42400, 24, 'To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now.'),
  -- drifloon in alpha-sapphire
  (425, 42500, 24, 'These Pokémon are called the “Signpost for Wandering Spirits.” Children holding them sometimes vanish.'),
  -- drifblim in alpha-sapphire
  (426, 42600, 24, 'It’s drowsy in daytime, but flies off in the evening in big groups. No one knows where they go.'),
  -- buneary in alpha-sapphire
  (427, 42700, 24, 'When it senses danger, it perks up its ears. On cold nights, it sleeps with its head tucked into its fur.'),
  -- lopunny in alpha-sapphire
  (428, 42800, 24, 'The ears appear to be delicate. If they are touched roughly, it kicks with its graceful legs.'),
  -- mismagius in alpha-sapphire
  (429, 42900, 24, 'Its cries sound like incantations to torment the foe. It appears where you least expect it.'),
  -- honchkrow in alpha-sapphire
  (430, 43000, 24, 'Becoming active at night, it is known to swarm with numerous Murkrow in tow.'),
  -- glameow in alpha-sapphire
  (431, 43100, 24, 'When it’s happy, Glameow demonstrates beautiful movements of its tail, like a dancing ribbon.'),
  -- purugly in alpha-sapphire
  (432, 43200, 24, 'To make itself appear intimidatingly beefy, it tightly cinches its waist with its twin tails.'),
  -- chingling in alpha-sapphire
  (433, 43300, 24, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in alpha-sapphire
  (434, 43400, 24, 'It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours.'),
  -- skuntank in alpha-sapphire
  (435, 43500, 24, 'It sprays a stinky fluid from its tail. The fluid smells worse the longer it is allowed to fester.'),
  -- bronzor in alpha-sapphire
  (436, 43600, 24, 'Implements shaped like it were discovered in ancient tombs. It is unknown if they are related.'),
  -- bronzong in alpha-sapphire
  (437, 43700, 24, 'Ancient people believed that petitioning Bronzong for rain was the way to make crops grow.'),
  -- bonsly in alpha-sapphire
  (438, 43800, 24, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in alpha-sapphire
  (439, 43900, 24, 'It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon.'),
  -- happiny in alpha-sapphire
  (440, 44000, 24, 'It carefully carries a round, white rock that it thinks is an egg. It’s bothered by how curly its hair looks.'),
  -- chatot in alpha-sapphire
  (441, 44100, 24, 'It can learn and speak human words. If they gather, they all learn the same saying.'),
  -- spiritomb in alpha-sapphire
  (442, 44200, 24, 'It was bound to a fissure in an odd keystone as punishment for misdeeds 500 years ago.'),
  -- gible in alpha-sapphire
  (443, 44300, 24, 'It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.'),
  -- gabite in alpha-sapphire
  (444, 44400, 24, 'As it digs to expand its nest, it habitually digs up gems that it then hoards in its nest.'),
  -- garchomp in alpha-sapphire
  (445, 44500, 24, 'It flies at speeds equal to a jet fighter plane. It never allows its prey to escape.'),
  -- munchlax in alpha-sapphire
  (446, 44600, 24, 'It conceals food under the long fur on its body. It carts around this food stash and swallows it without chewing.'),
  -- riolu in alpha-sapphire
  (447, 44700, 24, 'The aura that emanates from its body intensifies to alert others if it is afraid or sad.'),
  -- lucario in alpha-sapphire
  (448, 44800, 24, 'By reading the auras of all things, it can tell how others are feeling from over half a mile away.'),
  -- hippopotas in alpha-sapphire
  (449, 44900, 24, 'It enshrouds itself with sand to protect itself from germs. It does not enjoy getting wet.'),
  -- hippowdon in alpha-sapphire
  (450, 45000, 24, 'It blasts internally stored sand from ports on its body to create a towering twister for attack.'),
  -- skorupi in alpha-sapphire
  (451, 45100, 24, 'It burrows under the sand to lie in wait for prey. Its tail claws can inject its prey with a savage poison.'),
  -- drapion in alpha-sapphire
  (452, 45200, 24, 'It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison.'),
  -- croagunk in alpha-sapphire
  (453, 45300, 24, 'Inflating its poison sacs, it fills the area with an odd sound and hits flinching opponents with a poison jab.'),
  -- toxicroak in alpha-sapphire
  (454, 45400, 24, 'Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal.'),
  -- carnivine in alpha-sapphire
  (455, 45500, 24, 'It binds itself to trees in marshes. It attracts prey with its sweet-smelling drool and gulps them down.'),
  -- finneon in alpha-sapphire
  (456, 45600, 24, 'After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives.'),
  -- lumineon in alpha-sapphire
  (457, 45700, 24, 'To avoid detection by predators, it crawls along the seafloor using the two fins on its chest.'),
  -- mantyke in alpha-sapphire
  (458, 45800, 24, 'When it swims close to the surface of the ocean, people aboard ships are able to observe the pattern on its back.'),
  -- snover in alpha-sapphire
  (459, 45900, 24, 'In the spring, it grows berries with the texture of frozen treats around its belly.'),
  -- abomasnow in alpha-sapphire
  (460, 46000, 24, 'It lives a quiet life on mountains that are perpetually covered in snow. It hides itself by whipping up blizzards.'),
  -- weavile in alpha-sapphire
  (461, 46100, 24, 'They live in cold regions, forming groups of four or five that hunt prey with impressive coordination.'),
  -- magnezone in alpha-sapphire
  (462, 46200, 24, 'It evolved from exposure to a special magnetic field. Three units generate magnetism.'),
  -- lickilicky in alpha-sapphire
  (463, 46300, 24, 'Their saliva contains lots of components that can dissolve anything. The numbness caused by their lick does not dissipate.'),
  -- rhyperior in alpha-sapphire
  (464, 46400, 24, 'It puts rocks in holes in its palms and uses its muscles to shoot them. Geodude are shot at rare times.'),
  -- tangrowth in alpha-sapphire
  (465, 46500, 24, 'Its vines grow so profusely that, in the warm season, you can’t even see its eyes.'),
  -- electivire in alpha-sapphire
  (466, 46600, 24, 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.'),
  -- magmortar in alpha-sapphire
  (467, 46700, 24, 'It blasts fireballs of over 3,600 degrees Fahrenheit out of its arms. Its breath also sears and sizzles.'),
  -- togekiss in alpha-sapphire
  (468, 46800, 24, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in alpha-sapphire
  (469, 46900, 24, 'This six-legged Pokémon is easily capable of transporting an adult in flight. The wings on its tail help it stay balanced.'),
  -- leafeon in alpha-sapphire
  (470, 47000, 24, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in alpha-sapphire
  (471, 47100, 24, 'It lowers its body heat to freeze its fur. The hairs then become like needles it can fire.'),
  -- gliscor in alpha-sapphire
  (472, 47200, 24, 'Its flight is soundless. It uses its lengthy tail to carry off its prey... Then its elongated fangs do the rest.'),
  -- mamoswine in alpha-sapphire
  (473, 47300, 24, 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.'),
  -- porygon-z in alpha-sapphire
  (474, 47400, 24, 'Its programming was modified to enable it to travel through alien dimensions. Seems there might have been an error...'),
  -- gallade in alpha-sapphire
  (475, 47500, 24, 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.'),
  -- probopass in alpha-sapphire
  (476, 47600, 24, 'It freely controls three small units called Mini-Noses using magnetic force.'),
  -- dusknoir in alpha-sapphire
  (477, 47700, 24, 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.'),
  -- froslass in alpha-sapphire
  (478, 47800, 24, 'Legends in snowy regions say that a woman who was lost on an icy mountain was reborn as Froslass.'),
  -- rotom in alpha-sapphire
  (479, 47900, 24, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- uxie in alpha-sapphire
  (480, 48000, 24, 'It is said that its emergence gave humans the intelligence to improve their quality of life.'),
  -- mesprit in alpha-sapphire
  (481, 48100, 24, 'It sleeps at the bottom of a lake. Its spirit is said to leave its body to fly on the lake’s surface.'),
  -- azelf in alpha-sapphire
  (482, 48200, 24, 'It is thought that Uxie, Mesprit, and Azelf all came from the same egg.'),
  -- dialga in alpha-sapphire
  (483, 48300, 24, 'It has the power to control time. It appears in Sinnoh-region myths as an ancient deity.'),
  -- palkia in alpha-sapphire
  (484, 48400, 24, 'It has the ability to distort space. It is described as a deity in Sinnoh-region mythology.'),
  -- heatran in alpha-sapphire
  (485, 48500, 24, 'Boiling blood, like magma, circulates through its body. It makes its dwelling place in volcanic caves.'),
  -- regigigas in alpha-sapphire
  (486, 48600, 24, 'There is an enduring legend that states this Pokémon towed continents with ropes.'),
  -- giratina in alpha-sapphire
  (487, 48700, 24, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in alpha-sapphire
  (488, 48800, 24, 'Those who sleep holding Cresselia’s feather are assured of joyful dreams. It is said to represent the crescent moon.'),
  -- phione in alpha-sapphire
  (489, 48900, 24, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in alpha-sapphire
  (490, 49000, 24, 'It starts its life with a wondrous power that permits it to bond with any kind of Pokémon.'),
  -- darkrai in alpha-sapphire
  (491, 49100, 24, 'It can lull people to sleep and make them dream. It is active during nights of the new moon.'),
  -- shaymin in alpha-sapphire
  (492, 49200, 24, 'The blooming of Gracidea flowers confers the power of flight upon it. Feelings of gratitude are the message it delivers.'),
  -- arceus in alpha-sapphire
  (493, 49300, 24, 'It is told in mythology that this Pokémon was born before the universe even existed.'),
  -- victini in alpha-sapphire
  (494, 49400, 24, 'When it shares the infinite energy it creates, that being’s entire body will be overflowing with power.'),
  -- snivy in alpha-sapphire
  (495, 49500, 24, 'They photosynthesize by bathing their tails in sunlight. When they are not feeling well, their tails droop.'),
  -- servine in alpha-sapphire
  (496, 49600, 24, 'When it gets dirty, its leaves can’t be used in photosynthesis, so it always keeps itself clean.'),
  -- serperior in alpha-sapphire
  (497, 49700, 24, 'It can stop its opponents’ movements with just a glare. It takes in solar energy and boosts it internally.'),
  -- tepig in alpha-sapphire
  (498, 49800, 24, 'It loves to eat roasted berries, but sometimes it gets too excited and burns them to a crisp.'),
  -- pignite in alpha-sapphire
  (499, 49900, 24, 'When its internal fire flares up, its movements grow sharper and faster. When in trouble, it emits smoke.'),
  -- emboar in alpha-sapphire
  (500, 50000, 24, 'It has mastered fast and powerful fighting moves. It grows a beard of fire.'),
  -- oshawott in alpha-sapphire
  (501, 50100, 24, 'It fights using the scalchop on its stomach. In response to an attack, it retaliates immediately by slashing.'),
  -- dewott in alpha-sapphire
  (502, 50200, 24, 'As a result of strict training, each Dewott learns different forms for using the scalchops.'),
  -- samurott in alpha-sapphire
  (503, 50300, 24, 'One swing of the sword incorporated in its armor can fell an opponent. A simple glare from one of them quiets everybody.'),
  -- patrat in alpha-sapphire
  (504, 50400, 24, 'Extremely cautious, one of them will always be on the lookout, but it won’t notice a foe coming from behind.'),
  -- watchog in alpha-sapphire
  (505, 50500, 24, 'When they see an enemy, their tails stand high, and they spit the seeds of berries stored in their cheek pouches.'),
  -- lillipup in alpha-sapphire
  (506, 50600, 24, 'Though it is a very brave Pokémon, it’s also smart enough to check its foe’s strength and avoid battle.'),
  -- herdier in alpha-sapphire
  (507, 50700, 24, 'It has black, cape-like fur that is very hard and decreases the amount of damage it receives.'),
  -- stoutland in alpha-sapphire
  (508, 50800, 24, 'Being wrapped in its long fur is so comfortable that a person would be fine even overnight on a wintry mountain.'),
  -- purrloin in alpha-sapphire
  (509, 50900, 24, 'They steal from people for fun, but their victims can’t help but forgive them. Their deceptively cute act is perfect.'),
  -- liepard in alpha-sapphire
  (510, 51000, 24, 'Stealthily, it sneaks up on its target, striking from behind before its victim has a chance to react.'),
  -- pansage in alpha-sapphire
  (511, 51100, 24, 'It’s good at finding berries and gathers them from all over. It’s kind enough to share them with friends.'),
  -- simisage in alpha-sapphire
  (512, 51200, 24, 'Ill tempered, it fights by swinging its barbed tail around wildly. The leaf growing on its head is very bitter.'),
  -- pansear in alpha-sapphire
  (513, 51300, 24, 'This Pokémon lives in caves in volcanoes. The fire within the tuft on its head can reach 600 degrees Fahrenheit.'),
  -- simisear in alpha-sapphire
  (514, 51400, 24, 'When it gets excited, embers rise from its head and tail and it gets hot. For some reason, it loves sweets.'),
  -- panpour in alpha-sapphire
  (515, 51500, 24, 'The water stored inside the tuft on its head is full of nutrients. Plants that receive its water grow large.'),
  -- simipour in alpha-sapphire
  (516, 51600, 24, 'It prefers places with clean water. When its tuft runs low, it replenishes it by siphoning up water with its tail.'),
  -- munna in alpha-sapphire
  (517, 51700, 24, 'It eats the dreams of people and Pokémon. When it eats a pleasant dream, it expels pink-colored mist.'),
  -- musharna in alpha-sapphire
  (518, 51800, 24, 'The dream mist coming from its forehead changes into many different colors depending on the dream that was eaten.'),
  -- pidove in alpha-sapphire
  (519, 51900, 24, 'These Pokémon live in cities. They are accustomed to people. Flocks often gather in parks and plazas.'),
  -- tranquill in alpha-sapphire
  (520, 52000, 24, 'No matter where in the world it goes, it knows where its nest is, so it never gets separated from its Trainer.'),
  -- unfezant in alpha-sapphire
  (521, 52100, 24, 'Males have plumage on their heads. They will never let themselves feel close to anyone other than their Trainers.'),
  -- blitzle in alpha-sapphire
  (522, 52200, 24, 'Its mane shines when it discharges electricity. They use the frequency and rhythm of these flashes to communicate.'),
  -- zebstrika in alpha-sapphire
  (523, 52300, 24, 'They have lightning-like movements. When Zebstrika run at full speed, the sound of thunder reverberates.'),
  -- roggenrola in alpha-sapphire
  (524, 52400, 24, 'They were discovered a hundred years ago in an earthquake fissure. Inside each one is an energy core.'),
  -- boldore in alpha-sapphire
  (525, 52500, 24, 'When it is healthy, its core sticks out. Always facing the same way, it swiftly moves front to back and left to right.'),
  -- gigalith in alpha-sapphire
  (526, 52600, 24, 'Compressing the energy from its internal core lets it fire off an attack capable of blowing away a mountain.'),
  -- woobat in alpha-sapphire
  (527, 52700, 24, 'The heart-shaped mark left on a body after a Woobat has been attached to it is said to bring good fortune.'),
  -- swoobat in alpha-sapphire
  (528, 52800, 24, 'Anyone who comes into contact with the ultrasonic waves emitted by a courting male experiences a positive mood shift.'),
  -- drilbur in alpha-sapphire
  (529, 52900, 24, 'By spinning its body, it can dig straight through the ground at a speed of 30 mph.'),
  -- excadrill in alpha-sapphire
  (530, 53000, 24, 'More than 300 feet below the surface, they build mazelike nests. Their activity can be destructive to subway tunnels.'),
  -- audino in alpha-sapphire
  (531, 53100, 24, 'It touches others with the feelers on its ears, using the sound of their heartbeats to tell how they are feeling.'),
  -- timburr in alpha-sapphire
  (532, 53200, 24, 'Always carrying squared logs, they help out with construction. As they grow, they carry bigger logs.'),
  -- gurdurr in alpha-sapphire
  (533, 53300, 24, 'This Pokémon is so muscular and strongly built that even a group of wrestlers could not make it budge an inch.'),
  -- conkeldurr in alpha-sapphire
  (534, 53400, 24, 'Rather than rely on force, they master moves that utilize the centrifugal force of spinning concrete.'),
  -- tympole in alpha-sapphire
  (535, 53500, 24, 'By vibrating its cheeks, it emits sound waves imperceptible to humans. It uses the rhythm of these sounds to talk.'),
  -- palpitoad in alpha-sapphire
  (536, 53600, 24, 'It lives in the water and on land. It uses its long, sticky tongue to immobilize its opponents.'),
  -- seismitoad in alpha-sapphire
  (537, 53700, 24, 'They shoot paralyzing liquid from their head bumps. They use vibration to hurt their opponents.'),
  -- throh in alpha-sapphire
  (538, 53800, 24, 'When it encounters a foe bigger than itself, it wants to throw it. It changes belts as it gets stronger.'),
  -- sawk in alpha-sapphire
  (539, 53900, 24, 'Tying their belts gets them pumped and makes their punches more destructive. Disturbing their training angers them.'),
  -- sewaddle in alpha-sapphire
  (540, 54000, 24, 'Since this Pokémon makes its own clothes out of leaves, it is a popular mascot for fashion designers.'),
  -- swadloon in alpha-sapphire
  (541, 54100, 24, 'It protects itself from the cold by wrapping up in leaves. It stays on the move, eating leaves in forests.'),
  -- leavanny in alpha-sapphire
  (542, 54200, 24, 'It keeps its eggs warm with heat from fermenting leaves. It also uses leaves to make warm wrappings for Sewaddle.'),
  -- venipede in alpha-sapphire
  (543, 54300, 24, 'Its bite injects a potent poison, enough to paralyze large bird Pokémon that try to prey on it.'),
  -- whirlipede in alpha-sapphire
  (544, 54400, 24, 'It is usually motionless, but when attacked, it rotates at high speed and then crashes into its opponent.'),
  -- scolipede in alpha-sapphire
  (545, 54500, 24, 'With quick movements, it chases down its foes, attacking relentlessly with its horns until it prevails.'),
  -- cottonee in alpha-sapphire
  (546, 54600, 24, 'Perhaps because they feel more at ease in a group, they stick to others they find. They end up looking like a cloud.'),
  -- whimsicott in alpha-sapphire
  (547, 54700, 24, 'Like the wind, it can slip through any gap, no matter how small. It leaves balls of white fluff behind.'),
  -- petilil in alpha-sapphire
  (548, 54800, 24, 'Since they prefer moist, nutrient-rich soil, the areas where Petilil live are known to be good for growing plants.'),
  -- lilligant in alpha-sapphire
  (549, 54900, 24, 'Even veteran Trainers face a challenge in getting its beautiful flower to bloom. This Pokémon is popular with celebrities.'),
  -- basculin in alpha-sapphire
  (550, 55000, 24, 'Red and blue Basculin usually do not get along, but sometimes members of one school mingle with the other’s school.'),
  -- sandile in alpha-sapphire
  (551, 55100, 24, 'They live buried in the sands of the desert. The sun-warmed sands prevent their body temperature from dropping.'),
  -- krokorok in alpha-sapphire
  (552, 55200, 24, 'The special membrane covering its eyes can sense the heat of objects, so it can see its surroundings even in darkness.'),
  -- krookodile in alpha-sapphire
  (553, 55300, 24, 'They never allow prey to escape. Their jaws are so powerful, they can crush the body of an automobile.'),
  -- darumaka in alpha-sapphire
  (554, 55400, 24, 'When it sleeps, it pulls its limbs into its body and its internal fire goes down to 1,100 degrees Fahrenheit.'),
  -- darmanitan in alpha-sapphire
  (555, 55500, 24, 'Its internal fire burns at 2,500 degrees Fahrenheit, making enough power that it can destroy a dump truck with one punch.'),
  -- maractus in alpha-sapphire
  (556, 55600, 24, 'Arid regions are their habitat. They move rhythmically, making a sound similar to maracas.'),
  -- dwebble in alpha-sapphire
  (557, 55700, 24, 'When it finds a stone of a suitable size, it secretes a liquid from its mouth to open up a hole to crawl into.'),
  -- crustle in alpha-sapphire
  (558, 55800, 24, 'Competing for territory, Crustle fight viciously. The one whose boulder is broken is the loser of the battle.'),
  -- scraggy in alpha-sapphire
  (559, 55900, 24, 'Proud of its sturdy skull, it suddenly headbutts everything, but its weight makes it unstable, too.'),
  -- scrafty in alpha-sapphire
  (560, 56000, 24, 'It can smash concrete blocks with its kicking attacks. The one with the biggest crest is the group leader.'),
  -- sigilyph in alpha-sapphire
  (561, 56100, 24, 'The guardians of an ancient city, they always fly the same route while keeping watch for invaders.'),
  -- yamask in alpha-sapphire
  (562, 56200, 24, 'Each of them carries a mask that used to be its face when it was human. Sometimes they look at it and cry.'),
  -- cofagrigus in alpha-sapphire
  (563, 56300, 24, 'Grave robbers who mistake them for real coffins and get too close end up trapped inside their bodies.'),
  -- tirtouga in alpha-sapphire
  (564, 56400, 24, 'Restored from a fossil, this Pokémon can dive to depths beyond half a mile.'),
  -- carracosta in alpha-sapphire
  (565, 56500, 24, 'It could knock out a foe with a slap from one of its developed front appendages and chew it up, shell or bones and all.'),
  -- archen in alpha-sapphire
  (566, 56600, 24, 'Said to be an ancestor of bird Pokémon, they were unable to fly and moved about by hopping from one branch to another.'),
  -- archeops in alpha-sapphire
  (567, 56700, 24, 'It runs better than it flies. It takes off into the sky by running at a speed of 25 mph.'),
  -- trubbish in alpha-sapphire
  (568, 56800, 24, 'Inhaling the gas they belch will make you sleep for a week. They prefer unsanitary places.'),
  -- garbodor in alpha-sapphire
  (569, 56900, 24, 'Consuming garbage makes new kinds of poison gases and liquids inside their bodies.'),
  -- zorua in alpha-sapphire
  (570, 57000, 24, 'To protect themselves from danger, they hide their true identities by transforming into people and Pokémon.'),
  -- zoroark in alpha-sapphire
  (571, 57100, 24, 'Bonds between these Pokémon are very strong. It protects the safety of its pack by tricking its opponents.'),
  -- minccino in alpha-sapphire
  (572, 57200, 24, 'These Pokémon prefer a tidy habitat. They are always sweeping and dusting, using their tails as brooms.'),
  -- cinccino in alpha-sapphire
  (573, 57300, 24, 'Cinccino’s body is coated in a special oil that helps it deflect attacks, such as punches.'),
  -- gothita in alpha-sapphire
  (574, 57400, 24, 'They intently observe both Trainers and Pokémon. Apparently, they are looking at something that only Gothita can see.'),
  -- gothorita in alpha-sapphire
  (575, 57500, 24, 'According to many old tales, it creates friends for itself by controlling sleeping children on starry nights.'),
  -- gothitelle in alpha-sapphire
  (576, 57600, 24, 'They can predict the future from the placement and movement of the stars. They can see Trainers’ life spans.'),
  -- solosis in alpha-sapphire
  (577, 57700, 24, 'They drive away attackers by unleashing psychic power. They can use telepathy to talk with others.'),
  -- duosion in alpha-sapphire
  (578, 57800, 24, 'When their two divided brains think the same thoughts, their psychic power is maximized.'),
  -- reuniclus in alpha-sapphire
  (579, 57900, 24, 'When Reuniclus shake hands, a network forms between their brains, increasing their psychic power.'),
  -- ducklett in alpha-sapphire
  (580, 58000, 24, 'They are better at swimming than flying, and they happily eat their favorite food, peat moss, as they dive underwater.'),
  -- swanna in alpha-sapphire
  (581, 58100, 24, 'Swanna start to dance at dusk. The one dancing in the middle is the leader of the flock.'),
  -- vanillite in alpha-sapphire
  (582, 58200, 24, 'This Pokémon formed from icicles bathed in energy from the morning sun. It sleeps buried in snow.'),
  -- vanillish in alpha-sapphire
  (583, 58300, 24, 'Snowy mountains are this Pokémon’s habitat. During an ancient ice age, they moved to southern areas.'),
  -- vanilluxe in alpha-sapphire
  (584, 58400, 24, 'Swallowing large amounts of water, they make snow clouds inside their bodies and, when angry, cause violent blizzards.'),
  -- deerling in alpha-sapphire
  (585, 58500, 24, 'The turning of the seasons changes the color and scent of this Pokémon’s fur. People use it to mark the seasons.'),
  -- sawsbuck in alpha-sapphire
  (586, 58600, 24, 'They migrate according to the seasons, so some people call Sawsbuck the harbingers of spring.'),
  -- emolga in alpha-sapphire
  (587, 58700, 24, 'The energy made in its cheeks’ electric pouches is stored inside its membrane and released while it is gliding.'),
  -- karrablast in alpha-sapphire
  (588, 58800, 24, 'For some reason they evolve when they receive electrical energy while they are attacking Shelmet.'),
  -- escavalier in alpha-sapphire
  (589, 58900, 24, 'These Pokémon evolve by wearing the shell covering of a Shelmet. The steel armor protects their whole body.'),
  -- foongus in alpha-sapphire
  (590, 59000, 24, 'It lures Pokémon with its pattern that looks just like a Poké Ball, then releases poison spores.'),
  -- amoonguss in alpha-sapphire
  (591, 59100, 24, 'It lures prey close by dancing and waving its arm caps, which resemble Poké Balls, in a swaying motion.'),
  -- frillish in alpha-sapphire
  (592, 59200, 24, 'If its veil-like arms stun and wrap a foe, that foe will be dragged miles below the surface, never to return.'),
  -- jellicent in alpha-sapphire
  (593, 59300, 24, 'The fate of the ships and crew that wander into Jellicent’s habitat: all sunken, all lost, all vanished.'),
  -- alomomola in alpha-sapphire
  (594, 59400, 24, 'It gently holds injured and weak Pokémon in its fins. Its special membrane heals their wounds.'),
  -- joltik in alpha-sapphire
  (595, 59500, 24, 'They attach themselves to large-bodied Pokémon and absorb static electricity, which they store in an electric pouch.'),
  -- galvantula in alpha-sapphire
  (596, 59600, 24, 'When attacked, they create an electric barrier by spitting out many electrically charged threads.'),
  -- ferroseed in alpha-sapphire
  (597, 59700, 24, 'It absorbs the iron it finds in the rock while clinging to the ceiling. It shoots spikes when in danger.'),
  -- ferrothorn in alpha-sapphire
  (598, 59800, 24, 'They attach themselves to cave ceilings, firing steel spikes at targets passing beneath them.'),
  -- klink in alpha-sapphire
  (599, 59900, 24, 'The two minigears that mesh together are predetermined. Each will rebound from other minigears without meshing.'),
  -- klang in alpha-sapphire
  (600, 60000, 24, 'A minigear and big gear comprise its body. If the minigear it launches at a foe doesn’t return, it will die.'),
  -- klinklang in alpha-sapphire
  (601, 60100, 24, 'Its red core functions as an energy tank. It fires the charged energy through its spikes into an area.'),
  -- tynamo in alpha-sapphire
  (602, 60200, 24, 'One alone can emit only a trickle of electricity, so a group of them gathers to unleash a powerful electric shock.'),
  -- eelektrik in alpha-sapphire
  (603, 60300, 24, 'These Pokémon have a big appetite. When they spot their prey, they attack it and paralyze it with electricity.'),
  -- eelektross in alpha-sapphire
  (604, 60400, 24, 'They crawl out of the ocean using their arms. They will attack prey on shore and immediately drag it into the ocean.'),
  -- elgyem in alpha-sapphire
  (605, 60500, 24, 'Rumors of its origin are linked to a UFO crash site in the desert 50 years ago.'),
  -- beheeyem in alpha-sapphire
  (606, 60600, 24, 'It uses psychic power to control an opponent’s brain and tamper with its memories.'),
  -- litwick in alpha-sapphire
  (607, 60700, 24, 'Litwick shines a light that absorbs the life energy of people and Pokémon, which becomes the fuel that it burns.'),
  -- lampent in alpha-sapphire
  (608, 60800, 24, 'It arrives near the moment of death and steals spirit from the body.'),
  -- chandelure in alpha-sapphire
  (609, 60900, 24, 'The spirits burned up in its ominous flame lose their way and wander this world forever.'),
  -- axew in alpha-sapphire
  (610, 61000, 24, 'They mark their territory by leaving gashes in trees with their tusks. If a tusk breaks, a new one grows in quickly.'),
  -- fraxure in alpha-sapphire
  (611, 61100, 24, 'A broken tusk will not grow back, so it diligently sharpens its tusks on river rocks after the end of a battle.'),
  -- haxorus in alpha-sapphire
  (612, 61200, 24, 'Their sturdy tusks will stay sharp even if used to cut steel beams. These Pokémon are covered in hard armor.'),
  -- cubchoo in alpha-sapphire
  (613, 61300, 24, 'Their snot is a barometer of health. When healthy, their snot is sticky and the power of their ice moves increases.'),
  -- beartic in alpha-sapphire
  (614, 61400, 24, 'It freezes its breath to create fangs and claws of ice to fight with. Cold northern areas are its habitat.'),
  -- cryogonal in alpha-sapphire
  (615, 61500, 24, 'They are composed of ice crystals. They capture prey with chains of ice, freezing the prey at -148 degrees Fahrenheit.'),
  -- shelmet in alpha-sapphire
  (616, 61600, 24, 'It evolves when bathed in an electric-like energy along with Karrablast. The reason is still unknown.'),
  -- accelgor in alpha-sapphire
  (617, 61700, 24, 'When its body dries out, it weakens. So, to prevent dehydration, it wraps itself in many layers of thin membrane.'),
  -- stunfisk in alpha-sapphire
  (618, 61800, 24, 'It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of electricity.'),
  -- mienfoo in alpha-sapphire
  (619, 61900, 24, 'In fights, they dominate with onslaughts of flowing, continuous attacks. With their sharp claws, they cut enemies.'),
  -- mienshao in alpha-sapphire
  (620, 62000, 24, 'Using the long fur on its arms like whips, it launches into combo attacks that, once started, no one can stop.'),
  -- druddigon in alpha-sapphire
  (621, 62100, 24, 'It warms its body by absorbing sunlight with its wings. When its body temperature falls, it can no longer move.'),
  -- golett in alpha-sapphire
  (622, 62200, 24, 'Ancient science fashioned this Pokémon from clay. It’s been active for thousands of years.'),
  -- golurk in alpha-sapphire
  (623, 62300, 24, 'It flies across the sky at Mach speeds. Removing the seal on its chest makes its internal energy go out of control.'),
  -- pawniard in alpha-sapphire
  (624, 62400, 24, 'Ignoring their injuries, groups attack by sinking the blades that cover their bodies into their prey.'),
  -- bisharp in alpha-sapphire
  (625, 62500, 24, 'Bisharp pursues prey in the company of a large group of Pawniard. Then Bisharp finishes off the prey.'),
  -- bouffalant in alpha-sapphire
  (626, 62600, 24, 'Their fluffy fur absorbs damage, even if they strike foes with a fierce headbutt.'),
  -- rufflet in alpha-sapphire
  (627, 62700, 24, 'They will challenge anything, even strong opponents, without fear. Their frequent fights help them become stronger.'),
  -- braviary in alpha-sapphire
  (628, 62800, 24, 'They fight for their friends without any thought about danger to themselves. One can carry a car while flying.'),
  -- vullaby in alpha-sapphire
  (629, 62900, 24, 'Their wings are too tiny to allow them to fly. They guard their posteriors with bones that were gathered by Mandibuzz.'),
  -- mandibuzz in alpha-sapphire
  (630, 63000, 24, 'Watching from the sky, they swoop to strike weakened Pokémon on the ground. They decorate themselves with bones.'),
  -- heatmor in alpha-sapphire
  (631, 63100, 24, 'It draws in air through its tail, transforms it into fire, and uses it like a tongue. It melts Durant and eats them.'),
  -- durant in alpha-sapphire
  (632, 63200, 24, 'They attack in groups, covering themselves in steel armor to protect themselves from Heatmor.'),
  -- deino in alpha-sapphire
  (633, 63300, 24, 'Lacking sight, it’s unaware of its surroundings, so it bumps into things and eats anything that moves.'),
  -- zweilous in alpha-sapphire
  (634, 63400, 24, 'After it has eaten up all the food in its territory, it moves to another area. Its two heads do not get along.'),
  -- hydreigon in alpha-sapphire
  (635, 63500, 24, 'It responds to movement by attacking. This scary, three-headed Pokémon devours everything in its path!'),
  -- larvesta in alpha-sapphire
  (636, 63600, 24, 'The base of volcanoes is where they make their homes. They shoot fire from their five horns to repel attacking enemies.'),
  -- volcarona in alpha-sapphire
  (637, 63700, 24, 'When volcanic ash darkened the atmosphere, it is said that Volcarona’s fire provided a replacement for the sun.'),
  -- cobalion in alpha-sapphire
  (638, 63800, 24, 'It has a body and heart of steel. It worked with its allies to punish people when they hurt Pokémon.'),
  -- terrakion in alpha-sapphire
  (639, 63900, 24, 'Spoken of in legend, this Pokémon used its phenomenal power to destroy a castle in its effort to protect Pokémon.'),
  -- virizion in alpha-sapphire
  (640, 64000, 24, 'Legends say this Pokémon confounded opponents with its swift movements.'),
  -- tornadus in alpha-sapphire
  (641, 64100, 24, 'Tornadus expels massive energy from its tail, causing severe storms. Its power is great enough to blow houses away.'),
  -- thundurus in alpha-sapphire
  (642, 64200, 24, 'As it flies around, it shoots lightning all over the place and causes forest fires. It is therefore disliked.'),
  -- reshiram in alpha-sapphire
  (643, 64300, 24, 'When Reshiram’s tail flares, the heat energy moves the atmosphere and changes the world’s weather.'),
  -- zekrom in alpha-sapphire
  (644, 64400, 24, 'Concealing itself in lightning clouds, it flies throughout the Unova region. It creates electricity in its tail.'),
  -- landorus in alpha-sapphire
  (645, 64500, 24, 'From the forces of lightning and wind, it creates energy to give nutrients to the soil and make the land abundant.'),
  -- kyurem in alpha-sapphire
  (646, 64600, 24, 'It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out.'),
  -- keldeo in alpha-sapphire
  (647, 64700, 24, 'When it is resolute, its body fills with power and it becomes swifter. Its jumps are then too fast to follow.'),
  -- meloetta in alpha-sapphire
  (648, 64800, 24, 'Its melodies are sung with a special vocalization method that can control the feelings of those who hear it.'),
  -- genesect in alpha-sapphire
  (649, 64900, 24, 'This Pokémon existed 300 million years ago. Team Plasma altered it and attached a cannon to its back.'),
  -- chespin in alpha-sapphire
  (650, 65000, 24, 'Such a thick shell of wood covers its head and back that even a direct hit from a truck wouldn’t faze it.'),
  -- quilladin in alpha-sapphire
  (651, 65100, 24, 'They strengthen their lower bodies by running into one another. They are very kind and won’t start fights.'),
  -- chesnaught in alpha-sapphire
  (652, 65200, 24, 'When it takes a defensive posture with its fists guarding its face, it could withstand a bomb blast.'),
  -- fennekin in alpha-sapphire
  (653, 65300, 24, 'As it walks, it munches on a twig in place of a snack. It intimidates opponents by puffing hot air out of its ears.'),
  -- braixen in alpha-sapphire
  (654, 65400, 24, 'When the twig is plucked from its tail, friction sets the twig alight. The flame is used to send signals to its allies.'),
  -- delphox in alpha-sapphire
  (655, 65500, 24, 'Using psychic power, it generates a fiery vortex of 5,400 degrees Fahrenheit, incinerating foes swept into this whirl of flame.'),
  -- froakie in alpha-sapphire
  (656, 65600, 24, 'It protects its skin by covering its body in delicate bubbles. Beneath its happy-go-lucky air, it keeps a watchful eye on its surroundings.'),
  -- frogadier in alpha-sapphire
  (657, 65700, 24, 'Its swiftness is unparalleled. It can scale a tower of more than 2,000 feet in a minute’s time.'),
  -- greninja in alpha-sapphire
  (658, 65800, 24, 'It appears and vanishes with a ninja’s grace. It toys with its enemies using swift movements, while slicing them with throwing stars of sharpest water.'),
  -- bunnelby in alpha-sapphire
  (659, 65900, 24, 'It has ears like shovels. Digging holes strengthens its ears so much that they can sever thick roots effortlessly.'),
  -- diggersby in alpha-sapphire
  (660, 66000, 24, 'As powerful as an excavator, its ears can reduce dense bedrock to rubble. When it’s finished digging, it lounges lazily.'),
  -- fletchling in alpha-sapphire
  (661, 66100, 24, 'Despite the beauty of its lilting voice, it’s merciless to intruders that enter its territory.'),
  -- fletchinder in alpha-sapphire
  (662, 66200, 24, 'The hotter the flame sac on its belly, the faster it can fly, but it takes some time to get the fire going.'),
  -- talonflame in alpha-sapphire
  (663, 66300, 24, 'When attacking prey, it can reach speeds of up to 310 mph. It finishes its prey off with a colossal kick.'),
  -- scatterbug in alpha-sapphire
  (664, 66400, 24, 'The powder that covers its body regulates its temperature, so it can live in any region or climate.'),
  -- spewpa in alpha-sapphire
  (665, 66500, 24, 'The beaks of bird Pokémon can’t begin to scratch its stalwart body. To defend itself, it spews powder.'),
  -- vivillon in alpha-sapphire
  (666, 66600, 24, 'The patterns on this Pokémon’s wings depend on the climate and topography of its habitat. It scatters colorful scales.'),
  -- litleo in alpha-sapphire
  (667, 66700, 24, 'They set off on their own from their pride and live by themselves to become stronger. These hot-blooded Pokémon are quick to fight.'),
  -- pyroar in alpha-sapphire
  (668, 66800, 24, 'With fiery breath of more than 10,000 degrees Fahrenheit, they viciously threaten any challenger. The females protect the pride’s cubs.'),
  -- flabebe in alpha-sapphire
  (669, 66900, 24, 'When it finds a flower it likes, it dwells on that flower its whole life long. It floats in the wind’s embrace with an untroubled heart.'),
  -- floette in alpha-sapphire
  (670, 67000, 24, 'When the flowers of a well-tended flower bed bloom, it appears and celebrates with an elegant dance.'),
  -- florges in alpha-sapphire
  (671, 67100, 24, 'In times long past, governors of castles would invite Florges to create flower gardens to embellish the castle domains.'),
  -- skiddo in alpha-sapphire
  (672, 67200, 24, 'If it has sunshine and water, it doesn’t need to eat, because it can generate energy from the leaves on its back.'),
  -- gogoat in alpha-sapphire
  (673, 67300, 24, 'They inhabit mountainous regions. The leader of the herd is decided by a battle of clashing horns.'),
  -- pancham in alpha-sapphire
  (674, 67400, 24, 'It does its level best to glare and pull a scary face, but it can’t help grinning if anyone pats its head.'),
  -- pangoro in alpha-sapphire
  (675, 67500, 24, 'It charges ahead and bashes its opponents like a berserker, uncaring about any hits it might take. Its arms are mighty enough to snap a telephone pole.'),
  -- furfrou in alpha-sapphire
  (676, 67600, 24, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- espurr in alpha-sapphire
  (677, 67700, 24, 'It has enough psychic energy to blast everything within 300 feet of itself, but it has no control over its power.'),
  -- meowstic in alpha-sapphire
  (678, 67800, 24, 'The eyeball patterns on the interior of its ears emit psychic energy. It keeps the patterns tightly covered because that power is too immense.'),
  -- honedge in alpha-sapphire
  (679, 67900, 24, 'If anyone dares to grab its hilt, it wraps a blue cloth around that person’s arm and drains that person’s life energy completely.'),
  -- doublade in alpha-sapphire
  (680, 68000, 24, 'The complex attack patterns of its two swords are unstoppable, even for an opponent greatly accomplished at swordplay.'),
  -- aegislash in alpha-sapphire
  (681, 68100, 24, 'Apparently, it can detect the innate qualities of leadership. According to legend, whoever it recognizes is destined to become king.'),
  -- spritzee in alpha-sapphire
  (682, 68200, 24, 'In the past, rather than using perfume, royal ladies carried a Spritzee that would waft a fragrance they liked.'),
  -- aromatisse in alpha-sapphire
  (683, 68300, 24, 'Its scent is so overpowering that, unless a Trainer happens to really enjoy the smell, he or she will have a hard time walking alongside it.'),
  -- swirlix in alpha-sapphire
  (684, 68400, 24, 'Because it eats nothing but sweets, its fur is as sticky sweet as cotton candy.'),
  -- slurpuff in alpha-sapphire
  (685, 68500, 24, 'Its sense of smell is 100 million times better than a human’s, so even the faintest scent tells it about everything in the area. It’s like it can see with its nose!'),
  -- inkay in alpha-sapphire
  (686, 68600, 24, 'It flashes the light-emitting spots on its body, which drains its opponent’s will to fight. It takes the opportunity to scuttle away and hide.'),
  -- malamar in alpha-sapphire
  (687, 68700, 24, 'It lures its prey close with hypnotic motions, then wraps its tentacles around it before finishing it off with digestive fluids.'),
  -- binacle in alpha-sapphire
  (688, 68800, 24, 'They stretch and then contract, yanking their rocks along with them in bold hops. They eat seaweed that washes up on the shoreline.'),
  -- barbaracle in alpha-sapphire
  (689, 68900, 24, 'Barbaracle’s legs and hands have minds of their own, and they will move independently. But they usually follow the head’s orders.'),
  -- skrelp in alpha-sapphire
  (690, 69000, 24, 'It looks just like rotten kelp. It hides from foes while storing up power for its evolution.'),
  -- dragalge in alpha-sapphire
  (691, 69100, 24, 'Tales are told of ships that wander into seas where Dragalge live, never to return.'),
  -- clauncher in alpha-sapphire
  (692, 69200, 24, 'Through controlled explosions of internal gas, it can expel water like a pistol shot. At close distances, it can shatter rock.'),
  -- clawitzer in alpha-sapphire
  (693, 69300, 24, 'By expelling water from the nozzle in the back of its claw, it can move at a speed of 60 knots.'),
  -- helioptile in alpha-sapphire
  (694, 69400, 24, 'The frills on either side of its head have cells that generate electricity when exposed to sunlight.'),
  -- heliolisk in alpha-sapphire
  (695, 69500, 24, 'It stimulates its muscles with electricity, boosting the strength in its legs and enabling it to run 100 yards in five seconds.'),
  -- tyrunt in alpha-sapphire
  (696, 69600, 24, 'Its immense jaws have enough destructive force that it can chew up an automobile. It lived 100 million years ago.'),
  -- tyrantrum in alpha-sapphire
  (697, 69700, 24, 'Nothing could stop this Pokémon 100 million years ago, so it behaved like a king.'),
  -- amaura in alpha-sapphire
  (698, 69800, 24, 'This calm Pokémon lived in a cold land where there were no violent predators like Tyrantrum.'),
  -- aurorus in alpha-sapphire
  (699, 69900, 24, 'Using its diamond-shaped crystals, it can instantly create a wall of ice to block an opponent’s attack.'),
  -- sylveon in alpha-sapphire
  (700, 70000, 24, 'It wraps its ribbonlike feelers around the arm of its beloved Trainer and walks with him or her.'),
  -- hawlucha in alpha-sapphire
  (701, 70100, 24, 'With its wings, it controls its position in the air. It likes to attack from above, a maneuver that is difficult to defend against.'),
  -- dedenne in alpha-sapphire
  (702, 70200, 24, 'It uses its tail to absorb electricity from power plants or from outlets in houses, and then it fires the electricity from its whiskers.'),
  -- carbink in alpha-sapphire
  (703, 70300, 24, 'It has slept underground for hundreds of millions of years since its birth. It’s occasionally found during the excavation of caves.'),
  -- goomy in alpha-sapphire
  (704, 70400, 24, 'It’s covered in a slimy membrane that makes any punches or kicks slide off it harmlessly.'),
  -- sliggoo in alpha-sapphire
  (705, 70500, 24, 'Its four horns are a high-performance radar system. It uses them to sense sounds and smells, rather than using ears or a nose.'),
  -- goodra in alpha-sapphire
  (706, 70600, 24, 'It attacks with retractable horns. It throws a punch that’s the equivalent of the force of a hundred pro boxers.'),
  -- klefki in alpha-sapphire
  (707, 70700, 24, 'It never lets go of a key that it likes, so people give it the keys to vaults and safes as a way to prevent crime.'),
  -- phantump in alpha-sapphire
  (708, 70800, 24, 'According to old tales, these Pokémon are stumps possessed by the spirits of children who died while lost in the forest.'),
  -- trevenant in alpha-sapphire
  (709, 70900, 24, 'Using its roots as a nervous system, it controls the trees in the forest. It’s kind to the Pokémon that reside in its body.'),
  -- pumpkaboo in alpha-sapphire
  (710, 71000, 24, 'It is said to carry wandering spirits to the place where they belong so they can move on.'),
  -- gourgeist in alpha-sapphire
  (711, 71100, 24, 'It enwraps its prey in its hairlike arms. It sings joyfully as it observes the suffering of its prey.'),
  -- bergmite in alpha-sapphire
  (712, 71200, 24, 'Using air of -150 degrees Fahrenheit, they freeze opponents solid. They live in herds above the snow line on mountains.'),
  -- avalugg in alpha-sapphire
  (713, 71300, 24, 'The way several Bergmite huddle on its back makes it look like an aircraft carrier made of ice.'),
  -- noibat in alpha-sapphire
  (714, 71400, 24, 'Even a robust wrestler will become dizzy and unable to stand when exposed to its 200,000-hertz ultrasonic waves.'),
  -- noivern in alpha-sapphire
  (715, 71500, 24, 'The ultrasonic waves it emits from its ears can reduce a large boulder to pebbles. It swoops out of the dark to attack.'),
  -- xerneas in alpha-sapphire
  (716, 71600, 24, 'When the horns on its head shine in seven colors, it is said to be sharing everlasting life.'),
  -- yveltal in alpha-sapphire
  (717, 71700, 24, 'When its life comes to an end, it absorbs the life energy of every living thing and turns into a cocoon once more.'),
  -- zygarde in alpha-sapphire
  (718, 71800, 24, 'It’s hypothesized that it’s monitoring those who destroy the ecosystem from deep in the cave where it lives.'),
  -- diancie in alpha-sapphire
  (719, 71900, 24, 'It can instantly create many diamonds by compressing the carbon in the air between its hands.'),
  -- hoopa in alpha-sapphire
  (720, 72000, 24, 'It is said to be able to seize anything it desires with its six rings and six huge arms. With its power sealed, it is transformed into a much smaller form.'),
  -- volcanion in alpha-sapphire
  (721, 72100, 24, 'It expels its internal steam from the arms on its back. It has enough power to blow away a mountain.');
