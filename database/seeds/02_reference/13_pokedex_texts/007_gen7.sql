-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 7 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- caterpie in sun
  (10, 1000, 25, 'When attacked by bird Pokémon, it resists by releasing a terrifically strong odor from its antennae, but it often becomes their prey.'),
  -- metapod in sun
  (11, 1100, 25, 'Its shell is filled with its soft innards. It doesn’t move much because of the risk it might carelessly spill its innards out.'),
  -- butterfree in sun
  (12, 1200, 25, 'Close examination of its large eyes reveals that each eye is composed of a myriad of tiny eyes.'),
  -- rattata in sun
  (19, 1900, 25, 'Its incisors continue growing until its death. If its Trainer doesn’t offer it a file to gnaw on, it will gnaw on door frames, table legs, and so on.'),
  -- alolan-rattata in sun
  (19, 1901, 25, 'With its incisors, it gnaws through doors and infiltrates people’s homes. Then, with a twitch of its whiskers, it steals whatever food it finds.'),
  -- raticate in sun
  (20, 2000, 25, 'Its hind feet are webbed, so it’s a strong swimmer. It can cross rivers and sometimes even oceans.'),
  -- alolan-raticate in sun
  (20, 2001, 25, 'It forms a group of Rattata, which it assumes command of. Each group has its own territory, and disputes over food happen often.'),
  -- spearow in sun
  (21, 2100, 25, 'Its short wings make it inept at flying. It moves about hurriedly and pecks at Bug-type Pokémon in the tall grass.'),
  -- fearow in sun
  (22, 2200, 25, 'It’s tough and has excellent stamina. It has no problem flying continuously for a whole day carrying a heavy load.'),
  -- pikachu in sun
  (25, 2500, 25, 'A plan was recently announced to gather many Pikachu and make an electric power plant.'),
  -- pikachu-original-cap in sun
  (25, 2503, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-hoenn-cap in sun
  (25, 2504, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-sinnoh-cap in sun
  (25, 2505, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-unova-cap in sun
  (25, 2506, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-kalos-cap in sun
  (25, 2507, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-alola-cap in sun
  (25, 2508, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-partner-cap in sun
  (25, 2509, 25, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- raichu in sun
  (26, 2600, 25, 'It unleashes electric shocks that can reach 100,000 volts. When agitated, it can knock out even an Indian elephant.'),
  -- alolan-raichu in sun
  (26, 2601, 25, 'It only evolves to this form in the Alola region. According to researchers, its diet is one of the causes of this change.'),
  -- sandshrew in sun
  (27, 2700, 25, 'It can roll its body into a ball. It moves through the desert by rolling at high speeds.'),
  -- alolan-sandshrew in sun
  (27, 2701, 25, 'It lives on snowy mountains. Its steel shell is very hard—so much so, it can’t roll its body up into a ball.'),
  -- sandslash in sun
  (28, 2800, 25, 'Although they are sharp, its claws and spikes often break off. They grow back the next day, so it is not bothered by the temporary loss.'),
  -- alolan-sandslash in sun
  (28, 2801, 25, 'Fleeing a volcanic eruption, it settled on a snowy mountain. As it races through the snowfields, it sends up a spray of snow.'),
  -- clefairy in sun
  (35, 3500, 25, 'Its adorable behavior and appearance make it popular with men and women, young and old. Its numbers are few, however.'),
  -- clefable in sun
  (36, 3600, 25, 'They don’t like to reveal themselves in front of people. They live quietly in packs deep in the mountains.'),
  -- vulpix in sun
  (37, 3700, 25, 'Its beautiful fur and tails have made it very popular. As it grows, its tails split to form more tails.'),
  -- alolan-vulpix in sun
  (37, 3701, 25, 'It exhales air colder than -58 degrees Fahrenheit. Elderly people in Alola call this Pokémon by an older name—Keokeo.'),
  -- ninetales in sun
  (38, 3800, 25, 'Legend has it that this mystical Pokémon was formed when nine saints coalesced into one.'),
  -- alolan-ninetales in sun
  (38, 3801, 25, 'It creates drops of ice in its coat and showers them over its enemies. Anyone who angers it will be frozen stiff in an instant.'),
  -- jigglypuff in sun
  (39, 3900, 25, 'It hugely inflates its stomach and sings a mysterious melody. If you hear this melody, you’ll become sleepy right away.'),
  -- wigglytuff in sun
  (40, 4000, 25, 'It sheds its fine fur when the seasons change. The fur is gathered and spun into a luxurious yarn.'),
  -- zubat in sun
  (41, 4100, 25, 'It sleeps in caves during the day. It has no eyes, so to check its surroundings while flying, it emits ultrasonic waves.'),
  -- golbat in sun
  (42, 4200, 25, 'Its thick fangs are hollow like straws, making them unexpectedly fragile. These fangs are specialized for sucking blood.'),
  -- paras in sun
  (46, 4600, 25, 'No matter how much it eats, the mushrooms growing on its back steal away most of the nutrients it consumes.'),
  -- parasect in sun
  (47, 4700, 25, 'The large mushroom on its back controls it. It often fights over territory with Shiinotic.'),
  -- diglett in sun
  (50, 5000, 25, 'It chews on plant roots underground. Farmers whose vegetables are vulnerable find it can be quite a pest.'),
  -- alolan-diglett in sun
  (50, 5001, 25, 'Its head sports an altered form of whiskers made of metal. When in communication with its comrades, its whiskers wobble to and fro.'),
  -- dugtrio in sun
  (51, 5100, 25, 'This set of triplets moves cooperatively. It’s the power of teamwork that enables this Pokémon to dig to a depth of 60 miles.'),
  -- alolan-dugtrio in sun
  (51, 5101, 25, 'Its shining gold hair provides it with protection. It’s reputed that keeping any of its fallen hairs will bring bad luck.'),
  -- meowth in sun
  (52, 5200, 25, 'It lies around all day, becoming active near dusk. At night, it wanders the city in search of loose change.'),
  -- alolan-meowth in sun
  (52, 5201, 25, 'This Pokémon was not originally found in Alola. Human actions caused a surge in their numbers, and they went feral. They’re prideful and crafty.'),
  -- persian in sun
  (53, 5300, 25, 'It has a violent temperament. It will attack anything that looks it in the eye. Its sharp claws inflict deep wounds.'),
  -- alolan-persian in sun
  (53, 5301, 25, 'Its round face and smooth coat—softer than the most high-class velvet—have made this a very popular Pokémon in Alola.'),
  -- psyduck in sun
  (54, 5400, 25, 'As a result of headaches so fierce they cause it to cry, it sometimes uses psychokinesis without meaning to.'),
  -- golduck in sun
  (55, 5500, 25, 'It is said that the red part of its forehead grants supernatural powers to those who possess one, so it was over-hunted in the past.'),
  -- mankey in sun
  (56, 5600, 25, 'It can spontaneously become enraged. Everyone near it clears out as it rampages, and the resulting loneliness makes it angrier still.'),
  -- primeape in sun
  (57, 5700, 25, 'It has been known to become so angry that it dies as a result. Its face looks peaceful in death, however.'),
  -- growlithe in sun
  (58, 5800, 25, 'It’s both clever and loyal, but if a stranger tries to invade its territory, it barks threateningly.'),
  -- arcanine in sun
  (59, 5900, 25, 'Overflowing with beauty and majesty, this strong Pokémon appears in ancient Eastern folklore.'),
  -- poliwag in sun
  (60, 6000, 25, 'The swirl on its belly is its internal organs showing through. If the swirl is tinged white, that means it’s affected by some disease.'),
  -- poliwhirl in sun
  (61, 6100, 25, 'Although it can live on land, it prefers to stay in the water, where it has fewer natural enemies.'),
  -- poliwrath in sun
  (62, 6200, 25, 'Poliwrath in the Alola region are strong swimmers that use the breaststroke. Many children learn to swim by imitating Poliwrath.'),
  -- abra in sun
  (63, 6300, 25, 'It sleeps 18 hours a day. Even while sleeping, it will teleport itself to treetops and pick and eat berries there.'),
  -- kadabra in sun
  (64, 6400, 25, 'A theory exists that this Pokémon was a young boy who couldn’t control his psychic powers and ended up transformed into this Pokémon.'),
  -- alakazam in sun
  (65, 6500, 25, 'It is said to have an IQ of approximately 5,000. Its overflowing psychokinetic powers cause headaches to anyone nearby.'),
  -- machop in sun
  (66, 6600, 25, 'It loves working out. As it gazes at its muscles, which continue to swell day by day, it becomes more and more dedicated to its training.'),
  -- machoke in sun
  (67, 6700, 25, 'As a result of its continual workouts, it has developed tremendous power. It uses that power to help people with their work.'),
  -- machamp in sun
  (68, 6800, 25, 'It unleashes megaton-level punches that send opponents flying clear over the horizon.'),
  -- tentacool in sun
  (72, 7200, 25, 'They can be found lying dehydrated on beaches, but they are often still alive. When soaked in water, they will revive.'),
  -- tentacruel in sun
  (73, 7300, 25, 'Normally, it has 80 poisonous tentacles. The longer one has been alive, the fewer tentacles it will have.'),
  -- geodude in sun
  (74, 7400, 25, 'Its round body makes it easy to pick up, but it is hard and heavy. It’s dangerous to play with them as if they were snowballs.'),
  -- alolan-geodude in sun
  (74, 7401, 25, 'Its body is a magnetic stone. Iron sand attaches firmly to the portions of its body that are particularly magnetic.'),
  -- graveler in sun
  (75, 7500, 25, 'Mossy rocks are its favorite food. It can devour a ton a day while crunching loudly.'),
  -- alolan-graveler in sun
  (75, 7501, 25, 'Its preferred food is dravite. After it has eaten this mineral, crystals form inside the Pokémon, rising to the surface of part of its body.'),
  -- golem in sun
  (76, 7600, 25, 'Its body can survive dynamite blasts without a single scratch, but it hates rain and humidity.'),
  -- alolan-golem in sun
  (76, 7601, 25, 'It fires rocks charged with electricity. Even if the rock isn’t fired that accurately, just grazing an opponent will cause numbness and fainting.'),
  -- slowpoke in sun
  (79, 7900, 25, 'Its long tail often breaks off. It doesn’t really feel any pain, though, and the tail grows back, so Slowpoke isn’t particularly bothered.'),
  -- slowbro in sun
  (80, 8000, 25, 'It spaces out while gazing at the sea. With Shellder’s poison flowing through its body, it becomes even spacier.'),
  -- mega-slowbro in sun
  (80, 8001, 25, 'All the energy from Mega Evolution poured into the Shellder on its tail, leaving Slowpoke to be swallowed whole.'),
  -- magnemite in sun
  (81, 8100, 25, 'They gather in places where electricity is available. They can be found clinging to the steel towers used to support power lines.'),
  -- magneton in sun
  (82, 8200, 25, 'When three Magnemite link together, their brains also become one. They do not become three times more intelligent.'),
  -- grimer in sun
  (88, 8800, 25, 'Its main source of food is the slimy industrial waste of factories. This Pokémon’s numbers have been decreasing in recent years.'),
  -- alolan-grimer in sun
  (88, 8801, 25, 'A Grimer, which had been brought in to solve a problem with garbage, developed over time into this form.'),
  -- muk in sun
  (89, 8900, 25, 'The stench it gives off will make your nose scrunch up. Still, there are Muk fans who think that’s a good thing.'),
  -- alolan-muk in sun
  (89, 8901, 25, 'The garbage it eats causes continuous chemical changes in its body, which produce its exceedingly vivid coloration.'),
  -- shellder in sun
  (90, 9000, 25, 'The hardness of its shell surpasses the hardness of a diamond. In days gone by, people used the shells to make shields.'),
  -- cloyster in sun
  (91, 9100, 25, 'Its hard shell cannot be shattered—not even by a bomb. The contents of the shell remain unknown.'),
  -- gastly in sun
  (92, 9200, 25, 'Should a strange light be seen flickering in an abandoned building, Gastly is lurking there.'),
  -- haunter in sun
  (93, 9300, 25, 'It strikes at humans from total darkness. Those licked by its cold tongue grow weaker with each passing day until they die.'),
  -- gengar in sun
  (94, 9400, 25, 'Should you feel yourself attacked by a sudden chill, it is evidence of an approaching Gengar. There is no escaping it. Give up.'),
  -- mega-gengar in sun
  (94, 9401, 25, 'Gengar’s relationships are warped. It has no interest in opponents unless it perceives them as prey.'),
  -- drowzee in sun
  (96, 9600, 25, 'A Pokémon that nourishes itself by eating dreams, it is thought to share common ancestry with Munna and Musharna.'),
  -- hypno in sun
  (97, 9700, 25, 'While it is an extremely dangerous Pokémon, people who are in need of a good, sound sleep call it their savior.'),
  -- exeggcute in sun
  (102, 10200, 25, 'Its six eggs use telepathy to communicate among themselves. It is believed to carry plant genes and the genes of other species.'),
  -- exeggutor in sun
  (103, 10300, 25, 'Each of its heads has its own will. They use telepathy to discuss their plans before coming to a joint decision.'),
  -- alolan-exeggutor in sun
  (103, 10301, 25, 'Alola is the best environment for this Pokémon. Local people take pride in its appearance, saying this is how Exeggutor ought to look.'),
  -- cubone in sun
  (104, 10400, 25, 'When it thinks of its deceased mother, it weeps loudly. Mandibuzz that hear its cries will attack it from the air.'),
  -- marowak in sun
  (105, 10500, 25, 'Originally, it was weak and timid. After evolution, its temperament becomes violent, and it begins to wield bones as weapons.'),
  -- alolan-marowak in sun
  (105, 10501, 25, 'The bones it possesses were once its mother’s. Its mother’s regrets have become like a vengeful spirit protecting this Pokémon.'),
  -- chansey in sun
  (113, 11300, 25, 'The eggs laid by Chansey are rich in nutrients and a favorite food of many Pokémon.'),
  -- kangaskhan in sun
  (115, 11500, 25, 'Kangaskhan’s maternal love is so deep that it will brave death to protect its offspring.'),
  -- goldeen in sun
  (118, 11800, 25, 'When the weather grows warm, they form groups and swim upriver. This sight serves as a poetic reminder that spring has arrived.'),
  -- seaking in sun
  (119, 11900, 25, 'When the weather grows cold, its whole body flushes a deep red. This sight serves as a poetic reminder that autumn has arrived.'),
  -- staryu in sun
  (120, 12000, 25, 'Large numbers of these Pokémon make their home at the seaside. At night, a strange red glow radiates from the center of their bodies.'),
  -- starmie in sun
  (121, 12100, 25, 'Its shining core is thought to receive and transmit enigmatic signals. It has been known to cause headaches in those who approach it.'),
  -- scyther in sun
  (123, 12300, 25, 'It confuses its prey with its quick, ninja-like movements. Then, in an instant, it cleaves them with its scythes.'),
  -- electabuzz in sun
  (125, 12500, 25, 'Half of all sudden blackouts are caused by Electabuzz gathering at electric power plants and gobbling up electricity.'),
  -- magmar in sun
  (126, 12600, 25, 'When it’s tired, it leaps into the mouth of a volcano and soaks its body in magma to ease its weariness. Its body burns at 2,192 degrees F.'),
  -- pinsir in sun
  (127, 12700, 25, 'It grips its prey in its pincers and splits them apart. Although it is a powerful Pokémon, it can’t deal with the cold.'),
  -- tauros in sun
  (128, 12800, 25, 'Historically, people in areas all over the world have ridden Tauros, but the practice is said to have started in Alola.'),
  -- magikarp in sun
  (129, 12900, 25, 'Although weak and helpless, this Pokémon is incredibly fertile. They exist in such multitudes, you’ll soon grow tired of seeing them.'),
  -- gyarados in sun
  (130, 13000, 25, 'A tale is told of a town that angered Gyarados. Before the sun rose the next day, flames utterly consumed the town, leaving not a trace behind.'),
  -- mega-gyarados in sun
  (130, 13001, 25, 'Mega Evolution also affects its brain, leaving no other function except its destructive instinct to burn everything to cinders.'),
  -- lapras in sun
  (131, 13100, 25, 'Its high intelligence enables it to comprehend human speech. When it’s in a good mood, it sings in its beautiful voice.'),
  -- ditto in sun
  (132, 13200, 25, 'It can reorganize its cells to make itself into a duplicate of anything it sees. The quality of the duplicate depends on the individual.'),
  -- eevee in sun
  (133, 13300, 25, 'Possessing an unbalanced and unstable genetic makeup, it conceals many possible evolutions.'),
  -- vaporeon in sun
  (134, 13400, 25, 'Its cells are composed of units much like water molecules. It lives close to water and is often mistaken for a mermaid.'),
  -- jolteon in sun
  (135, 13500, 25, 'They send out electrical charges of about 10,000 volts. Because they are high-strung, it can be difficult to grow close to them.'),
  -- flareon in sun
  (136, 13600, 25, 'When it catches prey or finds berries, it breathes fire on them until they’re well done, and then it gobbles them up.'),
  -- porygon in sun
  (137, 13700, 25, 'Roughly 20 years ago, it was artificially created, utilizing the latest technology of the time.'),
  -- aerodactyl in sun
  (142, 14200, 25, 'A Pokémon from the age of the dinosaurs. It used its sawlike fangs to shred its prey before eating them.'),
  -- snorlax in sun
  (143, 14300, 25, 'Its stomach is said to be incomparably strong. Even Muk’s poison is nothing more than a hint of spice on Snorlax’s tongue.'),
  -- dratini in sun
  (147, 14700, 25, 'It grows by molting repeatedly. Boots made from the tanned cast-off skin are a super luxury item.'),
  -- dragonair in sun
  (148, 14800, 25, 'It has long been thought that its crystalline orbs are imbued with the power to control the weather.'),
  -- dragonite in sun
  (149, 14900, 25, 'This Pokémon saved a shipwrecked man, taking him to a remote island—a paradise occupied solely by Dragonite.'),
  -- ledyba in sun
  (165, 16500, 25, 'They are timid and grow uneasy when not in a swarm with others of their kind. The pattern on their backs differs slightly from one to another.'),
  -- ledian in sun
  (166, 16600, 25, 'While it’s believed that starlight provides it with energy, this Pokémon also loves to eat berries. In the daytime, it curls up in the grass to sleep.'),
  -- spinarak in sun
  (167, 16700, 25, 'It waits intently until its preferred prey, Cutiefly, gets caught in its web. In fact, it’s quite a patient Pokémon.'),
  -- ariados in sun
  (168, 16800, 25, 'There are some areas where people use the string Ariados spins for their own weaving. The resulting cloth is popular for its strength.'),
  -- crobat in sun
  (169, 16900, 25, 'Both its legs became wings, and as a result, it can’t move well on the ground. All it can do is crawl around.'),
  -- chinchou in sun
  (170, 17000, 25, 'Its two antennae were originally fins. It discharges electricity to stun its prey before attacking.'),
  -- lanturn in sun
  (171, 17100, 25, 'Should you peer into the ocean at night and see a light shining like the stars, that is Lanturn.'),
  -- pichu in sun
  (172, 17200, 25, 'It is not yet skilled at controlling electricity. If you take your eyes off it, it may shock itself.'),
  -- cleffa in sun
  (173, 17300, 25, 'On late nights illuminated by shooting stars, it gazes intently skyward, as if thinking of its home.'),
  -- igglybuff in sun
  (174, 17400, 25, 'It likes to sing but is not yet good at it. With praise and encouragement, it will get better little by little.'),
  -- sudowoodo in sun
  (185, 18500, 25, 'To avoid attack, it mimics a tree. It will run off if splashed with water, which it hates.'),
  -- politoed in sun
  (186, 18600, 25, 'They gather on moonlit nights to form a large chorus. Their cries sound angry and not at all pleasant, but they are certainly distinctive.'),
  -- espeon in sun
  (196, 19600, 25, 'It can instantaneously sense its opponent’s movements by feeling air currents with its fine fur.'),
  -- umbreon in sun
  (197, 19700, 25, 'When this Pokémon becomes angry, its pores secrete a poisonous sweat, which it sprays at its opponent’s eyes.'),
  -- murkrow in sun
  (198, 19800, 25, 'They awaken at dusk and take wing in the twilight, leading to the expression, “Get home before the Murkrow fly.”'),
  -- slowking in sun
  (199, 19900, 25, 'A poisonous bite reacted with its system, blessing it with the enhanced intellect of a genius. It has full control of its psychic powers.'),
  -- misdreavus in sun
  (200, 20000, 25, 'It will use any means necessary to frighten people and absorb their life energy. It practices constantly to hone its skill in causing fear.'),
  -- snubbull in sun
  (209, 20900, 25, 'Despite its intimidating face, it’s quite cowardly. Its desperate attempts to appear threatening make it popular with people.'),
  -- granbull in sun
  (210, 21000, 25, 'Its well-developed lower jaw and heavy fangs are its weapons. As long as it’s not provoked, it rarely bites.'),
  -- scizor in sun
  (212, 21200, 25, 'It uses its wings to adjust its body temperature. Otherwise, its metal body would become too hot and melt in the heat of battle.'),
  -- mega-scizor in sun
  (212, 21201, 25, 'The excess energy that bathes this Pokémon keeps it in constant danger of overflow. It can’t sustain a battle over long periods of time.'),
  -- sneasel in sun
  (215, 21500, 25, 'It has a cunning yet savage disposition. It waits for parents to leave their nests, and then it sneaks in to steal their eggs.'),
  -- corsola in sun
  (222, 22200, 25, 'Coral branches grow from its head. They break off quite easily, but they grow back in about three days.'),
  -- delibird in sun
  (225, 22500, 25, 'Although it naturally prefers colder locales, Delibird in Alola seem able to withstand the heat to a certain extent.'),
  -- skarmory in sun
  (227, 22700, 25, 'Its feathers, which fall off as it grows, are thin and sharp. In times long past, warriors used them as swords.'),
  -- porygon2 in sun
  (233, 23300, 25, 'For the purposes of planetary development, Porygon was updated with the most cutting-edge technology available.'),
  -- smeargle in sun
  (235, 23500, 25, 'The unique creations produced by each Smeargle are painted using the fluid that oozes from its tail. This is how it marks its territory.'),
  -- elekid in sun
  (239, 23900, 25, 'When it’s in a house, electrical outlets serve as its baby bottles. It sucks down electricity.'),
  -- magby in sun
  (240, 24000, 25, 'Many of these Pokémon can be seen in areas with volcanic activity. Feeding can get them so excited, they exhale flames of 1,100 degrees F.'),
  -- miltank in sun
  (241, 24100, 25, 'Its milk is high in calories and packed with nutrients. Therefore, if you drink too much of it, you may wind up with a body like Miltank’s.'),
  -- blissey in sun
  (242, 24200, 25, 'Even the most ferocious Pokémon become calm when they eat Blissey’s egg, which is said to be filled with happiness.'),
  -- wingull in sun
  (278, 27800, 25, 'Its hollow bones enhance its lightness. It spreads its wings to the wind and soars away into the sky.'),
  -- pelipper in sun
  (279, 27900, 25, 'Its spacious beak is large enough for a small child to fit right inside.'),
  -- surskit in sun
  (283, 28300, 25, 'It moves as if skating on the surface of the water. It often fights with Dewpider over food.'),
  -- masquerain in sun
  (284, 28400, 25, 'It intimidates enemies with the eye-like patterns on its antennae. Its four wings allow it to fly in any direction.'),
  -- makuhita in sun
  (296, 29600, 25, 'It was originally brought in from another region, but now Makuhita from Alola are more famous.'),
  -- hariyama in sun
  (297, 29700, 25, 'It is known for its fantastic strength, but as it grows older, it focuses more on training Makuhita.'),
  -- nosepass in sun
  (299, 29900, 25, 'The magnet in Nosepass’s nose provides an unerring compass, making it an excellent partner for Trainers going on a journey.'),
  -- sableye in sun
  (302, 30200, 25, 'It’s a fiend for gemstones, so it stalks Carbink. Unfortunately, Gabite almost always grabs them first.'),
  -- mega-sableye in sun
  (302, 30201, 25, 'The jewel from its chest, which has grown gigantic due to the effects of Mega Evolution, can turn back any attack.'),
  -- carvanha in sun
  (318, 31800, 25, 'Each school has its own territory. Any intruders are mercilessly attacked with fangs bared.'),
  -- sharpedo in sun
  (319, 31900, 25, 'It pursues its prey at speeds of 75 mph and finishes them off with fangs that can crush iron. It is known as the bully of the sea.'),
  -- wailmer in sun
  (320, 32000, 25, 'It loves to startle people. It fills itself up with seawater and plays by bouncing around like a ball.'),
  -- wailord in sun
  (321, 32100, 25, 'Wailord pursue their prey in pods. With their large mouths, they can swallow entire schools of Wishiwashi whole.'),
  -- torkoal in sun
  (324, 32400, 25, 'Coal is the source of Torkoal’s energy. Large amounts of coal can be found in the mountains where they live.'),
  -- spinda in sun
  (327, 32700, 25, 'Its steps are staggering and unsteady, but Spinda thinks it’s walking in a straight line.'),
  -- trapinch in sun
  (328, 32800, 25, 'It can live for a week without eating a thing. It waits patiently at the bottom of its nest for prey to appear.'),
  -- vibrava in sun
  (329, 32900, 25, 'Rather than using its underdeveloped wings for flight, it rubs them together, producing ultrasonic waves to attack its enemies.'),
  -- flygon in sun
  (330, 33000, 25, 'The flapping of its wings sounds something like singing. Those lured by the sound are enveloped in a sandstorm, becoming Flygon’s prey.'),
  -- barboach in sun
  (339, 33900, 25, 'Its two whiskers provide a sensitive radar. Even in muddy waters, it can detect its prey’s location.'),
  -- whiscash in sun
  (340, 34000, 25, 'A glutton that devours anything that moves, it quietly lurks at the bottom of swamps, lying in wait for prey.'),
  -- feebas in sun
  (349, 34900, 25, 'A tough Pokémon that is perfectly fine even in dirty water. However, due to its ragged, shabby appearance, it isn’t popular.'),
  -- milotic in sun
  (350, 35000, 25, 'Milotic has provided inspiration to many artists. It has even been referred to as the most beautiful Pokémon of all.'),
  -- castform in sun
  (351, 35100, 25, 'It changes its form depending on the weather. Changes in the temperature or humidity appear to affect its cellular structure.'),
  -- absol in sun
  (359, 35900, 25, 'Long ago, superstitions were spread about it, saying it brought disaster. This fed a hatred of it, and it was driven deep into the mountains.'),
  -- snorunt in sun
  (361, 36100, 25, 'Their numbers seem to have rapidly increased in Alola. Custom has it that houses where Snorunt live will be prosperous for generations to come.'),
  -- glalie in sun
  (362, 36200, 25, 'Legend says a boulder on an icy mountain absorbed the distress and regrets of a stranded mountaineer, giving rise to Glalie.'),
  -- mega-glalie in sun
  (362, 36201, 25, 'The excess energy from Mega Evolution spilled over from its mouth, breaking its jaw. It spews endless blizzards.'),
  -- relicanth in sun
  (369, 36900, 25, 'Its form has remained the same for one hundred million years. Its body is filled with fat, so it can withstand the water pressure of the deep sea.'),
  -- luvdisc in sun
  (370, 37000, 25, 'If a Luvdisc is left on its own, it becomes despondent, leaving itself open to attack. That is when Pelipper snatch them up.'),
  -- bagon in sun
  (371, 37100, 25, 'Its belief that it will be able to fly one day is apparently the influence of information carried in its genes.'),
  -- shelgon in sun
  (372, 37200, 25, 'The cells within its shell transform with explosive speed, preparing it for evolution.'),
  -- salamence in sun
  (373, 37300, 25, 'When angered, it loses all sense of itself and destroys everything around it. The destruction will continue until Salamence has tired itself out.'),
  -- mega-salamence in sun
  (373, 37301, 25, 'Anyone standing in its path gets sliced right in two, while this Pokémon continues its flight without interruption.'),
  -- beldum in sun
  (374, 37400, 25, 'Its cells are all magnets. It uses magnetism to communicate with others of its kind.'),
  -- metang in sun
  (375, 37500, 25, 'When two Beldum link together, their psychic power is doubled. Their intelligence, however, remains unchanged.'),
  -- metagross in sun
  (376, 37600, 25, 'It firmly pins its prey using its four claws and large body. Then the teeth in the mouth on its stomach chew the prey to bits.'),
  -- mega-metagross in sun
  (376, 37601, 25, 'This form results from one Metagross, one Metang, and two Beldum linking up.'),
  -- cranidos in sun
  (408, 40800, 25, 'It lived in jungles around a hundred million years ago. It used its skillful headbutts to combat Aerodactyl.'),
  -- rampardos in sun
  (409, 40900, 25, 'The result of repeated headbutts is a skull grown thick and hard. However, its brain has shrunk in size compared with Cranidos’s.'),
  -- shieldon in sun
  (410, 41000, 25, 'Many fossils of this Pokémon have been found, but almost none have shown signs of damage to the face.'),
  -- bastiodon in sun
  (411, 41100, 25, 'While it can guard against any sort of attack from the front, it is left without recourse when attacked from behind.'),
  -- shellos in sun
  (422, 42200, 25, 'For the most part, it makes its home along the seashore. Its color and form differ according to its habitat and the quality of its food.'),
  -- shellos-east in sun
  (422, 42201, 25, 'Shellos lives in the sea and feasts on plankton. The lovelier the ocean where Shellos resides, the more vibrant its color becomes.'),
  -- gastrodon in sun
  (423, 42300, 25, 'It has strong regenerative capabilities. Even if parts of it are bitten off by fish Pokémon, it will return to normal within a few hours.'),
  -- gastrodon-east in sun
  (423, 42301, 25, 'A team of researchers is scouring the oceans of the world in search of a Gastrodon in a color never seen before.'),
  -- drifloon in sun
  (425, 42500, 25, 'Stories go that it grabs the hands of small children and drags them away to the afterlife. It dislikes heavy children.'),
  -- drifblim in sun
  (426, 42600, 25, 'There was once an incident in which a man took a trip riding a Drifblim, only to go missing.'),
  -- mismagius in sun
  (429, 42900, 25, 'It appears as if from nowhere—muttering incantations, placing curses, and giving people terrifying visions.'),
  -- honchkrow in sun
  (430, 43000, 25, 'A single cry from this nocturnal Pokémon, and more than a hundred of its Murkrow cronies will assemble.'),
  -- bonsly in sun
  (438, 43800, 25, 'It does not deal well with water, so it lives in dry locales. Since its surroundings tend to lack greenery, it stands out noticeably.'),
  -- happiny in sun
  (440, 44000, 25, 'It carries a round white rock in its belly pouch. If it gets along well with someone, it will sometimes give that person the rock.'),
  -- gible in sun
  (443, 44300, 25, 'It lives in caves warmed by geothermal heat. Even so, when the weather gets cold, it will huddle close with others of its kind.'),
  -- gabite in sun
  (444, 44400, 25, 'In rare cases, it molts and sheds its scales. Medicine containing its scales as an ingredient will make a weary body feel invigorated.'),
  -- garchomp in sun
  (445, 44500, 25, 'It can fly at speeds rivaling jet planes. It dives into flocks of bird Pokémon and gulps the entire flock down whole.'),
  -- mega-garchomp in sun
  (445, 44501, 25, 'Excess energy melted its arms and wings, transforming them into giant scythes.'),
  -- munchlax in sun
  (446, 44600, 25, 'It needs to consume its own weight in food every day. As far as flavor is concerned, it’s indifferent.'),
  -- riolu in sun
  (447, 44700, 25, 'It can discern the physical and emotional states of people, Pokémon, and other natural things from the shape of their aura waves.'),
  -- lucario in sun
  (448, 44800, 25, 'Not only does it perceive auras, but it has also gained the power to control them. It employs them in battle.'),
  -- mega-lucario in sun
  (448, 44801, 25, 'Black streaks all over its body show where its auras and the energy of Mega Evolution intermingled and raced through it.'),
  -- finneon in sun
  (456, 45600, 25, 'It absorbs sunlight with the pink areas of its skin, which then shine. This appears to be a form of camouflage.'),
  -- lumineon in sun
  (457, 45700, 25, 'With its shining light, it lures its prey close. However, the light also happens to attract ferocious fish Pokémon—its natural predators.'),
  -- weavile in sun
  (461, 46100, 25, 'They travel in groups of four or five, leaving signs for one another on trees and rocks. They bring down their prey with coordinated attacks.'),
  -- magnezone in sun
  (462, 46200, 25, 'Three units generate magnetism. There have been many mistaken reports of UFO sightings when Magnezone flies through the night sky.'),
  -- electivire in sun
  (466, 46600, 25, 'It pushes the tips of its tails against its foes and then lets loose a high-voltage current. Its foes are burned to a crisp in an instant.'),
  -- magmortar in sun
  (467, 46700, 25, 'They dwell in volcanic craters. According to what is known, a single pair of male and female Magmortar lives in one volcano.'),
  -- leafeon in sun
  (470, 47000, 25, 'Its cellular composition is closer to that of a plant than an animal. It uses photosynthesis to produce its energy supply without eating food.'),
  -- glaceon in sun
  (471, 47100, 25, 'It can control its body temperature at will. This enables it to freeze the moisture in the atmosphere, creating flurries of diamond dust.'),
  -- porygon-z in sun
  (474, 47400, 25, 'In order to create a more advanced Pokémon, an additional program was installed, but apparently it contained a defect that makes it move oddly.'),
  -- probopass in sun
  (476, 47600, 25, 'It radiates such a powerful magnetic field that nearby electrical appliances become unusable.'),
  -- froslass in sun
  (478, 47800, 25, 'When it finds humans or Pokémon it likes, it freezes them and takes them to its chilly den, where they become decorations.'),
  -- lillipup in sun
  (506, 50600, 25, 'Because it doesn’t yelp, it’s extremely popular with Trainers who live in apartment buildings.'),
  -- herdier in sun
  (507, 50700, 25, 'Its dense black fur grows continuously. The high cost of keeping its hard fur properly groomed makes this a troublesome Pokémon to train.'),
  -- stoutland in sun
  (508, 50800, 25, 'Intelligent, good-natured, and valiant, it’s a trustworthy partner on rescue teams.'),
  -- roggenrola in sun
  (524, 52400, 25, 'Born deep within the ground, it compares itself with similar species, such as Geodude and Carbink, to settle which has the hardest body.'),
  -- boldore in sun
  (525, 52500, 25, 'Its orange crystal is a mass of energy. Just one crystal fragment would provide enough fuel for a hundred dump trucks.'),
  -- gigalith in sun
  (526, 52600, 25, 'The blasts of energy it makes from sunbeams have terrifying power. However, it’s not able to fire its blasts at night or on rainy days.'),
  -- cottonee in sun
  (546, 54600, 25, 'When it finds others of its kind, they all stick together. When enough of them have collected, the mass resembles a cumulonimbus cloud.'),
  -- whimsicott in sun
  (547, 54700, 25, 'It rides on the wind and slips into people’s homes. After it has turned a room into a cotton- filled mess, it giggles to itself and takes off.'),
  -- petilil in sun
  (548, 54800, 25, 'Although the leaves on its head are bitter enough to cause dizziness, they provide relief from weariness—even more so when boiled.'),
  -- lilligant in sun
  (549, 54900, 25, 'No matter how much time and money is spent raising it, its flowers are the most beautiful when they bloom in the wild.'),
  -- sandile in sun
  (551, 55100, 25, 'It submerges itself in sand and moves as if swimming. This wise behavior keeps its enemies from finding it and maintains its temperature.'),
  -- krokorok in sun
  (552, 55200, 25, 'They move in groups of a few individuals. A female is often the leader of the group, and the males will gather food.'),
  -- krookodile in sun
  (553, 55300, 25, 'Its unique faculty of sight can detect small prey more than 30 miles away, even in the midst of a sandstorm.'),
  -- tirtouga in sun
  (564, 56400, 25, 'Based on studies of its skeletal structure, it can apparently dive to ocean depths of over half a mile.'),
  -- carracosta in sun
  (565, 56500, 25, 'It constructed its sturdy shell by crunching and swallowing the hard shells or bones of its prey.'),
  -- archen in sun
  (566, 56600, 25, 'It is the ancestor of all bird Pokémon. Archen itself could not actually fly but moved by hopping from treetop to treetop.'),
  -- archeops in sun
  (567, 56700, 25, 'Although apparently able to fly, they tended to run along the ground, averaging speeds of roughly 25 mph.'),
  -- trubbish in sun
  (568, 56800, 25, 'Unsanitary places are what they like best. They can be spotted in Alola, often with Grimer in hot pursuit.'),
  -- garbodor in sun
  (569, 56900, 25, 'Beware the poisonous liquid it shoots from its right arm. If even a little of it gets on you, you’ll experience the effects of the unidentified toxin.'),
  -- vanillite in sun
  (582, 58200, 25, 'Born of an icicle, this Pokémon uses its frosty breath to make ice crystals, causing snow to fall.'),
  -- vanillish in sun
  (583, 58300, 25, 'Hot days cause its body to melt. It can be restored by refreezing it, but the process leaves its body slightly warped.'),
  -- vanilluxe in sun
  (584, 58400, 25, 'Each of its two heads has a brain, and when they are in agreement, it attacks its enemies by exhaling a violent blizzard.'),
  -- emolga in sun
  (587, 58700, 25, 'It glides using its cape-like membrane. Electrical energy scatters from it, shocking its friends and foes alike.'),
  -- alomomola in sun
  (594, 59400, 25, 'It uses its special mucus to close the wounds of injured Pokémon. The reason for this behavior remains unknown.'),
  -- rufflet in sun
  (627, 62700, 25, 'They pick fights indiscriminately. They grow stronger and more powerful each time they faint or are injured.'),
  -- braviary in sun
  (628, 62800, 25, 'With its brave disposition, it fears nothing—not even death. Ancient Alolan people respected it, referring to it as “the hero of the sky.”'),
  -- vullaby in sun
  (629, 62900, 25, 'It protects its plump posterior with the bones of prey it has consumed. As it grows, it replaces the bones.'),
  -- mandibuzz in sun
  (630, 63000, 25, 'They adorn themselves beautifully with bones. This is supposedly an effort to attract males, but no male Mandibuzz have ever been found.'),
  -- fletchling in sun
  (661, 66100, 25, 'This amiable Pokémon is easy to train. But when battle is joined, it shows its ferocious side.'),
  -- fletchinder in sun
  (662, 66200, 25, 'From its beak, it fires embers at its prey. Once it has caught them, it grills them at high heat before feasting upon them.'),
  -- talonflame in sun
  (663, 66300, 25, 'Its favorite foods are Wingull and Pikipek. It attacks with a powerful kick and grasps them firmly in its talons.'),
  -- pancham in sun
  (674, 67400, 25, 'It grows up imitating the behavior of Pangoro, which it looks up to as a leader.'),
  -- pangoro in sun
  (675, 67500, 25, 'It boasts superb physical strength. Those who wish to become Pangoro’s Trainer have no choice but to converse with their fists.'),
  -- sylveon in sun
  (700, 70000, 25, 'Its ribbonlike feelers give off an aura that weakens hostility in its prey, causing them to let down their guard. Then it attacks.'),
  -- carbink in sun
  (703, 70300, 25, 'Born from the high temperatures and pressures deep underground, it defends itself by firing beams from the jewel part of its body.'),
  -- goomy in sun
  (704, 70400, 25, 'The weakest of all Dragon-type Pokémon, it’s unable to breathe if its skin dries out, so it sticks to shady places.'),
  -- sliggoo in sun
  (705, 70500, 25, 'It has trouble drawing a line between friends and food. It will calmly try to melt and eat even those it gets along well with.'),
  -- goodra in sun
  (706, 70600, 25, 'An amazingly friendly Pokémon, but if left to itself, loneliness overcomes it, and it oozes gooey tears.'),
  -- klefki in sun
  (707, 70700, 25, 'This even-tempered Pokémon has a habit of collecting keys. It will sneak into people’s homes to steal their keys.'),
  -- phantump in sun
  (708, 70800, 25, 'These Pokémon are stumps possessed by the spirits of children who died in the forest. Their cries sound like eerie screams.'),
  -- trevenant in sun
  (709, 70900, 25, 'This Pokémon is said to devour anyone daring to ravage the forest. To the creatures dwelling in the forest, it offers great kindness.'),
  -- zygarde in sun
  (718, 71800, 25, 'This is Zygarde’s form when it has gathered 50% of its cells. It wipes out all those who oppose it, showing not a shred of mercy.'),
  -- zygarde-10-percent in sun
  (718, 71801, 25, 'Its sharp fangs make short work of finishing off its enemies, but it’s unable to maintain this body indefinitely. After a period of time, it falls apart.'),
  -- zygarde-complete in sun
  (718, 71803, 25, 'This is Zygarde’s form at times when it uses its overwhelming power to suppress those who endanger the ecosystem.'),
  -- rowlet in sun
  (722, 72200, 25, 'This wary Pokémon uses photosynthesis to store up energy during the day, while becoming active at night.'),
  -- dartrix in sun
  (723, 72300, 25, 'A bit of a dandy, it spends its free time preening its wings. Its preoccupation with any dirt on its plumage can leave it unable to battle.'),
  -- decidueye in sun
  (724, 72400, 25, 'It fires arrow quills from its wings with such precision, they can pierce a pebble at distances over a hundred yards.'),
  -- litten in sun
  (725, 72500, 25, 'While grooming itself, it builds up fur inside its stomach. It sets the fur alight and spews fiery attacks, which change based on how it coughs.'),
  -- torracat in sun
  (726, 72600, 25, 'At its throat, it bears a bell of fire. The bell rings brightly whenever this Pokémon spits fire.'),
  -- incineroar in sun
  (727, 72700, 25, 'This Pokémon has a violent, selfish disposition. If it’s not in the mood to listen, it will ignore its Trainer’s orders with complete nonchalance.'),
  -- popplio in sun
  (728, 72800, 25, 'This Pokémon snorts body fluids from its nose, blowing balloons to smash into its foes. It’s famous for being a hard worker.'),
  -- brionne in sun
  (729, 72900, 25, 'A skillful dancer, it creates a sequence of water balloons as it dances, and briskly bombards its enemies.'),
  -- primarina in sun
  (730, 73000, 25, 'It controls its water balloons with song. The melody is learned from others of its kind and is passed down from one generation to the next.'),
  -- pikipek in sun
  (731, 73100, 25, 'It can peck at a rate of 16 times a second to drill holes in trees. It uses the holes for food storage and for nesting.'),
  -- trumbeak in sun
  (732, 73200, 25, 'It eats berries and stores their seeds in its beak. When it encounters enemies or prey, it fires off all the seeds in a burst.'),
  -- toucannon in sun
  (733, 73300, 25, 'When it battles, its beak heats up. The temperature can easily exceed 212 degrees Fahrenheit, causing severe burns when it hits.'),
  -- yungoos in sun
  (734, 73400, 25, 'With its sharp fangs, it will bite anything. It did not originally live in Alola but was imported from another region.'),
  -- gumshoos in sun
  (735, 73500, 25, 'When it finds a trace of its prey, it patiently stakes out the location...but it’s always snoozing by nightfall.'),
  -- grubbin in sun
  (736, 73600, 25, 'Its strong jaw enables it to scrape trees and slurp out the sap. It normally lives underground.'),
  -- charjabug in sun
  (737, 73700, 25, 'Its body is capable of storing electricity. On camping trips, people are grateful to have one around.'),
  -- vikavolt in sun
  (738, 73800, 25, 'It zips around, on sharp lookout for an opening. It concentrates electrical energy within its large jaws and uses it to zap its enemies.'),
  -- crabrawler in sun
  (739, 73900, 25, 'While guarding its weak points with its pincers, it looks for an opening and unleashes punches. When it loses, it foams at the mouth and faints.'),
  -- crabominable in sun
  (740, 74000, 25, 'It aimed for the top but got lost and ended up on a snowy mountain. Being forced to endure the cold, this Pokémon evolved and grew fur.'),
  -- oricorio in sun
  (741, 74100, 25, 'It beats its wings together to create fire. As it moves in the steps of its beautiful dance, it bathes opponents in intense flames.'),
  -- oricorio-pom-pom in sun
  (741, 74101, 25, 'This Oricorio has sipped bright yellow nectar. Its bright, cheerful dance melts the hearts of its enemies.'),
  -- oricorio-pau in sun
  (741, 74102, 25, 'This Oricorio relaxes by swaying gently. This increases its psychic energy, which it then fires at its enemies.'),
  -- oricorio-sensu in sun
  (741, 74103, 25, 'This Oricorio has sipped purple nectar. Its elegant, attractive dance will send the minds and hearts of its enemies to another world.'),
  -- cutiefly in sun
  (742, 74200, 25, 'It feeds on the nectar and pollen of flowers. Because it’s able to sense auras, it can identify which flowers are about to bloom.'),
  -- ribombee in sun
  (743, 74300, 25, 'It rolls up pollen into puffs. It makes many different varieties, some used as food and others used in battle.'),
  -- rockruff in sun
  (744, 74400, 25, 'It’s considered to be a good Pokémon for beginners because of its friendliness, but its disposition grows rougher as it grows up.'),
  -- lycanroc in sun
  (745, 74500, 25, 'Its quick movements confuse its enemies. Well equipped with claws and fangs, it also uses the sharp rocks in its mane as weapons.'),
  -- lycanroc-midnight in sun
  (745, 74501, 25, 'The more intimidating the opponent it faces, the more this Pokémon’s blood boils. It will attack with no regard for its own safety.'),
  -- wishiwashi in sun
  (746, 74600, 25, 'When it’s in trouble, its eyes moisten and begin to shine. The shining light attracts its comrades, and they stand together against their enemies.'),
  -- mareanie in sun
  (747, 74700, 25, 'It plunges the poison spike on its head into its prey. When the prey has weakened, Mareanie deals the finishing blow with its 10 tentacles.'),
  -- toxapex in sun
  (748, 74800, 25, 'Toxapex crawls along the ocean floor on its 12 legs. It leaves a trail of Corsola bits scattered in its wake.'),
  -- mudbray in sun
  (749, 74900, 25, 'The mud stuck to Mudbray’s hooves enhances its grip and its powerful running gait.'),
  -- mudsdale in sun
  (750, 75000, 25, 'It spits a mud that provides resistance to both wind and rain, so the walls of old houses were often coated with it.'),
  -- dewpider in sun
  (751, 75100, 25, 'It crawls onto the land in search of food. Its water bubble allows it to breathe and protects its soft head.'),
  -- araquanid in sun
  (752, 75200, 25, 'It delivers headbutts with the water bubble on its head. Small Pokémon get sucked into the bubble, where they drown.'),
  -- fomantis in sun
  (753, 75300, 25, 'During the day, it sleeps and soaks up light. When night falls, it walks around looking for a safer place to sleep.'),
  -- lurantis in sun
  (754, 75400, 25, 'It requires a lot of effort to maintain Lurantis’s vivid coloring, but some collectors enjoy this work and treat it as their hobby.'),
  -- morelull in sun
  (755, 75500, 25, 'It scatters spores that flicker and glow. Anyone seeing these lights falls into a deep slumber.'),
  -- shiinotic in sun
  (756, 75600, 25, 'Forests where Shiinotic live are treacherous to enter at night. People confused by its strange lights can never find their way home again.'),
  -- salandit in sun
  (757, 75700, 25, 'It burns its bodily fluids to create a poisonous gas. When its enemies become disoriented from inhaling the gas, it attacks them.'),
  -- salazzle in sun
  (758, 75800, 25, 'For some reason, only females have been found. It creates a reverse harem of male Salandit that it lives with.'),
  -- stufful in sun
  (759, 75900, 25, 'Despite its adorable appearance, when it gets angry and flails about, its arms and legs could knock a pro wrestler sprawling.'),
  -- bewear in sun
  (760, 76000, 25, 'This immensely dangerous Pokémon possesses overwhelming physical strength. Its habitat is generally off-limits.'),
  -- bounsweet in sun
  (761, 76100, 25, 'A delectable aroma pours from its body. They are often swallowed whole by Toucannon lured by that wafting deliciousness.'),
  -- steenee in sun
  (762, 76200, 25, 'The sepals on its head developed to protect its body. These are quite hard, so even if pecked by bird Pokémon, this Pokémon is totally fine.'),
  -- tsareena in sun
  (763, 76300, 25, 'Its long, striking legs aren’t just for show but to be used to kick with skill. In victory, it shows off by kicking the defeated, laughing boisterously.'),
  -- comfey in sun
  (764, 76400, 25, 'It attaches flowers to its highly nutritious vine. This revitalizes the flowers, and they give off an aromatic scent.'),
  -- oranguru in sun
  (765, 76500, 25, 'Known for its extreme intelligence, this Pokémon will look down on inexperienced Trainers, so it’s best suited to veteran Trainers.'),
  -- passimian in sun
  (766, 76600, 25, 'They form groups of roughly 20 individuals. Their mutual bond is remarkable—they will never let down a comrade.'),
  -- wimpod in sun
  (767, 76700, 25, 'This Pokémon is a coward. As it desperately dashes off, the flailing of its many legs leaves a sparkling clean path in its wake.'),
  -- golisopod in sun
  (768, 76800, 25, 'With a flashing slash of its giant sharp claws, it cleaves seawater—or even air—right in two.'),
  -- sandygast in sun
  (769, 76900, 25, 'Born from a sand mound playfully built by a child, this Pokémon embodies the grudges of the departed.'),
  -- palossand in sun
  (770, 77000, 25, 'Possessed people controlled by this Pokémon transformed its sand mound into a castle. As it evolved, its power to curse grew ever stronger.'),
  -- pyukumuku in sun
  (771, 77100, 25, 'It lives in shallow seas, such as areas near a beach. It can eject its internal organs, which it uses to engulf its prey or battle enemies.'),
  -- type-null in sun
  (772, 77200, 25, 'The heavy control mask it wears suppresses its intrinsic capabilities. This Pokémon has some hidden special power.'),
  -- silvally in sun
  (773, 77300, 25, 'Its trust in its partner is what awakens it. This Pokémon is capable of changing its type, a flexibility that is well displayed in battle.'),
  -- silvally-fighting in sun
  (773, 77301, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-flying in sun
  (773, 77302, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-poison in sun
  (773, 77303, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-ground in sun
  (773, 77304, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-rock in sun
  (773, 77305, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-bug in sun
  (773, 77306, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-ghost in sun
  (773, 77307, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-steel in sun
  (773, 77308, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-fire in sun
  (773, 77309, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-water in sun
  (773, 77310, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-grass in sun
  (773, 77311, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-electric in sun
  (773, 77312, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-psychic in sun
  (773, 77313, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-ice in sun
  (773, 77314, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-dragon in sun
  (773, 77315, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-dark in sun
  (773, 77316, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- silvally-fairy in sun
  (773, 77317, 25, 'It destroyed its own control mask. It has become capable of changing its type by equipping special memories.'),
  -- minior in sun
  (774, 77400, 25, 'Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy.'),
  -- minior-core in sun
  (774, 77401, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- minior-orange in sun
  (774, 77402, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- minior-yellow in sun
  (774, 77403, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- minior-green in sun
  (774, 77404, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- minior-blue in sun
  (774, 77405, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- minior-indigo in sun
  (774, 77406, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- minior-violet in sun
  (774, 77407, 25, 'It eats dust in the atmosphere. The composition of the dust determines the color of its core.'),
  -- komala in sun
  (775, 77500, 25, 'It is born asleep, and it dies asleep. All its movements are apparently no more than the results of it tossing and turning in its dreams.'),
  -- turtonator in sun
  (776, 77600, 25, 'The shell on its back is chemically unstable and explodes violently if struck. The hole in its stomach is its weak point.'),
  -- togedemaru in sun
  (777, 77700, 25, 'The spiny fur on its back is normally at rest. When this Pokémon becomes agitated, its fur stands on end and stabs into its attackers.'),
  -- mimikyu in sun
  (778, 77800, 25, 'Its actual appearance is unknown. A scholar who saw what was under its rag was overwhelmed by terror and died from the shock.'),
  -- mimikyu-busted in sun
  (778, 77801, 25, 'After going to all the effort of disguising itself, its neck was broken. Whatever is inside is probably unharmed, but it’s still feeling sad.'),
  -- bruxish in sun
  (779, 77900, 25, 'When it unleashes its psychic power from the protuberance on its head, the grating sound of grinding teeth echoes through the area.'),
  -- drampa in sun
  (780, 78000, 25, 'It has a compassionate personality, but if it is angered, it completely destroys its surroundings with its intense breath.'),
  -- dhelmise in sun
  (781, 78100, 25, 'Swinging its massive anchor, it can KO Wailord in a single blow. What appears to be green seaweed is actually its body.'),
  -- jangmo-o in sun
  (782, 78200, 25, 'It expresses its feelings by smacking its scales. Metallic sounds echo through the tall mountains where Jangmo-o lives.'),
  -- hakamo-o in sun
  (783, 78300, 25, 'It leaps at its prey with a courageous shout. Its scaly punches tear its opponents to shreds.'),
  -- kommo-o in sun
  (784, 78400, 25, 'When it spots enemies, it threatens them by jingling the scales on its tail. Weak opponents will crack and flee in panic.'),
  -- tapu-koko in sun
  (785, 78500, 25, 'This guardian deity of Melemele is brimming with curiosity. It summons thunderclouds and stores their lightning inside its body.'),
  -- tapu-lele in sun
  (786, 78600, 25, 'This guardian deity of Akala is guilelessly cruel. The fragrant aroma of flowers is the source of its energy.'),
  -- tapu-bulu in sun
  (787, 78700, 25, 'It pulls large trees up by the roots and swings them around. It causes vegetation to grow, and then it absorbs energy from the growth.'),
  -- tapu-fini in sun
  (788, 78800, 25, 'The dense fog it creates brings the downfall and destruction of its confused enemies. Ocean currents are the source of its energy.'),
  -- cosmog in sun
  (789, 78900, 25, 'Its body is gaseous and frail. It slowly grows as it collects dust from the atmosphere.'),
  -- cosmoem in sun
  (790, 79000, 25, 'Motionless as if dead, its body is faintly warm to the touch. In the distant past, it was called the cocoon of the stars.'),
  -- solgaleo in sun
  (791, 79100, 25, 'It is said to live in another world. The intense light it radiates from the surface of its body can make the darkest of nights light up like midday.'),
  -- lunala in sun
  (792, 79200, 25, 'It is said to be a female evolution of Cosmog. When its third eye activates, away it flies to another world.'),
  -- nihilego in sun
  (793, 79300, 25, 'One of several mysterious Ultra Beasts. People on the street report observing those infested by it suddenly becoming violent.'),
  -- buzzwole in sun
  (794, 79400, 25, 'This Ultra Beast appeared from another world. It shows off its body, but whether that display is a boast or a threat remains unclear.'),
  -- pheromosa in sun
  (795, 79500, 25, 'One of the dangerous Ultra Beasts, it has been spotted running across the land at terrific speeds.'),
  -- xurkitree in sun
  (796, 79600, 25, 'One of the mysterious life-forms known as Ultra Beasts. Astonishing electric shocks emanate from its entire body, according to witnesses.'),
  -- celesteela in sun
  (797, 79700, 25, 'It appeared from the Ultra Wormhole. Witnesses observed it flying across the sky at high speed.'),
  -- kartana in sun
  (798, 79800, 25, 'This Ultra Beast came from the Ultra Wormhole. It seems not to attack enemies on its own, but its sharp body is a dangerous weapon in itself.'),
  -- guzzlord in sun
  (799, 79900, 25, 'It has gobbled mountains and swallowed whole buildings, according to reports. It’s one of the Ultra Beasts.'),
  -- necrozma in sun
  (800, 80000, 25, 'Reminiscent of the Ultra Beasts, this life-form, apparently asleep underground, is thought to have come from another world in ancient times.'),
  -- magearna in sun
  (801, 80100, 25, 'This artificial Pokémon, constructed more than 500 years ago, can understand human speech but cannot itself speak.'),
  -- marshadow in sun
  (802, 80200, 25, 'Able to conceal itself in shadows, it never appears before humans, so its very existence was the stuff of myth.'),
  -- caterpie in moon
  (10, 1000, 26, 'It’s easy to catch, and it grows quickly, making it one of the top recommendations for novice Pokémon Trainers.'),
  -- metapod in moon
  (11, 1100, 26, 'Its shell is hard, but it’s still just a bug shell. It’s been known to break, so intense battles with it should be avoided.'),
  -- butterfree in moon
  (12, 1200, 26, 'When attacked by other Pokémon, it defends itself by scattering its poisonous scales and fluttering its wings.'),
  -- rattata in moon
  (19, 1900, 26, 'With their strong capacity for survival, they can live in dirty places without concern. Left unchecked, their numbers multiply rapidly.'),
  -- alolan-rattata in moon
  (19, 1901, 26, 'When the sun goes down, it becomes active. It runs around town on a chase for good food for the boss of its nest—Raticate.'),
  -- raticate in moon
  (20, 2000, 26, 'Its disposition is far more violent than its looks would suggest. Don’t let your hand get too close to its face, as it could bite your hand clean off.'),
  -- alolan-raticate in moon
  (20, 2001, 26, 'This gourmet Pokémon is particular about the taste and freshness of its food. Restaurants where Raticate live have a good reputation.'),
  -- spearow in moon
  (21, 2100, 26, 'Farmers whose fields are troubled by bug Pokémon appreciate Spearow for its vigorous appetite and look after it.'),
  -- fearow in moon
  (22, 2200, 26, 'Drawings of a Pokémon resembling Fearow can be seen in murals from deep in ancient history.'),
  -- pikachu in moon
  (25, 2500, 26, 'It’s in its nature to store electricity. It feels stressed now and then if it’s unable to fully discharge the electricity.'),
  -- pikachu-original-cap in moon
  (25, 2503, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-hoenn-cap in moon
  (25, 2504, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-sinnoh-cap in moon
  (25, 2505, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-unova-cap in moon
  (25, 2506, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-kalos-cap in moon
  (25, 2507, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-alola-cap in moon
  (25, 2508, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-partner-cap in moon
  (25, 2509, 26, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- raichu in moon
  (26, 2600, 26, 'It becomes aggressive when it has electricity stored up. At such times, even its Trainer has to take care to avoid being attacked.'),
  -- alolan-raichu in moon
  (26, 2601, 26, 'It uses psychokinesis to control electricity. It hops aboard its own tail, using psychic power to lift the tail and move about while riding it.'),
  -- sandshrew in moon
  (27, 2700, 26, 'It usually makes its home in deserts and arid zones, where rain does not fall. It digs holes to catch Bug-type Pokémon.'),
  -- alolan-sandshrew in moon
  (27, 2701, 26, 'An ancient tradition of Alolan festivals, still carried on to this day, is a competition to slide Sandshrew across ice as far as one can.'),
  -- sandslash in moon
  (28, 2800, 26, 'It uses its claws to climb trees and then curls its body into a spiny ball, ready to drop onto any prey that appears.'),
  -- alolan-sandslash in moon
  (28, 2801, 26, 'This Pokémon’s steel spikes are sheathed in ice. Stabs from these spikes cause deep wounds and severe frostbite as well.'),
  -- clefairy in moon
  (35, 3500, 26, 'On nights with a full moon, they gather together and dance. The surrounding area is enveloped in an abnormal magnetic field.'),
  -- clefable in moon
  (36, 3600, 26, 'According to tradition, people who see a pair of Clefable skipping by can look forward to a happy marriage.'),
  -- vulpix in moon
  (37, 3700, 26, 'From its mouth spew flames that seem to resemble the spirits of the deceased. Some people mistakenly think this fire is a ghost.'),
  -- alolan-vulpix in moon
  (37, 3701, 26, 'In hot weather, this Pokémon makes ice shards with its six tails and sprays them around to cool itself off.'),
  -- ninetales in moon
  (38, 3800, 26, 'Said to live for a thousand years, this Pokémon uses its supernatural abilities to manipulate fire. It can burn its prey to a crisp as it pleases.'),
  -- alolan-ninetales in moon
  (38, 3801, 26, 'Possessing a calm demeanor, this Pokémon was revered as a deity incarnate before it was identified as a regional variant of Ninetales.'),
  -- jigglypuff in moon
  (39, 3900, 26, 'Jigglypuff possess a vocal range that exceeds 12 octaves, but each individual’s singing skill depends on its own effort.'),
  -- wigglytuff in moon
  (40, 4000, 26, 'As it inhales, it expands...and expands...and expands. Wigglytuff compete to see which one can inflate itself the most.'),
  -- zubat in moon
  (41, 4100, 26, 'When exposed to sunlight, they suffer burns. The frequency of their ultrasonic waves can differ slightly from colony to colony.'),
  -- golbat in moon
  (42, 4200, 26, 'Sometimes they drink so much blood, they can’t fly anymore. Then they fall to the ground and become food for other Pokémon.'),
  -- paras in moon
  (46, 4600, 26, 'Mushrooms called tochukaso sprout from its back. They can be dried and powdered to make a medicine used to extend life.'),
  -- parasect in moon
  (47, 4700, 26, 'It scatters toxic spores from its mushroom cap. Once harvested, these spores can be steeped and boiled down to prepare herbal medicines.'),
  -- diglett in moon
  (50, 5000, 26, 'Many farmers cherish and nurture Diglett because its droppings enrich the soil it lives in.'),
  -- alolan-diglett in moon
  (50, 5001, 26, 'Its golden hairs function as sensors. It pokes them out of its burrow to monitor its surroundings.'),
  -- dugtrio in moon
  (51, 5100, 26, 'Despite the closeness between this Pokémon and farmers and other people, no one has ever seen the parts of it concealed underground.'),
  -- alolan-dugtrio in moon
  (51, 5101, 26, 'These Pokémon are cherished in the Alola region, where they are thought to be feminine deities of the land incarnate.'),
  -- meowth in moon
  (52, 5200, 26, 'It loves shiny things. It often fights with Murkrow over prey they’re both trying to catch.'),
  -- alolan-meowth in moon
  (52, 5201, 26, 'When its delicate pride is wounded, or when the gold coin on its forehead is dirtied, it flies into a hysterical rage.'),
  -- persian in moon
  (53, 5300, 26, 'It has a high opinion of itself, although not to the same extent as the Alolan Persian. It’s quite difficult to make friends with this Pokémon.'),
  -- alolan-persian in moon
  (53, 5301, 26, 'It looks down on everyone other than itself. Its preferred tactics are sucker punches and blindside attacks.'),
  -- psyduck in moon
  (54, 5400, 26, 'This Pokémon is troubled by constant headaches. The more pain it’s in, the more powerful its psychokinesis becomes.'),
  -- golduck in moon
  (55, 5500, 26, 'It swims along the banks of lakes and catches fish Pokémon. It takes them to the shore and quietly eats them up.'),
  -- mankey in moon
  (56, 5600, 26, 'Its raging tires it out and causes it to fall asleep, but the anger resonating in its dreams causes it to wake up—which infuriates it all over again.'),
  -- primeape in moon
  (57, 5700, 26, 'Some researchers theorize that Primeape remains angry even when inside a Poké Ball.'),
  -- growlithe in moon
  (58, 5800, 26, 'It looks cute, but when you approach another Trainer’s Growlithe, it will bark at you and bite.'),
  -- arcanine in moon
  (59, 5900, 26, 'The fire burning inside its body serves as the energy to fuel it as it runs great distances. It appears in many legends.'),
  -- poliwag in moon
  (60, 6000, 26, 'It’s still not very good at walking. Its Trainers should train this Pokémon to walk every day.'),
  -- poliwhirl in moon
  (61, 6100, 26, 'It marches over the land in search of bug Pokémon to eat. Then it takes them underwater so it can dine on them where it’s safe.'),
  -- poliwrath in moon
  (62, 6200, 26, 'Its percentage of body fat is nearly zero. Its body is entirely muscle, which makes it heavy and forces its swimming prowess to develop.'),
  -- abra in moon
  (63, 6300, 26, 'It can teleport itself to safety while it’s asleep, but when it wakes, it doesn’t know where it is, so it panics.'),
  -- kadabra in moon
  (64, 6400, 26, 'Kadabra’s presence infests televisions and monitors with creepy shadows that bring bad luck.'),
  -- alakazam in moon
  (65, 6500, 26, 'Its brain cells continue to increase in number until its death. The older the Alakazam, the larger its head.'),
  -- machop in moon
  (66, 6600, 26, 'With its superhuman strength, it’s able to throw a hundred people all at the same time. Its strength comes from lifting Graveler every day.'),
  -- machoke in moon
  (67, 6700, 26, 'It willingly assists with hard labor because it knows the work is good training for its muscles.'),
  -- machamp in moon
  (68, 6800, 26, 'It can lift heavy loads with the greatest of ease. It can even heft dump trucks. But its clumsy fingers prevent it from doing any precision work.'),
  -- tentacool in moon
  (72, 7200, 26, 'It drifts in shallow seas, such as the areas near beaches. If you get bitten or stabbed by its toxic tentacles, rush to the hospital.'),
  -- tentacruel in moon
  (73, 7300, 26, 'Although these Pokémon are rare, when a large outbreak of them occurs, all fish Pokémon disappear from the surrounding sea.'),
  -- geodude in moon
  (74, 7400, 26, 'There are plenty of them to be found along any road. A scholar with too much free time once counted a hundred of them along a single route.'),
  -- alolan-geodude in moon
  (74, 7401, 26, 'If you accidentally step on a Geodude sleeping on the ground, you’ll hear a crunching sound and feel a shock ripple through your entire body.'),
  -- graveler in moon
  (75, 7500, 26, 'This slow-footed Pokémon moves by curling up and rolling instead of walking. With enough momentum, its speed can exceed 60 mph.'),
  -- alolan-graveler in moon
  (75, 7501, 26, 'They eat rocks and often get into a scrap over them. The shock of Graveler smashing together causes a flash of light and a booming noise.'),
  -- golem in moon
  (76, 7600, 26, 'Once a year, this Pokémon molts, and its shed shell returns to the soil. This process creates enriched soil, so farmers collect the shells.'),
  -- alolan-golem in moon
  (76, 7601, 26, 'Because it can’t fire boulders at a rapid pace, it’s been known to seize nearby Geodude and fire them from its back.'),
  -- slowpoke in moon
  (79, 7900, 26, 'Alolan home cooking involves drying Slowpoke tails and then simmering them into a salty stew.'),
  -- slowbro in moon
  (80, 8000, 26, 'Whenever Shellder bites down hard on its tail, it gives Slowbro a flash of inspiration...which it forgets a moment later.'),
  -- mega-slowbro in moon
  (80, 8001, 26, 'When bathed in the energy of Mega Evolution, Shellder converts into impregnable armor. There is virtually no change in Slowpoke.'),
  -- magnemite in moon
  (81, 8100, 26, 'It sends out electromagnetic waves, which let it float through the air. Touching it while it’s eating electricity will give you a full-body shock.'),
  -- magneton in moon
  (82, 8200, 26, 'It has about three times the electrical power of Magnemite. For some reason, outbreaks of this Pokémon happen when lots of sunspots appear.'),
  -- grimer in moon
  (88, 8800, 26, 'It was born from sludge transformed by exposure to X-rays from the moon. When its internal load of germs decreases, it dies.'),
  -- alolan-grimer in moon
  (88, 8801, 26, 'The crystals on Grimer’s body are lumps of toxins. If one falls off, lethal poisons leak out.'),
  -- muk in moon
  (89, 8900, 26, 'After recent environmental improvements, this Pokémon is now hardly seen at all. People speculate that it may go extinct at some point.'),
  -- alolan-muk in moon
  (89, 8901, 26, 'While it’s unexpectedly quiet and friendly, if it’s not fed any trash for a while, it will smash its Trainer’s furnishings and eat up the fragments.'),
  -- shellder in moon
  (90, 9000, 26, 'This Pokémon’s tongue is always hanging out. It uses its tongue with great dexterity to dig up sand from the seabed in its search for food.'),
  -- cloyster in moon
  (91, 9100, 26, 'Excavation of the tombs of ancient hunting tribes has turned up many spears tipped with spikes that had fallen off this Pokémon’s shell.'),
  -- gastly in moon
  (92, 9200, 26, 'Although Gastly is barely visible, when it’s near, a faint sweet smell lingers.'),
  -- haunter in moon
  (93, 9300, 26, 'It fears the light and revels in the dark. It may be on the verge of extinction in cities that stay brightly lit at night.'),
  -- gengar in moon
  (94, 9400, 26, 'It apparently wishes for a traveling companion. Since it was once human itself, it tries to create one by taking the lives of other humans.'),
  -- mega-gengar in moon
  (94, 9401, 26, 'The energy of Mega Evolution awakened it. It sinks into another dimension, where it keeps a patient watch for its chance to attack.'),
  -- drowzee in moon
  (96, 9600, 26, 'It finds really fun dreams tasty. When it makes friends with people, it may show them the most delicious dreams it’s ever eaten.'),
  -- hypno in moon
  (97, 9700, 26, 'As a matter of course, it makes anyone it meets fall asleep and has a taste of their dreams. Anyone having a good dream, it carries off.'),
  -- exeggcute in moon
  (102, 10200, 26, 'Six of them together form a full-fledged Pokémon. It’s often hunted by Crabrawler, but uses psychokinesis to drive it off.'),
  -- exeggutor in moon
  (103, 10300, 26, 'When the time comes, one of its three heads falls off. Before long, the fallen head grows into an Exeggcute.'),
  -- alolan-exeggutor in moon
  (103, 10301, 26, 'As it grew taller and taller, it outgrew its reliance on psychic powers, while within it awakened the power of the sleeping dragon.'),
  -- cubone in moon
  (104, 10400, 26, 'The skull it wears on its head is that of its dead mother. According to some, it will evolve when it comes to terms with the pain of her death.'),
  -- marowak in moon
  (105, 10500, 26, 'This Pokémon is out for vengeance on its natural enemy, Mandibuzz. It throws bones like boomerangs to try to take it down.'),
  -- alolan-marowak in moon
  (105, 10501, 26, 'Its custom is to mourn its lost companions. Mounds of dirt by the side of the road mark the graves of the Marowak.'),
  -- chansey in moon
  (113, 11300, 26, 'Not only are these Pokémon fast runners, they’re also few in number, so anyone who finds one must be lucky indeed.'),
  -- kangaskhan in moon
  (115, 11500, 26, 'The child in its pouch leaves home after roughly three years. That is the only time the mother is heard to cry wildly.'),
  -- goldeen in moon
  (118, 11800, 26, 'Spellbound by the length of its horn and the beauty of its fins, many strange Trainers raise Goldeen and nothing but Goldeen.'),
  -- seaking in moon
  (119, 11900, 26, 'Trainers who are crazy for Seaking are divided into horn enthusiasts and fin enthusiasts. The two groups do not get along well.'),
  -- staryu in moon
  (120, 12000, 26, 'This Pokémon gets nibbled on by Lumineon and others. Thanks to its red core, it regenerates fast, so it’s unconcerned by their snack attacks.'),
  -- starmie in moon
  (121, 12100, 26, 'Its unusual body shape, reminiscent of abstract art, led local people to spread rumors that this Pokémon may be an invader from outer space.'),
  -- scyther in moon
  (123, 12300, 26, 'While young, they live together deep in the mountains, training themselves in how to fight with their scythes and move at high speeds.'),
  -- electabuzz in moon
  (125, 12500, 26, 'Electricity leaks from it in amounts far greater than the amount of electricity it eats.'),
  -- magmar in moon
  (126, 12600, 26, 'When angered, it spouts brilliant fire from all over its body. It doesn’t calm down until its opponent has burned to ash.'),
  -- pinsir in moon
  (127, 12700, 26, 'One solid blow from its horns is enough to split apart a large tree. Its greatest rival in Alola is Vikavolt.'),
  -- tauros in moon
  (128, 12800, 26, 'Although it’s known to be a fierce Pokémon, Tauros in the Alola region are said to possess a measure of calmness.'),
  -- magikarp in moon
  (129, 12900, 26, 'Its reckless leaps make it easy pickings for predators. On the bright side, many Pokémon enjoy longer life spans, thanks to Magikarp.'),
  -- gyarados in moon
  (130, 13000, 26, 'There are people who swear that any place Gyarados appears is fated for destruction.'),
  -- mega-gyarados in moon
  (130, 13001, 26, 'It jets water from the orifices on its sides, streaking above the water surface at supersonic speed.'),
  -- lapras in moon
  (131, 13100, 26, 'These Pokémon were once near extinction due to poaching. Following protective regulations, there is now an overabundance of them.'),
  -- ditto in moon
  (132, 13200, 26, 'With its astonishing capacity for metamorphosis, it can get along with anything. It does not get along well with its fellow Ditto.'),
  -- eevee in moon
  (133, 13300, 26, 'Current studies show it can evolve into an incredible eight different species of Pokémon.'),
  -- vaporeon in moon
  (134, 13400, 26, 'Blending in with the water and erasing all signs of its presence, it patiently waits for its prey, fish Pokémon.'),
  -- jolteon in moon
  (135, 13500, 26, 'When its fur stands on end, that’s a sign it’s about to give off a jolt of electricity. Take care, as sometimes lightning strikes next to it, too.'),
  -- flareon in moon
  (136, 13600, 26, 'Its average body temperature is between 1,300 and 1,500 degrees Fahrenheit. In its internal flame sac, temperatures reach 3,000 degrees.'),
  -- porygon in moon
  (137, 13700, 26, 'It can convert its body into digital data, which enables it to enter cyberspace.'),
  -- aerodactyl in moon
  (142, 14200, 26, 'In ancient times, it ruled the skies. A widely accepted theory is that it went extinct due to a large meteor impact.'),
  -- snorlax in moon
  (143, 14300, 26, 'It eats nearly 900 pounds of food every day. It starts nodding off while eating—and continues to eat even while it’s asleep.'),
  -- dratini in moon
  (147, 14700, 26, 'After a 10-hour struggle, a fisherman was able to pull one up and confirm its existence.'),
  -- dragonair in moon
  (148, 14800, 26, 'From time immemorial, it has been venerated by agricultural peoples as an entity able to control the weather.'),
  -- dragonite in moon
  (149, 14900, 26, 'Incur the wrath of this normally calm Pokémon at your peril, because it will smash everything to smithereens before it’s satisfied.'),
  -- ledyba in moon
  (165, 16500, 26, 'They communicate with one another using bodily fluids that give off odors. When they’re angry, their odor smells sour.'),
  -- ledian in moon
  (166, 16600, 26, 'In battle, it throws punches with all four arms. The power of each individual blow is piddly, so it aims to win by quantity rather than quality.'),
  -- spinarak in moon
  (167, 16700, 26, 'Some fishermen weave its sturdy thread into nets to catch fish Pokémon.'),
  -- ariados in moon
  (168, 16800, 26, 'It spins thread from both its rear and its mouth. Then it wraps its prey up in thread and sips their bodily fluids at its leisure.'),
  -- crobat in moon
  (169, 16900, 26, 'Silent and swift in its four-winged flight, it bites down on its prey before they realize what’s happening. In a heartbeat, it drains their blood.'),
  -- chinchou in moon
  (170, 17000, 26, 'It lives in the depths beyond the reach of sunlight. It flashes lights on its antennae to communicate with others of its kind.'),
  -- lanturn in moon
  (171, 17100, 26, 'This Pokémon flashes a bright light that blinds its prey. This creates an opening for it to deliver an electrical attack.'),
  -- pichu in moon
  (172, 17200, 26, 'Despite this Pokémon’s cute appearance, those who want to live with one should prepare to be on the receiving end of its electric jolts.'),
  -- cleffa in moon
  (173, 17300, 26, 'Because of its silhouette, it’s believed to be a star reborn. For some reason, it loves Minior.'),
  -- igglybuff in moon
  (174, 17400, 26, 'It moves by bouncing along. As it moves a lot, it sweats, and its body gives off a sweet aroma.'),
  -- sudowoodo in moon
  (185, 18500, 26, 'Apparently, the larger the green parts of this Pokémon, the more collectors value it. It’s a particular favorite among elderly people.'),
  -- politoed in moon
  (186, 18600, 26, 'It’s the leader of Poliwag and Poliwhirl. When Politoed roars, they all cower in fear.'),
  -- espeon in moon
  (196, 19600, 26, 'It unleashes psychic power from the orb on its forehead. When its power is exhausted, the orb grows dull and dark.'),
  -- umbreon in moon
  (197, 19700, 26, 'With its black fur, it blends into the darkness. It bides its time, and when prey appears, this Pokémon goes for its throat, and then eats it.'),
  -- murkrow in moon
  (198, 19800, 26, 'Seen as a symbol of bad luck, it’s generally disliked. Yet it gives presents—objects that sparkle or shine—to Trainers it’s close to.'),
  -- slowking in moon
  (199, 19900, 26, 'This Pokémon is so famed for its intellect that a proverb still persists in some regions: “When in doubt, ask Slowking.”'),
  -- misdreavus in moon
  (200, 20000, 26, 'If you hear a sobbing sound emanating from a vacant room, it’s undoubtedly a bit of mischief from Misdreavus.'),
  -- snubbull in moon
  (209, 20900, 26, 'Its growls make its opponents uneasy. This laid-back Pokémon tends to sleep half the day.'),
  -- granbull in moon
  (210, 21000, 26, 'More timid than Snubbull, this Pokémon is doted on by young people amused at the contrast between its looks and its attitude.'),
  -- scizor in moon
  (212, 21200, 26, 'Once it has identified an enemy, this Pokémon smashes it mercilessly with pincers hard as steel.'),
  -- mega-scizor in moon
  (212, 21201, 26, 'Due to the effects of Mega Evolution, its pincers have taken on a more diabolical form, ripping anything they pinch to shreds.'),
  -- sneasel in moon
  (215, 21500, 26, 'It uses its claws to poke holes in eggs so it can slurp out the insides. Breeders consider it a scourge and will drive it away or eradicate it.'),
  -- corsola in moon
  (222, 22200, 26, 'Pursued by Mareanie for the branches on its head, this Pokémon will sometimes snap its own branches off as a diversion while it escapes.'),
  -- delibird in moon
  (225, 22500, 26, 'It has a generous habit of sharing its food with people and Pokémon, so it’s always scrounging around for more food.'),
  -- skarmory in moon
  (227, 22700, 26, 'Its metal body is sturdy, but it does rust rather easily. So on rainy days, this Pokémon prefers to stay put in its nest.'),
  -- porygon2 in moon
  (233, 23300, 26, 'Porygon was updated to a new version in readiness for planetary development. But that dream remains unrealized as yet.'),
  -- smeargle in moon
  (235, 23500, 26, 'It draws symbols all over the place to mark its territory. In towns with many Smeargle, the walls are covered in graffiti.'),
  -- elekid in moon
  (239, 23900, 26, 'This Pokémon is constantly fighting with Togedemaru that try to steal its electricity. It’s a pretty even match.'),
  -- magby in moon
  (240, 24000, 26, 'A famous potter lives with a Magby. Apparently its soft flames produce fine works.'),
  -- miltank in moon
  (241, 24100, 26, 'Most people raise it for its milk, but it’s quite tough and strong, so it’s also well suited for battle.'),
  -- blissey in moon
  (242, 24200, 26, 'Its fluffy fur coat acts as a sensor, enabling it to read the feelings of people and Pokémon.'),
  -- wingull in moon
  (278, 27800, 26, 'Fishermen keep an eye out for Wingull in the sky, because wherever they’re circling, the ocean is sure to be teeming with fish Pokémon.'),
  -- pelipper in moon
  (279, 27900, 26, 'Gathering food is the work of young males. They store food in their capacious beaks and carry it back to others waiting in the nest.'),
  -- surskit in moon
  (283, 28300, 26, 'When this Pokémon senses danger, a sweet fluid oozes from the tip of its head. The taste of it disgusts bird Pokémon.'),
  -- masquerain in moon
  (284, 28400, 26, 'Its wings and antennae don’t cope well with moisture. After a rain, it faces sunward to dry off.'),
  -- makuhita in moon
  (296, 29600, 26, 'Their daily routine consists of training together first thing in the morning, eating and napping in the afternoon, and then more training afterward.'),
  -- hariyama in moon
  (297, 29700, 26, 'They love to compare their freakish strength— strength enough to send a truck flying with a single slap.'),
  -- nosepass in moon
  (299, 29900, 26, 'It uses powerful magnetism to drag its prey toward it. It’s also been known to pull in metal, which it collects and uses to protect itself.'),
  -- sableye in moon
  (302, 30200, 26, 'This Pokémon is feared. When its gemstone eyes begin to glow with a sinister shine, it’s believed that Sableye will steal people’s spirits away.'),
  -- mega-sableye in moon
  (302, 30201, 26, 'Supporting a giant heavy jewel, it can’t change direction very nimbly and is vulnerable to attack from behind.'),
  -- carvanha in moon
  (318, 31800, 26, 'If they scent the faintest trace of blood, they rush to attack en masse. When alone, they’re rather cowardly.'),
  -- sharpedo in moon
  (319, 31900, 26, 'It has a sad history. In the past, its dorsal fin was a treasured foodstuff, so this Pokémon became a victim of overfishing.'),
  -- wailmer in moon
  (320, 32000, 26, 'It shows off by spraying jets of seawater from the nostrils above its eyes. It eats a solid ton of Wishiwashi every day.'),
  -- wailord in moon
  (321, 32100, 26, 'Its immense size is the reason for its popularity. Wailord watching is a favorite sightseeing activity in various parts of the world.'),
  -- torkoal in moon
  (324, 32400, 26, 'If the fire burning within its shell goes out, it will die. Those who wish to raise one in their home must always keep something flammable at hand.'),
  -- spinda in moon
  (327, 32700, 26, 'Each and every Spinda has a slightly different configuration of spots. There are collectors who enjoy the tiny differences in their spot patterns.'),
  -- trapinch in moon
  (328, 32800, 26, 'As it digs through the sand, its giant jaws crush any rocks that obstruct its path. It builds a funnel-shaped nest.'),
  -- vibrava in moon
  (329, 32900, 26, 'To help make its wings grow, it dissolves quantities of prey in its digestive juices and guzzles them down every day.'),
  -- flygon in moon
  (330, 33000, 26, 'This Pokémon hides in the heart of sandstorms it creates and seldom appears where people can see it.'),
  -- barboach in moon
  (339, 33900, 26, 'Its slippery body is hard to grasp, so much so that there are festivals where people compete to see how many they can catch barehanded.'),
  -- whiscash in moon
  (340, 34000, 26, 'Sighting Whiscash leaping from the water is believed to herald an earthquake.'),
  -- feebas in moon
  (349, 34900, 26, 'Although unattractive and unpopular, this Pokémon’s marvelous vitality has made it a subject of research.'),
  -- milotic in moon
  (350, 35000, 26, 'It lives at the bottom of clear lakes. In times of war, it shows itself, which soothes people’s minds and hearts.'),
  -- castform in moon
  (351, 35100, 26, 'Its form changes on its own, due to its cells’ sensitive reactions to temperature and humidity.'),
  -- absol in moon
  (359, 35900, 26, 'Although it’s said to bring disaster, in actuality, this Pokémon possesses a calm disposition and warns people of any crises that loom.'),
  -- snorunt in moon
  (361, 36100, 26, 'It can only survive in cold areas. It bounces happily around, even in environments as cold as -150 degrees Fahrenheit.'),
  -- glalie in moon
  (362, 36200, 26, 'Its prey is instantaneously frozen stiff by the cold air it exhales from its huge mouth. While they’re in that frozen state, it gobbles them up.'),
  -- mega-glalie in moon
  (362, 36201, 26, 'It envelops prey in its mouth, freezing them instantly. But its jaw is dislocated, so it’s unable to eat them.'),
  -- relicanth in moon
  (369, 36900, 26, 'It was fortuitously discovered during a deep sea expedition. Its teeth have atrophied, so it now survives on microscopic organisms it sucks up.'),
  -- luvdisc in moon
  (370, 37000, 26, 'Loving couples have a soft spot for this Pokémon, so honeymoon hotels often release this Pokémon into their pools.'),
  -- bagon in moon
  (371, 37100, 26, 'With its steel-hard stone head, it headbutts indiscriminately. This is because of the stress it feels at being unable to fly.'),
  -- shelgon in moon
  (372, 37200, 26, 'They lurk deep within caves—motionless, neither eating nor drinking. Why they don’t die is not known.'),
  -- salamence in moon
  (373, 37300, 26, 'It flies around on its wings, which have grown in at last. In its happiness, it gushes hot flames, burning up the fields it passes over.'),
  -- mega-salamence in moon
  (373, 37301, 26, 'Mega Evolution fuels its brutality, and it may even turn on the Trainer who raised it. It’s been dubbed "the blood-soaked crescent."'),
  -- beldum in moon
  (374, 37400, 26, 'With magnetic traction, it pulls its opponents in close. When they’re in range, it slashes them with its rear claws.'),
  -- metang in moon
  (375, 37500, 26, 'It adores magnetic minerals, so it pursues Nosepass at speeds exceeding 60 mph.'),
  -- metagross in moon
  (376, 37600, 26, 'A linkage of two Metang, this Pokémon can perform any calculation in a flash by utilizing parallel processing in its four brains.'),
  -- mega-metagross in moon
  (376, 37601, 26, 'Mega Evolution stimulated its brain. It emerged as a ruthless Pokémon that will clutch at any means of ensuring its victories.'),
  -- cranidos in moon
  (408, 40800, 26, 'In rock layers where Cranidos fossils are found, the fossilized trunks of trees snapped in two are also often found.'),
  -- rampardos in moon
  (409, 40900, 26, 'Records exist of a revived fossil that evolved into Rampardos. It proceeded to escape and then destroy a skyscraper with a headbutt.'),
  -- shieldon in moon
  (410, 41000, 26, 'This Pokémon lived in primeval jungles. Few enemies would have been willing to square off against its heavily armored face, so it’s thought.'),
  -- bastiodon in moon
  (411, 41100, 26, 'It lived in the same environments as Rampardos. Their fossils have been found together— seemingly from after they’d fought to the finish.'),
  -- shellos in moon
  (422, 42200, 26, 'Purple mucus sticks to the hands of anyone who touches it. Take care, as the substance is troublesome to wash off.'),
  -- shellos-east in moon
  (422, 42201, 26, 'The difference in color from one Shellos to another seems to be a result of their diet. No large changes can be seen in their capabilities.'),
  -- gastrodon in moon
  (423, 42300, 26, 'Plankton, invisible to the naked eye, is its main food source. It comes onto the land periodically, but the reason for this is not known.'),
  -- gastrodon-east in moon
  (423, 42301, 26, 'Experiments are being conducted to discover what happens when a Gastrodon is raised in a location other than the sea where it was born.'),
  -- drifloon in moon
  (425, 42500, 26, 'If for some reason its body bursts, its soul spills out with a screaming sound.'),
  -- drifblim in moon
  (426, 42600, 26, 'Even while under careful observation, large flocks of Drifblim flying at dusk will inexplicably disappear from view.'),
  -- mismagius in moon
  (429, 42900, 26, 'Mismagius have been known to cast spells to make people fall in love, so some people search for this Pokémon as if their life depended on it.'),
  -- honchkrow in moon
  (430, 43000, 26, 'If its Murkrow cronies fail to catch food for it, or if it feels they have betrayed it, it will hunt them down wherever they are and punish them.'),
  -- bonsly in moon
  (438, 43800, 26, 'From its eyes, it can expel excess moisture from its body. This liquid is similar in composition to human sweat.'),
  -- happiny in moon
  (440, 44000, 26, 'It’s too small to lay eggs yet. As a surrogate, it searches out round white stones.'),
  -- gible in moon
  (443, 44300, 26, 'It skulks in caves, and when prey or an enemy passes by, it leaps out and chomps them. The force of its attack sometimes chips its teeth.'),
  -- gabite in moon
  (444, 44400, 26, 'Shiny objects are its passion. It can be found in its cave, scarcely moving, its gaze fixed on the jewels it’s amassed or Carbink it has caught.'),
  -- garchomp in moon
  (445, 44500, 26, 'The protuberances on its head serve as sensors. It can even detect distant prey.'),
  -- mega-garchomp in moon
  (445, 44501, 26, 'Its vaunted wings become scythes, sending it mad with rage. It swings its scythes wildly and slices the ground to pieces.'),
  -- munchlax in moon
  (446, 44600, 26, 'When it finds something that looks like it might be edible, it goes right ahead and swallows it whole. That’s why it gets fatter day by day.'),
  -- riolu in moon
  (447, 44700, 26, 'It’s tough enough to run right through the night, and it’s also a hard worker, but it’s still just a youngster.'),
  -- lucario in moon
  (448, 44800, 26, 'They can detect the species of a living being— and its emotions—from over half a mile away. They control auras and hunt their prey in packs.'),
  -- mega-lucario in moon
  (448, 44801, 26, 'It readies itself to face its enemies by focusing its mental energies. Its fighting style can be summed up in a single word: heartless.'),
  -- finneon in moon
  (456, 45600, 26, 'Its double tail fins propel its energetic jumps. When it breaks the surface of the sea, Wingull swoop down to grab it on the fly.'),
  -- lumineon in moon
  (457, 45700, 26, 'This deep-sea Pokémon lives at the bottom of the sea. Its fins haul it over the seabed in search of its favorite food—Starmie.'),
  -- weavile in moon
  (461, 46100, 26, 'They dwell in cold places. This Pokémon’s main food source in Alola is Vulpix and Sandshrew, which they carefully divide among their group.'),
  -- magnezone in moon
  (462, 46200, 26, 'As it zooms through the sky, this Pokémon seems to be receiving signals of unknown origin, while transmitting signals of unknown purpose.'),
  -- electivire in moon
  (466, 46600, 26, 'When it gets excited, it thumps its chest. With every thud, thunder roars and electric sparks shower all around.'),
  -- magmortar in moon
  (467, 46700, 26, 'From its arm, it launches fireballs hotter than 3,500 degrees Fahrenheit. Its arm starts to melt when it fires a whole barrage.'),
  -- leafeon in moon
  (470, 47000, 26, 'The younger they are, the more they smell like fresh grass. With age, their fragrance takes on the odor of fallen leaves.'),
  -- glaceon in moon
  (471, 47100, 26, 'It freezes its fur into icicles, spiky and sharp, and tackles its prey.'),
  -- porygon-z in moon
  (474, 47400, 26, 'Its program was modified to facilitate extra-dimensional activities, but that led to noticeably strange behavior.'),
  -- probopass in moon
  (476, 47600, 26, 'The main body controls three mobile units called Mini-Noses, which it maneuvers to catch prey.'),
  -- froslass in moon
  (478, 47800, 26, 'The soul of a woman lost on a snowy mountain possessed an icicle, becoming this Pokémon. The food it most relishes is the souls of men.'),
  -- lillipup in moon
  (506, 50600, 26, 'The long fur surrounding its face functions as radar, enabling it to probe the condition of its battle opponents.'),
  -- herdier in moon
  (507, 50700, 26, 'This Pokémon obeys its master’s orders faithfully. However, it refuses to listen to anything said by a person it doesn’t respect.'),
  -- stoutland in moon
  (508, 50800, 26, 'With this wise Pokémon, there could be no concern that it would ever attack people. Some parents even trust it to babysit.'),
  -- roggenrola in moon
  (524, 52400, 26, 'The hexagonal cavity is its ear. It walks in the direction of sounds it hears, but if the sounds cease, it panics and topples over.'),
  -- boldore in moon
  (525, 52500, 26, 'It explores caves in search of underground water. It’s not comfortable around water, so this Pokémon takes great care in lapping it up.'),
  -- gigalith in moon
  (526, 52600, 26, 'Known for its hefty horsepower, this Pokémon is a popular partner for construction workers.'),
  -- cottonee in moon
  (546, 54600, 26, 'Pillows and beds stuffed with cotton exhaled by Cottonee are soft and puffy, light and airy— altogether top quality.'),
  -- whimsicott in moon
  (547, 54700, 26, 'This Pokémon appears, riding upon the wind. But if the wind gusts up, it’ll blow the cotton on this Pokémon’s head clean off.'),
  -- petilil in moon
  (548, 54800, 26, 'By pruning the leaves on its head with regularity, this Pokémon can be grown into a fine plump shape.'),
  -- lilligant in moon
  (549, 54900, 26, 'As soon as it finds a male to be its partner, the beautiful flower on its head darkens, droops, and withers away.'),
  -- sandile in moon
  (551, 55100, 26, 'It conceals itself in the sand and chomps down on the legs of any prey that unwarily walk over it. Its favorite food is Trapinch.'),
  -- krokorok in moon
  (552, 55200, 26, 'Thanks to the special membrane covering its eyes, it can see its surroundings clearly, even in the middle of the night.'),
  -- krookodile in moon
  (553, 55300, 26, 'After clamping down with its powerful jaws, it twists its body around to rip its prey in half.'),
  -- tirtouga in moon
  (564, 56400, 26, 'Reputed to be the ancestor of most turtle Pokémon, it lived in warm seas approximately a hundred million years ago.'),
  -- carracosta in moon
  (565, 56500, 26, 'Active both on land and in the sea, this Pokémon drags its land-based prey into the water to finish it off.'),
  -- archen in moon
  (566, 56600, 26, 'To all appearances flightless, it was able to glide down from tall treetops to snag its prey.'),
  -- archeops in moon
  (567, 56700, 26, 'They hunted in flocks. When one Archeops had the prey cornered, another would swoop on it.'),
  -- trubbish in moon
  (568, 56800, 26, 'It gorges on trash until its stomach is full. Then it belches toxic gas. An unlucky whiff of gas will put a person in the hospital.'),
  -- garbodor in moon
  (569, 56900, 26, 'For a time, their numbers increased explosively in Alola. Since the arrival of Grimer, their population has decreased dramatically.'),
  -- vanillite in moon
  (582, 58200, 26, 'It feels pleasantly cool when embraced. This Pokémon is treasured by households in warm regions.'),
  -- vanillish in moon
  (583, 58300, 26, 'This Pokémon has existed since the Ice Age. It controls particles of ice, freezes its opponents, and then shatters them with a headbutt.'),
  -- vanilluxe in moon
  (584, 58400, 26, 'Even if it loses one of its heads, it can live relatively problem-free. It makes snow clouds inside its body.'),
  -- emolga in moon
  (587, 58700, 26, 'It grills berries and bug Pokémon with electric shocks and makes a meal of them. It usually nests in the holes gouged in trees by Pikipek.'),
  -- alomomola in moon
  (594, 59400, 26, 'They float upon the open sea. Many water Pokémon gather in the area around Alomomola.'),
  -- rufflet in moon
  (627, 62700, 26, 'With its sharp claws, this Pokémon pierces its prey, and then it pecks at them. Although it also consumes berries, it’s a carnivore at heart.'),
  -- braviary in moon
  (628, 62800, 26, 'It’s thought that people disturbed their habitats in the past, so Braviary banded together to fight back.'),
  -- vullaby in moon
  (629, 62900, 26, 'It can’t fly yet and must wait until its wings have developed more. Since it’s still at a playful age, it hops around friskily.'),
  -- mandibuzz in moon
  (630, 63000, 26, 'It circles in the sky, keeping a keen eye out for Pokémon in a weakened state. Its choicest food is Cubone.'),
  -- fletchling in moon
  (661, 66100, 26, 'When it’s excited, its temperature can double, spiking hormone production in its body.'),
  -- fletchinder in moon
  (662, 66200, 26, 'It will not tolerate other Fletchinder entering its territory, which has a radius of several miles.'),
  -- talonflame in moon
  (663, 66300, 26, 'It zooms directly at its prey at flight speeds of close to 310 mph, while fiery embers scatter from gaps in its feathers.'),
  -- pancham in moon
  (674, 67400, 26, 'There’s no point to the leaf in its mouth, aside from an effort to look cool. It’s mischievous, so it’s not well suited to inexperienced Trainers.'),
  -- pangoro in moon
  (675, 67500, 26, 'From the slight twitches of its bamboo leaf, it deduces its opponent’s movements. It’s eager to tussle but kindhearted toward its companions.'),
  -- sylveon in moon
  (700, 70000, 26, 'When this Pokémon sights its prey, it swirls its ribbonlike feelers as a distraction. A moment later, it pounces.'),
  -- carbink in moon
  (703, 70300, 26, 'Although this Pokémon is not especially rare, its glittering, jewel-draped body draws attention from people.'),
  -- goomy in moon
  (704, 70400, 26, 'Its source of protection is its slimy, germ-laden mucous membrane. Anyone who touches it needs some thorough hand-washing.'),
  -- sliggoo in moon
  (705, 70500, 26, 'This Pokémon’s mucous can dissolve anything. Toothless, it sprays mucous on its prey. Once they’re nicely dissolved, it slurps them up.'),
  -- goodra in moon
  (706, 70600, 26, 'It gets picked on because it’s meek. But then, whoever teased it gets to feel the full force of its horns and a good swatting from its thick tail.'),
  -- klefki in moon
  (707, 70700, 26, 'It inserts its horn into chinks in metal, absorbing metal ions. For some reason, it collects keys.'),
  -- phantump in moon
  (708, 70800, 26, 'According to legend, medicine to cure any illness can be made by plucking the green leaves on its head, brewing them, and boiling down the liquid.'),
  -- trevenant in moon
  (709, 70900, 26, 'Through its roots, it exerts control over other trees. A deadly curse falls upon anyone cutting down trees in forests where Trevenant dwell.'),
  -- zygarde in moon
  (718, 71800, 26, 'It’s thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it.'),
  -- zygarde-10-percent in moon
  (718, 71801, 26, 'This is Zygarde’s form when about 10% of its cells have been gathered. It runs across the land at speeds greater than 60 mph.'),
  -- zygarde-complete in moon
  (718, 71803, 26, 'This is Zygarde’s 100% form. It has enough power to overwhelm even Xerneas or Yveltal.'),
  -- rowlet in moon
  (722, 72200, 26, 'Silently it glides, drawing near its targets. Before they even notice it, it begins to pelt them with vicious kicks.'),
  -- dartrix in moon
  (723, 72300, 26, 'It throws sharp feathers called blade quills at enemies or prey. It seldom misses.'),
  -- decidueye in moon
  (724, 72400, 26, 'Although basically cool and cautious, when it’s caught by surprise, it’s seized by panic.'),
  -- litten in moon
  (725, 72500, 26, 'It doesn’t allow its emotions to be easily seen. Earning its trust takes time. It prefers solitude.'),
  -- torracat in moon
  (726, 72600, 26, 'It boasts powerful front legs. With a single punch, it can bend an iron bar right over.'),
  -- incineroar in moon
  (727, 72700, 26, 'After hurling ferocious punches and flinging furious kicks, it finishes opponents off by spewing fire from around its navel.'),
  -- popplio in moon
  (728, 72800, 26, 'This Pokémon can control water bubbles. It practices diligently so it can learn to make big bubbles.'),
  -- brionne in moon
  (729, 72900, 26, 'It cares deeply for its companions. When its Trainer is feeling down, it performs a cheery dance to try and help.'),
  -- primarina in moon
  (730, 73000, 26, 'Its singing voice is its chief weapon in battle. This Pokémon’s Trainer must prioritize the daily maintenance of its throat at all costs.'),
  -- pikipek in moon
  (731, 73100, 26, 'This Pokémon feeds on berries, whose leftover seeds become the ammunition for the attacks it fires off from its mouth.'),
  -- trumbeak in moon
  (732, 73200, 26, 'By bending its beak, it can produce a variety of calls and brand itself a noisy nuisance for its neighbors.'),
  -- toucannon in moon
  (733, 73300, 26, 'Within its beak, its internal gas ignites, explosively launching seeds with enough power to pulverize boulders.'),
  -- yungoos in moon
  (734, 73400, 26, 'It wanders around in a never-ending search for food. At dusk, it collapses from exhaustion and falls asleep on the spot.'),
  -- gumshoos in moon
  (735, 73500, 26, 'It adores having Rattata and Raticate for dinner, but as it’s diurnal, it never encounters them. This Pokémon boasts incredible patience.'),
  -- grubbin in moon
  (736, 73600, 26, 'They often gather near places frequented by electric Pokémon in order to avoid being attacked by bird Pokémon.'),
  -- charjabug in moon
  (737, 73700, 26, 'From the food it digests, it generates electricity, and it stores this energy in its electric sac.'),
  -- vikavolt in moon
  (738, 73800, 26, 'It produces electricity via an electrical organ in its abdomen. It overwhelms bird Pokémon with shocking beams of electrical energy.'),
  -- crabrawler in moon
  (739, 73900, 26, 'It punches so much, its pincers often come off from overuse, but they grow back quickly. What little meat they contain is rich and delicious.'),
  -- crabominable in moon
  (740, 74000, 26, 'It just throws punches indiscriminately. In times of desperation, it can lop off its own pincers and fire them like rockets.'),
  -- oricorio in moon
  (741, 74100, 26, 'This Oricorio has sipped red nectar. Its passionate dance moves cause its enemies to combust in both body and mind.'),
  -- oricorio-pom-pom in moon
  (741, 74101, 26, 'It creates an electric charge by rubbing its feathers together. It dances over to its enemies and delivers shocking electrical punches.'),
  -- oricorio-pau in moon
  (741, 74102, 26, 'This Oricorio has sipped pink nectar. Its enemies'' hearts melt at the sight of its gently swaying hips.'),
  -- oricorio-sensu in moon
  (741, 74103, 26, 'It summons the dead with its dreamy dancing. From their malice, it draws power with which to curse its enemies.'),
  -- cutiefly in moon
  (742, 74200, 26, 'Myriads of Cutiefly flutter above the heads of people who have auras resembling those of flowers.'),
  -- ribombee in moon
  (743, 74300, 26, 'Some of Ribombee’s pollen puffs are highly nutritious. They are sometimes sold as supplements.'),
  -- rockruff in moon
  (744, 74400, 26, 'This Pokémon has lived with people since times long ago. It can sense when its Trainer is in the dumps and will stick close by its Trainer’s side.'),
  -- lycanroc in moon
  (745, 74500, 26, 'When properly raised from a young age, it will become a trustworthy partner that will absolutely never betray its Trainer.'),
  -- lycanroc-midnight in moon
  (745, 74501, 26, 'It goads its enemies into attacking, withstands the hits, and in return, delivers a headbutt, crushing their bones with its rocky mane.'),
  -- wishiwashi in moon
  (746, 74600, 26, 'It’s awfully weak and notably tasty, so everyone is always out to get it. As it happens, anyone trying to bully it receives a painful lesson.'),
  -- mareanie in moon
  (747, 74700, 26, 'It’s found crawling on beaches and seafloors. The coral that grows on Corsola’s head is as good as a five-star banquet to this Pokémon.'),
  -- toxapex in moon
  (748, 74800, 26, 'Those attacked by Toxapex’s poison will suffer intense pain for three days and three nights. Post-recovery, there will be some aftereffects.'),
  -- mudbray in moon
  (749, 74900, 26, 'It has a stubborn, individualistic disposition. Eating dirt, making mud, and playing in the mire all form part of its daily routine.'),
  -- mudsdale in moon
  (750, 75000, 26, 'Its heavy, mud-covered kicks are its best means of attack, and it can reduce large trucks to scrap without breaking a sweat.'),
  -- dewpider in moon
  (751, 75100, 26, 'When it comes across enemies or potential prey, this Pokémon smashes its water-bubble-covered head into them.'),
  -- araquanid in moon
  (752, 75200, 26, 'Despite what its appearance suggests, it cares for others. If it finds vulnerable, weak Pokémon, it protectively brings them into its water bubble.'),
  -- fomantis in moon
  (753, 75300, 26, 'They give off a sweet and refreshing scent. Cutiefly often gather near the tall grass where Fomantis are hiding.'),
  -- lurantis in moon
  (754, 75400, 26, 'It fires beams from its sickle-shaped petals. These beams are powerful enough to cleave through thick metal plates.'),
  -- morelull in moon
  (755, 75500, 26, 'As it drowses the day away, it nourishes itself by sucking from tree roots. It wakens at the fall of night, wandering off in search of a new tree.'),
  -- shiinotic in moon
  (756, 75600, 26, 'It emits flickering spores that cause drowsiness. When its prey succumb to sleep, this Pokémon feeds on them by sucking in their energy.'),
  -- salandit in moon
  (757, 75700, 26, 'Volcanoes or dry, craggy places are its home. It emanates a sweet-smelling poisonous gas that attracts bug Pokémon, then attacks them.'),
  -- salazzle in moon
  (758, 75800, 26, 'Filled with pheromones, its poisonous gas can be diluted to use in the production of luscious perfumes.'),
  -- stufful in moon
  (759, 75900, 26, 'A touch from anyone except a known friend sends it into a surging frenzy. It’s an incredibly dangerous Pokémon.'),
  -- bewear in moon
  (760, 76000, 26, 'This Pokémon has the habit of hugging its companions. Many Trainers have left this world after their spines were squashed by its hug.'),
  -- bounsweet in moon
  (761, 76100, 26, 'Although it’s too sugary for human consumption, Bounsweet’s sweat can be watered down into a juice with just the right amount of sweetness.'),
  -- steenee in moon
  (762, 76200, 26, 'This Pokémon is always bouncing around energetically. Other Pokémon are attracted by its lively appearance and pleasant aroma.'),
  -- tsareena in moon
  (763, 76300, 26, 'A Pokémon known for the beauty of its well-shaped legs, it sometimes appears as a mascot in advertisements for beauty salons.'),
  -- comfey in moon
  (764, 76400, 26, 'Baths prepared with the flowers from its vine have a relaxing effect, so this Pokémon is a hit with many people.'),
  -- oranguru in moon
  (765, 76500, 26, 'Deep in the jungle, high in the lofty canopy, this Pokémon abides. On rare occasions, it shows up at the beach to match wits with Slowking.'),
  -- passimian in moon
  (766, 76600, 26, 'They battle with hard berries for weapons. Their techniques are passed from the boss to the group, generation upon generation.'),
  -- wimpod in moon
  (767, 76700, 26, 'Its habitat varies from beaches to seabeds. A natural scavenger, it will gleefully chow down on anything edible, no matter how rotten.'),
  -- golisopod in moon
  (768, 76800, 26, 'It battles skillfully with its six arms, but spends most of its time peacefully meditating in caves deep beneath the sea.'),
  -- sandygast in moon
  (769, 76900, 26, 'It takes control of anyone who puts a hand in its mouth. And so it adds to the accumulation of its sand-mound body.'),
  -- palossand in moon
  (770, 77000, 26, 'Buried beneath the castle are masses of dried-up bones from those whose vitality it has drained.'),
  -- pyukumuku in moon
  (771, 77100, 26, 'These Pokémon line the beaches. The sticky mucous that covers their bodies can be used to soothe sunburned skin. How convenient!'),
  -- type-null in moon
  (772, 77200, 26, 'Due to the danger that this synthetic Pokémon may go on a rampage, it wears a control mask to restrain its power.'),
  -- silvally in moon
  (773, 77300, 26, 'Although its name was Type: Null at first, the boy who evolved it into this form gave it the name by which it is now known.'),
  -- silvally-fighting in moon
  (773, 77301, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-flying in moon
  (773, 77302, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-poison in moon
  (773, 77303, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-ground in moon
  (773, 77304, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-rock in moon
  (773, 77305, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-bug in moon
  (773, 77306, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-ghost in moon
  (773, 77307, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-steel in moon
  (773, 77308, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-fire in moon
  (773, 77309, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-water in moon
  (773, 77310, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-grass in moon
  (773, 77311, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-electric in moon
  (773, 77312, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-psychic in moon
  (773, 77313, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-ice in moon
  (773, 77314, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-dragon in moon
  (773, 77315, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-dark in moon
  (773, 77316, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- silvally-fairy in moon
  (773, 77317, 26, 'Upon awakening, its RKS System is activated. By employing specific memories, this Pokémon can adapt its type to confound its enemies.'),
  -- minior in moon
  (774, 77400, 26, 'Strong impacts can knock it out of its shell. This Pokémon was born from mutated nanoparticles.'),
  -- minior-core in moon
  (774, 77401, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- minior-orange in moon
  (774, 77402, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- minior-yellow in moon
  (774, 77403, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- minior-green in moon
  (774, 77404, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- minior-blue in moon
  (774, 77405, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- minior-indigo in moon
  (774, 77406, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- minior-violet in moon
  (774, 77407, 26, 'If its core stays exposed, it will soon die off. It’s possible that it may survive if it’s put into a Poké Ball quickly enough.'),
  -- komala in moon
  (775, 77500, 26, 'The log it holds was given to it by its parents at birth. It has also been known to cling to the arm of a friendly Trainer.'),
  -- turtonator in moon
  (776, 77600, 26, 'It gushes fire and poisonous gases from its nostrils. Its dung is an explosive substance and can be put to various uses.'),
  -- togedemaru in moon
  (777, 77700, 26, 'The long hairs on its back act as lightning rods. The bolts of lightning it attracts are stored as energy in its electric sac.'),
  -- mimikyu in moon
  (778, 77800, 26, 'A lonely Pokémon, it conceals its terrifying appearance beneath an old rag so it can get closer to people and other Pokémon.'),
  -- mimikyu-busted in moon
  (778, 77801, 26, 'If its neck is broken or its rag torn during an attack, it works through the night to patch it.'),
  -- bruxish in moon
  (779, 77900, 26, 'It stuns its prey with psychokinesis and then grinds them to mush with its strong teeth. Even Shellder’s shell is no match for it.'),
  -- drampa in moon
  (780, 78000, 26, 'This Pokémon is friendly to people and loves children most of all. It comes from deep in the mountains to play with children it likes in town.'),
  -- dhelmise in moon
  (781, 78100, 26, 'The soul of seaweed adrift in the waves became reborn as this Pokémon. It maintains itself with new infusions of seabed detritus and seaweed.'),
  -- jangmo-o in moon
  (782, 78200, 26, 'They live in mountains where no trace of humans can be detected. Jangmo-o grow little by little as they battle one another.'),
  -- hakamo-o in moon
  (783, 78300, 26, 'It sheds and regrows its scales on a continuous basis. The scales become harder and sharper each time they’re regrown.'),
  -- kommo-o in moon
  (784, 78400, 26, 'Its rigid scales function as offense and defense. In the past, its scales were processed and used to make weapons and other commodities.'),
  -- tapu-koko in moon
  (785, 78500, 26, 'It confuses its enemies by flying too quickly for the eye to follow. It has a hair-trigger temper but forgets what made it angry an instant later.'),
  -- tapu-lele in moon
  (786, 78600, 26, 'As it flutters about, it scatters its strangely glowing scales. Touching them is said to restore good health on the spot.'),
  -- tapu-bulu in moon
  (787, 78700, 26, 'The guardian deity of Ula’ula is a lazy Pokémon. It commands plants to immobilize its foes and then deals them a savage blow with its horns.'),
  -- tapu-fini in moon
  (788, 78800, 26, 'The guardian deity of Poni, it can control water. People say it can create pure water that will wash away any uncleanness.'),
  -- cosmog in moon
  (789, 78900, 26, 'In ages past, it was called the child of the stars. It’s said to be a Pokémon from another world, but no specific details are known.'),
  -- cosmoem in moon
  (790, 79000, 26, 'There’s something accumulating around the black core within its hard shell. People think this Pokémon may come from another world.'),
  -- solgaleo in moon
  (791, 79100, 26, 'This Pokémon is said to be a male evolution of Cosmog. At the activation of its third eye, it departs for another world.'),
  -- lunala in moon
  (792, 79200, 26, 'Said to live in another world, this Pokémon devours light, drawing the moonless dark veil of night over the brightness of day.'),
  -- nihilego in moon
  (793, 79300, 26, 'One of the Ultra Beasts. It’s unclear whether or not this Pokémon is sentient, but sometimes it can be observed behaving like a young girl.'),
  -- buzzwole in moon
  (794, 79400, 26, 'A mysterious life-form called an Ultra Beast. Witnesses saw it pulverize a dump truck with a single punch.'),
  -- pheromosa in moon
  (795, 79500, 26, 'One of the Ultra Beasts. It refuses to touch anything, perhaps because it senses some uncleanness in this world.'),
  -- xurkitree in moon
  (796, 79600, 26, 'It appeared from the Ultra Wormhole. It raided a power plant, so people think it energizes itself with electricity.'),
  -- celesteela in moon
  (797, 79700, 26, 'One kind of Ultra Beast. Witnesses have seen it burn down a forest by expelling gas from its two arms.'),
  -- kartana in moon
  (798, 79800, 26, 'One of the Ultra Beast life-forms, it was observed cutting down a gigantic steel tower with one stroke of its blade.'),
  -- guzzlord in moon
  (799, 79900, 26, 'A dangerous Ultra Beast, it appears to be eating constantly, but for some reason its droppings have never been found.'),
  -- necrozma in moon
  (800, 80000, 26, 'Light is apparently the source of its energy. It has an extraordinarily vicious disposition and is constantly firing off laser beams.'),
  -- magearna in moon
  (801, 80100, 26, 'Its mechanized body is merely a vessel. Its true self is its Soul-Heart, an artificial soul.'),
  -- marshadow in moon
  (802, 80200, 26, 'It lurks in the shadows of others, copying their movements and powers. This Pokémon is craven and cowering.'),
  -- caterpie in ultra-sun
  (10, 1000, 27, 'Perhaps because it would like to grow up quickly, it has a voracious appetite, eating a hundred leaves a day.'),
  -- metapod in ultra-sun
  (11, 1100, 27, 'Its shell is filled with a thick liquid. All of the cells throughout its body are being rebuilt in preparation for evolution.'),
  -- butterfree in ultra-sun
  (12, 1200, 27, 'Its wings are covered in toxic scales. If it finds bird Pokémon going after Caterpie, Butterfree sprinkles its scales on them to drive them off.'),
  -- rattata in ultra-sun
  (19, 1900, 27, 'Its incisors grow continuously throughout its life. If its incisors get too long, this Pokémon becomes unable to eat, and it starves to death.'),
  -- alolan-rattata in ultra-sun
  (19, 1901, 27, 'It shows no interest in anything that isn’t fresh. If you take it shopping with you, it will help you pick out ingredients.'),
  -- raticate in ultra-sun
  (20, 2000, 27, 'People say that it fled from its enemies by using its small webbed hind feet to swim from island to island in Alola.'),
  -- alolan-raticate in ultra-sun
  (20, 2001, 27, 'It has an incredibly greedy personality. Its nest is filled with so much food gathered by Rattata at its direction, it can’t possibly eat it all.'),
  -- spearow in ultra-sun
  (21, 2100, 27, 'Its reckless nature leads it to stand up to others—even large Pokémon—if it has to protect its territory.'),
  -- fearow in ultra-sun
  (22, 2200, 27, 'Carrying food through Fearow’s territory is dangerous. It will snatch the food away from you in a flash!'),
  -- ekans in ultra-sun
  (23, 2300, 27, 'By dislocating its jaw, it can swallow prey larger than itself. After a meal, it curls up and rests.'),
  -- arbok in ultra-sun
  (24, 2400, 27, 'The latest research has determined that there are over 20 possible arrangements of the patterns on its stomach.'),
  -- pikachu in ultra-sun
  (25, 2500, 27, 'Its nature is to store up electricity. Forests where nests of Pikachu live are dangerous, since the trees are so often struck by lightning.'),
  -- pikachu-original-cap in ultra-sun
  (25, 2503, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-hoenn-cap in ultra-sun
  (25, 2504, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-sinnoh-cap in ultra-sun
  (25, 2505, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-unova-cap in ultra-sun
  (25, 2506, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-kalos-cap in ultra-sun
  (25, 2507, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-alola-cap in ultra-sun
  (25, 2508, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- pikachu-partner-cap in ultra-sun
  (25, 2509, 27, 'This form of Pikachu is somewhat rare. It wears the hat of its Trainer, who is also its partner.'),
  -- raichu in ultra-sun
  (26, 2600, 27, 'As electricity builds up inside its body, it becomes more aggressive. One theory is that the electricity buildup is actually causing stress.'),
  -- alolan-raichu in ultra-sun
  (26, 2601, 27, 'It focuses psychic energy into its tail and rides it like it’s surfing. Another name for this Pokémon is "hodad."'),
  -- sandshrew in ultra-sun
  (27, 2700, 27, 'It lives in areas of limited rainfall. When danger approaches, it curls up into a ball to protect its soft stomach.'),
  -- alolan-sandshrew in ultra-sun
  (27, 2701, 27, 'After fleeing a volcanic eruption, it ended up moving to an area of snowy mountains. Its ice shell is as hard as steel.'),
  -- sandslash in ultra-sun
  (28, 2800, 27, 'Its claws and horns often break off. The broken claws and horns can be used to carve plows for tilling farm fields.'),
  -- alolan-sandslash in ultra-sun
  (28, 2801, 27, 'It runs across snow-covered plains at high speeds. It developed thick, sharp claws to plow through the snow.'),
  -- clefairy in ultra-sun
  (35, 3500, 27, 'They’re popular, but they’re rare. Trainers who show them off recklessly may be targeted by thieves.'),
  -- clefable in ultra-sun
  (36, 3600, 27, 'It can’t help but hear a pin drop from over half a mile away, so it lives deep in the mountains where there aren’t many people or Pokémon.'),
  -- vulpix in ultra-sun
  (37, 3700, 27, 'Its beautiful tails have made it very popular. However, if it’s not brushed diligently, it will be a mass of tangles before you know it.'),
  -- alolan-vulpix in ultra-sun
  (37, 3701, 27, 'If you carelessly approach it because it’s cute, the boss of the pack, Ninetales, will appear and freeze you.'),
  -- ninetales in ultra-sun
  (38, 3800, 27, 'It is vindictive and relentless by nature. Those who cross it even once will be cursed for a thousand years, along with their descendants.'),
  -- alolan-ninetales in ultra-sun
  (38, 3801, 27, 'The reason it guides people all the way down to the mountain’s base is that it wants them to hurry up and leave.'),
  -- jigglypuff in ultra-sun
  (39, 3900, 27, 'Recordings of Jigglypuff’s strange lullabies can be purchased from department stores. These CDs can be found near the bedding area.'),
  -- wigglytuff in ultra-sun
  (40, 4000, 27, 'Thanks to its bouncy body and fine fur, this Pokémon is sought after. Holding one in your arms while you sleep feels great.'),
  -- zubat in ultra-sun
  (41, 4100, 27, 'It has no eyeballs, so it can’t see. It checks its surroundings via the ultrasonic waves it emits from its mouth.'),
  -- golbat in ultra-sun
  (42, 4200, 27, 'Every once in a while, you’ll see a Golbat that’s missing some fangs. This happens when hunger drives it to try biting a Steel-type Pokémon.'),
  -- paras in ultra-sun
  (46, 4600, 27, 'Whether it’s due to a lack of moisture or a lack of nutrients, in Alola the mushrooms on Paras don’t grow up quite right.'),
  -- parasect in ultra-sun
  (47, 4700, 27, 'The bug is mostly dead, with the mushroom on its back having become the main body. If the mushroom comes off, the bug stops moving.'),
  -- diglett in ultra-sun
  (50, 5000, 27, 'It travels through tunnels that it digs underground. It hates sunlight, so it comes out only after the sun goes down.'),
  -- alolan-diglett in ultra-sun
  (50, 5001, 27, 'Although it’s powerful enough to dig right through volcanic rock, it doesn’t allow itself to be seen very often.'),
  -- dugtrio in ultra-sun
  (51, 5100, 27, 'While the three of them normally get along splendidly, on rare occasions a huge fight will break out over which head gets to eat first.'),
  -- alolan-dugtrio in ultra-sun
  (51, 5101, 27, 'Its metallic whiskers are heavy, so it’s not very fast, but it has the power to dig through bedrock.'),
  -- meowth in ultra-sun
  (52, 5200, 27, 'When visiting a junkyard, you may catch sight of it having an intense fight with Murkrow over shiny objects.'),
  -- alolan-meowth in ultra-sun
  (52, 5201, 27, 'It’s impulsive, selfish, and fickle. It’s very popular with some Trainers who like giving it the attention it needs.'),
  -- persian in ultra-sun
  (53, 5300, 27, 'Although the jewel on its forehead appears to be a different color than those of Alolan Persian, it’s mostly made of the same material.'),
  -- alolan-persian in ultra-sun
  (53, 5301, 27, 'In contrast to its lovely face, it’s so brutal that it tortures its weakened prey rather than finishing them off.'),
  -- psyduck in ultra-sun
  (54, 5400, 27, 'Using psychokinesis gives it a headache, so it normally passes the time spacing out and doing as little as possible.'),
  -- golduck in ultra-sun
  (55, 5500, 27, 'Even fast-swimming fish Pokémon can be disabled by Golduck. It brings them to a standstill and seizes them.'),
  -- mankey in ultra-sun
  (56, 5600, 27, 'The smallest of things could cause it to lose its temper. Because it doesn’t hold in its stress, this Pokémon can live a long time.'),
  -- primeape in ultra-sun
  (57, 5700, 27, 'It will never forgive opponents who have angered it. Even after it has beaten them down until they can’t move, it never ever forgives.'),
  -- growlithe in ultra-sun
  (58, 5800, 27, 'While it’s quite friendly toward humans once it’s grown used to them, in the wild it must be quite fierce to defend its territory from Rockruff.'),
  -- arcanine in ultra-sun
  (59, 5900, 27, 'Legends tell of its fighting alongside a general and conquering a whole country.'),
  -- poliwag in ultra-sun
  (60, 6000, 27, 'Despite the danger, it wants to come up on land. So it does its best to waddle along, but when an enemy finds it, it rushes back to the water.'),
  -- poliwhirl in ultra-sun
  (61, 6100, 27, 'Although it has become capable of living on land, it spends its time in the water, where its prey, fish Pokémon, are plentiful.'),
  -- poliwrath in ultra-sun
  (62, 6200, 27, 'It’s quite a gifted swimmer, even among Water-type Pokémon, but it normally spends its time on land.'),
  -- abra in ultra-sun
  (63, 6300, 27, 'It uses various psychic powers even while it’s sleeping, so you can’t tell whether or not it’s awake.'),
  -- kadabra in ultra-sun
  (64, 6400, 27, 'It stares at a silver spoon to amplify its psychic powers before it lets loose. Apparently, gold spoons are no good.'),
  -- alakazam in ultra-sun
  (65, 6500, 27, 'Alakazam uses its psychic powers to make the spoons it carries. Each spoon is an original that there’s only one of in the whole world.'),
  -- machop in ultra-sun
  (66, 6600, 27, 'Once this Pokémon has gained enough confidence and muscle from training with its friends, it challenges Makuhita to a battle.'),
  -- machoke in ultra-sun
  (67, 6700, 27, 'When it encounters an enemy that’s truly mighty, this Pokémon removes the power-save belt from its waist and unleashes its full power.'),
  -- machamp in ultra-sun
  (68, 6800, 27, 'It grasps its opponents with its four arms and twists them up in an intricate hold. People call it “the Machamp special.”'),
  -- tentacool in ultra-sun
  (72, 7200, 27, 'It drifts through the sea searching for prey. Its poisonous tentacles break off sometimes, but after a while, they grow back.'),
  -- tentacruel in ultra-sun
  (73, 7300, 27, 'It fires off ultrasonic waves from its red orbs to weaken its prey, and then it wraps them up in its 80 tentacles.'),
  -- geodude in ultra-sun
  (74, 7400, 27, 'Geodude that have lived a long life have had all their edges smoothed out until they’re totally round. They also have a calm, quiet disposition.'),
  -- alolan-geodude in ultra-sun
  (74, 7401, 27, 'If you mistake it for a rock and step on it, it will headbutt you in anger. In addition to the pain, it will also zap you with a shock.'),
  -- graveler in ultra-sun
  (75, 7500, 27, 'It climbs up cliffs as it heads toward the peak of a mountain. As soon as it reaches the summit, it rolls back down the way it came.'),
  -- alolan-graveler in ultra-sun
  (75, 7501, 27, 'When two Graveler fight each other, it fills the surroundings with flashes of light and sound. People call it the "fireworks of the earth."'),
  -- golem in ultra-sun
  (76, 7600, 27, 'When Golem grow old, they stop shedding their shells. Those that have lived a long, long time have shells green with moss.'),
  -- alolan-golem in ultra-sun
  (76, 7601, 27, 'It’s grumpy and stubborn. If you upset it, it discharges electricity from the surface of its body and growls with a voice like thunder.'),
  -- slowpoke in ultra-sun
  (79, 7900, 27, 'There are some places where Slowpoke is worshiped because of a long-standing belief that whenever Slowpoke yawns, it rains.'),
  -- slowbro in ultra-sun
  (80, 8000, 27, 'Spacing out is basically all it does. It turns back into Slowpoke if its tail, along with Shellder, breaks off.'),
  -- mega-slowbro in ultra-sun
  (80, 8001, 27, 'Tremendous energy strengthened the power of the Shellder on its tail, but it doesn’t really affect Slowpoke.'),
  -- magnemite in ultra-sun
  (81, 8100, 27, 'It’s frequently the cause of power outages, which is why some power plants send out electrical signals that it can’t stand.'),
  -- magneton in ultra-sun
  (82, 8200, 27, 'Delicate equipment can malfunction in areas inhabited by Magneton, which send out mysterious electrical signals.'),
  -- seel in ultra-sun
  (86, 8600, 27, 'It has always been supposed that Seel live only in cold seas. Their having shown up in Alola is a mystery.'),
  -- dewgong in ultra-sun
  (87, 8700, 27, 'It swims through the ocean at a speed of eight knots, searching for Pokémon that will become its prey. It’s especially fond of Wishiwashi.'),
  -- grimer in ultra-sun
  (88, 8800, 27, 'It was born from sludge on the ocean floor. In a sterile environment, the germs within its body can’t multiply, and it dies.'),
  -- alolan-grimer in ultra-sun
  (88, 8801, 27, 'There are a hundred or so of them living in Alola’s waste-disposal site. They’re all hard workers who eat a lot of trash.'),
  -- muk in ultra-sun
  (89, 8900, 27, 'Their food sources have decreased, and their numbers have declined sharply. Sludge ponds are being built to prevent their extinction.'),
  -- alolan-muk in ultra-sun
  (89, 8901, 27, 'There are over a hundred kinds of poison inside its body. Chemical reactions between different poisons are the source of its vitality.'),
  -- shellder in ultra-sun
  (90, 9000, 27, 'The sand that accumulates inside its shell eventually becomes a pearl. But the pearl gets in the way, so it spits it out and discards it.'),
  -- cloyster in ultra-sun
  (91, 9100, 27, 'If areas of Cloyster’s very hard shell get damaged, those areas swell, gradually growing into large sharp spikes.'),
  -- gastly in ultra-sun
  (92, 9200, 27, 'It’s said that gas emanating from a graveyard was possessed by the grievances of the deceased and thus became a Pokémon.'),
  -- haunter in ultra-sun
  (93, 9300, 27, 'On moonless nights, Haunter searches for someone to curse, so it’s best not to go out walking around.'),
  -- gengar in ultra-sun
  (94, 9400, 27, 'You can hear tales told all over the world about how Gengar will pay a visit to children who are naughty.'),
  -- mega-gengar in ultra-sun
  (94, 9401, 27, 'It tries to take the lives of anyone and everyone. It will even try to curse the Trainer who is its master!'),
  -- drowzee in ultra-sun
  (96, 9600, 27, 'It can be spotted near recreational facilities, intending to eat the pleasant dreams of children who enjoyed themselves there that day.'),
  -- hypno in ultra-sun
  (97, 9700, 27, 'In Alola, Komala is Hypno’s main target. It rarely harms people.'),
  -- exeggcute in ultra-sun
  (102, 10200, 27, 'Six of them form a single Pokémon. Should one of the six be lost, the next morning there will once more be six.'),
  -- exeggutor in ultra-sun
  (103, 10300, 27, 'It engages its enemies using psychic powers. Each of its three heads fires off psychokinetic energy, tripling its power.'),
  -- alolan-exeggutor in ultra-sun
  (103, 10301, 27, 'Exeggutor is the pride of the Alolan people. Its image is carved into historical buildings and murals.'),
  -- cubone in ultra-sun
  (104, 10400, 27, 'At night, it weeps loudly for its dead mother, but those cries only attract its natural enemy—Mandibuzz.'),
  -- marowak in ultra-sun
  (105, 10500, 27, 'It throws bones at Mandibuzz to knock it down. It’s thought that Marowak is trying to avenge its parent.'),
  -- alolan-marowak in ultra-sun
  (105, 10501, 27, 'The rich greenery of the Alola region is hard on Marowak. It controls fire to stay alive.'),
  -- lickitung in ultra-sun
  (108, 10800, 27, 'It checks out whatever’s around it by licking everything. If you don’t clean off a spot where it’s licked you, you’ll break out in a rash!'),
  -- chansey in ultra-sun
  (113, 11300, 27, 'It seems that other Pokémon’s efforts to take its delicious, nutritious egg away from it caused Chansey to get faster at fleeing.'),
  -- kangaskhan in ultra-sun
  (115, 11500, 27, 'Kangaskhan protects its child by keeping it in its pouch. It has zero forgiveness for those who harm its child and will beat them down.'),
  -- goldeen in ultra-sun
  (118, 11800, 27, 'Although known for their splendid tail fins, Goldeen apparently compete among themselves to see whose horn is thickest and sharpest.'),
  -- seaking in ultra-sun
  (119, 11900, 27, 'Its horn spins like a drill to steadily hollow out rocks—even harder ones. The coloration of the male is more vivid.'),
  -- staryu in ultra-sun
  (120, 12000, 27, 'In many places, there are folktales of stardust falling into the ocean and becoming Staryu.'),
  -- starmie in ultra-sun
  (121, 12100, 27, 'Its sparkling core is called “the gem of the sea.” This core can be made into high-priced accessories that are traded in secret.'),
  -- mr-mime in ultra-sun
  (122, 12200, 27, 'Its pantomime skills are wonderful. You may become enraptured while watching it, but next thing you know, Mr. Mime has made a real wall.'),
  -- scyther in ultra-sun
  (123, 12300, 27, 'Its two sharp scythes are more than just weapons. It uses them with dexterity to dress its prey before eating.'),
  -- jynx in ultra-sun
  (124, 12400, 27, 'It sways its hips to a rhythm all its own. The precise movements of Jynx living in Alola are truly wonderful.'),
  -- electabuzz in ultra-sun
  (125, 12500, 27, 'Electricity permeates its body. It swings its arms round and round to charge up electricity before unleashing a punch.'),
  -- magmar in ultra-sun
  (126, 12600, 27, 'Its entire body is burning. When it breathes, the temperature rises. When it sneezes, flames shoot out!'),
  -- pinsir in ultra-sun
  (127, 12700, 27, 'It gets into territorial disputes with Vikavolt. For some reason, it apparently gets along well with Heracross in Alola.'),
  -- tauros in ultra-sun
  (128, 12800, 27, 'They live in groups. The one with the longest, thickest, and most-scarred horns is the boss of the herd.'),
  -- magikarp in ultra-sun
  (129, 12900, 27, 'In the distant past, they were fairly strong, but they have become gradually weaker over time.'),
  -- gyarados in ultra-sun
  (130, 13000, 27, 'It fires hyper beams in all directions, burning the surrounding area to ash. There are some regions where it’s called “the deity of destruction.”'),
  -- mega-gyarados in ultra-sun
  (130, 13001, 27, 'Mega Evolution places a burden on its body. The stress causes it to become all the more ferocious.'),
  -- lapras in ultra-sun
  (131, 13100, 27, 'It likes swimming around with people on its back. In the Alola region, it’s an important means of transportation over water.'),
  -- ditto in ultra-sun
  (132, 13200, 27, 'While it can transform into anything, each Ditto apparently has its own strengths and weaknesses when it comes to transformations.'),
  -- eevee in ultra-sun
  (133, 13300, 27, 'The question of why only Eevee has such unstable genes has still not been solved.'),
  -- vaporeon in ultra-sun
  (134, 13400, 27, 'Clean, clear waters are its usual habitat. When it’s about to be attacked by an invading enemy, it dives into the water to hide.'),
  -- jolteon in ultra-sun
  (135, 13500, 27, 'Its lungs contain an organ that creates electricity. The crackling sound of electricity can be heard when it exhales.'),
  -- flareon in ultra-sun
  (136, 13600, 27, 'If it inhales deeply, that’s a sign it’s about to attack. Prepare to be hit by flames of over 3,000 degrees Fahrenheit!'),
  -- porygon in ultra-sun
  (137, 13700, 27, 'This Pokémon was created using the cutting-edge science of 20 years ago, so many parts of it have since become obsolete.'),
  -- omanyte in ultra-sun
  (138, 13800, 27, 'Omanyte lived in the seas of antiquity. Its fossils have been found bearing bite marks from Archeops, so apparently Archeops preyed on it.'),
  -- omastar in ultra-sun
  (139, 13900, 27, 'Its heavy shell is thought to be the reason this ancient Pokémon died out. It’s apparently a distant ancestor of Octillery.'),
  -- kabuto in ultra-sun
  (140, 14000, 27, 'This Pokémon thrived 300 million years ago. It’s said that living specimens can still be seen in a certain region—a rare sight.'),
  -- kabutops in ultra-sun
  (141, 14100, 27, 'Its body had begun to change so it could function on land. But it didn’t adapt in time and went extinct.'),
  -- aerodactyl in ultra-sun
  (142, 14200, 27, 'Restored from DNA found in amber, this Pokémon exhibited ferocity that was greater than expected. Some casualties resulted.'),
  -- snorlax in ultra-sun
  (143, 14300, 27, 'It doesn’t do anything other than eat and sleep. When prompted to make a serious effort, though, it apparently displays awesome power.'),
  -- dratini in ultra-sun
  (147, 14700, 27, 'It’s still weak, so it lurks on the floor of bodies of water, eating whatever food sinks down and living a quiet life.'),
  -- dragonair in ultra-sun
  (148, 14800, 27, 'Lakes where Dragonair live are filled with offerings from people, because they believe this Pokémon is able to control the weather.'),
  -- dragonite in ultra-sun
  (149, 14900, 27, 'It flies over raging seas as if they were nothing. Observing this, a ship’s captain dubbed this Pokémon “the sea incarnate.”'),
  -- hoothoot in ultra-sun
  (163, 16300, 27, 'Every day, it tilts its head in the same rhythm. A long time ago, people raised these Pokémon to serve as clocks.'),
  -- noctowl in ultra-sun
  (164, 16400, 27, 'With eyes that can see in pitch-darkness, it never lets its prey escape. Some even call it “the emperor of dark nights.”'),
  -- ledyba in ultra-sun
  (165, 16500, 27, 'This Pokémon is very sensitive to cold. In the warmth of Alola, it appears quite lively.'),
  -- ledian in ultra-sun
  (166, 16600, 27, 'It’s said that the patterns on its back are related to the stars in the night sky, but the details of that relationship remain unclear.'),
  -- spinarak in ultra-sun
  (167, 16700, 27, 'With threads from its mouth, it fashions sturdy webs that won’t break even if you set a rock on them.'),
  -- ariados in ultra-sun
  (168, 16800, 27, 'Every night, it wanders around in search of prey, whose movements it restrains by spewing threads before it bites into them with its fangs.'),
  -- crobat in ultra-sun
  (169, 16900, 27, 'Its fangs are so sharp, if it bites you in the dark and sucks your blood, you won’t notice any pain or realize you’ve been bitten.'),
  -- chinchou in ultra-sun
  (170, 17000, 27, 'Its two antennae glow softly to lure in prey, making it a useful Pokémon for night fishing.'),
  -- lanturn in ultra-sun
  (171, 17100, 27, 'When the bacteria living inside its antennae absorb Lanturn’s bodily fluids, a strong luminescent effect is produced.'),
  -- pichu in ultra-sun
  (172, 17200, 27, 'It still can’t use electricity well. When it’s surprised or excited, it discharges electricity unintentionally.'),
  -- cleffa in ultra-sun
  (173, 17300, 27, 'On nights with many shooting stars, they gather in packs and dance in circles. If you should see them, something good will happen!'),
  -- igglybuff in ultra-sun
  (174, 17400, 27, 'It’s always practicing its singing because it wants to improve. Even when it’s asleep, it keeps singing in its dreams!'),
  -- natu in ultra-sun
  (177, 17700, 27, 'Although it still can’t fly, its jumping power is outstanding. It jumps way up into trees and plucks the buds from the branches.'),
  -- xatu in ultra-sun
  (178, 17800, 27, 'It’s said that while this Pokémon has the power to predict the future, it’s not powerful enough to change the future it sees.'),
  -- mareep in ultra-sun
  (179, 17900, 27, 'Clothing made from Mareep’s fleece is easily charged with static electricity, so a special process is used on it.'),
  -- flaaffy in ultra-sun
  (180, 18000, 27, 'In the places on its body where fleece doesn’t grow, its skin is rubbery and doesn’t conduct electricity. Those spots are safe to touch.'),
  -- ampharos in ultra-sun
  (181, 18100, 27, 'The light from its tail can be seen from space. This is why you can always tell exactly where it is, which is why it usually keeps the light off.'),
  -- mega-ampharos in ultra-sun
  (181, 18101, 27, 'Excess energy from Mega Evolution stimulates its genes, and the wool it had lost grows in again.'),
  -- sudowoodo in ultra-sun
  (185, 18500, 27, 'It’s so popular with the elderly that there’s a magazine devoted to this Pokémon. Fans obsess over the particular length and angle of its arms.'),
  -- politoed in ultra-sun
  (186, 18600, 27, 'Although its cries sound like screams, a composer created a beautiful ballad that was influenced by the sounds.'),
  -- aipom in ultra-sun
  (190, 19000, 27, 'As it did more and more with its tail, its hands became clumsy. It makes its nest high in the treetops.'),
  -- espeon in ultra-sun
  (196, 19600, 27, 'Although it originally had no powers at all, people say its precognitive faculties were awakened by its need to protect itself.'),
  -- umbreon in ultra-sun
  (197, 19700, 27, 'This Pokémon is nocturnal. Even in total darkness, its large eyes can spot its prey clearly!'),
  -- murkrow in ultra-sun
  (198, 19800, 27, 'It has a weakness for shiny things. It’s been known to sneak into the nests of Gabite—noted collectors of jewels—in search of treasure.'),
  -- slowking in ultra-sun
  (199, 19900, 27, 'It’s constantly coming up with new ideas that would change the world, but as soon as it hits upon a new idea, it forgets it.'),
  -- misdreavus in ultra-sun
  (200, 20000, 27, 'What gives meaning to its life is surprising others. If you set your ear against the red orbs around its neck, you can hear shrieking.'),
  -- pineco in ultra-sun
  (204, 20400, 27, 'Motionless, it hangs from trees, waiting for its bug Pokémon prey to come to it. Its favorite in Alola is Cutiefly.'),
  -- forretress in ultra-sun
  (205, 20500, 27, 'When something approaches it, it fires off fragments of its steel shell in attack. This is not a conscious action but a conditioned reflex.'),
  -- dunsparce in ultra-sun
  (206, 20600, 27, 'It travels by digging through the ground. Diglett and Dunsparce share one another’s tunnels happily.'),
  -- snubbull in ultra-sun
  (209, 20900, 27, 'It grows close to others easily and is also easily spoiled. The disparity between its face and its actions makes many young people wild about it.'),
  -- granbull in ultra-sun
  (210, 21000, 27, 'While it has powerful jaws, it doesn’t care for disputes, so it rarely has a chance to display their might.'),
  -- scizor in ultra-sun
  (212, 21200, 27, 'Its body is like steel. Its tough, heavy pincers are more suited to smashing enemies than grabbing them.'),
  -- mega-scizor in ultra-sun
  (212, 21201, 27, 'It stores the excess energy from Mega Evolution, so after a long time passes, its body starts to melt.'),
  -- heracross in ultra-sun
  (214, 21400, 27, 'It’s proud of its thick horn. In Alola, its biggest rival is Vikavolt, which it’s always fighting with.'),
  -- mega-heracross in ultra-sun
  (214, 21401, 27, 'It can grip things with its two horns and lift 500 times its own body weight.'),
  -- sneasel in ultra-sun
  (215, 21500, 27, 'They will cooperate to steal eggs from the nests of bird Pokémon, but fights break out to determine which one gets to eat the eggs.'),
  -- corsola in ultra-sun
  (222, 22200, 27, 'The pink of Corsola that live in Alola is deep and vibrant, thanks to seas filled with nutrition.'),
  -- remoraid in ultra-sun
  (223, 22300, 27, 'This Pokémon clings to Mantine and shares in its prosperity. When its Mantine is attacked, Remoraid will fight alongside it!'),
  -- octillery in ultra-sun
  (224, 22400, 27, 'The ink it spits when escaping is special. It contains a substance that dulls the sense of smell, so Pokémon with keen noses get lost.'),
  -- delibird in ultra-sun
  (225, 22500, 27, 'It shares its food with people who are stranded. Because Delibird is omnivorous, sometimes it gives those people bug Pokémon.'),
  -- mantine in ultra-sun
  (226, 22600, 27, 'Postcards and posters featuring Mantine leaping elegantly above the waves are popular souvenirs of Alola.'),
  -- skarmory in ultra-sun
  (227, 22700, 27, 'The wing feathers it sheds can be processed and made into knives whose sharpness is recognized by the finest chefs.'),
  -- houndour in ultra-sun
  (228, 22800, 27, 'It cooperates with others skillfully. When it becomes your partner, it’s very loyal to you as its Trainer and will obey your orders.'),
  -- houndoom in ultra-sun
  (229, 22900, 27, 'They spew flames mixed with poison to finish off their opponents. They divvy up their prey evenly among the members of their pack.'),
  -- mega-houndoom in ultra-sun
  (229, 22901, 27, 'Its red claws and the tips of its tail are melting from high internal temperatures that are painful to Houndoom itself.'),
  -- porygon2 in ultra-sun
  (233, 23300, 27, 'AI has been installed in it. It learns various things all on its own, but it even remembers things it doesn’t need to know.'),
  -- smeargle in ultra-sun
  (235, 23500, 27, 'The fluid of Smeargle’s tail secretions changes in the intensity of its hue as the Pokémon’s emotions change.'),
  -- smoochum in ultra-sun
  (238, 23800, 27, 'When it examines things, before touching them with its hands, it makes lip contact and then diligently licks all the dirt off its lips.'),
  -- elekid in ultra-sun
  (239, 23900, 27, 'When it hears the crash of thunder, Elekid’s mood improves. It can be useful to record that sound and play it when Elekid’s feeling down.'),
  -- magby in ultra-sun
  (240, 24000, 27, 'When flames drip from its nose, that means it has a cold. Have it lie down for a nice rest in some magma.'),
  -- miltank in ultra-sun
  (241, 24100, 27, 'It produces over five gallons of milk a day. The higher the quality of the pastures it lives in, the richer and tastier its milk becomes.'),
  -- blissey in ultra-sun
  (242, 24200, 27, 'Their eggs are such a delicacy that some say eating one will bring you happiness. These eggs fetch the highest prices on the market.'),
  -- larvitar in ultra-sun
  (246, 24600, 27, 'Born underground, it eats its way through dirt to the surface, where its parents are. It doesn’t deal well with the bright light it finds there.'),
  -- pupitar in ultra-sun
  (247, 24700, 27, 'This troublesome Pokémon can’t wait to evolve, so it relieves its stress by wildly propelling itself around using compressed gas.'),
  -- tyranitar in ultra-sun
  (248, 24800, 27, 'It wanders through the mountains seeking opponents to fight. If it finds an opponent that’s not worthy, Tyranitar ignores it and wanders on.'),
  -- mega-tyranitar in ultra-sun
  (248, 24801, 27, 'Due to the colossal power poured into it, this Pokémon’s back split right open. Its destructive instincts are the only thing keeping it moving.'),
  -- wingull in ultra-sun
  (278, 27800, 27, 'With its long, thin wings, it catches updrafts and flies like a glider high up into the sky.'),
  -- pelipper in ultra-sun
  (279, 27900, 27, 'It places small Pokémon into its spacious beak and carries them around. No one knows where it’s taking them.'),
  -- surskit in ultra-sun
  (283, 28300, 27, 'If it’s in a pinch, it will secrete a sweet liquid from the tip of its head. Syrup made from gathering that liquid is tasty on bread.'),
  -- masquerain in ultra-sun
  (284, 28400, 27, 'Masquerain intimidates enemies with the eyelike patterns of its eyespots. If that doesn’t work, it deftly makes its escape on its set of four wings.'),
  -- makuhita in ultra-sun
  (296, 29600, 27, 'It practices its slaps by repeatedly slapping tree trunks. It has been known to slap an Exeggutor and get flung away.'),
  -- hariyama in ultra-sun
  (297, 29700, 27, 'Although they enjoy comparing their strength, they’re also kind. They value etiquette, praising opponents they battle.'),
  -- nosepass in ultra-sun
  (299, 29900, 27, 'It moves less than an inch a year, but when it’s in a jam, it will spin and drill down into the ground in a split second.'),
  -- sableye in ultra-sun
  (302, 30200, 27, 'It digs through the ground with its hard claws and crunches down gems with its thick pointy teeth. Carbink is its favorite food.'),
  -- mega-sableye in ultra-sun
  (302, 30201, 27, 'Bathed in the energy of Mega Evolution, the gemstone on its chest expands, rips through its skin, and falls out.'),
  -- mawile in ultra-sun
  (303, 30300, 27, 'A cunning and terrifying Pokémon, its cuteness makes opponents let down their guard—and then it swallows them whole with its huge jaws.'),
  -- electrike in ultra-sun
  (309, 30900, 27, 'Friction between the air and its fur produces static electricity. When Electrike runs, it makes a crackling sound.'),
  -- manectric in ultra-sun
  (310, 31000, 27, 'Manectric can be found beneath unnatural thunderclouds. People say it can run at the same speed as lightning striking.'),
  -- carvanha in ultra-sun
  (318, 31800, 27, 'They’re such cowards that they won’t hunt alone. When five or so of them get together, they suddenly turn ferocious!'),
  -- sharpedo in ultra-sun
  (319, 31900, 27, 'People believe that carrying one of its discarded fangs will prevent mishaps at sea, so the fangs are made into accessories.'),
  -- wailmer in ultra-sun
  (320, 32000, 27, 'It swims along with its mouth open and swallows down seawater along with its food. It sprays excess water out of its nostrils.'),
  -- wailord in ultra-sun
  (321, 32100, 27, 'They eat so many fish Pokémon that when Wailord become too numerous, fishermen have to chase them off.'),
  -- torkoal in ultra-sun
  (324, 32400, 27, 'You can tell how it’s feeling by the smoke spouting from its shell. Tremendous velocity is a sign of good health.'),
  -- spinda in ultra-sun
  (327, 32700, 27, 'Its steps are shaky and stumbling. Walking for a long time makes it feel sick.'),
  -- trapinch in ultra-sun
  (328, 32800, 27, 'Its jaws are strong enough to crush rocks but so heavy that it can’t get up if it flips over. Sandile seize those moments as their chance.'),
  -- vibrava in ultra-sun
  (329, 32900, 27, 'It vibrates its wings to generate ultrasonic waves, causing its prey to faint. Then it buries the prey alive in the sand to preserve it.'),
  -- flygon in ultra-sun
  (330, 33000, 27, 'By flapping their wings, Flygon cause sandstorms that conceal Krookodile. The team then splits the prey they catch.'),
  -- barboach in ultra-sun
  (339, 33900, 27, 'Its entire body is gooey. When pecked at by bird Pokémon, it slips and slides its way to freedom.'),
  -- whiscash in ultra-sun
  (340, 34000, 27, 'Whiscash shakes the ground at high intensities to intimidate its opponents. It swallows its prey whole—along with mud from the swamp floor.'),
  -- corphish in ultra-sun
  (341, 34100, 27, 'Individuals that have been set free by Trainers who could no longer raise them have become common, and they can now be found in Alola.'),
  -- crawdaunt in ultra-sun
  (342, 34200, 27, 'Its temperament is rough and it loves to fight, but as soon as its pincers break off, it turns cowardly. It stays timid until they grow back.'),
  -- baltoy in ultra-sun
  (343, 34300, 27, 'Depictions of Pokémon similar to Baltoy have been found on the walls of caves where primitive humans lived.'),
  -- claydol in ultra-sun
  (344, 34400, 27, 'If it gets wet, its body melts. When rain starts to fall, it wraps its whole body up with its psychic powers to protect itself.'),
  -- lileep in ultra-sun
  (345, 34500, 27, 'In ancient times, it lived in warm seas. It disguised itself as seaweed to ambush its prey and devoured them whole when they got close.'),
  -- cradily in ultra-sun
  (346, 34600, 27, 'Normally, it lived on shallow sea shoals. When the tide went out, this Pokémon came up on land to search for prey.'),
  -- anorith in ultra-sun
  (347, 34700, 27, 'When restored Anorith are released into the ocean, they don’t thrive, because the water composition has changed since their era.'),
  -- armaldo in ultra-sun
  (348, 34800, 27, 'It lived on land and went out into the sea to hunt for prey. Its sharp claws were its greatest weapon.'),
  -- feebas in ultra-sun
  (349, 34900, 27, 'They look ragged, so no one catches them. They look like they’d taste bad, so predators won’t eat them. And their numbers continue to grow.'),
  -- milotic in ultra-sun
  (350, 35000, 27, 'While Milotic is said to be the most beautiful Pokémon, Trainers who like Feebas and have raised it are seemingly disappointed by Milotic.'),
  -- castform in ultra-sun
  (351, 35100, 27, 'Although its form changes with the weather, that is apparently the result of a chemical reaction and not the result of its own free will.'),
  -- kecleon in ultra-sun
  (352, 35200, 27, 'It changes its hue to blend into its surroundings. If no one takes notice of it for too long, it will pout and never reveal itself.'),
  -- shuppet in ultra-sun
  (353, 35300, 27, 'It eats up emotions like malice, jealousy, and resentment, so some people are grateful for its presence.'),
  -- banette in ultra-sun
  (354, 35400, 27, 'It’s a stuffed toy that was thrown away and became possessed, ever searching for the one who threw it away so it can exact its revenge.'),
  -- mega-banette in ultra-sun
  (354, 35401, 27, 'Extraordinary energy amplifies its cursing power to such an extent that it can’t help but curse its own Trainer.'),
  -- tropius in ultra-sun
  (357, 35700, 27, 'The bunches of fruit growing around the necks of Tropius in Alola are especially sweet compared to those in other regions.'),
  -- absol in ultra-sun
  (359, 35900, 27, 'The only thing unlucky about Absol is its appearance. It protects fields and warns people of disaster, so one ought to be grateful for it.'),
  -- snorunt in ultra-sun
  (361, 36100, 27, 'It feeds mainly on ice and snow. It’s only able to survive in a limited number of places in the warm Alola region.'),
  -- glalie in ultra-sun
  (362, 36200, 27, 'It freezes its prey and chews them whole. However, it prefers to eat Pokémon like Vanillite that are already frozen.'),
  -- mega-glalie in ultra-sun
  (362, 36201, 27, 'When it spews stupendously cold air from its broken mouth, the entire area around it gets whited out.'),
  -- clamperl in ultra-sun
  (366, 36600, 27, 'Despite its appearance, it’s carnivorous. It clamps down on its prey with both sides of its shell and doesn’t let go until they stop moving.'),
  -- huntail in ultra-sun
  (367, 36700, 27, 'It’s not the strongest swimmer. It wags its tail to lure in its prey and then gulps them down as soon as they get close.'),
  -- gorebyss in ultra-sun
  (368, 36800, 27, 'The color of its body changes with the water temperature. The coloration of Gorebyss in Alola is almost blindingly vivid.'),
  -- relicanth in ultra-sun
  (369, 36900, 27, 'Thought to have gone extinct, Relicanth was given a name that is a variation of the name of the person who discovered it.'),
  -- luvdisc in ultra-sun
  (370, 37000, 27, 'There was an era when it was overfished due to the rumor that having one of its heart-shaped scales would enable you to find a sweetheart.'),
  -- bagon in ultra-sun
  (371, 37100, 27, 'Whenever it sees bird Pokémon flying through the sky, it becomes envious and smashes its surroundings to bits with headbutts.'),
  -- shelgon in ultra-sun
  (372, 37200, 27, 'The cells within its body are changing at a bewildering pace. Its hard shell is made from the same substance as bone.'),
  -- salamence in ultra-sun
  (373, 37300, 27, 'Overjoyed at finally being able to fly, it flies all over the place and usually doesn’t land until it’s completely exhausted and needs to sleep.'),
  -- mega-salamence in ultra-sun
  (373, 37301, 27, 'The stress of its two proud wings becoming misshapen and stuck together because of strong energy makes it go on a rampage.'),
  -- beldum in ultra-sun
  (374, 37400, 27, 'Instead of blood, magnetism flows through its body. When it’s feeling bad, try giving it a magnet.'),
  -- metang in ultra-sun
  (375, 37500, 27, 'With its two brains, it fires powerful psychic energy to stop its prey in their tracks.'),
  -- metagross in ultra-sun
  (376, 37600, 27, 'It boasts not only psychic powers but also fantastic strength. It grabs its prey with its four legs and holds them in place with its claws.'),
  -- mega-metagross in ultra-sun
  (376, 37601, 27, 'Its intellect surpasses its previous level, resulting in battles so cruel, they’ll make you want to cover your eyes.'),
  -- cranidos in ultra-sun
  (408, 40800, 27, 'A primeval Pokémon, it possesses a hard and sturdy skull, lacking any intelligence within.'),
  -- rampardos in ultra-sun
  (409, 40900, 27, 'In ancient times, people would dig up fossils of this Pokémon and use its skull, which is harder than steel, to make helmets.'),
  -- shieldon in ultra-sun
  (410, 41000, 27, 'A mild-mannered, herbivorous Pokémon, it used its face to dig up tree roots to eat. The skin on its face was plenty tough.'),
  -- bastiodon in ultra-sun
  (411, 41100, 27, 'The bones of its face are huge and hard, so they were mistaken for its spine until after this Pokémon was successfully restored.'),
  -- shellos in ultra-sun
  (422, 42200, 27, 'While they normally live in the sea, they can function on land, too, until their skin dries out.'),
  -- shellos-east in ultra-sun
  (422, 42201, 27, 'When it senses danger, it gushes a purple liquid. Some theories suggest this liquid is a greasy sweat induced by stress.'),
  -- gastrodon in ultra-sun
  (423, 42300, 27, 'Long ago, it had a shell on its back. There’s now a vestigial plate on its back that’s hard but thin.'),
  -- gastrodon-east in ultra-sun
  (423, 42301, 27, 'When it’s attacked, it gushes a purple liquid that’s not poisonous but makes Gastrodon’s meat bitter and inedible.'),
  -- ambipom in ultra-sun
  (424, 42400, 27, 'In their search for comfortable trees, they get into territorial disputes with groups of Passimian. They win about half the time.'),
  -- drifloon in ultra-sun
  (425, 42500, 27, 'Its round body is stuffed with souls and expands each time it leads someone away.'),
  -- drifblim in ultra-sun
  (426, 42600, 27, 'There’s a rumor that if you catch a Drifblim floating on the wind at dusk, you’ll be carried away to the afterlife.'),
  -- buneary in ultra-sun
  (427, 42700, 27, 'Its arms and legs are weak, but when it rolls its ears up tight and then unleashes them with its full force, it can smash boulders to dust.'),
  -- lopunny in ultra-sun
  (428, 42800, 27, 'Lopunny regrows its coat twice a year. Mufflers and hats made from its fur are really warm.'),
  -- mismagius in ultra-sun
  (429, 42900, 27, 'Feared for its wrath and the curses it spreads, this Pokémon will also, on a whim, cast spells that help people.'),
  -- honchkrow in ultra-sun
  (430, 43000, 27, 'It will absolutely not forgive failure from or betrayal by its goons. It has no choice in this if it wants to maintain the order of the flock.'),
  -- bonsly in ultra-sun
  (438, 43800, 27, 'It discharges moisture from its eyes, making it look like it’s crying—apparently an effective way of getting enemies to let down their guard.'),
  -- mime-jr in ultra-sun
  (439, 43900, 27, 'It does its absolute best to mimic the movements and expressions of its opponents, but it’s still not very good at it.'),
  -- happiny in ultra-sun
  (440, 44000, 27, 'Usually it’s a well-behaved Pokémon, but if you take its round rock away, it will cry and fuss and throw a big old tantrum.'),
  -- gible in ultra-sun
  (443, 44300, 27, 'It reacts to anything that moves—flies right at it and bites it. Sometimes it injures itself, but it doesn’t care too much.'),
  -- gabite in ultra-sun
  (444, 44400, 27, 'It loves shiny things. When it finds a Sableye trying to catch a Carbink, Gabite becomes furiously angry and attacks the Sableye.'),
  -- garchomp in ultra-sun
  (445, 44500, 27, 'It flies at the speed of sound while searching for prey, and it has midair battles with Salamence as the two compete for food.'),
  -- mega-garchomp in ultra-sun
  (445, 44501, 27, 'Its arms and wings melted into something like scythes. Mad with rage, it rampages on and on.'),
  -- munchlax in ultra-sun
  (446, 44600, 27, 'It hides food under its long fur, but it sometimes forgets about it and causes a stinky disturbance.'),
  -- riolu in ultra-sun
  (447, 44700, 27, 'It knows how people and Pokémon feel by looking at their auras. It doesn’t approach dangerous opponents.'),
  -- lucario in ultra-sun
  (448, 44800, 27, 'It concentrates its mental energy and fires off mysterious waves called auras, which can crush boulders of large size to dust.'),
  -- mega-lucario in ultra-sun
  (448, 44801, 27, 'Its aura has expanded due to Mega Evolution. Governed only by its combative instincts, it strikes enemies without mercy.'),
  -- finneon in ultra-sun
  (456, 45600, 27, 'When night falls, their pink patterns begin to shine. They’re popular with divers, so there are resorts that feed them to keep them close.'),
  -- lumineon in ultra-sun
  (457, 45700, 27, 'Deep down at the bottom of the ocean, prey is scarce. Lumineon get into fierce disputes with Lanturn over food.'),
  -- mantyke in ultra-sun
  (458, 45800, 27, 'It’s highly friendly and easily tamed. Tours that take people swimming with Mantyke are a super-popular beach activity.'),
  -- weavile in ultra-sun
  (461, 46100, 27, 'One Weavile will trip a Sandshrew and flip it over, and then another Weavile will deal the finishing blow with its sharp claws.'),
  -- magnezone in ultra-sun
  (462, 46200, 27, 'It uses radar to monitor its territory. Intruders are quickly disposed of with a hyper beam.'),
  -- lickilicky in ultra-sun
  (463, 46300, 27, 'A contest is under way to determine which one can stick its tongue out the farthest. The current record is...more than 82 feet.'),
  -- electivire in ultra-sun
  (466, 46600, 27, 'It grips its tail, which spews electricity, and then beats down opponents with the power of its electrified fist.'),
  -- magmortar in ultra-sun
  (467, 46700, 27, 'There are still quite a few factories that rely on the flames provided by Magmortar to process metals.'),
  -- leafeon in ultra-sun
  (470, 47000, 27, 'Although it doesn’t like disputes, it will sharpen the leaf on its tail into a blade and fight if it has to protect its friends.'),
  -- glaceon in ultra-sun
  (471, 47100, 27, 'It protects itself by freezing its fur into sharp needles. It can drop its body temperature below –75 degrees Fahrenheit.'),
  -- porygon-z in ultra-sun
  (474, 47400, 27, 'Its behavior is noticeably unstable, which is apparently due to the incompetence of the engineer who updated its programming.'),
  -- probopass in ultra-sun
  (476, 47600, 27, 'Although it can control its units known as Mini-Noses, they sometimes get lost and don’t come back.'),
  -- froslass in ultra-sun
  (478, 47800, 27, 'It freezes hikers who have come to climb snowy mountains and carries them back to its home. It only goes after men it thinks are handsome.'),
  -- lillipup in ultra-sun
  (506, 50600, 27, 'This Pokémon has excellent judgment. If it decides it can’t defeat an opponent, it immediately turns tail and vamooses.'),
  -- herdier in ultra-sun
  (507, 50700, 27, 'The longer its black fur grows, the harder and more impervious it gets. Claws and fangs can’t easily penetrate it.'),
  -- stoutland in ultra-sun
  (508, 50800, 27, 'It pays no mind to the cold, thanks to its long warm coat. Stoutland in Alola look a little uncomfortable.'),
  -- roggenrola in ultra-sun
  (524, 52400, 27, 'The hexagonal hole is its ear. Deep in that ear is an energy core, so if you stick your hand in there, Roggenrola will be very angry!'),
  -- boldore in ultra-sun
  (525, 52500, 27, 'The energy overflowing from its body has turned into orange crystals that are hard enough to smash diamonds.'),
  -- gigalith in ultra-sun
  (526, 52600, 27, 'When it fires off energy with all its might, the power creates countless fissures on its body.'),
  -- cottonee in ultra-sun
  (546, 54600, 27, 'To protect itself, it shoots cotton from its body. When it gets wet in the rain, its cotton grows moist and heavy, and it can’t move as well.'),
  -- whimsicott in ultra-sun
  (547, 54700, 27, 'This nuisance sneaks into people’s homes, where it hides important things and scatters cotton all over the place.'),
  -- petilil in ultra-sun
  (548, 54800, 27, 'Some say if you dry the leaves on its head, boil them down, and drink the infusion, your vigor will return, so Petilil is popular with the elderly.'),
  -- lilligant in ultra-sun
  (549, 54900, 27, 'The fragrance of its flower differs slightly depending on the soil where it grew up. Sniffing the aroma calms your heart and mind.'),
  -- basculin in ultra-sun
  (550, 55000, 27, 'Savage, violent Pokémon, red and blue Basculin are always fighting each other over territory.'),
  -- basculin-blue-striped in ultra-sun
  (550, 55001, 27, 'Even Basculin, which devours everything it can with its huge jaws, is nothing more than food to organisms stronger than itself.'),
  -- sandile in ultra-sun
  (551, 55100, 27, 'Alola, where it’s warm all year round, is a comfortable environment for this Pokémon. Sometimes you’ll even see it outside of deserts.'),
  -- krokorok in ultra-sun
  (552, 55200, 27, 'Krokorok really hates it when its body gets cold. On nights when the temperature drops, it digs deep into the desert sands.'),
  -- krookodile in ultra-sun
  (553, 55300, 27, 'When it spots prey, even at a distance of over 30 miles, it swims through the desert as if it were water, then jumps out and chomps them.'),
  -- scraggy in ultra-sun
  (559, 55900, 27, 'They move in small groups, walking around lazily. Anyone who makes eye contact gets smacked with a headbutt.'),
  -- scrafty in ultra-sun
  (560, 56000, 27, 'This Pokémon may be rude, but it takes very good care of its family, its friends, and its turf.'),
  -- tirtouga in ultra-sun
  (564, 56400, 27, 'It was restored from an ancient fossil. Tirtouga lived in the sea but came up onto the land to search for prey.'),
  -- carracosta in ultra-sun
  (565, 56500, 27, 'Its jaws are terrifyingly powerful. It could eat Omastar and Omanyte whole and not be bothered in the slightest by their shells.'),
  -- archen in ultra-sun
  (566, 56600, 27, 'Once thought to be the ancestor of all bird Pokémon, some of the latest research suggests that may not be the case.'),
  -- archeops in ultra-sun
  (567, 56700, 27, 'This ancient Pokémon’s plumage is delicate, so if anyone other than an experienced professional tries to restore it, they will fail.'),
  -- trubbish in ultra-sun
  (568, 56800, 27, 'Poisonous gas leaks out of it when it breathes. Muk that catch a whiff of that stench will come drooling.'),
  -- garbodor in ultra-sun
  (569, 56900, 27, 'It locks opponents in place with its left hand, immobilizing them by entirely dousing their bodies with poisonous liquid.'),
  -- zorua in ultra-sun
  (570, 57000, 27, 'This Pokémon has a cowardly disposition, so when it’s not around friends, it basically always stays transformed as something else.'),
  -- zoroark in ultra-sun
  (571, 57100, 27, 'It doesn’t just transform itself—it also has the power to make hundreds of people see its illusions.'),
  -- minccino in ultra-sun
  (572, 57200, 27, 'A clean freak that will not allow even the slightest mess, it uses its tail like a mop to thoroughly clean any and all filth.'),
  -- cinccino in ultra-sun
  (573, 57300, 27, 'The white parts of its coat are covered in an oil secreted from its body, so this Pokémon can slide right away from its enemies’ attacks.'),
  -- vanillite in ultra-sun
  (582, 58200, 27, 'It exhales cold air that is at –58 degrees Fahrenheit. When it’s in a warm place, it shrinks little by little.'),
  -- vanillish in ultra-sun
  (583, 58300, 27, 'It sprays its enemies with grains of ice to freeze them. Most Vanillish in Alola are smaller than average.'),
  -- vanilluxe in ultra-sun
  (584, 58400, 27, 'It blasts blizzards from its two mouths. It can create snow anywhere, so it gets a lot of love from skiers and snowboarders.'),
  -- emolga in ultra-sun
  (587, 58700, 27, 'They store up electricity to fly through the air. When thunder cracks at night, sometimes there are almost enough of them to blot out the sky.'),
  -- frillish in ultra-sun
  (592, 59200, 27, 'It wraps its veillike arms and legs around prey swimming by and drags them down to the depths of the ocean.'),
  -- jellicent in ultra-sun
  (593, 59300, 27, 'Jellicent is always hanging around fancy cruise ships and tankers, hoping to drag away its prey.'),
  -- alomomola in ultra-sun
  (594, 59400, 27, 'Fishermen take them along on long voyages, because if you have an Alomomola with you, there’ll be no need for a doctor or medicine.'),
  -- elgyem in ultra-sun
  (605, 60500, 27, 'It controls tremendous psychic power. Most reports of alien sightings are actually just people mistaking Elgyem for an alien.'),
  -- beheeyem in ultra-sun
  (606, 60600, 27, 'With its psychic powers, it rewrites its opponents’ memories. You, too, may have already had your memories rewritten.'),
  -- mienfoo in ultra-sun
  (619, 61900, 27, 'They can often be seen in packs in the morning, slowly moving their bodies through a series of poses.'),
  -- mienshao in ultra-sun
  (620, 62000, 27, 'It overwhelms its opponents with continuous attacks and then slowly stores up power before delivering the finishing blow.'),
  -- druddigon in ultra-sun
  (621, 62100, 27, 'The red skin on its face is harder than rock. In narrow caves, it squares off against its enemies and charges face-first right into them.'),
  -- golett in ultra-sun
  (622, 62200, 27, 'Its movements are powered by a mysterious energy. It has continued to move since ancient times, so its power may soon run out.'),
  -- golurk in ultra-sun
  (623, 62300, 27, 'Some say that ancient people invented Golurk to serve as a laborer. It follows its master’s orders faithfully.'),
  -- pawniard in ultra-sun
  (624, 62400, 27, 'After shredding its prey, it sharpens its blades on a stone by the river. Each Pawniard has its own favorite sharpening stone.'),
  -- bisharp in ultra-sun
  (625, 62500, 27, 'No matter how strong the Bisharp, it’s said that if the blade on its head is chipped, it will retire from its position as the boss.'),
  -- rufflet in ultra-sun
  (627, 62700, 27, 'With its powerful legs and sturdy claws, it can crack even the hard shells of Shellder and pluck out their insides.'),
  -- braviary in ultra-sun
  (628, 62800, 27, 'The more scars it has on its front, the more heroic it’s considered to be. Those with many scars on their back are mocked by the flock.'),
  -- vullaby in ultra-sun
  (629, 62900, 27, 'Mandibuzz gives it the bones it wears. Vullaby’s wings are short, so it can’t fly yet, but it jumps around, dreaming of wide open skies.'),
  -- mandibuzz in ultra-sun
  (630, 63000, 27, 'It skillfully arranges the bones of its prey to construct its nest. Most of the bones are Cubone.'),
  -- larvesta in ultra-sun
  (636, 63600, 27, 'When battling opponents, it sprays fire from its five horns. The max temperature of the flames can reach nearly 5,500 degrees Fahrenheit.'),
  -- volcarona in ultra-sun
  (637, 63700, 27, 'As it flies, it scatters its flaming scales. It was feared by ancient people, who referred to it as “the rage of the sun.”'),
  -- fletchling in ultra-sun
  (661, 66100, 27, 'While it’s an amiable Pokémon, if you touch it unexpectedly, it will heat up its body in an instant, and you’ll be burned.'),
  -- fletchinder in ultra-sun
  (662, 66200, 27, 'It scatters embers in the tall grass. Then bug Pokémon, frightened by the flames, come flying out, and Fletchinder gobbles them up.'),
  -- talonflame in ultra-sun
  (663, 66300, 27, 'Its tough wings don’t allow fire to pass through them. A long time ago, firefighters’ outfits were made from Talonflame wings.'),
  -- litleo in ultra-sun
  (667, 66700, 27, 'When they’re young, they live with a pride. Once they’re able to hunt prey on their own, they’re kicked out and have to make their own way.'),
  -- pyroar in ultra-sun
  (668, 66800, 27, 'The males are usually lazy, but when attacked by a strong foe, a male will protect its friends with no regard for its own safety.'),
  -- flabebe in ultra-sun
  (669, 66900, 27, 'It’s not safe without the power of a flower, but it will keep traveling around until it finds one with the color and shape it wants.'),
  -- floette in ultra-sun
  (670, 67000, 27, 'It raises flowers and uses them as weapons. The more gorgeous the blossom, the more power it contains.'),
  -- floette-eternal-flower in ultra-sun
  (670, 67002, 27, 'The flower it’s holding can no longer be found blooming anywhere. It’s also thought to contain terrifying power.'),
  -- florges in ultra-sun
  (671, 67100, 27, 'It controls the flowers it grows. The petal blizzards that Florges triggers are overwhelming in their beauty and power.'),
  -- pancham in ultra-sun
  (674, 67400, 27, 'It follows Pangoro around like a henchman. When Pancham makes a big mistake, its leaf gets taken away.'),
  -- pangoro in ultra-sun
  (675, 67500, 27, 'This rowdy Pokémon boasts great physical strength. Many Trainers are also smitten by its lively character.'),
  -- furfrou in ultra-sun
  (676, 67600, 27, 'There was an era when aristocrats would compete to see who could trim their Furfrou’s fur into the most exquisite style.'),
  -- inkay in ultra-sun
  (686, 68600, 27, 'It draws prey near with its blinking lights and then wraps them up in its long tentacles and holds them in place.'),
  -- malamar in ultra-sun
  (687, 68700, 27, 'When it comes to strong hypnosis, there’s an endless number of people who utilize Malamar for their nefarious deeds.'),
  -- skrelp in ultra-sun
  (690, 69000, 27, 'It vanishes into seaweed and remains perfectly still to avoid attacks from large Pokémon. Rotten seaweed is its main food source.'),
  -- dragalge in ultra-sun
  (691, 69100, 27, 'This vicious Pokémon sprays a poisonous liquid on opponents that come near. For whatever reason, it gets along really well with Dhelmise.'),
  -- clauncher in ultra-sun
  (692, 69200, 27, 'Its claws occasionally fall off, and it keeps a low profile until they grow back. The meat of its claws is so delicious!'),
  -- clawitzer in ultra-sun
  (693, 69300, 27, 'It compresses the water it has sucked up and then projects it with enough power to punch a hole right through a thick sheet of iron.'),
  -- tyrunt in ultra-sun
  (696, 69600, 27, 'Its large jaw has incredible destructive power. Some theories suggest that its restored form is different from its form of long ago.'),
  -- tyrantrum in ultra-sun
  (697, 69700, 27, 'Complete restoration is impossible, allowing room for theories that its entire body was once covered in a feather-like coat.'),
  -- amaura in ultra-sun
  (698, 69800, 27, 'It lived in cold areas in ancient times. It’s said that when Amaura whinnies, auroras appear in the night sky.'),
  -- aurorus in ultra-sun
  (699, 69900, 27, 'An Aurorus was found frozen solid within a glacier, just as it appeared long ago, which became quite a big event in the news.'),
  -- sylveon in ultra-sun
  (700, 70000, 27, 'Once a fight breaks out, it will unflinchingly charge at dragon Pokémon that are many times larger than itself.'),
  -- hawlucha in ultra-sun
  (701, 70100, 27, 'It overwhelms opponents with quick moves, but sometimes it showboats for too long when it’s using a special move and gets itself into a pinch.'),
  -- dedenne in ultra-sun
  (702, 70200, 27, 'It sneaks into people’s homes and steals electricity from their outlets. When your electric bill seems off, it’s the handiwork of this rascal.'),
  -- carbink in ultra-sun
  (703, 70300, 27, 'Some say that deep beneath the surface of the world, a pack of Carbink live with their queen in a kingdom of jewels.'),
  -- goomy in ultra-sun
  (704, 70400, 27, 'It uses its horns to check out its surroundings. They’re very sensitive, so if you grab them, it will feel a strong shock and be unable to move.'),
  -- sliggoo in ultra-sun
  (705, 70500, 27, 'It crawls along sluggishly. The swirly protrusion on its back is filled with its brain and other organs.'),
  -- goodra in ultra-sun
  (706, 70600, 27, 'It’s very friendly toward people. If you grow close to it, Goodra will hug you with its sticky, slime-covered body. Don’t get mad.'),
  -- klefki in ultra-sun
  (707, 70700, 27, 'Although it’s unclear why it collects keys, giving it a key makes Klefki very happy. However, it apparently only likes master keys.'),
  -- phantump in ultra-sun
  (708, 70800, 27, 'By imitating the voice of a child, it causes people to get hopelessly lost deep in the forest. It’s trying to make friends with them.'),
  -- trevenant in ultra-sun
  (709, 70900, 27, 'It’s feared as a ghost of the forest. Lumberjacks bring along Fire types, which Trevenant hates, when they enter the forest.'),
  -- noibat in ultra-sun
  (714, 71400, 27, 'Fruits are its favorite foods. This gourmet carefully picks out just the ripe ones using its sonar.'),
  -- noivern in ultra-sun
  (715, 71500, 27, 'Although it has a violent disposition, if you give it a nice ripe fruit that it loves, Noivern will suddenly become tame.'),
  -- zygarde in ultra-sun
  (718, 71800, 27, 'This is Zygarde’s form when about half of its pieces have been assembled. It plays the role of monitoring the ecosystem.'),
  -- zygarde-10-percent in ultra-sun
  (718, 71801, 27, 'This is Zygarde when about 10% of its pieces have been assembled. It leaps at its opponent’s chest and sinks its sharp fangs into them.'),
  -- zygarde-complete in ultra-sun
  (718, 71803, 27, 'This is Zygarde’s perfected form. From the orifice on its chest, it radiates high-powered energy that eliminates everything.'),
  -- rowlet in ultra-sun
  (722, 72200, 27, 'It sends its feathers, which are as sharp as blades, flying in attack. Its legs are strong, so its kicks are also formidable.'),
  -- dartrix in ultra-sun
  (723, 72300, 27, 'This narcissistic Pokémon is a clean freak. If you don’t groom it diligently, it will stop listening to you.'),
  -- decidueye in ultra-sun
  (724, 72400, 27, 'It nocks its arrow quills and shoots them at opponents. When it simply can’t afford to miss, it tugs the vine on its head to improve its focus.'),
  -- litten in ultra-sun
  (725, 72500, 27, 'If you try too hard to get close to it, it won’t open up to you. Even if you do grow close, giving it too much affection is still a no-no.'),
  -- torracat in ultra-sun
  (726, 72600, 27, 'It can act spoiled if it grows close to its Trainer. A powerful Pokémon, its sharp claws can leave its Trainer’s whole body covered in scratches.'),
  -- incineroar in ultra-sun
  (727, 72700, 27, 'Although it’s rough mannered and egotistical, it finds beating down unworthy opponents boring. It gets motivated for stronger opponents.'),
  -- popplio in ultra-sun
  (728, 72800, 27, 'The balloons it inflates with its nose grow larger and larger as it practices day by day.'),
  -- brionne in ultra-sun
  (729, 72900, 27, 'It gets excited when it sees a dance it doesn’t know. This hard worker practices diligently until it can learn that dance.'),
  -- primarina in ultra-sun
  (730, 73000, 27, 'To Primarina, every battle is a stage. It takes down its prey with beautiful singing and dancing.'),
  -- pikipek in ultra-sun
  (731, 73100, 27, 'It pecks at trees with its hard beak. You can get some idea of its mood or condition from the rhythm of its pecking.'),
  -- trumbeak in ultra-sun
  (732, 73200, 27, 'It can bend the tip of its beak to produce over a hundred different cries at will.'),
  -- toucannon in ultra-sun
  (733, 73300, 27, 'They smack beaks with others of their kind to communicate. The strength and number of hits tell each other how they feel.'),
  -- yungoos in ultra-sun
  (734, 73400, 27, 'Its stomach takes up most of its long torso. It’s a big eater, so the amount Trainers have to spend on its food is no laughing matter.'),
  -- gumshoos in ultra-sun
  (735, 73500, 27, 'Although it wasn’t originally found in Alola, this Pokémon was brought over a long time ago when there was a huge Rattata outbreak.'),
  -- grubbin in ultra-sun
  (736, 73600, 27, 'If you find its nest, you shouldn’t stick your hand inside. You’ll get bitten by an irritated Grubbin.'),
  -- charjabug in ultra-sun
  (737, 73700, 27, 'It buries itself in fallen leaves and barely moves, munching away on humus. If you accidentally step on one, you’ll get a shock!'),
  -- vikavolt in ultra-sun
  (738, 73800, 27, 'It has an organ that generates electricity in its abdomen. It concentrates energy in its strong jaws and fires off powerful jolts of electricity.'),
  -- crabrawler in ultra-sun
  (739, 73900, 27, 'Its hard pincers are well suited to both offense and defense. Fights between two Crabrawler are like boxing matches.'),
  -- crabominable in ultra-sun
  (740, 74000, 27, 'It stores coldness in its pincers and pummels its foes. It can even smash thick walls of ice to bits!'),
  -- oricorio in ultra-sun
  (741, 74100, 27, 'It wins the hearts of its enemies with its passionate dancing and then uses the opening it creates to burn them up with blazing flames.'),
  -- oricorio-pom-pom in ultra-sun
  (741, 74101, 27, 'It lifts its opponents'' spirits with its cheerful dance moves. When they let their guard down, it electrocutes them with a jolt.'),
  -- oricorio-pau in ultra-sun
  (741, 74102, 27, 'It relaxes its opponents with its elegant dancing. When they let their guard down, it showers them with psychic energy.'),
  -- oricorio-sensu in ultra-sun
  (741, 74103, 27, 'It charms its opponents with its refined dancing. When they let their guard down, it places a curse on them that will bring on their demise.'),
  -- cutiefly in ultra-sun
  (742, 74200, 27, 'Nectar and pollen are its favorite fare. In fields of flowers, it gets into skirmishes with Butterfree over food.'),
  -- ribombee in ultra-sun
  (743, 74300, 27, 'Rain makes pollen damp, so Ribombee hates rain. When it sees ominous clouds, it finds a hollow in a tree, where it waits stock-still.'),
  -- rockruff in ultra-sun
  (744, 74400, 27, 'As they develop, their disposition grows more violent and aggressive. Many Trainers find them too much to handle and abandon them.'),
  -- lycanroc in ultra-sun
  (745, 74500, 27, 'The sharp rocks in its mane can cut like knives. Lycanroc wears its prey down by degrees before finishing them off.'),
  -- lycanroc-midnight in ultra-sun
  (745, 74501, 27, 'It has no problem ignoring orders it doesn’t like. It doesn’t seem to mind getting hurt at all—as long as it can finish off its opponent.'),
  -- lycanroc-dusk in ultra-sun
  (745, 74502, 27, 'Bathed in the setting sun of evening, Lycanroc has undergone a special kind of evolution. An intense fighting spirit underlies its calmness.'),
  -- wishiwashi in ultra-sun
  (746, 74600, 27, 'They’re weak, so they move in schools. However, they can also often be seen all alone, having strayed from the school.'),
  -- mareanie in ultra-sun
  (747, 74700, 27, 'They eat Corsola branches, so Mareanie are hated by craftsmen who work with Corsola branches that have naturally fallen off.'),
  -- toxapex in ultra-sun
  (748, 74800, 27, 'To attack, this Pokémon sends toxic spikes flying at its enemies. Ones that come close get mown down by the claws on its feet.'),
  -- mudbray in ultra-sun
  (749, 74900, 27, 'It loves playing in the mud. If it isn’t showered with mud on a daily basis, it gets stressed out and stops listening to its Trainer.'),
  -- mudsdale in ultra-sun
  (750, 75000, 27, 'It remains calm and unmoving no matter the situation. It mixes dirt with the saliva in its mouth to make a special kind of mud.'),
  -- dewpider in ultra-sun
  (751, 75100, 27, 'When two Dewpider meet, they display their water bubbles to each other. Then the one with the smaller bubble gets out of the other’s way.'),
  -- araquanid in ultra-sun
  (752, 75200, 27, 'It usually passes its time in the water. When its belly is full, it stores its subdued prey in the water bubble on its head.'),
  -- fomantis in ultra-sun
  (753, 75300, 27, 'When the sun rises, Fomantis spreads its four leaves and bathes in the sunlight. The tip of its head has a pleasant aroma.'),
  -- lurantis in ultra-sun
  (754, 75400, 27, 'For self-protection, it pretends to be a bug Pokémon. Both of its arms bear keen-edged petals.'),
  -- morelull in ultra-sun
  (755, 75500, 27, 'It scatters its shining spores around itself. Even though they’re dangerous, nighttime tours of forests where Morelull live are popular.'),
  -- shiinotic in ultra-sun
  (756, 75600, 27, 'It puts its prey to sleep and siphons off their vitality through the tip of its arms. If one of its kind is weakened, it helps by sending it vitality.'),
  -- salandit in ultra-sun
  (757, 75700, 27, 'The males will do whatever the females tell them. They give the females most of their food. Due to malnutrition, the males can’t evolve.'),
  -- salazzle in ultra-sun
  (758, 75800, 27, 'Salazzle lives deep in caves and forces the Salandit it has attracted with its pheromones to serve it.'),
  -- stufful in ultra-sun
  (759, 75900, 27, 'It boasts power enough to split large trees in half. The organ on its rear releases an odor that it uses to communicate with others of its kind.'),
  -- bewear in ultra-sun
  (760, 76000, 27, 'It waves its hands wildly in intimidation and warning. Life is over for anyone who doesn’t run away as fast as possible.'),
  -- bounsweet in ultra-sun
  (761, 76100, 27, 'Because of its sweet, delicious aroma, bird Pokémon are always after it, but it’s not intelligent enough to care.'),
  -- steenee in ultra-sun
  (762, 76200, 27, 'It’s protected by its hard sepals, so it plays with bird Pokémon without worry. They peck it relentlessly, but it doesn’t care.'),
  -- tsareena in ultra-sun
  (763, 76300, 27, 'A master of grand and beautiful kicks, it can knock out even kickboxing champions with a single blow.'),
  -- comfey in ultra-sun
  (764, 76400, 27, 'It stretches sticky vines out from its head and picks flowers to adorn itself with. When it doesn’t have any flowers, it feels uneasy.'),
  -- oranguru in ultra-sun
  (765, 76500, 27, 'It normally spends its time meditating in the treetops. It throws Poké Balls and gives other Pokémon orders as it pleases.'),
  -- passimian in ultra-sun
  (766, 76600, 27, 'They use their saliva to stick leaves to their shoulders. You can tell what troop they belong to from the position of the leaves.'),
  -- wimpod in ultra-sun
  (767, 76700, 27, 'It will pick up anything it finds on the ground. Sometimes it finds coins, so Murkrow and Meowth will go after it.'),
  -- golisopod in ultra-sun
  (768, 76800, 27, 'The shell covering its body is as hard as diamond. This Pokémon will do anything it takes to win.'),
  -- sandygast in ultra-sun
  (769, 76900, 27, 'It likes the shovel on its head, so Sandygast will get serious and fight any children who come to take it back.'),
  -- palossand in ultra-sun
  (770, 77000, 27, 'Each of its grains of sand has its own will. Palossand eats small Pokémon and siphons away their vital essence while they’re still alive.'),
  -- pyukumuku in ultra-sun
  (771, 77100, 27, 'The tradition known as Pyukumuku chucking started from the custom of throwing Pyukumuku back into the sea after they wash onshore.'),
  -- type-null in ultra-sun
  (772, 77200, 27, 'A Pokémon weapon developed for a specific mission, it went berserk during an experiment, so it was cryogenically frozen.'),
  -- silvally in ultra-sun
  (773, 77300, 27, 'This is its form once it has awakened and evolved. Freed from its heavy mask, its speed is greatly increased.'),
  -- silvally-fighting in ultra-sun
  (773, 77301, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-flying in ultra-sun
  (773, 77302, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-poison in ultra-sun
  (773, 77303, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-ground in ultra-sun
  (773, 77304, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-rock in ultra-sun
  (773, 77305, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-bug in ultra-sun
  (773, 77306, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-ghost in ultra-sun
  (773, 77307, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-steel in ultra-sun
  (773, 77308, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-fire in ultra-sun
  (773, 77309, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-water in ultra-sun
  (773, 77310, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-grass in ultra-sun
  (773, 77311, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-electric in ultra-sun
  (773, 77312, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-psychic in ultra-sun
  (773, 77313, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-ice in ultra-sun
  (773, 77314, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-dragon in ultra-sun
  (773, 77315, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-dark in ultra-sun
  (773, 77316, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- silvally-fairy in ultra-sun
  (773, 77317, 27, 'Having been awakened successfully, it can change its type and battle—just like a certain Pokémon depicted in legends.'),
  -- minior in ultra-sun
  (774, 77400, 27, 'It lives in the ozone layer, where it becomes food for stronger Pokémon. When it tries to run away, it falls to the ground.'),
  -- minior-core in ultra-sun
  (774, 77401, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- minior-orange in ultra-sun
  (774, 77402, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- minior-yellow in ultra-sun
  (774, 77403, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- minior-green in ultra-sun
  (774, 77404, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- minior-blue in ultra-sun
  (774, 77405, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- minior-indigo in ultra-sun
  (774, 77406, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- minior-violet in ultra-sun
  (774, 77407, 27, 'Places where Minior fall from the night sky are few and far between, with Alola being one of the precious few.'),
  -- komala in ultra-sun
  (775, 77500, 27, 'It stays asleep from the moment it’s born. When it falls into a deep sleep, it stops moving altogether.'),
  -- turtonator in ultra-sun
  (776, 77600, 27, 'It lives in volcanoes and eats sulfur and other minerals. Materials from the food it eats form the basis of its explosive shell.'),
  -- togedemaru in ultra-sun
  (777, 77700, 27, 'When it’s surprised or agitated, the 14 fur spikes on its back will stand up involuntarily.'),
  -- mimikyu in ultra-sun
  (778, 77800, 27, 'Although it’s a quiet, lonely Pokémon, if you try to look at what’s under its rag, it will become agitated and resist violently.'),
  -- mimikyu-busted in ultra-sun
  (778, 77801, 27, 'It stands in front of a mirror, trying to fix its broken neck as if its life depended on it. It has a hard time getting it right, so it’s crying inside.'),
  -- bruxish in ultra-sun
  (779, 77900, 27, 'It burrows beneath the sand, radiating psychic power from the protuberance on its head. It waits for prey as it surveys the area.'),
  -- drampa in ultra-sun
  (780, 78000, 27, 'If a child it has made friends with is bullied, Drampa will find the bully’s house and burn it to the ground.'),
  -- dhelmise in ultra-sun
  (781, 78100, 27, 'It wraps its prey in green seaweed and sucks away their vitality. It only likes to go after big prey like Wailord.'),
  -- jangmo-o in ultra-sun
  (782, 78200, 27, 'It smacks the scales on its head against rocks or against the ground to frighten its opponents. It can also contact its friends with these noises.'),
  -- hakamo-o in ultra-sun
  (783, 78300, 27, 'It makes noise by clanging its scales together. When the rhythm has reached its peak, Hakamo-o attacks.'),
  -- kommo-o in ultra-sun
  (784, 78400, 27, 'When it howls after finishing off its prey, the metallic sounds of its celebrating comrades can be heard from all around.'),
  -- tapu-koko in ultra-sun
  (785, 78500, 27, 'Although it’s called a guardian deity, if a person or Pokémon puts it in a bad mood, it will become a malevolent deity and attack.'),
  -- tapu-lele in ultra-sun
  (786, 78600, 27, 'It heals the wounds of people and Pokémon by sprinkling them with its sparkling scales. This guardian deity is worshiped on Akala.'),
  -- tapu-bulu in ultra-sun
  (787, 78700, 27, 'Although it’s called a guardian deity, it’s violent enough to crush anyone it sees as an enemy.'),
  -- tapu-fini in ultra-sun
  (788, 78800, 27, 'This guardian deity of Poni Island manipulates water. Because it lives deep within a thick fog, it came to be both feared and revered.'),
  -- cosmog in ultra-sun
  (789, 78900, 27, 'Even though its helpless, gaseous body can be blown away by the slightest breeze, it doesn’t seem to care.'),
  -- cosmoem in ultra-sun
  (790, 79000, 27, 'The king who ruled Alola in times of antiquity called it the “cocoon of the stars” and built an altar to worship it.'),
  -- solgaleo in ultra-sun
  (791, 79100, 27, 'Sometimes the result of its opening an Ultra Wormhole is that energy and life-forms from other worlds are called here to this world.'),
  -- lunala in ultra-sun
  (792, 79200, 27, 'Records of it exist in writings from long, long ago, where it was known by the name “the beast that calls the moon.”'),
  -- nihilego in ultra-sun
  (793, 79300, 27, 'A life-form from another world, it was dubbed a UB and is thought to produce a strong neurotoxin.'),
  -- buzzwole in ultra-sun
  (794, 79400, 27, 'Although it’s alien to this world and a danger here, it’s apparently a common organism in the world where it normally lives.'),
  -- pheromosa in ultra-sun
  (795, 79500, 27, 'A life-form that lives in another world, its body is thin and supple, but it also possesses great power.'),
  -- xurkitree in ultra-sun
  (796, 79600, 27, 'Although it’s alien to this world and a danger here, it’s apparently a common organism in the world where it normally lives.'),
  -- celesteela in ultra-sun
  (797, 79700, 27, 'One of the dangerous UBs, high energy readings can be detected coming from both of its huge arms.'),
  -- kartana in ultra-sun
  (798, 79800, 27, 'This Ultra Beast’s body, which is as thin as paper, is like a sharpened sword.'),
  -- guzzlord in ultra-sun
  (799, 79900, 27, 'Although it’s alien to this world and a danger here, it’s apparently a common organism in the world where it normally lives.'),
  -- necrozma in ultra-sun
  (800, 80000, 27, 'It looks somehow pained as it rages around in search of light, which serves as its energy. It’s apparently from another world.'),
  -- necrozma-dusk-mane in ultra-sun
  (800, 80001, 27, 'This is its form while it is devouring the light of Solgaleo. It pounces on foes and then slashes them with the claws on its four limbs and back.'),
  -- necrozma-dawn-wings in ultra-sun
  (800, 80002, 27, 'Lunala no longer has a will of its own. Now under the control of Necrozma, it continuously expels all of its energy.'),
  -- ultra-necrozma in ultra-sun
  (800, 80003, 27, 'This is its form when it has absorbed overwhelming light energy. It fires laser beams from all over its body.'),
  -- magearna in ultra-sun
  (801, 80100, 27, 'It synchronizes its consciousness with others to understand their feelings. This faculty makes it useful for taking care of people.'),
  -- marshadow in ultra-sun
  (802, 80200, 27, 'It slips into the shadows of others and mimics their powers and movements. As it improves, it becomes stronger than those it’s imitating.'),
  -- poipole in ultra-sun
  (803, 80300, 27, 'This Ultra Beast is well enough liked to be chosen as a first partner in its own world.'),
  -- naganadel in ultra-sun
  (804, 80400, 27, 'It stores hundreds of liters of poisonous liquid inside its body. It is one of the organisms known as UBs.'),
  -- stakataka in ultra-sun
  (805, 80500, 27, 'It appeared from an Ultra Wormhole. Each one appears to be made up of many life-forms stacked one on top of each other.'),
  -- blacephalon in ultra-sun
  (806, 80600, 27, 'It slithers toward people. Then, without warning, it triggers the explosion of its own head. It’s apparently one kind of Ultra Beast.'),
  -- zeraora in ultra-sun
  (807, 80700, 27, 'It electrifies its claws and tears its opponents apart with them. Even if they dodge its attack, they’ll be electrocuted by the flying sparks.'),
  -- caterpie in ultra-moon
  (10, 1000, 28, 'Its body is soft and weak. In nature, its perpetual fate is to be seen by others as food.'),
  -- metapod in ultra-moon
  (11, 1100, 28, 'Its hard shell doesn’t crack a bit even if Pikipek pecks at it, but it will tip over, spilling out its insides.'),
  -- butterfree in ultra-moon
  (12, 1200, 28, 'Nectar from pretty flowers is its favorite food. In fields of flowers, it has heated battles with Cutiefly for territory.'),
  -- rattata in ultra-moon
  (19, 1900, 28, 'This Pokémon is common but hazardous. Its sharp incisors can easily cut right through hard wood.'),
  -- alolan-rattata in ultra-moon
  (19, 1901, 28, 'Night after night, they sneak into people’s homes seeking food. A massive outbreak of them has become an issue of public concern.'),
  -- raticate in ultra-moon
  (20, 2000, 28, 'Its whiskers are essential for maintaining its balance. No matter how friendly you are, it will get angry and bite you if you touch its whiskers.'),
  -- alolan-raticate in ultra-moon
  (20, 2001, 28, 'It commands a nest of Rattata. Different nests don’t get along, whipping up severe fights over feeding grounds.'),
  -- spearow in ultra-moon
  (21, 2100, 28, 'Due to its short wings, it can’t fly long distances. It wanders about restlessly and pecks at bug Pokémon.'),
  -- fearow in ultra-moon
  (22, 2200, 28, 'In Alola, fish Pokémon are its prey. It can be seen circling above the ocean searching for food.'),
  -- ekans in ultra-moon
  (23, 2300, 28, 'The eggs of bird Pokémon are its favorite food. It swallows eggs whole, so sometimes an egg gets stuck, and Ekans faints.'),
  -- arbok in ultra-moon
  (24, 2400, 28, 'After stunning its opponents with the pattern on its stomach, it quickly wraps them up in its body and waits for them to stop moving.'),
  -- pikachu in ultra-moon
  (25, 2500, 28, 'While sleeping, it generates electricity in the sacs in its cheeks. If it’s not getting enough sleep, it will be able to use only weak electricity.'),
  -- pikachu-original-cap in ultra-moon
  (25, 2503, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-hoenn-cap in ultra-moon
  (25, 2504, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-sinnoh-cap in ultra-moon
  (25, 2505, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-unova-cap in ultra-moon
  (25, 2506, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-kalos-cap in ultra-moon
  (25, 2507, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-alola-cap in ultra-moon
  (25, 2508, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- pikachu-partner-cap in ultra-moon
  (25, 2509, 28, 'This Pikachu is wearing its Trainer’s cap. Since the cap’s not the right size, the fit is a bit loose.'),
  -- raichu in ultra-moon
  (26, 2600, 28, 'Because so many Trainers like the way Pikachu looks, you don’t see this Pokémon very often.'),
  -- alolan-raichu in ultra-moon
  (26, 2601, 28, 'When you rub its cheeks, a sweet fragrance comes wafting out. However, you’ll also get a light shock!'),
  -- sandshrew in ultra-moon
  (27, 2700, 28, 'When its skin gets wrinkled from moisture, it heads for a volcano. It lies flat on a spot with a lot of geothermal heat and dries itself out.'),
  -- alolan-sandshrew in ultra-moon
  (27, 2701, 28, 'The skin on its back is as hard as steel. Predators go after its soft belly, so it clings to the ground desperately.'),
  -- sandslash in ultra-moon
  (28, 2800, 28, 'Thanks to its thick claws, it’s good at climbing trees. There are plenty of Sandslash that park themselves in trees and go right to sleep.'),
  -- alolan-sandslash in ultra-moon
  (28, 2801, 28, 'A long, long time ago, it lived in the desert. With its sharp claws fully extended, it can climb right up an iceberg without slipping.'),
  -- clefairy in ultra-moon
  (35, 3500, 28, 'Bathed in moonlight, its wings glow faintly. Without even flapping, Clefairy rises into the air, where it dances around.'),
  -- clefable in ultra-moon
  (36, 3600, 28, 'Some scientists believe that it gazes intently at the sky on nights with a full moon because it’s homesick.'),
  -- vulpix in ultra-moon
  (37, 3700, 28, 'It manipulates balls of fire to catch its prey. If you raise one from when it’s young, it will grow close to you like a puppy Pokémon.'),
  -- alolan-vulpix in ultra-moon
  (37, 3701, 28, 'They live together in a skulk, helping one another. Before eating their prey, they freeze it solid with their –58 degree Fahrenheit breath.'),
  -- ninetales in ultra-moon
  (38, 3800, 28, 'The flickering flames it spews from its mouth leave its opponents hypnotized. Then, this extremely intelligent Pokémon attacks.'),
  -- alolan-ninetales in ultra-moon
  (38, 3801, 28, 'Some said that deities visited mountains where Ninetales live, so in times long past, no one was allowed to go into those mountains.'),
  -- jigglypuff in ultra-moon
  (39, 3900, 28, 'The songs they sing are totally different depending on the region they live in. Some even sound like they’re shouting!'),
  -- wigglytuff in ultra-moon
  (40, 4000, 28, 'When it gets angry, it inhales with all its might, and its body gradually inflates. Sometimes they can grow 20 times larger!'),
  -- zubat in ultra-moon
  (41, 4100, 28, 'Their skin is so thin that they’ll be burned if sunlight hits them. When it gets cold out, they gather together to warm one another’s bodies.'),
  -- golbat in ultra-moon
  (42, 4200, 28, 'They can suck down over 10 ounces of blood in one go. They have been known to drink so much blood that they can no longer fly.'),
  -- paras in ultra-moon
  (46, 4600, 28, 'The mushrooms, known as tochukaso, are controlling the bug. Even if the bug bugs the mushrooms, they tell it to bug off.'),
  -- parasect in ultra-moon
  (47, 4700, 28, 'Its poisonous spores are also used in traditional medicine. Apparently, spores produced in Alola are not of very good quality.'),
  -- diglett in ultra-moon
  (50, 5000, 28, 'Around their crops, farmers plant the kind of tree that Diglett like to eat as a way of getting Diglett to plow the fields for them.'),
  -- alolan-diglett in ultra-moon
  (50, 5001, 28, 'The need to dig through volcanic rock in the ground has made them more powerful than the Diglett of other regions.'),
  -- dugtrio in ultra-moon
  (51, 5100, 28, 'Dugtrio’s heads are sleek and smooth and incredibly hard. It can dig through any soil with its headbutts.'),
  -- alolan-dugtrio in ultra-moon
  (51, 5101, 28, 'Its shining gold whiskers are advanced sensors that can detect vibrations from sounds several miles away.'),
  -- meowth in ultra-moon
  (52, 5200, 28, 'It loves coins, so if you give it one, you can make friends with Meowth easily. But it’s fickle, so you can’t count on that friendship lasting.'),
  -- alolan-meowth in ultra-moon
  (52, 5201, 28, 'A royal house that flourished in the distant past brought it here from another region. Meowth is both selfish and prideful.'),
  -- persian in ultra-moon
  (53, 5300, 28, 'This Pokémon is popular with rich people. It’s also targeted by hunters who are after the jewel in its forehead.'),
  -- alolan-persian in ultra-moon
  (53, 5301, 28, 'Its round face is a symbol of wealth. Persian that have bigger, plumper faces are considered more beautiful.'),
  -- psyduck in ultra-moon
  (54, 5400, 28, 'It has been found that its brain cells are 10 times more active when Psyduck is experiencing a headache.'),
  -- golduck in ultra-moon
  (55, 5500, 28, 'A professional swimmer, it can continue swimming for two days straight by waving its long tail skillfully.'),
  -- mankey in ultra-moon
  (56, 5600, 28, 'If one gets angry, all the others around it will get angry, so silence is a rare visitor in a troop of Mankey.'),
  -- primeape in ultra-moon
  (57, 5700, 28, 'The blood vessels in its brain are sturdier than those of other Pokémon, so it can stay healthy despite its constant raging.'),
  -- growlithe in ultra-moon
  (58, 5800, 28, 'It has lived alongside humans since ages ago. Its bones have been found in excavations of ruins from the Stone Age.'),
  -- arcanine in ultra-moon
  (59, 5900, 28, 'There are so many old tales about them that they’re called legendary Pokémon, but there are way more of them around than you’d expect.'),
  -- poliwag in ultra-moon
  (60, 6000, 28, 'The direction of the swirl on their stomachs differs depending on where they live. Poliwag aficionados can tell them apart at a glance.'),
  -- poliwhirl in ultra-moon
  (61, 6100, 28, 'Its health suffers when its skin dries out, so be sure to moisturize it diligently.'),
  -- poliwrath in ultra-moon
  (62, 6200, 28, 'The muscles it has developed through swimming are thick and powerful. When it lands a square punch, it can turn huge boulders to dust.'),
  -- abra in ultra-moon
  (63, 6300, 28, 'It can read others’ minds and will teleport away when danger approaches. You must clear your mind if you want to catch it.'),
  -- kadabra in ultra-moon
  (64, 6400, 28, 'It possesses strong mental capabilities, but its psychic powers are halved when it’s not holding a silver spoon.'),
  -- alakazam in ultra-moon
  (65, 6500, 28, 'If it trusts someone deeply, it will let them have one of its spoons. Anything you eat with that spoon is apparently delicious.'),
  -- machop in ultra-moon
  (66, 6600, 28, 'It likes food that’s highly nutritious because its instincts drive it to build muscle efficiently.'),
  -- machoke in ultra-moon
  (67, 6700, 28, 'A popular motif for sculptures, its incredibly well-developed muscles have captured the imagination of many an artist.'),
  -- machamp in ultra-moon
  (68, 6800, 28, 'With four arms, it can attack and defend simultaneously. It’s said to have mastered every martial art in the world.'),
  -- tentacool in ultra-moon
  (72, 7200, 28, 'Its body is 99% water. The remaining 1% contains the organ that makes its poison.'),
  -- tentacruel in ultra-moon
  (73, 7300, 28, 'It communicates with others of its kind by lighting up the red orbs on its head. When the orbs are blinking, it’s a warning sign.'),
  -- geodude in ultra-moon
  (74, 7400, 28, 'It uses both hands to climb precipitous cliffs. People who see it in action have been known to take up bouldering.'),
  -- alolan-geodude in ultra-moon
  (74, 7401, 28, 'Geodude compete against each other with headbutts. The iron sand on their heads will stick to whichever one has stronger magnetism.'),
  -- graveler in ultra-moon
  (75, 7500, 28, 'It travels by rolling down cliffs. If it falls into a river, it will explode with its last gasp.'),
  -- alolan-graveler in ultra-moon
  (75, 7501, 28, 'Graveler’s entire body is tinged with electricity due to the stones it likes to eat. It’s very quick-tempered.'),
  -- golem in ultra-moon
  (76, 7600, 28, 'It detonates its own body. The power from that explosion can propel it up steep mountain paths with amazing speed.'),
  -- alolan-golem in ultra-moon
  (76, 7601, 28, 'It shoots large rocks that are charged with electricity. Tremendous electric shocks are flung out across the whole area of impact.'),
  -- slowpoke in ultra-moon
  (79, 7900, 28, 'Although their tails, which fall off naturally, can easily be found lying around, they’re a precious ingredient for cooking.'),
  -- slowbro in ultra-moon
  (80, 8000, 28, 'Shellder, in its greed to suck out more and more sweetness from Slowbro’s tail, has metamorphosed into a spiral-shaped shell.'),
  -- mega-slowbro in ultra-moon
  (80, 8001, 28, 'Having been swallowed whole by Shellder, Slowbro now has an iron defense. It’s pretty comfortable in there, too.'),
  -- magnemite in ultra-moon
  (81, 8100, 28, 'Perhaps because electrical lines are often buried these days, the number of Magnemite attacks on power plants has increased.'),
  -- magneton in ultra-moon
  (82, 8200, 28, 'When rain clouds form, many Magneton gather in high places to wait for lightning to strike.'),
  -- seel in ultra-moon
  (86, 8600, 28, 'Thanks to its thick fat, cold seas don’t bother it at all, but it gets tired pretty easily in warm waters.'),
  -- dewgong in ultra-moon
  (87, 8700, 28, 'It sunbathes on the beach after meals. The rise in its body temperature helps its digestion.'),
  -- grimer in ultra-moon
  (88, 8800, 28, 'The wastewater coming from factories is clean these days, so Grimer have nothing to eat. They’re said to be on the verge of extinction.'),
  -- alolan-grimer in ultra-moon
  (88, 8801, 28, 'Brought to Alola to solve the garbage problem, Grimer seems to relish any and all kinds of trash.'),
  -- muk in ultra-moon
  (89, 8900, 28, 'Because they scatter germs everywhere, they’ve long been targeted for extermination, leading to a steep decline in their population.'),
  -- alolan-muk in ultra-moon
  (89, 8901, 28, 'What look like fangs and claws are actually crystallized poison that will afflict you at a mere touch, so don’t get too close.'),
  -- shellder in ultra-moon
  (90, 9000, 28, 'Even when its shell is closed, its tongue still hangs out. If you give its tongue a good yank, the shock will cause Shellder to open its shell.'),
  -- cloyster in ultra-moon
  (91, 9100, 28, 'Slowpoke tails are its favorite food. It has even been known to come up on land to look for Slowpoke from time to time.'),
  -- gastly in ultra-moon
  (92, 9200, 28, 'Poisonous gas comprises 95% of its body. It’s said that the remaining 5% is made up of the souls of those who died from the gas.'),
  -- haunter in ultra-moon
  (93, 9300, 28, 'It’s dangerous to go outside alone on nights when you’re feeling sad. Haunter will catch you, and you won’t be able to go back home.'),
  -- gengar in ultra-moon
  (94, 9400, 28, 'Even your home isn’t safe. Gengar will lurk in whatever dark corner of a room it can find and wait for its chance to catch its prey.'),
  -- mega-gengar in ultra-moon
  (94, 9401, 28, 'Mega Evolution has made it possible for Gengar to access other dimensions. Its entire body is brimming with strange power.'),
  -- drowzee in ultra-moon
  (96, 9600, 28, 'It puts its prey to sleep and devours their dreams. It seems that bad dreams taste sour, so Drowzee doesn’t particularly like eating them.'),
  -- hypno in ultra-moon
  (97, 9700, 28, 'There are some Hypno that assist doctors with patients who can’t sleep at night in hospitals.'),
  -- exeggcute in ultra-moon
  (102, 10200, 28, 'Although they are the same size as other Exeggcute, the ones produced in Alola are quite heavy. Their shells are packed full.'),
  -- exeggutor in ultra-moon
  (103, 10300, 28, 'Each of its three heads has its own thoughts. When they want to go in different directions, Exeggutor becomes unable to move.'),
  -- alolan-exeggutor in ultra-moon
  (103, 10301, 28, 'It swings its long neck like a whip and smacks its opponents. This makes Exeggutor itself dizzy, too.'),
  -- cubone in ultra-moon
  (104, 10400, 28, 'It wears its mother’s skull on its head, so no one knows what its bare face looks like. However, it’s clear that it’s always crying.'),
  -- marowak in ultra-moon
  (105, 10500, 28, 'They thump their bones rhythmically to communicate among themselves. There are nearly 50 different rhythmic patterns.'),
  -- alolan-marowak in ultra-moon
  (105, 10501, 28, 'When it beats opponents with its bone, the cursed flames spread to them. No amount of water will stop those flames from burning.'),
  -- lickitung in ultra-moon
  (108, 10800, 28, 'It licks filth clean with its tongue. Whatever it licks always stinks afterward, so whether it’s really clean is...questionable.'),
  -- chansey in ultra-moon
  (113, 11300, 28, 'Because the eggs on their bellies have been overharvested by people in the past, the Chansey population remains very small.'),
  -- kangaskhan in ultra-moon
  (115, 11500, 28, 'You shouldn’t get close to the child when it’s playing outside its mother’s pouch. Its mother is always nearby watching over it.'),
  -- goldeen in ultra-moon
  (118, 11800, 28, 'The way it swims along fluttering its dress-like fins has earned it the name “princess of the water.”'),
  -- seaking in ultra-moon
  (119, 11900, 28, 'To attract females, males dance on the river’s floor. The females gather around the male that dances most gracefully.'),
  -- staryu in ultra-moon
  (120, 12000, 28, 'No number of injuries can bother Staryu. Its amazing regenerative powers return it to its previous state in half a day!'),
  -- starmie in ultra-moon
  (121, 12100, 28, 'It rotates its geometrically shaped body to swim through the water. It always seems to be sending out mysterious radio waves.'),
  -- mr-mime in ultra-moon
  (122, 12200, 28, 'It creates invisible walls with its pantomiming. If you don’t act impressed, it will attack you with a double slap!'),
  -- scyther in ultra-moon
  (123, 12300, 28, 'Some call it a ninja. Its movements— imperceptibly quick—are sufficient to cleave the air in two. It’s very popular in Alola.'),
  -- jynx in ultra-moon
  (124, 12400, 28, 'Its strange cries sound like human language. There are some musicians who compose songs for Jynx to sing.'),
  -- electabuzz in ultra-moon
  (125, 12500, 28, 'While it’s often blamed for power outages, the truth is the cause of outages is more often an error on the part of the electric company.'),
  -- magmar in ultra-moon
  (126, 12600, 28, 'The hotter the place, the better they feel. Magmar in Alola are said to be hardier than those in other areas.'),
  -- pinsir in ultra-moon
  (127, 12700, 28, 'Although it’s tough, it can’t handle cold well. When night falls, it buries itself in leafage and sleeps.'),
  -- tauros in ultra-moon
  (128, 12800, 28, 'The climate seems to be related to the reason Tauros in Alola are a little calmer than those in other regions.'),
  -- magikarp in ultra-moon
  (129, 12900, 28, 'Thanks to their strong hold on life, dirty water doesn’t bother them at all. They live in waters all over the world!'),
  -- gyarados in ultra-moon
  (130, 13000, 28, 'The energy from evolution stimulated its brain cells strongly, causing it to become very ferocious.'),
  -- mega-gyarados in ultra-moon
  (130, 13001, 28, 'It zooms out of the water at Mach speeds. Even large ships caught in its path are split cleanly in two!'),
  -- lapras in ultra-moon
  (131, 13100, 28, 'They’ve been so cherished that there’s now an overabundance. The fish Pokémon population has declined in waters with too many Lapras.'),
  -- ditto in ultra-moon
  (132, 13200, 28, 'It transforms into whatever it sees. If the thing it’s transforming into isn’t right in front of it, Ditto relies on its memory—so sometimes it fails.'),
  -- eevee in ultra-moon
  (133, 13300, 28, 'Its genes are easily influenced by its surroundings. Even its face starts to look like that of its Trainer.'),
  -- vaporeon in ultra-moon
  (134, 13400, 28, 'It detects nearby moisture with its fin. When its fin begins trembling rapidly, that means rain will fall in a few hours.'),
  -- jolteon in ultra-moon
  (135, 13500, 28, 'Its fur stands on end, becoming like needles it fires at enemies. Once they’re weakened, it finishes them off with a 10,000 volt shock.'),
  -- flareon in ultra-moon
  (136, 13600, 28, 'The flame chamber inside its body ignites when Flareon gets agitated, reaching temperatures of up to 1,650 degrees Fahrenheit.'),
  -- porygon in ultra-moon
  (137, 13700, 28, 'It was built 20 years ago by scientists who dreamed of exploring space. Their dreams have yet to come true.'),
  -- omanyte in ultra-moon
  (138, 13800, 28, 'It was restored from an ancient fossil. Those Helix Fossils are excavated from areas that were once oceans long, long ago.'),
  -- omastar in ultra-moon
  (139, 13900, 28, 'It wraps its prey in its tentacles to immobilize them and then finishes them off with its sharp fangs.'),
  -- kabuto in ultra-moon
  (140, 14000, 28, 'This Pokémon became extinct everywhere, except in a few areas. It protects itself with its hard shell.'),
  -- kabutops in ultra-moon
  (141, 14100, 28, 'It swims at speeds of roughly 29 knots, quickly closing in on its prey and slashing into them with its scythes to finish them off.'),
  -- aerodactyl in ultra-moon
  (142, 14200, 28, 'It flew through the open skies over the ancient continent as if they were its own. When it touched ground, its walk was weak and slow.'),
  -- snorlax in ultra-moon
  (143, 14300, 28, 'It has no interest in anything other than eating. Even if you climb up on its stomach while it’s napping, it doesn’t seem to mind at all!'),
  -- dratini in ultra-moon
  (147, 14700, 28, 'It sheds its skin—almost on a daily basis—and grows larger. Its skin is soft just after it’s been shed.'),
  -- dragonair in ultra-moon
  (148, 14800, 28, 'Some say that if you see it at the start of the year, flying through the sky and twisting its body, you’ll be healthy all year long.'),
  -- dragonite in ultra-moon
  (149, 14900, 28, 'You’ll often hear tales of this kindhearted Pokémon rescuing people or Pokémon that are drowning.'),
  -- hoothoot in ultra-moon
  (163, 16300, 28, 'It cries out at the same time every day. A long time ago, people cherished it and considered it a divine messenger sent to tell the time.'),
  -- noctowl in ultra-moon
  (164, 16400, 28, 'When it turns its head entirely upside down, you know it’s troubled by something. If you don’t leave it be, it will peck you.'),
  -- ledyba in ultra-moon
  (165, 16500, 28, 'These very cowardly Pokémon join together and use Reflect to protect their nest.'),
  -- ledian in ultra-moon
  (166, 16600, 28, 'It flies through the night sky, sprinkling sparkly dust. According to some, if that dust sticks to you, good things will happen to you.'),
  -- spinarak in ultra-moon
  (167, 16700, 28, 'Although the poison from its fangs isn’t that strong, it’s potent enough to weaken prey that gets caught in its web.'),
  -- ariados in ultra-moon
  (168, 16800, 28, 'It spews threads from its mouth to catch its prey. When night falls, it leaves its web to go hunt aggressively.'),
  -- crobat in ultra-moon
  (169, 16900, 28, 'It feeds on the blood of living people and Pokémon. If it can’t drink any blood for even a short while, it becomes weak and unable to fly.'),
  -- chinchou in ultra-moon
  (170, 17000, 28, 'Chinchou blink their shining antennae at one another to claim their respective turf.'),
  -- lanturn in ultra-moon
  (171, 17100, 28, 'It lives far down in the depths of the ocean. It blinds its prey with light, using the moment they’re dazzled to swallow them whole.'),
  -- pichu in ultra-moon
  (172, 17200, 28, 'It has electric sacs in its cheeks. When they’re fully charged, Pichu plays very energetically.'),
  -- cleffa in ultra-moon
  (173, 17300, 28, 'Said to have ridden here on a shooting star, Cleffa seem to appear in places where meteorites have struck in the past.'),
  -- igglybuff in ultra-moon
  (174, 17400, 28, 'Left to its own devices, it will constantly practice singing. You should make it take a break so it doesn’t hurt its throat.'),
  -- natu in ultra-moon
  (177, 17700, 28, 'The look in its eyes gives the impression that it’s carefully observing you. If you approach it, Natu will hop away.'),
  -- xatu in ultra-moon
  (178, 17800, 28, 'While it can see the future, it has no desire to change it, which is probably why it remains motionless at all times.'),
  -- mareep in ultra-moon
  (179, 17900, 28, 'Rubbing its fleece generates electricity. You’ll want to pet it because it’s cute, but if you use your bare hand, you’ll get a painful shock.'),
  -- flaaffy in ultra-moon
  (180, 18000, 28, 'It stores electricity in its fluffy fleece. If it stores up too much, it will start to go bald in those patches.'),
  -- ampharos in ultra-moon
  (181, 18100, 28, 'Its tail shines bright and strong. It has been prized since long ago as a beacon for sailors.'),
  -- mega-ampharos in ultra-moon
  (181, 18101, 28, 'Massive amounts of energy intensely stimulated Ampharos’s cells, apparently awakening its long-sleeping dragon’s blood.'),
  -- sudowoodo in ultra-moon
  (185, 18500, 28, 'The result of its holding the same pose all the time is arms that have become supple yet strong.'),
  -- politoed in ultra-moon
  (186, 18600, 28, 'The longer and more luxurious the curled hair on its head, the greater the number of Poliwag and Poliwhirl that will obey it.'),
  -- aipom in ultra-moon
  (190, 19000, 28, 'It searches for prey from the tops of trees. When it spots its favorite food, Bounsweet, Aipom gets excited and pounces.'),
  -- espeon in ultra-moon
  (196, 19600, 28, 'Psychic power builds up in the orb on its forehead as it bathes in the sunshine. Espeon is not good at battling at night.'),
  -- umbreon in ultra-moon
  (197, 19700, 28, 'It lurks in the dark of night looking for prey. At the moment it pounces, the rings on its body glow dimly but ominously.'),
  -- murkrow in ultra-moon
  (198, 19800, 28, 'It searches for shiny things for its boss. Murkrow’s presence is said to be unlucky, so many people detest it.'),
  -- slowking in ultra-moon
  (199, 19900, 28, 'It’s called “the sage of the sea.” It engages in battles of wits with Oranguru, but the result is usually a draw.'),
  -- misdreavus in ultra-moon
  (200, 20000, 28, 'What makes it happy is imitating the voices of weeping people and scaring everyone. It doesn’t deal well with folks who aren’t easily frightened.'),
  -- pineco in ultra-moon
  (204, 20400, 28, 'It sticks tree bark to itself with its saliva, making itself thicker and larger. Elderly Pineco are ridiculously huge.'),
  -- forretress in ultra-moon
  (205, 20500, 28, 'In the moment that it gulps down its prey, the inside of its shell is exposed, but to this day, no one has ever seen that sight.'),
  -- dunsparce in ultra-moon
  (206, 20600, 28, 'When it sees a person, it digs a hole with its tail to make its escape. If you happen to find one, consider yourself lucky.'),
  -- snubbull in ultra-moon
  (209, 20900, 28, 'In contrast to its appearance, it’s quite timid. When playing with other puppy Pokémon, it sometimes gets bullied.'),
  -- granbull in ultra-moon
  (210, 21000, 28, 'Although it’s popular with young people, Granbull is timid and sensitive, so it’s totally incompetent as a watchdog.'),
  -- scizor in ultra-moon
  (212, 21200, 28, 'Once it has identified something as an enemy, it will continue beating them with its steel-hard pincers until there’s nothing left but scraps.'),
  -- mega-scizor in ultra-moon
  (212, 21201, 28, 'It’s better at beating things than grasping them. When it battles for a long time, the weight of its pincers becomes too much to bear.'),
  -- heracross in ultra-moon
  (214, 21400, 28, 'It roams through forests searching for sweet nectar. Although it boasts fantastic physical strength, it’s not that good at flying.'),
  -- mega-heracross in ultra-moon
  (214, 21401, 28, 'A tremendous influx of energy builds it up, but when Mega Evolution ends, Heracross is bothered by terrible soreness in its muscles.'),
  -- sneasel in ultra-moon
  (215, 21500, 28, 'It blends into the dark of night to ambush its prey. Sneasel will attack Sandshrew, but its hard skin can cause Sneasel’s claws to snap off.'),
  -- corsola in ultra-moon
  (222, 22200, 28, 'In Alola, where their natural enemies Mareanie are plentiful, many Corsola have stubby branches on their heads.'),
  -- remoraid in ultra-moon
  (223, 22300, 28, 'Also known as the “sniper of the seas,” its water gun can hit prey without fail from over 300 feet away.'),
  -- octillery in ultra-moon
  (224, 22400, 28, 'It usually sleeps in caves. The pitch-black ink that Octillery spits is also used for cooking.'),
  -- delibird in ultra-moon
  (225, 22500, 28, 'It wraps food in its tail to carry it around. The Delibird with the biggest tail is the boss of the flock!'),
  -- mantine in ultra-moon
  (226, 22600, 28, 'Many people have taken up surfing because they admire how magnificently Mantine swims.'),
  -- skarmory in ultra-moon
  (227, 22700, 28, 'Its body is draped in steel armor. It looks heavy, but it can fly at speeds of up to 185 miles an hour!'),
  -- houndour in ultra-moon
  (228, 22800, 28, 'They make repeated eerie howls before dawn to call attention to their pack.'),
  -- houndoom in ultra-moon
  (229, 22900, 28, 'Identifiable by its eerie howls, people a long time ago thought it was the grim reaper and feared it.'),
  -- mega-houndoom in ultra-moon
  (229, 22901, 28, 'Houndoom’s entire body generates heat when it Mega Evolves. Its fearsome fiery breath turns its opponents to ash.'),
  -- porygon2 in ultra-moon
  (233, 23300, 28, 'Even though it doesn’t die in the vacuum of space, it can’t move around very well in zero gravity.'),
  -- smeargle in ultra-moon
  (235, 23500, 28, 'It draws symbols with the fluid that oozes from the tip of its tail. Depending on the symbol, Smeargle fanatics will pay big money for them.'),
  -- smoochum in ultra-moon
  (238, 23800, 28, 'Highly perceptive sensors, Smoochum’s lips are kept moist by its daily application of tree sap.'),
  -- elekid in ultra-moon
  (239, 23900, 28, 'When its horns shine a bluish white, that’s the sign it’s fully charged. You’ll get a shocking jolt if you touch it!'),
  -- magby in ultra-moon
  (240, 24000, 28, 'Its body temperature is always around 1,100 degrees Fahrenheit. If Magby falls into a small- enough pond, the whole thing will dry up.'),
  -- miltank in ultra-moon
  (241, 24100, 28, 'Its milk is delicious and chock-full of nutrients. However, if you drink too much, it could make your stomach hurt, so be careful.'),
  -- blissey in ultra-moon
  (242, 24200, 28, 'This Pokémon is overflowing with love. Only Chansey that share a strong bond with their Trainer can evolve, so people say.'),
  -- larvitar in ultra-moon
  (246, 24600, 28, 'Raised on nutrients it finds in the dirt, it eats roughly a mountain’s worth of dirt before it becomes a pupa.'),
  -- pupitar in ultra-moon
  (247, 24700, 28, 'This dangerous pupa thrashes about. Its shell is as hard as bedrock, containing its gradually forming new body within.'),
  -- tyranitar in ultra-moon
  (248, 24800, 28, 'This Pokémon is a mobile disaster, leaving mountains crumbled and houses destroyed in its wake.'),
  -- mega-tyranitar in ultra-moon
  (248, 24801, 28, 'The effects of Mega Evolution make it more ferocious than ever. It’s unclear whether it can even hear its Trainer’s orders.'),
  -- wingull in ultra-moon
  (278, 27800, 28, 'It builds nests in cliffs by the sea. It circles the skies above the ocean looking for its favorite food—Wishiwashi.'),
  -- pelipper in ultra-moon
  (279, 27900, 28, 'It scoops up Wishiwashi in its huge beak and swallows them whole. It can devour more than 30 at one go!'),
  -- surskit in ultra-moon
  (283, 28300, 28, 'It lives in ponds and marshes that feature lots of plant life. It often fights with Dewpider, whose habitat and diet are similar.'),
  -- masquerain in ultra-moon
  (284, 28400, 28, 'Its thin, winglike antennae are highly absorbent. It waits out rainy days in tree hollows.'),
  -- makuhita in ultra-moon
  (296, 29600, 28, 'There’s a rumor of a traditional recipe for stew that Trainers can use to raise strong Makuhita.'),
  -- hariyama in ultra-moon
  (297, 29700, 28, 'Hariyama that are big and fat aren’t necessarily strong. There are some small ones that move nimbly and use moves skillfully.'),
  -- nosepass in ultra-moon
  (299, 29900, 28, 'It hunts without twitching a muscle by pulling in its prey with powerful magnetism. But sometimes it pulls natural enemies in close.'),
  -- sableye in ultra-moon
  (302, 30200, 28, 'Materials from gems it has eaten float to the surface of its body and can form an infinite number of patterns among individuals.'),
  -- mega-sableye in ultra-moon
  (302, 30201, 28, 'It blocks any and all attacks with its giant-sized gemstone. However, the stone’s a heavy burden, and it limits Mega Sableye’s movements.'),
  -- mawile in ultra-moon
  (303, 30300, 28, 'It has two mouths. The big jaws on the back of its head can’t taste anything, so that’s the mouth it uses to eat foods it doesn’t like.'),
  -- electrike in ultra-moon
  (309, 30900, 28, 'Static electricity builds up all over its body as strands of its long fur rub together. This Pokémon boasts incredible speed.'),
  -- manectric in ultra-moon
  (310, 31000, 28, 'It stimulates its own muscles with electricity, so it can move quickly. It eases its soreness with electricity, too, so it can recover quickly as well.'),
  -- carvanha in ultra-moon
  (318, 31800, 28, 'With its sturdy jaws and fangs, it can easily chomp wooden boats to splinters. It fights with Basculin over food.'),
  -- sharpedo in ultra-moon
  (319, 31900, 28, 'It drinks in seawater and jets it from its rear to propel itself. It’s very sensitive to the scent of blood.'),
  -- wailmer in ultra-moon
  (320, 32000, 28, 'Due to their memories of when they once lived on land, pods of them will, very rarely, wash up on shore.'),
  -- wailord in ultra-moon
  (321, 32100, 28, 'When a small Wailmer is attacked by Sharpedo or Dhelmise, its whole pod works together to protect it.'),
  -- torkoal in ultra-moon
  (324, 32400, 28, 'It burns coal to produce energy. When it has burned through all of its coal, it becomes unable to move.'),
  -- spinda in ultra-moon
  (327, 32700, 28, 'Each Spinda’s spot pattern is different. With its stumbling movements, it evades opponents’ attacks brilliantly!'),
  -- trapinch in ultra-moon
  (328, 32800, 28, 'It builds nests that double as traps, lying in wait for its prey to get caught. When night falls, it digs itself a spot beneath the sand to sleep.'),
  -- vibrava in ultra-moon
  (329, 32900, 28, 'It vibrates its wings to send out odd sound waves. Trainers who are with it need earplugs.'),
  -- flygon in ultra-moon
  (330, 33000, 28, 'People continue to have their hearts stolen by its enchanting songs and find themselves stranded in the desert.'),
  -- barboach in ultra-moon
  (339, 33900, 28, 'Its whiskers are filled with nerves. They can sense smells and flavors just as a person’s nose or tongue would.'),
  -- whiscash in ultra-moon
  (340, 34000, 28, 'Its vision is not that good. It senses vibrations in the water with its whiskers to determine the location of its prey.'),
  -- corphish in ultra-moon
  (341, 34100, 28, 'It can adapt very well to its environment. Feebas and Corphish are about the only Pokémon to live in stagnant ditches.'),
  -- crawdaunt in ultra-moon
  (342, 34200, 28, 'Its pincers often fall off. Unlike with Crabrawler or Clauncher, the meat in its claws is utterly nasty and stinking.'),
  -- baltoy in ultra-moon
  (343, 34300, 28, 'When they find others of their kind, they cry out loudly and gather together. Large numbers of them can be found in old graveyards.'),
  -- claydol in ultra-moon
  (344, 34400, 28, 'The ancient people who made it apparently modeled it after something that descended from the sky. It fires beams from both arms.'),
  -- lileep in ultra-moon
  (345, 34500, 28, 'It sticks to rocks with its powerful suckers and can’t be washed away no matter how rough the surf gets.'),
  -- cradily in ultra-moon
  (346, 34600, 28, 'This carnivorous Pokémon lived in primordial seas. It catches prey in its eight tentacles and dissolves them with digestive fluid as it eats.'),
  -- anorith in ultra-moon
  (347, 34700, 28, 'This is one kind of primeval bug Pokémon. With eight wings, it could apparently swim a lot faster than you’d expect.'),
  -- armaldo in ultra-moon
  (348, 34800, 28, 'Armaldo adapted from living in water to living on land. It has been determined that it is the ancestor of some bug Pokémon.'),
  -- feebas in ultra-moon
  (349, 34900, 28, 'Because of its wretched appearance, most people pay it no attention, but there are some who collect Feebas—and Feebas alone!'),
  -- milotic in ultra-moon
  (350, 35000, 28, 'Its dwelling place is the bottom of big lakes. Those who behold its loveliness are said to have their hearts purified.'),
  -- castform in ultra-moon
  (351, 35100, 28, 'Its form changes depending on the weather. The rougher conditions get, the rougher Castform’s disposition!'),
  -- kecleon in ultra-moon
  (352, 35200, 28, 'Its color changes for concealment and also when its mood or health changes. The darker the color, the healthier it is.'),
  -- shuppet in ultra-moon
  (353, 35300, 28, 'There’s a proverb that says, “Shun the house where Shuppet gather in the growing dusk.”'),
  -- banette in ultra-moon
  (354, 35400, 28, 'Resentment at being cast off made it spring into being. Some say that treating it well will satisfy it, and it will once more become a stuffed toy.'),
  -- mega-banette in ultra-moon
  (354, 35401, 28, 'Mega Evolution increases its vindictiveness, and the cursing power that was held back by its zipper comes spilling out.'),
  -- tropius in ultra-moon
  (357, 35700, 28, 'Bunches of delicious fruit grow around its neck. In warm areas, many ranches raise Tropius.'),
  -- absol in ultra-moon
  (359, 35900, 28, 'The elderly call it the disaster Pokémon and detest it, but interest in its power to predict disasters is on the rise.'),
  -- snorunt in ultra-moon
  (361, 36100, 28, 'Rich people from cold areas all share childhood memories of playing with Snorunt.'),
  -- glalie in ultra-moon
  (362, 36200, 28, 'Its actual body is a rock that isn’t particularly hard. Glalie absorbs moisture from the air and drapes itself in an armor of ice.'),
  -- mega-glalie in ultra-moon
  (362, 36201, 28, 'The power of Mega Evolution was so strong that it smashed Glalie’s jaw. Its inability to eat very well leaves Glalie irritated.'),
  -- clamperl in ultra-moon
  (366, 36600, 28, 'Clamperl’s pearls are exceedingly precious. They can be more than 10 times as costly as Shellder’s pearls.'),
  -- huntail in ultra-moon
  (367, 36700, 28, 'Deep seas are their habitat. According to tradition, when Huntail wash up onshore, something unfortunate will happen.'),
  -- gorebyss in ultra-moon
  (368, 36800, 28, 'It sucks bodily fluids out of its prey. The leftover meat sinks to the seafloor, where it becomes food for other Pokémon.'),
  -- relicanth in ultra-moon
  (369, 36900, 28, 'The reason it hasn’t changed at all in a hundred million years is that it’s apparently already a perfect life-form.'),
  -- luvdisc in ultra-moon
  (370, 37000, 28, 'Luvdisc makes its home in coral reefs in warm seas. It especially likes sleeping in the space between Corsola’s branches.'),
  -- bagon in ultra-moon
  (371, 37100, 28, 'Some theories suggest that its behavior of forcefully bashing its head into things stimulates cells that affect its evolution.'),
  -- shelgon in ultra-moon
  (372, 37200, 28, 'Shelgon lives deep within caves. It stays shut up in its hard shell, dreaming of the day it will be able to fly.'),
  -- salamence in ultra-moon
  (373, 37300, 28, 'Thanks to its fervent wishes, the cells in its body finally mutated, and at last it has its heart’s desire—wings.'),
  -- mega-salamence in ultra-moon
  (373, 37301, 28, 'It puts its forelegs inside its shell to streamline itself for flight. Salamence flies at high speeds over all kinds of topographical features.'),
  -- beldum in ultra-moon
  (374, 37400, 28, 'If you anger it, it will do more than rampage. It will also burst out strong magnetism, causing nearby machines to break.'),
  -- metang in ultra-moon
  (375, 37500, 28, 'It flies at high speeds around the skies. When it finds its prey, Metang takes a firm grip with its sharp claws and never lets go.'),
  -- metagross in ultra-moon
  (376, 37600, 28, 'It analyzes its opponents with more accuracy than a supercomputer, which enables it to calmly back them into a corner.'),
  -- mega-metagross in ultra-moon
  (376, 37601, 28, 'When it knows it can’t win, it digs the claws on its legs into its opponent and starts the countdown to a big explosion.'),
  -- cranidos in ultra-moon
  (408, 40800, 28, 'Its hard skull is its distinguishing feature. It snapped trees by headbutting them, and then it fed on their ripe berries.'),
  -- rampardos in ultra-moon
  (409, 40900, 28, 'This ancient Pokémon used headbutts skillfully. Its brain was really small, so some theories suggest that its stupidity led to its extinction.'),
  -- shieldon in ultra-moon
  (410, 41000, 28, 'Although its fossils can be found in layers of primeval rock, nothing but its face has ever been discovered.'),
  -- bastiodon in ultra-moon
  (411, 41100, 28, 'This Pokémon is from roughly 100 million years ago. Its terrifyingly tough face is harder than steel.'),
  -- shellos in ultra-moon
  (422, 42200, 28, 'When it senses danger, a purple liquid oozes out of it. The liquid is thought to be something like greasy sweat.'),
  -- shellos-east in ultra-moon
  (422, 42201, 28, 'Scientists interested in its great regenerative capabilities are currently analyzing the materials from which its cells are made.'),
  -- gastrodon in ultra-moon
  (423, 42300, 28, 'Their shape and color change, depending on their environment and diet. There are many of them at beaches where the waves are calm.'),
  -- gastrodon-east in ultra-moon
  (423, 42301, 28, 'A relative of Shellder and Cloyster, this ocean dweller sometimes comes onto land in search of food.'),
  -- ambipom in ultra-moon
  (424, 42400, 28, 'It uses its tails for everything. If it wraps both of its tails around you and gives you a squeeze, that’s proof it really likes you.'),
  -- drifloon in ultra-moon
  (425, 42500, 28, 'Wandering souls gathered together to form this Pokémon. When trying to make friends with children, Drifloon grabs them by the hand.'),
  -- drifblim in ultra-moon
  (426, 42600, 28, 'The raw material for the gas inside its body is souls. When its body starts to deflate, it’s thought to carry away people and Pokémon.'),
  -- buneary in ultra-moon
  (427, 42700, 28, 'The reason it keeps one ear rolled up is so it can launch a swift counterattack if it’s attacked by an enemy.'),
  -- lopunny in ultra-moon
  (428, 42800, 28, 'It’s notably wary and has a dislike of fighting, but at the same time, it can deliver powerful kicks with its lithe legs.'),
  -- mismagius in ultra-moon
  (429, 42900, 28, 'Its muttered curses can cause awful headaches or terrifying visions that torment others.'),
  -- honchkrow in ultra-moon
  (430, 43000, 28, 'Its goons take care of most of the fighting for it. The only time it dirties its own hands is in delivering a final blow to finish off an opponent.'),
  -- bonsly in ultra-moon
  (438, 43800, 28, 'If its body gets too damp, it will die. So, in a process reminiscent of sweating, its eyes expel moisture.'),
  -- mime-jr in ultra-moon
  (439, 43900, 28, 'When this gifted mimic surprises an opponent, Mime Jr. feels so happy that it ends up forgetting it was imitating something.'),
  -- happiny in ultra-moon
  (440, 44000, 28, 'When it sees something round and white, Happiny puts it into the pouch on its stomach. It sometimes becomes overloaded and can’t move.'),
  -- gible in ultra-moon
  (443, 44300, 28, 'Its original home is an area much hotter than Alola. If you’re planning to live with one, your heating bill will soar.'),
  -- gabite in ultra-moon
  (444, 44400, 28, 'It sheds its skin and gradually grows larger. Its scales can be ground into a powder and used as raw materials for traditional medicine.'),
  -- garchomp in ultra-moon
  (445, 44500, 28, 'Its fine scales don’t just reduce wind resistance—their sharp edges also cause injury to any opponent who attacks it.'),
  -- mega-garchomp in ultra-moon
  (445, 44501, 28, 'Its disposition is more vicious than before its Mega Evolution. Garchomp carves its opponents up with the scythes on both arms.'),
  -- munchlax in ultra-moon
  (446, 44600, 28, 'Anything that looks edible, Munchlax will go on and swallow whole. Its stomach is tough enough to handle it even if the food has gone rotten.'),
  -- riolu in ultra-moon
  (447, 44700, 28, 'It uses waves called auras to communicate with others of its kind. It doesn’t make any noise during this time, so its enemies can’t detect it.'),
  -- lucario in ultra-moon
  (448, 44800, 28, 'Lucario reads its opponent’s feelings with its aura waves. It finds out things it would rather not know, so it gets stressed out easily.'),
  -- mega-lucario in ultra-moon
  (448, 44801, 28, 'Bathed in explosive energy, its combative instincts have awakened. For its enemies, it has no mercy whatsoever.'),
  -- finneon in ultra-moon
  (456, 45600, 28, 'It lures in prey with its shining tail fins. It stays near the surface during the day and moves to the depths when night falls.'),
  -- lumineon in ultra-moon
  (457, 45700, 28, 'They traverse the deep waters as if crawling over the seafloor. The fantastic lights of its fins shine like stars in the night sky.'),
  -- mantyke in ultra-moon
  (458, 45800, 28, 'Mantyke are friendly toward people and will approach boats closely. The patterns on their backs differ depending on their habitat.'),
  -- weavile in ultra-moon
  (461, 46100, 28, 'Thanks to its increased intelligence, scrapping over food is a thing of the past. A scratch from its claws will give you a case of frostbite!'),
  -- magnezone in ultra-moon
  (462, 46200, 28, 'There are still people who believe that this Pokémon came from outer space. It emanates a powerful magnetic field.'),
  -- lickilicky in ultra-moon
  (463, 46300, 28, 'It uses its tongue much more skillfully than its hands or its feet. It can deftly pick up a single small bean with its tongue.'),
  -- electivire in ultra-moon
  (466, 46600, 28, 'A single Electivire can provide enough electricity for all the buildings in a big city for a year.'),
  -- magmortar in ultra-moon
  (467, 46700, 28, 'Magmortar takes down its enemies by shooting fireballs, which burn them to a blackened crisp. It avoids this method when hunting prey.'),
  -- leafeon in ultra-moon
  (470, 47000, 28, 'It gets its nutrition from photosynthesis. It lives a quiet life deep in forests where clean rivers flow.'),
  -- glaceon in ultra-moon
  (471, 47100, 28, 'It can instantaneously freeze any moisture that’s around it, creating ice pellets to shoot at its prey.'),
  -- porygon-z in ultra-moon
  (474, 47400, 28, 'A faulty update was added to its programming. Its behavior is noticeably strange, so the experiment may have been a failure.'),
  -- probopass in ultra-moon
  (476, 47600, 28, 'It uses three small units to catch prey and battle enemies. The main body mostly just gives orders.'),
  -- froslass in ultra-moon
  (478, 47800, 28, 'It’s said that on nights of terrible blizzards, it comes down to human settlements. If you hear it knocking at your door, do not open it!'),
  -- lillipup in ultra-moon
  (506, 50600, 28, 'This Pokémon is popular with beginners because it’s intelligent, obedient to its Trainer’s commands, and easy to raise.'),
  -- herdier in ultra-moon
  (507, 50700, 28, 'It has been living with people for so long that portrayals of it can be found on the walls of caves from long, long ago.'),
  -- stoutland in ultra-moon
  (508, 50800, 28, 'Its fur is long and thick. A long time ago in cold regions, every household kept a Stoutland.'),
  -- roggenrola in ultra-moon
  (524, 52400, 28, 'It was found in a fissure in a layer of exposed rock. The material that makes up its body is dirt from several hundred years ago.'),
  -- boldore in ultra-moon
  (525, 52500, 28, 'Its orange crystals are lumps of powerful energy. They’re valuable, so Boldore is sometimes targeted for them.'),
  -- gigalith in ultra-moon
  (526, 52600, 28, 'It absorbs rays of sunlight and shoots out energy. It’s usually lurking deep beneath the surface.'),
  -- cottonee in ultra-moon
  (546, 54600, 28, 'When attacked, it expels cotton from its body to create a diversion. The cotton it loses grows back in quickly.'),
  -- whimsicott in ultra-moon
  (547, 54700, 28, 'Whimsicott doesn’t live in a fixed location. It floats around on whirling winds, appearing all over the place to perform its mischief.'),
  -- petilil in ultra-moon
  (548, 54800, 28, 'They prefer clean water and soil. When the environment they live in turns bad, the whole bunch will up and move to a new area.'),
  -- lilligant in ultra-moon
  (549, 54900, 28, 'It’s well liked by other Pokémon because of its beauty. The flower on its head needs constant care, or it will soon wither and rot.'),
  -- basculin in ultra-moon
  (550, 55000, 28, 'When a school of Basculin appears in a lake, everything else disappears, except for Corphish and Crawdaunt. That’s how violent Basculin are.'),
  -- basculin-blue-striped in ultra-moon
  (550, 55001, 28, 'Some people call it “the thug of the lake.” Whether the differences in color are meaningful is not yet known.'),
  -- sandile in ultra-moon
  (551, 55100, 28, 'Sandile’s still not good at hunting, so it mostly eats things that have collapsed in the desert. It’s called “the cleaner of the desert.”'),
  -- krokorok in ultra-moon
  (552, 55200, 28, 'It buries some of its prey in the sand to use as emergency meals when its hunts are unsuccessful.'),
  -- krookodile in ultra-moon
  (553, 55300, 28, 'It conceals itself in sandstorms that Flygon whip up and waits patiently for prey to appear.'),
  -- scraggy in ultra-moon
  (559, 55900, 28, 'It stretches its saggy skin up to its neck to protect itself. The saggier their skin, the more respect they garner.'),
  -- scrafty in ultra-moon
  (560, 56000, 28, 'It taunts its opponents by spitting. It has a certain territory that it never leaves its whole life long.'),
  -- tirtouga in ultra-moon
  (564, 56400, 28, 'Its hunting grounds encompassed a broad area, from the land to more than half a mile deep in the ocean.'),
  -- carracosta in ultra-moon
  (565, 56500, 28, 'Carracosta eats every last bit of the prey it catches, even the shells and bones, to further strengthen its sturdy shell.'),
  -- archen in ultra-moon
  (566, 56600, 28, 'Restored from a fossil, this ancient bird Pokémon has wings but can’t yet fly.'),
  -- archeops in ultra-moon
  (567, 56700, 28, 'Said to be an ancestor of bird Pokémon, the muscles it uses to flap its wings are still weak, so it needs a long runway in order to take off.'),
  -- trubbish in ultra-moon
  (568, 56800, 28, 'If a young Pokémon or child breathes in the toxic gas that Trubbish belches out, it could be a life-threatening situation.'),
  -- garbodor in ultra-moon
  (569, 56900, 28, 'Some say the reason Garbodor in Alola are a little stronger than their counterparts elsewhere is the presence of Muk, their natural enemy.'),
  -- zorua in ultra-moon
  (570, 57000, 28, 'If a normally talkative child suddenly stops talking, it may have been replaced by Zorua.'),
  -- zoroark in ultra-moon
  (571, 57100, 28, 'If it thinks humans are going to discover its den, Zoroark shows them visions that make them wander around in the woods.'),
  -- minccino in ultra-moon
  (572, 57200, 28, 'When its tail has gotten dirty from self-cleaning or from cleaning its nest, Minccino spends a whole day washing its tail in clean spring water.'),
  -- cinccino in ultra-moon
  (573, 57300, 28, 'The oil that seeps from its body is really smooth. For people troubled by bad skin, this oil is an effective treatment.'),
  -- vanillite in ultra-moon
  (582, 58200, 28, 'When the morning sun hit an icicle, it wished not to melt, and thus Vanillite was born. At night, it buries itself in snow to sleep.'),
  -- vanillish in ultra-moon
  (583, 58300, 28, 'This hearty Pokémon survived the Ice Age. It’s incredibly popular in very hot regions.'),
  -- vanilluxe in ultra-moon
  (584, 58400, 28, 'Vanilluxe is born when two Vanillish, half-melted by the day’s light, stick to each other and freeze together in the cold return of night.'),
  -- emolga in ultra-moon
  (587, 58700, 28, 'As it flies, it scatters electricity around, so bird Pokémon keep their distance. That’s why Emolga can keep all its food to itself.'),
  -- frillish in ultra-moon
  (592, 59200, 28, 'Using the invisible poison spikes on its veillike arms and legs, it paralyzes its enemies and causes them to drown.'),
  -- jellicent in ultra-moon
  (593, 59300, 28, 'Fishermen are terrified of Jellicent. It’s rumored to drag them into the sea and steal their lives away.'),
  -- alomomola in ultra-moon
  (594, 59400, 28, 'The reason it helps Pokémon in a weakened condition is that any Pokémon coming after them may also attack Alomomola.'),
  -- elgyem in ultra-moon
  (605, 60500, 28, 'This Pokémon is shrouded in mystery. It’s said to have appeared from a UFO that fell from the sky about 50 years ago.'),
  -- beheeyem in ultra-moon
  (606, 60600, 28, 'It has strong psychic powers. Using its fingers that flash three different colors, it controls its opponents and rewrites their memories.'),
  -- mienfoo in ultra-moon
  (619, 61900, 28, 'They seclude themselves in the mountains and devote themselves to training. The form of their kicks and chops differs from pack to pack.'),
  -- mienshao in ultra-moon
  (620, 62000, 28, 'When Mienshao lets out a bizarre wail, you’re in danger. A flurry of kicks and chops too fast to see is about to be unleashed!'),
  -- druddigon in ultra-moon
  (621, 62100, 28, 'It infiltrates tunnels that Pokémon like Diglett and Dugtrio have dug and quietly waits for prey to pass through.'),
  -- golett in ultra-moon
  (622, 62200, 28, 'Although ancient people apparently built it by working with clay, the source of its energy is unclear.'),
  -- golurk in ultra-moon
  (623, 62300, 28, 'When the seal on its chest is removed, it rages indiscriminately, turning the whole town around it into a mountain of rubble.'),
  -- pawniard in ultra-moon
  (624, 62400, 28, 'It follows Bisharp’s orders to a tee when it attacks enemies. After slashing an opponent, Pawniard clangs both of its blades together.'),
  -- bisharp in ultra-moon
  (625, 62500, 28, 'It leads a group of Pawniard. Bisharp doesn’t even change its expression when it deals the finishing blow to an opponent.'),
  -- rufflet in ultra-moon
  (627, 62700, 28, 'Known as a natural-born warrior, soon after its hatching, it will challenge its parent to a fight in order to gain their acceptance.'),
  -- braviary in ultra-moon
  (628, 62800, 28, 'Known as “the hero of the skies,” this Pokémon is so proud and so brave that it will never retreat, even when it’s injured.'),
  -- vullaby in ultra-moon
  (629, 62900, 28, 'Its healthy appetite leads to visible growth spurts. It often has to replace the bones it wears as its size increases.'),
  -- mandibuzz in ultra-moon
  (630, 63000, 28, 'It’s always searching for food for Vullaby. When it finds a weak Pokémon, Mandibuzz swoops it right off to its nest.'),
  -- larvesta in ultra-moon
  (636, 63600, 28, 'It protects itself with flame. Long years ago, people believed Larvesta had a nest on the sun.'),
  -- volcarona in ultra-moon
  (637, 63700, 28, 'According to legends, it was hatched from a flaming cocoon to save people and Pokémon that were suffering from the cold.'),
  -- fletchling in ultra-moon
  (661, 66100, 28, 'Its body is always warm. Trainers who live in cold areas apparently sleep with it in their bed.'),
  -- fletchinder in ultra-moon
  (662, 66200, 28, 'Its speed right after takeoff already puts it in the top speed class of all bird Pokémon.'),
  -- talonflame in ultra-moon
  (663, 66300, 28, 'Bird Pokémon make up most of its diet. It approaches at high speeds and smacks them down to the ground with its powerful kick.'),
  -- litleo in ultra-moon
  (667, 66700, 28, 'This hot-blooded Pokémon is filled with curiosity. When it gets angry or starts fighting, its short mane gets hot.'),
  -- pyroar in ultra-moon
  (668, 66800, 28, 'The temperature of its breath is over 10,000 degrees Fahrenheit, but Pyroar doesn’t use it on its prey. This Pokémon prefers to eat raw meat.'),
  -- flabebe in ultra-moon
  (669, 66900, 28, 'Flabébé wears a crown made from pollen it’s collected from its flower. The crown has hidden healing properties.'),
  -- floette in ultra-moon
  (670, 67000, 28, 'It gives its own power to flowers, pouring its heart into caring for them. Floette never forgives anyone who messes up a flower bed.'),
  -- floette-eternal-flower in ultra-moon
  (670, 67002, 28, 'Terrifying energy is concealed within its ominous flower, but Floette still swings it about innocently.'),
  -- florges in ultra-moon
  (671, 67100, 28, 'Its life can span several hundred years. It’s said to devote its entire life to protecting gardens.'),
  -- pancham in ultra-moon
  (674, 67400, 28, 'It’s desperate to intimidate its opponents. Be nice and pretend to be scared if you catch it glaring at you intensely.'),
  -- pangoro in ultra-moon
  (675, 67500, 28, 'Pangoro is the type to talk with its fists. It doesn’t say much as it pummels opponents with enough force to send a dump truck flying.'),
  -- furfrou in ultra-moon
  (676, 67600, 28, 'Left alone, its fur will grow longer and longer, but it will only allow someone it trusts to cut it.'),
  -- inkay in ultra-moon
  (686, 68600, 28, 'When exchanging information with others of its kind, it flashes the light-emitting spots on its body in a complex rhythm.'),
  -- malamar in ultra-moon
  (687, 68700, 28, 'It flashes the pattern on its torso to control its prey and draw them in. The edges of its fins are supremely sharp.'),
  -- skrelp in ultra-moon
  (690, 69000, 28, 'It’s not good at swimming, so it clings to the seaweed. In the Alola region, it’s often found near Dhelmise.'),
  -- dragalge in ultra-moon
  (691, 69100, 28, 'It blends in with seaweed to ambush its prey and then takes them down with a poisonous liquid strong enough to melt metal.'),
  -- clauncher in ultra-moon
  (692, 69200, 28, 'It moves around by jetting water from its right pincer. It has a poor sense of balance, so it’s terrible at swimming straight.'),
  -- clawitzer in ultra-moon
  (693, 69300, 28, 'Its right arm is packed with meat. When its pincer falls off, it’s exported to be used as a cooking ingredient.'),
  -- tyrunt in ultra-moon
  (696, 69600, 28, 'Tyrunt is spoiled and selfish. It may just be trying to frolic, but sometimes the ones it’s trying to frolic with are gravely injured.'),
  -- tyrantrum in ultra-moon
  (697, 69700, 28, 'The king of the ancient world, it can easily crunch a car with the devastating strength of its enormous jaws.'),
  -- amaura in ultra-moon
  (698, 69800, 28, 'Amaura was restored successfully, but it’s not expected to live long because of the heat of the current environment.'),
  -- aurorus in ultra-moon
  (699, 69900, 28, 'This usually quiet and kindly Pokémon has a surface temperature of around –240 degrees Fahrenheit.'),
  -- sylveon in ultra-moon
  (700, 70000, 28, 'Sylveon wraps its ribbonlike feelers around its Trainer’s arm because this touch enables it to read its Trainer’s feelings.'),
  -- hawlucha in ultra-moon
  (701, 70100, 28, 'In combat, Hawlucha leaps nimbly about, taking advantage of its opponents’ blind spots. It’s also skilled at using superb submission holds.'),
  -- dedenne in ultra-moon
  (702, 70200, 28, 'Its upper whiskers are sensors that survey its surroundings. Its lower whiskers are organs that shoot electricity.'),
  -- carbink in ultra-moon
  (703, 70300, 28, 'To keep the jewels on their bodies free of tarnish, packs of Carbink use their soft manes to polish one another’s jewels.'),
  -- goomy in ultra-moon
  (704, 70400, 28, 'Its body is mostly water. If it dries out, it will die, so it’s always sitting with perfect stillness in the shade.'),
  -- sliggoo in ultra-moon
  (705, 70500, 28, 'Its entire body is covered with gooey mucus that can dissolve anything. Be sure to put gloves on if you’re going to touch it.'),
  -- goodra in ultra-moon
  (706, 70600, 28, 'Underneath its slimy skin is a thick layer of fat, and the combination of the two makes enemies’ attacks slide right off.'),
  -- klefki in ultra-moon
  (707, 70700, 28, 'Long ago it lived in mines, but once the minerals that make up its diet became scarcer, Klefki began appearing in human settlements.'),
  -- phantump in ultra-moon
  (708, 70800, 28, 'An unknown spirit came to lodge in a tree stump, creating this Pokémon. A cure-all can be made from an infusion of its green leaves.'),
  -- trevenant in ultra-moon
  (709, 70900, 28, 'This Pokémon controls trees via roots stretching from its feet, and it will attack anyone that dares to ravage the forest.'),
  -- noibat in ultra-moon
  (714, 71400, 28, 'It flies around in search of fruit to eat. It uses ultrasonic waves to detect which fruits are ripe.'),
  -- noivern in ultra-moon
  (715, 71500, 28, 'This hot-blooded Pokémon attacks anything it sees with ultrasonic waves that can crush boulders.'),
  -- zygarde in ultra-moon
  (718, 71800, 28, 'Some say it can change to an even more powerful form when battling those who threaten the ecosystem.'),
  -- zygarde-10-percent in ultra-moon
  (718, 71801, 28, 'Born when around 10% of Zygarde’s cells have been gathered from all over, this form is skilled in close-range combat.'),
  -- zygarde-complete in ultra-moon
  (718, 71803, 28, 'Born when all of Zygarde’s cells have been gathered together, it uses force to neutralize those who harm the ecosystem.'),
  -- rowlet in ultra-moon
  (722, 72200, 28, 'It feels relaxed in tight, dark places and has been known to use its Trainer’s pocket or bag as a nest.'),
  -- dartrix in ultra-moon
  (723, 72300, 28, 'Supremely sensitive to the presence of others, it can detect opponents standing behind it, flinging its sharp feathers to take them out.'),
  -- decidueye in ultra-moon
  (724, 72400, 28, 'Decidueye can nock and fire an arrow at an enemy in a tenth of a second, so its battles are decided in the blink of an eye.'),
  -- litten in ultra-moon
  (725, 72500, 28, 'Its coat regrows twice a year. When the time comes, Litten sets its own body on fire and burns away the old fur.'),
  -- torracat in ultra-moon
  (726, 72600, 28, 'When its mane is standing on end, you can tell it’s feeling good. When it isn’t feeling well, its fur will lie down flat.'),
  -- incineroar in ultra-moon
  (727, 72700, 28, 'When its fighting spirit is set alight, the flames around its waist become especially intense.'),
  -- popplio in ultra-moon
  (728, 72800, 28, 'Popplio gets on top of its bouncy water balloons to jump higher. It’s quite the acrobatic fighter!'),
  -- brionne in ultra-moon
  (729, 72900, 28, 'It attacks by smacking its enemies with the exploding water balloons that it creates.'),
  -- primarina in ultra-moon
  (730, 73000, 28, 'Also known as a songstress, it has a fantastical look on moonlit nights when it leads its colony in song.'),
  -- pikipek in ultra-moon
  (731, 73100, 28, 'It may look spindly, but its neck muscles are heavy-duty. It can peck at a tree 16 times per second!'),
  -- trumbeak in ultra-moon
  (732, 73200, 28, 'From its mouth, it fires the seeds of berries it has eaten. The scattered seeds give rise to new plants.'),
  -- toucannon in ultra-moon
  (733, 73300, 28, 'Known for forming harmonious couples, this Pokémon is brought to wedding ceremonies as a good luck charm.'),
  -- yungoos in ultra-moon
  (734, 73400, 28, 'Although it will eat anything, it prefers fresh living things, so it marches down streets in search of prey.'),
  -- gumshoos in ultra-moon
  (735, 73500, 28, 'Patient by nature, this Pokémon loses control of itself and pounces when it spots its favorite meal—Rattata!'),
  -- grubbin in ultra-moon
  (736, 73600, 28, 'It spits a sticky thread to stop opponents in their tracks, and then it grabs them in its sharp, sturdy mandibles to take them down.'),
  -- charjabug in ultra-moon
  (737, 73700, 28, 'Its stout shell provides excellent defense from attacks. It uses electricity on persistent opponents.'),
  -- vikavolt in ultra-moon
  (738, 73800, 28, 'Vikavolt flusters opponents with acrobatic flying maneuvers. This creates an opening for it to deliver an electric beam attack.'),
  -- crabrawler in ultra-moon
  (739, 73900, 28, 'Crabrawler has been known to mistake Exeggutor for a coconut tree and climb it. The enraged Exeggutor shakes it off and stomps it.'),
  -- crabominable in ultra-moon
  (740, 74000, 28, 'Before it stops to think, it just starts pummeling. There are records of its turning back avalanches with a flurry of punches.'),
  -- oricorio in ultra-moon
  (741, 74100, 28, 'This Oricorio has drunk red nectar. If its Trainer gives the wrong order, this passionate Pokémon becomes fiercely angry.'),
  -- oricorio-pom-pom in ultra-moon
  (741, 74101, 28, 'This Oricorio has drunk bright yellow nectar. When it sees someone looking glum, it will try to cheer them up with a dance.'),
  -- oricorio-pau in ultra-moon
  (741, 74102, 28, 'This Oricorio has sipped pink nectar. It gets so caught up in its dancing that it sometimes doesn’t hear its Trainer’s orders.'),
  -- oricorio-sensu in ultra-moon
  (741, 74103, 28, 'This Oricorio has sipped purple nectar. Some dancers use its graceful, elegant dancing as inspiration.'),
  -- cutiefly in ultra-moon
  (742, 74200, 28, 'Cutiefly can pick up the auras of living things. It skillfully reads those auras to predict its foes’ movements and make fools of them.'),
  -- ribombee in ultra-moon
  (743, 74300, 28, 'It can predict the weather from moisture levels and wind direction. Ribombee only reveals itself when there are a few clear days in a row.'),
  -- rockruff in ultra-moon
  (744, 74400, 28, 'When it rubs the rocks on its neck against you, that’s proof of its love for you. However, the rocks are sharp, so the gesture is quite painful!'),
  -- lycanroc in ultra-moon
  (745, 74500, 28, 'The rocks in its mane are sharper than a knife. Fragments that break off are treasured as good luck charms.'),
  -- lycanroc-midnight in ultra-moon
  (745, 74501, 28, 'They live alone without forming packs. They will only listen to orders from Trainers who can draw out their true power.'),
  -- lycanroc-dusk in ultra-moon
  (745, 74502, 28, 'This strange form is the result of its evolving at dusk. It’s very rare in Alola.'),
  -- wishiwashi in ultra-moon
  (746, 74600, 28, 'When it’s in a jam, its shining eyes attract others of its kind. The light from its eyes is visible almost 25 miles away.'),
  -- mareanie in ultra-moon
  (747, 74700, 28, 'Aside from its head, its body parts regenerate quickly if they’re cut off. After a good night’s sleep, Mareanie is back to normal.'),
  -- toxapex in ultra-moon
  (748, 74800, 28, 'With its 12 legs, it creates a dome to shelter within. The flow of the tides doesn’t affect Toxapex in there, so it’s very comfortable.'),
  -- mudbray in ultra-moon
  (749, 74900, 28, 'Possessing mighty power, Mudbray can be loaded with 50 times its own body weight and will be totally fine.'),
  -- mudsdale in ultra-moon
  (750, 75000, 28, 'It can trudge mountain roads without rest for three days and three nights, all the while dragging a 10-ton load.'),
  -- dewpider in ultra-moon
  (751, 75100, 28, 'It can only breathe oxygen that has dissolved in water, so it wears a water bubble on its head when it walks around on land.'),
  -- araquanid in ultra-moon
  (752, 75200, 28, 'It has a habit of storing things it values in its water bubble. If its Trainer doesn’t watch out, Araquanid will try to put them in its bubble!'),
  -- fomantis in ultra-moon
  (753, 75300, 28, 'It loves the sunshine. When it basks in the sunlight regularly, it grows up with vivid coloration.'),
  -- lurantis in ultra-moon
  (754, 75400, 28, 'As it slashes into its enemies, it looks like it’s dancing. Its elegant appearance has led some to call it the most glamorous Grass Pokémon.'),
  -- morelull in ultra-moon
  (755, 75500, 28, 'It likes damp dark places. When night falls, the spores filling the caps of its mushrooms glow.'),
  -- shiinotic in ultra-moon
  (756, 75600, 28, 'When it starts fighting for territory with Parasect, the entire area gets completely coated in spores!'),
  -- salandit in ultra-moon
  (757, 75700, 28, 'It weakens opponents and sends them reeling with its poisonous gas. Salandit doesn’t deal well with Spinda, since it’s always reeling.'),
  -- salazzle in ultra-moon
  (758, 75800, 28, 'It punishes Salandit that couldn’t bring it food with a fierce slap of its flame-spewing palm.'),
  -- stufful in ultra-moon
  (759, 75900, 28, 'Stufful hates to be hugged or touched in any way. It will squirm, thrash, and resist with amazing power.'),
  -- bewear in ultra-moon
  (760, 76000, 28, 'It boasts tremendous physical strength. Many people call it the most dangerous Pokémon in the Alola region.'),
  -- bounsweet in ultra-moon
  (761, 76100, 28, 'It tries to resist being swallowed by a bird Pokémon by spinning the sepals on its head. It’s usually a fruitless attempt.'),
  -- steenee in ultra-moon
  (762, 76200, 28, 'It bounces around, swinging the sepals on its head with abandon. They’re quite painful when they smack you!'),
  -- tsareena in ultra-moon
  (763, 76300, 28, 'A Pokémon with an aggressive personality and a mastery of kicking, it cackles every time it kicks an opponent.'),
  -- comfey in ultra-moon
  (764, 76400, 28, 'It picks flowers and sticks them to its body with fluids it produces. The aroma that wafts from its petals has a healing effect.'),
  -- oranguru in ultra-moon
  (765, 76500, 28, 'Oranguru don’t get along with each other, so they’re always engaging in battles of wits to decide which one is superior.'),
  -- passimian in ultra-moon
  (766, 76600, 28, 'Berries are its weapons as well as the staple of its diet. The one that can throw a berry the farthest is the boss of the troop.'),
  -- wimpod in ultra-moon
  (767, 76700, 28, 'An astonishingly cowardly Pokémon, Wimpod will whir its legs at high speeds to run away if anything comes near it.'),
  -- golisopod in ultra-moon
  (768, 76800, 28, 'Its claws, which it can extend and retract at will, are its greatest weapons. Golisopod is sometimes accompanied by Wimpod.'),
  -- sandygast in ultra-moon
  (769, 76900, 28, 'If you build sand mounds when you’re playing, destroy them before you go home, or they may get possessed and become Sandygast.'),
  -- palossand in ultra-moon
  (770, 77000, 28, 'Once it has whipped up a sandstorm to halt its opponents in their tracks, this terrifying Pokémon snatches away their vitality.'),
  -- pyukumuku in ultra-moon
  (771, 77100, 28, 'Its entire body is covered in its own slime. If you accidentally step on one, you’ll slip, and it will get mad and smack you!'),
  -- type-null in ultra-moon
  (772, 77200, 28, 'There’s danger of its going on a rampage, so its true power is sealed away beneath its control mask.'),
  -- silvally in ultra-moon
  (773, 77300, 28, 'Through the bond it formed with its Trainer, its will was strengthened, and it was able to destroy its control mask.'),
  -- silvally-fighting in ultra-moon
  (773, 77301, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-flying in ultra-moon
  (773, 77302, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-poison in ultra-moon
  (773, 77303, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-ground in ultra-moon
  (773, 77304, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-rock in ultra-moon
  (773, 77305, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-bug in ultra-moon
  (773, 77306, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-ghost in ultra-moon
  (773, 77307, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-steel in ultra-moon
  (773, 77308, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-fire in ultra-moon
  (773, 77309, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-water in ultra-moon
  (773, 77310, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-grass in ultra-moon
  (773, 77311, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-electric in ultra-moon
  (773, 77312, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-psychic in ultra-moon
  (773, 77313, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-ice in ultra-moon
  (773, 77314, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-dragon in ultra-moon
  (773, 77315, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-dark in ultra-moon
  (773, 77316, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- silvally-fairy in ultra-moon
  (773, 77317, 28, 'Its capacity to change types unleashed, it shines silver due to the energy springing forth from within.'),
  -- minior in ultra-moon
  (774, 77400, 28, 'Although its outer shell is uncommonly durable, the shock of falling to the ground smashes the shell to smithereens.'),
  -- minior-core in ultra-moon
  (774, 77401, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- minior-orange in ultra-moon
  (774, 77402, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- minior-yellow in ultra-moon
  (774, 77403, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- minior-green in ultra-moon
  (774, 77404, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- minior-blue in ultra-moon
  (774, 77405, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- minior-indigo in ultra-moon
  (774, 77406, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- minior-violet in ultra-moon
  (774, 77407, 28, 'This is its form when its shell has fallen off. The color of its core depends on the materials that made up the food it ate.'),
  -- komala in ultra-moon
  (775, 77500, 28, 'It remains asleep from birth to death as a result of the sedative properties of the leaves that form its diet.'),
  -- turtonator in ultra-moon
  (776, 77600, 28, 'Its exploding shell poses a real danger but is sensitive to moisture. On rainy days, Turtonator takes silent refuge in caves.'),
  -- togedemaru in ultra-moon
  (777, 77700, 28, 'Its capacity to produce electricity is somewhat limited, so it gets charged up by letting lightning strike it!'),
  -- mimikyu in ultra-moon
  (778, 77800, 28, 'A gust of wind revealed what hides under this Pokémon’s rag to a passing Trainer, who went home and died painfully that very night.'),
  -- mimikyu-busted in ultra-moon
  (778, 77801, 28, 'Sad that its true identity may be exposed, Mimikyu will mercilessly seek revenge on any opponent that breaks its neck.'),
  -- bruxish in ultra-moon
  (779, 77900, 28, 'Its skin is thick enough to fend off Mareanie’s spikes. With its robust teeth, Bruxish crunches up the spikes and eats them.'),
  -- drampa in ultra-moon
  (780, 78000, 28, 'It appears in towns and plays with the children. Drampa will protect kids when they’re in danger, so their moms don’t have to worry.'),
  -- dhelmise in ultra-moon
  (781, 78100, 28, 'Its chain-like green seaweed can stretch outward for hundreds of yards. For some reason, it gets along well with Skrelp.'),
  -- jangmo-o in ultra-moon
  (782, 78200, 28, 'It will never show an enemy its back in battle. Ancient warriors liked Jangmo-o for its valiant disposition and made it one of their own.'),
  -- hakamo-o in ultra-moon
  (783, 78300, 28, 'The scales it sheds can be molded and processed to make pots and pans. They conduct heat well, so they’re a popular item.'),
  -- kommo-o in ultra-moon
  (784, 78400, 28, 'It battles valiantly with its fists, which are armored in steel scales. Kommo-o specializes in uppercuts.'),
  -- tapu-koko in ultra-moon
  (785, 78500, 28, 'The lightning-wielding guardian deity of Melemele, Tapu Koko is brimming with curiosity and appears before people from time to time.'),
  -- tapu-lele in ultra-moon
  (786, 78600, 28, 'Although called a guardian deity, Tapu Lele is devoid of guilt about its cruel disposition and can be described as nature incarnate.'),
  -- tapu-bulu in ultra-moon
  (787, 78700, 28, 'It makes ringing sounds with its tail to let others know where it is, avoiding unneeded conflicts. This guardian deity of Ula’ula controls plants.'),
  -- tapu-fini in ultra-moon
  (788, 78800, 28, 'Although it’s called a guardian deity, terrible calamities sometimes befall those who recklessly approach Tapu Fini.'),
  -- cosmog in ultra-moon
  (789, 78900, 28, 'Whether or not it’s a Pokémon from this world is a mystery. When it’s in a jam, it warps away to a safe place to hide.'),
  -- cosmoem in ultra-moon
  (790, 79000, 28, 'As it absorbs light, Cosmoem continues to grow. Its golden shell is surprisingly solid.'),
  -- solgaleo in ultra-moon
  (791, 79100, 28, 'In writings from the distant past, it’s called by the name “the beast that devours the sun.”'),
  -- lunala in ultra-moon
  (792, 79200, 28, 'It sometimes summons unknown powers and life-forms here to this world from holes that lead to other worlds.'),
  -- nihilego in ultra-moon
  (793, 79300, 28, 'It appeared in this world from an Ultra Wormhole. Nihilego appears to be a parasite that lives by feeding on people and Pokémon.'),
  -- buzzwole in ultra-moon
  (794, 79400, 28, 'Buzzwole goes around showing off its abnormally swollen muscles. It is one kind of Ultra Beast.'),
  -- pheromosa in ultra-moon
  (795, 79500, 28, 'Although it’s alien to this world and a danger here, it’s apparently a common organism in the world where it normally lives.'),
  -- xurkitree in ultra-moon
  (796, 79600, 28, 'They’ve been dubbed Ultra Beasts. Some of them stand unmoving, like trees, with their arms and legs stuck into the ground.'),
  -- celesteela in ultra-moon
  (797, 79700, 28, 'Although it’s alien to this world and a danger here, it’s apparently a common organism in the world where it normally lives.'),
  -- kartana in ultra-moon
  (798, 79800, 28, 'Although it’s alien to this world and a danger here, it’s apparently a common organism in the world where it normally lives.'),
  -- guzzlord in ultra-moon
  (799, 79900, 28, 'An unknown life-form called a UB. It may be constantly hungry—it is certainly always devouring something.'),
  -- necrozma in ultra-moon
  (800, 80000, 28, 'Light is the source of its energy. If it isn’t devouring light, impurities build up in it and on it, and Necrozma darkens and stops moving.'),
  -- necrozma-dusk-mane in ultra-moon
  (800, 80001, 28, 'This is Necrozma’s form while it’s absorbing the power of Solgaleo, making it extremely ferocious and impossible to control.'),
  -- necrozma-dawn-wings in ultra-moon
  (800, 80002, 28, 'This is its form while it’s devouring the light of Lunala. It grasps foes in its giant claws and rips them apart with brute force.'),
  -- ultra-necrozma in ultra-moon
  (800, 80003, 28, 'The light pouring out from all over its body affects living things and nature, impacting them in various ways.'),
  -- magearna in ultra-moon
  (801, 80100, 28, 'Built roughly 500 years ago by a scientist, the part called the Soul-Heart is the actual life-form.'),
  -- marshadow in ultra-moon
  (802, 80200, 28, 'It sinks into the shadows of people and Pokémon, where it can understand their feelings and copy their capabilities.'),
  -- poipole in ultra-moon
  (803, 80300, 28, 'An Ultra Beast that lives in a different world, it cackles wildly as it sprays its opponents with poison from the needles on its head.'),
  -- naganadel in ultra-moon
  (804, 80400, 28, 'One kind of Ultra Beast, it fires a glowing, venomous liquid from its needles. This liquid is also immensely adhesive.'),
  -- stakataka in ultra-moon
  (805, 80500, 28, 'When stone walls started moving and attacking, the brute’s true identity was this mysterious life-form, which brings to mind an Ultra Beast.'),
  -- blacephalon in ultra-moon
  (806, 80600, 28, 'A UB that appeared from an Ultra Wormhole, it causes explosions, then takes advantage of opponents’ surprise to rob them of their vitality.'),
  -- zeraora in ultra-moon
  (807, 80700, 28, 'It approaches its enemies at the speed of lightning, then tears them limb from limb with its sharp claws.'),
  -- bulbasaur in lets-go-pikachu
  (1, 100, 29, 'It can go for days without eating a single morsel. In the bulb on its back, it stores energy.'),
  -- ivysaur in lets-go-pikachu
  (2, 200, 29, 'The bud on its back grows by drawing energy. It gives off an aroma when it is ready to bloom.'),
  -- venusaur in lets-go-pikachu
  (3, 300, 29, 'The flower on its back catches the sun’s rays. The sunlight is then absorbed and used for energy.'),
  -- charmander in lets-go-pikachu
  (4, 400, 29, 'The flame at the tip of its tail makes a sound as it burns. You can only hear it in quiet places.'),
  -- charmeleon in lets-go-pikachu
  (5, 500, 29, 'Tough fights could excite this Pokémon. When excited, it may breathe out bluish-white flames.'),
  -- charizard in lets-go-pikachu
  (6, 600, 29, 'When this Pokémon expels a blast of superhot fire, the red flame at the tip of its tail burns more intensely.'),
  -- squirtle in lets-go-pikachu
  (7, 700, 29, 'Shoots water at prey while in the water. Withdraws into its shell when in danger.'),
  -- wartortle in lets-go-pikachu
  (8, 800, 29, 'When tapped on its head, this Pokémon will pull it in, but its tail will still stick out a little bit.'),
  -- blastoise in lets-go-pikachu
  (9, 900, 29, 'Once it takes aim at its enemy, it blasts out water with even more force than a fire hose.'),
  -- caterpie in lets-go-pikachu
  (10, 1000, 29, 'If you touch the feeler on top of its head, it will release a horrible stink to protect itself.'),
  -- metapod in lets-go-pikachu
  (11, 1100, 29, 'Hardens its shell to protect itself. However, a large impact may cause it to pop out of its shell.'),
  -- butterfree in lets-go-pikachu
  (12, 1200, 29, 'Its wings, covered with poisonous powder, repel water. This allows it to fly in the rain.'),
  -- weedle in lets-go-pikachu
  (13, 1300, 29, 'Beware of the sharp stinger on its head. It hides in grass and bushes where it eats leaves.'),
  -- kakuna in lets-go-pikachu
  (14, 1400, 29, 'Able to move only slightly. When endangered, it may stick out its stinger and poison its enemy.'),
  -- beedrill in lets-go-pikachu
  (15, 1500, 29, 'It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.'),
  -- pidgey in lets-go-pikachu
  (16, 1600, 29, 'Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.'),
  -- pidgeotto in lets-go-pikachu
  (17, 1700, 29, 'This Pokémon is full of vitality. It constantly flies around its large territory in search of prey.'),
  -- pidgeot in lets-go-pikachu
  (18, 1800, 29, 'This Pokémon flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons.'),
  -- rattata in lets-go-pikachu
  (19, 1900, 29, 'Will chew on anything with its fangs. If you see one, you can be certain that 40 more live in the area.'),
  -- alolan-rattata in lets-go-pikachu
  (19, 1901, 29, 'Its whiskers provide it with a keen sense of smell, enabling it to pick up the scent of hidden food and locate it instantly.'),
  -- raticate in lets-go-pikachu
  (20, 2000, 29, 'Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey.'),
  -- alolan-raticate in lets-go-pikachu
  (20, 2001, 29, 'It makes its Rattata underlings gather food for it, dining solely on the most nutritious and delicious fare.'),
  -- spearow in lets-go-pikachu
  (21, 2100, 29, 'Inept at flying high. However, it can fly around very fast to protect its territory.'),
  -- fearow in lets-go-pikachu
  (22, 2200, 29, 'A Pokémon that dates back many years. If it senses danger, it flies high and away, instantly.'),
  -- ekans in lets-go-pikachu
  (23, 2300, 29, 'The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.'),
  -- arbok in lets-go-pikachu
  (24, 2400, 29, 'The frightening patterns on its belly have been studied. Six variations have been confirmed.'),
  -- pikachu in lets-go-pikachu
  (25, 2500, 29, 'This forest-dwelling Pokémon stores electricity in its cheeks, so you’ll feel a tingly shock if you touch it.'),
  -- raichu in lets-go-pikachu
  (26, 2600, 29, 'When electricity builds up inside its body, it becomes feisty. It also glows in the dark.'),
  -- alolan-raichu in lets-go-pikachu
  (26, 2601, 29, 'It loves pancakes prepared with a secret Alolan recipe. Some wonder whether that recipe holds the key to this Pokémon’s evolution.'),
  -- sandshrew in lets-go-pikachu
  (27, 2700, 29, 'Its body is dry. When it gets cold at night, its hide is said to become coated with a fine dew.'),
  -- alolan-sandshrew in lets-go-pikachu
  (27, 2701, 29, 'Its ice-covered body lets it slide across the ground with bullet-like speed, sending its enemies flying when it hits them.'),
  -- sandslash in lets-go-pikachu
  (28, 2800, 29, 'It is skilled at slashing enemies with its claws. If broken, they start to grow back in a day.'),
  -- alolan-sandslash in lets-go-pikachu
  (28, 2801, 29, 'This is Sandslash’s form after adaptation to a frigid environment. The cold air emitted by its body sharpens its icy spikes.'),
  -- nidoran-f in lets-go-pikachu
  (29, 2900, 29, 'A mild-mannered Pokémon that does not like to fight. Beware—its small horn secretes venom.'),
  -- nidorina in lets-go-pikachu
  (30, 3000, 29, 'When resting deep in its burrow, its barbs always retract. This is proof that it is relaxed.'),
  -- nidoqueen in lets-go-pikachu
  (31, 3100, 29, 'Tough scales cover the sturdy body of this Pokémon. It appears that the scales grow in cycles.'),
  -- nidoran-m in lets-go-pikachu
  (32, 3200, 29, 'Its large ears are always kept upright. If it senses danger, it will attack with a poisonous sting.'),
  -- nidorino in lets-go-pikachu
  (33, 3300, 29, 'Its horn contains venom. If it stabs an enemy with the horn, the impact makes the poison leak out.'),
  -- nidoking in lets-go-pikachu
  (34, 3400, 29, 'Its steel-like hide adds to its powerful tackle. Its horns are so hard, they can pierce a diamond.'),
  -- clefairy in lets-go-pikachu
  (35, 3500, 29, 'Adored for their cute looks and playfulness. They are thought to be rare, as they do not appear often.'),
  -- clefable in lets-go-pikachu
  (36, 3600, 29, 'They appear to be very protective of their own world. It is a kind of fairy, rarely seen by people.'),
  -- vulpix in lets-go-pikachu
  (37, 3700, 29, 'Both its fur and its tails are beautiful. As it grows, the tails split and form more tails.'),
  -- alolan-vulpix in lets-go-pikachu
  (37, 3701, 29, 'It looks like snow come to life, and the breath it exhales is −58 degrees Fahrenheit. Another name for it is Keokeo.'),
  -- ninetales in lets-go-pikachu
  (38, 3800, 29, 'According to an enduring legend, nine noble saints were united and reincarnated as this Pokémon.'),
  -- alolan-ninetales in lets-go-pikachu
  (38, 3801, 29, 'It lives on mountains perpetually covered in snow and is revered as a deity incarnate. It appears draped in a blizzard.'),
  -- jigglypuff in lets-go-pikachu
  (39, 3900, 29, 'Uses its cute round eyes to enrapture its foe. It then sings a pleasing melody that lulls the foe to sleep.'),
  -- wigglytuff in lets-go-pikachu
  (40, 4000, 29, 'Its body is very elastic. By inhaling deeply, it can continue to inflate itself without limit.'),
  -- zubat in lets-go-pikachu
  (41, 4100, 29, 'Emits ultrasonic cries while it flies. They act as a sonar used to check for objects in its way.'),
  -- golbat in lets-go-pikachu
  (42, 4200, 29, 'It attacks in a stealthy manner, without warning. Its sharp fangs are used to bite and to suck blood.'),
  -- oddish in lets-go-pikachu
  (43, 4300, 29, 'It may be mistaken for a clump of weeds. If you try to yank it out of the ground, it shrieks horribly.'),
  -- gloom in lets-go-pikachu
  (44, 4400, 29, 'Smells incredibly foul! However, around one out of a thousand people enjoy sniffing its nose-bending stink.'),
  -- vileplume in lets-go-pikachu
  (45, 4500, 29, 'Flaps its broad flower petals to scatter its poisonous pollen. The flapping sound is very loud.'),
  -- paras in lets-go-pikachu
  (46, 4600, 29, 'Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.'),
  -- parasect in lets-go-pikachu
  (47, 4700, 29, 'The bug host is drained of energy by the mushroom on its back. The mushroom appears to do all the thinking.'),
  -- venonat in lets-go-pikachu
  (48, 4800, 29, 'Its large eyes act as radar. In a bright place, you can see that they are clusters of many tiny eyes.'),
  -- venomoth in lets-go-pikachu
  (49, 4900, 29, 'The powdery scales on its wings are hard to remove from skin. They also contain poison that leaks out on contact.'),
  -- diglett in lets-go-pikachu
  (50, 5000, 29, 'It prefers dark places. It spends most of its time underground, though it may pop up in caves.'),
  -- alolan-diglett in lets-go-pikachu
  (50, 5001, 29, 'After living in soil with high iron content for some time, three steel whiskers sprouted from the top of its head.'),
  -- dugtrio in lets-go-pikachu
  (51, 5100, 29, 'A team of triplets that can burrow to a depth of 60 miles. It’s reported that this triggers an earthquake.'),
  -- alolan-dugtrio in lets-go-pikachu
  (51, 5101, 29, 'They’re referred to as triplets, but they’re not identical—the metallic elements in their bodies differ slightly. The proof shows in their whiskers!'),
  -- meowth in lets-go-pikachu
  (52, 5200, 29, 'Appears to be more active at night. It loves round and shiny things. It can’t stop itself from picking them up.'),
  -- alolan-meowth in lets-go-pikachu
  (52, 5201, 29, 'Highly intelligent and prideful, it’s famously difficult to handle—but that’s also a reason for its popularity.'),
  -- persian in lets-go-pikachu
  (53, 5300, 29, 'The gem in its forehead glows on its own! It walks with all the grace and elegance of a proud queen.'),
  -- alolan-persian in lets-go-pikachu
  (53, 5301, 29, 'It has the classiest coat. The rippling of its fur in the heat of battle has a beauty all its own.'),
  -- psyduck in lets-go-pikachu
  (54, 5400, 29, 'Always tormented by headaches. It uses psychic powers, but whether it intends to do so is not known.'),
  -- golduck in lets-go-pikachu
  (55, 5500, 29, 'Its long, slim limbs end in broad flippers. They are used for swimming gracefully in lakes.'),
  -- mankey in lets-go-pikachu
  (56, 5600, 29, 'An agile Pokémon that lives in trees. It angers easily and will not hesitate to attack anything.'),
  -- primeape in lets-go-pikachu
  (57, 5700, 29, 'It stops being angry only when nobody else is around. To view this moment is very difficult.'),
  -- growlithe in lets-go-pikachu
  (58, 5800, 29, 'A Pokémon with a friendly nature. However, it will bark fiercely at anything invading its territory.'),
  -- arcanine in lets-go-pikachu
  (59, 5900, 29, 'A legendary Pokémon in the East. Many people are charmed by the grace and beauty of its running.'),
  -- poliwag in lets-go-pikachu
  (60, 6000, 29, 'The direction of the spiral on the belly differs by area. It is more adept at swimming than walking.'),
  -- poliwhirl in lets-go-pikachu
  (61, 6100, 29, 'Under attack, it uses its belly spiral to put the foe to sleep. It then makes its escape.'),
  -- poliwrath in lets-go-pikachu
  (62, 6200, 29, 'Swims powerfully using all the muscles in its body. It can even overtake world-class swimmers.'),
  -- abra in lets-go-pikachu
  (63, 6300, 29, 'Sleeps 18 hours a day. If it senses danger, it will teleport itself to safety even as it sleeps.'),
  -- kadabra in lets-go-pikachu
  (64, 6400, 29, 'Many odd things happen if this Pokémon is close by. For example, it makes clocks run backward.'),
  -- alakazam in lets-go-pikachu
  (65, 6500, 29, 'A Pokémon that can memorize anything. It never forgets what it learns—that’s why this Pokémon is smart.'),
  -- machop in lets-go-pikachu
  (66, 6600, 29, 'Very powerful in spite of its small size. Its mastery of many types of martial arts makes it very tough.'),
  -- machoke in lets-go-pikachu
  (67, 6700, 29, 'The belt around its waist holds back its energy. Without it, this Pokémon would be unstoppable.'),
  -- machamp in lets-go-pikachu
  (68, 6800, 29, 'One arm alone can move mountains. Using all four arms, this Pokémon fires off awesome punches.'),
  -- bellsprout in lets-go-pikachu
  (69, 6900, 29, 'Prefers hot and humid places. It ensnares tiny bugs with its vines and devours them.'),
  -- weepinbell in lets-go-pikachu
  (70, 7000, 29, 'When hungry, it swallows anything that moves. Its hapless prey is dissolved by strong acids.'),
  -- victreebel in lets-go-pikachu
  (71, 7100, 29, 'Lures prey with the sweet aroma of honey. Swallowed whole, the prey is dissolved in a day, bones and all.'),
  -- tentacool in lets-go-pikachu
  (72, 7200, 29, 'It can sometimes be found all dry and shriveled up on a beach. Toss it back into the sea to revive it.'),
  -- tentacruel in lets-go-pikachu
  (73, 7300, 29, 'Its 80 tentacles can stretch and contract freely. They wrap around prey and weaken it with poison.'),
  -- geodude in lets-go-pikachu
  (74, 7400, 29, 'Commonly found near mountain trails and the like. If you step on one by accident, it gets angry.'),
  -- alolan-geodude in lets-go-pikachu
  (74, 7401, 29, 'Its stone head is imbued with electricity and magnetism. If you carelessly step on one, you’ll be in for a painful shock.'),
  -- graveler in lets-go-pikachu
  (75, 7500, 29, 'Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid.'),
  -- alolan-graveler in lets-go-pikachu
  (75, 7501, 29, 'When it comes rolling down a mountain path, anything in its way gets zapped by electricity and sent flying.'),
  -- golem in lets-go-pikachu
  (76, 7600, 29, 'Once it sheds its skin, its body turns tender and whitish. Its hide hardens when it’s exposed to air.'),
  -- alolan-golem in lets-go-pikachu
  (76, 7601, 29, 'It uses magnetism to accelerate and fire off rocks tinged with electricity. Even if it doesn’t score a direct hit, the jolt of electricity will do the job.'),
  -- ponyta in lets-go-pikachu
  (77, 7700, 29, 'Capable of jumping incredibly high. Its hooves and sturdy legs absorb the impact of a hard landing.'),
  -- rapidash in lets-go-pikachu
  (78, 7800, 29, 'Just loves to run. If it sees something faster than itself, it will give chase at top speed.'),
  -- slowpoke in lets-go-pikachu
  (79, 7900, 29, 'Incredibly slow and sluggish. It is quite content to loll about without worrying about the time.'),
  -- slowbro in lets-go-pikachu
  (80, 8000, 29, 'Lives lazily by the sea. If the Shellder on its tail comes off, it becomes a Slowpoke again.'),
  -- magnemite in lets-go-pikachu
  (81, 8100, 29, 'It is hatched with the ability to defy gravity. It floats while emitting powerful electromagnetic waves.'),
  -- magneton in lets-go-pikachu
  (82, 8200, 29, 'Generates strange radio signals. It raises the temperature by 3.6 degrees Fahrenheit within 3,300 feet.'),
  -- farfetchd in lets-go-pikachu
  (83, 8300, 29, 'They live where reedy plants grow. Farfetch’d are rarely seen, so it’s thought their numbers are decreasing.'),
  -- doduo in lets-go-pikachu
  (84, 8400, 29, 'Its short wings make flying difficult. Instead, this Pokémon runs at high speed on developed legs.'),
  -- dodrio in lets-go-pikachu
  (85, 8500, 29, 'One of Doduo’s two heads splits to form a unique species. It runs close to 40 mph in prairies.'),
  -- seel in lets-go-pikachu
  (86, 8600, 29, 'Loves freezing-cold conditions. Relishes swimming in a frigid climate of around 14 degrees Fahrenheit.'),
  -- dewgong in lets-go-pikachu
  (87, 8700, 29, 'Its entire body is a snowy white. Unharmed by even intense cold, it swims powerfully in icy waters.'),
  -- grimer in lets-go-pikachu
  (88, 8800, 29, 'Made of congealed sludge. It smells too putrid to touch. Even weeds won’t grow in its path.'),
  -- alolan-grimer in lets-go-pikachu
  (88, 8801, 29, 'It has a passion for trash above all else, speedily digesting it and creating brilliant crystals of sparkling poison.'),
  -- muk in lets-go-pikachu
  (89, 8900, 29, 'Smells so awful, it can cause fainting. Through degeneration of its nose, it lost its sense of smell.'),
  -- alolan-muk in lets-go-pikachu
  (89, 8901, 29, 'Muk’s coloration becomes increasingly vivid the more it feasts on its favorite dish—trash.'),
  -- shellder in lets-go-pikachu
  (90, 9000, 29, 'The shell can withstand any attack. However, when it is open, the tender body is exposed.'),
  -- cloyster in lets-go-pikachu
  (91, 9100, 29, 'For protection, it uses its harder-than-diamond shell. It also shoots spikes from the shell.'),
  -- gastly in lets-go-pikachu
  (92, 9200, 29, 'Said to appear in decrepit, deserted buildings. It has no real shape, as it appears to be made of a gas.'),
  -- haunter in lets-go-pikachu
  (93, 9300, 29, 'By licking, it saps the victim’s life. It causes shaking that won’t stop until the victim’s demise.'),
  -- gengar in lets-go-pikachu
  (94, 9400, 29, 'A Gengar is close by if you feel a sudden chill. It may be trying to lay a curse on you.'),
  -- onix in lets-go-pikachu
  (95, 9500, 29, 'Burrows at high speed in search of food. The tunnels it leaves are used as homes by Diglett.'),
  -- drowzee in lets-go-pikachu
  (96, 9600, 29, 'If you sleep by it all the time, it will sometimes show you dreams it had eaten in the past.'),
  -- hypno in lets-go-pikachu
  (97, 9700, 29, 'Avoid eye contact if you come across one. It will try to put you to sleep by using its pendulum.'),
  -- krabby in lets-go-pikachu
  (98, 9800, 29, 'Its pincers are superb weapons. They sometimes break off during battle, but they grow back fast.'),
  -- kingler in lets-go-pikachu
  (99, 9900, 29, 'One claw grew massively and is as hard as steel. It has 10,000-horsepower strength. However, it is too heavy.'),
  -- voltorb in lets-go-pikachu
  (100, 10000, 29, 'It is said to camouflage itself as a Poké Ball. It will self-destruct with very little stimulus.'),
  -- electrode in lets-go-pikachu
  (101, 10100, 29, 'Stores electrical energy inside its body. Even the slightest shock could trigger a huge explosion.'),
  -- exeggcute in lets-go-pikachu
  (102, 10200, 29, 'The heads attract each other and spin around. There must be six heads for it to maintain balance.'),
  -- exeggutor in lets-go-pikachu
  (103, 10300, 29, 'Its cries are very noisy. This is because each of the three heads thinks about whatever it likes.'),
  -- alolan-exeggutor in lets-go-pikachu
  (103, 10301, 29, 'The strong sunlight of the Alola region has awakened the power hidden within Exeggcute. This is the result.'),
  -- cubone in lets-go-pikachu
  (104, 10400, 29, 'Wears the skull of its deceased mother. Its cries echo inside the skull and come out as a sad melody.'),
  -- marowak in lets-go-pikachu
  (105, 10500, 29, 'Small and weak, this Pokémon is adept with its bone club. It has grown more vicious over the ages.'),
  -- alolan-marowak in lets-go-pikachu
  (105, 10501, 29, 'It has transformed the spirit of its dear departed mother into flames, and tonight it will once again dance in mourning of others of its kind.'),
  -- hitmonlee in lets-go-pikachu
  (106, 10600, 29, 'When kicking, the sole of its foot turns as hard as a diamond on impact and destroys its enemy.'),
  -- hitmonchan in lets-go-pikachu
  (107, 10700, 29, 'Punches in corkscrew fashion. It can punch its way through a concrete wall like a drill.'),
  -- lickitung in lets-go-pikachu
  (108, 10800, 29, 'Its tongue spans almost seven feet and moves more freely than its forelegs. Its licks can cause paralysis.'),
  -- koffing in lets-go-pikachu
  (109, 10900, 29, 'In hot places, its internal gases could expand and explode without any warning. Be very careful!'),
  -- weezing in lets-go-pikachu
  (110, 11000, 29, 'This Pokémon lives and grows by absorbing poison gas, dust, and germs that exist inside garbage.'),
  -- rhyhorn in lets-go-pikachu
  (111, 11100, 29, 'A Pokémon with a one-track mind. Once it charges, it won’t stop running until it falls asleep.'),
  -- rhydon in lets-go-pikachu
  (112, 11200, 29, 'Its brain developed when it began walking on its hind legs. Its armor-like hide even repels molten lava.'),
  -- chansey in lets-go-pikachu
  (113, 11300, 29, 'A gentle and kindhearted Pokémon that shares its nutritious eggs if it sees an injured Pokémon.'),
  -- tangela in lets-go-pikachu
  (114, 11400, 29, 'Its identity is obscured by masses of thick blue vines. The vines are said to never stop growing.'),
  -- kangaskhan in lets-go-pikachu
  (115, 11500, 29, 'Raises its young in its belly pouch. Won’t run from any fight to keep its young protected.'),
  -- horsea in lets-go-pikachu
  (116, 11600, 29, 'If it senses any danger, it will vigorously spray water or a special type of ink from its mouth.'),
  -- seadra in lets-go-pikachu
  (117, 11700, 29, 'Touching the back fin causes numbness. It hooks its tail to coral to stay in place while sleeping.'),
  -- goldeen in lets-go-pikachu
  (118, 11800, 29, 'When it is time for them to lay eggs, they can be seen swimming up rivers and falls in large groups.'),
  -- seaking in lets-go-pikachu
  (119, 11900, 29, 'It is the male’s job to make a nest by carving out boulders in a stream using the horn on its head.'),
  -- staryu in lets-go-pikachu
  (120, 12000, 29, 'As long as the center section is unharmed, this Pokémon can grow back fully even if it is chopped to bits.'),
  -- starmie in lets-go-pikachu
  (121, 12100, 29, 'The center section is named the core. People think it is communicating when it glows in seven colors.'),
  -- mr-mime in lets-go-pikachu
  (122, 12200, 29, 'Always practicing its pantomime act. It makes enemies believe something exists that really doesn’t.'),
  -- scyther in lets-go-pikachu
  (123, 12300, 29, 'Leaps out of tall grass and slices prey with its scythes. The movement looks like that of a ninja.'),
  -- jynx in lets-go-pikachu
  (124, 12400, 29, 'Appears to move to a rhythm of its own, as if it were dancing. It wiggles its hips as it walks.'),
  -- electabuzz in lets-go-pikachu
  (125, 12500, 29, 'If a major power outage occurs, it is certain that this Pokémon has eaten electricity at a power plant.'),
  -- magmar in lets-go-pikachu
  (126, 12600, 29, 'Born in an active volcano. Its body is always cloaked in flames, so it looks like a big ball of fire.'),
  -- pinsir in lets-go-pikachu
  (127, 12700, 29, 'Grips its prey in its pincers and squeezes hard! It can’t move if it’s cold out, so it lives in warm places.'),
  -- tauros in lets-go-pikachu
  (128, 12800, 29, 'A rowdy Pokémon with a lot of stamina. Once running, it won’t stop until it hits something.'),
  -- magikarp in lets-go-pikachu
  (129, 12900, 29, 'Famous for being very unreliable. It can be found swimming in seas, lakes, rivers, and shallow puddles.'),
  -- gyarados in lets-go-pikachu
  (130, 13000, 29, 'Brutally vicious and enormously destructive. Known for totally destroying cities in ancient times.'),
  -- lapras in lets-go-pikachu
  (131, 13100, 29, 'A gentle soul that can understand human speech. It can ferry people across the sea on its back.'),
  -- ditto in lets-go-pikachu
  (132, 13200, 29, 'When it spots an enemy, its body transfigures into an almost-perfect copy of its opponent.'),
  -- eevee in lets-go-pikachu
  (133, 13300, 29, 'It can evolve into a variety of forms. Eevee’s genes are the key to solving the mysteries of Pokémon evolution.'),
  -- vaporeon in lets-go-pikachu
  (134, 13400, 29, 'Its cell structure is similar to water molecules. It melts into the water and becomes invisible.'),
  -- jolteon in lets-go-pikachu
  (135, 13500, 29, 'A sensitive Pokémon that easily becomes sad or angry. Every time its mood changes, it charges power.'),
  -- flareon in lets-go-pikachu
  (136, 13600, 29, 'It has a flame chamber inside its body. It inhales, then breathes out fire that is over 3,000 degrees Fahrenheit.'),
  -- porygon in lets-go-pikachu
  (137, 13700, 29, 'The only Pokémon that people anticipate can fly into space. None has managed the feat yet, however.'),
  -- omanyte in lets-go-pikachu
  (138, 13800, 29, 'An ancient Pokémon that was recovered from a fossil. It swam by cleverly twisting its 10 tentacles about.'),
  -- omastar in lets-go-pikachu
  (139, 13900, 29, 'Its sharp beak rings its mouth. Its shell was too big for it to move freely, so it became extinct.'),
  -- kabuto in lets-go-pikachu
  (140, 14000, 29, 'A Pokémon that was recovered from a fossil. It used the eyes on its back while hiding on the seafloor.'),
  -- kabutops in lets-go-pikachu
  (141, 14100, 29, 'A slim and fast swimmer. It sliced its prey with its sharp sickles and drank the body fluids.'),
  -- aerodactyl in lets-go-pikachu
  (142, 14200, 29, 'A savage Pokémon that died out in ancient times. It was resurrected using DNA taken from amber.'),
  -- snorlax in lets-go-pikachu
  (143, 14300, 29, 'Will eat anything, even if the food happens to be a little moldy. It never gets an upset stomach.'),
  -- articuno in lets-go-pikachu
  (144, 14400, 29, 'A legendary bird Pokémon. It freezes water that is contained in winter air and makes it snow.'),
  -- zapdos in lets-go-pikachu
  (145, 14500, 29, 'This legendary bird Pokémon is said to appear when the sky turns dark and lightning showers down.'),
  -- moltres in lets-go-pikachu
  (146, 14600, 29, 'A legendary bird Pokémon. As it flaps its flaming wings, even the night sky will turn red.'),
  -- dratini in lets-go-pikachu
  (147, 14700, 29, 'Long thought to be a myth, this Pokémon’s existence was only recently confirmed by a fisherman who caught one.'),
  -- dragonair in lets-go-pikachu
  (148, 14800, 29, 'According to a witness, its body was surrounded by a strange aura that gave it a mystical look.'),
  -- dragonite in lets-go-pikachu
  (149, 14900, 29, 'It is said that this Pokémon lives somewhere in the sea and that it flies. However, these are only rumors.'),
  -- mewtwo in lets-go-pikachu
  (150, 15000, 29, 'Its DNA is almost the same as Mew’s. However, its size and disposition are vastly different.'),
  -- mew in lets-go-pikachu
  (151, 15100, 29, 'When viewed through a microscope, this Pokémon’s short, fine, delicate hair can be seen.'),
  -- meltan in lets-go-pikachu
  (808, 80800, 29, 'It melts particles of iron and other metals found in the subsoil, so it can absorb them into its body of molten steel.'),
  -- melmetal in lets-go-pikachu
  (809, 80900, 29, 'Revered long ago for its capacity to create iron from nothing, for some reason it has come back to life after 3,000 years.'),
  -- bulbasaur in lets-go-eevee
  (1, 100, 30, 'It can go for days without eating a single morsel. In the bulb on its back, it stores energy.'),
  -- ivysaur in lets-go-eevee
  (2, 200, 30, 'The bud on its back grows by drawing energy. It gives off an aroma when it is ready to bloom.'),
  -- venusaur in lets-go-eevee
  (3, 300, 30, 'The flower on its back catches the sun’s rays. The sunlight is then absorbed and used for energy.'),
  -- charmander in lets-go-eevee
  (4, 400, 30, 'The flame at the tip of its tail makes a sound as it burns. You can only hear it in quiet places.'),
  -- charmeleon in lets-go-eevee
  (5, 500, 30, 'Tough fights could excite this Pokémon. When excited, it may breathe out bluish-white flames.'),
  -- charizard in lets-go-eevee
  (6, 600, 30, 'When this Pokémon expels a blast of superhot fire, the red flame at the tip of its tail burns more intensely.'),
  -- squirtle in lets-go-eevee
  (7, 700, 30, 'Shoots water at prey while in the water. Withdraws into its shell when in danger.'),
  -- wartortle in lets-go-eevee
  (8, 800, 30, 'When tapped on its head, this Pokémon will pull it in, but its tail will still stick out a little bit.'),
  -- blastoise in lets-go-eevee
  (9, 900, 30, 'Once it takes aim at its enemy, it blasts out water with even more force than a fire hose.'),
  -- caterpie in lets-go-eevee
  (10, 1000, 30, 'If you touch the feeler on top of its head, it will release a horrible stink to protect itself.'),
  -- metapod in lets-go-eevee
  (11, 1100, 30, 'Hardens its shell to protect itself. However, a large impact may cause it to pop out of its shell.'),
  -- butterfree in lets-go-eevee
  (12, 1200, 30, 'Its wings, covered with poisonous powder, repel water. This allows it to fly in the rain.'),
  -- weedle in lets-go-eevee
  (13, 1300, 30, 'Beware of the sharp stinger on its head. It hides in grass and bushes where it eats leaves.'),
  -- kakuna in lets-go-eevee
  (14, 1400, 30, 'Able to move only slightly. When endangered, it may stick out its stinger and poison its enemy.'),
  -- beedrill in lets-go-eevee
  (15, 1500, 30, 'It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.'),
  -- pidgey in lets-go-eevee
  (16, 1600, 30, 'Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.'),
  -- pidgeotto in lets-go-eevee
  (17, 1700, 30, 'This Pokémon is full of vitality. It constantly flies around its large territory in search of prey.'),
  -- pidgeot in lets-go-eevee
  (18, 1800, 30, 'This Pokémon flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons.'),
  -- rattata in lets-go-eevee
  (19, 1900, 30, 'Will chew on anything with its fangs. If you see one, you can be certain that 40 more live in the area.'),
  -- alolan-rattata in lets-go-eevee
  (19, 1901, 30, 'Its whiskers provide it with a keen sense of smell, enabling it to pick up the scent of hidden food and locate it instantly.'),
  -- raticate in lets-go-eevee
  (20, 2000, 30, 'Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey.'),
  -- alolan-raticate in lets-go-eevee
  (20, 2001, 30, 'It makes its Rattata underlings gather food for it, dining solely on the most nutritious and delicious fare.'),
  -- spearow in lets-go-eevee
  (21, 2100, 30, 'Inept at flying high. However, it can fly around very fast to protect its territory.'),
  -- fearow in lets-go-eevee
  (22, 2200, 30, 'A Pokémon that dates back many years. If it senses danger, it flies high and away, instantly.'),
  -- ekans in lets-go-eevee
  (23, 2300, 30, 'The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.'),
  -- arbok in lets-go-eevee
  (24, 2400, 30, 'The frightening patterns on its belly have been studied. Six variations have been confirmed.'),
  -- pikachu in lets-go-eevee
  (25, 2500, 30, 'This forest-dwelling Pokémon stores electricity in its cheeks, so you’ll feel a tingly shock if you touch it.'),
  -- raichu in lets-go-eevee
  (26, 2600, 30, 'When electricity builds up inside its body, it becomes feisty. It also glows in the dark.'),
  -- alolan-raichu in lets-go-eevee
  (26, 2601, 30, 'It loves pancakes prepared with a secret Alolan recipe. Some wonder whether that recipe holds the key to this Pokémon’s evolution.'),
  -- sandshrew in lets-go-eevee
  (27, 2700, 30, 'Its body is dry. When it gets cold at night, its hide is said to become coated with a fine dew.'),
  -- alolan-sandshrew in lets-go-eevee
  (27, 2701, 30, 'Its ice-covered body lets it slide across the ground with bullet-like speed, sending its enemies flying when it hits them.'),
  -- sandslash in lets-go-eevee
  (28, 2800, 30, 'It is skilled at slashing enemies with its claws. If broken, they start to grow back in a day.'),
  -- alolan-sandslash in lets-go-eevee
  (28, 2801, 30, 'This is Sandslash’s form after adaptation to a frigid environment. The cold air emitted by its body sharpens its icy spikes.'),
  -- nidoran-f in lets-go-eevee
  (29, 2900, 30, 'A mild-mannered Pokémon that does not like to fight. Beware—its small horn secretes venom.'),
  -- nidorina in lets-go-eevee
  (30, 3000, 30, 'When resting deep in its burrow, its barbs always retract. This is proof that it is relaxed.'),
  -- nidoqueen in lets-go-eevee
  (31, 3100, 30, 'Tough scales cover the sturdy body of this Pokémon. It appears that the scales grow in cycles.'),
  -- nidoran-m in lets-go-eevee
  (32, 3200, 30, 'Its large ears are always kept upright. If it senses danger, it will attack with a poisonous sting.'),
  -- nidorino in lets-go-eevee
  (33, 3300, 30, 'Its horn contains venom. If it stabs an enemy with the horn, the impact makes the poison leak out.'),
  -- nidoking in lets-go-eevee
  (34, 3400, 30, 'Its steel-like hide adds to its powerful tackle. Its horns are so hard, they can pierce a diamond.'),
  -- clefairy in lets-go-eevee
  (35, 3500, 30, 'Adored for their cute looks and playfulness. They are thought to be rare, as they do not appear often.'),
  -- clefable in lets-go-eevee
  (36, 3600, 30, 'They appear to be very protective of their own world. It is a kind of fairy, rarely seen by people.'),
  -- vulpix in lets-go-eevee
  (37, 3700, 30, 'Both its fur and its tails are beautiful. As it grows, the tails split and form more tails.'),
  -- alolan-vulpix in lets-go-eevee
  (37, 3701, 30, 'It looks like snow come to life, and the breath it exhales is −58 degrees Fahrenheit. Another name for it is Keokeo.'),
  -- ninetales in lets-go-eevee
  (38, 3800, 30, 'According to an enduring legend, nine noble saints were united and reincarnated as this Pokémon.'),
  -- alolan-ninetales in lets-go-eevee
  (38, 3801, 30, 'It lives on mountains perpetually covered in snow and is revered as a deity incarnate. It appears draped in a blizzard.'),
  -- jigglypuff in lets-go-eevee
  (39, 3900, 30, 'Uses its cute round eyes to enrapture its foe. It then sings a pleasing melody that lulls the foe to sleep.'),
  -- wigglytuff in lets-go-eevee
  (40, 4000, 30, 'Its body is very elastic. By inhaling deeply, it can continue to inflate itself without limit.'),
  -- zubat in lets-go-eevee
  (41, 4100, 30, 'Emits ultrasonic cries while it flies. They act as a sonar used to check for objects in its way.'),
  -- golbat in lets-go-eevee
  (42, 4200, 30, 'It attacks in a stealthy manner, without warning. Its sharp fangs are used to bite and to suck blood.'),
  -- oddish in lets-go-eevee
  (43, 4300, 30, 'It may be mistaken for a clump of weeds. If you try to yank it out of the ground, it shrieks horribly.'),
  -- gloom in lets-go-eevee
  (44, 4400, 30, 'Smells incredibly foul! However, around one out of a thousand people enjoy sniffing its nose-bending stink.'),
  -- vileplume in lets-go-eevee
  (45, 4500, 30, 'Flaps its broad flower petals to scatter its poisonous pollen. The flapping sound is very loud.'),
  -- paras in lets-go-eevee
  (46, 4600, 30, 'Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.'),
  -- parasect in lets-go-eevee
  (47, 4700, 30, 'The bug host is drained of energy by the mushroom on its back. The mushroom appears to do all the thinking.'),
  -- venonat in lets-go-eevee
  (48, 4800, 30, 'Its large eyes act as radar. In a bright place, you can see that they are clusters of many tiny eyes.'),
  -- venomoth in lets-go-eevee
  (49, 4900, 30, 'The powdery scales on its wings are hard to remove from skin. They also contain poison that leaks out on contact.'),
  -- diglett in lets-go-eevee
  (50, 5000, 30, 'It prefers dark places. It spends most of its time underground, though it may pop up in caves.'),
  -- alolan-diglett in lets-go-eevee
  (50, 5001, 30, 'After living in soil with high iron content for some time, three steel whiskers sprouted from the top of its head.'),
  -- dugtrio in lets-go-eevee
  (51, 5100, 30, 'A team of triplets that can burrow to a depth of 60 miles. It’s reported that this triggers an earthquake.'),
  -- alolan-dugtrio in lets-go-eevee
  (51, 5101, 30, 'They’re referred to as triplets, but they’re not identical—the metallic elements in their bodies differ slightly. The proof shows in their whiskers!'),
  -- meowth in lets-go-eevee
  (52, 5200, 30, 'Appears to be more active at night. It loves round and shiny things. It can’t stop itself from picking them up.'),
  -- alolan-meowth in lets-go-eevee
  (52, 5201, 30, 'Highly intelligent and prideful, it’s famously difficult to handle—but that’s also a reason for its popularity.'),
  -- persian in lets-go-eevee
  (53, 5300, 30, 'The gem in its forehead glows on its own! It walks with all the grace and elegance of a proud queen.'),
  -- alolan-persian in lets-go-eevee
  (53, 5301, 30, 'It has the classiest coat. The rippling of its fur in the heat of battle has a beauty all its own.'),
  -- psyduck in lets-go-eevee
  (54, 5400, 30, 'Always tormented by headaches. It uses psychic powers, but whether it intends to do so is not known.'),
  -- golduck in lets-go-eevee
  (55, 5500, 30, 'Its long, slim limbs end in broad flippers. They are used for swimming gracefully in lakes.'),
  -- mankey in lets-go-eevee
  (56, 5600, 30, 'An agile Pokémon that lives in trees. It angers easily and will not hesitate to attack anything.'),
  -- primeape in lets-go-eevee
  (57, 5700, 30, 'It stops being angry only when nobody else is around. To view this moment is very difficult.'),
  -- growlithe in lets-go-eevee
  (58, 5800, 30, 'A Pokémon with a friendly nature. However, it will bark fiercely at anything invading its territory.'),
  -- arcanine in lets-go-eevee
  (59, 5900, 30, 'A legendary Pokémon in the East. Many people are charmed by the grace and beauty of its running.'),
  -- poliwag in lets-go-eevee
  (60, 6000, 30, 'The direction of the spiral on the belly differs by area. It is more adept at swimming than walking.'),
  -- poliwhirl in lets-go-eevee
  (61, 6100, 30, 'Under attack, it uses its belly spiral to put the foe to sleep. It then makes its escape.'),
  -- poliwrath in lets-go-eevee
  (62, 6200, 30, 'Swims powerfully using all the muscles in its body. It can even overtake world-class swimmers.'),
  -- abra in lets-go-eevee
  (63, 6300, 30, 'Sleeps 18 hours a day. If it senses danger, it will teleport itself to safety even as it sleeps.'),
  -- kadabra in lets-go-eevee
  (64, 6400, 30, 'Many odd things happen if this Pokémon is close by. For example, it makes clocks run backward.'),
  -- alakazam in lets-go-eevee
  (65, 6500, 30, 'A Pokémon that can memorize anything. It never forgets what it learns—that’s why this Pokémon is smart.'),
  -- machop in lets-go-eevee
  (66, 6600, 30, 'Very powerful in spite of its small size. Its mastery of many types of martial arts makes it very tough.'),
  -- machoke in lets-go-eevee
  (67, 6700, 30, 'The belt around its waist holds back its energy. Without it, this Pokémon would be unstoppable.'),
  -- machamp in lets-go-eevee
  (68, 6800, 30, 'One arm alone can move mountains. Using all four arms, this Pokémon fires off awesome punches.'),
  -- bellsprout in lets-go-eevee
  (69, 6900, 30, 'Prefers hot and humid places. It ensnares tiny bugs with its vines and devours them.'),
  -- weepinbell in lets-go-eevee
  (70, 7000, 30, 'When hungry, it swallows anything that moves. Its hapless prey is dissolved by strong acids.'),
  -- victreebel in lets-go-eevee
  (71, 7100, 30, 'Lures prey with the sweet aroma of honey. Swallowed whole, the prey is dissolved in a day, bones and all.'),
  -- tentacool in lets-go-eevee
  (72, 7200, 30, 'It can sometimes be found all dry and shriveled up on a beach. Toss it back into the sea to revive it.'),
  -- tentacruel in lets-go-eevee
  (73, 7300, 30, 'Its 80 tentacles can stretch and contract freely. They wrap around prey and weaken it with poison.'),
  -- geodude in lets-go-eevee
  (74, 7400, 30, 'Commonly found near mountain trails and the like. If you step on one by accident, it gets angry.'),
  -- alolan-geodude in lets-go-eevee
  (74, 7401, 30, 'Its stone head is imbued with electricity and magnetism. If you carelessly step on one, you’ll be in for a painful shock.'),
  -- graveler in lets-go-eevee
  (75, 7500, 30, 'Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid.'),
  -- alolan-graveler in lets-go-eevee
  (75, 7501, 30, 'When it comes rolling down a mountain path, anything in its way gets zapped by electricity and sent flying.'),
  -- golem in lets-go-eevee
  (76, 7600, 30, 'Once it sheds its skin, its body turns tender and whitish. Its hide hardens when it’s exposed to air.'),
  -- alolan-golem in lets-go-eevee
  (76, 7601, 30, 'It uses magnetism to accelerate and fire off rocks tinged with electricity. Even if it doesn’t score a direct hit, the jolt of electricity will do the job.'),
  -- ponyta in lets-go-eevee
  (77, 7700, 30, 'Capable of jumping incredibly high. Its hooves and sturdy legs absorb the impact of a hard landing.'),
  -- rapidash in lets-go-eevee
  (78, 7800, 30, 'Just loves to run. If it sees something faster than itself, it will give chase at top speed.'),
  -- slowpoke in lets-go-eevee
  (79, 7900, 30, 'Incredibly slow and sluggish. It is quite content to loll about without worrying about the time.'),
  -- slowbro in lets-go-eevee
  (80, 8000, 30, 'Lives lazily by the sea. If the Shellder on its tail comes off, it becomes a Slowpoke again.'),
  -- magnemite in lets-go-eevee
  (81, 8100, 30, 'It is hatched with the ability to defy gravity. It floats while emitting powerful electromagnetic waves.'),
  -- magneton in lets-go-eevee
  (82, 8200, 30, 'Generates strange radio signals. It raises the temperature by 3.6 degrees Fahrenheit within 3,300 feet.'),
  -- farfetchd in lets-go-eevee
  (83, 8300, 30, 'They live where reedy plants grow. Farfetch’d are rarely seen, so it’s thought their numbers are decreasing.'),
  -- doduo in lets-go-eevee
  (84, 8400, 30, 'Its short wings make flying difficult. Instead, this Pokémon runs at high speed on developed legs.'),
  -- dodrio in lets-go-eevee
  (85, 8500, 30, 'One of Doduo’s two heads splits to form a unique species. It runs close to 40 mph in prairies.'),
  -- seel in lets-go-eevee
  (86, 8600, 30, 'Loves freezing-cold conditions. Relishes swimming in a frigid climate of around 14 degrees Fahrenheit.'),
  -- dewgong in lets-go-eevee
  (87, 8700, 30, 'Its entire body is a snowy white. Unharmed by even intense cold, it swims powerfully in icy waters.'),
  -- grimer in lets-go-eevee
  (88, 8800, 30, 'Made of congealed sludge. It smells too putrid to touch. Even weeds won’t grow in its path.'),
  -- alolan-grimer in lets-go-eevee
  (88, 8801, 30, 'It has a passion for trash above all else, speedily digesting it and creating brilliant crystals of sparkling poison.'),
  -- muk in lets-go-eevee
  (89, 8900, 30, 'Smells so awful, it can cause fainting. Through degeneration of its nose, it lost its sense of smell.'),
  -- alolan-muk in lets-go-eevee
  (89, 8901, 30, 'Muk’s coloration becomes increasingly vivid the more it feasts on its favorite dish—trash.'),
  -- shellder in lets-go-eevee
  (90, 9000, 30, 'The shell can withstand any attack. However, when it is open, the tender body is exposed.'),
  -- cloyster in lets-go-eevee
  (91, 9100, 30, 'For protection, it uses its harder-than-diamond shell. It also shoots spikes from the shell.'),
  -- gastly in lets-go-eevee
  (92, 9200, 30, 'Said to appear in decrepit, deserted buildings. It has no real shape, as it appears to be made of a gas.'),
  -- haunter in lets-go-eevee
  (93, 9300, 30, 'By licking, it saps the victim’s life. It causes shaking that won’t stop until the victim’s demise.'),
  -- gengar in lets-go-eevee
  (94, 9400, 30, 'A Gengar is close by if you feel a sudden chill. It may be trying to lay a curse on you.'),
  -- onix in lets-go-eevee
  (95, 9500, 30, 'Burrows at high speed in search of food. The tunnels it leaves are used as homes by Diglett.'),
  -- drowzee in lets-go-eevee
  (96, 9600, 30, 'If you sleep by it all the time, it will sometimes show you dreams it had eaten in the past.'),
  -- hypno in lets-go-eevee
  (97, 9700, 30, 'Avoid eye contact if you come across one. It will try to put you to sleep by using its pendulum.'),
  -- krabby in lets-go-eevee
  (98, 9800, 30, 'Its pincers are superb weapons. They sometimes break off during battle, but they grow back fast.'),
  -- kingler in lets-go-eevee
  (99, 9900, 30, 'One claw grew massively and is as hard as steel. It has 10,000-horsepower strength. However, it is too heavy.'),
  -- voltorb in lets-go-eevee
  (100, 10000, 30, 'It is said to camouflage itself as a Poké Ball. It will self-destruct with very little stimulus.'),
  -- electrode in lets-go-eevee
  (101, 10100, 30, 'Stores electrical energy inside its body. Even the slightest shock could trigger a huge explosion.'),
  -- exeggcute in lets-go-eevee
  (102, 10200, 30, 'The heads attract each other and spin around. There must be six heads for it to maintain balance.'),
  -- exeggutor in lets-go-eevee
  (103, 10300, 30, 'Its cries are very noisy. This is because each of the three heads thinks about whatever it likes.'),
  -- alolan-exeggutor in lets-go-eevee
  (103, 10301, 30, 'The strong sunlight of the Alola region has awakened the power hidden within Exeggcute. This is the result.'),
  -- cubone in lets-go-eevee
  (104, 10400, 30, 'Wears the skull of its deceased mother. Its cries echo inside the skull and come out as a sad melody.'),
  -- marowak in lets-go-eevee
  (105, 10500, 30, 'Small and weak, this Pokémon is adept with its bone club. It has grown more vicious over the ages.'),
  -- alolan-marowak in lets-go-eevee
  (105, 10501, 30, 'It has transformed the spirit of its dear departed mother into flames, and tonight it will once again dance in mourning of others of its kind.'),
  -- hitmonlee in lets-go-eevee
  (106, 10600, 30, 'When kicking, the sole of its foot turns as hard as a diamond on impact and destroys its enemy.'),
  -- hitmonchan in lets-go-eevee
  (107, 10700, 30, 'Punches in corkscrew fashion. It can punch its way through a concrete wall like a drill.'),
  -- lickitung in lets-go-eevee
  (108, 10800, 30, 'Its tongue spans almost seven feet and moves more freely than its forelegs. Its licks can cause paralysis.'),
  -- koffing in lets-go-eevee
  (109, 10900, 30, 'In hot places, its internal gases could expand and explode without any warning. Be very careful!'),
  -- weezing in lets-go-eevee
  (110, 11000, 30, 'This Pokémon lives and grows by absorbing poison gas, dust, and germs that exist inside garbage.'),
  -- rhyhorn in lets-go-eevee
  (111, 11100, 30, 'A Pokémon with a one-track mind. Once it charges, it won’t stop running until it falls asleep.'),
  -- rhydon in lets-go-eevee
  (112, 11200, 30, 'Its brain developed when it began walking on its hind legs. Its armor-like hide even repels molten lava.'),
  -- chansey in lets-go-eevee
  (113, 11300, 30, 'A gentle and kindhearted Pokémon that shares its nutritious eggs if it sees an injured Pokémon.'),
  -- tangela in lets-go-eevee
  (114, 11400, 30, 'Its identity is obscured by masses of thick blue vines. The vines are said to never stop growing.'),
  -- kangaskhan in lets-go-eevee
  (115, 11500, 30, 'Raises its young in its belly pouch. Won’t run from any fight to keep its young protected.'),
  -- horsea in lets-go-eevee
  (116, 11600, 30, 'If it senses any danger, it will vigorously spray water or a special type of ink from its mouth.'),
  -- seadra in lets-go-eevee
  (117, 11700, 30, 'Touching the back fin causes numbness. It hooks its tail to coral to stay in place while sleeping.'),
  -- goldeen in lets-go-eevee
  (118, 11800, 30, 'When it is time for them to lay eggs, they can be seen swimming up rivers and falls in large groups.'),
  -- seaking in lets-go-eevee
  (119, 11900, 30, 'It is the male’s job to make a nest by carving out boulders in a stream using the horn on its head.'),
  -- staryu in lets-go-eevee
  (120, 12000, 30, 'As long as the center section is unharmed, this Pokémon can grow back fully even if it is chopped to bits.'),
  -- starmie in lets-go-eevee
  (121, 12100, 30, 'The center section is named the core. People think it is communicating when it glows in seven colors.'),
  -- mr-mime in lets-go-eevee
  (122, 12200, 30, 'Always practicing its pantomime act. It makes enemies believe something exists that really doesn’t.'),
  -- scyther in lets-go-eevee
  (123, 12300, 30, 'Leaps out of tall grass and slices prey with its scythes. The movement looks like that of a ninja.'),
  -- jynx in lets-go-eevee
  (124, 12400, 30, 'Appears to move to a rhythm of its own, as if it were dancing. It wiggles its hips as it walks.'),
  -- electabuzz in lets-go-eevee
  (125, 12500, 30, 'If a major power outage occurs, it is certain that this Pokémon has eaten electricity at a power plant.'),
  -- magmar in lets-go-eevee
  (126, 12600, 30, 'Born in an active volcano. Its body is always cloaked in flames, so it looks like a big ball of fire.'),
  -- pinsir in lets-go-eevee
  (127, 12700, 30, 'Grips its prey in its pincers and squeezes hard! It can’t move if it’s cold out, so it lives in warm places.'),
  -- tauros in lets-go-eevee
  (128, 12800, 30, 'A rowdy Pokémon with a lot of stamina. Once running, it won’t stop until it hits something.'),
  -- magikarp in lets-go-eevee
  (129, 12900, 30, 'Famous for being very unreliable. It can be found swimming in seas, lakes, rivers, and shallow puddles.'),
  -- gyarados in lets-go-eevee
  (130, 13000, 30, 'Brutally vicious and enormously destructive. Known for totally destroying cities in ancient times.'),
  -- lapras in lets-go-eevee
  (131, 13100, 30, 'A gentle soul that can understand human speech. It can ferry people across the sea on its back.'),
  -- ditto in lets-go-eevee
  (132, 13200, 30, 'When it spots an enemy, its body transfigures into an almost-perfect copy of its opponent.'),
  -- eevee in lets-go-eevee
  (133, 13300, 30, 'It can evolve into a variety of forms. Eevee’s genes are the key to solving the mysteries of Pokémon evolution.'),
  -- vaporeon in lets-go-eevee
  (134, 13400, 30, 'Its cell structure is similar to water molecules. It melts into the water and becomes invisible.'),
  -- jolteon in lets-go-eevee
  (135, 13500, 30, 'A sensitive Pokémon that easily becomes sad or angry. Every time its mood changes, it charges power.'),
  -- flareon in lets-go-eevee
  (136, 13600, 30, 'It has a flame chamber inside its body. It inhales, then breathes out fire that is over 3,000 degrees Fahrenheit.'),
  -- porygon in lets-go-eevee
  (137, 13700, 30, 'The only Pokémon that people anticipate can fly into space. None has managed the feat yet, however.'),
  -- omanyte in lets-go-eevee
  (138, 13800, 30, 'An ancient Pokémon that was recovered from a fossil. It swam by cleverly twisting its 10 tentacles about.'),
  -- omastar in lets-go-eevee
  (139, 13900, 30, 'Its sharp beak rings its mouth. Its shell was too big for it to move freely, so it became extinct.'),
  -- kabuto in lets-go-eevee
  (140, 14000, 30, 'A Pokémon that was recovered from a fossil. It used the eyes on its back while hiding on the seafloor.'),
  -- kabutops in lets-go-eevee
  (141, 14100, 30, 'A slim and fast swimmer. It sliced its prey with its sharp sickles and drank the body fluids.'),
  -- aerodactyl in lets-go-eevee
  (142, 14200, 30, 'A savage Pokémon that died out in ancient times. It was resurrected using DNA taken from amber.'),
  -- snorlax in lets-go-eevee
  (143, 14300, 30, 'Will eat anything, even if the food happens to be a little moldy. It never gets an upset stomach.'),
  -- articuno in lets-go-eevee
  (144, 14400, 30, 'A legendary bird Pokémon. It freezes water that is contained in winter air and makes it snow.'),
  -- zapdos in lets-go-eevee
  (145, 14500, 30, 'This legendary bird Pokémon is said to appear when the sky turns dark and lightning showers down.'),
  -- moltres in lets-go-eevee
  (146, 14600, 30, 'A legendary bird Pokémon. As it flaps its flaming wings, even the night sky will turn red.'),
  -- dratini in lets-go-eevee
  (147, 14700, 30, 'Long thought to be a myth, this Pokémon’s existence was only recently confirmed by a fisherman who caught one.'),
  -- dragonair in lets-go-eevee
  (148, 14800, 30, 'According to a witness, its body was surrounded by a strange aura that gave it a mystical look.'),
  -- dragonite in lets-go-eevee
  (149, 14900, 30, 'It is said that this Pokémon lives somewhere in the sea and that it flies. However, these are only rumors.'),
  -- mewtwo in lets-go-eevee
  (150, 15000, 30, 'Its DNA is almost the same as Mew’s. However, its size and disposition are vastly different.'),
  -- mew in lets-go-eevee
  (151, 15100, 30, 'When viewed through a microscope, this Pokémon’s short, fine, delicate hair can be seen.'),
  -- meltan in lets-go-eevee
  (808, 80800, 30, 'It melts particles of iron and other metals found in the subsoil, so it can absorb them into its body of molten steel.'),
  -- melmetal in lets-go-eevee
  (809, 80900, 30, 'Revered long ago for its capacity to create iron from nothing, for some reason it has come back to life after 3,000 years.');
