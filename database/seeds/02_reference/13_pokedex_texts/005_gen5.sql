-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 5 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in black
  (1, 100, 17, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in black
  (2, 200, 17, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in black
  (3, 300, 17, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in black
  (4, 400, 17, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in black
  (5, 500, 17, 'In the rocky mountains where Charmeleon live, their fiery tails shine at night like stars.'),
  -- charizard in black
  (6, 600, 17, 'It is said that Charizard’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in black
  (7, 700, 17, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in black
  (8, 800, 17, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in black
  (9, 900, 17, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in black
  (10, 1000, 17, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in black
  (11, 1100, 17, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in black
  (12, 1200, 17, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in black
  (13, 1300, 17, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in black
  (14, 1400, 17, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in black
  (15, 1500, 17, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in black
  (16, 1600, 17, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in black
  (17, 1700, 17, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in black
  (18, 1800, 17, 'By flapping its wings with all its might, Pidgeot can make a gust of wind capable of bending tall trees.'),
  -- rattata in black
  (19, 1900, 17, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in black
  (20, 2000, 17, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in black
  (21, 2100, 17, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in black
  (22, 2200, 17, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in black
  (23, 2300, 17, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in black
  (24, 2400, 17, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in black
  (25, 2500, 17, 'It occasionally uses an electric shock to recharge a fellow Pikachu that is in a weakened state.'),
  -- raichu in black
  (26, 2600, 17, 'Its tail discharges electricity into the ground, protecting it from getting shocked.'),
  -- sandshrew in black
  (27, 2700, 17, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in black
  (28, 2800, 17, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in black
  (29, 2900, 17, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in black
  (30, 3000, 17, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than Nidorino’s.'),
  -- nidoqueen in black
  (31, 3100, 17, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in black
  (32, 3200, 17, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in black
  (33, 3300, 17, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in black
  (34, 3400, 17, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in black
  (35, 3500, 17, 'It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.'),
  -- clefable in black
  (36, 3600, 17, 'It is very wary and rarely shows itself to people. Its ears can hear a pin drop over half a mile away.'),
  -- vulpix in black
  (37, 3700, 17, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in black
  (38, 3800, 17, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in black
  (39, 3900, 17, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in black
  (40, 4000, 17, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in black
  (41, 4100, 17, 'It checks its surroundings and location using reflections of the ultrasonic waves from its mouth.'),
  -- golbat in black
  (42, 4200, 17, 'Its sharp fangs puncture the toughest of hides and have small holes for greedily sucking blood.'),
  -- oddish in black
  (43, 4300, 17, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in black
  (44, 4400, 17, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in black
  (45, 4500, 17, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in black
  (46, 4600, 17, 'Mushrooms named tochukaso grow on its back. They grow along with the host Paras.'),
  -- parasect in black
  (47, 4700, 17, 'A mushroom grown larger than the host’s body controls Parasect. It scatters poisonous spores.'),
  -- venonat in black
  (48, 4800, 17, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in black
  (49, 4900, 17, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in black
  (50, 5000, 17, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in black
  (51, 5100, 17, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in black
  (52, 5200, 17, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in black
  (53, 5300, 17, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in black
  (54, 5400, 17, 'Overwhelmed by enigmatic abilities, it suffers a constant headache. It sometimes uses mysterious powers.'),
  -- golduck in black
  (55, 5500, 17, 'It is seen swimming dynamically and elegantly using its well-developed limbs and flippers.'),
  -- mankey in black
  (56, 5600, 17, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in black
  (57, 5700, 17, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in black
  (58, 5800, 17, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in black
  (59, 5900, 17, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in black
  (60, 6000, 17, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in black
  (61, 6100, 17, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in black
  (62, 6200, 17, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in black
  (63, 6300, 17, 'Using its psychic power is such a strain on its brain that it needs to sleep for 18 hours a day.'),
  -- kadabra in black
  (64, 6400, 17, 'It stares at its silver spoon to focus its mind. It emits more alpha waves while doing so.'),
  -- alakazam in black
  (65, 6500, 17, 'The spoons clutched in its hands are said to have been created by its psychic powers.'),
  -- machop in black
  (66, 6600, 17, 'Though small in stature, it is powerful enough to easily heft and throw a number of Geodude at once.'),
  -- machoke in black
  (67, 6700, 17, 'It happily carries heavy cargo to toughen up. It willingly does hard work for people.'),
  -- machamp in black
  (68, 6800, 17, 'Its four muscled arms slam foes with powerful punches and chops at blinding speed.'),
  -- bellsprout in black
  (69, 6900, 17, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in black
  (70, 7000, 17, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in black
  (71, 7100, 17, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in black
  (72, 7200, 17, 'Because its body is almost entirely composed of water, it shrivels up if it is washed ashore.'),
  -- tentacruel in black
  (73, 7300, 17, 'It extends its 80 tentacles to form an encircling poisonous net that is difficult to escape.'),
  -- geodude in black
  (74, 7400, 17, 'At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily.'),
  -- graveler in black
  (75, 7500, 17, 'It rolls on mountain paths to move. Once it builds momentum, no Pokémon can stop it without difficulty.'),
  -- golem in black
  (76, 7600, 17, 'Even dynamite can’t harm its hard, boulderlike body. It sheds its hide just once a year.'),
  -- ponyta in black
  (77, 7700, 17, 'As a newborn, it can barely stand. However, through galloping, its legs are made tougher and faster.'),
  -- rapidash in black
  (78, 7800, 17, 'When at an all-out gallop, its blazing mane sparkles, enhancing its beautiful appearance.'),
  -- slowpoke in black
  (79, 7900, 17, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in black
  (80, 8000, 17, 'Though usually dim witted, it seems to become inspired if the Shellder on its tail bites down.'),
  -- magnemite in black
  (81, 8100, 17, 'The faster the units at its sides rotate, the greater the magnetic force they generate.'),
  -- magneton in black
  (82, 8200, 17, 'Many mysteriously appear when more sunspots dot the sun. They stop TV sets from displaying properly.'),
  -- farfetchd in black
  (83, 8300, 17, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in black
  (84, 8400, 17, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in black
  (85, 8500, 17, 'When Doduo evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in black
  (86, 8600, 17, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in black
  (87, 8700, 17, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in black
  (88, 8800, 17, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in black
  (89, 8900, 17, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in black
  (90, 9000, 17, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in black
  (91, 9100, 17, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in black
  (92, 9200, 17, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in black
  (93, 9300, 17, 'It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.'),
  -- gengar in black
  (94, 9400, 17, 'The leer that floats in darkness belongs to a Gengar delighting in casting curses on people.'),
  -- onix in black
  (95, 9500, 17, 'It burrows through the ground at a speed of 50 mph while feeding on large boulders.'),
  -- drowzee in black
  (96, 9600, 17, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in black
  (97, 9700, 17, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in black
  (98, 9800, 17, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in black
  (99, 9900, 17, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in black
  (100, 10000, 17, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in black
  (101, 10100, 17, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in black
  (102, 10200, 17, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in black
  (103, 10300, 17, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an Exeggcute.'),
  -- cubone in black
  (104, 10400, 17, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in black
  (105, 10500, 17, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in black
  (106, 10600, 17, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in black
  (107, 10700, 17, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in black
  (108, 10800, 17, 'When it extends its over-six-foot- long tongue, its tail quivers. There is a possibility they are connected.'),
  -- koffing in black
  (109, 10900, 17, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in black
  (110, 11000, 17, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in black
  (111, 11100, 17, 'Its powerful tackles can destroy anything. However, it is too slow witted to help people work.'),
  -- rhydon in black
  (112, 11200, 17, 'Standing on its hind legs freed its forelegs and made it smarter. It is very forgetful, however.'),
  -- chansey in black
  (113, 11300, 17, 'A kindly Pokémon that lays highly nutritious eggs and shares them with injured Pokémon or people.'),
  -- tangela in black
  (114, 11400, 17, 'The blue vines shrouding its body are covered in a growth of fine hair. It is known to be ticklish.'),
  -- kangaskhan in black
  (115, 11500, 17, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in black
  (116, 11600, 17, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in black
  (117, 11700, 17, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in black
  (118, 11800, 17, 'Though it appears very elegant when swimming with fins unfurled, it can jab powerfully with its horn.'),
  -- seaking in black
  (119, 11900, 17, 'In autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.'),
  -- staryu in black
  (120, 12000, 17, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in black
  (121, 12100, 17, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in black
  (122, 12200, 17, 'It shapes an invisible wall in midair by minutely vibrating its fingertips to stop molecules in the air.'),
  -- scyther in black
  (123, 12300, 17, 'The sharp scythes on its forearms become increasingly sharp by cutting through hard objects.'),
  -- jynx in black
  (124, 12400, 17, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in black
  (125, 12500, 17, 'It windmills its arms to slightly boost its punches. Foes have been known to escape in the meantime.'),
  -- magmar in black
  (126, 12600, 17, 'When it breathes deeply, heat waves form around its body, making it hard to see clearly.'),
  -- pinsir in black
  (127, 12700, 17, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in black
  (128, 12800, 17, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in black
  (129, 12900, 17, 'A Magikarp living for many years can leap a mountain using Splash. The move remains useless, though.'),
  -- gyarados in black
  (130, 13000, 17, 'Once it begins to rampage, a Gyarados will burn everything down, even in a harsh storm.'),
  -- lapras in black
  (131, 13100, 17, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in black
  (132, 13200, 17, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in black
  (133, 13300, 17, 'Because its genetic makeup is irregular, it quickly changes its form due to a variety of causes.'),
  -- vaporeon in black
  (134, 13400, 17, 'Its cell composition is similar to water molecules. As a result, it can melt away into water.'),
  -- jolteon in black
  (135, 13500, 17, 'If agitated, it uses electricity to straighten out its fur and launch it in small bunches.'),
  -- flareon in black
  (136, 13600, 17, 'Inhaled air is heated in the flame sac in its body to an intense fire over 3,000 degrees Fahrenheit.'),
  -- porygon in black
  (137, 13700, 17, 'A man-made Pokémon created using advanced scientific means. It can move freely in cyberspace.'),
  -- omanyte in black
  (138, 13800, 17, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in black
  (139, 13900, 17, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in black
  (140, 14000, 17, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in black
  (141, 14100, 17, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in black
  (142, 14200, 17, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in black
  (143, 14300, 17, 'When its belly is full, it becomes too lethargic to even lift a finger, so it is safe to bounce on its belly.'),
  -- articuno in black
  (144, 14400, 17, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in black
  (145, 14500, 17, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in black
  (146, 14600, 17, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in black
  (147, 14700, 17, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in black
  (148, 14800, 17, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in black
  (149, 14900, 17, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in black
  (150, 15000, 17, 'A Pokémon created by recombining Mew’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in black
  (151, 15100, 17, 'Because it can use all kinds of moves, many scientists believe Mew to be the ancestor of Pokémon.'),
  -- chikorita in black
  (152, 15200, 17, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in black
  (153, 15300, 17, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in black
  (154, 15400, 17, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in black
  (155, 15500, 17, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in black
  (156, 15600, 17, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in black
  (157, 15700, 17, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in black
  (158, 15800, 17, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in black
  (159, 15900, 17, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in black
  (160, 16000, 17, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in black
  (161, 16100, 17, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in black
  (162, 16200, 17, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in black
  (163, 16300, 17, 'It marks time precisely. Some countries consider it to be a wise friend, versed in the world’s ways.'),
  -- noctowl in black
  (164, 16400, 17, 'Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.'),
  -- ledyba in black
  (165, 16500, 17, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in black
  (166, 16600, 17, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in black
  (167, 16700, 17, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in black
  (168, 16800, 17, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in black
  (169, 16900, 17, 'The transformation of its legs into wings made it better at flying, but more clumsy at walking.'),
  -- chinchou in black
  (170, 17000, 17, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in black
  (171, 17100, 17, 'Lanturn’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in black
  (172, 17200, 17, 'The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked.'),
  -- cleffa in black
  (173, 17300, 17, 'It is often seen when shooting stars fill the night skies. It’s said to arrive riding on a shooting star.'),
  -- igglybuff in black
  (174, 17400, 17, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in black
  (175, 17500, 17, 'It transforms the kindness and joy of others into happiness, which it stores in its shell.'),
  -- togetic in black
  (176, 17600, 17, 'To share its happiness, it flies around the world seeking kind- hearted people.'),
  -- natu in black
  (177, 17700, 17, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in black
  (178, 17800, 17, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in black
  (179, 17900, 17, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in black
  (180, 18000, 17, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in black
  (181, 18100, 17, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in black
  (182, 18200, 17, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in black
  (183, 18300, 17, 'The oil-filled end of its tail floats on water. It keeps Marill from drowning even in a strong current.'),
  -- azumarill in black
  (184, 18400, 17, 'It can spend all day in water, since it can inhale and store a large volume of air.'),
  -- sudowoodo in black
  (185, 18500, 17, 'To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain.'),
  -- politoed in black
  (186, 18600, 17, 'It gathers groups of others as their leader. Its cries make Poliwag obey.'),
  -- hoppip in black
  (187, 18700, 17, 'It drifts on winds. It is said that when Hoppip gather in fields and mountains, spring is on the way.'),
  -- skiploom in black
  (188, 18800, 17, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in black
  (189, 18900, 17, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in black
  (190, 19000, 17, 'It lives high among the treetops. It can use its tail as freely and cleverly as its hands.'),
  -- sunkern in black
  (191, 19100, 17, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in black
  (192, 19200, 17, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in black
  (193, 19300, 17, 'It can hover in one spot by flapping its wings at high speed. It flits about to guard its territory.'),
  -- wooper in black
  (194, 19400, 17, 'When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.'),
  -- quagsire in black
  (195, 19500, 17, 'It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.'),
  -- espeon in black
  (196, 19600, 17, 'Its fur is so sensitive, it can sense minute shifts in the air and predict the weather.'),
  -- umbreon in black
  (197, 19700, 17, 'When exposed to the moon’s aura, the rings on its body glow faintly and it gains a mysterious power.'),
  -- murkrow in black
  (198, 19800, 17, 'If spotted, it will lure an unwary person into chasing it, then lose the pursuer on mountain trails.'),
  -- slowking in black
  (199, 19900, 17, 'Being bitten by Shellder gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in black
  (200, 20000, 17, 'A Pokémon that startles people in the middle of the night. It gathers fear as its energy.'),
  -- unown in black
  (201, 20100, 17, 'When alone, nothing happens. However, if there are two or more, an odd power is said to emerge.'),
  -- wobbuffet in black
  (202, 20200, 17, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in black
  (203, 20300, 17, 'The head on its tail contains a small brain. It can instinctively fight even while facing backward.'),
  -- pineco in black
  (204, 20400, 17, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in black
  (205, 20500, 17, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in black
  (206, 20600, 17, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in black
  (207, 20700, 17, 'It glides as if sliding. It startles foes by clamping on to their faces, then jabs with its poison stinger.'),
  -- steelix in black
  (208, 20800, 17, 'It is thought its body transformed as a result of iron accumulating internally from swallowing soil.'),
  -- snubbull in black
  (209, 20900, 17, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in black
  (210, 21000, 17, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in black
  (211, 21100, 17, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in black
  (212, 21200, 17, 'It raises its pincers with eyelike markings for intimidation. It also swings them down dangerously.'),
  -- shuckle in black
  (213, 21300, 17, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in black
  (214, 21400, 17, 'It loves sweet honey. To keep all the honey to itself, it hurls rivals away with its prized horn.'),
  -- sneasel in black
  (215, 21500, 17, 'A smart and sneaky Pokémon. A pair may work together to steal eggs by having one lure the parents away.'),
  -- teddiursa in black
  (216, 21600, 17, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in black
  (217, 21700, 17, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in black
  (218, 21800, 17, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in black
  (219, 21900, 17, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in black
  (220, 22000, 17, 'It has a very sensitive nose. It can locate mushrooms, berries, and even hot springs buried under ice.'),
  -- piloswine in black
  (221, 22100, 17, 'Covered by a shaggy coat, it is strong against the cold. Its tusks of ice thicken when it snows.'),
  -- corsola in black
  (222, 22200, 17, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in black
  (223, 22300, 17, 'It forcefully squirts water. The water jet never misses prey even if the Remoraid is deep in the sea.'),
  -- octillery in black
  (224, 22400, 17, 'It loves to lurk inside holes in rocks. It sometimes sprays ink on prey by sticking out only its mouth.'),
  -- delibird in black
  (225, 22500, 17, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in black
  (226, 22600, 17, 'While elegantly swimming in the sea, it ignores Remoraid that cling to its fins seeking food scraps.'),
  -- skarmory in black
  (227, 22700, 17, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in black
  (228, 22800, 17, 'It is smart enough to hunt in packs. It uses a variety of cries for communicating with others.'),
  -- houndoom in black
  (229, 22900, 17, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- kingdra in black
  (230, 23000, 17, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in black
  (231, 23100, 17, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in black
  (232, 23200, 17, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in black
  (233, 23300, 17, 'It was upgraded to enable the exploration of other planets. However, it failed to measure up.'),
  -- stantler in black
  (234, 23400, 17, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in black
  (235, 23500, 17, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in black
  (236, 23600, 17, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in black
  (237, 23700, 17, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in black
  (238, 23800, 17, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in black
  (239, 23900, 17, 'A weak electric current flows between its horns. Sticking a hand there shocks the unwary.'),
  -- magby in black
  (240, 24000, 17, 'Its magma-like blood circulates throughout its body. Its body’s heat can top 1,100 degrees F.'),
  -- miltank in black
  (241, 24100, 17, 'It is said that kids who drink Miltank’s milk grow up to become hearty, healthy adults.'),
  -- blissey in black
  (242, 24200, 17, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- raikou in black
  (243, 24300, 17, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in black
  (244, 24400, 17, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in black
  (245, 24500, 17, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in black
  (246, 24600, 17, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in black
  (247, 24700, 17, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in black
  (248, 24800, 17, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in black
  (249, 24900, 17, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in black
  (250, 25000, 17, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in black
  (251, 25100, 17, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in black
  (252, 25200, 17, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in black
  (253, 25300, 17, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in black
  (254, 25400, 17, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in black
  (255, 25500, 17, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in black
  (256, 25600, 17, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in black
  (257, 25700, 17, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in black
  (258, 25800, 17, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in black
  (259, 25900, 17, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in black
  (260, 26000, 17, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in black
  (261, 26100, 17, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in black
  (262, 26200, 17, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in black
  (263, 26300, 17, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in black
  (264, 26400, 17, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in black
  (265, 26500, 17, 'Often targeted by bird Pokémon, it desperately resists by releasing poison from its tail spikes.'),
  -- silcoon in black
  (266, 26600, 17, 'It wraps silk around the branches of a tree. It drinks rainwater on its silk while awaiting evolution.'),
  -- beautifly in black
  (267, 26700, 17, 'Despite its looks, it is aggressive. It jabs with its long, thin mouth if disturbed while collecting pollen.'),
  -- cascoon in black
  (268, 26800, 17, 'It never forgets any attack it endured while in the cocoon. After evolution, it seeks payback.'),
  -- dustox in black
  (269, 26900, 17, 'Toxic powder is scattered with each flap. At night, it is known to strip leaves off trees lining boulevards.'),
  -- lotad in black
  (270, 27000, 17, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in black
  (271, 27100, 17, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in black
  (272, 27200, 17, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in black
  (273, 27300, 17, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in black
  (274, 27400, 17, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in black
  (275, 27500, 17, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in black
  (276, 27600, 17, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in black
  (277, 27700, 17, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in black
  (278, 27800, 17, 'It soars high in the sky, riding on updrafts like a glider. It carries food tucked in its bill.'),
  -- pelipper in black
  (279, 27900, 17, 'It is a messenger of the skies, carrying small Pokémon and eggs to safety in its bill.'),
  -- ralts in black
  (280, 28000, 17, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in black
  (281, 28100, 17, 'If its Trainer becomes happy, it overflows with energy, dancing joyously while spinning about.'),
  -- gardevoir in black
  (282, 28200, 17, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in black
  (283, 28300, 17, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in black
  (284, 28400, 17, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in black
  (285, 28500, 17, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in black
  (286, 28600, 17, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in black
  (287, 28700, 17, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in black
  (288, 28800, 17, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in black
  (289, 28900, 17, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in black
  (290, 29000, 17, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in black
  (291, 29100, 17, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in black
  (292, 29200, 17, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in black
  (293, 29300, 17, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in black
  (294, 29400, 17, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in black
  (295, 29500, 17, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in black
  (296, 29600, 17, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in black
  (297, 29700, 17, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in black
  (298, 29800, 17, 'Its tail bounces like a rubber ball. It flings that tail around to fight opponents bigger than itself.'),
  -- nosepass in black
  (299, 29900, 17, 'When endangered, it may protect itself by raising its magnetism and drawing iron objects to its body.'),
  -- skitty in black
  (300, 30000, 17, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in black
  (301, 30100, 17, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in black
  (302, 30200, 17, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in black
  (303, 30300, 17, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in black
  (304, 30400, 17, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in black
  (305, 30500, 17, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in black
  (306, 30600, 17, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in black
  (307, 30700, 17, 'It always trains deep in mountains. It levitates when it heightens its spiritual power through meditation.'),
  -- medicham in black
  (308, 30800, 17, 'It gains the ability to see the aura of its opponents by honing its mind through starvation.'),
  -- electrike in black
  (309, 30900, 17, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in black
  (310, 31000, 17, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in black
  (311, 31100, 17, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in black
  (312, 31200, 17, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in black
  (313, 31300, 17, 'It communicates with others by lighting up its rear at night. It loves Illumise’s sweet aroma.'),
  -- illumise in black
  (314, 31400, 17, 'With its sweet aroma, it guides Volbeat to draw signs with light in the night sky.'),
  -- roselia in black
  (315, 31500, 17, 'The more healthy the Roselia, the more pleasant its flowers’ aroma. Its scent deeply relaxes people.'),
  -- gulpin in black
  (316, 31600, 17, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in black
  (317, 31700, 17, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in black
  (318, 31800, 17, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in black
  (319, 31900, 17, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in black
  (320, 32000, 17, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in black
  (321, 32100, 17, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in black
  (322, 32200, 17, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in black
  (323, 32300, 17, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in black
  (324, 32400, 17, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in black
  (325, 32500, 17, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in black
  (326, 32600, 17, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in black
  (327, 32700, 17, 'No two Spinda have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in black
  (328, 32800, 17, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in black
  (329, 32900, 17, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in black
  (330, 33000, 17, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in black
  (331, 33100, 17, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in black
  (332, 33200, 17, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in black
  (333, 33300, 17, 'It can’t relax if it or its surroundings are not clean. It wipes off dirt with its wings.'),
  -- altaria in black
  (334, 33400, 17, 'If it bonds with a person, it will gently envelop the friend with its soft wings, then hum.'),
  -- zangoose in black
  (335, 33500, 17, 'It has feuded with Seviper for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in black
  (336, 33600, 17, 'For many generations, it has feuded with Zangoose. It whets its bladed tail on rocks for battle.'),
  -- lunatone in black
  (337, 33700, 17, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in black
  (338, 33800, 17, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in black
  (339, 33900, 17, 'Its slimy body is hard to grasp. In one region, it is said to have been born from hardened mud.'),
  -- whiscash in black
  (340, 34000, 17, 'It is extremely protective of its territory. If any foe approaches, it attacks using vicious tremors.'),
  -- corphish in black
  (341, 34100, 17, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in black
  (342, 34200, 17, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in black
  (343, 34300, 17, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in black
  (344, 34400, 17, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in black
  (345, 34500, 17, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in black
  (346, 34600, 17, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in black
  (347, 34700, 17, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in black
  (348, 34800, 17, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in black
  (349, 34900, 17, 'It is a shabby and ugly Pokémon. However, it is very hardy and can survive on little water.'),
  -- milotic in black
  (350, 35000, 17, 'Its lovely scales are described as rainbow colored. They change color depending on the viewing angle.'),
  -- castform in black
  (351, 35100, 17, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in black
  (352, 35200, 17, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in black
  (353, 35300, 17, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in black
  (354, 35400, 17, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in black
  (355, 35500, 17, 'It loves the crying of children. It startles bad kids by passing through walls and making them cry.'),
  -- dusclops in black
  (356, 35600, 17, 'It seeks drifting will-o’-the-wisps and sucks them into its empty body. What happens inside is a mystery.'),
  -- tropius in black
  (357, 35700, 17, 'Delicious fruits grew out from around its neck because it always ate the same kind of fruit.'),
  -- chimecho in black
  (358, 35800, 17, 'Its cries echo inside its hollow body to emerge as beautiful notes for startling and repelling foes.'),
  -- absol in black
  (359, 35900, 17, 'Rumored to sense disasters with its horn, it became a target. It fled deep into the mountains.'),
  -- wynaut in black
  (360, 36000, 17, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in black
  (361, 36100, 17, 'It is said that several Snorunt gather under giant leaves and live together in harmony.'),
  -- glalie in black
  (362, 36200, 17, 'It prevents prey from escaping by instantaneously freezing moisture in the air.'),
  -- spheal in black
  (363, 36300, 17, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in black
  (364, 36400, 17, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in black
  (365, 36500, 17, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in black
  (366, 36600, 17, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in black
  (367, 36700, 17, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in black
  (368, 36800, 17, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in black
  (369, 36900, 17, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in black
  (370, 37000, 17, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in black
  (371, 37100, 17, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in black
  (372, 37200, 17, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in black
  (373, 37300, 17, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in black
  (374, 37400, 17, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in black
  (375, 37500, 17, 'It is formed by two Beldum joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in black
  (376, 37600, 17, 'Metang combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in black
  (377, 37700, 17, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in black
  (378, 37800, 17, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in black
  (379, 37900, 17, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in black
  (380, 38000, 17, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in black
  (381, 38100, 17, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in black
  (382, 38200, 17, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in black
  (383, 38300, 17, 'It had been asleep in underground magma ever since it fiercely fought Kyogre long ago.'),
  -- rayquaza in black
  (384, 38400, 17, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in black
  (385, 38500, 17, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in black
  (386, 38600, 17, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in black
  (387, 38700, 17, 'The shell on its back is made of soil. On a very healthy Turtwig, the shell should feel moist.'),
  -- grotle in black
  (388, 38800, 17, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in black
  (389, 38900, 17, 'Some Pokémon are born on a Torterra’s back and spend their entire life there.'),
  -- chimchar in black
  (390, 39000, 17, 'It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.'),
  -- monferno in black
  (391, 39100, 17, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in black
  (392, 39200, 17, 'It uses unique fighting moves with fire on its hands and feet. It will take on any opponent.'),
  -- piplup in black
  (393, 39300, 17, 'A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.'),
  -- prinplup in black
  (394, 39400, 17, 'Because every Prinplup considers itself to be the most important, they can never form a group.'),
  -- empoleon in black
  (395, 39500, 17, 'If anyone were to hurt its pride, it would slash them with wings that can cleave through an ice floe.'),
  -- starly in black
  (396, 39600, 17, 'Because they are weak individually, they form groups. However, they bicker if the group grows too big.'),
  -- staravia in black
  (397, 39700, 17, 'Recognizing their own weakness, they always live in a group. When alone, a Staravia cries noisily.'),
  -- staraptor in black
  (398, 39800, 17, 'It never stops attacking even if it is injured. It fusses over the shape of its comb.'),
  -- bidoof in black
  (399, 39900, 17, 'A comparison revealed that Bidoof’s front teeth grow at the same rate as Rattata’s.'),
  -- bibarel in black
  (400, 40000, 17, 'A river dammed by Bibarel will never overflow its banks, which is appreciated by people nearby.'),
  -- kricketot in black
  (401, 40100, 17, 'Its legs are short. Whenever it stumbles, its stiff antennae clack with a xylophone-like sound.'),
  -- kricketune in black
  (402, 40200, 17, 'There is a village that hosts a contest based on the amazingly variable cries of this Pokémon.'),
  -- shinx in black
  (403, 40300, 17, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in black
  (404, 40400, 17, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in black
  (405, 40500, 17, 'It can see clearly through walls to track down its prey and seek its lost young.'),
  -- budew in black
  (406, 40600, 17, 'Sensitive to changing temperature, the bud is said to bloom when it feels the sun’s warm touch.'),
  -- roserade in black
  (407, 40700, 17, 'Each of its hands contains different toxins, but both hands can jab with near-fatal power.'),
  -- cranidos in black
  (408, 40800, 17, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with head butts.'),
  -- rampardos in black
  (409, 40900, 17, 'If two were to smash their heads together, their foot-thick skulls would keep them from fainting.'),
  -- shieldon in black
  (410, 41000, 17, 'It is outstandingly armored. As a result, it can eat grass and berries without having to fight.'),
  -- bastiodon in black
  (411, 41100, 17, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in black
  (412, 41200, 17, 'Even if it is born where there are no cocooning materials, it somehow always ends up with a cloak.'),
  -- wormadam in black
  (413, 41300, 17, 'When evolving, its body takes in surrounding materials. As a result, there are many body variations.'),
  -- mothim in black
  (414, 41400, 17, 'While it loves floral honey, it won’t gather any itself. Instead, it plots to steal some from Combee.'),
  -- combee in black
  (415, 41500, 17, 'The trio is together from birth. It constantly gathers honey from flowers to please Vespiquen.'),
  -- vespiquen in black
  (416, 41600, 17, 'It releases various pheromones to make the grubs in its body do its bidding while fighting foes.'),
  -- pachirisu in black
  (417, 41700, 17, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in black
  (418, 41800, 17, 'It spins its two tails like a screw to propel itself through water. The tails also slice clinging seaweed.'),
  -- floatzel in black
  (419, 41900, 17, 'It is a common sight around fishing ports. It is known to rescue people and carry off prey.'),
  -- cherubi in black
  (420, 42000, 17, 'The small ball is not only filled with nutrients, it is also tasty. Starly try to peck it off.'),
  -- cherrim in black
  (421, 42100, 17, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in black
  (422, 42200, 17, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in black
  (423, 42300, 17, 'Long ago, its entire back was shielded with a sturdy shell. There are traces of it left in its cells.'),
  -- ambipom in black
  (424, 42400, 17, 'Split into two, the tails are so adept at handling and doing things, Ambipom rarely uses its hands.'),
  -- drifloon in black
  (425, 42500, 17, 'Because of the way it floats aimlessly, an old folktale calls it a “Signpost for Wandering Spirits.”'),
  -- drifblim in black
  (426, 42600, 17, 'At dusk, swarms of them are carried aloft on winds. When noticed, they suddenly vanish.'),
  -- buneary in black
  (427, 42700, 17, 'Its ears are always rolled up. They can be forcefully extended to shatter even a large boulder.'),
  -- lopunny in black
  (428, 42800, 17, 'The ears appear to be delicate. If they are touched roughly, it kicks with its graceful legs.'),
  -- mismagius in black
  (429, 42900, 17, 'Its cry sounds like an incantation. It is said the cry may rarely be imbued with happiness-giving power.'),
  -- honchkrow in black
  (430, 43000, 17, 'If one utters a deep cry, many Murkrow gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in black
  (431, 43100, 17, 'It hides its spiteful tendency of hooking its claws into the nose of its Trainer if it isn’t fed.'),
  -- purugly in black
  (432, 43200, 17, 'It binds its body with its tails to make itself look bigger. If it locks eyes, it will glare ceaselessly.'),
  -- chingling in black
  (433, 43300, 17, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in black
  (434, 43400, 17, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in black
  (435, 43500, 17, 'It attacks by spraying a horribly smelly fluid from the tip of its tail. Attacks from above confound it.'),
  -- bronzor in black
  (436, 43600, 17, 'There are researchers who believe this Pokémon reflected like a mirror in the distant past.'),
  -- bronzong in black
  (437, 43700, 17, 'It brought rains by opening portals to another world. It was revered as a bringer of plentiful harvests.'),
  -- bonsly in black
  (438, 43800, 17, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in black
  (439, 43900, 17, 'It mimics the expressions and motions of those it sees to understand the feelings of others.'),
  -- happiny in black
  (440, 44000, 17, 'It likes to carry around a small rock. It may wander around others’ feet and cause them to stumble.'),
  -- chatot in black
  (441, 44100, 17, 'Its tongue is just like a human’s. As a result, it can cleverly mimic human speech.'),
  -- spiritomb in black
  (442, 44200, 17, 'Its constant mischief and misdeeds resulted in it being bound to an Odd Keystone by a mysterious spell.'),
  -- gible in black
  (443, 44300, 17, 'It attacks using its huge mouth. While its attacks are powerful, it hurts itself out of clumsiness, too.'),
  -- gabite in black
  (444, 44400, 17, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in black
  (445, 44500, 17, 'It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.'),
  -- munchlax in black
  (446, 44600, 17, 'In its desperation to gulp down food, it forgets about the food it has hidden under its fur.'),
  -- riolu in black
  (447, 44700, 17, 'It has the peculiar power of being able to see emotions such as joy and rage in the form of waves.'),
  -- lucario in black
  (448, 44800, 17, 'A well-trained one can sense auras to identify and take in the feelings of creatures over half a mile away.'),
  -- hippopotas in black
  (449, 44900, 17, 'It shuts its nostrils tight then travels through sand as if walking. They form colonies of around ten.'),
  -- hippowdon in black
  (450, 45000, 17, 'It is surprisingly quick to anger. It holds its mouth agape as a display of its strength.'),
  -- skorupi in black
  (451, 45100, 17, 'As soon as the tail claws close, its needle tips secrete poison. It can survive a year without food.'),
  -- drapion in black
  (452, 45200, 17, 'Possessing a sturdy build, it takes pride in its strength, taking down foes without using toxins.'),
  -- croagunk in black
  (453, 45300, 17, 'It rarely fights fairly, but that is strictly to ensure survival. It is popular as a mascot.'),
  -- toxicroak in black
  (454, 45400, 17, 'It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.'),
  -- carnivine in black
  (455, 45500, 17, 'It binds itself to trees in marshes. It attracts prey with its sweet- smelling drool and gulps them down.'),
  -- finneon in black
  (456, 45600, 17, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in black
  (457, 45700, 17, 'It crawls along the seafloor using its long front fins like legs. It competes for food with Lanturn.'),
  -- mantyke in black
  (458, 45800, 17, 'People organize tours to see this Pokémon frolic and skim the tops of waves with Remoraid.'),
  -- snover in black
  (459, 45900, 17, 'Seemingly curious about people, they gather around footsteps they find on snowy mountains.'),
  -- abomasnow in black
  (460, 46000, 17, 'They appear when the snow flowers bloom. When the petals fall, they retreat to places unknown again.'),
  -- weavile in black
  (461, 46100, 17, 'Evolution made it even more devious. It communicates by clawing signs in boulders.'),
  -- magnezone in black
  (462, 46200, 17, 'A group tried to use scientific means to make Magnezone evolve, but their efforts ended in failure.'),
  -- lickilicky in black
  (463, 46300, 17, 'The long tongue is always soggy with slobber. The saliva contains a solvent that causes numbness.'),
  -- rhyperior in black
  (464, 46400, 17, 'It can launch a rock held in its hand like a missile by tightening then expanding muscles instantly.'),
  -- tangrowth in black
  (465, 46500, 17, 'Its arms are made of plants that bind themselves to things. They grow back right away if cut.'),
  -- electivire in black
  (466, 46600, 17, 'Heedless of enemy attacks, it closes in, shoves its tails onto the foe, then looses high voltage.'),
  -- magmortar in black
  (467, 46700, 17, 'When launching 3,600 degrees F fireballs, its body takes on a whitish hue from the intense heat.'),
  -- togekiss in black
  (468, 46800, 17, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in black
  (469, 46900, 17, 'Its jaw power is incredible. It is adept at biting apart foes while flying by at high speed.'),
  -- leafeon in black
  (470, 47000, 17, 'It basically does not fight. With cells similar to those of plants, it can perform photosynthesis.'),
  -- glaceon in black
  (471, 47100, 17, 'By controlling its body heat, it can freeze the atmosphere around it to make a diamond-dust flurry.'),
  -- gliscor in black
  (472, 47200, 17, 'If it succeeds in catching even a faint breeze properly, it can circle the globe without flapping once.'),
  -- mamoswine in black
  (473, 47300, 17, 'A frozen one was dug up from soil dating back 10,000 years. It woke up to much amazement.'),
  -- porygon-z in black
  (474, 47400, 17, 'Its programming was modified to enable work in alien dimensions. It did not work as planned.'),
  -- gallade in black
  (475, 47500, 17, 'When trying to protect someone, it extends its elbows as if they were swords and fights savagely.'),
  -- probopass in black
  (476, 47600, 17, 'It freely controls three small units called Mini-Noses using magnetic force.'),
  -- dusknoir in black
  (477, 47700, 17, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in black
  (478, 47800, 17, 'It freezes prey by blowing its -58 degrees F breath. It is said to then secretly display its prey.'),
  -- rotom in black
  (479, 47900, 17, 'Its electric-like body can enter some kinds of machines and take control in order to make mischief.'),
  -- uxie in black
  (480, 48000, 17, 'When Uxie flew, people gained the ability to solve problems. It was the birth of knowledge.'),
  -- mesprit in black
  (481, 48100, 17, 'When Mesprit flew, people learned the joy and sadness of living. It was the birth of emotions.'),
  -- azelf in black
  (482, 48200, 17, 'When Azelf flew, people gained the determination to do things. It was the birth of willpower.'),
  -- dialga in black
  (483, 48300, 17, 'A legendary Pokémon of Sinnoh. It is said that time flows when Dialga’s heart beats.'),
  -- palkia in black
  (484, 48400, 17, 'A legendary Pokémon of Sinnoh. It is said that space becomes more stable with Palkia’s every breath.'),
  -- heatran in black
  (485, 48500, 17, 'Its body is made of rugged steel. However, it is partially melted in spots because of its own heat.'),
  -- regigigas in black
  (486, 48600, 17, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in black
  (487, 48700, 17, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in black
  (488, 48800, 17, 'On nights around the quarter moon, the aurora from its tail extends and undulates beautifully.'),
  -- phione in black
  (489, 48900, 17, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in black
  (490, 49000, 17, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in black
  (491, 49100, 17, 'To protect itself, it afflicts those around it with nightmares. However, it means no harm.'),
  -- shaymin in black
  (492, 49200, 17, 'The flowers all over its body burst into bloom if it is lovingly hugged and senses gratitude.'),
  -- arceus in black
  (493, 49300, 17, 'It is said to have emerged from an egg in a place where there was nothing, then shaped the world.'),
  -- victini in black
  (494, 49400, 17, 'This Pokémon brings victory. It is said that Trainers with Victini always win, regardless of the type of encounter.'),
  -- snivy in black
  (495, 49500, 17, 'It is very intelligent and calm. Being exposed to lots of sunlight makes its movements swifter.'),
  -- servine in black
  (496, 49600, 17, 'It moves along the ground as if sliding. Its swift movements befuddle its foes, and it then attacks with a vine whip.'),
  -- serperior in black
  (497, 49700, 17, 'It can stop its opponents’ movements with just a glare. It takes in solar energy and boosts it internally.'),
  -- tepig in black
  (498, 49800, 17, 'It can deftly dodge its foe’s attacks while shooting fireballs from its nose. It roasts berries before it eats them.'),
  -- pignite in black
  (499, 49900, 17, 'When its internal fire flares up, its movements grow sharper and faster. When in trouble, it emits smoke.'),
  -- emboar in black
  (500, 50000, 17, 'It can throw a fire punch by setting its fists on fire with its fiery chin. It cares deeply about its friends.'),
  -- oshawott in black
  (501, 50100, 17, 'It fights using the scalchop on its stomach. In response to an attack, it retaliates immediately by slashing.'),
  -- dewott in black
  (502, 50200, 17, 'Strict training is how it learns its flowing double-scalchop technique.'),
  -- samurott in black
  (503, 50300, 17, 'One swing of the sword incorporated in its armor can fell an opponent. A simple glare from one of them quiets everybody.'),
  -- patrat in black
  (504, 50400, 17, 'Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.'),
  -- watchog in black
  (505, 50500, 17, 'When they see an enemy, their tails stand high, and they spit the seeds of berries stored in their cheek pouches.'),
  -- lillipup in black
  (506, 50600, 17, 'It faces strong opponents with great courage. But, when at a disadvantage in a fight, this intelligent Pokémon flees.'),
  -- herdier in black
  (507, 50700, 17, 'It has black, cape-like fur that is very hard and decreases the amount of damage it receives.'),
  -- stoutland in black
  (508, 50800, 17, 'It rescues people stranded by blizzards in the mountains. Its shaggy fur shields it from the cold.'),
  -- purrloin in black
  (509, 50900, 17, 'They steal from people for fun, but their victims can’t help but forgive them. Their deceptively cute act is perfect.'),
  -- liepard in black
  (510, 51000, 17, 'These Pokémon vanish and appear unexpectedly. Many Trainers are drawn to their beautiful form and fur.'),
  -- pansage in black
  (511, 51100, 17, 'This Pokémon dwells deep in the forest. Eating a leaf from its head whisks weariness away as if by magic.'),
  -- simisage in black
  (512, 51200, 17, 'Ill tempered, it fights by swinging its barbed tail around wildly. The leaf growing on its head is very bitter.'),
  -- pansear in black
  (513, 51300, 17, 'When it is angered, the temperature of its head tuft reaches 600° F. It uses its tuft to roast berries.'),
  -- simisear in black
  (514, 51400, 17, 'It loves sweets because they become energy for the fire burning inside its body.'),
  -- panpour in black
  (515, 51500, 17, 'The water stored inside the tuft on its head is full of nutrients. Plants that receive its water grow large.'),
  -- simipour in black
  (516, 51600, 17, 'The tuft on its head holds water. When the level runs low, it replenishes the tuft by siphoning up water with its tail.'),
  -- munna in black
  (517, 51700, 17, 'Munna always float in the air. People whose dreams are eaten by them forget what the dreams had been about.'),
  -- musharna in black
  (518, 51800, 17, 'The mist emanating from their foreheads is packed with the dreams of people and Pokémon.'),
  -- pidove in black
  (519, 51900, 17, 'Each follows its Trainer’s orders as best it can, but they sometimes fail to understand complicated commands.'),
  -- tranquill in black
  (520, 52000, 17, 'It can return to its Trainer’s location regardless of the distance separating them.'),
  -- unfezant in black
  (521, 52100, 17, 'Males swing their head plumage to threaten opponents. The females’ flying abilities surpass those of the males.'),
  -- blitzle in black
  (522, 52200, 17, 'Its mane shines when it discharges electricity. They use their flashing manes to communicate with one another.'),
  -- zebstrika in black
  (523, 52300, 17, 'They have lightning-like movements. When Zebstrika run at full speed, the sound of thunder reverberates.'),
  -- roggenrola in black
  (524, 52400, 17, 'Its ear is hexagonal in shape. Compressed underground, its body is as hard as steel.'),
  -- boldore in black
  (525, 52500, 17, 'When it overflows with power, the orange crystal on its body glows. It looks for underground water in caves.'),
  -- gigalith in black
  (526, 52600, 17, 'Compressing the energy from its internal core lets it fire off an attack capable of blowing away a mountain.'),
  -- woobat in black
  (527, 52700, 17, 'Its habitat is dark forests and caves. It emits ultrasonic waves from its nose to learn about its surroundings.'),
  -- swoobat in black
  (528, 52800, 17, 'It emits sound waves of various frequencies from its nose, including some powerful enough to destroy rocks.'),
  -- drilbur in black
  (529, 52900, 17, 'It can dig through the ground at a speed of 30 mph. It could give a car running aboveground a good race.'),
  -- excadrill in black
  (530, 53000, 17, 'It can help in tunnel construction. Its drill has evolved into steel strong enough to bore through iron plates.'),
  -- audino in black
  (531, 53100, 17, 'It touches others with the feelers on its ears, using the sound of their heartbeats to tell how they are feeling.'),
  -- timburr in black
  (532, 53200, 17, 'It fights by swinging a piece of lumber around. It is close to evolving when it can handle the lumber without difficulty.'),
  -- gurdurr in black
  (533, 53300, 17, 'This Pokémon is so muscular and strongly built that even a group of wrestlers could not make it budge an inch.'),
  -- conkeldurr in black
  (534, 53400, 17, 'It is thought that Conkeldurr taught humans how to make concrete more than 2,000 years ago.'),
  -- tympole in black
  (535, 53500, 17, 'They warn others of danger by vibrating their cheeks to create a high-pitched sound.'),
  -- palpitoad in black
  (536, 53600, 17, 'When they vibrate the bumps on their heads, they can make waves in water or earthquake-like vibrations on land.'),
  -- seismitoad in black
  (537, 53700, 17, 'They shoot paralyzing liquid from their head bumps. They use vibration to hurt their opponents.'),
  -- throh in black
  (538, 53800, 17, 'When it tightens its belt, it becomes stronger. Wild Throh use vines to weave their own belts.'),
  -- sawk in black
  (539, 53900, 17, 'The sound of Sawk punching boulders and trees can be heard all the way from the mountains where they train.'),
  -- sewaddle in black
  (540, 54000, 17, 'Leavanny dress it in clothes they made for it when it hatched. It hides its head in its hood while it is sleeping.'),
  -- swadloon in black
  (541, 54100, 17, 'Forests where Swadloon live have superb foliage because the nutrients they make from fallen leaves nourish the plant life.'),
  -- leavanny in black
  (542, 54200, 17, 'Upon finding a small Pokémon, it weaves clothing for it from leaves, using the cutters on its arms and sticky silk.'),
  -- venipede in black
  (543, 54300, 17, 'Its bite injects a potent poison, enough to paralyze large bird Pokémon that try to prey on it.'),
  -- whirlipede in black
  (544, 54400, 17, 'Protected by a hard shell, it spins its body like a wheel and crashes furiously into its enemies.'),
  -- scolipede in black
  (545, 54500, 17, 'With quick movements, it chases down its foes, attacking relentlessly with its horns until it prevails.'),
  -- cottonee in black
  (546, 54600, 17, 'When attacked, it escapes by shooting cotton from its body. The cotton serves as a decoy to distract the attacker.'),
  -- whimsicott in black
  (547, 54700, 17, 'Like the wind, it can slip through any gap, no matter how small. It leaves balls of white fluff behind.'),
  -- petilil in black
  (548, 54800, 17, 'The leaves on its head are very bitter. Eating one of these leaves is known to refresh a tired body.'),
  -- lilligant in black
  (549, 54900, 17, 'Even veteran Trainers face a challenge in getting its beautiful flower to bloom. This Pokémon is popular with celebrities.'),
  -- basculin in black
  (550, 55000, 17, 'Red and blue Basculin get along so poorly, they’ll start fighting instantly. These Pokémon are very hostile.'),
  -- sandile in black
  (551, 55100, 17, 'They live buried in the sands of the desert. The sun-warmed sands prevent their body temperature from dropping.'),
  -- krokorok in black
  (552, 55200, 17, 'They live in groups of a few individuals. Protective membranes shield their eyes from sandstorms.'),
  -- krookodile in black
  (553, 55300, 17, 'They never allow prey to escape. Their jaws are so powerful, they can crush the body of an automobile.'),
  -- darumaka in black
  (554, 55400, 17, 'When its internal fire is burning, it cannot calm down and it runs around. When the fire diminishes, it falls asleep.'),
  -- darmanitan in black
  (555, 55500, 17, 'Its internal fire burns at 2,500° F, making enough power that it can destroy a dump truck with one punch.'),
  -- maractus in black
  (556, 55600, 17, 'It uses an up-tempo song and dance to drive away the bird Pokémon that prey on its flower seeds.'),
  -- dwebble in black
  (557, 55700, 17, 'This Pokémon can easily melt holes in hard rocks with a liquid secreted from its mouth.'),
  -- crustle in black
  (558, 55800, 17, 'Competing for territory, Crustle fight viciously. The one whose boulder is broken is the loser of the battle.'),
  -- scraggy in black
  (559, 55900, 17, 'Its skin has a rubbery elasticity, so it can reduce damage by defensively pulling its skin up to its neck.'),
  -- scrafty in black
  (560, 56000, 17, 'Groups of them beat up anything that enters their territory. Each can spit acidic liquid from its mouth.'),
  -- sigilyph in black
  (561, 56100, 17, 'They never vary the route they fly, because their memories of guarding an ancient city remain steadfast.'),
  -- yamask in black
  (562, 56200, 17, 'Each of them carries a mask that used to be its face when it was human. Sometimes they look at it and cry.'),
  -- cofagrigus in black
  (563, 56300, 17, 'It has been said that they swallow those who get too close and turn them into mummies. They like to eat gold nuggets.'),
  -- tirtouga in black
  (564, 56400, 17, 'Restored from a fossil, this Pokémon can dive to depths beyond half a mile.'),
  -- carracosta in black
  (565, 56500, 17, 'They can live both in the ocean and on land. A slap from one of them is enough to open a hole in the bottom of a tanker.'),
  -- archen in black
  (566, 56600, 17, 'Said to be an ancestor of bird Pokémon, they were unable to fly and moved about by hopping from one branch to another.'),
  -- archeops in black
  (567, 56700, 17, 'They are intelligent and will cooperate to catch prey. From the ground, they use a running start to take flight.'),
  -- trubbish in black
  (568, 56800, 17, 'Inhaling the gas they belch will make you sleep for a week. They prefer unsanitary places.'),
  -- garbodor in black
  (569, 56900, 17, 'It clenches opponents with its left arm and finishes them off with foul-smelling poison gas belched from its mouth.'),
  -- zorua in black
  (570, 57000, 17, 'It changes into the forms of others to surprise them. Apparently, it often transforms into a silent child.'),
  -- zoroark in black
  (571, 57100, 17, 'Bonds between these Pokémon are very strong. It protects the safety of its pack by tricking its opponents.'),
  -- minccino in black
  (572, 57200, 17, 'They greet one another by rubbing each other with their tails, which are always kept well groomed and clean.'),
  -- cinccino in black
  (573, 57300, 17, 'Their white fur is coated in a special oil that makes it easy for them to deflect attacks.'),
  -- gothita in black
  (574, 57400, 17, 'Their ribbonlike feelers increase their psychic power. They are always staring at something.'),
  -- gothorita in black
  (575, 57500, 17, 'They use hypnosis to control people and Pokémon. Tales of Gothorita leading people astray are told in every corner.'),
  -- gothitelle in black
  (576, 57600, 17, 'Starry skies thousands of light-years away are visible in the space distorted by their intense psychic power.'),
  -- solosis in black
  (577, 57700, 17, 'They drive away attackers by unleashing psychic power. They can use telepathy to talk with others.'),
  -- duosion in black
  (578, 57800, 17, 'Since they have two divided brains, at times they suddenly try to take two different actions at once.'),
  -- reuniclus in black
  (579, 57900, 17, 'When Reuniclus shake hands, a network forms between their brains, increasing their psychic power.'),
  -- ducklett in black
  (580, 58000, 17, 'These bird Pokémon are excellent divers. They swim around in the water eating their favorite food--peat moss.'),
  -- swanna in black
  (581, 58100, 17, 'Swanna start to dance at dusk. The one dancing in the middle is the leader of the flock.'),
  -- vanillite in black
  (582, 58200, 17, 'The temperature of their breath is -58° F. They create snow crystals and make snow fall in the areas around them.'),
  -- vanillish in black
  (583, 58300, 17, 'Snowy mountains are this Pokémon’s habitat. During an ancient ice age, they moved to southern areas.'),
  -- vanilluxe in black
  (584, 58400, 17, 'Swallowing large amounts of water, they make snow clouds inside their bodies and attack their foes with violent blizzards.'),
  -- deerling in black
  (585, 58500, 17, 'The color and scent of their fur changes to match the mountain grass. When they sense hostility, they hide in the grass.'),
  -- sawsbuck in black
  (586, 58600, 17, 'They migrate according to the seasons. People can tell the season by looking at Sawsbuck’s horns.'),
  -- emolga in black
  (587, 58700, 17, 'The energy made in its cheeks’ electric pouches is stored inside its membrane and released while it is gliding.'),
  -- karrablast in black
  (588, 58800, 17, 'These mysterious Pokémon evolve when they receive electrical stimulation while they are in the same place as Shelmet.'),
  -- escavalier in black
  (589, 58900, 17, 'They fly around at high speed, striking with their pointed spears. Even when in trouble, they face opponents bravely.'),
  -- foongus in black
  (590, 59000, 17, 'It lures people in with its Poké Ball pattern, then releases poison spores. Why it resembles a Poké Ball is unknown.'),
  -- amoonguss in black
  (591, 59100, 17, 'It lures prey close by dancing and waving its arm caps, which resemble Poké Balls, in a swaying motion.'),
  -- frillish in black
  (592, 59200, 17, 'With its thin, veil-like arms wrapped around the body of its opponent, it sinks to the ocean floor.'),
  -- jellicent in black
  (593, 59300, 17, 'The fate of the ships and crew that wander into Jellicent’s habitat: all sunken, all lost, all vanished.'),
  -- alomomola in black
  (594, 59400, 17, 'The special membrane enveloping Alomomola has the ability to heal wounds.'),
  -- joltik in black
  (595, 59500, 17, 'Joltik that live in cities have learned a technique for sucking electricity from the outlets in houses.'),
  -- galvantula in black
  (596, 59600, 17, 'When attacked, they create an electric barrier by spitting out many electrically charged threads.'),
  -- ferroseed in black
  (597, 59700, 17, 'When threatened, it attacks by shooting a barrage of spikes, which gives it a chance to escape by rolling away.'),
  -- ferrothorn in black
  (598, 59800, 17, 'It fights by swinging around its three spiky feelers. A hit from these steel spikes can reduce a boulder to rubble.'),
  -- klink in black
  (599, 59900, 17, 'The two minigears that mesh together are predetermined. Each will rebound from other minigears without meshing.'),
  -- klang in black
  (600, 60000, 17, 'By changing the direction in which it rotates, it communicates its feelings to others. When angry, it rotates faster.'),
  -- klinklang in black
  (601, 60100, 17, 'Its red core functions as an energy tank. It fires the charged energy through its spikes into an area.'),
  -- tynamo in black
  (602, 60200, 17, 'While one alone doesn’t have much power, a chain of many Tynamo can be as powerful as lightning.'),
  -- eelektrik in black
  (603, 60300, 17, 'They coil around foes and shock them with electricity-generating organs that seem simply to be circular patterns.'),
  -- eelektross in black
  (604, 60400, 17, 'They crawl out of the ocean using their arms. They will attack prey on shore and immediately drag it into the ocean.'),
  -- elgyem in black
  (605, 60500, 17, 'It uses its strong psychic power to squeeze its opponent’s brain, causing unendurable headaches.'),
  -- beheeyem in black
  (606, 60600, 17, 'It can manipulate an opponent’s memory. Apparently, it communicates by flashing its three different-colored fingers.'),
  -- litwick in black
  (607, 60700, 17, 'Litwick shines a light that absorbs the life energy of people and Pokémon, which becomes the fuel that it burns.'),
  -- lampent in black
  (608, 60800, 17, 'This ominous Pokémon is feared. Through cities it wanders, searching for the spirits of the fallen.'),
  -- chandelure in black
  (609, 60900, 17, 'It absorbs a spirit, which it then burns. By waving the flames on its arms, it puts its foes into a hypnotic trance.'),
  -- axew in black
  (610, 61000, 17, 'They use their tusks to crush the berries they eat. Repeated regrowth makes their tusks strong and sharp.'),
  -- fraxure in black
  (611, 61100, 17, 'Since a broken tusk will not grow back, they diligently sharpen their tusks on river rocks after they’ve been fighting.'),
  -- haxorus in black
  (612, 61200, 17, 'They are kind but can be relentless when defending territory. They challenge foes with tusks that can cut steel.'),
  -- cubchoo in black
  (613, 61300, 17, 'When it is not feeling well, its mucus gets watery and the power of its Ice-type moves decreases.'),
  -- beartic in black
  (614, 61400, 17, 'It can make its breath freeze at will. Very able in the water, it swims around in northern seas and catches prey.'),
  -- cryogonal in black
  (615, 61500, 17, 'When its body temperature goes up, it turns into steam and vanishes. When its temperature lowers, it returns to ice.'),
  -- shelmet in black
  (616, 61600, 17, 'When attacked, it defends itself by closing the lid of its shell. It can spit a sticky, poisonous liquid.'),
  -- accelgor in black
  (617, 61700, 17, 'When its body dries out, it weakens. So, to prevent dehydration, it wraps itself in many layers of thin membrane.'),
  -- stunfisk in black
  (618, 61800, 17, 'Its skin is very hard, so it is unhurt even if stepped on by sumo wrestlers. It smiles when transmitting electricity.'),
  -- mienfoo in black
  (619, 61900, 17, 'In fights, they dominate with onslaughts of flowing, continuous attacks. With their sharp claws, they cut enemies.'),
  -- mienshao in black
  (620, 62000, 17, 'It wields the fur on its arms like a whip. Its arm attacks come with such rapidity that they cannot even be seen.'),
  -- druddigon in black
  (621, 62100, 17, 'It warms its body by absorbing sunlight with its wings. When its body temperature falls, it can no longer move.'),
  -- golett in black
  (622, 62200, 17, 'The energy that burns inside it enables it to move, but no one has yet been able to identify this energy.'),
  -- golurk in black
  (623, 62300, 17, 'It flies across the sky at Mach speeds. Removing the seal on its chest makes its internal energy go out of control.'),
  -- pawniard in black
  (624, 62400, 17, 'Blades comprise this Pokémon’s entire body. If battling dulls the blades, it sharpens them on stones by the river.'),
  -- bisharp in black
  (625, 62500, 17, 'It leads a group of Pawniard. It battles to become the boss, but will be driven from the group if it loses.'),
  -- bouffalant in black
  (626, 62600, 17, 'Their fluffy fur absorbs damage, even if they strike foes with a fierce headbutt.'),
  -- rufflet in black
  (627, 62700, 17, 'They crush berries with their talons. They bravely stand up to any opponent, no matter how strong it is.'),
  -- braviary in black
  (628, 62800, 17, 'They fight for their friends without any thought about danger to themselves. One can carry a car while flying.'),
  -- vullaby in black
  (629, 62900, 17, 'Its wings are too tiny to allow it to fly. As the time approaches for it to evolve, it discards the bones it was wearing.'),
  -- mandibuzz in black
  (630, 63000, 17, 'It makes a nest out of bones it finds. It grabs weakened prey in its talons and hauls it to its nest of bones.'),
  -- heatmor in black
  (631, 63100, 17, 'It breathes through a hole in its tail while it burns with an internal fire. Durant is its prey.'),
  -- durant in black
  (632, 63200, 17, 'They attack in groups, covering themselves in steel armor to protect themselves from Heatmor.'),
  -- deino in black
  (633, 63300, 17, 'It tends to bite everything, and it is not a picky eater. Approaching it carelessly is dangerous.'),
  -- zweilous in black
  (634, 63400, 17, 'After it has eaten up all the food in its territory, it moves to another area. Its two heads do not get along.'),
  -- hydreigon in black
  (635, 63500, 17, 'This brutal Pokémon travels the skies on its six wings. Anything that moves seems like a foe to it, triggering its attack.'),
  -- larvesta in black
  (636, 63600, 17, 'This Pokémon was believed to have been born from the sun. When it evolves, its entire body is engulfed in flames.'),
  -- volcarona in black
  (637, 63700, 17, 'When volcanic ash darkened the atmosphere, it is said that Volcarona’s fire provided a replacement for the sun.'),
  -- cobalion in black
  (638, 63800, 17, 'This legendary Pokémon battled against humans to protect Pokémon. Its personality is calm and composed.'),
  -- terrakion in black
  (639, 63900, 17, 'This Pokémon came to the defense of Pokémon that had lost their homes in a war among humans.'),
  -- virizion in black
  (640, 64000, 17, 'This Pokémon fought humans in order to protect its friends. Legends about it continue to be passed down.'),
  -- tornadus in black
  (641, 64100, 17, 'The lower half of its body is wrapped in a cloud of energy. It zooms through the sky at 200 mph.'),
  -- thundurus in black
  (642, 64200, 17, 'Countless charred remains mar the landscape of places through which Thundurus has passed.'),
  -- reshiram in black
  (643, 64300, 17, 'This Pokémon appears in legends. It sends flames into the air from its tail, burning up everything around it.'),
  -- zekrom in black
  (644, 64400, 17, 'Concealing itself in lightning clouds, it flies throughout the Unova region. It creates electricity in its tail.'),
  -- landorus in black
  (645, 64500, 17, 'Lands visited by Landorus grant such bountiful crops that it has been hailed as “The Guardian of the Fields.”'),
  -- kyurem in black
  (646, 64600, 17, 'It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out.'),
  -- keldeo in black
  (647, 64700, 17, 'By blasting water from its hooves, it can glide across water. It excels at using leg moves while battling.'),
  -- meloetta in black
  (648, 64800, 17, 'Its melodies are sung with a special vocalization method that can control the feelings of those who hear it.'),
  -- genesect in black
  (649, 64900, 17, 'Over 300 million years ago, it was feared as the strongest of hunters. It has been modified by Team Plasma.'),
  -- bulbasaur in white
  (1, 100, 18, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in white
  (2, 200, 18, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in white
  (3, 300, 18, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in white
  (4, 400, 18, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in white
  (5, 500, 18, 'In the rocky mountains where Charmeleon live, their fiery tails shine at night like stars.'),
  -- charizard in white
  (6, 600, 18, 'It is said that Charizard’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in white
  (7, 700, 18, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in white
  (8, 800, 18, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in white
  (9, 900, 18, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in white
  (10, 1000, 18, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in white
  (11, 1100, 18, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in white
  (12, 1200, 18, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in white
  (13, 1300, 18, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in white
  (14, 1400, 18, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in white
  (15, 1500, 18, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in white
  (16, 1600, 18, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in white
  (17, 1700, 18, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in white
  (18, 1800, 18, 'By flapping its wings with all its might, Pidgeot can make a gust of wind capable of bending tall trees.'),
  -- rattata in white
  (19, 1900, 18, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in white
  (20, 2000, 18, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in white
  (21, 2100, 18, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in white
  (22, 2200, 18, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in white
  (23, 2300, 18, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in white
  (24, 2400, 18, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in white
  (25, 2500, 18, 'It occasionally uses an electric shock to recharge a fellow Pikachu that is in a weakened state.'),
  -- raichu in white
  (26, 2600, 18, 'Its tail discharges electricity into the ground, protecting it from getting shocked.'),
  -- sandshrew in white
  (27, 2700, 18, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in white
  (28, 2800, 18, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in white
  (29, 2900, 18, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in white
  (30, 3000, 18, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than Nidorino’s.'),
  -- nidoqueen in white
  (31, 3100, 18, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in white
  (32, 3200, 18, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in white
  (33, 3300, 18, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in white
  (34, 3400, 18, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in white
  (35, 3500, 18, 'It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.'),
  -- clefable in white
  (36, 3600, 18, 'It is very wary and rarely shows itself to people. Its ears can hear a pin drop over half a mile away.'),
  -- vulpix in white
  (37, 3700, 18, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in white
  (38, 3800, 18, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in white
  (39, 3900, 18, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in white
  (40, 4000, 18, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in white
  (41, 4100, 18, 'It checks its surroundings and location using reflections of the ultrasonic waves from its mouth.'),
  -- golbat in white
  (42, 4200, 18, 'Its sharp fangs puncture the toughest of hides and have small holes for greedily sucking blood.'),
  -- oddish in white
  (43, 4300, 18, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in white
  (44, 4400, 18, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in white
  (45, 4500, 18, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in white
  (46, 4600, 18, 'Mushrooms named tochukaso grow on its back. They grow along with the host Paras.'),
  -- parasect in white
  (47, 4700, 18, 'A mushroom grown larger than the host’s body controls Parasect. It scatters poisonous spores.'),
  -- venonat in white
  (48, 4800, 18, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in white
  (49, 4900, 18, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in white
  (50, 5000, 18, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in white
  (51, 5100, 18, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in white
  (52, 5200, 18, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in white
  (53, 5300, 18, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in white
  (54, 5400, 18, 'Overwhelmed by enigmatic abilities, it suffers a constant headache. It sometimes uses mysterious powers.'),
  -- golduck in white
  (55, 5500, 18, 'It is seen swimming dynamically and elegantly using its well-developed limbs and flippers.'),
  -- mankey in white
  (56, 5600, 18, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in white
  (57, 5700, 18, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in white
  (58, 5800, 18, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in white
  (59, 5900, 18, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in white
  (60, 6000, 18, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in white
  (61, 6100, 18, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in white
  (62, 6200, 18, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in white
  (63, 6300, 18, 'Using its psychic power is such a strain on its brain that it needs to sleep for 18 hours a day.'),
  -- kadabra in white
  (64, 6400, 18, 'It stares at its silver spoon to focus its mind. It emits more alpha waves while doing so.'),
  -- alakazam in white
  (65, 6500, 18, 'The spoons clutched in its hands are said to have been created by its psychic powers.'),
  -- machop in white
  (66, 6600, 18, 'Though small in stature, it is powerful enough to easily heft and throw a number of Geodude at once.'),
  -- machoke in white
  (67, 6700, 18, 'It happily carries heavy cargo to toughen up. It willingly does hard work for people.'),
  -- machamp in white
  (68, 6800, 18, 'Its four muscled arms slam foes with powerful punches and chops at blinding speed.'),
  -- bellsprout in white
  (69, 6900, 18, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in white
  (70, 7000, 18, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in white
  (71, 7100, 18, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in white
  (72, 7200, 18, 'Because its body is almost entirely composed of water, it shrivels up if it is washed ashore.'),
  -- tentacruel in white
  (73, 7300, 18, 'It extends its 80 tentacles to form an encircling poisonous net that is difficult to escape.'),
  -- geodude in white
  (74, 7400, 18, 'At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily.'),
  -- graveler in white
  (75, 7500, 18, 'It rolls on mountain paths to move. Once it builds momentum, no Pokémon can stop it without difficulty.'),
  -- golem in white
  (76, 7600, 18, 'Even dynamite can’t harm its hard, boulderlike body. It sheds its hide just once a year.'),
  -- ponyta in white
  (77, 7700, 18, 'As a newborn, it can barely stand. However, through galloping, its legs are made tougher and faster.'),
  -- rapidash in white
  (78, 7800, 18, 'When at an all-out gallop, its blazing mane sparkles, enhancing its beautiful appearance.'),
  -- slowpoke in white
  (79, 7900, 18, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in white
  (80, 8000, 18, 'Though usually dim witted, it seems to become inspired if the Shellder on its tail bites down.'),
  -- magnemite in white
  (81, 8100, 18, 'The faster the units at its sides rotate, the greater the magnetic force they generate.'),
  -- magneton in white
  (82, 8200, 18, 'Many mysteriously appear when more sunspots dot the sun. They stop TV sets from displaying properly.'),
  -- farfetchd in white
  (83, 8300, 18, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in white
  (84, 8400, 18, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in white
  (85, 8500, 18, 'When Doduo evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in white
  (86, 8600, 18, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in white
  (87, 8700, 18, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in white
  (88, 8800, 18, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in white
  (89, 8900, 18, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in white
  (90, 9000, 18, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in white
  (91, 9100, 18, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in white
  (92, 9200, 18, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in white
  (93, 9300, 18, 'It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.'),
  -- gengar in white
  (94, 9400, 18, 'The leer that floats in darkness belongs to a Gengar delighting in casting curses on people.'),
  -- onix in white
  (95, 9500, 18, 'It burrows through the ground at a speed of 50 mph while feeding on large boulders.'),
  -- drowzee in white
  (96, 9600, 18, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in white
  (97, 9700, 18, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in white
  (98, 9800, 18, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in white
  (99, 9900, 18, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in white
  (100, 10000, 18, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in white
  (101, 10100, 18, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in white
  (102, 10200, 18, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in white
  (103, 10300, 18, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an Exeggcute.'),
  -- cubone in white
  (104, 10400, 18, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in white
  (105, 10500, 18, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in white
  (106, 10600, 18, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in white
  (107, 10700, 18, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in white
  (108, 10800, 18, 'When it extends its over-six-foot- long tongue, its tail quivers. There is a possibility they are connected.'),
  -- koffing in white
  (109, 10900, 18, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in white
  (110, 11000, 18, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in white
  (111, 11100, 18, 'Its powerful tackles can destroy anything. However, it is too slow witted to help people work.'),
  -- rhydon in white
  (112, 11200, 18, 'Standing on its hind legs freed its forelegs and made it smarter. It is very forgetful, however.'),
  -- chansey in white
  (113, 11300, 18, 'A kindly Pokémon that lays highly nutritious eggs and shares them with injured Pokémon or people.'),
  -- tangela in white
  (114, 11400, 18, 'The blue vines shrouding its body are covered in a growth of fine hair. It is known to be ticklish.'),
  -- kangaskhan in white
  (115, 11500, 18, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in white
  (116, 11600, 18, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in white
  (117, 11700, 18, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in white
  (118, 11800, 18, 'Though it appears very elegant when swimming with fins unfurled, it can jab powerfully with its horn.'),
  -- seaking in white
  (119, 11900, 18, 'In autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.'),
  -- staryu in white
  (120, 12000, 18, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in white
  (121, 12100, 18, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in white
  (122, 12200, 18, 'It shapes an invisible wall in midair by minutely vibrating its fingertips to stop molecules in the air.'),
  -- scyther in white
  (123, 12300, 18, 'The sharp scythes on its forearms become increasingly sharp by cutting through hard objects.'),
  -- jynx in white
  (124, 12400, 18, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in white
  (125, 12500, 18, 'It windmills its arms to slightly boost its punches. Foes have been known to escape in the meantime.'),
  -- magmar in white
  (126, 12600, 18, 'When it breathes deeply, heat waves form around its body, making it hard to see clearly.'),
  -- pinsir in white
  (127, 12700, 18, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in white
  (128, 12800, 18, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in white
  (129, 12900, 18, 'A Magikarp living for many years can leap a mountain using Splash. The move remains useless, though.'),
  -- gyarados in white
  (130, 13000, 18, 'Once it begins to rampage, a Gyarados will burn everything down, even in a harsh storm.'),
  -- lapras in white
  (131, 13100, 18, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in white
  (132, 13200, 18, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in white
  (133, 13300, 18, 'Because its genetic makeup is irregular, it quickly changes its form due to a variety of causes.'),
  -- vaporeon in white
  (134, 13400, 18, 'Its cell composition is similar to water molecules. As a result, it can melt away into water.'),
  -- jolteon in white
  (135, 13500, 18, 'If agitated, it uses electricity to straighten out its fur and launch it in small bunches.'),
  -- flareon in white
  (136, 13600, 18, 'Inhaled air is heated in the flame sac in its body to an intense fire over 3,000 degrees Fahrenheit.'),
  -- porygon in white
  (137, 13700, 18, 'A man-made Pokémon created using advanced scientific means. It can move freely in cyberspace.'),
  -- omanyte in white
  (138, 13800, 18, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in white
  (139, 13900, 18, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in white
  (140, 14000, 18, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in white
  (141, 14100, 18, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in white
  (142, 14200, 18, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in white
  (143, 14300, 18, 'When its belly is full, it becomes too lethargic to even lift a finger, so it is safe to bounce on its belly.'),
  -- articuno in white
  (144, 14400, 18, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in white
  (145, 14500, 18, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in white
  (146, 14600, 18, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in white
  (147, 14700, 18, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in white
  (148, 14800, 18, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in white
  (149, 14900, 18, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in white
  (150, 15000, 18, 'A Pokémon created by recombining Mew’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in white
  (151, 15100, 18, 'Because it can use all kinds of moves, many scientists believe Mew to be the ancestor of Pokémon.'),
  -- chikorita in white
  (152, 15200, 18, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in white
  (153, 15300, 18, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in white
  (154, 15400, 18, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in white
  (155, 15500, 18, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in white
  (156, 15600, 18, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in white
  (157, 15700, 18, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in white
  (158, 15800, 18, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in white
  (159, 15900, 18, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in white
  (160, 16000, 18, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in white
  (161, 16100, 18, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in white
  (162, 16200, 18, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in white
  (163, 16300, 18, 'It marks time precisely. Some countries consider it to be a wise friend, versed in the world’s ways.'),
  -- noctowl in white
  (164, 16400, 18, 'Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.'),
  -- ledyba in white
  (165, 16500, 18, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in white
  (166, 16600, 18, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in white
  (167, 16700, 18, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in white
  (168, 16800, 18, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in white
  (169, 16900, 18, 'The transformation of its legs into wings made it better at flying, but more clumsy at walking.'),
  -- chinchou in white
  (170, 17000, 18, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in white
  (171, 17100, 18, 'Lanturn’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in white
  (172, 17200, 18, 'The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked.'),
  -- cleffa in white
  (173, 17300, 18, 'It is often seen when shooting stars fill the night skies. It’s said to arrive riding on a shooting star.'),
  -- igglybuff in white
  (174, 17400, 18, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in white
  (175, 17500, 18, 'It transforms the kindness and joy of others into happiness, which it stores in its shell.'),
  -- togetic in white
  (176, 17600, 18, 'To share its happiness, it flies around the world seeking kind- hearted people.'),
  -- natu in white
  (177, 17700, 18, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in white
  (178, 17800, 18, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in white
  (179, 17900, 18, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in white
  (180, 18000, 18, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in white
  (181, 18100, 18, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in white
  (182, 18200, 18, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in white
  (183, 18300, 18, 'The oil-filled end of its tail floats on water. It keeps Marill from drowning even in a strong current.'),
  -- azumarill in white
  (184, 18400, 18, 'It can spend all day in water, since it can inhale and store a large volume of air.'),
  -- sudowoodo in white
  (185, 18500, 18, 'To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain.'),
  -- politoed in white
  (186, 18600, 18, 'It gathers groups of others as their leader. Its cries make Poliwag obey.'),
  -- hoppip in white
  (187, 18700, 18, 'It drifts on winds. It is said that when Hoppip gather in fields and mountains, spring is on the way.'),
  -- skiploom in white
  (188, 18800, 18, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in white
  (189, 18900, 18, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in white
  (190, 19000, 18, 'It lives high among the treetops. It can use its tail as freely and cleverly as its hands.'),
  -- sunkern in white
  (191, 19100, 18, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in white
  (192, 19200, 18, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in white
  (193, 19300, 18, 'It can hover in one spot by flapping its wings at high speed. It flits about to guard its territory.'),
  -- wooper in white
  (194, 19400, 18, 'When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.'),
  -- quagsire in white
  (195, 19500, 18, 'It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.'),
  -- espeon in white
  (196, 19600, 18, 'Its fur is so sensitive, it can sense minute shifts in the air and predict the weather.'),
  -- umbreon in white
  (197, 19700, 18, 'When exposed to the moon’s aura, the rings on its body glow faintly and it gains a mysterious power.'),
  -- murkrow in white
  (198, 19800, 18, 'If spotted, it will lure an unwary person into chasing it, then lose the pursuer on mountain trails.'),
  -- slowking in white
  (199, 19900, 18, 'Being bitten by Shellder gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in white
  (200, 20000, 18, 'A Pokémon that startles people in the middle of the night. It gathers fear as its energy.'),
  -- unown in white
  (201, 20100, 18, 'When alone, nothing happens. However, if there are two or more, an odd power is said to emerge.'),
  -- wobbuffet in white
  (202, 20200, 18, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in white
  (203, 20300, 18, 'The head on its tail contains a small brain. It can instinctively fight even while facing backward.'),
  -- pineco in white
  (204, 20400, 18, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in white
  (205, 20500, 18, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in white
  (206, 20600, 18, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in white
  (207, 20700, 18, 'It glides as if sliding. It startles foes by clamping on to their faces, then jabs with its poison stinger.'),
  -- steelix in white
  (208, 20800, 18, 'It is thought its body transformed as a result of iron accumulating internally from swallowing soil.'),
  -- snubbull in white
  (209, 20900, 18, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in white
  (210, 21000, 18, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in white
  (211, 21100, 18, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in white
  (212, 21200, 18, 'It raises its pincers with eyelike markings for intimidation. It also swings them down dangerously.'),
  -- shuckle in white
  (213, 21300, 18, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in white
  (214, 21400, 18, 'It loves sweet honey. To keep all the honey to itself, it hurls rivals away with its prized horn.'),
  -- sneasel in white
  (215, 21500, 18, 'A smart and sneaky Pokémon. A pair may work together to steal eggs by having one lure the parents away.'),
  -- teddiursa in white
  (216, 21600, 18, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in white
  (217, 21700, 18, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in white
  (218, 21800, 18, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in white
  (219, 21900, 18, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in white
  (220, 22000, 18, 'It has a very sensitive nose. It can locate mushrooms, berries, and even hot springs buried under ice.'),
  -- piloswine in white
  (221, 22100, 18, 'Covered by a shaggy coat, it is strong against the cold. Its tusks of ice thicken when it snows.'),
  -- corsola in white
  (222, 22200, 18, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in white
  (223, 22300, 18, 'It forcefully squirts water. The water jet never misses prey even if the Remoraid is deep in the sea.'),
  -- octillery in white
  (224, 22400, 18, 'It loves to lurk inside holes in rocks. It sometimes sprays ink on prey by sticking out only its mouth.'),
  -- delibird in white
  (225, 22500, 18, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in white
  (226, 22600, 18, 'While elegantly swimming in the sea, it ignores Remoraid that cling to its fins seeking food scraps.'),
  -- skarmory in white
  (227, 22700, 18, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in white
  (228, 22800, 18, 'It is smart enough to hunt in packs. It uses a variety of cries for communicating with others.'),
  -- houndoom in white
  (229, 22900, 18, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- kingdra in white
  (230, 23000, 18, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in white
  (231, 23100, 18, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in white
  (232, 23200, 18, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in white
  (233, 23300, 18, 'It was upgraded to enable the exploration of other planets. However, it failed to measure up.'),
  -- stantler in white
  (234, 23400, 18, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in white
  (235, 23500, 18, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in white
  (236, 23600, 18, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in white
  (237, 23700, 18, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in white
  (238, 23800, 18, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in white
  (239, 23900, 18, 'A weak electric current flows between its horns. Sticking a hand there shocks the unwary.'),
  -- magby in white
  (240, 24000, 18, 'Its magma-like blood circulates throughout its body. Its body’s heat can top 1,100 degrees F.'),
  -- miltank in white
  (241, 24100, 18, 'It is said that kids who drink Miltank’s milk grow up to become hearty, healthy adults.'),
  -- blissey in white
  (242, 24200, 18, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- raikou in white
  (243, 24300, 18, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in white
  (244, 24400, 18, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in white
  (245, 24500, 18, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in white
  (246, 24600, 18, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in white
  (247, 24700, 18, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in white
  (248, 24800, 18, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in white
  (249, 24900, 18, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in white
  (250, 25000, 18, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in white
  (251, 25100, 18, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in white
  (252, 25200, 18, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in white
  (253, 25300, 18, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in white
  (254, 25400, 18, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in white
  (255, 25500, 18, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in white
  (256, 25600, 18, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in white
  (257, 25700, 18, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in white
  (258, 25800, 18, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in white
  (259, 25900, 18, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in white
  (260, 26000, 18, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in white
  (261, 26100, 18, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in white
  (262, 26200, 18, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in white
  (263, 26300, 18, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in white
  (264, 26400, 18, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in white
  (265, 26500, 18, 'Often targeted by bird Pokémon, it desperately resists by releasing poison from its tail spikes.'),
  -- silcoon in white
  (266, 26600, 18, 'It wraps silk around the branches of a tree. It drinks rainwater on its silk while awaiting evolution.'),
  -- beautifly in white
  (267, 26700, 18, 'Despite its looks, it is aggressive. It jabs with its long, thin mouth if disturbed while collecting pollen.'),
  -- cascoon in white
  (268, 26800, 18, 'It never forgets any attack it endured while in the cocoon. After evolution, it seeks payback.'),
  -- dustox in white
  (269, 26900, 18, 'Toxic powder is scattered with each flap. At night, it is known to strip leaves off trees lining boulevards.'),
  -- lotad in white
  (270, 27000, 18, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in white
  (271, 27100, 18, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in white
  (272, 27200, 18, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in white
  (273, 27300, 18, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in white
  (274, 27400, 18, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in white
  (275, 27500, 18, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in white
  (276, 27600, 18, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in white
  (277, 27700, 18, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in white
  (278, 27800, 18, 'It soars high in the sky, riding on updrafts like a glider. It carries food tucked in its bill.'),
  -- pelipper in white
  (279, 27900, 18, 'It is a messenger of the skies, carrying small Pokémon and eggs to safety in its bill.'),
  -- ralts in white
  (280, 28000, 18, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in white
  (281, 28100, 18, 'If its Trainer becomes happy, it overflows with energy, dancing joyously while spinning about.'),
  -- gardevoir in white
  (282, 28200, 18, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in white
  (283, 28300, 18, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in white
  (284, 28400, 18, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in white
  (285, 28500, 18, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in white
  (286, 28600, 18, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in white
  (287, 28700, 18, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in white
  (288, 28800, 18, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in white
  (289, 28900, 18, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in white
  (290, 29000, 18, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in white
  (291, 29100, 18, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in white
  (292, 29200, 18, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in white
  (293, 29300, 18, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in white
  (294, 29400, 18, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in white
  (295, 29500, 18, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in white
  (296, 29600, 18, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in white
  (297, 29700, 18, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in white
  (298, 29800, 18, 'Its tail bounces like a rubber ball. It flings that tail around to fight opponents bigger than itself.'),
  -- nosepass in white
  (299, 29900, 18, 'When endangered, it may protect itself by raising its magnetism and drawing iron objects to its body.'),
  -- skitty in white
  (300, 30000, 18, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in white
  (301, 30100, 18, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in white
  (302, 30200, 18, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in white
  (303, 30300, 18, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in white
  (304, 30400, 18, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in white
  (305, 30500, 18, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in white
  (306, 30600, 18, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in white
  (307, 30700, 18, 'It always trains deep in mountains. It levitates when it heightens its spiritual power through meditation.'),
  -- medicham in white
  (308, 30800, 18, 'It gains the ability to see the aura of its opponents by honing its mind through starvation.'),
  -- electrike in white
  (309, 30900, 18, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in white
  (310, 31000, 18, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in white
  (311, 31100, 18, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in white
  (312, 31200, 18, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in white
  (313, 31300, 18, 'It communicates with others by lighting up its rear at night. It loves Illumise’s sweet aroma.'),
  -- illumise in white
  (314, 31400, 18, 'With its sweet aroma, it guides Volbeat to draw signs with light in the night sky.'),
  -- roselia in white
  (315, 31500, 18, 'The more healthy the Roselia, the more pleasant its flowers’ aroma. Its scent deeply relaxes people.'),
  -- gulpin in white
  (316, 31600, 18, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in white
  (317, 31700, 18, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in white
  (318, 31800, 18, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in white
  (319, 31900, 18, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in white
  (320, 32000, 18, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in white
  (321, 32100, 18, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in white
  (322, 32200, 18, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in white
  (323, 32300, 18, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in white
  (324, 32400, 18, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in white
  (325, 32500, 18, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in white
  (326, 32600, 18, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in white
  (327, 32700, 18, 'No two Spinda have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in white
  (328, 32800, 18, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in white
  (329, 32900, 18, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in white
  (330, 33000, 18, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in white
  (331, 33100, 18, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in white
  (332, 33200, 18, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in white
  (333, 33300, 18, 'It can’t relax if it or its surroundings are not clean. It wipes off dirt with its wings.'),
  -- altaria in white
  (334, 33400, 18, 'If it bonds with a person, it will gently envelop the friend with its soft wings, then hum.'),
  -- zangoose in white
  (335, 33500, 18, 'It has feuded with Seviper for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in white
  (336, 33600, 18, 'For many generations, it has feuded with Zangoose. It whets its bladed tail on rocks for battle.'),
  -- lunatone in white
  (337, 33700, 18, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in white
  (338, 33800, 18, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in white
  (339, 33900, 18, 'Its slimy body is hard to grasp. In one region, it is said to have been born from hardened mud.'),
  -- whiscash in white
  (340, 34000, 18, 'It is extremely protective of its territory. If any foe approaches, it attacks using vicious tremors.'),
  -- corphish in white
  (341, 34100, 18, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in white
  (342, 34200, 18, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in white
  (343, 34300, 18, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in white
  (344, 34400, 18, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in white
  (345, 34500, 18, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in white
  (346, 34600, 18, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in white
  (347, 34700, 18, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in white
  (348, 34800, 18, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in white
  (349, 34900, 18, 'It is a shabby and ugly Pokémon. However, it is very hardy and can survive on little water.'),
  -- milotic in white
  (350, 35000, 18, 'Its lovely scales are described as rainbow colored. They change color depending on the viewing angle.'),
  -- castform in white
  (351, 35100, 18, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in white
  (352, 35200, 18, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in white
  (353, 35300, 18, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in white
  (354, 35400, 18, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in white
  (355, 35500, 18, 'It loves the crying of children. It startles bad kids by passing through walls and making them cry.'),
  -- dusclops in white
  (356, 35600, 18, 'It seeks drifting will-o’-the-wisps and sucks them into its empty body. What happens inside is a mystery.'),
  -- tropius in white
  (357, 35700, 18, 'Delicious fruits grew out from around its neck because it always ate the same kind of fruit.'),
  -- chimecho in white
  (358, 35800, 18, 'Its cries echo inside its hollow body to emerge as beautiful notes for startling and repelling foes.'),
  -- absol in white
  (359, 35900, 18, 'Rumored to sense disasters with its horn, it became a target. It fled deep into the mountains.'),
  -- wynaut in white
  (360, 36000, 18, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in white
  (361, 36100, 18, 'It is said that several Snorunt gather under giant leaves and live together in harmony.'),
  -- glalie in white
  (362, 36200, 18, 'It prevents prey from escaping by instantaneously freezing moisture in the air.'),
  -- spheal in white
  (363, 36300, 18, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in white
  (364, 36400, 18, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in white
  (365, 36500, 18, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in white
  (366, 36600, 18, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in white
  (367, 36700, 18, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in white
  (368, 36800, 18, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in white
  (369, 36900, 18, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in white
  (370, 37000, 18, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in white
  (371, 37100, 18, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in white
  (372, 37200, 18, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in white
  (373, 37300, 18, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in white
  (374, 37400, 18, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in white
  (375, 37500, 18, 'It is formed by two Beldum joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in white
  (376, 37600, 18, 'Metang combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in white
  (377, 37700, 18, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in white
  (378, 37800, 18, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in white
  (379, 37900, 18, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in white
  (380, 38000, 18, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in white
  (381, 38100, 18, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in white
  (382, 38200, 18, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in white
  (383, 38300, 18, 'It had been asleep in underground magma ever since it fiercely fought Kyogre long ago.'),
  -- rayquaza in white
  (384, 38400, 18, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in white
  (385, 38500, 18, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in white
  (386, 38600, 18, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in white
  (387, 38700, 18, 'The shell on its back is made of soil. On a very healthy Turtwig, the shell should feel moist.'),
  -- grotle in white
  (388, 38800, 18, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in white
  (389, 38900, 18, 'Some Pokémon are born on a Torterra’s back and spend their entire life there.'),
  -- chimchar in white
  (390, 39000, 18, 'It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.'),
  -- monferno in white
  (391, 39100, 18, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in white
  (392, 39200, 18, 'It uses unique fighting moves with fire on its hands and feet. It will take on any opponent.'),
  -- piplup in white
  (393, 39300, 18, 'A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.'),
  -- prinplup in white
  (394, 39400, 18, 'Because every Prinplup considers itself to be the most important, they can never form a group.'),
  -- empoleon in white
  (395, 39500, 18, 'If anyone were to hurt its pride, it would slash them with wings that can cleave through an ice floe.'),
  -- starly in white
  (396, 39600, 18, 'Because they are weak individually, they form groups. However, they bicker if the group grows too big.'),
  -- staravia in white
  (397, 39700, 18, 'Recognizing their own weakness, they always live in a group. When alone, a Staravia cries noisily.'),
  -- staraptor in white
  (398, 39800, 18, 'It never stops attacking even if it is injured. It fusses over the shape of its comb.'),
  -- bidoof in white
  (399, 39900, 18, 'A comparison revealed that Bidoof’s front teeth grow at the same rate as Rattata’s.'),
  -- bibarel in white
  (400, 40000, 18, 'A river dammed by Bibarel will never overflow its banks, which is appreciated by people nearby.'),
  -- kricketot in white
  (401, 40100, 18, 'Its legs are short. Whenever it stumbles, its stiff antennae clack with a xylophone-like sound.'),
  -- kricketune in white
  (402, 40200, 18, 'There is a village that hosts a contest based on the amazingly variable cries of this Pokémon.'),
  -- shinx in white
  (403, 40300, 18, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in white
  (404, 40400, 18, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in white
  (405, 40500, 18, 'It can see clearly through walls to track down its prey and seek its lost young.'),
  -- budew in white
  (406, 40600, 18, 'Sensitive to changing temperature, the bud is said to bloom when it feels the sun’s warm touch.'),
  -- roserade in white
  (407, 40700, 18, 'Each of its hands contains different toxins, but both hands can jab with near-fatal power.'),
  -- cranidos in white
  (408, 40800, 18, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with head butts.'),
  -- rampardos in white
  (409, 40900, 18, 'If two were to smash their heads together, their foot-thick skulls would keep them from fainting.'),
  -- shieldon in white
  (410, 41000, 18, 'It is outstandingly armored. As a result, it can eat grass and berries without having to fight.'),
  -- bastiodon in white
  (411, 41100, 18, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in white
  (412, 41200, 18, 'Even if it is born where there are no cocooning materials, it somehow always ends up with a cloak.'),
  -- wormadam in white
  (413, 41300, 18, 'When evolving, its body takes in surrounding materials. As a result, there are many body variations.'),
  -- mothim in white
  (414, 41400, 18, 'While it loves floral honey, it won’t gather any itself. Instead, it plots to steal some from Combee.'),
  -- combee in white
  (415, 41500, 18, 'The trio is together from birth. It constantly gathers honey from flowers to please Vespiquen.'),
  -- vespiquen in white
  (416, 41600, 18, 'It releases various pheromones to make the grubs in its body do its bidding while fighting foes.'),
  -- pachirisu in white
  (417, 41700, 18, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in white
  (418, 41800, 18, 'It spins its two tails like a screw to propel itself through water. The tails also slice clinging seaweed.'),
  -- floatzel in white
  (419, 41900, 18, 'It is a common sight around fishing ports. It is known to rescue people and carry off prey.'),
  -- cherubi in white
  (420, 42000, 18, 'The small ball is not only filled with nutrients, it is also tasty. Starly try to peck it off.'),
  -- cherrim in white
  (421, 42100, 18, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in white
  (422, 42200, 18, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in white
  (423, 42300, 18, 'Long ago, its entire back was shielded with a sturdy shell. There are traces of it left in its cells.'),
  -- ambipom in white
  (424, 42400, 18, 'Split into two, the tails are so adept at handling and doing things, Ambipom rarely uses its hands.'),
  -- drifloon in white
  (425, 42500, 18, 'Because of the way it floats aimlessly, an old folktale calls it a “Signpost for Wandering Spirits.”'),
  -- drifblim in white
  (426, 42600, 18, 'At dusk, swarms of them are carried aloft on winds. When noticed, they suddenly vanish.'),
  -- buneary in white
  (427, 42700, 18, 'Its ears are always rolled up. They can be forcefully extended to shatter even a large boulder.'),
  -- lopunny in white
  (428, 42800, 18, 'The ears appear to be delicate. If they are touched roughly, it kicks with its graceful legs.'),
  -- mismagius in white
  (429, 42900, 18, 'Its cry sounds like an incantation. It is said the cry may rarely be imbued with happiness-giving power.'),
  -- honchkrow in white
  (430, 43000, 18, 'If one utters a deep cry, many Murkrow gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in white
  (431, 43100, 18, 'It hides its spiteful tendency of hooking its claws into the nose of its Trainer if it isn’t fed.'),
  -- purugly in white
  (432, 43200, 18, 'It binds its body with its tails to make itself look bigger. If it locks eyes, it will glare ceaselessly.'),
  -- chingling in white
  (433, 43300, 18, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in white
  (434, 43400, 18, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in white
  (435, 43500, 18, 'It attacks by spraying a horribly smelly fluid from the tip of its tail. Attacks from above confound it.'),
  -- bronzor in white
  (436, 43600, 18, 'There are researchers who believe this Pokémon reflected like a mirror in the distant past.'),
  -- bronzong in white
  (437, 43700, 18, 'It brought rains by opening portals to another world. It was revered as a bringer of plentiful harvests.'),
  -- bonsly in white
  (438, 43800, 18, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in white
  (439, 43900, 18, 'It mimics the expressions and motions of those it sees to understand the feelings of others.'),
  -- happiny in white
  (440, 44000, 18, 'It likes to carry around a small rock. It may wander around others’ feet and cause them to stumble.'),
  -- chatot in white
  (441, 44100, 18, 'Its tongue is just like a human’s. As a result, it can cleverly mimic human speech.'),
  -- spiritomb in white
  (442, 44200, 18, 'Its constant mischief and misdeeds resulted in it being bound to an Odd Keystone by a mysterious spell.'),
  -- gible in white
  (443, 44300, 18, 'It attacks using its huge mouth. While its attacks are powerful, it hurts itself out of clumsiness, too.'),
  -- gabite in white
  (444, 44400, 18, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in white
  (445, 44500, 18, 'It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.'),
  -- munchlax in white
  (446, 44600, 18, 'In its desperation to gulp down food, it forgets about the food it has hidden under its fur.'),
  -- riolu in white
  (447, 44700, 18, 'It has the peculiar power of being able to see emotions such as joy and rage in the form of waves.'),
  -- lucario in white
  (448, 44800, 18, 'A well-trained one can sense auras to identify and take in the feelings of creatures over half a mile away.'),
  -- hippopotas in white
  (449, 44900, 18, 'It shuts its nostrils tight then travels through sand as if walking. They form colonies of around ten.'),
  -- hippowdon in white
  (450, 45000, 18, 'It is surprisingly quick to anger. It holds its mouth agape as a display of its strength.'),
  -- skorupi in white
  (451, 45100, 18, 'As soon as the tail claws close, its needle tips secrete poison. It can survive a year without food.'),
  -- drapion in white
  (452, 45200, 18, 'Possessing a sturdy build, it takes pride in its strength, taking down foes without using toxins.'),
  -- croagunk in white
  (453, 45300, 18, 'It rarely fights fairly, but that is strictly to ensure survival. It is popular as a mascot.'),
  -- toxicroak in white
  (454, 45400, 18, 'It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.'),
  -- carnivine in white
  (455, 45500, 18, 'It binds itself to trees in marshes. It attracts prey with its sweet- smelling drool and gulps them down.'),
  -- finneon in white
  (456, 45600, 18, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in white
  (457, 45700, 18, 'It crawls along the seafloor using its long front fins like legs. It competes for food with Lanturn.'),
  -- mantyke in white
  (458, 45800, 18, 'People organize tours to see this Pokémon frolic and skim the tops of waves with Remoraid.'),
  -- snover in white
  (459, 45900, 18, 'Seemingly curious about people, they gather around footsteps they find on snowy mountains.'),
  -- abomasnow in white
  (460, 46000, 18, 'They appear when the snow flowers bloom. When the petals fall, they retreat to places unknown again.'),
  -- weavile in white
  (461, 46100, 18, 'Evolution made it even more devious. It communicates by clawing signs in boulders.'),
  -- magnezone in white
  (462, 46200, 18, 'A group tried to use scientific means to make Magnezone evolve, but their efforts ended in failure.'),
  -- lickilicky in white
  (463, 46300, 18, 'The long tongue is always soggy with slobber. The saliva contains a solvent that causes numbness.'),
  -- rhyperior in white
  (464, 46400, 18, 'It can launch a rock held in its hand like a missile by tightening then expanding muscles instantly.'),
  -- tangrowth in white
  (465, 46500, 18, 'Its arms are made of plants that bind themselves to things. They grow back right away if cut.'),
  -- electivire in white
  (466, 46600, 18, 'Heedless of enemy attacks, it closes in, shoves its tails onto the foe, then looses high voltage.'),
  -- magmortar in white
  (467, 46700, 18, 'When launching 3,600 degrees F fireballs, its body takes on a whitish hue from the intense heat.'),
  -- togekiss in white
  (468, 46800, 18, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in white
  (469, 46900, 18, 'Its jaw power is incredible. It is adept at biting apart foes while flying by at high speed.'),
  -- leafeon in white
  (470, 47000, 18, 'It basically does not fight. With cells similar to those of plants, it can perform photosynthesis.'),
  -- glaceon in white
  (471, 47100, 18, 'By controlling its body heat, it can freeze the atmosphere around it to make a diamond-dust flurry.'),
  -- gliscor in white
  (472, 47200, 18, 'If it succeeds in catching even a faint breeze properly, it can circle the globe without flapping once.'),
  -- mamoswine in white
  (473, 47300, 18, 'A frozen one was dug up from soil dating back 10,000 years. It woke up to much amazement.'),
  -- porygon-z in white
  (474, 47400, 18, 'Its programming was modified to enable work in alien dimensions. It did not work as planned.'),
  -- gallade in white
  (475, 47500, 18, 'When trying to protect someone, it extends its elbows as if they were swords and fights savagely.'),
  -- probopass in white
  (476, 47600, 18, 'It freely controls three small units called Mini-Noses using magnetic force.'),
  -- dusknoir in white
  (477, 47700, 18, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in white
  (478, 47800, 18, 'It freezes prey by blowing its -58 degrees F breath. It is said to then secretly display its prey.'),
  -- rotom in white
  (479, 47900, 18, 'Its electric-like body can enter some kinds of machines and take control in order to make mischief.'),
  -- uxie in white
  (480, 48000, 18, 'When Uxie flew, people gained the ability to solve problems. It was the birth of knowledge.'),
  -- mesprit in white
  (481, 48100, 18, 'When Mesprit flew, people learned the joy and sadness of living. It was the birth of emotions.'),
  -- azelf in white
  (482, 48200, 18, 'When Azelf flew, people gained the determination to do things. It was the birth of willpower.'),
  -- dialga in white
  (483, 48300, 18, 'A legendary Pokémon of Sinnoh. It is said that time flows when Dialga’s heart beats.'),
  -- palkia in white
  (484, 48400, 18, 'A legendary Pokémon of Sinnoh. It is said that space becomes more stable with Palkia’s every breath.'),
  -- heatran in white
  (485, 48500, 18, 'Its body is made of rugged steel. However, it is partially melted in spots because of its own heat.'),
  -- regigigas in white
  (486, 48600, 18, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in white
  (487, 48700, 18, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in white
  (488, 48800, 18, 'On nights around the quarter moon, the aurora from its tail extends and undulates beautifully.'),
  -- phione in white
  (489, 48900, 18, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in white
  (490, 49000, 18, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in white
  (491, 49100, 18, 'To protect itself, it afflicts those around it with nightmares. However, it means no harm.'),
  -- shaymin in white
  (492, 49200, 18, 'The flowers all over its body burst into bloom if it is lovingly hugged and senses gratitude.'),
  -- arceus in white
  (493, 49300, 18, 'It is said to have emerged from an egg in a place where there was nothing, then shaped the world.'),
  -- victini in white
  (494, 49400, 18, 'It creates an unlimited supply of energy inside its body, which it shares with those who touch it.'),
  -- snivy in white
  (495, 49500, 18, 'They photosynthesize by bathing their tails in sunlight. When they are not feeling well, their tails droop.'),
  -- servine in white
  (496, 49600, 18, 'They avoid attacks by sinking into the shadows of thick foliage. They retaliate with masterful whipping techniques.'),
  -- serperior in white
  (497, 49700, 18, 'They raise their heads to intimidate opponents but only give it their all when fighting a powerful opponent.'),
  -- tepig in white
  (498, 49800, 18, 'It blows fire through its nose. When it catches a cold, the fire becomes pitch-black smoke instead.'),
  -- pignite in white
  (499, 49900, 18, 'Whatever it eats becomes fuel for the flame in its stomach. When it is angered, the intensity of the flame increases.'),
  -- emboar in white
  (500, 50000, 18, 'It has mastered fast and powerful fighting moves. It grows a beard of fire.'),
  -- oshawott in white
  (501, 50100, 18, 'The scalchop on its stomach is made from the same elements as claws. It detaches the scalchop for use as a blade.'),
  -- dewott in white
  (502, 50200, 18, 'Scalchop techniques differ from one Dewott to another. It never neglects maintaining its scalchops.'),
  -- samurott in white
  (503, 50300, 18, 'Part of the armor on its anterior legs becomes a giant sword. Its cry alone is enough to intimidate most enemies.'),
  -- patrat in white
  (504, 50400, 18, 'Extremely cautious, they take shifts to maintain a constant watch of their nest. They feel insecure without a lookout.'),
  -- watchog in white
  (505, 50500, 18, 'They make the patterns on their bodies shine in order to threaten predators. Keen eyesight lets them see in the dark.'),
  -- lillipup in white
  (506, 50600, 18, 'The long hair around its face provides an amazing radar that lets it sense subtle changes in its surroundings.'),
  -- herdier in white
  (507, 50700, 18, 'It loyally follows its Trainer’s orders. For ages, they have helped Trainers raise Pokémon.'),
  -- stoutland in white
  (508, 50800, 18, 'This extremely wise Pokémon excels at rescuing people stranded at sea or in the mountains.'),
  -- purrloin in white
  (509, 50900, 18, 'Its cute act is a ruse. When victims let down their guard, they find their items taken. It attacks with sharp claws.'),
  -- liepard in white
  (510, 51000, 18, 'Stealthily, it sneaks up on its target, striking from behind before its victim has a chance to react.'),
  -- pansage in white
  (511, 51100, 18, 'It shares the leaf on its head with weary-looking Pokémon. These leaves are known to relieve stress.'),
  -- simisage in white
  (512, 51200, 18, 'It attacks enemies with strikes of its thorn-covered tail. This Pokémon is wild tempered.'),
  -- pansear in white
  (513, 51300, 18, 'This Pokémon lives in caves in volcanoes. The fire within the tuft on its head can reach 600° F.'),
  -- simisear in white
  (514, 51400, 18, 'A flame burns inside its body. It scatters embers from its head and tail to sear its opponents.'),
  -- panpour in white
  (515, 51500, 18, 'It does not thrive in dry environments. It keeps itself damp by shooting water stored in its head tuft from its tail.'),
  -- simipour in white
  (516, 51600, 18, 'The high-pressure water expelled from its tail is so powerful, it can destroy a concrete wall.'),
  -- munna in white
  (517, 51700, 18, 'It eats the dreams of people and Pokémon. When it eats a pleasant dream, it expels pink-colored mist.'),
  -- musharna in white
  (518, 51800, 18, 'With the mist from its forehead, it can create shapes of things from dreams it has eaten.'),
  -- pidove in white
  (519, 51900, 18, 'These Pokémon live in cities. They are accustomed to people. Flocks often gather in parks and plazas.'),
  -- tranquill in white
  (520, 52000, 18, 'Many people believe that, deep in the forest where Tranquill live, there is a peaceful place where there is no war.'),
  -- unfezant in white
  (521, 52100, 18, 'Males have plumage on their heads. They will never let themselves feel close to anyone other than their Trainers.'),
  -- blitzle in white
  (522, 52200, 18, 'When thunderclouds cover the sky, it will appear. It can catch lightning with its mane and store the electricity.'),
  -- zebstrika in white
  (523, 52300, 18, 'This ill-tempered Pokémon is dangerous because when it’s angry, it shoots lightning from its mane in all directions.'),
  -- roggenrola in white
  (524, 52400, 18, 'They were discovered a hundred years ago in an earthquake fissure. Inside each one is an energy core.'),
  -- boldore in white
  (525, 52500, 18, 'Because its energy was too great to be contained, the energy leaked and formed orange crystals.'),
  -- gigalith in white
  (526, 52600, 18, 'The solar energy absorbed by its body’s orange crystals is magnified internally and fired from its mouth.'),
  -- woobat in white
  (527, 52700, 18, 'Suction from its nostrils enables it to stick to cave walls during sleep. It leaves a heart-shaped mark behind.'),
  -- swoobat in white
  (528, 52800, 18, 'Anyone who comes into contact with the ultrasonic waves emitted by a courting male experiences a positive mood shift.'),
  -- drilbur in white
  (529, 52900, 18, 'It makes its way swiftly through the soil by putting both claws together and rotating at high speed.'),
  -- excadrill in white
  (530, 53000, 18, 'More than 300 feet below the surface, they build mazelike nests. Their activity can be destructive to subway tunnels.'),
  -- audino in white
  (531, 53100, 18, 'Its auditory sense is astounding. It has a radarlike ability to understand its surroundings through slight sounds.'),
  -- timburr in white
  (532, 53200, 18, 'These Pokémon appear at building sites and help out with construction. They always carry squared logs.'),
  -- gurdurr in white
  (533, 53300, 18, 'They strengthen their bodies by carrying steel beams. They show off their big muscles to their friends.'),
  -- conkeldurr in white
  (534, 53400, 18, 'They use concrete pillars as walking canes. They know moves that enable them to swing the pillars freely in battle.'),
  -- tympole in white
  (535, 53500, 18, 'By vibrating its cheeks, it emits sound waves imperceptible to humans. It uses the rhythm of these sounds to talk.'),
  -- palpitoad in white
  (536, 53600, 18, 'It lives in the water and on land. It uses its long, sticky tongue to capture prey.'),
  -- seismitoad in white
  (537, 53700, 18, 'It increases the power of its punches by vibrating the bumps on its fists. It can turn a boulder to rubble with one punch.'),
  -- throh in white
  (538, 53800, 18, 'When they encounter foes bigger than themselves, they try to throw them. They always travel in packs of five.'),
  -- sawk in white
  (539, 53900, 18, 'Tying their belts gets them pumped and makes their punches more destructive. Disturbing their training angers them.'),
  -- sewaddle in white
  (540, 54000, 18, 'This Pokémon makes clothes for itself. It chews up leaves and sews them with sticky thread extruded from its mouth.'),
  -- swadloon in white
  (541, 54100, 18, 'It protects itself from the cold by wrapping up in leaves. It stays on the move, eating leaves in forests.'),
  -- leavanny in white
  (542, 54200, 18, 'It keeps its eggs warm with heat from fermenting leaves. It also uses leaves to make warm wrappings for Sewaddle.'),
  -- venipede in white
  (543, 54300, 18, 'It discovers what is going on around it by using the feelers on its head and tail. It is brutally aggressive.'),
  -- whirlipede in white
  (544, 54400, 18, 'It is usually motionless, but when attacked, it rotates at high speed and then crashes into its opponent.'),
  -- scolipede in white
  (545, 54500, 18, 'Highly aggressive, it uses the claws near its neck to dig into its opponents and poison them.'),
  -- cottonee in white
  (546, 54600, 18, 'They go wherever the wind takes them. On rainy days, their bodies are heavier, so they take shelter beneath big trees.'),
  -- whimsicott in white
  (547, 54700, 18, 'Riding whirlwinds, they appear. These Pokémon sneak through gaps into houses and cause all sorts of mischief.'),
  -- petilil in white
  (548, 54800, 18, 'Since they prefer moist, nutrient-rich soil, the areas where Petilil live are known to be good for growing plants.'),
  -- lilligant in white
  (549, 54900, 18, 'The fragrance of the garland on its head has a relaxing effect. It withers if a Trainer does not take good care of it.'),
  -- basculin in white
  (550, 55000, 18, 'Red and blue Basculin usually do not get along, but sometimes members of one school mingle with the other’s school.'),
  -- sandile in white
  (551, 55100, 18, 'It moves along below the sand’s surface, except for its nose and eyes. A dark membrane shields its eyes from the sun.'),
  -- krokorok in white
  (552, 55200, 18, 'The special membrane covering its eyes can sense the heat of objects, so it can see its surroundings even in darkness.'),
  -- krookodile in white
  (553, 55300, 18, 'It can expand the focus of its eyes, enabling it to see objects in the far distance as if it were using binoculars.'),
  -- darumaka in white
  (554, 55400, 18, 'Darumaka’s droppings are hot, so people used to put them in their clothes to keep themselves warm.'),
  -- darmanitan in white
  (555, 55500, 18, 'When weakened in battle, it transforms into a stone statue. Then it sharpens its mind and fights on mentally.'),
  -- maractus in white
  (556, 55600, 18, 'Arid regions are their habitat. They move rhythmically, making a sound similar to maracas.'),
  -- dwebble in white
  (557, 55700, 18, 'It makes a hole in a suitable rock. If that rock breaks, the Pokémon remains agitated until it locates a replacement.'),
  -- crustle in white
  (558, 55800, 18, 'It possesses legs of enormous strength, enabling it to carry heavy slabs for many days, even when crossing arid land.'),
  -- scraggy in white
  (559, 55900, 18, 'It immediately headbutts anyone that makes eye contact with it. Its skull is massively thick.'),
  -- scrafty in white
  (560, 56000, 18, 'It can smash concrete blocks with its kicking attacks. The one with the biggest crest is the group leader.'),
  -- sigilyph in white
  (561, 56100, 18, 'The guardians of an ancient city, they use their psychic power to attack enemies that invade their territory.'),
  -- yamask in white
  (562, 56200, 18, 'These Pokémon arose from the spirits of people interred in graves in past ages. Each retains memories of its former life.'),
  -- cofagrigus in white
  (563, 56300, 18, 'They pretend to be elaborate coffins to teach lessons to grave robbers. Their bodies are covered in pure gold.'),
  -- tirtouga in white
  (564, 56400, 18, 'About 100 million years ago, these Pokémon swam in oceans. It is thought they also went on land to attack prey.'),
  -- carracosta in white
  (565, 56500, 18, 'Incredible jaw strength enables them to chew up steel beams and rocks along with their prey.'),
  -- archen in white
  (566, 56600, 18, 'Revived from a fossil, this Pokémon is thought to be the ancestor of all bird Pokémon.'),
  -- archeops in white
  (567, 56700, 18, 'It runs better than it flies. It catches prey by running at speeds comparable to those of an automobile.'),
  -- trubbish in white
  (568, 56800, 18, 'The combination of garbage bags and industrial waste caused the chemical reaction that created this Pokémon.'),
  -- garbodor in white
  (569, 56900, 18, 'They absorb garbage and make it part of their bodies. They shoot a poisonous liquid from their right-hand fingertips.'),
  -- zorua in white
  (570, 57000, 18, 'To protect themselves from danger, they hide their true identities by transforming into people and Pokémon.'),
  -- zoroark in white
  (571, 57100, 18, 'Each has the ability to fool a large group of people simultaneously. They protect their lair with illusory scenery.'),
  -- minccino in white
  (572, 57200, 18, 'These Pokémon prefer a tidy habitat. They are always sweeping and dusting, using their tails as brooms.'),
  -- cinccino in white
  (573, 57300, 18, 'Their white fur feels amazing to touch. Their fur repels dust and prevents static electricity from building up.'),
  -- gothita in white
  (574, 57400, 18, 'They intently observe both Trainers and Pokémon. Apparently, they are looking at something that only Gothita can see.'),
  -- gothorita in white
  (575, 57500, 18, 'Starlight is the source of their power. At night, they mark star positions by using psychic power to float stones.'),
  -- gothitelle in white
  (576, 57600, 18, 'They can predict the future from the placement and movement of the stars. They can see Trainers’ life spans.'),
  -- solosis in white
  (577, 57700, 18, 'Because their bodies are enveloped in a special liquid, they can survive in any environment.'),
  -- duosion in white
  (578, 57800, 18, 'When their brains, now divided in two, are thinking the same thoughts, these Pokémon exhibit their maximum power.'),
  -- reuniclus in white
  (579, 57900, 18, 'These remarkably intelligent Pokémon fight by controlling arms that can grip with rock-crushing power.'),
  -- ducklett in white
  (580, 58000, 18, 'When attacked, it uses its feathers to splash water, escaping under cover of the spray.'),
  -- swanna in white
  (581, 58100, 18, 'It administers sharp, powerful pecks with its bill. It whips its long neck to deliver forceful repeated strikes.'),
  -- vanillite in white
  (582, 58200, 18, 'This Pokémon formed from icicles bathed in energy from the morning sun. It sleeps buried in snow.'),
  -- vanillish in white
  (583, 58300, 18, 'It conceals itself from enemy eyes by creating many small ice particles and hiding among them.'),
  -- vanilluxe in white
  (584, 58400, 18, 'If both heads get angry simultaneously, this Pokémon expels a blizzard, burying everything in snow.'),
  -- deerling in white
  (585, 58500, 18, 'The turning of the seasons changes the color and scent of this Pokémon’s fur. People use it to mark the seasons.'),
  -- sawsbuck in white
  (586, 58600, 18, 'The plants growing on its horns change according to the season. The leaders of the herd possess magnificent horns.'),
  -- emolga in white
  (587, 58700, 18, 'They live on treetops and glide using the inside of a cape-like membrane while discharging electricity.'),
  -- karrablast in white
  (588, 58800, 18, 'When they feel threatened, they spit an acidic liquid to drive attackers away. This Pokémon targets Shelmet.'),
  -- escavalier in white
  (589, 58900, 18, 'These Pokémon evolve by wearing the shell covering of a Shelmet. The steel armor protects their whole body.'),
  -- foongus in white
  (590, 59000, 18, 'For some reason, this Pokémon resembles a Poké Ball. They release poison spores to repel those who try to catch them.'),
  -- amoonguss in white
  (591, 59100, 18, 'They show off their Poké Ball caps to lure prey, but very few Pokémon are fooled by this.'),
  -- frillish in white
  (592, 59200, 18, 'They paralyze prey with poison, then drag them down to their lairs, five miles below the surface.'),
  -- jellicent in white
  (593, 59300, 18, 'They propel themselves by expelling absorbed seawater from their bodies. Their favorite food is life energy.'),
  -- alomomola in white
  (594, 59400, 18, 'Floating in the open sea is how they live. When they find a wounded Pokémon, they embrace it and bring it to shore.'),
  -- joltik in white
  (595, 59500, 18, 'They attach themselves to large-bodied Pokémon and absorb static electricity, which they store in an electric pouch.'),
  -- galvantula in white
  (596, 59600, 18, 'They employ an electrically charged web to trap their prey. While it is immobilized by shock, they leisurely consume it.'),
  -- ferroseed in white
  (597, 59700, 18, 'They stick their spikes into cave walls and absorb the minerals they find in the rock.'),
  -- ferrothorn in white
  (598, 59800, 18, 'They attach themselves to cave ceilings, firing steel spikes at targets passing beneath them.'),
  -- klink in white
  (599, 59900, 18, 'Interlocking two bodies and spinning around generates the energy they need to live.'),
  -- klang in white
  (600, 60000, 18, 'Spinning minigears are rotated at high speed and repeatedly fired away. It is dangerous if the gears don’t return.'),
  -- klinklang in white
  (601, 60100, 18, 'The gear with the red core is rotated at high speed for a rapid energy charge.'),
  -- tynamo in white
  (602, 60200, 18, 'These Pokémon move in schools. They have an electricity-generating organ, so they discharge electricity if in danger.'),
  -- eelektrik in white
  (603, 60300, 18, 'These Pokémon have a big appetite. When they spot their prey, they attack it and paralyze it with electricity.'),
  -- eelektross in white
  (604, 60400, 18, 'With their sucker mouths, they suck in prey. Then they use their fangs to shock the prey with electricity.'),
  -- elgyem in white
  (605, 60500, 18, 'This Pokémon had never been seen until it appeared from far in the desert 50 years ago.'),
  -- beheeyem in white
  (606, 60600, 18, 'It uses psychic power to control an opponent’s brain and tamper with its memories.'),
  -- litwick in white
  (607, 60700, 18, 'While shining a light and pretending to be a guide, it leeches off the life force of any who follow it.'),
  -- lampent in white
  (608, 60800, 18, 'It arrives near the moment of death and steals spirit from the body.'),
  -- chandelure in white
  (609, 60900, 18, 'Being consumed in Chandelure’s flame burns up the spirit, leaving the body behind.'),
  -- axew in white
  (610, 61000, 18, 'They mark their territory by leaving gashes in trees with their tusks. If a tusk breaks, a new one grows in quickly.'),
  -- fraxure in white
  (611, 61100, 18, 'Their tusks can shatter rocks. Territory battles between Fraxure can be intensely violent.'),
  -- haxorus in white
  (612, 61200, 18, 'Their sturdy tusks will stay sharp even if used to cut steel beams. These Pokémon are covered in hard armor.'),
  -- cubchoo in white
  (613, 61300, 18, 'Its nose is always running. It sniffs the snot back up because the mucus provides the raw material for its moves.'),
  -- beartic in white
  (614, 61400, 18, 'It freezes its breath to create fangs and claws of ice to fight with. Cold northern areas are its habitat.'),
  -- cryogonal in white
  (615, 61500, 18, 'They are born in snow clouds. They use chains made of ice crystals to capture prey.'),
  -- shelmet in white
  (616, 61600, 18, 'It evolves when bathed in an electric-like energy along with Karrablast. The reason is still unknown.'),
  -- accelgor in white
  (617, 61700, 18, 'Having removed its heavy shell, it becomes very light and can fight with ninja-like movements.'),
  -- stunfisk in white
  (618, 61800, 18, 'It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of electricity.'),
  -- mienfoo in white
  (619, 61900, 18, 'They have mastered elegant combos. As they concentrate, their battle moves become swifter and more precise.'),
  -- mienshao in white
  (620, 62000, 18, 'They use the long fur on their arms as a whip to strike their opponents.'),
  -- druddigon in white
  (621, 62100, 18, 'It races through narrow caves, using its sharp claws to catch prey. The skin on its face is harder than a rock.'),
  -- golett in white
  (622, 62200, 18, 'These Pokémon are thought to have been created by the science of an ancient and mysterious civilization.'),
  -- golurk in white
  (623, 62300, 18, 'It is said that Golurk were ordered to protect people and Pokémon by the ancient people who made them.'),
  -- pawniard in white
  (624, 62400, 18, 'They fight at Bisharp’s command. They cling to their prey and inflict damage by sinking their blades into it.'),
  -- bisharp in white
  (625, 62500, 18, 'Bisharp pursues prey in the company of a large group of Pawniard. Then Bisharp finishes off the prey.'),
  -- bouffalant in white
  (626, 62600, 18, 'They charge wildly and headbutt everything. Their headbutts have enough destructive force to derail a train.'),
  -- rufflet in white
  (627, 62700, 18, 'They will challenge anything, even strong opponents, without fear. Their frequent fights help them become stronger.'),
  -- braviary in white
  (628, 62800, 18, 'The more scars they have, the more respect these brave soldiers of the sky get from their peers.'),
  -- vullaby in white
  (629, 62900, 18, 'They tend to guard their posteriors with suitable bones they have found. They pursue weak Pokémon.'),
  -- mandibuzz in white
  (630, 63000, 18, 'Watching from the sky, they swoop to strike weakened Pokémon on the ground. They decorate themselves with bones.'),
  -- heatmor in white
  (631, 63100, 18, 'Using their very hot, flame-covered tongues, they burn through Durant’s steel bodies and consume their insides.'),
  -- durant in white
  (632, 63200, 18, 'Durant dig nests in mountains. They build their complicated, interconnected tunnels into mazes.'),
  -- deino in white
  (633, 63300, 18, 'They cannot see, so they tackle and bite to learn about their surroundings. Their bodies are covered in wounds.'),
  -- zweilous in white
  (634, 63400, 18, 'Since their two heads do not get along and compete with each other for food, they always eat too much.'),
  -- hydreigon in white
  (635, 63500, 18, 'The heads on their arms do not have brains. They use all three heads to consume and destroy everything.'),
  -- larvesta in white
  (636, 63600, 18, 'The base of volcanoes is where they make their homes. They shoot fire from their five horns to repel attacking enemies.'),
  -- volcarona in white
  (637, 63700, 18, 'A sea of fire engulfs the surroundings of their battles, since they use their six wings to scatter their ember scales.'),
  -- cobalion in white
  (638, 63800, 18, 'It has a body and heart of steel. Its glare is sufficient to make even an unruly Pokémon obey it.'),
  -- terrakion in white
  (639, 63900, 18, 'Its charge is strong enough to break through a giant castle wall in one blow. This Pokémon is spoken of in legends.'),
  -- virizion in white
  (640, 64000, 18, 'Its head sprouts horns as sharp as blades. Using whirlwind-like movements, it confounds and swiftly cuts opponents.'),
  -- tornadus in white
  (641, 64100, 18, 'Tornadus expels massive energy from its tail, causing severe storms. Its power is great enough to blow houses away.'),
  -- thundurus in white
  (642, 64200, 18, 'The spikes on its tail discharge immense bolts of lightning. It flies around the Unova region firing off lightning bolts.'),
  -- reshiram in white
  (643, 64300, 18, 'When Reshiram’s tail flares, the heat energy moves the atmosphere and changes the world’s weather.'),
  -- zekrom in white
  (644, 64400, 18, 'This Pokémon appears in legends. In its tail, it has a giant generator that creates electricity.'),
  -- landorus in white
  (645, 64500, 18, 'The energy that comes pouring from its tail increases the nutrition in the soil, making crops grow to great size.'),
  -- kyurem in white
  (646, 64600, 18, 'It can produce ultracold air. Its body is frozen.'),
  -- keldeo in white
  (647, 64700, 18, 'It crosses the world, running over the surfaces of oceans and rivers. It appears at scenic waterfronts.'),
  -- meloetta in white
  (648, 64800, 18, 'Many famous songs have been inspired by the melodies that Meloetta plays.'),
  -- genesect in white
  (649, 64900, 18, 'This ancient bug Pokémon was altered by Team Plasma. They upgraded the cannon on its back.'),
  -- bulbasaur in black-2
  (1, 100, 19, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in black-2
  (2, 200, 19, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in black-2
  (3, 300, 19, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in black-2
  (4, 400, 19, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in black-2
  (5, 500, 19, 'In the rocky mountains where Charmeleon live, their fiery tails shine at night like stars.'),
  -- charizard in black-2
  (6, 600, 19, 'It is said that Charizard’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in black-2
  (7, 700, 19, 'It shelters itself in its shell then strikes back with spouts of water at every opportunity.'),
  -- wartortle in black-2
  (8, 800, 19, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in black-2
  (9, 900, 19, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in black-2
  (10, 1000, 19, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in black-2
  (11, 1100, 19, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in black-2
  (12, 1200, 19, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in black-2
  (13, 1300, 19, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in black-2
  (14, 1400, 19, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in black-2
  (15, 1500, 19, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in black-2
  (16, 1600, 19, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in black-2
  (17, 1700, 19, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in black-2
  (18, 1800, 19, 'By flapping its wings with all its might, Pidgeot can make a gust of wind capable of bending tall trees.'),
  -- rattata in black-2
  (19, 1900, 19, 'It searches for food all day. It gnaws on hard objects to wear down its fangs, which grow constantly during its lifetime.'),
  -- raticate in black-2
  (20, 2000, 19, 'With its long fangs, this surprisingly violent Pokémon can gnaw away even thick concrete with ease.'),
  -- spearow in black-2
  (21, 2100, 19, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in black-2
  (22, 2200, 19, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in black-2
  (23, 2300, 19, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in black-2
  (24, 2400, 19, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in black-2
  (25, 2500, 19, 'It occasionally uses an electric shock to recharge a fellow Pikachu that is in a weakened state.'),
  -- raichu in black-2
  (26, 2600, 19, 'Its tail discharges electricity into the ground, protecting it from getting shocked.'),
  -- sandshrew in black-2
  (27, 2700, 19, 'It digs deep burrows to live in. When in danger, it rolls up its body to withstand attacks.'),
  -- sandslash in black-2
  (28, 2800, 19, 'The spikes on its body are made up of its hardened hide. It rolls up and attacks foes with its spikes.'),
  -- nidoran-f in black-2
  (29, 2900, 19, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in black-2
  (30, 3000, 19, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than Nidorino’s.'),
  -- nidoqueen in black-2
  (31, 3100, 19, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in black-2
  (32, 3200, 19, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in black-2
  (33, 3300, 19, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in black-2
  (34, 3400, 19, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in black-2
  (35, 3500, 19, 'On nights with a full moon, Clefairy gather from all over and dance. Bathing in moonlight makes them float.'),
  -- clefable in black-2
  (36, 3600, 19, 'Their ears are sensitive enough to hear a pin drop from over a mile away, so they’re usually found in quiet places.'),
  -- vulpix in black-2
  (37, 3700, 19, 'As each tail grows, its fur becomes more lustrous. When held, it feels slightly warm.'),
  -- ninetales in black-2
  (38, 3800, 19, 'Each of its nine tails is imbued with supernatural power, and it can live for a thousand years.'),
  -- jigglypuff in black-2
  (39, 3900, 19, 'Looking into its cute, round eyes makes it start singing a song so pleasant listeners can’t help but fall asleep.'),
  -- wigglytuff in black-2
  (40, 4000, 19, 'Its fine fur feels so pleasant, those who accidentally touch it cannot take their hands away.'),
  -- zubat in black-2
  (41, 4100, 19, 'It does not need eyes, because it emits ultrasonic waves to check its surroundings while it flies.'),
  -- golbat in black-2
  (42, 4200, 19, 'Flitting around in the dead of night, it sinks its fangs into its prey and drains a nearly fatal amount of blood.'),
  -- oddish in black-2
  (43, 4300, 19, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in black-2
  (44, 4400, 19, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in black-2
  (45, 4500, 19, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in black-2
  (46, 4600, 19, 'Mushrooms named tochukaso grow on its back. They grow along with the host Paras.'),
  -- parasect in black-2
  (47, 4700, 19, 'A mushroom grown larger than the host’s body controls Parasect. It scatters poisonous spores.'),
  -- venonat in black-2
  (48, 4800, 19, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in black-2
  (49, 4900, 19, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in black-2
  (50, 5000, 19, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in black-2
  (51, 5100, 19, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in black-2
  (52, 5200, 19, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in black-2
  (53, 5300, 19, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in black-2
  (54, 5400, 19, 'When headaches stimulate its brain cells, which are usually inactive, it can use a mysterious power.'),
  -- golduck in black-2
  (55, 5500, 19, 'When its forehead shines mysteriously, Golduck can use the full extent of its power.'),
  -- mankey in black-2
  (56, 5600, 19, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in black-2
  (57, 5700, 19, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in black-2
  (58, 5800, 19, 'Extremely loyal to its Trainer, it will bark at those who approach the Trainer unexpectedly and run them out of town.'),
  -- arcanine in black-2
  (59, 5900, 19, 'The sight of it running over 6,200 miles in a single day and night has captivated many people.'),
  -- poliwag in black-2
  (60, 6000, 19, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in black-2
  (61, 6100, 19, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in black-2
  (62, 6200, 19, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in black-2
  (63, 6300, 19, 'Using its psychic power is such a strain on its brain that it needs to sleep for 18 hours a day.'),
  -- kadabra in black-2
  (64, 6400, 19, 'It stares at its silver spoon to focus its mind. It emits more alpha waves while doing so.'),
  -- alakazam in black-2
  (65, 6500, 19, 'The spoons clutched in its hands are said to have been created by its psychic powers.'),
  -- machop in black-2
  (66, 6600, 19, 'Though small in stature, it is powerful enough to easily heft and throw a number of Geodude at once.'),
  -- machoke in black-2
  (67, 6700, 19, 'It happily carries heavy cargo to toughen up. It willingly does hard work for people.'),
  -- machamp in black-2
  (68, 6800, 19, 'Its four muscled arms slam foes with powerful punches and chops at blinding speed.'),
  -- bellsprout in black-2
  (69, 6900, 19, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in black-2
  (70, 7000, 19, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in black-2
  (71, 7100, 19, 'It pools in its mouth a fluid with a honey-like scent, which is really an acid that dissolves anything.'),
  -- tentacool in black-2
  (72, 7200, 19, 'Because its body is almost entirely composed of water, it shrivels up if it is washed ashore.'),
  -- tentacruel in black-2
  (73, 7300, 19, 'It extends its 80 tentacles to form an encircling poisonous net that is difficult to escape.'),
  -- geodude in black-2
  (74, 7400, 19, 'At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily.'),
  -- graveler in black-2
  (75, 7500, 19, 'It rolls on mountain paths to move. Once it builds momentum, no Pokémon can stop it without difficulty.'),
  -- golem in black-2
  (76, 7600, 19, 'Even dynamite can’t harm its hard, boulder-like body. It sheds its hide just once a year.'),
  -- ponyta in black-2
  (77, 7700, 19, 'As a newborn, it can barely stand. However, through galloping, its legs are made tougher and faster.'),
  -- rapidash in black-2
  (78, 7800, 19, 'When at an all-out gallop, its blazing mane sparkles, enhancing its beautiful appearance.'),
  -- slowpoke in black-2
  (79, 7900, 19, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in black-2
  (80, 8000, 19, 'Though usually dim witted, it seems to become inspired if the Shellder on its tail bites down.'),
  -- magnemite in black-2
  (81, 8100, 19, 'The electromagnetic waves emitted by the units at the sides of its head expel antigravity, which allows it to float.'),
  -- magneton in black-2
  (82, 8200, 19, 'The stronger electromagnetic waves from the three linked Magnemite are enough to dry out surrounding moisture.'),
  -- farfetchd in black-2
  (83, 8300, 19, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in black-2
  (84, 8400, 19, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in black-2
  (85, 8500, 19, 'When Doduo evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in black-2
  (86, 8600, 19, 'The colder it gets, the better it feels. It joyfully swims around oceans so cold that they are filled with floating ice.'),
  -- dewgong in black-2
  (87, 8700, 19, 'Its streamlined body has low resistance, and it swims around cold oceans at a speed of eight knots.'),
  -- grimer in black-2
  (88, 8800, 19, 'Born from sludge, these Pokémon now gather in polluted places and increase the bacteria in their bodies.'),
  -- muk in black-2
  (89, 8900, 19, 'It’s so stinky! Muk’s body contains toxic elements, and any plant will wilt when it passes by.'),
  -- shellder in black-2
  (90, 9000, 19, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in black-2
  (91, 9100, 19, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in black-2
  (92, 9200, 19, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in black-2
  (93, 9300, 19, 'It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.'),
  -- gengar in black-2
  (94, 9400, 19, 'The leer that floats in darkness belongs to a Gengar delighting in casting curses on people.'),
  -- onix in black-2
  (95, 9500, 19, 'Opening its large mouth, it ingests massive amounts of soil and creates long tunnels.'),
  -- drowzee in black-2
  (96, 9600, 19, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in black-2
  (97, 9700, 19, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in black-2
  (98, 9800, 19, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in black-2
  (99, 9900, 19, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in black-2
  (100, 10000, 19, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on contact.'),
  -- electrode in black-2
  (101, 10100, 19, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in black-2
  (102, 10200, 19, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in black-2
  (103, 10300, 19, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an Exeggcute.'),
  -- cubone in black-2
  (104, 10400, 19, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in black-2
  (105, 10500, 19, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in black-2
  (106, 10600, 19, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in black-2
  (107, 10700, 19, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in black-2
  (108, 10800, 19, 'Being licked by its long, saliva-covered tongue leaves a tingling sensation. Extending its tongue retracts its tail.'),
  -- koffing in black-2
  (109, 10900, 19, 'Toxic gas is held within its thin, balloon-shaped body, so it can cause massive explosions.'),
  -- weezing in black-2
  (110, 11000, 19, 'Inhaling toxic fumes from trash and mixing them inside its body lets it spread an even fouler stench.'),
  -- rhyhorn in black-2
  (111, 11100, 19, 'Its powerful tackles can destroy anything. However, it is too slow witted to help people work.'),
  -- rhydon in black-2
  (112, 11200, 19, 'Standing on its hind legs freed its forelegs and made it smarter. It is very forgetful, however.'),
  -- chansey in black-2
  (113, 11300, 19, 'A kindly Pokémon that lays highly nutritious eggs and shares them with injured Pokémon or people.'),
  -- tangela in black-2
  (114, 11400, 19, 'Many writhing vines cover it, so its true identity remains unknown. The blue vines grow its whole life long.'),
  -- kangaskhan in black-2
  (115, 11500, 19, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in black-2
  (116, 11600, 19, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in black-2
  (117, 11700, 19, 'Its spines provide protection. Its fins and bones are prized as traditional-medicine ingredients.'),
  -- goldeen in black-2
  (118, 11800, 19, 'Though it appears very elegant when swimming with fins unfurled, it can jab powerfully with its horn.'),
  -- seaking in black-2
  (119, 11900, 19, 'In autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.'),
  -- staryu in black-2
  (120, 12000, 19, 'As long as its red core remains, it can regenerate its body instantly, even if it’s torn apart.'),
  -- starmie in black-2
  (121, 12100, 19, 'Its core shines in many colors and sends radio signals into space to communicate with something.'),
  -- mr-mime in black-2
  (122, 12200, 19, 'It shapes an invisible wall in midair by minutely vibrating its fingertips to stop molecules in the air.'),
  -- scyther in black-2
  (123, 12300, 19, 'The sharp scythes on its forearms become increasingly sharp by cutting through hard objects.'),
  -- jynx in black-2
  (124, 12400, 19, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in black-2
  (125, 12500, 19, 'Research is progressing on storing lightning in Electabuzz so this energy can be used at any time.'),
  -- magmar in black-2
  (126, 12600, 19, 'The scorching fire exhaled by Magmar forms heat waves around its body, making it hard to see the Pokémon clearly.'),
  -- pinsir in black-2
  (127, 12700, 19, 'It grips prey with its powerful pincers and will not let go until the prey is torn in half.'),
  -- tauros in black-2
  (128, 12800, 19, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in black-2
  (129, 12900, 19, 'A Magikarp living for many years can leap a mountain using Splash. The move remains useless, though.'),
  -- gyarados in black-2
  (130, 13000, 19, 'Once it begins to rampage, a Gyarados will burn everything down, even in a harsh storm.'),
  -- lapras in black-2
  (131, 13100, 19, 'Able to understand human speech and very intelligent, it loves to swim in the sea with people on its back.'),
  -- ditto in black-2
  (132, 13200, 19, 'It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.'),
  -- eevee in black-2
  (133, 13300, 19, 'Thanks to its unstable genetic makeup, this special Pokémon conceals many different possible evolutions.'),
  -- vaporeon in black-2
  (134, 13400, 19, 'Its cell composition is similar to water molecules. As a result, it can’t be seen when it melts away into water.'),
  -- jolteon in black-2
  (135, 13500, 19, 'By storing electricity in its body, it can shoot its bristlelike fur like a barrage of missiles.'),
  -- flareon in black-2
  (136, 13600, 19, 'Inhaled air is carried to its flame sac, heated, and exhaled as fire that reaches over 3,000 degrees F.'),
  -- porygon in black-2
  (137, 13700, 19, 'A man-made Pokémon created using advanced scientific means. It can move freely in cyberspace.'),
  -- omanyte in black-2
  (138, 13800, 19, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in black-2
  (139, 13900, 19, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in black-2
  (140, 14000, 19, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in black-2
  (141, 14100, 19, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in black-2
  (142, 14200, 19, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in black-2
  (143, 14300, 19, 'When its belly is full, it becomes too lethargic to even lift a finger, so it is safe to bounce on its belly.'),
  -- articuno in black-2
  (144, 14400, 19, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in black-2
  (145, 14500, 19, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in black-2
  (146, 14600, 19, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in black-2
  (147, 14700, 19, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in black-2
  (148, 14800, 19, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in black-2
  (149, 14900, 19, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in black-2
  (150, 15000, 19, 'A Pokémon created by recombining Mew’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in black-2
  (151, 15100, 19, 'Because it can use all kinds of moves, many scientists believe Mew to be the ancestor of Pokémon.'),
  -- chikorita in black-2
  (152, 15200, 19, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in black-2
  (153, 15300, 19, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in black-2
  (154, 15400, 19, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in black-2
  (155, 15500, 19, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in black-2
  (156, 15600, 19, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in black-2
  (157, 15700, 19, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in black-2
  (158, 15800, 19, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in black-2
  (159, 15900, 19, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in black-2
  (160, 16000, 19, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in black-2
  (161, 16100, 19, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in black-2
  (162, 16200, 19, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in black-2
  (163, 16300, 19, 'It marks time precisely. Some countries consider it to be a wise friend, versed in the world’s ways.'),
  -- noctowl in black-2
  (164, 16400, 19, 'Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.'),
  -- ledyba in black-2
  (165, 16500, 19, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in black-2
  (166, 16600, 19, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in black-2
  (167, 16700, 19, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in black-2
  (168, 16800, 19, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in black-2
  (169, 16900, 19, 'Having four wings allows it to fly more quickly and quietly so it can sneak up on prey without its noticing.'),
  -- chinchou in black-2
  (170, 17000, 19, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in black-2
  (171, 17100, 19, 'Lanturn’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in black-2
  (172, 17200, 19, 'The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked.'),
  -- cleffa in black-2
  (173, 17300, 19, 'According to local rumors, Cleffa are often seen in places where shooting stars have fallen.'),
  -- igglybuff in black-2
  (174, 17400, 19, 'Its body has a faintly sweet scent and is bouncy and soft. If it bounces even once, it cannot stop.'),
  -- togepi in black-2
  (175, 17500, 19, 'It transforms the kindness and joy of others into happiness, which it stores in its shell.'),
  -- togetic in black-2
  (176, 17600, 19, 'To share its happiness, it flies around the world seeking kind- hearted people.'),
  -- natu in black-2
  (177, 17700, 19, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in black-2
  (178, 17800, 19, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in black-2
  (179, 17900, 19, 'When cold weather increases static electricity, its wool doubles in size and the tip of its tail glows slightly.'),
  -- flaaffy in black-2
  (180, 18000, 19, 'Not even downy wool will grow on its rubbery, nonconductive patches of skin that prevent electrical shock.'),
  -- ampharos in black-2
  (181, 18100, 19, 'The tip of its tail shines so brightly it can be used to send sea-navigation beacons to distant foreign shores.'),
  -- bellossom in black-2
  (182, 18200, 19, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in black-2
  (183, 18300, 19, 'The oil-filled tail functions as a buoy, so it’s fine even in rivers with strong currents.'),
  -- azumarill in black-2
  (184, 18400, 19, 'Its long ears are superb sensors. It can distinguish the movements of things in water and tell what they are.'),
  -- sudowoodo in black-2
  (185, 18500, 19, 'To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain.'),
  -- politoed in black-2
  (186, 18600, 19, 'It gathers groups of others as their leader. Its cries make Poliwag obey.'),
  -- hoppip in black-2
  (187, 18700, 19, 'It drifts on winds. It is said that when Hoppip gather in fields and mountains, spring is on the way.'),
  -- skiploom in black-2
  (188, 18800, 19, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in black-2
  (189, 18900, 19, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in black-2
  (190, 19000, 19, 'It lives high among the treetops. It can use its tail as freely and cleverly as its hands.'),
  -- sunkern in black-2
  (191, 19100, 19, 'It suddenly falls out of the sky in the morning. Knowing it’s weak, it simply feeds until it evolves.'),
  -- sunflora in black-2
  (192, 19200, 19, 'Since it converts sunlight into energy, it is always looking in the direction of the sun.'),
  -- yanma in black-2
  (193, 19300, 19, 'By flapping its wings at high speed, it can fly freely through the air. Even sudden stops are no problem.'),
  -- wooper in black-2
  (194, 19400, 19, 'When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.'),
  -- quagsire in black-2
  (195, 19500, 19, 'It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.'),
  -- espeon in black-2
  (196, 19600, 19, 'Its fur is so sensitive, it can feel minute shifts in the air and predict the weather...and its foes’ thoughts.'),
  -- umbreon in black-2
  (197, 19700, 19, 'When exposed to the moon’s aura, the rings on its body glow faintly and it’s filled with a mysterious power.'),
  -- murkrow in black-2
  (198, 19800, 19, 'If spotted, it will lure an unwary person into chasing it then lose the pursuer on mountain trails.'),
  -- slowking in black-2
  (199, 19900, 19, 'Being bitten by Shellder gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in black-2
  (200, 20000, 19, 'A Pokémon that startles people in the middle of the night. It gathers fear as its energy.'),
  -- unown in black-2
  (201, 20100, 19, 'When alone, nothing happens. However, if there are two or more, an odd power is said to emerge.'),
  -- wobbuffet in black-2
  (202, 20200, 19, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in black-2
  (203, 20300, 19, 'The head on its tail contains a small brain. It can instinctively fight even while facing backward.'),
  -- pineco in black-2
  (204, 20400, 19, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in black-2
  (205, 20500, 19, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in black-2
  (206, 20600, 19, 'It creates mazes in dark locations. When spotted, it flees into the ground by digging with its tail.'),
  -- gligar in black-2
  (207, 20700, 19, 'It clamps on to its chosen prey then jabs the stinger on its tail into the prey while it’s stunned with surprise.'),
  -- steelix in black-2
  (208, 20800, 19, 'The iron it ingested with the soil it swallowed transformed its body and made it harder than diamonds.'),
  -- snubbull in black-2
  (209, 20900, 19, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in black-2
  (210, 21000, 19, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in black-2
  (211, 21100, 19, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in black-2
  (212, 21200, 19, 'It raises its pincers with eyelike markings for intimidation. It also swings them down dangerously.'),
  -- shuckle in black-2
  (213, 21300, 19, 'The berries stored in its vaselike shell eventually become a thick, pulpy juice.'),
  -- heracross in black-2
  (214, 21400, 19, 'No matter how heavy its opponents, it flings them far away with its prized horn.'),
  -- sneasel in black-2
  (215, 21500, 19, 'A smart and sneaky Pokémon, it makes its opponents flinch by suddenly showing the claws hidden in its paws.'),
  -- teddiursa in black-2
  (216, 21600, 19, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in black-2
  (217, 21700, 19, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in black-2
  (218, 21800, 19, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in black-2
  (219, 21900, 19, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in black-2
  (220, 22000, 19, 'Rooting the tip of its snout into the ground, it searches for food. Sometimes it even digs up a hot spring.'),
  -- piloswine in black-2
  (221, 22100, 19, 'With its excellent sense of smell, it’s even able to find mushrooms that are buried under frozen ground.'),
  -- corsola in black-2
  (222, 22200, 19, 'They prefer unpolluted southern seas. Their coral branches lose their color and deteriorate in dirty water.'),
  -- remoraid in black-2
  (223, 22300, 19, 'The water they shoot from their mouths can hit moving prey from more than 300 feet away.'),
  -- octillery in black-2
  (224, 22400, 19, 'It has a tendency to want to be in holes. It prefers rock crags or pots and sprays ink from them before attacking.'),
  -- delibird in black-2
  (225, 22500, 19, 'It carries food all day long. When someone is lost in the mountains, it shares that food.'),
  -- mantine in black-2
  (226, 22600, 19, 'If it builds up enough speed swimming, it can fly over 300 feet out of the water from the surface of the ocean.'),
  -- skarmory in black-2
  (227, 22700, 19, 'Its heavy-looking iron body is actually thin and light, so it can fly at speeds over 180 mph.'),
  -- houndour in black-2
  (228, 22800, 19, 'It is smart enough to hunt in packs. It uses a variety of cries for communicating with others.'),
  -- houndoom in black-2
  (229, 22900, 19, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- kingdra in black-2
  (230, 23000, 19, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in black-2
  (231, 23100, 19, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in black-2
  (232, 23200, 19, 'It attacks by curling up then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in black-2
  (233, 23300, 19, 'It was upgraded to enable the exploration of other planets. However, it failed to measure up.'),
  -- stantler in black-2
  (234, 23400, 19, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in black-2
  (235, 23500, 19, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in black-2
  (236, 23600, 19, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in black-2
  (237, 23700, 19, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by 10.'),
  -- smoochum in black-2
  (238, 23800, 19, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in black-2
  (239, 23900, 19, 'Spinning its arms around to generate electricity makes the area between its horns shine light blue.'),
  -- magby in black-2
  (240, 24000, 19, 'It’s small, but its body temperature is over 1,100 degrees F. Embers escape its mouth and nose when it breathes.'),
  -- miltank in black-2
  (241, 24100, 19, 'It is said that kids who drink Miltank’s milk grow up to become hearty, healthy adults.'),
  -- blissey in black-2
  (242, 24200, 19, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- raikou in black-2
  (243, 24300, 19, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in black-2
  (244, 24400, 19, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in black-2
  (245, 24500, 19, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in black-2
  (246, 24600, 19, 'Born deep underground, it comes aboveground and becomes a pupa once it has finished eating the surrounding soil.'),
  -- pupitar in black-2
  (247, 24700, 19, 'This pupa flies around wildly by venting with great force the gas pressurized inside its body.'),
  -- tyranitar in black-2
  (248, 24800, 19, 'The quakes caused when it walks make even great mountains crumble and change the surrounding terrain.'),
  -- lugia in black-2
  (249, 24900, 19, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in black-2
  (250, 25000, 19, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in black-2
  (251, 25100, 19, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in black-2
  (252, 25200, 19, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in black-2
  (253, 25300, 19, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in black-2
  (254, 25400, 19, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in black-2
  (255, 25500, 19, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in black-2
  (256, 25600, 19, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in black-2
  (257, 25700, 19, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in black-2
  (258, 25800, 19, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in black-2
  (259, 25900, 19, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in black-2
  (260, 26000, 19, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in black-2
  (261, 26100, 19, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in black-2
  (262, 26200, 19, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in black-2
  (263, 26300, 19, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in black-2
  (264, 26400, 19, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in black-2
  (265, 26500, 19, 'Often targeted by bird Pokémon, it desperately resists by releasing poison from its tail spikes.'),
  -- silcoon in black-2
  (266, 26600, 19, 'It wraps silk around the branches of a tree. It drinks rainwater on its silk while awaiting evolution.'),
  -- beautifly in black-2
  (267, 26700, 19, 'Despite its looks, it is aggressive. It jabs with its long, thin mouth if disturbed while collecting pollen.'),
  -- cascoon in black-2
  (268, 26800, 19, 'It never forgets any attack it endured while in the cocoon. After evolution, it seeks payback.'),
  -- dustox in black-2
  (269, 26900, 19, 'Toxic powder is scattered with each flap. At night, it is known to strip leaves off trees lining boulevards.'),
  -- lotad in black-2
  (270, 27000, 19, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in black-2
  (271, 27100, 19, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in black-2
  (272, 27200, 19, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in black-2
  (273, 27300, 19, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in black-2
  (274, 27400, 19, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in black-2
  (275, 27500, 19, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in black-2
  (276, 27600, 19, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in black-2
  (277, 27700, 19, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in black-2
  (278, 27800, 19, 'It makes its nest on sheer cliffs. Riding the sea breeze, it glides up into the expansive skies.'),
  -- pelipper in black-2
  (279, 27900, 19, 'Skimming the water’s surface, it dips its large bill in the sea, scoops up food and water, and carries it.'),
  -- ralts in black-2
  (280, 28000, 19, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in black-2
  (281, 28100, 19, 'If its Trainer becomes happy, it overflows with energy, dancing joyously while spinning about.'),
  -- gardevoir in black-2
  (282, 28200, 19, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in black-2
  (283, 28300, 19, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in black-2
  (284, 28400, 19, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in black-2
  (285, 28500, 19, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in black-2
  (286, 28600, 19, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in black-2
  (287, 28700, 19, 'If it eats just three leaves in a day, it is satisfied. Other than that, it sleeps for 20 hours a day.'),
  -- vigoroth in black-2
  (288, 28800, 19, 'Its heartbeat is fast and its blood so agitated that it can’t sit still for one second.'),
  -- slaking in black-2
  (289, 28900, 19, 'This Pokémon lives lying on its side. It only rolls over and moves when there is no more grass to eat.'),
  -- nincada in black-2
  (290, 29000, 19, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in black-2
  (291, 29100, 19, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in black-2
  (292, 29200, 19, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in black-2
  (293, 29300, 19, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in black-2
  (294, 29400, 19, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in black-2
  (295, 29500, 19, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in black-2
  (296, 29600, 19, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in black-2
  (297, 29700, 19, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in black-2
  (298, 29800, 19, 'It swings its large, nutrient-filled tail around to fight opponents bigger than itself.'),
  -- nosepass in black-2
  (299, 29900, 19, 'Its magnetic nose always faces north and draws iron objects to its body to protect itself better.'),
  -- skitty in black-2
  (300, 30000, 19, 'It shows its cute side by chasing its own tail until it gets dizzy.'),
  -- delcatty in black-2
  (301, 30100, 19, 'The reason it does not have a nest is that it simply searches for a clean, comfortable place then sleeps there.'),
  -- sableye in black-2
  (302, 30200, 19, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in black-2
  (303, 30300, 19, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in black-2
  (304, 30400, 19, 'In order to build up its steel body, it eats iron ore. This pesky Pokémon is known to eat railroad tracks.'),
  -- lairon in black-2
  (305, 30500, 19, 'Lairon fight over territory, and when their steel bodies collide, sparks fly.'),
  -- aggron in black-2
  (306, 30600, 19, 'It claims an entire mountain as its own. The more wounds it has, the more it has battled, so don’t take it lightly.'),
  -- meditite in black-2
  (307, 30700, 19, 'It always trains deep in mountains. It levitates when it heightens its spiritual power through meditation.'),
  -- medicham in black-2
  (308, 30800, 19, 'It gains the ability to see the aura of its opponents by honing its mind through starvation.'),
  -- electrike in black-2
  (309, 30900, 19, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in black-2
  (310, 31000, 19, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in black-2
  (311, 31100, 19, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in black-2
  (312, 31200, 19, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in black-2
  (313, 31300, 19, 'It communicates with others by lighting up its rear at night. It loves Illumise’s sweet aroma.'),
  -- illumise in black-2
  (314, 31400, 19, 'With its sweet aroma, it guides Volbeat to draw signs with light in the night sky.'),
  -- roselia in black-2
  (315, 31500, 19, 'It uses the different poisons in each hand separately when it attacks. The stronger its aroma, the healthier it is.'),
  -- gulpin in black-2
  (316, 31600, 19, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in black-2
  (317, 31700, 19, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in black-2
  (318, 31800, 19, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in black-2
  (319, 31900, 19, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in black-2
  (320, 32000, 19, 'It eats one ton of food every day. It plays by shooting stored seawater out its blowholes with great force.'),
  -- wailord in black-2
  (321, 32100, 19, 'It can sometimes knock out opponents with the shock created by breaching and crashing its big body onto the water.'),
  -- numel in black-2
  (322, 32200, 19, 'The magma in its body reaches 2,200 degrees F. Its hump gets smaller when it uses Fire-type moves.'),
  -- camerupt in black-2
  (323, 32300, 19, 'The volcanoes on its back have a major eruption every 10 years--or whenever it becomes really angry.'),
  -- torkoal in black-2
  (324, 32400, 19, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in black-2
  (325, 32500, 19, 'Using its tail like a spring, it keeps its heart beating by bouncing constantly. If it stops, it dies.'),
  -- grumpig in black-2
  (326, 32600, 19, 'It uses black pearls to amplify its psychic power. It does a strange dance to control foes’ minds.'),
  -- spinda in black-2
  (327, 32700, 19, 'No two Spinda have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in black-2
  (328, 32800, 19, 'It makes an inescapable conical pit and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in black-2
  (329, 32900, 19, 'The ultrasonic waves it generates by rubbing its two wings together cause severe headaches.'),
  -- flygon in black-2
  (330, 33000, 19, 'Known as “The Desert Spirit,” this Pokémon hides in the sandstorms it causes by beating its wings.'),
  -- cacnea in black-2
  (331, 33100, 19, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in black-2
  (332, 33200, 19, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in black-2
  (333, 33300, 19, 'For some reason, it likes to land on people’s heads softly and act like it’s a hat.'),
  -- altaria in black-2
  (334, 33400, 19, 'On sunny days, it flies freely through the sky and blends into the clouds. It sings in a beautiful soprano.'),
  -- zangoose in black-2
  (335, 33500, 19, 'It’s Seviper’s archrival. To threaten those it encounters, it fans out the claws on its front paws.'),
  -- seviper in black-2
  (336, 33600, 19, 'Constant polishing makes the edge of the blade on its tail extremely sharp. It’s Zangoose’s archrival.'),
  -- lunatone in black-2
  (337, 33700, 19, 'The phase of the moon apparently has some effect on its power. It’s active on the night of a full moon.'),
  -- solrock in black-2
  (338, 33800, 19, 'Solar energy is the source of its power, so it is strong during the daytime. When it spins, its body shines.'),
  -- barboach in black-2
  (339, 33900, 19, 'Its slimy body is hard to grasp. In one region, it is said to have been born from hardened mud.'),
  -- whiscash in black-2
  (340, 34000, 19, 'It is extremely protective of its territory. If any foe approaches, it attacks using vicious tremors.'),
  -- corphish in black-2
  (341, 34100, 19, 'No matter how dirty the water in the river, it will adapt and thrive. It has a strong will to survive.'),
  -- crawdaunt in black-2
  (342, 34200, 19, 'Loving to battle, this Pokémon pinches all Pokémon that enter its territory with its pincers and throws them out.'),
  -- baltoy in black-2
  (343, 34300, 19, 'Discovered in ancient ruins, it moves by spinning around and forms a group when it finds others.'),
  -- claydol in black-2
  (344, 34400, 19, 'This mysterious Pokémon started life as an ancient clay figurine made over 20,000 years ago.'),
  -- lileep in black-2
  (345, 34500, 19, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in black-2
  (346, 34600, 19, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in black-2
  (347, 34700, 19, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in black-2
  (348, 34800, 19, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in black-2
  (349, 34900, 19, 'It is a shabby and ugly Pokémon. However, it is very hardy and can survive on little water.'),
  -- milotic in black-2
  (350, 35000, 19, 'Its lovely scales are described as rainbow colored. They change color depending on the viewing angle.'),
  -- castform in black-2
  (351, 35100, 19, 'Temperature and weather affect its cellular structure, so this Pokémon changes form according to the weather.'),
  -- kecleon in black-2
  (352, 35200, 19, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in black-2
  (353, 35300, 19, 'It feeds on the dark emotions of sadness and hatred, which make it grow steadily stronger.'),
  -- banette in black-2
  (354, 35400, 19, 'A doll that became a Pokémon over its grudge of being thrown away. It seeks the child who disowned it.'),
  -- duskull in black-2
  (355, 35500, 19, 'It loves the crying of children. It startles bad kids by passing through walls and making them cry.'),
  -- dusclops in black-2
  (356, 35600, 19, 'It seeks drifting will-o’-the-wisps and sucks them into its empty body. What happens inside is a mystery.'),
  -- tropius in black-2
  (357, 35700, 19, 'It flies by flapping its broad leaves and gives the sweet, delicious fruit around its neck to children.'),
  -- chimecho in black-2
  (358, 35800, 19, 'Its cries echo inside its hollow body to emerge as beautiful notes for startling and repelling foes.'),
  -- absol in black-2
  (359, 35900, 19, 'It appears from deep in the mountains to warn people about upcoming disasters it has sensed with its horn.'),
  -- wynaut in black-2
  (360, 36000, 19, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in black-2
  (361, 36100, 19, 'It is said that several Snorunt gather under giant leaves and live together in harmony.'),
  -- glalie in black-2
  (362, 36200, 19, 'It prevents prey from escaping by instantaneously freezing moisture in the air.'),
  -- spheal in black-2
  (363, 36300, 19, 'They can’t swim well yet, and they move much faster by rolling. When they’re happy, they clap fins.'),
  -- sealeo in black-2
  (364, 36400, 19, 'Be it Spheal or Poké Ball, it will spin any round object on its nose with the greatest of ease.'),
  -- walrein in black-2
  (365, 36500, 19, 'Not only does its thick blubber keep it warm, it also protects it from attacks. It shatters ice with its prized tusks.'),
  -- clamperl in black-2
  (366, 36600, 19, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in black-2
  (367, 36700, 19, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in black-2
  (368, 36800, 19, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in black-2
  (369, 36900, 19, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in black-2
  (370, 37000, 19, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in black-2
  (371, 37100, 19, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in black-2
  (372, 37200, 19, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in black-2
  (373, 37300, 19, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in black-2
  (374, 37400, 19, 'Its cells are all magnetic, and it communicates with others by using magnetic pulses.'),
  -- metang in black-2
  (375, 37500, 19, 'It is formed by two Beldum joining together. Its two brains are linked, amplifying its psychic power.'),
  -- metagross in black-2
  (376, 37600, 19, 'With four linked brains, it’s more intelligent than a supercomputer, and it uses calculations to analyze foes.'),
  -- regirock in black-2
  (377, 37700, 19, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in black-2
  (378, 37800, 19, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in black-2
  (379, 37900, 19, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in black-2
  (380, 38000, 19, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in black-2
  (381, 38100, 19, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in black-2
  (382, 38200, 19, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in black-2
  (383, 38300, 19, 'It had been asleep in underground magma ever since it fiercely fought Kyogre long ago.'),
  -- rayquaza in black-2
  (384, 38400, 19, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in black-2
  (385, 38500, 19, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in black-2
  (386, 38600, 19, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in black-2
  (387, 38700, 19, 'The shell on its back is made of soil. On a very healthy Turtwig, the shell should feel moist.'),
  -- grotle in black-2
  (388, 38800, 19, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in black-2
  (389, 38900, 19, 'Some Pokémon are born on a Torterra’s back and spend their entire life there.'),
  -- chimchar in black-2
  (390, 39000, 19, 'It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.'),
  -- monferno in black-2
  (391, 39100, 19, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in black-2
  (392, 39200, 19, 'It uses unique fighting moves with fire on its hands and feet. It will take on any opponent.'),
  -- piplup in black-2
  (393, 39300, 19, 'A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.'),
  -- prinplup in black-2
  (394, 39400, 19, 'Because every Prinplup considers itself to be the most important, they can never form a group.'),
  -- empoleon in black-2
  (395, 39500, 19, 'If anyone were to hurt its pride, it would slash them with wings that can cleave through an ice floe.'),
  -- starly in black-2
  (396, 39600, 19, 'Because they are weak individually, they form groups. However, they bicker if the group grows too big.'),
  -- staravia in black-2
  (397, 39700, 19, 'Recognizing their own weakness, they always live in a group. When alone, a Staravia cries noisily.'),
  -- staraptor in black-2
  (398, 39800, 19, 'It never stops attacking even if it is injured. It fusses over the shape of its comb.'),
  -- bidoof in black-2
  (399, 39900, 19, 'A comparison revealed that Bidoof’s front teeth grow at the same rate as Rattata’s.'),
  -- bibarel in black-2
  (400, 40000, 19, 'A river dammed by Bibarel will never overflow its banks, which is appreciated by people nearby.'),
  -- kricketot in black-2
  (401, 40100, 19, 'Its legs are short. Whenever it stumbles, its stiff antennae clack with a xylophone-like sound.'),
  -- kricketune in black-2
  (402, 40200, 19, 'There is a village that hosts a contest based on the amazingly variable cries of this Pokémon.'),
  -- shinx in black-2
  (403, 40300, 19, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in black-2
  (404, 40400, 19, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in black-2
  (405, 40500, 19, 'It can see clearly through walls to track down its prey and seek its lost young.'),
  -- budew in black-2
  (406, 40600, 19, 'Sensitive to changing temperatures, the bud blooms when it’s warm, releasing toxic pollen.'),
  -- roserade in black-2
  (407, 40700, 19, 'Luring prey with a sweet scent, it uses poison whips on its arms to poison, bind, and finish off the prey.'),
  -- cranidos in black-2
  (408, 40800, 19, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with head butts.'),
  -- rampardos in black-2
  (409, 40900, 19, 'If two were to smash their heads together, their foot-thick skulls would keep them from fainting.'),
  -- shieldon in black-2
  (410, 41000, 19, 'It is outstandingly armored. As a result, it can eat grass and berries without having to fight.'),
  -- bastiodon in black-2
  (411, 41100, 19, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in black-2
  (412, 41200, 19, 'Even if it is born where there are no cocooning materials, it somehow always ends up with a cloak.'),
  -- wormadam in black-2
  (413, 41300, 19, 'When evolving, its body takes in surrounding materials. As a result, there are many body variations.'),
  -- mothim in black-2
  (414, 41400, 19, 'While it loves floral honey, it won’t gather any itself. Instead, it plots to steal some from Combee.'),
  -- combee in black-2
  (415, 41500, 19, 'This Pokémon is a set of three. When they sleep, they gather up and form a giant hive of 100 Combee.'),
  -- vespiquen in black-2
  (416, 41600, 19, 'It houses its colony in cells in its body and releases various pheromones to make those grubs do its bidding.'),
  -- pachirisu in black-2
  (417, 41700, 19, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in black-2
  (418, 41800, 19, 'It inflates the flotation sac around its neck and pokes its head out of the water to see what is going on.'),
  -- floatzel in black-2
  (419, 41900, 19, 'It is a common sight around fishing ports. It is known to rescue people and carry off prey.'),
  -- cherubi in black-2
  (420, 42000, 19, 'The small ball is not only filled with nutrients, it is also tasty. Starly try to peck it off.'),
  -- cherrim in black-2
  (421, 42100, 19, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in black-2
  (422, 42200, 19, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in black-2
  (423, 42300, 19, 'Long ago, its entire back was shielded with a sturdy shell. There are traces of it left in its cells.'),
  -- ambipom in black-2
  (424, 42400, 19, 'Split into two, the tails are so adept at handling and doing things, Ambipom rarely uses its hands.'),
  -- drifloon in black-2
  (425, 42500, 19, 'These Pokémon are called the “Signpost for Wandering Spirits.” Children holding them sometimes vanish.'),
  -- drifblim in black-2
  (426, 42600, 19, 'They carry people and Pokémon, but the wind can catch them, so there can’t be a fixed destination.'),
  -- buneary in black-2
  (427, 42700, 19, 'By extending its rolled-up ears and striking the ground, it can bound so high it surprises itself.'),
  -- lopunny in black-2
  (428, 42800, 19, 'Extremely cautious, it quickly bounds off when it senses danger.'),
  -- mismagius in black-2
  (429, 42900, 19, 'Its cry sounds like an incantation. It is said the cry may rarely be imbued with happiness-giving power.'),
  -- honchkrow in black-2
  (430, 43000, 19, 'If one utters a deep cry, many Murkrow gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in black-2
  (431, 43100, 19, 'It hides its spiteful tendency of hooking its claws into the nose of its Trainer if it isn’t fed.'),
  -- purugly in black-2
  (432, 43200, 19, 'It binds its body with its tails to make itself look bigger. If it locks eyes, it will glare ceaselessly.'),
  -- chingling in black-2
  (433, 43300, 19, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in black-2
  (434, 43400, 19, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in black-2
  (435, 43500, 19, 'It attacks by spraying a horribly smelly fluid from the tip of its tail. Attacks from above confound it.'),
  -- bronzor in black-2
  (436, 43600, 19, 'They are found in ancient tombs. The patterns on their backs are said to be imbued with mysterious power.'),
  -- bronzong in black-2
  (437, 43700, 19, 'In ages past, this Pokémon was revered as a bringer of rain. It was found buried in the ground.'),
  -- bonsly in black-2
  (438, 43800, 19, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in black-2
  (439, 43900, 19, 'It mimics the expressions and motions of those it sees to understand the feelings of others.'),
  -- happiny in black-2
  (440, 44000, 19, 'It likes to carry around a small rock. It may wander around others’ feet and cause them to stumble.'),
  -- chatot in black-2
  (441, 44100, 19, 'Its tongue is just like a human’s. As a result, it can cleverly mimic human speech.'),
  -- spiritomb in black-2
  (442, 44200, 19, 'Its constant mischief and misdeeds resulted in it being bound to an Odd Keystone by a mysterious spell.'),
  -- gible in black-2
  (443, 44300, 19, 'It attacks using its huge mouth. While its attacks are powerful, it hurts itself out of clumsiness, too.'),
  -- gabite in black-2
  (444, 44400, 19, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in black-2
  (445, 44500, 19, 'It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.'),
  -- munchlax in black-2
  (446, 44600, 19, 'In its desperation to gulp down food, it forgets about the food it has hidden under its fur.'),
  -- riolu in black-2
  (447, 44700, 19, 'It uses the shapes of auras, which change according to emotion, to communicate with others.'),
  -- lucario in black-2
  (448, 44800, 19, 'By reading the auras of all things, it can tell how others are feeling from over half a mile away.'),
  -- hippopotas in black-2
  (449, 44900, 19, 'It shuts its nostrils tight then travels through sand as if walking. They form colonies of around 10.'),
  -- hippowdon in black-2
  (450, 45000, 19, 'It is surprisingly quick to anger. It holds its mouth agape as a display of its strength.'),
  -- skorupi in black-2
  (451, 45100, 19, 'It lives in arid regions and can go without food for a year while waiting for prey.'),
  -- drapion in black-2
  (452, 45200, 19, 'It takes pride in its strength. Even though it can tear foes apart, it finishes them off with powerful poison.'),
  -- croagunk in black-2
  (453, 45300, 19, 'Inflating its poison sacs, it fills the area with an odd sound and hits flinching opponents with a poison jab.'),
  -- toxicroak in black-2
  (454, 45400, 19, 'The croaking that Toxicroak produces before a battle is for churning the poison it has stored in its poison sac.'),
  -- carnivine in black-2
  (455, 45500, 19, 'Using its tentacles to lash itself to trees, it lies in wait for prey, luring it close with sweet-smelling drool.'),
  -- finneon in black-2
  (456, 45600, 19, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in black-2
  (457, 45700, 19, 'It crawls along the seafloor using its long front fins like legs. It competes for food with Lanturn.'),
  -- mantyke in black-2
  (458, 45800, 19, 'The pattern on its back varies by region. It often swims in a school of Remoraid.'),
  -- snover in black-2
  (459, 45900, 19, 'Seemingly curious about people, they gather around footsteps they find on snowy mountains.'),
  -- abomasnow in black-2
  (460, 46000, 19, 'They appear when the snow flowers bloom. When the petals fall, they retreat to places unknown again.'),
  -- weavile in black-2
  (461, 46100, 19, 'They communicate by clawing signs in boulders and work together to surround enemies.'),
  -- magnezone in black-2
  (462, 46200, 19, 'Sometimes the magnetism emitted by Magnezone is too strong, making them attract each other so they cannot move.'),
  -- lickilicky in black-2
  (463, 46300, 19, 'Their saliva contains lots of components that can dissolve anything. The numbness caused by their lick does not dissipate.'),
  -- rhyperior in black-2
  (464, 46400, 19, 'It can launch a rock held in its hand like a missile by tightening then expanding muscles instantly.'),
  -- tangrowth in black-2
  (465, 46500, 19, 'Even if one of its arms is eaten, it’s fine. The Pokémon regenerates quickly and will go right back to normal.'),
  -- electivire in black-2
  (466, 46600, 19, 'The instant it presses the tips of its tails onto an opponent, it sends over 20,000 volts of electricity into the foe.'),
  -- magmortar in black-2
  (467, 46700, 19, 'When shooting 3,600 degree F fireballs from its arms, its body takes on a whitish hue from the intense heat.'),
  -- togekiss in black-2
  (468, 46800, 19, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in black-2
  (469, 46900, 19, 'It prefers to battle by biting apart foes’ heads instantly while flying by at high speed.'),
  -- leafeon in black-2
  (470, 47000, 19, 'With cells similar to those of plants, it performs photosynthesis inside its body and creates pure air.'),
  -- glaceon in black-2
  (471, 47100, 19, 'It lowers its body heat to freeze its fur. The hairs then become like needles it can fire.'),
  -- gliscor in black-2
  (472, 47200, 19, 'It dances silently through the sky. When it approaches prey, it can land a critical hit in an instant.'),
  -- mamoswine in black-2
  (473, 47300, 19, 'When the temperature rose at the end of the ice age, most Mamoswine disappeared.'),
  -- porygon-z in black-2
  (474, 47400, 19, 'Its programming was modified to enable work in alien dimensions. It did not work as planned.'),
  -- gallade in black-2
  (475, 47500, 19, 'When trying to protect someone, it extends its elbows as if they were swords and fights savagely.'),
  -- probopass in black-2
  (476, 47600, 19, 'It freely controls three units called Mini-Noses using magnetic force.'),
  -- dusknoir in black-2
  (477, 47700, 19, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in black-2
  (478, 47800, 19, 'It freezes prey by blowing its -58 degrees F breath. It is said to then secretly display its prey.'),
  -- rotom in black-2
  (479, 47900, 19, 'Its electric-like body can enter some kinds of machines and take control in order to make mischief.'),
  -- uxie in black-2
  (480, 48000, 19, 'When Uxie flew, people gained the ability to solve problems. It was the birth of knowledge.'),
  -- mesprit in black-2
  (481, 48100, 19, 'When Mesprit flew, people learned the joy and sadness of living. It was the birth of emotions.'),
  -- azelf in black-2
  (482, 48200, 19, 'When Azelf flew, people gained the determination to do things. It was the birth of willpower.'),
  -- dialga in black-2
  (483, 48300, 19, 'A legendary Pokémon of Sinnoh. It is said that time flows when Dialga’s heart beats.'),
  -- palkia in black-2
  (484, 48400, 19, 'A legendary Pokémon of Sinnoh. It is said that space becomes more stable with Palkia’s every breath.'),
  -- heatran in black-2
  (485, 48500, 19, 'Its body is made of rugged steel. However, it is partially melted in spots because of its own heat.'),
  -- regigigas in black-2
  (486, 48600, 19, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in black-2
  (487, 48700, 19, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in black-2
  (488, 48800, 19, 'On nights around the quarter moon, the aurora from its tail extends and undulates beautifully.'),
  -- phione in black-2
  (489, 48900, 19, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in black-2
  (490, 49000, 19, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in black-2
  (491, 49100, 19, 'To protect itself, it afflicts those around it with nightmares. However, it means no harm.'),
  -- shaymin in black-2
  (492, 49200, 19, 'The flowers all over its body burst into bloom if it is lovingly hugged and senses gratitude.'),
  -- arceus in black-2
  (493, 49300, 19, 'It is said to have emerged from an egg in a place where there was nothing then shaped the world.'),
  -- victini in black-2
  (494, 49400, 19, 'When it shares the infinite energy it creates, that being’s entire body will be overflowing with power.'),
  -- snivy in black-2
  (495, 49500, 19, 'Being exposed to sunlight makes its movements swifter. It uses vines more adeptly than its hands.'),
  -- servine in black-2
  (496, 49600, 19, 'When it gets dirty, its leaves can’t be used in photosynthesis, so it always keeps itself clean.'),
  -- serperior in black-2
  (497, 49700, 19, 'It only gives its all against strong opponents who are not fazed by the glare from Serperior’s noble eyes.'),
  -- tepig in black-2
  (498, 49800, 19, 'It loves to eat roasted berries, but sometimes it gets too excited and burns them to a crisp.'),
  -- pignite in black-2
  (499, 49900, 19, 'The more it eats, the more fuel it has to make the fire in its stomach stronger. This fills it with even more power.'),
  -- emboar in black-2
  (500, 50000, 19, 'A flaring beard of fire is proof that it is fired up. It is adept at using many different moves.'),
  -- oshawott in black-2
  (501, 50100, 19, 'The scalchop on its stomach isn’t just used for battle--it can be used to break open hard berries as well.'),
  -- dewott in black-2
  (502, 50200, 19, 'As a result of strict training, each Dewott learns different forms for using the scalchops.'),
  -- samurott in black-2
  (503, 50300, 19, 'In the time it takes a foe to blink, it can draw and sheathe the seamitars attached to its front legs.'),
  -- patrat in black-2
  (504, 50400, 19, 'Extremely cautious, one of them will always be on the lookout, but it won’t notice a foe coming from behind.'),
  -- watchog in black-2
  (505, 50500, 19, 'Using luminescent matter, it makes its eyes and body glow and stuns attacking opponents.'),
  -- lillipup in black-2
  (506, 50600, 19, 'Though it is a very brave Pokémon, it’s also smart enough to check its foe’s strength and avoid battle.'),
  -- herdier in black-2
  (507, 50700, 19, 'This very loyal Pokémon helps Trainers, and it also takes care of other Pokémon.'),
  -- stoutland in black-2
  (508, 50800, 19, 'Being wrapped in its long fur is so comfortable that a person would be fine even overnight on a wintry mountain.'),
  -- purrloin in black-2
  (509, 50900, 19, 'Their cute act is a ruse. They trick people and steal their valuables just to see the looks on their faces.'),
  -- liepard in black-2
  (510, 51000, 19, 'Their beautiful form comes from the muscles they have developed. They run silently in the night.'),
  -- pansage in black-2
  (511, 51100, 19, 'It’s good at finding berries and gathers them from all over. It’s kind enough to share them with friends.'),
  -- simisage in black-2
  (512, 51200, 19, 'It strikes its enemies with a thorn-covered tail. The leaf on its head is bitter.'),
  -- pansear in black-2
  (513, 51300, 19, 'Very intelligent, it roasts berries before eating them. It likes to help people.'),
  -- simisear in black-2
  (514, 51400, 19, 'When it gets excited, embers rise from its head and tail and it gets hot. For some reason, it loves sweets.'),
  -- panpour in black-2
  (515, 51500, 19, 'The water stored inside the tuft on its head is full of nutrients. It waters plants with it using its tail.'),
  -- simipour in black-2
  (516, 51600, 19, 'It prefers places with clean water. When its tuft runs low, it replenishes it by siphoning up water with its tail.'),
  -- munna in black-2
  (517, 51700, 19, 'This Pokémon appears before people and Pokémon who are having nightmares and eats those dreams.'),
  -- musharna in black-2
  (518, 51800, 19, 'The dream mist coming from its forehead changes into many different colors depending on the dream that was eaten.'),
  -- pidove in black-2
  (519, 51900, 19, 'This very forgetful Pokémon will wait for a new order from its Trainer even though it already has one.'),
  -- tranquill in black-2
  (520, 52000, 19, 'No matter where in the world it goes, it knows where its nest is, so it never gets separated from its Trainer.'),
  -- unfezant in black-2
  (521, 52100, 19, 'Males swing the plumage on their heads to threaten others, but females are better at flying.'),
  -- blitzle in black-2
  (522, 52200, 19, 'Its mane shines when it discharges electricity. They use the frequency and rhythm of these flashes to communicate.'),
  -- zebstrika in black-2
  (523, 52300, 19, 'When this ill-tempered Pokémon runs wild, it shoots lightning from its mane in all directions.'),
  -- roggenrola in black-2
  (524, 52400, 19, 'The hexagonal-shaped hole is its ear. It has a tendency to walk in the direction the sound is coming from.'),
  -- boldore in black-2
  (525, 52500, 19, 'When it is healthy, its core sticks out. Always facing the same way, it swiftly moves front to back and left to right.'),
  -- gigalith in black-2
  (526, 52600, 19, 'The solar rays it absorbs are processed in its energy core and fired as a ball of light.'),
  -- woobat in black-2
  (527, 52700, 19, 'The heart-shaped mark left on a body after a Woobat has been attached to it is said to bring good fortune.'),
  -- swoobat in black-2
  (528, 52800, 19, 'It shakes its tail vigorously when it emits ultrasonic waves strong enough to reduce concrete to rubble.'),
  -- drilbur in black-2
  (529, 52900, 19, 'By spinning its body, it can dig straight through the ground at a speed of 30 mph.'),
  -- excadrill in black-2
  (530, 53000, 19, 'Forming a drill with its steel claws and head, it can bore through a steel plate, no matter how thick it is.'),
  -- audino in black-2
  (531, 53100, 19, 'Using the feelers on its ears, it can tell how someone is feeling or when an egg might hatch.'),
  -- timburr in black-2
  (532, 53200, 19, 'Always carrying squared logs, they help out with construction. As they grow, they carry bigger logs.'),
  -- gurdurr in black-2
  (533, 53300, 19, 'With strengthened bodies, they skillfully wield steel beams to take down buildings.'),
  -- conkeldurr in black-2
  (534, 53400, 19, 'Rather than rely on force, they master moves that utilize the centrifugal force of spinning concrete.'),
  -- tympole in black-2
  (535, 53500, 19, 'By vibrating its cheeks, it emits sound waves imperceptible to humans and warns others of danger.'),
  -- palpitoad in black-2
  (536, 53600, 19, 'It lives in the water and on land. It uses its long, sticky tongue to immobilize its opponents.'),
  -- seismitoad in black-2
  (537, 53700, 19, 'By putting power into its bumps, it creates vibrations and increases the power of its punches.'),
  -- throh in black-2
  (538, 53800, 19, 'When it encounters a foe bigger than itself, it wants to throw it. It changes belts as it gets stronger.'),
  -- sawk in black-2
  (539, 53900, 19, 'Desiring the strongest karate chop, they seclude themselves in mountains and train without sleeping.'),
  -- sewaddle in black-2
  (540, 54000, 19, 'Since this Pokémon makes its own clothes out of leaves, it is a popular mascot for fashion designers.'),
  -- swadloon in black-2
  (541, 54100, 19, 'Preferring dark, damp places, it spends the entire day eating fallen leaves that lie around it.'),
  -- leavanny in black-2
  (542, 54200, 19, 'Upon finding a small Pokémon, it weaves clothing for it from leaves by using the sticky silk secreted from its mouth.'),
  -- venipede in black-2
  (543, 54300, 19, 'Using the feelers on its head and tail, it picks up vibrations in the air to determine its prey’s location and state.'),
  -- whirlipede in black-2
  (544, 54400, 19, 'Storing energy for evolution, it sits. But, when predators approach, it moves to stab them with poison spikes.'),
  -- scolipede in black-2
  (545, 54500, 19, 'It clasps its prey with the claws on its neck until it stops moving. Then it finishes it off with deadly poison.'),
  -- cottonee in black-2
  (546, 54600, 19, 'Perhaps because they feel more at ease in a group, they stick to others they find. They end up looking like a cloud.'),
  -- whimsicott in black-2
  (547, 54700, 19, 'They appear along with whirlwinds. They pull pranks, such as moving furniture and leaving balls of cotton in homes.'),
  -- petilil in black-2
  (548, 54800, 19, 'The leaves on its head grow right back even if they fall out. These bitter leaves refresh those who eat them.'),
  -- lilligant in black-2
  (549, 54900, 19, 'The fragrance of the garland on its head has a relaxing effect, but taking care of it is very difficult.'),
  -- basculin in black-2
  (550, 55000, 19, 'Red- and blue-striped Basculin are very violent and always fighting. They are also remarkably tasty.'),
  -- sandile in black-2
  (551, 55100, 19, 'They live hidden under hot desert sands in order to keep their body temperature from dropping.'),
  -- krokorok in black-2
  (552, 55200, 19, 'Protected by thin membranes, their eyes can see even in the dead of night. They live in groups of a few individuals.'),
  -- krookodile in black-2
  (553, 55300, 19, 'Very violent Pokémon, they try to clamp down on anything that moves in front of their eyes.'),
  -- darumaka in black-2
  (554, 55400, 19, 'When it sleeps, it pulls its limbs into its body and its internal fire goes down to 1,100° F.'),
  -- darmanitan in black-2
  (555, 55500, 19, 'When one is injured in a fierce battle, it hardens into a stone-like form. Then it meditates and sharpens its mind.'),
  -- maractus in black-2
  (556, 55600, 19, 'When it moves rhythmically, it makes a sound similar to maracas, making the surprised Pokémon flee.'),
  -- dwebble in black-2
  (557, 55700, 19, 'When it finds a stone of a suitable size, it secretes a liquid from its mouth to open up a hole to crawl into.'),
  -- crustle in black-2
  (558, 55800, 19, 'When its boulder is broken in battles for territory, it feels unsure and begins to weaken.'),
  -- scraggy in black-2
  (559, 55900, 19, 'Proud of its sturdy skull, it suddenly headbutts everything, but its weight makes it unstable, too.'),
  -- scrafty in black-2
  (560, 56000, 19, 'It pulls up its shed skin to protect itself while it kicks. The bigger the crest, the more respected it is.'),
  -- sigilyph in black-2
  (561, 56100, 19, 'The guardians of an ancient city, they always fly the same route while keeping watch for invaders.'),
  -- yamask in black-2
  (562, 56200, 19, 'These Pokémon arose from the spirits of people interred in graves. Each retains memories of its former life.'),
  -- cofagrigus in black-2
  (563, 56300, 19, 'Grave robbers who mistake them for real coffins and get too close end up trapped inside their bodies.'),
  -- tirtouga in black-2
  (564, 56400, 19, 'This Pokémon was restored from a fossil. It swam skillfully and dove to depths beyond half a mile.'),
  -- carracosta in black-2
  (565, 56500, 19, 'It could knock out a foe with a slap from one of its developed front appendages and chew it up, shell or bones and all.'),
  -- archen in black-2
  (566, 56600, 19, 'It was revived from an ancient fossil. Not able to fly, it lived in treetops and hopped from one branch to another.'),
  -- archeops in black-2
  (567, 56700, 19, 'It runs better than it flies. It takes off into the sky by running at a speed of 25 mph.'),
  -- trubbish in black-2
  (568, 56800, 19, 'Wanting more garbage, they follow people who litter. They always belch poison gas.'),
  -- garbodor in black-2
  (569, 56900, 19, 'Consuming garbage makes new kinds of poison gases and liquids inside their bodies.'),
  -- zorua in black-2
  (570, 57000, 19, 'It changes so it looks just like its foe, tricks it, and then uses that opportunity to flee.'),
  -- zoroark in black-2
  (571, 57100, 19, 'Stories say those who tried to catch Zoroark were trapped in an illusion and punished.'),
  -- minccino in black-2
  (572, 57200, 19, 'Minccino greet each other by grooming one another thoroughly with their tails.'),
  -- cinccino in black-2
  (573, 57300, 19, 'Cinccino’s body is coated in a special oil that helps it deflect attacks, such as punches.'),
  -- gothita in black-2
  (574, 57400, 19, 'It stares intently at everything. It can become so obsessed with watching that it doesn’t notice attacks.'),
  -- gothorita in black-2
  (575, 57500, 19, 'According to many old tales, it creates friends for itself by controlling sleeping children on starry nights.'),
  -- gothitelle in black-2
  (576, 57600, 19, 'It can see the future from the movement of the stars. When it learns its Trainer’s life span, it cries in sadness.'),
  -- solosis in black-2
  (577, 57700, 19, 'Because their bodies are enveloped in a special liquid, they are fine in any environment, no matter how severe.'),
  -- duosion in black-2
  (578, 57800, 19, 'When their two divided brains think the same thoughts, their psychic power is maximized.'),
  -- reuniclus in black-2
  (579, 57900, 19, 'They use psychic power to control their arms, which are made of a special liquid. They can crush boulders psychically.'),
  -- ducklett in black-2
  (580, 58000, 19, 'They are better at swimming than flying, and they happily eat their favorite food, peat moss, as they dive underwater.'),
  -- swanna in black-2
  (581, 58100, 19, 'Despite their elegant appearance, they can flap their wings strongly and fly for thousands of miles.'),
  -- vanillite in black-2
  (582, 58200, 19, 'Theoretically, this Pokémon formed from icicles bathed in energy from the morning sun. Their breath is -58° F.'),
  -- vanillish in black-2
  (583, 58300, 19, 'They cool down the surrounding air and create ice particles, which they use to freeze their foes.'),
  -- vanilluxe in black-2
  (584, 58400, 19, 'Swallowing large amounts of water, they make snow clouds inside their bodies and, when angry, cause violent blizzards.'),
  -- deerling in black-2
  (585, 58500, 19, 'Their coloring changes according to the seasons and can be slightly affected by the temperature and humidity as well.'),
  -- sawsbuck in black-2
  (586, 58600, 19, 'They migrate according to the seasons, so some people call Sawsbuck the harbingers of spring.'),
  -- emolga in black-2
  (587, 58700, 19, 'It glides on its outstretched membrane while shocking foes with the electricity stored in the pouches on its cheeks.'),
  -- karrablast in black-2
  (588, 58800, 19, 'For some reason they evolve when they receive electrical energy while they are attacking Shelmet.'),
  -- escavalier in black-2
  (589, 58900, 19, 'Wearing the shell covering they stole from Shelmet, they defend themselves and attack with two lances.'),
  -- foongus in black-2
  (590, 59000, 19, 'It lures Pokémon with its pattern that looks just like a Poké Ball then releases poison spores.'),
  -- amoonguss in black-2
  (591, 59100, 19, 'It moves the caps on both arms and does a dance to lure prey. It prefers damp places.'),
  -- frillish in black-2
  (592, 59200, 19, 'If its veil-like arms stun and wrap a foe, that foe will be dragged miles below the surface, never to return.'),
  -- jellicent in black-2
  (593, 59300, 19, 'Its body is mostly seawater. It’s said there’s a castle of ships Jellicent have sunk on the seafloor.'),
  -- alomomola in black-2
  (594, 59400, 19, 'It gently holds injured and weak Pokémon in its fins. Its special membrane heals their wounds.'),
  -- joltik in black-2
  (595, 59500, 19, 'Since it can’t generate its own electricity, it sticks onto large-bodied Pokémon and absorbs static electricity.'),
  -- galvantula in black-2
  (596, 59600, 19, 'It creates barriers from electrified silk that stun foes. This works as a weapon as well as a defense.'),
  -- ferroseed in black-2
  (597, 59700, 19, 'It absorbs the iron it finds in the rock while clinging to the ceiling. It shoots spikes when in danger.'),
  -- ferrothorn in black-2
  (598, 59800, 19, 'By swinging around its three spiky feelers and shooting spikes, it can obliterate an opponent.'),
  -- klink in black-2
  (599, 59900, 19, 'Two bodies comprise a fixed pair. They spin around each other to generate energy.'),
  -- klang in black-2
  (600, 60000, 19, 'A minigear and big gear comprise its body. If the minigear it launches at a foe doesn’t return, it will die.'),
  -- klinklang in black-2
  (601, 60100, 19, 'The minigear spins at high speed. Then the energy from the red core charges the minigear to make it ready to fire.'),
  -- tynamo in black-2
  (602, 60200, 19, 'One alone can emit only a trickle of electricity, so a group of them gathers to unleash a powerful electric shock.'),
  -- eelektrik in black-2
  (603, 60300, 19, 'It wraps itself around its prey and paralyzes it with electricity from the round spots on its sides. Then it chomps.'),
  -- eelektross in black-2
  (604, 60400, 19, 'It latches on to prey with its sucker mouth, sinking in its fangs and shocking the prey with powerful electricity.'),
  -- elgyem in black-2
  (605, 60500, 19, 'Rumors of its origin are linked to a UFO crash site in the desert 50 years ago.'),
  -- beheeyem in black-2
  (606, 60600, 19, 'Apparently, it communicates by flashing its three fingers, but those patterns haven’t been decoded.'),
  -- litwick in black-2
  (607, 60700, 19, 'Its flame is usually out, but it starts shining when it absorbs life force from people or Pokémon.'),
  -- lampent in black-2
  (608, 60800, 19, 'The spirits it absorbs fuel its baleful fire. It hangs around hospitals waiting for people to pass on.'),
  -- chandelure in black-2
  (609, 60900, 19, 'The spirits burned up in its ominous flame lose their way and wander this world forever.'),
  -- axew in black-2
  (610, 61000, 19, 'Its large tusks have a tendency to break, but each time they grow back, they grow in harder and sturdier.'),
  -- fraxure in black-2
  (611, 61100, 19, 'A broken tusk will not grow back, so it diligently sharpens its tusks on river rocks after the end of a battle.'),
  -- haxorus in black-2
  (612, 61200, 19, 'Its tusks are incredibly destructive. They can easily slice through a thick, sturdy steel column every time.'),
  -- cubchoo in black-2
  (613, 61300, 19, 'Their snot is a barometer of health. When healthy, their snot is sticky and the power of their ice moves increases.'),
  -- beartic in black-2
  (614, 61400, 19, 'They love the cold seas of the north. They create pathways across the ocean waters by freezing their own breath.'),
  -- cryogonal in black-2
  (615, 61500, 19, 'They are composed of ice crystals. They capture prey with chains of ice, freezing the prey at -148° F.'),
  -- shelmet in black-2
  (616, 61600, 19, 'When it and Karrablast are together, and both receive electrical stimulation, they both evolve.'),
  -- accelgor in black-2
  (617, 61700, 19, 'When its body dries out, it weakens. So it wraps a membrane around itself for protection while it spits poison.'),
  -- stunfisk in black-2
  (618, 61800, 19, 'When its opponent can’t be paralyzed, it contorts itself with unexpected speed and flops away.'),
  -- mienfoo in black-2
  (619, 61900, 19, 'It takes pride in the speed at which it can use moves. What it loses in power, it makes up for in quantity.'),
  -- mienshao in black-2
  (620, 62000, 19, 'Using the long fur on its arms like whips, it launches into combo attacks that, once started, no one can stop.'),
  -- druddigon in black-2
  (621, 62100, 19, 'It runs through the narrow tunnels formed by Excadrill and Onix. It uses its sharp claws to catch prey.'),
  -- golett in black-2
  (622, 62200, 19, 'Ancient science fashioned this Pokémon from clay. It’s been active for thousands of years.'),
  -- golurk in black-2
  (623, 62300, 19, 'Golurk were created to protect people and Pokémon. They run on a mysterious energy.'),
  -- pawniard in black-2
  (624, 62400, 19, 'Ignoring their injuries, groups attack by sinking the blades that cover their bodies into their prey.'),
  -- bisharp in black-2
  (625, 62500, 19, 'This pitiless Pokémon commands a group of Pawniard to hound prey into immobility. It then moves in to finish the prey off.'),
  -- bouffalant in black-2
  (626, 62600, 19, 'They are known to charge so wildly that if a train were to enter their territory, they would send it flying.'),
  -- rufflet in black-2
  (627, 62700, 19, 'It stands up to massive opponents, not out of courage, but out of recklessness. But that is how it gets stronger.'),
  -- braviary in black-2
  (628, 62800, 19, 'For the sake of its friends, this brave warrior of the sky will not stop battling, even if injured.'),
  -- vullaby in black-2
  (629, 62900, 19, 'Their wings are too tiny to allow them to fly. They guard their posteriors with bones that were gathered by Mandibuzz.'),
  -- mandibuzz in black-2
  (630, 63000, 19, 'They fly in circles around the sky. When they spot prey, they attack and carry it back to their nest with ease.'),
  -- heatmor in black-2
  (631, 63100, 19, 'It draws in air through its tail, transforms it into fire, and uses it like a tongue. It melts Durant and eats them.'),
  -- durant in black-2
  (632, 63200, 19, 'Individuals each play different roles in driving Heatmor, their natural predator, away from their colony.'),
  -- deino in black-2
  (633, 63300, 19, 'Lacking sight, it’s unaware of its surroundings, so it bumps into things and eats anything that moves.'),
  -- zweilous in black-2
  (634, 63400, 19, 'The two heads do not get along. Whichever head eats more than the other gets to be the leader.'),
  -- hydreigon in black-2
  (635, 63500, 19, 'It responds to movement by attacking. This scary, three-headed Pokémon devours everything in its path!'),
  -- larvesta in black-2
  (636, 63600, 19, 'Said to have been born from the sun, it spews fire from its horns and encases itself in a cocoon of fire when it evolves.'),
  -- volcarona in black-2
  (637, 63700, 19, 'Thought to be an embodiment of the sun, it appeared during a bitterly cold winter and saved Pokémon from freezing.'),
  -- cobalion in black-2
  (638, 63800, 19, 'It has a body and heart of steel. It worked with its allies to punish people when they hurt Pokémon.'),
  -- terrakion in black-2
  (639, 63900, 19, 'Spoken of in legend, this Pokémon used its phenomenal power to destroy a castle in its effort to protect Pokémon.'),
  -- virizion in black-2
  (640, 64000, 19, 'Legends say this Pokémon confounded opponents with its swift movements.'),
  -- tornadus in black-2
  (641, 64100, 19, 'In every direction it flies, creating winds so powerful, they blow everything away.'),
  -- thundurus in black-2
  (642, 64200, 19, 'As it flies around, it shoots lightning all over the place and causes forest fires. It is therefore disliked.'),
  -- reshiram in black-2
  (643, 64300, 19, 'This legendary Pokémon can scorch the world with fire. It helps those who want to build a world of truth.'),
  -- zekrom in black-2
  (644, 64400, 19, 'This legendary Pokémon can scorch the world with lightning. It assists those who want to build an ideal world.'),
  -- landorus in black-2
  (645, 64500, 19, 'From the forces of lightning and wind, it creates energy to give nutrients to the soil and make the land abundant.'),
  -- kyurem in black-2
  (646, 64600, 19, 'This legendary ice Pokémon waits for a hero to fill in the missing parts of its body with truth or ideals.'),
  -- keldeo in black-2
  (647, 64700, 19, 'When it is resolute, its body fills with power and it becomes swifter. Its jumps are then too fast to follow.'),
  -- meloetta in black-2
  (648, 64800, 19, 'The melodies sung by Meloetta have the power to make Pokémon that hear them happy or sad.'),
  -- genesect in black-2
  (649, 64900, 19, 'This Pokémon existed 300 million years ago. Team Plasma altered it and attached a cannon to its back.'),
  -- bulbasaur in white-2
  (1, 100, 20, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in white-2
  (2, 200, 20, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in white-2
  (3, 300, 20, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in white-2
  (4, 400, 20, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in white-2
  (5, 500, 20, 'In the rocky mountains where Charmeleon live, their fiery tails shine at night like stars.'),
  -- charizard in white-2
  (6, 600, 20, 'It is said that Charizard’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in white-2
  (7, 700, 20, 'It shelters itself in its shell then strikes back with spouts of water at every opportunity.'),
  -- wartortle in white-2
  (8, 800, 20, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in white-2
  (9, 900, 20, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in white-2
  (10, 1000, 20, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in white-2
  (11, 1100, 20, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in white-2
  (12, 1200, 20, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in white-2
  (13, 1300, 20, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in white-2
  (14, 1400, 20, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in white-2
  (15, 1500, 20, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in white-2
  (16, 1600, 20, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in white-2
  (17, 1700, 20, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in white-2
  (18, 1800, 20, 'By flapping its wings with all its might, Pidgeot can make a gust of wind capable of bending tall trees.'),
  -- rattata in white-2
  (19, 1900, 20, 'It searches for food all day. It gnaws on hard objects to wear down its fangs, which grow constantly during its lifetime.'),
  -- raticate in white-2
  (20, 2000, 20, 'With its long fangs, this surprisingly violent Pokémon can gnaw away even thick concrete with ease.'),
  -- spearow in white-2
  (21, 2100, 20, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in white-2
  (22, 2200, 20, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in white-2
  (23, 2300, 20, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in white-2
  (24, 2400, 20, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in white-2
  (25, 2500, 20, 'It occasionally uses an electric shock to recharge a fellow Pikachu that is in a weakened state.'),
  -- raichu in white-2
  (26, 2600, 20, 'Its tail discharges electricity into the ground, protecting it from getting shocked.'),
  -- sandshrew in white-2
  (27, 2700, 20, 'It digs deep burrows to live in. When in danger, it rolls up its body to withstand attacks.'),
  -- sandslash in white-2
  (28, 2800, 20, 'The spikes on its body are made up of its hardened hide. It rolls up and attacks foes with its spikes.'),
  -- nidoran-f in white-2
  (29, 2900, 20, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in white-2
  (30, 3000, 20, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than Nidorino’s.'),
  -- nidoqueen in white-2
  (31, 3100, 20, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in white-2
  (32, 3200, 20, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in white-2
  (33, 3300, 20, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in white-2
  (34, 3400, 20, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in white-2
  (35, 3500, 20, 'On nights with a full moon, Clefairy gather from all over and dance. Bathing in moonlight makes them float.'),
  -- clefable in white-2
  (36, 3600, 20, 'Their ears are sensitive enough to hear a pin drop from over a mile away, so they’re usually found in quiet places.'),
  -- vulpix in white-2
  (37, 3700, 20, 'As each tail grows, its fur becomes more lustrous. When held, it feels slightly warm.'),
  -- ninetales in white-2
  (38, 3800, 20, 'Each of its nine tails is imbued with supernatural power, and it can live for a thousand years.'),
  -- jigglypuff in white-2
  (39, 3900, 20, 'Looking into its cute, round eyes makes it start singing a song so pleasant listeners can’t help but fall asleep.'),
  -- wigglytuff in white-2
  (40, 4000, 20, 'Its fine fur feels so pleasant, those who accidentally touch it cannot take their hands away.'),
  -- zubat in white-2
  (41, 4100, 20, 'It does not need eyes, because it emits ultrasonic waves to check its surroundings while it flies.'),
  -- golbat in white-2
  (42, 4200, 20, 'Flitting around in the dead of night, it sinks its fangs into its prey and drains a nearly fatal amount of blood.'),
  -- oddish in white-2
  (43, 4300, 20, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in white-2
  (44, 4400, 20, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in white-2
  (45, 4500, 20, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in white-2
  (46, 4600, 20, 'Mushrooms named tochukaso grow on its back. They grow along with the host Paras.'),
  -- parasect in white-2
  (47, 4700, 20, 'A mushroom grown larger than the host’s body controls Parasect. It scatters poisonous spores.'),
  -- venonat in white-2
  (48, 4800, 20, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in white-2
  (49, 4900, 20, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in white-2
  (50, 5000, 20, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in white-2
  (51, 5100, 20, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in white-2
  (52, 5200, 20, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in white-2
  (53, 5300, 20, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in white-2
  (54, 5400, 20, 'When headaches stimulate its brain cells, which are usually inactive, it can use a mysterious power.'),
  -- golduck in white-2
  (55, 5500, 20, 'When its forehead shines mysteriously, Golduck can use the full extent of its power.'),
  -- mankey in white-2
  (56, 5600, 20, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in white-2
  (57, 5700, 20, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in white-2
  (58, 5800, 20, 'Extremely loyal to its Trainer, it will bark at those who approach the Trainer unexpectedly and run them out of town.'),
  -- arcanine in white-2
  (59, 5900, 20, 'The sight of it running over 6,200 miles in a single day and night has captivated many people.'),
  -- poliwag in white-2
  (60, 6000, 20, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in white-2
  (61, 6100, 20, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in white-2
  (62, 6200, 20, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in white-2
  (63, 6300, 20, 'Using its psychic power is such a strain on its brain that it needs to sleep for 18 hours a day.'),
  -- kadabra in white-2
  (64, 6400, 20, 'It stares at its silver spoon to focus its mind. It emits more alpha waves while doing so.'),
  -- alakazam in white-2
  (65, 6500, 20, 'The spoons clutched in its hands are said to have been created by its psychic powers.'),
  -- machop in white-2
  (66, 6600, 20, 'Though small in stature, it is powerful enough to easily heft and throw a number of Geodude at once.'),
  -- machoke in white-2
  (67, 6700, 20, 'It happily carries heavy cargo to toughen up. It willingly does hard work for people.'),
  -- machamp in white-2
  (68, 6800, 20, 'Its four muscled arms slam foes with powerful punches and chops at blinding speed.'),
  -- bellsprout in white-2
  (69, 6900, 20, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in white-2
  (70, 7000, 20, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in white-2
  (71, 7100, 20, 'It pools in its mouth a fluid with a honey-like scent, which is really an acid that dissolves anything.'),
  -- tentacool in white-2
  (72, 7200, 20, 'Because its body is almost entirely composed of water, it shrivels up if it is washed ashore.'),
  -- tentacruel in white-2
  (73, 7300, 20, 'It extends its 80 tentacles to form an encircling poisonous net that is difficult to escape.'),
  -- geodude in white-2
  (74, 7400, 20, 'At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily.'),
  -- graveler in white-2
  (75, 7500, 20, 'It rolls on mountain paths to move. Once it builds momentum, no Pokémon can stop it without difficulty.'),
  -- golem in white-2
  (76, 7600, 20, 'Even dynamite can’t harm its hard, boulder-like body. It sheds its hide just once a year.'),
  -- ponyta in white-2
  (77, 7700, 20, 'As a newborn, it can barely stand. However, through galloping, its legs are made tougher and faster.'),
  -- rapidash in white-2
  (78, 7800, 20, 'When at an all-out gallop, its blazing mane sparkles, enhancing its beautiful appearance.'),
  -- slowpoke in white-2
  (79, 7900, 20, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in white-2
  (80, 8000, 20, 'Though usually dim witted, it seems to become inspired if the Shellder on its tail bites down.'),
  -- magnemite in white-2
  (81, 8100, 20, 'The electromagnetic waves emitted by the units at the sides of its head expel antigravity, which allows it to float.'),
  -- magneton in white-2
  (82, 8200, 20, 'The stronger electromagnetic waves from the three linked Magnemite are enough to dry out surrounding moisture.'),
  -- farfetchd in white-2
  (83, 8300, 20, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in white-2
  (84, 8400, 20, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in white-2
  (85, 8500, 20, 'When Doduo evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in white-2
  (86, 8600, 20, 'The colder it gets, the better it feels. It joyfully swims around oceans so cold that they are filled with floating ice.'),
  -- dewgong in white-2
  (87, 8700, 20, 'Its streamlined body has low resistance, and it swims around cold oceans at a speed of eight knots.'),
  -- grimer in white-2
  (88, 8800, 20, 'Born from sludge, these Pokémon now gather in polluted places and increase the bacteria in their bodies.'),
  -- muk in white-2
  (89, 8900, 20, 'It’s so stinky! Muk’s body contains toxic elements, and any plant will wilt when it passes by.'),
  -- shellder in white-2
  (90, 9000, 20, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in white-2
  (91, 9100, 20, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in white-2
  (92, 9200, 20, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in white-2
  (93, 9300, 20, 'It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.'),
  -- gengar in white-2
  (94, 9400, 20, 'The leer that floats in darkness belongs to a Gengar delighting in casting curses on people.'),
  -- onix in white-2
  (95, 9500, 20, 'Opening its large mouth, it ingests massive amounts of soil and creates long tunnels.'),
  -- drowzee in white-2
  (96, 9600, 20, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in white-2
  (97, 9700, 20, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in white-2
  (98, 9800, 20, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in white-2
  (99, 9900, 20, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in white-2
  (100, 10000, 20, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on contact.'),
  -- electrode in white-2
  (101, 10100, 20, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in white-2
  (102, 10200, 20, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in white-2
  (103, 10300, 20, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an Exeggcute.'),
  -- cubone in white-2
  (104, 10400, 20, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in white-2
  (105, 10500, 20, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in white-2
  (106, 10600, 20, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in white-2
  (107, 10700, 20, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in white-2
  (108, 10800, 20, 'Being licked by its long, saliva-covered tongue leaves a tingling sensation. Extending its tongue retracts its tail.'),
  -- koffing in white-2
  (109, 10900, 20, 'Toxic gas is held within its thin, balloon-shaped body, so it can cause massive explosions.'),
  -- weezing in white-2
  (110, 11000, 20, 'Inhaling toxic fumes from trash and mixing them inside its body lets it spread an even fouler stench.'),
  -- rhyhorn in white-2
  (111, 11100, 20, 'Its powerful tackles can destroy anything. However, it is too slow witted to help people work.'),
  -- rhydon in white-2
  (112, 11200, 20, 'Standing on its hind legs freed its forelegs and made it smarter. It is very forgetful, however.'),
  -- chansey in white-2
  (113, 11300, 20, 'A kindly Pokémon that lays highly nutritious eggs and shares them with injured Pokémon or people.'),
  -- tangela in white-2
  (114, 11400, 20, 'Many writhing vines cover it, so its true identity remains unknown. The blue vines grow its whole life long.'),
  -- kangaskhan in white-2
  (115, 11500, 20, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in white-2
  (116, 11600, 20, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in white-2
  (117, 11700, 20, 'Its spines provide protection. Its fins and bones are prized as traditional-medicine ingredients.'),
  -- goldeen in white-2
  (118, 11800, 20, 'Though it appears very elegant when swimming with fins unfurled, it can jab powerfully with its horn.'),
  -- seaking in white-2
  (119, 11900, 20, 'In autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.'),
  -- staryu in white-2
  (120, 12000, 20, 'As long as its red core remains, it can regenerate its body instantly, even if it’s torn apart.'),
  -- starmie in white-2
  (121, 12100, 20, 'Its core shines in many colors and sends radio signals into space to communicate with something.'),
  -- mr-mime in white-2
  (122, 12200, 20, 'It shapes an invisible wall in midair by minutely vibrating its fingertips to stop molecules in the air.'),
  -- scyther in white-2
  (123, 12300, 20, 'The sharp scythes on its forearms become increasingly sharp by cutting through hard objects.'),
  -- jynx in white-2
  (124, 12400, 20, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in white-2
  (125, 12500, 20, 'Research is progressing on storing lightning in Electabuzz so this energy can be used at any time.'),
  -- magmar in white-2
  (126, 12600, 20, 'The scorching fire exhaled by Magmar forms heat waves around its body, making it hard to see the Pokémon clearly.'),
  -- pinsir in white-2
  (127, 12700, 20, 'It grips prey with its powerful pincers and will not let go until the prey is torn in half.'),
  -- tauros in white-2
  (128, 12800, 20, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in white-2
  (129, 12900, 20, 'A Magikarp living for many years can leap a mountain using Splash. The move remains useless, though.'),
  -- gyarados in white-2
  (130, 13000, 20, 'Once it begins to rampage, a Gyarados will burn everything down, even in a harsh storm.'),
  -- lapras in white-2
  (131, 13100, 20, 'Able to understand human speech and very intelligent, it loves to swim in the sea with people on its back.'),
  -- ditto in white-2
  (132, 13200, 20, 'It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.'),
  -- eevee in white-2
  (133, 13300, 20, 'Thanks to its unstable genetic makeup, this special Pokémon conceals many different possible evolutions.'),
  -- vaporeon in white-2
  (134, 13400, 20, 'Its cell composition is similar to water molecules. As a result, it can’t be seen when it melts away into water.'),
  -- jolteon in white-2
  (135, 13500, 20, 'By storing electricity in its body, it can shoot its bristlelike fur like a barrage of missiles.'),
  -- flareon in white-2
  (136, 13600, 20, 'Inhaled air is carried to its flame sac, heated, and exhaled as fire that reaches over 3,000 degrees F.'),
  -- porygon in white-2
  (137, 13700, 20, 'A man-made Pokémon created using advanced scientific means. It can move freely in cyberspace.'),
  -- omanyte in white-2
  (138, 13800, 20, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in white-2
  (139, 13900, 20, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in white-2
  (140, 14000, 20, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in white-2
  (141, 14100, 20, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in white-2
  (142, 14200, 20, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in white-2
  (143, 14300, 20, 'When its belly is full, it becomes too lethargic to even lift a finger, so it is safe to bounce on its belly.'),
  -- articuno in white-2
  (144, 14400, 20, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in white-2
  (145, 14500, 20, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in white-2
  (146, 14600, 20, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in white-2
  (147, 14700, 20, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in white-2
  (148, 14800, 20, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in white-2
  (149, 14900, 20, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in white-2
  (150, 15000, 20, 'A Pokémon created by recombining Mew’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in white-2
  (151, 15100, 20, 'Because it can use all kinds of moves, many scientists believe Mew to be the ancestor of Pokémon.'),
  -- chikorita in white-2
  (152, 15200, 20, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in white-2
  (153, 15300, 20, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in white-2
  (154, 15400, 20, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in white-2
  (155, 15500, 20, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in white-2
  (156, 15600, 20, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in white-2
  (157, 15700, 20, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in white-2
  (158, 15800, 20, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in white-2
  (159, 15900, 20, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in white-2
  (160, 16000, 20, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in white-2
  (161, 16100, 20, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in white-2
  (162, 16200, 20, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in white-2
  (163, 16300, 20, 'It marks time precisely. Some countries consider it to be a wise friend, versed in the world’s ways.'),
  -- noctowl in white-2
  (164, 16400, 20, 'Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.'),
  -- ledyba in white-2
  (165, 16500, 20, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in white-2
  (166, 16600, 20, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in white-2
  (167, 16700, 20, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in white-2
  (168, 16800, 20, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in white-2
  (169, 16900, 20, 'Having four wings allows it to fly more quickly and quietly so it can sneak up on prey without its noticing.'),
  -- chinchou in white-2
  (170, 17000, 20, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in white-2
  (171, 17100, 20, 'Lanturn’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in white-2
  (172, 17200, 20, 'The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked.'),
  -- cleffa in white-2
  (173, 17300, 20, 'According to local rumors, Cleffa are often seen in places where shooting stars have fallen.'),
  -- igglybuff in white-2
  (174, 17400, 20, 'Its body has a faintly sweet scent and is bouncy and soft. If it bounces even once, it cannot stop.'),
  -- togepi in white-2
  (175, 17500, 20, 'It transforms the kindness and joy of others into happiness, which it stores in its shell.'),
  -- togetic in white-2
  (176, 17600, 20, 'To share its happiness, it flies around the world seeking kind- hearted people.'),
  -- natu in white-2
  (177, 17700, 20, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in white-2
  (178, 17800, 20, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in white-2
  (179, 17900, 20, 'When cold weather increases static electricity, its wool doubles in size and the tip of its tail glows slightly.'),
  -- flaaffy in white-2
  (180, 18000, 20, 'Not even downy wool will grow on its rubbery, nonconductive patches of skin that prevent electrical shock.'),
  -- ampharos in white-2
  (181, 18100, 20, 'The tip of its tail shines so brightly it can be used to send sea-navigation beacons to distant foreign shores.'),
  -- bellossom in white-2
  (182, 18200, 20, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in white-2
  (183, 18300, 20, 'The oil-filled tail functions as a buoy, so it’s fine even in rivers with strong currents.'),
  -- azumarill in white-2
  (184, 18400, 20, 'Its long ears are superb sensors. It can distinguish the movements of things in water and tell what they are.'),
  -- sudowoodo in white-2
  (185, 18500, 20, 'To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain.'),
  -- politoed in white-2
  (186, 18600, 20, 'It gathers groups of others as their leader. Its cries make Poliwag obey.'),
  -- hoppip in white-2
  (187, 18700, 20, 'It drifts on winds. It is said that when Hoppip gather in fields and mountains, spring is on the way.'),
  -- skiploom in white-2
  (188, 18800, 20, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in white-2
  (189, 18900, 20, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in white-2
  (190, 19000, 20, 'It lives high among the treetops. It can use its tail as freely and cleverly as its hands.'),
  -- sunkern in white-2
  (191, 19100, 20, 'It suddenly falls out of the sky in the morning. Knowing it’s weak, it simply feeds until it evolves.'),
  -- sunflora in white-2
  (192, 19200, 20, 'Since it converts sunlight into energy, it is always looking in the direction of the sun.'),
  -- yanma in white-2
  (193, 19300, 20, 'By flapping its wings at high speed, it can fly freely through the air. Even sudden stops are no problem.'),
  -- wooper in white-2
  (194, 19400, 20, 'When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.'),
  -- quagsire in white-2
  (195, 19500, 20, 'It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.'),
  -- espeon in white-2
  (196, 19600, 20, 'Its fur is so sensitive, it can feel minute shifts in the air and predict the weather...and its foes’ thoughts.'),
  -- umbreon in white-2
  (197, 19700, 20, 'When exposed to the moon’s aura, the rings on its body glow faintly and it’s filled with a mysterious power.'),
  -- murkrow in white-2
  (198, 19800, 20, 'If spotted, it will lure an unwary person into chasing it then lose the pursuer on mountain trails.'),
  -- slowking in white-2
  (199, 19900, 20, 'Being bitten by Shellder gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in white-2
  (200, 20000, 20, 'A Pokémon that startles people in the middle of the night. It gathers fear as its energy.'),
  -- unown in white-2
  (201, 20100, 20, 'When alone, nothing happens. However, if there are two or more, an odd power is said to emerge.'),
  -- wobbuffet in white-2
  (202, 20200, 20, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in white-2
  (203, 20300, 20, 'The head on its tail contains a small brain. It can instinctively fight even while facing backward.'),
  -- pineco in white-2
  (204, 20400, 20, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in white-2
  (205, 20500, 20, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in white-2
  (206, 20600, 20, 'It creates mazes in dark locations. When spotted, it flees into the ground by digging with its tail.'),
  -- gligar in white-2
  (207, 20700, 20, 'It clamps on to its chosen prey then jabs the stinger on its tail into the prey while it’s stunned with surprise.'),
  -- steelix in white-2
  (208, 20800, 20, 'The iron it ingested with the soil it swallowed transformed its body and made it harder than diamonds.'),
  -- snubbull in white-2
  (209, 20900, 20, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in white-2
  (210, 21000, 20, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in white-2
  (211, 21100, 20, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in white-2
  (212, 21200, 20, 'It raises its pincers with eyelike markings for intimidation. It also swings them down dangerously.'),
  -- shuckle in white-2
  (213, 21300, 20, 'The berries stored in its vaselike shell eventually become a thick, pulpy juice.'),
  -- heracross in white-2
  (214, 21400, 20, 'No matter how heavy its opponents, it flings them far away with its prized horn.'),
  -- sneasel in white-2
  (215, 21500, 20, 'A smart and sneaky Pokémon, it makes its opponents flinch by suddenly showing the claws hidden in its paws.'),
  -- teddiursa in white-2
  (216, 21600, 20, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in white-2
  (217, 21700, 20, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in white-2
  (218, 21800, 20, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in white-2
  (219, 21900, 20, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in white-2
  (220, 22000, 20, 'Rooting the tip of its snout into the ground, it searches for food. Sometimes it even digs up a hot spring.'),
  -- piloswine in white-2
  (221, 22100, 20, 'With its excellent sense of smell, it’s even able to find mushrooms that are buried under frozen ground.'),
  -- corsola in white-2
  (222, 22200, 20, 'They prefer unpolluted southern seas. Their coral branches lose their color and deteriorate in dirty water.'),
  -- remoraid in white-2
  (223, 22300, 20, 'The water they shoot from their mouths can hit moving prey from more than 300 feet away.'),
  -- octillery in white-2
  (224, 22400, 20, 'It has a tendency to want to be in holes. It prefers rock crags or pots and sprays ink from them before attacking.'),
  -- delibird in white-2
  (225, 22500, 20, 'It carries food all day long. When someone is lost in the mountains, it shares that food.'),
  -- mantine in white-2
  (226, 22600, 20, 'If it builds up enough speed swimming, it can fly over 300 feet out of the water from the surface of the ocean.'),
  -- skarmory in white-2
  (227, 22700, 20, 'Its heavy-looking iron body is actually thin and light, so it can fly at speeds over 180 mph.'),
  -- houndour in white-2
  (228, 22800, 20, 'It is smart enough to hunt in packs. It uses a variety of cries for communicating with others.'),
  -- houndoom in white-2
  (229, 22900, 20, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- kingdra in white-2
  (230, 23000, 20, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in white-2
  (231, 23100, 20, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in white-2
  (232, 23200, 20, 'It attacks by curling up then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in white-2
  (233, 23300, 20, 'It was upgraded to enable the exploration of other planets. However, it failed to measure up.'),
  -- stantler in white-2
  (234, 23400, 20, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in white-2
  (235, 23500, 20, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in white-2
  (236, 23600, 20, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in white-2
  (237, 23700, 20, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by 10.'),
  -- smoochum in white-2
  (238, 23800, 20, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in white-2
  (239, 23900, 20, 'Spinning its arms around to generate electricity makes the area between its horns shine light blue.'),
  -- magby in white-2
  (240, 24000, 20, 'It’s small, but its body temperature is over 1,100 degrees F. Embers escape its mouth and nose when it breathes.'),
  -- miltank in white-2
  (241, 24100, 20, 'It is said that kids who drink Miltank’s milk grow up to become hearty, healthy adults.'),
  -- blissey in white-2
  (242, 24200, 20, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- raikou in white-2
  (243, 24300, 20, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in white-2
  (244, 24400, 20, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in white-2
  (245, 24500, 20, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in white-2
  (246, 24600, 20, 'Born deep underground, it comes aboveground and becomes a pupa once it has finished eating the surrounding soil.'),
  -- pupitar in white-2
  (247, 24700, 20, 'This pupa flies around wildly by venting with great force the gas pressurized inside its body.'),
  -- tyranitar in white-2
  (248, 24800, 20, 'The quakes caused when it walks make even great mountains crumble and change the surrounding terrain.'),
  -- lugia in white-2
  (249, 24900, 20, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in white-2
  (250, 25000, 20, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in white-2
  (251, 25100, 20, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in white-2
  (252, 25200, 20, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in white-2
  (253, 25300, 20, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in white-2
  (254, 25400, 20, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in white-2
  (255, 25500, 20, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in white-2
  (256, 25600, 20, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in white-2
  (257, 25700, 20, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in white-2
  (258, 25800, 20, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in white-2
  (259, 25900, 20, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in white-2
  (260, 26000, 20, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in white-2
  (261, 26100, 20, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in white-2
  (262, 26200, 20, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in white-2
  (263, 26300, 20, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in white-2
  (264, 26400, 20, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in white-2
  (265, 26500, 20, 'Often targeted by bird Pokémon, it desperately resists by releasing poison from its tail spikes.'),
  -- silcoon in white-2
  (266, 26600, 20, 'It wraps silk around the branches of a tree. It drinks rainwater on its silk while awaiting evolution.'),
  -- beautifly in white-2
  (267, 26700, 20, 'Despite its looks, it is aggressive. It jabs with its long, thin mouth if disturbed while collecting pollen.'),
  -- cascoon in white-2
  (268, 26800, 20, 'It never forgets any attack it endured while in the cocoon. After evolution, it seeks payback.'),
  -- dustox in white-2
  (269, 26900, 20, 'Toxic powder is scattered with each flap. At night, it is known to strip leaves off trees lining boulevards.'),
  -- lotad in white-2
  (270, 27000, 20, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in white-2
  (271, 27100, 20, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in white-2
  (272, 27200, 20, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in white-2
  (273, 27300, 20, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in white-2
  (274, 27400, 20, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in white-2
  (275, 27500, 20, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in white-2
  (276, 27600, 20, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in white-2
  (277, 27700, 20, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in white-2
  (278, 27800, 20, 'It makes its nest on sheer cliffs. Riding the sea breeze, it glides up into the expansive skies.'),
  -- pelipper in white-2
  (279, 27900, 20, 'Skimming the water’s surface, it dips its large bill in the sea, scoops up food and water, and carries it.'),
  -- ralts in white-2
  (280, 28000, 20, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in white-2
  (281, 28100, 20, 'If its Trainer becomes happy, it overflows with energy, dancing joyously while spinning about.'),
  -- gardevoir in white-2
  (282, 28200, 20, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in white-2
  (283, 28300, 20, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in white-2
  (284, 28400, 20, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in white-2
  (285, 28500, 20, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in white-2
  (286, 28600, 20, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in white-2
  (287, 28700, 20, 'If it eats just three leaves in a day, it is satisfied. Other than that, it sleeps for 20 hours a day.'),
  -- vigoroth in white-2
  (288, 28800, 20, 'Its heartbeat is fast and its blood so agitated that it can’t sit still for one second.'),
  -- slaking in white-2
  (289, 28900, 20, 'This Pokémon lives lying on its side. It only rolls over and moves when there is no more grass to eat.'),
  -- nincada in white-2
  (290, 29000, 20, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in white-2
  (291, 29100, 20, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in white-2
  (292, 29200, 20, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in white-2
  (293, 29300, 20, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in white-2
  (294, 29400, 20, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in white-2
  (295, 29500, 20, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in white-2
  (296, 29600, 20, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in white-2
  (297, 29700, 20, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in white-2
  (298, 29800, 20, 'It swings its large, nutrient-filled tail around to fight opponents bigger than itself.'),
  -- nosepass in white-2
  (299, 29900, 20, 'Its magnetic nose always faces north and draws iron objects to its body to protect itself better.'),
  -- skitty in white-2
  (300, 30000, 20, 'It shows its cute side by chasing its own tail until it gets dizzy.'),
  -- delcatty in white-2
  (301, 30100, 20, 'The reason it does not have a nest is that it simply searches for a clean, comfortable place then sleeps there.'),
  -- sableye in white-2
  (302, 30200, 20, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in white-2
  (303, 30300, 20, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in white-2
  (304, 30400, 20, 'In order to build up its steel body, it eats iron ore. This pesky Pokémon is known to eat railroad tracks.'),
  -- lairon in white-2
  (305, 30500, 20, 'Lairon fight over territory, and when their steel bodies collide, sparks fly.'),
  -- aggron in white-2
  (306, 30600, 20, 'It claims an entire mountain as its own. The more wounds it has, the more it has battled, so don’t take it lightly.'),
  -- meditite in white-2
  (307, 30700, 20, 'It always trains deep in mountains. It levitates when it heightens its spiritual power through meditation.'),
  -- medicham in white-2
  (308, 30800, 20, 'It gains the ability to see the aura of its opponents by honing its mind through starvation.'),
  -- electrike in white-2
  (309, 30900, 20, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in white-2
  (310, 31000, 20, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in white-2
  (311, 31100, 20, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in white-2
  (312, 31200, 20, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in white-2
  (313, 31300, 20, 'It communicates with others by lighting up its rear at night. It loves Illumise’s sweet aroma.'),
  -- illumise in white-2
  (314, 31400, 20, 'With its sweet aroma, it guides Volbeat to draw signs with light in the night sky.'),
  -- roselia in white-2
  (315, 31500, 20, 'It uses the different poisons in each hand separately when it attacks. The stronger its aroma, the healthier it is.'),
  -- gulpin in white-2
  (316, 31600, 20, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in white-2
  (317, 31700, 20, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in white-2
  (318, 31800, 20, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in white-2
  (319, 31900, 20, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in white-2
  (320, 32000, 20, 'It eats one ton of food every day. It plays by shooting stored seawater out its blowholes with great force.'),
  -- wailord in white-2
  (321, 32100, 20, 'It can sometimes knock out opponents with the shock created by breaching and crashing its big body onto the water.'),
  -- numel in white-2
  (322, 32200, 20, 'The magma in its body reaches 2,200 degrees F. Its hump gets smaller when it uses Fire-type moves.'),
  -- camerupt in white-2
  (323, 32300, 20, 'The volcanoes on its back have a major eruption every 10 years--or whenever it becomes really angry.'),
  -- torkoal in white-2
  (324, 32400, 20, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in white-2
  (325, 32500, 20, 'Using its tail like a spring, it keeps its heart beating by bouncing constantly. If it stops, it dies.'),
  -- grumpig in white-2
  (326, 32600, 20, 'It uses black pearls to amplify its psychic power. It does a strange dance to control foes’ minds.'),
  -- spinda in white-2
  (327, 32700, 20, 'No two Spinda have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in white-2
  (328, 32800, 20, 'It makes an inescapable conical pit and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in white-2
  (329, 32900, 20, 'The ultrasonic waves it generates by rubbing its two wings together cause severe headaches.'),
  -- flygon in white-2
  (330, 33000, 20, 'Known as “The Desert Spirit,” this Pokémon hides in the sandstorms it causes by beating its wings.'),
  -- cacnea in white-2
  (331, 33100, 20, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in white-2
  (332, 33200, 20, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in white-2
  (333, 33300, 20, 'For some reason, it likes to land on people’s heads softly and act like it’s a hat.'),
  -- altaria in white-2
  (334, 33400, 20, 'On sunny days, it flies freely through the sky and blends into the clouds. It sings in a beautiful soprano.'),
  -- zangoose in white-2
  (335, 33500, 20, 'It’s Seviper’s archrival. To threaten those it encounters, it fans out the claws on its front paws.'),
  -- seviper in white-2
  (336, 33600, 20, 'Constant polishing makes the edge of the blade on its tail extremely sharp. It’s Zangoose’s archrival.'),
  -- lunatone in white-2
  (337, 33700, 20, 'The phase of the moon apparently has some effect on its power. It’s active on the night of a full moon.'),
  -- solrock in white-2
  (338, 33800, 20, 'Solar energy is the source of its power, so it is strong during the daytime. When it spins, its body shines.'),
  -- barboach in white-2
  (339, 33900, 20, 'Its slimy body is hard to grasp. In one region, it is said to have been born from hardened mud.'),
  -- whiscash in white-2
  (340, 34000, 20, 'It is extremely protective of its territory. If any foe approaches, it attacks using vicious tremors.'),
  -- corphish in white-2
  (341, 34100, 20, 'No matter how dirty the water in the river, it will adapt and thrive. It has a strong will to survive.'),
  -- crawdaunt in white-2
  (342, 34200, 20, 'Loving to battle, this Pokémon pinches all Pokémon that enter its territory with its pincers and throws them out.'),
  -- baltoy in white-2
  (343, 34300, 20, 'Discovered in ancient ruins, it moves by spinning around and forms a group when it finds others.'),
  -- claydol in white-2
  (344, 34400, 20, 'This mysterious Pokémon started life as an ancient clay figurine made over 20,000 years ago.'),
  -- lileep in white-2
  (345, 34500, 20, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in white-2
  (346, 34600, 20, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in white-2
  (347, 34700, 20, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in white-2
  (348, 34800, 20, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in white-2
  (349, 34900, 20, 'It is a shabby and ugly Pokémon. However, it is very hardy and can survive on little water.'),
  -- milotic in white-2
  (350, 35000, 20, 'Its lovely scales are described as rainbow colored. They change color depending on the viewing angle.'),
  -- castform in white-2
  (351, 35100, 20, 'Temperature and weather affect its cellular structure, so this Pokémon changes form according to the weather.'),
  -- kecleon in white-2
  (352, 35200, 20, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in white-2
  (353, 35300, 20, 'It feeds on the dark emotions of sadness and hatred, which make it grow steadily stronger.'),
  -- banette in white-2
  (354, 35400, 20, 'A doll that became a Pokémon over its grudge of being thrown away. It seeks the child who disowned it.'),
  -- duskull in white-2
  (355, 35500, 20, 'It loves the crying of children. It startles bad kids by passing through walls and making them cry.'),
  -- dusclops in white-2
  (356, 35600, 20, 'It seeks drifting will-o’-the-wisps and sucks them into its empty body. What happens inside is a mystery.'),
  -- tropius in white-2
  (357, 35700, 20, 'It flies by flapping its broad leaves and gives the sweet, delicious fruit around its neck to children.'),
  -- chimecho in white-2
  (358, 35800, 20, 'Its cries echo inside its hollow body to emerge as beautiful notes for startling and repelling foes.'),
  -- absol in white-2
  (359, 35900, 20, 'It appears from deep in the mountains to warn people about upcoming disasters it has sensed with its horn.'),
  -- wynaut in white-2
  (360, 36000, 20, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in white-2
  (361, 36100, 20, 'It is said that several Snorunt gather under giant leaves and live together in harmony.'),
  -- glalie in white-2
  (362, 36200, 20, 'It prevents prey from escaping by instantaneously freezing moisture in the air.'),
  -- spheal in white-2
  (363, 36300, 20, 'They can’t swim well yet, and they move much faster by rolling. When they’re happy, they clap fins.'),
  -- sealeo in white-2
  (364, 36400, 20, 'Be it Spheal or Poké Ball, it will spin any round object on its nose with the greatest of ease.'),
  -- walrein in white-2
  (365, 36500, 20, 'Not only does its thick blubber keep it warm, it also protects it from attacks. It shatters ice with its prized tusks.'),
  -- clamperl in white-2
  (366, 36600, 20, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in white-2
  (367, 36700, 20, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in white-2
  (368, 36800, 20, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in white-2
  (369, 36900, 20, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in white-2
  (370, 37000, 20, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in white-2
  (371, 37100, 20, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in white-2
  (372, 37200, 20, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in white-2
  (373, 37300, 20, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in white-2
  (374, 37400, 20, 'Its cells are all magnetic, and it communicates with others by using magnetic pulses.'),
  -- metang in white-2
  (375, 37500, 20, 'It is formed by two Beldum joining together. Its two brains are linked, amplifying its psychic power.'),
  -- metagross in white-2
  (376, 37600, 20, 'With four linked brains, it’s more intelligent than a supercomputer, and it uses calculations to analyze foes.'),
  -- regirock in white-2
  (377, 37700, 20, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in white-2
  (378, 37800, 20, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in white-2
  (379, 37900, 20, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in white-2
  (380, 38000, 20, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in white-2
  (381, 38100, 20, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in white-2
  (382, 38200, 20, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in white-2
  (383, 38300, 20, 'It had been asleep in underground magma ever since it fiercely fought Kyogre long ago.'),
  -- rayquaza in white-2
  (384, 38400, 20, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in white-2
  (385, 38500, 20, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in white-2
  (386, 38600, 20, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in white-2
  (387, 38700, 20, 'The shell on its back is made of soil. On a very healthy Turtwig, the shell should feel moist.'),
  -- grotle in white-2
  (388, 38800, 20, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in white-2
  (389, 38900, 20, 'Some Pokémon are born on a Torterra’s back and spend their entire life there.'),
  -- chimchar in white-2
  (390, 39000, 20, 'It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.'),
  -- monferno in white-2
  (391, 39100, 20, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in white-2
  (392, 39200, 20, 'It uses unique fighting moves with fire on its hands and feet. It will take on any opponent.'),
  -- piplup in white-2
  (393, 39300, 20, 'A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.'),
  -- prinplup in white-2
  (394, 39400, 20, 'Because every Prinplup considers itself to be the most important, they can never form a group.'),
  -- empoleon in white-2
  (395, 39500, 20, 'If anyone were to hurt its pride, it would slash them with wings that can cleave through an ice floe.'),
  -- starly in white-2
  (396, 39600, 20, 'Because they are weak individually, they form groups. However, they bicker if the group grows too big.'),
  -- staravia in white-2
  (397, 39700, 20, 'Recognizing their own weakness, they always live in a group. When alone, a Staravia cries noisily.'),
  -- staraptor in white-2
  (398, 39800, 20, 'It never stops attacking even if it is injured. It fusses over the shape of its comb.'),
  -- bidoof in white-2
  (399, 39900, 20, 'A comparison revealed that Bidoof’s front teeth grow at the same rate as Rattata’s.'),
  -- bibarel in white-2
  (400, 40000, 20, 'A river dammed by Bibarel will never overflow its banks, which is appreciated by people nearby.'),
  -- kricketot in white-2
  (401, 40100, 20, 'Its legs are short. Whenever it stumbles, its stiff antennae clack with a xylophone-like sound.'),
  -- kricketune in white-2
  (402, 40200, 20, 'There is a village that hosts a contest based on the amazingly variable cries of this Pokémon.'),
  -- shinx in white-2
  (403, 40300, 20, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in white-2
  (404, 40400, 20, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in white-2
  (405, 40500, 20, 'It can see clearly through walls to track down its prey and seek its lost young.'),
  -- budew in white-2
  (406, 40600, 20, 'Sensitive to changing temperatures, the bud blooms when it’s warm, releasing toxic pollen.'),
  -- roserade in white-2
  (407, 40700, 20, 'Luring prey with a sweet scent, it uses poison whips on its arms to poison, bind, and finish off the prey.'),
  -- cranidos in white-2
  (408, 40800, 20, 'A lifelong jungle dweller from 100 million years ago, it would snap obstructing trees with head butts.'),
  -- rampardos in white-2
  (409, 40900, 20, 'If two were to smash their heads together, their foot-thick skulls would keep them from fainting.'),
  -- shieldon in white-2
  (410, 41000, 20, 'It is outstandingly armored. As a result, it can eat grass and berries without having to fight.'),
  -- bastiodon in white-2
  (411, 41100, 20, 'When they lined up side by side, no foe could break through. They shielded their young in that way.'),
  -- burmy in white-2
  (412, 41200, 20, 'Even if it is born where there are no cocooning materials, it somehow always ends up with a cloak.'),
  -- wormadam in white-2
  (413, 41300, 20, 'When evolving, its body takes in surrounding materials. As a result, there are many body variations.'),
  -- mothim in white-2
  (414, 41400, 20, 'While it loves floral honey, it won’t gather any itself. Instead, it plots to steal some from Combee.'),
  -- combee in white-2
  (415, 41500, 20, 'This Pokémon is a set of three. When they sleep, they gather up and form a giant hive of 100 Combee.'),
  -- vespiquen in white-2
  (416, 41600, 20, 'It houses its colony in cells in its body and releases various pheromones to make those grubs do its bidding.'),
  -- pachirisu in white-2
  (417, 41700, 20, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in white-2
  (418, 41800, 20, 'It inflates the flotation sac around its neck and pokes its head out of the water to see what is going on.'),
  -- floatzel in white-2
  (419, 41900, 20, 'It is a common sight around fishing ports. It is known to rescue people and carry off prey.'),
  -- cherubi in white-2
  (420, 42000, 20, 'The small ball is not only filled with nutrients, it is also tasty. Starly try to peck it off.'),
  -- cherrim in white-2
  (421, 42100, 20, 'If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body.'),
  -- shellos in white-2
  (422, 42200, 20, 'Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.'),
  -- gastrodon in white-2
  (423, 42300, 20, 'Long ago, its entire back was shielded with a sturdy shell. There are traces of it left in its cells.'),
  -- ambipom in white-2
  (424, 42400, 20, 'Split into two, the tails are so adept at handling and doing things, Ambipom rarely uses its hands.'),
  -- drifloon in white-2
  (425, 42500, 20, 'These Pokémon are called the “Signpost for Wandering Spirits.” Children holding them sometimes vanish.'),
  -- drifblim in white-2
  (426, 42600, 20, 'They carry people and Pokémon, but the wind can catch them, so there can’t be a fixed destination.'),
  -- buneary in white-2
  (427, 42700, 20, 'By extending its rolled-up ears and striking the ground, it can bound so high it surprises itself.'),
  -- lopunny in white-2
  (428, 42800, 20, 'Extremely cautious, it quickly bounds off when it senses danger.'),
  -- mismagius in white-2
  (429, 42900, 20, 'Its cry sounds like an incantation. It is said the cry may rarely be imbued with happiness-giving power.'),
  -- honchkrow in white-2
  (430, 43000, 20, 'If one utters a deep cry, many Murkrow gather quickly. For this, it is called “Summoner of Night.”'),
  -- glameow in white-2
  (431, 43100, 20, 'It hides its spiteful tendency of hooking its claws into the nose of its Trainer if it isn’t fed.'),
  -- purugly in white-2
  (432, 43200, 20, 'It binds its body with its tails to make itself look bigger. If it locks eyes, it will glare ceaselessly.'),
  -- chingling in white-2
  (433, 43300, 20, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in white-2
  (434, 43400, 20, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in white-2
  (435, 43500, 20, 'It attacks by spraying a horribly smelly fluid from the tip of its tail. Attacks from above confound it.'),
  -- bronzor in white-2
  (436, 43600, 20, 'They are found in ancient tombs. The patterns on their backs are said to be imbued with mysterious power.'),
  -- bronzong in white-2
  (437, 43700, 20, 'In ages past, this Pokémon was revered as a bringer of rain. It was found buried in the ground.'),
  -- bonsly in white-2
  (438, 43800, 20, 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.'),
  -- mime-jr in white-2
  (439, 43900, 20, 'It mimics the expressions and motions of those it sees to understand the feelings of others.'),
  -- happiny in white-2
  (440, 44000, 20, 'It likes to carry around a small rock. It may wander around others’ feet and cause them to stumble.'),
  -- chatot in white-2
  (441, 44100, 20, 'Its tongue is just like a human’s. As a result, it can cleverly mimic human speech.'),
  -- spiritomb in white-2
  (442, 44200, 20, 'Its constant mischief and misdeeds resulted in it being bound to an Odd Keystone by a mysterious spell.'),
  -- gible in white-2
  (443, 44300, 20, 'It attacks using its huge mouth. While its attacks are powerful, it hurts itself out of clumsiness, too.'),
  -- gabite in white-2
  (444, 44400, 20, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in white-2
  (445, 44500, 20, 'It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.'),
  -- munchlax in white-2
  (446, 44600, 20, 'In its desperation to gulp down food, it forgets about the food it has hidden under its fur.'),
  -- riolu in white-2
  (447, 44700, 20, 'It uses the shapes of auras, which change according to emotion, to communicate with others.'),
  -- lucario in white-2
  (448, 44800, 20, 'By reading the auras of all things, it can tell how others are feeling from over half a mile away.'),
  -- hippopotas in white-2
  (449, 44900, 20, 'It shuts its nostrils tight then travels through sand as if walking. They form colonies of around 10.'),
  -- hippowdon in white-2
  (450, 45000, 20, 'It is surprisingly quick to anger. It holds its mouth agape as a display of its strength.'),
  -- skorupi in white-2
  (451, 45100, 20, 'It lives in arid regions and can go without food for a year while waiting for prey.'),
  -- drapion in white-2
  (452, 45200, 20, 'It takes pride in its strength. Even though it can tear foes apart, it finishes them off with powerful poison.'),
  -- croagunk in white-2
  (453, 45300, 20, 'Inflating its poison sacs, it fills the area with an odd sound and hits flinching opponents with a poison jab.'),
  -- toxicroak in white-2
  (454, 45400, 20, 'The croaking that Toxicroak produces before a battle is for churning the poison it has stored in its poison sac.'),
  -- carnivine in white-2
  (455, 45500, 20, 'Using its tentacles to lash itself to trees, it lies in wait for prey, luring it close with sweet-smelling drool.'),
  -- finneon in white-2
  (456, 45600, 20, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in white-2
  (457, 45700, 20, 'It crawls along the seafloor using its long front fins like legs. It competes for food with Lanturn.'),
  -- mantyke in white-2
  (458, 45800, 20, 'The pattern on its back varies by region. It often swims in a school of Remoraid.'),
  -- snover in white-2
  (459, 45900, 20, 'Seemingly curious about people, they gather around footsteps they find on snowy mountains.'),
  -- abomasnow in white-2
  (460, 46000, 20, 'They appear when the snow flowers bloom. When the petals fall, they retreat to places unknown again.'),
  -- weavile in white-2
  (461, 46100, 20, 'They communicate by clawing signs in boulders and work together to surround enemies.'),
  -- magnezone in white-2
  (462, 46200, 20, 'Sometimes the magnetism emitted by Magnezone is too strong, making them attract each other so they cannot move.'),
  -- lickilicky in white-2
  (463, 46300, 20, 'Their saliva contains lots of components that can dissolve anything. The numbness caused by their lick does not dissipate.'),
  -- rhyperior in white-2
  (464, 46400, 20, 'It can launch a rock held in its hand like a missile by tightening then expanding muscles instantly.'),
  -- tangrowth in white-2
  (465, 46500, 20, 'Even if one of its arms is eaten, it’s fine. The Pokémon regenerates quickly and will go right back to normal.'),
  -- electivire in white-2
  (466, 46600, 20, 'The instant it presses the tips of its tails onto an opponent, it sends over 20,000 volts of electricity into the foe.'),
  -- magmortar in white-2
  (467, 46700, 20, 'When shooting 3,600 degree F fireballs from its arms, its body takes on a whitish hue from the intense heat.'),
  -- togekiss in white-2
  (468, 46800, 20, 'It shares many blessings with people who respect one another’s rights and avoid needless strife.'),
  -- yanmega in white-2
  (469, 46900, 20, 'It prefers to battle by biting apart foes’ heads instantly while flying by at high speed.'),
  -- leafeon in white-2
  (470, 47000, 20, 'With cells similar to those of plants, it performs photosynthesis inside its body and creates pure air.'),
  -- glaceon in white-2
  (471, 47100, 20, 'It lowers its body heat to freeze its fur. The hairs then become like needles it can fire.'),
  -- gliscor in white-2
  (472, 47200, 20, 'It dances silently through the sky. When it approaches prey, it can land a critical hit in an instant.'),
  -- mamoswine in white-2
  (473, 47300, 20, 'When the temperature rose at the end of the ice age, most Mamoswine disappeared.'),
  -- porygon-z in white-2
  (474, 47400, 20, 'Its programming was modified to enable work in alien dimensions. It did not work as planned.'),
  -- gallade in white-2
  (475, 47500, 20, 'When trying to protect someone, it extends its elbows as if they were swords and fights savagely.'),
  -- probopass in white-2
  (476, 47600, 20, 'It freely controls three units called Mini-Noses using magnetic force.'),
  -- dusknoir in white-2
  (477, 47700, 20, 'It is said to take lost spirits into its pliant body and guide them home.'),
  -- froslass in white-2
  (478, 47800, 20, 'It freezes prey by blowing its -58 degrees F breath. It is said to then secretly display its prey.'),
  -- rotom in white-2
  (479, 47900, 20, 'Its electric-like body can enter some kinds of machines and take control in order to make mischief.'),
  -- uxie in white-2
  (480, 48000, 20, 'When Uxie flew, people gained the ability to solve problems. It was the birth of knowledge.'),
  -- mesprit in white-2
  (481, 48100, 20, 'When Mesprit flew, people learned the joy and sadness of living. It was the birth of emotions.'),
  -- azelf in white-2
  (482, 48200, 20, 'When Azelf flew, people gained the determination to do things. It was the birth of willpower.'),
  -- dialga in white-2
  (483, 48300, 20, 'A legendary Pokémon of Sinnoh. It is said that time flows when Dialga’s heart beats.'),
  -- palkia in white-2
  (484, 48400, 20, 'A legendary Pokémon of Sinnoh. It is said that space becomes more stable with Palkia’s every breath.'),
  -- heatran in white-2
  (485, 48500, 20, 'Its body is made of rugged steel. However, it is partially melted in spots because of its own heat.'),
  -- regigigas in white-2
  (486, 48600, 20, 'It is said to have made Pokémon that look like itself from a special ice mountain, rocks, and magma.'),
  -- giratina in white-2
  (487, 48700, 20, 'It was banished for its violence. It silently gazed upon the old world from the Distortion World.'),
  -- cresselia in white-2
  (488, 48800, 20, 'On nights around the quarter moon, the aurora from its tail extends and undulates beautifully.'),
  -- phione in white-2
  (489, 48900, 20, 'It drifts in warm seas. It always returns to where it was born, no matter how far it may have drifted.'),
  -- manaphy in white-2
  (490, 49000, 20, 'It is born with a wondrous power that lets it bond with any kind of Pokémon.'),
  -- darkrai in white-2
  (491, 49100, 20, 'To protect itself, it afflicts those around it with nightmares. However, it means no harm.'),
  -- shaymin in white-2
  (492, 49200, 20, 'The flowers all over its body burst into bloom if it is lovingly hugged and senses gratitude.'),
  -- arceus in white-2
  (493, 49300, 20, 'It is said to have emerged from an egg in a place where there was nothing then shaped the world.'),
  -- victini in white-2
  (494, 49400, 20, 'When it shares the infinite energy it creates, that being’s entire body will be overflowing with power.'),
  -- snivy in white-2
  (495, 49500, 20, 'Being exposed to sunlight makes its movements swifter. It uses vines more adeptly than its hands.'),
  -- servine in white-2
  (496, 49600, 20, 'When it gets dirty, its leaves can’t be used in photosynthesis, so it always keeps itself clean.'),
  -- serperior in white-2
  (497, 49700, 20, 'It only gives its all against strong opponents who are not fazed by the glare from Serperior’s noble eyes.'),
  -- tepig in white-2
  (498, 49800, 20, 'It loves to eat roasted berries, but sometimes it gets too excited and burns them to a crisp.'),
  -- pignite in white-2
  (499, 49900, 20, 'The more it eats, the more fuel it has to make the fire in its stomach stronger. This fills it with even more power.'),
  -- emboar in white-2
  (500, 50000, 20, 'A flaring beard of fire is proof that it is fired up. It is adept at using many different moves.'),
  -- oshawott in white-2
  (501, 50100, 20, 'The scalchop on its stomach isn’t just used for battle--it can be used to break open hard berries as well.'),
  -- dewott in white-2
  (502, 50200, 20, 'As a result of strict training, each Dewott learns different forms for using the scalchops.'),
  -- samurott in white-2
  (503, 50300, 20, 'In the time it takes a foe to blink, it can draw and sheathe the seamitars attached to its front legs.'),
  -- patrat in white-2
  (504, 50400, 20, 'Extremely cautious, one of them will always be on the lookout, but it won’t notice a foe coming from behind.'),
  -- watchog in white-2
  (505, 50500, 20, 'Using luminescent matter, it makes its eyes and body glow and stuns attacking opponents.'),
  -- lillipup in white-2
  (506, 50600, 20, 'Though it is a very brave Pokémon, it’s also smart enough to check its foe’s strength and avoid battle.'),
  -- herdier in white-2
  (507, 50700, 20, 'This very loyal Pokémon helps Trainers, and it also takes care of other Pokémon.'),
  -- stoutland in white-2
  (508, 50800, 20, 'Being wrapped in its long fur is so comfortable that a person would be fine even overnight on a wintry mountain.'),
  -- purrloin in white-2
  (509, 50900, 20, 'Their cute act is a ruse. They trick people and steal their valuables just to see the looks on their faces.'),
  -- liepard in white-2
  (510, 51000, 20, 'Their beautiful form comes from the muscles they have developed. They run silently in the night.'),
  -- pansage in white-2
  (511, 51100, 20, 'It’s good at finding berries and gathers them from all over. It’s kind enough to share them with friends.'),
  -- simisage in white-2
  (512, 51200, 20, 'It strikes its enemies with a thorn-covered tail. The leaf on its head is bitter.'),
  -- pansear in white-2
  (513, 51300, 20, 'Very intelligent, it roasts berries before eating them. It likes to help people.'),
  -- simisear in white-2
  (514, 51400, 20, 'When it gets excited, embers rise from its head and tail and it gets hot. For some reason, it loves sweets.'),
  -- panpour in white-2
  (515, 51500, 20, 'The water stored inside the tuft on its head is full of nutrients. It waters plants with it using its tail.'),
  -- simipour in white-2
  (516, 51600, 20, 'It prefers places with clean water. When its tuft runs low, it replenishes it by siphoning up water with its tail.'),
  -- munna in white-2
  (517, 51700, 20, 'This Pokémon appears before people and Pokémon who are having nightmares and eats those dreams.'),
  -- musharna in white-2
  (518, 51800, 20, 'The dream mist coming from its forehead changes into many different colors depending on the dream that was eaten.'),
  -- pidove in white-2
  (519, 51900, 20, 'This very forgetful Pokémon will wait for a new order from its Trainer even though it already has one.'),
  -- tranquill in white-2
  (520, 52000, 20, 'No matter where in the world it goes, it knows where its nest is, so it never gets separated from its Trainer.'),
  -- unfezant in white-2
  (521, 52100, 20, 'Males swing the plumage on their heads to threaten others, but females are better at flying.'),
  -- blitzle in white-2
  (522, 52200, 20, 'Its mane shines when it discharges electricity. They use the frequency and rhythm of these flashes to communicate.'),
  -- zebstrika in white-2
  (523, 52300, 20, 'When this ill-tempered Pokémon runs wild, it shoots lightning from its mane in all directions.'),
  -- roggenrola in white-2
  (524, 52400, 20, 'The hexagonal-shaped hole is its ear. It has a tendency to walk in the direction the sound is coming from.'),
  -- boldore in white-2
  (525, 52500, 20, 'When it is healthy, its core sticks out. Always facing the same way, it swiftly moves front to back and left to right.'),
  -- gigalith in white-2
  (526, 52600, 20, 'The solar rays it absorbs are processed in its energy core and fired as a ball of light.'),
  -- woobat in white-2
  (527, 52700, 20, 'The heart-shaped mark left on a body after a Woobat has been attached to it is said to bring good fortune.'),
  -- swoobat in white-2
  (528, 52800, 20, 'It shakes its tail vigorously when it emits ultrasonic waves strong enough to reduce concrete to rubble.'),
  -- drilbur in white-2
  (529, 52900, 20, 'By spinning its body, it can dig straight through the ground at a speed of 30 mph.'),
  -- excadrill in white-2
  (530, 53000, 20, 'Forming a drill with its steel claws and head, it can bore through a steel plate, no matter how thick it is.'),
  -- audino in white-2
  (531, 53100, 20, 'Using the feelers on its ears, it can tell how someone is feeling or when an egg might hatch.'),
  -- timburr in white-2
  (532, 53200, 20, 'Always carrying squared logs, they help out with construction. As they grow, they carry bigger logs.'),
  -- gurdurr in white-2
  (533, 53300, 20, 'With strengthened bodies, they skillfully wield steel beams to take down buildings.'),
  -- conkeldurr in white-2
  (534, 53400, 20, 'Rather than rely on force, they master moves that utilize the centrifugal force of spinning concrete.'),
  -- tympole in white-2
  (535, 53500, 20, 'By vibrating its cheeks, it emits sound waves imperceptible to humans and warns others of danger.'),
  -- palpitoad in white-2
  (536, 53600, 20, 'It lives in the water and on land. It uses its long, sticky tongue to immobilize its opponents.'),
  -- seismitoad in white-2
  (537, 53700, 20, 'By putting power into its bumps, it creates vibrations and increases the power of its punches.'),
  -- throh in white-2
  (538, 53800, 20, 'When it encounters a foe bigger than itself, it wants to throw it. It changes belts as it gets stronger.'),
  -- sawk in white-2
  (539, 53900, 20, 'Desiring the strongest karate chop, they seclude themselves in mountains and train without sleeping.'),
  -- sewaddle in white-2
  (540, 54000, 20, 'Since this Pokémon makes its own clothes out of leaves, it is a popular mascot for fashion designers.'),
  -- swadloon in white-2
  (541, 54100, 20, 'Preferring dark, damp places, it spends the entire day eating fallen leaves that lie around it.'),
  -- leavanny in white-2
  (542, 54200, 20, 'Upon finding a small Pokémon, it weaves clothing for it from leaves by using the sticky silk secreted from its mouth.'),
  -- venipede in white-2
  (543, 54300, 20, 'Using the feelers on its head and tail, it picks up vibrations in the air to determine its prey’s location and state.'),
  -- whirlipede in white-2
  (544, 54400, 20, 'Storing energy for evolution, it sits. But, when predators approach, it moves to stab them with poison spikes.'),
  -- scolipede in white-2
  (545, 54500, 20, 'It clasps its prey with the claws on its neck until it stops moving. Then it finishes it off with deadly poison.'),
  -- cottonee in white-2
  (546, 54600, 20, 'Perhaps because they feel more at ease in a group, they stick to others they find. They end up looking like a cloud.'),
  -- whimsicott in white-2
  (547, 54700, 20, 'They appear along with whirlwinds. They pull pranks, such as moving furniture and leaving balls of cotton in homes.'),
  -- petilil in white-2
  (548, 54800, 20, 'The leaves on its head grow right back even if they fall out. These bitter leaves refresh those who eat them.'),
  -- lilligant in white-2
  (549, 54900, 20, 'The fragrance of the garland on its head has a relaxing effect, but taking care of it is very difficult.'),
  -- basculin in white-2
  (550, 55000, 20, 'Red- and blue-striped Basculin are very violent and always fighting. They are also remarkably tasty.'),
  -- sandile in white-2
  (551, 55100, 20, 'They live hidden under hot desert sands in order to keep their body temperature from dropping.'),
  -- krokorok in white-2
  (552, 55200, 20, 'Protected by thin membranes, their eyes can see even in the dead of night. They live in groups of a few individuals.'),
  -- krookodile in white-2
  (553, 55300, 20, 'Very violent Pokémon, they try to clamp down on anything that moves in front of their eyes.'),
  -- darumaka in white-2
  (554, 55400, 20, 'When it sleeps, it pulls its limbs into its body and its internal fire goes down to 1,100° F.'),
  -- darmanitan in white-2
  (555, 55500, 20, 'When one is injured in a fierce battle, it hardens into a stone-like form. Then it meditates and sharpens its mind.'),
  -- maractus in white-2
  (556, 55600, 20, 'When it moves rhythmically, it makes a sound similar to maracas, making the surprised Pokémon flee.'),
  -- dwebble in white-2
  (557, 55700, 20, 'When it finds a stone of a suitable size, it secretes a liquid from its mouth to open up a hole to crawl into.'),
  -- crustle in white-2
  (558, 55800, 20, 'When its boulder is broken in battles for territory, it feels unsure and begins to weaken.'),
  -- scraggy in white-2
  (559, 55900, 20, 'Proud of its sturdy skull, it suddenly headbutts everything, but its weight makes it unstable, too.'),
  -- scrafty in white-2
  (560, 56000, 20, 'It pulls up its shed skin to protect itself while it kicks. The bigger the crest, the more respected it is.'),
  -- sigilyph in white-2
  (561, 56100, 20, 'The guardians of an ancient city, they always fly the same route while keeping watch for invaders.'),
  -- yamask in white-2
  (562, 56200, 20, 'These Pokémon arose from the spirits of people interred in graves. Each retains memories of its former life.'),
  -- cofagrigus in white-2
  (563, 56300, 20, 'Grave robbers who mistake them for real coffins and get too close end up trapped inside their bodies.'),
  -- tirtouga in white-2
  (564, 56400, 20, 'This Pokémon was restored from a fossil. It swam skillfully and dove to depths beyond half a mile.'),
  -- carracosta in white-2
  (565, 56500, 20, 'It could knock out a foe with a slap from one of its developed front appendages and chew it up, shell or bones and all.'),
  -- archen in white-2
  (566, 56600, 20, 'It was revived from an ancient fossil. Not able to fly, it lived in treetops and hopped from one branch to another.'),
  -- archeops in white-2
  (567, 56700, 20, 'It runs better than it flies. It takes off into the sky by running at a speed of 25 mph.'),
  -- trubbish in white-2
  (568, 56800, 20, 'Wanting more garbage, they follow people who litter. They always belch poison gas.'),
  -- garbodor in white-2
  (569, 56900, 20, 'Consuming garbage makes new kinds of poison gases and liquids inside their bodies.'),
  -- zorua in white-2
  (570, 57000, 20, 'It changes so it looks just like its foe, tricks it, and then uses that opportunity to flee.'),
  -- zoroark in white-2
  (571, 57100, 20, 'Stories say those who tried to catch Zoroark were trapped in an illusion and punished.'),
  -- minccino in white-2
  (572, 57200, 20, 'Minccino greet each other by grooming one another thoroughly with their tails.'),
  -- cinccino in white-2
  (573, 57300, 20, 'Cinccino’s body is coated in a special oil that helps it deflect attacks, such as punches.'),
  -- gothita in white-2
  (574, 57400, 20, 'It stares intently at everything. It can become so obsessed with watching that it doesn’t notice attacks.'),
  -- gothorita in white-2
  (575, 57500, 20, 'According to many old tales, it creates friends for itself by controlling sleeping children on starry nights.'),
  -- gothitelle in white-2
  (576, 57600, 20, 'It can see the future from the movement of the stars. When it learns its Trainer’s life span, it cries in sadness.'),
  -- solosis in white-2
  (577, 57700, 20, 'Because their bodies are enveloped in a special liquid, they are fine in any environment, no matter how severe.'),
  -- duosion in white-2
  (578, 57800, 20, 'When their two divided brains think the same thoughts, their psychic power is maximized.'),
  -- reuniclus in white-2
  (579, 57900, 20, 'They use psychic power to control their arms, which are made of a special liquid. They can crush boulders psychically.'),
  -- ducklett in white-2
  (580, 58000, 20, 'They are better at swimming than flying, and they happily eat their favorite food, peat moss, as they dive underwater.'),
  -- swanna in white-2
  (581, 58100, 20, 'Despite their elegant appearance, they can flap their wings strongly and fly for thousands of miles.'),
  -- vanillite in white-2
  (582, 58200, 20, 'Theoretically, this Pokémon formed from icicles bathed in energy from the morning sun. Their breath is -58° F.'),
  -- vanillish in white-2
  (583, 58300, 20, 'They cool down the surrounding air and create ice particles, which they use to freeze their foes.'),
  -- vanilluxe in white-2
  (584, 58400, 20, 'Swallowing large amounts of water, they make snow clouds inside their bodies and, when angry, cause violent blizzards.'),
  -- deerling in white-2
  (585, 58500, 20, 'Their coloring changes according to the seasons and can be slightly affected by the temperature and humidity as well.'),
  -- sawsbuck in white-2
  (586, 58600, 20, 'They migrate according to the seasons, so some people call Sawsbuck the harbingers of spring.'),
  -- emolga in white-2
  (587, 58700, 20, 'It glides on its outstretched membrane while shocking foes with the electricity stored in the pouches on its cheeks.'),
  -- karrablast in white-2
  (588, 58800, 20, 'For some reason they evolve when they receive electrical energy while they are attacking Shelmet.'),
  -- escavalier in white-2
  (589, 58900, 20, 'Wearing the shell covering they stole from Shelmet, they defend themselves and attack with two lances.'),
  -- foongus in white-2
  (590, 59000, 20, 'It lures Pokémon with its pattern that looks just like a Poké Ball then releases poison spores.'),
  -- amoonguss in white-2
  (591, 59100, 20, 'It moves the caps on both arms and does a dance to lure prey. It prefers damp places.'),
  -- frillish in white-2
  (592, 59200, 20, 'If its veil-like arms stun and wrap a foe, that foe will be dragged miles below the surface, never to return.'),
  -- jellicent in white-2
  (593, 59300, 20, 'Its body is mostly seawater. It’s said there’s a castle of ships Jellicent have sunk on the seafloor.'),
  -- alomomola in white-2
  (594, 59400, 20, 'It gently holds injured and weak Pokémon in its fins. Its special membrane heals their wounds.'),
  -- joltik in white-2
  (595, 59500, 20, 'Since it can’t generate its own electricity, it sticks onto large-bodied Pokémon and absorbs static electricity.'),
  -- galvantula in white-2
  (596, 59600, 20, 'It creates barriers from electrified silk that stun foes. This works as a weapon as well as a defense.'),
  -- ferroseed in white-2
  (597, 59700, 20, 'It absorbs the iron it finds in the rock while clinging to the ceiling. It shoots spikes when in danger.'),
  -- ferrothorn in white-2
  (598, 59800, 20, 'By swinging around its three spiky feelers and shooting spikes, it can obliterate an opponent.'),
  -- klink in white-2
  (599, 59900, 20, 'Two bodies comprise a fixed pair. They spin around each other to generate energy.'),
  -- klang in white-2
  (600, 60000, 20, 'A minigear and big gear comprise its body. If the minigear it launches at a foe doesn’t return, it will die.'),
  -- klinklang in white-2
  (601, 60100, 20, 'The minigear spins at high speed. Then the energy from the red core charges the minigear to make it ready to fire.'),
  -- tynamo in white-2
  (602, 60200, 20, 'One alone can emit only a trickle of electricity, so a group of them gathers to unleash a powerful electric shock.'),
  -- eelektrik in white-2
  (603, 60300, 20, 'It wraps itself around its prey and paralyzes it with electricity from the round spots on its sides. Then it chomps.'),
  -- eelektross in white-2
  (604, 60400, 20, 'It latches on to prey with its sucker mouth, sinking in its fangs and shocking the prey with powerful electricity.'),
  -- elgyem in white-2
  (605, 60500, 20, 'Rumors of its origin are linked to a UFO crash site in the desert 50 years ago.'),
  -- beheeyem in white-2
  (606, 60600, 20, 'Apparently, it communicates by flashing its three fingers, but those patterns haven’t been decoded.'),
  -- litwick in white-2
  (607, 60700, 20, 'Its flame is usually out, but it starts shining when it absorbs life force from people or Pokémon.'),
  -- lampent in white-2
  (608, 60800, 20, 'The spirits it absorbs fuel its baleful fire. It hangs around hospitals waiting for people to pass on.'),
  -- chandelure in white-2
  (609, 60900, 20, 'The spirits burned up in its ominous flame lose their way and wander this world forever.'),
  -- axew in white-2
  (610, 61000, 20, 'Its large tusks have a tendency to break, but each time they grow back, they grow in harder and sturdier.'),
  -- fraxure in white-2
  (611, 61100, 20, 'A broken tusk will not grow back, so it diligently sharpens its tusks on river rocks after the end of a battle.'),
  -- haxorus in white-2
  (612, 61200, 20, 'Its tusks are incredibly destructive. They can easily slice through a thick, sturdy steel column every time.'),
  -- cubchoo in white-2
  (613, 61300, 20, 'Their snot is a barometer of health. When healthy, their snot is sticky and the power of their ice moves increases.'),
  -- beartic in white-2
  (614, 61400, 20, 'They love the cold seas of the north. They create pathways across the ocean waters by freezing their own breath.'),
  -- cryogonal in white-2
  (615, 61500, 20, 'They are composed of ice crystals. They capture prey with chains of ice, freezing the prey at -148° F.'),
  -- shelmet in white-2
  (616, 61600, 20, 'When it and Karrablast are together, and both receive electrical stimulation, they both evolve.'),
  -- accelgor in white-2
  (617, 61700, 20, 'When its body dries out, it weakens. So it wraps a membrane around itself for protection while it spits poison.'),
  -- stunfisk in white-2
  (618, 61800, 20, 'When its opponent can’t be paralyzed, it contorts itself with unexpected speed and flops away.'),
  -- mienfoo in white-2
  (619, 61900, 20, 'It takes pride in the speed at which it can use moves. What it loses in power, it makes up for in quantity.'),
  -- mienshao in white-2
  (620, 62000, 20, 'Using the long fur on its arms like whips, it launches into combo attacks that, once started, no one can stop.'),
  -- druddigon in white-2
  (621, 62100, 20, 'It runs through the narrow tunnels formed by Excadrill and Onix. It uses its sharp claws to catch prey.'),
  -- golett in white-2
  (622, 62200, 20, 'Ancient science fashioned this Pokémon from clay. It’s been active for thousands of years.'),
  -- golurk in white-2
  (623, 62300, 20, 'Golurk were created to protect people and Pokémon. They run on a mysterious energy.'),
  -- pawniard in white-2
  (624, 62400, 20, 'Ignoring their injuries, groups attack by sinking the blades that cover their bodies into their prey.'),
  -- bisharp in white-2
  (625, 62500, 20, 'This pitiless Pokémon commands a group of Pawniard to hound prey into immobility. It then moves in to finish the prey off.'),
  -- bouffalant in white-2
  (626, 62600, 20, 'They are known to charge so wildly that if a train were to enter their territory, they would send it flying.'),
  -- rufflet in white-2
  (627, 62700, 20, 'It stands up to massive opponents, not out of courage, but out of recklessness. But that is how it gets stronger.'),
  -- braviary in white-2
  (628, 62800, 20, 'For the sake of its friends, this brave warrior of the sky will not stop battling, even if injured.'),
  -- vullaby in white-2
  (629, 62900, 20, 'Their wings are too tiny to allow them to fly. They guard their posteriors with bones that were gathered by Mandibuzz.'),
  -- mandibuzz in white-2
  (630, 63000, 20, 'They fly in circles around the sky. When they spot prey, they attack and carry it back to their nest with ease.'),
  -- heatmor in white-2
  (631, 63100, 20, 'It draws in air through its tail, transforms it into fire, and uses it like a tongue. It melts Durant and eats them.'),
  -- durant in white-2
  (632, 63200, 20, 'Individuals each play different roles in driving Heatmor, their natural predator, away from their colony.'),
  -- deino in white-2
  (633, 63300, 20, 'Lacking sight, it’s unaware of its surroundings, so it bumps into things and eats anything that moves.'),
  -- zweilous in white-2
  (634, 63400, 20, 'The two heads do not get along. Whichever head eats more than the other gets to be the leader.'),
  -- hydreigon in white-2
  (635, 63500, 20, 'It responds to movement by attacking. This scary, three-headed Pokémon devours everything in its path!'),
  -- larvesta in white-2
  (636, 63600, 20, 'Said to have been born from the sun, it spews fire from its horns and encases itself in a cocoon of fire when it evolves.'),
  -- volcarona in white-2
  (637, 63700, 20, 'Thought to be an embodiment of the sun, it appeared during a bitterly cold winter and saved Pokémon from freezing.'),
  -- cobalion in white-2
  (638, 63800, 20, 'It has a body and heart of steel. It worked with its allies to punish people when they hurt Pokémon.'),
  -- terrakion in white-2
  (639, 63900, 20, 'Spoken of in legend, this Pokémon used its phenomenal power to destroy a castle in its effort to protect Pokémon.'),
  -- virizion in white-2
  (640, 64000, 20, 'Legends say this Pokémon confounded opponents with its swift movements.'),
  -- tornadus in white-2
  (641, 64100, 20, 'In every direction it flies, creating winds so powerful, they blow everything away.'),
  -- thundurus in white-2
  (642, 64200, 20, 'As it flies around, it shoots lightning all over the place and causes forest fires. It is therefore disliked.'),
  -- reshiram in white-2
  (643, 64300, 20, 'This legendary Pokémon can scorch the world with fire. It helps those who want to build a world of truth.'),
  -- zekrom in white-2
  (644, 64400, 20, 'This legendary Pokémon can scorch the world with lightning. It assists those who want to build an ideal world.'),
  -- landorus in white-2
  (645, 64500, 20, 'From the forces of lightning and wind, it creates energy to give nutrients to the soil and make the land abundant.'),
  -- kyurem in white-2
  (646, 64600, 20, 'This legendary ice Pokémon waits for a hero to fill in the missing parts of its body with truth or ideals.'),
  -- keldeo in white-2
  (647, 64700, 20, 'When it is resolute, its body fills with power and it becomes swifter. Its jumps are then too fast to follow.'),
  -- meloetta in white-2
  (648, 64800, 20, 'The melodies sung by Meloetta have the power to make Pokémon that hear them happy or sad.'),
  -- genesect in white-2
  (649, 64900, 20, 'This Pokémon existed 300 million years ago. Team Plasma altered it and attached a cannon to its back.');
