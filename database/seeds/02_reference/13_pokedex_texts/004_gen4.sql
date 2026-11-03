-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 4 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in diamond
  (1, 100, 12, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in diamond
  (2, 200, 12, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in diamond
  (3, 300, 12, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in diamond
  (4, 400, 12, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in diamond
  (5, 500, 12, 'In the rocky mountains where CHARMELEON live, their fiery tails shine at night like stars.'),
  -- charizard in diamond
  (6, 600, 12, 'It is said that CHARIZARD’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in diamond
  (7, 700, 12, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in diamond
  (8, 800, 12, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in diamond
  (9, 900, 12, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in diamond
  (10, 1000, 12, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in diamond
  (11, 1100, 12, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in diamond
  (12, 1200, 12, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in diamond
  (13, 1300, 12, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in diamond
  (14, 1400, 12, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in diamond
  (15, 1500, 12, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in diamond
  (16, 1600, 12, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in diamond
  (17, 1700, 12, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in diamond
  (18, 1800, 12, 'By flapping its wings with all its might, PIDGEOT can make a gust of wind capable of bending tall trees.'),
  -- rattata in diamond
  (19, 1900, 12, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in diamond
  (20, 2000, 12, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in diamond
  (21, 2100, 12, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in diamond
  (22, 2200, 12, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in diamond
  (23, 2300, 12, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in diamond
  (24, 2400, 12, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in diamond
  (25, 2500, 12, 'It lives in forests with others. It stores electricity in the pouches on its cheeks.'),
  -- raichu in diamond
  (26, 2600, 12, 'It turns aggressive if it has too much electricity in its body. It discharges power through its tail.'),
  -- sandshrew in diamond
  (27, 2700, 12, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in diamond
  (28, 2800, 12, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in diamond
  (29, 2900, 12, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in diamond
  (30, 3000, 12, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than NIDORINO’s.'),
  -- nidoqueen in diamond
  (31, 3100, 12, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in diamond
  (32, 3200, 12, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in diamond
  (33, 3300, 12, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in diamond
  (34, 3400, 12, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in diamond
  (35, 3500, 12, 'Thought to live with others on quiet mountains, it is popular for its adorable nature.'),
  -- clefable in diamond
  (36, 3600, 12, 'Rarely seen by people, it is said to be drawn by the full moon to play at deserted lakes.'),
  -- vulpix in diamond
  (37, 3700, 12, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in diamond
  (38, 3800, 12, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in diamond
  (39, 3900, 12, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in diamond
  (40, 4000, 12, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in diamond
  (41, 4100, 12, 'Even though it has no eyes, it can sense obstacles using ultrasonic waves it emits from its mouth.'),
  -- golbat in diamond
  (42, 4200, 12, 'It loves the blood of humans and Pokémon. It flies around at night in search of neck veins.'),
  -- oddish in diamond
  (43, 4300, 12, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in diamond
  (44, 4400, 12, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in diamond
  (45, 4500, 12, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in diamond
  (46, 4600, 12, 'Mushrooms named tochukaso grow on its back. They grow along with the host PARAS.'),
  -- parasect in diamond
  (47, 4700, 12, 'A mushroom grown larger than the host’s body controls PARASECT. It scatters poisonous spores.'),
  -- venonat in diamond
  (48, 4800, 12, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in diamond
  (49, 4900, 12, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in diamond
  (50, 5000, 12, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in diamond
  (51, 5100, 12, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in diamond
  (52, 5200, 12, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in diamond
  (53, 5300, 12, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in diamond
  (54, 5400, 12, 'If its usual headache worsens, it starts exhibiting odd powers. It can’t remember doing so, however.'),
  -- golduck in diamond
  (55, 5500, 12, 'A Pokémon that lives in lakes. It swims faster than any human swimming champion.'),
  -- mankey in diamond
  (56, 5600, 12, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in diamond
  (57, 5700, 12, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in diamond
  (58, 5800, 12, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in diamond
  (59, 5900, 12, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in diamond
  (60, 6000, 12, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in diamond
  (61, 6100, 12, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in diamond
  (62, 6200, 12, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in diamond
  (63, 6300, 12, 'It sleeps for 18 hours a day. Even when awake, it teleports itself while remaining seated.'),
  -- kadabra in diamond
  (64, 6400, 12, 'If one is nearby, an eerie shadow appears on TV screens. Seeing the shadow is said to bring bad luck.'),
  -- alakazam in diamond
  (65, 6500, 12, 'Its superb memory lets it recall everything it has experienced from birth. Its IQ exceeds 5,000.'),
  -- machop in diamond
  (66, 6600, 12, 'It hefts a GRAVELER repeatedly to strengthen its entire body. It uses every type of martial arts.'),
  -- machoke in diamond
  (67, 6700, 12, 'MACHOKE’s boundless power is very dangerous, so it wears a belt that suppresses its energy.'),
  -- machamp in diamond
  (68, 6800, 12, 'It punches with its four arms at blinding speed. It can launch 1,000 punches in two seconds.'),
  -- bellsprout in diamond
  (69, 6900, 12, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in diamond
  (70, 7000, 12, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in diamond
  (71, 7100, 12, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in diamond
  (72, 7200, 12, 'Its body is virtually composed of water. It shoots strange beams from its crystal-like eyes.'),
  -- tentacruel in diamond
  (73, 7300, 12, 'With 80 tentacles for ensnaring victims, it prevents escape until the prey is weakened by poison.'),
  -- geodude in diamond
  (74, 7400, 12, 'Many live on mountain trails and remain half buried while keeping an eye on climbers.'),
  -- graveler in diamond
  (75, 7500, 12, 'GRAVELER make their homes on sheer cliff faces by gouging out numerous horizontal holes.'),
  -- golem in diamond
  (76, 7600, 12, 'It sheds its hide once a year. Its boulderlike body is so tough, even dynamite can’t harm it.'),
  -- ponyta in diamond
  (77, 7700, 12, 'About an hour after birth, its fiery mane and tail grow out, giving it an impressive appearance.'),
  -- rapidash in diamond
  (78, 7800, 12, 'It gallops at nearly 150 mph. With its mane blazing ferociously, it races as if it were an arrow.'),
  -- slowpoke in diamond
  (79, 7900, 12, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in diamond
  (80, 8000, 12, 'Though usually dim witted, it seems to become inspired if the SHELLDER on its tail bites down.'),
  -- magnemite in diamond
  (81, 8100, 12, 'The units at its sides generate electromagnetic waves that keep it airborne. It feeds on electricity.'),
  -- magneton in diamond
  (82, 8200, 12, 'It is actually three MAGNEMITE linked by magnetism. A group can set off a magnetic storm.'),
  -- farfetchd in diamond
  (83, 8300, 12, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in diamond
  (84, 8400, 12, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in diamond
  (85, 8500, 12, 'When DODUO evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in diamond
  (86, 8600, 12, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in diamond
  (87, 8700, 12, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in diamond
  (88, 8800, 12, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in diamond
  (89, 8900, 12, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in diamond
  (90, 9000, 12, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in diamond
  (91, 9100, 12, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in diamond
  (92, 9200, 12, 'This Pokémon’s body is 95% made up of gases, which are blown away by strong gusts of wind.'),
  -- haunter in diamond
  (93, 9300, 12, 'It can slip through any obstacle. It lurks inside walls to keep an eye on its foes.'),
  -- gengar in diamond
  (94, 9400, 12, 'It hides in shadows. It is said that if GENGAR is hiding, it cools the area by nearly 10 degrees F.'),
  -- onix in diamond
  (95, 9500, 12, 'When it travels underground, it causes rumbling and tremors. It can move at 50 mph.'),
  -- drowzee in diamond
  (96, 9600, 12, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in diamond
  (97, 9700, 12, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in diamond
  (98, 9800, 12, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in diamond
  (99, 9900, 12, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in diamond
  (100, 10000, 12, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in diamond
  (101, 10100, 12, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in diamond
  (102, 10200, 12, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in diamond
  (103, 10300, 12, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an EXEGGCUTE.'),
  -- cubone in diamond
  (104, 10400, 12, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in diamond
  (105, 10500, 12, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in diamond
  (106, 10600, 12, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in diamond
  (107, 10700, 12, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in diamond
  (108, 10800, 12, 'Instead of hands, it uses its tongue, which is twice its height. Its sticky saliva grips anything.'),
  -- koffing in diamond
  (109, 10900, 12, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in diamond
  (110, 11000, 12, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in diamond
  (111, 11100, 12, 'Its body is clad in a thick hide, and its tackles topple buildings. Unfortunately, it is not smart.'),
  -- rhydon in diamond
  (112, 11200, 12, 'Its brain developed after it stood up on its hind legs. Its drill horn bores tunnels through solid rock.'),
  -- chansey in diamond
  (113, 11300, 12, 'It is said to deliver happiness. Being compassionate, it shares its eggs with injured people.'),
  -- tangela in diamond
  (114, 11400, 12, 'It is shrouded by blue vines. No one has seen the face hidden behind this growth of vines.'),
  -- kangaskhan in diamond
  (115, 11500, 12, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in diamond
  (116, 11600, 12, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in diamond
  (117, 11700, 12, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in diamond
  (118, 11800, 12, 'It swims elegantly by flittering its tail fin as if it were a dress. It has the look of a queen.'),
  -- seaking in diamond
  (119, 11900, 12, 'It makes its nest by hollowing out boulders in streams with its horn. It defends its eggs with its life.'),
  -- staryu in diamond
  (120, 12000, 12, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in diamond
  (121, 12100, 12, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in diamond
  (122, 12200, 12, 'It is a pantomime expert that can create invisible but solid walls using miming gestures.'),
  -- scyther in diamond
  (123, 12300, 12, 'It is nearly impossible to parry its attacking scythes. Its movements are like a ninja’s.'),
  -- jynx in diamond
  (124, 12400, 12, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in diamond
  (125, 12500, 12, 'Half of all blackouts occur when this Pokémon appears at power plants and eats electricity.'),
  -- magmar in diamond
  (126, 12600, 12, 'Born in the spout of a volcano, its body is covered by flames that shimmer like the sun.'),
  -- pinsir in diamond
  (127, 12700, 12, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in diamond
  (128, 12800, 12, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in diamond
  (129, 12900, 12, 'It is said to be the world’s weakest Pokémon. No one knows why it has managed to survive.'),
  -- gyarados in diamond
  (130, 13000, 12, 'Once it appears, its rage never settles until it has razed the fields and mountains around it.'),
  -- lapras in diamond
  (131, 13100, 12, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in diamond
  (132, 13200, 12, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in diamond
  (133, 13300, 12, 'A rare Pokémon that adapts to harsh environments by taking on different evolutionary forms.'),
  -- vaporeon in diamond
  (134, 13400, 12, 'It has evolved to be suitable for an aquatic life. It can invisibly melt away into water.'),
  -- jolteon in diamond
  (135, 13500, 12, 'It controls 10,000-volt power and can raise all the fur on its body as if it were sharp needles.'),
  -- flareon in diamond
  (136, 13600, 12, 'It has a flame sac in its body. Its body temperature tops 1,650 degrees Fahrenheit before battle.'),
  -- porygon in diamond
  (137, 13700, 12, 'The world’s first artificially created Pokémon. It can travel through electronic space.'),
  -- omanyte in diamond
  (138, 13800, 12, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in diamond
  (139, 13900, 12, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in diamond
  (140, 14000, 12, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in diamond
  (141, 14100, 12, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in diamond
  (142, 14200, 12, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in diamond
  (143, 14300, 12, 'Its stomach can digest any kind of food, even if it happens to be moldy or rotten.'),
  -- articuno in diamond
  (144, 14400, 12, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in diamond
  (145, 14500, 12, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in diamond
  (146, 14600, 12, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in diamond
  (147, 14700, 12, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in diamond
  (148, 14800, 12, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in diamond
  (149, 14900, 12, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in diamond
  (150, 15000, 12, 'A Pokémon created by recombining MEW’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in diamond
  (151, 15100, 12, 'Because it can use all kinds of moves, many scientists believe MEW to be the ancestor of Pokémon.'),
  -- chikorita in diamond
  (152, 15200, 12, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in diamond
  (153, 15300, 12, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in diamond
  (154, 15400, 12, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in diamond
  (155, 15500, 12, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in diamond
  (156, 15600, 12, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in diamond
  (157, 15700, 12, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in diamond
  (158, 15800, 12, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in diamond
  (159, 15900, 12, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in diamond
  (160, 16000, 12, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in diamond
  (161, 16100, 12, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in diamond
  (162, 16200, 12, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in diamond
  (163, 16300, 12, 'It always stands on one foot. Even when attacked, it does not brace itself using both feet.'),
  -- noctowl in diamond
  (164, 16400, 12, 'Its eyes are special. They can pick out objects as long as there is the tiniest amount of light.'),
  -- ledyba in diamond
  (165, 16500, 12, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in diamond
  (166, 16600, 12, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in diamond
  (167, 16700, 12, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in diamond
  (168, 16800, 12, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in diamond
  (169, 16900, 12, 'Having four wings enables it to fly faster and more quietly. It turns active when the night comes.'),
  -- chinchou in diamond
  (170, 17000, 12, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in diamond
  (171, 17100, 12, 'LANTURN’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in diamond
  (172, 17200, 12, 'The electric pouches on its cheeks are still small. They cannot store much electricity yet.'),
  -- cleffa in diamond
  (173, 17300, 12, 'Its silhouette is like a star. It is believed to arrive riding on shooting stars.'),
  -- igglybuff in diamond
  (174, 17400, 12, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in diamond
  (175, 17500, 12, 'Its shell is said to be stuffed with happiness that it shares with kindhearted people.'),
  -- togetic in diamond
  (176, 17600, 12, 'It is said to appear in front of kindly people to scatter a glowing down called “joy dust.”'),
  -- natu in diamond
  (177, 17700, 12, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in diamond
  (178, 17800, 12, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in diamond
  (179, 17900, 12, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in diamond
  (180, 18000, 12, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in diamond
  (181, 18100, 12, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in diamond
  (182, 18200, 12, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in diamond
  (183, 18300, 12, 'Using its tail as a float, it dives underwater. It likes eating plants that grow on river bottoms.'),
  -- azumarill in diamond
  (184, 18400, 12, 'It lives in rivers and lakes. In water, its coloring and patterns trick the vision of foes.'),
  -- sudowoodo in diamond
  (185, 18500, 12, 'Despite appearing to be a tree, its body is closer to rocks and stones. It is very weak to water.'),
  -- politoed in diamond
  (186, 18600, 12, 'It gathers groups of others as their leader. Its cries make POLIWAG obey.'),
  -- hoppip in diamond
  (187, 18700, 12, 'It drifts on winds. It is said that when HOPPIP gather in fields and mountains, spring is on the way.'),
  -- skiploom in diamond
  (188, 18800, 12, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in diamond
  (189, 18900, 12, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in diamond
  (190, 19000, 12, 'It uses its tail to pluck fruits that are out of reach. Its tail is more adept than its real hands.'),
  -- sunkern in diamond
  (191, 19100, 12, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in diamond
  (192, 19200, 12, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in diamond
  (193, 19300, 12, 'Its eyes can see 360 degrees without moving its head. It won’t miss prey--even those behind it.'),
  -- wooper in diamond
  (194, 19400, 12, 'It lives in cold water, half burying itself in mud at the bottom to sleep.'),
  -- quagsire in diamond
  (195, 19500, 12, 'It has a sluggish nature. It lies at the river’s bottom, waiting for prey to stray into its mouth.'),
  -- espeon in diamond
  (196, 19600, 12, 'Its fur has the look and feel of velvet. The orb on its forehead glows when it uses psycho-power.'),
  -- umbreon in diamond
  (197, 19700, 12, 'The light of the moon changed EEVEE’s genetic structure. It lurks in darkness for prey.'),
  -- murkrow in diamond
  (198, 19800, 12, 'It is believed that seeing this Pokémon at night will bring about ominous occurrences.'),
  -- slowking in diamond
  (199, 19900, 12, 'Being bitten by SHELLDER gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in diamond
  (200, 20000, 12, 'It loves to sneak up on people late at night, then startle them with its shrieklike cry.'),
  -- unown in diamond
  (201, 20100, 12, 'Shaped like ancient writing, it is a huge mystery whether language or UNOWN came first.'),
  -- wobbuffet in diamond
  (202, 20200, 12, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in diamond
  (203, 20300, 12, 'Its tail also has a small brain. It bites to repel any foe trying to sneak up on it from behind.'),
  -- pineco in diamond
  (204, 20400, 12, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in diamond
  (205, 20500, 12, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in diamond
  (206, 20600, 12, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in diamond
  (207, 20700, 12, 'It sails on the winds with its limbs extended to strike from the sky. It aims for the prey’s face.'),
  -- steelix in diamond
  (208, 20800, 12, 'Tempered underground under high pressure and heat, its body is harder than any metal.'),
  -- snubbull in diamond
  (209, 20900, 12, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in diamond
  (210, 21000, 12, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in diamond
  (211, 21100, 12, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in diamond
  (212, 21200, 12, 'It has a steel-hard body. It intimidates foes by upraising its eye-patterned pincers.'),
  -- shuckle in diamond
  (213, 21300, 12, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in diamond
  (214, 21400, 12, 'It gathers in forests to search for tree sap, its favorite food. It’s strong enough to hurl foes.'),
  -- sneasel in diamond
  (215, 21500, 12, 'It feeds on eggs stolen from nests. Its sharply hooked claws rip vulnerable spots on prey.'),
  -- teddiursa in diamond
  (216, 21600, 12, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in diamond
  (217, 21700, 12, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in diamond
  (218, 21800, 12, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in diamond
  (219, 21900, 12, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in diamond
  (220, 22000, 12, 'It loves eating mushrooms that grow under dead grass. It also finds hot springs while foraging.'),
  -- piloswine in diamond
  (221, 22100, 12, 'Its shaggy coat makes it unable to see. It checks surroundings with its sensitive nose instead.'),
  -- corsola in diamond
  (222, 22200, 12, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in diamond
  (223, 22300, 12, 'It squirts water forcefully from its mouth to shoot down flying prey.'),
  -- octillery in diamond
  (224, 22400, 12, 'It lives in the gaps of boulders and in holes on the seafloor. Its suction cups grip prey tightly.'),
  -- delibird in diamond
  (225, 22500, 12, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in diamond
  (226, 22600, 12, 'When the waves are calm, one may encounter a swarm of MANTINE swimming as if they are in flight.'),
  -- skarmory in diamond
  (227, 22700, 12, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in diamond
  (228, 22800, 12, 'It conveys its feelings using different cries. It works in a pack to cleverly take down prey.'),
  -- houndoom in diamond
  (229, 22900, 12, 'Long ago, people imagined its eerie howls to be the call of the grim reaper.'),
  -- kingdra in diamond
  (230, 23000, 12, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in diamond
  (231, 23100, 12, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in diamond
  (232, 23200, 12, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in diamond
  (233, 23300, 12, 'With planetary development software installed, it became capable of working in space.'),
  -- stantler in diamond
  (234, 23400, 12, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in diamond
  (235, 23500, 12, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in diamond
  (236, 23600, 12, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in diamond
  (237, 23700, 12, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in diamond
  (238, 23800, 12, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in diamond
  (239, 23900, 12, 'It generates electricity by whirling its arms. However, it can’t store the energy it makes.'),
  -- magby in diamond
  (240, 24000, 12, 'Its body temperature is around 1,100 degrees F. It is healthy if it is breathing yellow flames.'),
  -- miltank in diamond
  (241, 24100, 12, 'It is said that kids who drink MILTANK’s milk grow up to become hearty, healthy adults.'),
  -- blissey in diamond
  (242, 24200, 12, 'This kindhearted Pokémon nurses sick Pokémon to health. It senses feelings of sadness.'),
  -- raikou in diamond
  (243, 24300, 12, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in diamond
  (244, 24400, 12, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in diamond
  (245, 24500, 12, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in diamond
  (246, 24600, 12, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in diamond
  (247, 24700, 12, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in diamond
  (248, 24800, 12, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in diamond
  (249, 24900, 12, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in diamond
  (250, 25000, 12, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in diamond
  (251, 25100, 12, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in diamond
  (252, 25200, 12, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in diamond
  (253, 25300, 12, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in diamond
  (254, 25400, 12, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in diamond
  (255, 25500, 12, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in diamond
  (256, 25600, 12, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in diamond
  (257, 25700, 12, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in diamond
  (258, 25800, 12, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in diamond
  (259, 25900, 12, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in diamond
  (260, 26000, 12, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in diamond
  (261, 26100, 12, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in diamond
  (262, 26200, 12, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in diamond
  (263, 26300, 12, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in diamond
  (264, 26400, 12, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in diamond
  (265, 26500, 12, 'It loves to eat leaves. If it is attacked by a STARLY, it will defend itself with its spiked rear.'),
  -- silcoon in diamond
  (266, 26600, 12, 'It anchors itself by wrapping twigs with the silk from its body. It motionlessly awaits evolution.'),
  -- beautifly in diamond
  (267, 26700, 12, 'It has an aggressive nature. It stabs prey with its long, narrow mouth to drain the prey’s fluids.'),
  -- cascoon in diamond
  (268, 26800, 12, 'It is hot inside its cocoon. All the cells in its body create the energy for it to evolve.'),
  -- dustox in diamond
  (269, 26900, 12, 'A nocturnal Pokémon. Drawn by streetlights, they messily eat the leaves of trees lining boulevards.'),
  -- lotad in diamond
  (270, 27000, 12, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in diamond
  (271, 27100, 12, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in diamond
  (272, 27200, 12, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in diamond
  (273, 27300, 12, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in diamond
  (274, 27400, 12, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in diamond
  (275, 27500, 12, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in diamond
  (276, 27600, 12, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in diamond
  (277, 27700, 12, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in diamond
  (278, 27800, 12, 'It makes its nest on steep sea cliffs. Riding updrafts, it soars to great heights.'),
  -- pelipper in diamond
  (279, 27900, 12, 'It dips its large bill in the sea, then scoops up numerous prey along with water.'),
  -- ralts in diamond
  (280, 28000, 12, 'It uses the horns on its head to sense human emotions. It is said to appear in front of cheerful people.'),
  -- kirlia in diamond
  (281, 28100, 12, 'It is highly perceptive of its Trainer’s feelings. It dances when it is feeling happy.'),
  -- gardevoir in diamond
  (282, 28200, 12, 'It will try to guard its trusted Trainer with its life. It has the ability to see the future.'),
  -- surskit in diamond
  (283, 28300, 12, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in diamond
  (284, 28400, 12, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in diamond
  (285, 28500, 12, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in diamond
  (286, 28600, 12, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in diamond
  (287, 28700, 12, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in diamond
  (288, 28800, 12, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in diamond
  (289, 28900, 12, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in diamond
  (290, 29000, 12, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in diamond
  (291, 29100, 12, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in diamond
  (292, 29200, 12, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in diamond
  (293, 29300, 12, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in diamond
  (294, 29400, 12, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in diamond
  (295, 29500, 12, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in diamond
  (296, 29600, 12, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in diamond
  (297, 29700, 12, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in diamond
  (298, 29800, 12, 'A Pokémon that lives by water. It moves quickly on land by bouncing on its big tail.'),
  -- nosepass in diamond
  (299, 29900, 12, 'Its nose is a magnet. As a result, this Pokémon always keeps its face pointing north.'),
  -- skitty in diamond
  (300, 30000, 12, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in diamond
  (301, 30100, 12, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in diamond
  (302, 30200, 12, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in diamond
  (303, 30300, 12, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in diamond
  (304, 30400, 12, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in diamond
  (305, 30500, 12, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in diamond
  (306, 30600, 12, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in diamond
  (307, 30700, 12, 'It eats just one berry a day. By enduring hunger, its spirit is tempered and made sharper.'),
  -- medicham in diamond
  (308, 30800, 12, 'Through yoga training, it has honed its sixth sense. Its movements are elegant.'),
  -- electrike in diamond
  (309, 30900, 12, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in diamond
  (310, 31000, 12, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in diamond
  (311, 31100, 12, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in diamond
  (312, 31200, 12, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in diamond
  (313, 31300, 12, 'It communicates with others by lighting up its rear at night. It loves ILLUMISE’s sweet aroma.'),
  -- illumise in diamond
  (314, 31400, 12, 'With its sweet aroma, it guides VOLBEAT to draw signs with light in the night sky.'),
  -- roselia in diamond
  (315, 31500, 12, 'ROSELIA raised on clean drinking water are known to grow vividly colored flowers.'),
  -- gulpin in diamond
  (316, 31600, 12, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in diamond
  (317, 31700, 12, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in diamond
  (318, 31800, 12, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in diamond
  (319, 31900, 12, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in diamond
  (320, 32000, 12, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in diamond
  (321, 32100, 12, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in diamond
  (322, 32200, 12, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in diamond
  (323, 32300, 12, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in diamond
  (324, 32400, 12, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in diamond
  (325, 32500, 12, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in diamond
  (326, 32600, 12, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in diamond
  (327, 32700, 12, 'No two SPINDA have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in diamond
  (328, 32800, 12, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in diamond
  (329, 32900, 12, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in diamond
  (330, 33000, 12, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in diamond
  (331, 33100, 12, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in diamond
  (332, 33200, 12, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in diamond
  (333, 33300, 12, 'Its wings are like cotton tufts. If it perches on someone’s head, it looks like a cotton hat.'),
  -- altaria in diamond
  (334, 33400, 12, 'It looks like a fluffy cloud when it is in flight. It hums with its soprano voice.'),
  -- zangoose in diamond
  (335, 33500, 12, 'It has feuded with SEVIPER for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in diamond
  (336, 33600, 12, 'For many generations, it has feuded with ZANGOOSE. It whets its bladed tail on rocks for battle.'),
  -- lunatone in diamond
  (337, 33700, 12, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in diamond
  (338, 33800, 12, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in diamond
  (339, 33900, 12, 'It coats its entire body with a slimy fluid so it can squirm and slip away if grabbed.'),
  -- whiscash in diamond
  (340, 34000, 12, 'It is very territorial. It repels foes by setting off tremors that extend over a three-mile radius.'),
  -- corphish in diamond
  (341, 34100, 12, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in diamond
  (342, 34200, 12, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in diamond
  (343, 34300, 12, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in diamond
  (344, 34400, 12, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in diamond
  (345, 34500, 12, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in diamond
  (346, 34600, 12, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in diamond
  (347, 34700, 12, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in diamond
  (348, 34800, 12, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in diamond
  (349, 34900, 12, 'It is famous for its shabby appearance. While populous, they tend to cluster in set locations.'),
  -- milotic in diamond
  (350, 35000, 12, 'When people bicker, it is said to arise from the depths of lakes to becalm violent hearts.'),
  -- castform in diamond
  (351, 35100, 12, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in diamond
  (352, 35200, 12, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in diamond
  (353, 35300, 12, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in diamond
  (354, 35400, 12, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in diamond
  (355, 35500, 12, 'It doggedly pursues its prey wherever it goes. However, the chase is abandoned at sunrise.'),
  -- dusclops in diamond
  (356, 35600, 12, 'Its body is hollow. It is said that those who look into its body are sucked into the void.'),
  -- tropius in diamond
  (357, 35700, 12, 'Because it continually ate only its favorite fruit, the fruit started growing around its neck.'),
  -- chimecho in diamond
  (358, 35800, 12, 'To knock foes flying, it makes the air shudder with its cries. It converses using seven cries.'),
  -- absol in diamond
  (359, 35900, 12, 'It senses coming disasters and appears before people only to warn them of impending danger.'),
  -- wynaut in diamond
  (360, 36000, 12, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in diamond
  (361, 36100, 12, 'In the snow country, certain folklore says a house will prosper if a SNORUNT lives there.'),
  -- glalie in diamond
  (362, 36200, 12, 'To protect itself, it clads its body in an armor of ice, made by freezing moisture in the air.'),
  -- spheal in diamond
  (363, 36300, 12, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in diamond
  (364, 36400, 12, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in diamond
  (365, 36500, 12, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in diamond
  (366, 36600, 12, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in diamond
  (367, 36700, 12, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in diamond
  (368, 36800, 12, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in diamond
  (369, 36900, 12, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in diamond
  (370, 37000, 12, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in diamond
  (371, 37100, 12, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in diamond
  (372, 37200, 12, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in diamond
  (373, 37300, 12, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in diamond
  (374, 37400, 12, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in diamond
  (375, 37500, 12, 'It is formed by two BELDUM joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in diamond
  (376, 37600, 12, 'METANG combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in diamond
  (377, 37700, 12, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in diamond
  (378, 37800, 12, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in diamond
  (379, 37900, 12, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in diamond
  (380, 38000, 12, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in diamond
  (381, 38100, 12, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in diamond
  (382, 38200, 12, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in diamond
  (383, 38300, 12, 'It had been asleep in underground magma ever since it fiercely fought KYOGRE long ago.'),
  -- rayquaza in diamond
  (384, 38400, 12, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in diamond
  (385, 38500, 12, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in diamond
  (386, 38600, 12, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in diamond
  (387, 38700, 12, 'Made from soil, the shell on its back hardens when it drinks water. It lives along lakes.'),
  -- grotle in diamond
  (388, 38800, 12, 'It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell.'),
  -- torterra in diamond
  (389, 38900, 12, 'Small Pokémon occasionally gather on its unmoving back to begin building their nests.'),
  -- chimchar in diamond
  (390, 39000, 12, 'It agilely scales sheer cliffs to live atop craggy mountains. Its fire is put out when it sleeps.'),
  -- monferno in diamond
  (391, 39100, 12, 'To intimidate attackers, it stretches the fire on its tail to make itself appear bigger.'),
  -- infernape in diamond
  (392, 39200, 12, 'It uses a special kind of martial arts involving all its limbs. Its fire never goes out.'),
  -- piplup in diamond
  (393, 39300, 12, 'Because it is very proud, it hates accepting food from people. Its thick down guards it from cold.'),
  -- prinplup in diamond
  (394, 39400, 12, 'It lives alone, away from others. Apparently, every one of them believes it is the most important.'),
  -- empoleon in diamond
  (395, 39500, 12, 'The three horns that extend from its beak attest to its power. The leader has the biggest horns.'),
  -- starly in diamond
  (396, 39600, 12, 'They flock in great numbers. Though small, they flap their wings with great power.'),
  -- staravia in diamond
  (397, 39700, 12, 'It flies around forests and fields in search of bug Pokémon. It stays within a huge flock.'),
  -- staraptor in diamond
  (398, 39800, 12, 'It has a savage nature. It will courageously challenge foes that are much larger.'),
  -- bidoof in diamond
  (399, 39900, 12, 'With nerves of steel, nothing can perturb it. It is more agile and active than it appears.'),
  -- bibarel in diamond
  (400, 40000, 12, 'It makes its nest by damming streams with bark and mud. It is known as an industrious worker.'),
  -- kricketot in diamond
  (401, 40100, 12, 'It shakes its head back to front, causing its antennae to hit each other and sound like a xylophone.'),
  -- kricketune in diamond
  (402, 40200, 12, 'It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib.'),
  -- shinx in diamond
  (403, 40300, 12, 'All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded.'),
  -- luxio in diamond
  (404, 40400, 12, 'Its claws loose electricity with enough amperage to cause fainting. They live in small groups.'),
  -- luxray in diamond
  (405, 40500, 12, 'It has eyes that can see through anything. It spots and captures prey hiding behind objects.'),
  -- budew in diamond
  (406, 40600, 12, 'Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen.'),
  -- roserade in diamond
  (407, 40700, 12, 'It attracts prey with a sweet aroma, then downs it with thorny whips hidden in its arms.'),
  -- cranidos in diamond
  (408, 40800, 12, 'It lived in jungles around 100 million years ago. Its skull is as hard as iron.'),
  -- rampardos in diamond
  (409, 40900, 12, 'Its powerful head butt has enough power to shatter even the most durable things upon impact.'),
  -- shieldon in diamond
  (410, 41000, 12, 'A Pokémon that lived in jungles around 100 million years ago. Its facial hide is extremely hard.'),
  -- bastiodon in diamond
  (411, 41100, 12, 'Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries.'),
  -- burmy in diamond
  (412, 41200, 12, 'To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves.'),
  -- wormadam in diamond
  (413, 41300, 12, 'When BURMY evolved, its cloak became a part of this Pokémon’s body. The cloak is never shed.'),
  -- mothim in diamond
  (414, 41400, 12, 'It loves the honey of flowers and steals honey collected by COMBEE.'),
  -- combee in diamond
  (415, 41500, 12, 'A Pokémon formed by three others. It busily carries sweet floral honey to VESPIQUEN.'),
  -- vespiquen in diamond
  (416, 41600, 12, 'Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by COMBEE.'),
  -- pachirisu in diamond
  (417, 41700, 12, 'It makes fur balls that crackle with static electricity. It stores them with berries in tree holes.'),
  -- buizel in diamond
  (418, 41800, 12, 'It has a flotation sac that is like an inflatable collar. It floats on water with its head out.'),
  -- floatzel in diamond
  (419, 41900, 12, 'It floats using its well-developed flotation sac. It assists in the rescues of drowning people.'),
  -- cherubi in diamond
  (420, 42000, 12, 'The small ball holds the nutrients needed for evolution. Apparently, it is very sweet and tasty.'),
  -- cherrim in diamond
  (421, 42100, 12, 'It blooms during times of strong sunlight. It tries to make up for everything it endured as a bud.'),
  -- shellos in diamond
  (422, 42200, 12, 'Its colors and shapes differ from region to region. In the Sinnoh region, two types are confirmed.'),
  -- gastrodon in diamond
  (423, 42300, 12, 'It has a pliable body without any bones. If any part of its body is torn off, it grows right back.'),
  -- ambipom in diamond
  (424, 42400, 12, 'To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now.'),
  -- drifloon in diamond
  (425, 42500, 12, 'A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons.'),
  -- drifblim in diamond
  (426, 42600, 12, 'It’s drowzy in daytime, but flies off in the evening in big groups. No one knows where they go.'),
  -- buneary in diamond
  (427, 42700, 12, 'It slams foes by sharply uncoiling its rolled ears. It stings enough to make a grown-up cry in pain.'),
  -- lopunny in diamond
  (428, 42800, 12, 'An extremely cautious Pokémon. It cloaks its body with its fluffy ear fur when it senses danger.'),
  -- mismagius in diamond
  (429, 42900, 12, 'Its cries sound like incantations. Those hearing it are tormented by headaches and hallucinations.'),
  -- honchkrow in diamond
  (430, 43000, 12, 'Becoming active at night, it is known to swarm with numerous MURKROW in tow.'),
  -- glameow in diamond
  (431, 43100, 12, 'It claws if displeased and purrs when affectionate. Its fickleness is very popular among some.'),
  -- purugly in diamond
  (432, 43200, 12, 'It is a brazen brute that barges its way into another Pokémon’s nest and claims it as its own.'),
  -- chingling in diamond
  (433, 43300, 12, 'It emits cries by agitating an orb at the back of its throat. It moves with flouncing hops.'),
  -- stunky in diamond
  (434, 43400, 12, 'It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours.'),
  -- skuntank in diamond
  (435, 43500, 12, 'It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet.'),
  -- bronzor in diamond
  (436, 43600, 12, 'Implements shaped like it were discovered in ancient tombs. It is unknown if they are related.'),
  -- bronzong in diamond
  (437, 43700, 12, 'One caused a news sensation when it was dug up at a construction site after a 2,000-year sleep.'),
  -- bonsly in diamond
  (438, 43800, 12, 'It looks as if it is always crying. It is actually adjusting its body’s fluid levels by eliminating excess.'),
  -- mime-jr in diamond
  (439, 43900, 12, 'It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon.'),
  -- happiny in diamond
  (440, 44000, 12, 'It loves round white things. It carries an egg-shaped rock in imitation of CHANSEY.'),
  -- chatot in diamond
  (441, 44100, 12, 'It can learn and speak human words. If they gather, they all learn the same saying.'),
  -- spiritomb in diamond
  (442, 44200, 12, 'A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone.'),
  -- gible in diamond
  (443, 44300, 12, 'It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.'),
  -- gabite in diamond
  (444, 44400, 12, 'There is a long-held belief that medicine made from its scales will heal even incurable illnesses.'),
  -- garchomp in diamond
  (445, 44500, 12, 'When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed.'),
  -- munchlax in diamond
  (446, 44600, 12, 'It wolfs down its weight in food once a day, swallowing food whole with almost no chewing.'),
  -- riolu in diamond
  (447, 44700, 12, 'The aura that emanates from its body intensifies to alert others if it is afraid or sad.'),
  -- lucario in diamond
  (448, 44800, 12, 'It has the ability to sense the auras of all things. It understands human speech.'),
  -- hippopotas in diamond
  (449, 44900, 12, 'It lives in arid places. Instead of perspiration, it expels grainy sand from its body.'),
  -- hippowdon in diamond
  (450, 45000, 12, 'It blasts internally stored sand from ports on its body to create a towering twister for attack.'),
  -- skorupi in diamond
  (451, 45100, 12, 'It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes.'),
  -- drapion in diamond
  (452, 45200, 12, 'It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison.'),
  -- croagunk in diamond
  (453, 45300, 12, 'Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers.'),
  -- toxicroak in diamond
  (454, 45400, 12, 'Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal.'),
  -- carnivine in diamond
  (455, 45500, 12, 'It attracts prey with its sweet- smelling saliva, then chomps down. It takes a whole day to eat prey.'),
  -- finneon in diamond
  (456, 45600, 12, 'After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives.'),
  -- lumineon in diamond
  (457, 45700, 12, 'It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins.'),
  -- mantyke in diamond
  (458, 45800, 12, 'A friendly Pokémon that captures the subtle flows of seawater using its two antennae.'),
  -- snover in diamond
  (459, 45900, 12, 'It lives on snowy mountains. Having had little contact with humans, it is boldly inquisitive.'),
  -- abomasnow in diamond
  (460, 46000, 12, 'It whips up blizzards in mountains that are always buried in snow. It is the abominable snowman.'),
  -- weavile in diamond
  (461, 46100, 12, 'They live in cold regions, forming groups of four or five that hunt prey with impressive coordination.'),
  -- magnezone in diamond
  (462, 46200, 12, 'It evolved from exposure to a special magnetic field. Three units generate magnetism.'),
  -- lickilicky in diamond
  (463, 46300, 12, 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.'),
  -- rhyperior in diamond
  (464, 46400, 12, 'It puts rocks in holes in its palms and uses its muscles to shoot them. GEODUDE are shot at rare times.'),
  -- tangrowth in diamond
  (465, 46500, 12, 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.'),
  -- electivire in diamond
  (466, 46600, 12, 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.'),
  -- magmortar in diamond
  (467, 46700, 12, 'It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters.'),
  -- togekiss in diamond
  (468, 46800, 12, 'It will never appear where there is strife. Its sightings have become rare recently.'),
  -- yanmega in diamond
  (469, 46900, 12, 'By churning its wings, it creates shock waves that inflict critical internal injuries to foes.'),
  -- leafeon in diamond
  (470, 47000, 12, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in diamond
  (471, 47100, 12, 'As a protective technique, it can completely freeze its fur to make its hairs stand like needles.'),
  -- gliscor in diamond
  (472, 47200, 12, 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!'),
  -- mamoswine in diamond
  (473, 47300, 12, 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.'),
  -- porygon-z in diamond
  (474, 47400, 12, 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.'),
  -- gallade in diamond
  (475, 47500, 12, 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.'),
  -- probopass in diamond
  (476, 47600, 12, 'It exudes strong magnetism from all over. It controls three small units called Mini-Noses.'),
  -- dusknoir in diamond
  (477, 47700, 12, 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.'),
  -- froslass in diamond
  (478, 47800, 12, 'It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow.'),
  -- rotom in diamond
  (479, 47900, 12, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- uxie in diamond
  (480, 48000, 12, 'Known as “The Being of Knowledge.” It is said that it can wipe out the memory of those who see its eyes.'),
  -- mesprit in diamond
  (481, 48100, 12, 'Known as “The Being of Emotion.” It taught humans the nobility of sorrow, pain, and joy.'),
  -- azelf in diamond
  (482, 48200, 12, 'Known as “The Being of Willpower.” It sleeps at the bottom of a lake to keep the world in balance.'),
  -- dialga in diamond
  (483, 48300, 12, 'It has the power to control time. It appears in Sinnoh-region myths as an ancient deity.'),
  -- palkia in diamond
  (484, 48400, 12, 'It has the ability to distort space. It is described as a deity in Sinnoh-region mythology.'),
  -- heatran in diamond
  (485, 48500, 12, 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.'),
  -- regigigas in diamond
  (486, 48600, 12, 'There is an enduring legend that states this Pokémon towed continents with ropes.'),
  -- giratina in diamond
  (487, 48700, 12, 'A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery.'),
  -- cresselia in diamond
  (488, 48800, 12, 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.'),
  -- phione in diamond
  (489, 48900, 12, 'A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food.'),
  -- manaphy in diamond
  (490, 49000, 12, 'Born on a cold seafloor, it will swim great distances to return to its birthplace.'),
  -- darkrai in diamond
  (491, 49100, 12, 'It can lull people to sleep and make them dream. It is active during nights of the new moon.'),
  -- shaymin in diamond
  (492, 49200, 12, 'It lives in flower patches and avoids detection by curling up to look like a flowering plant.'),
  -- arceus in diamond
  (493, 49300, 12, 'It is described in mythology as the Pokémon that shaped the universe with its 1,000 arms.'),
  -- bulbasaur in pearl
  (1, 100, 13, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in pearl
  (2, 200, 13, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in pearl
  (3, 300, 13, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in pearl
  (4, 400, 13, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in pearl
  (5, 500, 13, 'In the rocky mountains where CHARMELEON live, their fiery tails shine at night like stars.'),
  -- charizard in pearl
  (6, 600, 13, 'It is said that CHARIZARD’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in pearl
  (7, 700, 13, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in pearl
  (8, 800, 13, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in pearl
  (9, 900, 13, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in pearl
  (10, 1000, 13, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in pearl
  (11, 1100, 13, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in pearl
  (12, 1200, 13, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in pearl
  (13, 1300, 13, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in pearl
  (14, 1400, 13, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in pearl
  (15, 1500, 13, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in pearl
  (16, 1600, 13, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in pearl
  (17, 1700, 13, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in pearl
  (18, 1800, 13, 'By flapping its wings with all its might, PIDGEOT can make a gust of wind capable of bending tall trees.'),
  -- rattata in pearl
  (19, 1900, 13, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in pearl
  (20, 2000, 13, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in pearl
  (21, 2100, 13, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in pearl
  (22, 2200, 13, 'It has the stamina to keep flying all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in pearl
  (23, 2300, 13, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in pearl
  (24, 2400, 13, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in pearl
  (25, 2500, 13, 'If it looses crackling power from the electric pouches on its cheeks, it is being wary.'),
  -- raichu in pearl
  (26, 2600, 13, 'It can loose 100,000-volt bursts of electricity, instantly downing foes several times its size.'),
  -- sandshrew in pearl
  (27, 2700, 13, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in pearl
  (28, 2800, 13, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in pearl
  (29, 2900, 13, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in pearl
  (30, 3000, 13, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than NIDORINO’s.'),
  -- nidoqueen in pearl
  (31, 3100, 13, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in pearl
  (32, 3200, 13, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in pearl
  (33, 3300, 13, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in pearl
  (34, 3400, 13, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in pearl
  (35, 3500, 13, 'It flies using the wings on its back to collect moonlight. This Pokémon is difficult to find.'),
  -- clefable in pearl
  (36, 3600, 13, 'Its hearing is so acute it can hear a pin drop over half a mile away. It lives on quiet mountains.'),
  -- vulpix in pearl
  (37, 3700, 13, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in pearl
  (38, 3800, 13, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in pearl
  (39, 3900, 13, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in pearl
  (40, 4000, 13, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in pearl
  (41, 4100, 13, 'Disliking sunlight, it sleeps deep in forests and caves until sundown.'),
  -- golbat in pearl
  (42, 4200, 13, 'Once it starts sucking blood, it does not stop until it is full. It flies at night in search of prey.'),
  -- oddish in pearl
  (43, 4300, 13, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in pearl
  (44, 4400, 13, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in pearl
  (45, 4500, 13, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in pearl
  (46, 4600, 13, 'Mushrooms named tochukaso grow on its back. They grow along with the host PARAS.'),
  -- parasect in pearl
  (47, 4700, 13, 'It is controlled by a mushroom grown larger than the bug body. It is said to prefer damp places.'),
  -- venonat in pearl
  (48, 4800, 13, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in pearl
  (49, 4900, 13, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in pearl
  (50, 5000, 13, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in pearl
  (51, 5100, 13, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in pearl
  (52, 5200, 13, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in pearl
  (53, 5300, 13, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in pearl
  (54, 5400, 13, 'It never remembers using its odd powers, so it always tilts its head in puzzlement.'),
  -- golduck in pearl
  (55, 5500, 13, 'The flippers of its well-developed limbs give it shocking speed. It is the best swimmer among Pokémon.'),
  -- mankey in pearl
  (56, 5600, 13, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in pearl
  (57, 5700, 13, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in pearl
  (58, 5800, 13, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in pearl
  (59, 5900, 13, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in pearl
  (60, 6000, 13, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in pearl
  (61, 6100, 13, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in pearl
  (62, 6200, 13, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in pearl
  (63, 6300, 13, 'Even while asleep, it maintains a telepathic radar. It teleports when it is threatened.'),
  -- kadabra in pearl
  (64, 6400, 13, 'When it uses its psychic power, it emits strong ha waves that can ruin precision devices.'),
  -- alakazam in pearl
  (65, 6500, 13, 'Its highly developed brain is on par with a supercomputer. It can use all forms of psychic abilities.'),
  -- machop in pearl
  (66, 6600, 13, 'Its muscles never cramp however much it trains. It lives in the mountains away from humans.'),
  -- machoke in pearl
  (67, 6700, 13, 'It can lift a dump truck with one hand. Using that power, it helps people with heavy jobs.'),
  -- machamp in pearl
  (68, 6800, 13, 'It can knock a train flying with a punch. However, it is terrible at delicate work using its fingers.'),
  -- bellsprout in pearl
  (69, 6900, 13, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in pearl
  (70, 7000, 13, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in pearl
  (71, 7100, 13, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in pearl
  (72, 7200, 13, 'It drifts in sea currents. Countless fishermen are hurt by its poison stingers.'),
  -- tentacruel in pearl
  (73, 7300, 13, 'It alerts others to danger by stridently flashing the red orbs on its head.'),
  -- geodude in pearl
  (74, 7400, 13, 'It is impossible to distinguish from rocks. It slams against others in contests of hardness.'),
  -- graveler in pearl
  (75, 7500, 13, 'It tumbles down slopes, heedless of any body parts chipping off. It eats a ton of rocks daily.'),
  -- golem in pearl
  (76, 7600, 13, 'It tumbles down mountains, leaving grooves from peak to base. Stay clear of these grooves.'),
  -- ponyta in pearl
  (77, 7700, 13, 'Its legs grow strong while it chases after its parent. It runs in fields and mountains all day.'),
  -- rapidash in pearl
  (78, 7800, 13, 'It has astounding acceleration. From a standstill, it can reach top speed within 10 steps.'),
  -- slowpoke in pearl
  (79, 7900, 13, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in pearl
  (80, 8000, 13, 'Though usually dim witted, it seems to become inspired if the SHELLDER on its tail bites down.'),
  -- magnemite in pearl
  (81, 8100, 13, 'The units at its sides generate electromagnetic waves that keep it airborne. It feeds on electricity.'),
  -- magneton in pearl
  (82, 8200, 13, 'It is actually three MAGNEMITE linked by magnetism. A group can set off a magnetic storm.'),
  -- farfetchd in pearl
  (83, 8300, 13, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in pearl
  (84, 8400, 13, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in pearl
  (85, 8500, 13, 'When DODUO evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in pearl
  (86, 8600, 13, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in pearl
  (87, 8700, 13, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in pearl
  (88, 8800, 13, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in pearl
  (89, 8900, 13, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in pearl
  (90, 9000, 13, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in pearl
  (91, 9100, 13, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in pearl
  (92, 9200, 13, 'A Pokémon born from poison gases. It defeats even the largest foes by enveloping them in gas.'),
  -- haunter in pearl
  (93, 9300, 13, 'It licks with its gaseous tongue to steal the victim’s life force. It lurks in darkness for prey.'),
  -- gengar in pearl
  (94, 9400, 13, 'Lurking in the shadowy corners of rooms, it awaits chances to steal its prey’s life force.'),
  -- onix in pearl
  (95, 9500, 13, 'It squirms through the ground using its long and rugged body. It always eats while burrowing.'),
  -- drowzee in pearl
  (96, 9600, 13, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in pearl
  (97, 9700, 13, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in pearl
  (98, 9800, 13, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in pearl
  (99, 9900, 13, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in pearl
  (100, 10000, 13, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in pearl
  (101, 10100, 13, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in pearl
  (102, 10200, 13, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in pearl
  (103, 10300, 13, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an EXEGGCUTE.'),
  -- cubone in pearl
  (104, 10400, 13, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in pearl
  (105, 10500, 13, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in pearl
  (106, 10600, 13, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in pearl
  (107, 10700, 13, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in pearl
  (108, 10800, 13, 'Instead of hands, it uses its tongue, which is twice its height. Its sticky saliva grips anything.'),
  -- koffing in pearl
  (109, 10900, 13, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in pearl
  (110, 11000, 13, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in pearl
  (111, 11100, 13, 'Its body is clad in a thick hide, and its tackles topple buildings. Unfortunately, it is not smart.'),
  -- rhydon in pearl
  (112, 11200, 13, 'Its brain developed after it stood up on its hind legs. Its drill horn bores tunnels through solid rock.'),
  -- chansey in pearl
  (113, 11300, 13, 'It lays several eggs a day and won’t share them with those who have evil in their hearts.'),
  -- tangela in pearl
  (114, 11400, 13, 'It is shrouded by blue vines. No one has seen the face hidden behind this growth of vines.'),
  -- kangaskhan in pearl
  (115, 11500, 13, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in pearl
  (116, 11600, 13, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in pearl
  (117, 11700, 13, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in pearl
  (118, 11800, 13, 'It swims at a steady 5 knots. If it senses danger, it will strike back with its sharp horn.'),
  -- seaking in pearl
  (119, 11900, 13, 'To protect its family, it will fight with its drill-sharp horn. It lives in hollowed rocks in streams.'),
  -- staryu in pearl
  (120, 12000, 13, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in pearl
  (121, 12100, 13, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in pearl
  (122, 12200, 13, 'Emanations from its fingertips solidify the air into invisible walls that repel even harsh attacks.'),
  -- scyther in pearl
  (123, 12300, 13, 'It is nearly impossible to parry its attacking scythes. Its movements are like a ninja’s.'),
  -- jynx in pearl
  (124, 12400, 13, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in pearl
  (125, 12500, 13, 'Half of all blackouts occur when this Pokémon appears at power plants and eats electricity.'),
  -- magmar in pearl
  (126, 12600, 13, 'Born in the spout of a volcano, its body is covered by flames that shimmer like the sun.'),
  -- pinsir in pearl
  (127, 12700, 13, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in pearl
  (128, 12800, 13, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in pearl
  (129, 12900, 13, 'It is unable to swim against even slow-moving currents. It always splashes about for some reason.'),
  -- gyarados in pearl
  (130, 13000, 13, 'In ancient literature, there is a record of a GYARADOS that razed a village when violence flared.'),
  -- lapras in pearl
  (131, 13100, 13, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in pearl
  (132, 13200, 13, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in pearl
  (133, 13300, 13, 'A rare Pokémon that adapts to harsh environments by taking on different evolutionary forms.'),
  -- vaporeon in pearl
  (134, 13400, 13, 'It has evolved to be suitable for an aquatic life. It can invisibly melt away into water.'),
  -- jolteon in pearl
  (135, 13500, 13, 'It controls 10,000-volt power and can raise all the fur on its body as if it were sharp needles.'),
  -- flareon in pearl
  (136, 13600, 13, 'It has a flame sac in its body. Its body temperature tops 1,650 degrees Fahrenheit before battle.'),
  -- porygon in pearl
  (137, 13700, 13, 'The world’s first artificially created Pokémon. It can travel through electronic space.'),
  -- omanyte in pearl
  (138, 13800, 13, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in pearl
  (139, 13900, 13, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in pearl
  (140, 14000, 13, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in pearl
  (141, 14100, 13, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in pearl
  (142, 14200, 13, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in pearl
  (143, 14300, 13, 'It stops eating only to sleep. It doesn’t feel full unless it eats nearly 900 pounds a day.'),
  -- articuno in pearl
  (144, 14400, 13, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in pearl
  (145, 14500, 13, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in pearl
  (146, 14600, 13, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in pearl
  (147, 14700, 13, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in pearl
  (148, 14800, 13, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in pearl
  (149, 14900, 13, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in pearl
  (150, 15000, 13, 'A Pokémon created by recombining MEW’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in pearl
  (151, 15100, 13, 'Because it can use all kinds of moves, many scientists believe MEW to be the ancestor of Pokémon.'),
  -- chikorita in pearl
  (152, 15200, 13, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in pearl
  (153, 15300, 13, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in pearl
  (154, 15400, 13, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in pearl
  (155, 15500, 13, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in pearl
  (156, 15600, 13, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in pearl
  (157, 15700, 13, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in pearl
  (158, 15800, 13, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in pearl
  (159, 15900, 13, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in pearl
  (160, 16000, 13, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in pearl
  (161, 16100, 13, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in pearl
  (162, 16200, 13, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in pearl
  (163, 16300, 13, 'It switches its standing foot so quickly, it can’t be seen. It cries at the same time every day.'),
  -- noctowl in pearl
  (164, 16400, 13, 'If it flips its head upside down, it’s a sign that it is engaged in very complex thinking.'),
  -- ledyba in pearl
  (165, 16500, 13, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in pearl
  (166, 16600, 13, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in pearl
  (167, 16700, 13, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in pearl
  (168, 16800, 13, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in pearl
  (169, 16900, 13, 'A Pokémon that gained vastly enhanced flying performance by having its legs turn into wings.'),
  -- chinchou in pearl
  (170, 17000, 13, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in pearl
  (171, 17100, 13, 'LANTURN’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in pearl
  (172, 17200, 13, 'It plays with others by touching tails and setting off sparks. This appears to be a test of courage.'),
  -- cleffa in pearl
  (173, 17300, 13, 'Many appear when the night skies are filled with shooting stars. They disappear with sunrise.'),
  -- igglybuff in pearl
  (174, 17400, 13, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in pearl
  (175, 17500, 13, 'Its shell is said to be stuffed with happiness that it shares with kindhearted people.'),
  -- togetic in pearl
  (176, 17600, 13, 'It is said to appear in front of kindly people to scatter a glowing down called “joy dust.”'),
  -- natu in pearl
  (177, 17700, 13, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in pearl
  (178, 17800, 13, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in pearl
  (179, 17900, 13, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in pearl
  (180, 18000, 13, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in pearl
  (181, 18100, 13, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in pearl
  (182, 18200, 13, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in pearl
  (183, 18300, 13, 'The tip of its tail is filled with oil that is lighter than water, so it acts as a float.'),
  -- azumarill in pearl
  (184, 18400, 13, 'Its long ears are superb sensors. It can distinguish the movements of living things on riverbeds.'),
  -- sudowoodo in pearl
  (185, 18500, 13, 'It stands along paths pretending to be a tree. If it starts raining, it seems to disappear.'),
  -- politoed in pearl
  (186, 18600, 13, 'It gathers groups of others as their leader. Its cries make POLIWAG obey.'),
  -- hoppip in pearl
  (187, 18700, 13, 'It drifts on winds. It is said that when HOPPIP gather in fields and mountains, spring is on the way.'),
  -- skiploom in pearl
  (188, 18800, 13, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in pearl
  (189, 18900, 13, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in pearl
  (190, 19000, 13, 'It lives atop giant trees. It wraps its tail around a branch so it won’t fall off while asleep.'),
  -- sunkern in pearl
  (191, 19100, 13, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in pearl
  (192, 19200, 13, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in pearl
  (193, 19300, 13, 'Its eyes can see 360 degrees without moving its head. It won’t miss prey--even those behind it.'),
  -- wooper in pearl
  (194, 19400, 13, 'When the temperature cools in the evening, they emerge from water to seek food along the shore.'),
  -- quagsire in pearl
  (195, 19500, 13, 'A dim-witted Pokémon. It doesn’t care if it bumps its head into boats or rocks while swimming.'),
  -- espeon in pearl
  (196, 19600, 13, 'Its fur has the look and feel of velvet. The orb on its forehead glows when it uses psycho-power.'),
  -- umbreon in pearl
  (197, 19700, 13, 'The light of the moon changed EEVEE’s genetic structure. It lurks in darkness for prey.'),
  -- murkrow in pearl
  (198, 19800, 13, 'It appears near travelers to lure them into deep forests. It is said to carry misfortune.'),
  -- slowking in pearl
  (199, 19900, 13, 'Being bitten by SHELLDER gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in pearl
  (200, 20000, 13, 'It gets nourishment from fear that it absorbs into its red orbs. In daytime, it sleeps in darkness.'),
  -- unown in pearl
  (201, 20100, 13, 'They seem to communicate among each other telepathically. They are always found stuck on walls.'),
  -- wobbuffet in pearl
  (202, 20200, 13, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in pearl
  (203, 20300, 13, 'While it sleeps, the head on its tail keeps watch. The tail doesn’t need to sleep.'),
  -- pineco in pearl
  (204, 20400, 13, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in pearl
  (205, 20500, 13, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in pearl
  (206, 20600, 13, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in pearl
  (207, 20700, 13, 'It sails on the winds with its limbs extended to strike from the sky. It aims for the prey’s face.'),
  -- steelix in pearl
  (208, 20800, 13, 'It chews its way through boulders with its sturdy jaws. Its eyes can see in the darkness underground.'),
  -- snubbull in pearl
  (209, 20900, 13, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in pearl
  (210, 21000, 13, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in pearl
  (211, 21100, 13, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in pearl
  (212, 21200, 13, 'It has a steel-hard body. It intimidates foes by upraising its eye-patterned pincers.'),
  -- shuckle in pearl
  (213, 21300, 13, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in pearl
  (214, 21400, 13, 'With powerful legs and claws, it generates enough power to hurl foes over great distances.'),
  -- sneasel in pearl
  (215, 21500, 13, 'It is extremely vicious and will not stop attacking until its foe is incapable of moving.'),
  -- teddiursa in pearl
  (216, 21600, 13, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in pearl
  (217, 21700, 13, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in pearl
  (218, 21800, 13, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in pearl
  (219, 21900, 13, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in pearl
  (220, 22000, 13, 'It loves eating mushrooms that grow under dead grass. It also finds hot springs while foraging.'),
  -- piloswine in pearl
  (221, 22100, 13, 'Its shaggy coat makes it unable to see. It checks surroundings with its sensitive nose instead.'),
  -- corsola in pearl
  (222, 22200, 13, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in pearl
  (223, 22300, 13, 'It clings to MANTINE to feed on the big Pokémon’s scraps. This is an adaptation to avoid foes.'),
  -- octillery in pearl
  (224, 22400, 13, 'It obscures its foe’s vision by spitting a cloud of murky ink. It makes its nest among boulders.'),
  -- delibird in pearl
  (225, 22500, 13, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in pearl
  (226, 22600, 13, 'It swims elegantly, mindless of REMORAID hitching on to its broad fins. It has a docile nature.'),
  -- skarmory in pearl
  (227, 22700, 13, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in pearl
  (228, 22800, 13, 'It conveys its feelings using different cries. It works in a pack to cleverly take down prey.'),
  -- houndoom in pearl
  (229, 22900, 13, 'Long ago, people imagined its eerie howls to be the call of the grim reaper.'),
  -- kingdra in pearl
  (230, 23000, 13, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in pearl
  (231, 23100, 13, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in pearl
  (232, 23200, 13, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in pearl
  (233, 23300, 13, 'With planetary development software installed, it became capable of working in space.'),
  -- stantler in pearl
  (234, 23400, 13, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in pearl
  (235, 23500, 13, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in pearl
  (236, 23600, 13, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in pearl
  (237, 23700, 13, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in pearl
  (238, 23800, 13, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in pearl
  (239, 23900, 13, 'It generates electricity by whirling its arms. However, it can’t store the energy it makes.'),
  -- magby in pearl
  (240, 24000, 13, 'Its body temperature is around 1,100 degrees F. It is healthy if it is breathing yellow flames.'),
  -- miltank in pearl
  (241, 24100, 13, 'It is said that kids who drink MILTANK’s milk grow up to become hearty, healthy adults.'),
  -- blissey in pearl
  (242, 24200, 13, 'It is a Pokémon that delivers happiness. Eating its egg is said to make one kind to everyone.'),
  -- raikou in pearl
  (243, 24300, 13, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in pearl
  (244, 24400, 13, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in pearl
  (245, 24500, 13, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in pearl
  (246, 24600, 13, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in pearl
  (247, 24700, 13, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in pearl
  (248, 24800, 13, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in pearl
  (249, 24900, 13, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in pearl
  (250, 25000, 13, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in pearl
  (251, 25100, 13, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in pearl
  (252, 25200, 13, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in pearl
  (253, 25300, 13, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in pearl
  (254, 25400, 13, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in pearl
  (255, 25500, 13, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in pearl
  (256, 25600, 13, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in pearl
  (257, 25700, 13, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in pearl
  (258, 25800, 13, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in pearl
  (259, 25900, 13, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in pearl
  (260, 26000, 13, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in pearl
  (261, 26100, 13, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in pearl
  (262, 26200, 13, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in pearl
  (263, 26300, 13, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in pearl
  (264, 26400, 13, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in pearl
  (265, 26500, 13, 'It spits a white silk that turns sticky when it contacts air. It is used to immobilize foes.'),
  -- silcoon in pearl
  (266, 26600, 13, 'It drinks dew that collects on its silk and waits for evolution. Its hard cocoon repels attacks.'),
  -- beautifly in pearl
  (267, 26700, 13, 'When flower fields bloom, it flits around, collecting pollen. Despite its appearance, it is savage.'),
  -- cascoon in pearl
  (268, 26800, 13, 'Encased within its tough cocoon, it endures attacks. It never forgets the appearance of its foes.'),
  -- dustox in pearl
  (269, 26900, 13, 'It violently flutters its wings to scatter toxic dust when attacked. It becomes active after sunset.'),
  -- lotad in pearl
  (270, 27000, 13, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in pearl
  (271, 27100, 13, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in pearl
  (272, 27200, 13, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in pearl
  (273, 27300, 13, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in pearl
  (274, 27400, 13, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in pearl
  (275, 27500, 13, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in pearl
  (276, 27600, 13, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in pearl
  (277, 27700, 13, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in pearl
  (278, 27800, 13, 'Catching sea winds with its long wings, it soars as if it were a glider. It folds its wings to rest.'),
  -- pelipper in pearl
  (279, 27900, 13, 'It acts as a delivery service by carrying small Pokémon in its bill. It bobs on the waves to rest.'),
  -- ralts in pearl
  (280, 28000, 13, 'It uses the horns on its head to sense human emotions. It is said to appear in front of cheerful people.'),
  -- kirlia in pearl
  (281, 28100, 13, 'It is highly perceptive of its Trainer’s feelings. It dances when it is feeling happy.'),
  -- gardevoir in pearl
  (282, 28200, 13, 'It will try to guard its trusted Trainer with its life. It has the ability to see the future.'),
  -- surskit in pearl
  (283, 28300, 13, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in pearl
  (284, 28400, 13, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in pearl
  (285, 28500, 13, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in pearl
  (286, 28600, 13, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in pearl
  (287, 28700, 13, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in pearl
  (288, 28800, 13, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in pearl
  (289, 28900, 13, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in pearl
  (290, 29000, 13, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in pearl
  (291, 29100, 13, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in pearl
  (292, 29200, 13, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in pearl
  (293, 29300, 13, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in pearl
  (294, 29400, 13, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in pearl
  (295, 29500, 13, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in pearl
  (296, 29600, 13, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in pearl
  (297, 29700, 13, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in pearl
  (298, 29800, 13, 'Its tail is filled with nutrients necessary for growth. It plays by bouncing on its tail.'),
  -- nosepass in pearl
  (299, 29900, 13, 'Its nose is a magnet. As a result, this Pokémon always keeps its face pointing north.'),
  -- skitty in pearl
  (300, 30000, 13, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in pearl
  (301, 30100, 13, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in pearl
  (302, 30200, 13, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in pearl
  (303, 30300, 13, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in pearl
  (304, 30400, 13, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in pearl
  (305, 30500, 13, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in pearl
  (306, 30600, 13, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in pearl
  (307, 30700, 13, 'It never misses its daily yoga workouts, and it heightens its spiritual power through meditation.'),
  -- medicham in pearl
  (308, 30800, 13, 'Through daily meditation, it hones its spiritual power. It can sense what others are thinking.'),
  -- electrike in pearl
  (309, 30900, 13, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in pearl
  (310, 31000, 13, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in pearl
  (311, 31100, 13, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in pearl
  (312, 31200, 13, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in pearl
  (313, 31300, 13, 'It communicates with others by lighting up its rear at night. It loves ILLUMISE’s sweet aroma.'),
  -- illumise in pearl
  (314, 31400, 13, 'With its sweet aroma, it guides VOLBEAT to draw signs with light in the night sky.'),
  -- roselia in pearl
  (315, 31500, 13, 'The beautiful flowers on its arms have toxic thorns. Don’t even think about picking those flowers.'),
  -- gulpin in pearl
  (316, 31600, 13, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in pearl
  (317, 31700, 13, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in pearl
  (318, 31800, 13, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in pearl
  (319, 31900, 13, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in pearl
  (320, 32000, 13, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in pearl
  (321, 32100, 13, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in pearl
  (322, 32200, 13, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in pearl
  (323, 32300, 13, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in pearl
  (324, 32400, 13, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in pearl
  (325, 32500, 13, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in pearl
  (326, 32600, 13, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in pearl
  (327, 32700, 13, 'No two SPINDA have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in pearl
  (328, 32800, 13, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in pearl
  (329, 32900, 13, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in pearl
  (330, 33000, 13, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in pearl
  (331, 33100, 13, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in pearl
  (332, 33200, 13, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in pearl
  (333, 33300, 13, 'Its wings are like cotton tufts. If it perches on someone’s head, it looks like a cotton hat.'),
  -- altaria in pearl
  (334, 33400, 13, 'It looks like a fluffy cloud when it is in flight. It hums with its soprano voice.'),
  -- zangoose in pearl
  (335, 33500, 13, 'It has feuded with SEVIPER for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in pearl
  (336, 33600, 13, 'For many generations, it has feuded with ZANGOOSE. It whets its bladed tail on rocks for battle.'),
  -- lunatone in pearl
  (337, 33700, 13, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in pearl
  (338, 33800, 13, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in pearl
  (339, 33900, 13, 'Its whiskers make a superb radar. They are used to locate prey, even in the murkiest of water.'),
  -- whiscash in pearl
  (340, 34000, 13, 'As a result of causing tremors by thrashing about, it developed the ability to foretell real quakes.'),
  -- corphish in pearl
  (341, 34100, 13, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in pearl
  (342, 34200, 13, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in pearl
  (343, 34300, 13, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in pearl
  (344, 34400, 13, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in pearl
  (345, 34500, 13, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in pearl
  (346, 34600, 13, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in pearl
  (347, 34700, 13, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in pearl
  (348, 34800, 13, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in pearl
  (349, 34900, 13, 'It eats anything, so it can even live in polluted streams and lakes. No one pays any attention to it.'),
  -- milotic in pearl
  (350, 35000, 13, 'It is the world’s most beautiful Pokémon. There are many works of art featuring MILOTIC.'),
  -- castform in pearl
  (351, 35100, 13, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in pearl
  (352, 35200, 13, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in pearl
  (353, 35300, 13, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in pearl
  (354, 35400, 13, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in pearl
  (355, 35500, 13, 'It doggedly pursues its prey wherever it goes. However, the chase is abandoned at sunrise.'),
  -- dusclops in pearl
  (356, 35600, 13, 'Its body is hollow. It is said that those who look into its body are sucked into the void.'),
  -- tropius in pearl
  (357, 35700, 13, 'Because it continually ate only its favorite fruit, the fruit started growing around its neck.'),
  -- chimecho in pearl
  (358, 35800, 13, 'Emitting ultrasonic cries, it floats on winds to travel great distances.'),
  -- absol in pearl
  (359, 35900, 13, 'It senses coming disasters and appears before people only to warn them of impending danger.'),
  -- wynaut in pearl
  (360, 36000, 13, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in pearl
  (361, 36100, 13, 'In the snow country, certain folklore says a house will prosper if a SNORUNT lives there.'),
  -- glalie in pearl
  (362, 36200, 13, 'To protect itself, it clads its body in an armor of ice, made by freezing moisture in the air.'),
  -- spheal in pearl
  (363, 36300, 13, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in pearl
  (364, 36400, 13, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in pearl
  (365, 36500, 13, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in pearl
  (366, 36600, 13, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in pearl
  (367, 36700, 13, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in pearl
  (368, 36800, 13, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in pearl
  (369, 36900, 13, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in pearl
  (370, 37000, 13, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in pearl
  (371, 37100, 13, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in pearl
  (372, 37200, 13, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in pearl
  (373, 37300, 13, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in pearl
  (374, 37400, 13, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in pearl
  (375, 37500, 13, 'It is formed by two BELDUM joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in pearl
  (376, 37600, 13, 'METANG combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in pearl
  (377, 37700, 13, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in pearl
  (378, 37800, 13, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in pearl
  (379, 37900, 13, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in pearl
  (380, 38000, 13, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in pearl
  (381, 38100, 13, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in pearl
  (382, 38200, 13, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in pearl
  (383, 38300, 13, 'It had been asleep in underground magma ever since it fiercely fought KYOGRE long ago.'),
  -- rayquaza in pearl
  (384, 38400, 13, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in pearl
  (385, 38500, 13, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in pearl
  (386, 38600, 13, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in pearl
  (387, 38700, 13, 'It undertakes photosynthesis with its body, making oxygen. The leaf on its head wilts if it is thirsty.'),
  -- grotle in pearl
  (388, 38800, 13, 'The shell is hardened soil. Some Pokémon come to peck the berries growing on the trees on its back.'),
  -- torterra in pearl
  (389, 38900, 13, 'Groups of this Pokémon migrating in search of water have been mistaken for “moving forests.”'),
  -- chimchar in pearl
  (390, 39000, 13, 'Its fiery rear end is fueled by gas made in its belly. Even rain can’t extinguish the fire.'),
  -- monferno in pearl
  (391, 39100, 13, 'It uses ceilings and walls to launch aerial attacks. Its fiery tail is but one weapon.'),
  -- infernape in pearl
  (392, 39200, 13, 'Its crown of fire is indicative of its fiery nature. It is beaten by none in terms of quickness.'),
  -- piplup in pearl
  (393, 39300, 13, 'It lives along shores in northern countries. A skilled swimmer, it dives for over 10 minutes to hunt.'),
  -- prinplup in pearl
  (394, 39400, 13, 'Its wings deliver wicked blows that snap even the thickest of trees. It searches for prey in icy seas.'),
  -- empoleon in pearl
  (395, 39500, 13, 'It swims as fast as a jet boat. The edges of its wings are sharp and can slice apart drifting ice.'),
  -- starly in pearl
  (396, 39600, 13, 'Usually with a large flock, it is barely noticeable when alone. Its cries are very strident.'),
  -- staravia in pearl
  (397, 39700, 13, 'It lives in forests and fields. Squabbles over territory occur when flocks collide.'),
  -- staraptor in pearl
  (398, 39800, 13, 'The muscles in its wings and legs are strong. It can easily fly while gripping a small Pokémon.'),
  -- bidoof in pearl
  (399, 39900, 13, 'It constantly gnaws on logs and rocks to whittle down its front teeth. It nests alongside water.'),
  -- bibarel in pearl
  (400, 40000, 13, 'While its movements out of water are sluggish, it can swim as fast as any FEEBAS.'),
  -- kricketot in pearl
  (401, 40100, 13, 'It chats with others using the sounds of its colliding antennae. These sounds are fall hallmarks.'),
  -- kricketune in pearl
  (402, 40200, 13, 'It signals its emotions with its melodies. Scientists are studying these melodic patterns.'),
  -- shinx in pearl
  (403, 40300, 13, 'Its forelegs have a muscle-based system of generating electricity. Its body shines if endangered.'),
  -- luxio in pearl
  (404, 40400, 13, 'It rests its forelegs on others to communicate with rhythmic electric pulses from its claws.'),
  -- luxray in pearl
  (405, 40500, 13, 'When its eyes gleam gold, it can spot hiding prey--even those taking shelter behind a wall.'),
  -- budew in pearl
  (406, 40600, 13, 'It lives alongside clear ponds. It scatters pollen that induces harsh sneezing and runny noses.'),
  -- roserade in pearl
  (407, 40700, 13, 'With the movements of a dancer, it strikes with whips that are densely lined with poison thorns.'),
  -- cranidos in pearl
  (408, 40800, 13, 'It was resurrected from an iron ball-like fossil. It downs prey with its head butts.'),
  -- rampardos in pearl
  (409, 40900, 13, 'Its skull is as hard as iron. It is a brute that tears down jungle trees while catching prey.'),
  -- shieldon in pearl
  (410, 41000, 13, 'It habitually polishes its face by rubbing it against tree trunks. It is weak to attacks from behind.'),
  -- bastiodon in pearl
  (411, 41100, 13, 'When attacked, they form a wall with their shieldlike faces to protect their young.'),
  -- burmy in pearl
  (412, 41200, 13, 'If its cloak is broken in battle, it quickly remakes the cloak with materials nearby.'),
  -- wormadam in pearl
  (413, 41300, 13, 'Its appearance changes depending on where it evolved. The materials on hand become a part of its body.'),
  -- mothim in pearl
  (414, 41400, 13, 'It does not keep a nest. It flies over fields and mountains in constant search of floral honey.'),
  -- combee in pearl
  (415, 41500, 13, 'It collects and delivers honey to its colony. At night, they cluster to form a beehive and sleep.'),
  -- vespiquen in pearl
  (416, 41600, 13, 'When endangered, grubs from its six-cell honeycomb strike back. There is only one in a colony.'),
  -- pachirisu in pearl
  (417, 41700, 13, 'It makes electricity with pouches in its cheeks and shoots charges from its tail. It lives atop trees.'),
  -- buizel in pearl
  (418, 41800, 13, 'It swims by rotating its two tails like a screw. When it dives, its flotation sac collapses.'),
  -- floatzel in pearl
  (419, 41900, 13, 'Its flotation sac developed as a result of pursuing aquatic prey. It can double as a rubber raft.'),
  -- cherubi in pearl
  (420, 42000, 13, 'Sunlight colors it red. When the small ball is drained of nutrients, it shrivels to herald evolution.'),
  -- cherrim in pearl
  (421, 42100, 13, 'It is docile as a bud, but turns cheerful when it blooms. It folds back into a bud if sunlight wanes.'),
  -- shellos in pearl
  (422, 42200, 13, 'It lives along bodies of water. Its body shape has changed to suit its habitat.'),
  -- gastrodon in pearl
  (423, 42300, 13, 'It apparently had a huge shell for protection in ancient times. It lives in shallow tidal pools.'),
  -- ambipom in pearl
  (424, 42400, 13, 'They work in large colonies and make rings by linking their tails, apparently in friendship.'),
  -- drifloon in pearl
  (425, 42500, 13, 'It tugs on the hands of children to steal them away. However, it gets pulled around instead.'),
  -- drifblim in pearl
  (426, 42600, 13, 'It carries people and Pokémon when it flies. But since it only drifts, it can end up anywhere.'),
  -- buneary in pearl
  (427, 42700, 13, 'When it senses danger, it perks up its ears. On cold nights, it sleeps with its head tucked into its fur.'),
  -- lopunny in pearl
  (428, 42800, 13, 'It is very conscious of its looks and never fails to groom its ears. It runs with sprightly jumps.'),
  -- mismagius in pearl
  (429, 42900, 13, 'It chants incantations. While they usually torment targets, some chants bring happiness.'),
  -- honchkrow in pearl
  (430, 43000, 13, 'It makes its MURKROW cronies bring it food. It idles its time away, grooming itself in its nest.'),
  -- glameow in pearl
  (431, 43100, 13, 'With its sharp glare, it puts foes in a mild hypnotic state. It is a very fickle Pokémon.'),
  -- purugly in pearl
  (432, 43200, 13, 'To make itself appear intimidatingly beefy, it tightly cinches its waist with its twin tails.'),
  -- chingling in pearl
  (433, 43300, 13, 'Each time it hops, it makes a ringing sound. It deafens foes by emitting high-frequency cries.'),
  -- stunky in pearl
  (434, 43400, 13, 'It sprays a nose-curling, stinky fluid from its rear to repel attackers.'),
  -- skuntank in pearl
  (435, 43500, 13, 'It sprays a stinky fluid from its tail. The fluid smells worse the longer it is allowed to fester.'),
  -- bronzor in pearl
  (436, 43600, 13, 'X-ray photos were taken to check its body structure. Nothing appeared, however.'),
  -- bronzong in pearl
  (437, 43700, 13, 'It can summon rain clouds. People long ago revered it as the bringer of plentiful harvests.'),
  -- bonsly in pearl
  (438, 43800, 13, 'It prefers arid environments. It leaks water from its eyes to adjust its body’s fluid levels.'),
  -- mime-jr in pearl
  (439, 43900, 13, 'It likes places where people gather. It mimics foes to confuse them, then makes its getaway.'),
  -- happiny in pearl
  (440, 44000, 13, 'It carries a round, egg-shaped rock in its belly pouch and gives the rock to its friends.'),
  -- chatot in pearl
  (441, 44100, 13, 'It keeps rhythm by flicking its tail feathers like a metronome. It imitates human speech.'),
  -- spiritomb in pearl
  (442, 44200, 13, 'It was bound to a fissure in an odd keystone as punishment for misdeeds 500 years ago.'),
  -- gible in pearl
  (443, 44300, 13, 'It once lived in the tropics. To avoid the cold, it lives in caves warmed by geothermal heat.'),
  -- gabite in pearl
  (444, 44400, 13, 'It habitually digs up and hoards gems in its nest. Its loot is constantly targeted by thieves.'),
  -- garchomp in pearl
  (445, 44500, 13, 'It flies at speeds equal to a jet fighter plane. It never allows its prey to escape.'),
  -- munchlax in pearl
  (446, 44600, 13, 'It hides food under its long body hair. However, it forgets it has hidden the food.'),
  -- riolu in pearl
  (447, 44700, 13, 'Its body is lithe yet powerful. It can crest three mountains and cross two canyons in one night.'),
  -- lucario in pearl
  (448, 44800, 13, 'By catching the aura emanating from others, it can read their thoughts and movements.'),
  -- hippopotas in pearl
  (449, 44900, 13, 'It enshrouds itself with sand to protect itself from germs. It does not enjoy getting wet.'),
  -- hippowdon in pearl
  (450, 45000, 13, 'Its huge mouth is almost seven feet across. It has enough power to completely crush a car.'),
  -- skorupi in pearl
  (451, 45100, 13, 'It lives in arid lands. It buries itself in sand and lies in wait for unsuspecting prey.'),
  -- drapion in pearl
  (452, 45200, 13, 'Its body is encased in a sturdy shell. Its head rotates 180 degrees, eliminating blind spots.'),
  -- croagunk in pearl
  (453, 45300, 13, 'Inflating its poison sacs, it makes an eerie blubbering sound for intimidation.'),
  -- toxicroak in pearl
  (454, 45400, 13, 'The toxin made in its poison sacs is pumped to the knuckle claws through tubes down its arms.'),
  -- carnivine in pearl
  (455, 45500, 13, 'Hanging from branches using its tentacles, it looks like a plant. It awaits prey, mouth wide open.'),
  -- finneon in pearl
  (456, 45600, 13, 'The way its two tail fins flutter while it swims has earned it the nickname “BEAUTIFLY of the Sea.”'),
  -- lumineon in pearl
  (457, 45700, 13, 'To avoid detection by predators, it crawls along the seafloor using the two fins on its chest.'),
  -- mantyke in pearl
  (458, 45800, 13, 'Scientists discovered that the distinctive patterns on its back differ by region.'),
  -- snover in pearl
  (459, 45900, 13, 'In the spring, it grows berries with the texture of frozen treats around its belly.'),
  -- abomasnow in pearl
  (460, 46000, 13, 'It blankets wide areas in snow by whipping up blizzards. It is also known as “The Ice Monster.”'),
  -- weavile in pearl
  (461, 46100, 13, 'It sends signals to others by carving odd patterns in frost- covered trees and ice.'),
  -- magnezone in pearl
  (462, 46200, 13, 'It evolved from exposure to a special magnetic field. Three units generate magnetism.'),
  -- lickilicky in pearl
  (463, 46300, 13, 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.'),
  -- rhyperior in pearl
  (464, 46400, 13, 'It puts rocks in holes in its palms and uses its muscles to shoot them. GEODUDE are shot at rare times.'),
  -- tangrowth in pearl
  (465, 46500, 13, 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.'),
  -- electivire in pearl
  (466, 46600, 13, 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.'),
  -- magmortar in pearl
  (467, 46700, 13, 'It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters.'),
  -- togekiss in pearl
  (468, 46800, 13, 'It will never appear where there is strife. Its sightings have become rare recently.'),
  -- yanmega in pearl
  (469, 46900, 13, 'By churning its wings, it creates shock waves that inflict critical internal injuries to foes.'),
  -- leafeon in pearl
  (470, 47000, 13, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in pearl
  (471, 47100, 13, 'As a protective technique, it can completely freeze its fur to make its hairs stand like needles.'),
  -- gliscor in pearl
  (472, 47200, 13, 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!'),
  -- mamoswine in pearl
  (473, 47300, 13, 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.'),
  -- porygon-z in pearl
  (474, 47400, 13, 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.'),
  -- gallade in pearl
  (475, 47500, 13, 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.'),
  -- probopass in pearl
  (476, 47600, 13, 'It exudes strong magnetism from all over. It controls three small units called Mini-Noses.'),
  -- dusknoir in pearl
  (477, 47700, 13, 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.'),
  -- froslass in pearl
  (478, 47800, 13, 'It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow.'),
  -- rotom in pearl
  (479, 47900, 13, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- uxie in pearl
  (480, 48000, 13, 'It is said that its emergence gave humans the intelligence to improve their quality of life.'),
  -- mesprit in pearl
  (481, 48100, 13, 'It sleeps at the bottom of a lake. Its spirit is said to leave its body to fly on the lake’s surface.'),
  -- azelf in pearl
  (482, 48200, 13, 'It is thought that UXIE, MESPRIT and AZELF all came from the same egg.'),
  -- dialga in pearl
  (483, 48300, 13, 'A Pokémon spoken of in legend. It is said that time began moving when DIALGA was born.'),
  -- palkia in pearl
  (484, 48400, 13, 'It is said to live in a gap in the spatial dimension parallel to ours. It appears in mythology.'),
  -- heatran in pearl
  (485, 48500, 13, 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.'),
  -- regigigas in pearl
  (486, 48600, 13, 'There is an enduring legend that states this Pokémon towed continents with ropes.'),
  -- giratina in pearl
  (487, 48700, 13, 'A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery.'),
  -- cresselia in pearl
  (488, 48800, 13, 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.'),
  -- phione in pearl
  (489, 48900, 13, 'A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food.'),
  -- manaphy in pearl
  (490, 49000, 13, 'Water makes up 80% of its body. This Pokémon is easily affected by its environment.'),
  -- darkrai in pearl
  (491, 49100, 13, 'Folklore has it that on moonless nights, this Pokémon will make people see horrific nightmares.'),
  -- shaymin in pearl
  (492, 49200, 13, 'It can dissolve toxins in the air to instantly transform ruined land into a lush field of flowers.'),
  -- arceus in pearl
  (493, 49300, 13, 'It is told in mythology that this Pokémon was born before the universe even existed.'),
  -- bulbasaur in platinum
  (1, 100, 14, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in platinum
  (2, 200, 14, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in platinum
  (3, 300, 14, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in platinum
  (4, 400, 14, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in platinum
  (5, 500, 14, 'In the rocky mountains where CHARMELEON live, their fiery tails shine at night like stars.'),
  -- charizard in platinum
  (6, 600, 14, 'It is said that CHARIZARD’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in platinum
  (7, 700, 14, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in platinum
  (8, 800, 14, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in platinum
  (9, 900, 14, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in platinum
  (10, 1000, 14, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in platinum
  (11, 1100, 14, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in platinum
  (12, 1200, 14, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in platinum
  (13, 1300, 14, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in platinum
  (14, 1400, 14, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in platinum
  (15, 1500, 14, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in platinum
  (16, 1600, 14, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in platinum
  (17, 1700, 14, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in platinum
  (18, 1800, 14, 'By flapping its wings with all its might, PIDGEOT can make a gust of wind capable of bending tall trees.'),
  -- rattata in platinum
  (19, 1900, 14, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in platinum
  (20, 2000, 14, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in platinum
  (21, 2100, 14, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in platinum
  (22, 2200, 14, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in platinum
  (23, 2300, 14, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in platinum
  (24, 2400, 14, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in platinum
  (25, 2500, 14, 'It occasionally uses an electric shock to recharge a fellow PIKACHU that is in a weakened state.'),
  -- raichu in platinum
  (26, 2600, 14, 'Its tail discharges electricity into the ground, protecting it from getting shocked.'),
  -- sandshrew in platinum
  (27, 2700, 14, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in platinum
  (28, 2800, 14, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in platinum
  (29, 2900, 14, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in platinum
  (30, 3000, 14, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than NIDORINO’s.'),
  -- nidoqueen in platinum
  (31, 3100, 14, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in platinum
  (32, 3200, 14, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in platinum
  (33, 3300, 14, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in platinum
  (34, 3400, 14, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in platinum
  (35, 3500, 14, 'It is said that happiness will come to those who see a gathering of CLEFAIRY dancing under a full moon.'),
  -- clefable in platinum
  (36, 3600, 14, 'It is very wary and rarely shows itself to people. Its ears can hear a pin drop over half a mile away.'),
  -- vulpix in platinum
  (37, 3700, 14, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in platinum
  (38, 3800, 14, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in platinum
  (39, 3900, 14, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in platinum
  (40, 4000, 14, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in platinum
  (41, 4100, 14, 'It checks its surroundings and location using reflections of the ultrasonic waves from its mouth.'),
  -- golbat in platinum
  (42, 4200, 14, 'Its sharp fangs puncture the toughest of hides and have small holes for greedily sucking blood.'),
  -- oddish in platinum
  (43, 4300, 14, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in platinum
  (44, 4400, 14, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in platinum
  (45, 4500, 14, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in platinum
  (46, 4600, 14, 'Mushrooms named tochukaso grow on its back. They grow along with the host PARAS.'),
  -- parasect in platinum
  (47, 4700, 14, 'A mushroom grown larger than the host’s body controls PARASECT. It scatters poisonous spores.'),
  -- venonat in platinum
  (48, 4800, 14, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in platinum
  (49, 4900, 14, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in platinum
  (50, 5000, 14, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in platinum
  (51, 5100, 14, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in platinum
  (52, 5200, 14, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in platinum
  (53, 5300, 14, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in platinum
  (54, 5400, 14, 'Overwhelmed by enigmatic abilities, it suffers a constant headache. It sometimes uses mysterious powers.'),
  -- golduck in platinum
  (55, 5500, 14, 'It is seen swimming dynamically and elegantly using its well-developed limbs and flippers.'),
  -- mankey in platinum
  (56, 5600, 14, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in platinum
  (57, 5700, 14, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in platinum
  (58, 5800, 14, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in platinum
  (59, 5900, 14, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in platinum
  (60, 6000, 14, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in platinum
  (61, 6100, 14, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in platinum
  (62, 6200, 14, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in platinum
  (63, 6300, 14, 'Using its psychic power is such a strain on its brain that it needs to sleep for 18 hours a day.'),
  -- kadabra in platinum
  (64, 6400, 14, 'It stares at its silver spoon to focus its mind. It emits more alpha waves while doing so.'),
  -- alakazam in platinum
  (65, 6500, 14, 'The spoons clutched in its hands are said to have been created by its psychic powers.'),
  -- machop in platinum
  (66, 6600, 14, 'Though small in stature, it is powerful enough to easily heft and throw a number of GEODUDE at once.'),
  -- machoke in platinum
  (67, 6700, 14, 'It happily carries heavy cargo to toughen up. It willingly does hard work for people.'),
  -- machamp in platinum
  (68, 6800, 14, 'Its four muscled arms slam foes with powerful punches and chops at blinding speed.'),
  -- bellsprout in platinum
  (69, 6900, 14, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in platinum
  (70, 7000, 14, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in platinum
  (71, 7100, 14, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in platinum
  (72, 7200, 14, 'Because its body is almost entirely composed of water, it shrivels up if it is washed ashore.'),
  -- tentacruel in platinum
  (73, 7300, 14, 'It extends its 80 tentacles to form an encircling poisonous net that is difficult to escape.'),
  -- geodude in platinum
  (74, 7400, 14, 'At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily.'),
  -- graveler in platinum
  (75, 7500, 14, 'It rolls on mountain paths to move. Once it builds momentum, no Pokémon can stop it without difficulty.'),
  -- golem in platinum
  (76, 7600, 14, 'Even dynamite can’t harm its hard, boulderlike body. It sheds its hide just once a year.'),
  -- ponyta in platinum
  (77, 7700, 14, 'As a newborn, it can barely stand. However, through galloping, its legs are made tougher and faster.'),
  -- rapidash in platinum
  (78, 7800, 14, 'When at an all-out gallop, its blazing mane sparkles, enhancing its beautiful appearance.'),
  -- slowpoke in platinum
  (79, 7900, 14, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in platinum
  (80, 8000, 14, 'Though usually dim witted, it seems to become inspired if the SHELLDER on its tail bites down.'),
  -- magnemite in platinum
  (81, 8100, 14, 'The faster the units at its sides rotate, the greater the magnetic force they generate.'),
  -- magneton in platinum
  (82, 8200, 14, 'Many mysteriously appear when more sunspots dot the sun. They stop TV sets from displaying properly.'),
  -- farfetchd in platinum
  (83, 8300, 14, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in platinum
  (84, 8400, 14, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in platinum
  (85, 8500, 14, 'When DODUO evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in platinum
  (86, 8600, 14, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in platinum
  (87, 8700, 14, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in platinum
  (88, 8800, 14, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in platinum
  (89, 8900, 14, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in platinum
  (90, 9000, 14, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in platinum
  (91, 9100, 14, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in platinum
  (92, 9200, 14, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in platinum
  (93, 9300, 14, 'It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.'),
  -- gengar in platinum
  (94, 9400, 14, 'The leer that floats in darkness belongs to a GENGAR delighting in casting curses on people.'),
  -- onix in platinum
  (95, 9500, 14, 'It burrows through the ground at a speed of 50 mph while feeding on large boulders.'),
  -- drowzee in platinum
  (96, 9600, 14, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in platinum
  (97, 9700, 14, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in platinum
  (98, 9800, 14, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in platinum
  (99, 9900, 14, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in platinum
  (100, 10000, 14, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in platinum
  (101, 10100, 14, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in platinum
  (102, 10200, 14, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in platinum
  (103, 10300, 14, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an EXEGGCUTE.'),
  -- cubone in platinum
  (104, 10400, 14, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in platinum
  (105, 10500, 14, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in platinum
  (106, 10600, 14, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in platinum
  (107, 10700, 14, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in platinum
  (108, 10800, 14, 'When it extends its over-six-foot- long tongue, its tail quivers. There is a possibility they are connected.'),
  -- koffing in platinum
  (109, 10900, 14, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in platinum
  (110, 11000, 14, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in platinum
  (111, 11100, 14, 'Its powerful tackles can destroy anything. However, it is too slow witted to help people work.'),
  -- rhydon in platinum
  (112, 11200, 14, 'Standing on its hind legs freed its forelegs and made it smarter. It is very forgetful, however.'),
  -- chansey in platinum
  (113, 11300, 14, 'A kindly Pokémon that lays highly nutritious eggs and shares them with injured Pokémon or people.'),
  -- tangela in platinum
  (114, 11400, 14, 'The blue vines shrouding its body are covered in a growth of fine hair. It is known to be ticklish.'),
  -- kangaskhan in platinum
  (115, 11500, 14, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in platinum
  (116, 11600, 14, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in platinum
  (117, 11700, 14, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in platinum
  (118, 11800, 14, 'Though it appears very elegant when swimming with fins unfurled, it can jab powerfully with its horn.'),
  -- seaking in platinum
  (119, 11900, 14, 'In autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.'),
  -- staryu in platinum
  (120, 12000, 14, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in platinum
  (121, 12100, 14, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in platinum
  (122, 12200, 14, 'It shapes an invisible wall in midair by minutely vibrating its fingertips to stop molecules in the air.'),
  -- scyther in platinum
  (123, 12300, 14, 'The sharp scythes on its forearms become increasingly sharp by cutting through hard objects.'),
  -- jynx in platinum
  (124, 12400, 14, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in platinum
  (125, 12500, 14, 'It windmills its arms to slightly boost its punches. Foes have been known to escape in the meantime.'),
  -- magmar in platinum
  (126, 12600, 14, 'When it breathes deeply, heat waves form around its body, making it hard to see clearly.'),
  -- pinsir in platinum
  (127, 12700, 14, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in platinum
  (128, 12800, 14, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in platinum
  (129, 12900, 14, 'A MAGIKARP living for many years can leap a mountain using Splash. The move remains useless, though.'),
  -- gyarados in platinum
  (130, 13000, 14, 'Once it begins to rampage, a GYARADOS will burn everything down, even in a harsh storm.'),
  -- lapras in platinum
  (131, 13100, 14, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in platinum
  (132, 13200, 14, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in platinum
  (133, 13300, 14, 'Because its genetic makeup is irregular, it quickly changes its form due to a variety of causes.'),
  -- vaporeon in platinum
  (134, 13400, 14, 'Its cell composition is similar to water molecules. As a result, it can melt away into water.'),
  -- jolteon in platinum
  (135, 13500, 14, 'If agitated, it uses electricity to straighten out its fur and launch it in small bunches.'),
  -- flareon in platinum
  (136, 13600, 14, 'Inhaled air is heated in the flame sac in its body to an intense fire over 3,000 degrees Fahrenheit.'),
  -- porygon in platinum
  (137, 13700, 14, 'A man-made Pokémon created using advanced scientific means. It can move freely in cyberspace.'),
  -- omanyte in platinum
  (138, 13800, 14, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in platinum
  (139, 13900, 14, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in platinum
  (140, 14000, 14, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in platinum
  (141, 14100, 14, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in platinum
  (142, 14200, 14, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in platinum
  (143, 14300, 14, 'When its belly is full, it becomes too lethargic to even lift a finger, so it is safe to bounce on its belly.'),
  -- articuno in platinum
  (144, 14400, 14, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in platinum
  (145, 14500, 14, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in platinum
  (146, 14600, 14, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in platinum
  (147, 14700, 14, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in platinum
  (148, 14800, 14, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in platinum
  (149, 14900, 14, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in platinum
  (150, 15000, 14, 'A Pokémon created by recombining MEW’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in platinum
  (151, 15100, 14, 'Because it can use all kinds of moves, many scientists believe MEW to be the ancestor of Pokémon.'),
  -- chikorita in platinum
  (152, 15200, 14, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in platinum
  (153, 15300, 14, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in platinum
  (154, 15400, 14, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in platinum
  (155, 15500, 14, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in platinum
  (156, 15600, 14, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in platinum
  (157, 15700, 14, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in platinum
  (158, 15800, 14, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in platinum
  (159, 15900, 14, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in platinum
  (160, 16000, 14, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in platinum
  (161, 16100, 14, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in platinum
  (162, 16200, 14, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in platinum
  (163, 16300, 14, 'It marks time precisely. Some countries consider it to be a wise friend, versed in the world’s ways.'),
  -- noctowl in platinum
  (164, 16400, 14, 'Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.'),
  -- ledyba in platinum
  (165, 16500, 14, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in platinum
  (166, 16600, 14, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in platinum
  (167, 16700, 14, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in platinum
  (168, 16800, 14, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in platinum
  (169, 16900, 14, 'The transformation of its legs into wings made it better at flying, but more clumsy at walking.'),
  -- chinchou in platinum
  (170, 17000, 14, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in platinum
  (171, 17100, 14, 'LANTURN’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in platinum
  (172, 17200, 14, 'The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked.'),
  -- cleffa in platinum
  (173, 17300, 14, 'It is often seen when shooting stars fill the night skies. It’s said to arrive riding on a shooting star.'),
  -- igglybuff in platinum
  (174, 17400, 14, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in platinum
  (175, 17500, 14, 'It transforms the kindness and joy of others into happiness, which it stores in its shell.'),
  -- togetic in platinum
  (176, 17600, 14, 'To share its happiness, it flies around the world seeking kindhearted people.'),
  -- natu in platinum
  (177, 17700, 14, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in platinum
  (178, 17800, 14, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in platinum
  (179, 17900, 14, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in platinum
  (180, 18000, 14, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in platinum
  (181, 18100, 14, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in platinum
  (182, 18200, 14, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in platinum
  (183, 18300, 14, 'The oil-filled end of its tail floats on water. It keeps MARILL from drowning even in a strong current.'),
  -- azumarill in platinum
  (184, 18400, 14, 'It can spend all day in water, since it can inhale and store a large volume of air.'),
  -- sudowoodo in platinum
  (185, 18500, 14, 'To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain.'),
  -- politoed in platinum
  (186, 18600, 14, 'It gathers groups of others as their leader. Its cries make POLIWAG obey.'),
  -- hoppip in platinum
  (187, 18700, 14, 'It drifts on winds. It is said that when HOPPIP gather in fields and mountains, spring is on the way.'),
  -- skiploom in platinum
  (188, 18800, 14, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in platinum
  (189, 18900, 14, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in platinum
  (190, 19000, 14, 'It lives high among the treetops. It can use its tail as freely and cleverly as its hands.'),
  -- sunkern in platinum
  (191, 19100, 14, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in platinum
  (192, 19200, 14, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in platinum
  (193, 19300, 14, 'It can hover in one spot by flapping its wings at high speed. It flits about to guard its territory.'),
  -- wooper in platinum
  (194, 19400, 14, 'When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.'),
  -- quagsire in platinum
  (195, 19500, 14, 'It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.'),
  -- espeon in platinum
  (196, 19600, 14, 'Its fur is so sensitive, it can sense minute shifts in the air and predict the weather.'),
  -- umbreon in platinum
  (197, 19700, 14, 'When exposed to the moon’s aura, the rings on its body glow faintly and it gains a mysterious power.'),
  -- murkrow in platinum
  (198, 19800, 14, 'If spotted, it will lure an unwary person into chasing it, then lose the pursuer on mountain trails.'),
  -- slowking in platinum
  (199, 19900, 14, 'Being bitten by SHELLDER gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in platinum
  (200, 20000, 14, 'A Pokémon that startles people in the middle of the night. It gathers fear as its energy.'),
  -- unown in platinum
  (201, 20100, 14, 'When alone, nothing happens. However, if there are two or more, an odd power is said to emerge.'),
  -- wobbuffet in platinum
  (202, 20200, 14, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in platinum
  (203, 20300, 14, 'The head on its tail contains a small brain. It can instinctively fight even while facing backward.'),
  -- pineco in platinum
  (204, 20400, 14, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in platinum
  (205, 20500, 14, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in platinum
  (206, 20600, 14, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in platinum
  (207, 20700, 14, 'It glides as if sliding. It startles foes by clamping on to their faces, then jabs with its poison stinger.'),
  -- steelix in platinum
  (208, 20800, 14, 'It is thought its body transformed as a result of iron accumulating internally from swallowing soil.'),
  -- snubbull in platinum
  (209, 20900, 14, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in platinum
  (210, 21000, 14, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in platinum
  (211, 21100, 14, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in platinum
  (212, 21200, 14, 'It raises its pincers with eyelike markings for intimidation. It also swings them down dangerously.'),
  -- shuckle in platinum
  (213, 21300, 14, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in platinum
  (214, 21400, 14, 'It loves sweet honey. To keep all the honey to itself, it hurls rivals away with its prized horn.'),
  -- sneasel in platinum
  (215, 21500, 14, 'A smart and sneaky Pokémon. A pair may work together to steal eggs by having one lure the parents away.'),
  -- teddiursa in platinum
  (216, 21600, 14, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in platinum
  (217, 21700, 14, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in platinum
  (218, 21800, 14, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in platinum
  (219, 21900, 14, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in platinum
  (220, 22000, 14, 'It has a very sensitive nose. It can locate mushrooms, berries, and even hot springs buried under ice.'),
  -- piloswine in platinum
  (221, 22100, 14, 'Covered by a shaggy coat, it is strong against the cold. Its tusks of ice thicken when it snows.'),
  -- corsola in platinum
  (222, 22200, 14, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in platinum
  (223, 22300, 14, 'It forcefully squirts water. The water jet never misses prey even if the REMORAID is deep in the sea.'),
  -- octillery in platinum
  (224, 22400, 14, 'It loves to lurk inside holes in rocks. It sometimes sprays ink on prey by sticking out only its mouth.'),
  -- delibird in platinum
  (225, 22500, 14, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in platinum
  (226, 22600, 14, 'While elegantly swimming in the sea, it ignores REMORAID that cling to its fins seeking food scraps.'),
  -- skarmory in platinum
  (227, 22700, 14, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in platinum
  (228, 22800, 14, 'It is smart enough to hunt in packs. It uses a variety of cries for communicating with others.'),
  -- houndoom in platinum
  (229, 22900, 14, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- kingdra in platinum
  (230, 23000, 14, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in platinum
  (231, 23100, 14, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in platinum
  (232, 23200, 14, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in platinum
  (233, 23300, 14, 'It was upgraded to enable the exploration of other planets. However, it failed to measure up.'),
  -- stantler in platinum
  (234, 23400, 14, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in platinum
  (235, 23500, 14, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in platinum
  (236, 23600, 14, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in platinum
  (237, 23700, 14, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in platinum
  (238, 23800, 14, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in platinum
  (239, 23900, 14, 'A weak electric current flows between its horns. Sticking a hand there shocks the unwary.'),
  -- magby in platinum
  (240, 24000, 14, 'Its magma-like blood circulates throughout its body. Its body’s heat can top 1,100 degrees F.'),
  -- miltank in platinum
  (241, 24100, 14, 'It is said that kids who drink MILTANK’s milk grow up to become hearty, healthy adults.'),
  -- blissey in platinum
  (242, 24200, 14, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- raikou in platinum
  (243, 24300, 14, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in platinum
  (244, 24400, 14, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in platinum
  (245, 24500, 14, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in platinum
  (246, 24600, 14, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in platinum
  (247, 24700, 14, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in platinum
  (248, 24800, 14, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in platinum
  (249, 24900, 14, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in platinum
  (250, 25000, 14, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in platinum
  (251, 25100, 14, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in platinum
  (252, 25200, 14, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in platinum
  (253, 25300, 14, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in platinum
  (254, 25400, 14, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in platinum
  (255, 25500, 14, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in platinum
  (256, 25600, 14, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in platinum
  (257, 25700, 14, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in platinum
  (258, 25800, 14, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in platinum
  (259, 25900, 14, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in platinum
  (260, 26000, 14, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in platinum
  (261, 26100, 14, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in platinum
  (262, 26200, 14, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in platinum
  (263, 26300, 14, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in platinum
  (264, 26400, 14, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in platinum
  (265, 26500, 14, 'Often targeted by bird Pokémon, it desperately resists by releasing poison from its tail spikes.'),
  -- silcoon in platinum
  (266, 26600, 14, 'It wraps silk around the branches of a tree. It drinks rainwater on its silk while awaiting evolution.'),
  -- beautifly in platinum
  (267, 26700, 14, 'Despite its looks, it is aggressive. It jabs with its long, thin mouth if disturbed while collecting pollen.'),
  -- cascoon in platinum
  (268, 26800, 14, 'It never forgets any attack it endured while in the cocoon. After evolution, it seeks payback.'),
  -- dustox in platinum
  (269, 26900, 14, 'Toxic powder is scattered with each flap. At night, it is known to strip leaves off trees lining boulevards.'),
  -- lotad in platinum
  (270, 27000, 14, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in platinum
  (271, 27100, 14, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in platinum
  (272, 27200, 14, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in platinum
  (273, 27300, 14, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in platinum
  (274, 27400, 14, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in platinum
  (275, 27500, 14, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in platinum
  (276, 27600, 14, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in platinum
  (277, 27700, 14, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in platinum
  (278, 27800, 14, 'It soars high in the sky, riding on updrafts like a glider. It carries food tucked in its bill.'),
  -- pelipper in platinum
  (279, 27900, 14, 'It is a messenger of the skies, carrying small Pokémon and eggs to safety in its bill.'),
  -- ralts in platinum
  (280, 28000, 14, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in platinum
  (281, 28100, 14, 'If its Trainer becomes happy, it overflows with energy, dancing joyously while spinning about.'),
  -- gardevoir in platinum
  (282, 28200, 14, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in platinum
  (283, 28300, 14, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in platinum
  (284, 28400, 14, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in platinum
  (285, 28500, 14, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in platinum
  (286, 28600, 14, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in platinum
  (287, 28700, 14, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in platinum
  (288, 28800, 14, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in platinum
  (289, 28900, 14, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in platinum
  (290, 29000, 14, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in platinum
  (291, 29100, 14, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in platinum
  (292, 29200, 14, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in platinum
  (293, 29300, 14, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in platinum
  (294, 29400, 14, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in platinum
  (295, 29500, 14, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in platinum
  (296, 29600, 14, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in platinum
  (297, 29700, 14, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in platinum
  (298, 29800, 14, 'Its tail bounces like a rubber ball. It flings that tail around to fight opponents bigger than itself.'),
  -- nosepass in platinum
  (299, 29900, 14, 'When endangered, it may protect itself by raising its magnetism and drawing iron objects to its body.'),
  -- skitty in platinum
  (300, 30000, 14, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in platinum
  (301, 30100, 14, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in platinum
  (302, 30200, 14, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in platinum
  (303, 30300, 14, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in platinum
  (304, 30400, 14, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in platinum
  (305, 30500, 14, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in platinum
  (306, 30600, 14, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in platinum
  (307, 30700, 14, 'It always trains deep in mountains. It levitates when it heightens its spiritual power through meditation.'),
  -- medicham in platinum
  (308, 30800, 14, 'It gains the ability to see the aura of its opponents by honing its mind through starvation.'),
  -- electrike in platinum
  (309, 30900, 14, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in platinum
  (310, 31000, 14, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in platinum
  (311, 31100, 14, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in platinum
  (312, 31200, 14, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in platinum
  (313, 31300, 14, 'It communicates with others by lighting up its rear at night. It loves ILLUMISE’s sweet aroma.'),
  -- illumise in platinum
  (314, 31400, 14, 'With its sweet aroma, it guides VOLBEAT to draw signs with light in the night sky.'),
  -- roselia in platinum
  (315, 31500, 14, 'The more healthy the ROSELIA, the more pleasant its flowers’ aroma. Its scent deeply relaxes people.'),
  -- gulpin in platinum
  (316, 31600, 14, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in platinum
  (317, 31700, 14, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in platinum
  (318, 31800, 14, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in platinum
  (319, 31900, 14, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in platinum
  (320, 32000, 14, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in platinum
  (321, 32100, 14, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in platinum
  (322, 32200, 14, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in platinum
  (323, 32300, 14, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in platinum
  (324, 32400, 14, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in platinum
  (325, 32500, 14, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in platinum
  (326, 32600, 14, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in platinum
  (327, 32700, 14, 'No two SPINDA have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in platinum
  (328, 32800, 14, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in platinum
  (329, 32900, 14, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in platinum
  (330, 33000, 14, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in platinum
  (331, 33100, 14, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in platinum
  (332, 33200, 14, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in platinum
  (333, 33300, 14, 'It can’t relax if it or its surroundings are not clean. It wipes off dirt with its wings.'),
  -- altaria in platinum
  (334, 33400, 14, 'If it bonds with a person, it will gently envelop the friend with its soft wings, then hum.'),
  -- zangoose in platinum
  (335, 33500, 14, 'It has feuded with SEVIPER for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in platinum
  (336, 33600, 14, 'For many generations, it has feuded with ZANGOOSE. It whets its bladed tail on rocks for battle.'),
  -- lunatone in platinum
  (337, 33700, 14, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in platinum
  (338, 33800, 14, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in platinum
  (339, 33900, 14, 'Its slimy body is hard to grasp. In one region, it is said to have been born from hardened mud.'),
  -- whiscash in platinum
  (340, 34000, 14, 'It is extremely protective of its territory. If any foe approaches, it attacks using vicious tremors.'),
  -- corphish in platinum
  (341, 34100, 14, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in platinum
  (342, 34200, 14, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in platinum
  (343, 34300, 14, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in platinum
  (344, 34400, 14, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in platinum
  (345, 34500, 14, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in platinum
  (346, 34600, 14, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in platinum
  (347, 34700, 14, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in platinum
  (348, 34800, 14, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in platinum
  (349, 34900, 14, 'It is a shabby and ugly Pokémon. However, it is very hardy and can survive on little water.'),
  -- milotic in platinum
  (350, 35000, 14, 'Its lovely scales are described as rainbow colored. They change color depending on the viewing angle.'),
  -- castform in platinum
  (351, 35100, 14, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in platinum
  (352, 35200, 14, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in platinum
  (353, 35300, 14, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in platinum
  (354, 35400, 14, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in platinum
  (355, 35500, 14, 'It loves the crying of children. It startles bad kids by passing through walls and making them cry.'),
  -- dusclops in platinum
  (356, 35600, 14, 'It seeks drifting will-o’-the-wisps and sucks them into its empty body. What happens inside is a mystery.'),
  -- tropius in platinum
  (357, 35700, 14, 'Delicious fruits grew out from around its neck because it always ate the same kind of fruit.'),
  -- chimecho in platinum
  (358, 35800, 14, 'Its cries echo inside its hollow body to emerge as beautiful notes for startling and repelling foes.'),
  -- absol in platinum
  (359, 35900, 14, 'Rumored to sense disasters with its horn, it became a target. It fled deep into the mountains.'),
  -- wynaut in platinum
  (360, 36000, 14, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in platinum
  (361, 36100, 14, 'It is said that several SNORUNT gather under giant leaves and live together in harmony.'),
  -- glalie in platinum
  (362, 36200, 14, 'It prevents prey from escaping by instantaneously freezing moisture in the air.'),
  -- spheal in platinum
  (363, 36300, 14, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in platinum
  (364, 36400, 14, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in platinum
  (365, 36500, 14, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in platinum
  (366, 36600, 14, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in platinum
  (367, 36700, 14, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in platinum
  (368, 36800, 14, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in platinum
  (369, 36900, 14, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in platinum
  (370, 37000, 14, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in platinum
  (371, 37100, 14, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in platinum
  (372, 37200, 14, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in platinum
  (373, 37300, 14, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in platinum
  (374, 37400, 14, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in platinum
  (375, 37500, 14, 'It is formed by two BELDUM joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in platinum
  (376, 37600, 14, 'METANG combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in platinum
  (377, 37700, 14, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in platinum
  (378, 37800, 14, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in platinum
  (379, 37900, 14, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in platinum
  (380, 38000, 14, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in platinum
  (381, 38100, 14, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in platinum
  (382, 38200, 14, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in platinum
  (383, 38300, 14, 'It had been asleep in underground magma ever since it fiercely fought KYOGRE long ago.'),
  -- rayquaza in platinum
  (384, 38400, 14, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in platinum
  (385, 38500, 14, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in platinum
  (386, 38600, 14, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in platinum
  (387, 38700, 14, 'The shell on its back is made of soil. On a very healthy TURTWIG, the shell should feel moist.'),
  -- grotle in platinum
  (388, 38800, 14, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in platinum
  (389, 38900, 14, 'Some Pokémon are born on a TORTERRA’s back and spend their entire life there.'),
  -- chimchar in platinum
  (390, 39000, 14, 'It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.'),
  -- monferno in platinum
  (391, 39100, 14, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in platinum
  (392, 39200, 14, 'It uses unique fighting moves with fire on its hands and feet. It will take on any opponent.'),
  -- piplup in platinum
  (393, 39300, 14, 'A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.'),
  -- prinplup in platinum
  (394, 39400, 14, 'Because every PRINPLUP considers itself to be the most important, they can never form a group.'),
  -- empoleon in platinum
  (395, 39500, 14, 'If anyone were to hurt its pride, it would slash them with wings that can cleave through an ice floe.'),
  -- starly in platinum
  (396, 39600, 14, 'Because they are weak individually, they form groups. However, they bicker if the group grows too big.'),
  -- staravia in platinum
  (397, 39700, 14, 'Recognizing their own weakness, they always live in a group. When alone, a STARAVIA cries noisily.'),
  -- staraptor in platinum
  (398, 39800, 14, 'It never stops attacking even if it is injured. It fusses over the shape of its comb.'),
  -- bidoof in platinum
  (399, 39900, 14, 'A comparison revealed that BIDOOF’s front teeth grow at the same rate as RATTATA’s.'),
  -- bibarel in platinum
  (400, 40000, 14, 'A river dammed by BIBAREL will never overflow its banks, which is appreciated by people nearby.'),
  -- kricketot in platinum
  (401, 40100, 14, 'Its legs are short. Whenever it stumbles, its stiff antennae clack with a xylophone-like sound.'),
  -- kricketune in platinum
  (402, 40200, 14, 'There is a village that hosts a contest based on the amazingly variable cries of this Pokémon.'),
  -- shinx in platinum
  (403, 40300, 14, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in platinum
  (404, 40400, 14, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in platinum
  (405, 40500, 14, 'It can see clearly through walls to track down its prey and seek its lost young.'),
  -- budew in platinum
  (406, 40600, 14, 'Sensitive to changing temperature, the bud is said to bloom when it feels the sun’s warm touch.'),
  -- roserade in platinum
  (407, 40700, 14, 'Each of its hands contains different toxins, but both hands can jab with near-fatal power.'),
  -- cranidos in platinum
  (408, 40800, 14, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with head butts.'),
  -- rampardos in platinum
  (409, 40900, 14, 'If two were to smash their heads together, their foot-thick skulls would keep them from fainting.'),
  -- shieldon in platinum
  (410, 41000, 14, 'It is outstandingly armored. As a result, it can eat grass and berries without having to fight.'),
  -- bastiodon in platinum
  (411, 41100, 14, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in platinum
  (412, 41200, 14, 'Even if it is born where there are no cocooning materials, it somehow always ends up with a cloak.'),
  -- wormadam in platinum
  (413, 41300, 14, 'When evolving, its body takes in surrounding materials. As a result, there are many body variations.'),
  -- mothim in platinum
  (414, 41400, 14, 'While it loves floral honey, it won’t gather any itself. Instead, it plots to steal some from COMBEE.'),
  -- combee in platinum
  (415, 41500, 14, 'The trio is together from birth. It constantly gathers honey from flowers to please VESPIQUEN.'),
  -- vespiquen in platinum
  (416, 41600, 14, 'It releases various pheromones to make the grubs in its body do its bidding while fighting foes.'),
  -- pachirisu in platinum
  (417, 41700, 14, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in platinum
  (418, 41800, 14, 'It spins its two tails like a screw to propel itself through water. The tails also slice clinging seaweed.'),
  -- floatzel in platinum
  (419, 41900, 14, 'It is a common sight around fishing ports. It is known to rescue people and carry off prey.'),
  -- cherubi in platinum
  (420, 42000, 14, 'The small ball is not only filled with nutrients, it is also tasty. STARLY try to peck it off.'),
  -- cherrim in platinum
  (421, 42100, 14, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in platinum
  (422, 42200, 14, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in platinum
  (423, 42300, 14, 'Long ago, its entire back was shielded with a sturdy shell. There are traces of it left in its cells.'),
  -- ambipom in platinum
  (424, 42400, 14, 'Split into two, the tails are so adept at handling and doing things, AMBIPOM rarely uses its hands.'),
  -- drifloon in platinum
  (425, 42500, 14, 'Because of the way it floats aimlessly, an old folktale calls it a “Signpost for Wandering Spirits.”'),
  -- drifblim in platinum
  (426, 42600, 14, 'At dusk, swarms of them are carried aloft on winds. When noticed, they suddenly vanish.'),
  -- buneary in platinum
  (427, 42700, 14, 'Its ears are always rolled up. They can be forcefully extended to shatter even a large boulder.'),
  -- lopunny in platinum
  (428, 42800, 14, 'The ears appear to be delicate. If they are touched roughly, it kicks with its graceful legs.'),
  -- mismagius in platinum
  (429, 42900, 14, 'Its cry sounds like an incantation. It is said the cry may rarely be imbued with happiness-giving power.'),
  -- honchkrow in platinum
  (430, 43000, 14, 'If one utters a deep cry, many MURKROW gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in platinum
  (431, 43100, 14, 'It hides its spiteful tendency of hooking its claws into the nose of its Trainer if it isn’t fed.'),
  -- purugly in platinum
  (432, 43200, 14, 'It binds its body with its tails to make itself look bigger. If it locks eyes, it will glare ceaselessly.'),
  -- chingling in platinum
  (433, 43300, 14, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in platinum
  (434, 43400, 14, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in platinum
  (435, 43500, 14, 'It attacks by spraying a horribly smelly fluid from the tip of its tail. Attacks from above confound it.'),
  -- bronzor in platinum
  (436, 43600, 14, 'There are researchers who believe this Pokémon reflected like a mirror in the distant past.'),
  -- bronzong in platinum
  (437, 43700, 14, 'It brought rains by opening portals to another world. It was revered as a bringer of plentiful harvests.'),
  -- bonsly in platinum
  (438, 43800, 14, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in platinum
  (439, 43900, 14, 'It mimics the expressions and motions of those it sees to understand the feelings of others.'),
  -- happiny in platinum
  (440, 44000, 14, 'It likes to carry around a small rock. It may wander around others’ feet and cause them to stumble.'),
  -- chatot in platinum
  (441, 44100, 14, 'Its tongue is just like a human’s. As a result, it can cleverly mimic human speech.'),
  -- spiritomb in platinum
  (442, 44200, 14, 'Its constant mischief and misdeeds resulted in it being bound to an Odd Keystone by a mysterious spell.'),
  -- gible in platinum
  (443, 44300, 14, 'It attacks using its huge mouth. While its attacks are powerful, it hurts itself out of clumsiness, too.'),
  -- gabite in platinum
  (444, 44400, 14, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in platinum
  (445, 44500, 14, 'It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.'),
  -- munchlax in platinum
  (446, 44600, 14, 'In its desperation to gulp down food, it forgets about the food it has hidden under its fur.'),
  -- riolu in platinum
  (447, 44700, 14, 'It has the peculiar power of being able to see emotions such as joy and rage in the form of waves.'),
  -- lucario in platinum
  (448, 44800, 14, 'A well-trained one can sense auras to identify and take in the feelings of creatures over half a mile away.'),
  -- hippopotas in platinum
  (449, 44900, 14, 'It shuts its nostrils tight then travels through sand as if walking. They form colonies of around ten.'),
  -- hippowdon in platinum
  (450, 45000, 14, 'It is surprisingly quick to anger. It holds its mouth agape as a display of its strength.'),
  -- skorupi in platinum
  (451, 45100, 14, 'As soon as the tail claws close, its needle tips secrete poison. It can survive a year without food.'),
  -- drapion in platinum
  (452, 45200, 14, 'Possessing a sturdy build, it takes pride in its strength, taking down foes without using toxins.'),
  -- croagunk in platinum
  (453, 45300, 14, 'It rarely fights fairly, but that is strictly to ensure survival. It is popular as a mascot.'),
  -- toxicroak in platinum
  (454, 45400, 14, 'It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.'),
  -- carnivine in platinum
  (455, 45500, 14, 'It binds itself to trees in marshes. It attracts prey with its sweet- smelling drool and gulps them down.'),
  -- finneon in platinum
  (456, 45600, 14, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in platinum
  (457, 45700, 14, 'It crawls along the seafloor using its long front fins like legs. It competes for food with LANTURN.'),
  -- mantyke in platinum
  (458, 45800, 14, 'People organize tours to see this Pokémon frolic and skim the tops of waves with REMORAID.'),
  -- snover in platinum
  (459, 45900, 14, 'Seemingly curious about people, they gather around footsteps they find on snowy mountains.'),
  -- abomasnow in platinum
  (460, 46000, 14, 'They appear when the snow flowers bloom. When the petals fall, they retreat to places unknown again.'),
  -- weavile in platinum
  (461, 46100, 14, 'Evolution made it even more devious. It communicates by clawing signs in boulders.'),
  -- magnezone in platinum
  (462, 46200, 14, 'A group tried to use scientific means to make MAGNEZONE evolve, but their efforts ended in failure.'),
  -- lickilicky in platinum
  (463, 46300, 14, 'The long tongue is always soggy with slobber. The saliva contains a solvent that causes numbness.'),
  -- rhyperior in platinum
  (464, 46400, 14, 'It can launch a rock held in its hand like a missile by tightening then expanding muscles instantly.'),
  -- tangrowth in platinum
  (465, 46500, 14, 'Its arms are made of plants that bind themselves to things. They grow back right away if cut.'),
  -- electivire in platinum
  (466, 46600, 14, 'Heedless of enemy attacks, it closes in, shoves its tails onto the foe, then looses high voltage.'),
  -- magmortar in platinum
  (467, 46700, 14, 'When launching 3,600 degrees F fireballs, its body takes on a whitish hue from the intense heat.'),
  -- togekiss in platinum
  (468, 46800, 14, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in platinum
  (469, 46900, 14, 'Its jaw power is incredible. It is adept at biting apart foes while flying by at high speed.'),
  -- leafeon in platinum
  (470, 47000, 14, 'It basically does not fight. With cells similar to those of plants, it can perform photosynthesis.'),
  -- glaceon in platinum
  (471, 47100, 14, 'By controlling its body heat, it can freeze the atmosphere around it to make a diamond-dust flurry.'),
  -- gliscor in platinum
  (472, 47200, 14, 'If it succeeds in catching even a faint breeze properly, it can circle the globe without flapping once.'),
  -- mamoswine in platinum
  (473, 47300, 14, 'A frozen one was dug up from soil dating back 10,000 years. It woke up to much amazement.'),
  -- porygon-z in platinum
  (474, 47400, 14, 'Its programming was modified to enable work in alien dimensions. It did not work as planned.'),
  -- gallade in platinum
  (475, 47500, 14, 'When trying to protect someone, it extends its elbows as if they were swords and fights savagely.'),
  -- probopass in platinum
  (476, 47600, 14, 'It freely controls three small units called Mini-Noses using magnetic force.'),
  -- dusknoir in platinum
  (477, 47700, 14, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in platinum
  (478, 47800, 14, 'It freezes prey by blowing its -58 degrees F breath. It is said to then secretly display its prey.'),
  -- rotom in platinum
  (479, 47900, 14, 'Its electric-like body can enter some kinds of machines and take control in order to make mischief.'),
  -- uxie in platinum
  (480, 48000, 14, 'When UXIE flew, people gained the ability to solve problems. It was the birth of knowledge.'),
  -- mesprit in platinum
  (481, 48100, 14, 'When MESPRIT flew, people learned the joy and sadness of living. It was the birth of emotions.'),
  -- azelf in platinum
  (482, 48200, 14, 'When AZELF flew, people gained the determination to do things. It was the birth of willpower.'),
  -- dialga in platinum
  (483, 48300, 14, 'A legendary Pokémon of Sinnoh. It is said that time flows when DIALGA’s heart beats.'),
  -- palkia in platinum
  (484, 48400, 14, 'A legendary Pokémon of Sinnoh. It is said that space becomes more stable with PALKIA’s every breath.'),
  -- heatran in platinum
  (485, 48500, 14, 'Its body is made of rugged steel. However, it is partially melted in spots because of its own heat.'),
  -- regigigas in platinum
  (486, 48600, 14, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in platinum
  (487, 48700, 14, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in platinum
  (488, 48800, 14, 'On nights around the quarter moon, the aurora from its tail extends and undulates beautifully.'),
  -- phione in platinum
  (489, 48900, 14, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in platinum
  (490, 49000, 14, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in platinum
  (491, 49100, 14, 'To protect itself, it afflicts those around it with nightmares. However, it means no harm.'),
  -- shaymin in platinum
  (492, 49200, 14, 'The flowers all over its body burst into bloom if it is lovingly hugged and senses gratitude.'),
  -- arceus in platinum
  (493, 49300, 14, 'It is said to have emerged from an egg in a place where there was nothing, then shaped the world.'),
  -- bulbasaur in heartgold
  (1, 100, 15, 'The seed on its back is filled with nutrients. The seed grows steadily larger as its body grows.'),
  -- ivysaur in heartgold
  (2, 200, 15, 'Exposure to sunlight adds to its strength. Sunlight also makes the bud on its back grow larger.'),
  -- venusaur in heartgold
  (3, 300, 15, 'By spreading the broad petals of its flower and catching the sun’s rays, it fills its body with power.'),
  -- charmander in heartgold
  (4, 400, 15, 'The flame on its tail shows the strength of its life force. If it is weak, the flame also burns weakly.'),
  -- charmeleon in heartgold
  (5, 500, 15, 'It is very hotheaded by nature, so it constantly seeks opponents. It calms down only when it wins.'),
  -- charizard in heartgold
  (6, 600, 15, 'If CHARIZARD becomes furious, the flame at the tip of its tail flares up in a light blue shade.'),
  -- squirtle in heartgold
  (7, 700, 15, 'The shell is soft when it is born. It soon becomes so resilient, prodding fingers will bounce off it.'),
  -- wartortle in heartgold
  (8, 800, 15, 'It is a well-established symbol of longevity. If its shell has algae on it, that WARTORTLE is very old.'),
  -- blastoise in heartgold
  (9, 900, 15, 'It deliberately makes itself heavy so it can withstand the recoil of the water jets it fires.'),
  -- caterpie in heartgold
  (10, 1000, 15, 'For protection, it releases a horrible stench from the antennae on its head to drive away enemies.'),
  -- metapod in heartgold
  (11, 1100, 15, 'Inside the shell, it is soft and weak as it prepares to evolve. It stays motionless in the shell.'),
  -- butterfree in heartgold
  (12, 1200, 15, 'It collects honey every day. It rubs honey onto the hairs on its legs to carry it back to its nest.'),
  -- weedle in heartgold
  (13, 1300, 15, 'Its poison stinger is very powerful. Its bright-colored body is intended to warn off its enemies.'),
  -- kakuna in heartgold
  (14, 1400, 15, 'Although it is a cocoon, it can move a little. It can extend its poison barb if it is attacked.'),
  -- beedrill in heartgold
  (15, 1500, 15, 'It can take down any opponent with its powerful poison stingers. It sometimes attacks in swarms.'),
  -- pidgey in heartgold
  (16, 1600, 15, 'It usually hides in tall grass. Because it dislikes fighting, it protects itself by kicking up sand.'),
  -- pidgeotto in heartgold
  (17, 1700, 15, 'It has outstanding vision. However high it flies, it is able to distinguish the movements of its prey.'),
  -- pidgeot in heartgold
  (18, 1800, 15, 'Its well-developed chest muscles make it strong enough to whip up a gusty windstorm with just a few flaps.'),
  -- rattata in heartgold
  (19, 1900, 15, 'It eats anything. Wherever food is available, it will settle down and produce offspring continuously.'),
  -- raticate in heartgold
  (20, 2000, 15, 'Gnaws on anything with its tough fangs. It can even topple concrete buildings by gnawing on them.'),
  -- spearow in heartgold
  (21, 2100, 15, 'It flaps its short wings to flush out insects from tall grass. It then plucks them with its stubby beak.'),
  -- fearow in heartgold
  (22, 2200, 15, 'It shoots itself suddenly high into the sky, then plummets down in one fell swoop to strike its prey.'),
  -- ekans in heartgold
  (23, 2300, 15, 'It can freely detach its jaw to swallow large prey whole. It can become too heavy to move, however.'),
  -- arbok in heartgold
  (24, 2400, 15, 'Transfixing prey with the face-like pattern on its belly, it binds and poisons the frightened victim.'),
  -- pikachu in heartgold
  (25, 2500, 15, 'This intelligent Pokémon roasts hard berries with electricity to make them tender enough to eat.'),
  -- raichu in heartgold
  (26, 2600, 15, 'When its electricity builds, its muscles are stimulated, and it becomes more aggressive than usual.'),
  -- sandshrew in heartgold
  (27, 2700, 15, 'If it fell from a great height, this Pokémon could save itself by rolling into a ball and bouncing.'),
  -- sandslash in heartgold
  (28, 2800, 15, 'In an attempt to hide itself, it will run around at top speed to kick up a blinding dust storm.'),
  -- nidoran-f in heartgold
  (29, 2900, 15, 'The poison hidden in its small horn is extremely potent. Even a tiny scratch can have fatal results.'),
  -- nidorina in heartgold
  (30, 3000, 15, 'When feeding its young, it first chews the food into a paste, then spits it out for the offspring.'),
  -- nidoqueen in heartgold
  (31, 3100, 15, 'Its body is covered with needle-like scales. It never shows signs of shrinking from any attack.'),
  -- nidoran-m in heartgold
  (32, 3200, 15, 'It is small, but its horn is filled with poison. It charges then stabs with the horn to inject poison.'),
  -- nidorino in heartgold
  (33, 3300, 15, 'It raises its big ears to check its surroundings. If it senses anything, it attacks immediately.'),
  -- nidoking in heartgold
  (34, 3400, 15, 'It swings its big tail around during battle. If its foe flinches, it will charge with its sturdy body.'),
  -- clefairy in heartgold
  (35, 3500, 15, 'The moonlight that it stores in the wings on its back apparently gives it the ability to float in midair.'),
  -- clefable in heartgold
  (36, 3600, 15, 'With its acute hearing, it can pick up sounds from far away. It usually hides in quiet places.'),
  -- vulpix in heartgold
  (37, 3700, 15, 'As it develops, its single white tail gains color and splits into six. It is quite warm and cuddly.'),
  -- ninetales in heartgold
  (38, 3800, 15, 'Some legends claim that each of its nine tails has its own unique type of special mystical power.'),
  -- jigglypuff in heartgold
  (39, 3900, 15, 'If it inflates to sing a lullaby, it can perform longer and cause sure drowsiness in its audience.'),
  -- wigglytuff in heartgold
  (40, 4000, 15, 'Their fur feels so good that if two of them snuggle together, they won’t want to be separated.'),
  -- zubat in heartgold
  (41, 4100, 15, 'While flying, it constantly emits ultrasonic waves from its mouth to check its surroundings.'),
  -- golbat in heartgold
  (42, 4200, 15, 'However hard its victim’s hide may be, it punctures with sharp fangs and gorges itself with blood.'),
  -- oddish in heartgold
  (43, 4300, 15, 'Awakened by moonlight, it roams actively at night. In the day, it stays quietly underground.'),
  -- gloom in heartgold
  (44, 4400, 15, 'What appears to be drool is actually sweet honey. It is very sticky and clings stubbornly if touched.'),
  -- vileplume in heartgold
  (45, 4500, 15, 'It has the world’s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.'),
  -- paras in heartgold
  (46, 4600, 15, 'It is doused with mushroom spores when it is born. As its body grows, mushrooms sprout from its back.'),
  -- parasect in heartgold
  (47, 4700, 15, 'It stays mostly in dark, damp places, the preference not of the bug, but of the big mushroom on its back.'),
  -- venonat in heartgold
  (48, 4800, 15, 'Its eyes also function as radar units. It catches and eats small bugs that hide in darkness.'),
  -- venomoth in heartgold
  (49, 4900, 15, 'When it attacks, it flaps its large wings violently to scatter its poisonous powder all around.'),
  -- diglett in heartgold
  (50, 5000, 15, 'Its skin is very thin. If it is exposed to light, its blood heats up, causing it to grow weak.'),
  -- dugtrio in heartgold
  (51, 5100, 15, 'Its three heads bob separately up and down to loosen the soil nearby, making it easier for it to burrow.'),
  -- meowth in heartgold
  (52, 5200, 15, 'It is fascinated by round objects. It can’t stop playing with them until it tires and falls asleep.'),
  -- persian in heartgold
  (53, 5300, 15, 'Many adore it for its sophisticated air. However, it will lash out and scratch for little reason.'),
  -- psyduck in heartgold
  (54, 5400, 15, 'It has mystical powers but doesn’t recall that it has used them. That is why it always looks puzzled.'),
  -- golduck in heartgold
  (55, 5500, 15, 'When it swims at full speed using its long, webbed limbs, its forehead somehow begins to glow.'),
  -- mankey in heartgold
  (56, 5600, 15, 'It is extremely ill-tempered. Groups of them will attack any handy target for no reason.'),
  -- primeape in heartgold
  (57, 5700, 15, 'If approached while asleep, it may awaken and angrily give chase in a groggy state of semi-sleep.'),
  -- growlithe in heartgold
  (58, 5800, 15, 'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.'),
  -- arcanine in heartgold
  (59, 5900, 15, 'This legendary Chinese Pokémon is considered magnificent. Many people are enchanted by its grand mane.'),
  -- poliwag in heartgold
  (60, 6000, 15, 'Because it is inept at walking on its newly grown legs, it always swims around in water.'),
  -- poliwhirl in heartgold
  (61, 6100, 15, 'The swirl on its belly subtly undulates. Staring at it may gradually cause drowsiness.'),
  -- poliwrath in heartgold
  (62, 6200, 15, 'This strong and skilled swimmer is even capable of crossing the Pacific Ocean just by kicking.'),
  -- abra in heartgold
  (63, 6300, 15, 'It senses impending attacks and teleports away to safety before the actual attacks can strike.'),
  -- kadabra in heartgold
  (64, 6400, 15, 'It possesses strong spiritual power. The more danger it faces, the stronger its psychic power.'),
  -- alakazam in heartgold
  (65, 6500, 15, 'Closing both its eyes heightens all its other senses. This enables it to use its abilities to their extremes.'),
  -- machop in heartgold
  (66, 6600, 15, 'Always brimming with power, it passes time by lifting boulders. Doing so makes it even stronger.'),
  -- machoke in heartgold
  (67, 6700, 15, 'It always goes at its full power, but this very tough and durable Pokémon never gets tired.'),
  -- machamp in heartgold
  (68, 6800, 15, 'It quickly swings its four arms to rock its opponents with ceaseless punches and chops from all angles.'),
  -- bellsprout in heartgold
  (69, 6900, 15, 'Even though its body is extremely skinny, it is blindingly fast when catching its prey.'),
  -- weepinbell in heartgold
  (70, 7000, 15, 'Even though it is filled with acid, it does not melt because it also oozes a protective fluid.'),
  -- victreebel in heartgold
  (71, 7100, 15, 'Acid that has dissolved many prey becomes sweeter, making it even more effective at attracting prey.'),
  -- tentacool in heartgold
  (72, 7200, 15, 'When the tide goes out, dehydrated TENTACOOL remains can be found washed up on the shore.'),
  -- tentacruel in heartgold
  (73, 7300, 15, 'Its 80 tentacles absorb water and stretch almost endlessly to constrict its prey and enemies.'),
  -- geodude in heartgold
  (74, 7400, 15, 'Most people may not notice, but a closer look should reveal that there are many GEODUDE around.'),
  -- graveler in heartgold
  (75, 7500, 15, 'With a free and uncaring nature, it doesn’t mind if pieces break off while it rolls down mountains.'),
  -- golem in heartgold
  (76, 7600, 15, 'It sheds its skin once a year. The discarded shell immediately hardens and crumbles away.'),
  -- ponyta in heartgold
  (77, 7700, 15, 'It is a weak runner immediately after birth. It gradually becomes faster by chasing after its parents.'),
  -- rapidash in heartgold
  (78, 7800, 15, 'At full gallop, its four hooves barely touch the ground because it moves so incredibly fast.'),
  -- slowpoke in heartgold
  (79, 7900, 15, 'It lazes vacantly near water. If something bites its tail, it won’t even notice for a whole day.'),
  -- slowbro in heartgold
  (80, 8000, 15, 'If the tail-biting SHELLDER is thrown off in a harsh battle, it reverts to being an ordinary SLOWPOKE.'),
  -- magnemite in heartgold
  (81, 8100, 15, 'It is attracted by electromagnetic waves. It may approach Trainers if they are using their Pokégear.'),
  -- magneton in heartgold
  (82, 8200, 15, 'Three MAGNEMITE are linked by a strong magnetic force. Earaches will occur if you get too close.'),
  -- farfetchd in heartgold
  (83, 8300, 15, 'If anyone tries to disturb where the essential plant stalks grow, it uses its own stalk to thwart them.'),
  -- doduo in heartgold
  (84, 8400, 15, 'By alternately raising and lowering its two heads, it balances itself to be more stable while running.'),
  -- dodrio in heartgold
  (85, 8500, 15, 'It collects data and plans three times as wisely, but it may think too much and fall into a state of immobility.'),
  -- seel in heartgold
  (86, 8600, 15, 'Although it can’t walk well on land, it is a graceful swimmer. It especially loves being in frigid seas.'),
  -- dewgong in heartgold
  (87, 8700, 15, 'Its streamlined body has little drag in water. The colder the temperature, the friskier it gets.'),
  -- grimer in heartgold
  (88, 8800, 15, 'As it moves, it loses bits of its body, from which new GRIMER emerge. This worsens the stench around it.'),
  -- muk in heartgold
  (89, 8900, 15, 'They love to gather in smelly areas where sludge accumulates, making the stench around them worse.'),
  -- shellder in heartgold
  (90, 9000, 15, 'It swims facing backward by opening and closing its two-piece shell. It is surprisingly fast.'),
  -- cloyster in heartgold
  (91, 9100, 15, 'Once it slams its shell shut, it is impossible to open, even by those with superior strength.'),
  -- gastly in heartgold
  (92, 9200, 15, 'With its gas-like body, it can sneak into any place it desires. However, it can be blown away by wind.'),
  -- haunter in heartgold
  (93, 9300, 15, 'In total darkness, where nothing is visible, HAUNTER lurks, silently stalking its next victim.'),
  -- gengar in heartgold
  (94, 9400, 15, 'It steals heat from its surroundings. If you feel a sudden chill, it is certain that a GENGAR appeared.'),
  -- onix in heartgold
  (95, 9500, 15, 'It twists and squirms through the ground. The thunderous roar of its tunneling echoes a long way.'),
  -- drowzee in heartgold
  (96, 9600, 15, 'If you think that you had a good dream but you can’t remember it, a DROWZEE has probably eaten it.'),
  -- hypno in heartgold
  (97, 9700, 15, 'When it is very hungry, it puts humans it meets to sleep, then it feasts on their dreams.'),
  -- krabby in heartgold
  (98, 9800, 15, 'If it senses danger approaching, it cloaks itself with bubbles from its mouth so it will look bigger.'),
  -- kingler in heartgold
  (99, 9900, 15, 'It can hardly lift its massive, overgrown pincer. The pincer’s size makes it difficult to aim properly.'),
  -- voltorb in heartgold
  (100, 10000, 15, 'It rolls to move. If the ground is uneven, a sudden jolt from hitting a bump can cause it to explode.'),
  -- electrode in heartgold
  (101, 10100, 15, 'It is dangerous. If it has too much electricity and has nothing to do, it amuses itself by exploding.'),
  -- exeggcute in heartgold
  (102, 10200, 15, 'Their shells are very durable. Even if they crack, they can survive without spilling their contents.'),
  -- exeggutor in heartgold
  (103, 10300, 15, 'Its three heads think independently. However, they are friendly and never appear to squabble.'),
  -- cubone in heartgold
  (104, 10400, 15, 'If it is sad or lonely, the skull it wears shakes and emits a plaintive and mournful sound.'),
  -- marowak in heartgold
  (105, 10500, 15, 'It has been seen pounding boulders with the bone it carries in order to tap out messages to others.'),
  -- hitmonlee in heartgold
  (106, 10600, 15, 'This amazing Pokémon has an awesome sense of balance. It can kick in succession from any position.'),
  -- hitmonchan in heartgold
  (107, 10700, 15, 'Its punches slice the air. However, it seems to need a short break after fighting for three minutes.'),
  -- lickitung in heartgold
  (108, 10800, 15, 'Its tongue has well-developed nerves that run to the very tip, so it can be deftly manipulated.'),
  -- koffing in heartgold
  (109, 10900, 15, 'Its thin, filmy body is filled with gases that cause constant sniffles, coughs and teary eyes.'),
  -- weezing in heartgold
  (110, 11000, 15, 'If one of the twin KOFFING inflates, the other one deflates. It constantly mixes its poisonous gases.'),
  -- rhyhorn in heartgold
  (111, 11100, 15, 'It is inept at turning because of its four short legs. It can only charge and run in one direction.'),
  -- rhydon in heartgold
  (112, 11200, 15, 'Its rugged hide protects it from even the heat of lava. However, the hide also makes it insensitive.'),
  -- chansey in heartgold
  (113, 11300, 15, 'It walks carefully to prevent its egg from breaking. However, it is extremely fast at running away.'),
  -- tangela in heartgold
  (114, 11400, 15, 'The vines that cloak its entire body are always jiggling. They effectively unnerve its foes.'),
  -- kangaskhan in heartgold
  (115, 11500, 15, 'If it is safe, the young gets out of the belly pouch to play. The adult keeps a close eye on the youngster.'),
  -- horsea in heartgold
  (116, 11600, 15, 'If attacked by a larger enemy, it quickly swims to safety by adeptly controlling its well-developed dorsal fin.'),
  -- seadra in heartgold
  (117, 11700, 15, 'An examination of its cells revealed the presence of a gene not found in HORSEA. It became a hot topic.'),
  -- goldeen in heartgold
  (118, 11800, 15, 'Its dorsal, pectoral and tail fins wave elegantly in water. That is why it is known as the water dancer.'),
  -- seaking in heartgold
  (119, 11900, 15, 'During spawning season, SEAKING gather from all over, causing rivers to appear a brilliant red.'),
  -- staryu in heartgold
  (120, 12000, 15, 'At night, the middle of its body slowly flickers with the same rhythm as a human heartbeat.'),
  -- starmie in heartgold
  (121, 12100, 15, 'The middle section of its body is called the core. It glows in a different color each time it is seen.'),
  -- mr-mime in heartgold
  (122, 12200, 15, 'A skilled mime from birth, it gains the ability to create invisible objects as it matures.'),
  -- scyther in heartgold
  (123, 12300, 15, 'It slashes through grass with its sharp scythes, moving too fast for the human eye to track.'),
  -- jynx in heartgold
  (124, 12400, 15, 'It rocks its body rhythmically. It appears to alter the rhythm depending on how it is feeling.'),
  -- electabuzz in heartgold
  (125, 12500, 15, 'Electricity runs across the surface of its body. In darkness, its entire body glows a whitish-blue.'),
  -- magmar in heartgold
  (126, 12600, 15, 'It dislikes cold places, so it blows scorching flames to make the environment suitable for itself.'),
  -- pinsir in heartgold
  (127, 12700, 15, 'With its pincer horns, it digs burrows to sleep in at night. In the morning, damp soil clings to its body.'),
  -- tauros in heartgold
  (128, 12800, 15, 'They fight each other by locking horns. The herd’s protector takes pride in its battle-scarred horns.'),
  -- magikarp in heartgold
  (129, 12900, 15, 'An underpowered, pathetic Pokémon. It may jump high on rare occasions, but usually not more than seven feet.'),
  -- gyarados in heartgold
  (130, 13000, 15, 'They say that during past strife, GYARADOS would appear and leave blazing ruins in its wake.'),
  -- lapras in heartgold
  (131, 13100, 15, 'They have gentle hearts. Because they rarely fight, many have been caught. Their number has dwindled.'),
  -- ditto in heartgold
  (132, 13200, 15, 'It can transform into anything. When it sleeps, it changes into a stone to avoid being attacked.'),
  -- eevee in heartgold
  (133, 13300, 15, 'It has the ability to alter the composition of its body to suit its surrounding environment.'),
  -- vaporeon in heartgold
  (134, 13400, 15, 'When VAPOREON’s fins begin to vibrate, it is a sign that rain will come within a few hours.'),
  -- jolteon in heartgold
  (135, 13500, 15, 'It concentrates the weak electric charges emitted by its cells and launches wicked lightning bolts.'),
  -- flareon in heartgold
  (136, 13600, 15, 'It stores some of the air it inhales in its internal flame pouch, which heats it to over 3,000 degrees Fahrenheit.'),
  -- porygon in heartgold
  (137, 13700, 15, 'It is a manmade Pokémon. Since it doesn’t breathe, people are eager to try it in any environment.'),
  -- omanyte in heartgold
  (138, 13800, 15, 'Revived from an ancient fossil, this Pokémon uses air stored in its shell to sink and rise in water.'),
  -- omastar in heartgold
  (139, 13900, 15, 'Apparently, it cracked SHELLDER’s shell with its sharp fangs and sucked out the insides.'),
  -- kabuto in heartgold
  (140, 14000, 15, 'On rare occasions, some have been found as fossils which they became while hiding on the ocean floor.'),
  -- kabutops in heartgold
  (141, 14100, 15, 'In the water, it tucks in its limbs to become more compact, then it wiggles its shell to swim fast.'),
  -- aerodactyl in heartgold
  (142, 14200, 15, 'A vicious Pokémon from the distant past, it appears to have flown by spreading its wings and gliding.'),
  -- snorlax in heartgold
  (143, 14300, 15, 'What sounds like its cry may actually be its snores or the rumblings of its hungry belly.'),
  -- articuno in heartgold
  (144, 14400, 15, 'The magnificent, seemingly translucent wings of this legendary bird Pokémon are said to be made of ice.'),
  -- zapdos in heartgold
  (145, 14500, 15, 'This legendary bird Pokémon causes savage thunderstorms by flapping its glittering wings.'),
  -- moltres in heartgold
  (146, 14600, 15, 'This legendary Pokémon scatters embers with every flap of its wings. It is a thrilling sight to behold.'),
  -- dratini in heartgold
  (147, 14700, 15, 'It is born large to start with. It repeatedly sheds its skin as it steadily grows longer.'),
  -- dragonair in heartgold
  (148, 14800, 15, 'They say that if it emits an aura from its whole body, the weather will begin to change instantly.'),
  -- dragonite in heartgold
  (149, 14900, 15, 'It is said that this Pokémon constantly flies over the immense seas and rescues drowning people.'),
  -- mewtwo in heartgold
  (150, 15000, 15, 'Because its battle abilities were raised to the ultimate level, it thinks only of defeating its foes.'),
  -- mew in heartgold
  (151, 15100, 15, 'Apparently, it appears only to those people who are pure of heart and have a strong desire to see it.'),
  -- chikorita in heartgold
  (152, 15200, 15, 'A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up sunrays.'),
  -- bayleef in heartgold
  (153, 15300, 15, 'The scent of spices comes from around its neck. Somehow, sniffing it makes you want to fight.'),
  -- meganium in heartgold
  (154, 15400, 15, 'The aroma that rises from its petals contains a substance that calms aggressive feelings.'),
  -- cyndaquil in heartgold
  (155, 15500, 15, 'It is timid, and always curls itself up in a ball. If attacked, it flares up its back for protection.'),
  -- quilava in heartgold
  (156, 15600, 15, 'Be careful if it turns its back during battle. It means that it will attack with the fire on its back.'),
  -- typhlosion in heartgold
  (157, 15700, 15, 'If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.'),
  -- totodile in heartgold
  (158, 15800, 15, 'Its powerful, well-developed jaws are capable of crushing anything. Even its Trainer must be careful.'),
  -- croconaw in heartgold
  (159, 15900, 15, 'If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth.'),
  -- feraligatr in heartgold
  (160, 16000, 15, 'When it bites with its massive and powerful jaws, it shakes its head and savagely tears its victim up.'),
  -- sentret in heartgold
  (161, 16100, 15, 'A very cautious Pokémon, it raises itself up using its tail to get a better view of its surroundings.'),
  -- furret in heartgold
  (162, 16200, 15, 'It makes a nest to suit its long and skinny body. The nest is impossible for other Pokémon to enter.'),
  -- hoothoot in heartgold
  (163, 16300, 15, 'It always stands on one foot. It changes feet so fast, the movement can rarely be seen.'),
  -- noctowl in heartgold
  (164, 16400, 15, 'Its eyes are specially adapted. They concentrate even faint light and enable it to see in the dark.'),
  -- ledyba in heartgold
  (165, 16500, 15, 'It is very timid. It will be afraid to move if it is alone. But it will be active if it is in a group.'),
  -- ledian in heartgold
  (166, 16600, 15, 'When the stars flicker in the night sky, it flutters about, scattering a glowing powder.'),
  -- spinarak in heartgold
  (167, 16700, 15, 'It lies still in the same pose for days in its web, waiting for its unsuspecting prey to wander close.'),
  -- ariados in heartgold
  (168, 16800, 15, 'It spins string not only from its rear but also from its mouth. It’s hard to tell which end is which.'),
  -- crobat in heartgold
  (169, 16900, 15, 'It flies so silently through the dark on its four wings that it may not be noticed even when nearby.'),
  -- chinchou in heartgold
  (170, 17000, 15, 'It shoots positive and negative electricity between the tips of its two antennae and zaps its enemies.'),
  -- lanturn in heartgold
  (171, 17100, 15, 'The light it emits is so bright that it can illuminate the sea’s surface from a depth of over three miles.'),
  -- pichu in heartgold
  (172, 17200, 15, 'It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.'),
  -- cleffa in heartgold
  (173, 17300, 15, 'Because of its unusual, starlike silhouette, people believe that it came here on a meteor.'),
  -- igglybuff in heartgold
  (174, 17400, 15, 'It has a very soft body. If it starts to roll, it will bounce all over and be impossible to stop.'),
  -- togepi in heartgold
  (175, 17500, 15, 'The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.'),
  -- togetic in heartgold
  (176, 17600, 15, 'They say that it will appear before kindhearted, caring people and shower them with happiness.'),
  -- natu in heartgold
  (177, 17700, 15, 'Because its wings aren’t yet fully grown, it has to hop to get around. It is always staring at something.'),
  -- xatu in heartgold
  (178, 17800, 15, 'They say that it stays still and quiet because it is seeing both the past and future at the same time.'),
  -- mareep in heartgold
  (179, 17900, 15, 'If static electricity builds in its body, its fleece doubles in volume. Touching it will shock you.'),
  -- flaaffy in heartgold
  (180, 18000, 15, 'As a result of storing too much electricity, it developed patches where even downy wool won’t grow.'),
  -- ampharos in heartgold
  (181, 18100, 15, 'The tail’s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.'),
  -- bellossom in heartgold
  (182, 18200, 15, 'BELLOSSOM gather at times and seem to dance. They say that the dance is a ritual to summon the sun.'),
  -- marill in heartgold
  (183, 18300, 15, 'The tip of its tail, which contains oil that is lighter than water, lets it swim without drowning.'),
  -- azumarill in heartgold
  (184, 18400, 15, 'By keeping still and listening intently, it can tell what is in even wild, fast-moving rivers.'),
  -- sudowoodo in heartgold
  (185, 18500, 15, 'Although it always pretends to be a tree, its composition appears more similar to rock than to vegetation.'),
  -- politoed in heartgold
  (186, 18600, 15, 'If POLIWAG and POLIWHIRL hear its echoing cry, they respond by gathering from far and wide.'),
  -- hoppip in heartgold
  (187, 18700, 15, 'To keep from being blown away by the wind, they gather in clusters. But they do enjoy gentle breezes.'),
  -- skiploom in heartgold
  (188, 18800, 15, 'The bloom on top of its head opens and closes as the temperature fluctuates up and down.'),
  -- jumpluff in heartgold
  (189, 18900, 15, 'Once it catches the wind, it deftly controls its cotton-puff spores-- it can even float around the world.'),
  -- aipom in heartgold
  (190, 19000, 15, 'Its tail is so powerful that it can use it to grab a tree branch and hold itself up in the air.'),
  -- sunkern in heartgold
  (191, 19100, 15, 'It may plummet from the sky. If attacked by a SPEAROW, it will violently shake its leaves.'),
  -- sunflora in heartgold
  (192, 19200, 15, 'It converts sunlight into energy. In the darkness after sunset, it closes its petals and becomes still.'),
  -- yanma in heartgold
  (193, 19300, 15, 'If it flaps its wings really fast, it can generate shock waves that will shatter windows in the area.'),
  -- wooper in heartgold
  (194, 19400, 15, 'This Pokémon lives in cold water. It will leave the water to search for food when it gets cold outside.'),
  -- quagsire in heartgold
  (195, 19500, 15, 'This carefree Pokémon has an easy-going nature. While swimming, it always bumps into boat hulls.'),
  -- espeon in heartgold
  (196, 19600, 15, 'It uses the fine hair that covers its body to sense air currents and predict its enemy’s actions.'),
  -- umbreon in heartgold
  (197, 19700, 15, 'When agitated, this Pokémon protects itself by spraying poisonous sweat from its pores.'),
  -- murkrow in heartgold
  (198, 19800, 15, 'Feared and loathed by many, it is believed to bring misfortune to all those who see it at night.'),
  -- slowking in heartgold
  (199, 19900, 15, 'It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.'),
  -- misdreavus in heartgold
  (200, 20000, 15, 'It likes playing mischievous tricks, such as screaming and wailing to startle people at night.'),
  -- unown in heartgold
  (201, 20100, 15, 'Their shapes look like hieroglyphs on ancient tablets. It is said that the two are somehow related.'),
  -- wobbuffet in heartgold
  (202, 20200, 15, 'It hates light and shock. If attacked, it inflates its body to build up its counterstrike.'),
  -- girafarig in heartgold
  (203, 20300, 15, 'Its tail has a small brain of its own. Beware! If you get close, it may react to your scent by biting.'),
  -- pineco in heartgold
  (204, 20400, 15, 'It likes to make its shell thicker by adding layers of tree bark. The additional weight doesn’t bother it.'),
  -- forretress in heartgold
  (205, 20500, 15, 'Its entire body is shielded by a steel-hard shell. What lurks inside this shell is a total mystery.'),
  -- dunsparce in heartgold
  (206, 20600, 15, 'When spotted, this Pokémon escapes backward by furiously boring into the ground with its tail.'),
  -- gligar in heartgold
  (207, 20700, 15, 'It flies straight at its target’s face, then clamps down on the startled victim to inject poison.'),
  -- steelix in heartgold
  (208, 20800, 15, 'Its body has been compressed deep under the ground. As a result, it is even harder than a diamond.'),
  -- snubbull in heartgold
  (209, 20900, 15, 'Although it looks frightening, it is actually kind and affectionate. It is very popular among women.'),
  -- granbull in heartgold
  (210, 21000, 15, 'It is actually timid and easily spooked. If attacked, it flails about to fend off its attacker.'),
  -- qwilfish in heartgold
  (211, 21100, 15, 'To fire its poison spikes, it must inflate its body by drinking over 2.6 gallons of water all at once.'),
  -- scizor in heartgold
  (212, 21200, 15, 'It swings its eye-patterned pincers up to scare its foes. This makes it look like it has three heads.'),
  -- shuckle in heartgold
  (213, 21300, 15, 'The berries it stores in its vase-like shell decompose and become a gooey liquid.'),
  -- heracross in heartgold
  (214, 21400, 15, 'This powerful Pokémon thrusts its prized horn under its enemies’ bellies, then lifts and throws them.'),
  -- sneasel in heartgold
  (215, 21500, 15, 'Its paws conceal sharp claws. If attacked, it suddenly extends the claws and startles its enemy.'),
  -- teddiursa in heartgold
  (216, 21600, 15, 'If it finds honey, its crescent mark glows. It always licks its paws because they’re soaked with honey.'),
  -- ursaring in heartgold
  (217, 21700, 15, 'Although it is a good climber, it prefers to snap trees with its forelegs and eat fallen berries.'),
  -- slugma in heartgold
  (218, 21800, 15, 'It never sleeps. It has to keep moving because if it stopped, its magma body would cool and harden.'),
  -- magcargo in heartgold
  (219, 21900, 15, 'The shell on its back is just skin that has cooled and hardened. It breaks easily with a slight touch.'),
  -- swinub in heartgold
  (220, 22000, 15, 'It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.'),
  -- piloswine in heartgold
  (221, 22100, 15, 'Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.'),
  -- corsola in heartgold
  (222, 22200, 15, 'It continuously sheds and grows. The tip of its head is prized as a treasure because of its beauty.'),
  -- remoraid in heartgold
  (223, 22300, 15, 'It has superb accuracy. The water it shoots out can strike moving prey from more than 300 feet away.'),
  -- octillery in heartgold
  (224, 22400, 15, 'It traps foes with the suction cups on its tentacles, then smashes them with its rock-hard head.'),
  -- delibird in heartgold
  (225, 22500, 15, 'It carries food all day long. There are tales about lost people who were saved by its stored food.'),
  -- mantine in heartgold
  (226, 22600, 15, 'As it majestically swims, it doesn’t care if REMORAID attach to it for scavenging its leftovers.'),
  -- skarmory in heartgold
  (227, 22700, 15, 'Its sturdy wings look heavy, but they are actually hollow and light, allowing it to fly freely in the sky.'),
  -- houndour in heartgold
  (228, 22800, 15, 'It uses different kinds of cries for communicating with others of its kind and for pursuing its prey.'),
  -- houndoom in heartgold
  (229, 22900, 15, 'If you are burned by the flames it shoots from its mouth, the pain will never go away.'),
  -- kingdra in heartgold
  (230, 23000, 15, 'It is said that it usually hides in underwater caves. It can create whirlpools by yawning.'),
  -- phanpy in heartgold
  (231, 23100, 15, 'It swings its long snout around playfully, but because it is so strong, that can be dangerous.'),
  -- donphan in heartgold
  (232, 23200, 15, 'It has sharp, hard tusks and a rugged hide. Its tackle is strong enough to knock down a house.'),
  -- porygon2 in heartgold
  (233, 23300, 15, 'This upgraded version of PORYGON is designed for space exploration. It can’t fly, however.'),
  -- stantler in heartgold
  (234, 23400, 15, 'The curved antlers subtly change the flow of air to create a strange space where reality is distorted.'),
  -- smeargle in heartgold
  (235, 23500, 15, 'A special fluid oozes from the tip of its tail. It paints the fluid everywhere to mark its territory.'),
  -- tyrogue in heartgold
  (236, 23600, 15, 'It is always bursting with energy. To make itself stronger, it keeps on fighting even if it loses.'),
  -- hitmontop in heartgold
  (237, 23700, 15, 'If you are enchanted by its smooth, dance-like kicks, you may get a closer experience with one than you’d like.'),
  -- smoochum in heartgold
  (238, 23800, 15, 'Its lips are the most sensitive part of its body. It always uses its lips first to examine things.'),
  -- elekid in heartgold
  (239, 23900, 15, 'It rotates its arms to generate electricity, but it tires easily, so it only charges up a little bit.'),
  -- magby in heartgold
  (240, 24000, 15, 'Each and every time it inhales and exhales, hot embers dribble from its mouth and nostrils.'),
  -- miltank in heartgold
  (241, 24100, 15, 'Its milk is packed with nutrition, making it the ultimate beverage for the sick or weary.'),
  -- blissey in heartgold
  (242, 24200, 15, 'Anyone who takes even one taste of BLISSEY’s egg becomes unfailingly caring and pleasant to everyone.'),
  -- raikou in heartgold
  (243, 24300, 15, 'The rain clouds it carries let it fire thunderbolts at will. They say that it descended with lightning.'),
  -- entei in heartgold
  (244, 24400, 15, 'Volcanoes erupt when it barks. Unable to contain its sheer power, it races headlong around the land.'),
  -- suicune in heartgold
  (245, 24500, 15, 'Said to be the embodiment of north winds, it can instantly purify filthy, murky water.'),
  -- larvitar in heartgold
  (246, 24600, 15, 'It feeds on soil. After it has eaten a large mountain, it falls asleep so it can grow.'),
  -- pupitar in heartgold
  (247, 24700, 15, 'Its shell is as hard as sheet rock, and it is also very strong. Its thrashing can topple a mountain.'),
  -- tyranitar in heartgold
  (248, 24800, 15, 'Its body can’t be harmed by any sort of attack, so it is very eager to make challenges against enemies.'),
  -- lugia in heartgold
  (249, 24900, 15, 'It is said that it quietly spends its time deep at the bottom of the sea because its powers are too strong.'),
  -- ho-oh in heartgold
  (250, 25000, 15, 'Legends claim this Pokémon flies the world’s skies continuously on its magnificent, seven-colored wings.'),
  -- celebi in heartgold
  (251, 25100, 15, 'This Pokémon wanders across time. Grass and trees flourish in the forests in which it has appeared.'),
  -- treecko in heartgold
  (252, 25200, 15, 'Small hooks on the bottom of its feet catch on walls and ceilings. That is how it can hang from above.'),
  -- grovyle in heartgold
  (253, 25300, 15, 'It leaps from tree branch to tree branch quite swiftly. It shows astounding agility.'),
  -- sceptile in heartgold
  (254, 25400, 15, 'It agilely leaps about the jungle and uses the sharp leaves on its arms to strike its prey.'),
  -- torchic in heartgold
  (255, 25500, 15, 'Inside its body is a place where it keeps a small flame. Hug it! It will be as warm as a hot-water bottle.'),
  -- combusken in heartgold
  (256, 25600, 15, 'During a battle, the hot flame in its body increases. Its kicks have outstanding destructive power.'),
  -- blaziken in heartgold
  (257, 25700, 15, 'It can clear a 30-story building in a leap. Its fiery punches scorch its foes.'),
  -- mudkip in heartgold
  (258, 25800, 15, 'Its power can crush boulders. It rests by covering itself with mud at the bottom of a river.'),
  -- marshtomp in heartgold
  (259, 25900, 15, 'Living on muddy ground that provides poor footing has made its legs sturdy.'),
  -- swampert in heartgold
  (260, 26000, 15, 'Its arms are hard as rock. With one swing, it can break a boulder into pieces.'),
  -- poochyena in heartgold
  (261, 26100, 15, 'It chases its prey until the victim becomes exhausted. However, it turns tail if the prey strikes back.'),
  -- mightyena in heartgold
  (262, 26200, 15, 'It chases down prey in a pack of around ten. They defeat foes with perfectly coordinated teamwork.'),
  -- zigzagoon in heartgold
  (263, 26300, 15, 'It gets interested in everything, which is why it zigs and zags. It is good at finding items.'),
  -- linoone in heartgold
  (264, 26400, 15, 'When running in a straight line, it can easily top 60 miles an hour. It has a tough time with curved roads.'),
  -- wurmple in heartgold
  (265, 26500, 15, 'It lives among the tall grass and in forests. It repels attacks by raising up the spikes on its rear.'),
  -- silcoon in heartgold
  (266, 26600, 15, 'Having wrapped silk around the branches of a tree, it quiescently awaits evolution.'),
  -- beautifly in heartgold
  (267, 26700, 15, 'Vibrantly patterned wings are its prominent feature. It sucks sweet flower nectar with its long mouth.'),
  -- cascoon in heartgold
  (268, 26800, 15, 'It endures attacks with patience, because the more pain before evolution, the sturdier it becomes.'),
  -- dustox in heartgold
  (269, 26900, 15, 'It scatters its fine dust all over when it is attacked. It is a nocturnal Pokémon.'),
  -- lotad in heartgold
  (270, 27000, 15, 'Its leaf grew too large for it to live on land. That is how it began to live floating in the water.'),
  -- lombre in heartgold
  (271, 27100, 15, 'It is nocturnal and becomes active at nightfall. It feeds on aquatic mosses that grow in the riverbed.'),
  -- ludicolo in heartgold
  (272, 27200, 15, 'If it hears festive music, it begins moving in rhythm in order to amplify its power.'),
  -- seedot in heartgold
  (273, 27300, 15, 'It attaches itself to a tree branch using the top of its head. Strong winds can sometimes make it fall.'),
  -- nuzleaf in heartgold
  (274, 27400, 15, 'It lives deep in forests. With the leaf on its head, it makes a flute whose song makes listeners uneasy.'),
  -- shiftry in heartgold
  (275, 27500, 15, 'It lives quietly in the deep forest. It is said to create chilly winter winds with the fans it holds.'),
  -- taillow in heartgold
  (276, 27600, 15, 'When it gets cold, they migrate, flying over 180 miles a day. It hunts for tasty prey.'),
  -- swellow in heartgold
  (277, 27700, 15, 'It dives at a steep angle as soon as it spots its prey. It catches its prey with sharp claws.'),
  -- wingull in heartgold
  (278, 27800, 15, 'It soars on updrafts without flapping its wings. It makes a nest on sheer cliffs at the sea’s edge.'),
  -- pelipper in heartgold
  (279, 27900, 15, 'It protects its young in its beak. It bobs on waves, resting on them on days when the waters are calm.'),
  -- ralts in heartgold
  (280, 28000, 15, 'The horns on its head provide a strong power that enables it to sense people’s emotions.'),
  -- kirlia in heartgold
  (281, 28100, 15, 'It has a psychic power that enables it to distort the space around it and see into the future.'),
  -- gardevoir in heartgold
  (282, 28200, 15, 'It unleashes psychokinetic energy at full power when protecting a Trainer it has bonded closely with.'),
  -- surskit in heartgold
  (283, 28300, 15, 'It secretes a thick, sweet-scented syrup from the tip of its head. It lives on weed-choked ponds.'),
  -- masquerain in heartgold
  (284, 28400, 15, 'It flaps its four wings to hover and fly freely in any direction-- to and fro and sideways.'),
  -- shroomish in heartgold
  (285, 28500, 15, 'If it senses danger, it scatters spores from the top of its head to protect itself.'),
  -- breloom in heartgold
  (286, 28600, 15, 'It scatters poisonous spores and throws powerful punches while its foe is hampered by inhaled spores.'),
  -- slakoth in heartgold
  (287, 28700, 15, 'The way SLAKOTH lolls around makes anyone who watches it feel like doing the same.'),
  -- vigoroth in heartgold
  (288, 28800, 15, 'Its stress level rises if it cannot keep moving constantly. Too much stress makes it feel sick.'),
  -- slaking in heartgold
  (289, 28900, 15, 'The world’s laziest Pokémon. It moves to another spot when there’s no food left within its reach.'),
  -- nincada in heartgold
  (290, 29000, 15, 'It can sometimes live underground for more than 10 years. It absorbs nutrients from the roots of trees.'),
  -- ninjask in heartgold
  (291, 29100, 15, 'Its cry leaves a lasting headache if heard for too long. It moves so quickly that it is almost invisible.'),
  -- shedinja in heartgold
  (292, 29200, 15, 'A strange Pokémon--it flies without moving its wings, has a hollow shell for a body, and does not breathe.'),
  -- whismur in heartgold
  (293, 29300, 15, 'If it senses danger, it scares the foe by crying out with the volume of a jet-plane engine.'),
  -- loudred in heartgold
  (294, 29400, 15, 'It shouts loudly by inhaling air, and then uses its well-developed stomach muscles to exhale.'),
  -- exploud in heartgold
  (295, 29500, 15, 'Its roar in battle shakes the ground like a tremor--or like an earthquake has struck.'),
  -- makuhita in heartgold
  (296, 29600, 15, 'It toughens up by slamming into thick trees over and over. It gains a sturdy body and dauntless spirit.'),
  -- hariyama in heartgold
  (297, 29700, 15, 'It loves challenging others to tests of strength. It has the power to stop a train with a slap.'),
  -- azurill in heartgold
  (298, 29800, 15, 'Its tail is packed full of the nutrients it needs to grow.'),
  -- nosepass in heartgold
  (299, 29900, 15, 'If two of these meet, they cannot get too close because their noses repel each other.'),
  -- skitty in heartgold
  (300, 30000, 15, 'It’s adorable when it chases its own tail. It’s difficult to earn its trust.'),
  -- delcatty in heartgold
  (301, 30100, 15, 'It dislikes dirty places. It often searches for a comfortable place in which to groom itself.'),
  -- sableye in heartgold
  (302, 30200, 15, 'It dwells in the darkness of caves. It uses its sharp claws to dig up gems to nourish itself.'),
  -- mawile in heartgold
  (303, 30300, 15, 'It chomps with its gaping mouth. Its huge jaws are actually steel horns that have been transformed.'),
  -- aron in heartgold
  (304, 30400, 15, 'When it evolves, it sheds the steel carapace that covered its whole body and develops a new one.'),
  -- lairon in heartgold
  (305, 30500, 15, 'It loves iron ore. Groups of them fight for territory by bashing one another with their steel bodies.'),
  -- aggron in heartgold
  (306, 30600, 15, 'You can tell its age by the length of its iron horns. It claims an entire mountain as its territory.'),
  -- meditite in heartgold
  (307, 30700, 15, 'It meditates to heighten its inner energy and to float in the air. It eats one berry a day.'),
  -- medicham in heartgold
  (308, 30800, 15, 'Through yoga training, it gained the psychic power to predict its foe’s next move.'),
  -- electrike in heartgold
  (309, 30900, 15, 'It stores electricity in its fur. It gives off sparks from all over its body in seasons when the air is dry.'),
  -- manectric in heartgold
  (310, 31000, 15, 'Its nest can be found where a thunderbolt hits. It is discharging electricity from its mane.'),
  -- plusle in heartgold
  (311, 31100, 15, 'It absorbs electricity from telephone poles. It shorts out its body to create crackling noises.'),
  -- minun in heartgold
  (312, 31200, 15, 'Exposure to electricity from MINUN and PLUSLE promotes blood circulation and relaxes muscles.'),
  -- volbeat in heartgold
  (313, 31300, 15, 'It emits light from its tail to communicate. It loves the sweet aroma given off by ILLUMISE.'),
  -- illumise in heartgold
  (314, 31400, 15, 'Its fragrance attracts a swarm of VOLBEAT, so they draw over 200 patterns in the night sky.'),
  -- roselia in heartgold
  (315, 31500, 15, 'ROSELIA that drink nutritionally rich springwater are said to reveal rare coloration when they bloom.'),
  -- gulpin in heartgold
  (316, 31600, 15, 'It has a small heart and brain. Its stomach comprises most of its body, with enzymes to dissolve anything.'),
  -- swalot in heartgold
  (317, 31700, 15, 'It gulps anything that fits in its mouth. Its special enzymes can dissolve anything.'),
  -- carvanha in heartgold
  (318, 31800, 15, 'They form packs to attack boats and rip out their hulls to sink them. They live in rivers in the jungle.'),
  -- sharpedo in heartgold
  (319, 31900, 15, 'It can swim at speeds of 75 mph by jetting seawater through its body. It is the bandit of the sea.'),
  -- wailmer in heartgold
  (320, 32000, 15, 'It bounces playfully like a ball. The more seawater it swallows, the higher it bounces.'),
  -- wailord in heartgold
  (321, 32100, 15, 'It is the largest of all identified Pokémon. They jump as a pack to herd their prey.'),
  -- numel in heartgold
  (322, 32200, 15, 'The flaming magma it stores in the hump on its back is the source of its tremendous power.'),
  -- camerupt in heartgold
  (323, 32300, 15, 'It lives in the crater of a volcano. It is well known that the humps on its back erupt every 10 years.'),
  -- torkoal in heartgold
  (324, 32400, 15, 'You find abandoned coal mines full of them. They dig tirelessly in search of coal.'),
  -- spoink in heartgold
  (325, 32500, 15, 'It bounces around on its tail to keep its heart pumping. It carries a pearl from CLAMPERL on its head.'),
  -- grumpig in heartgold
  (326, 32600, 15, 'It can perform odd dance steps to influence foes. Its style of dancing became hugely popular overseas.'),
  -- spinda in heartgold
  (327, 32700, 15, 'The chances of two SPINDA having identical spot patterns is less than one in four billion.'),
  -- trapinch in heartgold
  (328, 32800, 15, 'Its nest is a sloped, bowl-like pit in the desert. Once something has fallen in, there is no escape.'),
  -- vibrava in heartgold
  (329, 32900, 15, 'It vibrates its wings vigorously, creating ultrasonic waves that cause serious headaches.'),
  -- flygon in heartgold
  (330, 33000, 15, 'It is nicknamed “The Desert Spirit” because the flapping of its wings sounds like a woman singing.'),
  -- cacnea in heartgold
  (331, 33100, 15, 'It lives in arid locations. Its yellow flowers bloom once a year.'),
  -- cacturne in heartgold
  (332, 33200, 15, 'Packs of them follow travelers through the desert until the travelers can no longer move.'),
  -- swablu in heartgold
  (333, 33300, 15, 'Its wings bring cottony clouds to mind. It grooms with springwater and loves to sit on heads.'),
  -- altaria in heartgold
  (334, 33400, 15, 'It flies gracefully through the sky. Its melodic humming makes you feel like you’re in a dream.'),
  -- zangoose in heartgold
  (335, 33500, 15, 'Its fur would all stand on end if it smelled a SEVIPER nearby. Its sharp claws tear up its foes.'),
  -- seviper in heartgold
  (336, 33600, 15, 'In battle, it uses its bladed tail to counter any ZANGOOSE. It secretes a deadly venom in its tail.'),
  -- lunatone in heartgold
  (337, 33700, 15, 'It was discovered at the site of a meteor strike 40 years ago. Its stare can lull its foes to sleep.'),
  -- solrock in heartgold
  (338, 33800, 15, 'When it rotates itself, it gives off light similar to the sun, thus blinding its foes.'),
  -- barboach in heartgold
  (339, 33900, 15, 'BARBOACH uses its whiskers to taste things just as a person uses his or her tongue to taste things.'),
  -- whiscash in heartgold
  (340, 34000, 15, 'It claims a large swamp to itself. If a foe comes near it, it sets off tremors by thrashing around.'),
  -- corphish in heartgold
  (341, 34100, 15, 'It was originally a Pokémon from afar that escaped to the wild. It can adapt to the dirtiest river.'),
  -- crawdaunt in heartgold
  (342, 34200, 15, 'A brutish Pokémon that loves to battle. It will crash itself into any foe that approaches its nest.'),
  -- baltoy in heartgold
  (343, 34300, 15, 'It moves while spinning around on its single foot. Some BALTOY have been seen spinning on their heads.'),
  -- claydol in heartgold
  (344, 34400, 15, 'It is said that it originates from clay dolls made by an ancient civilization.'),
  -- lileep in heartgold
  (345, 34500, 15, 'It disguises its tentacles as flowers to attract and catch prey. It became extinct in ancient times.'),
  -- cradily in heartgold
  (346, 34600, 15, 'It lives in warm seas. Its heavy body weighs it down so it won’t get washed away in rough weather.'),
  -- anorith in heartgold
  (347, 34700, 15, 'An ancestral Pokémon that lived in the ocean. Over time, its eight feet transformed into wings.'),
  -- armaldo in heartgold
  (348, 34800, 15, 'Its enormous, retractable claws can cut through most anything. Its entire body is clad in sturdy plates.'),
  -- feebas in heartgold
  (349, 34900, 15, 'It is the shabbiest Pokémon of all. It forms in schools and lives at the bottom of rivers.'),
  -- milotic in heartgold
  (350, 35000, 15, 'It’s said that a glimpse of a MILOTIC and its beauty will calm any hostile emotions you’re feeling.'),
  -- castform in heartgold
  (351, 35100, 15, 'This Pokémon can change its cells, taking different forms based on the temperature and humidity.'),
  -- kecleon in heartgold
  (352, 35200, 15, 'It changes its shading to match its surroundings so it can sneak up on prey. Only its belly patterns stay fixed.'),
  -- shuppet in heartgold
  (353, 35300, 15, 'It uses its horn to feed on envy and malice, or so it’s said. It’s very active at night.'),
  -- banette in heartgold
  (354, 35400, 15, 'This Pokémon developed from an abandoned doll that amassed a grudge. It is seen in dark alleys.'),
  -- duskull in heartgold
  (355, 35500, 15, 'If it finds bad children who won’t listen to their parents, it will spirit them away--or so it’s said.'),
  -- dusclops in heartgold
  (356, 35600, 15, 'Anyone who dares peer into its body to see its spectral ball of fire will have their spirit stolen away.'),
  -- tropius in heartgold
  (357, 35700, 15, 'The bunch of fruit around its neck ripens twice a year and is delicious. It’s a highly favored tropical snack.'),
  -- chimecho in heartgold
  (358, 35800, 15, 'It uses the sucker on its head to hang from a tree or from eaves. It can produce seven different tones.'),
  -- absol in heartgold
  (359, 35900, 15, 'It has the ability to foretell natural disasters. Its life span is over a hundred years.'),
  -- wynaut in heartgold
  (360, 36000, 15, 'It tends to move in a pack. Individuals squash against one another to toughen their spirits.'),
  -- snorunt in heartgold
  (361, 36100, 15, 'It’s said that if they are seen at midnight, they’ll cause heavy snow. They eat snow and ice to survive.'),
  -- glalie in heartgold
  (362, 36200, 15, 'It can instantly freeze moisture in the atmosphere. It uses this power to freeze its foes.'),
  -- spheal in heartgold
  (363, 36300, 15, 'It crosses the oceans by rolling itself on drifting ice. Fluffy fur keeps it warm when the temperature is below freezing.'),
  -- sealeo in heartgold
  (364, 36400, 15, 'It has a very sensitive nose. It touches new things with its nose to examine them.'),
  -- walrein in heartgold
  (365, 36500, 15, 'It shatters drift ice with its strong tusks. Its thick layer of blubber repels enemy attacks.'),
  -- clamperl in heartgold
  (366, 36600, 15, 'When it evolves, it makes a mysterious pearl that amplifies psychic powers when it’s held.'),
  -- huntail in heartgold
  (367, 36700, 15, 'It lives deep in the pitch-dark sea. It attracts prey by moving its tail in mimicry of a small animal.'),
  -- gorebyss in heartgold
  (368, 36800, 15, 'Its pink body becomes more vivid with the rise of water temperatures in the springtime.'),
  -- relicanth in heartgold
  (369, 36900, 15, 'Discovered by chance during deep-sea explorations, it has not changed since ancient times.'),
  -- luvdisc in heartgold
  (370, 37000, 15, 'Its heart-shaped body makes it popular. In some places, you would give a LUVDISC to someone you love.'),
  -- bagon in heartgold
  (371, 37100, 15, 'Its well-developed neck muscles and ironlike head can smash boulders into pieces.'),
  -- shelgon in heartgold
  (372, 37200, 15, 'It surrounds its body in an iron-hard shell to accumulate enough power to evolve.'),
  -- salamence in heartgold
  (373, 37300, 15, 'It’s uncontrollable if enraged. It flies around spouting flames and scorching fields and mountains.'),
  -- beldum in heartgold
  (374, 37400, 15, 'The magnetic force generated by its body repels the ground’s natural magnetism, letting it float.'),
  -- metang in heartgold
  (375, 37500, 15, 'When two BELDUM fuse together, a magnetic nervous system places their brains in union.'),
  -- metagross in heartgold
  (376, 37600, 15, 'It folds its four legs when flying. Its four brains are said to be superior to a supercomputer.'),
  -- regirock in heartgold
  (377, 37700, 15, 'The same rocks that form its body have been found in ground layers around the world.'),
  -- regice in heartgold
  (378, 37800, 15, 'It is said to have slept in a glacier for thousands of years. Its body can’t be melted, even by magma.'),
  -- registeel in heartgold
  (379, 37900, 15, 'Its body is said to be harder than any kind of metal. A study has revealed that its body is hollow.'),
  -- latias in heartgold
  (380, 38000, 15, 'It communicates using telepathy. Its body is covered in down that refracts light to make it invisible.'),
  -- latios in heartgold
  (381, 38100, 15, 'It understands human speech and is highly intelligent. It is a tender Pokémon that dislikes fighting.'),
  -- kyogre in heartgold
  (382, 38200, 15, 'A mythical Pokémon said to have swelled the seas with rain and tidal waves. It battled with GROUDON.'),
  -- groudon in heartgold
  (383, 38300, 15, 'Said to have expanded the lands by evaporating water with raging heat. It battled titanically with KYOGRE.'),
  -- rayquaza in heartgold
  (384, 38400, 15, 'It flies in the ozone layer, way up high in the sky. Until recently, no one had ever seen it.'),
  -- jirachi in heartgold
  (385, 38500, 15, 'Generations have believed that any wish written on a note on its head will come true when it awakens.'),
  -- deoxys in heartgold
  (386, 38600, 15, 'DNA from a space virus mutated and became a Pokémon. It appears where auroras are seen.'),
  -- turtwig in heartgold
  (387, 38700, 15, 'Photosynthesis occurs across its body under the sun. The shell on its back is actually hardened soil.'),
  -- grotle in heartgold
  (388, 38800, 15, 'A GROTLE that lives in the forest is said to have its own secret springwater.'),
  -- torterra in heartgold
  (389, 38900, 15, 'Ancient people imagined that beneath the ground, a gigantic TORTERRA dwelled.'),
  -- chimchar in heartgold
  (390, 39000, 15, 'The gas made in its belly burns from its rear end. The fire burns weakly when it feels sick.'),
  -- monferno in heartgold
  (391, 39100, 15, 'A bigger fire on its tail and a brighter blue pattern on its face means its rank in its pack is higher.'),
  -- infernape in heartgold
  (392, 39200, 15, 'It tosses its enemies around with agility. It uses all its limbs to fight in its own unique style.'),
  -- piplup in heartgold
  (393, 39300, 15, 'It doesn’t like to be taken care of. It’s difficult to bond with since it won’t listen to its Trainer.'),
  -- prinplup in heartgold
  (394, 39400, 15, 'It lives a solitary life. Its wings deliver wicked blows that can snap even the thickest of trees.'),
  -- empoleon in heartgold
  (395, 39500, 15, 'It avoids unnecessary disputes, but it will decimate anything that threatens its pride.'),
  -- starly in heartgold
  (396, 39600, 15, 'They flock around mountains and fields, chasing after bug Pokémon. Their singing is noisy and annoying.'),
  -- staravia in heartgold
  (397, 39700, 15, 'They maintain huge flocks, although fierce scuffles break out between various flocks.'),
  -- staraptor in heartgold
  (398, 39800, 15, 'When STARAVIA evolve into STARAPTOR, they leave the flock to live alone. They have sturdy wings.'),
  -- bidoof in heartgold
  (399, 39900, 15, 'It lives in groups by the water. It chews up boulders and trees around its nest with its incisors.'),
  -- bibarel in heartgold
  (400, 40000, 15, 'It busily makes its nest with stacks of branches and roots it has cut up with its sharp incisors.'),
  -- kricketot in heartgold
  (401, 40100, 15, 'When its antennae hit each other, it sounds like the music of a xylophone.'),
  -- kricketune in heartgold
  (402, 40200, 15, 'By allowing its cry to resonate in the hollow of its belly, it produces a captivating sound.'),
  -- shinx in heartgold
  (403, 40300, 15, 'The extension and contraction of its muscles generates electricity. Its fur glows when it’s in trouble.'),
  -- luxio in heartgold
  (404, 40400, 15, 'By gathering their tails together, they collectively generate powerful electricity from their claws.'),
  -- luxray in heartgold
  (405, 40500, 15, 'LUXRAY’s ability to see through objects comes in handy when it’s scouting for danger.'),
  -- budew in heartgold
  (406, 40600, 15, 'When it feels the sun’s warm touch, it opens its bud to release pollen. It lives alongside clear pools.'),
  -- roserade in heartgold
  (407, 40700, 15, 'Its sweet aroma attracts prey. Then it spews poison. The more toxic it is, the sweeter its aroma.'),
  -- cranidos in heartgold
  (408, 40800, 15, 'CRANIDOS toughen up their already rock-hard heads by headbutting one another.'),
  -- rampardos in heartgold
  (409, 40900, 15, 'Its skull withstands impacts of any magnitude. As a result, its brain never gets the chance to grow.'),
  -- shieldon in heartgold
  (410, 41000, 15, 'It was generated from a fossil dug out of a layer of clay that was older than anyone knows. It has a sturdy face.'),
  -- bastiodon in heartgold
  (411, 41100, 15, 'When attacked, they form a wall. Their rock-hard faces serve to protect them from the attacks.'),
  -- burmy in heartgold
  (412, 41200, 15, 'It covers itself with a cloak to shelter from the cold. When it’s hot, its cloak is thinner.'),
  -- wormadam in heartgold
  (413, 41300, 15, 'It is said that a WORMADAM that evolves on a cold day will have a thicker cloak.'),
  -- mothim in heartgold
  (414, 41400, 15, 'It flutters around at night and steals honey from the COMBEE hive.'),
  -- combee in heartgold
  (415, 41500, 15, 'At night, COMBEE sleep in a group of about a thousand, packed closely together in a lump.'),
  -- vespiquen in heartgold
  (416, 41600, 15, 'It raises grubs in the holes in its body. It secretes pheromones to control COMBEE.'),
  -- pachirisu in heartgold
  (417, 41700, 15, 'It’s one of the kinds of Pokémon with electric cheek pouches. It shoots charges from its tail.'),
  -- buizel in heartgold
  (418, 41800, 15, 'It inflates its flotation sac, keeping its face above water in order to watch for prey movement.'),
  -- floatzel in heartgold
  (419, 41900, 15, 'With its flotation sac inflated, it can carry people on its back. It deflates the sac before it dives.'),
  -- cherubi in heartgold
  (420, 42000, 15, 'It evolves by sucking the energy out of the small ball where it had been storing nutrients.'),
  -- cherrim in heartgold
  (421, 42100, 15, 'During times of strong sunlight, its bud blooms, its petals open fully, and it becomes very active.'),
  -- shellos in heartgold
  (422, 42200, 15, 'Its shape and coloration vary, depending on its habitat.'),
  -- gastrodon in heartgold
  (423, 42300, 15, 'When its natural enemy attacks, it oozes purple fluid and escapes.'),
  -- ambipom in heartgold
  (424, 42400, 15, 'They live on large trees. They are said to communicate by connecting their tails to those of others.'),
  -- drifloon in heartgold
  (425, 42500, 15, 'It is whispered that any child who mistakes DRIFLOON for a balloon and holds on to it could wind up missing.'),
  -- drifblim in heartgold
  (426, 42600, 15, 'It can generate and release gas within its body. That’s how it can control the altitude of its drift.'),
  -- buneary in heartgold
  (427, 42700, 15, 'You can tell how it feels by the way it rolls its ears. When it’s scared, both ears are rolled up.'),
  -- lopunny in heartgold
  (428, 42800, 15, 'It sheds its fur twice a year. Its winter fur is soft and fluffy.'),
  -- mismagius in heartgold
  (429, 42900, 15, 'Its cries sound like incantations to torment the foe. It appears where you least expect it.'),
  -- honchkrow in heartgold
  (430, 43000, 15, 'It is merciless by nature. It is said that it never forgives the mistakes of its MURKROW followers.'),
  -- glameow in heartgold
  (431, 43100, 15, 'When it’s happy, GLAMEOW demonstrates beautiful movements of its tail, like a dancing ribbon.'),
  -- purugly in heartgold
  (432, 43200, 15, 'It would claim another Pokémon’s nest as its own if it finds a nest sufficiently comfortable.'),
  -- chingling in heartgold
  (433, 43300, 15, 'It emits high-frequency cries that people can’t hear. Once it starts, it can cry for an awfully long time.'),
  -- stunky in heartgold
  (434, 43400, 15, 'The foul fluid from its rear is so revolting that it can make people feel queasy up to a mile and a quarter away.'),
  -- skuntank in heartgold
  (435, 43500, 15, 'It attacks by spraying a repugnant fluid from its tail, but the stench dulls after a few squirts.'),
  -- bronzor in heartgold
  (436, 43600, 15, 'Ancient people believed that the pattern on BRONZOR’s back contained a mysterious power.'),
  -- bronzong in heartgold
  (437, 43700, 15, 'Ancient people believed that petitioning BRONZONG for rain was the way to make crops grow.'),
  -- bonsly in heartgold
  (438, 43800, 15, 'In order to adjust the level of fluids in its body, it exudes water from its eyes. This makes it appear to be crying.'),
  -- mime-jr in heartgold
  (439, 43900, 15, 'In an attempt to confuse its enemy, it mimics the enemy’s movements. Then it wastes no time in making itself scarce!'),
  -- happiny in heartgold
  (440, 44000, 15, 'It carefully carries a round, white rock that it thinks is an egg. It’s bothered by how curly its hair looks.'),
  -- chatot in heartgold
  (441, 44100, 15, 'It mimics the cries of other Pokémon to trick them into thinking it’s one of them. This way they won’t attack it.'),
  -- spiritomb in heartgold
  (442, 44200, 15, 'It was formed by uniting 108 spirits. It has been bound to the Odd Keystone to keep it from doing any mischief.'),
  -- gible in heartgold
  (443, 44300, 15, 'It nests in horizontal holes warmed by geothermal heat. Foes who get too close can expect to be pounced on and bitten.'),
  -- gabite in heartgold
  (444, 44400, 15, 'As it digs to expand its nest, it habitually digs up gems that it then hoards in its nest.'),
  -- garchomp in heartgold
  (445, 44500, 15, 'Its body is covered in fine scales that reduce drag, enabling it to fly at high speeds.'),
  -- munchlax in heartgold
  (446, 44600, 15, 'It conceals food under the long fur on its body. It carts around this food stash and swallows it without chewing.'),
  -- riolu in heartgold
  (447, 44700, 15, 'They communicate with one another using their auras. They are able to run all through the night.'),
  -- lucario in heartgold
  (448, 44800, 15, 'It’s said that no foe can remain invisible to LUCARIO, since it can detect auras. Even foes it could not otherwise see.'),
  -- hippopotas in heartgold
  (449, 44900, 15, 'It shrouds itself in sand to ward off germs. It travels easily through the sands of the desert.'),
  -- hippowdon in heartgold
  (450, 45000, 15, 'It brandishes its gaping mouth in a display of fearsome strength. It raises vast quantities of sand while attacking.'),
  -- skorupi in heartgold
  (451, 45100, 15, 'It burrows under the sand to lie in wait for prey. Its tail claws can inject its prey with a savage poison.'),
  -- drapion in heartgold
  (452, 45200, 15, 'It attacks people and Pokémon that cross the desert. This has only furthered its bad reputation.'),
  -- croagunk in heartgold
  (453, 45300, 15, 'Fluid squeezed from its finger, albeit poisonous, is a significant ingredient in remedies for lower-back pain.'),
  -- toxicroak in heartgold
  (454, 45400, 15, 'Swaying and dodging the attacks of its foes, it weaves its flexible body in close, then lunges out with its poisonous claws.'),
  -- carnivine in heartgold
  (455, 45500, 15, 'It walks around on its tentacles in search of a tree branch where it can dangle down and ambush prey.'),
  -- finneon in heartgold
  (456, 45600, 15, 'Swimming and fluttering its two tail fins, it looks like a BEAUTIFLY. At night, the patterns on its tail fins softly shine.'),
  -- lumineon in heartgold
  (457, 45700, 15, 'LUMINEON swimming in the darkness of the deep sea look like stars shining in the night sky.'),
  -- mantyke in heartgold
  (458, 45800, 15, 'When it swims close to the surface of the ocean, people aboard ships are able to observe the pattern on its back.'),
  -- snover in heartgold
  (459, 45900, 15, 'During cold seasons, it migrates to the mountain’s lower reaches. It returns to the snow-covered summit in the spring.'),
  -- abomasnow in heartgold
  (460, 46000, 15, 'It lives a quiet life on mountains that are perpetually covered in snow. It hides itself by whipping up blizzards.'),
  -- weavile in heartgold
  (461, 46100, 15, 'It lives in snowy regions. It carves patterns in trees with its claws as a signal to others.'),
  -- magnezone in heartgold
  (462, 46200, 15, 'Exposure to a special magnetic field changed MAGNETON’s molecular structure, turning it into MAGNEZONE.'),
  -- lickilicky in heartgold
  (463, 46300, 15, 'Its saliva can decompose anything. It wraps its long tongue around things to coat them with its sticky saliva.'),
  -- rhyperior in heartgold
  (464, 46400, 15, 'From holes in its palms, it fires out GEODUDE. Its carapace can withstand volcanic eruptions.'),
  -- tangrowth in heartgold
  (465, 46500, 15, 'When it remains still, it appears to be a large shrub. Unsuspecting prey that wander near get ensnared by its vines.'),
  -- electivire in heartgold
  (466, 46600, 15, 'As its electric charge amplifies, blue sparks begin to crackle between its horns.'),
  -- magmortar in heartgold
  (467, 46700, 15, 'It blasts fireballs of over 3,600 degrees Fahrenheit out of its arms. Its breath also sears and sizzles.'),
  -- togekiss in heartgold
  (468, 46800, 15, 'As everyone knows, it visits peaceful regions, bringing them gifts of kindness and sweet blessings.'),
  -- yanmega in heartgold
  (469, 46900, 15, 'This six-legged Pokémon is easily capable of transporting an adult in flight. The wings on its tail help it stay balanced.'),
  -- leafeon in heartgold
  (470, 47000, 15, 'When you see LEAFEON asleep in a patch of sunshine, you’ll know it is using photosynthesis to produce clean air.'),
  -- glaceon in heartgold
  (471, 47100, 15, 'It causes small ice crystals to form by lowering the temperature of the surrounding atmosphere.'),
  -- gliscor in heartgold
  (472, 47200, 15, 'Its flight is soundless. It uses its lengthy tail to carry off its prey... Then its elongated fangs do the rest.'),
  -- mamoswine in heartgold
  (473, 47300, 15, 'A frozen MAMOSWINE was dug from ice dating back 10,000 years. This Pokémon has been around a long, long, long time.'),
  -- porygon-z in heartgold
  (474, 47400, 15, 'Its programming was modified to enable it to travel through alien dimensions. Seems there might have been an error...'),
  -- gallade in heartgold
  (475, 47500, 15, 'Because it can sense what its foe is thinking, its attacks burst out first, fast, and fierce.'),
  -- probopass in heartgold
  (476, 47600, 15, 'It controls three units called Mini-Noses using magnetic force. With them, it can attack the foe from three directions.'),
  -- dusknoir in heartgold
  (477, 47700, 15, 'This feared Pokémon is said to travel to worlds unknown. Some even believe that it takes lost spirits along with it.'),
  -- froslass in heartgold
  (478, 47800, 15, 'Legends in snowy regions say that a woman who was lost on an icy mountain was reborn as FROSLASS.'),
  -- rotom in heartgold
  (479, 47900, 15, 'Research continues on this Pokémon, which could be the power source of a unique motor.'),
  -- uxie in heartgold
  (480, 48000, 15, 'According to some sources, this Pokémon provided people with the intelligence necessary to solve various problems.'),
  -- mesprit in heartgold
  (481, 48100, 15, 'This Pokémon is said to have endowed the human heart with emotions, such as sorrow and joy.'),
  -- azelf in heartgold
  (482, 48200, 15, 'This Pokémon is said to have endowed humans with the determination needed to face any of life’s difficulties.'),
  -- dialga in heartgold
  (483, 48300, 15, 'This Pokémon completely controls the flow of time. It uses its power to travel at will through the past and future.'),
  -- palkia in heartgold
  (484, 48400, 15, 'Its total control over the boundaries of space enable it to transport itself to faraway places or even other dimensions.'),
  -- heatran in heartgold
  (485, 48500, 15, 'Boiling blood, like magma, circulates through its body. It makes its dwelling place in volcanic caves.'),
  -- regigigas in heartgold
  (486, 48600, 15, 'It is believed to have shaped REGIROCK, REGICE, and REGISTEEL out of clay, ice, and magma.'),
  -- giratina in heartgold
  (487, 48700, 15, 'This Pokémon is said to live in a world on the reverse side of ours, where common knowledge is distorted and strange.'),
  -- cresselia in heartgold
  (488, 48800, 15, 'Those who sleep holding CRESSELIA’s feather are assured of joyful dreams. It is said to represent the crescent moon.'),
  -- phione in heartgold
  (489, 48900, 15, 'When the water warms, they inflate the flotation sac on their heads and drift languidly on the sea in packs.'),
  -- manaphy in heartgold
  (490, 49000, 15, 'It starts its life with a wondrous power that permits it to bond with any kind of Pokémon.'),
  -- darkrai in heartgold
  (491, 49100, 15, 'It chases people and Pokémon from its territory by causing them to experience deep, nightmarish slumbers.'),
  -- shaymin in heartgold
  (492, 49200, 15, 'The blooming of Gracidea flowers confers the power of flight upon it. Feelings of gratitude are the message it delivers.'),
  -- arceus in heartgold
  (493, 49300, 15, 'According to the legends of Sinnoh, this Pokémon emerged from an egg and shaped all there is in this world.'),
  -- bulbasaur in soulsilver
  (1, 100, 16, 'It carries a seed on its back right from birth. As it grows older, the seed also grows larger.'),
  -- ivysaur in soulsilver
  (2, 200, 16, 'If the bud on its back starts to smell sweet, it is evidence that the large flower will soon bloom.'),
  -- venusaur in soulsilver
  (3, 300, 16, 'It is able to convert sunlight into energy. As a result, it is more powerful in the summertime.'),
  -- charmander in soulsilver
  (4, 400, 16, 'The flame on its tail indicates CHARMANDER’s life force. If it is healthy, the flame burns brightly.'),
  -- charmeleon in soulsilver
  (5, 500, 16, 'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.'),
  -- charizard in soulsilver
  (6, 600, 16, 'Breathing intense, hot flames, it can melt almost anything. Its breath inflicts terrible pain on enemies.'),
  -- squirtle in soulsilver
  (7, 700, 16, 'The shell, which hardens soon after it is born, is resilient. If you poke it, it will bounce back out.'),
  -- wartortle in soulsilver
  (8, 800, 16, 'It cleverly controls its furry ears and tail to maintain its balance while swimming.'),
  -- blastoise in soulsilver
  (9, 900, 16, 'The rocket cannons on its shell fire jets of water capable of punching holes through thick steel.'),
  -- caterpie in soulsilver
  (10, 1000, 16, 'Its feet have suction cups designed to stick to any surface. It tenaciously climbs trees to forage.'),
  -- metapod in soulsilver
  (11, 1100, 16, 'It prepares for evolution by hardening its shell as much as possible to protect its soft body.'),
  -- butterfree in soulsilver
  (12, 1200, 16, 'Water-repellent powder on its wings enables it to collect honey, even in the heaviest of rains.'),
  -- weedle in soulsilver
  (13, 1300, 16, 'It attacks using a two-inch poison barb on its head. It can usually be found under the leaves it eats.'),
  -- kakuna in soulsilver
  (14, 1400, 16, 'From this form, it will grow into an adult. As its body becomes softer, the external shell hardens.'),
  -- beedrill in soulsilver
  (15, 1500, 16, 'It has three poison barbs. The barb on its tail secretes the most powerful poison.'),
  -- pidgey in soulsilver
  (16, 1600, 16, 'Common in grassy areas and forests, it is very docile and will chase off enemies by flapping up sand.'),
  -- pidgeotto in soulsilver
  (17, 1700, 16, 'It renders its prey immobile using well-developed claws, then carries the prey more than 60 miles to its nest.'),
  -- pidgeot in soulsilver
  (18, 1800, 16, 'It spreads its beautiful wings wide to frighten its enemies. It can fly at Mach 2 speed.'),
  -- rattata in soulsilver
  (19, 1900, 16, 'Living wherever there is food available, it ceaselessly scavenges for edibles the entire day.'),
  -- raticate in soulsilver
  (20, 2000, 16, 'Its whiskers help it to maintain balance. Its fangs never stop growing, so it gnaws to pare them down.'),
  -- spearow in soulsilver
  (21, 2100, 16, 'Very protective of its territory, it flaps its short wings busily to dart around at high speed.'),
  -- fearow in soulsilver
  (22, 2200, 16, 'It cleverly uses its thin, long beak to pluck and eat small insects that hide under the ground.'),
  -- ekans in soulsilver
  (23, 2300, 16, 'It always hides in grass. When first born, it has no poison, so its bite is painful, but harmless.'),
  -- arbok in soulsilver
  (24, 2400, 16, 'With a very vengeful nature, it won’t give up the chase, no matter how far, once it targets its prey.'),
  -- pikachu in soulsilver
  (25, 2500, 16, 'It raises its tail to check its surroundings. The tail is sometimes struck by lightning in this pose.'),
  -- raichu in soulsilver
  (26, 2600, 16, 'If the electric pouches in its cheeks become fully charged, both ears will stand straight up.'),
  -- sandshrew in soulsilver
  (27, 2700, 16, 'Disliking water, it lives in deep burrows in arid areas. It can roll itself instantly into a ball.'),
  -- sandslash in soulsilver
  (28, 2800, 16, 'If it digs at an incredible pace, it may snap off its spikes and claws. They grow back in a day.'),
  -- nidoran-f in soulsilver
  (29, 2900, 16, 'Although not very combative, it will torment its foes with poison spikes if it is threatened in any way.'),
  -- nidorina in soulsilver
  (30, 3000, 16, 'It has a calm and caring nature. Because its horn grows slowly, it prefers not to fight.'),
  -- nidoqueen in soulsilver
  (31, 3100, 16, 'It uses its scaly, rugged body to seal the entrance of its nest and protect its young from predators.'),
  -- nidoran-m in soulsilver
  (32, 3200, 16, 'It raises its big ears to check its surroundings. It will strike first if it senses any danger.'),
  -- nidorino in soulsilver
  (33, 3300, 16, 'Quick to anger, it stabs enemies with its horn to inject a powerful poison when it becomes agitated.'),
  -- nidoking in soulsilver
  (34, 3400, 16, 'Its tail is thick and powerful. If it binds an enemy, it can render the victim helpless quite easily.'),
  -- clefairy in soulsilver
  (35, 3500, 16, 'Its adorable behavior and cry make it highly popular. However, this cute Pokémon is rarely found.'),
  -- clefable in soulsilver
  (36, 3600, 16, 'Its very sensitive ears let it distinguish distant sounds. As a result, it prefers quiet places.'),
  -- vulpix in soulsilver
  (37, 3700, 16, 'If it is attacked by an enemy that is stronger than itself, it feigns injury to fool the enemy and escapes.'),
  -- ninetales in soulsilver
  (38, 3800, 16, 'Its nine beautiful tails are filled with a wondrous energy that could keep it alive for 1,000 years.'),
  -- jigglypuff in soulsilver
  (39, 3900, 16, 'Looking into its cute, round eyes causes it to sing a relaxing melody, inducing its enemies to sleep.'),
  -- wigglytuff in soulsilver
  (40, 4000, 16, 'It has a very fine fur. Take care not to make it angry, or it may inflate steadily and hit with a body slam.'),
  -- zubat in soulsilver
  (41, 4100, 16, 'Capable of flying safely in dark places, it emits ultrasonic cries to check for any obstacles.'),
  -- golbat in soulsilver
  (42, 4200, 16, 'It can drink more than 10 ounces of blood at once. If it has too much, it gets heavy and flies clumsily.'),
  -- oddish in soulsilver
  (43, 4300, 16, 'If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.'),
  -- gloom in soulsilver
  (44, 4400, 16, 'It secretes a sticky, drool-like honey. Although sweet, it smells too repulsive to get very close.'),
  -- vileplume in soulsilver
  (45, 4500, 16, 'The bud bursts into bloom with a bang. It then starts scattering allergenic, poisonous pollen.'),
  -- paras in soulsilver
  (46, 4600, 16, 'As its body grows, large mushrooms named tochukaso start sprouting out of its back.'),
  -- parasect in soulsilver
  (47, 4700, 16, 'The larger the mushroom on its back grows, the stronger the mushroom spores it scatters.'),
  -- venonat in soulsilver
  (48, 4800, 16, 'Poison oozes from all over its body. It catches and eats small bugs at night that are attracted by light.'),
  -- venomoth in soulsilver
  (49, 4900, 16, 'The powder on its wings is poisonous if it is dark in hue. If it is light in hue, it causes paralysis.'),
  -- diglett in soulsilver
  (50, 5000, 16, 'If a DIGLETT digs through a field, it leaves the soil perfectly tilled and ideal for planting crops.'),
  -- dugtrio in soulsilver
  (51, 5100, 16, 'Extremely powerful, they can dig through even the hardest ground to a depth of over 60 miles.'),
  -- meowth in soulsilver
  (52, 5200, 16, 'It loves anything that shines. It especially adores coins that it picks up and secretly hoards.'),
  -- persian in soulsilver
  (53, 5300, 16, 'Its lithe muscles allow it to walk without making a sound. It attacks in an instant.'),
  -- psyduck in soulsilver
  (54, 5400, 16, 'If its chronic headache peaks, it may exhibit odd powers. It seems unable to recall such an episode.'),
  -- golduck in soulsilver
  (55, 5500, 16, 'It appears by waterways at dusk. It may use telekinetic powers if its forehead glows mysteriously.'),
  -- mankey in soulsilver
  (56, 5600, 16, 'It’s unsafe to approach if it gets violently enraged for no reason and can’t distinguish friends from foes.'),
  -- primeape in soulsilver
  (57, 5700, 16, 'It becomes wildly furious if it even senses someone looking at it. It chases anyone that meets its glare.'),
  -- growlithe in soulsilver
  (58, 5800, 16, 'Extremely loyal, it will fearlessly bark at any opponent to protect its own Trainer from harm.'),
  -- arcanine in soulsilver
  (59, 5900, 16, 'Its magnificent bark conveys a sense of majesty. Anyone hearing it can’t help but grovel before it.'),
  -- poliwag in soulsilver
  (60, 6000, 16, 'The direction of its belly spiral differs by area. The equator is thought to have an effect on this.'),
  -- poliwhirl in soulsilver
  (61, 6100, 16, 'The skin on most of its body is moist. However, the skin on its belly spiral feels smooth.'),
  -- poliwrath in soulsilver
  (62, 6200, 16, 'Although an energetic, skilled swimmer that uses all of its muscles, it lives on dry land.'),
  -- abra in soulsilver
  (63, 6300, 16, 'If it decides to teleport randomly, it evokes the illusion that it has created copies of itself.'),
  -- kadabra in soulsilver
  (64, 6400, 16, 'If it uses its abilities, it emits special alpha waves that cause machines to malfunction.'),
  -- alakazam in soulsilver
  (65, 6500, 16, 'Its brain cells multiply continually until it dies. As a result, it remembers everything.'),
  -- machop in soulsilver
  (66, 6600, 16, 'It loves to work out and build its muscles. It is never satisfied, even if it trains hard all day long.'),
  -- machoke in soulsilver
  (67, 6700, 16, 'The muscles covering its body teem with power. Even when still, it exudes an amazing sense of strength.'),
  -- machamp in soulsilver
  (68, 6800, 16, 'It uses its four powerful arms to pin the limbs of its foe, then throws the victim over the horizon.'),
  -- bellsprout in soulsilver
  (69, 6900, 16, 'It plants its feet deep underground to replenish water. It can’t escape its enemy while it’s rooted.'),
  -- weepinbell in soulsilver
  (70, 7000, 16, 'If its prey is bigger than its mouth, it slices up the victim with sharp leaves, then eats every morsel.'),
  -- victreebel in soulsilver
  (71, 7100, 16, 'This horrifying plant Pokémon attracts prey with aromatic honey, then melts them in its mouth.'),
  -- tentacool in soulsilver
  (72, 7200, 16, 'It drifts aimlessly in waves. Very difficult to see in water, it may not be noticed until it stings.'),
  -- tentacruel in soulsilver
  (73, 7300, 16, 'In battle, it extends all 80 of its tentacles to entrap its opponent inside a poisonous net.'),
  -- geodude in soulsilver
  (74, 7400, 16, 'It uses its arms to steadily climb steep mountain paths. It swings its fists around if angered.'),
  -- graveler in soulsilver
  (75, 7500, 16, 'A slow walker, it rolls to move. It pays no attention to any object that happens to be in its path.'),
  -- golem in soulsilver
  (76, 7600, 16, 'It is capable of blowing itself up. It uses this explosive force to jump from mountain to mountain.'),
  -- ponyta in soulsilver
  (77, 7700, 16, 'Its hind legs, which have hooves that are harder than diamond, kick back at any presence it senses behind it.'),
  -- rapidash in soulsilver
  (78, 7800, 16, 'With incredible acceleration, it reaches its top speed of 150 mph after running just 10 steps.'),
  -- slowpoke in soulsilver
  (79, 7900, 16, 'A sweet sap leaks from its tail’s tip. Although not nutritious, the tail is pleasant to chew on.'),
  -- slowbro in soulsilver
  (80, 8000, 16, 'Naturally dull to begin with, it lost its ability to feel pain due to SHELLDER’s seeping poison.'),
  -- magnemite in soulsilver
  (81, 8100, 16, 'The units at the sides of its body generate antigravity energy to keep it aloft in the air.'),
  -- magneton in soulsilver
  (82, 8200, 16, 'The MAGNEMITE are united by a magnetism so powerful, it dries all moisture in its vicinity.'),
  -- farfetchd in soulsilver
  (83, 8300, 16, 'If it eats the plant stalk it carries as emergency rations, it runs off in search of a new stalk.'),
  -- doduo in soulsilver
  (84, 8400, 16, 'It races through grassy plains with powerful strides, leaving footprints up to four inches deep.'),
  -- dodrio in soulsilver
  (85, 8500, 16, 'If one of the heads gets to eat, the others will be satisfied, too, and they will stop squabbling.'),
  -- seel in soulsilver
  (86, 8600, 16, 'In daytime, it is often found asleep on the seabed in shallow waters. Its nostrils close while it swims.'),
  -- dewgong in soulsilver
  (87, 8700, 16, 'It loves frigid seas with ice floes. It uses its long tail to change swimming direction quickly.'),
  -- grimer in soulsilver
  (88, 8800, 16, 'Wherever GRIMER has passed, so many germs are left behind that no plants will ever grow again.'),
  -- muk in soulsilver
  (89, 8900, 16, 'Its body is made of a powerful poison. Touching it accidentally will cause a fever that requires bed rest.'),
  -- shellder in soulsilver
  (90, 9000, 16, 'Grains of sand trapped in its shells mix with its body fluids to form beautiful pearls.'),
  -- cloyster in soulsilver
  (91, 9100, 16, 'CLOYSTER that live in seas with harsh tidal currents grow large, sharp spikes on their shells.'),
  -- gastly in soulsilver
  (92, 9200, 16, 'Its body is made of gas. Despite lacking substance, it can envelop an opponent of any size and cause suffocation.'),
  -- haunter in soulsilver
  (93, 9300, 16, 'Its tongue is made of gas. If licked, its victim starts shaking constantly until death eventually comes.'),
  -- gengar in soulsilver
  (94, 9400, 16, 'To steal the life of its target, it slips into the prey’s shadow and silently waits for an opportunity.'),
  -- onix in soulsilver
  (95, 9500, 16, 'It rapidly bores through the ground at 50 mph by squirming and twisting its massive, rugged body.'),
  -- drowzee in soulsilver
  (96, 9600, 16, 'It remembers every dream it eats. It rarely eats the dreams of adults because children’s are much tastier.'),
  -- hypno in soulsilver
  (97, 9700, 16, 'Always holding a pendulum that it swings at a steady rhythm, it causes drowsiness in anyone nearby.'),
  -- krabby in soulsilver
  (98, 9800, 16, 'The pincers break off easily. If it loses a pincer, it somehow becomes incapable of walking sideways.'),
  -- kingler in soulsilver
  (99, 9900, 16, 'Its pincers grow peculiarly large. If it lifts the pincers too fast, it loses its balance and staggers.'),
  -- voltorb in soulsilver
  (100, 10000, 16, 'It was discovered when Poké Balls were introduced. It is said that there is some connection.'),
  -- electrode in soulsilver
  (101, 10100, 16, 'It stores an overflowing amount of electric energy inside its body. Even a small shock makes it explode.'),
  -- exeggcute in soulsilver
  (102, 10200, 16, 'Using telepathy only they can employ, they always form a cluster of six EXEGGCUTE.'),
  -- exeggutor in soulsilver
  (103, 10300, 16, 'If a head drops off, it emits a telepathic call in search of others to form an EXEGGCUTE cluster.'),
  -- cubone in soulsilver
  (104, 10400, 16, 'It always wears the skull of its dead mother, so no one has any idea what its hidden face looks like.'),
  -- marowak in soulsilver
  (105, 10500, 16, 'It collects bones from an unknown place. Some whisper that a MAROWAK graveyard exists somewhere in the world.'),
  -- hitmonlee in soulsilver
  (106, 10600, 16, 'If it starts kicking repeatedly, both legs will stretch even longer to strike a fleeing foe.'),
  -- hitmonchan in soulsilver
  (107, 10700, 16, 'Its punches slice the air. They are launched at such high speed, even a slight graze could cause a burn.'),
  -- lickitung in soulsilver
  (108, 10800, 16, 'Its long tongue, slathered with a gooey saliva, sticks to anything, so it is very useful.'),
  -- koffing in soulsilver
  (109, 10900, 16, 'The poisonous gases it contains are a little bit lighter than air, keeping it slightly airborne.'),
  -- weezing in soulsilver
  (110, 11000, 16, 'Top-grade perfume is made using its internal poison gases by diluting them to the highest level.'),
  -- rhyhorn in soulsilver
  (111, 11100, 16, 'It doesn’t care if there is anything in its way. It just charges and destroys all obstacles.'),
  -- rhydon in soulsilver
  (112, 11200, 16, 'Its brain developed when it began walking on hind legs. Its thick hide protects it even in magma.'),
  -- chansey in soulsilver
  (113, 11300, 16, 'Being few in number and difficult to capture, it is said to bring happiness to the Trainer who catches it.'),
  -- tangela in soulsilver
  (114, 11400, 16, 'It tangles any moving thing with its vines. Their subtle shaking is ticklish if you get ensnared.'),
  -- kangaskhan in soulsilver
  (115, 11500, 16, 'To protect its young, it will never give up during battle, no matter how badly wounded it is.'),
  -- horsea in soulsilver
  (116, 11600, 16, 'Its big, developed fins move rapidly, allowing it to swim backward while still facing forward.'),
  -- seadra in soulsilver
  (117, 11700, 16, 'Its fin-tips leak poison. Its fins and bones are highly valued as ingredients in herbal medicine.'),
  -- goldeen in soulsilver
  (118, 11800, 16, 'A strong swimmer, it is capable of swimming nonstop up fast streams at a steady speed of five knots per hour.'),
  -- seaking in soulsilver
  (119, 11900, 16, 'Using its horn, it bores holes in riverbed boulders, making nests to prevent its eggs from washing away.'),
  -- staryu in soulsilver
  (120, 12000, 16, 'Even if its body is torn, it can regenerate as long as the glowing central core remains intact.'),
  -- starmie in soulsilver
  (121, 12100, 16, 'Regardless of the environment it lives in, its body grows to form a symmetrical geometric shape.'),
  -- mr-mime in soulsilver
  (122, 12200, 16, 'Its fingertips emit a peculiar force field that hardens air to create an actual wall.'),
  -- scyther in soulsilver
  (123, 12300, 16, 'When it moves, it leaves only a blur. If it hides in grass, its protective coloration makes it invisible.'),
  -- jynx in soulsilver
  (124, 12400, 16, 'It speaks a language similar to that of humans. However, it seems to use dancing to communicate.'),
  -- electabuzz in soulsilver
  (125, 12500, 16, 'Its body constantly discharges electricity. Getting close to it will make your hair stand on end.'),
  -- magmar in soulsilver
  (126, 12600, 16, 'The fiery surface of its body gives off a wavering, rippling glare that is similar to the sun.'),
  -- pinsir in soulsilver
  (127, 12700, 16, 'It swings its long pincer horns wildly to attack. During cold periods, it hides deep in forests.'),
  -- tauros in soulsilver
  (128, 12800, 16, 'After heightening its will to fight by whipping itself with its three tails, it charges at full speed.'),
  -- magikarp in soulsilver
  (129, 12900, 16, 'For no reason, it jumps and splashes about, making it easy for predators like PIDGEOTTO to catch it mid-jump.'),
  -- gyarados in soulsilver
  (130, 13000, 16, 'Once it appears, it goes on a rampage. It remains enraged until it demolishes everything around it.'),
  -- lapras in soulsilver
  (131, 13100, 16, 'It ferries people across the sea on its back. It may sing an enchanting cry if it is in a good mood.'),
  -- ditto in soulsilver
  (132, 13200, 16, 'Its transformation ability is perfect. However, if made to laugh, it can’t maintain its disguise.'),
  -- eevee in soulsilver
  (133, 13300, 16, 'Its irregularly configured DNA is affected by its surroundings. It evolves if its environment changes.'),
  -- vaporeon in soulsilver
  (134, 13400, 16, 'It prefers beautiful shores. With cells similar to water molecules, it could melt in water.'),
  -- jolteon in soulsilver
  (135, 13500, 16, 'Every hair on its body starts to stand sharply on end if it becomes charged with electricity.'),
  -- flareon in soulsilver
  (136, 13600, 16, 'It fluffs out its fur collar to cool down its body temperature, which can reach 1,650 degrees Fahrenheit.'),
  -- porygon in soulsilver
  (137, 13700, 16, 'A manmade Pokémon that came about as a result of research. It is programmed with only basic motions.'),
  -- omanyte in soulsilver
  (138, 13800, 16, 'This Pokémon from ancient times is said to have navigated the sea by adeptly twisting its 10 tentacles.'),
  -- omastar in soulsilver
  (139, 13900, 16, 'Once wrapped around its prey, it never lets go. It eats the prey by tearing at it with sharp fangs.'),
  -- kabuto in soulsilver
  (140, 14000, 16, 'This Pokémon lived in ancient times. On rare occasions, it has been discovered as a living fossil.'),
  -- kabutops in soulsilver
  (141, 14100, 16, 'With sharp claws, this ferocious, ancient Pokémon rips apart prey and sucks their body fluids.'),
  -- aerodactyl in soulsilver
  (142, 14200, 16, 'This vicious Pokémon is said to have flown in ancient skies while shrieking high-pitched cries.'),
  -- snorlax in soulsilver
  (143, 14300, 16, 'Its stomach’s digestive juices can dissolve any kind of poison. It can even eat things off the ground.'),
  -- articuno in soulsilver
  (144, 14400, 16, 'One of the legendary bird Pokémon, it chills moisture in the atmosphere to create snow while flying.'),
  -- zapdos in soulsilver
  (145, 14500, 16, 'This legendary bird Pokémon is said to appear only when a thundercloud parts into two halves.'),
  -- moltres in soulsilver
  (146, 14600, 16, 'This legendary bird Pokémon is said to bring early spring to the wintry lands it visits.'),
  -- dratini in soulsilver
  (147, 14700, 16, 'This Pokémon is full of life energy. It continually sheds its skin and grows steadily larger.'),
  -- dragonair in soulsilver
  (148, 14800, 16, 'Its crystalline orbs appear to give this Pokémon the power to freely control the weather.'),
  -- dragonite in soulsilver
  (149, 14900, 16, 'This marine Pokémon has an impressive build that lets it freely fly over raging seas without trouble.'),
  -- mewtwo in soulsilver
  (150, 15000, 16, 'It usually remains motionless to conserve energy, so that it may unleash its full power in battle.'),
  -- mew in soulsilver
  (151, 15100, 16, 'Its DNA is said to contain the genetic codes of all Pokémon, so it can use all kinds of techniques.'),
  -- chikorita in soulsilver
  (152, 15200, 16, 'Its pleasantly aromatic leaf has the ability to check humidity and temperature.'),
  -- bayleef in soulsilver
  (153, 15300, 16, 'A spicy aroma emanates from around its neck. The aroma acts as a stimulant to restore health.'),
  -- meganium in soulsilver
  (154, 15400, 16, 'MEGANIUM’s breath has the power to revive dead grass and plants. It can make them healthy again.'),
  -- cyndaquil in soulsilver
  (155, 15500, 16, 'It usually stays hunched over. If it is angry or surprised, it shoots flames out of its back.'),
  -- quilava in soulsilver
  (156, 15600, 16, 'This Pokémon is fully covered by nonflammable fur. It can withstand any kind of fire attack.'),
  -- typhlosion in soulsilver
  (157, 15700, 16, 'It has a secret, devastating move. It rubs its blazing fur together to cause huge explosions.'),
  -- totodile in soulsilver
  (158, 15800, 16, 'It is small but rough and tough. It won’t hesitate to take a bite out of anything that moves.'),
  -- croconaw in soulsilver
  (159, 15900, 16, 'It opens its huge jaws wide when attacking. If it loses any fangs while biting, they grow back in.'),
  -- feraligatr in soulsilver
  (160, 16000, 16, 'It is hard for it to support its weight out of water, so it sometimes gets down on all fours. But it moves fast.'),
  -- sentret in soulsilver
  (161, 16100, 16, 'It stands on its tail so it can see a long way. If it spots an enemy, it cries loudly to warn its kind.'),
  -- furret in soulsilver
  (162, 16200, 16, 'There is no telling where the tail begins. Despite its short legs, it is quick and likes to chase RATTATA.'),
  -- hoothoot in soulsilver
  (163, 16300, 16, 'It has a perfect sense of time. Whatever happens, it keeps rhythm by precisely tilting its head in time.'),
  -- noctowl in soulsilver
  (164, 16400, 16, 'When it needs to think, it rotates its head 180 degrees to sharpen its intellectual power.'),
  -- ledyba in soulsilver
  (165, 16500, 16, 'When the weather turns cold, lots of LEDYBA gather from everywhere to cluster and keep each other warm.'),
  -- ledian in soulsilver
  (166, 16600, 16, 'The spot patterns on its back grow larger or smaller depending on the number of stars in the night sky.'),
  -- spinarak in soulsilver
  (167, 16700, 16, 'It spins a web using fine--but durable--thread. It then waits patiently for prey to be trapped.'),
  -- ariados in soulsilver
  (168, 16800, 16, 'A single strand of a special string is endlessly spun out of its rear. The string leads back to its nest.'),
  -- crobat in soulsilver
  (169, 16900, 16, 'The development of wings on its legs enables it to fly fast but also makes it tough to stop and rest.'),
  -- chinchou in soulsilver
  (170, 17000, 16, 'On the dark ocean floor, its only means of communication is its constantly flashing lights.'),
  -- lanturn in soulsilver
  (171, 17100, 16, 'It blinds prey with an intense burst of light. With the prey incapacitated, the Pokémon swallows it in a single gulp.'),
  -- pichu in soulsilver
  (172, 17200, 16, 'Despite its small size, it can zap even adult humans. However, if it does so, it also surprises itself.'),
  -- cleffa in soulsilver
  (173, 17300, 16, 'When numerous meteors illuminate the night sky, sightings of CLEFFA strangely increase.'),
  -- igglybuff in soulsilver
  (174, 17400, 16, 'Its extremely flexible and elastic body makes it bounce continuously--anytime, anywhere.'),
  -- togepi in soulsilver
  (175, 17500, 16, 'A proverb claims that happiness will come to anyone who can make a sleeping TOGEPI stand up.'),
  -- togetic in soulsilver
  (176, 17600, 16, 'It grows dispirited if it is not with kind people. It can float in midair without moving its wings.'),
  -- natu in soulsilver
  (177, 17700, 16, 'It usually forages for food on the ground but may, on rare occasions, hop onto branches to peck at shoots.'),
  -- xatu in soulsilver
  (178, 17800, 16, 'In South America, it is said that its right eye sees the future and its left eye views the past.'),
  -- mareep in soulsilver
  (179, 17900, 16, 'Its fleece grows continually. In the summer, the fleece is fully shed, but it grows back in a week.'),
  -- flaaffy in soulsilver
  (180, 18000, 16, 'Its fluffy fleece easily stores electricity. Its rubbery hide keeps it from being electrocuted.'),
  -- ampharos in soulsilver
  (181, 18100, 16, 'The bright light on its tail can be seen far away. It has been treasured since ancient times as a beacon.'),
  -- bellossom in soulsilver
  (182, 18200, 16, 'Plentiful in the tropics. When it dances, its petals rub together and make a pleasant ringing sound.'),
  -- marill in soulsilver
  (183, 18300, 16, 'The end of its tail serves as a buoy that keeps it from drowning, even in a vicious current.'),
  -- azumarill in soulsilver
  (184, 18400, 16, 'When it plays in water, it rolls up its elongated ears to prevent their insides from getting wet.'),
  -- sudowoodo in soulsilver
  (185, 18500, 16, 'It disguises itself as a tree to avoid attack. It hates water, so it will disappear if it starts raining.'),
  -- politoed in soulsilver
  (186, 18600, 16, 'Whenever three or more of these get together, they sing in a loud voice that sounds like bellowing.'),
  -- hoppip in soulsilver
  (187, 18700, 16, 'Its body is so light, it must grip the ground firmly with its feet to keep from being blown away.'),
  -- skiploom in soulsilver
  (188, 18800, 16, 'It spreads its petals to absorb sunlight. It also floats in the air to get closer to the sun.'),
  -- jumpluff in soulsilver
  (189, 18900, 16, 'Drifts on seasonal winds and spreads its cotton-like spores all over the world to make more offspring.'),
  -- aipom in soulsilver
  (190, 19000, 16, 'It lives atop tall trees. When leaping from branch to branch, it deftly uses its tail for balance.'),
  -- sunkern in soulsilver
  (191, 19100, 16, 'It lives by drinking only dewdrops from under the leaves of plants. It is said that it eats nothing else.'),
  -- sunflora in soulsilver
  (192, 19200, 16, 'In the daytime, it rushes about in a hectic manner, but it comes to a complete stop when the sun sets.'),
  -- yanma in soulsilver
  (193, 19300, 16, 'Its large eyes can scan 360 degrees. It looks in all directions to seek out insects as its prey.'),
  -- wooper in soulsilver
  (194, 19400, 16, 'When it walks around on the ground, it coats its body with a slimy, poisonous film.'),
  -- quagsire in soulsilver
  (195, 19500, 16, 'Due to its relaxed and carefree attitude, it often bumps its head on boulders and boat hulls as it swims.'),
  -- espeon in soulsilver
  (196, 19600, 16, 'By reading air currents, it can predict things such as the weather or its foe’s next move.'),
  -- umbreon in soulsilver
  (197, 19700, 16, 'When darkness falls, the rings on the body begin to glow, striking fear in the hearts of anyone nearby.'),
  -- murkrow in soulsilver
  (198, 19800, 16, 'It is said that when chased, it lures its attacker onto dark mountain trails where the foe will get lost.'),
  -- slowking in soulsilver
  (199, 19900, 16, 'When its head was bitten, toxins entered SLOWPOKE’s head and unlocked an extraordinary power.'),
  -- misdreavus in soulsilver
  (200, 20000, 16, 'It loves to bite and yank people’s hair from behind without warning, just to see their shocked reactions.'),
  -- unown in soulsilver
  (201, 20100, 16, 'Its flat, thin body is always stuck on walls. Its shape appears to have some meaning.'),
  -- wobbuffet in soulsilver
  (202, 20200, 16, 'To keep its pitch-black tail hidden, it lives quietly in the darkness. It is never first to attack.'),
  -- girafarig in soulsilver
  (203, 20300, 16, 'Its tail, which also contains a small brain, may bite on its own if it notices an alluring smell.'),
  -- pineco in soulsilver
  (204, 20400, 16, 'It hangs and waits for flying insect prey to come near. It does not move about much on its own.'),
  -- forretress in soulsilver
  (205, 20500, 16, 'It remains immovably rooted to its tree. It scatters pieces of its hard shell to drive its enemies away.'),
  -- dunsparce in soulsilver
  (206, 20600, 16, 'If spotted, it escapes by burrowing with its tail. It can float just slightly using its wings.'),
  -- gligar in soulsilver
  (207, 20700, 16, 'It usually clings to cliffs. When it spots its prey, it spreads its wings and glides down to attack.'),
  -- steelix in soulsilver
  (208, 20800, 16, 'It’s said that if an ONIX lives for 100 years, its composition becomes diamondlike as it evolves into a STEELIX.'),
  -- snubbull in soulsilver
  (209, 20900, 16, 'It has an active, playful nature. Many women like to frolic with it because of its affectionate ways.'),
  -- granbull in soulsilver
  (210, 21000, 16, 'Because its fangs are too heavy, it always keeps its head tilted down. However, its bite is powerful.'),
  -- qwilfish in soulsilver
  (211, 21100, 16, 'The small spikes covering its body developed from scales. They inject a toxin that causes fainting.'),
  -- scizor in soulsilver
  (212, 21200, 16, 'Its wings are not used for flying. They are flapped at high speed to adjust its body temperature.'),
  -- shuckle in soulsilver
  (213, 21300, 16, 'It stores berries inside its shell. To avoid attacks, it hides beneath rocks and remains completely still.'),
  -- heracross in soulsilver
  (214, 21400, 16, 'It is usually docile, but if it is disturbed while sipping honey, it chases off the intruder with its horn.'),
  -- sneasel in soulsilver
  (215, 21500, 16, 'Vicious in nature, it drives PIDGEY from their nests and scavenges any leftovers it can find.'),
  -- teddiursa in soulsilver
  (216, 21600, 16, 'Before food becomes scarce in wintertime, its habit is to hoard food in many hidden locations.'),
  -- ursaring in soulsilver
  (217, 21700, 16, 'With its ability to distinguish any aroma, it unfailingly finds all food buried deep underground.'),
  -- slugma in soulsilver
  (218, 21800, 16, 'A common sight in volcanic areas, it slowly slithers around in a constant search for warm places.'),
  -- magcargo in soulsilver
  (219, 21900, 16, 'Its brittle shell occasionally spouts intense flames that circulate throughout its body.'),
  -- swinub in soulsilver
  (220, 22000, 16, 'If it smells something enticing, it dashes off headlong to find the source of the aroma.'),
  -- piloswine in soulsilver
  (221, 22100, 16, 'If it charges at an enemy, the hairs on its back stand up straight. It is very sensitive to sound.'),
  -- corsola in soulsilver
  (222, 22200, 16, 'In a south-sea nation, the people live in communities that are built on groups of these Pokémon.'),
  -- remoraid in soulsilver
  (223, 22300, 16, 'Using its dorsal fin as a suction pad, it clings to a MANTINE’s underside to scavenge for leftovers.'),
  -- octillery in soulsilver
  (224, 22400, 16, 'It instinctively sneaks into rocky holes. If it gets sleepy, it steals the nest of a fellow OCTILLERY.'),
  -- delibird in soulsilver
  (225, 22500, 16, 'It nests at the edge of sharp cliffs. It spends all day carrying food to its awaiting chicks.'),
  -- mantine in soulsilver
  (226, 22600, 16, 'Swimming freely in open seas, it may fly out of the water and over the waves if it builds up enough speed.'),
  -- skarmory in soulsilver
  (227, 22700, 16, 'After nesting in bramble bushes, the wings of its chicks grow hard from scratches by thorns.'),
  -- houndour in soulsilver
  (228, 22800, 16, 'To corner prey, they check each other’s location using barks that only they can understand.'),
  -- houndoom in soulsilver
  (229, 22900, 16, 'Upon hearing its eerie howls, other Pokémon get the shivers and head straight back to their nests.'),
  -- kingdra in soulsilver
  (230, 23000, 16, 'It sleeps deep on the ocean floor to build its energy. It is said to cause tornadoes as it wakes.'),
  -- phanpy in soulsilver
  (231, 23100, 16, 'As a sign of affection, it bumps with its snout. However, it is so strong, it may send you flying.'),
  -- donphan in soulsilver
  (232, 23200, 16, 'The longer and bigger its tusks, the higher its rank in its herd. The tusks take long to grow.'),
  -- porygon2 in soulsilver
  (233, 23300, 16, 'Further research enhanced its abilities. Sometimes, it may exhibit motions that were not programmed.'),
  -- stantler in soulsilver
  (234, 23400, 16, 'Those who stare at its antlers will gradually lose control of their senses and be unable to stand.'),
  -- smeargle in soulsilver
  (235, 23500, 16, 'Once it becomes an adult, it has a tendency to let its comrades plant footprints on its back.'),
  -- tyrogue in soulsilver
  (236, 23600, 16, 'Even though it is small, it can’t be ignored because it will slug any handy target without warning.'),
  -- hitmontop in soulsilver
  (237, 23700, 16, 'It launches kicks while spinning. If it spins at high speed, it may bore its way into the ground.'),
  -- smoochum in soulsilver
  (238, 23800, 16, 'It always rocks its head slowly backwards and forwards as if it is trying to kiss someone.'),
  -- elekid in soulsilver
  (239, 23900, 16, 'Even in the most vicious storm, this Pokémon plays happily if thunder rumbles in the sky.'),
  -- magby in soulsilver
  (240, 24000, 16, 'It is found in volcanic craters. Its body temperature is over 1,100 degrees Fahrenheit, so don’t underestimate it.'),
  -- miltank in soulsilver
  (241, 24100, 16, 'If it is around babies, the milk it produces contains much more nutrition than usual.'),
  -- blissey in soulsilver
  (242, 24200, 16, 'It has a very compassionate nature. If it sees a sick Pokémon, it will nurse the sufferer back to health.'),
  -- raikou in soulsilver
  (243, 24300, 16, 'A Pokémon that races across the land while barking a cry that sounds like crashing thunder.'),
  -- entei in soulsilver
  (244, 24400, 16, 'A Pokémon that races across the land. It is said that one is born every time a new volcano appears.'),
  -- suicune in soulsilver
  (245, 24500, 16, 'This Pokémon races across the land. It is said that north winds will somehow blow whenever it appears.'),
  -- larvitar in soulsilver
  (246, 24600, 16, 'It is born deep underground. It can’t emerge until it has entirely consumed the soil around it.'),
  -- pupitar in soulsilver
  (247, 24700, 16, 'Even sealed in its shell, it can move freely. Hard and fast, it has outstanding destructive power.'),
  -- tyranitar in soulsilver
  (248, 24800, 16, 'Extremely strong, it can change the landscape. It has an insolent nature that makes it not care about others.'),
  -- lugia in soulsilver
  (249, 24900, 16, 'It is said to be the guardian of the seas. It is rumored to have been seen on the night of a storm.'),
  -- ho-oh in soulsilver
  (250, 25000, 16, 'A legend says that its body glows in seven colors. A rainbow is said to form behind it when it flies.'),
  -- celebi in soulsilver
  (251, 25100, 16, 'When CELEBI disappears deep in a forest, it is said to leave behind an egg it brought from the future.'),
  -- treecko in soulsilver
  (252, 25200, 16, 'Small hooks on the bottom of its feet catch on walls and ceilings. That is how it can hang from above.'),
  -- grovyle in soulsilver
  (253, 25300, 16, 'It leaps from tree branch to tree branch quite swiftly. It shows astounding agility.'),
  -- sceptile in soulsilver
  (254, 25400, 16, 'It agilely leaps about the jungle and uses the sharp leaves on its arms to strike its prey.'),
  -- torchic in soulsilver
  (255, 25500, 16, 'Inside its body is a place where it keeps a small flame. Hug it! It will be as warm as a hot-water bottle.'),
  -- combusken in soulsilver
  (256, 25600, 16, 'During a battle, the hot flame in its body increases. Its kicks have outstanding destructive power.'),
  -- blaziken in soulsilver
  (257, 25700, 16, 'It can clear a 30-story building in a leap. Its fiery punches scorch its foes.'),
  -- mudkip in soulsilver
  (258, 25800, 16, 'Its power can crush boulders. It rests by covering itself with mud at the bottom of a river.'),
  -- marshtomp in soulsilver
  (259, 25900, 16, 'Living on muddy ground that provides poor footing has made its legs sturdy.'),
  -- swampert in soulsilver
  (260, 26000, 16, 'Its arms are hard as rock. With one swing, it can break a boulder into pieces.'),
  -- poochyena in soulsilver
  (261, 26100, 16, 'It chases its prey until the victim becomes exhausted. However, it turns tail if the prey strikes back.'),
  -- mightyena in soulsilver
  (262, 26200, 16, 'It chases down prey in a pack of around ten. They defeat foes with perfectly coordinated teamwork.'),
  -- zigzagoon in soulsilver
  (263, 26300, 16, 'It gets interested in everything, which is why it zigs and zags. It is good at finding items.'),
  -- linoone in soulsilver
  (264, 26400, 16, 'When running in a straight line, it can easily top 60 miles an hour. It has a tough time with curved roads.'),
  -- wurmple in soulsilver
  (265, 26500, 16, 'It lives among the tall grass and in forests. It repels attacks by raising up the spikes on its rear.'),
  -- silcoon in soulsilver
  (266, 26600, 16, 'Having wrapped silk around the branches of a tree, it quiescently awaits evolution.'),
  -- beautifly in soulsilver
  (267, 26700, 16, 'Vibrantly patterned wings are its prominent feature. It sucks sweet flower nectar with its long mouth.'),
  -- cascoon in soulsilver
  (268, 26800, 16, 'It endures attacks with patience, because the more pain before evolution, the sturdier it becomes.'),
  -- dustox in soulsilver
  (269, 26900, 16, 'It scatters its fine dust all over when it is attacked. It is a nocturnal Pokémon.'),
  -- lotad in soulsilver
  (270, 27000, 16, 'Its leaf grew too large for it to live on land. That is how it began to live floating in the water.'),
  -- lombre in soulsilver
  (271, 27100, 16, 'It is nocturnal and becomes active at nightfall. It feeds on aquatic mosses that grow in the riverbed.'),
  -- ludicolo in soulsilver
  (272, 27200, 16, 'If it hears festive music, it begins moving in rhythm in order to amplify its power.'),
  -- seedot in soulsilver
  (273, 27300, 16, 'It attaches itself to a tree branch using the top of its head. Strong winds can sometimes make it fall.'),
  -- nuzleaf in soulsilver
  (274, 27400, 16, 'It lives deep in forests. With the leaf on its head, it makes a flute whose song makes listeners uneasy.'),
  -- shiftry in soulsilver
  (275, 27500, 16, 'It lives quietly in the deep forest. It is said to create chilly winter winds with the fans it holds.'),
  -- taillow in soulsilver
  (276, 27600, 16, 'When it gets cold, they migrate, flying over 180 miles a day. It hunts for tasty prey.'),
  -- swellow in soulsilver
  (277, 27700, 16, 'It dives at a steep angle as soon as it spots its prey. It catches its prey with sharp claws.'),
  -- wingull in soulsilver
  (278, 27800, 16, 'It soars on updrafts without flapping its wings. It makes a nest on sheer cliffs at the sea’s edge.'),
  -- pelipper in soulsilver
  (279, 27900, 16, 'It protects its young in its beak. It bobs on waves, resting on them on days when the waters are calm.'),
  -- ralts in soulsilver
  (280, 28000, 16, 'The horns on its head provide a strong power that enables it to sense people’s emotions.'),
  -- kirlia in soulsilver
  (281, 28100, 16, 'It has a psychic power that enables it to distort the space around it and see into the future.'),
  -- gardevoir in soulsilver
  (282, 28200, 16, 'It unleashes psychokinetic energy at full power when protecting a Trainer it has bonded closely with.'),
  -- surskit in soulsilver
  (283, 28300, 16, 'It secretes a thick, sweet-scented syrup from the tip of its head. It lives on weed-choked ponds.'),
  -- masquerain in soulsilver
  (284, 28400, 16, 'It flaps its four wings to hover and fly freely in any direction-- to and fro and sideways.'),
  -- shroomish in soulsilver
  (285, 28500, 16, 'If it senses danger, it scatters spores from the top of its head to protect itself.'),
  -- breloom in soulsilver
  (286, 28600, 16, 'It scatters poisonous spores and throws powerful punches while its foe is hampered by inhaled spores.'),
  -- slakoth in soulsilver
  (287, 28700, 16, 'The way SLAKOTH lolls around makes anyone who watches it feel like doing the same.'),
  -- vigoroth in soulsilver
  (288, 28800, 16, 'Its stress level rises if it cannot keep moving constantly. Too much stress makes it feel sick.'),
  -- slaking in soulsilver
  (289, 28900, 16, 'The world’s laziest Pokémon. It moves to another spot when there’s no food left within its reach.'),
  -- nincada in soulsilver
  (290, 29000, 16, 'It can sometimes live underground for more than 10 years. It absorbs nutrients from the roots of trees.'),
  -- ninjask in soulsilver
  (291, 29100, 16, 'Its cry leaves a lasting headache if heard for too long. It moves so quickly that it is almost invisible.'),
  -- shedinja in soulsilver
  (292, 29200, 16, 'A strange Pokémon--it flies without moving its wings, has a hollow shell for a body, and does not breathe.'),
  -- whismur in soulsilver
  (293, 29300, 16, 'If it senses danger, it scares the foe by crying out with the volume of a jet-plane engine.'),
  -- loudred in soulsilver
  (294, 29400, 16, 'It shouts loudly by inhaling air, and then uses its well-developed stomach muscles to exhale.'),
  -- exploud in soulsilver
  (295, 29500, 16, 'Its roar in battle shakes the ground like a tremor--or like an earthquake has struck.'),
  -- makuhita in soulsilver
  (296, 29600, 16, 'It toughens up by slamming into thick trees over and over. It gains a sturdy body and dauntless spirit.'),
  -- hariyama in soulsilver
  (297, 29700, 16, 'It loves challenging others to tests of strength. It has the power to stop a train with a slap.'),
  -- azurill in soulsilver
  (298, 29800, 16, 'Its tail is packed full of the nutrients it needs to grow.'),
  -- nosepass in soulsilver
  (299, 29900, 16, 'If two of these meet, they cannot get too close because their noses repel each other.'),
  -- skitty in soulsilver
  (300, 30000, 16, 'It’s adorable when it chases its own tail. It’s difficult to earn its trust.'),
  -- delcatty in soulsilver
  (301, 30100, 16, 'It dislikes dirty places. It often searches for a comfortable place in which to groom itself.'),
  -- sableye in soulsilver
  (302, 30200, 16, 'It dwells in the darkness of caves. It uses its sharp claws to dig up gems to nourish itself.'),
  -- mawile in soulsilver
  (303, 30300, 16, 'It chomps with its gaping mouth. Its huge jaws are actually steel horns that have been transformed.'),
  -- aron in soulsilver
  (304, 30400, 16, 'When it evolves, it sheds the steel carapace that covered its whole body and develops a new one.'),
  -- lairon in soulsilver
  (305, 30500, 16, 'It loves iron ore. Groups of them fight for territory by bashing one another with their steel bodies.'),
  -- aggron in soulsilver
  (306, 30600, 16, 'You can tell its age by the length of its iron horns. It claims an entire mountain as its territory.'),
  -- meditite in soulsilver
  (307, 30700, 16, 'It meditates to heighten its inner energy and to float in the air. It eats one berry a day.'),
  -- medicham in soulsilver
  (308, 30800, 16, 'Through yoga training, it gained the psychic power to predict its foe’s next move.'),
  -- electrike in soulsilver
  (309, 30900, 16, 'It stores electricity in its fur. It gives off sparks from all over its body in seasons when the air is dry.'),
  -- manectric in soulsilver
  (310, 31000, 16, 'Its nest can be found where a thunderbolt hits. It is discharging electricity from its mane.'),
  -- plusle in soulsilver
  (311, 31100, 16, 'It absorbs electricity from telephone poles. It shorts out its body to create crackling noises.'),
  -- minun in soulsilver
  (312, 31200, 16, 'Exposure to electricity from MINUN and PLUSLE promotes blood circulation and relaxes muscles.'),
  -- volbeat in soulsilver
  (313, 31300, 16, 'It emits light from its tail to communicate. It loves the sweet aroma given off by ILLUMISE.'),
  -- illumise in soulsilver
  (314, 31400, 16, 'Its fragrance attracts a swarm of VOLBEAT, so they draw over 200 patterns in the night sky.'),
  -- roselia in soulsilver
  (315, 31500, 16, 'ROSELIA that drink nutritionally rich springwater are said to reveal rare coloration when they bloom.'),
  -- gulpin in soulsilver
  (316, 31600, 16, 'It has a small heart and brain. Its stomach comprises most of its body, with enzymes to dissolve anything.'),
  -- swalot in soulsilver
  (317, 31700, 16, 'It gulps anything that fits in its mouth. Its special enzymes can dissolve anything.'),
  -- carvanha in soulsilver
  (318, 31800, 16, 'They form packs to attack boats and rip out their hulls to sink them. They live in rivers in the jungle.'),
  -- sharpedo in soulsilver
  (319, 31900, 16, 'It can swim at speeds of 75 mph by jetting seawater through its body. It is the bandit of the sea.'),
  -- wailmer in soulsilver
  (320, 32000, 16, 'It bounces playfully like a ball. The more seawater it swallows, the higher it bounces.'),
  -- wailord in soulsilver
  (321, 32100, 16, 'It is the largest of all identified Pokémon. They jump as a pack to herd their prey.'),
  -- numel in soulsilver
  (322, 32200, 16, 'The flaming magma it stores in the hump on its back is the source of its tremendous power.'),
  -- camerupt in soulsilver
  (323, 32300, 16, 'It lives in the crater of a volcano. It is well known that the humps on its back erupt every 10 years.'),
  -- torkoal in soulsilver
  (324, 32400, 16, 'You find abandoned coal mines full of them. They dig tirelessly in search of coal.'),
  -- spoink in soulsilver
  (325, 32500, 16, 'It bounces around on its tail to keep its heart pumping. It carries a pearl from CLAMPERL on its head.'),
  -- grumpig in soulsilver
  (326, 32600, 16, 'It can perform odd dance steps to influence foes. Its style of dancing became hugely popular overseas.'),
  -- spinda in soulsilver
  (327, 32700, 16, 'The chances of two SPINDA having identical spot patterns is less than one in four billion.'),
  -- trapinch in soulsilver
  (328, 32800, 16, 'Its nest is a sloped, bowl-like pit in the desert. Once something has fallen in, there is no escape.'),
  -- vibrava in soulsilver
  (329, 32900, 16, 'It vibrates its wings vigorously, creating ultrasonic waves that cause serious headaches.'),
  -- flygon in soulsilver
  (330, 33000, 16, 'It is nicknamed “The Desert Spirit” because the flapping of its wings sounds like a woman singing.'),
  -- cacnea in soulsilver
  (331, 33100, 16, 'It lives in arid locations. Its yellow flowers bloom once a year.'),
  -- cacturne in soulsilver
  (332, 33200, 16, 'Packs of them follow travelers through the desert until the travelers can no longer move.'),
  -- swablu in soulsilver
  (333, 33300, 16, 'Its wings bring cottony clouds to mind. It grooms with springwater and loves to sit on heads.'),
  -- altaria in soulsilver
  (334, 33400, 16, 'It flies gracefully through the sky. Its melodic humming makes you feel like you’re in a dream.'),
  -- zangoose in soulsilver
  (335, 33500, 16, 'Its fur would all stand on end if it smelled a SEVIPER nearby. Its sharp claws tear up its foes.'),
  -- seviper in soulsilver
  (336, 33600, 16, 'In battle, it uses its bladed tail to counter any ZANGOOSE. It secretes a deadly venom in its tail.'),
  -- lunatone in soulsilver
  (337, 33700, 16, 'It was discovered at the site of a meteor strike 40 years ago. Its stare can lull its foes to sleep.'),
  -- solrock in soulsilver
  (338, 33800, 16, 'When it rotates itself, it gives off light similar to the sun, thus blinding its foes.'),
  -- barboach in soulsilver
  (339, 33900, 16, 'BARBOACH uses its whiskers to taste things just as a person uses his or her tongue to taste things.'),
  -- whiscash in soulsilver
  (340, 34000, 16, 'It claims a large swamp to itself. If a foe comes near it, it sets off tremors by thrashing around.'),
  -- corphish in soulsilver
  (341, 34100, 16, 'It was originally a Pokémon from afar that escaped to the wild. It can adapt to the dirtiest river.'),
  -- crawdaunt in soulsilver
  (342, 34200, 16, 'A brutish Pokémon that loves to battle. It will crash itself into any foe that approaches its nest.'),
  -- baltoy in soulsilver
  (343, 34300, 16, 'It moves while spinning around on its single foot. Some BALTOY have been seen spinning on their heads.'),
  -- claydol in soulsilver
  (344, 34400, 16, 'It is said that it originates from clay dolls made by an ancient civilization.'),
  -- lileep in soulsilver
  (345, 34500, 16, 'It disguises its tentacles as flowers to attract and catch prey. It became extinct in ancient times.'),
  -- cradily in soulsilver
  (346, 34600, 16, 'It lives in warm seas. Its heavy body weighs it down so it won’t get washed away in rough weather.'),
  -- anorith in soulsilver
  (347, 34700, 16, 'An ancestral Pokémon that lived in the ocean. Over time, its eight feet transformed into wings.'),
  -- armaldo in soulsilver
  (348, 34800, 16, 'Its enormous, retractable claws can cut through most anything. Its entire body is clad in sturdy plates.'),
  -- feebas in soulsilver
  (349, 34900, 16, 'It is the shabbiest Pokémon of all. It forms in schools and lives at the bottom of rivers.'),
  -- milotic in soulsilver
  (350, 35000, 16, 'It’s said that a glimpse of a MILOTIC and its beauty will calm any hostile emotions you’re feeling.'),
  -- castform in soulsilver
  (351, 35100, 16, 'This Pokémon can change its cells, taking different forms based on the temperature and humidity.'),
  -- kecleon in soulsilver
  (352, 35200, 16, 'It changes its shading to match its surroundings so it can sneak up on prey. Only its belly patterns stay fixed.'),
  -- shuppet in soulsilver
  (353, 35300, 16, 'It uses its horn to feed on envy and malice, or so it’s said. It’s very active at night.'),
  -- banette in soulsilver
  (354, 35400, 16, 'This Pokémon developed from an abandoned doll that amassed a grudge. It is seen in dark alleys.'),
  -- duskull in soulsilver
  (355, 35500, 16, 'If it finds bad children who won’t listen to their parents, it will spirit them away--or so it’s said.'),
  -- dusclops in soulsilver
  (356, 35600, 16, 'Anyone who dares peer into its body to see its spectral ball of fire will have their spirit stolen away.'),
  -- tropius in soulsilver
  (357, 35700, 16, 'The bunch of fruit around its neck ripens twice a year and is delicious. It’s a highly favored tropical snack.'),
  -- chimecho in soulsilver
  (358, 35800, 16, 'It uses the sucker on its head to hang from a tree or from eaves. It can produce seven different tones.'),
  -- absol in soulsilver
  (359, 35900, 16, 'It has the ability to foretell natural disasters. Its life span is over a hundred years.'),
  -- wynaut in soulsilver
  (360, 36000, 16, 'It tends to move in a pack. Individuals squash against one another to toughen their spirits.'),
  -- snorunt in soulsilver
  (361, 36100, 16, 'It’s said that if they are seen at midnight, they’ll cause heavy snow. They eat snow and ice to survive.'),
  -- glalie in soulsilver
  (362, 36200, 16, 'It can instantly freeze moisture in the atmosphere. It uses this power to freeze its foes.'),
  -- spheal in soulsilver
  (363, 36300, 16, 'It crosses the oceans by rolling itself on drifting ice. Fluffy fur keeps it warm when the temperature is below freezing.'),
  -- sealeo in soulsilver
  (364, 36400, 16, 'It has a very sensitive nose. It touches new things with its nose to examine them.'),
  -- walrein in soulsilver
  (365, 36500, 16, 'It shatters drift ice with its strong tusks. Its thick layer of blubber repels enemy attacks.'),
  -- clamperl in soulsilver
  (366, 36600, 16, 'When it evolves, it makes a mysterious pearl that amplifies psychic powers when it’s held.'),
  -- huntail in soulsilver
  (367, 36700, 16, 'It lives deep in the pitch-dark sea. It attracts prey by moving its tail in mimicry of a small animal.'),
  -- gorebyss in soulsilver
  (368, 36800, 16, 'Its pink body becomes more vivid with the rise of water temperatures in the springtime.'),
  -- relicanth in soulsilver
  (369, 36900, 16, 'Discovered by chance during deep-sea explorations, it has not changed since ancient times.'),
  -- luvdisc in soulsilver
  (370, 37000, 16, 'Its heart-shaped body makes it popular. In some places, you would give a LUVDISC to someone you love.'),
  -- bagon in soulsilver
  (371, 37100, 16, 'Its well-developed neck muscles and ironlike head can smash boulders into pieces.'),
  -- shelgon in soulsilver
  (372, 37200, 16, 'It surrounds its body in an iron-hard shell to accumulate enough power to evolve.'),
  -- salamence in soulsilver
  (373, 37300, 16, 'It’s uncontrollable if enraged. It flies around spouting flames and scorching fields and mountains.'),
  -- beldum in soulsilver
  (374, 37400, 16, 'The magnetic force generated by its body repels the ground’s natural magnetism, letting it float.'),
  -- metang in soulsilver
  (375, 37500, 16, 'When two BELDUM fuse together, a magnetic nervous system places their brains in union.'),
  -- metagross in soulsilver
  (376, 37600, 16, 'It folds its four legs when flying. Its four brains are said to be superior to a supercomputer.'),
  -- regirock in soulsilver
  (377, 37700, 16, 'The same rocks that form its body have been found in ground layers around the world.'),
  -- regice in soulsilver
  (378, 37800, 16, 'It is said to have slept in a glacier for thousands of years. Its body can’t be melted, even by magma.'),
  -- registeel in soulsilver
  (379, 37900, 16, 'Its body is said to be harder than any kind of metal. A study has revealed that its body is hollow.'),
  -- latias in soulsilver
  (380, 38000, 16, 'It communicates using telepathy. Its body is covered in down that refracts light to make it invisible.'),
  -- latios in soulsilver
  (381, 38100, 16, 'It understands human speech and is highly intelligent. It is a tender Pokémon that dislikes fighting.'),
  -- kyogre in soulsilver
  (382, 38200, 16, 'A mythical Pokémon said to have swelled the seas with rain and tidal waves. It battled with GROUDON.'),
  -- groudon in soulsilver
  (383, 38300, 16, 'Said to have expanded the lands by evaporating water with raging heat. It battled titanically with KYOGRE.'),
  -- rayquaza in soulsilver
  (384, 38400, 16, 'It flies in the ozone layer, way up high in the sky. Until recently, no one had ever seen it.'),
  -- jirachi in soulsilver
  (385, 38500, 16, 'Generations have believed that any wish written on a note on its head will come true when it awakens.'),
  -- deoxys in soulsilver
  (386, 38600, 16, 'DNA from a space virus mutated and became a Pokémon. It appears where auroras are seen.'),
  -- turtwig in soulsilver
  (387, 38700, 16, 'Photosynthesis occurs across its body under the sun. The shell on its back is actually hardened soil.'),
  -- grotle in soulsilver
  (388, 38800, 16, 'A GROTLE that lives in the forest is said to have its own secret springwater.'),
  -- torterra in soulsilver
  (389, 38900, 16, 'Ancient people imagined that beneath the ground, a gigantic TORTERRA dwelled.'),
  -- chimchar in soulsilver
  (390, 39000, 16, 'The gas made in its belly burns from its rear end. The fire burns weakly when it feels sick.'),
  -- monferno in soulsilver
  (391, 39100, 16, 'A bigger fire on its tail and a brighter blue pattern on its face means its rank in its pack is higher.'),
  -- infernape in soulsilver
  (392, 39200, 16, 'It tosses its enemies around with agility. It uses all its limbs to fight in its own unique style.'),
  -- piplup in soulsilver
  (393, 39300, 16, 'It doesn’t like to be taken care of. It’s difficult to bond with since it won’t listen to its Trainer.'),
  -- prinplup in soulsilver
  (394, 39400, 16, 'It lives a solitary life. Its wings deliver wicked blows that can snap even the thickest of trees.'),
  -- empoleon in soulsilver
  (395, 39500, 16, 'It avoids unnecessary disputes, but it will decimate anything that threatens its pride.'),
  -- starly in soulsilver
  (396, 39600, 16, 'They flock around mountains and fields, chasing after bug Pokémon. Their singing is noisy and annoying.'),
  -- staravia in soulsilver
  (397, 39700, 16, 'They maintain huge flocks, although fierce scuffles break out between various flocks.'),
  -- staraptor in soulsilver
  (398, 39800, 16, 'When STARAVIA evolve into STARAPTOR, they leave the flock to live alone. They have sturdy wings.'),
  -- bidoof in soulsilver
  (399, 39900, 16, 'It lives in groups by the water. It chews up boulders and trees around its nest with its incisors.'),
  -- bibarel in soulsilver
  (400, 40000, 16, 'It busily makes its nest with stacks of branches and roots it has cut up with its sharp incisors.'),
  -- kricketot in soulsilver
  (401, 40100, 16, 'When its antennae hit each other, it sounds like the music of a xylophone.'),
  -- kricketune in soulsilver
  (402, 40200, 16, 'By allowing its cry to resonate in the hollow of its belly, it produces a captivating sound.'),
  -- shinx in soulsilver
  (403, 40300, 16, 'The extension and contraction of its muscles generates electricity. Its fur glows when it’s in trouble.'),
  -- luxio in soulsilver
  (404, 40400, 16, 'By gathering their tails together, they collectively generate powerful electricity from their claws.'),
  -- luxray in soulsilver
  (405, 40500, 16, 'LUXRAY’s ability to see through objects comes in handy when it’s scouting for danger.'),
  -- budew in soulsilver
  (406, 40600, 16, 'When it feels the sun’s warm touch, it opens its bud to release pollen. It lives alongside clear pools.'),
  -- roserade in soulsilver
  (407, 40700, 16, 'Its sweet aroma attracts prey. Then it spews poison. The more toxic it is, the sweeter its aroma.'),
  -- cranidos in soulsilver
  (408, 40800, 16, 'CRANIDOS toughen up their already rock-hard heads by headbutting one another.'),
  -- rampardos in soulsilver
  (409, 40900, 16, 'Its skull withstands impacts of any magnitude. As a result, its brain never gets the chance to grow.'),
  -- shieldon in soulsilver
  (410, 41000, 16, 'It was generated from a fossil dug out of a layer of clay that was older than anyone knows. It has a sturdy face.'),
  -- bastiodon in soulsilver
  (411, 41100, 16, 'When attacked, they form a wall. Their rock-hard faces serve to protect them from the attacks.'),
  -- burmy in soulsilver
  (412, 41200, 16, 'It covers itself with a cloak to shelter from the cold. When it’s hot, its cloak is thinner.'),
  -- wormadam in soulsilver
  (413, 41300, 16, 'It is said that a WORMADAM that evolves on a cold day will have a thicker cloak.'),
  -- mothim in soulsilver
  (414, 41400, 16, 'It flutters around at night and steals honey from the COMBEE hive.'),
  -- combee in soulsilver
  (415, 41500, 16, 'At night, COMBEE sleep in a group of about a thousand, packed closely together in a lump.'),
  -- vespiquen in soulsilver
  (416, 41600, 16, 'It raises grubs in the holes in its body. It secretes pheromones to control COMBEE.'),
  -- pachirisu in soulsilver
  (417, 41700, 16, 'It’s one of the kinds of Pokémon with electric cheek pouches. It shoots charges from its tail.'),
  -- buizel in soulsilver
  (418, 41800, 16, 'It inflates its flotation sac, keeping its face above water in order to watch for prey movement.'),
  -- floatzel in soulsilver
  (419, 41900, 16, 'With its flotation sac inflated, it can carry people on its back. It deflates the sac before it dives.'),
  -- cherubi in soulsilver
  (420, 42000, 16, 'It evolves by sucking the energy out of the small ball where it had been storing nutrients.'),
  -- cherrim in soulsilver
  (421, 42100, 16, 'During times of strong sunlight, its bud blooms, its petals open fully, and it becomes very active.'),
  -- shellos in soulsilver
  (422, 42200, 16, 'Its shape and coloration vary, depending on its habitat.'),
  -- gastrodon in soulsilver
  (423, 42300, 16, 'When its natural enemy attacks, it oozes purple fluid and escapes.'),
  -- ambipom in soulsilver
  (424, 42400, 16, 'It is very difficult to dodge the consecutive strikes of its two tails.'),
  -- drifloon in soulsilver
  (425, 42500, 16, 'It is whispered that any child who mistakes DRIFLOON for a balloon and holds on to it could wind up missing.'),
  -- drifblim in soulsilver
  (426, 42600, 16, 'It can generate and release gas within its body. That’s how it can control the altitude of its drift.'),
  -- buneary in soulsilver
  (427, 42700, 16, 'You can tell how it feels by the way it rolls its ears. When it’s scared, both ears are rolled up.'),
  -- lopunny in soulsilver
  (428, 42800, 16, 'It sheds its fur twice a year. Its winter fur is soft and fluffy.'),
  -- mismagius in soulsilver
  (429, 42900, 16, 'Its cries sound like incantations to torment the foe. It appears where you least expect it.'),
  -- honchkrow in soulsilver
  (430, 43000, 16, 'It is merciless by nature. It is said that it never forgives the mistakes of its MURKROW followers.'),
  -- glameow in soulsilver
  (431, 43100, 16, 'When it’s happy, GLAMEOW demonstrates beautiful movements of its tail, like a dancing ribbon.'),
  -- purugly in soulsilver
  (432, 43200, 16, 'It would claim another Pokémon’s nest as its own if it finds a nest sufficiently comfortable.'),
  -- chingling in soulsilver
  (433, 43300, 16, 'It emits high-frequency cries that people can’t hear. Once it starts, it can cry for an awfully long time.'),
  -- stunky in soulsilver
  (434, 43400, 16, 'The foul fluid from its rear is so revolting that it can make people feel queasy up to a mile and a quarter away.'),
  -- skuntank in soulsilver
  (435, 43500, 16, 'It attacks by spraying a repugnant fluid from its tail, but the stench dulls after a few squirts.'),
  -- bronzor in soulsilver
  (436, 43600, 16, 'Ancient people believed that the pattern on BRONZOR’s back contained a mysterious power.'),
  -- bronzong in soulsilver
  (437, 43700, 16, 'Ancient people believed that petitioning BRONZONG for rain was the way to make crops grow.'),
  -- bonsly in soulsilver
  (438, 43800, 16, 'In order to adjust the level of fluids in its body, it exudes water from its eyes. This makes it appear to be crying.'),
  -- mime-jr in soulsilver
  (439, 43900, 16, 'In an attempt to confuse its enemy, it mimics the enemy’s movements. Then it wastes no time in making itself scarce!'),
  -- happiny in soulsilver
  (440, 44000, 16, 'It carefully carries a round, white rock that it thinks is an egg. It’s bothered by how curly its hair looks.'),
  -- chatot in soulsilver
  (441, 44100, 16, 'It mimics the cries of other Pokémon to trick them into thinking it’s one of them. This way they won’t attack it.'),
  -- spiritomb in soulsilver
  (442, 44200, 16, 'It was formed by uniting 108 spirits. It has been bound to the Odd Keystone to keep it from doing any mischief.'),
  -- gible in soulsilver
  (443, 44300, 16, 'It nests in horizontal holes warmed by geothermal heat. Foes who get too close can expect to be pounced on and bitten.'),
  -- gabite in soulsilver
  (444, 44400, 16, 'As it digs to expand its nest, it habitually digs up gems that it then hoards in its nest.'),
  -- garchomp in soulsilver
  (445, 44500, 16, 'Its body is covered in fine scales that reduce drag, enabling it to fly at high speeds.'),
  -- munchlax in soulsilver
  (446, 44600, 16, 'It conceals food under the long fur on its body. It carts around this food stash and swallows it without chewing.'),
  -- riolu in soulsilver
  (447, 44700, 16, 'They communicate with one another using their auras. They are able to run all through the night.'),
  -- lucario in soulsilver
  (448, 44800, 16, 'It’s said that no foe can remain invisible to LUCARIO, since it can detect auras. Even foes it could not otherwise see.'),
  -- hippopotas in soulsilver
  (449, 44900, 16, 'It shrouds itself in sand to ward off germs. It travels easily through the sands of the desert.'),
  -- hippowdon in soulsilver
  (450, 45000, 16, 'It brandishes its gaping mouth in a display of fearsome strength. It raises vast quantities of sand while attacking.'),
  -- skorupi in soulsilver
  (451, 45100, 16, 'It burrows under the sand to lie in wait for prey. Its tail claws can inject its prey with a savage poison.'),
  -- drapion in soulsilver
  (452, 45200, 16, 'It attacks people and Pokémon that cross the desert. This has only furthered its bad reputation.'),
  -- croagunk in soulsilver
  (453, 45300, 16, 'Fluid squeezed from its finger, albeit poisonous, is a significant ingredient in remedies for lower back pain.'),
  -- toxicroak in soulsilver
  (454, 45400, 16, 'Swaying and dodging the attacks of its foes, it weaves its flexible body in close, then lunges out with its poisonous claws.'),
  -- carnivine in soulsilver
  (455, 45500, 16, 'It walks around on its tentacles in search of a tree branch where it can dangle down and ambush prey.'),
  -- finneon in soulsilver
  (456, 45600, 16, 'Swimming and fluttering its two tail fins, it looks like a BEAUTIFLY. At night, the patterns on its tail fins softly shine.'),
  -- lumineon in soulsilver
  (457, 45700, 16, 'LUMINEON swimming in the darkness of the deep sea look like stars shining in the night sky.'),
  -- mantyke in soulsilver
  (458, 45800, 16, 'When it swims close to the surface of the ocean, people aboard ships are able to observe the pattern on its back.'),
  -- snover in soulsilver
  (459, 45900, 16, 'During cold seasons, it migrates to the mountain’s lower reaches. It returns to the snow-covered summit in the spring.'),
  -- abomasnow in soulsilver
  (460, 46000, 16, 'It lives a quiet life on mountains that are perpetually covered in snow. It hides itself by whipping up blizzards.'),
  -- weavile in soulsilver
  (461, 46100, 16, 'It lives in snowy regions. It carves patterns in trees with its claws as a signal to others.'),
  -- magnezone in soulsilver
  (462, 46200, 16, 'Exposure to a special magnetic field changed MAGNETON’s molecular structure, turning it into MAGNEZONE.'),
  -- lickilicky in soulsilver
  (463, 46300, 16, 'It has space in its throat to store saliva. It can also roll up its tongue and store it in the same spot.'),
  -- rhyperior in soulsilver
  (464, 46400, 16, 'From holes in its palms, it fires out GEODUDE. Its carapace can withstand volcanic eruptions.'),
  -- tangrowth in soulsilver
  (465, 46500, 16, 'Its vines grow so profusely that, in the warm season, you can’t even see its eyes.'),
  -- electivire in soulsilver
  (466, 46600, 16, 'As its electric charge amplifies, blue sparks begin to crackle between its horns.'),
  -- magmortar in soulsilver
  (467, 46700, 16, 'It blasts fireballs of over 3,600 degrees Fahrenheit out of its arms. Its breath also sears and sizzles.'),
  -- togekiss in soulsilver
  (468, 46800, 16, 'As everyone knows, it visits peaceful regions, bringing them gifts of kindness and sweet blessings.'),
  -- yanmega in soulsilver
  (469, 46900, 16, 'The beat of its wings is so powerful that it accidentally dislodges full-grown trees when it takes off in flight.'),
  -- leafeon in soulsilver
  (470, 47000, 16, 'When you see LEAFEON asleep in a patch of sunshine, you’ll know it is using photosynthesis to produce clean air.'),
  -- glaceon in soulsilver
  (471, 47100, 16, 'It causes small ice crystals to form by lowering the temperature of the surrounding atmosphere.'),
  -- gliscor in soulsilver
  (472, 47200, 16, 'Its flight is soundless. It uses its lengthy tail to carry off its prey... Then its elongated fangs do the rest.'),
  -- mamoswine in soulsilver
  (473, 47300, 16, 'It flourished worldwide during the ice age but its population declined when the masses of ice began to dwindle.'),
  -- porygon-z in soulsilver
  (474, 47400, 16, 'Its programming was modified to enable it to travel through alien dimensions. Seems there might have been an error...'),
  -- gallade in soulsilver
  (475, 47500, 16, 'Because it can sense what its foe is thinking, its attacks burst out first, fast, and fierce.'),
  -- probopass in soulsilver
  (476, 47600, 16, 'It controls three units called Mini-Noses using magnetic force. With them, it can attack the foe from three directions.'),
  -- dusknoir in soulsilver
  (477, 47700, 16, 'This feared Pokémon is said to travel to worlds unknown. Some even believe that it takes lost spirits along with it.'),
  -- froslass in soulsilver
  (478, 47800, 16, 'Legends in snowy regions say that a woman who was lost on an icy mountain was reborn as FROSLASS'),
  -- rotom in soulsilver
  (479, 47900, 16, 'Research continues on this Pokémon, which could be the power source of a unique motor.'),
  -- uxie in soulsilver
  (480, 48000, 16, 'According to some sources, this Pokémon provided people with the intelligence necessary to solve various problems.'),
  -- mesprit in soulsilver
  (481, 48100, 16, 'This Pokémon is said to have endowed the human heart with emotions, such as sorrow and joy.'),
  -- azelf in soulsilver
  (482, 48200, 16, 'This Pokémon is said to have endowed humans with the determination needed to face any of life’s difficulties.'),
  -- dialga in soulsilver
  (483, 48300, 16, 'This Pokémon completely controls the flow of time. It uses its power to travel at will through the past and future.'),
  -- palkia in soulsilver
  (484, 48400, 16, 'Its total control over the boundaries of space enable it to transport itself to faraway places or even other dimensions.'),
  -- heatran in soulsilver
  (485, 48500, 16, 'Boiling blood, like magma, circulates through its body. It makes its dwelling place in volcanic caves.'),
  -- regigigas in soulsilver
  (486, 48600, 16, 'It is believed to have shaped REGIROCK, REGICE, and REGISTEEL out of clay, ice, and magma.'),
  -- giratina in soulsilver
  (487, 48700, 16, 'This Pokémon is said to live in a world on the reverse side of ours, where common knowledge is distorted and strange.'),
  -- cresselia in soulsilver
  (488, 48800, 16, 'Those who sleep holding CRESSELIA’s feather are assured of joyful dreams. It is said to represent the crescent moon.'),
  -- phione in soulsilver
  (489, 48900, 16, 'When the water warms, they inflate the flotation sac on their heads and drift languidly on the sea in packs.'),
  -- manaphy in soulsilver
  (490, 49000, 16, 'It starts its life with a wondrous power that permits it to bond with any kind of Pokémon.'),
  -- darkrai in soulsilver
  (491, 49100, 16, 'It chases people and Pokémon from its territory by causing them to experience deep, nightmarish slumbers.'),
  -- shaymin in soulsilver
  (492, 49200, 16, 'The blooming of Gracidea flowers confers the power of flight upon it. Feelings of gratitude are the message it delivers.'),
  -- arceus in soulsilver
  (493, 49300, 16, 'According to the legends of Sinnoh, this Pokémon emerged from an egg and shaped all there is in this world.');
