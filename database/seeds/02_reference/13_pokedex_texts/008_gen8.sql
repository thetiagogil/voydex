-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 8 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in sword
  (1, 100, 31, 'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.'),
  -- ivysaur in sword
  (2, 200, 31, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.'),
  -- venusaur in sword
  (3, 300, 31, 'Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.'),
  -- gigantamax-venusaur in sword
  (3, 302, 31, 'In battle, this Pokémon swings around two thick vines. If these vines slammed into a 10-story building, they could easily topple it.'),
  -- charmander in sword
  (4, 400, 31, 'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.'),
  -- charmeleon in sword
  (5, 500, 31, 'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.'),
  -- charizard in sword
  (6, 600, 31, 'It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.'),
  -- gigantamax-charizard in sword
  (6, 603, 31, 'This colossal, flame-winged figure of a Charizard was brought about by Gigantamax energy.'),
  -- squirtle in sword
  (7, 700, 31, 'When it retracts its long neck into its shell, it squirts out water with vigorous force.'),
  -- wartortle in sword
  (8, 800, 31, 'It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.'),
  -- blastoise in sword
  (9, 900, 31, 'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.'),
  -- gigantamax-blastoise in sword
  (9, 902, 31, 'It’s not very good at precision shooting. When attacking, it just fires its 31 cannons over and over and over.'),
  -- caterpie in sword
  (10, 1000, 31, 'For protection, it releases a horrible stench from the antenna on its head to drive away enemies.'),
  -- metapod in sword
  (11, 1100, 31, 'It is waiting for the moment to evolve. At this stage, it can only harden, so it remains motionless to avoid attack.'),
  -- butterfree in sword
  (12, 1200, 31, 'In battle, it flaps its wings at great speed to release highly toxic dust into the air.'),
  -- pikachu in sword
  (25, 2500, 31, 'Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.'),
  -- gigantamax-pikachu in sword
  (25, 2502, 31, 'Its Gigantamax power expanded, forming its supersized body and towering tail.'),
  -- pikachu-original-cap in sword
  (25, 2503, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through many different regions.'),
  -- pikachu-hoenn-cap in sword
  (25, 2504, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through the Hoenn region.'),
  -- pikachu-sinnoh-cap in sword
  (25, 2505, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through the Sinnoh region.'),
  -- pikachu-unova-cap in sword
  (25, 2506, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through the Unova region.'),
  -- pikachu-kalos-cap in sword
  (25, 2507, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through the Kalos region.'),
  -- pikachu-alola-cap in sword
  (25, 2508, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through the Alola region.'),
  -- pikachu-partner-cap in sword
  (25, 2509, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of when they first met.'),
  -- pikachu-world-cap in sword
  (25, 2510, 31, 'This Pikachu wears its partner’s cap, which is brimming with memories of traveling through different regions.'),
  -- raichu in sword
  (26, 2600, 31, 'Its long tail serves as a ground to protect itself from its own high-voltage power.'),
  -- alolan-raichu in sword
  (26, 2601, 31, 'It’s believed that the weather, climate, and food of the Alola region all play a part in causing Pikachu to evolve into this form of Raichu.'),
  -- sandshrew in sword
  (27, 2700, 31, 'It loves to bathe in the grit of dry, sandy areas. By sand bathing, the Pokémon rids itself of dirt and moisture clinging to its body.'),
  -- alolan-sandshrew in sword
  (27, 2701, 31, 'Life on mountains covered with deep snow has granted this Pokémon a body of ice that’s as hard as steel.'),
  -- sandslash in sword
  (28, 2800, 31, 'The drier the area Sandslash lives in, the harder and smoother the Pokémon’s spikes will feel when touched.'),
  -- alolan-sandslash in sword
  (28, 2801, 31, 'It uses large, hooked claws to cut a path through deep snow as it runs. On snowy mountains, this Sandslash is faster than any other Pokémon.'),
  -- nidoran-f in sword
  (29, 2900, 31, 'Females are more sensitive to smells than males. While foraging, they’ll use their whiskers to check wind direction and stay downwind of predators.'),
  -- nidorina in sword
  (30, 3000, 31, 'The horn on its head has atrophied. It’s thought that this happens so Nidorina’s children won’t get poked while their mother is feeding them.'),
  -- nidoqueen in sword
  (31, 3100, 31, 'Nidoqueen is better at defense than offense. With scales like armor, this Pokémon will shield its children from any kind of attack.'),
  -- nidoran-m in sword
  (32, 3200, 31, 'The horn on a male Nidoran’s forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.'),
  -- nidorino in sword
  (33, 3300, 31, 'With a horn that’s harder than diamond, this Pokémon goes around shattering boulders as it searches for a moon stone.'),
  -- nidoking in sword
  (34, 3400, 31, 'When it goes on a rampage, it’s impossible to control. But in the presence of a Nidoqueen it’s lived with for a long time, Nidoking calms down.'),
  -- clefairy in sword
  (35, 3500, 31, 'It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon.'),
  -- clefable in sword
  (36, 3600, 31, 'A timid fairy Pokémon that is rarely seen, it will run and hide the moment it senses people.'),
  -- vulpix in sword
  (37, 3700, 31, 'While young, it has six gorgeous tails. When it grows, several new tails are sprouted.'),
  -- alolan-vulpix in sword
  (37, 3701, 31, 'After long years in the ever-snowcapped mountains of Alola, this Vulpix has gained power over ice.'),
  -- ninetales in sword
  (38, 3800, 31, 'It is said to live 1,000 years, and each of its tails is loaded with supernatural powers.'),
  -- alolan-ninetales in sword
  (38, 3801, 31, 'A deity resides in the snowy mountains where this Pokémon lives. In ancient times, it was worshiped as that deity’s incarnation.'),
  -- jigglypuff in sword
  (39, 3900, 31, 'Jigglypuff has top-notch lung capacity, even by comparison to other Pokémon. It won’t stop singing its lullabies until its foes fall asleep.'),
  -- wigglytuff in sword
  (40, 4000, 31, 'The more air it takes in, the more it inflates. If opponents catch it in a bad mood, it will inflate itself to an enormous size to intimidate them.'),
  -- zubat in sword
  (41, 4100, 31, 'It emits ultrasonic waves from its mouth to check its surroundings. Even in tight caves, Zubat flies around with skill.'),
  -- golbat in sword
  (42, 4200, 31, 'It loves to drink other creatures’ blood. It’s said that if it finds others of its kind going hungry, it sometimes shares the blood it’s gathered.'),
  -- oddish in sword
  (43, 4300, 31, 'If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds.'),
  -- gloom in sword
  (44, 4400, 31, 'Its pistils exude an incredibly foul odor. The horrid stench can cause fainting at a distance of 1.25 miles.'),
  -- vileplume in sword
  (45, 4500, 31, 'It has the world’s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.'),
  -- diglett in sword
  (50, 5000, 31, 'If a Diglett digs through a field, it leaves the soil perfectly tilled and ideal for planting crops.'),
  -- alolan-diglett in sword
  (50, 5001, 31, 'The metal-rich geology of this Pokémon’s habitat caused it to develop steel whiskers on its head.'),
  -- dugtrio in sword
  (51, 5100, 31, 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.'),
  -- alolan-dugtrio in sword
  (51, 5101, 31, 'Their beautiful, metallic whiskers create a sort of protective helmet on their heads, and they also function as highly precise sensors.'),
  -- meowth in sword
  (52, 5200, 31, 'It loves to collect shiny things. If it’s in a good mood, it might even let its Trainer have a look at its hoard of treasures.'),
  -- alolan-meowth in sword
  (52, 5201, 31, 'It’s accustomed to luxury because it used to live with Alolan royalty. As a result, it’s very picky about food.'),
  -- galarian-meowth in sword
  (52, 5202, 31, 'Living with a savage, seafaring people has toughened this Pokémon’s body so much that parts of it have turned to iron.'),
  -- gigantamax-meowth in sword
  (52, 5203, 31, 'The pattern that has appeared on its giant coin is thought to be the key to unlocking the secrets of the Dynamax phenomenon.'),
  -- persian in sword
  (53, 5300, 31, 'Getting this prideful Pokémon to warm up to you takes a lot of effort, and it will claw at you the moment it gets annoyed.'),
  -- alolan-persian in sword
  (53, 5301, 31, 'The round face of Alolan Persian is considered to be a symbol of prosperity in the Alola region, so these Pokémon are very well cared for.'),
  -- psyduck in sword
  (54, 5400, 31, 'Psyduck is constantly beset by headaches. If the Pokémon lets its strange power erupt, apparently the pain subsides for a while.'),
  -- golduck in sword
  (55, 5500, 31, 'This Pokémon lives in gently flowing rivers. It paddles through the water with its long limbs, putting its graceful swimming skills on display.'),
  -- growlithe in sword
  (58, 5800, 31, 'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.'),
  -- arcanine in sword
  (59, 5900, 31, 'The sight of it running over 6,200 miles in a single day and night has captivated many people.'),
  -- poliwag in sword
  (60, 6000, 31, 'For Poliwag, swimming is easier than walking. The swirl pattern on its belly is actually part of the Pokémon’s innards showing through the skin.'),
  -- poliwhirl in sword
  (61, 6100, 31, 'Staring at the swirl on its belly causes drowsiness. This trait of Poliwhirl’s has been used in place of lullabies to get children to go to sleep.'),
  -- poliwrath in sword
  (62, 6200, 31, 'Its body is solid muscle. When swimming through cold seas, Poliwrath uses its impressive arms to smash through drift ice and plow forward.'),
  -- abra in sword
  (63, 6300, 31, 'This Pokémon uses its psychic powers while it sleeps. The contents of Abra’s dreams affect the powers that the Pokémon wields.'),
  -- kadabra in sword
  (64, 6400, 31, 'Using its psychic power, Kadabra levitates as it sleeps. It uses its springy tail as a pillow.'),
  -- alakazam in sword
  (65, 6500, 31, 'It has an incredibly high level of intelligence. Some say that Alakazam remembers everything that ever happens to it, from birth till death.'),
  -- machop in sword
  (66, 6600, 31, 'Its whole body is composed of muscles. Even though it’s the size of a human child, it can hurl 100 grown-ups.'),
  -- machoke in sword
  (67, 6700, 31, 'Its muscular body is so powerful, it must wear a power-save belt to be able to regulate its motions.'),
  -- machamp in sword
  (68, 6800, 31, 'It quickly swings its four arms to rock its opponents with ceaseless punches and chops from all angles.'),
  -- tentacool in sword
  (72, 7200, 31, 'Tentacool is not a particularly strong swimmer. It drifts across the surface of shallow seas as it searches for prey.'),
  -- tentacruel in sword
  (73, 7300, 31, 'When the red orbs on Tentacruel’s head glow brightly, watch out. The Pokémon is about to fire off a burst of ultrasonic waves.'),
  -- ponyta in sword
  (77, 7700, 31, 'It can’t run properly when it’s newly born. As it races around with others of its kind, its legs grow stronger.'),
  -- galarian-ponyta in sword
  (77, 7701, 31, 'Its small horn hides a healing power. With a few rubs from this Pokémon’s horn, any slight wound you have will be healed.'),
  -- rapidash in sword
  (78, 7800, 31, 'This Pokémon can be seen galloping through fields at speeds of up to 150 mph, its fiery mane fluttering in the wind.'),
  -- galarian-rapidash in sword
  (78, 7801, 31, 'Little can stand up to its psycho cut. Unleashed from this Pokémon’s horn, the move will punch a hole right through a thick metal sheet.'),
  -- slowpoke in sword
  (79, 7900, 31, 'Slow-witted and oblivious, this Pokémon won’t feel any pain if its tail gets eaten. It won’t notice when its tail grows back, either.'),
  -- galarian-slowpoke in sword
  (79, 7901, 31, 'Although this Pokémon is normally zoned out, its expression abruptly sharpens on occasion. The cause for this seems to lie in Slowpoke’s diet.'),
  -- slowbro in sword
  (80, 8000, 31, 'Slowpoke became Slowbro when a Shellder bit on to its tail. Sweet flavors seeping from the tail make the Shellder feel as if its life is a dream.'),
  -- galarian-slowbro in sword
  (80, 8002, 31, 'A Shellder bite set off a chemical reaction with the spices inside Slowbro’s body, causing Slowbro to become a Poison-type Pokémon.'),
  -- magnemite in sword
  (81, 8100, 31, 'At times, Magnemite runs out of electricity and ends up on the ground. If you give batteries to a grounded Magnemite, it’ll start moving again.'),
  -- magneton in sword
  (82, 8200, 31, 'This Pokémon is three Magnemite that have linked together. Magneton sends out powerful radio waves to study its surroundings.'),
  -- farfetchd in sword
  (83, 8300, 31, 'The stalk this Pokémon carries in its wings serves as a sword to cut down opponents. In a dire situation, the stalk can also serve as food.'),
  -- galarian-farfetchd in sword
  (83, 8301, 31, 'The Farfetch’d of the Galar region are brave warriors, and they wield thick, tough leeks in battle.'),
  -- shellder in sword
  (90, 9000, 31, 'It swims facing backward by opening and closing its two-piece shell. It is surprisingly fast.'),
  -- cloyster in sword
  (91, 9100, 31, 'Its shell is extremely hard. It cannot be shattered, even with a bomb. The shell opens only when it is attacking.'),
  -- gastly in sword
  (92, 9200, 31, 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in sword
  (93, 9300, 31, 'Its tongue is made of gas. If licked, its victim starts shaking constantly until death eventually comes.'),
  -- gengar in sword
  (94, 9400, 31, 'On the night of a full moon, if shadows move on their own and laugh, it must be Gengar’s doing.'),
  -- gigantamax-gengar in sword
  (94, 9402, 31, 'Rumor has it that its gigantic mouth leads not into its body, filled with cursed energy, but instead directly to the afterlife.'),
  -- onix in sword
  (95, 9500, 31, 'As it digs through the ground, it absorbs many hard objects. This is what makes its body so solid.'),
  -- krabby in sword
  (98, 9800, 31, 'It can be found near the sea. The large pincers grow back if they are torn out of their sockets.'),
  -- kingler in sword
  (99, 9900, 31, 'Its large and hard pincer has 10,000-horsepower strength. However, being so big, it is unwieldy to move.'),
  -- exeggcute in sword
  (102, 10200, 31, 'Though it may look like it’s just a bunch of eggs, it’s a proper Pokémon. Exeggcute communicates with others of its kind via telepathy, apparently.'),
  -- exeggutor in sword
  (103, 10300, 31, 'Each of Exeggutor’s three heads is thinking different thoughts. The three don’t seem to be very interested in one another.'),
  -- alolan-exeggutor in sword
  (103, 10301, 31, 'Blazing sunlight has brought out the true form and powers of this Pokémon.'),
  -- cubone in sword
  (104, 10400, 31, 'When the memory of its departed mother brings it to tears, its cries echo mournfully within the skull it wears on its head.'),
  -- marowak in sword
  (105, 10500, 31, 'This Pokémon overcame its sorrow to evolve a sturdy new body. Marowak faces its opponents bravely, using a bone as a weapon.'),
  -- alolan-marowak in sword
  (105, 10501, 31, 'This Pokémon sets the bone it holds on fire and dances through the night as a way to mourn its fallen allies.'),
  -- hitmonlee in sword
  (106, 10600, 31, 'This amazing Pokémon has an awesome sense of balance. It can kick in succession from any position.'),
  -- hitmonchan in sword
  (107, 10700, 31, 'Its punches slice the air. They are launched at such high speed, even a slight graze could cause a burn.'),
  -- lickitung in sword
  (108, 10800, 31, 'If this Pokémon’s sticky saliva gets on you and you don’t clean it off, an intense itch will set in. The itch won’t go away, either.'),
  -- koffing in sword
  (109, 10900, 31, 'Its body is full of poisonous gas. It floats into garbage dumps, seeking out the fumes of raw, rotting trash.'),
  -- weezing in sword
  (110, 11000, 31, 'It mixes gases between its two bodies. It’s said that these Pokémon were seen all over the Galar region back in the day.'),
  -- galarian-weezing in sword
  (110, 11001, 31, 'This Pokémon consumes particles that contaminate the air. Instead of leaving droppings, it expels clean air.'),
  -- rhyhorn in sword
  (111, 11100, 31, 'Strong, but not too bright, this Pokémon can shatter even a skyscraper with its charging tackles.'),
  -- rhydon in sword
  (112, 11200, 31, 'It begins walking on its hind legs after evolution. It can punch holes through boulders with its horn.'),
  -- chansey in sword
  (113, 11300, 31, 'The egg Chansey carries is not only delicious but also packed with nutrition. It’s used as a high-class cooking ingredient.'),
  -- tangela in sword
  (114, 11400, 31, 'Hidden beneath a tangle of vines that grows nonstop even if the vines are torn off, this Pokémon’s true appearance remains a mystery.'),
  -- kangaskhan in sword
  (115, 11500, 31, 'Although it’s carrying its baby in a pouch on its belly, Kangaskhan is swift on its feet. It intimidates its opponents with quick jabs.'),
  -- horsea in sword
  (116, 11600, 31, 'Horsea makes its home in oceans with gentle currents. If this Pokémon is under attack, it spits out pitch-black ink and escapes.'),
  -- seadra in sword
  (117, 11700, 31, 'It’s the males that raise the offspring. While Seadra are raising young, the spines on their backs secrete thicker and stronger poison.'),
  -- goldeen in sword
  (118, 11800, 31, 'Its dorsal, pectoral, and tail fins wave elegantly in water. That is why it is known as the Water Dancer.'),
  -- seaking in sword
  (119, 11900, 31, 'In autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.'),
  -- staryu in sword
  (120, 12000, 31, 'If you visit a beach at the end of summer, you’ll be able to see groups of Staryu lighting up in a steady rhythm.'),
  -- starmie in sword
  (121, 12100, 31, 'This Pokémon has an organ known as its core. The organ glows in seven colors when Starmie is unleashing its potent psychic powers.'),
  -- mr-mime in sword
  (122, 12200, 31, 'The broadness of its hands may be no coincidence—many scientists believe its palms became enlarged specifically for pantomiming.'),
  -- galarian-mr-mime in sword
  (122, 12201, 31, 'Its talent is tap-dancing. It can also manipulate temperatures to create a floor of ice, which this Pokémon can kick up to use as a barrier.'),
  -- scyther in sword
  (123, 12300, 31, 'As Scyther fights more and more battles, its scythes become sharper and sharper. With a single slice, Scyther can fell a massive tree.'),
  -- jynx in sword
  (124, 12400, 31, 'In certain parts of Galar, Jynx was once feared and worshiped as the Queen of Ice.'),
  -- electabuzz in sword
  (125, 12500, 31, 'Many power plants keep Ground-type Pokémon around as a defense against Electabuzz that come seeking electricity.'),
  -- magmar in sword
  (126, 12600, 31, 'Magmar dispatches its prey with fire. But it regrets this habit once it realizes that it has burned its intended prey to a charred crisp.'),
  -- pinsir in sword
  (127, 12700, 31, 'These Pokémon judge one another based on pincers. Thicker, more impressive pincers make for more popularity with the opposite gender.'),
  -- tauros in sword
  (128, 12800, 31, 'When Tauros begins whipping itself with its tails, it’s a warning that the Pokémon is about to charge with astounding speed.'),
  -- magikarp in sword
  (129, 12900, 31, 'It is virtually worthless in terms of both power and speed. It is the most weak and pathetic Pokémon in the world.'),
  -- gyarados in sword
  (130, 13000, 31, 'It has an extremely aggressive nature. The Hyper Beam it shoots from its mouth totally incinerates all targets.'),
  -- lapras in sword
  (131, 13100, 31, 'A smart and kindhearted Pokémon, it glides across the surface of the sea while its beautiful song echoes around it.'),
  -- ditto in sword
  (132, 13200, 31, 'It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.'),
  -- eevee in sword
  (133, 13300, 31, 'It has the ability to alter the composition of its body to suit its surrounding environment.'),
  -- vaporeon in sword
  (134, 13400, 31, 'When Vaporeon’s fins begin to vibrate, it is a sign that rain will come within a few hours.'),
  -- jolteon in sword
  (135, 13500, 31, 'If it is angered or startled, the fur all over its body bristles like sharp needles that pierce foes.'),
  -- flareon in sword
  (136, 13600, 31, 'Once it has stored up enough heat, this Pokémon’s body temperature can reach up to 1,700 degrees Fahrenheit.'),
  -- porygon in sword
  (137, 13700, 31, 'State-of-the-art technology was used to create Porygon. It was the first artificial Pokémon to be created via computer programming.'),
  -- omanyte in sword
  (138, 13800, 31, 'Because some Omanyte manage to escape after being restored or are released into the wild by people, this species is becoming a problem.'),
  -- omastar in sword
  (139, 13900, 31, 'Weighed down by a large and heavy shell, Omastar couldn’t move very fast. Some say it went extinct because it was unable to catch food.'),
  -- kabuto in sword
  (140, 14000, 31, 'This species is almost entirely extinct. Kabuto molt every three days, making their shells harder and harder.'),
  -- kabutops in sword
  (141, 14100, 31, 'Kabutops slices its prey apart and sucks out the fluids. The discarded body parts become food for other Pokémon.'),
  -- aerodactyl in sword
  (142, 14200, 31, 'This is a ferocious Pokémon from ancient times. Apparently even modern technology is incapable of producing a perfectly restored specimen.'),
  -- snorlax in sword
  (143, 14300, 31, 'It is not satisfied unless it eats over 880 pounds of food every day. When it is done eating, it goes promptly to sleep.'),
  -- articuno in sword
  (144, 14400, 31, 'It’s said that this Pokémon’s beautiful blue wings are made of ice. Articuno flies over snowy mountains, its long tail fluttering along behind it.'),
  -- galarian-articuno in sword
  (144, 14401, 31, 'Its feather-like blades are composed of psychic energy and can shear through thick iron sheets as if they were paper.'),
  -- zapdos in sword
  (145, 14500, 31, 'This Pokémon has complete control over electricity. There are tales of Zapdos nesting in the dark depths of pitch-black thunderclouds.'),
  -- galarian-zapdos in sword
  (145, 14501, 31, 'When its feathers rub together, they produce a crackling sound like the zapping of electricity. That’s why this Pokémon is called Zapdos.'),
  -- moltres in sword
  (146, 14600, 31, 'It’s one of the legendary bird Pokémon. When Moltres flaps its flaming wings, they glimmer with a dazzling red glow.'),
  -- galarian-moltres in sword
  (146, 14601, 31, 'This Pokémon’s sinister, flame-like aura will consume the spirit of any creature it hits. Victims become burned-out shadows of themselves.'),
  -- dratini in sword
  (147, 14700, 31, 'Dratini dwells near bodies of rapidly flowing water, such as the plunge pools of waterfalls. As it grows, Dratini will shed its skin many times.'),
  -- dragonair in sword
  (148, 14800, 31, 'This Pokémon lives in pristine oceans and lakes. It can control the weather, and it uses this power to fly into the sky, riding on the wind.'),
  -- dragonite in sword
  (149, 14900, 31, 'It’s a kindhearted Pokémon. If it spots a drowning person or Pokémon, Dragonite simply must help them.'),
  -- hoothoot in sword
  (163, 16300, 31, 'It always stands on one foot. It changes feet so fast, the movement can rarely be seen.'),
  -- noctowl in sword
  (164, 16400, 31, 'Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.'),
  -- crobat in sword
  (169, 16900, 31, 'Both of its legs have turned into wings. Without a sound, Crobat flies swiftly toward its prey and sinks its fangs into the nape of its target’s neck.'),
  -- chinchou in sword
  (170, 17000, 31, 'Its antennae, which evolved from a fin, have both positive and negative charges flowing through them.'),
  -- lanturn in sword
  (171, 17100, 31, 'The light it emits is so bright that it can illuminate the sea’s surface from a depth of over three miles.'),
  -- pichu in sword
  (172, 17200, 31, 'Despite its small size, it can zap even adult humans. However, if it does so, it also surprises itself.'),
  -- cleffa in sword
  (173, 17300, 31, 'According to local rumors, Cleffa are often seen in places where shooting stars have fallen.'),
  -- igglybuff in sword
  (174, 17400, 31, 'Igglybuff loves to sing. Its marshmallow-like body gives off a faint sweet smell.'),
  -- togepi in sword
  (175, 17500, 31, 'The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.'),
  -- togetic in sword
  (176, 17600, 31, 'They say that it will appear before kindhearted, caring people and shower them with happiness.'),
  -- natu in sword
  (177, 17700, 31, 'It is extremely good at climbing tree trunks and likes to eat the new sprouts on the trees.'),
  -- xatu in sword
  (178, 17800, 31, 'They say that it stays still and quiet because it is seeing both the past and future at the same time.'),
  -- bellossom in sword
  (182, 18200, 31, 'Plentiful in the tropics. When it dances, its petals rub together and make a pleasant ringing sound.'),
  -- marill in sword
  (183, 18300, 31, 'This Pokémon uses its round tail as a float. The ball of Marill’s tail is filled with nutrients that have been turned into an oil.'),
  -- azumarill in sword
  (184, 18400, 31, 'It spends most of its time in the water. On sunny days, Azumarill floats on the surface of the water and sunbathes.'),
  -- sudowoodo in sword
  (185, 18500, 31, 'If a tree branch shakes when there is no wind, it’s a Sudowoodo, not a tree. It hides from the rain.'),
  -- politoed in sword
  (186, 18600, 31, 'At nightfall, these Pokémon appear on the shores of lakes. They announce their territorial claims by letting out cries that sound like shouting.'),
  -- wooper in sword
  (194, 19400, 31, 'This Pokémon lives in cold water. It will leave the water to search for food when it gets cold outside.'),
  -- quagsire in sword
  (195, 19500, 31, 'It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.'),
  -- espeon in sword
  (196, 19600, 31, 'By reading air currents, it can predict things such as the weather or its foe’s next move.'),
  -- umbreon in sword
  (197, 19700, 31, 'When this Pokémon becomes angry, its pores secrete a poisonous sweat, which it sprays at its opponent’s eyes.'),
  -- slowking in sword
  (199, 19900, 31, 'Miraculously, this former Slowpoke’s latent intelligence was drawn out when Shellder poison raced through its brain.'),
  -- galarian-slowking in sword
  (199, 19901, 31, 'A combination of toxins and the shock of evolving has increased Shellder’s intelligence to the point that Shellder now controls Slowking.'),
  -- wobbuffet in sword
  (202, 20200, 31, 'It hates light and shock. If attacked, it inflates its body to pump up its counterstrike.'),
  -- dunsparce in sword
  (206, 20600, 31, 'This Pokémon’s tiny wings have some scientists saying that Dunsparce used to fly through the sky in ancient times.'),
  -- steelix in sword
  (208, 20800, 31, 'It is said that if an Onix lives for over 100 years, its composition changes to become diamond-like.'),
  -- qwilfish in sword
  (211, 21100, 31, 'When faced with a larger opponent, it swallows as much water as it can to match the opponent’s size.'),
  -- scizor in sword
  (212, 21200, 31, 'Bulky pincers account for one third of Scizor’s body weight. A single swing of one of these pincers will crush a boulder completely.'),
  -- shuckle in sword
  (213, 21300, 31, 'It stores berries inside its shell. To avoid attacks, it hides beneath rocks and remains completely still.'),
  -- heracross in sword
  (214, 21400, 31, 'Heracross loves sweet sap and will go looking through forests for it. The Pokémon uses its two antennae to pick up scents as it searches.'),
  -- sneasel in sword
  (215, 21500, 31, 'Its paws conceal sharp claws. If attacked, it suddenly extends the claws and startles its enemy.'),
  -- swinub in sword
  (220, 22000, 31, 'It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.'),
  -- piloswine in sword
  (221, 22100, 31, 'If it charges at an enemy, the hairs on its back stand up straight. It is very sensitive to sound.'),
  -- corsola in sword
  (222, 22200, 31, 'It will regrow any branches that break off its head. People keep particularly beautiful Corsola branches as charms to promote safe childbirth.'),
  -- galarian-corsola in sword
  (222, 22201, 31, 'Watch your step when wandering areas oceans once covered. What looks like a stone could be this Pokémon, and it will curse you if you kick it.'),
  -- remoraid in sword
  (223, 22300, 31, 'The water they shoot from their mouths can hit moving prey from more than 300 feet away.'),
  -- octillery in sword
  (224, 22400, 31, 'It has a tendency to want to be in holes. It prefers rock crags or pots and sprays ink from them before attacking.'),
  -- delibird in sword
  (225, 22500, 31, 'It carries food all day long. There are tales about lost people who were saved by the food it had.'),
  -- mantine in sword
  (226, 22600, 31, 'If it builds up enough speed swimming, it can jump out above the waves and glide for over 300 feet.'),
  -- skarmory in sword
  (227, 22700, 31, 'The pointed feathers of these Pokémon are sharper than swords. Skarmory and Corviknight fight viciously over territory.'),
  -- kingdra in sword
  (230, 23000, 31, 'With the arrival of a storm at sea, this Pokémon will show itself on the surface. When a Kingdra and a Dragonite meet, a fierce battle ensues.'),
  -- porygon2 in sword
  (233, 23300, 31, 'This is a Porygon that was updated with special data. Porygon2 develops itself by learning about many different subjects all on its own.'),
  -- tyrogue in sword
  (236, 23600, 31, 'It is always bursting with energy. To make itself stronger, it keeps on fighting even if it loses.'),
  -- hitmontop in sword
  (237, 23700, 31, 'It launches kicks while spinning. If it spins at high speed, it may bore its way into the ground.'),
  -- smoochum in sword
  (238, 23800, 31, 'If its face gets even slightly dirty, Smoochum will bathe immediately. But if its body gets dirty, Smoochum doesn’t really seem to care.'),
  -- elekid in sword
  (239, 23900, 31, 'When a storm approaches, this Pokémon gets restless. Once Elekid hears the sound of thunder, it gets full-on rowdy.'),
  -- magby in sword
  (240, 24000, 31, 'This Pokémon is still small and timid. Whenever Magby gets excited or surprised, flames leak from its mouth and its nose.'),
  -- miltank in sword
  (241, 24100, 31, 'Miltank produces highly nutritious milk, so it’s been supporting the lives of people and other Pokémon since ancient times.'),
  -- blissey in sword
  (242, 24200, 31, 'Whenever a Blissey finds a weakened Pokémon, it will share its egg and offer its care until the other Pokémon is all better.'),
  -- larvitar in sword
  (246, 24600, 31, 'Born deep underground, it comes aboveground and becomes a pupa once it has finished eating the surrounding soil.'),
  -- pupitar in sword
  (247, 24700, 31, 'Even sealed in its shell, it can move freely. Hard and fast, it has outstanding destructive power.'),
  -- tyranitar in sword
  (248, 24800, 31, 'Its body can’t be harmed by any sort of attack, so it is very eager to make challenges against enemies.'),
  -- celebi in sword
  (251, 25100, 31, 'This Pokémon has the ability to move through time. Records describing it as a forest deity can be found from many different eras.'),
  -- zigzagoon in sword
  (263, 26300, 31, 'It marks its territory by rubbing its bristly fur on trees. This variety of Zigzagoon is friendlier and calmer than the kind native to Galar.'),
  -- galarian-zigzagoon in sword
  (263, 26301, 31, 'Its restlessness has it constantly running around. If it sees another Pokémon, it will purposely run into them in order to start a fight.'),
  -- linoone in sword
  (264, 26400, 31, 'Its fur is strong and supple. Shaving brushes made with shed Linoone hairs are highly prized.'),
  -- galarian-linoone in sword
  (264, 26401, 31, 'It uses its long tongue to taunt opponents. Once the opposition is enraged, this Pokémon hurls itself at the opponent, tackling them forcefully.'),
  -- lotad in sword
  (270, 27000, 31, 'It searches about for clean water. If it does not drink water for too long, the leaf on its head wilts.'),
  -- lombre in sword
  (271, 27100, 31, 'It is nocturnal and becomes active at nightfall. It feeds on aquatic mosses that grow in the riverbed.'),
  -- ludicolo in sword
  (272, 27200, 31, 'The rhythm of bright, festive music activates Ludicolo’s cells, making it more powerful.'),
  -- seedot in sword
  (273, 27300, 31, 'If it remains still, it looks just like a real nut. It delights in surprising foraging Pokémon.'),
  -- nuzleaf in sword
  (274, 27400, 31, 'It lives deep in forests. With the leaf on its head, it makes a flute whose song makes listeners uneasy.'),
  -- shiftry in sword
  (275, 27500, 31, 'A Pokémon that was feared as a forest guardian. It can read the foe’s mind and take preemptive action.'),
  -- wingull in sword
  (278, 27800, 31, 'It makes its nest on sheer cliffs. Riding the sea breeze, it glides up into the expansive skies.'),
  -- pelipper in sword
  (279, 27900, 31, 'It is a messenger of the skies, carrying small Pokémon and eggs to safety in its bill.'),
  -- ralts in sword
  (280, 28000, 31, 'It is highly attuned to the emotions of people and Pokémon. It hides if it senses hostility.'),
  -- kirlia in sword
  (281, 28100, 31, 'If its Trainer becomes happy, it overflows with energy, dancing joyously while spinning about.'),
  -- gardevoir in sword
  (282, 28200, 31, 'It has the power to predict the future. Its power peaks when it is protecting its Trainer.'),
  -- nincada in sword
  (290, 29000, 31, 'Because it lived almost entirely underground, it is nearly blind. It uses its antennae instead.'),
  -- ninjask in sword
  (291, 29100, 31, 'Its cry leaves a lasting headache if heard for too long. It moves so quickly that it is almost invisible.'),
  -- shedinja in sword
  (292, 29200, 31, 'A most peculiar Pokémon that somehow appears in a Poké Ball when a Nincada evolves.'),
  -- whismur in sword
  (293, 29300, 31, 'The cry of a Whismur is over 100 decibels. If you’re close to a Whismur when it lets out a cry, you’ll be stuck with an all-day headache.'),
  -- loudred in sword
  (294, 29400, 31, 'Loudred’s ears serve as speakers, and they can put out sound waves powerful enough to blow away a house.'),
  -- exploud in sword
  (295, 29500, 31, 'In the past, people would use the loud voices of these Pokémon as a means of communication between distant cities.'),
  -- azurill in sword
  (298, 29800, 31, 'The ball on Azurill’s tail bounces like a rubber ball, and it’s full of the nutrients the Pokémon needs to grow.'),
  -- sableye in sword
  (302, 30200, 31, 'This Pokémon is feared. When its gemstone eyes begin to glow with a sinister shine, it’s believed that Sableye will steal people’s spirits away.'),
  -- mawile in sword
  (303, 30300, 31, 'It uses its docile-looking face to lull foes into complacency, then bites with its huge, relentless jaws.'),
  -- aron in sword
  (304, 30400, 31, 'It eats iron ore—and sometimes railroad tracks— to build up the steel armor that protects its body.'),
  -- lairon in sword
  (305, 30500, 31, 'Lairon live in mountains brimming with spring water and iron ore, so these Pokémon often came into conflict with humans in the past.'),
  -- aggron in sword
  (306, 30600, 31, 'Aggron has a horn sharp enough to perforate thick iron sheets. It brings down its opponents by ramming into them horn first.'),
  -- electrike in sword
  (309, 30900, 31, 'It stores static electricity in its fur for discharging. It gives off sparks if a storm approaches.'),
  -- manectric in sword
  (310, 31000, 31, 'It stimulates its own muscles with electricity, so it can move quickly. It eases its soreness with electricity, too, so it can recover quickly as well.'),
  -- roselia in sword
  (315, 31500, 31, 'Its flowers give off a relaxing fragrance. The stronger its aroma, the healthier the Roselia is.'),
  -- carvanha in sword
  (318, 31800, 31, 'It won’t attack while it’s alone—not even if it spots prey. Instead, it waits for other Carvanha to join it, and then the Pokémon attack as a group.'),
  -- sharpedo in sword
  (319, 31900, 31, 'As soon as it catches the scent of prey, Sharpedo will jet seawater from its backside, hurtling toward the target to attack at 75 mph.'),
  -- wailmer in sword
  (320, 32000, 31, 'It shows off by spraying jets of seawater from the nostrils above its eyes. It eats a solid ton of Wishiwashi every day.'),
  -- wailord in sword
  (321, 32100, 31, 'It can sometimes knock out opponents with the shock created by breaching and crashing its big body onto the water.'),
  -- torkoal in sword
  (324, 32400, 31, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- trapinch in sword
  (328, 32800, 31, 'Its nest is a sloped, bowl-like pit in the desert. Once something has fallen in, there is no escape.'),
  -- vibrava in sword
  (329, 32900, 31, 'The ultrasonic waves it generates by rubbing its two wings together cause severe headaches.'),
  -- flygon in sword
  (330, 33000, 31, 'This Pokémon hides in the heart of sandstorms it creates and seldom appears where people can see it.'),
  -- swablu in sword
  (333, 33300, 31, 'Its cottony wings are full of air, making them light and fluffy to the touch. Swablu takes diligent care of its wings.'),
  -- altaria in sword
  (334, 33400, 31, 'As it flies in a calm and relaxed manner, Altaria performs a humming song that would enrapture any audience.'),
  -- lunatone in sword
  (337, 33700, 31, 'The phase of the moon apparently has some effect on its power. It’s active on the night of a full moon.'),
  -- solrock in sword
  (338, 33800, 31, 'When it rotates itself, it gives off light similar to the sun, thus blinding its foes.'),
  -- barboach in sword
  (339, 33900, 31, 'Its slimy body is hard to grasp. In one region, it is said to have been born from hardened mud.'),
  -- whiscash in sword
  (340, 34000, 31, 'It makes its nest at the bottom of swamps. It will eat anything—if it is alive, Whiscash will eat it.'),
  -- corphish in sword
  (341, 34100, 31, 'No matter how dirty the water in the river, it will adapt and thrive. It has a strong will to survive.'),
  -- crawdaunt in sword
  (342, 34200, 31, 'A rough customer that wildly flails its giant claws. It is said to be extremely hard to raise.'),
  -- baltoy in sword
  (343, 34300, 31, 'It moves while spinning around on its single foot. Some Baltoy have been seen spinning on their heads.'),
  -- claydol in sword
  (344, 34400, 31, 'This mysterious Pokémon started life as an ancient clay figurine made over 20,000 years ago.'),
  -- lileep in sword
  (345, 34500, 31, 'This Pokémon was restored from a fossil. Lileep once lived in warm seas that existed approximately 100,000,000 years ago.'),
  -- cradily in sword
  (346, 34600, 31, 'It has short legs and can’t walk very fast, but its neck and tentacles can extend to over three times their usual length to nab distant prey.'),
  -- anorith in sword
  (347, 34700, 31, 'This Pokémon was restored from a fossil. Anorith lived in the ocean about 100,000,000 years ago, hunting with its pair of claws.'),
  -- armaldo in sword
  (348, 34800, 31, 'After evolution, this Pokémon emerged onto land. Its lower body has become stronger, and blows from its tail are devastating.'),
  -- feebas in sword
  (349, 34900, 31, 'Although unattractive and unpopular, this Pokémon’s marvelous vitality has made it a subject of research.'),
  -- milotic in sword
  (350, 35000, 31, 'Milotic has provided inspiration to many artists. It has even been referred to as the most beautiful Pokémon of all.'),
  -- duskull in sword
  (355, 35500, 31, 'If it finds bad children who won’t listen to their parents, it will spirit them away—or so it’s said.'),
  -- dusclops in sword
  (356, 35600, 31, 'Its body is entirely hollow. When it opens its mouth, it sucks everything in as if it were a black hole.'),
  -- absol in sword
  (359, 35900, 31, 'Swift as the wind, Absol races through fields and mountains. Its curved, bow-like horn is acutely sensitive to the warning signs of natural disasters.'),
  -- wynaut in sword
  (360, 36000, 31, 'It tends to move in a pack. Individuals squash against one another to toughen their spirits.'),
  -- snorunt in sword
  (361, 36100, 31, 'It’s said that if they are seen at midnight, they’ll cause heavy snow. They eat snow and ice to survive.'),
  -- glalie in sword
  (362, 36200, 31, 'It has a body of ice that won’t melt, even with fire. It can instantly freeze moisture in the atmosphere.'),
  -- spheal in sword
  (363, 36300, 31, 'This Pokémon’s body is covered in blubber and impressively round. It’s faster for Spheal to roll around than walk.'),
  -- sealeo in sword
  (364, 36400, 31, 'Sealeo live on top of drift ice. They go swimming when they’re on the hunt, seeking out their prey by scent.'),
  -- walrein in sword
  (365, 36500, 31, 'Walrein form herds of 20 to 30 individuals. When a threat appears, the herd’s leader will protect the group with its life.'),
  -- relicanth in sword
  (369, 36900, 31, 'Rock-hard scales and oil-filled swim bladders allow this Pokémon to survive the intense water pressure of the deep sea.'),
  -- bagon in sword
  (371, 37100, 31, 'Bagon jumps off cliffs every day, trying to grow stronger so that someday it will be able to fly.'),
  -- shelgon in sword
  (372, 37200, 31, 'This Pokémon has covered its body in a hard shell that has the same composition as bone. Shelgon stores energy for evolution.'),
  -- salamence in sword
  (373, 37300, 31, 'Salamence is an unusual Pokémon in that it was able to evolve a body with wings just by constantly wishing to be able to fly.'),
  -- beldum in sword
  (374, 37400, 31, 'From its rear, Beldum emits a magnetic force that rapidly pulls opponents in. They get skewered on Beldum’s sharp claws.'),
  -- metang in sword
  (375, 37500, 31, 'Two Beldum have become stuck together via their own magnetic forces. With two brains, the resulting Metang has doubled psychic powers.'),
  -- metagross in sword
  (376, 37600, 31, 'Because the magnetic powers of these Pokémon get stronger in freezing temperatures, Metagross living on snowy mountains are full of energy.'),
  -- regirock in sword
  (377, 37700, 31, 'Every bit of Regirock’s body is made of stone. As parts of its body erode, this Pokémon sticks rocks to itself to repair what’s been lost.'),
  -- regice in sword
  (378, 37800, 31, 'With cold air that can reach temperatures as low as −328 degrees Fahrenheit, Regice instantly freezes any creature that approaches it.'),
  -- registeel in sword
  (379, 37900, 31, 'Registeel’s body is made of a strange material that is flexible enough to stretch and shrink but also more durable than any metal.'),
  -- jirachi in sword
  (385, 38500, 31, 'Once every 1,000 years, the singing of a pure voice will rouse this Pokémon from its near- perpetual slumber. It wakes for only seven days.'),
  -- shinx in sword
  (403, 40300, 31, 'This Pokémon generates electricity by contracting its muscles. Excited trembling is a sign that Shinx is generating a tremendous amount of electricity.'),
  -- luxio in sword
  (404, 40400, 31, 'By joining its tail with that of another Luxio, this Pokémon can receive some of the other Luxio’s electricity and power up its own electric blasts.'),
  -- luxray in sword
  (405, 40500, 31, 'Luxray can see through solid objects. It will instantly spot prey trying to hide behind walls, even if the walls are thick.'),
  -- budew in sword
  (406, 40600, 31, 'The pollen it releases contains poison. If this Pokémon is raised on clean water, the poison’s toxicity is increased.'),
  -- roserade in sword
  (407, 40700, 31, 'After captivating opponents with its sweet scent, it lashes them with its thorny whips.'),
  -- combee in sword
  (415, 41500, 31, 'The members of the trio spend all their time together. Each one has a slightly different taste in nectar.'),
  -- vespiquen in sword
  (416, 41600, 31, 'It skillfully commands its grubs in battles with its enemies. The grubs are willing to risk their lives to defend Vespiquen.'),
  -- cherubi in sword
  (420, 42000, 31, 'It nimbly dashes about to avoid getting pecked by bird Pokémon that would love to make off with its small, nutrient-rich storage ball.'),
  -- cherrim in sword
  (421, 42100, 31, 'As a bud, it barely moves. It sits still, placidly waiting for sunlight to appear.'),
  -- shellos in sword
  (422, 42200, 31, 'This Pokémon’s habitat shapes its physique. According to some theories, life in warm ocean waters causes this variation to develop.'),
  -- shellos-east in sword
  (422, 42201, 31, 'There’s speculation that its appearance is determined by what it eats, but the truth remains elusive.'),
  -- gastrodon in sword
  (423, 42300, 31, 'Its search for food sometimes leads it onto land, where it leaves behind a sticky trail of slime as it passes through.'),
  -- gastrodon-east in sword
  (423, 42301, 31, 'It secretes a purple fluid to deter enemies. This fluid isn’t poisonous—instead, it’s super sticky, and once it sticks, it’s very hard to unstick.'),
  -- drifloon in sword
  (425, 42500, 31, 'Perhaps seeking company, it approaches children. However, it often quickly runs away again when the children play too roughly with it.'),
  -- drifblim in sword
  (426, 42600, 31, 'Some say this Pokémon is a collection of souls burdened with regrets, silently drifting through the dusk.'),
  -- buneary in sword
  (427, 42700, 31, 'If both of Buneary’s ears are rolled up, something is wrong with its body or mind. It’s a sure sign the Pokémon is in need of care.'),
  -- lopunny in sword
  (428, 42800, 31, 'Lopunny is constantly monitoring its surroundings. If danger approaches, this Pokémon responds with superdestructive kicks.'),
  -- stunky in sword
  (434, 43400, 31, 'From its rear, it sprays a foul-smelling liquid at opponents. It aims for their faces, and it can hit them from over 16 feet away.'),
  -- skuntank in sword
  (435, 43500, 31, 'In its belly, it reserves stinky fluid that it shoots from its tail during battle. As this Pokémon’s diet varies, so does the stench of its fluid.'),
  -- bronzor in sword
  (436, 43600, 31, 'It appears in ancient ruins. The pattern on its body doesn’t come from any culture in the Galar region, so it remains shrouded in mystery.'),
  -- bronzong in sword
  (437, 43700, 31, 'Some believe it to be a deity that summons rain clouds. When angered, it lets out a warning cry that rings out like the tolling of a bell.'),
  -- bonsly in sword
  (438, 43800, 31, 'It expels both sweat and tears from its eyes. The sweat is a little salty, while the tears have a slight bitterness.'),
  -- mime-jr in sword
  (439, 43900, 31, 'It mimics everyone it sees, but it puts extra effort into copying the graceful dance steps of Mr. Rime as practice.'),
  -- happiny in sword
  (440, 44000, 31, 'Mimicking Chansey, Happiny will place an egg- shaped stone in its belly pouch. Happiny will treasure this stone.'),
  -- spiritomb in sword
  (442, 44200, 31, 'Exactly 108 spirits gathered to become this Pokémon. Apparently there are some ill-natured spirits in the mix.'),
  -- gible in sword
  (443, 44300, 31, 'Gible prefers to stay in narrow holes in the sides of caves heated by geothermal energy. This way, Gible can stay warm even during a blizzard.'),
  -- gabite in sword
  (444, 44400, 31, 'This Pokémon emits ultrasonic waves from a protrusion on either side of its head to probe pitch-dark caves.'),
  -- garchomp in sword
  (445, 44500, 31, 'Garchomp makes its home in volcanic mountains. It flies through the sky as fast as a jet airplane, hunting down as much prey as it can.'),
  -- munchlax in sword
  (446, 44600, 31, 'Stuffing itself with vast amounts of food is its only concern. Whether the food is rotten or fresh, yummy or tasteless—it does not care.'),
  -- riolu in sword
  (447, 44700, 31, 'It’s exceedingly energetic, with enough stamina to keep running all through the night. Taking it for walks can be a challenging experience.'),
  -- lucario in sword
  (448, 44800, 31, 'It controls waves known as auras, which are powerful enough to pulverize huge rocks. It uses these waves to take down its prey.'),
  -- hippopotas in sword
  (449, 44900, 31, 'It moves through the sands with its mouth open, swallowing sand along with its prey. It gets rid of the sand by spouting it from its nose.'),
  -- hippowdon in sword
  (450, 45000, 31, 'Stones can get stuck in the ports on their bodies. Dwebble help dislodge such stones, so Hippowdon look after these Pokémon.'),
  -- skorupi in sword
  (451, 45100, 31, 'After burrowing into the sand, it waits patiently for prey to come near. This Pokémon and Sizzlipede share common descent.'),
  -- drapion in sword
  (452, 45200, 31, 'Its poison is potent, but it rarely sees use. This Pokémon prefers to use physical force instead, going on rampages with its car-crushing strength.'),
  -- croagunk in sword
  (453, 45300, 31, 'It makes frightening noises with its poison-filled cheek sacs. When opponents flinch, Croagunk hits them with a poison jab.'),
  -- toxicroak in sword
  (454, 45400, 31, 'It bounces toward opponents and gouges them with poisonous claws. No more than a scratch is needed to knock out its adversaries.'),
  -- mantyke in sword
  (458, 45800, 31, 'Mantyke living in Galar seem to be somewhat sluggish. The colder waters of the seas in this region may be the cause.'),
  -- snover in sword
  (459, 45900, 31, 'It lives on snowy mountains. It sinks its legs into the snow to absorb water and keep its own temperature down.'),
  -- abomasnow in sword
  (460, 46000, 31, 'If it sees any packs of Darumaka going after Snover, it chases them off, swinging its sizable arms like hammers.'),
  -- weavile in sword
  (461, 46100, 31, 'They attack their quarry in packs. Prey as large as Mamoswine easily fall to the teamwork of a group of Weavile.'),
  -- magnezone in sword
  (462, 46200, 31, 'Some say that Magnezone receives signals from space via the antenna on its head and that it’s being controlled by some mysterious being.'),
  -- lickilicky in sword
  (463, 46300, 31, 'Lickilicky’s strange tongue can stretch to many times the length of its body. No one has figured out how Lickilicky’s tongue can stretch so far.'),
  -- rhyperior in sword
  (464, 46400, 31, 'It can load up to three projectiles per arm into the holes in its hands. What launches out of those holes could be either rocks or Roggenrola.'),
  -- tangrowth in sword
  (465, 46500, 31, 'Tangrowth has two arms that it can extend as it pleases. Recent research has shown that these arms are, in fact, bundles of vines.'),
  -- electivire in sword
  (466, 46600, 31, 'The amount of electrical energy this Pokémon produces is proportional to the rate of its pulse. The voltage jumps while Electivire is battling.'),
  -- magmortar in sword
  (467, 46700, 31, 'When Magmortar inhales deeply, the fire burning in its belly intensifies, rising in temperature to over 3,600 degrees Fahrenheit.'),
  -- togekiss in sword
  (468, 46800, 31, 'These Pokémon are never seen anywhere near conflict or turmoil. In recent times, they’ve hardly been seen at all.'),
  -- leafeon in sword
  (470, 47000, 31, 'Galarians favor the distinctive aroma that drifts from this Pokémon’s leaves. There’s a popular perfume made using that scent.'),
  -- glaceon in sword
  (471, 47100, 31, 'Any who become captivated by the beauty of the snowfall that Glaceon creates will be frozen before they know it.'),
  -- mamoswine in sword
  (473, 47300, 31, 'This Pokémon can be spotted in wall paintings from as far back as 10,000 years ago. For a while, it was thought to have gone extinct.'),
  -- porygon-z in sword
  (474, 47400, 31, 'Porygon-Z had a program installed to allow it to move between dimensions, but the program also caused instability in Porygon-Z’s behavior.'),
  -- gallade in sword
  (475, 47500, 31, 'True to its honorable-warrior image, it uses the blades on its elbows only in defense of something or someone.'),
  -- dusknoir in sword
  (477, 47700, 31, 'At the bidding of transmissions from the spirit world, it steals people and Pokémon away. No one knows whether it has a will of its own.'),
  -- froslass in sword
  (478, 47800, 31, 'After a woman met her end on a snowy mountain, her regrets lingered on. From them, this Pokémon was born. Its favorite food is frozen souls.'),
  -- rotom in sword
  (479, 47900, 31, 'One boy’s invention led to the development of many different machines that take advantage of Rotom’s unique capabilities.'),
  -- rotom-heat in sword
  (479, 47901, 31, 'This Rotom has possessed a convection microwave oven that uses a special motor. It also has a flair for manipulating flames.'),
  -- rotom-wash in sword
  (479, 47902, 31, 'This form of Rotom enjoys coming up with water-based pranks. Be careful with it if you don’t want your room flooded.'),
  -- rotom-frost in sword
  (479, 47903, 31, 'Rotom assumes this form when it takes over a refrigerator powered by a special motor. It battles by spewing cold air.'),
  -- rotom-fan in sword
  (479, 47904, 31, 'In this form, Rotom applies its new power over wind to its love of pranks. It will happily blow away any important documents it can find.'),
  -- rotom-mow in sword
  (479, 47905, 31, 'This is Rotom after it’s seized control of a lawn mower that has a special motor. As it mows down grass, it scatters the clippings everywhere.'),
  -- regigigas in sword
  (486, 48600, 31, 'All over the world, there are legends that tell of Regigigas creating other Pokémon in its own image.'),
  -- lillipup in sword
  (506, 50600, 31, 'This Pokémon is courageous but also cautious. It uses the soft fur covering its face to collect information about its surroundings.'),
  -- herdier in sword
  (507, 50700, 31, 'Herdier is a very smart and friendly Pokémon. So much so that there’s a theory that Herdier was the first Pokémon to partner with people.'),
  -- stoutland in sword
  (508, 50800, 31, 'These Pokémon seem to enjoy living with humans. Even a Stoutland caught in the wild will warm up to people in about three days.'),
  -- purrloin in sword
  (509, 50900, 31, 'It steals things from people just to amuse itself with their frustration. A rivalry exists between this Pokémon and Nickit.'),
  -- liepard in sword
  (510, 51000, 31, 'Don’t be fooled by its gorgeous fur and elegant figure. This is a moody and vicious Pokémon.'),
  -- munna in sword
  (517, 51700, 31, 'Late at night, it appears beside people’s pillows. As it feeds on dreams, the patterns on its body give off a faint glow.'),
  -- musharna in sword
  (518, 51800, 31, 'When dark mists emanate from its body, don’t get too near. If you do, your nightmares will become reality.'),
  -- pidove in sword
  (519, 51900, 31, 'Where people go, these Pokémon follow. If you’re scattering food for them, be careful— several hundred of them can gather at once.'),
  -- tranquill in sword
  (520, 52000, 31, 'It can fly moderately quickly. No matter how far it travels, it can always find its way back to its master and its nest.'),
  -- unfezant in sword
  (521, 52100, 31, 'Unfezant are exceptional fliers. The females are known for their stamina, while the males outclass them in terms of speed.'),
  -- roggenrola in sword
  (524, 52400, 31, 'It’s as hard as steel, but apparently a long soak in water will cause it to soften a bit.'),
  -- boldore in sword
  (525, 52500, 31, 'If you see its orange crystals start to glow, be wary. It’s about to fire off bursts of energy.'),
  -- gigalith in sword
  (526, 52600, 31, 'This hardy Pokémon can often be found on construction sites and in mines, working alongside people and Copperajah.'),
  -- woobat in sword
  (527, 52700, 31, 'While inside a cave, if you look up and see lots of heart-shaped marks lining the walls, it’s evidence that Woobat live there.'),
  -- swoobat in sword
  (528, 52800, 31, 'Emitting powerful sound waves tires it out. Afterward, it won’t be able to fly for a little while.'),
  -- drilbur in sword
  (529, 52900, 31, 'It brings its claws together and whirls around at high speed before rushing toward its prey.'),
  -- excadrill in sword
  (530, 53000, 31, 'It’s not uncommon for tunnels that appear to have formed naturally to actually be a result of Excadrill’s rampant digging.'),
  -- audino in sword
  (531, 53100, 31, 'Audino’s sense of hearing is superb. Not even a pebble rolling along over a mile away will escape Audino’s ears.'),
  -- timburr in sword
  (532, 53200, 31, 'It loves helping out with construction projects. It loves it so much that if rain causes work to halt, it swings its log around and throws a tantrum.'),
  -- gurdurr in sword
  (533, 53300, 31, 'It shows off its muscles to Machoke and other Gurdurr. If it fails to measure up to the other Pokémon, it lies low for a little while.'),
  -- conkeldurr in sword
  (534, 53400, 31, 'Concrete mixed by Conkeldurr is much more durable than normal concrete, even when the compositions of the two materials are the same.'),
  -- tympole in sword
  (535, 53500, 31, 'Graceful ripples running across the water’s surface are a sure sign that Tympole are singing in high-pitched voices below.'),
  -- palpitoad in sword
  (536, 53600, 31, 'It weakens its prey with sound waves intense enough to cause headaches, then entangles them with its sticky tongue.'),
  -- seismitoad in sword
  (537, 53700, 31, 'The vibrating of the bumps all over its body causes earthquake-like tremors. Seismitoad and Croagunk are similar species.'),
  -- throh in sword
  (538, 53800, 31, 'It performs throwing moves with first-rate skill. Over the course of many battles, Throh’s belt grows darker as it absorbs its wearer’s sweat.'),
  -- sawk in sword
  (539, 53900, 31, 'If you see a Sawk training in the mountains in its single-minded pursuit of strength, it’s best to quietly pass by.'),
  -- venipede in sword
  (543, 54300, 31, 'Venipede and Sizzlipede are similar species, but when the two meet, a huge fight ensues.'),
  -- whirlipede in sword
  (544, 54400, 31, 'This Pokémon spins itself rapidly and charges into its opponents. Its top speed is just over 60 mph.'),
  -- scolipede in sword
  (545, 54500, 31, 'Scolipede latches on to its prey with the claws on its neck before slamming them into the ground and jabbing them with its claws’ toxic spikes.'),
  -- cottonee in sword
  (546, 54600, 31, 'It shoots cotton from its body to protect itself. If it gets caught up in hurricane-strength winds, it can get sent to the other side of the Earth.'),
  -- whimsicott in sword
  (547, 54700, 31, 'It scatters cotton all over the place as a prank. If it gets wet, it’ll become too heavy to move and have no choice but to answer for its mischief.'),
  -- petilil in sword
  (548, 54800, 31, 'Petilil appears around sources of clean water. Boiling leaves from this Pokémon’s head results in a liquid that’s sometimes used as a bug repellent.'),
  -- lilligant in sword
  (549, 54900, 31, 'It’s believed that even first-rate gardeners have a hard time getting the flower on a Lilligant’s head to bloom.'),
  -- basculin in sword
  (550, 55000, 31, 'Anglers love the fight this Pokémon puts up on the hook. And there are always more to catch— many people release them into lakes illicitly.'),
  -- basculin-blue-striped in sword
  (550, 55001, 31, 'Blue-striped Basculin used to be a common food source. They apparently have an inoffensive, light flavor.'),
  -- sandile in sword
  (551, 55100, 31, 'The desert gets cold at night, so when the sun sets, this Pokémon burrows deep into the sand and sleeps until sunrise.'),
  -- krokorok in sword
  (552, 55200, 31, 'Krokorok has specialized eyes that enable it to see in the dark. This ability lets Krokorok hunt in the dead of night without getting lost.'),
  -- krookodile in sword
  (553, 55300, 31, 'This Pokémon is known as the Bully of the Sands. Krookodile’s mighty jaws can bite through heavy plates of iron with almost no effort at all.'),
  -- darumaka in sword
  (554, 55400, 31, 'It derives its power from fire burning inside its body. If the fire dwindles, this Pokémon will immediately fall asleep.'),
  -- galarian-darumaka in sword
  (554, 55401, 31, 'It lived in snowy areas for so long that its fire sac cooled off and atrophied. It now has an organ that generates cold instead.'),
  -- darmanitan in sword
  (555, 55500, 31, 'The thick arms of this hot-blooded Pokémon can deliver punches capable of obliterating a dump truck.'),
  -- darmanitan-zen in sword
  (555, 55501, 31, 'Through meditation, it calms its raging spirit and hones its psychic powers.'),
  -- galarian-darmanitan in sword
  (555, 55502, 31, 'On days when blizzards blow through, it comes down to where people live. It stashes food in the snowball on its head, taking it home for later.'),
  -- galarian-darmanitan-zen in sword
  (555, 55503, 31, 'Anger has reignited its atrophied flame sac. This Pokémon spews fire everywhere as it rampages indiscriminately.'),
  -- maractus in sword
  (556, 55600, 31, 'With noises that could be mistaken for the rattles of maracas, it creates an upbeat rhythm, startling bird Pokémon and making them fly off in a hurry.'),
  -- dwebble in sword
  (557, 55700, 31, 'When it finds a stone appealing, it creates a hole inside it and uses it as its home. This Pokémon is the natural enemy of Roggenrola and Rolycoly.'),
  -- crustle in sword
  (558, 55800, 31, 'This highly territorial Pokémon prefers dry climates. It won’t come out of its boulder on rainy days.'),
  -- scraggy in sword
  (559, 55900, 31, 'If it locks eyes with you, watch out! Nothing and no one is safe from the reckless headbutts of this troublesome Pokémon.'),
  -- scrafty in sword
  (560, 56000, 31, 'As halfhearted as this Pokémon’s kicks may seem, they pack enough power to shatter Conkeldurr’s concrete pillars.'),
  -- sigilyph in sword
  (561, 56100, 31, 'Psychic power allows these Pokémon to fly. Some say they were the guardians of an ancient city. Others say they were the guardians’ emissaries.'),
  -- yamask in sword
  (562, 56200, 31, 'It wanders through ruins by night, carrying a mask that’s said to have been the face it had when it was still human.'),
  -- galarian-yamask in sword
  (562, 56201, 31, 'A clay slab with cursed engravings took possession of a Yamask. The slab is said to be absorbing the Yamask’s dark power.'),
  -- cofagrigus in sword
  (563, 56300, 31, 'This Pokémon has a body of sparkling gold. People say it no longer remembers that it was once human.'),
  -- tirtouga in sword
  (564, 56400, 31, 'This Pokémon inhabited ancient seas. Although it can only crawl, it still comes up onto land in search of prey.'),
  -- carracosta in sword
  (565, 56500, 31, 'Carracosta completely devours its prey—bones, shells, and all. Because of this, Carracosta’s own shell grows thick and sturdy.'),
  -- archen in sword
  (566, 56600, 31, 'This Pokémon was successfully restored from a fossil. As research suggested, Archen is unable to fly. But it’s very good at jumping.'),
  -- archeops in sword
  (567, 56700, 31, 'It needs a running start to take off. If Archeops wants to fly, it first needs to run nearly 25 mph, building speed over a course of about 2.5 miles.'),
  -- trubbish in sword
  (568, 56800, 31, 'Its favorite places are unsanitary ones. If you leave trash lying around, you could even find one of these Pokémon living in your room.'),
  -- garbodor in sword
  (569, 56900, 31, 'This Pokémon eats trash, which turns into poison inside its body. The main component of the poison depends on what sort of trash was eaten.'),
  -- zorua in sword
  (570, 57000, 31, 'Zorua is a timid Pokémon. This disposition seems to be what led to the development of Zorua’s ability to take on the forms of other creatures.'),
  -- zoroark in sword
  (571, 57100, 31, 'This Pokémon cares deeply about others of its kind, and it will conjure terrifying illusions to keep its den and pack safe.'),
  -- minccino in sword
  (572, 57200, 31, 'The way it brushes away grime with its tail can be helpful when cleaning. But its focus on spotlessness can make cleaning more of a hassle.'),
  -- cinccino in sword
  (573, 57300, 31, 'Its body secretes oil that this Pokémon spreads over its nest as a coating to protect it from dust. Cinccino won’t tolerate even a speck of the stuff.'),
  -- gothita in sword
  (574, 57400, 31, 'Though they’re still only babies, there’s psychic power stored in their ribbonlike feelers, and sometimes they use that power to fight.'),
  -- gothorita in sword
  (575, 57500, 31, 'It’s said that when stars shine in the night sky, this Pokémon will spirit away sleeping children. Some call it the Witch of Punishment.'),
  -- gothitelle in sword
  (576, 57600, 31, 'It has tremendous psychic power, but it dislikes conflict. It’s also able to predict the future based on the movement of the stars.'),
  -- solosis in sword
  (577, 57700, 31, 'It communicates with others telepathically. Its body is encapsulated in liquid, but if it takes a heavy blow, the liquid will leak out.'),
  -- duosion in sword
  (578, 57800, 31, 'Its psychic power can supposedly cover a range of more than half a mile—but only if its two brains can agree with each other.'),
  -- reuniclus in sword
  (579, 57900, 31, 'While it could use its psychic abilities in battle, this Pokémon prefers to swing its powerful arms around to beat opponents into submission.'),
  -- vanillite in sword
  (582, 58200, 31, 'Unable to survive in hot areas, it makes itself comfortable by breathing out air cold enough to cause snow. It burrows into the snow to sleep.'),
  -- vanillish in sword
  (583, 58300, 31, 'By drinking pure water, it grows its icy body. This Pokémon can be hard to find on days with warm, sunny weather.'),
  -- vanilluxe in sword
  (584, 58400, 31, 'When its anger reaches a breaking point, this Pokémon unleashes a fierce blizzard that freezes every creature around it, be they friend or foe.'),
  -- emolga in sword
  (587, 58700, 31, 'As Emolga flutters through the air, it crackles with electricity. This Pokémon is cute, but it can cause a lot of trouble.'),
  -- karrablast in sword
  (588, 58800, 31, 'Its strange physiology reacts to electrical energy in interesting ways. The presence of a Shelmet will cause this Pokémon to evolve.'),
  -- escavalier in sword
  (589, 58900, 31, 'They use shells they’ve stolen from Shelmet to arm and protect themselves. They’re very popular Pokémon in the Galar region.'),
  -- foongus in sword
  (590, 59000, 31, 'No one knows what the Poké Ball–like pattern on Foongus means or why Foongus has it.'),
  -- amoonguss in sword
  (591, 59100, 31, 'This Pokémon puffs poisonous spores at its foes. If the spores aren’t washed off quickly, they’ll grow into mushrooms wherever they land.'),
  -- frillish in sword
  (592, 59200, 31, 'It envelops its prey in its veillike arms and draws it down to the deeps, five miles below the ocean’s surface.'),
  -- jellicent in sword
  (593, 59300, 31, 'Most of this Pokémon’s body composition is identical to sea water. It makes sunken ships its lair.'),
  -- joltik in sword
  (595, 59500, 31, 'Joltik can be found clinging to other Pokémon. It’s soaking up static electricity because it can’t produce a charge on its own.'),
  -- galvantula in sword
  (596, 59600, 31, 'It launches electrified fur from its abdomen as its means of attack. Opponents hit by the fur could be in for three full days and nights of paralysis.'),
  -- ferroseed in sword
  (597, 59700, 31, 'It defends itself by launching spikes, but its aim isn’t very good at first. Only after a lot of practice will it improve.'),
  -- ferrothorn in sword
  (598, 59800, 31, 'This Pokémon scrapes its spikes across rocks, and then uses the tips of its feelers to absorb the nutrients it finds within the stone.'),
  -- klink in sword
  (599, 59900, 31, 'The two minigears that compose this Pokémon are closer than twins. They mesh well only with each other.'),
  -- klang in sword
  (600, 60000, 31, 'When Klang goes all out, the minigear links up perfectly with the outer part of the big gear, and this Pokémon’s rotation speed increases sharply.'),
  -- klinklang in sword
  (601, 60100, 31, 'From its spikes, it launches powerful blasts of electricity. Its red core contains an enormous amount of energy.'),
  -- elgyem in sword
  (605, 60500, 31, 'If this Pokémon stands near a TV, strange scenery will appear on the screen. That scenery is said to be from its home.'),
  -- beheeyem in sword
  (606, 60600, 31, 'Whenever a Beheeyem visits a farm, a Dubwool mysteriously disappears.'),
  -- litwick in sword
  (607, 60700, 31, 'The flame on its head keeps its body slightly warm. This Pokémon takes lost children by the hand to guide them to the spirit world.'),
  -- lampent in sword
  (608, 60800, 31, 'This Pokémon appears just before someone passes away, so it’s feared as an emissary of death.'),
  -- chandelure in sword
  (609, 60900, 31, 'This Pokémon haunts dilapidated mansions. It sways its arms to hypnotize opponents with the ominous dancing of its flames.'),
  -- axew in sword
  (610, 61000, 31, 'These Pokémon nest in the ground and use their tusks to crush hard berries. Crushing berries is also how they test each other’s strength.'),
  -- fraxure in sword
  (611, 61100, 31, 'After battle, this Pokémon carefully sharpens its tusks on river rocks. It needs to take care of its tusks—if one breaks, it will never grow back.'),
  -- haxorus in sword
  (612, 61200, 31, 'Its resilient tusks are its pride and joy. It licks up dirt to take in the minerals it needs to keep its tusks in top condition.'),
  -- cubchoo in sword
  (613, 61300, 31, 'When this Pokémon is in good health, its snot becomes thicker and stickier. It will smear its snot on anyone it doesn’t like.'),
  -- beartic in sword
  (614, 61400, 31, 'It swims through frigid seas, searching for prey. From its frozen breath, it forms icy fangs that are harder than steel.'),
  -- cryogonal in sword
  (615, 61500, 31, 'With its icy chains, Cryogonal freezes those it encounters. It then takes its victims away to somewhere unknown.'),
  -- shelmet in sword
  (616, 61600, 31, 'When attacked, it tightly shuts the lid of its shell. This reaction fails to protect it from Karrablast, however, because they can still get into the shell.'),
  -- accelgor in sword
  (617, 61700, 31, 'It moves with blinding speed and lobs poison at foes. Featuring Accelgor as a main character is a surefire way to make a movie or comic popular.'),
  -- stunfisk in sword
  (618, 61800, 31, 'Thanks to bacteria that lived in the mud flats with it, this Pokémon developed the organs it uses to generate electricity.'),
  -- galarian-stunfisk in sword
  (618, 61801, 31, 'Living in mud with a high iron content has given it a strong steel body.'),
  -- mienfoo in sword
  (619, 61900, 31, 'In one minute, a well-trained Mienfoo can chop with its arms more than 100 times.'),
  -- mienshao in sword
  (620, 62000, 31, 'When Mienshao comes across a truly challenging opponent, it will lighten itself by biting off the fur on its arms.'),
  -- druddigon in sword
  (621, 62100, 31, 'Druddigon lives in caves, but it never skips sunbathing—it won’t be able to move if its body gets too cold.'),
  -- golett in sword
  (622, 62200, 31, 'They were sculpted from clay in ancient times. No one knows why, but some of them are driven to continually line up boulders.'),
  -- golurk in sword
  (623, 62300, 31, 'Artillery platforms built into the walls of ancient castles served as perches from which Golurk could fire energy beams.'),
  -- pawniard in sword
  (624, 62400, 31, 'It uses river stones to maintain the cutting edges of the blades covering its body. These sharpened blades allow it to bring down opponents.'),
  -- bisharp in sword
  (625, 62500, 31, 'It’s accompanied by a large retinue of Pawniard. Bisharp keeps a keen eye on its minions, ensuring none of them even think of double-crossing it.'),
  -- bouffalant in sword
  (626, 62600, 31, 'These Pokémon can crush a car with no more than a headbutt. Bouffalant with more hair on their heads hold higher positions within the herd.'),
  -- rufflet in sword
  (627, 62700, 31, 'If it spies a strong Pokémon, Rufflet can’t resist challenging it to a battle. But if Rufflet loses, it starts bawling.'),
  -- braviary in sword
  (628, 62800, 31, 'Known for its bravery and pride, this majestic Pokémon is often seen as a motif for various kinds of emblems.'),
  -- vullaby in sword
  (629, 62900, 31, 'It wears a bone to protect its rear. It often squabbles with others of its kind over particularly comfy bones.'),
  -- mandibuzz in sword
  (630, 63000, 31, 'Although it’s a bit of a ruffian, this Pokémon will take lost Vullaby under its wing and care for them till they’re ready to leave the nest.'),
  -- heatmor in sword
  (631, 63100, 31, 'There’s a hole in its tail that allows it to draw in the air it needs to keep its fire burning. If the hole gets blocked, this Pokémon will fall ill.'),
  -- durant in sword
  (632, 63200, 31, 'They lay their eggs deep inside their nests. When attacked by Heatmor, they retaliate using their massive mandibles.'),
  -- deino in sword
  (633, 63300, 31, 'When it encounters something, its first urge is usually to bite it. If it likes what it tastes, it will commit the associated scent to memory.'),
  -- zweilous in sword
  (634, 63400, 31, 'While hunting for prey, Zweilous wanders its territory, its two heads often bickering over which way to go.'),
  -- hydreigon in sword
  (635, 63500, 31, 'There are a slew of stories about villages that were destroyed by Hydreigon. It bites anything that moves.'),
  -- larvesta in sword
  (636, 63600, 31, 'The people of ancient times believed that Larvesta fell from the sun.'),
  -- volcarona in sword
  (637, 63700, 31, 'Volcarona scatters burning scales. Some say it does this to start fires. Others say it’s trying to rescue those that suffer in the cold.'),
  -- cobalion in sword
  (638, 63800, 31, 'This Pokémon appears in a legend alongside Terrakion and Virizion, fighting against humans in defense of the Unova region’s Pokémon.'),
  -- terrakion in sword
  (639, 63900, 31, 'It has phenomenal power. It will mercilessly crush anyone or anything that bullies small Pokémon.'),
  -- virizion in sword
  (640, 64000, 31, 'A legend tells of this Pokémon working together with Cobalion and Terrakion to protect the Pokémon of the Unova region.'),
  -- reshiram in sword
  (643, 64300, 31, 'Flames spew from its tail as it flies through the sky like a jet airplane. It’s said that this Pokémon will scorch the world.'),
  -- zekrom in sword
  (644, 64400, 31, 'When the interior part of its tail spins like a motor, Zekrom can generate many bolts of lightning to blast its surroundings.'),
  -- kyurem in sword
  (646, 64600, 31, 'Dwelling within it is a power even greater than that of Reshiram or Zekrom, but the extreme cold keeps that power bound.'),
  -- kyurem-white in sword
  (646, 64601, 31, 'The sameness of Reshiram’s and Kyurem’s genes allowed Kyurem to absorb Reshiram. Kyurem can now use the power of both fire and ice.'),
  -- kyurem-black in sword
  (646, 64602, 31, 'It’s said that this Pokémon battles in order to protect the ideal world that will exist in the future for people and Pokémon.'),
  -- keldeo in sword
  (647, 64700, 31, 'Cobalion, Terrakion, and Virizion taught this Pokémon how to fight. It dashes across the world, seeking more opportunities to further its training.'),
  -- keldeo-resolute in sword
  (647, 64701, 31, 'Keldeo has strengthened its resolve for battle, filling its body with power and changing its form.'),
  -- bunnelby in sword
  (659, 65900, 31, 'It excels at digging holes. Using its ears, it can dig a nest 33 feet deep in one night.'),
  -- diggersby in sword
  (660, 66000, 31, 'With power equal to an excavator, it can dig through dense bedrock. It’s a huge help during tunnel construction.'),
  -- fletchling in sword
  (661, 66100, 31, 'Its melodious cries are actually warnings. Fletchling will mercilessly peck at anything that enters its territory.'),
  -- fletchinder in sword
  (662, 66200, 31, 'Fletchinder launches embers into the den of its prey. When the prey comes leaping out, Fletchinder’s sharp talons finish it off.'),
  -- talonflame in sword
  (663, 66300, 31, 'Talonflame mainly preys upon other bird Pokémon. To intimidate opponents, it sends embers spewing from gaps between its feathers.'),
  -- pancham in sword
  (674, 67400, 31, 'It chooses a Pangoro as its master and then imitates its master’s actions. This is how it learns to battle and hunt for prey.'),
  -- pangoro in sword
  (675, 67500, 31, 'This Pokémon is quick to anger, and it has no problem using its prodigious strength to get its way. It lives for duels against Obstagoon.'),
  -- espurr in sword
  (677, 67700, 31, 'Though Espurr’s expression never changes, behind that blank stare is an intense struggle to contain its devastating psychic power.'),
  -- meowstic in sword
  (678, 67800, 31, 'Revealing the eyelike patterns on the insides of its ears will unleash its psychic powers. It normally keeps the patterns hidden, however.'),
  -- meowstic-female in sword
  (678, 67801, 31, 'Females are a bit more selfish and aggressive than males. If they don’t get what they want, they will torment you with their psychic abilities.'),
  -- honedge in sword
  (679, 67900, 31, 'Honedge’s soul once belonged to a person who was killed a long time ago by the sword that makes up Honedge’s body.'),
  -- doublade in sword
  (680, 68000, 31, 'Honedge evolves into twins. The two blades rub together to emit a metallic sound that unnerves opponents.'),
  -- aegislash in sword
  (681, 68100, 31, 'In this defensive stance, Aegislash uses its steel body and a force field of spectral power to reduce the damage of any attack.'),
  -- spritzee in sword
  (682, 68200, 31, 'A scent pouch within this Pokémon’s body allows it to create various scents. A change in its diet will alter the fragrance it produces.'),
  -- aromatisse in sword
  (683, 68300, 31, 'The scent that constantly emits from its fur is so powerful that this Pokémon’s companions will eventually lose their sense of smell.'),
  -- swirlix in sword
  (684, 68400, 31, 'It eats its own weight in sugar every day. If it doesn’t get enough sugar, it becomes incredibly grumpy.'),
  -- slurpuff in sword
  (685, 68500, 31, 'By taking in a person’s scent, it can sniff out their mental and physical condition. It’s hoped that this skill will have many medical applications.'),
  -- inkay in sword
  (686, 68600, 31, 'It spins while making its luminescent spots flash. These spots allow it to communicate with others by using different patterns of light.'),
  -- malamar in sword
  (687, 68700, 31, 'Gazing at its luminescent spots will quickly induce a hypnotic state, putting the observer under Malamar’s control.'),
  -- binacle in sword
  (688, 68800, 31, 'After two Binacle find a suitably sized rock, they adhere themselves to it and live together. They cooperate to gather food during high tide.'),
  -- barbaracle in sword
  (689, 68900, 31, 'Seven Binacle come together to form one Barbaracle. The Binacle that serves as the head gives orders to those serving as the limbs.'),
  -- skrelp in sword
  (690, 69000, 31, 'It drifts in the ocean, blending in with floating seaweed. When other Pokémon come to feast on the seaweed, Skrelp feasts on them instead.'),
  -- dragalge in sword
  (691, 69100, 31, 'Dragalge uses a poisonous liquid capable of corroding metal to send tankers that enter its territory to the bottom of the sea.'),
  -- clauncher in sword
  (692, 69200, 31, 'Clauncher’s claws can fall off during battle, but they’ll regenerate. The meat inside the claws is popular as a delicacy in Galar.'),
  -- clawitzer in sword
  (693, 69300, 31, 'After using the feelers on its oversized claw to detect the location of prey, Clawitzer launches a cannonball of water at its target.'),
  -- helioptile in sword
  (694, 69400, 31, 'When spread, the frills on its head act like solar panels, generating the power behind this Pokémon’s electric moves.'),
  -- heliolisk in sword
  (695, 69500, 31, 'A now-vanished desert culture treasured these Pokémon. Appropriately, when Heliolisk came to the Galar region, treasure came with them.'),
  -- tyrunt in sword
  (696, 69600, 31, 'This is an ancient Pokémon, revived in modern times. It has a violent disposition, and it’ll tear apart anything it gets between its hefty jaws.'),
  -- tyrantrum in sword
  (697, 69700, 31, 'This Pokémon is from about 100,000,000 years ago. It has the presence of a king, vicious but magnificent.'),
  -- amaura in sword
  (698, 69800, 31, 'This Pokémon was successfully restored from a fossil. In the past, it lived with others of its kind in cold lands where there were fewer predators.'),
  -- aurorus in sword
  (699, 69900, 31, 'Aurorus was restored from a fossil. It’s said that when this Pokémon howls, auroras appear in the night sky.'),
  -- sylveon in sword
  (700, 70000, 31, 'By releasing enmity-erasing waves from its ribbonlike feelers, Sylveon stops any conflict.'),
  -- hawlucha in sword
  (701, 70100, 31, 'It drives its opponents to exhaustion with its agile maneuvers, then ends the fight with a flashy finishing move.'),
  -- dedenne in sword
  (702, 70200, 31, 'A Dedenne’s whiskers pick up electrical waves other Dedenne send out. These Pokémon share locations of food or electricity with one another.'),
  -- carbink in sword
  (703, 70300, 31, 'When beset by attackers, Carbink wipes them all out by firing high-energy beams from the gems embedded in its body.'),
  -- goomy in sword
  (704, 70400, 31, 'Because most of its body is water, it will dry up if the weather becomes too arid. It’s considered the weakest dragon Pokémon.'),
  -- sliggoo in sword
  (705, 70500, 31, 'Although this Pokémon isn’t very strong, its body is coated in a caustic slime that can melt through anything, so predators steer clear of it.'),
  -- goodra in sword
  (706, 70600, 31, 'Sometimes it misunderstands instructions and appears dazed or bewildered. Many Trainers don’t mind, finding this behavior to be adorable.'),
  -- klefki in sword
  (707, 70700, 31, 'This Pokémon is constantly collecting keys. Entrust a Klefki with important keys, and the Pokémon will protect them no matter what.'),
  -- phantump in sword
  (708, 70800, 31, 'After a lost child perished in the forest, their spirit possessed a tree stump, causing the spirit’s rebirth as this Pokémon.'),
  -- trevenant in sword
  (709, 70900, 31, 'People fear it due to a belief that it devours any who try to cut down trees in its forest, but to the Pokémon it shares its woods with, it’s kind.'),
  -- pumpkaboo in sword
  (710, 71000, 31, 'Spirits that wander this world are placed into Pumpkaboo’s body. They’re then moved on to the afterlife.'),
  -- pumpkaboo-small in sword
  (710, 71001, 31, 'When taking spirits to the afterlife, small Pumpkaboo prefer the spirits of children to those of adults.'),
  -- pumpkaboo-large in sword
  (710, 71002, 31, 'When taking spirits to the afterlife, large Pumpkaboo prefer the spirits of adults to those of children.'),
  -- pumpkaboo-super in sword
  (710, 71003, 31, 'Supersized Pumpkaboo are very partial to the spirits of people who were of similarly superior proportions.'),
  -- gourgeist in sword
  (711, 71100, 31, 'Eerie cries emanate from its body in the dead of night. The sounds are said to be the wails of spirits who are suffering in the afterlife.'),
  -- gourgeist-small in sword
  (711, 71101, 31, 'Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter.'),
  -- gourgeist-large in sword
  (711, 71102, 31, 'Large Gourgeist put on the guise of adults, taking the hands of children to lead them to the afterlife.'),
  -- gourgeist-super in sword
  (711, 71103, 31, 'Supersized Gourgeist aren’t picky. They will forcefully drag anyone off to the afterlife.'),
  -- bergmite in sword
  (712, 71200, 31, 'They chill the air around them to −150 degrees Fahrenheit, freezing the water in the air into ice that they use as armor.'),
  -- avalugg in sword
  (713, 71300, 31, 'At high latitudes, this Pokémon can be found with clusters of Bergmite on its back as it swims among the icebergs.'),
  -- noibat in sword
  (714, 71400, 31, 'After nightfall, they emerge from the caves they nest in during the day. Using their ultrasonic waves, they go on the hunt for ripened fruit.'),
  -- noivern in sword
  (715, 71500, 31, 'Aggressive and cruel, this Pokémon will ruthlessly torment enemies that are helpless in the dark.'),
  -- rowlet in sword
  (722, 72200, 31, 'At a distance, it launches its sharp feathers while flying about. If the enemy gets too close, Rowlet switches tactics and delivers vicious kicks.'),
  -- dartrix in sword
  (723, 72300, 31, 'It throws one knifelike feather after another at its enemies, and each one precisely strikes a weak point. These feathers are known as blade quills.'),
  -- decidueye in sword
  (724, 72400, 31, 'As if wielding a bow, it launches the arrow quills hidden among the feathers of its wings. Decidueye’s shots never miss.'),
  -- litten in sword
  (725, 72500, 31, 'It spends even the smallest amount of downtime grooming its fur with its tongue. Loose fur gathers in its stomach and serves as fuel for fiery moves.'),
  -- torracat in sword
  (726, 72600, 31, 'In the midst of battle, the fire pouch on Torracat’s neck rings like a bell and produces stronger flames than usual.'),
  -- incineroar in sword
  (727, 72700, 31, 'It excels at violent, no-holds-barred battles. The temperature of the flames that issue from its navel exceeds 3,600 degrees Fahrenheit.'),
  -- popplio in sword
  (728, 72800, 31, 'It creates special bouncy balloons to send at its opponents. When the balloons pop, the sheer force of their bursting is what deals damage.'),
  -- brionne in sword
  (729, 72900, 31, 'As if dancing, it artfully dodges the attacks of its enemies. All the while, it’s busy forming a bunch of balloons to overwhelm its foes.'),
  -- primarina in sword
  (730, 73000, 31, 'With its mouth, it makes sonic waves that sound like beautiful singing. It uses the sonic waves to control its water balloons.'),
  -- grubbin in sword
  (736, 73600, 31, 'Its natural enemies, like Rookidee, may flee rather than risk getting caught in its large mandibles that can snap thick tree branches.'),
  -- charjabug in sword
  (737, 73700, 31, 'While its durable shell protects it from attacks, Charjabug strikes at enemies with jolts of electricity discharged from the tips of its jaws.'),
  -- vikavolt in sword
  (738, 73800, 31, 'It builds up electricity in its abdomen, focuses it through its jaws, and then fires the electricity off in concentrated beams.'),
  -- cutiefly in sword
  (742, 74200, 31, 'Nectar and pollen are its favorite fare. You can find Cutiefly hovering around Gossifleur, trying to get some of Gossifleur’s pollen.'),
  -- ribombee in sword
  (743, 74300, 31, 'It makes pollen puffs from pollen and nectar. The puffs’ effects depend on the type of ingredients and how much of each one is used.'),
  -- rockruff in sword
  (744, 74400, 31, 'This Pokémon can bond very strongly with its Trainer, but it also has a habit of biting. Raising a Rockruff for a long time can be challenging.'),
  -- lycanroc in sword
  (745, 74500, 31, 'This Lycanroc is calm and cautious. The rocks jutting from its mane are razor sharp.'),
  -- lycanroc-midnight in sword
  (745, 74501, 31, 'This form of Lycanroc is reckless. It charges headlong at its opponents, attacking without any care about what injuries it might receive.'),
  -- lycanroc-dusk in sword
  (745, 74502, 31, 'This form of Lycanroc is normally calm and quiet. Once a battle begins, however, this Pokémon displays a ferocious fighting spirit.'),
  -- wishiwashi in sword
  (746, 74600, 31, 'Individually, they’re incredibly weak. It’s by gathering up into schools that they’re able to confront opponents.'),
  -- mareanie in sword
  (747, 74700, 31, 'The first symptom of its sting is numbness. The next is an itching sensation so intense that it’s impossible to resist the urge to claw at your skin.'),
  -- toxapex in sword
  (748, 74800, 31, 'To survive in the cold waters of Galar, this Pokémon forms a dome with its legs, enclosing its body so it can capture its own body heat.'),
  -- mudbray in sword
  (749, 74900, 31, 'Loads weighing up to 50 times as much as its own body weight pose no issue for this Pokémon. It’s skilled at making use of mud.'),
  -- mudsdale in sword
  (750, 75000, 31, 'Mud that hardens around a Mudsdale’s legs sets harder than stone. It’s so hard that it allows this Pokémon to scrap a truck with a single kick.'),
  -- dewpider in sword
  (751, 75100, 31, 'It forms a water bubble at the rear of its body and then covers its head with it. Meeting another Dewpider means comparing water-bubble sizes.'),
  -- araquanid in sword
  (752, 75200, 31, 'It launches water bubbles with its legs, drowning prey within the bubbles. This Pokémon can then take its time to savor its meal.'),
  -- fomantis in sword
  (753, 75300, 31, 'When bathed in sunlight, this Pokémon emits a pleasantly sweet scent, which causes bug Pokémon to gather around it.'),
  -- lurantis in sword
  (754, 75400, 31, 'This Pokémon resembles a beautiful flower. A properly raised Lurantis will have gorgeous, brilliant colors.'),
  -- morelull in sword
  (755, 75500, 31, 'Pokémon living in the forest eat the delicious caps on Morelull’s head. The caps regrow overnight.'),
  -- shiinotic in sword
  (756, 75600, 31, 'Its flickering spores lure in prey and put them to sleep. Once this Pokémon has its prey snoozing, it drains their vitality with its fingertips.'),
  -- salandit in sword
  (757, 75700, 31, 'Its venom sacs produce a fluid that this Pokémon then heats up with the flame in its tail. This process creates Salandit’s poisonous gas.'),
  -- salazzle in sword
  (758, 75800, 31, 'Only female Salazzle exist. They emit a gas laden with pheromones to captivate male Salandit.'),
  -- stufful in sword
  (759, 75900, 31, 'Its fluffy fur is a delight to pet, but carelessly reaching out to touch this Pokémon could result in painful retaliation.'),
  -- bewear in sword
  (760, 76000, 31, 'Once it accepts you as a friend, it tries to show its affection with a hug. Letting it do that is dangerous—it could easily shatter your bones.'),
  -- bounsweet in sword
  (761, 76100, 31, 'Its body gives off a sweet, fruity scent that is extremely appetizing to bird Pokémon.'),
  -- steenee in sword
  (762, 76200, 31, 'As it twirls like a dancer, a sweet smell spreads out around it. Anyone who inhales the scent will feel a surge of happiness.'),
  -- tsareena in sword
  (763, 76300, 31, 'This feared Pokémon has long, slender legs and a cruel heart. It shows no mercy as it stomps on its opponents.'),
  -- comfey in sword
  (764, 76400, 31, 'Comfey picks flowers with its vine and decorates itself with them. For some reason, flowers won’t wither once they’re attached to a Comfey.'),
  -- oranguru in sword
  (765, 76500, 31, 'With waves of its fan—made from leaves and its own fur—Oranguru skillfully gives instructions to other Pokémon.'),
  -- passimian in sword
  (766, 76600, 31, 'Displaying amazing teamwork, they follow the orders of their boss as they all help out in the search for their favorite berries.'),
  -- wimpod in sword
  (767, 76700, 31, 'It’s nature’s cleaner—it eats anything and everything, including garbage and rotten things. The ground near its nest is always clean.'),
  -- golisopod in sword
  (768, 76800, 31, 'It will do anything to win, taking advantage of every opening and finishing opponents off with the small claws on its front legs.'),
  -- sandygast in sword
  (769, 76900, 31, 'Grudges of the dead have possessed a mound of sand and become a Pokémon. Sandygast is fond of the shovel on its head.'),
  -- palossand in sword
  (770, 77000, 31, 'Palossand is known as the Beach Nightmare. It pulls its prey down into the sand by controlling the sand itself, and then it sucks out their souls.'),
  -- pyukumuku in sword
  (771, 77100, 31, 'It lives in warm, shallow waters. If it encounters a foe, it will spit out its internal organs as a means to punch them.'),
  -- type-null in sword
  (772, 77200, 31, 'Rumor has it that the theft of top-secret research notes led to a new instance of this Pokémon being created in the Galar region.'),
  -- silvally in sword
  (773, 77300, 31, 'A solid bond of trust between this Pokémon and its Trainer awakened the strength hidden within Silvally. It can change its type at will.'),
  -- silvally-fighting in sword
  (773, 77301, 31, 'Thanks to its awakened powers, it can change to the Fighting type to match the memory it has equipped.'),
  -- silvally-flying in sword
  (773, 77302, 31, 'Thanks to its awakened powers, it can change to the Flying type to match the memory it has equipped.'),
  -- silvally-poison in sword
  (773, 77303, 31, 'Thanks to its awakened powers, it can change to the Poison type to match the memory it has equipped.'),
  -- silvally-ground in sword
  (773, 77304, 31, 'Thanks to its awakened powers, it can change to the Ground type to match the memory it has equipped.'),
  -- silvally-rock in sword
  (773, 77305, 31, 'Thanks to its awakened powers, it can change to the Rock type to match the memory it has equipped.'),
  -- silvally-bug in sword
  (773, 77306, 31, 'Thanks to its awakened powers, it can change to the Bug type to match the memory it has equipped.'),
  -- silvally-ghost in sword
  (773, 77307, 31, 'Thanks to its awakened powers, it can change to the Ghost type to match the memory it has equipped.'),
  -- silvally-steel in sword
  (773, 77308, 31, 'Thanks to its awakened powers, it can change to the Steel type to match the memory it has equipped.'),
  -- silvally-fire in sword
  (773, 77309, 31, 'Thanks to its awakened powers, it can change to the Fire type to match the memory it has equipped.'),
  -- silvally-water in sword
  (773, 77310, 31, 'Thanks to its awakened powers, it can change to the Water type to match the memory it has equipped.'),
  -- silvally-grass in sword
  (773, 77311, 31, 'Thanks to its awakened powers, it can change to the Grass type to match the memory it has equipped.'),
  -- silvally-electric in sword
  (773, 77312, 31, 'Thanks to its awakened powers, it can change to the Electric type to match the memory it has equipped.'),
  -- silvally-psychic in sword
  (773, 77313, 31, 'Thanks to its awakened powers, it can change to the Psychic type to match the memory it has equipped.'),
  -- silvally-ice in sword
  (773, 77314, 31, 'Thanks to its awakened powers, it can change to the Ice type to match the memory it has equipped.'),
  -- silvally-dragon in sword
  (773, 77315, 31, 'Thanks to its awakened powers, it can change to the Dragon type to match the memory it has equipped.'),
  -- silvally-dark in sword
  (773, 77316, 31, 'Thanks to its awakened powers, it can change to the Dark type to match the memory it has equipped.'),
  -- silvally-fairy in sword
  (773, 77317, 31, 'Thanks to its awakened powers, it can change to the Fairy type to match the memory it has equipped.'),
  -- turtonator in sword
  (776, 77600, 31, 'Explosive substances coat the shell on its back. Enemies that dare attack it will be blown away by an immense detonation.'),
  -- togedemaru in sword
  (777, 77700, 31, 'With the long hairs on its back, this Pokémon takes in electricity from other electric Pokémon. It stores what it absorbs in an electric sac.'),
  -- mimikyu in sword
  (778, 77800, 31, 'It wears a rag fashioned into a Pikachu costume in an effort to look less scary. Unfortunately, the costume only makes it creepier.'),
  -- mimikyu-busted in sword
  (778, 77801, 31, 'There will be no forgiveness for any who reveal that it was pretending to be Pikachu. It will bring the culprit down, even at the cost of its own life.'),
  -- drampa in sword
  (780, 78000, 31, 'The mountains it calls home are nearly two miles in height. On rare occasions, it descends to play with the children living in the towns below.'),
  -- dhelmise in sword
  (781, 78100, 31, 'After a piece of seaweed merged with debris from a sunken ship, it was reborn as this ghost Pokémon.'),
  -- jangmo-o in sword
  (782, 78200, 31, 'They learn to fight by smashing their head scales together. The dueling strengthens both their skills and their spirits.'),
  -- hakamo-o in sword
  (783, 78300, 31, 'The scaleless, scarred parts of its body are signs of its strength. It shows them off to defeated opponents.'),
  -- kommo-o in sword
  (784, 78400, 31, 'It clatters its tail scales to unnerve opponents. This Pokémon will battle only those who stand steadfast in the face of this display.'),
  -- cosmog in sword
  (789, 78900, 31, 'This Pokémon came from another universe. Its gaseous body is so light that even a gentle breeze can blow it away.'),
  -- cosmoem in sword
  (790, 79000, 31, 'The absorption of starlight fuels this Pokémon’s growth. The shell that encases it is harder than any known material.'),
  -- solgaleo in sword
  (791, 79100, 31, 'When light radiates from its body, this Pokémon could almost appear to be the sun. It will dispel any darkness and light up the world.'),
  -- lunala in sword
  (792, 79200, 31, 'Known as the Beast That Calls the Moon, this Pokémon lives by taking in any and all light and converting it into its own energy.'),
  -- necrozma in sword
  (800, 80000, 31, 'It survives by absorbing light. After a long time spent slumbering underground, impurities accumulated within it, causing its body to darken.'),
  -- necrozma-dusk-mane in sword
  (800, 80001, 31, 'When it dominates Solgaleo, it takes on this form. It’s a vicious Pokémon, mangling prey with its many claws—including those on its back.'),
  -- necrozma-dawn-wings in sword
  (800, 80002, 31, 'Necrozma has subjugated Lunala entirely, forcing the unfortunate Pokémon to emit its light energy for Necrozma to consume.'),
  -- marshadow in sword
  (802, 80200, 31, 'By slipping into the shadow of a martial arts master and copying their movements, this Pokémon learned the ultimate techniques.'),
  -- zeraora in sword
  (807, 80700, 31, 'It runs as fast as lightning strikes, shredding its opponents with its high-voltage claws.'),
  -- meltan in sword
  (808, 80800, 31, 'It dissolves and eats metal. Circulating liquid metal within its body is how it generates energy.'),
  -- melmetal in sword
  (809, 80900, 31, 'At the end of its life-span, Melmetal will rust and fall apart. The small shards left behind will eventually be reborn as Meltan.'),
  -- grookey in sword
  (810, 81000, 31, 'When it uses its special stick to strike up a beat, the sound waves produced carry revitalizing energy to the plants and flowers in the area.'),
  -- thwackey in sword
  (811, 81100, 31, 'The faster a Thwackey can beat out a rhythm with its two sticks, the more respect it wins from its peers.'),
  -- rillaboom in sword
  (812, 81200, 31, 'By drumming, it taps into the power of its special tree stump. The roots of the stump follow its direction in battle.'),
  -- scorbunny in sword
  (813, 81300, 31, 'A warm-up of running around gets fire energy coursing through this Pokémon’s body. Once that happens, it’s ready to fight at full power.'),
  -- raboot in sword
  (814, 81400, 31, 'Its thick and fluffy fur protects it from the cold and enables it to use hotter fire moves.'),
  -- cinderace in sword
  (815, 81500, 31, 'It juggles a pebble with its feet, turning it into a burning soccer ball. Its shots strike opponents hard and leave them scorched.'),
  -- sobble in sword
  (816, 81600, 31, 'When scared, this Pokémon cries. Its tears pack the chemical punch of 100 onions, and attackers won’t be able to resist weeping.'),
  -- drizzile in sword
  (817, 81700, 31, 'A clever combatant, this Pokémon battles using water balloons created with moisture secreted from its palms.'),
  -- inteleon in sword
  (818, 81800, 31, 'It has many hidden capabilities, such as fingertips that can shoot water and a membrane on its back that it can use to glide through the air.'),
  -- skwovet in sword
  (819, 81900, 31, 'Found throughout the Galar region, this Pokémon becomes uneasy if its cheeks are ever completely empty of berries.'),
  -- greedent in sword
  (820, 82000, 31, 'It stashes berries in its tail—so many berries that they fall out constantly. But this Pokémon is a bit slow-witted, so it doesn’t notice the loss.'),
  -- rookidee in sword
  (821, 82100, 31, 'It will bravely challenge any opponent, no matter how powerful. This Pokémon benefits from every battle—even a defeat increases its strength a bit.'),
  -- corvisquire in sword
  (822, 82200, 31, 'Smart enough to use tools in battle, these Pokémon have been seen picking up rocks and flinging them or using ropes to wrap up enemies.'),
  -- corviknight in sword
  (823, 82300, 31, 'This Pokémon reigns supreme in the skies of the Galar region. The black luster of its steel body could drive terror into the heart of any foe.'),
  -- blipbug in sword
  (824, 82400, 31, 'A constant collector of information, this Pokémon is very smart. Very strong is what it isn’t.'),
  -- dottler in sword
  (825, 82500, 31, 'It barely moves, but it’s still alive. Hiding in its shell without food or water seems to have awakened its psychic powers.'),
  -- orbeetle in sword
  (826, 82600, 31, 'It’s famous for its high level of intelligence, and the large size of its brain is proof that it also possesses immense psychic power.'),
  -- nickit in sword
  (827, 82700, 31, 'Aided by the soft pads on its feet, it silently raids the food stores of other Pokémon. It survives off its ill-gotten gains.'),
  -- thievul in sword
  (828, 82800, 31, 'It secretly marks potential targets with a scent. By following the scent, it stalks its targets and steals from them when they least expect it.'),
  -- gossifleur in sword
  (829, 82900, 31, 'It anchors itself in the ground with its single leg, then basks in the sun. After absorbing enough sunlight, its petals spread as it blooms brilliantly.'),
  -- eldegoss in sword
  (830, 83000, 31, 'The seeds attached to its cotton fluff are full of nutrients. It spreads them on the wind so that plants and other Pokémon can benefit from them.'),
  -- wooloo in sword
  (831, 83100, 31, 'Its curly fleece is such an effective cushion that this Pokémon could fall off a cliff and stand right back up at the bottom, unharmed.'),
  -- dubwool in sword
  (832, 83200, 31, 'Weave a carpet from its springy wool, and you end up with something closer to a trampoline. You’ll start to bounce the moment you set foot on it.'),
  -- chewtle in sword
  (833, 83300, 31, 'Apparently the itch of its teething impels it to snap its jaws at anything in front of it.'),
  -- drednaw in sword
  (834, 83400, 31, 'With jaws that can shear through steel rods, this highly aggressive Pokémon chomps down on its unfortunate prey.'),
  -- yamper in sword
  (835, 83500, 31, 'This Pokémon is very popular as a herding dog in the Galar region. As it runs, it generates electricity from the base of its tail.'),
  -- boltund in sword
  (836, 83600, 31, 'This Pokémon generates electricity and channels it into its legs to keep them going strong. Boltund can run nonstop for three full days.'),
  -- rolycoly in sword
  (837, 83700, 31, 'Most of its body has the same composition as coal. Fittingly, this Pokémon was first discovered in coal mines about 400 years ago.'),
  -- carkol in sword
  (838, 83800, 31, 'It forms coal inside its body. Coal dropped by this Pokémon once helped fuel the lives of people in the Galar region.'),
  -- coalossal in sword
  (839, 83900, 31, 'It’s usually peaceful, but the vandalism of mines enrages it. Offenders will be incinerated with flames that reach 2,700 degrees Fahrenheit.'),
  -- applin in sword
  (840, 84000, 31, 'It spends its entire life inside an apple. It hides from its natural enemies, bird Pokémon, by pretending it’s just an apple and nothing more.'),
  -- flapple in sword
  (841, 84100, 31, 'It ate a sour apple, and that induced its evolution. In its cheeks, it stores an acid capable of causing chemical burns.'),
  -- appletun in sword
  (842, 84200, 31, 'Eating a sweet apple caused its evolution. A nectarous scent wafts from its body, luring in the bug Pokémon it preys on.'),
  -- silicobra in sword
  (843, 84300, 31, 'As it digs, it swallows sand and stores it in its neck pouch. The pouch can hold more than 17 pounds of sand.'),
  -- sandaconda in sword
  (844, 84400, 31, 'When it contracts its body, over 220 pounds of sand sprays from its nose. If it ever runs out of sand, it becomes disheartened.'),
  -- cramorant in sword
  (845, 84500, 31, 'It’s so strong that it can knock out some opponents in a single hit, but it also may forget what it’s battling midfight.'),
  -- cramorant-gulping in sword
  (845, 84501, 31, 'Cramorant’s gluttony led it to try to swallow an Arrokuda whole, which in turn led to Cramorant getting an Arrokuda stuck in its throat.'),
  -- cramorant-gorging in sword
  (845, 84502, 31, 'This Cramorant has accidentally gotten a Pikachu lodged in its gullet. Cramorant is choking a little, but it isn’t really bothered.'),
  -- arrokuda in sword
  (846, 84600, 31, 'If it sees any movement around it, this Pokémon charges for it straightaway, leading with its sharply pointed jaw. It’s very proud of that jaw.'),
  -- barraskewda in sword
  (847, 84700, 31, 'This Pokémon has a jaw that’s as sharp as a spear and as strong as steel. Apparently Barraskewda’s flesh is surprisingly tasty, too.'),
  -- toxel in sword
  (848, 84800, 31, 'It stores poison in an internal poison sac and secretes that poison through its skin. If you touch this Pokémon, a tingling sensation follows.'),
  -- toxtricity in sword
  (849, 84900, 31, 'When this Pokémon sounds as if it’s strumming a guitar, it’s actually clawing at the protrusions on its chest to generate electricity.'),
  -- toxtricity-low-key in sword
  (849, 84901, 31, 'Capable of generating 15,000 volts of electricity, this Pokémon looks down on all that would challenge it.'),
  -- gigantamax-toxtricity in sword
  (849, 84902, 31, 'Its excessive electric energy is its weapon. This Pokémon can build up more electricity than any thundercloud.'),
  -- gigantamax-toxtricity-low-key in sword
  (849, 84903, 31, 'Its excessive electric energy is its weapon. This Pokémon can build up more electricity than any thundercloud.'),
  -- sizzlipede in sword
  (850, 85000, 31, 'It stores flammable gas in its body and uses it to generate heat. The yellow sections on its belly get particularly hot.'),
  -- centiskorch in sword
  (851, 85100, 31, 'When it heats up, its body temperature reaches about 1,500 degrees Fahrenheit. It lashes its body like a whip and launches itself at enemies.'),
  -- clobbopus in sword
  (852, 85200, 31, 'It’s very curious, but its means of investigating things is to try to punch them with its tentacles. The search for food is what brings it onto land.'),
  -- grapploct in sword
  (853, 85300, 31, 'A body made up of nothing but muscle makes the grappling moves this Pokémon performs with its tentacles tremendously powerful.'),
  -- sinistea in sword
  (854, 85400, 31, 'This Pokémon is said to have been born when a lonely spirit possessed a cold, leftover cup of tea.'),
  -- sinistea-antique in sword
  (854, 85401, 31, 'The swirl pattern in this Pokémon’s body is its weakness. If it gets stirred, the swirl loses its shape, and Sinistea gets dizzy.'),
  -- polteageist in sword
  (855, 85500, 31, 'This species lives in antique teapots. Most pots are forgeries, but on rare occasions, an authentic work is found.'),
  -- polteageist-antique in sword
  (855, 85501, 31, 'Trainers Polteageist trusts will be allowed to experience its distinctive flavor and aroma firsthand by sampling just a tiny bit of its tea.'),
  -- hatenna in sword
  (856, 85600, 31, 'Via the protrusion on its head, it senses other creatures’ emotions. If you don’t have a calm disposition, it will never warm up to you.'),
  -- hattrem in sword
  (857, 85700, 31, 'No matter who you are, if you bring strong emotions near this Pokémon, it will silence you violently.'),
  -- hatterene in sword
  (858, 85800, 31, 'It emits psychic power strong enough to cause headaches as a deterrent to the approach of others.'),
  -- impidimp in sword
  (859, 85900, 31, 'Through its nose, it sucks in the emanations produced by people and Pokémon when they feel annoyed. It thrives off this negative energy.'),
  -- morgrem in sword
  (860, 86000, 31, 'When it gets down on all fours as if to beg for forgiveness, it’s trying to lure opponents in so that it can stab them with its spear-like hair.'),
  -- grimmsnarl in sword
  (861, 86100, 31, 'With the hair wrapped around its body helping to enhance its muscles, this Pokémon can overwhelm even Machamp.'),
  -- obstagoon in sword
  (862, 86200, 31, 'Its voice is staggering in volume. Obstagoon has a tendency to take on a threatening posture and shout—this move is known as Obstruct.'),
  -- perrserker in sword
  (863, 86300, 31, 'What appears to be an iron helmet is actually hardened hair. This Pokémon lives for the thrill of battle.'),
  -- cursola in sword
  (864, 86400, 31, 'Its shell is overflowing with its heightened otherworldly energy. The ectoplasm serves as protection for this Pokémon’s core spirit.'),
  -- sirfetchd in sword
  (865, 86500, 31, 'Only Farfetch’d that have survived many battles can attain this evolution. When this Pokémon’s leek withers, it will retire from combat.'),
  -- mr-rime in sword
  (866, 86600, 31, 'It’s highly skilled at tap-dancing. It waves its cane of ice in time with its graceful movements.'),
  -- runerigus in sword
  (867, 86700, 31, 'A powerful curse was woven into an ancient painting. After absorbing the spirit of a Yamask, the painting began to move.'),
  -- milcery in sword
  (868, 86800, 31, 'This Pokémon was born from sweet-smelling particles in the air. Its body is made of cream.'),
  -- alcremie in sword
  (869, 86900, 31, 'When it trusts a Trainer, it will treat them to berries it’s decorated with cream.'),
  -- gigantamax-alcremie in sword
  (869, 86901, 31, 'Cream pours endlessly from this Pokémon’s body. The cream stiffens when compressed by an impact. A harder impact results in harder cream.'),
  -- alcremie-ruby-cream in sword
  (869, 86902, 31, 'The moment it evolved, it took on a sweet and tart flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-matcha-cream in sword
  (869, 86903, 31, 'The moment it evolved, it took on an aromatic flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-mint-cream in sword
  (869, 86904, 31, 'The moment it evolved, it took on a refreshing flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-lemon-cream in sword
  (869, 86905, 31, 'The moment it evolved, it took on a sour flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-salted-cream in sword
  (869, 86906, 31, 'The moment it evolved, it took on a salty flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-ruby-swirl in sword
  (869, 86907, 31, 'The moment it evolved, it took on a mixed flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-caramel-swirl in sword
  (869, 86908, 31, 'The moment it evolved, it took on a bitter flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- alcremie-rainbow-swirl in sword
  (869, 86909, 31, 'The moment it evolved, it took on a complex flavor. This is because of the way its cells spontaneously shifted during evolution.'),
  -- falinks in sword
  (870, 87000, 31, 'Five of them are troopers, and one is the brass. The brass’s orders are absolute.'),
  -- pincurchin in sword
  (871, 87100, 31, 'It feeds on seaweed, using its teeth to scrape it off rocks. Electric current flows from the tips of its spines.'),
  -- snom in sword
  (872, 87200, 31, 'It spits out thread imbued with a frigid sort of energy and uses it to tie its body to branches, disguising itself as an icicle while it sleeps.'),
  -- frosmoth in sword
  (873, 87300, 31, 'Icy scales fall from its wings like snow as it flies over fields and mountains. The temperature of its wings is less than −290 degrees Fahrenheit.'),
  -- stonjourner in sword
  (874, 87400, 31, 'It stands in grasslands, watching the sun’s descent from zenith to horizon. This Pokémon has a talent for delivering dynamic kicks.'),
  -- eiscue in sword
  (875, 87500, 31, 'It drifted in on the flow of ocean waters from a frigid place. It keeps its head iced constantly to make sure it stays nice and cold.'),
  -- eiscue-noice in sword
  (875, 87501, 31, 'The ice covering this Pokémon’s face has shattered, revealing a slightly worried expression that many people are enamored with.'),
  -- indeedee in sword
  (876, 87600, 31, 'It uses the horns on its head to sense the emotions of others. Males will act as valets for those they serve, looking after their every need.'),
  -- indeedee-female in sword
  (876, 87601, 31, 'These intelligent Pokémon touch horns with each other to share information between them.'),
  -- morpeko in sword
  (877, 87700, 31, 'As it eats the seeds stored up in its pocket-like pouches, this Pokémon is not just satisfying its constant hunger. It’s also generating electricity.'),
  -- morpeko-hangry in sword
  (877, 87701, 31, 'Intense hunger drives it to extremes of violence, and the electricity in its cheek sacs has converted into a Dark energy.'),
  -- cufant in sword
  (878, 87800, 31, 'It digs up the ground with its trunk. It’s also very strong, being able to carry loads of over five tons without any problem at all.'),
  -- copperajah in sword
  (879, 87900, 31, 'They came over from another region long ago and worked together with humans. Their green skin is resistant to water.'),
  -- dracozolt in sword
  (880, 88000, 31, 'In ancient times, it was unbeatable thanks to its powerful lower body, but it went extinct anyway after it depleted all its plant-based food sources.'),
  -- arctozolt in sword
  (881, 88100, 31, 'The shaking of its freezing upper half is what generates its electricity. It has a hard time walking around.'),
  -- dracovish in sword
  (882, 88200, 31, 'Powerful legs and jaws made it the apex predator of its time. Its own overhunting of its prey was what drove it to extinction.'),
  -- arctovish in sword
  (883, 88300, 31, 'Though it’s able to capture prey by freezing its surroundings, it has trouble eating the prey afterward because its mouth is on top of its head.'),
  -- duraludon in sword
  (884, 88400, 31, 'Its body resembles polished metal, and it’s both lightweight and strong. The only drawback is that it rusts easily.'),
  -- dreepy in sword
  (885, 88500, 31, 'After being reborn as a ghost Pokémon, Dreepy wanders the areas it used to inhabit back when it was alive in prehistoric seas.'),
  -- drakloak in sword
  (886, 88600, 31, 'It’s capable of flying faster than 120 mph. It battles alongside Dreepy and dotes on them until they successfully evolve.'),
  -- dragapult in sword
  (887, 88700, 31, 'When it isn’t battling, it keeps Dreepy in the holes on its horns. Once a fight starts, it launches the Dreepy like supersonic missiles.'),
  -- zacian in sword
  (888, 88800, 31, 'Known as a legendary hero, this Pokémon absorbs metal particles, transforming them into a weapon it uses to battle.'),
  -- zamazenta in sword
  (889, 88900, 31, 'In times past, it worked together with a king of the people to save the Galar region. It absorbs metal that it then uses in battle.'),
  -- eternatus in sword
  (890, 89000, 31, 'The core on its chest absorbs energy emanating from the lands of the Galar region. This energy is what allows Eternatus to stay active.'),
  -- kubfu in sword
  (891, 89100, 31, 'Kubfu trains hard to perfect its moves. The moves it masters will determine which form it takes when it evolves.'),
  -- urshifu in sword
  (892, 89200, 31, 'This form of Urshifu is a strong believer in the one-hit KO. Its strategy is to leap in close to foes and land a devastating blow with a hardened fist.'),
  -- urshifu-rapid-strike in sword
  (892, 89201, 31, 'It’s believed that this Pokémon modeled its fighting style on the flow of a river—sometimes rapid, sometimes calm.'),
  -- gigantamax-urshifu in sword
  (892, 89202, 31, 'People call it the embodiment of rage. It’s said that this Pokémon’s terrifying expression and shout will rid the world of malevolence.'),
  -- gigantamax-urshifu-rapid-strike in sword
  (892, 89203, 31, 'As it waits for the right moment to unleash its Gigantamax power, this Pokémon maintains a perfect one-legged stance. It won’t even twitch.'),
  -- zarude in sword
  (893, 89300, 31, 'Within dense forests, this Pokémon lives in a pack with others of its kind. It’s incredibly aggressive, and the other Pokémon of the forest fear it.'),
  -- zarude-dada in sword
  (893, 89301, 31, 'This Zarude left its pack to raise a human child. The cloth Zarude would wrap the child with has a comforting scent that calmed the child’s crying.'),
  -- regieleki in sword
  (894, 89400, 31, 'This Pokémon is a cluster of electrical energy. It’s said that removing the rings on Regieleki’s body will unleash the Pokémon’s latent power.'),
  -- regidrago in sword
  (895, 89500, 31, 'An academic theory proposes that Regidrago’s arms were once the head of an ancient dragon Pokémon. The theory remains unproven.'),
  -- glastrier in sword
  (896, 89600, 31, 'Glastrier emits intense cold from its hooves. It’s also a belligerent Pokémon—anything it wants, it takes by force.'),
  -- spectrier in sword
  (897, 89700, 31, 'It probes its surroundings with all its senses save one—it doesn’t use its sense of sight. Spectrier’s kicks are said to separate soul from body.'),
  -- calyrex in sword
  (898, 89800, 31, 'Calyrex is a merciful Pokémon, capable of providing healing and blessings. It reigned over the Galar region in times of yore.'),
  -- calyrex-ice-rider in sword
  (898, 89801, 31, 'According to lore, this Pokémon showed no mercy to those who got in its way, yet it would heal its opponents'' wounds after battle.'),
  -- calyrex-shadow-rider in sword
  (898, 89802, 31, 'It’s said that Calyrex and a Pokémon that had bonded with it ran all across the Galar region to bring green to the wastelands.'),
  -- bulbasaur in shield
  (1, 100, 32, 'While it is young, it uses the nutrients that are stored in the seed on its back in order to grow.'),
  -- ivysaur in shield
  (2, 200, 32, 'Exposure to sunlight adds to its strength. Sunlight also makes the bud on its back grow larger.'),
  -- venusaur in shield
  (3, 300, 32, 'A bewitching aroma wafts from its flower. The fragrance becalms those engaged in a battle.'),
  -- gigantamax-venusaur in shield
  (3, 302, 32, 'Huge amounts of pollen burst from it with the force of a volcanic eruption. Breathing in too much of the pollen can cause fainting.'),
  -- charmander in shield
  (4, 400, 32, 'From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.'),
  -- charmeleon in shield
  (5, 500, 32, 'If it becomes agitated during battle, it spouts intense flames, incinerating its surroundings.'),
  -- charizard in shield
  (6, 600, 32, 'Its wings can carry this Pokémon close to an altitude of 4,600 feet. It blows out fire at very high temperatures.'),
  -- gigantamax-charizard in shield
  (6, 603, 32, 'The flame inside its body burns hotter than 3,600 degrees Fahrenheit. When Charizard roars, that temperature climbs even higher.'),
  -- squirtle in shield
  (7, 700, 32, 'When it feels threatened, it draws its limbs inside its shell and sprays water from its mouth.'),
  -- wartortle in shield
  (8, 800, 32, 'It cleverly controls its furry ears and tail to maintain its balance while swimming.'),
  -- blastoise in shield
  (9, 900, 32, 'The rocket cannons on its shell fire jets of water capable of punching holes through thick steel.'),
  -- gigantamax-blastoise in shield
  (9, 902, 32, 'Water fired from this Pokémon’s central main cannon has enough power to blast a hole into a mountain.'),
  -- caterpie in shield
  (10, 1000, 32, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.'),
  -- metapod in shield
  (11, 1100, 32, 'Even though it is encased in a sturdy shell, the body inside is tender. It can’t withstand a harsh attack.'),
  -- butterfree in shield
  (12, 1200, 32, 'It collects honey every day. It rubs honey onto the hairs on its legs to carry it back to its nest.'),
  -- pikachu in shield
  (25, 2500, 32, 'When Pikachu meet, they’ll touch their tails together and exchange electricity through them as a form of greeting.'),
  -- gigantamax-pikachu in shield
  (25, 2502, 32, 'When it smashes its opponents with its bolt-shaped tail, it delivers a surge of electricity equivalent to a lightning strike.'),
  -- pikachu-original-cap in shield
  (25, 2503, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is proof that the two traveled across many regions together.'),
  -- pikachu-hoenn-cap in shield
  (25, 2504, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is proof that the two traveled throughout the Hoenn region together.'),
  -- pikachu-sinnoh-cap in shield
  (25, 2505, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is proof that the two traveled throughout the Sinnoh region together.'),
  -- pikachu-unova-cap in shield
  (25, 2506, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is proof that the two traveled throughout the Unova region together.'),
  -- pikachu-kalos-cap in shield
  (25, 2507, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is proof that the two traveled throughout the Kalos region together.'),
  -- pikachu-alola-cap in shield
  (25, 2508, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is proof that the two traveled throughout the Alola region together.'),
  -- pikachu-partner-cap in shield
  (25, 2509, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is a precious symbol of a fateful encounter.'),
  -- pikachu-world-cap in shield
  (25, 2510, 32, 'This Pikachu is wearing its Trainer’s cap. The cap is a precious symbol that travels across different regions with Pikachu.'),
  -- raichu in shield
  (26, 2600, 32, 'If its electric pouches run empty, it raises its tail to gather electricity from the atmosphere.'),
  -- alolan-raichu in shield
  (26, 2601, 32, 'This Pokémon rides on its tail while it uses its psychic powers to levitate. It attacks with star-shaped thunderbolts.'),
  -- sandshrew in shield
  (27, 2700, 32, 'It burrows into the ground to create its nest. If hard stones impede its tunneling, it uses its sharp claws to shatter them and then carries on digging.'),
  -- alolan-sandshrew in shield
  (27, 2701, 32, 'It lives in snowy mountains on southern islands. When a blizzard rolls in, this Pokémon hunkers down in the snow to avoid getting blown away.'),
  -- sandslash in shield
  (28, 2800, 32, 'It climbs trees by hooking on with its sharp claws. Sandslash shares the berries it gathers, dropping them down to Sandshrew waiting below the tree.'),
  -- alolan-sandslash in shield
  (28, 2801, 32, 'Many people climb snowy mountains, hoping to see the icy spikes of these Pokémon glistening in the light of dawn.'),
  -- nidoran-f in shield
  (29, 2900, 32, 'It uses its hard incisor teeth to crush and eat berries. The tip of a female Nidoran’s horn is a bit more rounded than the tip of a male’s horn.'),
  -- nidorina in shield
  (30, 3000, 32, 'If the group is threatened, these Pokémon will band together to assault enemies with a chorus of ultrasonic waves.'),
  -- nidoqueen in shield
  (31, 3100, 32, 'It pacifies offspring by placing them in the gaps between the spines on its back. The spines will never secrete poison while young are present.'),
  -- nidoran-m in shield
  (32, 3200, 32, 'Small but brave, this Pokémon will hold its ground and even risk its life in battle to protect the female it’s friendly with.'),
  -- nidorino in shield
  (33, 3300, 32, 'It’s nervous and quick to act aggressively. The potency of its poison increases along with the level of adrenaline present in its body.'),
  -- nidoking in shield
  (34, 3400, 32, 'Nidoking prides itself on its strength. It’s forceful and spirited in battle, making use of its thick tail and diamond-crushing horn.'),
  -- clefairy in shield
  (35, 3500, 32, 'Its adorable behavior and cry make it highly popular. However, this cute Pokémon is rarely found.'),
  -- clefable in shield
  (36, 3600, 32, 'Their ears are sensitive enough to hear a pin drop from over a mile away, so they’re usually found in quiet places.'),
  -- vulpix in shield
  (37, 3700, 32, 'As each tail grows, its fur becomes more lustrous. When held, it feels slightly warm.'),
  -- alolan-vulpix in shield
  (37, 3701, 32, 'If you observe its curly hairs through a microscope, you’ll see small ice particles springing up.'),
  -- ninetales in shield
  (38, 3800, 32, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.'),
  -- alolan-ninetales in shield
  (38, 3801, 32, 'While it will guide travelers who get lost on a snowy mountain down to the mountain’s base, it won’t forgive anyone who harms nature.'),
  -- jigglypuff in shield
  (39, 3900, 32, 'By freely changing the wavelength of its voice, Jigglypuff sings a mysterious melody sure to make any listener sleepy.'),
  -- wigglytuff in shield
  (40, 4000, 32, 'It’s proud of its fur, which is fine and delicate. In particular, the curl on its forehead has a texture that’s perfectly heavenly.'),
  -- zubat in shield
  (41, 4100, 32, 'Zubat live in caves, down where the sun’s light won’t reach. In the morning, they gather together to keep each other warm as they sleep.'),
  -- golbat in shield
  (42, 4200, 32, 'Its feet are tiny, but this Pokémon walks skillfully. It sneaks up on sleeping prey before sinking in its fangs and slurping up blood.'),
  -- oddish in shield
  (43, 4300, 32, 'During the day, it stays in the cold underground to avoid the sun. It grows by bathing in moonlight.'),
  -- gloom in shield
  (44, 4400, 32, 'What appears to be drool is actually sweet honey. It is very sticky and clings stubbornly if touched.'),
  -- vileplume in shield
  (45, 4500, 32, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.'),
  -- diglett in shield
  (50, 5000, 32, 'It burrows through the ground at a shallow depth. It leaves raised earth in its wake, making it easy to spot.'),
  -- alolan-diglett in shield
  (50, 5001, 32, 'Its three hairs change shape depending on Diglett’s mood. They’re a useful communication tool among these Pokémon.'),
  -- dugtrio in shield
  (51, 5100, 32, 'These Diglett triplets dig over 60 miles below sea level. No one knows what it’s like underground.'),
  -- alolan-dugtrio in shield
  (51, 5101, 32, 'The three of them get along very well. Through their formidable teamwork, they defeat powerful opponents.'),
  -- meowth in shield
  (52, 5200, 32, 'It washes its face regularly to keep the coin on its forehead spotless. It doesn’t get along with Galarian Meowth.'),
  -- alolan-meowth in shield
  (52, 5201, 32, 'Deeply proud and keenly smart, this Pokémon moves with cunning during battle and relentlessly attacks enemies'' weak points.'),
  -- galarian-meowth in shield
  (52, 5202, 32, 'These daring Pokémon have coins on their foreheads. Darker coins are harder, and harder coins garner more respect among Meowth.'),
  -- gigantamax-meowth in shield
  (52, 5203, 32, 'Its body has grown incredibly long and the coin on its forehead has grown incredibly large—all thanks to Gigantamax power.'),
  -- persian in shield
  (53, 5300, 32, 'Its elegant and refined behavior clashes with that of the barbaric Perrserker. The relationship between the two is one of mutual disdain.'),
  -- alolan-persian in shield
  (53, 5301, 32, 'This Pokémon is one tough opponent. Not only does it have formidable physical abilities, but it’s also not above fighting dirty.'),
  -- psyduck in shield
  (54, 5400, 32, 'As Psyduck gets stressed out, its headache gets progressively worse. It uses intense psychic energy to overwhelm those around it.'),
  -- golduck in shield
  (55, 5500, 32, 'Old tales tell of Golduck punishing those that defiled its river. The guilty were dragged into the water and taken away.'),
  -- growlithe in shield
  (58, 5800, 32, 'Extremely loyal, it will fearlessly bark at any opponent to protect its own Trainer from harm.'),
  -- arcanine in shield
  (59, 5900, 32, 'A Pokémon that has long been admired for its beauty. It runs agilely as if on wings.'),
  -- poliwag in shield
  (60, 6000, 32, 'In rivers with fast-flowing water, this Pokémon will cling to a rock by using its thick lips, which act like a suction cup.'),
  -- poliwhirl in shield
  (61, 6100, 32, 'This Pokémon’s sweat is a slimy mucus. When captured, Poliwhirl can slither from its enemies’ grasp and escape.'),
  -- poliwrath in shield
  (62, 6200, 32, 'Poliwrath is skilled at both swimming and martial arts. It uses its well-trained arms to dish out powerful punches.'),
  -- abra in shield
  (63, 6300, 32, 'Abra can teleport in its sleep. Apparently the more deeply Abra sleeps, the farther its teleportations go.'),
  -- kadabra in shield
  (64, 6400, 32, 'This Pokémon’s telekinesis is immensely powerful. To prepare for evolution, Kadabra stores up psychic energy in the star on its forehead.'),
  -- alakazam in shield
  (65, 6500, 32, 'Alakazam wields potent psychic powers. It’s said that this Pokémon used these powers to create the spoons it holds.'),
  -- machop in shield
  (66, 6600, 32, 'Always brimming with power, it passes time by lifting boulders. Doing so makes it even stronger.'),
  -- machoke in shield
  (67, 6700, 32, 'Its formidable body never gets tired. It helps people by doing work such as the moving of heavy goods.'),
  -- machamp in shield
  (68, 6800, 32, 'With four arms that react more quickly than it can think, it can execute many punches at once.'),
  -- tentacool in shield
  (72, 7200, 32, 'This Pokémon is mostly made of water. A Tentacool out in the ocean is very hard to spot, because its body blends in with the sea.'),
  -- tentacruel in shield
  (73, 7300, 32, 'Its 80 tentacles can stretch and shrink freely. Tentacruel ensnares prey in a net of spread-out tentacles, delivering venomous stings to its catch.'),
  -- ponyta in shield
  (77, 7700, 32, 'If you’ve been accepted by Ponyta, its burning mane is mysteriously no longer hot to the touch.'),
  -- galarian-ponyta in shield
  (77, 7701, 32, 'This Pokémon will look into your eyes and read the contents of your heart. If it finds evil there, it promptly hides away.'),
  -- rapidash in shield
  (78, 7800, 32, 'The fastest runner becomes the leader, and it decides the herd’s pace and direction of travel.'),
  -- galarian-rapidash in shield
  (78, 7801, 32, 'Brave and prideful, this Pokémon dashes airily through the forest, its steps aided by the psychic power stored in the fur on its fetlocks.'),
  -- slowpoke in shield
  (79, 7900, 32, 'When this Pokémon’s tail is soaked in water, sweetness seeps from it. Slowpoke uses this trait to lure in and fish up other Pokémon.'),
  -- galarian-slowpoke in shield
  (79, 7901, 32, 'Because Galarian Slowpoke eat the seeds of a plant that grows only in Galar, their tails have developed a spicy flavor.'),
  -- slowbro in shield
  (80, 8000, 32, 'Being bitten by a Shellder shocked this Pokémon into standing on two legs. If the Shellder lets go, it seems Slowbro will turn back into a Slowpoke.'),
  -- galarian-slowbro in shield
  (80, 8002, 32, 'If this Pokémon squeezes the tongue of the Shellder biting it, the Shellder will launch a toxic liquid from the tip of its shell.'),
  -- magnemite in shield
  (81, 8100, 32, 'It subsists on electricity. As Magnemite flies, it emits electromagnetic waves from the units on each side of its body.'),
  -- magneton in shield
  (82, 8200, 32, 'This Pokémon is constantly putting out a powerful magnetic force. Most computers go haywire when a Magneton approaches.'),
  -- farfetchd in shield
  (83, 8300, 32, 'They use a plant stalk as a weapon, but not all of them use it in the same way. Several distinct styles of stalk fighting have been observed.'),
  -- galarian-farfetchd in shield
  (83, 8301, 32, 'The stalks of leeks are thicker and longer in the Galar region. Farfetch’d that adapted to these stalks took on a unique form.'),
  -- shellder in shield
  (90, 9000, 32, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.'),
  -- cloyster in shield
  (91, 9100, 32, 'Once it slams its shell shut, it is impossible to open, even by those with superior strength.'),
  -- gastly in shield
  (92, 9200, 32, 'With its gas-like body, it can sneak into any place it desires. However, it can be blown away by wind.'),
  -- haunter in shield
  (93, 9300, 32, 'If you get the feeling of being watched in darkness when nobody is around, Haunter is there.'),
  -- gengar in shield
  (94, 9400, 32, 'It is said to emerge from darkness to steal the lives of those who become lost in mountains.'),
  -- gigantamax-gengar in shield
  (94, 9402, 32, 'It lays traps, hoping to steal the lives of those it catches. If you stand in front of its mouth, you’ll hear your loved ones'' voices calling out to you.'),
  -- onix in shield
  (95, 9500, 32, 'It rapidly bores through the ground at 50 mph by squirming and twisting its massive, rugged body.'),
  -- krabby in shield
  (98, 9800, 32, 'If it senses danger approaching, it cloaks itself with bubbles from its mouth so it will look bigger.'),
  -- kingler in shield
  (99, 9900, 32, 'Its oversized claw is very powerful, but when it’s not in battle, the claw just gets in the way.'),
  -- exeggcute in shield
  (102, 10200, 32, 'These Pokémon get nervous when they’re not in a group of six. The minute even one member of the group goes missing, Exeggcute become cowardly.'),
  -- exeggutor in shield
  (103, 10300, 32, 'When they work together, Exeggutor’s three heads can put out powerful psychic energy. Cloudy days make this Pokémon sluggish.'),
  -- alolan-exeggutor in shield
  (103, 10301, 32, 'This Pokémon’s psychic powers aren’t as strong as they once were. The head on this Exeggutor’s tail scans surrounding areas with weak telepathy.'),
  -- cubone in shield
  (104, 10400, 32, 'This Pokémon wears the skull of its deceased mother. Sometimes Cubone’s dreams make it cry, but each tear Cubone sheds makes it stronger.'),
  -- marowak in shield
  (105, 10500, 32, 'When this Pokémon evolved, the skull of its mother fused to it. Marowak’s temperament also turned vicious at the same time.'),
  -- alolan-marowak in shield
  (105, 10501, 32, 'The cursed flames that light up the bone carried by this Pokémon are said to cause both mental and physical pain that will never fade.'),
  -- hitmonlee in shield
  (106, 10600, 32, 'The legs freely contract and stretch. The stretchy legs allow it to hit a distant foe with a rising kick.'),
  -- hitmonchan in shield
  (107, 10700, 32, 'Its punches slice the air. However, it seems to need a short break after fighting for three minutes.'),
  -- lickitung in shield
  (108, 10800, 32, 'Bug Pokémon are Lickitung’s main food source. This Pokémon paralyzes its prey with a lick from its long tongue, then swallows the prey whole.'),
  -- koffing in shield
  (109, 10900, 32, 'It adores polluted air. Some claim that Koffing used to be more plentiful in the Galar region than they are now.'),
  -- weezing in shield
  (110, 11000, 32, 'It can’t suck in air quite as well as a Galarian Weezing, but the toxins it creates are more potent than those of its counterpart.'),
  -- galarian-weezing in shield
  (110, 11001, 32, 'Long ago, during a time when droves of factories fouled the air with pollution, Weezing changed into this form for some reason.'),
  -- rhyhorn in shield
  (111, 11100, 32, 'It can remember only one thing at a time. Once it starts rushing, it forgets why it started.'),
  -- rhydon in shield
  (112, 11200, 32, 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees Fahrenheit.'),
  -- chansey in shield
  (113, 11300, 32, 'This species was once very slow. To protect their eggs from other creatures, these Pokémon became able to flee quickly.'),
  -- tangela in shield
  (114, 11400, 32, 'The vines of a Tangela have a distinct scent. In some parts of Galar, Tangela vines are used as herbs.'),
  -- kangaskhan in shield
  (115, 11500, 32, 'There are records of a lost human child being raised by a childless Kangaskhan.'),
  -- horsea in shield
  (116, 11600, 32, 'They swim with dance-like motions and cause whirlpools to form. Horsea compete to see which of them can generate the biggest whirlpool.'),
  -- seadra in shield
  (117, 11700, 32, 'Seadra’s mouth is slender, but its suction power is strong. In an instant, Seadra can suck in food that’s larger than the opening of its mouth.'),
  -- goldeen in shield
  (118, 11800, 32, 'Its dorsal and pectoral fins are strongly developed like muscles. It can swim at a speed of five knots.'),
  -- seaking in shield
  (119, 11900, 32, 'Using its horn, it bores holes in riverbed boulders, making nests to prevent its eggs from washing away.'),
  -- staryu in shield
  (120, 12000, 32, 'Fish Pokémon nibble at it, but Staryu isn’t bothered. Its body regenerates quickly, even if part of it is completely torn off.'),
  -- starmie in shield
  (121, 12100, 32, 'Starmie swims by spinning its body at high speed. As this Pokémon cruises through the ocean, it absorbs tiny plankton.'),
  -- mr-mime in shield
  (122, 12200, 32, 'It’s known for its top-notch pantomime skills. It protects itself from all sorts of attacks by emitting auras from its fingers to create walls.'),
  -- galarian-mr-mime in shield
  (122, 12201, 32, 'It can radiate chilliness from the bottoms of its feet. It’ll spend the whole day tap-dancing on a frozen floor.'),
  -- scyther in shield
  (123, 12300, 32, 'If you come across an area in a forest where a lot of the trees have been cut down, what you’ve found is a Scyther’s territory.'),
  -- jynx in shield
  (124, 12400, 32, 'The Jynx of Galar often have beautiful and delicate voices. Some of these Pokémon have even gathered a fan base.'),
  -- electabuzz in shield
  (125, 12500, 32, 'With the coming of a storm, many of these Pokémon will gather under tall trees and sit there waiting for lightning to strike.'),
  -- magmar in shield
  (126, 12600, 32, 'These Pokémon’s bodies are constantly burning. Magmar are feared as one of the causes behind fires.'),
  -- pinsir in shield
  (127, 12700, 32, 'This Pokémon clamps its pincers down on its prey and then either splits the prey in half or flings it away.'),
  -- tauros in shield
  (128, 12800, 32, 'The Tauros of the Galar region are volatile in nature, and they won’t allow people to ride on their backs.'),
  -- magikarp in shield
  (129, 12900, 32, 'This weak and pathetic Pokémon gets easily pushed along rivers when there are strong currents.'),
  -- gyarados in shield
  (130, 13000, 32, 'Once it begins to rampage, a Gyarados will burn everything down, even in a harsh storm.'),
  -- lapras in shield
  (131, 13100, 32, 'Crossing icy seas is no issue for this cold-resistant Pokémon. Its smooth skin is a little cool to the touch.'),
  -- ditto in shield
  (132, 13200, 32, 'When it encounters another Ditto, it will move faster than normal to duplicate that opponent exactly.'),
  -- eevee in shield
  (133, 13300, 32, 'Thanks to its unstable genetic makeup, this special Pokémon conceals many different possible evolutions.'),
  -- vaporeon in shield
  (134, 13400, 32, 'Its body’s cellular structure is similar to the molecular composition of water. It can melt invisibly in water.'),
  -- jolteon in shield
  (135, 13500, 32, 'It accumulates negative ions in the atmosphere to blast out 10,000-volt lightning bolts.'),
  -- flareon in shield
  (136, 13600, 32, 'It stores some of the air it inhales in its internal flame pouch, which heats it to over 3,000 degrees Fahrenheit.'),
  -- porygon in shield
  (137, 13700, 32, 'In recent years, this species has been very helpful in cyberspace. These Pokémon will go around checking to make sure no suspicious data exists.'),
  -- omanyte in shield
  (138, 13800, 32, 'This Pokémon is a member of an ancient, extinct species. Omanyte paddles through water with its 10 tentacles, looking like it’s just drifting along.'),
  -- omastar in shield
  (139, 13900, 32, 'Omastar’s sharp fangs could crush rock, but the Pokémon can attack only the prey that come within reach of its tentacles.'),
  -- kabuto in shield
  (140, 14000, 32, 'While some say this species has gone extinct, Kabuto sightings are apparently fairly common in some places.'),
  -- kabutops in shield
  (141, 14100, 32, 'The cause behind the extinction of this species is unknown. Kabutops were aggressive Pokémon that inhabited warm seas.'),
  -- aerodactyl in shield
  (142, 14200, 32, 'Aerodactyl’s sawlike fangs can shred skin to tatters—even the skin of Steel-type Pokémon.'),
  -- snorlax in shield
  (143, 14300, 32, 'This Pokémon’s stomach is so strong, even eating moldy or rotten food will not affect it.'),
  -- articuno in shield
  (144, 14400, 32, 'This Pokémon can control ice at will. Articuno is said to live in snowy mountains riddled with permafrost.'),
  -- galarian-articuno in shield
  (144, 14401, 32, 'Known as Articuno, this Pokémon fires beams that can immobilize opponents as if they had been frozen solid.'),
  -- zapdos in shield
  (145, 14500, 32, 'Zapdos is a legendary bird Pokémon. It’s said that when Zapdos rubs its feathers together, lightning will fall immediately after.'),
  -- galarian-zapdos in shield
  (145, 14501, 32, 'One kick from its powerful legs will pulverize a dump truck. Supposedly, this Pokémon runs through the mountains at over 180 mph.'),
  -- moltres in shield
  (146, 14600, 32, 'There are stories of this Pokémon using its radiant, flame-cloaked wings to light up paths for those lost in the mountains.'),
  -- galarian-moltres in shield
  (146, 14601, 32, 'The sinister aura that blazes like molten fire around this Pokémon is what inspired the name Moltres.'),
  -- dratini in shield
  (147, 14700, 32, 'This Pokémon was long considered to be no more than a myth. The small lump on a Dratini’s forehead is actually a horn that’s still coming in.'),
  -- dragonair in shield
  (148, 14800, 32, 'This Pokémon gathers power in the orbs on its tail and controls the weather. When enshrouded by an aura, Dragonair has a mystical appearance.'),
  -- dragonite in shield
  (149, 14900, 32, 'This Pokémon is known as the Sea Incarnate. Figureheads that resemble Dragonite decorate the bows of many ships.'),
  -- hoothoot in shield
  (163, 16300, 32, 'It begins to hoot at the same time every day. Some Trainers use them in place of clocks.'),
  -- noctowl in shield
  (164, 16400, 32, 'When it needs to think, it rotates its head 180 degrees to sharpen its intellectual power.'),
  -- crobat in shield
  (169, 16900, 32, 'This Pokémon flaps its four wings skillfully. Crobat can fly through cramped caves without needing to slow down.'),
  -- chinchou in shield
  (170, 17000, 32, 'On the dark ocean floor, its only means of communication is its constantly flashing lights.'),
  -- lanturn in shield
  (171, 17100, 32, 'This Pokémon flashes a bright light that blinds its prey. This creates an opening for it to deliver an electrical attack.'),
  -- pichu in shield
  (172, 17200, 32, 'The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked.'),
  -- cleffa in shield
  (173, 17300, 32, 'Because of its unusual, starlike silhouette, people believe that it came here on a meteor.'),
  -- igglybuff in shield
  (174, 17400, 32, 'Taking advantage of the softness of its body, Igglybuff moves as if bouncing. Its body turns a deep pink when its temperature rises.'),
  -- togepi in shield
  (175, 17500, 32, 'It is considered to be a symbol of good luck. Its shell is said to be filled with happiness.'),
  -- togetic in shield
  (176, 17600, 32, 'It grows dispirited if it is not with kind people. It can float in midair without moving its wings.'),
  -- natu in shield
  (177, 17700, 32, 'Because its wings aren’t yet fully grown, it has to hop to get around. It is always staring at something.'),
  -- xatu in shield
  (178, 17800, 32, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- bellossom in shield
  (182, 18200, 32, 'Bellossom gather at times and appear to dance. They say that the dance is a ritual to summon the sun.'),
  -- marill in shield
  (183, 18300, 32, 'Even after Marill swims in a cold sea, its water- repellent fur dries almost as soon as Marill leaves the water. That’s why this Pokémon is never cold.'),
  -- azumarill in shield
  (184, 18400, 32, 'These Pokémon create air-filled bubbles. When Azurill play in rivers, Azumarill will cover them with these bubbles.'),
  -- sudowoodo in shield
  (185, 18500, 32, 'It disguises itself as a tree to avoid attack. It hates water, so it will disappear if it starts raining.'),
  -- politoed in shield
  (186, 18600, 32, 'The cry of a male is louder than that of a female. Male Politoed with deep, menacing voices find more popularity with the opposite gender.'),
  -- wooper in shield
  (194, 19400, 32, 'When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.'),
  -- quagsire in shield
  (195, 19500, 32, 'Its body is always slimy. It often bangs its head on the river bottom as it swims but seems not to care.'),
  -- espeon in shield
  (196, 19600, 32, 'It unleashes psychic power from the orb on its forehead. When its power is exhausted, the orb grows dull and dark.'),
  -- umbreon in shield
  (197, 19700, 32, 'On the night of a full moon, or when it gets excited, the ring patterns on its body glow yellow.'),
  -- slowking in shield
  (199, 19900, 32, 'Slowking can solve any problem presented to it, but no one can understand a thing Slowking says.'),
  -- galarian-slowking in shield
  (199, 19901, 32, 'While chanting strange spells, this Pokémon combines its internal toxins with what it’s eaten, creating strange potions.'),
  -- wobbuffet in shield
  (202, 20200, 32, 'To keep its pitch-black tail hidden, it lives quietly in the darkness. It is never first to attack.'),
  -- dunsparce in shield
  (206, 20600, 32, 'The nests Dunsparce live in are mazes of tunnels. They never get lost in their own nests—they can tell where they are by the scent of the dirt.'),
  -- steelix in shield
  (208, 20800, 32, 'It is thought its body transformed as a result of iron accumulating internally from swallowing soil.'),
  -- qwilfish in shield
  (211, 21100, 32, 'The small spikes covering its body developed from scales. They inject a toxin that causes fainting.'),
  -- scizor in shield
  (212, 21200, 32, 'Though its body is slim, Scizor has tremendous attacking power. Even Scizor’s muscles are made of metal.'),
  -- shuckle in shield
  (213, 21300, 32, 'The berries stored in its vaselike shell eventually become a thick, pulpy juice.'),
  -- heracross in shield
  (214, 21400, 32, 'This Pokémon takes pride in its strength, which allows it to lift things 100 times heavier than itself with no trouble at all.'),
  -- sneasel in shield
  (215, 21500, 32, 'It has a cunning yet savage disposition. It waits for parents to leave their nests, and then it sneaks in to steal their eggs.'),
  -- swinub in shield
  (220, 22000, 32, 'If it smells something enticing, it dashes off headlong to find the source of the aroma.'),
  -- piloswine in shield
  (221, 22100, 32, 'Although its legs are short, its rugged hooves prevent it from slipping, even on icy ground.'),
  -- corsola in shield
  (222, 22200, 32, 'These Pokémon live in warm seas. In prehistoric times, many lived in the oceans around the Galar region as well.'),
  -- galarian-corsola in shield
  (222, 22201, 32, 'Sudden climate change wiped out this ancient kind of Corsola. This Pokémon absorbs others'' life-force through its branches.'),
  -- remoraid in shield
  (223, 22300, 32, 'Using its dorsal fin as a suction pad, it clings to a Mantine’s underside to scavenge for leftovers.'),
  -- octillery in shield
  (224, 22400, 32, 'It traps enemies with its suction-cupped tentacles, then smashes them with its rock-hard head.'),
  -- delibird in shield
  (225, 22500, 32, 'It has a generous habit of sharing its food with people and Pokémon, so it’s always scrounging around for more food.'),
  -- mantine in shield
  (226, 22600, 32, 'As it majestically swims, it doesn’t care if Remoraid attach to it to scavenge for its leftovers.'),
  -- skarmory in shield
  (227, 22700, 32, 'People fashion swords from Skarmory’s shed feathers, so this Pokémon is a popular element in heraldic designs.'),
  -- kingdra in shield
  (230, 23000, 32, 'Scales shed by this Pokémon have such a splendorous gleam to them that they’ve been given to royalty as gifts.'),
  -- porygon2 in shield
  (233, 23300, 32, 'After artificial intelligence was implemented in Porygon2, the Pokémon began using a strange language that only other Porygon2 understand.'),
  -- tyrogue in shield
  (236, 23600, 32, 'Even though it is small, it can’t be ignored because it will slug any handy target without warning.'),
  -- hitmontop in shield
  (237, 23700, 32, 'After doing a handstand to throw off the opponent’s timing, it presents its fancy kick moves.'),
  -- smoochum in shield
  (238, 23800, 32, 'This is a very curious Pokémon. Smoochum decides what it likes and dislikes by touching things with its lips.'),
  -- elekid in shield
  (239, 23900, 32, 'It’s not good at storing electricity yet. This Pokémon sneaks into people’s homes, looking for electrical outlets to eat electricity from.'),
  -- magby in shield
  (240, 24000, 32, 'This Pokémon makes its home near volcanoes. At the end of the day, Magby soaks in magma, resting and recovering from the day’s fatigue.'),
  -- miltank in shield
  (241, 24100, 32, 'This Pokémon needs to be milked every day, or else it will fall ill. The flavor of Miltank milk changes with the seasons.'),
  -- blissey in shield
  (242, 24200, 32, 'Blissey lays mysterious eggs that are filled with happiness. It’s said that anyone who eats a Blissey egg will start acting kindly to all others.'),
  -- larvitar in shield
  (246, 24600, 32, 'It feeds on soil. After it has eaten a large mountain, it will fall asleep so it can grow.'),
  -- pupitar in shield
  (247, 24700, 32, 'It will not stay still, even while it’s a pupa. It already has arms and legs under its solid shell.'),
  -- tyranitar in shield
  (248, 24800, 32, 'The quakes caused when it walks make even great mountains crumble and change the surrounding terrain.'),
  -- celebi in shield
  (251, 25100, 32, 'This Pokémon traveled through time to come from the future. It bolsters grass and trees with its own strength, and it can heal wounds, too.'),
  -- zigzagoon in shield
  (263, 26300, 32, 'Zigzagoon that adapted to regions outside Galar acquired this appearance. If you’ve lost something, this Pokémon can likely find it.'),
  -- galarian-zigzagoon in shield
  (263, 26301, 32, 'Thought to be the oldest form of Zigzagoon, it moves in zigzags and wreaks havoc upon its surroundings.'),
  -- linoone in shield
  (264, 26400, 32, 'It uses its explosive speed and razor-sharp claws to bring down prey. Running along winding paths is not its strong suit.'),
  -- galarian-linoone in shield
  (264, 26401, 32, 'This very aggressive Pokémon will recklessly challenge opponents stronger than itself.'),
  -- lotad in shield
  (270, 27000, 32, 'Its leaf grew too large for it to live on land. That is how it began to live floating in the water.'),
  -- lombre in shield
  (271, 27100, 32, 'It lives at the water’s edge where it is sunny. It sleeps on a bed of water grass by day and becomes active at night.'),
  -- ludicolo in shield
  (272, 27200, 32, 'If it hears festive music, it begins moving in rhythm in order to amplify its power.'),
  -- seedot in shield
  (273, 27300, 32, 'It attaches itself to a tree branch using the top of its head. Strong winds can sometimes make it fall.'),
  -- nuzleaf in shield
  (274, 27400, 32, 'They live in holes bored in large trees. The sound of Nuzleaf’s grass flute fills listeners with dread.'),
  -- shiftry in shield
  (275, 27500, 32, 'It lives quietly in the deep forest. It is said to create chilly winter winds with the fans it holds.'),
  -- wingull in shield
  (278, 27800, 32, 'It soars on updrafts without flapping its wings. It makes a nest on sheer cliffs at the sea’s edge.'),
  -- pelipper in shield
  (279, 27900, 32, 'Skimming the water’s surface, it dips its large bill in the sea, scoops up food and water, and carries it.'),
  -- ralts in shield
  (280, 28000, 32, 'If its horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in shield
  (281, 28100, 32, 'It has a psychic power that enables it to distort the space around it and see into the future.'),
  -- gardevoir in shield
  (282, 28200, 32, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- nincada in shield
  (290, 29000, 32, 'It can sometimes live underground for more than 10 years. It absorbs nutrients from the roots of trees.'),
  -- ninjask in shield
  (291, 29100, 32, 'This Pokémon is so quick, it is said to be able to avoid any attack. It loves to feed on tree sap.'),
  -- shedinja in shield
  (292, 29200, 32, 'A strange Pokémon—it flies without moving its wings, has a hollow shell for a body, and does not breathe.'),
  -- whismur in shield
  (293, 29300, 32, 'When Whismur cries, the sound of its own voice startles it, making the Pokémon cry even louder. It cries until it’s exhausted, then it falls asleep.'),
  -- loudred in shield
  (294, 29400, 32, 'The force of this Pokémon’s loud voice isn’t just the sound—it’s also the wave of air pressure that blows opponents away and damages them.'),
  -- exploud in shield
  (295, 29500, 32, 'This Pokémon can do more than just shout. To communicate with others of its kind, it’ll emit all sorts of sounds from the holes in its body.'),
  -- azurill in shield
  (298, 29800, 32, 'Although Azurill are normally docile, an angry one will swing around the big ball on its tail and try to smash its opponents.'),
  -- sableye in shield
  (302, 30200, 32, 'It feeds on gemstone crystals. In darkness, its eyes sparkle with the glitter of jewels.'),
  -- mawile in shield
  (303, 30300, 32, 'It chomps with its gaping mouth. Its huge jaws are actually steel horns that have been transformed.'),
  -- aron in shield
  (304, 30400, 32, 'When Aron evolves, its steel armor peels off. In ancient times, people would collect Aron’s shed armor and make good use of it in their daily lives.'),
  -- lairon in shield
  (305, 30500, 32, 'During territorial disputes, Lairon fight by slamming into each other. Close inspection of their steel armor reveals scratches and dents.'),
  -- aggron in shield
  (306, 30600, 32, 'Long ago, there was a king who wore a helmet meant to resemble the head of an Aggron. He was trying to channel the Pokémon’s strength.'),
  -- electrike in shield
  (309, 30900, 32, 'It stores electricity in its fur. It gives off sparks from all over its body in seasons when the air is dry.'),
  -- manectric in shield
  (310, 31000, 32, 'It rarely appears before people. It is said to nest where lightning has fallen.'),
  -- roselia in shield
  (315, 31500, 32, 'It uses the different poisons in each hand separately when it attacks. The stronger its aroma, the healthier it is.'),
  -- carvanha in shield
  (318, 31800, 32, 'These Pokémon have sharp fangs and powerful jaws. Sailors avoid Carvanha dens at all costs.'),
  -- sharpedo in shield
  (319, 31900, 32, 'This Pokémon is known as the Bully of the Sea. Any ship entering the waters Sharpedo calls home will be attacked—no exceptions.'),
  -- wailmer in shield
  (320, 32000, 32, 'When it sucks in a large volume of seawater, it becomes like a big, bouncy ball. It eats a ton of food daily.'),
  -- wailord in shield
  (321, 32100, 32, 'Its immense size is the reason for its popularity. Wailord watching is a favorite sightseeing activity in various parts of the world.'),
  -- torkoal in shield
  (324, 32400, 32, 'You find abandoned coal mines full of them. They dig tirelessly in search of coal.'),
  -- trapinch in shield
  (328, 32800, 32, 'It makes an inescapable conical pit and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in shield
  (329, 32900, 32, 'To help make its wings grow, it dissolves quantities of prey in its digestive juices and guzzles them down every day.'),
  -- flygon in shield
  (330, 33000, 32, 'It is nicknamed the Desert Spirit because the flapping of its wings sounds like a woman singing.'),
  -- swablu in shield
  (333, 33300, 32, 'Since Swablu looks like a cumulus cloud, foes can have a hard time finding it. Apparently its wings turned white over many generations.'),
  -- altaria in shield
  (334, 33400, 32, 'This Pokémon has a kind disposition, but if it’s provoked, it will threaten opponents with shrill cries before attacking them without mercy.'),
  -- lunatone in shield
  (337, 33700, 32, 'It was discovered at the site of a meteor strike 40 years ago. Its stare can lull its foes to sleep.'),
  -- solrock in shield
  (338, 33800, 32, 'Solar energy is the source of its power, so it is strong during the daytime. When it spins, its body shines.'),
  -- barboach in shield
  (339, 33900, 32, 'It probes muddy riverbeds with its two long whiskers. A slimy film protects its body.'),
  -- whiscash in shield
  (340, 34000, 32, 'It claims a large swamp to itself. If a foe comes near it, it sets off tremors by thrashing around.'),
  -- corphish in shield
  (341, 34100, 32, 'It was originally a Pokémon from afar that escaped to the wild. It can adapt to the dirtiest river.'),
  -- crawdaunt in shield
  (342, 34200, 32, 'A brutish Pokémon that loves to battle. It will crash itself into any foe that approaches its nest.'),
  -- baltoy in shield
  (343, 34300, 32, 'It was discovered in ancient ruins. While moving, it constantly spins. It stands on one foot even when asleep.'),
  -- claydol in shield
  (344, 34400, 32, 'It appears to have been born from clay dolls made by ancient people. It uses telekinesis to float and move.'),
  -- lileep in shield
  (345, 34500, 32, 'Lileep clings to rocks on the seabed. When prey comes close, this Pokémon entangles it with petallike tentacles.'),
  -- cradily in shield
  (346, 34600, 32, 'Once Cradily catches prey in its tentacles, it digests them whole and absorbs their nutrients.'),
  -- anorith in shield
  (347, 34700, 32, 'Anorith can swim swiftly by pulling its eight wings through the water like oars on a boat. This Pokémon is an ancestor of modern bug Pokémon.'),
  -- armaldo in shield
  (348, 34800, 32, 'Though it lives on land, it’s also a good swimmer. It dives into the ocean in search of prey, using its sharp claws to take down its quarry.'),
  -- feebas in shield
  (349, 34900, 32, 'It is a shabby and ugly Pokémon. However, it is very hardy and can survive on little water.'),
  -- milotic in shield
  (350, 35000, 32, 'It’s said that a glimpse of a Milotic and its beauty will calm any hostile emotions you’re feeling.'),
  -- duskull in shield
  (355, 35500, 32, 'Making itself invisible, it silently sneaks up to prey. It has the ability to slip through thick walls.'),
  -- dusclops in shield
  (356, 35600, 32, 'It seeks drifting will-o’-the-wisps and sucks them into its empty body. What happens inside is a mystery.'),
  -- absol in shield
  (359, 35900, 32, 'Because of this Pokémon’s ability to detect danger, people mistook Absol as a bringer of doom.'),
  -- wynaut in shield
  (360, 36000, 32, 'It tends to move in a pack with others. They cluster in a tight group to sleep in a cave.'),
  -- snorunt in shield
  (361, 36100, 32, 'It can only survive in cold areas. It bounces happily around, even in environments as cold as −150 degrees Fahrenheit.'),
  -- glalie in shield
  (362, 36200, 32, 'It can instantly freeze moisture in the atmosphere. It uses this power to freeze its foes.'),
  -- spheal in shield
  (363, 36300, 32, 'As it drifts among the waves, Spheal probes the sea. As soon as it spots prey, it informs the Walrein in its herd.'),
  -- sealeo in shield
  (364, 36400, 32, 'This Pokémon has a habit of spinning round things on its nose, whether those things are Poké Balls or Spheal.'),
  -- walrein in shield
  (365, 36500, 32, 'Walrein’s tusks keep growing throughout its life. Tusks broken in battle will grow back to their usual impressive size in a year.'),
  -- relicanth in shield
  (369, 36900, 32, 'This Pokémon was discovered during deep-sea exploration. Its appearance hasn’t changed in 100,000,000 years, so it’s called a living fossil.'),
  -- bagon in shield
  (371, 37100, 32, 'Bagon is a solitary Pokémon that doesn’t form groups with others of its kind. It also has a head hard enough to cleave a boulder in one strike.'),
  -- shelgon in shield
  (372, 37200, 32, 'Shelgon ignores its hunger entirely, never eating any food. Apparently, Shelgon will evolve once all its energy stores are used up.'),
  -- salamence in shield
  (373, 37300, 32, 'While basking in the joy of flight generally keeps this Pokémon in high spirits, Salamence turns into an uncontrollable menace if something angers it.'),
  -- beldum in shield
  (374, 37400, 32, 'The cells in this Pokémon’s body are composed of magnetic material. Instead of blood, magnetic forces flow through Beldum’s body.'),
  -- metang in shield
  (375, 37500, 32, 'Using magnetic forces to stay aloft, this Pokémon flies at high speeds, weaving through harsh mountain terrain in pursuit of prey.'),
  -- metagross in shield
  (376, 37600, 32, 'Metagross is the result of the fusion of two Metang. This Pokémon defeats its opponents through use of its supercomputer-level brain.'),
  -- regirock in shield
  (377, 37700, 32, 'Cutting-edge technology was used to study the internals of this Pokémon’s rock body, but nothing was found—not even a brain or a heart.'),
  -- regice in shield
  (378, 37800, 32, 'This Pokémon’s body is made of solid ice. It’s said that Regice was born beneath thick ice in the ice age.'),
  -- registeel in shield
  (379, 37900, 32, 'It’s rumored that this Pokémon was born deep underground in the planet’s mantle and that it emerged onto the surface 10,000 years ago.'),
  -- jirachi in shield
  (385, 38500, 32, 'It’s believed that when this Pokémon wakes from its 1,000-year slumber, it will grant any wishes written on the notes attached to its head.'),
  -- shinx in shield
  (403, 40300, 32, 'Electricity makes this Pokémon’s fur glow. Shinx sends signals to others of its kind by shaking the tip of its tail while the tail tip is shining brightly.'),
  -- luxio in shield
  (404, 40400, 32, 'Upon encountering an opponent, this Pokémon prepares for battle by extending its claws, which can put out 1,000,000 volts of electricity.'),
  -- luxray in shield
  (405, 40500, 32, 'Seeing through solid objects uses up a lot of Luxray’s electricity, so the Pokémon sleeps for long periods of time to store up energy.'),
  -- budew in shield
  (406, 40600, 32, 'This Pokémon is highly sensitive to temperature changes. When its bud starts to open, that means spring is right around the corner.'),
  -- roserade in shield
  (407, 40700, 32, 'The poison in its right hand is quick acting. The poison in its left hand is slow acting. Both are life threatening.'),
  -- combee in shield
  (415, 41500, 32, 'It ceaselessly gathers nectar from sunrise to sundown, all for the sake of Vespiquen and the swarm.'),
  -- vespiquen in shield
  (416, 41600, 32, 'Vespiquen that give off more pheromones have larger swarms of Combee attendants.'),
  -- cherubi in shield
  (420, 42000, 32, 'The deeper a Cherubi’s red, the more nutrients it has stockpiled in its body. And the sweeter and tastier its small ball!'),
  -- cherrim in shield
  (421, 42100, 32, 'Its folded petals are pretty tough. Bird Pokémon can peck at them all they want, and Cherrim won’t be bothered at all.'),
  -- shellos in shield
  (422, 42200, 32, 'Subjecting this Pokémon to a strong force causes it to secrete a strange purple fluid. Though harmless, the fluid is awfully sticky.'),
  -- shellos-east in shield
  (422, 42201, 32, 'Its appearance changes depending on the environment. One theory suggests that living in cold seas causes Shellos to take on this form.'),
  -- gastrodon in shield
  (423, 42300, 32, 'The softness of its body helps disperse the force of impacts, so although its body is uncommonly squishy, it’s also surprisingly resilient.'),
  -- gastrodon-east in shield
  (423, 42301, 32, 'Its body is covered in a sticky slime. It’s very susceptible to dehydration, so it can’t spend too much time on land.'),
  -- drifloon in shield
  (425, 42500, 32, 'The gathering of many souls gave rise to this Pokémon. During humid seasons, they seem to appear in abundance.'),
  -- drifblim in shield
  (426, 42600, 32, 'It grabs people and Pokémon and carries them off somewhere. Where do they go? Nobody knows.'),
  -- buneary in shield
  (427, 42700, 32, 'Buneary can attack by rolling up their ears and then striking with the force created by unrolling them. This attack becomes stronger with training.'),
  -- lopunny in shield
  (428, 42800, 32, 'Once hot seasons are over, Lopunny’s coat will be replaced with fur that holds a lot of insulating air in preparation for colder weather.'),
  -- stunky in shield
  (434, 43400, 32, 'If it lifts its tail and points its rear at you, beware. It’s about to spray you with a fluid stinky enough to make you faint.'),
  -- skuntank in shield
  (435, 43500, 32, 'It digs holes in the ground to make its nest. The stench of the fluid it lets fly from the tip of its tail is extremely potent.'),
  -- bronzor in shield
  (436, 43600, 32, 'Polishing Bronzor to a shine makes its surface reflect the truth, according to common lore. Be that as it may, Bronzor hates being polished.'),
  -- bronzong in shield
  (437, 43700, 32, 'Many scientists suspect that this Pokémon originated outside the Galar region, based on the patterns on its body.'),
  -- bonsly in shield
  (438, 43800, 32, 'This Pokémon lives in dry, rocky areas. As its green spheres dry out, their dull luster increases.'),
  -- mime-jr in shield
  (439, 43900, 32, 'It looks for a Mr. Rime that’s a good dancer and carefully copies the Mr. Rime’s steps like an apprentice.'),
  -- happiny in shield
  (440, 44000, 32, 'Happiny’s willing to lend its precious round stone to those it’s friendly with, but if the stone isn’t returned, Happiny will cry and throw a tantrum.'),
  -- spiritomb in shield
  (442, 44200, 32, 'All Spiritomb’s mischief and misdeeds compelled a traveler to use a mysterious spell to bind Spiritomb to an odd keystone.'),
  -- gible in shield
  (443, 44300, 32, 'Gible attacks anything that moves, and it drags whatever it catches into the crevice that is its lair. Despite the big mouth, Gible’s stomach is small.'),
  -- gabite in shield
  (444, 44400, 32, 'Jewels are buried in the caves these Pokémon nest in, but you’ll be torn apart by claws and fangs the moment you enter one of these caves.'),
  -- garchomp in shield
  (445, 44500, 32, 'Garchomp is fast both underground and above. It can bring down prey and return to its den before its body has chilled from being outside.'),
  -- munchlax in shield
  (446, 44600, 32, 'It stores food beneath its fur. It might share just one bite, but only if it really trusts you.'),
  -- riolu in shield
  (447, 44700, 32, 'It can use waves called auras to gauge how others are feeling. These same waves can also tell this Pokémon about the state of the environment.'),
  -- lucario in shield
  (448, 44800, 32, 'It can tell what people are thinking. Only Trainers who have justice in their hearts can earn this Pokémon’s trust.'),
  -- hippopotas in shield
  (449, 44900, 32, 'This Pokémon is active during the day and passes the cold desert nights burrowed snugly into the sand.'),
  -- hippowdon in shield
  (450, 45000, 32, 'When roused to violence by its rage, it spews out the quantities of sand it has swallowed and whips up a sandstorm.'),
  -- skorupi in shield
  (451, 45100, 32, 'It attacks using the claws on its tail. Once locked in its grip, its prey is unable to move as this Pokémon’s poison seeps in.'),
  -- drapion in shield
  (452, 45200, 32, 'It’s so vicious that it’s called the Sand Demon. Yet when confronted by Hippowdon, Drapion keeps a low profile and will never pick a fight.'),
  -- croagunk in shield
  (453, 45300, 32, 'Once diluted, its poison becomes medicinal. This Pokémon came into popularity after a pharmaceutical company chose it as a mascot.'),
  -- toxicroak in shield
  (454, 45400, 32, 'It booms out a victory croak when its prey goes down in defeat. This Pokémon and Seismitoad are related species.'),
  -- mantyke in shield
  (458, 45800, 32, 'It swims along with a school of Remoraid, and they’ll all fight together to repel attackers.'),
  -- snover in shield
  (459, 45900, 32, 'The berries that grow around its belly are like ice pops. Galarian Darumaka absolutely love these berries.'),
  -- abomasnow in shield
  (460, 46000, 32, 'This Pokémon is known to bring blizzards. A shake of its massive body is enough to cause whiteout conditions.'),
  -- weavile in shield
  (461, 46100, 32, 'With its claws, it leaves behind signs for its friends to find. The number of distinct signs is said to be over 500.'),
  -- magnezone in shield
  (462, 46200, 32, 'It’s thought that a special magnetic field changed the molecular structure of this Pokémon’s body, and that’s what caused the Pokémon’s evolution.'),
  -- lickilicky in shield
  (463, 46300, 32, 'Lickilicky can do just about anything with its tongue, which is as dexterous as the human hand. In contrast, Lickilicky’s use of its fingers is clumsy.'),
  -- rhyperior in shield
  (464, 46400, 32, 'It relies on its carapace to deflect incoming attacks and throw its enemy off balance. As soon as that happens, it drives its drill into the foe.'),
  -- tangrowth in shield
  (465, 46500, 32, 'Vine growth is accelerated for Tangrowth living in warm climates. If the vines grow long, Tangrowth shortens them by tearing parts of them off.'),
  -- electivire in shield
  (466, 46600, 32, 'In terms of electrical-energy output, Electivire is one of the best among all Electric Pokémon. It discharges high-voltage currents from its tails.'),
  -- magmortar in shield
  (467, 46700, 32, 'Living in the crater of a volcano has caused this Pokémon’s body to resemble its environment— it has an organ similar to a magma chamber.'),
  -- togekiss in shield
  (468, 46800, 32, 'Known as a bringer of blessings, it’s been depicted on good-luck charms since ancient times.'),
  -- leafeon in shield
  (470, 47000, 32, 'This Pokémon’s tail is blade sharp, with a fantastic cutting edge that can slice right though large trees.'),
  -- glaceon in shield
  (471, 47100, 32, 'The coldness emanating from Glaceon causes powdery snow to form, making it quite a popular Pokémon at ski resorts.'),
  -- mamoswine in shield
  (473, 47300, 32, 'It looks strong, and that’s exactly what it is. As the weather grows colder, its ice tusks grow longer, thicker, and more impressive.'),
  -- porygon-z in shield
  (474, 47400, 32, 'Some say an additional program made this Pokémon evolve, but even academics can’t agree on whether Porygon-Z is really an evolution.'),
  -- gallade in shield
  (475, 47500, 32, 'Sharply attuned to others’ wishes for help, this Pokémon seeks out those in need and aids them in battle.'),
  -- dusknoir in shield
  (477, 47700, 32, 'With the mouth on its belly, Dusknoir swallows its target whole. The soul is the only thing eaten— Dusknoir disgorges the body before departing.'),
  -- froslass in shield
  (478, 47800, 32, 'It spits out cold air of nearly −60 degrees Fahrenheit to freeze its quarry. It brings frozen prey back to its lair and neatly lines them up.'),
  -- rotom in shield
  (479, 47900, 32, 'With a body made of plasma, it can inhabit all sorts of machines. It loves to surprise others.'),
  -- rotom-heat in shield
  (479, 47901, 32, 'This form of Rotom enjoys making mischief by turning up the heat. It will gleefully burn your favorite outfit.'),
  -- rotom-wash in shield
  (479, 47902, 32, 'This Rotom has possessed a washing machine that uses a special motor. It blasts out water to get enemies to back down.'),
  -- rotom-frost in shield
  (479, 47903, 32, 'When it’s like this, Rotom likes to play pranks that are freezing cold. You may find it’s turned the bath you just filled to solid ice!'),
  -- rotom-fan in shield
  (479, 47904, 32, 'This Rotom has taken over a fan that has a special motor. Its gusts of wind blow its opponents away!'),
  -- rotom-mow in shield
  (479, 47905, 32, 'In this form, Rotom focuses its antics on plants. Any flowers you were growing are going to get mowed down.'),
  -- regigigas in shield
  (486, 48600, 32, 'It’s said that Regigigas created other Pokémon from many different materials before it moved the continents to where they are today.'),
  -- lillipup in shield
  (506, 50600, 32, 'This Pokémon is far brighter than the average child, and Lillipup won’t forget the love it receives or any abuse it suffers.'),
  -- herdier in shield
  (507, 50700, 32, 'The black fur that covers this Pokémon’s body is dense and springy. Even sharp fangs bounce right off.'),
  -- stoutland in shield
  (508, 50800, 32, 'Stoutland is immensely proud of its impressive moustache. It’s said that moustache length is what determines social standing among this species.'),
  -- purrloin in shield
  (509, 50900, 32, 'Opponents that get drawn in by its adorable behavior come away with stinging scratches from its claws and stinging pride from its laughter.'),
  -- liepard in shield
  (510, 51000, 32, 'This stealthy Pokémon sneaks up behind prey without making any sound at all. It competes with Thievul for territory.'),
  -- munna in shield
  (517, 51700, 32, 'It eats dreams and releases mist. The mist is pink when it’s eating a good dream, and black when it’s eating a nightmare.'),
  -- musharna in shield
  (518, 51800, 32, 'It drowses and dreams all the time. It’s best to leave it be if it’s just woken up, as it’s a terrible grump when freshly roused from sleep.'),
  -- pidove in shield
  (519, 51900, 32, 'It’s forgetful and not very bright, but many Trainers love it anyway for its friendliness and sincerity.'),
  -- tranquill in shield
  (520, 52000, 32, 'These bright Pokémon have acute memories. Apparently delivery workers often choose them as their partners.'),
  -- unfezant in shield
  (521, 52100, 32, 'This Pokémon is intelligent and intensely proud. People will sit up and take notice if you become the Trainer of one.'),
  -- roggenrola in shield
  (524, 52400, 32, 'When it detects a noise, it starts to move. The energy core inside it makes this Pokémon slightly warm to the touch.'),
  -- boldore in shield
  (525, 52500, 32, 'It relies on sound in order to monitor what’s in its vicinity. When angered, it will attack without ever changing the direction it’s facing.'),
  -- gigalith in shield
  (526, 52600, 32, 'Although its energy blasts can blow away a dump truck, they have a limitation— they can only be fired when the sun is out.'),
  -- woobat in shield
  (527, 52700, 32, 'It emits ultrasonic waves as it flutters about, searching for its prey—bug Pokémon.'),
  -- swoobat in shield
  (528, 52800, 32, 'The auspicious shape of this Pokémon’s nose apparently led some regions to consider Swoobat a symbol of good luck.'),
  -- drilbur in shield
  (529, 52900, 32, 'It’s a digger, using its claws to burrow through the ground. It causes damage to vegetable crops, so many farmers have little love for it.'),
  -- excadrill in shield
  (530, 53000, 32, 'Known as the Drill King, this Pokémon can tunnel through the terrain at speeds of over 90 mph.'),
  -- audino in shield
  (531, 53100, 32, 'This Pokémon has a kind heart. By touching with its feelers, Audino can gauge other creatures’ feelings and physical conditions.'),
  -- timburr in shield
  (532, 53200, 32, 'Timburr that have started carrying logs that are about three times their size are nearly ready to evolve.'),
  -- gurdurr in shield
  (533, 53300, 32, 'Gurdurr excels at demolition—construction is not its forte. In any case, there’s skill in the way this Pokémon wields its metal beam.'),
  -- conkeldurr in shield
  (534, 53400, 32, 'When going all out, this Pokémon throws aside its concrete pillars and leaps at opponents to pummel them with its fists.'),
  -- tympole in shield
  (535, 53500, 32, 'It uses sound waves to communicate with others of its kind. People and other Pokémon species can’t hear its cries of warning.'),
  -- palpitoad in shield
  (536, 53600, 32, 'On occasion, their cries are sublimely pleasing to the ear. Palpitoad with larger lumps on their bodies can sing with a wider range of sounds.'),
  -- seismitoad in shield
  (537, 53700, 32, 'This Pokémon is popular among the elderly, who say the vibrations of its lumps are great for massages.'),
  -- throh in shield
  (538, 53800, 32, 'They train in groups of five. Any member that can’t keep up will discard its belt and leave the group.'),
  -- sawk in shield
  (539, 53900, 32, 'The karate chops of a Sawk that’s trained itself to the limit can cleave the ocean itself.'),
  -- venipede in shield
  (543, 54300, 32, 'Its fangs are highly venomous. If this Pokémon finds prey it thinks it can eat, it leaps for them without any thought of how things might turn out.'),
  -- whirlipede in shield
  (544, 54400, 32, 'Whirlipede protects itself with a sturdy shell and poisonous spikes while it stores up the energy it’ll need for evolution.'),
  -- scolipede in shield
  (545, 54500, 32, 'Scolipede engage in fierce territorial battles with Centiskorch. At the end of one of these battles, the victor makes a meal of the loser.'),
  -- cottonee in shield
  (546, 54600, 32, 'Weaving together the cotton of both Cottonee and Eldegoss produces exquisite cloth that’s highly prized by many luxury brands.'),
  -- whimsicott in shield
  (547, 54700, 32, 'As long as this Pokémon bathes in sunlight, its cotton keeps growing. If too much cotton fluff builds up, Whimsicott tears it off and scatters it.'),
  -- petilil in shield
  (548, 54800, 32, 'The deeper the color of a Petilil’s leaves, the healthier the Pokémon is. Petilil sometimes makes its home in a well-tended field or flowerbed.'),
  -- lilligant in shield
  (549, 54900, 32, 'Essential oils made from Lilligant flowers have a sublime scent, but they’re also staggeringly expensive.'),
  -- basculin in shield
  (550, 55000, 32, 'In the past, it often appeared on the dinner table. The meat of red-striped Basculin is on the fatty side, and it’s more popular with the youth.'),
  -- basculin-blue-striped in shield
  (550, 55001, 32, 'Known for their violence, these Pokémon have the most fights with schools of red-striped Basculin.'),
  -- sandile in shield
  (551, 55100, 32, 'Sandile is small, but its legs and lower body are powerful. Pushing sand aside as it goes, Sandile moves through the desert as if it’s swimming.'),
  -- krokorok in shield
  (552, 55200, 32, 'Although this Pokémon has specialized eyes that allow it to see in the dark, Krokorok won’t move much at night—the desert gets cold after sunset.'),
  -- krookodile in shield
  (553, 55300, 32, 'While terribly aggressive, Krookodile also has the patience to stay hidden under sand for days, lying in wait for prey.'),
  -- darumaka in shield
  (554, 55400, 32, 'This popular symbol of good fortune will never fall over in its sleep, no matter how it’s pushed or pulled.'),
  -- galarian-darumaka in shield
  (554, 55401, 32, 'The colder they get, the more energetic they are. They freeze their breath to make snowballs, using them as ammo for playful snowball fights.'),
  -- darmanitan in shield
  (555, 55500, 32, 'This Pokémon’s power level rises along with the temperature of its fire, which can reach 2,500 degrees Fahrenheit.'),
  -- darmanitan-zen in shield
  (555, 55501, 32, 'When wounded, it stops moving. It goes as still as stone to meditate, sharpening its mind and spirit.'),
  -- galarian-darmanitan in shield
  (555, 55502, 32, 'Though it has a gentle disposition, it’s also very strong. It will quickly freeze the snowball on its head before going for a headbutt.'),
  -- galarian-darmanitan-zen in shield
  (555, 55503, 32, 'Darmanitan takes this form when enraged. It won’t stop spewing flames until its rage has settled, even if its body starts to melt.'),
  -- maractus in shield
  (556, 55600, 32, 'Once each year, this Pokémon scatters its seeds. They’re jam-packed with nutrients, making them a precious food source out in the desert.'),
  -- dwebble in shield
  (557, 55700, 32, 'It first tries to find a rock to live in, but if there are no suitable rocks to be found, Dwebble may move in to the ports of a Hippowdon.'),
  -- crustle in shield
  (558, 55800, 32, 'Its thick claws are its greatest weapons. They’re mighty enough to crack Rhyperior’s carapace.'),
  -- scraggy in shield
  (559, 55900, 32, 'It protects itself with its durable skin. It’s thought that this Pokémon will evolve once its skin has completely stretched out.'),
  -- scrafty in shield
  (560, 56000, 32, 'While mostly known for having the temperament of an aggressive ruffian, this Pokémon takes very good care of its family, friends, and territory.'),
  -- sigilyph in shield
  (561, 56100, 32, 'A discovery was made in the desert where Sigilyph fly. The ruins of what may have been an ancient city were found beneath the sands.'),
  -- yamask in shield
  (562, 56200, 32, 'The spirit of a person from a bygone age became this Pokémon. It rambles through ruins, searching for someone who knows its face.'),
  -- galarian-yamask in shield
  (562, 56201, 32, 'It’s said that this Pokémon was formed when an ancient clay tablet was drawn to a vengeful spirit.'),
  -- cofagrigus in shield
  (563, 56300, 32, 'There are many depictions of Cofagrigus decorating ancient tombs. They’re symbols of the wealth that kings of bygone eras had.'),
  -- tirtouga in shield
  (564, 56400, 32, 'Tirtouga is considered to be the ancestor of many turtle Pokémon. It was restored to life from a fossil.'),
  -- carracosta in shield
  (565, 56500, 32, 'This Pokémon emerges from the water in search of prey despite the fact that it moves more slowly on land.'),
  -- archen in shield
  (566, 56600, 32, 'Archen is said to be the ancestor of bird Pokémon. It lived in treetops, eating berries and bug Pokémon.'),
  -- archeops in shield
  (567, 56700, 32, 'Though capable of flight, Archeops was apparently better at hunting on the ground.'),
  -- trubbish in shield
  (568, 56800, 32, 'This Pokémon was born from a bag stuffed with trash. Galarian Weezing relish the fumes belched by Trubbish.'),
  -- garbodor in shield
  (569, 56900, 32, 'The toxic liquid it launches from its right arm is so virulent that it can kill a weakened creature instantly.'),
  -- zorua in shield
  (570, 57000, 32, 'Zorua sometimes transforms into a person and goes into cities to search for food. When Zorua does this, it usually takes on the form of a child.'),
  -- zoroark in shield
  (571, 57100, 32, 'Seeking to ease the burden of their solitude, lonely Trainers tell Zoroark to show illusions to them.'),
  -- minccino in shield
  (572, 57200, 32, 'They pet each other with their tails as a form of greeting. Of the two, the one whose tail is fluffier is a bit more boastful.'),
  -- cinccino in shield
  (573, 57300, 32, 'A special oil that seeps through their fur helps them avoid attacks. The oil fetches a high price at market.'),
  -- gothita in shield
  (574, 57400, 32, 'Even when nobody seems to be around, Gothita can still be heard making a muted cry. Many believe it’s speaking to something only it can see.'),
  -- gothorita in shield
  (575, 57500, 32, 'On nights when the stars shine, this Pokémon’s psychic power is at its strongest. It’s unknown just what link Gothorita has to the greater universe.'),
  -- gothitelle in shield
  (576, 57600, 32, 'A criminal who was shown his fate by a Gothitelle went missing that same day and was never seen again.'),
  -- solosis in shield
  (577, 57700, 32, 'Many say that the special liquid covering this Pokémon’s body would allow it to survive in the vacuum of space.'),
  -- duosion in shield
  (578, 57800, 32, 'Its brain has split into two, and the two halves rarely think alike. Its actions are utterly unpredictable.'),
  -- reuniclus in shield
  (579, 57900, 32, 'It’s said that drinking the liquid surrounding Reuniclus grants wisdom. Problem is, the liquid is highly toxic to anything besides Reuniclus itself.'),
  -- vanillite in shield
  (582, 58200, 32, 'Supposedly, this Pokémon was born from an icicle. It spews out freezing air at −58 degrees Fahrenheit to make itself more comfortable.'),
  -- vanillish in shield
  (583, 58300, 32, 'It blasts enemies with cold air reaching −148 degrees Fahrenheit, freezing them solid. But it spares their lives afterward—it’s a kind Pokémon.'),
  -- vanilluxe in shield
  (584, 58400, 32, 'People believe this Pokémon formed when two Vanillish stuck together. Its body temperature is roughly 21 degrees Fahrenheit.'),
  -- emolga in shield
  (587, 58700, 32, 'This Pokémon absolutely loves sweet berries. Sometimes it stuffs its cheeks full of so much food that it can’t fly properly.'),
  -- karrablast in shield
  (588, 58800, 32, 'It spits a liquid from its mouth to melt through Shelmet’s shell. Karrablast doesn’t eat the shell— it eats only the contents.'),
  -- escavalier in shield
  (589, 58900, 32, 'It charges its enemies, lances at the ready. An image of one of its duels is captured in a famous painting of Escavalier clashing with Sirfetch’d.'),
  -- foongus in shield
  (590, 59000, 32, 'The spores released from this Pokémon’s hands are highly poisonous, but when thoroughly dried, the spores can be used as stomach medicine.'),
  -- amoonguss in shield
  (591, 59100, 32, 'Amoonguss generally doesn’t move much. It tends to stand still near Poké Balls that have been dropped on the ground.'),
  -- frillish in shield
  (592, 59200, 32, 'Legend has it that the residents of a sunken ancient city changed into these Pokémon.'),
  -- jellicent in shield
  (593, 59300, 32, 'Whenever a full moon hangs in the night sky, schools of Jellicent gather near the surface of the sea, waiting for their prey to appear.'),
  -- joltik in shield
  (595, 59500, 32, 'Joltik latch on to other Pokémon and suck out static electricity. They’re often found sticking to Yamper’s hindquarters.'),
  -- galvantula in shield
  (596, 59600, 32, 'It lays traps of electrified threads near the nests of bird Pokémon, aiming to snare chicks that are not yet good at flying.'),
  -- ferroseed in shield
  (597, 59700, 32, 'Mossy caves are their preferred dwellings. Enzymes contained in mosses help Ferroseed’s spikes grow big and strong.'),
  -- ferrothorn in shield
  (598, 59800, 32, 'Its spikes are harder than steel. This Pokémon crawls across rock walls by stabbing the spikes on its feelers into the stone.'),
  -- klink in shield
  (599, 59900, 32, 'It’s suspected that Klink were the inspiration behind ancient people’s invention of the first gears.'),
  -- klang in shield
  (600, 60000, 32, 'Many companies in the Galar region choose Klang as their logo. This Pokémon is considered the symbol of industrial technology.'),
  -- klinklang in shield
  (601, 60100, 32, 'The three gears that compose this Pokémon spin at high speed. Its new spiked gear isn’t a living creature.'),
  -- elgyem in shield
  (605, 60500, 32, 'This Pokémon was discovered about 50 years ago. Its highly developed brain enables it to exert its psychic powers.'),
  -- beheeyem in shield
  (606, 60600, 32, 'Sometimes found drifting above wheat fields, this Pokémon can control the memories of its opponents.'),
  -- litwick in shield
  (607, 60700, 32, 'The younger the life this Pokémon absorbs, the brighter and eerier the flame on its head burns.'),
  -- lampent in shield
  (608, 60800, 32, 'It lurks in cities, pretending to be a lamp. Once it finds someone whose death is near, it will trail quietly after them.'),
  -- chandelure in shield
  (609, 60900, 32, 'In homes illuminated by Chandelure instead of lights, funerals were a constant occurrence— or so it’s said.'),
  -- axew in shield
  (610, 61000, 32, 'They play with each other by knocking their large tusks together. Their tusks break sometimes, but they grow back so quickly that it isn’t a concern.'),
  -- fraxure in shield
  (611, 61100, 32, 'Its skin is as hard as a suit of armor. Fraxure’s favorite strategy is to tackle its opponents, stabbing them with its tusks at the same time.'),
  -- haxorus in shield
  (612, 61200, 32, 'While usually kindhearted, it can be terrifying if angered. Tusks that can slice through steel beams are how Haxorus deals with its adversaries.'),
  -- cubchoo in shield
  (613, 61300, 32, 'It sniffles before performing a move, using its frosty snot to provide an icy element to any move that needs it.'),
  -- beartic in shield
  (614, 61400, 32, 'It swims energetically through frigid seas. When it gets tired, it freezes the seawater with its breath so it can rest on the ice.'),
  -- cryogonal in shield
  (615, 61500, 32, 'When the weather gets hot, these Pokémon turn into water vapor. Cryogonal are almost never seen during summer.'),
  -- shelmet in shield
  (616, 61600, 32, 'It has a strange physiology that responds to electricity. When together with Karrablast, Shelmet evolves for some reason.'),
  -- accelgor in shield
  (617, 61700, 32, 'Discarding its shell made it nimble. To keep itself from dehydrating, it wraps its body in bands of membrane.'),
  -- stunfisk in shield
  (618, 61800, 32, 'For some reason, this Pokémon smiles slightly when it emits a strong electric current from the yellow markings on its body.'),
  -- galarian-stunfisk in shield
  (618, 61801, 32, 'Its conspicuous lips lure prey in as it lies in wait in the mud. When prey gets close, Stunfisk clamps its jagged steel fins down on them.'),
  -- mienfoo in shield
  (619, 61900, 32, 'Though small, Mienfoo’s temperament is fierce. Any creature that approaches Mienfoo carelessly will be greeted with a flurry of graceful attacks.'),
  -- mienshao in shield
  (620, 62000, 32, 'Delivered at blinding speeds, kicks from this Pokémon can shatter massive boulders into tiny pieces.'),
  -- druddigon in shield
  (621, 62100, 32, 'Druddigon are vicious and cunning. They take up residence in nests dug out by other Pokémon, treating the stolen nests as their own lairs.'),
  -- golett in shield
  (622, 62200, 32, 'This Pokémon was created from clay. It received orders from its master many thousands of years ago, and it still follows those orders to this day.'),
  -- golurk in shield
  (623, 62300, 32, 'There’s a theory that inside Golurk is a perpetual motion machine that produces limitless energy, but this belief hasn’t been proven.'),
  -- pawniard in shield
  (624, 62400, 32, 'A pack of these Pokémon forms to serve a Bisharp boss. Each Pawniard trains diligently, dreaming of one day taking the lead.'),
  -- bisharp in shield
  (625, 62500, 32, 'Violent conflicts erupt between Bisharp and Fraxure over places where sharpening stones can be found.'),
  -- bouffalant in shield
  (626, 62600, 32, 'These Pokémon live in herds of about 20 individuals. Bouffalant that betray the herd will lose the hair on their heads for some reason.'),
  -- rufflet in shield
  (627, 62700, 32, 'A combative Pokémon, it’s ready to pick a fight with anyone. It has talons that can crush hard berries.'),
  -- braviary in shield
  (628, 62800, 32, 'Because this Pokémon is hotheaded and belligerent, it’s Corviknight that’s taken the role of transportation in Galar.'),
  -- vullaby in shield
  (629, 62900, 32, 'Vullaby grow quickly. Bones that have gotten too small for older Vullaby to wear often get passed down to younger ones in the nest.'),
  -- mandibuzz in shield
  (630, 63000, 32, 'They adorn themselves with bones. There seem to be fashion trends among them, as different bones come into and fall out of popularity.'),
  -- heatmor in shield
  (631, 63100, 32, 'A flame serves as its tongue, melting through the hard shell of Durant so that Heatmor can devour their insides.'),
  -- durant in shield
  (632, 63200, 32, 'With their large mandibles, these Pokémon can crunch their way through rock. They work together to protect their eggs from Sandaconda.'),
  -- deino in shield
  (633, 63300, 32, 'Because it can’t see, this Pokémon is constantly biting at everything it touches, trying to keep track of its surroundings.'),
  -- zweilous in shield
  (634, 63400, 32, 'Their two heads will fight each other over a single piece of food. Zweilous are covered in scars even without battling others.'),
  -- hydreigon in shield
  (635, 63500, 32, 'The three heads take turns sinking their teeth into the opponent. Their attacks won’t slow until their target goes down.'),
  -- larvesta in shield
  (636, 63600, 32, 'Larvesta’s body is warm all over. It spouts fire from the tips of its horns to intimidate predators and scare prey.'),
  -- volcarona in shield
  (637, 63700, 32, 'This Pokémon emerges from a cocoon formed of raging flames. Ancient murals depict Volcarona as a deity of fire.'),
  -- cobalion in shield
  (638, 63800, 32, 'From the moment it’s born, this Pokémon radiates the air of a leader. Its presence will calm even vicious foes.'),
  -- terrakion in shield
  (639, 63900, 32, 'In Unovan legend, Terrakion battled against humans in an effort to protect other Pokémon.'),
  -- virizion in shield
  (640, 64000, 32, 'It darts around opponents with a flurry of quick movements, slicing them up with its horns.'),
  -- reshiram in shield
  (643, 64300, 32, 'According to myth, if people ignore truth and let themselves become consumed by greed, Reshiram will arrive to burn their kingdoms down.'),
  -- zekrom in shield
  (644, 64400, 32, 'Mythology tells us that if people lose the righteousness in their hearts, their kingdoms will be razed by Zekrom’s lightning.'),
  -- kyurem in shield
  (646, 64600, 32, 'It appears that this Pokémon uses its powers over ice to freeze its own body in order to stabilize its cellular structure.'),
  -- kyurem-white in shield
  (646, 64601, 32, 'It has foreseen that a world of truth will arrive for people and Pokémon. It strives to protect that future.'),
  -- kyurem-black in shield
  (646, 64602, 32, 'The sameness of Zekrom’s and Kyurem’s genes allowed Kyurem to absorb Zekrom. Kyurem can now use the power of both electricity and ice.'),
  -- keldeo in shield
  (647, 64700, 32, 'They say that Keldeo must survive harsh battles and fully develop the horn on its forehead before this Pokémon’s true power will awaken.'),
  -- keldeo-resolute in shield
  (647, 64701, 32, 'The power that lay hidden in its body now covers its horn, turning it into a sword that can slice through anything.'),
  -- bunnelby in shield
  (659, 65900, 32, 'It’s very sensitive to danger. The sound of Corviknight’s flapping will have Bunnelby digging a hole to hide underground in moments.'),
  -- diggersby in shield
  (660, 66000, 32, 'The fur on its belly retains heat exceptionally well. People used to make heavy winter clothing from fur shed by this Pokémon.'),
  -- fletchling in shield
  (661, 66100, 32, 'When this Pokémon gets excited, its body temperature increases sharply. If you touch a Fletchling with bare hands, you might get burned.'),
  -- fletchinder in shield
  (662, 66200, 32, 'Fletchinder are exceedingly territorial and aggressive. These Pokémon fight among themselves over feeding grounds.'),
  -- talonflame in shield
  (663, 66300, 32, 'Talonflame dives toward prey at speeds of up to 310 mph and assaults them with powerful kicks, giving the prey no chance to escape.'),
  -- pancham in shield
  (674, 67400, 32, 'Wanting to make sure it’s taken seriously, Pancham’s always giving others a glare. But if it’s not focusing, it ends up smiling.'),
  -- pangoro in shield
  (675, 67500, 32, 'Using its leaf, Pangoro can predict the moves of its opponents. It strikes with punches that can turn a dump truck into scrap with just one hit.'),
  -- espurr in shield
  (677, 67700, 32, 'There’s enough psychic power in Espurr to send a wrestler flying, but because this power can’t be controlled, Espurr finds it troublesome.'),
  -- meowstic in shield
  (678, 67800, 32, 'The defensive instinct of the males is strong. It’s when they’re protecting themselves or their partners that they unleash their full power.'),
  -- meowstic-female in shield
  (678, 67801, 32, 'If it doesn’t hold back when it unleashes its psychic power, it can tear apart a tanker. Its unfriendliness is part of its charm.'),
  -- honedge in shield
  (679, 67900, 32, 'The blue eye on the sword’s handguard is the true body of Honedge. With its old cloth, it drains people’s lives away.'),
  -- doublade in shield
  (680, 68000, 32, 'The two swords employ a strategy of rapidly alternating between offense and defense to bring down their prey.'),
  -- aegislash in shield
  (681, 68100, 32, 'Its potent spectral powers allow it to manipulate others. It once used its powers to force people and Pokémon to build a kingdom to its liking.'),
  -- spritzee in shield
  (682, 68200, 32, 'The scent its body gives off enraptures those who smell it. Noble ladies had no shortage of love for Spritzee.'),
  -- aromatisse in shield
  (683, 68300, 32, 'The scents Aromatisse can produce range from sweet smells that bolster allies to foul smells that sap an opponent’s will to fight.'),
  -- swirlix in shield
  (684, 68400, 32, 'The sweet smell of cotton candy perfumes Swirlix’s fluffy fur. This Pokémon spits out sticky string to tangle up its enemies.'),
  -- slurpuff in shield
  (685, 68500, 32, 'Slurpuff’s fur contains a lot of air, making it soft to the touch and lighter than it looks.'),
  -- inkay in shield
  (686, 68600, 32, 'By exposing foes to the blinking of its luminescent spots, Inkay demoralizes them, and then it seizes the chance to flee.'),
  -- malamar in shield
  (687, 68700, 32, 'It’s said that Malamar’s hypnotic powers played a role in certain history-changing events.'),
  -- binacle in shield
  (688, 68800, 32, 'If the two don’t work well together, both their offense and defense fall apart. Without good teamwork, they won’t survive.'),
  -- barbaracle in shield
  (689, 68900, 32, 'Having an eye on each palm allows it to keep watch in all directions. In a pinch, its limbs start to act on their own to ensure the enemy’s defeat.'),
  -- skrelp in shield
  (690, 69000, 32, 'Skrelp looks like a piece of rotten seaweed, so it can blend in with seaweed drifting on the ocean and avoid being detected by enemies.'),
  -- dragalge in shield
  (691, 69100, 32, 'Dragalge generates dragon energy by sticking the plume on its head out above the ocean’s surface and bathing it in sunlight.'),
  -- clauncher in shield
  (692, 69200, 32, 'By detonating gas that accumulates in its right claw, this Pokémon launches water like a bullet. This is how Clauncher defeats its enemies.'),
  -- clawitzer in shield
  (693, 69300, 32, 'Clawitzer’s right arm is a cannon that launches projectiles made of seawater. Shots from a Clawitzer’s cannon arm can sink a tanker.'),
  -- helioptile in shield
  (694, 69400, 32, 'The sun powers this Pokémon’s electricity generation. Interruption of that process stresses Helioptile to the point of weakness.'),
  -- heliolisk in shield
  (695, 69500, 32, 'One Heliolisk basking in the sun with its frill outspread is all it would take to produce enough electricity to power a city.'),
  -- tyrunt in shield
  (696, 69600, 32, 'This Pokémon is selfish and likes to be pampered. It can also inflict grievous wounds on its Trainer just by playing around.'),
  -- tyrantrum in shield
  (697, 69700, 32, 'A single bite of Tyrantrum’s massive jaws will demolish a car. This Pokémon was the king of the ancient world.'),
  -- amaura in shield
  (698, 69800, 32, 'Amaura is an ancient Pokémon that has gone extinct. Specimens of this species can sometimes be found frozen in ice.'),
  -- aurorus in shield
  (699, 69900, 32, 'When gripped by rage, Aurorus will emanate freezing air, covering everything around it in ice.'),
  -- sylveon in shield
  (700, 70000, 32, 'There’s a Galarian fairy tale that describes a beautiful Sylveon vanquishing a dreadful dragon Pokémon.'),
  -- hawlucha in shield
  (701, 70100, 32, 'It always strikes a pose before going for its finishing move. Sometimes opponents take advantage of that time to counterattack.'),
  -- dedenne in shield
  (702, 70200, 32, 'Since Dedenne can’t generate much electricity on its own, it steals electricity from outlets or other electric Pokémon.'),
  -- carbink in shield
  (703, 70300, 32, 'It’s said that somewhere in the world, there’s a mineral vein housing a large pack of slumbering Carbink. It’s also said that this pack has a queen.'),
  -- goomy in shield
  (704, 70400, 32, 'Their horns are powerful sensors. As soon as Goomy pick up any sign of enemies, they go into hiding. This is how they’ve survived.'),
  -- sliggoo in shield
  (705, 70500, 32, 'The lump on its back contains its tiny brain. It thinks only of food and escaping its enemies.'),
  -- goodra in shield
  (706, 70600, 32, 'Its form of offense is forcefully stretching out its horns. The strikes land 100 times harder than any blow from a heavyweight boxer.'),
  -- klefki in shield
  (707, 70700, 32, 'Klefki sucks in metal ions with the horn topping its head. It seems this Pokémon loves keys so much that its head needed to look like one, too.'),
  -- phantump in shield
  (708, 70800, 32, 'With a voice like a human child’s, it cries out to lure adults deep into the forest, getting them lost among the trees.'),
  -- trevenant in shield
  (709, 70900, 32, 'Small roots that extend from the tips of this Pokémon’s feet can tie into the trees of the forest and give Trevenant control over them.'),
  -- pumpkaboo in shield
  (710, 71000, 32, 'The light that streams out from the holes in the pumpkin can hypnotize and control the people and Pokémon that see it.'),
  -- pumpkaboo-small in shield
  (710, 71001, 32, 'Small Pumpkaboo are said to be the product of areas where few lost souls lingered.'),
  -- pumpkaboo-large in shield
  (710, 71002, 32, 'Large Pumpkaboo are said to be the product of areas where many lost souls lingered.'),
  -- pumpkaboo-super in shield
  (710, 71003, 32, 'Massive Pumpkaboo are said to be the product of areas where a great number of lost souls lingered.'),
  -- gourgeist in shield
  (711, 71100, 32, 'In the darkness of a new-moon night, Gourgeist will come knocking. Whoever answers the door will be swept off to the afterlife.'),
  -- gourgeist-small in shield
  (711, 71101, 32, 'A small-sized Pumpkaboo evolves into a small-sized Gourgeist. Its bodily proportions also get passed on to its descendants.'),
  -- gourgeist-large in shield
  (711, 71102, 32, 'A large-sized Pumpkaboo evolves into a large-sized Gourgeist. Its bodily proportions also get passed on to its descendants.'),
  -- gourgeist-super in shield
  (711, 71103, 32, 'A supersized Pumpkaboo evolves into a supersized Gourgeist. Its bodily proportions also get passed on to its descendants.'),
  -- bergmite in shield
  (712, 71200, 32, 'This Pokémon lives in areas of frigid cold. It secures itself to the back of an Avalugg by freezing its feet in place.'),
  -- avalugg in shield
  (713, 71300, 32, 'As Avalugg moves about during the day, the cracks in its body deepen. The Pokémon’s body returns to a pristine state overnight.'),
  -- noibat in shield
  (714, 71400, 32, 'No wavelength of sound is beyond Noibat’s ability to produce. The ultrasonic waves it generates can overcome much larger Pokémon.'),
  -- noivern in shield
  (715, 71500, 32, 'Flying through the darkness, it weakens enemies with ultrasonic waves that could crush stone. Its fangs finish the fight.'),
  -- rowlet in shield
  (722, 72200, 32, 'During the day, it builds up energy via photosynthesis. At night, it flies silently through the sky, on the prowl for prey.'),
  -- dartrix in shield
  (723, 72300, 32, 'It never slacks when it comes to the task of cleaning its feathers. Thorough preening keeps it looking spiffy and its blade quills nice and sharp.'),
  -- decidueye in shield
  (724, 72400, 32, 'In a tenth of a second, it can nock and fire an arrow quill, piercing an opponent’s weak point before they notice what’s happening.'),
  -- litten in shield
  (725, 72500, 32, 'Trying to pet Litten before it trusts you will result in a nasty scratch from its sharp claws. Be careful.'),
  -- torracat in shield
  (726, 72600, 32, 'When facing a powerful enemy, Torracat’s fighting spirit gets pumped up, and its fire bell blazes hotter.'),
  -- incineroar in shield
  (727, 72700, 32, 'Incineroar’s rough and aggressive behavior is its most notable trait, but the way it helps out small Pokémon shows that it has a kind side as well.'),
  -- popplio in shield
  (728, 72800, 32, 'If Popplio want to create big, powerful balloons, they must be persistent. It takes daily practice for these Pokémon to develop their skills.'),
  -- brionne in shield
  (729, 72900, 32, 'On nights when the sea is calm, Brionne dance with one another to the singing of the Primarina that’s leading them.'),
  -- primarina in shield
  (730, 73000, 32, 'For Primarina, every battle’s a stage. Its singing and the dancing of its balloons will mesmerize the audience.'),
  -- grubbin in shield
  (736, 73600, 32, 'It uses its big jaws to dig nests into the forest floor, and it loves to feed on sweet tree sap.'),
  -- charjabug in shield
  (737, 73700, 32, 'Its digestive processes convert the leaves it eats into electricity. An electric sac in its belly stores the electricity for later use.'),
  -- vikavolt in shield
  (738, 73800, 32, 'If it carries a Charjabug to use as a spare battery, a flying Vikavolt can rapidly fire high-powered beams of electricity.'),
  -- cutiefly in shield
  (742, 74200, 32, 'An opponent’s aura can tell Cutiefly what that opponent’s next move will be. Then Cutiefly can glide around the attack and strike back.'),
  -- ribombee in shield
  (743, 74300, 32, 'Ribombee absolutely hate getting wet or rained on. In the cloudy Galar region, they are very seldom seen.'),
  -- rockruff in shield
  (744, 74400, 32, 'This Pokémon intimidates opponents by striking the ground with the rocks on its neck. The moment an opponent flinches, Rockruff attacks.'),
  -- lycanroc in shield
  (745, 74500, 32, 'With swift movements, this Pokémon gradually backs its prey into a corner. Lycanroc’s fangs are always aimed toward opponents’ weak spots.'),
  -- lycanroc-midnight in shield
  (745, 74501, 32, 'It’s invigorated by powerful opponents–the stronger the better. A full-force headbutt from one of these Lycanroc can shatter giant boulders.'),
  -- lycanroc-dusk in shield
  (745, 74502, 32, 'These Pokémon have both calm and ferocious qualities. Their temperamental nature makes them a difficult species to raise.'),
  -- wishiwashi in shield
  (746, 74600, 32, 'When it senses danger, its eyes tear up. The sparkle of its tears signals other Wishiwashi to gather.'),
  -- mareanie in shield
  (747, 74700, 32, 'Unlike their Alolan counterparts, the Mareanie of the Galar region have not yet figured out that the branches of Corsola are delicious.'),
  -- toxapex in shield
  (748, 74800, 32, 'Within the poison sac in its body is a poison so toxic that Pokémon as large as Wailord will still be suffering three days after it first takes effect.'),
  -- mudbray in shield
  (749, 74900, 32, 'It eats dirt to create mud and smears this mud all over its feet, giving them the grip needed to walk on rough terrain without slipping.'),
  -- mudsdale in shield
  (750, 75000, 32, 'Mudsdale has so much stamina that it could carry over 10 tons across the Galar region without rest or sleep.'),
  -- dewpider in shield
  (751, 75100, 32, 'Dewpider normally lives underwater. When it comes onto land in search of food, it takes water with it in the form of a bubble on its head.'),
  -- araquanid in shield
  (752, 75200, 32, 'It acts as a caretaker for Dewpider, putting them inside its bubble and letting them eat any leftover food.'),
  -- fomantis in shield
  (753, 75300, 32, 'During the day, Fomantis basks in sunlight and sleeps peacefully. It wakes and moves around at night.'),
  -- lurantis in shield
  (754, 75400, 32, 'The petals on this Pokémon’s arms are thin and super sharp, and they can fire laser beams if Lurantis gathers light first.'),
  -- morelull in shield
  (755, 75500, 32, 'Morelull live in forests that stay dark even during the day. They scatter flickering spores that put enemies to sleep.'),
  -- shiinotic in shield
  (756, 75600, 32, 'If you see a light deep in a forest at night, don’t go near. Shiinotic will make you fall fast asleep.'),
  -- salandit in shield
  (757, 75700, 32, 'This sneaky Pokémon will slink behind its prey and immobilize it with poisonous gas before the prey even realizes Salandit is there.'),
  -- salazzle in shield
  (758, 75800, 32, 'The winner of competitions between Salazzle is decided by which one has the most male Salandit with it.'),
  -- stufful in shield
  (759, 75900, 32, 'The way it protects itself by flailing its arms may be an adorable sight, but stay well away. This is flailing that can snap thick tree trunks.'),
  -- bewear in shield
  (760, 76000, 32, 'The moves it uses to take down its prey would make a martial artist jealous. It tucks subdued prey under its arms to carry them to its nest.'),
  -- bounsweet in shield
  (761, 76100, 32, 'When under attack, it secretes a sweet and delicious sweat. The scent only calls more enemies to it.'),
  -- steenee in shield
  (762, 76200, 32, 'Any Corvisquire that pecks at this Pokémon will be greeted with a smack from its sepals followed by a sharp kick.'),
  -- tsareena in shield
  (763, 76300, 32, 'A kick from the hardened tips of this Pokémon’s legs leaves a wound in the opponent’s body and soul that will never heal.'),
  -- comfey in shield
  (764, 76400, 32, 'These Pokémon smell very nice. All Comfey wear different flowers, so each of these Pokémon has its own individual scent.'),
  -- oranguru in shield
  (765, 76500, 32, 'It knows the forest inside and out. If it comes across a wounded Pokémon, Oranguru will gather medicinal herbs to treat it.'),
  -- passimian in shield
  (766, 76600, 32, 'Passimian live in groups of about 20, with each member performing an assigned role. Through cooperation, the group survives.'),
  -- wimpod in shield
  (767, 76700, 32, 'Wimpod gather in swarms, constantly on the lookout for danger. They scatter the moment they detect an enemy’s presence.'),
  -- golisopod in shield
  (768, 76800, 32, 'They live in sunken ships or in holes in the seabed. When Golisopod and Grapploct battle, the loser becomes the winner’s meal.'),
  -- sandygast in shield
  (769, 76900, 32, 'Sandygast mainly inhabits beaches. It takes control of anyone who puts their hand into its mouth, forcing them to make its body bigger.'),
  -- palossand in shield
  (770, 77000, 32, 'This Pokémon lives on beaches, but it hates water. Palossand can’t maintain its castle-like shape if it gets drenched by a heavy rain.'),
  -- pyukumuku in shield
  (771, 77100, 32, 'It’s covered in a slime that keeps its skin moist, allowing it to stay on land for days without drying up.'),
  -- type-null in shield
  (772, 77200, 32, 'It was modeled after a mighty Pokémon of myth. The mask placed upon it limits its power in order to keep it under control.'),
  -- silvally in shield
  (773, 77300, 32, 'The final factor needed to release this Pokémon’s true power was a strong bond with a Trainer it trusts.'),
  -- silvally-fighting in shield
  (773, 77301, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Fighting-type form.'),
  -- silvally-flying in shield
  (773, 77302, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Flying-type form.'),
  -- silvally-poison in shield
  (773, 77303, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Poison-type form.'),
  -- silvally-ground in shield
  (773, 77304, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Ground-type form.'),
  -- silvally-rock in shield
  (773, 77305, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Rock-type form.'),
  -- silvally-bug in shield
  (773, 77306, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Bug-type form.'),
  -- silvally-ghost in shield
  (773, 77307, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Ghost-type form.'),
  -- silvally-steel in shield
  (773, 77308, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Steel-type form.'),
  -- silvally-fire in shield
  (773, 77309, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Fire-type form.'),
  -- silvally-water in shield
  (773, 77310, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Water-type form.'),
  -- silvally-grass in shield
  (773, 77311, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Grass-type form.'),
  -- silvally-electric in shield
  (773, 77312, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Electric-type form.'),
  -- silvally-psychic in shield
  (773, 77313, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Psychic-type form.'),
  -- silvally-ice in shield
  (773, 77314, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Ice-type form.'),
  -- silvally-dragon in shield
  (773, 77315, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Dragon-type form.'),
  -- silvally-dark in shield
  (773, 77316, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Dark-type form.'),
  -- silvally-fairy in shield
  (773, 77317, 32, 'It has the ability to change its type based on the memory it’s holding. This is its Fairy-type form.'),
  -- turtonator in shield
  (776, 77600, 32, 'Eating sulfur in its volcanic habitat is what causes explosive compounds to develop in its shell. Its droppings are also dangerously explosive.'),
  -- togedemaru in shield
  (777, 77700, 32, 'When it’s in trouble, it curls up into a ball, makes its fur spikes stand on end, and then discharges electricity indiscriminately.'),
  -- mimikyu in shield
  (778, 77800, 32, 'There was a scientist who peeked under Mimikyu’s old rag in the name of research. The scientist died of a mysterious disease.'),
  -- mimikyu-busted in shield
  (778, 77801, 32, 'Its disguise made from an old rag allowed it to avoid an attack, but the impact broke the neck of the disguise. Now everyone knows it’s a Mimikyu.'),
  -- drampa in shield
  (780, 78000, 32, 'Drampa is a kind and friendly Pokémon—up until it’s angered. When that happens, it stirs up a gale and flattens everything around.'),
  -- dhelmise in shield
  (781, 78100, 32, 'After lowering its anchor, it waits for its prey. It catches large Wailord and drains their life-force.'),
  -- jangmo-o in shield
  (782, 78200, 32, 'Jangmo-o strikes its scales to communicate with others of its kind. Its scales are actually fur that’s become as hard as metal.'),
  -- hakamo-o in shield
  (783, 78300, 32, 'Before attacking its enemies, it clashes its scales together and roars. Its sharp claws shred the opposition.'),
  -- kommo-o in shield
  (784, 78400, 32, 'Certain ruins have paintings of ancient warriors wearing armor made of Kommo-o scales.'),
  -- cosmog in shield
  (789, 78900, 32, 'Cosmog is very curious but not very cautious, often placing itself in danger. If things start to look dicey, it teleports away.'),
  -- cosmoem in shield
  (790, 79000, 32, 'It sucks in dust from the air at an astounding rate, frantically building up energy within its core as preparation for evolution.'),
  -- solgaleo in shield
  (791, 79100, 32, 'Solgaleo was once known as the Beast That Devours the Sun. Energy in the form of light radiates boundlessly from it.'),
  -- lunala in shield
  (792, 79200, 32, 'It steals the light from its surroundings and then becomes the full moon, showering its own light across the night sky.'),
  -- necrozma in shield
  (800, 80000, 32, 'It needs light to survive, and it goes on a rampage seeking it out. Its laser beams will cut anything to pieces.'),
  -- necrozma-dusk-mane in shield
  (800, 80001, 32, 'Necrozma has attached itself to Solgaleo. It siphons away its host’s limitless energy, exploiting that energy to fuel a rampage.'),
  -- necrozma-dawn-wings in shield
  (800, 80002, 32, 'When Necrozma latches on to Lunala, it becomes vicious, seeing enemies everywhere it looks. It will burn the world with lasers.'),
  -- marshadow in shield
  (802, 80200, 32, 'This Pokémon can conceal itself in any shadow, so it went undiscovered for a long time.'),
  -- zeraora in shield
  (807, 80700, 32, 'Electricity sparks from the pads on its limbs. Wherever Zeraora runs, lightning flashes and thunder echoes.'),
  -- meltan in shield
  (808, 80800, 32, 'They live as a group, but when the time comes, one strong Meltan will absorb all the others and evolve.'),
  -- melmetal in shield
  (809, 80900, 32, 'Centrifugal force is behind the punches of Melmetal’s heavy hex-nut arms. Melmetal is said to deliver the strongest punches of all Pokémon.'),
  -- grookey in shield
  (810, 81000, 32, 'It attacks with rapid beats of its stick. As it strikes with amazing speed, it gets more and more pumped.'),
  -- thwackey in shield
  (811, 81100, 32, 'When it’s drumming out rapid beats in battle, it gets so caught up in the rhythm that it won’t even notice that it’s already knocked out its opponent.'),
  -- rillaboom in shield
  (812, 81200, 32, 'The one with the best drumming techniques becomes the boss of the troop. It has a gentle disposition and values harmony among its group.'),
  -- scorbunny in shield
  (813, 81300, 32, 'It has special pads on the backs of its feet, and one on its nose. Once it’s raring to fight, these pads radiate tremendous heat.'),
  -- raboot in shield
  (814, 81400, 32, 'It kicks berries right off the branches of trees and then juggles them with its feet, practicing its footwork.'),
  -- cinderace in shield
  (815, 81500, 32, 'It’s skilled at both offense and defense, and it gets pumped up when cheered on. But if it starts showboating, it could put itself in a tough spot.'),
  -- sobble in shield
  (816, 81600, 32, 'When it gets wet, its skin changes color, and this Pokémon becomes invisible as if it were camouflaged.'),
  -- drizzile in shield
  (817, 81700, 32, 'Highly intelligent but also very lazy, it keeps enemies out of its territory by laying traps everywhere.'),
  -- inteleon in shield
  (818, 81800, 32, 'Its nictitating membranes let it pick out foes’ weak points so it can precisely blast them with water that shoots from its fingertips at Mach 3.'),
  -- skwovet in shield
  (819, 81900, 32, 'It eats berries nonstop—a habit that has made it more resilient than it looks. It’ll show up on farms, searching for yet more berries.'),
  -- greedent in shield
  (820, 82000, 32, 'Common throughout the Galar region, this Pokémon has strong teeth and can chew through the toughest of berry shells.'),
  -- rookidee in shield
  (821, 82100, 32, 'Jumping nimbly about, this small-bodied Pokémon takes advantage of even the slightest opportunity to disorient larger opponents.'),
  -- corvisquire in shield
  (822, 82200, 32, 'The lessons of many harsh battles have taught it how to accurately judge an opponent’s strength.'),
  -- corviknight in shield
  (823, 82300, 32, 'With their great intellect and flying skills, these Pokémon very successfully act as the Galar region’s airborne taxi service.'),
  -- blipbug in shield
  (824, 82400, 32, 'Often found in gardens, this Pokémon has hairs on its body that it uses to assess its surroundings.'),
  -- dottler in shield
  (825, 82500, 32, 'As it grows inside its shell, it uses its psychic abilities to monitor the outside world and prepare for evolution.'),
  -- orbeetle in shield
  (826, 82600, 32, 'It emits psychic energy to observe and study what’s around it—and what’s around it can include things over six miles away.'),
  -- nickit in shield
  (827, 82700, 32, 'Cunning and cautious, this Pokémon survives by stealing food from others. It erases its tracks with swipes of its tail as it makes off with its plunder.'),
  -- thievul in shield
  (828, 82800, 32, 'With a lithe body and sharp claws, it goes around stealing food and eggs. Boltund is its natural enemy.'),
  -- gossifleur in shield
  (829, 82900, 32, 'It whirls around in the wind while singing a joyous song. This delightful display has charmed many into raising this Pokémon.'),
  -- eldegoss in shield
  (830, 83000, 32, 'The cotton on the head of this Pokémon can be spun into a glossy, gorgeous yarn—a Galar regional specialty.'),
  -- wooloo in shield
  (831, 83100, 32, 'If its fleece grows too long, Wooloo won’t be able to move. Cloth made with the wool of this Pokémon is surprisingly strong.'),
  -- dubwool in shield
  (832, 83200, 32, 'Its majestic horns are meant only to impress the opposite gender. They never see use in battle.'),
  -- chewtle in shield
  (833, 83300, 32, 'It starts off battles by attacking with its rock-hard horn, but as soon as the opponent flinches, this Pokémon bites down and never lets go.'),
  -- drednaw in shield
  (834, 83400, 32, 'This Pokémon rapidly extends its retractable neck to sink its sharp fangs into distant enemies and take them down.'),
  -- yamper in shield
  (835, 83500, 32, 'This gluttonous Pokémon only assists people with their work because it wants treats. As it runs, it crackles with electricity.'),
  -- boltund in shield
  (836, 83600, 32, 'It sends electricity through its legs to boost their strength. Running at top speed, it easily breaks 50 mph.'),
  -- rolycoly in shield
  (837, 83700, 32, 'It can race around like a unicycle, even on rough, rocky terrain. Burning coal sustains it.'),
  -- carkol in shield
  (838, 83800, 32, 'By rapidly rolling its legs, it can travel at over 18 mph. The temperature of the flames it breathes exceeds 1,800 degrees Fahrenheit.'),
  -- coalossal in shield
  (839, 83900, 32, 'While it’s engaged in battle, its mountain of coal will burn bright red, sending off sparks that scorch the surrounding area.'),
  -- applin in shield
  (840, 84000, 32, 'As soon as it’s born, it burrows into an apple. Not only does the apple serve as its food source, but the flavor of the fruit determines its evolution.'),
  -- flapple in shield
  (841, 84100, 32, 'It flies on wings of apple skin and spits a powerful acid. It can also change its shape into that of an apple.'),
  -- appletun in shield
  (842, 84200, 32, 'Its body is covered in sweet nectar, and the skin on its back is especially yummy. Children used to have it as a snack.'),
  -- silicobra in shield
  (843, 84300, 32, 'It spews sand from its nostrils. While the enemy is blinded, it burrows into the ground to hide.'),
  -- sandaconda in shield
  (844, 84400, 32, 'Its unique style of coiling allows it to blast sand out of its sand sac more efficiently.'),
  -- cramorant in shield
  (845, 84500, 32, 'This hungry Pokémon swallows Arrokuda whole. Occasionally, it makes a mistake and tries to swallow a Pokémon other than its preferred prey.'),
  -- cramorant-gulping in shield
  (845, 84501, 32, 'The slightest shock is sometimes enough to get this Pokémon to spit out the Arrokuda lodged in its throat.'),
  -- cramorant-gorging in shield
  (845, 84502, 32, 'The half-swallowed Pikachu is so startled that it isn’t struggling yet, but it’s still looking for a chance to strike back.'),
  -- arrokuda in shield
  (846, 84600, 32, 'After it’s eaten its fill, its movements become extremely sluggish. That’s when Cramorant swallows it up.'),
  -- barraskewda in shield
  (847, 84700, 32, 'It spins its tail fins to propel itself, surging forward at speeds of over 100 knots before ramming prey and spearing into them.'),
  -- toxel in shield
  (848, 84800, 32, 'It manipulates the chemical makeup of its poison to produce electricity. The voltage is weak, but it can cause a tingling paralysis.'),
  -- toxtricity in shield
  (849, 84900, 32, 'This short-tempered and aggressive Pokémon chugs stagnant water to absorb any toxins it might contain.'),
  -- toxtricity-low-key in shield
  (849, 84901, 32, 'It has an electrical organ on its chest. While generating electricity, it fills its surroundings with what sounds like the strumming of a bass guitar.'),
  -- gigantamax-toxtricity in shield
  (849, 84902, 32, 'Out of control after its own poison penetrated its brain, it tears across the land in a rampage, contaminating the earth with toxic sweat.'),
  -- gigantamax-toxtricity-low-key in shield
  (849, 84903, 32, 'Out of control after its own poison penetrated its brain, it tears across the land in a rampage, contaminating the earth with toxic sweat.'),
  -- sizzlipede in shield
  (850, 85000, 32, 'It wraps prey up with its heated body, cooking them in its coils. Once they’re well-done, it will voraciously nibble them down to the last morsel.'),
  -- centiskorch in shield
  (851, 85100, 32, 'While its burning body is already dangerous on its own, this excessively hostile Pokémon also has large and very sharp fangs.'),
  -- clobbopus in shield
  (852, 85200, 32, 'Its tentacles tear off easily, but it isn’t alarmed when that happens—it knows they’ll grow back. It’s about as smart as a three-year-old.'),
  -- grapploct in shield
  (853, 85300, 32, 'Searching for an opponent to test its skills against, it emerges onto land. Once the battle is over, it returns to the sea.'),
  -- sinistea in shield
  (854, 85400, 32, 'The teacup in which this Pokémon makes its home is a famous piece of antique tableware. Many forgeries are in circulation.'),
  -- sinistea-antique in shield
  (854, 85401, 32, 'It absorbs the life-force of those who drink it. It waits patiently, but opportunities are fleeting—it tastes so bad that it gets spat out immediately.'),
  -- polteageist in shield
  (855, 85500, 32, 'Leaving leftover black tea unattended is asking for this Pokémon to come along and pour itself into it, turning the tea into a new Polteageist.'),
  -- polteageist-antique in shield
  (855, 85501, 32, 'When angered, it launches tea from its body at the offender’s mouth. The tea causes strong chills if swallowed.'),
  -- hatenna in shield
  (856, 85600, 32, 'If this Pokémon senses a strong emotion, it will run away as fast as it can. It prefers areas without people.'),
  -- hattrem in shield
  (857, 85700, 32, 'Using the braids on its head, it pummels foes to get them to quiet down. One blow from those braids would knock out a professional boxer.'),
  -- hatterene in shield
  (858, 85800, 32, 'If you’re too loud around it, you risk being torn apart by the claws on its tentacle. This Pokémon is also known as the Forest Witch.'),
  -- impidimp in shield
  (859, 85900, 32, 'It sneaks into people’s homes, stealing things and feasting on the negative energy of the frustrated occupants.'),
  -- morgrem in shield
  (860, 86000, 32, 'With sly cunning, it tries to lure people into the woods. Some believe it to have the power to make crops grow.'),
  -- grimmsnarl in shield
  (861, 86100, 32, 'Its hairs work like muscle fibers. When its hairs unfurl, they latch on to opponents, ensnaring them as tentacles would.'),
  -- obstagoon in shield
  (862, 86200, 32, 'It evolved after experiencing numerous fights. While crossing its arms, it lets out a shout that would make any opponent flinch.'),
  -- perrserker in shield
  (863, 86300, 32, 'After many battles, it evolved dangerous claws that come together to form daggers when extended.'),
  -- cursola in shield
  (864, 86400, 32, 'Be cautious of the ectoplasmic body surrounding its soul. You’ll become stiff as stone if you touch it.'),
  -- sirfetchd in shield
  (865, 86500, 32, 'After deflecting attacks with its hard leaf shield, it strikes back with its sharp leek stalk. The leek stalk is both weapon and food.'),
  -- mr-rime in shield
  (866, 86600, 32, 'Its amusing movements make it very popular. It releases its psychic power from the pattern on its belly.'),
  -- runerigus in shield
  (867, 86700, 32, 'Never touch its shadowlike body, or you’ll be shown the horrific memories behind the picture carved into it.'),
  -- milcery in shield
  (868, 86800, 32, 'They say that any patisserie visited by Milcery is guaranteed success and good fortune.'),
  -- alcremie in shield
  (869, 86900, 32, 'When Alcremie is content, the cream it secretes from its hands becomes sweeter and richer.'),
  -- gigantamax-alcremie in shield
  (869, 86901, 32, 'It launches swarms of missiles, each made of cream and loaded with 100,000 kilocalories. Get hit by one of these, and your head will swim.'),
  -- alcremie-ruby-cream in shield
  (869, 86902, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a sweet and tart flavor.'),
  -- alcremie-matcha-cream in shield
  (869, 86903, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream an aromatic flavor.'),
  -- alcremie-mint-cream in shield
  (869, 86904, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a refreshing flavor.'),
  -- alcremie-lemon-cream in shield
  (869, 86905, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a sour flavor.'),
  -- alcremie-salted-cream in shield
  (869, 86906, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a salty flavor.'),
  -- alcremie-ruby-swirl in shield
  (869, 86907, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a mixed flavor.'),
  -- alcremie-caramel-swirl in shield
  (869, 86908, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a bitter flavor.'),
  -- alcremie-rainbow-swirl in shield
  (869, 86909, 32, 'The cells that compose its cream fluctuated suddenly during evolution, giving the cream a complex flavor.'),
  -- falinks in shield
  (870, 87000, 32, 'The six of them work together as one Pokémon. Teamwork is also their battle strategy, and they constantly change their formation as they fight.'),
  -- pincurchin in shield
  (871, 87100, 32, 'It stores electricity in each spine. Even if one gets broken off, it still continues to emit electricity for at least three hours.'),
  -- snom in shield
  (872, 87200, 32, 'It eats snow that piles up on the ground. The more snow it eats, the bigger and more impressive the spikes on its back grow.'),
  -- frosmoth in shield
  (873, 87300, 32, 'It shows no mercy to any who desecrate fields and mountains. It will fly around on its icy wings, causing a blizzard to chase offenders away.'),
  -- stonjourner in shield
  (874, 87400, 32, 'Once a year, on a specific date and at a specific time, they gather out of nowhere and form up in a circle.'),
  -- eiscue in shield
  (875, 87500, 32, 'This Pokémon keeps its heat-sensitive head cool with ice. It fishes for its food, dangling its single hair into the sea to lure in prey.'),
  -- eiscue-noice in shield
  (875, 87501, 32, 'The hair on its head connects to the surface of its brain. When this Pokémon has something on its mind, its hair chills the air around it.'),
  -- indeedee in shield
  (876, 87600, 32, 'Through its horns, it can pick up on the emotions of creatures around it. Positive emotions are the source of its strength.'),
  -- indeedee-female in shield
  (876, 87601, 32, 'They diligently serve people and Pokémon so they can gather feelings of gratitude. The females are particularly good at babysitting.'),
  -- morpeko in shield
  (877, 87700, 32, 'It carries electrically roasted seeds with it as if they’re precious treasures. No matter how much it eats, it always gets hungry again in short order.'),
  -- morpeko-hangry in shield
  (877, 87701, 32, 'Hunger hormones affect its temperament. Until its hunger is appeased, it gets up to all manner of evil deeds.'),
  -- cufant in shield
  (878, 87800, 32, 'If a job requires serious strength, this Pokémon will excel at it. Its copper body tarnishes in the rain, turning a vibrant green color.'),
  -- copperajah in shield
  (879, 87900, 32, 'These Pokémon live in herds. Their trunks have incredible grip strength, strong enough to crush giant rocks into powder.'),
  -- dracozolt in shield
  (880, 88000, 32, 'The powerful muscles in its tail generate its electricity. Compared to its lower body, its upper half is entirely too small.'),
  -- arctozolt in shield
  (881, 88100, 32, 'This Pokémon lived on prehistoric seashores and was able to preserve food with the ice on its body. It went extinct because it moved so slowly.'),
  -- dracovish in shield
  (882, 88200, 32, 'Its mighty legs are capable of running at speeds exceeding 40 mph, but this Pokémon can’t breathe unless it’s underwater.'),
  -- arctovish in shield
  (883, 88300, 32, 'The skin on its face is impervious to attack, but breathing difficulties made this Pokémon go extinct anyway.'),
  -- duraludon in shield
  (884, 88400, 32, 'The special metal that composes its body is very light, so this Pokémon has considerable agility. It lives in caves because it dislikes the rain.'),
  -- dreepy in shield
  (885, 88500, 32, 'If this weak Pokémon is by itself, a mere child could defeat it. But if Dreepy has friends to help it train, it can evolve and become much stronger.'),
  -- drakloak in shield
  (886, 88600, 32, 'Without a Dreepy to place on its head and care for, it gets so uneasy it’ll try to substitute any Pokémon it finds for the missing Dreepy.'),
  -- dragapult in shield
  (887, 88700, 32, 'Apparently the Dreepy inside Dragapult’s horns eagerly look forward to being launched out at Mach speeds.'),
  -- zacian in shield
  (888, 88800, 32, 'This Pokémon has slumbered for many years. Some say it’s Zamazenta’s elder sister—others say the two Pokémon are rivals.'),
  -- zamazenta in shield
  (889, 88900, 32, 'This Pokémon slept for aeons while in the form of a statue. It was asleep for so long, people forgot that it ever existed.'),
  -- eternatus in shield
  (890, 89000, 32, 'It was inside a meteorite that fell 20,000 years ago. There seems to be a connection between this Pokémon and the Dynamax phenomenon.'),
  -- kubfu in shield
  (891, 89100, 32, 'If Kubfu pulls the long white hair on its head, its fighting spirit heightens and power wells up from the depths of its belly.'),
  -- urshifu in shield
  (892, 89200, 32, 'Inhabiting the mountains of a distant region, this Pokémon races across sheer cliffs, training its legs and refining its moves.'),
  -- urshifu-rapid-strike in shield
  (892, 89201, 32, 'This form of Urshifu is a strong believer in defeating foes by raining many blows down on them. Its strikes are nonstop, flowing like a river.'),
  -- gigantamax-urshifu in shield
  (892, 89202, 32, 'The energy released by this Pokémon’s fists forms shock waves that can blow away Dynamax Pokémon in just one hit.'),
  -- gigantamax-urshifu-rapid-strike in shield
  (892, 89203, 32, 'All it takes is a glare from this Pokémon to take the lives of those with evil in their hearts—or so they say.'),
  -- zarude in shield
  (893, 89300, 32, 'Once the vines on Zarude’s body tear off, they become nutrients in the soil. This helps the plants of the forest grow.'),
  -- zarude-dada in shield
  (893, 89301, 32, 'This Zarude’s special strength stems from its love and care for an orphaned human child that the Pokémon has raised since the child’s infancy.'),
  -- regieleki in shield
  (894, 89400, 32, 'Its entire body is made up of a single organ that generates electrical energy. Regieleki is capable of creating all Galar’s electricity.'),
  -- regidrago in shield
  (895, 89500, 32, 'Its body is composed of crystallized dragon energy. Regidrago is said to have the powers of every dragon Pokémon.'),
  -- glastrier in shield
  (896, 89600, 32, 'Glastrier has tremendous physical strength, and the mask of ice covering its face is 100 times harder than diamond.'),
  -- spectrier in shield
  (897, 89700, 32, 'As it dashes through the night, Spectrier absorbs the life-force of sleeping creatures. It craves silence and solitude.'),
  -- calyrex in shield
  (898, 89800, 32, 'Calyrex is known in legend as a king that ruled over Galar in ancient times. It has the power to cause hearts to mend and plants to spring forth.'),
  -- calyrex-ice-rider in shield
  (898, 89801, 32, 'It’s said that this Pokémon once moved a large forest—and all the Pokémon living there—to a new location overnight.'),
  -- calyrex-shadow-rider in shield
  (898, 89802, 32, 'Legend says that by using its power to see all events from past to future, this Pokémon saved the creatures of a forest from a meteorite strike.'),
  -- bulbasaur in brilliant-diamond
  (1, 100, 33, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in brilliant-diamond
  (2, 200, 33, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in brilliant-diamond
  (3, 300, 33, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in brilliant-diamond
  (4, 400, 33, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in brilliant-diamond
  (5, 500, 33, 'In the rocky mountains where CHARMELEON live, their fiery tails shine at night like stars.'),
  -- charizard in brilliant-diamond
  (6, 600, 33, 'It is said that CHARIZARD’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in brilliant-diamond
  (7, 700, 33, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in brilliant-diamond
  (8, 800, 33, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in brilliant-diamond
  (9, 900, 33, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in brilliant-diamond
  (10, 1000, 33, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in brilliant-diamond
  (11, 1100, 33, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in brilliant-diamond
  (12, 1200, 33, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in brilliant-diamond
  (13, 1300, 33, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in brilliant-diamond
  (14, 1400, 33, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in brilliant-diamond
  (15, 1500, 33, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in brilliant-diamond
  (16, 1600, 33, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in brilliant-diamond
  (17, 1700, 33, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in brilliant-diamond
  (18, 1800, 33, 'By flapping its wings with all its might, PIDGEOT can make a gust of wind capable of bending tall trees.'),
  -- rattata in brilliant-diamond
  (19, 1900, 33, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in brilliant-diamond
  (20, 2000, 33, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in brilliant-diamond
  (21, 2100, 33, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in brilliant-diamond
  (22, 2200, 33, 'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in brilliant-diamond
  (23, 2300, 33, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in brilliant-diamond
  (24, 2400, 33, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in brilliant-diamond
  (25, 2500, 33, 'It lives in forests with others. It stores electricity in the pouches on its cheeks.'),
  -- raichu in brilliant-diamond
  (26, 2600, 33, 'It turns aggressive if it has too much electricity in its body. It discharges power through its tail.'),
  -- sandshrew in brilliant-diamond
  (27, 2700, 33, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in brilliant-diamond
  (28, 2800, 33, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in brilliant-diamond
  (29, 2900, 33, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in brilliant-diamond
  (30, 3000, 33, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than NIDORINO’s.'),
  -- nidoqueen in brilliant-diamond
  (31, 3100, 33, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in brilliant-diamond
  (32, 3200, 33, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in brilliant-diamond
  (33, 3300, 33, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in brilliant-diamond
  (34, 3400, 33, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in brilliant-diamond
  (35, 3500, 33, 'Thought to live with others on quiet mountains, it is popular for its adorable nature.'),
  -- clefable in brilliant-diamond
  (36, 3600, 33, 'Rarely seen by people, it is said to be drawn by the full moon to play at deserted lakes.'),
  -- vulpix in brilliant-diamond
  (37, 3700, 33, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in brilliant-diamond
  (38, 3800, 33, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in brilliant-diamond
  (39, 3900, 33, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in brilliant-diamond
  (40, 4000, 33, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in brilliant-diamond
  (41, 4100, 33, 'Even though it has no eyes, it can sense obstacles using ultrasonic waves it emits from its mouth.'),
  -- golbat in brilliant-diamond
  (42, 4200, 33, 'It loves the blood of humans and Pokémon. It flies around at night in search of neck veins.'),
  -- oddish in brilliant-diamond
  (43, 4300, 33, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in brilliant-diamond
  (44, 4400, 33, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in brilliant-diamond
  (45, 4500, 33, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in brilliant-diamond
  (46, 4600, 33, 'Mushrooms named tochukaso grow on its back. They grow along with the host PARAS.'),
  -- parasect in brilliant-diamond
  (47, 4700, 33, 'A mushroom grown larger than the host’s body controls PARASECT. It scatters poisonous spores.'),
  -- venonat in brilliant-diamond
  (48, 4800, 33, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in brilliant-diamond
  (49, 4900, 33, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in brilliant-diamond
  (50, 5000, 33, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in brilliant-diamond
  (51, 5100, 33, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in brilliant-diamond
  (52, 5200, 33, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in brilliant-diamond
  (53, 5300, 33, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in brilliant-diamond
  (54, 5400, 33, 'If its usual headache worsens, it starts exhibiting odd powers. It can’t remember doing so, however.'),
  -- golduck in brilliant-diamond
  (55, 5500, 33, 'A Pokémon that lives in lakes. It swims faster than any human swimming champion.'),
  -- mankey in brilliant-diamond
  (56, 5600, 33, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in brilliant-diamond
  (57, 5700, 33, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in brilliant-diamond
  (58, 5800, 33, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in brilliant-diamond
  (59, 5900, 33, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in brilliant-diamond
  (60, 6000, 33, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in brilliant-diamond
  (61, 6100, 33, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in brilliant-diamond
  (62, 6200, 33, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in brilliant-diamond
  (63, 6300, 33, 'It sleeps for 18 hours a day. Even when awake, it teleports itself while remaining seated.'),
  -- kadabra in brilliant-diamond
  (64, 6400, 33, 'If one is nearby, an eerie shadow appears on TV screens. Seeing the shadow is said to bring bad luck.'),
  -- alakazam in brilliant-diamond
  (65, 6500, 33, 'Its superb memory lets it recall everything it has experienced from birth. Its IQ exceeds 5,000.'),
  -- machop in brilliant-diamond
  (66, 6600, 33, 'It hefts a GRAVELER repeatedly to strengthen its entire body. It uses every type of martial arts.'),
  -- machoke in brilliant-diamond
  (67, 6700, 33, 'MACHOKE’s boundless power is very dangerous, so it wears a belt that suppresses its energy.'),
  -- machamp in brilliant-diamond
  (68, 6800, 33, 'It punches with its four arms at blinding speed. It can launch 1,000 punches in two seconds.'),
  -- bellsprout in brilliant-diamond
  (69, 6900, 33, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in brilliant-diamond
  (70, 7000, 33, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in brilliant-diamond
  (71, 7100, 33, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in brilliant-diamond
  (72, 7200, 33, 'Its body is virtually composed of water. It shoots strange beams from its crystal-like eyes.'),
  -- tentacruel in brilliant-diamond
  (73, 7300, 33, 'With 80 tentacles for ensnaring victims, it prevents escape until the prey is weakened by poison.'),
  -- geodude in brilliant-diamond
  (74, 7400, 33, 'Many live on mountain trails and remain half buried while keeping an eye on climbers.'),
  -- graveler in brilliant-diamond
  (75, 7500, 33, 'GRAVELER make their homes on sheer cliff faces by gouging out numerous horizontal holes.'),
  -- golem in brilliant-diamond
  (76, 7600, 33, 'It sheds its hide once a year. Its boulderlike body is so tough, even dynamite can’t harm it.'),
  -- ponyta in brilliant-diamond
  (77, 7700, 33, 'About an hour after birth, its fiery mane and tail grow out, giving it an impressive appearance.'),
  -- rapidash in brilliant-diamond
  (78, 7800, 33, 'It gallops at nearly 150 mph. With its mane blazing ferociously, it races as if it were an arrow.'),
  -- slowpoke in brilliant-diamond
  (79, 7900, 33, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in brilliant-diamond
  (80, 8000, 33, 'Though usually dim witted, it seems to become inspired if the SHELLDER on its tail bites down.'),
  -- magnemite in brilliant-diamond
  (81, 8100, 33, 'The units at its sides generate electromagnetic waves that keep it airborne. It feeds on electricity.'),
  -- magneton in brilliant-diamond
  (82, 8200, 33, 'It is actually three MAGNEMITE linked by magnetism. A group can set off a magnetic storm.'),
  -- farfetchd in brilliant-diamond
  (83, 8300, 33, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in brilliant-diamond
  (84, 8400, 33, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in brilliant-diamond
  (85, 8500, 33, 'When DODUO evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in brilliant-diamond
  (86, 8600, 33, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in brilliant-diamond
  (87, 8700, 33, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in brilliant-diamond
  (88, 8800, 33, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in brilliant-diamond
  (89, 8900, 33, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in brilliant-diamond
  (90, 9000, 33, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in brilliant-diamond
  (91, 9100, 33, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in brilliant-diamond
  (92, 9200, 33, 'This Pokémon’s body is 95% made up of gases, which are blown away by strong gusts of wind.'),
  -- haunter in brilliant-diamond
  (93, 9300, 33, 'It can slip through any obstacle. It lurks inside walls to keep an eye on its foes.'),
  -- gengar in brilliant-diamond
  (94, 9400, 33, 'It hides in shadows. It is said that if GENGAR is hiding, it cools the area by nearly 10 degrees F.'),
  -- onix in brilliant-diamond
  (95, 9500, 33, 'When it travels underground, it causes rumbling and tremors. It can move at 50 mph.'),
  -- drowzee in brilliant-diamond
  (96, 9600, 33, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in brilliant-diamond
  (97, 9700, 33, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in brilliant-diamond
  (98, 9800, 33, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in brilliant-diamond
  (99, 9900, 33, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in brilliant-diamond
  (100, 10000, 33, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in brilliant-diamond
  (101, 10100, 33, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in brilliant-diamond
  (102, 10200, 33, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in brilliant-diamond
  (103, 10300, 33, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an EXEGGCUTE.'),
  -- cubone in brilliant-diamond
  (104, 10400, 33, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in brilliant-diamond
  (105, 10500, 33, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in brilliant-diamond
  (106, 10600, 33, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in brilliant-diamond
  (107, 10700, 33, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in brilliant-diamond
  (108, 10800, 33, 'Instead of hands, it uses its tongue, which is twice its height. Its sticky saliva grips anything.'),
  -- koffing in brilliant-diamond
  (109, 10900, 33, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in brilliant-diamond
  (110, 11000, 33, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in brilliant-diamond
  (111, 11100, 33, 'Its body is clad in a thick hide, and its tackles topple buildings. Unfortunately, it is not smart.'),
  -- rhydon in brilliant-diamond
  (112, 11200, 33, 'Its brain developed after it stood up on its hind legs. Its drill horn bores tunnels through solid rock.'),
  -- chansey in brilliant-diamond
  (113, 11300, 33, 'It is said to deliver happiness. Being compassionate, it shares its eggs with injured people.'),
  -- tangela in brilliant-diamond
  (114, 11400, 33, 'It is shrouded by blue vines. No one has seen the face hidden behind this growth of vines.'),
  -- kangaskhan in brilliant-diamond
  (115, 11500, 33, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in brilliant-diamond
  (116, 11600, 33, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in brilliant-diamond
  (117, 11700, 33, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in brilliant-diamond
  (118, 11800, 33, 'It swims elegantly by flittering its tail fin as if it were a dress. It has the look of a queen.'),
  -- seaking in brilliant-diamond
  (119, 11900, 33, 'It makes its nest by hollowing out boulders in streams with its horn. It defends its eggs with its life.'),
  -- staryu in brilliant-diamond
  (120, 12000, 33, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in brilliant-diamond
  (121, 12100, 33, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in brilliant-diamond
  (122, 12200, 33, 'It is a pantomime expert that can create invisible but solid walls using miming gestures.'),
  -- scyther in brilliant-diamond
  (123, 12300, 33, 'It is nearly impossible to parry its attacking scythes. Its movements are like a ninja’s.'),
  -- jynx in brilliant-diamond
  (124, 12400, 33, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in brilliant-diamond
  (125, 12500, 33, 'Half of all blackouts occur when this Pokémon appears at power plants and eats electricity.'),
  -- magmar in brilliant-diamond
  (126, 12600, 33, 'Born in the spout of a volcano, its body is covered by flames that shimmer like the sun.'),
  -- pinsir in brilliant-diamond
  (127, 12700, 33, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in brilliant-diamond
  (128, 12800, 33, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in brilliant-diamond
  (129, 12900, 33, 'It is said to be the world’s weakest Pokémon. No one knows why it has managed to survive.'),
  -- gyarados in brilliant-diamond
  (130, 13000, 33, 'Once it appears, its rage never settles until it has razed the fields and mountains around it.'),
  -- lapras in brilliant-diamond
  (131, 13100, 33, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in brilliant-diamond
  (132, 13200, 33, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in brilliant-diamond
  (133, 13300, 33, 'A rare Pokémon that adapts to harsh environments by taking on different evolutionary forms.'),
  -- vaporeon in brilliant-diamond
  (134, 13400, 33, 'It has evolved to be suitable for an aquatic life. It can invisibly melt away into water.'),
  -- jolteon in brilliant-diamond
  (135, 13500, 33, 'It controls 10,000-volt power and can raise all the fur on its body as if it were sharp needles.'),
  -- flareon in brilliant-diamond
  (136, 13600, 33, 'It has a flame sac in its body. Its body temperature tops 1,650 degrees Fahrenheit before battle.'),
  -- porygon in brilliant-diamond
  (137, 13700, 33, 'The world’s first artificially created Pokémon. It can travel through electronic space.'),
  -- omanyte in brilliant-diamond
  (138, 13800, 33, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in brilliant-diamond
  (139, 13900, 33, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in brilliant-diamond
  (140, 14000, 33, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in brilliant-diamond
  (141, 14100, 33, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in brilliant-diamond
  (142, 14200, 33, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in brilliant-diamond
  (143, 14300, 33, 'Its stomach can digest any kind of food, even if it happens to be moldy or rotten.'),
  -- articuno in brilliant-diamond
  (144, 14400, 33, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in brilliant-diamond
  (145, 14500, 33, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in brilliant-diamond
  (146, 14600, 33, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in brilliant-diamond
  (147, 14700, 33, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in brilliant-diamond
  (148, 14800, 33, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in brilliant-diamond
  (149, 14900, 33, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in brilliant-diamond
  (150, 15000, 33, 'A Pokémon created by recombining MEW’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in brilliant-diamond
  (151, 15100, 33, 'Because it can use all kinds of moves, many scientists believe MEW to be the ancestor of Pokémon.'),
  -- chikorita in brilliant-diamond
  (152, 15200, 33, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in brilliant-diamond
  (153, 15300, 33, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in brilliant-diamond
  (154, 15400, 33, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in brilliant-diamond
  (155, 15500, 33, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in brilliant-diamond
  (156, 15600, 33, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in brilliant-diamond
  (157, 15700, 33, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in brilliant-diamond
  (158, 15800, 33, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in brilliant-diamond
  (159, 15900, 33, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in brilliant-diamond
  (160, 16000, 33, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in brilliant-diamond
  (161, 16100, 33, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in brilliant-diamond
  (162, 16200, 33, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in brilliant-diamond
  (163, 16300, 33, 'It always stands on one foot. Even when attacked, it does not brace itself using both feet.'),
  -- noctowl in brilliant-diamond
  (164, 16400, 33, 'Its eyes are special. They can pick out objects as long as there is the tiniest amount of light.'),
  -- ledyba in brilliant-diamond
  (165, 16500, 33, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in brilliant-diamond
  (166, 16600, 33, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in brilliant-diamond
  (167, 16700, 33, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in brilliant-diamond
  (168, 16800, 33, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in brilliant-diamond
  (169, 16900, 33, 'Having four wings enables it to fly faster and more quietly. It turns active when the night comes.'),
  -- chinchou in brilliant-diamond
  (170, 17000, 33, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in brilliant-diamond
  (171, 17100, 33, 'LANTURN’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in brilliant-diamond
  (172, 17200, 33, 'The electric pouches on its cheeks are still small. They cannot store much electricity yet.'),
  -- cleffa in brilliant-diamond
  (173, 17300, 33, 'Its silhouette is like a star. It is believed to arrive riding on shooting stars.'),
  -- igglybuff in brilliant-diamond
  (174, 17400, 33, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in brilliant-diamond
  (175, 17500, 33, 'Its shell is said to be stuffed with happiness that it shares with kindhearted people.'),
  -- togetic in brilliant-diamond
  (176, 17600, 33, 'It is said to appear in front of kindly people to scatter a glowing down called “joy dust.”'),
  -- natu in brilliant-diamond
  (177, 17700, 33, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in brilliant-diamond
  (178, 17800, 33, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in brilliant-diamond
  (179, 17900, 33, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in brilliant-diamond
  (180, 18000, 33, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in brilliant-diamond
  (181, 18100, 33, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in brilliant-diamond
  (182, 18200, 33, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in brilliant-diamond
  (183, 18300, 33, 'Using its tail as a float, it dives underwater. It likes eating plants that grow on river bottoms.'),
  -- azumarill in brilliant-diamond
  (184, 18400, 33, 'It lives in rivers and lakes. In water, its coloring and patterns trick the vision of foes.'),
  -- sudowoodo in brilliant-diamond
  (185, 18500, 33, 'Despite appearing to be a tree, its body is closer to rocks and stones. It is very weak to water.'),
  -- politoed in brilliant-diamond
  (186, 18600, 33, 'It gathers groups of others as their leader. Its cries make POLIWAG obey.'),
  -- hoppip in brilliant-diamond
  (187, 18700, 33, 'It drifts on winds. It is said that when HOPPIP gather in fields and mountains, spring is on the way.'),
  -- skiploom in brilliant-diamond
  (188, 18800, 33, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in brilliant-diamond
  (189, 18900, 33, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in brilliant-diamond
  (190, 19000, 33, 'It uses its tail to pluck fruits that are out of reach. Its tail is more adept than its real hands.'),
  -- sunkern in brilliant-diamond
  (191, 19100, 33, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in brilliant-diamond
  (192, 19200, 33, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in brilliant-diamond
  (193, 19300, 33, 'Its eyes can see 360 degrees without moving its head. It won’t miss prey--even those behind it.'),
  -- wooper in brilliant-diamond
  (194, 19400, 33, 'It lives in cold water, half burying itself in mud at the bottom to sleep.'),
  -- quagsire in brilliant-diamond
  (195, 19500, 33, 'It has a sluggish nature. It lies at the river’s bottom, waiting for prey to stray into its mouth.'),
  -- espeon in brilliant-diamond
  (196, 19600, 33, 'Its fur has the look and feel of velvet. The orb on its forehead glows when it uses psycho-power.'),
  -- umbreon in brilliant-diamond
  (197, 19700, 33, 'The light of the moon changed EEVEE’s genetic structure. It lurks in darkness for prey.'),
  -- murkrow in brilliant-diamond
  (198, 19800, 33, 'It is believed that seeing this Pokémon at night will bring about ominous occurrences.'),
  -- slowking in brilliant-diamond
  (199, 19900, 33, 'Being bitten by SHELLDER gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in brilliant-diamond
  (200, 20000, 33, 'It loves to sneak up on people late at night, then startle them with its shrieklike cry.'),
  -- unown in brilliant-diamond
  (201, 20100, 33, 'Shaped like ancient writing, it is a huge mystery whether language or UNOWN came first.'),
  -- wobbuffet in brilliant-diamond
  (202, 20200, 33, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in brilliant-diamond
  (203, 20300, 33, 'Its tail also has a small brain. It bites to repel any foe trying to sneak up on it from behind.'),
  -- pineco in brilliant-diamond
  (204, 20400, 33, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in brilliant-diamond
  (205, 20500, 33, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in brilliant-diamond
  (206, 20600, 33, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in brilliant-diamond
  (207, 20700, 33, 'It sails on the winds with its limbs extended to strike from the sky. It aims for the prey’s face.'),
  -- steelix in brilliant-diamond
  (208, 20800, 33, 'Tempered underground under high pressure and heat, its body is harder than any metal.'),
  -- snubbull in brilliant-diamond
  (209, 20900, 33, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in brilliant-diamond
  (210, 21000, 33, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in brilliant-diamond
  (211, 21100, 33, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in brilliant-diamond
  (212, 21200, 33, 'It has a steel-hard body. It intimidates foes by upraising its eye-patterned pincers.'),
  -- shuckle in brilliant-diamond
  (213, 21300, 33, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in brilliant-diamond
  (214, 21400, 33, 'It gathers in forests to search for tree sap, its favorite food. It’s strong enough to hurl foes.'),
  -- sneasel in brilliant-diamond
  (215, 21500, 33, 'It feeds on eggs stolen from nests. Its sharply hooked claws rip vulnerable spots on prey.'),
  -- teddiursa in brilliant-diamond
  (216, 21600, 33, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in brilliant-diamond
  (217, 21700, 33, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in brilliant-diamond
  (218, 21800, 33, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in brilliant-diamond
  (219, 21900, 33, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in brilliant-diamond
  (220, 22000, 33, 'It loves eating mushrooms that grow under dead grass. It also finds hot springs while foraging.'),
  -- piloswine in brilliant-diamond
  (221, 22100, 33, 'Its shaggy coat makes it unable to see. It checks surroundings with its sensitive nose instead.'),
  -- corsola in brilliant-diamond
  (222, 22200, 33, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in brilliant-diamond
  (223, 22300, 33, 'It squirts water forcefully from its mouth to shoot down flying prey.'),
  -- octillery in brilliant-diamond
  (224, 22400, 33, 'It lives in the gaps of boulders and in holes on the seafloor. Its suction cups grip prey tightly.'),
  -- delibird in brilliant-diamond
  (225, 22500, 33, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in brilliant-diamond
  (226, 22600, 33, 'When the waves are calm, one may encounter a swarm of MANTINE swimming as if they are in flight.'),
  -- skarmory in brilliant-diamond
  (227, 22700, 33, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in brilliant-diamond
  (228, 22800, 33, 'It conveys its feelings using different cries. It works in a pack to cleverly take down prey.'),
  -- houndoom in brilliant-diamond
  (229, 22900, 33, 'Long ago, people imagined its eerie howls to be the call of the grim reaper.'),
  -- kingdra in brilliant-diamond
  (230, 23000, 33, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in brilliant-diamond
  (231, 23100, 33, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in brilliant-diamond
  (232, 23200, 33, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in brilliant-diamond
  (233, 23300, 33, 'With planetary development software installed, it became capable of working in space.'),
  -- stantler in brilliant-diamond
  (234, 23400, 33, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in brilliant-diamond
  (235, 23500, 33, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in brilliant-diamond
  (236, 23600, 33, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in brilliant-diamond
  (237, 23700, 33, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in brilliant-diamond
  (238, 23800, 33, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in brilliant-diamond
  (239, 23900, 33, 'It generates electricity by whirling its arms. However, it can’t store the energy it makes.'),
  -- magby in brilliant-diamond
  (240, 24000, 33, 'Its body temperature is around 1,100 degrees F. It is healthy if it is breathing yellow flames.'),
  -- miltank in brilliant-diamond
  (241, 24100, 33, 'It is said that kids who drink MILTANK’s milk grow up to become hearty, healthy adults.'),
  -- blissey in brilliant-diamond
  (242, 24200, 33, 'This kindhearted Pokémon nurses sick Pokémon to health. It senses feelings of sadness.'),
  -- raikou in brilliant-diamond
  (243, 24300, 33, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in brilliant-diamond
  (244, 24400, 33, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in brilliant-diamond
  (245, 24500, 33, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in brilliant-diamond
  (246, 24600, 33, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in brilliant-diamond
  (247, 24700, 33, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in brilliant-diamond
  (248, 24800, 33, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in brilliant-diamond
  (249, 24900, 33, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in brilliant-diamond
  (250, 25000, 33, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in brilliant-diamond
  (251, 25100, 33, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in brilliant-diamond
  (252, 25200, 33, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in brilliant-diamond
  (253, 25300, 33, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in brilliant-diamond
  (254, 25400, 33, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in brilliant-diamond
  (255, 25500, 33, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in brilliant-diamond
  (256, 25600, 33, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in brilliant-diamond
  (257, 25700, 33, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in brilliant-diamond
  (258, 25800, 33, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in brilliant-diamond
  (259, 25900, 33, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in brilliant-diamond
  (260, 26000, 33, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in brilliant-diamond
  (261, 26100, 33, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in brilliant-diamond
  (262, 26200, 33, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in brilliant-diamond
  (263, 26300, 33, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in brilliant-diamond
  (264, 26400, 33, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in brilliant-diamond
  (265, 26500, 33, 'It loves to eat leaves. If it is attacked by a STARLY, it will defend itself with its spiked rear.'),
  -- silcoon in brilliant-diamond
  (266, 26600, 33, 'It anchors itself by wrapping twigs with the silk from its body. It motionlessly awaits evolution.'),
  -- beautifly in brilliant-diamond
  (267, 26700, 33, 'It has an aggressive nature. It stabs prey with its long, narrow mouth to drain the prey’s fluids.'),
  -- cascoon in brilliant-diamond
  (268, 26800, 33, 'It is hot inside its cocoon. All the cells in its body create the energy for it to evolve.'),
  -- dustox in brilliant-diamond
  (269, 26900, 33, 'A nocturnal Pokémon. Drawn by streetlights, they messily eat the leaves of trees lining boulevards.'),
  -- lotad in brilliant-diamond
  (270, 27000, 33, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in brilliant-diamond
  (271, 27100, 33, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in brilliant-diamond
  (272, 27200, 33, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in brilliant-diamond
  (273, 27300, 33, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in brilliant-diamond
  (274, 27400, 33, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in brilliant-diamond
  (275, 27500, 33, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in brilliant-diamond
  (276, 27600, 33, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in brilliant-diamond
  (277, 27700, 33, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in brilliant-diamond
  (278, 27800, 33, 'It makes its nest on steep sea cliffs. Riding updrafts, it soars to great heights.'),
  -- pelipper in brilliant-diamond
  (279, 27900, 33, 'It dips its large bill in the sea, then scoops up numerous prey along with water.'),
  -- ralts in brilliant-diamond
  (280, 28000, 33, 'It uses the horns on its head to sense human emotions. It is said to appear in front of cheerful people.'),
  -- kirlia in brilliant-diamond
  (281, 28100, 33, 'It is highly perceptive of its Trainer’s feelings. It dances when it is feeling happy.'),
  -- gardevoir in brilliant-diamond
  (282, 28200, 33, 'It will try to guard its trusted Trainer with its life. It has the ability to see the future.'),
  -- surskit in brilliant-diamond
  (283, 28300, 33, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in brilliant-diamond
  (284, 28400, 33, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in brilliant-diamond
  (285, 28500, 33, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in brilliant-diamond
  (286, 28600, 33, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in brilliant-diamond
  (287, 28700, 33, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in brilliant-diamond
  (288, 28800, 33, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in brilliant-diamond
  (289, 28900, 33, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in brilliant-diamond
  (290, 29000, 33, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in brilliant-diamond
  (291, 29100, 33, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in brilliant-diamond
  (292, 29200, 33, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in brilliant-diamond
  (293, 29300, 33, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in brilliant-diamond
  (294, 29400, 33, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in brilliant-diamond
  (295, 29500, 33, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in brilliant-diamond
  (296, 29600, 33, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in brilliant-diamond
  (297, 29700, 33, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in brilliant-diamond
  (298, 29800, 33, 'A Pokémon that lives by water. It moves quickly on land by bouncing on its big tail.'),
  -- nosepass in brilliant-diamond
  (299, 29900, 33, 'Its nose is a magnet. As a result, this Pokémon always keeps its face pointing north.'),
  -- skitty in brilliant-diamond
  (300, 30000, 33, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in brilliant-diamond
  (301, 30100, 33, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in brilliant-diamond
  (302, 30200, 33, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in brilliant-diamond
  (303, 30300, 33, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in brilliant-diamond
  (304, 30400, 33, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in brilliant-diamond
  (305, 30500, 33, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in brilliant-diamond
  (306, 30600, 33, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in brilliant-diamond
  (307, 30700, 33, 'It eats just one berry a day. By enduring hunger, its spirit is tempered and made sharper.'),
  -- medicham in brilliant-diamond
  (308, 30800, 33, 'Through yoga training, it has honed its sixth sense. Its movements are elegant.'),
  -- electrike in brilliant-diamond
  (309, 30900, 33, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in brilliant-diamond
  (310, 31000, 33, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in brilliant-diamond
  (311, 31100, 33, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in brilliant-diamond
  (312, 31200, 33, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in brilliant-diamond
  (313, 31300, 33, 'It communicates with others by lighting up its rear at night. It loves ILLUMISE’s sweet aroma.'),
  -- illumise in brilliant-diamond
  (314, 31400, 33, 'With its sweet aroma, it guides VOLBEAT to draw signs with light in the night sky.'),
  -- roselia in brilliant-diamond
  (315, 31500, 33, 'ROSELIA raised on clean drinking water are known to grow vividly colored flowers.'),
  -- gulpin in brilliant-diamond
  (316, 31600, 33, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in brilliant-diamond
  (317, 31700, 33, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in brilliant-diamond
  (318, 31800, 33, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in brilliant-diamond
  (319, 31900, 33, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in brilliant-diamond
  (320, 32000, 33, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in brilliant-diamond
  (321, 32100, 33, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in brilliant-diamond
  (322, 32200, 33, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in brilliant-diamond
  (323, 32300, 33, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in brilliant-diamond
  (324, 32400, 33, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in brilliant-diamond
  (325, 32500, 33, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in brilliant-diamond
  (326, 32600, 33, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in brilliant-diamond
  (327, 32700, 33, 'No two SPINDA have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in brilliant-diamond
  (328, 32800, 33, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in brilliant-diamond
  (329, 32900, 33, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in brilliant-diamond
  (330, 33000, 33, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in brilliant-diamond
  (331, 33100, 33, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in brilliant-diamond
  (332, 33200, 33, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in brilliant-diamond
  (333, 33300, 33, 'Its wings are like cotton tufts. If it perches on someone’s head, it looks like a cotton hat.'),
  -- altaria in brilliant-diamond
  (334, 33400, 33, 'It looks like a fluffy cloud when it is in flight. It hums with its soprano voice.'),
  -- zangoose in brilliant-diamond
  (335, 33500, 33, 'It has feuded with SEVIPER for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in brilliant-diamond
  (336, 33600, 33, 'For many generations, it has feuded with ZANGOOSE. It whets its bladed tail on rocks for battle.'),
  -- lunatone in brilliant-diamond
  (337, 33700, 33, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in brilliant-diamond
  (338, 33800, 33, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in brilliant-diamond
  (339, 33900, 33, 'It coats its entire body with a slimy fluid so it can squirm and slip away if grabbed.'),
  -- whiscash in brilliant-diamond
  (340, 34000, 33, 'It is very territorial. It repels foes by setting off tremors that extend over a three-mile radius.'),
  -- corphish in brilliant-diamond
  (341, 34100, 33, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in brilliant-diamond
  (342, 34200, 33, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in brilliant-diamond
  (343, 34300, 33, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in brilliant-diamond
  (344, 34400, 33, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in brilliant-diamond
  (345, 34500, 33, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in brilliant-diamond
  (346, 34600, 33, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in brilliant-diamond
  (347, 34700, 33, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in brilliant-diamond
  (348, 34800, 33, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in brilliant-diamond
  (349, 34900, 33, 'It is famous for its shabby appearance. While populous, they tend to cluster in set locations.'),
  -- milotic in brilliant-diamond
  (350, 35000, 33, 'When people bicker, it is said to arise from the depths of lakes to becalm violent hearts.'),
  -- castform in brilliant-diamond
  (351, 35100, 33, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in brilliant-diamond
  (352, 35200, 33, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in brilliant-diamond
  (353, 35300, 33, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in brilliant-diamond
  (354, 35400, 33, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in brilliant-diamond
  (355, 35500, 33, 'It doggedly pursues its prey wherever it goes. However, the chase is abandoned at sunrise.'),
  -- dusclops in brilliant-diamond
  (356, 35600, 33, 'Its body is hollow. It is said that those who look into its body are sucked into the void.'),
  -- tropius in brilliant-diamond
  (357, 35700, 33, 'Because it continually ate only its favorite fruit, the fruit started growing around its neck.'),
  -- chimecho in brilliant-diamond
  (358, 35800, 33, 'To knock foes flying, it makes the air shudder with its cries. It converses using seven cries.'),
  -- absol in brilliant-diamond
  (359, 35900, 33, 'It senses coming disasters and appears before people only to warn them of impending danger.'),
  -- wynaut in brilliant-diamond
  (360, 36000, 33, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in brilliant-diamond
  (361, 36100, 33, 'In the snow country, certain folklore says a house will prosper if a SNORUNT lives there.'),
  -- glalie in brilliant-diamond
  (362, 36200, 33, 'To protect itself, it clads its body in an armor of ice, made by freezing moisture in the air.'),
  -- spheal in brilliant-diamond
  (363, 36300, 33, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in brilliant-diamond
  (364, 36400, 33, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in brilliant-diamond
  (365, 36500, 33, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in brilliant-diamond
  (366, 36600, 33, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in brilliant-diamond
  (367, 36700, 33, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in brilliant-diamond
  (368, 36800, 33, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in brilliant-diamond
  (369, 36900, 33, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in brilliant-diamond
  (370, 37000, 33, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in brilliant-diamond
  (371, 37100, 33, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in brilliant-diamond
  (372, 37200, 33, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in brilliant-diamond
  (373, 37300, 33, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in brilliant-diamond
  (374, 37400, 33, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in brilliant-diamond
  (375, 37500, 33, 'It is formed by two BELDUM joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in brilliant-diamond
  (376, 37600, 33, 'METANG combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in brilliant-diamond
  (377, 37700, 33, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in brilliant-diamond
  (378, 37800, 33, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in brilliant-diamond
  (379, 37900, 33, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in brilliant-diamond
  (380, 38000, 33, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in brilliant-diamond
  (381, 38100, 33, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in brilliant-diamond
  (382, 38200, 33, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in brilliant-diamond
  (383, 38300, 33, 'It had been asleep in underground magma ever since it fiercely fought KYOGRE long ago.'),
  -- rayquaza in brilliant-diamond
  (384, 38400, 33, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in brilliant-diamond
  (385, 38500, 33, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in brilliant-diamond
  (386, 38600, 33, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in brilliant-diamond
  (387, 38700, 33, 'Made from soil, the shell on its back hardens when it drinks water. It lives along lakes.'),
  -- grotle in brilliant-diamond
  (388, 38800, 33, 'It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell.'),
  -- torterra in brilliant-diamond
  (389, 38900, 33, 'Small Pokémon occasionally gather on its unmoving back to begin building their nests.'),
  -- chimchar in brilliant-diamond
  (390, 39000, 33, 'It agilely scales sheer cliffs to live atop craggy mountains. Its fire is put out when it sleeps.'),
  -- monferno in brilliant-diamond
  (391, 39100, 33, 'To intimidate attackers, it stretches the fire on its tail to make itself appear bigger.'),
  -- infernape in brilliant-diamond
  (392, 39200, 33, 'It uses a special kind of martial arts involving all its limbs. Its fire never goes out.'),
  -- piplup in brilliant-diamond
  (393, 39300, 33, 'Because it is very proud, it hates accepting food from people. Its thick down guards it from cold.'),
  -- prinplup in brilliant-diamond
  (394, 39400, 33, 'It lives alone, away from others. Apparently, every one of them believes it is the most important.'),
  -- empoleon in brilliant-diamond
  (395, 39500, 33, 'The three horns that extend from its beak attest to its power. The leader has the biggest horns.'),
  -- starly in brilliant-diamond
  (396, 39600, 33, 'They flock in great numbers. Though small, they flap their wings with great power.'),
  -- staravia in brilliant-diamond
  (397, 39700, 33, 'It flies around forests and fields in search of bug Pokémon. It stays within a huge flock.'),
  -- staraptor in brilliant-diamond
  (398, 39800, 33, 'It has a savage nature. It will courageously challenge foes that are much larger.'),
  -- bidoof in brilliant-diamond
  (399, 39900, 33, 'With nerves of steel, nothing can perturb it. It is more agile and active than it appears.'),
  -- bibarel in brilliant-diamond
  (400, 40000, 33, 'It makes its nest by damming streams with bark and mud. It is known as an industrious worker.'),
  -- kricketot in brilliant-diamond
  (401, 40100, 33, 'It shakes its head back to front, causing its antennae to hit each other and sound like a xylophone.'),
  -- kricketune in brilliant-diamond
  (402, 40200, 33, 'It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib.'),
  -- shinx in brilliant-diamond
  (403, 40300, 33, 'All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded.'),
  -- luxio in brilliant-diamond
  (404, 40400, 33, 'Its claws loose electricity with enough amperage to cause fainting. They live in small groups.'),
  -- luxray in brilliant-diamond
  (405, 40500, 33, 'It has eyes that can see through anything. It spots and captures prey hiding behind objects.'),
  -- budew in brilliant-diamond
  (406, 40600, 33, 'Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen.'),
  -- roserade in brilliant-diamond
  (407, 40700, 33, 'It attracts prey with a sweet aroma, then downs it with thorny whips hidden in its arms.'),
  -- cranidos in brilliant-diamond
  (408, 40800, 33, 'It lived in jungles around 100 million years ago. Its skull is as hard as iron.'),
  -- rampardos in brilliant-diamond
  (409, 40900, 33, 'Its powerful head butt has enough power to shatter even the most durable things upon impact.'),
  -- shieldon in brilliant-diamond
  (410, 41000, 33, 'A Pokémon that lived in jungles around 100 million years ago. Its facial hide is extremely hard.'),
  -- bastiodon in brilliant-diamond
  (411, 41100, 33, 'Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries.'),
  -- burmy in brilliant-diamond
  (412, 41200, 33, 'To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves.'),
  -- wormadam in brilliant-diamond
  (413, 41300, 33, 'When BURMY evolved, its cloak became a part of this Pokémon’s body. The cloak is never shed.'),
  -- mothim in brilliant-diamond
  (414, 41400, 33, 'It loves the honey of flowers and steals honey collected by COMBEE.'),
  -- combee in brilliant-diamond
  (415, 41500, 33, 'A Pokémon formed by three others. It busily carries sweet floral honey to VESPIQUEN.'),
  -- vespiquen in brilliant-diamond
  (416, 41600, 33, 'Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by COMBEE.'),
  -- pachirisu in brilliant-diamond
  (417, 41700, 33, 'It makes fur balls that crackle with static electricity. It stores them with berries in tree holes.'),
  -- buizel in brilliant-diamond
  (418, 41800, 33, 'It has a flotation sac that is like an inflatable collar. It floats on water with its head out.'),
  -- floatzel in brilliant-diamond
  (419, 41900, 33, 'It floats using its well-developed flotation sac. It assists in the rescues of drowning people.'),
  -- cherubi in brilliant-diamond
  (420, 42000, 33, 'The small ball holds the nutrients needed for evolution. Apparently, it is very sweet and tasty.'),
  -- cherrim in brilliant-diamond
  (421, 42100, 33, 'It blooms during times of strong sunlight. It tries to make up for everything it endured as a bud.'),
  -- shellos in brilliant-diamond
  (422, 42200, 33, 'Its colors and shapes differ from region to region. In the Sinnoh region, two types are confirmed.'),
  -- gastrodon in brilliant-diamond
  (423, 42300, 33, 'It has a pliable body without any bones. If any part of its body is torn off, it grows right back.'),
  -- ambipom in brilliant-diamond
  (424, 42400, 33, 'To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now.'),
  -- drifloon in brilliant-diamond
  (425, 42500, 33, 'A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons.'),
  -- drifblim in brilliant-diamond
  (426, 42600, 33, 'It’s drowzy in daytime, but flies off in the evening in big groups. No one knows where they go.'),
  -- buneary in brilliant-diamond
  (427, 42700, 33, 'It slams foes by sharply uncoiling its rolled ears. It stings enough to make a grown-up cry in pain.'),
  -- lopunny in brilliant-diamond
  (428, 42800, 33, 'An extremely cautious Pokémon. It cloaks its body with its fluffy ear fur when it senses danger.'),
  -- mismagius in brilliant-diamond
  (429, 42900, 33, 'Its cries sound like incantations. Those hearing it are tormented by headaches and hallucinations.'),
  -- honchkrow in brilliant-diamond
  (430, 43000, 33, 'Becoming active at night, it is known to swarm with numerous MURKROW in tow.'),
  -- glameow in brilliant-diamond
  (431, 43100, 33, 'It claws if displeased and purrs when affectionate. Its fickleness is very popular among some.'),
  -- purugly in brilliant-diamond
  (432, 43200, 33, 'It is a brazen brute that barges its way into another Pokémon’s nest and claims it as its own.'),
  -- chingling in brilliant-diamond
  (433, 43300, 33, 'It emits cries by agitating an orb at the back of its throat. It moves with flouncing hops.'),
  -- stunky in brilliant-diamond
  (434, 43400, 33, 'It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours.'),
  -- skuntank in brilliant-diamond
  (435, 43500, 33, 'It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet.'),
  -- bronzor in brilliant-diamond
  (436, 43600, 33, 'Implements shaped like it were discovered in ancient tombs. It is unknown if they are related.'),
  -- bronzong in brilliant-diamond
  (437, 43700, 33, 'One caused a news sensation when it was dug up at a construction site after a 2,000-year sleep.'),
  -- bonsly in brilliant-diamond
  (438, 43800, 33, 'It looks as if it is always crying. It is actually adjusting its body’s fluid levels by eliminating excess.'),
  -- mime-jr in brilliant-diamond
  (439, 43900, 33, 'It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon.'),
  -- happiny in brilliant-diamond
  (440, 44000, 33, 'It loves round white things. It carries an egg-shaped rock in imitation of CHANSEY.'),
  -- chatot in brilliant-diamond
  (441, 44100, 33, 'It can learn and speak human words. If they gather, they all learn the same saying.'),
  -- spiritomb in brilliant-diamond
  (442, 44200, 33, 'A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone.'),
  -- gible in brilliant-diamond
  (443, 44300, 33, 'It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.'),
  -- gabite in brilliant-diamond
  (444, 44400, 33, 'There is a long-held belief that medicine made from its scales will heal even incurable illnesses.'),
  -- garchomp in brilliant-diamond
  (445, 44500, 33, 'When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed.'),
  -- munchlax in brilliant-diamond
  (446, 44600, 33, 'It wolfs down its weight in food once a day, swallowing food whole with almost no chewing.'),
  -- riolu in brilliant-diamond
  (447, 44700, 33, 'The aura that emanates from its body intensifies to alert others if it is afraid or sad.'),
  -- lucario in brilliant-diamond
  (448, 44800, 33, 'It has the ability to sense the auras of all things. It understands human speech.'),
  -- hippopotas in brilliant-diamond
  (449, 44900, 33, 'It lives in arid places. Instead of perspiration, it expels grainy sand from its body.'),
  -- hippowdon in brilliant-diamond
  (450, 45000, 33, 'It blasts internally stored sand from ports on its body to create a towering twister for attack.'),
  -- skorupi in brilliant-diamond
  (451, 45100, 33, 'It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes.'),
  -- drapion in brilliant-diamond
  (452, 45200, 33, 'It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison.'),
  -- croagunk in brilliant-diamond
  (453, 45300, 33, 'Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers.'),
  -- toxicroak in brilliant-diamond
  (454, 45400, 33, 'Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal.'),
  -- carnivine in brilliant-diamond
  (455, 45500, 33, 'It attracts prey with its sweet- smelling saliva, then chomps down. It takes a whole day to eat prey.'),
  -- finneon in brilliant-diamond
  (456, 45600, 33, 'After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives.'),
  -- lumineon in brilliant-diamond
  (457, 45700, 33, 'It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins.'),
  -- mantyke in brilliant-diamond
  (458, 45800, 33, 'A friendly Pokémon that captures the subtle flows of seawater using its two antennae.'),
  -- snover in brilliant-diamond
  (459, 45900, 33, 'It lives on snowy mountains. Having had little contact with humans, it is boldly inquisitive.'),
  -- abomasnow in brilliant-diamond
  (460, 46000, 33, 'It whips up blizzards in mountains that are always buried in snow. It is the abominable snowman.'),
  -- weavile in brilliant-diamond
  (461, 46100, 33, 'They live in cold regions, forming groups of four or five that hunt prey with impressive coordination.'),
  -- magnezone in brilliant-diamond
  (462, 46200, 33, 'It evolved from exposure to a special magnetic field. Three units generate magnetism.'),
  -- lickilicky in brilliant-diamond
  (463, 46300, 33, 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.'),
  -- rhyperior in brilliant-diamond
  (464, 46400, 33, 'It puts rocks in holes in its palms and uses its muscles to shoot them. GEODUDE are shot at rare times.'),
  -- tangrowth in brilliant-diamond
  (465, 46500, 33, 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.'),
  -- electivire in brilliant-diamond
  (466, 46600, 33, 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.'),
  -- magmortar in brilliant-diamond
  (467, 46700, 33, 'It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters.'),
  -- togekiss in brilliant-diamond
  (468, 46800, 33, 'It will never appear where there is strife. Its sightings have become rare recently.'),
  -- yanmega in brilliant-diamond
  (469, 46900, 33, 'By churning its wings, it creates shock waves that inflict critical internal injuries to foes.'),
  -- leafeon in brilliant-diamond
  (470, 47000, 33, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in brilliant-diamond
  (471, 47100, 33, 'As a protective technique, it can completely freeze its fur to make its hairs stand like needles.'),
  -- gliscor in brilliant-diamond
  (472, 47200, 33, 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!'),
  -- mamoswine in brilliant-diamond
  (473, 47300, 33, 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.'),
  -- porygon-z in brilliant-diamond
  (474, 47400, 33, 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.'),
  -- gallade in brilliant-diamond
  (475, 47500, 33, 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.'),
  -- probopass in brilliant-diamond
  (476, 47600, 33, 'It exudes strong magnetism from all over. It controls three small units called Mini-Noses.'),
  -- dusknoir in brilliant-diamond
  (477, 47700, 33, 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.'),
  -- froslass in brilliant-diamond
  (478, 47800, 33, 'It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow.'),
  -- rotom in brilliant-diamond
  (479, 47900, 33, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- uxie in brilliant-diamond
  (480, 48000, 33, 'Known as “The Being of Knowledge.” It is said that it can wipe out the memory of those who see its eyes.'),
  -- mesprit in brilliant-diamond
  (481, 48100, 33, 'Known as “The Being of Emotion.” It taught humans the nobility of sorrow, pain, and joy.'),
  -- azelf in brilliant-diamond
  (482, 48200, 33, 'Known as “The Being of Willpower.” It sleeps at the bottom of a lake to keep the world in balance.'),
  -- dialga in brilliant-diamond
  (483, 48300, 33, 'It has the power to control time. It appears in Sinnoh-region myths as an ancient deity.'),
  -- palkia in brilliant-diamond
  (484, 48400, 33, 'It has the ability to distort space. It is described as a deity in Sinnoh-region mythology.'),
  -- heatran in brilliant-diamond
  (485, 48500, 33, 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.'),
  -- regigigas in brilliant-diamond
  (486, 48600, 33, 'There is an enduring legend that states this Pokémon towed continents with ropes.'),
  -- giratina in brilliant-diamond
  (487, 48700, 33, 'A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery.'),
  -- cresselia in brilliant-diamond
  (488, 48800, 33, 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.'),
  -- phione in brilliant-diamond
  (489, 48900, 33, 'A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food.'),
  -- manaphy in brilliant-diamond
  (490, 49000, 33, 'Born on a cold seafloor, it will swim great distances to return to its birthplace.'),
  -- darkrai in brilliant-diamond
  (491, 49100, 33, 'It can lull people to sleep and make them dream. It is active during nights of the new moon.'),
  -- shaymin in brilliant-diamond
  (492, 49200, 33, 'It lives in flower patches and avoids detection by curling up to look like a flowering plant.'),
  -- arceus in brilliant-diamond
  (493, 49300, 33, 'It is described in mythology as the Pokémon that shaped the universe with its 1,000 arms.'),
  -- bulbasaur in shining-pearl
  (1, 100, 34, 'For some time after its birth, it grows by gaining nourishment from the seed on its back.'),
  -- ivysaur in shining-pearl
  (2, 200, 34, 'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
  -- venusaur in shining-pearl
  (3, 300, 34, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- charmander in shining-pearl
  (4, 400, 34, 'The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.'),
  -- charmeleon in shining-pearl
  (5, 500, 34, 'In the rocky mountains where CHARMELEON live, their fiery tails shine at night like stars.'),
  -- charizard in shining-pearl
  (6, 600, 34, 'It is said that CHARIZARD’s fire burns hotter if it has experienced harsh battles.'),
  -- squirtle in shining-pearl
  (7, 700, 34, 'It shelters itself in its shell, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in shining-pearl
  (8, 800, 34, 'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
  -- blastoise in shining-pearl
  (9, 900, 34, 'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
  -- caterpie in shining-pearl
  (10, 1000, 34, 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.'),
  -- metapod in shining-pearl
  (11, 1100, 34, 'A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.'),
  -- butterfree in shining-pearl
  (12, 1200, 34, 'It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.'),
  -- weedle in shining-pearl
  (13, 1300, 34, 'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
  -- kakuna in shining-pearl
  (14, 1400, 34, 'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
  -- beedrill in shining-pearl
  (15, 1500, 34, 'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
  -- pidgey in shining-pearl
  (16, 1600, 34, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in shining-pearl
  (17, 1700, 34, 'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
  -- pidgeot in shining-pearl
  (18, 1800, 34, 'By flapping its wings with all its might, PIDGEOT can make a gust of wind capable of bending tall trees.'),
  -- rattata in shining-pearl
  (19, 1900, 34, 'Cautious in the extreme, its hardy vitality lets it live in any kind of environment.'),
  -- raticate in shining-pearl
  (20, 2000, 34, 'It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.'),
  -- spearow in shining-pearl
  (21, 2100, 34, 'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
  -- fearow in shining-pearl
  (22, 2200, 34, 'It has the stamina to keep flying all day on its broad wings. It fights by using its sharp beak.'),
  -- ekans in shining-pearl
  (23, 2300, 34, 'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
  -- arbok in shining-pearl
  (24, 2400, 34, 'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
  -- pikachu in shining-pearl
  (25, 2500, 34, 'If it looses crackling power from the electric pouches on its cheeks, it is being wary.'),
  -- raichu in shining-pearl
  (26, 2600, 34, 'It can loose 100,000-volt bursts of electricity, instantly downing foes several times its size.'),
  -- sandshrew in shining-pearl
  (27, 2700, 34, 'To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.'),
  -- sandslash in shining-pearl
  (28, 2800, 34, 'It curls up, then rolls into foes with its back. Its sharp spines inflict severe damage.'),
  -- nidoran-f in shining-pearl
  (29, 2900, 34, 'While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.'),
  -- nidorina in shining-pearl
  (30, 3000, 34, 'When it senses danger, it raises all the barbs on its body. These barbs grow slower than NIDORINO’s.'),
  -- nidoqueen in shining-pearl
  (31, 3100, 34, 'Its entire body is armored with hard scales. It will protect the young in its burrow with its life.'),
  -- nidoran-m in shining-pearl
  (32, 3200, 34, 'It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.'),
  -- nidorino in shining-pearl
  (33, 3300, 34, 'It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.'),
  -- nidoking in shining-pearl
  (34, 3400, 34, 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.'),
  -- clefairy in shining-pearl
  (35, 3500, 34, 'It flies using the wings on its back to collect moonlight. This Pokémon is difficult to find.'),
  -- clefable in shining-pearl
  (36, 3600, 34, 'Its hearing is so acute it can hear a pin drop over half a mile away. It lives on quiet mountains.'),
  -- vulpix in shining-pearl
  (37, 3700, 34, 'It controls balls of fire. As it grows, its six tails split from their tips to make more tails.'),
  -- ninetales in shining-pearl
  (38, 3800, 34, 'Its nine tails are said to be imbued with a mystic power. It can live for a thousand years.'),
  -- jigglypuff in shining-pearl
  (39, 3900, 34, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.'),
  -- wigglytuff in shining-pearl
  (40, 4000, 34, 'Its fine fur feels sublime to the touch. It can expand its body by inhaling air.'),
  -- zubat in shining-pearl
  (41, 4100, 34, 'Disliking sunlight, it sleeps deep in forests and caves until sundown.'),
  -- golbat in shining-pearl
  (42, 4200, 34, 'Once it starts sucking blood, it does not stop until it is full. It flies at night in search of prey.'),
  -- oddish in shining-pearl
  (43, 4300, 34, 'It often plants its root feet in the ground during the day and sows seeds as it walks about at night.'),
  -- gloom in shining-pearl
  (44, 4400, 34, 'The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.'),
  -- vileplume in shining-pearl
  (45, 4500, 34, 'Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.'),
  -- paras in shining-pearl
  (46, 4600, 34, 'Mushrooms named tochukaso grow on its back. They grow along with the host PARAS.'),
  -- parasect in shining-pearl
  (47, 4700, 34, 'It is controlled by a mushroom grown larger than the bug body. It is said to prefer damp places.'),
  -- venonat in shining-pearl
  (48, 4800, 34, 'Its big eyes are actually clusters of tiny eyes. At night, its kind is drawn by light.'),
  -- venomoth in shining-pearl
  (49, 4900, 34, 'It flutters its wings to scatter dustlike scales. The scales leach toxins if they contact skin.'),
  -- diglett in shining-pearl
  (50, 5000, 34, 'A Pokémon that lives underground. Because of its dark habitat, it is repelled by bright sunlight.'),
  -- dugtrio in shining-pearl
  (51, 5100, 34, 'Its three heads move alternately, driving it through tough soil to depths of over 60 miles.'),
  -- meowth in shining-pearl
  (52, 5200, 34, 'It is nocturnal in nature. If it spots something shiny, its eyes glitter brightly.'),
  -- persian in shining-pearl
  (53, 5300, 34, 'A very haughty Pokémon. Among fans, the size of the jewel in its forehead is a topic of much talk.'),
  -- psyduck in shining-pearl
  (54, 5400, 34, 'It never remembers using its odd powers, so it always tilts its head in puzzlement.'),
  -- golduck in shining-pearl
  (55, 5500, 34, 'The flippers of its well-developed limbs give it shocking speed. It is the best swimmer among Pokémon.'),
  -- mankey in shining-pearl
  (56, 5600, 34, 'It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.'),
  -- primeape in shining-pearl
  (57, 5700, 34, 'It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.'),
  -- growlithe in shining-pearl
  (58, 5800, 34, 'A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer.'),
  -- arcanine in shining-pearl
  (59, 5900, 34, 'Its proud and regal appearance has captured the hearts of people since long ago.'),
  -- poliwag in shining-pearl
  (60, 6000, 34, 'Its skin is so thin, its internal organs are visible. It has trouble walking on its newly grown feet.'),
  -- poliwhirl in shining-pearl
  (61, 6100, 34, 'The spiral pattern on its belly subtly undulates. Staring at it gradually causes drowsiness.'),
  -- poliwrath in shining-pearl
  (62, 6200, 34, 'With its extremely tough muscles, it can keep swimming in the Pacific Ocean without resting.'),
  -- abra in shining-pearl
  (63, 6300, 34, 'Even while asleep, it maintains a telepathic radar. It teleports when it is threatened.'),
  -- kadabra in shining-pearl
  (64, 6400, 34, 'When it uses its psychic power, it emits strong ha waves that can ruin precision devices.'),
  -- alakazam in shining-pearl
  (65, 6500, 34, 'Its highly developed brain is on par with a supercomputer. It can use all forms of psychic abilities.'),
  -- machop in shining-pearl
  (66, 6600, 34, 'Its muscles never cramp however much it trains. It lives in the mountains away from humans.'),
  -- machoke in shining-pearl
  (67, 6700, 34, 'It can lift a dump truck with one hand. Using that power, it helps people with heavy jobs.'),
  -- machamp in shining-pearl
  (68, 6800, 34, 'It can knock a train flying with a punch. However, it is terrible at delicate work using its fingers.'),
  -- bellsprout in shining-pearl
  (69, 6900, 34, 'It prefers hot and humid environments. It is quick at capturing prey with its vines.'),
  -- weepinbell in shining-pearl
  (70, 7000, 34, 'A Pokémon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.'),
  -- victreebel in shining-pearl
  (71, 7100, 34, 'It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.'),
  -- tentacool in shining-pearl
  (72, 7200, 34, 'It drifts in sea currents. Countless fishermen are hurt by its poison stingers.'),
  -- tentacruel in shining-pearl
  (73, 7300, 34, 'It alerts others to danger by stridently flashing the red orbs on its head.'),
  -- geodude in shining-pearl
  (74, 7400, 34, 'It is impossible to distinguish from rocks. It slams against others in contests of hardness.'),
  -- graveler in shining-pearl
  (75, 7500, 34, 'It tumbles down slopes, heedless of any body parts chipping off. It eats a ton of rocks daily.'),
  -- golem in shining-pearl
  (76, 7600, 34, 'It tumbles down mountains, leaving grooves from peak to base. Stay clear of these grooves.'),
  -- ponyta in shining-pearl
  (77, 7700, 34, 'Its legs grow strong while it chases after its parent. It runs in fields and mountains all day.'),
  -- rapidash in shining-pearl
  (78, 7800, 34, 'It has astounding acceleration. From a standstill, it can reach top speed within 10 steps.'),
  -- slowpoke in shining-pearl
  (79, 7900, 34, 'Although slow, it is skilled at fishing with its tail. It does not feel pain if its tail is bitten.'),
  -- slowbro in shining-pearl
  (80, 8000, 34, 'Though usually dim witted, it seems to become inspired if the SHELLDER on its tail bites down.'),
  -- magnemite in shining-pearl
  (81, 8100, 34, 'The units at its sides generate electromagnetic waves that keep it airborne. It feeds on electricity.'),
  -- magneton in shining-pearl
  (82, 8200, 34, 'It is actually three MAGNEMITE linked by magnetism. A group can set off a magnetic storm.'),
  -- farfetchd in shining-pearl
  (83, 8300, 34, 'It can’t live without the stalk it holds. That’s why it defends the stalk from attackers with its life.'),
  -- doduo in shining-pearl
  (84, 8400, 34, 'The brains in its two heads appear to communicate emotions to each other with a telepathic power.'),
  -- dodrio in shining-pearl
  (85, 8500, 34, 'When DODUO evolves into this odd breed, one of its heads splits into two. It runs at nearly 40 mph.'),
  -- seel in shining-pearl
  (86, 8600, 34, 'A Pokémon that lives on icebergs. It swims in the sea using the point on its head to break up ice.'),
  -- dewgong in shining-pearl
  (87, 8700, 34, 'In snow, the pure white coat covering its body obscures it from predators.'),
  -- grimer in shining-pearl
  (88, 8800, 34, 'It was born when sludge in a dirty stream was exposed to the moon’s X-rays. It appears among filth.'),
  -- muk in shining-pearl
  (89, 8900, 34, 'A toxic fluid seeps from its body. The fluid instantly kills plants and trees on contact.'),
  -- shellder in shining-pearl
  (90, 9000, 34, 'It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.'),
  -- cloyster in shining-pearl
  (91, 9100, 34, 'It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.'),
  -- gastly in shining-pearl
  (92, 9200, 34, 'A Pokémon born from poison gases. It defeats even the largest foes by enveloping them in gas.'),
  -- haunter in shining-pearl
  (93, 9300, 34, 'It licks with its gaseous tongue to steal the victim’s life force. It lurks in darkness for prey.'),
  -- gengar in shining-pearl
  (94, 9400, 34, 'Lurking in the shadowy corners of rooms, it awaits chances to steal its prey’s life force.'),
  -- onix in shining-pearl
  (95, 9500, 34, 'It squirms through the ground using its long and rugged body. It always eats while burrowing.'),
  -- drowzee in shining-pearl
  (96, 9600, 34, 'It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.'),
  -- hypno in shining-pearl
  (97, 9700, 34, 'Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.'),
  -- krabby in shining-pearl
  (98, 9800, 34, 'It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.'),
  -- kingler in shining-pearl
  (99, 9900, 34, 'The larger pincer has 10,000- horsepower strength. However, it is so heavy, it is difficult to aim.'),
  -- voltorb in shining-pearl
  (100, 10000, 34, 'It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch.'),
  -- electrode in shining-pearl
  (101, 10100, 34, 'It is known to drift on winds if it is bloated to bursting with stored electricity.'),
  -- exeggcute in shining-pearl
  (102, 10200, 34, 'Its six eggs converse using telepathy. They can quickly gather if they become separated.'),
  -- exeggutor in shining-pearl
  (103, 10300, 34, 'It is called “The Walking Jungle.” If a head grows too big, it falls off and becomes an EXEGGCUTE.'),
  -- cubone in shining-pearl
  (104, 10400, 34, 'When it thinks of its dead mother, it cries. Its crying makes the skull it wears rattle hollowly.'),
  -- marowak in shining-pearl
  (105, 10500, 34, 'From its birth, this savage Pokémon constantly holds bones. It is skilled in using them as weapons.'),
  -- hitmonlee in shining-pearl
  (106, 10600, 34, 'Its legs can stretch double. First-time foes are startled by its extensible reach.'),
  -- hitmonchan in shining-pearl
  (107, 10700, 34, 'The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting.'),
  -- lickitung in shining-pearl
  (108, 10800, 34, 'Instead of hands, it uses its tongue, which is twice its height. Its sticky saliva grips anything.'),
  -- koffing in shining-pearl
  (109, 10900, 34, 'Lighter-than-air gases in its body keep it aloft. The gases not only smell, they are also explosive.'),
  -- weezing in shining-pearl
  (110, 11000, 34, 'It grows by feeding on gases released by garbage. Though very rare, triplets have been found.'),
  -- rhyhorn in shining-pearl
  (111, 11100, 34, 'Its body is clad in a thick hide, and its tackles topple buildings. Unfortunately, it is not smart.'),
  -- rhydon in shining-pearl
  (112, 11200, 34, 'Its brain developed after it stood up on its hind legs. Its drill horn bores tunnels through solid rock.'),
  -- chansey in shining-pearl
  (113, 11300, 34, 'It lays several eggs a day and won’t share them with those who have evil in their hearts.'),
  -- tangela in shining-pearl
  (114, 11400, 34, 'It is shrouded by blue vines. No one has seen the face hidden behind this growth of vines.'),
  -- kangaskhan in shining-pearl
  (115, 11500, 34, 'It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.'),
  -- horsea in shining-pearl
  (116, 11600, 34, 'It makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.'),
  -- seadra in shining-pearl
  (117, 11700, 34, 'Its spines provide protection. Its fins and bones are prized as traditional medicine ingredients.'),
  -- goldeen in shining-pearl
  (118, 11800, 34, 'It swims at a steady 5 knots. If it senses danger, it will strike back with its sharp horn.'),
  -- seaking in shining-pearl
  (119, 11900, 34, 'To protect its family, it will fight with its drill-sharp horn. It lives in hollowed rocks in streams.'),
  -- staryu in shining-pearl
  (120, 12000, 34, 'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.'),
  -- starmie in shining-pearl
  (121, 12100, 34, 'At the center of its body is a red core, which sends mysterious radio signals into the night sky.'),
  -- mr-mime in shining-pearl
  (122, 12200, 34, 'Emanations from its fingertips solidify the air into invisible walls that repel even harsh attacks.'),
  -- scyther in shining-pearl
  (123, 12300, 34, 'It is nearly impossible to parry its attacking scythes. Its movements are like a ninja’s.'),
  -- jynx in shining-pearl
  (124, 12400, 34, 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.'),
  -- electabuzz in shining-pearl
  (125, 12500, 34, 'Half of all blackouts occur when this Pokémon appears at power plants and eats electricity.'),
  -- magmar in shining-pearl
  (126, 12600, 34, 'Born in the spout of a volcano, its body is covered by flames that shimmer like the sun.'),
  -- pinsir in shining-pearl
  (127, 12700, 34, 'It grips prey with its pincers until the prey is torn in half. What it can’t tear, it tosses far.'),
  -- tauros in shining-pearl
  (128, 12800, 34, 'Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.'),
  -- magikarp in shining-pearl
  (129, 12900, 34, 'It is unable to swim against even slow-moving currents. It always splashes about for some reason.'),
  -- gyarados in shining-pearl
  (130, 13000, 34, 'In ancient literature, there is a record of a GYARADOS that razed a village when violence flared.'),
  -- lapras in shining-pearl
  (131, 13100, 34, 'It loves crossing the sea with people and Pokémon on its back. It understands human speech.'),
  -- ditto in shining-pearl
  (132, 13200, 34, 'It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.'),
  -- eevee in shining-pearl
  (133, 13300, 34, 'A rare Pokémon that adapts to harsh environments by taking on different evolutionary forms.'),
  -- vaporeon in shining-pearl
  (134, 13400, 34, 'It has evolved to be suitable for an aquatic life. It can invisibly melt away into water.'),
  -- jolteon in shining-pearl
  (135, 13500, 34, 'It controls 10,000-volt power and can raise all the fur on its body as if it were sharp needles.'),
  -- flareon in shining-pearl
  (136, 13600, 34, 'It has a flame sac in its body. Its body temperature tops 1,650 degrees Fahrenheit before battle.'),
  -- porygon in shining-pearl
  (137, 13700, 34, 'The world’s first artificially created Pokémon. It can travel through electronic space.'),
  -- omanyte in shining-pearl
  (138, 13800, 34, 'A Pokémon that was resurrected from a fossil using modern science. It swam in ancient seas.'),
  -- omastar in shining-pearl
  (139, 13900, 34, 'It is thought that this Pokémon became extinct because its spiral shell grew too large.'),
  -- kabuto in shining-pearl
  (140, 14000, 34, 'It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.'),
  -- kabutops in shining-pearl
  (141, 14100, 34, 'It is thought that this Pokémon came onto land because its prey adapted to life on land.'),
  -- aerodactyl in shining-pearl
  (142, 14200, 34, 'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.'),
  -- snorlax in shining-pearl
  (143, 14300, 34, 'It stops eating only to sleep. It doesn’t feel full unless it eats nearly 900 pounds a day.'),
  -- articuno in shining-pearl
  (144, 14400, 34, 'A legendary bird Pokémon. It can create blizzards by freezing moisture in the air.'),
  -- zapdos in shining-pearl
  (145, 14500, 34, 'A legendary Pokémon that is said to live in thunderclouds. It freely controls lightning bolts.'),
  -- moltres in shining-pearl
  (146, 14600, 34, 'One of the legendary bird Pokémon. It is said that its appearance indicates the coming of spring.'),
  -- dratini in shining-pearl
  (147, 14700, 34, 'It is called the “Mirage Pokémon” because so few have seen it. Its shed skin has been found.'),
  -- dragonair in shining-pearl
  (148, 14800, 34, 'If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.'),
  -- dragonite in shining-pearl
  (149, 14900, 34, 'It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.'),
  -- mewtwo in shining-pearl
  (150, 15000, 34, 'A Pokémon created by recombining MEW’s genes. It’s said to have the most savage heart among Pokémon.'),
  -- mew in shining-pearl
  (151, 15100, 34, 'Because it can use all kinds of moves, many scientists believe MEW to be the ancestor of Pokémon.'),
  -- chikorita in shining-pearl
  (152, 15200, 34, 'It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.'),
  -- bayleef in shining-pearl
  (153, 15300, 34, 'The buds that ring its neck give off a spicy aroma that perks people up.'),
  -- meganium in shining-pearl
  (154, 15400, 34, 'Its breath has the fantastic ability to revive dead plants and flowers.'),
  -- cyndaquil in shining-pearl
  (155, 15500, 34, 'It has a timid nature. If it is startled, the flames on its back burn more vigorously.'),
  -- quilava in shining-pearl
  (156, 15600, 34, 'It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.'),
  -- typhlosion in shining-pearl
  (157, 15700, 34, 'It attacks using blasts of fire. It creates heat shimmers with intense fire to hide itself.'),
  -- totodile in shining-pearl
  (158, 15800, 34, 'It has the habit of biting anything with its developed jaws. Even its Trainer needs to be careful.'),
  -- croconaw in shining-pearl
  (159, 15900, 34, 'Once it bites down, it won’t let go until it loses its fangs. New fangs quickly grow into place.'),
  -- feraligatr in shining-pearl
  (160, 16000, 34, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- sentret in shining-pearl
  (161, 16100, 34, 'It has a very nervous nature. It stands up high on its tail so it can scan wide areas.'),
  -- furret in shining-pearl
  (162, 16200, 34, 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.'),
  -- hoothoot in shining-pearl
  (163, 16300, 34, 'It switches its standing foot so quickly, it can’t be seen. It cries at the same time every day.'),
  -- noctowl in shining-pearl
  (164, 16400, 34, 'If it flips its head upside down, it’s a sign that it is engaged in very complex thinking.'),
  -- ledyba in shining-pearl
  (165, 16500, 34, 'It is so timid, it can’t move if it isn’t with a swarm of others. It conveys its feelings with scent.'),
  -- ledian in shining-pearl
  (166, 16600, 34, 'It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.'),
  -- spinarak in shining-pearl
  (167, 16700, 34, 'It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.'),
  -- ariados in shining-pearl
  (168, 16800, 34, 'It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.'),
  -- crobat in shining-pearl
  (169, 16900, 34, 'A Pokémon that gained vastly enhanced flying performance by having its legs turn into wings.'),
  -- chinchou in shining-pearl
  (170, 17000, 34, 'It discharges positive and negative electricity from its antenna tips to shock its foes.'),
  -- lanturn in shining-pearl
  (171, 17100, 34, 'LANTURN’s light can shine up from great depths. It is nicknamed “The Deep-Sea Star.”'),
  -- pichu in shining-pearl
  (172, 17200, 34, 'It plays with others by touching tails and setting off sparks. This appears to be a test of courage.'),
  -- cleffa in shining-pearl
  (173, 17300, 34, 'Many appear when the night skies are filled with shooting stars. They disappear with sunrise.'),
  -- igglybuff in shining-pearl
  (174, 17400, 34, 'It has a soft and bouncy body. Once it starts bouncing, it becomes impossible to stop.'),
  -- togepi in shining-pearl
  (175, 17500, 34, 'Its shell is said to be stuffed with happiness that it shares with kindhearted people.'),
  -- togetic in shining-pearl
  (176, 17600, 34, 'It is said to appear in front of kindly people to scatter a glowing down called “joy dust.”'),
  -- natu in shining-pearl
  (177, 17700, 34, 'It picks food from cactus plants, deftly avoiding buds and spines. It seems to skip about to move.'),
  -- xatu in shining-pearl
  (178, 17800, 34, 'This odd Pokémon can see both the past and the future. It eyes the sun’s movement all day.'),
  -- mareep in shining-pearl
  (179, 17900, 34, 'Its fluffy coat swells to double when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in shining-pearl
  (180, 18000, 34, 'If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact.'),
  -- ampharos in shining-pearl
  (181, 18100, 34, 'The tip of its tail shines brightly. In the olden days, people sent signals using the tail’s light.'),
  -- bellossom in shining-pearl
  (182, 18200, 34, 'When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.'),
  -- marill in shining-pearl
  (183, 18300, 34, 'The tip of its tail is filled with oil that is lighter than water, so it acts as a float.'),
  -- azumarill in shining-pearl
  (184, 18400, 34, 'Its long ears are superb sensors. It can distinguish the movements of living things on riverbeds.'),
  -- sudowoodo in shining-pearl
  (185, 18500, 34, 'It stands along paths pretending to be a tree. If it starts raining, it seems to disappear.'),
  -- politoed in shining-pearl
  (186, 18600, 34, 'It gathers groups of others as their leader. Its cries make POLIWAG obey.'),
  -- hoppip in shining-pearl
  (187, 18700, 34, 'It drifts on winds. It is said that when HOPPIP gather in fields and mountains, spring is on the way.'),
  -- skiploom in shining-pearl
  (188, 18800, 34, 'It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.'),
  -- jumpluff in shining-pearl
  (189, 18900, 34, 'Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.'),
  -- aipom in shining-pearl
  (190, 19000, 34, 'It lives atop giant trees. It wraps its tail around a branch so it won’t fall off while asleep.'),
  -- sunkern in shining-pearl
  (191, 19100, 34, 'It suddenly falls out of the sky in the morning. A year after a cold summer, their population explodes.'),
  -- sunflora in shining-pearl
  (192, 19200, 34, 'It gets energy from warm sunlight and is known for its habit of moving in pursuit of it.'),
  -- yanma in shining-pearl
  (193, 19300, 34, 'Its eyes can see 360 degrees without moving its head. It won’t miss prey--even those behind it.'),
  -- wooper in shining-pearl
  (194, 19400, 34, 'When the temperature cools in the evening, they emerge from water to seek food along the shore.'),
  -- quagsire in shining-pearl
  (195, 19500, 34, 'A dim-witted Pokémon. It doesn’t care if it bumps its head into boats or rocks while swimming.'),
  -- espeon in shining-pearl
  (196, 19600, 34, 'Its fur has the look and feel of velvet. The orb on its forehead glows when it uses psycho-power.'),
  -- umbreon in shining-pearl
  (197, 19700, 34, 'The light of the moon changed EEVEE’s genetic structure. It lurks in darkness for prey.'),
  -- murkrow in shining-pearl
  (198, 19800, 34, 'It appears near travelers to lure them into deep forests. It is said to carry misfortune.'),
  -- slowking in shining-pearl
  (199, 19900, 34, 'Being bitten by SHELLDER gave it intelligence comparable to that of award-winning scientists.'),
  -- misdreavus in shining-pearl
  (200, 20000, 34, 'It gets nourishment from fear that it absorbs into its red orbs. In daytime, it sleeps in darkness.'),
  -- unown in shining-pearl
  (201, 20100, 34, 'They seem to communicate among each other telepathically. They are always found stuck on walls.'),
  -- wobbuffet in shining-pearl
  (202, 20200, 34, 'It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret.'),
  -- girafarig in shining-pearl
  (203, 20300, 34, 'While it sleeps, the head on its tail keeps watch. The tail doesn’t need to sleep.'),
  -- pineco in shining-pearl
  (204, 20400, 34, 'It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.'),
  -- forretress in shining-pearl
  (205, 20500, 34, 'It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.'),
  -- dunsparce in shining-pearl
  (206, 20600, 34, 'It digs into the ground with its tail and makes a mazelike nest. It can fly just a little.'),
  -- gligar in shining-pearl
  (207, 20700, 34, 'It sails on the winds with its limbs extended to strike from the sky. It aims for the prey’s face.'),
  -- steelix in shining-pearl
  (208, 20800, 34, 'It chews its way through boulders with its sturdy jaws. Its eyes can see in the darkness underground.'),
  -- snubbull in shining-pearl
  (209, 20900, 34, 'Small Pokémon flee from its scary face. It is, however, considered by women to be cute.'),
  -- granbull in shining-pearl
  (210, 21000, 34, 'It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.'),
  -- qwilfish in shining-pearl
  (211, 21100, 34, 'It shoots the poison spines on its body in all directions. Its round form makes it a poor swimmer.'),
  -- scizor in shining-pearl
  (212, 21200, 34, 'It has a steel-hard body. It intimidates foes by upraising its eye-patterned pincers.'),
  -- shuckle in shining-pearl
  (213, 21300, 34, 'It stores berries in its shell. The berries eventually ferment to become delicious juices.'),
  -- heracross in shining-pearl
  (214, 21400, 34, 'With powerful legs and claws, it generates enough power to hurl foes over great distances.'),
  -- sneasel in shining-pearl
  (215, 21500, 34, 'It is extremely vicious and will not stop attacking until its foe is incapable of moving.'),
  -- teddiursa in shining-pearl
  (216, 21600, 34, 'It lets honey soak into its paws so it can lick them all the time. Every set of paws tastes unique.'),
  -- ursaring in shining-pearl
  (217, 21700, 34, 'In its territory, it leaves scratches on trees that bear delicious berries or fruits.'),
  -- slugma in shining-pearl
  (218, 21800, 34, 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.'),
  -- magcargo in shining-pearl
  (219, 21900, 34, 'Its body temperature is roughly 18,000 degrees F. Flames spout from gaps in its hardened shell.'),
  -- swinub in shining-pearl
  (220, 22000, 34, 'It loves eating mushrooms that grow under dead grass. It also finds hot springs while foraging.'),
  -- piloswine in shining-pearl
  (221, 22100, 34, 'Its shaggy coat makes it unable to see. It checks surroundings with its sensitive nose instead.'),
  -- corsola in shining-pearl
  (222, 22200, 34, 'Many live in the clean seas of the south. They apparently can’t live in polluted waters.'),
  -- remoraid in shining-pearl
  (223, 22300, 34, 'It clings to MANTINE to feed on the big Pokémon’s scraps. This is an adaptation to avoid foes.'),
  -- octillery in shining-pearl
  (224, 22400, 34, 'It obscures its foe’s vision by spitting a cloud of murky ink. It makes its nest among boulders.'),
  -- delibird in shining-pearl
  (225, 22500, 34, 'It carries food rolled up in its tail. It has the habit of sharing food with people lost in mountains.'),
  -- mantine in shining-pearl
  (226, 22600, 34, 'It swims elegantly, mindless of REMORAID hitching on to its broad fins. It has a docile nature.'),
  -- skarmory in shining-pearl
  (227, 22700, 34, 'Despite being clad entirely in iron-hard armor, it flies at speeds over 180 mph.'),
  -- houndour in shining-pearl
  (228, 22800, 34, 'It conveys its feelings using different cries. It works in a pack to cleverly take down prey.'),
  -- houndoom in shining-pearl
  (229, 22900, 34, 'Long ago, people imagined its eerie howls to be the call of the grim reaper.'),
  -- kingdra in shining-pearl
  (230, 23000, 34, 'It lives in caves on the seafloor and creates giant whirlpools every time it moves.'),
  -- phanpy in shining-pearl
  (231, 23100, 34, 'It is strong despite its compact size. It can easily pick up and carry an adult human on its back.'),
  -- donphan in shining-pearl
  (232, 23200, 34, 'It attacks by curling up, then rolling into its foe. It can blow apart a house in one hit.'),
  -- porygon2 in shining-pearl
  (233, 23300, 34, 'With planetary development software installed, it became capable of working in space.'),
  -- stantler in shining-pearl
  (234, 23400, 34, 'Staring at its antlers creates an odd sensation as if one were being drawn into their centers.'),
  -- smeargle in shining-pearl
  (235, 23500, 34, 'It marks its territory by using its tail like a paintbrush. There are more than 5,000 different marks.'),
  -- tyrogue in shining-pearl
  (236, 23600, 34, 'It is famous for its eagerness to fight and always nurses injuries from challenging larger foes.'),
  -- hitmontop in shining-pearl
  (237, 23700, 34, 'It fights while spinning like a top. The centrifugal force boosts its destructive power by ten.'),
  -- smoochum in shining-pearl
  (238, 23800, 34, 'It tests everything by touching with its lips, which remember what it likes and dislikes.'),
  -- elekid in shining-pearl
  (239, 23900, 34, 'It generates electricity by whirling its arms. However, it can’t store the energy it makes.'),
  -- magby in shining-pearl
  (240, 24000, 34, 'Its body temperature is around 1,100 degrees F. It is healthy if it is breathing yellow flames.'),
  -- miltank in shining-pearl
  (241, 24100, 34, 'It is said that kids who drink MILTANK’s milk grow up to become hearty, healthy adults.'),
  -- blissey in shining-pearl
  (242, 24200, 34, 'It is a Pokémon that delivers happiness. Eating its egg is said to make one kind to everyone.'),
  -- raikou in shining-pearl
  (243, 24300, 34, 'It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.'),
  -- entei in shining-pearl
  (244, 24400, 34, 'It is said that when it roars, a volcano erupts somewhere around the globe.'),
  -- suicune in shining-pearl
  (245, 24500, 34, 'It races around the world to purify fouled water. It dashes away with the north wind.'),
  -- larvitar in shining-pearl
  (246, 24600, 34, 'A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.'),
  -- pupitar in shining-pearl
  (247, 24700, 34, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in shining-pearl
  (248, 24800, 34, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- lugia in shining-pearl
  (249, 24900, 34, 'It sleeps in a deep-sea trench. If it flaps its wings, it is said to cause a 40-day storm.'),
  -- ho-oh in shining-pearl
  (250, 25000, 34, 'Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.'),
  -- celebi in shining-pearl
  (251, 25100, 34, 'It has the power to travel across time, but it is said to appear only in peaceful times.'),
  -- treecko in shining-pearl
  (252, 25200, 34, 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.'),
  -- grovyle in shining-pearl
  (253, 25300, 34, 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.'),
  -- sceptile in shining-pearl
  (254, 25400, 34, 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.'),
  -- torchic in shining-pearl
  (255, 25500, 34, 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.'),
  -- combusken in shining-pearl
  (256, 25600, 34, 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in shining-pearl
  (257, 25700, 34, 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.'),
  -- mudkip in shining-pearl
  (258, 25800, 34, 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.'),
  -- marshtomp in shining-pearl
  (259, 25900, 34, 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.'),
  -- swampert in shining-pearl
  (260, 26000, 34, 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.'),
  -- poochyena in shining-pearl
  (261, 26100, 34, 'A Pokémon with a persistent nature, it chases its chosen prey until the prey becomes exhausted.'),
  -- mightyena in shining-pearl
  (262, 26200, 34, 'It chases down prey in a pack. It will never disobey the commands of a skilled Trainer.'),
  -- zigzagoon in shining-pearl
  (263, 26300, 34, 'It walks in zigzag fashion. It is good at finding items in the grass and even in the ground.'),
  -- linoone in shining-pearl
  (264, 26400, 34, 'It charges prey at speeds over 60 mph. However, because it can only run straight, it often fails.'),
  -- wurmple in shining-pearl
  (265, 26500, 34, 'It spits a white silk that turns sticky when it contacts air. It is used to immobilize foes.'),
  -- silcoon in shining-pearl
  (266, 26600, 34, 'It drinks dew that collects on its silk and waits for evolution. Its hard cocoon repels attacks.'),
  -- beautifly in shining-pearl
  (267, 26700, 34, 'When flower fields bloom, it flits around, collecting pollen. Despite its appearance, it is savage.'),
  -- cascoon in shining-pearl
  (268, 26800, 34, 'Encased within its tough cocoon, it endures attacks. It never forgets the appearance of its foes.'),
  -- dustox in shining-pearl
  (269, 26900, 34, 'It violently flutters its wings to scatter toxic dust when attacked. It becomes active after sunset.'),
  -- lotad in shining-pearl
  (270, 27000, 34, 'It looks like an aquatic plant and serves as a ferry to Pokémon that can’t swim.'),
  -- lombre in shining-pearl
  (271, 27100, 34, 'It has a mischievous spirit. If it spots an angler, it will tug on the fishing line to interfere.'),
  -- ludicolo in shining-pearl
  (272, 27200, 34, 'If it hears festive music, all its muscles fill with energy. It can’t help breaking out into a dance.'),
  -- seedot in shining-pearl
  (273, 27300, 34, 'When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.'),
  -- nuzleaf in shining-pearl
  (274, 27400, 34, 'The sound of its grass flute makes its listeners uneasy. It lives deep in forests.'),
  -- shiftry in shining-pearl
  (275, 27500, 34, 'By flapping its leafy fan, it can whip up gusts of 100 ft/second that can level houses.'),
  -- taillow in shining-pearl
  (276, 27600, 34, 'It has a gutsy spirit that makes it bravely take on tough foes. It flies in search of warm climates.'),
  -- swellow in shining-pearl
  (277, 27700, 34, 'It circles the sky in search of prey. When it spots one, it dives steeply to catch the prey.'),
  -- wingull in shining-pearl
  (278, 27800, 34, 'Catching sea winds with its long wings, it soars as if it were a glider. It folds its wings to rest.'),
  -- pelipper in shining-pearl
  (279, 27900, 34, 'It acts as a delivery service by carrying small Pokémon in its bill. It bobs on the waves to rest.'),
  -- ralts in shining-pearl
  (280, 28000, 34, 'It uses the horns on its head to sense human emotions. It is said to appear in front of cheerful people.'),
  -- kirlia in shining-pearl
  (281, 28100, 34, 'It is highly perceptive of its Trainer’s feelings. It dances when it is feeling happy.'),
  -- gardevoir in shining-pearl
  (282, 28200, 34, 'It will try to guard its trusted Trainer with its life. It has the ability to see the future.'),
  -- surskit in shining-pearl
  (283, 28300, 34, 'It appears as if it is skating on water. It draws prey with a sweet scent from the tip of its head.'),
  -- masquerain in shining-pearl
  (284, 28400, 34, 'Its antennae have eye patterns on them. Its four wings enable it to hover and fly in any direction.'),
  -- shroomish in shining-pearl
  (285, 28500, 34, 'It spouts poison spores from the top of its head. These spores cause pain all over if inhaled.'),
  -- breloom in shining-pearl
  (286, 28600, 34, 'Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.'),
  -- slakoth in shining-pearl
  (287, 28700, 34, 'It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.'),
  -- vigoroth in shining-pearl
  (288, 28800, 34, 'Its heart beats at a tenfold tempo, so it cannot sit still for even a moment.'),
  -- slaking in shining-pearl
  (289, 28900, 34, 'The world’s laziest Pokémon. When it is lounging, it is actually saving energy for striking back.'),
  -- nincada in shining-pearl
  (290, 29000, 34, 'It grows underground, sensing its surroundings using antennae instead of its virtually blind eyes.'),
  -- ninjask in shining-pearl
  (291, 29100, 34, 'Because it moves so quickly, it sometimes becomes unseeable. It congregates around tree sap.'),
  -- shedinja in shining-pearl
  (292, 29200, 34, 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.'),
  -- whismur in shining-pearl
  (293, 29300, 34, 'Usually, its cries are like quiet murmurs. If frightened, it shrieks at the same volume as a jet plane.'),
  -- loudred in shining-pearl
  (294, 29400, 34, 'The shock waves from its cries can tip over trucks. It stamps its feet to power up.'),
  -- exploud in shining-pearl
  (295, 29500, 34, 'Its howls can be heard over six miles away. It emits all sorts of noises from the ports on its body.'),
  -- makuhita in shining-pearl
  (296, 29600, 34, 'It toughens its body by slamming into thick trees. Many snapped trees can be found near its nest.'),
  -- hariyama in shining-pearl
  (297, 29700, 34, 'It loves to match power with big-bodied Pokémon. It can knock a truck flying with its arm thrusts.'),
  -- azurill in shining-pearl
  (298, 29800, 34, 'Its tail is filled with nutrients necessary for growth. It plays by bouncing on its tail.'),
  -- nosepass in shining-pearl
  (299, 29900, 34, 'Its nose is a magnet. As a result, this Pokémon always keeps its face pointing north.'),
  -- skitty in shining-pearl
  (300, 30000, 34, 'It can’t stop itself from chasing moving things, and it runs in a circle, chasing its own tail.'),
  -- delcatty in shining-pearl
  (301, 30100, 34, 'It is highly popular among female Trainers for its sublime fur. It does not keep a nest.'),
  -- sableye in shining-pearl
  (302, 30200, 34, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mawile in shining-pearl
  (303, 30300, 34, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- aron in shining-pearl
  (304, 30400, 34, 'It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks and cars.'),
  -- lairon in shining-pearl
  (305, 30500, 34, 'For food, it digs up iron ore. It smashes its steely body against others to fight over territory.'),
  -- aggron in shining-pearl
  (306, 30600, 34, 'While seeking iron for food, it digs tunnels by breaking through bedrock with its steel horns.'),
  -- meditite in shining-pearl
  (307, 30700, 34, 'It never misses its daily yoga workouts, and it heightens its spiritual power through meditation.'),
  -- medicham in shining-pearl
  (308, 30800, 34, 'Through daily meditation, it hones its spiritual power. It can sense what others are thinking.'),
  -- electrike in shining-pearl
  (309, 30900, 34, 'Using electricity stored in its fur, it stimulates its muscles to heighten its reaction speed.'),
  -- manectric in shining-pearl
  (310, 31000, 34, 'It discharges electricity from its mane. It creates a thundercloud overhead to drop lightning bolts.'),
  -- plusle in shining-pearl
  (311, 31100, 34, 'It cheers on friends with pom-poms made of sparks. It drains power from telephone poles.'),
  -- minun in shining-pearl
  (312, 31200, 34, 'It cheers on friends. If its friends are losing, its body lets off more and more sparks.'),
  -- volbeat in shining-pearl
  (313, 31300, 34, 'It communicates with others by lighting up its rear at night. It loves ILLUMISE’s sweet aroma.'),
  -- illumise in shining-pearl
  (314, 31400, 34, 'With its sweet aroma, it guides VOLBEAT to draw signs with light in the night sky.'),
  -- roselia in shining-pearl
  (315, 31500, 34, 'The beautiful flowers on its arms have toxic thorns. Don’t even think about picking those flowers.'),
  -- gulpin in shining-pearl
  (316, 31600, 34, 'Almost all its body is its stomach. Its harsh digestive juices quickly dissolve anything it swallows.'),
  -- swalot in shining-pearl
  (317, 31700, 34, 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.'),
  -- carvanha in shining-pearl
  (318, 31800, 34, 'They swarm any foe that invades their territory. Their sharp fangs can tear out boat hulls.'),
  -- sharpedo in shining-pearl
  (319, 31900, 34, 'Its fangs rip through sheet iron. It swims at 75 mph and is known as “The Bully of the Sea.”'),
  -- wailmer in shining-pearl
  (320, 32000, 34, 'On sunny days, it lands on beaches to bounce like a ball and play. It spouts water from its nose.'),
  -- wailord in shining-pearl
  (321, 32100, 34, 'The biggest of all Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.'),
  -- numel in shining-pearl
  (322, 32200, 34, 'Its humped back stores intensely hot magma. In rain, the magma cools, slowing its movement.'),
  -- camerupt in shining-pearl
  (323, 32300, 34, 'It has volcanoes on its back. If magma builds up in its body, it shudders, then erupts violently.'),
  -- torkoal in shining-pearl
  (324, 32400, 34, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in shining-pearl
  (325, 32500, 34, 'It bounces constantly, using its tail like a spring. The shock of bouncing keeps its heart beating.'),
  -- grumpig in shining-pearl
  (326, 32600, 34, 'It uses black pearls to amplify its psycho-power. It does an odd dance to gain control over foes.'),
  -- spinda in shining-pearl
  (327, 32700, 34, 'No two SPINDA have the same pattern of spots. Its tottering step fouls the aim of foes.'),
  -- trapinch in shining-pearl
  (328, 32800, 34, 'It makes a conical pit in desert sand and lies in wait at the bottom for prey to come tumbling down.'),
  -- vibrava in shining-pearl
  (329, 32900, 34, 'It violently shudders its wings, generating ultrasonic waves to induce headaches in people.'),
  -- flygon in shining-pearl
  (330, 33000, 34, 'It whips up sandstorms with powerful flaps of its wings. It is known as “The Desert Spirit.”'),
  -- cacnea in shining-pearl
  (331, 33100, 34, 'By storing water in its body, this desert dweller can survive for 30 days without water.'),
  -- cacturne in shining-pearl
  (332, 33200, 34, 'It becomes active at night, seeking prey that is exhausted from the day’s desert heat.'),
  -- swablu in shining-pearl
  (333, 33300, 34, 'Its wings are like cotton tufts. If it perches on someone’s head, it looks like a cotton hat.'),
  -- altaria in shining-pearl
  (334, 33400, 34, 'It looks like a fluffy cloud when it is in flight. It hums with its soprano voice.'),
  -- zangoose in shining-pearl
  (335, 33500, 34, 'It has feuded with SEVIPER for many generations. Its sharp claws are its biggest weapons.'),
  -- seviper in shining-pearl
  (336, 33600, 34, 'For many generations, it has feuded with ZANGOOSE. It whets its bladed tail on rocks for battle.'),
  -- lunatone in shining-pearl
  (337, 33700, 34, 'Because it turns active on nights of the full moon, it is said to have some link to the lunar phases.'),
  -- solrock in shining-pearl
  (338, 33800, 34, 'A new Pokémon species, rumored to be from the sun. It gives off light while spinning.'),
  -- barboach in shining-pearl
  (339, 33900, 34, 'Its whiskers make a superb radar. They are used to locate prey, even in the murkiest of water.'),
  -- whiscash in shining-pearl
  (340, 34000, 34, 'As a result of causing tremors by thrashing about, it developed the ability to foretell real quakes.'),
  -- corphish in shining-pearl
  (341, 34100, 34, 'Its hardy vitality enables it to adapt to any environment. Its pincers will never release prey.'),
  -- crawdaunt in shining-pearl
  (342, 34200, 34, 'It is a ruffian that uses its pincers to pick up and toss out other Pokémon from its pond.'),
  -- baltoy in shining-pearl
  (343, 34300, 34, 'It moves by spinning on its foot. It is a rare Pokémon that was discovered in ancient ruins.'),
  -- claydol in shining-pearl
  (344, 34400, 34, 'An ancient clay figurine that came to life as a Pokémon from exposure to a mysterious ray of light.'),
  -- lileep in shining-pearl
  (345, 34500, 34, 'It lived on the seafloor 100 million years ago and was reanimated scientifically.'),
  -- cradily in shining-pearl
  (346, 34600, 34, 'It lives in the shallows of warm seas. When the tide goes out, it digs up prey from beaches.'),
  -- anorith in shining-pearl
  (347, 34700, 34, 'A Pokémon ancestor that was reanimated from a fossil. It lived in the sea and hunted with claws.'),
  -- armaldo in shining-pearl
  (348, 34800, 34, 'It went ashore after evolving. Its entire body is clad in a sturdy armor.'),
  -- feebas in shining-pearl
  (349, 34900, 34, 'It eats anything, so it can even live in polluted streams and lakes. No one pays any attention to it.'),
  -- milotic in shining-pearl
  (350, 35000, 34, 'It is the world’s most beautiful Pokémon. There are many works of art featuring MILOTIC.'),
  -- castform in shining-pearl
  (351, 35100, 34, 'Its appearance changes with the weather. Recently, its molecules were found to be just like water.'),
  -- kecleon in shining-pearl
  (352, 35200, 34, 'It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.'),
  -- shuppet in shining-pearl
  (353, 35300, 34, 'It loves vengeful emotions and hangs in rows under the eaves of houses where vengeful people live.'),
  -- banette in shining-pearl
  (354, 35400, 34, 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.'),
  -- duskull in shining-pearl
  (355, 35500, 34, 'It doggedly pursues its prey wherever it goes. However, the chase is abandoned at sunrise.'),
  -- dusclops in shining-pearl
  (356, 35600, 34, 'Its body is hollow. It is said that those who look into its body are sucked into the void.'),
  -- tropius in shining-pearl
  (357, 35700, 34, 'Because it continually ate only its favorite fruit, the fruit started growing around its neck.'),
  -- chimecho in shining-pearl
  (358, 35800, 34, 'Emitting ultrasonic cries, it floats on winds to travel great distances.'),
  -- absol in shining-pearl
  (359, 35900, 34, 'It senses coming disasters and appears before people only to warn them of impending danger.'),
  -- wynaut in shining-pearl
  (360, 36000, 34, 'It grows strong by pushing up against others en masse. It loves eating sweet fruit.'),
  -- snorunt in shining-pearl
  (361, 36100, 34, 'In the snow country, certain folklore says a house will prosper if a SNORUNT lives there.'),
  -- glalie in shining-pearl
  (362, 36200, 34, 'To protect itself, it clads its body in an armor of ice, made by freezing moisture in the air.'),
  -- spheal in shining-pearl
  (363, 36300, 34, 'It rolls across ice floes to reach shore because its body is poorly shaped for swimming.'),
  -- sealeo in shining-pearl
  (364, 36400, 34, 'It habitually spins things on its nose. By doing so, it learns textures and odors.'),
  -- walrein in shining-pearl
  (365, 36500, 34, 'It shatters ice with its big tusks. Its thick blubber repels not only the cold, but also enemy attacks.'),
  -- clamperl in shining-pearl
  (366, 36600, 34, 'It makes a single pearl during its lifetime. The pearl is said to amplify psychic power.'),
  -- huntail in shining-pearl
  (367, 36700, 34, 'It lives deep in the sea. With a tail shaped like a small fish, it attracts unsuspecting prey.'),
  -- gorebyss in shining-pearl
  (368, 36800, 34, 'It lives at the bottom of the sea. In the springtime, its pink body turns more vivid for some reason.'),
  -- relicanth in shining-pearl
  (369, 36900, 34, 'A rare Pokémon discovered during a deep-sea exploration. It has not changed in over 100 million years.'),
  -- luvdisc in shining-pearl
  (370, 37000, 34, 'It lives in warm seas. It is said that a couple finding this Pokémon will be blessed with eternal love.'),
  -- bagon in shining-pearl
  (371, 37100, 34, 'Dreaming of one day flying, it practices by leaping off cliffs every day.'),
  -- shelgon in shining-pearl
  (372, 37200, 34, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant it evolves.'),
  -- salamence in shining-pearl
  (373, 37300, 34, 'As a result of its long-held dream of flying, its cellular structure changed, and wings grew out.'),
  -- beldum in shining-pearl
  (374, 37400, 34, 'It converses with others by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in shining-pearl
  (375, 37500, 34, 'It is formed by two BELDUM joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in shining-pearl
  (376, 37600, 34, 'METANG combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- regirock in shining-pearl
  (377, 37700, 34, 'Its entire body is made of rock. If any part chips off in battle, it attaches rocks to repair itself.'),
  -- regice in shining-pearl
  (378, 37800, 34, 'Its body is made of ice from the ice age. It controls frigid air of -328 degrees Fahrenheit.'),
  -- registeel in shining-pearl
  (379, 37900, 34, 'Tempered by pressure underground over tens of thousands of years, its body cannot be scratched.'),
  -- latias in shining-pearl
  (380, 38000, 34, 'Its body is covered with a down that can refract light in such a way that it becomes invisible.'),
  -- latios in shining-pearl
  (381, 38100, 34, 'A highly intelligent Pokémon. By folding back its wings in flight, it can overtake jet planes.'),
  -- kyogre in shining-pearl
  (382, 38200, 34, 'It is said to have widened the seas by causing downpours. It had been asleep in a marine trench.'),
  -- groudon in shining-pearl
  (383, 38300, 34, 'It had been asleep in underground magma ever since it fiercely fought KYOGRE long ago.'),
  -- rayquaza in shining-pearl
  (384, 38400, 34, 'It lives in the ozone layer far above the clouds and cannot be seen from the ground.'),
  -- jirachi in shining-pearl
  (385, 38500, 34, 'It is said to have the ability to grant any wish for just one week every thousand years.'),
  -- deoxys in shining-pearl
  (386, 38600, 34, 'An alien virus that fell to earth on a meteor underwent a DNA mutation to become this Pokémon.'),
  -- turtwig in shining-pearl
  (387, 38700, 34, 'It undertakes photosynthesis with its body, making oxygen. The leaf on its head wilts if it is thirsty.'),
  -- grotle in shining-pearl
  (388, 38800, 34, 'The shell is hardened soil. Some Pokémon come to peck the berries growing on the trees on its back.'),
  -- torterra in shining-pearl
  (389, 38900, 34, 'Groups of this Pokémon migrating in search of water have been mistaken for “moving forests.”'),
  -- chimchar in shining-pearl
  (390, 39000, 34, 'Its fiery rear end is fueled by gas made in its belly. Even rain can’t extinguish the fire.'),
  -- monferno in shining-pearl
  (391, 39100, 34, 'It uses ceilings and walls to launch aerial attacks. Its fiery tail is but one weapon.'),
  -- infernape in shining-pearl
  (392, 39200, 34, 'Its crown of fire is indicative of its fiery nature. It is beaten by none in terms of quickness.'),
  -- piplup in shining-pearl
  (393, 39300, 34, 'It lives along shores in northern countries. A skilled swimmer, it dives for over 10 minutes to hunt.'),
  -- prinplup in shining-pearl
  (394, 39400, 34, 'Its wings deliver wicked blows that snap even the thickest of trees. It searches for prey in icy seas.'),
  -- empoleon in shining-pearl
  (395, 39500, 34, 'It swims as fast as a jet boat. The edges of its wings are sharp and can slice apart drifting ice.'),
  -- starly in shining-pearl
  (396, 39600, 34, 'Usually with a large flock, it is barely noticeable when alone. Its cries are very strident.'),
  -- staravia in shining-pearl
  (397, 39700, 34, 'It lives in forests and fields. Squabbles over territory occur when flocks collide.'),
  -- staraptor in shining-pearl
  (398, 39800, 34, 'The muscles in its wings and legs are strong. It can easily fly while gripping a small Pokémon.'),
  -- bidoof in shining-pearl
  (399, 39900, 34, 'It constantly gnaws on logs and rocks to whittle down its front teeth. It nests alongside water.'),
  -- bibarel in shining-pearl
  (400, 40000, 34, 'While its movements out of water are sluggish, it can swim as fast as any FEEBAS.'),
  -- kricketot in shining-pearl
  (401, 40100, 34, 'It chats with others using the sounds of its colliding antennae. These sounds are fall hallmarks.'),
  -- kricketune in shining-pearl
  (402, 40200, 34, 'It signals its emotions with its melodies. Scientists are studying these melodic patterns.'),
  -- shinx in shining-pearl
  (403, 40300, 34, 'Its forelegs have a muscle-based system of generating electricity. Its body shines if endangered.'),
  -- luxio in shining-pearl
  (404, 40400, 34, 'It rests its forelegs on others to communicate with rhythmic electric pulses from its claws.'),
  -- luxray in shining-pearl
  (405, 40500, 34, 'When its eyes gleam gold, it can spot hiding prey--even those taking shelter behind a wall.'),
  -- budew in shining-pearl
  (406, 40600, 34, 'It lives alongside clear ponds. It scatters pollen that induces harsh sneezing and runny noses.'),
  -- roserade in shining-pearl
  (407, 40700, 34, 'With the movements of a dancer, it strikes with whips that are densely lined with poison thorns.'),
  -- cranidos in shining-pearl
  (408, 40800, 34, 'It was resurrected from an iron ball-like fossil. It downs prey with its head butts.'),
  -- rampardos in shining-pearl
  (409, 40900, 34, 'Its skull is as hard as iron. It is a brute that tears down jungle trees while catching prey.'),
  -- shieldon in shining-pearl
  (410, 41000, 34, 'It habitually polishes its face by rubbing it against tree trunks. It is weak to attacks from behind.'),
  -- bastiodon in shining-pearl
  (411, 41100, 34, 'When attacked, they form a wall with their shieldlike faces to protect their young.'),
  -- burmy in shining-pearl
  (412, 41200, 34, 'If its cloak is broken in battle, it quickly remakes the cloak with materials nearby.'),
  -- wormadam in shining-pearl
  (413, 41300, 34, 'Its appearance changes depending on where it evolved. The materials on hand become a part of its body.'),
  -- mothim in shining-pearl
  (414, 41400, 34, 'It does not keep a nest. It flies over fields and mountains in constant search of floral honey.'),
  -- combee in shining-pearl
  (415, 41500, 34, 'It collects and delivers honey to its colony. At night, they cluster to form a beehive and sleep.'),
  -- vespiquen in shining-pearl
  (416, 41600, 34, 'When endangered, grubs from its six-cell honeycomb strike back. There is only one in a colony.'),
  -- pachirisu in shining-pearl
  (417, 41700, 34, 'It makes electricity with pouches in its cheeks and shoots charges from its tail. It lives atop trees.'),
  -- buizel in shining-pearl
  (418, 41800, 34, 'It swims by rotating its two tails like a screw. When it dives, its flotation sac collapses.'),
  -- floatzel in shining-pearl
  (419, 41900, 34, 'Its flotation sac developed as a result of pursuing aquatic prey. It can double as a rubber raft.'),
  -- cherubi in shining-pearl
  (420, 42000, 34, 'Sunlight colors it red. When the small ball is drained of nutrients, it shrivels to herald evolution.'),
  -- cherrim in shining-pearl
  (421, 42100, 34, 'It is docile as a bud, but turns cheerful when it blooms. It folds back into a bud if sunlight wanes.'),
  -- shellos in shining-pearl
  (422, 42200, 34, 'It lives along bodies of water. Its body shape has changed to suit its habitat.'),
  -- gastrodon in shining-pearl
  (423, 42300, 34, 'It apparently had a huge shell for protection in ancient times. It lives in shallow tidal pools.'),
  -- ambipom in shining-pearl
  (424, 42400, 34, 'They work in large colonies and make rings by linking their tails, apparently in friendship.'),
  -- drifloon in shining-pearl
  (425, 42500, 34, 'It tugs on the hands of children to steal them away. However, it gets pulled around instead.'),
  -- drifblim in shining-pearl
  (426, 42600, 34, 'It carries people and Pokémon when it flies. But since it only drifts, it can end up anywhere.'),
  -- buneary in shining-pearl
  (427, 42700, 34, 'When it senses danger, it perks up its ears. On cold nights, it sleeps with its head tucked into its fur.'),
  -- lopunny in shining-pearl
  (428, 42800, 34, 'It is very conscious of its looks and never fails to groom its ears. It runs with sprightly jumps.'),
  -- mismagius in shining-pearl
  (429, 42900, 34, 'It chants incantations. While they usually torment targets, some chants bring happiness.'),
  -- honchkrow in shining-pearl
  (430, 43000, 34, 'It makes its MURKROW cronies bring it food. It idles its time away, grooming itself in its nest.'),
  -- glameow in shining-pearl
  (431, 43100, 34, 'With its sharp glare, it puts foes in a mild hypnotic state. It is a very fickle Pokémon.'),
  -- purugly in shining-pearl
  (432, 43200, 34, 'To make itself appear intimidatingly beefy, it tightly cinches its waist with its twin tails.'),
  -- chingling in shining-pearl
  (433, 43300, 34, 'Each time it hops, it makes a ringing sound. It deafens foes by emitting high-frequency cries.'),
  -- stunky in shining-pearl
  (434, 43400, 34, 'It sprays a nose-curling, stinky fluid from its rear to repel attackers.'),
  -- skuntank in shining-pearl
  (435, 43500, 34, 'It sprays a stinky fluid from its tail. The fluid smells worse the longer it is allowed to fester.'),
  -- bronzor in shining-pearl
  (436, 43600, 34, 'X-ray photos were taken to check its body structure. Nothing appeared, however.'),
  -- bronzong in shining-pearl
  (437, 43700, 34, 'It can summon rain clouds. People long ago revered it as the bringer of plentiful harvests.'),
  -- bonsly in shining-pearl
  (438, 43800, 34, 'It prefers arid environments. It leaks water from its eyes to adjust its body’s fluid levels.'),
  -- mime-jr in shining-pearl
  (439, 43900, 34, 'It likes places where people gather. It mimics foes to confuse them, then makes its getaway.'),
  -- happiny in shining-pearl
  (440, 44000, 34, 'It carries a round, egg-shaped rock in its belly pouch and gives the rock to its friends.'),
  -- chatot in shining-pearl
  (441, 44100, 34, 'It keeps rhythm by flicking its tail feathers like a metronome. It imitates human speech.'),
  -- spiritomb in shining-pearl
  (442, 44200, 34, 'It was bound to a fissure in an odd keystone as punishment for misdeeds 500 years ago.'),
  -- gible in shining-pearl
  (443, 44300, 34, 'It once lived in the tropics. To avoid the cold, it lives in caves warmed by geothermal heat.'),
  -- gabite in shining-pearl
  (444, 44400, 34, 'It habitually digs up and hoards gems in its nest. Its loot is constantly targeted by thieves.'),
  -- garchomp in shining-pearl
  (445, 44500, 34, 'It flies at speeds equal to a jet fighter plane. It never allows its prey to escape.'),
  -- munchlax in shining-pearl
  (446, 44600, 34, 'It hides food under its long body hair. However, it forgets it has hidden the food.'),
  -- riolu in shining-pearl
  (447, 44700, 34, 'Its body is lithe yet powerful. It can crest three mountains and cross two canyons in one night.'),
  -- lucario in shining-pearl
  (448, 44800, 34, 'By catching the aura emanating from others, it can read their thoughts and movements.'),
  -- hippopotas in shining-pearl
  (449, 44900, 34, 'It enshrouds itself with sand to protect itself from germs. It does not enjoy getting wet.'),
  -- hippowdon in shining-pearl
  (450, 45000, 34, 'Its huge mouth is almost seven feet across. It has enough power to completely crush a car.'),
  -- skorupi in shining-pearl
  (451, 45100, 34, 'It lives in arid lands. It buries itself in sand and lies in wait for unsuspecting prey.'),
  -- drapion in shining-pearl
  (452, 45200, 34, 'Its body is encased in a sturdy shell. Its head rotates 180 degrees, eliminating blind spots.'),
  -- croagunk in shining-pearl
  (453, 45300, 34, 'Inflating its poison sacs, it makes an eerie blubbering sound for intimidation.'),
  -- toxicroak in shining-pearl
  (454, 45400, 34, 'The toxin made in its poison sacs is pumped to the knuckle claws through tubes down its arms.'),
  -- carnivine in shining-pearl
  (455, 45500, 34, 'Hanging from branches using its tentacles, it looks like a plant. It awaits prey, mouth wide open.'),
  -- finneon in shining-pearl
  (456, 45600, 34, 'The way its two tail fins flutter while it swims has earned it the nickname “BEAUTIFLY of the Sea.”'),
  -- lumineon in shining-pearl
  (457, 45700, 34, 'To avoid detection by predators, it crawls along the seafloor using the two fins on its chest.'),
  -- mantyke in shining-pearl
  (458, 45800, 34, 'Scientists discovered that the distinctive patterns on its back differ by region.'),
  -- snover in shining-pearl
  (459, 45900, 34, 'In the spring, it grows berries with the texture of frozen treats around its belly.'),
  -- abomasnow in shining-pearl
  (460, 46000, 34, 'It blankets wide areas in snow by whipping up blizzards. It is also known as “The Ice Monster.”'),
  -- weavile in shining-pearl
  (461, 46100, 34, 'It sends signals to others by carving odd patterns in frost- covered trees and ice.'),
  -- magnezone in shining-pearl
  (462, 46200, 34, 'It evolved from exposure to a special magnetic field. Three units generate magnetism.'),
  -- lickilicky in shining-pearl
  (463, 46300, 34, 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.'),
  -- rhyperior in shining-pearl
  (464, 46400, 34, 'It puts rocks in holes in its palms and uses its muscles to shoot them. GEODUDE are shot at rare times.'),
  -- tangrowth in shining-pearl
  (465, 46500, 34, 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.'),
  -- electivire in shining-pearl
  (466, 46600, 34, 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.'),
  -- magmortar in shining-pearl
  (467, 46700, 34, 'It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters.'),
  -- togekiss in shining-pearl
  (468, 46800, 34, 'It will never appear where there is strife. Its sightings have become rare recently.'),
  -- yanmega in shining-pearl
  (469, 46900, 34, 'By churning its wings, it creates shock waves that inflict critical internal injuries to foes.'),
  -- leafeon in shining-pearl
  (470, 47000, 34, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in shining-pearl
  (471, 47100, 34, 'As a protective technique, it can completely freeze its fur to make its hairs stand like needles.'),
  -- gliscor in shining-pearl
  (472, 47200, 34, 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!'),
  -- mamoswine in shining-pearl
  (473, 47300, 34, 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.'),
  -- porygon-z in shining-pearl
  (474, 47400, 34, 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.'),
  -- gallade in shining-pearl
  (475, 47500, 34, 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.'),
  -- probopass in shining-pearl
  (476, 47600, 34, 'It exudes strong magnetism from all over. It controls three small units called Mini-Noses.'),
  -- dusknoir in shining-pearl
  (477, 47700, 34, 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.'),
  -- froslass in shining-pearl
  (478, 47800, 34, 'It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow.'),
  -- rotom in shining-pearl
  (479, 47900, 34, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- uxie in shining-pearl
  (480, 48000, 34, 'It is said that its emergence gave humans the intelligence to improve their quality of life.'),
  -- mesprit in shining-pearl
  (481, 48100, 34, 'It sleeps at the bottom of a lake. Its spirit is said to leave its body to fly on the lake’s surface.'),
  -- azelf in shining-pearl
  (482, 48200, 34, 'It is thought that UXIE, MESPRIT and AZELF all came from the same egg.'),
  -- dialga in shining-pearl
  (483, 48300, 34, 'A Pokémon spoken of in legend. It is said that time began moving when DIALGA was born.'),
  -- palkia in shining-pearl
  (484, 48400, 34, 'It is said to live in a gap in the spatial dimension parallel to ours. It appears in mythology.'),
  -- heatran in shining-pearl
  (485, 48500, 34, 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.'),
  -- regigigas in shining-pearl
  (486, 48600, 34, 'There is an enduring legend that states this Pokémon towed continents with ropes.'),
  -- giratina in shining-pearl
  (487, 48700, 34, 'A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery.'),
  -- cresselia in shining-pearl
  (488, 48800, 34, 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.'),
  -- phione in shining-pearl
  (489, 48900, 34, 'A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food.'),
  -- manaphy in shining-pearl
  (490, 49000, 34, 'Water makes up 80% of its body. This Pokémon is easily affected by its environment.'),
  -- darkrai in shining-pearl
  (491, 49100, 34, 'Folklore has it that on moonless nights, this Pokémon will make people see horrific nightmares.'),
  -- shaymin in shining-pearl
  (492, 49200, 34, 'It can dissolve toxins in the air to instantly transform ruined land into a lush field of flowers.'),
  -- arceus in shining-pearl
  (493, 49300, 34, 'It is told in mythology that this Pokémon was born before the universe even existed.'),
  -- pikachu in legends-arceus
  (25, 2500, 35, 'Possesses cheek sacs in which it stores electricity. This clever forest-dweller roasts tough berries with an electric shock before consuming them.'),
  -- raichu in legends-arceus
  (26, 2600, 35, 'It can discharge bursts of electricity exceeding 100,000 volts— a single strike with that amount of power would incapacitate one of the Copperajah of my homeland.'),
  -- clefairy in legends-arceus
  (35, 3500, 35, 'It can be found in quiet mountain areas on a full moon’s night. Its dancing and its tiny, faintly glowing wings confer upon it a lovely fairylike quality.'),
  -- clefable in legends-arceus
  (36, 3600, 35, 'Legend says that on clear, quiet nights, it listens for the voices of its kin living on the moon. I, too, often think of my homeland, so far away.'),
  -- vulpix in legends-arceus
  (37, 3700, 35, 'In its belly burns a fire, which Vulpix spits out in the form of fireballs. When young, this Pokémon has but one white tail. As the Pokémon matures, this single tail splits into six.'),
  -- alolan-vulpix in legends-arceus
  (37, 3701, 35, 'These Pokémon live in packs in the snowy mountains and defend themselves with icy breath. I suspect this species changed its form to adapt to the frigid climate.'),
  -- ninetales in legends-arceus
  (38, 3800, 35, 'The coat of gleaming golden fur is quite magnificent. This species is said to store sacred power in its nine long tails and to live for a millennium.'),
  -- alolan-ninetales in legends-arceus
  (38, 3801, 35, 'Dwells on sacred peaks perpetually covered in snow. Said to appear to virtuous people who have lost their way on mountain paths—it then guides them back down to the mountain’s base.'),
  -- zubat in legends-arceus
  (41, 4100, 35, 'Makes its home in gloomy caves. Atrophied eyes have left this Pokémon blind, so it scans its surroundings via sound waves that it emits from its mouth as it flies.'),
  -- golbat in legends-arceus
  (42, 4200, 35, 'It sinks its sharp fangs into other creatures and slurps up their blood. A closer look at the fangs reveals that they are hollow and akin to straws.'),
  -- paras in legends-arceus
  (46, 4600, 35, 'Sometimes seen at the foot of trees in humid forests. The mushrooms on its back—called tochukaso—are not present on infant specimens and instead emerge as Paras matures.'),
  -- parasect in legends-arceus
  (47, 4700, 35, 'Mushroom-lacking specimens of this Pokémon lie unmoving in the forest, lending credence to the hypothesis that the large mushroom is in control of Parasect’s actions.'),
  -- psyduck in legends-arceus
  (54, 5400, 35, 'Suffers perpetual headaches. If the agony grows too great, Psyduck’s latent power erupts, contrary to Psyduck’s intent. Ergo, I am exploring ways to ease the pain.'),
  -- golduck in legends-arceus
  (55, 5500, 35, 'Its body is strong, and it has webbing on its hands and feet. Golduck can swim easily through rough seas, clawing its way through the high waves.'),
  -- growlithe in legends-arceus
  (58, 5800, 35, 'They patrol their territory in pairs. I believe the igneous rock components in the fur of this species are the result of volcanic activity in its habitat.'),
  -- arcanine in legends-arceus
  (59, 5900, 35, 'Snaps at its foes with fangs cloaked in blazing flame. Despite its bulk, it deftly feints every which way, leading opponents on a deceptively merry chase as it all but dances around them.'),
  -- abra in legends-arceus
  (63, 6300, 35, 'Spends 18 hours of the day sleeping. Even while asleep, Abra can control its psychic powers—should danger approach, the Pokémon will simply teleport away.'),
  -- kadabra in legends-arceus
  (64, 6400, 35, 'There are rumors that a child with mystical powers became a Kadabra; however, this remains unverified. I suspect that the spoon Kadabra holds enhances its brain waves.'),
  -- alakazam in legends-arceus
  (65, 6500, 35, 'The longer Alakazam lives, the larger and heavier its head becomes. Our tests have shown that the strength of its psychic powers correlates positively to the weight of its head.'),
  -- machop in legends-arceus
  (66, 6600, 35, 'Though as small as a child, it has strength enough to easily throw a well-built adult. Striving to become ever stronger, Machop trains by carrying a Graveler on its shoulders.'),
  -- machoke in legends-arceus
  (67, 6700, 35, 'A sturdy creature boasting a robust physique and boundless stamina. Loves training above all else and voluntarily assists with tasks such as construction and clearing land.'),
  -- machamp in legends-arceus
  (68, 6800, 35, 'In close combat, its four arms afford it offensive and defensive supremacy. In but a blink, this valiant Pokémon can overwhelm its foes with more than 1,000 blows from its fists.'),
  -- tentacool in legends-arceus
  (72, 7200, 35, 'They fire beams from the glassy, magenta orbs that resemble eyes atop their heads, and they drift in shallow seas. During low tide, they can sometimes be found on beaches, desiccated.'),
  -- tentacruel in legends-arceus
  (73, 7300, 35, 'It has 80 tentacles, each with a venomous tip. These tentacles are also extendible, lengthening when Tentacruel attempts to catch prey. Use caution.'),
  -- geodude in legends-arceus
  (74, 7400, 35, 'Makes its home in mountainous regions, using its arms to climb along harsh mountain roads. Can be troublesome—carelessly kicking one will cause it to fly into a rage and chase after you.'),
  -- graveler in legends-arceus
  (75, 7500, 35, 'Dwells in holes dug into sheer walls of stone. It enjoys rolling down slopes as though it were a boulder during a rockfall, so keep an eye upward while traversing mountain roads.'),
  -- golem in legends-arceus
  (76, 7600, 35, 'The rocklike shell is shed each year. The cast-off shell then crumbles, reverting to a mass of soil, which can be spread across fields to promote crop growth.'),
  -- ponyta in legends-arceus
  (77, 7700, 35, 'These Pokémon live in herds out in the grassland. Newborn foals lack their fiery manes, which will develop about an hour after birth.'),
  -- rapidash in legends-arceus
  (78, 7800, 35, 'Fiery mane aglow, Rapidash darts like an arrow across the land. This prodigiously swift creature can traverse the vast region of Hisui in a day and a half.'),
  -- magnemite in legends-arceus
  (81, 8100, 35, 'A bizarre Pokémon with but a single eye embedded in an iron sphere. I suspect this creature levitates due to the magnetism it emits from its arms, which resemble horseshoe-shaped magnets.'),
  -- magneton in legends-arceus
  (82, 8200, 35, 'Three Magnemite gathered to evolve into this Pokémon. The source of much vexation on my part, as its powerful magnetism destroys my research equipment.'),
  -- gastly in legends-arceus
  (92, 9200, 35, 'Gaseous and completely impalpable. Also highly dangerous— inhaling part of its poisonous body will cause one to faint instantly.'),
  -- haunter in legends-arceus
  (93, 9300, 35, 'This frightful, malevolent spirit can glide through walls, appearing wherever it likes. According to rumor, victims of a Haunter’s lick will wither to death day by day.'),
  -- gengar in legends-arceus
  (94, 9400, 35, 'Possesses potential victims'' shadows in an effort to steal away the victims'' lives. If your shadow begins to laugh, you must take hold of a protective charm posthaste!'),
  -- onix in legends-arceus
  (95, 9500, 35, 'This chain of immense stones resembles a giant serpent. Tremors shake the earth above as it burrows deep beneath the ground, feeding on boulders as it goes.'),
  -- voltorb in legends-arceus
  (100, 10000, 35, 'An enigmatic Pokémon that happens to bear a resemblance to a Poké Ball. When excited, it discharges the electric current it has stored in its belly, then lets out a great, uproarious laugh.'),
  -- electrode in legends-arceus
  (101, 10100, 35, 'The tissue on the surface of its body is curiously similar in composition to an Apricorn. When irritated, this Pokémon lets loose an electric current equal to 20 lightning bolts.'),
  -- lickitung in legends-arceus
  (108, 10800, 35, 'Wields its long tongue deftly, as though it were an arm. The Pokémon’s viscous saliva, once it has been collected and boiled down, yields a strong and highly useful adhesive.'),
  -- rhyhorn in legends-arceus
  (111, 11100, 35, 'Ludicrously strong—when it butts heads with a mountain, it is the mountain that shatters. But its short legs struggle with turns, and it is incapable of stopping unless it collides with something.'),
  -- rhydon in legends-arceus
  (112, 11200, 35, 'Rapidly rotates its horn to bore through bedrock. It swaggers around volcanic regions, protected from the lava’s heat by its tough, armorlike hide.'),
  -- chansey in legends-arceus
  (113, 11300, 35, 'This purehearted Pokémon shares its eggs with the injured.'),
  -- tangela in legends-arceus
  (114, 11400, 35, 'It is cloaked entirely in blue vines, preventing any glimpse of its true identity. The vines impart a refreshing sensation when chewed—they’re useful as a spice.'),
  -- mr-mime in legends-arceus
  (122, 12200, 35, 'The behavior of this clown-like Pokémon reminds one of pantomime. It creates invisible walls using a force emitted from its fingertips.'),
  -- scyther in legends-arceus
  (123, 12300, 35, 'The large, wickedly sharp scythes on its forearms are truly fearsome weapons. Prey’s attempts to flee are unfailingly thwarted by this Pokémon’s nimble motions.'),
  -- electabuzz in legends-arceus
  (125, 12500, 35, 'Feeds on electrical energy. During sudden showers beneath looming thunderclouds, one can observe Electabuzz scaling tall trees, where the Pokémon will then wait for lightning to strike.'),
  -- magmar in legends-arceus
  (126, 12600, 35, 'Legend has it that this Pokémon was born from the crater of a volcano. When wounded, it bathes in lava to heal its body, much as one would soak in a hot spring.'),
  -- magikarp in legends-arceus
  (129, 12900, 35, 'A feeble, pitiful imbecile of a Pokémon that is nonetheless very hardy. Unperturbed by turbid water, it can be found living in all sorts of places.'),
  -- gyarados in legends-arceus
  (130, 13000, 35, 'I suspect this Pokémon to be the true identity of a dragon written of in ancient texts, which claimed that it razed an entire village with white-hot beams from its maw.'),
  -- eevee in legends-arceus
  (133, 13300, 35, 'Harbors the potential to evolve into manifold forms. Within Eevee lies the key to the mysteries of Pokémon evolution—I’m certain of it.'),
  -- vaporeon in legends-arceus
  (134, 13400, 35, 'Tests show that its cells closely resemble water molecules, which perhaps explains its ability to conceal its form while submerged. I believe the origins of mermaid folklore lie with this Pokémon.'),
  -- jolteon in legends-arceus
  (135, 13500, 35, 'Bristles its fur into sharp, needlelike points when enraged. One can hear electricity crackle in its breath when it exhales.'),
  -- flareon in legends-arceus
  (136, 13600, 35, 'Flames burn within a saclike organ inside this Pokémon. When Flareon inhales, these flames grow in intensity, reaching a mighty 3,000 degrees Fahrenheit.'),
  -- porygon in legends-arceus
  (137, 13700, 35, 'It has no discernible heartbeat and does not seem to draw breath, and yet it appears to function without issue. I cannot even begin to explain this utterly bizarre anomaly.'),
  -- snorlax in legends-arceus
  (143, 14300, 35, 'This glutton appears in villages without warning and devours the entirety of their rice granaries—such occurrences have long been counted among the gravest of disasters.'),
  -- cyndaquil in legends-arceus
  (155, 15500, 35, 'Hails from the Johto region. Though usually curled into a ball due to its timid disposition, it harbors tremendous firepower.'),
  -- quilava in legends-arceus
  (156, 15600, 35, 'This creature’s fur is most mysterious—it is wholly impervious to the burning touch of flame. Should Quilava turn its back to you, take heed! Such a posture indicates a forthcoming attack.'),
  -- typhlosion in legends-arceus
  (157, 15700, 35, 'Said to purify lost, forsaken souls with its flames and guide them to the afterlife. I believe its form has been influenced by the energy of the sacred mountain towering at Hisui’s center.'),
  -- crobat in legends-arceus
  (169, 16900, 35, 'Its hind limbs have become another set of wings. Crobat expertly maneuvers its four wings to dart in exquisite fashion through even the most confined caves without losing any speed.'),
  -- pichu in legends-arceus
  (172, 17200, 35, 'Pichu stores electricity in the sacs on its cheeks but discharges it inadvertently when agitated or excited. Being yet immature, the Pokémon’s handling of electricity is rather inept.'),
  -- cleffa in legends-arceus
  (173, 17300, 35, 'In silhouette, they resemble twinkling starlight. When shooting stars rain from the night sky, Cleffa gather in numbers and dance as though they are indeed incarnations of the stars.'),
  -- togepi in legends-arceus
  (175, 17500, 35, 'This ovate creature is frequently mistaken for a moving egg when encountered out in the fields or in the mountains. Its guileless smile soothes the soul.'),
  -- togetic in legends-arceus
  (176, 17600, 35, 'No records exist of Togetic being seen in the wilds. Rumors abound that it evolves under the loving care of a trusted human companion, upon whom the Pokémon then bestows great joy.'),
  -- sudowoodo in legends-arceus
  (185, 18500, 35, 'Though it pretends to be a tree, it fails to fool even children. To the touch, its body feels more like rock than tree bark. Sudowoodo’s extreme aversion to water merits special note.'),
  -- aipom in legends-arceus
  (190, 19000, 35, 'This treetop dweller possesses a tail as dexterous as a hand. Ancient writings describe this Pokémon as a one-armed oddity.'),
  -- yanma in legends-arceus
  (193, 19300, 35, 'Its frail wings are so thin that one can see clear through them. However, during flight these wings exhibit the power to churn air with force enough to launch a house skyward.'),
  -- espeon in legends-arceus
  (196, 19600, 35, 'Wields an arcane power with which it can predict the weather and even people’s thoughts. When bathed in sunshine, the scarlet orb on its brow glows and builds energy.'),
  -- umbreon in legends-arceus
  (197, 19700, 35, 'It is most active in the wee hours of the night, when moonlight bathes the land. Its large eyes can pierce the darkness and perceive prey with absolute clarity.'),
  -- murkrow in legends-arceus
  (198, 19800, 35, 'Widely shunned as a bearer of ill fortune. Upon crossing paths with this creature, I’ve been told one must chant ”Workrum, Workrum—bad luck, don’t come” as a protective incantation.'),
  -- misdreavus in legends-arceus
  (200, 20000, 35, 'It conceals itself in darkness, sending chills up travelers'' spines with its childlike weeping. As it observes the frightened travelers with glee, the red orbs upon its chest let off an eerie light.'),
  -- unown in legends-arceus
  (201, 20100, 35, 'It is hard to believe these strangely shaped Pokémon are truly living creatures. I’ve pointed out that the species'' many forms resemble writing from other lands; no one will take me seriously.'),
  -- gligar in legends-arceus
  (207, 20700, 35, 'Its tail is tipped by a thick, horrible stinger. To bring down prey, it will first obscure their vision by covering their faces with its body, and then it will use the stinger to inject them with venom.'),
  -- steelix in legends-arceus
  (208, 20800, 35, 'This Pokémon evolved through use of a strange item. Its body is coated with steel powder and notably hard—not even diamond can leave so much as a scratch.'),
  -- qwilfish in legends-arceus
  (211, 21100, 35, 'Fishers detest this troublesome Pokémon because it sprays poison from its spines, getting it everywhere. A different form of Qwilfish lives in other regions.'),
  -- hisuian-qwilfish in legends-arceus
  (211, 21101, 35, 'Fishers detest this troublesome Pokémon because it sprays poison from its spines, getting it everywhere. A different form of Qwilfish lives in other regions.'),
  -- scizor in legends-arceus
  (212, 21200, 35, 'Evolved by way of a curious item. The shell covering its body has been shown to be stronger than forged steel.'),
  -- heracross in legends-arceus
  (214, 21400, 35, 'This Pokémon has an unparalleled horn. Heracross itself demonstrates tremendous power—it’s capable of throwing several people trained in the traditional arts of war at once.'),
  -- sneasel in legends-arceus
  (215, 21500, 35, 'Its sturdy, curved claws are ideal for traversing precipitous cliffs. From the tips of these claws drips a venom that infiltrates the nerves of any prey caught in Sneasel’s grasp.'),
  -- hisuian-sneasel in legends-arceus
  (215, 21501, 35, 'Its sturdy, curved claws are ideal for traversing precipitous cliffs. From the tips of these claws drips a venom that infiltrates the nerves of any prey caught in Sneasel’s grasp.'),
  -- teddiursa in legends-arceus
  (216, 21600, 35, 'It licks its paws because of the sweet honey that has soaked into them. It is cunning, stealing into the nests of Combee and taking for itself the honey that the Combee have amassed.'),
  -- ursaring in legends-arceus
  (217, 21700, 35, 'When the cold season arrives in Hisui, this Pokémon will wander fields and mountains alike in search of its favorite berries. Ursaring’s hunger during this time makes it a ferocious danger.'),
  -- swinub in legends-arceus
  (220, 22000, 35, 'Swinub excels at sniffing out mushrooms buried beneath grass or snow. Since ancient times, the people of Hisui have often relied upon this skill.'),
  -- piloswine in legends-arceus
  (221, 22100, 35, 'The long fur of this Pokémon covers its eyes, ears, and even limbs, allowing Piloswine to resist harshly frigid conditions. The Pokémon’s white tusks can be used to defeat its enemies.'),
  -- remoraid in legends-arceus
  (223, 22300, 35, 'Spits water from its mouth with incredible accuracy. It captures Burmy by shooting them down off the branches from which they dangle.'),
  -- octillery in legends-arceus
  (224, 22400, 35, 'While Octillery still shoots water from its mouth, the drastic anatomical difference between it and Remoraid meant that for a long time, no one believed the former evolved from the latter.'),
  -- mantine in legends-arceus
  (226, 22600, 35, 'This calm and gentle Pokémon swims gracefully through the sea. After building speed, it can leap out of the water. It is often misidentified as a bird Pokémon due to this behavior.'),
  -- porygon2 in legends-arceus
  (233, 23300, 35, 'A bizarre item caused this Pokémon to evolve. While it now exhibits many new gestures and expressions, its biology remains inscrutable.'),
  -- stantler in legends-arceus
  (234, 23400, 35, 'Its strangely shaped antlers have the power to bewitch those who see them. Medicine made by grinding up the black orbs from fallen antlers is an effective treatment for insomnia.'),
  -- elekid in legends-arceus
  (239, 23900, 35, 'They generate electricity by spinning their arms. During a thunderstorm, if one hears the lively voices of children out in the wilderness, what one is actually hearing are the voices of Elekid.'),
  -- magby in legends-arceus
  (240, 24000, 35, 'This Pokémon lives in volcanic areas. With each breath, sparks spurt from its mouth and nose. When Magby is in good health, its flames gain a yellow tint.'),
  -- blissey in legends-arceus
  (242, 24200, 35, 'A kindhearted Pokémon that will care for any sick person or Pokémon until their health improves. The eggs it lays are delicious and bring good fortune to those who eat them.'),
  -- wurmple in legends-arceus
  (265, 26500, 35, 'Likes sap and is abundant in the wild. Why it evolves into various different forms is unknown. One cannot tell from a Wurmple’s appearance which form it will take when it evolves.'),
  -- silcoon in legends-arceus
  (266, 26600, 35, 'Wraps itself in thin strings of silk while it stores energy for evolution. It can’t extend its limbs and its movement is slow, but its eyes keep a sharp lookout—Silcoon is always on guard.'),
  -- beautifly in legends-arceus
  (267, 26700, 35, 'A colorful and incredibly beautiful but also greedy Pokémon. In an effort to keep its favorite food all to itself, it will chase away Combee as they try to gather nectar.'),
  -- cascoon in legends-arceus
  (268, 26800, 35, 'The silk coating its body is thin but sufficiently strong. Cascoon’s silk has a luster and texture superior to that of Silcoon’s, and clothes made using Cascoon silk are regarded as top-notch.'),
  -- dustox in legends-arceus
  (269, 26900, 35, 'Tends to be drawn to bonfires on dark nights. Difficult to chase away from settlements because of the way it scatters highly toxic scales.'),
  -- ralts in legends-arceus
  (280, 28000, 35, 'Tends to prefer people with a chipper disposition to those who are gloomy, but it has shown no discrimination with regard to age or gender. Needs more research.'),
  -- kirlia in legends-arceus
  (281, 28100, 35, 'It resembles a maiden in appearance, but it wields strange powers to project visions of paradise. I suspect the crimson ornaments on its head are the key to its abilities.'),
  -- gardevoir in legends-arceus
  (282, 28200, 35, 'It will dedicate itself to defending a master it has come to adore. Its pure white dress, reminiscent of those worn by ladies of nobility, is the dress of one who is willing to risk their life.'),
  -- nosepass in legends-arceus
  (299, 29900, 35, 'Once the people of Hisui discovered that its red nose always points north, they grew to rely on it greatly when traveling afar. The nose seems to work in a similar way to ancient compasses.'),
  -- roselia in legends-arceus
  (315, 31500, 35, 'Though beautiful, it has highly poisonous thorns. There is an old tradition in my homeland wherein one would send these thorns to an opponent to challenge them to a duel.'),
  -- barboach in legends-arceus
  (339, 33900, 35, 'Makes its home in swamps with murky water. The poor visibility hides this Pokémon from predators, and the slime on its body makes grasping it difficult.'),
  -- whiscash in legends-arceus
  (340, 34000, 35, 'Strikes its caudal fin against the swamp bed to shake the ground and startle its prey. It will then swallow the fleeing prey whole. People mistook this behavior as the cause of earthquakes.'),
  -- duskull in legends-arceus
  (355, 35500, 35, 'I’ve heard that the children of Hisui all begin to behave once they’ve been told the story of how this Pokémon roams about before the witching hour to spirit away misbehaving children.'),
  -- dusclops in legends-arceus
  (356, 35600, 35, 'There are rumors that peeking inside its bandage-wrapped body will cause one to get pulled in through the gaps between the bandages, never to return. I’ve been too scared to verify.'),
  -- chimecho in legends-arceus
  (358, 35800, 35, 'Can emit waves of air powerful enough to knock out prey taller than itself. I hypothesize that it amplifies the faint sound of wind within its body.'),
  -- snorunt in legends-arceus
  (361, 36100, 35, 'Arrives alongside the first snow. It’s thought that homes Snorunt visit will prosper for many generations. By tradition, one might offer a lump of ice made from pure water at one’s front door.'),
  -- glalie in legends-arceus
  (362, 36200, 35, 'It covers its body with an armor of ice harder than steel. Uses its breath to freeze prey, which it then devours as if they were frozen desserts.'),
  -- spheal in legends-arceus
  (363, 36300, 35, 'During the season when drift ice approaches the shore, Spheal prefers living on the ice—where fewer predators lurk—rather than the land. Its fur retains heat superbly and resists harsh cold.'),
  -- sealeo in legends-arceus
  (364, 36400, 35, 'Its white whiskers are very sensitive. Sealeo will balance Spheal on the tip of its nose, checking its scent and its feel to be sure the Spheal is healthy.'),
  -- walrein in legends-arceus
  (365, 36500, 35, 'Its thick tusks are strong enough to shatter drift ice. They have been known to break, but they will grow back by the next year. The Hisui region is well known for these broken tusks.'),
  -- turtwig in legends-arceus
  (387, 38700, 35, 'This Pokémon becomes more energetic the more sunlight there is. The part resembling a shell is similar to silt and is slightly damp and warm to the touch.'),
  -- grotle in legends-arceus
  (388, 38800, 35, 'Appears where there is clean spring water. The fruit that grows on the shrubs on its shell is sweet, nutritious, and truly delicious.'),
  -- torterra in legends-arceus
  (389, 38900, 35, 'This remarkable, large-bodied Pokémon would serve beautifully as borrowed scenery for a garden, and its strength is peerless. Torterra roams the wilderness in search of clean water.'),
  -- chimchar in legends-arceus
  (390, 39000, 35, 'Full of vigor and always in high spirits. It was once known by the name ”Lantern-Tail” and feared as some kind of apparition.'),
  -- monferno in legends-arceus
  (391, 39100, 35, 'The deeper the blue on its face, the more powerful it will grow to become. It leaps about every which way and lands powerful blows against its opponents with the flame on its tail.'),
  -- infernape in legends-arceus
  (392, 39200, 35, 'A tall, hardy Pokémon with a dazzling appearance. It shrouds itself in flame and battles as if engaged in dance—truly a sight to behold.'),
  -- piplup in legends-arceus
  (393, 39300, 35, 'Prefers cold climes and appears along coasts. It’s an adorable little thing—as cute as any child—but it’s also prideful, unwilling to accept handouts from people.'),
  -- prinplup in legends-arceus
  (394, 39400, 35, 'It swims gracefully through the frigid sea and sings with a voice like the roaring tide. It has powerful, sturdy wings and dignity to match.'),
  -- empoleon in legends-arceus
  (395, 39500, 35, 'Since ancient times, it has been revered by the people of Hisui, who call it the Master of the Waves. Its wings are a match for even master-crafted blades.'),
  -- starly in legends-arceus
  (396, 39600, 35, 'They live in the fields and mountains, gathering in large flocks. Their cries are quite obnoxious. Though small, their wings are strong—a strike from them leaves pain that persists for a week.'),
  -- staravia in legends-arceus
  (397, 39700, 35, 'They form remarkably large flocks and are constantly fighting amongst themselves. I suspect that those with magnificent plumes on their heads are the strong ones.'),
  -- staraptor in legends-arceus
  (398, 39800, 35, 'It has left the flock, having gained strength enough to survive on its own. The astounding force with which Staraptor flies through the air allows it to carry away large, burly targets.'),
  -- bidoof in legends-arceus
  (399, 39900, 35, 'Bidoof has an unsophisticated face and is rarely flustered by anything. There have been incidents involving Bidoof sauntering into villages and gnawing on the houses without a single care.'),
  -- bibarel in legends-arceus
  (400, 40000, 35, 'Bibarel fur repels water and is also a fantastic material for heat retention. These Pokémon create dams on rivers to live in.'),
  -- kricketot in legends-arceus
  (401, 40100, 35, 'When the trees take on new hues, more of these Pokémon appear. The tone they create by striking their antennae together resembles that of the marimba, an instrument of foreign lands.'),
  -- kricketune in legends-arceus
  (402, 40200, 35, 'It uses its cutlass-like arms to produce sound, the melody of which varies from individual to individual. It is a worthwhile endeavor to seek out one’s favorite tunes.'),
  -- shinx in legends-arceus
  (403, 40300, 35, 'Shakes its body to generate electricity. Its stature belies its aggression—one must be patient to tame this Pokémon.'),
  -- luxio in legends-arceus
  (404, 40400, 35, 'Proudly uses its electrified claws as weapons. It seems to be a gracious Pokémon, evenly sharing the spoils of the hunt with others of its kind.'),
  -- luxray in legends-arceus
  (405, 40500, 35, 'They form packs, each having one male as leader. Legends say that when Luxray’s two eyes shimmer with gold, the Pokémon can see through anything.'),
  -- budew in legends-arceus
  (406, 40600, 35, 'When the sun’s light strengthens, the bud atop this Pokémon’s head opens. This is a sign to the people that the harsh winter is over, and the season of budding has begun.'),
  -- roserade in legends-arceus
  (407, 40700, 35, 'Hidden within the bouquet on each hand are thorned whips loaded with virulent poison. Roserade moves gracefully as it corners its prey and mercilessly lashes them with its whips.'),
  -- cranidos in legends-arceus
  (408, 40800, 35, 'An incredibly rare sight. They duel each other by ramming their heads together, and the resulting sound echoes throughout the area like the pealing of a bell.'),
  -- rampardos in legends-arceus
  (409, 40900, 35, 'Very little is known about its biology. Can knock down massive trees by smashing its beautiful, pearl-like crown against them.'),
  -- shieldon in legends-arceus
  (410, 41000, 35, 'Much remains unknown about this Pokémon, as few have ever seen it. However, we know that it is calm and dislikes conflict, and it enjoys polishing its face against trees and rocks.'),
  -- bastiodon in legends-arceus
  (411, 41100, 35, 'Its face is sturdy—as strong as diamond—and this hardness offers a very stable defense. Much about this species is still unknown, such as its natural habitat.'),
  -- burmy in legends-arceus
  (412, 41200, 35, 'If its cloak is even slightly damaged, Burmy will immediately repair it with whatever is close at hand. The Pokémon within the cloak is scrawny and vulnerable to the cold.'),
  -- burmy-sandy in legends-arceus
  (412, 41201, 35, 'It creates a cloak by weaving together sand, mud, and silk it has spat out. This earthen cloak is ruined by wind and rain, so the Pokémon hides away in caves and other such places.'),
  -- burmy-trash in legends-arceus
  (412, 41202, 35, 'When confronted by a lack of other materials, Burmy will create its cloak using dust and refuse. The cloak seems to be more comfortable than one would think.'),
  -- wormadam in legends-arceus
  (413, 41300, 35, 'The cloak—fashioned from plant matter—has merged with the Pokémon and is now part of the body, like fur or skin. I suspect this fusion is an effect of the energy involved in evolution.'),
  -- wormadam-sandy in legends-arceus
  (413, 41301, 35, 'Its earthen skin is reasonably hard—it has no problem repelling a Starly’s pecking, at least.'),
  -- wormadam-trash in legends-arceus
  (413, 41302, 35, 'Its body, composed of refuse, blends in to the scenery so much as to be inconspicuous. This seems to be the perfect way for the Pokémon to evade the detection of predators.'),
  -- mothim in legends-arceus
  (414, 41400, 35, 'Scatters steel-colored scales as it flaps its wings. Despite being observed feeding primarily on the nectar of flowers, Mothim is not often seen around flower gardens.'),
  -- combee in legends-arceus
  (415, 41500, 35, 'They swear fealty to a queen Pokémon and work diligently to gather nectar. Each swarm produces a different flavor of honey.'),
  -- vespiquen in legends-arceus
  (416, 41600, 35, 'Commands its subjects to build its hive. It will dispatch any interlopers who dare sneak into its nest and use them as nourishment for itself.'),
  -- pachirisu in legends-arceus
  (417, 41700, 35, 'A species related to the Pikachu line. Though Pachirisu is a calm Pokémon, it still presents a danger should one touch its electrified tail or cheeks.'),
  -- buizel in legends-arceus
  (418, 41800, 35, 'It moves freely in the water by spinning its forked tail for propulsion. The resemblance to the screw of a steamboat is coincidental.'),
  -- floatzel in legends-arceus
  (419, 41900, 35, 'Has a long, rather splendid flotation sac, which prevents Floatzel from drowning even in stormy seas. One might glimpse this species around fishing hamlets from time to time.'),
  -- cherubi in legends-arceus
  (420, 42000, 35, 'Once the fruit growing alongside the main body is large and plump, Cherubi will use the nutrients within to evolve. The fruit then detaches, becoming nourishment for other creatures.'),
  -- cherrim in legends-arceus
  (421, 42100, 35, 'Motionless, save for the occasional quiver. A rich array of Pokémon can be found gathered around it, drawn by the scent exuded from Cherrim’s folded petals.'),
  -- shellos in legends-arceus
  (422, 42200, 35, 'Found in abundance on seashores bordering warm waters. Shellos are unexpectedly friendly and will crawl toward any person they see. Take care not to get coated in mucus!'),
  -- shellos-east in legends-arceus
  (422, 42201, 35, 'Found in abundance on seashores bordering cold waters. When pressed upon, the Pokémon will secrete from its body’s surface a purple fluid that will stain one’s clothes.'),
  -- gastrodon in legends-arceus
  (423, 42300, 35, 'Eats beach sand for nourishment. Should one Gastrodon encounter another of a different color, a fierce battle will inevitably ensue.'),
  -- gastrodon-east in legends-arceus
  (423, 42301, 35, 'Found more often on the land than in the sea. More active when it’s cloudy or rainy out than when the weather is fair.'),
  -- ambipom in legends-arceus
  (424, 42400, 35, 'To affirm their kinship, members of this species will form a ring by linking their newly doubled tails together. On rare occasions, humans have been accepted into such rings.'),
  -- drifloon in legends-arceus
  (425, 42500, 35, 'Said to lure away young children and carry them off to the afterlife. Some whisper that Drifloon are formed of reincarnated human souls, but these rumors are as yet unconfirmed.'),
  -- drifblim in legends-arceus
  (426, 42600, 35, 'It drifts along at dusk, perfectly silent. Its transient, melancholy aspect touches some people deeply—every so often, one will come upon a song or poem devoted to Drifblim.'),
  -- buneary in legends-arceus
  (427, 42700, 35, 'My hypothesis as to why Buneary rolls up its ears is that its hearing is far too keen. I surmise that the Pokémon protects its hearing by limiting the sound that may enter its ears.'),
  -- lopunny in legends-arceus
  (428, 42800, 35, 'Its fur is warm and yet remarkably light. This Pokémon kicks as though it were a master of karate, driving back its opponents with ease.'),
  -- mismagius in legends-arceus
  (429, 42900, 35, 'The incantations Mismagius chants can ward against misfortune, so a custom exists of inviting it into one’s home. Incur the Pokémon’s displeasure, however, and disaster will surely ensue.'),
  -- honchkrow in legends-arceus
  (430, 43000, 35, 'One cry from this Pokémon, and a murder of Murkrow come flying. At such times, one would think the curtain of night had fallen, plunging the world into jet-black darkness.'),
  -- glameow in legends-arceus
  (431, 43100, 35, 'Bewitches humans with its helical tail and piercing gaze. Its hidden claws are quite sharp as well, making this Pokémon an exceedingly tricky opponent if antagonized.'),
  -- purugly in legends-arceus
  (432, 43200, 35, 'Though impudent and difficult to tame, Purugly enjoys great popularity due to its fur, the beauty of which surpasses even velveteen.'),
  -- chingling in legends-arceus
  (433, 43300, 35, 'This Pokémon gave me an excruciating headache when it seemingly cried out without making a sound. Perhaps there are some sounds that the human ear is simply incapable of hearing.'),
  -- stunky in legends-arceus
  (434, 43400, 35, 'The poison that gushes from its aft end is accompanied by an utterly evil-smelling odor with such potency that one whiff can induce memory loss.'),
  -- skuntank in legends-arceus
  (435, 43500, 35, 'Sprays a poisonous fluid to take down prey. Sometimes, unable to stomach the stench of its own fluid, it leaves the bested prey uneaten.'),
  -- bronzor in legends-arceus
  (436, 43600, 35, 'Floats using a mysterious energy. The pattern engraved upon its back is held as sacred and can sometimes be found in imagery from ancient cemeteries and other such timeworn places.'),
  -- bronzong in legends-arceus
  (437, 43700, 35, 'Some believe that its bell-like cry opens holes to another world. It has been revered as a deity since ancient times.'),
  -- bonsly in legends-arceus
  (438, 43800, 35, 'Its tears elicit sympathy from those who see them, but do not be deceived! This expulsion of body water is merely a physiological mechanism for keeping itself in good health.'),
  -- mime-jr in legends-arceus
  (439, 43900, 35, 'Known to turn up in bustling marketplaces now and again. It mimics people much as a child would, then watches how they react, eyes sparkling.'),
  -- happiny in legends-arceus
  (440, 44000, 35, 'In imitation of Chansey, it keeps a round stone tucked into its belly pouch and cherishes it dearly. It gets along well with children and will sometimes play house with them for fun.'),
  -- chatot in legends-arceus
  (441, 44100, 35, 'A versatile performer skilled in the imitation of human speech. It is said that older, more experienced Chatot can even understand the meaning of the words they mimic.'),
  -- spiritomb in legends-arceus
  (442, 44200, 35, 'It lays curses by thinking wicked thoughts. Writings tell that this Pokémon was born out of the assembly of five score and eight malevolent spirits.'),
  -- gible in legends-arceus
  (443, 44300, 35, 'It nests in caves untouched by sunlight. Its sharp teeth may fall out when worn away or after an impact, but they regrow within a few days.'),
  -- gabite in legends-arceus
  (444, 44400, 35, 'Though Gabite are usually of a violent disposition, when I gave one a glass bead it had been eyeing covetously, it suddenly became quite docile.'),
  -- garchomp in legends-arceus
  (445, 44500, 35, 'Soars across the heavens at blinding speed—a magnificent sight! It has a feral disposition. Utmost caution is required if one meets a Garchomp out in the wilds.'),
  -- munchlax in legends-arceus
  (446, 44600, 35, 'Its robust stomach allows it to nonchalantly devour even rotted matter. It pays frequent visits to villages, seeking out food scraps intended for compost.'),
  -- riolu in legends-arceus
  (447, 44700, 35, 'Though infantile in appearance, it has the mysterious ability to read the minds of humans. The pure of heart are met with Riolu’s approval, while those of ill nature earn only its loathing.'),
  -- lucario in legends-arceus
  (448, 44800, 35, 'A most gallant-looking creature. It emits energy waves and controls them with precision, using them to sense even faraway beings. I have given the name ”aura” to this power.'),
  -- hippopotas in legends-arceus
  (449, 44900, 35, 'Though large and languid, Hippopotas is difficult to detect due to its tendency to burrow into and lurk beneath the soil. When agitated or excited, it expels sand from its nostrils.'),
  -- hippowdon in legends-arceus
  (450, 45000, 35, 'Short-tempered and easily moved to violence. It whips up whirlwinds of sand to crush its foes'' spirits, then goes in for the attack.'),
  -- skorupi in legends-arceus
  (451, 45100, 35, 'Its claws are not only razor-sharp but poisonous, making Skorupi a highly dangerous Pokémon. It seems to be weakened by cold temperatures, however.'),
  -- drapion in legends-arceus
  (452, 45200, 35, 'Has a brutish, ferocious temperament. With immense strength and a sturdy shell off which swords will bounce, it rampages about and wreaks havoc.'),
  -- croagunk in legends-arceus
  (453, 45300, 35, 'A poison wielder with a dastardly personality. Despite such qualities, this species is afforded a measure of popularity due to its peculiar cry and comical features.'),
  -- toxicroak in legends-arceus
  (454, 45400, 35, 'Its crimson claws contain a virulent toxin. This toxin can be made into a tonic by diluting it, mixing it with several types of wild grass, and boiling it down over two days.'),
  -- carnivine in legends-arceus
  (455, 45500, 35, 'Though this is a plant Pokémon, it has a gluttonous and unruly temperament. Carnivine attacks its prey with its cavernous maw wide open.'),
  -- finneon in legends-arceus
  (456, 45600, 35, 'What a gorgeous sight this Pokémon is as it swims with its long, pink-painted caudal fins fluttering behind it. Finneon’s beautiful appearance has led to its nickname: ”finery fish.”'),
  -- lumineon in legends-arceus
  (457, 45700, 35, 'Uses its gleaming fins to hunt its prey. The view of Lumineon schooling near the surface of the sea at night is breathtaking— it’s as though there were shining stars right there.'),
  -- mantyke in legends-arceus
  (458, 45800, 35, 'Though ball-like in shape, this Pokémon is a proficient swimmer. I have discovered that if a Mantyke spends much time with schools of Remoraid, it will eventually achieve evolution.'),
  -- snover in legends-arceus
  (459, 45900, 35, 'One is likely to encounter this Pokémon while out in the snow. There are stories of Snover appearing in human settlements but doing no harm—rather, they bond with the children.'),
  -- abomasnow in legends-arceus
  (460, 46000, 35, 'A powerful Pokémon that can split huge boulders with ease. Dislikes associating with others and chooses to live quietly deep within the mountains, playing with the snow.'),
  -- weavile in legends-arceus
  (461, 46100, 35, 'This species corners prey as a pack, under the guidance of a leader. Weavile displays increased cunning, leading me to speculate that its evolution caused further brain development.'),
  -- magnezone in legends-arceus
  (462, 46200, 35, 'I theorize that a special magnetic field influenced this Pokémon, changing its molecular structure and causing it to evolve. It emits strange radio waves toward space from its antenna.'),
  -- lickilicky in legends-arceus
  (463, 46300, 35, 'Its tongue can extend and contract freely, and it is capable of reaching lengths over 10 times Lickilicky’s height. Beware of the saliva, as it contains corrosive elements.'),
  -- rhyperior in legends-arceus
  (464, 46400, 35, 'This Pokémon evolved through use of a curious item. Its rocklike hide is composed of a mysterious substance and can withstand a blow from a masterwork sword with nary a scratch.'),
  -- tangrowth in legends-arceus
  (465, 46500, 35, 'Draped with long vines, it resembles a shrub in appearance. It swings bundles of vines as though they were arms, wrapping them around prey to ensnare them.'),
  -- electivire in legends-arceus
  (466, 46600, 35, 'Its evolution was induced by an unusual item, and its electrical output rises along with its heart rate. From its tails, it can unleash an electric current measuring 20,000 volts.'),
  -- magmortar in legends-arceus
  (467, 46700, 35, 'Use of a strange item caused this Pokémon to evolve. Fireballs launched from the ends of its tubelike arms are hot enough to melt an iron pot in an instant.'),
  -- togekiss in legends-arceus
  (468, 46800, 35, 'Scant few have ever sighted this Pokémon. After studying what literature remains, I am certain Togekiss will reveal itself when peace reigns in the land.'),
  -- yanmega in legends-arceus
  (469, 46900, 35, 'Extremely violent. When hunting, it wastes none of its energy, aiming only for prey’s most vulnerable spots. Any who manage to tame this Pokémon must be of incredible bravery.'),
  -- leafeon in legends-arceus
  (470, 47000, 35, 'Cells similar to those of plants have been found in its fur. Its hard tail can fell a large tree with one stroke, and the tail’s sharpness exceeds even that of a sword crafted by a master.'),
  -- glaceon in legends-arceus
  (471, 47100, 35, 'Glaceon is able to lower its body temperature very quickly. It freezes the atmosphere, creating diamond dust that glitters like gems while it flutters and dances around.'),
  -- gliscor in legends-arceus
  (472, 47200, 35, 'It glides soundlessly on pitch-black wings and sinks sharp fangs into the throat of its prey. It takes on a look of satisfaction once it has entirely drained its prey of blood.'),
  -- mamoswine in legends-arceus
  (473, 47300, 35, 'This species reached its zenith during the period known as the ice age. I suspect that Hisui’s frigid climate is in harmony with Mamoswine’s constitution, thus awakening hidden potential.'),
  -- porygon-z in legends-arceus
  (474, 47400, 35, 'A curious item induced this evolution. The Pokémon’s offensive capabilities have greatly increased, but the strangeness of its behavior has magnified in equal measure. This worries me.'),
  -- gallade in legends-arceus
  (475, 47500, 35, 'The blades extending from its elbows are sharper than the finest swords. Its swordsmanship, albeit self-taught, is astonishingly impressive.'),
  -- probopass in legends-arceus
  (476, 47600, 35, 'It is able to emit powerful magnetism, allowing it control over the iron sand that forms its luscious mustache. Using this iron sand, Probopass forms hard stones with which it smites its prey.'),
  -- dusknoir in legends-arceus
  (477, 47700, 35, 'Comes to those whose lives have come to an end and escorts their souls to the afterlife. Known to mistakenly take the souls of those who yet have life left in them, albeit rarely.'),
  -- froslass in legends-arceus
  (478, 47800, 35, 'A Pokémon inhabited by the soul of a woman who died bearing a grudge in the snowy mountains. Legends of Froslass placing deathly curses on misbehaving men send shivers down my spine.'),
  -- rotom in legends-arceus
  (479, 47900, 35, 'This bizarre Pokémon appears to be a will-o''-the-wisp powered by electricity. Be wary, as Rotom is both smart and mischievous.'),
  -- rotom-heat in legends-arceus
  (479, 47901, 35, 'A form in which Rotom lurks within a strange cauldron. The cauldron’s origin is unknown. A bothersome Pokémon, causing trouble with the flames it spits.'),
  -- rotom-wash in legends-arceus
  (479, 47902, 35, 'A form in which Rotom lurks within an odd bureau. The bureau’s purpose is unknown. A bothersome Pokémon, causing trouble by splashing cold water everywhere.'),
  -- rotom-frost in legends-arceus
  (479, 47903, 35, 'A form in which Rotom lurks within a bizarre cupboard. The cupboard’s composition is unknown. A bothersome Pokémon, causing trouble by frosting everything over.'),
  -- rotom-fan in legends-arceus
  (479, 47904, 35, 'A form in which Rotom lurks within a mysterious contraption. The contraption’s purpose is unknown. A bothersome Pokémon, causing trouble by stirring up powerful winds.'),
  -- rotom-mow in legends-arceus
  (479, 47905, 35, 'A form in which Rotom lurks within a misshapen wheelbarrow. The wheelbarrow’s mechanisms are bizarre. It’s a bothersome Pokémon, causing trouble by mowing down grass and trees.'),
  -- uxie in legends-arceus
  (480, 48000, 35, 'A Pokémon feared but also respected for stealing away the memories of evildoers. I have found records that suggest Uxie holds dominion over knowledge.'),
  -- mesprit in legends-arceus
  (481, 48100, 35, 'Known as the Being of Emotion. In legend, this Pokémon was feared, as any who showed disrespect would have their emotions thrown into disarray.'),
  -- azelf in legends-arceus
  (482, 48200, 35, 'The dreaded Being of Willpower. Legends tell of this Pokémon manipulating the will of its adversaries and turning them into puppets of its own.'),
  -- dialga in legends-arceus
  (483, 48300, 35, 'This Pokémon is revered as a deity in Hisuian legend. The birth of Dialga was what caused the vast river of time to begin flowing in our world.'),
  -- dialga-origin in legends-arceus
  (483, 48301, 35, 'Radiant light caused Dialga to take on a form bearing a striking resemblance to the creator Pokémon. Dialga now wields such colossal strength that one must conclude this is its true form.'),
  -- palkia in legends-arceus
  (484, 48400, 35, 'This Pokémon is feared as a deity in Hisuian legend. The birth of Palkia was what caused the walls of our world to disappear, creating a sky that spans for infinity.'),
  -- palkia-origin in legends-arceus
  (484, 48401, 35, 'It soars across the sky in a form that greatly resembles the creator of all things. Perhaps this imitation of appearance is Palkia’s strategy for gaining Arceus’s powers.'),
  -- heatran in legends-arceus
  (485, 48500, 35, 'Stories tell of this Pokémon being birthed from the boiling magma within Mount Coronet. Its molten-steel body holds many mysteries.'),
  -- regigigas in legends-arceus
  (486, 48600, 35, 'According to legend, Regigigas pulled landmasses together and bound them with rope to create the continent of Hisui. Though I have my doubts, the story could well contain a shred of truth.'),
  -- giratina in legends-arceus
  (487, 48700, 35, 'There is one Hisuian verse that tells of a powerful light creating a deep shadow. I imagine that this deep shadow is Giratina.'),
  -- giratina-origin in legends-arceus
  (487, 48701, 35, 'Giratina loses its legs upon changing into this form. I believe this Pokémon must hail from a world where the heavens and the earth are as one, though I have no way of proving it.'),
  -- cresselia in legends-arceus
  (488, 48800, 35, 'Cresselia is reminiscent of the crescent moon. It leaves a brilliant line of light in its wake as it flies across the night sky. I daresay it resembles the heavenly maiden who created the Milky Way.'),
  -- phione in legends-arceus
  (489, 48900, 35, 'Can be seen floating offshore during seasons when the seas are warm. Its azure body blends in with the ocean waters—logic suggests this is a defense mechanism against natural predators.'),
  -- manaphy in legends-arceus
  (490, 49000, 35, 'Rumored to migrate across the oceans and visit Hisui’s coastal waters only rarely. Although Manaphy resembles Phione, it is also quite different. The relation between the two is unclear.'),
  -- darkrai in legends-arceus
  (491, 49100, 35, 'On a moonless night, a strange incident occurred in which every one of a village’s inhabitants suffered nightmares. The villagers attested that Darkrai appeared before them in these nightmares.'),
  -- shaymin in legends-arceus
  (492, 49200, 35, 'When the turning of seasons brings the cruel winter to its end and the joyous people give thanks to the heavens, Shaymin appears and covers the withered land with flowers.'),
  -- shaymin-sky in legends-arceus
  (492, 49201, 35, 'Upon taking in the scent of a particular rare flower, Shaymin is enveloped in light, and its tiny body transforms. I took a whiff of the flower myself, but alas, my body remained unchanged.'),
  -- arceus in legends-arceus
  (493, 49300, 35, 'It is the heavenly fount from which pours the light that shines across Hisui. Its luminance guides and protects all Pokémon. Hisuian mythology states that Arceus is the creator of all things.'),
  -- oshawott in legends-arceus
  (501, 50100, 35, 'This Pokémon from the Unova region uses the shell on its belly as a weapon to cut down its foes. Thus, I’ve conferred upon this shell the name ”scalchop”.'),
  -- dewott in legends-arceus
  (502, 50200, 35, 'Its exquisite double-scalchop technique is likely the result of daily training, and it can send even masters of the blade fleeing in defeat.'),
  -- samurott in legends-arceus
  (503, 50300, 35, 'Hard of heart and deft of blade, this rare form of Samurott is a product of the Pokémon’s evolution in the region of Hisui. Its turbulent blows crash into foes like ceaseless pounding waves.'),
  -- petilil in legends-arceus
  (548, 54800, 35, 'The leaves on its head are highly valued for medicinal purposes. Dry the leaves in the sun, boil them, and then drink the bitter decoction for remarkably effective relief from fatigue.'),
  -- lilligant in legends-arceus
  (549, 54900, 35, 'I suspect that its well-developed legs are the result of a life spent on mountains covered in deep snow. The scent it exudes from its flower crown heartens those in proximity.'),
  -- basculin in legends-arceus
  (550, 55000, 35, 'Though it differs from other Basculin in several respects, including demeanor—this one is gentle—I have categorized it as a regional form given the vast array of shared qualities.'),
  -- basculin-white-striped in legends-arceus
  (550, 55002, 35, 'Though it differs from other Basculin in several respects, including demeanor—this one is gentle—I have categorized it as a regional form given the vast array of shared qualities.'),
  -- zorua in legends-arceus
  (570, 57000, 35, 'A once-departed soul, returned to life in Hisui. Derives power from resentment, which rises as energy atop its head and takes on the forms of foes. In this way, Zorua vents lingering malice.'),
  -- zoroark in legends-arceus
  (571, 57100, 35, 'With its disheveled white fur, it looks like an embodiment of death. Heedless of its own safety, Zoroark attacks its nemeses with a bitter energy so intense, it lacerates Zoroark’s own body.'),
  -- rufflet in legends-arceus
  (627, 62700, 35, 'Its chick-like looks belie its hotheadedness. It challenges its parents at every opportunity, desperate to prove its strength.'),
  -- braviary in legends-arceus
  (628, 62800, 35, 'Screaming a bloodcurdling battle cry, this huge and ferocious bird Pokémon goes out on the hunt. It blasts lakes with shock waves, then scoops up any prey that float to the water’s surface.'),
  -- tornadus in legends-arceus
  (641, 64100, 35, 'This storm-stirring Pokémon is said to cause the seasons to turn by whipping up the air. I suspect its humanlike form to be a false one.'),
  -- tornadus-therian in legends-arceus
  (641, 64101, 35, 'An example of what is known as a “form change,” though I suspect this strange avian guise to be Tornadus’s true form. Tornadus has been sighted crossing the ocean while in this form.'),
  -- thundurus in legends-arceus
  (642, 64200, 35, 'They say this wielder of electricity has waged war with its nemesis, Tornadus, since time immemorial. The lightning bolts it hurls pierce the very earth and enrich the soil.'),
  -- thundurus-therian in legends-arceus
  (642, 64201, 35, 'Quick as a flash, it materializes out of nowhere. It pulverizes foes into nothingness with showers of devastatingly powerful lightning bolts launched from the string of orbs on its tail.'),
  -- landorus in legends-arceus
  (645, 64500, 35, 'When the incarnations of wind and of lightning clash, Landorus arrives to quell the conflict. After the tempests and thunderbolts abate, the land is sure to be blessed with bountiful harvests.'),
  -- landorus-therian in legends-arceus
  (645, 64501, 35, 'Landorus soars through the sky in this form, bestowing plentiful harvests upon the land and earning the people’s reverence. It can traverse the whole of Hisui in a mere couple of hours.'),
  -- sylveon in legends-arceus
  (700, 70000, 35, 'It emits a soothing aura from its ribbon-shaped organs. It wraps these appendages around quarrelers to instantly restore calm to the situation.'),
  -- goomy in legends-arceus
  (704, 70400, 35, 'Goomy hides away in the shade of trees, where it’s nice and humid. If the slime coating its body dries out, the Pokémon instantly becomes lethargic.'),
  -- sliggoo in legends-arceus
  (705, 70500, 35, 'A creature given to melancholy. I suspect its metallic shell developed as a result of the mucus on its skin reacting with the iron in Hisui’s water.'),
  -- hisuian-sliggoo in legends-arceus
  (705, 70501, 35, 'A creature given to melancholy. I suspect its metallic shell developed as a result of the mucus on its skin reacting with the iron in Hisui’s water.'),
  -- goodra in legends-arceus
  (706, 70600, 35, 'Able to freely control the hardness of its metallic shell. It loathes solitude and is extremely clingy—it will fume and run riot if those dearest to it ever leave its side.'),
  -- hisuian-goodra in legends-arceus
  (706, 70601, 35, 'Able to freely control the hardness of its metallic shell. It loathes solitude and is extremely clingy—it will fume and run riot if those dearest to it ever leave its side.'),
  -- bergmite in legends-arceus
  (712, 71200, 35, 'Lives on mountains blanketed in perennial snow. It freezes water vapor in the air to make the ice helmet that it dons for defense.'),
  -- avalugg in legends-arceus
  (713, 71300, 35, 'The armor of ice covering its lower jaw puts steel to shame and can shatter rocks with ease. This Pokémon barrels along steep mountain paths, cleaving through the deep snow.'),
  -- hisuian-avalugg in legends-arceus
  (713, 71301, 35, 'The armor of ice covering its lower jaw puts steel to shame and can shatter rocks with ease. This Pokémon barrels along steep mountain paths, cleaving through the deep snow.'),
  -- rowlet in legends-arceus
  (722, 72200, 35, 'Flies noiselessly on delicate wings. It has mastered the art of deftly launching dagger-sharp feathers from those same wings.'),
  -- dartrix in legends-arceus
  (723, 72300, 35, 'Regularly basks in sunlight to gather power—presumably due to the frigid climate. Nonetheless, the edges of the blade quills set into its wings are keen as ever.'),
  -- decidueye in legends-arceus
  (724, 72400, 35, 'The air stored inside the rachises of Decidueye’s feathers insulates the Pokémon against Hisui’s extreme cold. This is firm proof that evolution can be influenced by environment.'),
  -- wyrdeer in legends-arceus
  (899, 89900, 35, 'The black orbs shine with an uncanny light when the Pokémon is erecting invisible barriers. The fur shed from its beard retains heat well and is a highly useful material for winter clothing.'),
  -- kleavor in legends-arceus
  (900, 90000, 35, 'A violent creature that fells towering trees with its crude axes and shields itself with hard stone. If one should chance upon this Pokémon in the wilds, one’s only recourse is to flee.'),
  -- ursaluna in legends-arceus
  (901, 90100, 35, 'I believe it was Hisui’s swampy terrain that gave Ursaluna its burly physique and newfound capacity to manipulate peat at will.'),
  -- basculegion in legends-arceus
  (902, 90200, 35, 'Clads itself in the souls of comrades that perished before fulfilling their goals of journeying upstream. No other species throughout all Hisui’s rivers is Basculegion’s equal.'),
  -- sneasler in legends-arceus
  (903, 90300, 35, 'Because of Sneasler’s virulent poison and daunting physical prowess, no other species could hope to best it on the frozen highlands. Preferring solitude, this species does not form packs.'),
  -- overqwil in legends-arceus
  (904, 90400, 35, 'Its lancelike spikes and savage temperament have earned it the nickname ”sea fiend.” It slurps up poison to nourish itself.'),
  -- enamorus in legends-arceus
  (905, 90500, 35, 'When it flies to this land from across the sea, the bitter winter comes to an end. According to legend, this Pokémon’s love gives rise to the budding of fresh life across Hisui.'),
  -- enamorus-therian in legends-arceus
  (905, 90501, 35, 'A different guise from its feminine humanoid form. From the clouds, it descends upon those who treat any form of life with disrespect and metes out wrathful, ruthless punishment.');
