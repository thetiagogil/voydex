-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 3 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in ruby
  (1, 100, 7, 'BULBASAUR can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.'),
  -- ivysaur in ruby
  (2, 200, 7, 'There is a bud on this POKéMON’s back. To support its weight, IVYSAUR’s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it’s a sign that the bud will bloom into a large flower soon.'),
  -- venusaur in ruby
  (3, 300, 7, 'There is a large flower on VENUSAUR’s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower’s aroma soothes the emotions of people.'),
  -- charmander in ruby
  (4, 400, 7, 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when CHARMANDER is enjoying itself. If the POKéMON becomes enraged, the flame burns fiercely.'),
  -- charmeleon in ruby
  (5, 500, 7, 'CHARMELEON mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.'),
  -- charizard in ruby
  (6, 600, 7, 'CHARIZARD flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.'),
  -- squirtle in ruby
  (7, 700, 7, 'SQUIRTLE’s shell is not merely used for protection. The shell’s rounded shape and the grooves on its surface help minimize resistance in water, enabling this POKéMON to swim at high speeds.'),
  -- wartortle in ruby
  (8, 800, 7, 'Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as WARTORTLE ages. The scratches on its shell are evidence of this POKéMON’s toughness as a battler.'),
  -- blastoise in ruby
  (9, 900, 7, 'BLASTOISE has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.'),
  -- caterpie in ruby
  (10, 1000, 7, 'CATERPIE has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this POKéMON releases a terrifically strong odor.'),
  -- metapod in ruby
  (11, 1100, 7, 'The shell covering this POKéMON’s body is as hard as an iron slab. METAPOD does not move very much. It stays still because it is preparing its soft innards for evolution inside the hard shell.'),
  -- butterfree in ruby
  (12, 1200, 7, 'BUTTERFREE has a superior ability to search for delicious honey from flowers. It can even search out, extract, and carry honey from flowers that are blooming over six miles from its nest.'),
  -- weedle in ruby
  (13, 1300, 7, 'WEEDLE has an extremely acute sense of smell. It is capable of distinguishing its favorite kinds of leaves from those it dislikes just by sniffing with its big red proboscis (nose).'),
  -- kakuna in ruby
  (14, 1400, 7, 'KAKUNA remains virtually immobile as it clings to a tree. However, on the inside, it is extremely busy as it prepares for its coming evolution. This is evident from how hot the shell becomes to the touch.'),
  -- beedrill in ruby
  (15, 1500, 7, 'BEEDRILL is extremely territorial. No one should ever approach its nest - this is for their own safety. If angered, they will attack in a furious swarm.'),
  -- pidgey in ruby
  (16, 1600, 7, 'PIDGEY has an extremely sharp sense of direction. It is capable of unerringly returning home to its nest, however far it may be removed from its familiar surroundings.'),
  -- pidgeotto in ruby
  (17, 1700, 7, 'PIDGEOTTO claims a large area as its own territory. This POKéMON flies around, patrolling its living space. If its territory is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.'),
  -- pidgeot in ruby
  (18, 1800, 7, 'This POKéMON has a dazzling plumage of beautifully glossy feathers. Many TRAINERS are captivated by the striking beauty of the feathers on its head, compelling them to choose PIDGEOT as their POKéMON.'),
  -- rattata in ruby
  (19, 1900, 7, 'RATTATA is cautious in the extreme. Even while it is asleep, it constantly listens by moving its ears around. It is not picky about where it lives - it will make its nest anywhere.'),
  -- raticate in ruby
  (20, 2000, 7, 'RATICATE’s sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses.'),
  -- spearow in ruby
  (21, 2100, 7, 'SPEAROW has a very loud cry that can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger.'),
  -- fearow in ruby
  (22, 2200, 7, 'FEAROW is recognized by its long neck and elongated beak. They are conveniently shaped for catching prey in soil or water. It deftly moves its long and skinny beak to pluck prey.'),
  -- ekans in ruby
  (23, 2300, 7, 'EKANS curls itself up in a spiral while it rests. Assuming this position allows it to quickly respond to a threat from any direction with a glare from its upraised head.'),
  -- arbok in ruby
  (24, 2400, 7, 'This POKéMON is terrifically strong in order to constrict things with its body. It can even flatten steel oil drums. Once ARBOK wraps its body around its foe, escaping its crunching embrace is impossible.'),
  -- pikachu in ruby
  (25, 2500, 7, 'Whenever PIKACHU comes across something new, it blasts it with a jolt of electricity. If you come across a blackened berry, it’s evidence that this POKéMON mistook the intensity of its charge.'),
  -- raichu in ruby
  (26, 2600, 7, 'If the electrical sacks become excessively charged, RAICHU plants its tail in the ground and discharges. Scorched patches of ground will be found near this POKéMON’s nest.'),
  -- sandshrew in ruby
  (27, 2700, 7, 'SANDSHREW’s body is configured to absorb water without waste, enabling it to survive in an arid desert. This POKéMON curls up to protect itself from its enemies.'),
  -- sandslash in ruby
  (28, 2800, 7, 'SANDSLASH’s body is covered by tough spikes, which are hardened sections of its hide. Once a year, the old spikes fall out, to be replaced with new spikes that grow out from beneath the old ones.'),
  -- nidoran-f in ruby
  (29, 2900, 7, 'NIDORAN has barbs that secrete a powerful poison. They are thought to have developed as protection for this small-bodied POKéMON. When enraged, it releases a horrible toxin from its horn.'),
  -- nidorina in ruby
  (30, 3000, 7, 'When NIDORINA are with their friends or family, they keep their barbs tucked away to prevent hurting each other. This POKéMON appears to become nervous if separated from the others.'),
  -- nidoqueen in ruby
  (31, 3100, 7, 'NIDOQUEEN’s body is encased in extremely hard scales. It is adept at sending foes flying with harsh tackles. This POKéMON is at its strongest when it is defending its young.'),
  -- nidoran-m in ruby
  (32, 3200, 7, 'The male NIDORAN has developed muscles for moving its ears. Thanks to them, the ears can be freely moved in any direction. Even the slightest sound does not escape this POKéMON’s notice.'),
  -- nidorino in ruby
  (33, 3300, 7, 'NIDORINO has a horn that is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.'),
  -- nidoking in ruby
  (34, 3400, 7, 'NIDOKING’s thick tail packs enormously destructive power. With one swing, it can topple a metal transmission tower. Once this POKéMON goes on a rampage, there is no stopping it.'),
  -- clefairy in ruby
  (35, 3500, 7, 'On every night of a full moon, groups of this POKéMON come out to play. When dawn arrives, the tired CLEFAIRY return to their quiet mountain retreats and go to sleep nestled up against each other.'),
  -- clefable in ruby
  (36, 3600, 7, 'CLEFABLE moves by skipping lightly as if it were flying using its wings. Its bouncy step lets it even walk on water. It is known to take strolls on lakes on quiet, moonlit nights.'),
  -- vulpix in ruby
  (37, 3700, 7, 'At the time of its birth, VULPIX has one white tail. The tail separates into six if this POKéMON receives plenty of love from its TRAINER. The six tails become magnificently curled.'),
  -- ninetales in ruby
  (38, 3800, 7, 'NINETALES casts a sinister light from its bright red eyes to gain total control over its foe’s mind. This POKéMON is said to live for a thousand years.'),
  -- jigglypuff in ruby
  (39, 3900, 7, 'JIGGLYPUFF’s vocal chords can freely adjust the wavelength of its voice. This POKéMON uses this ability to sing at precisely the right wavelength to make its foes most drowsy.'),
  -- wigglytuff in ruby
  (40, 4000, 7, 'WIGGLYTUFF has large, saucerlike eyes. The surfaces of its eyes are always covered with a thin layer of tears. If any dust gets in this POKéMON’s eyes, it is quickly washed away.'),
  -- zubat in ruby
  (41, 4100, 7, 'ZUBAT remains quietly unmoving in a dark spot during the bright daylight hours. It does so because prolonged exposure to the sun causes its body to become slightly burned.'),
  -- golbat in ruby
  (42, 4200, 7, 'GOLBAT loves to drink the blood of living things. It is particularly active in the pitch black of night. This POKéMON flits around in the night skies, seeking fresh blood.'),
  -- oddish in ruby
  (43, 4300, 7, 'During the daytime, ODDISH buries itself in soil to absorb nutrients from the ground using its entire body. The more fertile the soil, the glossier its leaves become.'),
  -- gloom in ruby
  (44, 4400, 7, 'GLOOM releases a foul fragrance from the pistil of its flower. When faced with danger, the stench worsens. If this POKéMON is feeling calm and secure, it does not release its usual stinky aroma.'),
  -- vileplume in ruby
  (45, 4500, 7, 'VILEPLUME’s toxic pollen triggers atrocious allergy attacks. That’s why it is advisable never to approach any attractive flowers in a jungle, however pretty they may be.'),
  -- paras in ruby
  (46, 4600, 7, 'PARAS has parasitic mushrooms growing on its back called tochukaso. They grow large by drawing nutrients from the BUG POKéMON host. They are highly valued as a medicine for extending life.'),
  -- parasect in ruby
  (47, 4700, 7, 'PARASECT is known to infest large trees en masse and drain nutrients from the lower trunk and roots. When an infested tree dies, they move onto another tree all at once.'),
  -- venonat in ruby
  (48, 4800, 7, 'VENONAT is said to have evolved with a coat of thin, stiff hair that covers its entire body for protection. It possesses large eyes that never fail to spot even miniscule prey.'),
  -- venomoth in ruby
  (49, 4900, 7, 'VENOMOTH is nocturnal - it is a POKéMON that only becomes active at night. Its favorite prey are small insects that gather around streetlights, attracted by the light in the darkness.'),
  -- diglett in ruby
  (50, 5000, 7, 'DIGLETT are raised in most farms. The reason is simple - wherever this POKéMON burrows, the soil is left perfectly tilled for planting crops. This soil is made ideal for growing delicious vegetables.'),
  -- dugtrio in ruby
  (51, 5100, 7, 'DUGTRIO are actually triplets that emerged from one body. As a result, each triplet thinks exactly like the other two triplets. They work cooperatively to burrow endlessly.'),
  -- meowth in ruby
  (52, 5200, 7, 'MEOWTH withdraws its sharp claws into its paws to slinkily sneak about without making any incriminating footsteps. For some reason, this POKéMON loves shiny coins that glitter with light.'),
  -- persian in ruby
  (53, 5300, 7, 'PERSIAN has six bold whiskers that give it a look of toughness. The whiskers sense air movements to determine what is in the POKéMON’s surrounding vicinity. It becomes docile if grabbed by the whiskers.'),
  -- psyduck in ruby
  (54, 5400, 7, 'PSYDUCK uses a mysterious power. When it does so, this POKéMON generates brain waves that are supposedly only seen in sleepers. This discovery spurred controversy among scholars.'),
  -- golduck in ruby
  (55, 5500, 7, 'The webbed flippers on its forelegs and hind legs and the streamlined body of GOLDUCK give it frightening speed. This POKéMON is definitely much faster than even the most athletic swimmer.'),
  -- mankey in ruby
  (56, 5600, 7, 'When MANKEY starts shaking and its nasal breathing turns rough, it’s a sure sign that it is becoming angry. However, because it goes into a towering rage almost instantly, it is impossible for anyone to flee its wrath.'),
  -- primeape in ruby
  (57, 5700, 7, 'When PRIMEAPE becomes furious, its blood circulation is boosted. In turn, its muscles are made even stronger. However, it also becomes much less intelligent at the same time.'),
  -- growlithe in ruby
  (58, 5800, 7, 'GROWLITHE has a superb sense of smell. Once it smells anything, this POKéMON won’t forget the scent, no matter what. It uses its advanced olfactory sense to determine the emotions of other living things.'),
  -- arcanine in ruby
  (59, 5900, 7, 'ARCANINE is known for its high speed. It is said to be capable of running over 6,200 miles in a single day and night. The fire that blazes wildly within this POKéMON’s body is its source of power.'),
  -- poliwag in ruby
  (60, 6000, 7, 'POLIWAG has a very thin skin. It is possible to see the POKéMON’s spiral innards right through the skin. Despite its thinness, however, the skin is also very flexible. Even sharp fangs bounce right off it.'),
  -- poliwhirl in ruby
  (61, 6100, 7, 'The surface of POLIWHIRL’s body is always wet and slick with an oily fluid. Because of this greasy covering, it can easily slip and slide out of the clutches of any enemy in battle.'),
  -- poliwrath in ruby
  (62, 6200, 7, 'POLIWRATH’s highly developed, brawny muscles never grow fatigued, however much it exercises. It is so tirelessly strong, this POKéMON can swim back and forth across the Pacific Ocean without effort.'),
  -- abra in ruby
  (63, 6300, 7, 'ABRA sleeps for eighteen hours a day. However, it can sense the presence of foes even while it is sleeping. In such a situation, this POKéMON immediately teleports to safety.'),
  -- kadabra in ruby
  (64, 6400, 7, 'KADABRA emits a peculiar alpha wave if it develops a headache. Only those people with a particularly strong psyche can hope to become a TRAINER of this POKéMON.'),
  -- alakazam in ruby
  (65, 6500, 7, 'ALAKAZAM’s brain continually grows, making its head far too heavy to support with its neck. This POKéMON holds its head up using its psychokinetic power instead.'),
  -- machop in ruby
  (66, 6600, 7, 'MACHOP’s muscles are special - they never get sore no matter how much they are used in exercise. This POKéMON has sufficient power to hurl a hundred adult humans.'),
  -- machoke in ruby
  (67, 6700, 7, 'MACHOKE’s thoroughly toned muscles possess the hardness of steel. This POKéMON has so much strength, it can easily hold aloft a sumo wrestler on just one finger.'),
  -- machamp in ruby
  (68, 6800, 7, 'MACHAMP has the power to hurl anything aside. However, trying to do any work requiring care and dexterity causes its arms to get tangled. This POKéMON tends to leap into action before it thinks.'),
  -- bellsprout in ruby
  (69, 6900, 7, 'BELLSPROUT’s thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, this POKéMON spits a corrosive fluid that melts even iron.'),
  -- weepinbell in ruby
  (70, 7000, 7, 'WEEPINBELL has a large hook on its rear end. At night, the POKéMON hooks on to a tree branch and goes to sleep. If it moves around in its sleep, it may wake up to find itself on the ground.'),
  -- victreebel in ruby
  (71, 7100, 7, 'VICTREEBEL has a long vine that extends from its head. This vine is waved and flicked about as if it were an animal to attract prey. When an unsuspecting prey draws near, this POKéMON swallows it whole.'),
  -- tentacool in ruby
  (72, 7200, 7, 'TENTACOOL’s body is largely composed of water. If it is removed from the sea, it dries up like parchment. If this POKéMON happens to become dehydrated, put it back into the sea.'),
  -- tentacruel in ruby
  (73, 7300, 7, 'TENTACRUEL has large red orbs on its head. The orbs glow before lashing the vicinity with a harsh ultrasonic blast. This POKéMON’s outburst creates rough waves around it.'),
  -- geodude in ruby
  (74, 7400, 7, 'The longer a GEODUDE lives, the more its edges are chipped and worn away, making it more rounded in appearance. However, this POKéMON’s heart will remain hard, craggy, and rough always.'),
  -- graveler in ruby
  (75, 7500, 7, 'GRAVELER grows by feeding on rocks. Apparently, it prefers to eat rocks that are covered in moss. This POKéMON eats its way through a ton of rocks on a daily basis.'),
  -- golem in ruby
  (76, 7600, 7, 'GOLEM live up on mountains. If there is a large earthquake, these POKéMON will come rolling down off the mountains en masse to the foothills below.'),
  -- ponyta in ruby
  (77, 7700, 7, 'PONYTA is very weak at birth. It can barely stand up. This POKéMON becomes stronger by stumbling and falling to keep up with its parent.'),
  -- rapidash in ruby
  (78, 7800, 7, 'RAPIDASH usually can be seen casually cantering in the fields and plains. However, when this POKéMON turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.'),
  -- slowpoke in ruby
  (79, 7900, 7, 'SLOWPOKE uses its tail to catch prey by dipping it in water at the side of a river. However, this POKéMON often forgets what it’s doing and often spends entire days just loafing at water’s edge.'),
  -- slowbro in ruby
  (80, 8000, 7, 'SLOWBRO’s tail has a SHELLDER firmly attached with a bite. As a result, the tail can’t be used for fishing anymore. This causes SLOWBRO to grudgingly swim and catch prey instead.'),
  -- magnemite in ruby
  (81, 8100, 7, 'MAGNEMITE attaches itself to power lines to feed on electricity. If your house has a power outage, check your circuit breakers. You may find a large number of this POKéMON clinging to the breaker box.'),
  -- magneton in ruby
  (82, 8200, 7, 'MAGNETON emits a powerful magnetic force that is fatal to mechanical devices. As a result, large cities sound sirens to warn citizens of large-scale outbreaks of this POKéMON.'),
  -- farfetchd in ruby
  (83, 8300, 7, 'FARFETCH’D is always seen with a stick from a plant of some sort. Apparently, there are good sticks and bad sticks. This POKéMON has been known to fight with others over sticks.'),
  -- doduo in ruby
  (84, 8400, 7, 'DODUO’s two heads never sleep at the same time. Its two heads take turns sleeping, so one head can always keep watch for enemies while the other one sleeps.'),
  -- dodrio in ruby
  (85, 8500, 7, 'Watch out if DODRIO’s three heads are looking in three separate directions. It’s a sure sign that it is on its guard. Don’t go near this POKéMON if it’s being wary - it may decide to peck you.'),
  -- seel in ruby
  (86, 8600, 7, 'SEEL hunts for prey in the frigid sea underneath sheets of ice. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head.'),
  -- dewgong in ruby
  (87, 8700, 7, 'DEWGONG loves to snooze on bitterly cold ice. The sight of this POKéMON sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.'),
  -- grimer in ruby
  (88, 8800, 7, 'GRIMER’s sludgy and rubbery body can be forced through any opening, however small it may be. This POKéMON enters sewer pipes to drink filthy wastewater.'),
  -- muk in ruby
  (89, 8900, 7, 'From MUK’s body seeps a foul fluid that gives off a nose-bendingly horrible stench. Just one drop of this POKéMON’s body fluid can turn a pool stagnant and rancid.'),
  -- shellder in ruby
  (90, 9000, 7, 'At night, this POKéMON uses its broad tongue to burrow a hole in the seafloor sand and then sleep in it. While it is sleeping, SHELLDER closes its shell, but leaves its tongue hanging out.'),
  -- cloyster in ruby
  (91, 9100, 7, 'CLOYSTER is capable of swimming in the sea. It does so by swallowing water, then jetting it out toward the rear. This POKéMON shoots spikes from its shell using the same system.'),
  -- gastly in ruby
  (92, 9200, 7, 'GASTLY is largely composed of gaseous matter. When exposed to a strong wind, the gaseous body quickly dwindles away. Groups of this POKéMON cluster under the eaves of houses to escape the ravages of wind.'),
  -- haunter in ruby
  (93, 9300, 7, 'HAUNTER is a dangerous POKéMON. If one beckons you while floating in darkness, you must never approach it. This POKéMON will try to lick you with its tongue and steal your life away.'),
  -- gengar in ruby
  (94, 9400, 7, 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a GENGAR running past you, pretending to be your shadow.'),
  -- onix in ruby
  (95, 9500, 7, 'ONIX has a magnet in its brain. It acts as a compass so that this POKéMON does not lose direction while it is tunneling. As it grows older, its body becomes increasingly rounder and smoother.'),
  -- drowzee in ruby
  (96, 9600, 7, 'If your nose becomes itchy while you are sleeping, it’s a sure sign that one of these POKéMON is standing above your pillow and trying to eat your dream through your nostrils.'),
  -- hypno in ruby
  (97, 9700, 7, 'HYPNO holds a pendulum in its hand. The arcing movement and glitter of the pendulum lull the foe into a deep state of hypnosis. While this POKéMON searches for prey, it polishes the pendulum.'),
  -- krabby in ruby
  (98, 9800, 7, 'KRABBY live on beaches, burrowed inside holes dug into the sand. On sandy beaches with little in the way of food, these POKéMON can be seen squabbling with each other over territory.'),
  -- kingler in ruby
  (99, 9900, 7, 'KINGLER has an enormous, oversized claw. It waves this huge claw in the air to communicate with others. However, because the claw is so heavy, the POKéMON quickly tires.'),
  -- voltorb in ruby
  (100, 10000, 7, 'VOLTORB was first sighted at a company that manufactures POKé BALLS. The link between that sighting and the fact that this POKéMON looks very similar to a POKé BALL remains a mystery.'),
  -- electrode in ruby
  (101, 10100, 7, 'ELECTRODE eats electricity in the atmosphere. On days when lightning strikes, you can see this POKéMON exploding all over the place from eating too much electricity.'),
  -- exeggcute in ruby
  (102, 10200, 7, 'This POKéMON consists of six eggs that form a closely knit cluster. The six eggs attract each other and spin around. When cracks increasingly appear on the eggs, EXEGGCUTE is close to evolution.'),
  -- exeggutor in ruby
  (103, 10300, 7, 'EXEGGUTOR originally came from the tropics. Its heads steadily grow larger from exposure to strong sunlight. It is said that when the heads fall off, they group together to form EXEGGCUTE.'),
  -- cubone in ruby
  (104, 10400, 7, 'CUBONE pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull the POKéMON wears are made by the tears it sheds.'),
  -- marowak in ruby
  (105, 10500, 7, 'MAROWAK is the evolved form of a CUBONE that has overcome its sadness at the loss of its mother and grown tough. This POKéMON’s tempered and hardened spirit is not easily broken.'),
  -- hitmonlee in ruby
  (106, 10600, 7, 'HITMONLEE’s legs freely contract and stretch. Using these springlike legs, it bowls over foes with devastating kicks. After battle, it rubs down its legs and loosens the muscles to overcome fatigue.'),
  -- hitmonchan in ruby
  (107, 10700, 7, 'HITMONCHAN is said to possess the spirit of a boxer who had been working towards a world championship. This POKéMON has an indomitable spirit and will never give up in the face of adversity.'),
  -- lickitung in ruby
  (108, 10800, 7, 'Whenever LICKITUNG comes across something new, it will unfailingly give it a lick. It does so because it memorizes things by texture and by taste. It is somewhat put off by sour things.'),
  -- koffing in ruby
  (109, 10900, 7, 'If KOFFING becomes agitated, it raises the toxicity of its internal gases and jets them out from all over its body. This POKéMON may also overinflate its round body, then explode.'),
  -- weezing in ruby
  (110, 11000, 7, 'WEEZING loves the gases given off by rotted kitchen garbage. This POKéMON will find a dirty, unkempt house and make it its home. At night, when the people in the house are asleep, it will go through the trash.'),
  -- rhyhorn in ruby
  (111, 11100, 7, 'RHYHORN runs in a straight line, smashing everything in its path. It is not bothered even if it rushes headlong into a block of steel. This POKéMON may feel some pain from the collision the next day, however.'),
  -- rhydon in ruby
  (112, 11200, 7, 'RHYDON’s horn can crush even uncut diamonds. One sweeping blow of its tail can topple a building. This POKéMON’s hide is extremely tough. Even direct cannon hits don’t leave a scratch.'),
  -- chansey in ruby
  (113, 11300, 7, 'CHANSEY lays nutritionally excellent eggs on an everyday basis. The eggs are so delicious, they are easily and eagerly devoured by even those people who have lost their appetite.'),
  -- tangela in ruby
  (114, 11400, 7, 'TANGELA’s vines snap off easily if they are grabbed. This happens without pain, allowing it to make a quick getaway. The lost vines are replaced by newly grown vines the very next day.'),
  -- kangaskhan in ruby
  (115, 11500, 7, 'If you come across a young KANGASKHAN playing by itself, you must never disturb it or attempt to catch it. The baby POKéMON’s parent is sure to be in the area, and it will become violently enraged at you.'),
  -- horsea in ruby
  (116, 11600, 7, 'HORSEA eats small insects and moss off of rocks. If the ocean current turns fast, this POKéMON anchors itself by wrapping its tail around rocks or coral to prevent being washed away.'),
  -- seadra in ruby
  (117, 11700, 7, 'SEADRA sleeps after wriggling itself between the branches of coral. Those trying to harvest coral are occasionally stung by this POKéMON’s poison barbs if they fail to notice it.'),
  -- goldeen in ruby
  (118, 11800, 7, 'GOLDEEN is a very beautiful POKéMON with fins that billow elegantly in water. However, don’t let your guard down around this POKéMON - it could ram you powerfully with its horn.'),
  -- seaking in ruby
  (119, 11900, 7, 'In the autumn, SEAKING males can be seen performing courtship dances in riverbeds to woo females. During this season, this POKéMON’s body coloration is at its most beautiful.'),
  -- staryu in ruby
  (120, 12000, 7, 'STARYU’s center section has an organ called the core that shines bright red. If you go to a beach toward the end of summer, the glowing cores of these POKéMON look like the stars in the sky.'),
  -- starmie in ruby
  (121, 12100, 7, 'STARMIE’s center section - the core - glows brightly in seven colors. Because of its luminous nature, this POKéMON has been given the nickname “the gem of the sea.”'),
  -- mr-mime in ruby
  (122, 12200, 7, 'MR. MIME is a master of pantomime. Its gestures and motions convince watchers that something unseeable actually exists. Once it is believed, it will exist as if it were a real thing.'),
  -- scyther in ruby
  (123, 12300, 7, 'SCYTHER is blindingly fast. Its blazing speed enhances the effectiveness of the twin scythes on its forearms. This POKéMON’s scythes are so effective, they can slice through thick logs in one wicked stroke.'),
  -- jynx in ruby
  (124, 12400, 7, 'JYNX walks rhythmically, swaying and shaking its hips as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without giving any thought to what they are doing.'),
  -- electabuzz in ruby
  (125, 12500, 7, 'When a storm arrives, gangs of this POKéMON compete with each other to scale heights that are likely to be stricken by lightning bolts. Some towns use ELECTABUZZ in place of lightning rods.'),
  -- magmar in ruby
  (126, 12600, 7, 'In battle, MAGMAR blows out intensely hot flames from all over its body to intimidate its opponent. This POKéMON’s fiery bursts create heat waves that ignite grass and trees in its surroundings.'),
  -- pinsir in ruby
  (127, 12700, 7, 'PINSIR is astoundingly strong. It can grip a foe weighing twice its weight in its horns and easily lift it. This POKéMON’s movements turn sluggish in cold places.'),
  -- tauros in ruby
  (128, 12800, 7, 'This POKéMON is not satisfied unless it is rampaging at all times. If there is no opponent for TAUROS to battle, it will charge at thick trees and knock them down to calm itself.'),
  -- magikarp in ruby
  (129, 12900, 7, 'MAGIKARP is a pathetic excuse for a POKéMON that is only capable of flopping and splashing. This behavior prompted scientists to undertake research into it.'),
  -- gyarados in ruby
  (130, 13000, 7, 'When MAGIKARP evolves into GYARADOS, its brain cells undergo a structural transformation. It is said that this transformation is to blame for this POKéMON’s wildly violent nature.'),
  -- lapras in ruby
  (131, 13100, 7, 'People have driven LAPRAS almost to the point of extinction. In the evenings, this POKéMON is said to sing plaintively as it seeks what few others of its kind still remain.'),
  -- ditto in ruby
  (132, 13200, 7, 'DITTO rearranges its cell structure to transform itself into other shapes. However, if it tries to transform itself into something by relying on its memory, this POKéMON manages to get details wrong.'),
  -- eevee in ruby
  (133, 13300, 7, 'EEVEE has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various STONES causes this POKéMON to evolve.'),
  -- vaporeon in ruby
  (134, 13400, 7, 'VAPOREON underwent a spontaneous mutation and grew fins and gills that allow it to live underwater. This POKéMON has the ability to freely control water.'),
  -- jolteon in ruby
  (135, 13500, 7, 'JOLTEON’s cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the POKéMON to drop thunderbolts. The bristling fur is made of electrically charged needles.'),
  -- flareon in ruby
  (136, 13600, 7, 'FLAREON’s fluffy fur has a functional purpose - it releases heat into the air so that its body does not get excessively hot. This POKéMON’s body temperature can rise to a maximum of 1,650 degrees F.'),
  -- porygon in ruby
  (137, 13700, 7, 'PORYGON is capable of reverting itself entirely back to program data and entering cyberspace. This POKéMON is copy-protected so it cannot be duplicated by copying.'),
  -- omanyte in ruby
  (138, 13800, 7, 'OMANYTE is one of the ancient and long- since-extinct POKéMON that have been regenerated from fossils by people. If attacked by an enemy, it withdraws itself inside its hard shell.'),
  -- omastar in ruby
  (139, 13900, 7, 'OMASTAR uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large and heavy, causing its movements to become too slow and ponderous.'),
  -- kabuto in ruby
  (140, 14000, 7, 'KABUTO is a POKéMON that has been regenerated from a fossil. However, in extremely rare cases, living examples have been discovered. The POKéMON has not changed at all for 300 million years.'),
  -- kabutops in ruby
  (141, 14100, 7, 'KABUTOPS swam underwater to hunt for its prey in ancient times. The POKéMON was apparently evolving from being a water-dweller to living on land as evident from the beginnings of change in its gills and legs.'),
  -- aerodactyl in ruby
  (142, 14200, 7, 'AERODACTYL is a POKéMON from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.'),
  -- snorlax in ruby
  (143, 14300, 7, 'SNORLAX’s typical day consists of nothing more than eating and sleeping. It is such a docile POKéMON that there are children who use its expansive belly as a place to play.'),
  -- articuno in ruby
  (144, 14400, 7, 'ARTICUNO is a legendary bird POKéMON that can control ice. The flapping of its wings chills the air. As a result, it is said that when this POKéMON flies, snow will fall.'),
  -- zapdos in ruby
  (145, 14500, 7, 'ZAPDOS is a legendary bird POKéMON that has the ability to control electricity. It usually lives in thunderclouds. The POKéMON gains power if it is stricken by lightning bolts.'),
  -- moltres in ruby
  (146, 14600, 7, 'MOLTRES is a legendary bird POKéMON that has the ability to control fire. If this POKéMON is injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.'),
  -- dratini in ruby
  (147, 14700, 7, 'DRATINI continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels.'),
  -- dragonair in ruby
  (148, 14800, 7, 'DRAGONAIR stores an enormous amount of energy inside its body. It is said to alter weather conditions in its vicinity by discharging energy from the crystals on its neck and tail.'),
  -- dragonite in ruby
  (149, 14900, 7, 'DRAGONITE is capable of circling the globe in just sixteen hours. It is a kindhearted POKéMON that leads lost and foundering ships in a storm to the safety of land.'),
  -- mewtwo in ruby
  (150, 15000, 7, 'MEWTWO is a POKéMON that was created by genetic manipulation. However, even though the scientific power of humans created this POKéMON’s body, they failed to endow MEWTWO with a compassionate heart.'),
  -- mew in ruby
  (151, 15100, 7, 'MEW is said to possess the genetic composition of all POKéMON. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people.'),
  -- chikorita in ruby
  (152, 15200, 7, 'In battle, CHIKORITA waves its leaf around to keep the foe at bay. However, a sweet fragrance also wafts from the leaf, becalming the battling POKéMON and creating a cozy, friendly atmosphere all around.'),
  -- bayleef in ruby
  (153, 15300, 7, 'BAYLEEF’s neck is ringed by curled-up leaves. Inside each tubular leaf is a small shoot of a tree. The fragrance of this shoot makes people peppy.'),
  -- meganium in ruby
  (154, 15400, 7, 'The fragrance of MEGANIUM’s flower soothes and calms emotions. In battle, this POKéMON gives off more of its becalming scent to blunt the foe’s fighting spirit.'),
  -- cyndaquil in ruby
  (155, 15500, 7, 'CYNDAQUIL protects itself by flaring up the flames on its back. The flames are vigorous if the POKéMON is angry. However, if it is tired, the flames splutter fitfully with incomplete combustion.'),
  -- quilava in ruby
  (156, 15600, 7, 'QUILAVA keeps its foes at bay with the intensity of its flames and gusts of superheated air. This POKéMON applies its outstanding nimbleness to dodge attacks even while scorching the foe with flames.'),
  -- typhlosion in ruby
  (157, 15700, 7, 'TYPHLOSION obscures itself behind a shimmering heat haze that it creates using its intensely hot flames. This POKéMON creates blazing explosive blasts that burn everything to cinders.'),
  -- totodile in ruby
  (158, 15800, 7, 'Despite the smallness of its body, TOTODILE’s jaws are very powerful. While the POKéMON may think it is just playfully nipping, its bite has enough power to cause serious injury.'),
  -- croconaw in ruby
  (159, 15900, 7, 'Once CROCONAW has clamped its jaws on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like barbed fishhooks, they become impossible to remove when they have sunk in.'),
  -- feraligatr in ruby
  (160, 16000, 7, 'FERALIGATR intimidates its foes by opening its huge mouth. In battle, it will kick the ground hard with its thick and powerful hind legs to charge at the foe at an incredible speed.'),
  -- sentret in ruby
  (161, 16100, 7, 'When SENTRET sleeps, it does so while another stands guard. The sentry wakes the others at the first sign of danger. When this POKéMON becomes separated from its pack, it becomes incapable of sleep due to fear.'),
  -- furret in ruby
  (162, 16200, 7, 'FURRET has a very slim build. When under attack, it can slickly squirm through narrow spaces and get away. In spite of its short limbs, this POKéMON is very nimble and fleet.'),
  -- hoothoot in ruby
  (163, 16300, 7, 'HOOTHOOT has an internal organ that senses and tracks the earth’s rotation. Using this special organ, this POKéMON begins hooting at precisely the same time every day.'),
  -- noctowl in ruby
  (164, 16400, 7, 'NOCTOWL never fails at catching prey in darkness. This POKéMON owes its success to its superior vision that allows it to see in minimal light, and to its soft, supple wings that make no sound in flight.'),
  -- ledyba in ruby
  (165, 16500, 7, 'LEDYBA secretes an aromatic fluid from where its legs join its body. This fluid is used for communicating with others. This POKéMON conveys its feelings to others by altering the fluid’s scent.'),
  -- ledian in ruby
  (166, 16600, 7, 'It is said that in lands with clean air, where the stars fill the sky, there live LEDIAN in countless numbers. There is a good reason for this - the POKéMON uses the light of the stars as its energy.'),
  -- spinarak in ruby
  (167, 16700, 7, 'The web spun by SPINARAK can be considered its second nervous system. It is said that this POKéMON can determine what kind of prey is touching its web just by the tiny vibrations it feels through the web’s strands.'),
  -- ariados in ruby
  (168, 16800, 7, 'ARIADOS’s feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. This POKéMON constricts the foe with thin and strong silk webbing.'),
  -- crobat in ruby
  (169, 16900, 7, 'If this POKéMON is flying by fluttering only a pair of wings on either the forelegs or hind legs, it’s proof that CROBAT has been flying a long distance. It switches the wings it uses if it is tired.'),
  -- chinchou in ruby
  (170, 17000, 7, 'CHINCHOU lets loose positive and negative electrical charges from its two antennas to make its prey faint. This POKéMON flashes its electric lights to exchange signals with others.'),
  -- lanturn in ruby
  (171, 17100, 7, 'LANTURN is nicknamed “the deep-sea star” for its illuminated antenna. This POKéMON produces light by causing a chemical reaction between bacteria and its bodily fluids inside the antenna.'),
  -- pichu in ruby
  (172, 17200, 7, 'PICHU charges itself with electricity more easily on days with thunderclouds or when the air is very dry. You can hear the crackling of static electricity coming off this POKéMON.'),
  -- cleffa in ruby
  (173, 17300, 7, 'On nights with many shooting stars, CLEFFA can be seen dancing in a ring. They dance through the night and stop only at the break of day, when these POKéMON quench their thirst with the morning dew.'),
  -- igglybuff in ruby
  (174, 17400, 7, 'IGGLYBUFF’s vocal chords are not sufficiently developed. It would hurt its throat if it were to sing too much. This POKéMON gargles with freshwater from a clean stream.'),
  -- togepi in ruby
  (175, 17500, 7, 'As its energy, TOGEPI uses the positive emotions of compassion and pleasure exuded by people and POKéMON. This POKéMON stores up feelings of happiness inside its shell, then shares them with others.'),
  -- togetic in ruby
  (176, 17600, 7, 'TOGETIC is said to be a POKéMON that brings good fortune. When the POKéMON spots someone who is pure of heart, it is said to appear and share its happiness with that person.'),
  -- natu in ruby
  (177, 17700, 7, 'NATU cannot fly because its wings are not yet fully grown. If your eyes meet with this POKéMON’s eyes, it will stare back intently at you. But if you move even slightly, it will hop away to safety.'),
  -- xatu in ruby
  (178, 17800, 7, 'XATU stands rooted and still in one spot all day long. People believe that this POKéMON does so out of fear of the terrible things it has foreseen in the future.'),
  -- mareep in ruby
  (179, 17900, 7, 'MAREEP’s fluffy coat of wool rubs together and builds a static charge. The more static electricity is charged, the more brightly the lightbulb at the tip of its tail grows.'),
  -- flaaffy in ruby
  (180, 18000, 7, 'FLAAFFY’s wool quality changes so that it can generate a high amount of static electricity with a small amount of wool. The bare and slick parts of its hide are shielded against electricity.'),
  -- ampharos in ruby
  (181, 18100, 7, 'AMPHAROS gives off so much light that it can be seen even from space. People in the old days used the light of this POKéMON to send signals back and forth with others far away.'),
  -- bellossom in ruby
  (182, 18200, 7, 'When BELLOSSOM gets exposed to plenty of sunlight, the leaves ringing its body begin to spin around. This POKéMON’s dancing is renowned in the southern lands.'),
  -- marill in ruby
  (183, 18300, 7, 'MARILL’s oil-filled tail acts much like a life preserver. If you see just its tail bobbing on the water’s surface, it’s a sure indication that this POKéMON is diving beneath the water to feed on aquatic plants.'),
  -- azumarill in ruby
  (184, 18400, 7, 'AZUMARILL’s long ears are indispensable sensors. By focusing its hearing, this POKéMON can identify what kinds of prey are around, even in rough and fast-running rivers.'),
  -- sudowoodo in ruby
  (185, 18500, 7, 'SUDOWOODO camouflages itself as a tree to avoid being attacked by enemies. However, because the forelegs remain green throughout the year, the POKéMON is easily identified as a fake during the winter.'),
  -- politoed in ruby
  (186, 18600, 7, 'The curled hair on POLITOED’s head is proof of its status as a king. It is said that the longer and more curled the hair, the more respect this POKéMON earns from its peers.'),
  -- hoppip in ruby
  (187, 18700, 7, 'This POKéMON drifts and floats with the wind. If it senses the approach of strong winds, HOPPIP links its leaves with other HOPPIP to prepare against being blown away.'),
  -- skiploom in ruby
  (188, 18800, 7, 'SKIPLOOM’s flower blossoms when the temperature rises above 64 degrees F. How much the flower opens depends on the temperature. For that reason, this POKéMON is sometimes used as a thermometer.'),
  -- jumpluff in ruby
  (189, 18900, 7, 'JUMPLUFF rides warm southern winds to cross the sea and fly to foreign lands. The POKéMON descends to the ground when it encounters cold air while it is floating.'),
  -- aipom in ruby
  (190, 19000, 7, 'AIPOM’s tail ends in a hand-like appendage that can be cleverly manipulated. However, because the POKéMON uses its tail so much, its real hands have become rather clumsy.'),
  -- sunkern in ruby
  (191, 19100, 7, 'SUNKERN tries to move as little as it possibly can. It does so because it tries to conserve all the nutrients it has stored in its body for its evolution. It will not eat a thing, subsisting only on morning dew.'),
  -- sunflora in ruby
  (192, 19200, 7, 'SUNFLORA converts solar energy into nutrition. It moves around actively in the daytime when it is warm. It stops moving as soon as the sun goes down for the night.'),
  -- yanma in ruby
  (193, 19300, 7, 'YANMA is capable of seeing 360 degrees without having to move its eyes. It is a great flier that is adept at making sudden stops and turning midair. This POKéMON uses its flying ability to quickly chase down targeted prey.'),
  -- wooper in ruby
  (194, 19400, 7, 'WOOPER usually lives in water. However, it occasionally comes out onto land in search of food. On land, it coats its body with a gooey, toxic film.'),
  -- quagsire in ruby
  (195, 19500, 7, 'QUAGSIRE hunts for food by leaving its mouth wide open in water and waiting for its prey to blunder in unaware. Because the POKéMON does not move, it does not get very hungry.'),
  -- espeon in ruby
  (196, 19600, 7, 'ESPEON is extremely loyal to any TRAINER it considers to be worthy. It is said that this POKéMON developed its precognitive powers to protect its TRAINER from harm.'),
  -- umbreon in ruby
  (197, 19700, 7, 'UMBREON evolved as a result of exposure to the moon’s waves. It hides silently in darkness and waits for its foes to make a move. The rings on its body glow when it leaps to attack.'),
  -- murkrow in ruby
  (198, 19800, 7, 'MURKROW was feared and loathed as the alleged bearer of ill fortune. This POKéMON shows strong interest in anything that sparkles or glitters. It will even try to steal rings from women.'),
  -- slowking in ruby
  (199, 19900, 7, 'SLOWKING undertakes research every day in an effort to solve the mysteries of the world. However, this POKéMON apparently forgets everything it has learned if the SHELLDER on its head comes off.'),
  -- misdreavus in ruby
  (200, 20000, 7, 'MISDREAVUS frightens people with a creepy, sobbing cry. The POKéMON apparently uses its red spheres to absorb the fearful feelings of foes and turn them into nutrition.'),
  -- unown in ruby
  (201, 20100, 7, 'This POKéMON is shaped like ancient writing. It is a mystery as to which came first, the ancient writings or the various UNOWN. Research into this topic is ongoing but nothing is known.'),
  -- wobbuffet in ruby
  (202, 20200, 7, 'If two or more WOBBUFFET meet, they will turn competitive and try to outdo each other’s endurance. However, they may try to see which one can endure the longest without food. TRAINERS need to beware of this habit.'),
  -- girafarig in ruby
  (203, 20300, 7, 'GIRAFARIG’s rear head also has a brain, but it is small. The rear head attacks in response to smells and sounds. Approaching this POKéMON from behind can cause the rear head to suddenly lash out and bite.'),
  -- pineco in ruby
  (204, 20400, 7, 'PINECO hangs from a tree branch and patiently waits for prey to come along. If the POKéMON is disturbed while eating by someone shaking its tree, it drops down to the ground and explodes with no warning.'),
  -- forretress in ruby
  (205, 20500, 7, 'FORRETRESS conceals itself inside its hardened steel shell. The shell is opened when the POKéMON is catching prey, but it does so at such a quick pace that the shell’s inside cannot be seen.'),
  -- dunsparce in ruby
  (206, 20600, 7, 'DUNSPARCE has a drill for its tail. It uses this tail to burrow into the ground backwards. This POKéMON is known to make its nest in complex shapes deep under the ground.'),
  -- gligar in ruby
  (207, 20700, 7, 'GLIGAR glides through the air without a sound as if it were sliding. This POKéMON hangs on to the face of its foe using its clawed hind legs and the large pincers on its forelegs, then injects the prey with its poison barb.'),
  -- steelix in ruby
  (208, 20800, 7, 'STEELIX lives even further underground than ONIX. This POKéMON is known to dig towards the earth’s core. There are records of this POKéMON reaching a depth of over six-tenths of a mile underground.'),
  -- snubbull in ruby
  (209, 20900, 7, 'By baring its fangs and making a scary face, SNUBBULL sends smaller POKéMON scurrying away in terror. However, this POKéMON seems a little sad at making its foes flee.'),
  -- granbull in ruby
  (210, 21000, 7, 'GRANBULL has a particularly well- developed lower jaw. The enormous fangs are heavy, causing the POKéMON to tip its head back for balance. Unless it is startled, it will not try to bite indiscriminately.'),
  -- qwilfish in ruby
  (211, 21100, 7, 'QWILFISH sucks in water, inflating itself. This POKéMON uses the pressure of the water it swallowed to shoot toxic quills all at once from all over its body. It finds swimming somewhat challenging.'),
  -- scizor in ruby
  (212, 21200, 7, 'SCIZOR has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. This POKéMON flaps its wings to regulate its body temperature.'),
  -- shuckle in ruby
  (213, 21300, 7, 'SHUCKLE quietly hides itself under rocks, keeping its body concealed inside its hard shell while eating berries it has stored away. The berries mix with its body fluids to become a juice.'),
  -- heracross in ruby
  (214, 21400, 7, 'HERACROSS charges in a straight line at its foe, slips beneath the foe’s grasp, and then scoops up and hurls the opponent with its mighty horn. This POKéMON even has enough power to topple a massive tree.'),
  -- sneasel in ruby
  (215, 21500, 7, 'SNEASEL scales trees by punching its hooked claws into the bark. This POKéMON seeks out unguarded nests and steals eggs for food while the parents are away.'),
  -- teddiursa in ruby
  (216, 21600, 7, 'This POKéMON likes to lick its palms that are sweetened by being soaked in honey. TEDDIURSA concocts its own honey by blending fruits and pollen collected by BEEDRILL.'),
  -- ursaring in ruby
  (217, 21700, 7, 'In the forests inhabited by URSARING, it is said that there are many streams and towering trees where they gather food. This POKéMON walks through its forest gathering food every day.'),
  -- slugma in ruby
  (218, 21800, 7, 'Molten magma courses throughout SLUGMA’s circulatory system. If this POKéMON is chilled, the magma cools and hardens. Its body turns brittle and chunks fall off, reducing its size.'),
  -- magcargo in ruby
  (219, 21900, 7, 'MAGCARGO’s shell is actually its skin that hardened as a result of cooling. Its shell is very brittle and fragile - just touching it causes it to crumble apart. This POKéMON returns to its original size by dipping itself in magma.'),
  -- swinub in ruby
  (220, 22000, 7, 'SWINUB roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under the cover of dead grass. This POKéMON occasionally roots out hot springs.'),
  -- piloswine in ruby
  (221, 22100, 7, 'PILOSWINE is covered by a thick coat of long hair that enables it to endure the freezing cold. This POKéMON uses its tusks to dig up food that has been buried under ice.'),
  -- corsola in ruby
  (222, 22200, 7, 'CORSOLA’s branches glitter very beautifully in seven colors when they catch sunlight. If any branch breaks off, this POKéMON grows it back in just one night.'),
  -- remoraid in ruby
  (223, 22300, 7, 'REMORAID sucks in water, then expels it at high velocity using its abdominal muscles to shoot down flying prey. When evolution draws near, this POKéMON travels downstream from rivers.'),
  -- octillery in ruby
  (224, 22400, 7, 'OCTILLERY grabs onto its foe using its tentacles. This POKéMON tries to immobilize it before delivering the finishing blow. If the foe turns out to be too strong, OCTILLERY spews ink to escape.'),
  -- delibird in ruby
  (225, 22500, 7, 'DELIBIRD carries its food bundled up in its tail. There once was a famous explorer who managed to reach the peak of Mt. Everest thanks to one of these POKéMON sharing its food.'),
  -- mantine in ruby
  (226, 22600, 7, 'On sunny days, schools of MANTINE can be seen elegantly leaping over the sea’s waves. This POKéMON is not bothered by the REMORAID that hitches rides.'),
  -- skarmory in ruby
  (227, 22700, 7, 'SKARMORY is entirely encased in hard, protective armor. This POKéMON flies at close to 190 mph. It slashes foes with its wings that possess swordlike cutting edges.'),
  -- houndour in ruby
  (228, 22800, 7, 'HOUNDOUR hunt as a coordinated pack. They communicate with each other using a variety of cries to corner their prey. This POKéMON’s remarkable teamwork is unparalleled.'),
  -- houndoom in ruby
  (229, 22900, 7, 'In a HOUNDOOM pack, the one with its horns raked sharply towards the back serves a leadership role. These POKéMON choose their leader by fighting amongst themselves.'),
  -- kingdra in ruby
  (230, 23000, 7, 'KINGDRA lives at extreme ocean depths that are otherwise uninhabited. It has long been believed that the yawning of this POKéMON creates spiraling ocean currents.'),
  -- phanpy in ruby
  (231, 23100, 7, 'For its nest, PHANPY digs a vertical pit in the ground at the edge of a river. It marks the area around its nest with its trunk to let the others know that the area has been claimed.'),
  -- donphan in ruby
  (232, 23200, 7, 'DONPHAN’s favorite attack is curling its body into a ball, then charging at its foe while rolling at high speed. Once it starts rolling, this POKéMON can’t stop very easily.'),
  -- porygon2 in ruby
  (233, 23300, 7, 'PORYGON2 was created by humans using the power of science. The man-made POKéMON has been endowed with artificial intelligence that enables it to learn new gestures and emotions on its own.'),
  -- stantler in ruby
  (234, 23400, 7, 'STANTLER’s magnificent antlers were traded at high prices as works of art. As a result, this POKéMON was hunted close to extinction by those who were after the priceless antlers.'),
  -- smeargle in ruby
  (235, 23500, 7, 'SMEARGLE marks the boundaries of its territory using a body fluid that leaks out from the tip of its tail. Over 5,000 different marks left by this POKéMON have been found.'),
  -- tyrogue in ruby
  (236, 23600, 7, 'TYROGUE becomes stressed out if it does not get to train every day. When raising this POKéMON, the TRAINER must establish and uphold various training methods.'),
  -- hitmontop in ruby
  (237, 23700, 7, 'HITMONTOP spins on its head at high speed, all the while delivering kicks. This technique is a remarkable mix of both offense and defense at the same time. The POKéMON travels faster spinning than it does walking.'),
  -- smoochum in ruby
  (238, 23800, 7, 'SMOOCHUM actively runs about, but also falls quite often. Whenever the chance arrives, it will look for its reflection to make sure its face hasn’t become dirty.'),
  -- elekid in ruby
  (239, 23900, 7, 'ELEKID stores electricity in its body. If it touches metal and accidentally discharges all its built-up electricity, this POKéMON begins swinging its arms in circles to recharge itself.'),
  -- magby in ruby
  (240, 24000, 7, 'MAGBY’s state of health is determined by observing the fire it breathes. If the POKéMON is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames.'),
  -- miltank in ruby
  (241, 24100, 7, 'MILTANK gives over five gallons of milk on a daily basis. Its sweet milk is enjoyed by children and grown-ups alike. People who can’t drink milk turn it into yogurt and eat it instead.'),
  -- blissey in ruby
  (242, 24200, 7, 'BLISSEY senses sadness with its fluffy coat of fur. If it does so, this POKéMON will rush over to the sad person, however far they may be, to share an egg of happiness that brings a smile to any face.'),
  -- raikou in ruby
  (243, 24300, 7, 'RAIKOU embodies the speed of lightning. The roars of this POKéMON send shock waves shuddering through the air and shake the ground as if lightning bolts had come crashing down.'),
  -- entei in ruby
  (244, 24400, 7, 'ENTEI embodies the passion of magma. This POKéMON is thought to have been born in the eruption of a volcano. It sends up massive bursts of fire that utterly consume all that they touch.'),
  -- suicune in ruby
  (245, 24500, 7, 'SUICUNE embodies the compassion of a pure spring of water. It runs across the land with gracefulness. This POKéMON has the power to purify dirty water.'),
  -- larvitar in ruby
  (246, 24600, 7, 'LARVITAR is born deep under the ground. To come up to the surface, this POKéMON must eat its way through the soil above. Until it does so, LARVITAR cannot see its parent’s face.'),
  -- pupitar in ruby
  (247, 24700, 7, 'PUPITAR creates a gas inside its body that it compresses and forcefully ejects to propel itself like a jet. The body is very durable - it avoids damage even if it hits solid steel.'),
  -- tyranitar in ruby
  (248, 24800, 7, 'TYRANITAR is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. This POKéMON wanders about in mountains seeking new opponents to fight.'),
  -- lugia in ruby
  (249, 24900, 7, 'LUGIA’s wings pack devastating power - a light fluttering of its wings can blow apart regular houses. As a result, this POKéMON chooses to live out of sight deep under the sea.'),
  -- ho-oh in ruby
  (250, 25000, 7, 'HO-OH’s feathers glow in seven colors depending on the angle at which they are struck by light. These feathers are said to bring happiness to the bearers. This POKéMON is said to live at the foot of a rainbow.'),
  -- celebi in ruby
  (251, 25100, 7, 'This POKéMON came from the future by crossing over time. It is thought that so long as CELEBI appears, a bright and shining future awaits us.'),
  -- treecko in ruby
  (252, 25200, 7, 'TREECKO has small hooks on the bottom of its feet that enable it to scale vertical walls. This POKéMON attacks by slamming foes with its thick tail.'),
  -- grovyle in ruby
  (253, 25300, 7, 'The leaves growing out of GROVYLE’s body are convenient for camouflaging it from enemies in the forest. This POKéMON is a master at climbing trees in jungles.'),
  -- sceptile in ruby
  (254, 25400, 7, 'The leaves growing on SCEPTILE’s body are very sharp edged. This POKéMON is very agile - it leaps all over the branches of trees and jumps on its foe from above or behind.'),
  -- torchic in ruby
  (255, 25500, 7, 'TORCHIC sticks with its TRAINER, following behind with unsteady steps. This POKéMON breathes fire of over 1,800 degrees F, including fireballs that leave the foe scorched black.'),
  -- combusken in ruby
  (256, 25600, 7, 'COMBUSKEN toughens up its legs and thighs by running through fields and mountains. This POKéMON’s legs possess both speed and power, enabling it to dole out ten kicks in one second.'),
  -- blaziken in ruby
  (257, 25700, 7, 'In battle, BLAZIKEN blows out intense flames from its wrists and attacks foes courageously. The stronger the foe, the more intensely this POKéMON’s wrists burn.'),
  -- mudkip in ruby
  (258, 25800, 7, 'The fin on MUDKIP’s head acts as highly sensitive radar. Using this fin to sense movements of water and air, this POKéMON can determine what is taking place around it without using its eyes.'),
  -- marshtomp in ruby
  (259, 25900, 7, 'The surface of MARSHTOMP’s body is enveloped by a thin, sticky film that enables it to live on land. This POKéMON plays in mud on beaches when the ocean tide is low.'),
  -- swampert in ruby
  (260, 26000, 7, 'SWAMPERT is very strong. It has enough power to easily drag a boulder weighing more than a ton. This POKéMON also has powerful vision that lets it see even in murky water.'),
  -- poochyena in ruby
  (261, 26100, 7, 'At first sight, POOCHYENA takes a bite at anything that moves. This POKéMON chases after prey until the victim becomes exhausted. However, it may turn tail if the prey strikes back.'),
  -- mightyena in ruby
  (262, 26200, 7, 'MIGHTYENA gives obvious signals when it is preparing to attack. It starts to growl deeply and then flattens its body. This POKéMON will bite savagely with its sharply pointed fangs.'),
  -- zigzagoon in ruby
  (263, 26300, 7, 'ZIGZAGOON restlessly wanders everywhere at all times. This POKéMON does so because it is very curious. It becomes interested in anything that it happens to see.'),
  -- linoone in ruby
  (264, 26400, 7, 'LINOONE always runs full speed and only in straight lines. If facing an obstacle, it makes a right-angle turn to evade it. This POKéMON is very challenged by gently curving roads.'),
  -- wurmple in ruby
  (265, 26500, 7, 'Using the spikes on its rear end, WURMPLE peels the bark off trees and feeds on the sap that oozes out. This POKéMON’s feet are tipped with suction pads that allow it to cling to glass without slipping.'),
  -- silcoon in ruby
  (266, 26600, 7, 'SILCOON tethers itself to a tree branch using silk to keep from falling. There, this POKéMON hangs quietly while it awaits evolution. It peers out of the silk cocoon through a small hole.'),
  -- beautifly in ruby
  (267, 26700, 7, 'BEAUTIFLY’s favorite food is the sweet pollen of flowers. If you want to see this POKéMON, just leave a potted flower by an open window. BEAUTIFLY is sure to come looking for pollen.'),
  -- cascoon in ruby
  (268, 26800, 7, 'CASCOON makes its protective cocoon by wrapping its body entirely with a fine silk from its mouth. Once the silk goes around its body, it hardens. This POKéMON prepares for its evolution inside the cocoon.'),
  -- dustox in ruby
  (269, 26900, 7, 'DUSTOX is instinctively drawn to light. Swarms of this POKéMON are attracted by the bright lights of cities, where they wreak havoc by stripping the leaves off roadside trees for food.'),
  -- lotad in ruby
  (270, 27000, 7, 'LOTAD live in ponds and lakes, where they float on the surface. It grows weak if its broad leaf dies. On rare occasions, this POKéMON travels on land in search of clean water.'),
  -- lombre in ruby
  (271, 27100, 7, 'LOMBRE is nocturnal - it will get active after dusk. It is also a mischief-maker. When this POKéMON spots anglers, it tugs on their fishing lines from beneath the surface and enjoys their consternation.'),
  -- ludicolo in ruby
  (272, 27200, 7, 'LUDICOLO begins dancing as soon as it hears cheerful, festive music. This POKéMON is said to appear when it hears the singing of children on hiking outings.'),
  -- seedot in ruby
  (273, 27300, 7, 'SEEDOT attaches itself to a tree branch using the top of its head. It sucks moisture from the tree while hanging off the branch. The more water it drinks, the glossier this POKéMON’s body becomes.'),
  -- nuzleaf in ruby
  (274, 27400, 7, 'NUZLEAF live in densely overgrown forests. They occasionally venture out of the forest to startle people. This POKéMON dislikes having its long nose pinched.'),
  -- shiftry in ruby
  (275, 27500, 7, 'SHIFTRY is a mysterious POKéMON that is said to live atop towering trees dating back over a thousand years. It creates terrific windstorms with the fans it holds.'),
  -- taillow in ruby
  (276, 27600, 7, 'TAILLOW courageously stands its ground against foes, however strong they may be. This gutsy POKéMON will remain defiant even after a loss. On the other hand, it cries loudly if it becomes hungry.'),
  -- swellow in ruby
  (277, 27700, 7, 'SWELLOW flies high above our heads, making graceful arcs in the sky. This POKéMON dives at a steep angle as soon as it spots its prey. The hapless prey is tightly grasped by SWELLOW’s clawed feet, preventing escape.'),
  -- wingull in ruby
  (278, 27800, 7, 'WINGULL has the habit of carrying prey and valuables in its beak and hiding them in all sorts of locations. This POKéMON rides the winds and flies as if it were skating across the sky.'),
  -- pelipper in ruby
  (279, 27900, 7, 'PELIPPER is a flying transporter that carries small POKéMON and eggs inside its massive bill. This POKéMON builds its nest on steep cliffs facing the sea.'),
  -- ralts in ruby
  (280, 28000, 7, 'RALTS senses the emotions of people using the horns on its head. This POKéMON rarely appears before people. But when it does, it draws closer if it senses that the person has a positive disposition.'),
  -- kirlia in ruby
  (281, 28100, 7, 'It is said that a KIRLIA that is exposed to the positive emotions of its TRAINER grows beautiful. This POKéMON controls psychokinetic powers with its highly developed brain.'),
  -- gardevoir in ruby
  (282, 28200, 7, 'GARDEVOIR has the ability to read the future. If it senses impending danger to its TRAINER, this POKéMON is said to unleash its psychokinetic energy at full power.'),
  -- surskit in ruby
  (283, 28300, 7, 'From the tips of its feet, SURSKIT secretes an oil that enables it to walk on water as if it were skating. This POKéMON feeds on microscopic organisms in ponds and lakes.'),
  -- masquerain in ruby
  (284, 28400, 7, 'MASQUERAIN intimidates enemies with the eyelike patterns on its antennas. This POKéMON flaps its four wings to freely fly in any direction - even sideways and backwards - as if it were a helicopter.'),
  -- shroomish in ruby
  (285, 28500, 7, 'SHROOMISH live in damp soil in the dark depths of forests. They are often found keeping still under fallen leaves. This POKéMON feeds on compost that is made up of fallen, rotted leaves.'),
  -- breloom in ruby
  (286, 28600, 7, 'BRELOOM closes in on its foe with light and sprightly footwork, then throws punches with its stretchy arms. This POKéMON’s fighting technique puts boxers to shame.'),
  -- slakoth in ruby
  (287, 28700, 7, 'SLAKOTH lolls around for over twenty hours every day. Because it moves so little, it does not need much food. This POKéMON’s sole daily meal consists of just three leaves.'),
  -- vigoroth in ruby
  (288, 28800, 7, 'VIGOROTH is always itching and agitated to go on a wild rampage. It simply can’t tolerate sitting still for even a minute. This POKéMON’s stress level rises if it can’t be moving constantly.'),
  -- slaking in ruby
  (289, 28900, 7, 'SLAKING spends all day lying down and lolling about. It eats grass growing within its reach. If it eats all the grass it can reach, this POKéMON reluctantly moves to another spot.'),
  -- nincada in ruby
  (290, 29000, 7, 'NINCADA lives underground for many years in complete darkness. This POKéMON absorbs nutrients from the roots of trees. It stays motionless as it waits for evolution.'),
  -- ninjask in ruby
  (291, 29100, 7, 'NINJASK moves around at such a high speed that it cannot be seen, even while its crying can be clearly heard. For that reason, this POKéMON was long believed to be invisible.'),
  -- shedinja in ruby
  (292, 29200, 7, 'SHEDINJA’s hard body doesn’t move - not even a twitch. In fact, its body appears to be merely a hollow shell. It is believed that this POKéMON will steal the spirit of anyone peering into its hollow body from its back.'),
  -- whismur in ruby
  (293, 29300, 7, 'Normally, WHISMUR’s voice is very quiet - it is barely audible even if one is paying close attention. However, if this POKéMON senses danger, it starts crying at an earsplitting volume.'),
  -- loudred in ruby
  (294, 29400, 7, 'LOUDRED’s bellowing can completely decimate a wood-frame house. It uses its voice to punish its foes. This POKéMON’s round ears serve as loudspeakers.'),
  -- exploud in ruby
  (295, 29500, 7, 'EXPLOUD triggers earthquakes with the tremors it creates by bellowing. If this POKéMON violently inhales from the ports on its body, it’s a sign that it is preparing to let loose a huge bellow.'),
  -- makuhita in ruby
  (296, 29600, 7, 'MAKUHITA is tenacious - it will keep getting up and attacking its foe however many times it is knocked down. Every time it gets back up, this POKéMON stores more energy in its body for evolving.'),
  -- hariyama in ruby
  (297, 29700, 7, 'HARIYAMA practices its straight-arm slaps in any number of locations. One hit of this POKéMON’s powerful, openhanded, straight-arm punches could snap a telephone pole in two.'),
  -- azurill in ruby
  (298, 29800, 7, 'AZURILL spins its tail as if it were a lasso, then hurls it far. The momentum of the throw sends its body flying, too. Using this unique action, one of these POKéMON managed to hurl itself a record 33 feet.'),
  -- nosepass in ruby
  (299, 29900, 7, 'NOSEPASS’s magnetic nose is always pointed to the north. If two of these POKéMON meet, they cannot turn their faces to each other when they are close because their magnetic noses repel one another.'),
  -- skitty in ruby
  (300, 30000, 7, 'SKITTY has the habit of becoming fascinated by moving objects and chasing them around. This POKéMON is known to chase after its own tail and become dizzy.'),
  -- delcatty in ruby
  (301, 30100, 7, 'DELCATTY prefers to live an unfettered existence in which it can do as it pleases at its own pace. Because this POKéMON eats and sleeps whenever it decides, its daily routines are completely random.'),
  -- sableye in ruby
  (302, 30200, 7, 'SABLEYE lead quiet lives deep inside caverns. They are feared, however, because these POKéMON are thought to steal the spirits of people when their eyes burn with a sinister glow in the darkness.'),
  -- mawile in ruby
  (303, 30300, 7, 'MAWHILE’s huge jaws are actually steel horns that have been transformed. Its docile-looking face serves to lull its foe into letting down its guard. When the foe least expects it, MAWHILE chomps it with its gaping jaws.'),
  -- aron in ruby
  (304, 30400, 7, 'This POKéMON has a body of steel. To make its body, ARON feeds on iron ore that it digs from mountains. Occasionally, it causes major trouble by eating bridges and rails.'),
  -- lairon in ruby
  (305, 30500, 7, 'LAIRON tempers its steel body by drinking highly nutritious mineral springwater until it is bloated. This POKéMON makes its nest close to springs of delicious water.'),
  -- aggron in ruby
  (306, 30600, 7, 'AGGRON claims an entire mountain as its own territory. It mercilessly beats up anything that violates its environment. This POKéMON vigilantly patrols its territory at all times.'),
  -- meditite in ruby
  (307, 30700, 7, 'MEDITITE undertakes rigorous mental training deep in the mountains. However, whenever it meditates, this POKéMON always loses its concentration and focus. As a result, its training never ends.'),
  -- medicham in ruby
  (308, 30800, 7, 'It is said that through meditation, MEDICHAM heightens energy inside its body and sharpens its sixth sense. This POKéMON hides its presence by merging itself with fields and mountains.'),
  -- electrike in ruby
  (309, 30900, 7, 'ELECTRIKE stores electricity in its long body hair. This POKéMON stimulates its leg muscles with electric charges. These jolts of power give its legs explosive acceleration performance.'),
  -- manectric in ruby
  (310, 31000, 7, 'MANECTRIC is constantly discharging electricity from its mane. The sparks sometimes ignite forest fires. When it enters a battle, this POKéMON creates thunderclouds.'),
  -- plusle in ruby
  (311, 31100, 7, 'PLUSLE always acts as a cheerleader for its partners. Whenever a teammate puts out a good effort in battle, this POKéMON shorts out its body to create the crackling noises of sparks to show its joy.'),
  -- minun in ruby
  (312, 31200, 7, 'MINUN is more concerned about cheering on its partners than its own safety. It shorts out the electricity in its body to create brilliant showers of sparks to cheer on its teammates.'),
  -- volbeat in ruby
  (313, 31300, 7, 'With the arrival of night, VOLBEAT emits light from its tail. It communicates with others by adjusting the intensity and flashing of its light. This POKéMON is attracted by the sweet aroma of ILLUMISE.'),
  -- illumise in ruby
  (314, 31400, 7, 'ILLUMISE attracts a swarm of VOLBEAT using a sweet fragrance. Once the VOLBEAT have gathered, this POKéMON leads the lit-up swarm in drawing geometric designs on the canvas of the night sky.'),
  -- roselia in ruby
  (315, 31500, 7, 'ROSELIA shoots sharp thorns as projectiles at any opponent that tries to steal the flowers on its arms. The aroma of this POKéMON brings serenity to living things.'),
  -- gulpin in ruby
  (316, 31600, 7, 'Virtually all of GULPIN’s body is its stomach. As a result, it can swallow something its own size. This POKéMON’s stomach contains a special fluid that digests anything.'),
  -- swalot in ruby
  (317, 31700, 7, 'When SWALOT spots prey, it spurts out a hideously toxic fluid from its pores and sprays the target. Once the prey has weakened, this POKéMON gulps it down whole with its cavernous mouth.'),
  -- carvanha in ruby
  (318, 31800, 7, 'CARVANHA’s strongly developed jaws and its sharply pointed fangs pack the destructive power to rip out boat hulls. Many boats have been attacked and sunk by this POKéMON.'),
  -- sharpedo in ruby
  (319, 31900, 7, 'Nicknamed “the bully of the sea,” SHARPEDO is widely feared. Its cruel fangs grow back immediately if they snap off. Just one of these POKéMON can thoroughly tear apart a supertanker.'),
  -- wailmer in ruby
  (320, 32000, 7, 'WAILMER’s nostrils are located above its eyes. This playful POKéMON loves to startle people by forcefully snorting out seawater it stores inside its body out of its nostrils.'),
  -- wailord in ruby
  (321, 32100, 7, 'WAILORD is the largest of all identified POKéMON up to now. This giant POKéMON swims languorously in the vast open sea, eating massive amounts of food at once with its enormous mouth.'),
  -- numel in ruby
  (322, 32200, 7, 'NUMEL is extremely dull witted - it doesn’t notice being hit. However, it can’t stand hunger for even a second. This POKéMON’s body is a seething cauldron of boiling magma.'),
  -- camerupt in ruby
  (323, 32300, 7, 'CAMERUPT has a volcano inside its body. Magma of 18,000 degrees F courses through its body. Occasionally, the humps on this POKéMON’s back erupt, spewing the superheated magma.'),
  -- torkoal in ruby
  (324, 32400, 7, 'TORKOAL digs through mountains in search of coal. If it finds some, it fills hollow spaces on its shell with the coal and burns it. If it is attacked, this POKéMON spouts thick black smoke to beat a retreat.'),
  -- spoink in ruby
  (325, 32500, 7, 'SPOINK bounces around on its tail. The shock of its bouncing makes its heart pump. As a result, this POKéMON cannot afford to stop bouncing - if it stops, its heart will stop.'),
  -- grumpig in ruby
  (326, 32600, 7, 'GRUMPIG uses the black pearls on its body to amplify its psychic power waves for gaining total control over its foe. When this POKéMON uses its special power, its snorting breath grows labored.'),
  -- spinda in ruby
  (327, 32700, 7, 'All the SPINDA that exist in the world are said to have utterly unique spot patterns. The shaky, tottering steps of this POKéMON give it the appearance of dancing.'),
  -- trapinch in ruby
  (328, 32800, 7, 'TRAPINCH’s nest is a sloped, bowl-like pit dug in sand. This POKéMON patiently waits for prey to tumble down the pit. Its giant jaws have enough strength to crush even boulders.'),
  -- vibrava in ruby
  (329, 32900, 7, 'To make prey faint, VIBRAVA generates ultrasonic waves by vigorously making its two wings vibrate. This POKéMON’s ultrasonic waves are so powerful, they can bring on headaches in people.'),
  -- flygon in ruby
  (330, 33000, 7, 'FLYGON is nicknamed “the elemental spirit of the desert.” Because its flapping wings whip up a cloud of sand, this POKéMON is always enveloped in a sandstorm while flying.'),
  -- cacnea in ruby
  (331, 33100, 7, 'CACNEA lives in arid locations such as deserts. It releases a strong aroma from its flower to attract prey. When prey comes near, this POKéMON shoots sharp thorns from its body to bring the victim down.'),
  -- cacturne in ruby
  (332, 33200, 7, 'During the daytime, CACTURNE remains unmoving so that it does not lose any moisture to the harsh desert sun. This POKéMON becomes active at night when the temperature drops.'),
  -- swablu in ruby
  (333, 33300, 7, 'SWABLU has light and fluffy wings that are like cottony clouds. This POKéMON is not frightened of people. It lands on the heads of people and sits there like a cotton-fluff hat.'),
  -- altaria in ruby
  (334, 33400, 7, 'ALTARIA dances and wheels through the sky among billowing, cotton-like clouds. By singing melodies in its crystal-clear voice, this POKéMON makes its listeners experience dreamy wonderment.'),
  -- zangoose in ruby
  (335, 33500, 7, 'Memories of battling its arch-rival SEVIPER are etched into every cell of ZANGOOSE’s body. This POKéMON adroitly dodges attacks with incredible agility.'),
  -- seviper in ruby
  (336, 33600, 7, 'SEVIPER shares a generations-long feud with ZANGOOSE. The scars on its body are evidence of vicious battles. This POKéMON attacks using its sword- edged tail.'),
  -- lunatone in ruby
  (337, 33700, 7, 'LUNATONE was discovered at a location where a meteorite fell. As a result, some people theorize that this POKéMON came from space. However, no one has been able to prove this theory so far.'),
  -- solrock in ruby
  (338, 33800, 7, 'SOLROCK is a new species of POKéMON that is said to have fallen from space. It floats in air and moves silently. In battle, this POKéMON releases intensely bright light.'),
  -- barboach in ruby
  (339, 33900, 7, 'BARBOACH’s sensitive whiskers serve as a superb radar system. This POKéMON hides in mud, leaving only its two whiskers exposed while it waits for prey to come along.'),
  -- whiscash in ruby
  (340, 34000, 7, 'WHISCASH is extremely territorial. Just one of these POKéMON will claim a large pond as its exclusive territory. If a foe approaches it, it thrashes about and triggers a massive earthquake.'),
  -- corphish in ruby
  (341, 34100, 7, 'CORPHISH were originally foreign POKéMON that were imported as pets. They eventually turned up in the wild. This POKéMON is very hardy and has greatly increased its population.'),
  -- crawdaunt in ruby
  (342, 34200, 7, 'CRAWDAUNT has an extremely violent nature that compels it to challenge other living things to battle. Other life-forms refuse to live in ponds inhabited by this POKéMON, making them desolate places.'),
  -- baltoy in ruby
  (343, 34300, 7, 'BALTOY moves while spinning around on its one foot. Primitive wall paintings depicting this POKéMON living among people were discovered in some ancient ruins.'),
  -- claydol in ruby
  (344, 34400, 7, 'CLAYDOL are said to be dolls of mud made by primitive humans and brought to life by exposure to a mysterious ray. This POKéMON moves about while levitating.'),
  -- lileep in ruby
  (345, 34500, 7, 'LILEEP became extinct approximately a hundred million years ago. This ancient POKéMON attaches itself to a rock on the seafloor and catches approaching prey using tentacles shaped like flower petals.'),
  -- cradily in ruby
  (346, 34600, 7, 'CRADILY roams around the ocean floor in search of food. This POKéMON freely extends its tree trunk-like neck and captures unwary prey using its eight tentacles.'),
  -- anorith in ruby
  (347, 34700, 7, 'ANORITH was regenerated from a prehistoric fossil. This primitive POKéMON once lived in warm seas. It grips its prey firmly between its two large claws.'),
  -- armaldo in ruby
  (348, 34800, 7, 'ARMALDO’s tough armor makes all attacks bounce off. This POKéMON’s two enormous claws can be freely extended or contracted. They have the power to punch right through a steel slab.'),
  -- feebas in ruby
  (349, 34900, 7, 'FEEBAS’s fins are ragged and tattered from the start of its life. Because of its shoddy appearance, this POKéMON is largely ignored. It is capable of living in both the sea and in rivers.'),
  -- milotic in ruby
  (350, 35000, 7, 'MILOTIC is said to be the most beautiful of all the POKéMON. It has the power to becalm such emotions as anger and hostility to quell bitter feuding.'),
  -- castform in ruby
  (351, 35100, 7, 'CASTFORM’s appearance changes with the weather. This POKéMON gained the ability to use the vast power of nature to protect its tiny body.'),
  -- kecleon in ruby
  (352, 35200, 7, 'KECLEON is capable of changing its body colors at will to blend in with its surroundings. There is one exception - this POKéMON can’t change the zigzag pattern on its belly.'),
  -- shuppet in ruby
  (353, 35300, 7, 'SHUPPET is attracted by feelings of jealousy and vindictiveness. If someone develops strong feelings of vengeance, this POKéMON will appear in a swarm and line up beneath the eaves of that person’s home.'),
  -- banette in ruby
  (354, 35400, 7, 'BANETTE generates energy for laying strong curses by sticking pins into its own body. This POKéMON was originally a pitiful plush doll that was thrown away.'),
  -- duskull in ruby
  (355, 35500, 7, 'DUSKULL can pass through any wall no matter how thick it may be. Once this POKéMON chooses a target, it will doggedly pursue the intended victim until the break of dawn.'),
  -- dusclops in ruby
  (356, 35600, 7, 'DUSCLOPS’s body is completely hollow - there is nothing at all inside. It is said that its body is like a black hole. This POKéMON will absorb anything into its body, but nothing will ever come back out.'),
  -- tropius in ruby
  (357, 35700, 7, 'The bunches of fruit around TROPIUS’s neck are very popular with children. This POKéMON loves fruit, and eats it continuously. Apparently, its love for fruit resulted in its own outgrowth of fruit.'),
  -- chimecho in ruby
  (358, 35800, 7, 'CHIMECHO makes its cries echo inside its hollow body. When this POKéMON becomes enraged, its cries result in ultrasonic waves that have the power to knock foes flying.'),
  -- absol in ruby
  (359, 35900, 7, 'Every time ABSOL appears before people, it is followed by a disaster such as an earthquake or a tidal wave. As a result, it came to be known as the disaster POKéMON.'),
  -- wynaut in ruby
  (360, 36000, 7, 'WYNAUT can always be seen with a big, happy smile on its face. Look at its tail to determine if it is angry. When angered, this POKéMON will be slapping the ground with its tail.'),
  -- snorunt in ruby
  (361, 36100, 7, 'SNORUNT live in regions with heavy snowfall. In seasons without snow, such as spring and summer, this POKéMON steals away to live quietly among stalactites and stalagmites deep in caverns.'),
  -- glalie in ruby
  (362, 36200, 7, 'GLALIE has a body made of rock, which it hardens with an armor of ice. This POKéMON has the ability to freeze moisture in the atmosphere into any shape it desires.'),
  -- spheal in ruby
  (363, 36300, 7, 'SPHEAL is much faster rolling than walking to get around. When groups of this POKéMON eat, they all clap at once to show their pleasure. Because of this, their mealtimes are noisy.'),
  -- sealeo in ruby
  (364, 36400, 7, 'SEALEO has the habit of always juggling on the tip of its nose anything it sees for the first time. This POKéMON occasionally entertains itself by balancing and rolling a SPHEAL on its nose.'),
  -- walrein in ruby
  (365, 36500, 7, 'WALREIN’s two massively developed tusks can totally shatter blocks of ice weighing ten tons with one blow. This POKéMON’s thick coat of blubber insulates it from subzero temperatures.'),
  -- clamperl in ruby
  (366, 36600, 7, 'CLAMPERL’s sturdy shell is not only good for protection - it is also used for clamping and catching prey. A fully grown CLAMPERL’s shell will be scored with nicks and scratches all over.'),
  -- huntail in ruby
  (367, 36700, 7, 'HUNTAIL’s presence went unnoticed by people for a long time because it lives at extreme depths in the sea. This POKéMON’s eyes can see clearly even in the murky dark depths of the ocean.'),
  -- gorebyss in ruby
  (368, 36800, 7, 'GOREBYSS lives in the southern seas at extreme depths. Its body is built to withstand the enormous pressure of water at incredible depths. Because of this, this POKéMON’s body is unharmed by ordinary attacks.'),
  -- relicanth in ruby
  (369, 36900, 7, 'RELICANTH is a POKéMON species that existed for a hundred million years without ever changing its form. This ancient POKéMON feeds on microscopic organisms with its toothless mouth.'),
  -- luvdisc in ruby
  (370, 37000, 7, 'LUVDISC live in shallow seas in the tropics. This heart-shaped POKéMON earned its name by swimming after loving couples it spotted in the ocean’s waves.'),
  -- bagon in ruby
  (371, 37100, 7, 'BAGON has a dream of one day soaring in the sky. In doomed efforts to fly, this POKéMON hurls itself off cliffs. As a result of its dives, its head has grown tough and as hard as tempered steel.'),
  -- shelgon in ruby
  (372, 37200, 7, 'Inside SHELGON’s armor-like shell, cells are in the midst of transformation to create an entirely new body. This POKéMON’s shell is extremely heavy, making its movements sluggish.'),
  -- salamence in ruby
  (373, 37300, 7, 'SALAMENCE came about as a result of a strong, long-held dream of growing wings. It is said that this powerful desire triggered a sudden mutation in this POKéMON’s cells, causing it to sprout its magnificent wings.'),
  -- beldum in ruby
  (374, 37400, 7, 'Instead of blood, a powerful magnetic force courses throughout BELDUM’s body. This POKéMON communicates with others by sending controlled pulses of magnetism.'),
  -- metang in ruby
  (375, 37500, 7, 'When two BELDUM fuse together, METANG is formed. The brains of the BELDUM are joined by a magnetic nervous system. By linking its brains magnetically, this POKéMON generates strong psychokinetic power.'),
  -- metagross in ruby
  (376, 37600, 7, 'METAGROSS has four brains in total. Combined, the four brains can breeze through difficult calculations faster than a supercomputer. This POKéMON can float in the air by tucking in its four legs.'),
  -- regirock in ruby
  (377, 37700, 7, 'REGIROCK was sealed away by people long ago. If this POKéMON’s body is damaged in battle, it is said to seek out suitable rocks on its own to repair itself.'),
  -- regice in ruby
  (378, 37800, 7, 'REGICE’s body was made during an ice age. The deep-frozen body can’t be melted, even by fire. This POKéMON controls frigid air of minus 328 degrees F.'),
  -- registeel in ruby
  (379, 37900, 7, 'REGISTEEL has a body that is harder than any kind of metal. Its body is apparently hollow. No one has any idea what this POKéMON eats.'),
  -- latias in ruby
  (380, 38000, 7, 'LATIAS is highly sensitive to the emotions of people. If it senses any hostility, this POKéMON ruffles the feathers all over its body and cries shrilly to intimidate the foe.'),
  -- latios in ruby
  (381, 38100, 7, 'LATIOS has the ability to make its foe see an image of what it has seen or imagines in its head. This POKéMON is intelligent and understands human speech.'),
  -- kyogre in ruby
  (382, 38200, 7, 'KYOGRE has the power to create massive rain clouds that cover the entire sky and bring about torrential downpours. This POKéMON saved people who were suffering from droughts.'),
  -- groudon in ruby
  (383, 38300, 7, 'GROUDON has long been described in mythology as the POKéMON that raised lands and expanded continents. This POKéMON took to sleep after a cataclysmic battle with KYOGRE.'),
  -- rayquaza in ruby
  (384, 38400, 7, 'RAYQUAZA lived for hundreds of millions of years in the earth’s ozone layer, never descending to the ground. This POKéMON appears to feed on water and particles in the atmosphere.'),
  -- jirachi in ruby
  (385, 38500, 7, 'A legend states that JIRACHI will make true any wish that is written on notes attached to its head when it awakens. If this POKéMON senses danger, it will fight without awakening.'),
  -- deoxys in ruby
  (386, 38600, 7, 'The DNA of a space virus underwent a sudden mutation upon exposure to a laser beam and resulted in DEOXYS. The crystalline organ on this POKéMON’s chest appears to be its brain.'),
  -- bulbasaur in sapphire
  (1, 100, 8, 'BULBASAUR can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.'),
  -- ivysaur in sapphire
  (2, 200, 8, 'There is a bud on this POKéMON’s back. To support its weight, IVYSAUR’s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it’s a sign that the bud will bloom into a large flower soon.'),
  -- venusaur in sapphire
  (3, 300, 8, 'There is a large flower on VENUSAUR’s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower’s aroma soothes the emotions of people.'),
  -- charmander in sapphire
  (4, 400, 8, 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when CHARMANDER is enjoying itself. If the POKéMON becomes enraged, the flame burns fiercely.'),
  -- charmeleon in sapphire
  (5, 500, 8, 'CHARMELEON mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.'),
  -- charizard in sapphire
  (6, 600, 8, 'CHARIZARD flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.'),
  -- squirtle in sapphire
  (7, 700, 8, 'SQUIRTLE’s shell is not merely used for protection. The shell’s rounded shape and the grooves on its surface help minimize resistance in water, enabling this POKéMON to swim at high speeds.'),
  -- wartortle in sapphire
  (8, 800, 8, 'Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as WARTORTLE ages. The scratches on its shell are evidence of this POKéMON’s toughness as a battler.'),
  -- blastoise in sapphire
  (9, 900, 8, 'BLASTOISE has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.'),
  -- caterpie in sapphire
  (10, 1000, 8, 'CATERPIE has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this POKéMON releases a terrifically strong odor.'),
  -- metapod in sapphire
  (11, 1100, 8, 'The shell covering this POKéMON’s body is as hard as an iron slab. METAPOD does not move very much. It stays still because it is preparing its soft innards for evolution inside the hard shell.'),
  -- butterfree in sapphire
  (12, 1200, 8, 'BUTTERFREE has a superior ability to search for delicious honey from flowers. It can even search out, extract, and carry honey from flowers that are blooming over six miles from its nest.'),
  -- weedle in sapphire
  (13, 1300, 8, 'WEEDLE has an extremely acute sense of smell. It is capable of distinguishing its favorite kinds of leaves from those it dislikes just by sniffing with its big red proboscis (nose).'),
  -- kakuna in sapphire
  (14, 1400, 8, 'KAKUNA remains virtually immobile as it clings to a tree. However, on the inside, it is extremely busy as it prepares for its coming evolution. This is evident from how hot the shell becomes to the touch.'),
  -- beedrill in sapphire
  (15, 1500, 8, 'BEEDRILL is extremely territorial. No one should ever approach its nest - this is for their own safety. If angered, they will attack in a furious swarm.'),
  -- pidgey in sapphire
  (16, 1600, 8, 'PIDGEY has an extremely sharp sense of direction. It is capable of unerringly returning home to its nest, however far it may be removed from its familiar surroundings.'),
  -- pidgeotto in sapphire
  (17, 1700, 8, 'PIDGEOTTO claims a large area as its own territory. This POKéMON flies around, patrolling its living space. If its territory is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.'),
  -- pidgeot in sapphire
  (18, 1800, 8, 'This POKéMON has a dazzling plumage of beautifully glossy feathers. Many TRAINERS are captivated by the striking beauty of the feathers on its head, compelling them to choose PIDGEOT as their POKéMON.'),
  -- rattata in sapphire
  (19, 1900, 8, 'RATTATA is cautious in the extreme. Even while it is asleep, it constantly listens by moving its ears around. It is not picky about where it lives - it will make its nest anywhere.'),
  -- raticate in sapphire
  (20, 2000, 8, 'RATICATE’s sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses.'),
  -- spearow in sapphire
  (21, 2100, 8, 'SPEAROW has a very loud cry that can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger.'),
  -- fearow in sapphire
  (22, 2200, 8, 'FEAROW is recognized by its long neck and elongated beak. They are conveniently shaped for catching prey in soil or water. It deftly moves its long and skinny beak to pluck prey.'),
  -- ekans in sapphire
  (23, 2300, 8, 'EKANS curls itself up in a spiral while it rests. Assuming this position allows it to quickly respond to a threat from any direction with a glare from its upraised head.'),
  -- arbok in sapphire
  (24, 2400, 8, 'This POKéMON is terrifically strong in order to constrict things with its body. It can even flatten steel oil drums. Once ARBOK wraps its body around its foe, escaping its crunching embrace is impossible.'),
  -- pikachu in sapphire
  (25, 2500, 8, 'This POKéMON has electricity-storing pouches on its cheeks. These appear to become electrically charged during the night while PIKACHU sleeps. It occasionally discharges electricity when it is dozy after waking up.'),
  -- raichu in sapphire
  (26, 2600, 8, 'This POKéMON exudes a weak electrical charge from all over its body that makes it take on a slight glow in darkness. RAICHU searches for electricity by planting its tail in the ground.'),
  -- sandshrew in sapphire
  (27, 2700, 8, 'SANDSHREW has a very dry hide that is extremely tough. The POKéMON can roll into a ball that repels any attack. At night, it burrows into the desert sand to sleep.'),
  -- sandslash in sapphire
  (28, 2800, 8, 'SANDSLASH can roll up its body as if it were a ball covered with large spikes. In battle, this POKéMON will try to make the foe flinch by jabbing it with its spines. It then leaps at the stunned foe to tear wildly with its sharp claws.'),
  -- nidoran-f in sapphire
  (29, 2900, 8, 'NIDORAN has barbs that secrete a powerful poison. They are thought to have developed as protection for this small-bodied POKéMON. When enraged, it releases a horrible toxin from its horn.'),
  -- nidorina in sapphire
  (30, 3000, 8, 'When NIDORINA are with their friends or family, they keep their barbs tucked away to prevent hurting each other. This POKéMON appears to become nervous if separated from the others.'),
  -- nidoqueen in sapphire
  (31, 3100, 8, 'NIDOQUEEN’s body is encased in extremely hard scales. It is adept at sending foes flying with harsh tackles. This POKéMON is at its strongest when it is defending its young.'),
  -- nidoran-m in sapphire
  (32, 3200, 8, 'The male NIDORAN has developed muscles for moving its ears. Thanks to them, the ears can be freely moved in any direction. Even the slightest sound does not escape this POKéMON’s notice.'),
  -- nidorino in sapphire
  (33, 3300, 8, 'NIDORINO has a horn that is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.'),
  -- nidoking in sapphire
  (34, 3400, 8, 'NIDOKING’s thick tail packs enormously destructive power. With one swing, it can topple a metal transmission tower. Once this POKéMON goes on a rampage, there is no stopping it.'),
  -- clefairy in sapphire
  (35, 3500, 8, 'On every night of a full moon, groups of this POKéMON come out to play. When dawn arrives, the tired CLEFAIRY return to their quiet mountain retreats and go to sleep nestled up against each other.'),
  -- clefable in sapphire
  (36, 3600, 8, 'CLEFABLE moves by skipping lightly as if it were flying using its wings. Its bouncy step lets it even walk on water. It is known to take strolls on lakes on quiet, moonlit nights.'),
  -- vulpix in sapphire
  (37, 3700, 8, 'Inside VULPIX’s body burns a flame that never goes out. During the daytime, when the temperatures rise, this POKéMON releases flames from its mouth to prevent its body from growing too hot.'),
  -- ninetales in sapphire
  (38, 3800, 8, 'Legend has it that NINETALES came into being when nine wizards possessing sacred powers merged into one. This POKéMON is highly intelligent - it can understand human speech.'),
  -- jigglypuff in sapphire
  (39, 3900, 8, 'When this POKéMON sings, it never pauses to breathe. If it is in a battle against an opponent that does not easily fall asleep, JIGGLYPUFF cannot breathe, endangering its life.'),
  -- wigglytuff in sapphire
  (40, 4000, 8, 'WIGGLYTUFF’s body is very flexible. By inhaling deeply, this POKéMON can inflate itself seemingly without end. Once inflated, WIGGLYTUFF bounces along lightly like a balloon.'),
  -- zubat in sapphire
  (41, 4100, 8, 'ZUBAT avoids sunlight because exposure causes it to become unhealthy. During the daytime, it stays in caves or under the eaves of old houses, sleeping while hanging upside down.'),
  -- golbat in sapphire
  (42, 4200, 8, 'GOLBAT bites down on prey with its four fangs and drinks the victim’s blood. It becomes active on inky dark moonless nights, flying around to attack people and POKéMON.'),
  -- oddish in sapphire
  (43, 4300, 8, 'ODDISH searches for fertile, nutrient- rich soil, then plants itself. During the daytime, while it is planted, this POKéMON’s feet are thought to change shape and become similar to the roots of trees.'),
  -- gloom in sapphire
  (44, 4400, 8, 'From its mouth GLOOM drips honey that smells absolutely horrible. Apparently, it loves the horrid stench. It sniffs the noxious fumes and then drools even more of its honey.'),
  -- vileplume in sapphire
  (45, 4500, 8, 'VILEPLUME has the world’s largest petals. They are used to attract prey that are then doused with toxic spores. Once the prey are immobilized, this POKéMON catches and devours them.'),
  -- paras in sapphire
  (46, 4600, 8, 'PARAS has parasitic mushrooms growing on its back called tochukaso. They grow large by drawing nutrients from this BUG POKéMON host. They are highly valued as a medicine for extending life.'),
  -- parasect in sapphire
  (47, 4700, 8, 'PARASECT is known to infest large trees en masse and drain nutrients from the lower trunk and roots. When an infested tree dies, they move onto another tree all at once.'),
  -- venonat in sapphire
  (48, 4800, 8, 'VENONAT is said to have evolved with a coat of thin, stiff hair that covers its entire body for protection. It possesses large eyes that never fail to spot even miniscule prey.'),
  -- venomoth in sapphire
  (49, 4900, 8, 'VENOMOTH is nocturnal - it is a POKéMON that only becomes active at night. Its favorite prey are small insects that gather around streetlights, attracted by the light in the darkness.'),
  -- diglett in sapphire
  (50, 5000, 8, 'DIGLETT are raised in most farms. The reason is simple - wherever this POKéMON burrows, the soil is left perfectly tilled for planting crops. This soil is made ideal for growing delicious vegetables.'),
  -- dugtrio in sapphire
  (51, 5100, 8, 'DUGTRIO are actually triplets that emerged from one body. As a result, each triplet thinks exactly like the other two triplets. They work cooperatively to burrow endlessly.'),
  -- meowth in sapphire
  (52, 5200, 8, 'MEOWTH withdraws its sharp claws into its paws to slinkily sneak about without making any incriminating footsteps. For some reason, this POKéMON loves shiny coins that glitter with light.'),
  -- persian in sapphire
  (53, 5300, 8, 'PERSIAN has six bold whiskers that give it a look of toughness. The whiskers sense air movements to determine what is in the POKéMON’s surrounding vicinity. It becomes docile if grabbed by the whiskers.'),
  -- psyduck in sapphire
  (54, 5400, 8, 'If it uses its mysterious power, PSYDUCK can’t remember having done so. It apparently can’t form a memory of such an event because it goes into an altered state that is much like deep sleep.'),
  -- golduck in sapphire
  (55, 5500, 8, 'GOLDUCK is the fastest swimmer among all POKéMON. It swims effortlessly, even in a rough, stormy sea. It sometimes rescues people from wrecked ships floundering in high seas.'),
  -- mankey in sapphire
  (56, 5600, 8, 'When MANKEY starts shaking and its nasal breathing turns rough, it’s a sure sign that it is becoming angry. However, because it goes into a towering rage almost instantly, it is impossible for anyone to flee its wrath.'),
  -- primeape in sapphire
  (57, 5700, 8, 'When PRIMEAPE becomes furious, its blood circulation is boosted. In turn, its muscles are made even stronger. However, it also becomes much less intelligent at the same time.'),
  -- growlithe in sapphire
  (58, 5800, 8, 'GROWLITHE has a superb sense of smell. Once it smells anything, this POKéMON won’t forget the scent, no matter what. It uses its advanced olfactory sense to determine the emotions of other living things.'),
  -- arcanine in sapphire
  (59, 5900, 8, 'ARCANINE is known for its high speed. It is said to be capable of running over 6,200 miles in a single day and night. The fire that blazes wildly within this POKéMON’s body is its source of power.'),
  -- poliwag in sapphire
  (60, 6000, 8, 'POLIWAG has a very thin skin. It is possible to see the POKéMON’s spiral innards right through the skin. Despite its thinness, however, the skin is also very flexible. Even sharp fangs bounce right off it.'),
  -- poliwhirl in sapphire
  (61, 6100, 8, 'The surface of POLIWHIRL’s body is always wet and slick with an oily fluid. Because of this greasy covering, it can easily slip and slide out of the clutches of any enemy in battle.'),
  -- poliwrath in sapphire
  (62, 6200, 8, 'POLIWRATH’s highly developed, brawny muscles never grow fatigued, however much it exercises. It is so tirelessly strong, this POKéMON can swim back and forth across the Pacific Ocean without effort.'),
  -- abra in sapphire
  (63, 6300, 8, 'ABRA needs to sleep for eighteen hours a day. If it doesn’t, this POKéMON loses its ability to use telekinetic powers. If it is attacked, ABRA escapes using TELEPORT while it is still sleeping.'),
  -- kadabra in sapphire
  (64, 6400, 8, 'KADABRA holds a silver spoon in its hand. The spoon is used to amplify the alpha waves in its brain. Without the spoon, the POKéMON is said to be limited to half the usual amount of its telekinetic powers.'),
  -- alakazam in sapphire
  (65, 6500, 8, 'ALAKAZAM’s brain continually grows, infinitely multiplying brain cells. This amazing brain gives this POKéMON an astoundingly high IQ of 5,000. It has a thorough memory of everything that has occurred in the world.'),
  -- machop in sapphire
  (66, 6600, 8, 'MACHOP exercises by hefting around a GRAVELER as if it were a barbell. There are some MACHOP that travel the world in a quest to master all kinds of martial arts.'),
  -- machoke in sapphire
  (67, 6700, 8, 'MACHOKE undertakes bodybuilding every day even as it helps people with tough, physically demanding labor. On its days off, this POKéMON heads to the fields and mountains to exercise and train.'),
  -- machamp in sapphire
  (68, 6800, 8, 'MACHAMP is known as the POKéMON that has mastered every kind of martial arts. If it grabs hold of the foe with its four arms, the battle is all but over. The hapless foe is thrown far over the horizon.'),
  -- bellsprout in sapphire
  (69, 6900, 8, 'BELLSPROUT’s thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, this POKéMON spits a corrosive fluid that melts even iron.'),
  -- weepinbell in sapphire
  (70, 7000, 8, 'WEEPINBELL has a large hook on its rear end. At night, the POKéMON hooks on to a tree branch and goes to sleep. If it moves around in its sleep, it may wake up to find itself on the ground.'),
  -- victreebel in sapphire
  (71, 7100, 8, 'VICTREEBEL has a long vine that extends from its head. This vine is waved and flicked about as if it were an animal to attract prey. When an unsuspecting prey draws near, this POKéMON swallows it whole.'),
  -- tentacool in sapphire
  (72, 7200, 8, 'TENTACOOL absorbs sunlight and refracts it using water inside its body to convert it into beam energy. This POKéMON shoots beams from its crystal-like eyes.'),
  -- tentacruel in sapphire
  (73, 7300, 8, 'TENTACRUEL has tentacles that can be freely elongated and shortened at will. It ensnares prey with its tentacles and weakens the prey by dosing it with a harsh toxin. It can catch up to 80 prey at the same time.'),
  -- geodude in sapphire
  (74, 7400, 8, 'When GEODUDE sleeps deeply, it buries itself halfway into the ground. It will not awaken even if hikers step on it unwittingly. In the morning, this POKéMON rolls downhill in search of food.'),
  -- graveler in sapphire
  (75, 7500, 8, 'Rocks are GRAVELER’s favorite food. This POKéMON will climb a mountain from the base to the summit, crunchingly feasting on rocks all the while. Upon reaching the peak, it rolls back down to the bottom.'),
  -- golem in sapphire
  (76, 7600, 8, 'GOLEM is known for rolling down from mountains. To prevent them from rolling into the homes of people downhill, grooves have been dug into the sides of mountains to serve as guideways for diverting this POKéMON’s course.'),
  -- ponyta in sapphire
  (77, 7700, 8, 'PONYTA is very weak at birth. It can barely stand up. This POKéMON becomes stronger by stumbling and falling to keep up with its parent.'),
  -- rapidash in sapphire
  (78, 7800, 8, 'RAPIDASH usually can be seen casually cantering in the fields and plains. However, when this POKéMON turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.'),
  -- slowpoke in sapphire
  (79, 7900, 8, 'SLOWPOKE uses its tail to catch prey by dipping it in water at the side of a river. However, this POKéMON often forgets what it’s doing and often spends entire days just loafing at water’s edge.'),
  -- slowbro in sapphire
  (80, 8000, 8, 'SLOWBRO’s tail has a SHELLDER firmly attached with a bite. As a result, the tail can’t be used for fishing anymore. This causes SLOWBRO to grudgingly swim and catch prey instead.'),
  -- magnemite in sapphire
  (81, 8100, 8, 'MAGNEMITE floats in the air by emitting electromagnetic waves from the units at its sides. These waves block gravity. This POKéMON becomes incapable of flight if its internal electrical supply is depleted.'),
  -- magneton in sapphire
  (82, 8200, 8, 'MAGNETON emits a powerful magnetic force that is fatal to electronics and precision instruments. Because of this, it is said that some towns warn people to keep this POKéMON inside a POKé BALL.'),
  -- farfetchd in sapphire
  (83, 8300, 8, 'FARFETCH’D is always seen with a stick from a plant of some sort. Apparently, there are good sticks and bad sticks. This POKéMON has been known to fight with others over sticks.'),
  -- doduo in sapphire
  (84, 8400, 8, 'DODUO’s two heads contain completely identical brains. A scientific study reported that on rare occasions, there will be examples of this POKéMON possessing different sets of brains.'),
  -- dodrio in sapphire
  (85, 8500, 8, 'Apparently, the heads aren’t the only parts of the body that DODRIO has three of. It has three sets of hearts and lungs as well, so it is capable of running long distances without rest.'),
  -- seel in sapphire
  (86, 8600, 8, 'SEEL hunts for prey in the frigid sea underneath sheets of ice. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head.'),
  -- dewgong in sapphire
  (87, 8700, 8, 'DEWGONG loves to snooze on bitterly cold ice. The sight of this POKéMON sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.'),
  -- grimer in sapphire
  (88, 8800, 8, 'GRIMER emerged from the sludge that settled on a polluted seabed. This POKéMON loves anything filthy. It constantly leaks a horribly germ- infested fluid from all over its body.'),
  -- muk in sapphire
  (89, 8900, 8, 'This POKéMON’s favorite food is anything that is repugnantly filthy. In dirty towns where people think nothing of throwing away litter on the streets, MUK are certain to gather.'),
  -- shellder in sapphire
  (90, 9000, 8, 'At night, this POKéMON uses its broad tongue to burrow a hole in the seafloor sand and then sleep in it. While it is sleeping, SHELLDER closes its shell, but leaves its tongue hanging out.'),
  -- cloyster in sapphire
  (91, 9100, 8, 'CLOYSTER is capable of swimming in the sea. It does so by swallowing water, then jetting it out toward the rear. This POKéMON shoots spikes from its shell using the same system.'),
  -- gastly in sapphire
  (92, 9200, 8, 'GASTLY is largely composed of gaseous matter. When exposed to a strong wind, the gaseous body quickly dwindles away. Groups of this POKéMON cluster under the eaves of houses to escape the ravages of wind.'),
  -- haunter in sapphire
  (93, 9300, 8, 'HAUNTER is a dangerous POKéMON. If one beckons you while floating in darkness, you must never approach it. This POKéMON will try to lick you with its tongue and steal your life away.'),
  -- gengar in sapphire
  (94, 9400, 8, 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a GENGAR running past you, pretending to be your shadow.'),
  -- onix in sapphire
  (95, 9500, 8, 'ONIX has a magnet in its brain. It acts as a compass so that this POKéMON does not lose direction while it is tunneling. As it grows older, its body becomes increasingly rounder and smoother.'),
  -- drowzee in sapphire
  (96, 9600, 8, 'If your nose becomes itchy while you are sleeping, it’s a sure sign that one of these POKéMON is standing above your pillow and trying to eat your dream through your nostrils.'),
  -- hypno in sapphire
  (97, 9700, 8, 'HYPNO holds a pendulum in its hand. The arcing movement and glitter of the pendulum lull the foe into a deep state of hypnosis. While this POKéMON searches for prey, it polishes the pendulum.'),
  -- krabby in sapphire
  (98, 9800, 8, 'KRABBY live on beaches, burrowed inside holes dug into the sand. On sandy beaches with little in the way of food, these POKéMON can be seen squabbling with each other over territory.'),
  -- kingler in sapphire
  (99, 9900, 8, 'KINGLER has an enormous, oversized claw. It waves this huge claw in the air to communicate with others. However, because the claw is so heavy, the POKéMON quickly tires.'),
  -- voltorb in sapphire
  (100, 10000, 8, 'VOLTORB is extremely sensitive - it explodes at the slightest of shocks. It is rumored that it was first created when a POKé BALL was exposed to a powerful pulse of energy.'),
  -- electrode in sapphire
  (101, 10100, 8, 'One of ELECTRODE’s characteristics is its attraction to electricity. It is a problematical POKéMON that congregates mostly at electrical power plants to feed on electricity that has just been generated.'),
  -- exeggcute in sapphire
  (102, 10200, 8, 'This POKéMON consists of six eggs that form a closely knit cluster. The six eggs attract each other and spin around. When cracks increasingly appear on the eggs, EXEGGCUTE is close to evolution.'),
  -- exeggutor in sapphire
  (103, 10300, 8, 'EXEGGUTOR originally came from the tropics. Its heads steadily grow larger from exposure to strong sunlight. It is said that when the heads fall off, they group together to form EXEGGCUTE.'),
  -- cubone in sapphire
  (104, 10400, 8, 'CUBONE pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull the POKéMON wears are made by the tears it sheds.'),
  -- marowak in sapphire
  (105, 10500, 8, 'MAROWAK is the evolved form of a CUBONE that has overcome its sadness at the loss of its mother and grown tough. This POKéMON’s tempered and hardened spirit is not easily broken.'),
  -- hitmonlee in sapphire
  (106, 10600, 8, 'HITMONLEE’s legs freely contract and stretch. Using these springlike legs, it bowls over foes with devastating kicks. After battle, it rubs down its legs and loosens the muscles to overcome fatigue.'),
  -- hitmonchan in sapphire
  (107, 10700, 8, 'HITMONCHAN is said to possess the spirit of a boxer who had been working towards a world championship. This POKéMON has an indomitable spirit and will never give up in the face of adversity.'),
  -- lickitung in sapphire
  (108, 10800, 8, 'Whenever LICKITUNG comes across something new, it will unfailingly give it a lick. It does so because it memorizes things by texture and by taste. It is somewhat put off by sour things.'),
  -- koffing in sapphire
  (109, 10900, 8, 'KOFFING embodies toxic substances. It mixes the toxins with raw garbage to set off a chemical reaction that results in a terribly powerful poison gas. The higher the temperature, the more gas is concocted by this POKéMON.'),
  -- weezing in sapphire
  (110, 11000, 8, 'WEEZING alternately shrinks and inflates its twin bodies to mix together toxic gases inside. The more the gases are mixed, the more powerful the toxins become. The POKéMON also becomes more putrid.'),
  -- rhyhorn in sapphire
  (111, 11100, 8, 'RHYHORN’s brain is very small. It is so dense, while on a run it forgets why it started running in the first place. It apparently remembers sometimes if it demolishes something.'),
  -- rhydon in sapphire
  (112, 11200, 8, 'RHYDON has a horn that serves as a drill. It is used for destroying rocks and boulders. This POKéMON occasionally rams into streams of magma, but the armor-like hide prevents it from feeling the heat.'),
  -- chansey in sapphire
  (113, 11300, 8, 'CHANSEY lays nutritionally excellent eggs on an everyday basis. The eggs are so delicious, they are easily and eagerly devoured by even those people who have lost their appetite.'),
  -- tangela in sapphire
  (114, 11400, 8, 'TANGELA’s vines snap off easily if they are grabbed. This happens without pain, allowing it to make a quick getaway. The lost vines are replaced by newly grown vines the very next day.'),
  -- kangaskhan in sapphire
  (115, 11500, 8, 'If you come across a young KANGASKHAN playing by itself, you must never disturb it or attempt to catch it. The baby POKéMON’s parent is sure to be in the area, and it will become violently enraged at you.'),
  -- horsea in sapphire
  (116, 11600, 8, 'If HORSEA senses danger, it will reflexively spray a dense black ink from its mouth and try to escape. This POKéMON swims by cleverly flapping the fins on its back.'),
  -- seadra in sapphire
  (117, 11700, 8, 'SEADRA generates whirlpools by spinning its body. The whirlpools are strong enough to swallow even fishing boats. This POKéMON weakens prey with these currents, then swallows it whole.'),
  -- goldeen in sapphire
  (118, 11800, 8, 'GOLDEEN loves swimming wild and free in rivers and ponds. If one of these POKéMON is placed in an aquarium, it will shatter even the thickest glass with one ram of its horn and make its escape.'),
  -- seaking in sapphire
  (119, 11900, 8, 'SEAKING is very protective of its eggs. The male and female will take turns patrolling around their nest and eggs. The guarding of eggs by these POKéMON goes on for over a month.'),
  -- staryu in sapphire
  (120, 12000, 8, 'STARYU apparently communicates with the stars in the night sky by flashing the red core at the center of its body. If parts of its body are torn, this POKéMON simply regenerates the missing pieces and limbs.'),
  -- starmie in sapphire
  (121, 12100, 8, 'STARMIE swims through water by spinning its star-shaped body as if it were a propeller on a ship. The core at the center of this POKéMON’s body glows in seven colors.'),
  -- mr-mime in sapphire
  (122, 12200, 8, 'MR. MIME is a master of pantomime. Its gestures and motions convince watchers that something unseeable actually exists. Once it is believed, it will exist as if it were a real thing.'),
  -- scyther in sapphire
  (123, 12300, 8, 'SCYTHER is blindingly fast. Its blazing speed enhances the effectiveness of the twin scythes on its forearms. This POKéMON’s scythes are so effective, they can slice through thick logs in one wicked stroke.'),
  -- jynx in sapphire
  (124, 12400, 8, 'JYNX walks rhythmically, swaying and shaking its hips as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without giving any thought to what they are doing.'),
  -- electabuzz in sapphire
  (125, 12500, 8, 'When a storm arrives, gangs of this POKéMON compete with each other to scale heights that are likely to be stricken by lightning bolts. Some towns use ELECTABUZZ in place of lightning rods.'),
  -- magmar in sapphire
  (126, 12600, 8, 'In battle, MAGMAR blows out intensely hot flames from all over its body to intimidate its opponent. This POKéMON’s fiery bursts create heat waves that ignite grass and trees in its surroundings.'),
  -- pinsir in sapphire
  (127, 12700, 8, 'PINSIR has a pair of massive horns Protruding from the surface of these horns are thorns. These thorns are driven deeply into the foe’s body when the pincer closes, making it tough for the foe to escape.'),
  -- tauros in sapphire
  (128, 12800, 8, 'This POKéMON is not satisfied unless it is rampaging at all times. If there is no opponent for TAUROS to battle, it will charge at thick trees and knock them down to calm itself.'),
  -- magikarp in sapphire
  (129, 12900, 8, 'MAGIKARP is virtually useless in battle as it can only splash around. As a result, it is considered to be weak. However, it is actually a very hardy POKéMON that can survive in any body of water no matter how polluted it is.'),
  -- gyarados in sapphire
  (130, 13000, 8, 'Once GYARADOS goes on a rampage, its ferociously violent blood doesn’t calm until it has burned everything down. There are records of this POKéMON’s rampages lasting a whole month.'),
  -- lapras in sapphire
  (131, 13100, 8, 'People have driven LAPRAS almost to the point of extinction. In the evenings, this POKéMON is said to sing plaintively as it seeks what few others of its kind still remain.'),
  -- ditto in sapphire
  (132, 13200, 8, 'DITTO rearranges its cell structure to transform itself into other shapes. However, if it tries to transform itself into something by relying on its memory, this POKéMON manages to get details wrong.'),
  -- eevee in sapphire
  (133, 13300, 8, 'EEVEE has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various STONES causes this POKéMON to evolve.'),
  -- vaporeon in sapphire
  (134, 13400, 8, 'VAPOREON underwent a spontaneous mutation and grew fins and gills that allow it to live underwater. This POKéMON has the ability to freely control water.'),
  -- jolteon in sapphire
  (135, 13500, 8, 'JOLTEON’s cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the POKéMON to drop thunderbolts. The bristling fur is made of electrically charged needles.'),
  -- flareon in sapphire
  (136, 13600, 8, 'FLAREON’s fluffy fur has a functional purpose - it releases heat into the air so that its body does not get excessively hot. This POKéMON’s body temperature can rise to a maximum of 1,650 degrees F.'),
  -- porygon in sapphire
  (137, 13700, 8, 'PORYGON is capable of reverting itself entirely back to program data and entering cyberspace. This POKéMON is copy-protected so it cannot be duplicated by copying.'),
  -- omanyte in sapphire
  (138, 13800, 8, 'OMANYTE is one of the ancient and long- since-extinct POKéMON that have been regenerated from fossils by people. If attacked by an enemy, it withdraws itself inside its hard shell.'),
  -- omastar in sapphire
  (139, 13900, 8, 'OMASTAR uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large and heavy, causing its movements to become too slow and ponderous.'),
  -- kabuto in sapphire
  (140, 14000, 8, 'KABUTO is a POKéMON that has been regenerated from a fossil. However, in extremely rare cases, living examples have been discovered. The POKéMON has not changed at all for 300 million years.'),
  -- kabutops in sapphire
  (141, 14100, 8, 'KABUTOPS swam underwater to hunt for its prey in ancient times. The POKéMON was apparently evolving from being a water-dweller to living on land as evident from the beginnings of change in its gills and legs.'),
  -- aerodactyl in sapphire
  (142, 14200, 8, 'AERODACTYL is a POKéMON from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.'),
  -- snorlax in sapphire
  (143, 14300, 8, 'SNORLAX’s typical day consists of nothing more than eating and sleeping. It is such a docile POKéMON that there are children who use its expansive belly as a place to play.'),
  -- articuno in sapphire
  (144, 14400, 8, 'ARTICUNO is a legendary bird POKéMON that can control ice. The flapping of its wings chills the air. As a result, it is said that when this POKéMON flies, snow will fall.'),
  -- zapdos in sapphire
  (145, 14500, 8, 'ZAPDOS is a legendary bird POKéMON that has the ability to control electricity. It usually lives in thunderclouds. The POKéMON gains power if it is stricken by lightning bolts.'),
  -- moltres in sapphire
  (146, 14600, 8, 'MOLTRES is a legendary bird POKéMON that has the ability to control fire. If this POKéMON is injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.'),
  -- dratini in sapphire
  (147, 14700, 8, 'DRATINI continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels.'),
  -- dragonair in sapphire
  (148, 14800, 8, 'DRAGONAIR stores an enormous amount of energy inside its body. It is said to alter weather conditions in its vicinity by discharging energy from the crystals on its neck and tail.'),
  -- dragonite in sapphire
  (149, 14900, 8, 'DRAGONITE is capable of circling the globe in just sixteen hours. It is a kindhearted POKéMON that leads lost and foundering ships in a storm to the safety of land.'),
  -- mewtwo in sapphire
  (150, 15000, 8, 'MEWTWO is a POKéMON that was created by genetic manipulation. However, even though the scientific power of humans created this POKéMON’s body, they failed to endow MEWTWO with a compassionate heart.'),
  -- mew in sapphire
  (151, 15100, 8, 'MEW is said to possess the genetic composition of all POKéMON. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people.'),
  -- chikorita in sapphire
  (152, 15200, 8, 'In battle, CHIKORITA waves its leaf around to keep the foe at bay. However, a sweet fragrance also wafts from the leaf, becalming the battling POKéMON and creating a cozy, friendly atmosphere all around.'),
  -- bayleef in sapphire
  (153, 15300, 8, 'BAYLEEF’s neck is ringed by curled-up leaves. Inside each tubular leaf is a small shoot of a tree. The fragrance of this shoot makes people peppy.'),
  -- meganium in sapphire
  (154, 15400, 8, 'The fragrance of MEGANIUM’s flower soothes and calms emotions. In battle, this POKéMON gives off more of its becalming scent to blunt the foe’s fighting spirit.'),
  -- cyndaquil in sapphire
  (155, 15500, 8, 'CYNDAQUIL protects itself by flaring up the flames on its back. The flames are vigorous if the POKéMON is angry. However, if it is tired, the flames splutter fitfully with incomplete combustion.'),
  -- quilava in sapphire
  (156, 15600, 8, 'QUILAVA keeps its foes at bay with the intensity of its flames and gusts of superheated air. This POKéMON applies its outstanding nimbleness to dodge attacks even while scorching the foe with flames.'),
  -- typhlosion in sapphire
  (157, 15700, 8, 'TYPHLOSION obscures itself behind a shimmering heat haze that it creates using its intensely hot flames. This POKéMON creates blazing explosive blasts that burn everything to cinders.'),
  -- totodile in sapphire
  (158, 15800, 8, 'Despite the smallness of its body, TOTODILE’s jaws are very powerful. While the POKéMON may think it is just playfully nipping, its bite has enough power to cause serious injury.'),
  -- croconaw in sapphire
  (159, 15900, 8, 'Once CROCONAW has clamped its jaws on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like barbed fishhooks, they become impossible to remove when they have sunk in.'),
  -- feraligatr in sapphire
  (160, 16000, 8, 'FERALIGATR intimidates its foes by opening its huge mouth. In battle, it will kick the ground hard with its thick and powerful hind legs to charge at the foe at an incredible speed.'),
  -- sentret in sapphire
  (161, 16100, 8, 'When SENTRET sleeps, it does so while another stands guard. The sentry wakes the others at the first sign of danger. When this POKéMON becomes separated from its pack, it becomes incapable of sleep due to fear.'),
  -- furret in sapphire
  (162, 16200, 8, 'FURRET has a very slim build. When under attack, it can slickly squirm through narrow spaces and get away. In spite of its short limbs, this POKéMON is very nimble and fleet.'),
  -- hoothoot in sapphire
  (163, 16300, 8, 'HOOTHOOT has an internal organ that senses and tracks the earth’s rotation. Using this special organ, this POKéMON begins hooting at precisely the same time every day.'),
  -- noctowl in sapphire
  (164, 16400, 8, 'NOCTOWL never fails at catching prey in darkness. This POKéMON owes its success to its superior vision that allows it to see in minimal light, and to its soft, supple wings that make no sound in flight.'),
  -- ledyba in sapphire
  (165, 16500, 8, 'LEDYBA secretes an aromatic fluid from where its legs join its body. This fluid is used for communicating with others. This POKéMON conveys its feelings to others by altering the fluid’s scent.'),
  -- ledian in sapphire
  (166, 16600, 8, 'It is said that in lands with clean air, where the stars fill the sky, there live LEDIAN in countless numbers. There is a good reason for this - the POKéMON uses the light of the stars as its energy.'),
  -- spinarak in sapphire
  (167, 16700, 8, 'The web spun by SPINARAK can be considered its second nervous system. It is said that this POKéMON can determine what kind of prey is touching its web just by the tiny vibrations it feels through the web’s strands.'),
  -- ariados in sapphire
  (168, 16800, 8, 'ARIADOS’s feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. This POKéMON constricts the foe with thin and strong silk webbing.'),
  -- crobat in sapphire
  (169, 16900, 8, 'CROBAT sneaks up on its intended prey using wings that barely make a sound. This POKéMON rests by hanging on a tree branch with its rear legs that serve as wings.'),
  -- chinchou in sapphire
  (170, 17000, 8, 'CHINCHOU’s two antennas are filled with cells that generate strong electricity. This POKéMON’s cells create so much electrical power, it even makes itself tingle slightly.'),
  -- lanturn in sapphire
  (171, 17100, 8, 'LANTURN is known to emit light. If you peer down into the dark sea from a ship at night, you can sometimes see this POKéMON’s light rising from the depths where it swims. It gives the sea an appearance of a starlit night.'),
  -- pichu in sapphire
  (172, 17200, 8, 'When PICHU plays with others, it may short out electricity with another PICHU, creating a shower of sparks. In that event, this POKéMON will begin crying, startled by the flash of sparks.'),
  -- cleffa in sapphire
  (173, 17300, 8, 'On nights with many shooting stars, CLEFFA can be seen dancing in a ring. They dance through the night and stop only at the break of day, when these POKéMON quench their thirst with the morning dew.'),
  -- igglybuff in sapphire
  (174, 17400, 8, 'IGGLYBUFF has a soft and plushy body that feels very much like a marshmallow. From this body wafts a gently sweet fragrance that soothes and calms the emotions of its foes.'),
  -- togepi in sapphire
  (175, 17500, 8, 'As its energy, TOGEPI uses the positive emotions of compassion and pleasure exuded by people and POKéMON. This POKéMON stores up feelings of happiness inside its shell, then shares them with others.'),
  -- togetic in sapphire
  (176, 17600, 8, 'TOGETIC is said to be a POKéMON that brings good fortune. When the POKéMON spots someone who is pure of heart, it is said to appear and share its happiness with that person.'),
  -- natu in sapphire
  (177, 17700, 8, 'NATU has a highly developed jumping ability. The POKéMON flaps and leaps onto tree branches that are taller than grown-up people to pick at the tree’s new shoots.'),
  -- xatu in sapphire
  (178, 17800, 8, 'XATU is known to stand motionless while staring at the sun all day long. Some people revere it as a mystical POKéMON out of their belief that XATU is in possession of the power to see into the future.'),
  -- mareep in sapphire
  (179, 17900, 8, 'MAREEP’s fluffy coat of wool rubs together and builds a static charge. The more static electricity is charged, the more brightly the lightbulb at the tip of its tail grows.'),
  -- flaaffy in sapphire
  (180, 18000, 8, 'FLAAFFY’s wool quality changes so that it can generate a high amount of static electricity with a small amount of wool. The bare and slick parts of its hide are shielded against electricity.'),
  -- ampharos in sapphire
  (181, 18100, 8, 'AMPHAROS gives off so much light that it can be seen even from space. People in the old days used the light of this POKéMON to send signals back and forth with others far away.'),
  -- bellossom in sapphire
  (182, 18200, 8, 'A BELLOSSOM grows flowers more beautifully if it has evolved from a smelly GLOOM - the stinkier the better. At night, this POKéMON closes its petals and goes to sleep.'),
  -- marill in sapphire
  (183, 18300, 8, 'When fishing for food at the edge of a fast-running stream, MARILL wraps its tail around the trunk of a tree. This POKéMON’s tail is flexible and configured to stretch.'),
  -- azumarill in sapphire
  (184, 18400, 8, 'AZUMARILL can make balloons out of air. It makes these air balloons if it spots a drowning POKéMON. The air balloons enable the POKéMON in trouble to breathe.'),
  -- sudowoodo in sapphire
  (185, 18500, 8, 'SUDOWOODO camouflages itself as a tree to avoid being attacked by enemies. However, because the forelegs remain green throughout the year, the POKéMON is easily identified as a fake during the winter.'),
  -- politoed in sapphire
  (186, 18600, 8, 'The curled hair on POLITOED’s head is proof of its status as a king. It is said that the longer and more curled the hair, the more respect this POKéMON earns from its peers.'),
  -- hoppip in sapphire
  (187, 18700, 8, 'This POKéMON drifts and floats with the wind. If it senses the approach of strong winds, HOPPIP links its leaves with other HOPPIP to prepare against being blown away.'),
  -- skiploom in sapphire
  (188, 18800, 8, 'SKIPLOOM’s flower blossoms when the temperature rises above 64 degrees F. How much the flower opens depends on the temperature. For that reason, this POKéMON is sometimes used as a thermometer.'),
  -- jumpluff in sapphire
  (189, 18900, 8, 'JUMPLUFF rides warm southern winds to cross the sea and fly to foreign lands. The POKéMON descends to the ground when it encounters cold air while it is floating.'),
  -- aipom in sapphire
  (190, 19000, 8, 'AIPOM’s tail ends in a hand-like appendage that can be cleverly manipulated. However, because the POKéMON uses its tail so much, its real hands have become rather clumsy.'),
  -- sunkern in sapphire
  (191, 19100, 8, 'SUNKERN tries to move as little as it possibly can. It does so because it tries to conserve all the nutrients it has stored in its body for its evolution. It will not eat a thing, subsisting only on morning dew.'),
  -- sunflora in sapphire
  (192, 19200, 8, 'SUNFLORA converts solar energy into nutrition. It moves around actively in the daytime when it is warm. It stops moving as soon as the sun goes down for the night.'),
  -- yanma in sapphire
  (193, 19300, 8, 'YANMA is capable of seeing 360 degrees without having to move its eyes. It is a great flier that is adept at making sudden stops and turning midair. This POKéMON uses its flying ability to quickly chase down targeted prey.'),
  -- wooper in sapphire
  (194, 19400, 8, 'WOOPER usually lives in water. However, it occasionally comes out onto land in search of food. On land, it coats its body with a gooey, toxic film.'),
  -- quagsire in sapphire
  (195, 19500, 8, 'QUAGSIRE hunts for food by leaving its mouth wide open in water and waiting for its prey to blunder in unaware. Because the POKéMON does not move, it does not get very hungry.'),
  -- espeon in sapphire
  (196, 19600, 8, 'ESPEON is extremely loyal to any TRAINER it considers to be worthy. It is said that this POKéMON developed its precognitive powers to protect its TRAINER from harm.'),
  -- umbreon in sapphire
  (197, 19700, 8, 'UMBREON evolved as a result of exposure to the moon’s waves. It hides silently in darkness and waits for its foes to make a move. The rings on its body glow when it leaps to attack.'),
  -- murkrow in sapphire
  (198, 19800, 8, 'MURKROW was feared and loathed as the alleged bearer of ill fortune. This POKéMON shows strong interest in anything that sparkles or glitters. It will even try to steal rings from women.'),
  -- slowking in sapphire
  (199, 19900, 8, 'SLOWKING undertakes research every day in an effort to solve the mysteries of the world. However, this POKéMON apparently forgets everything it has learned if the SHELLDER on its head comes off.'),
  -- misdreavus in sapphire
  (200, 20000, 8, 'MISDREAVUS frightens people with a creepy, sobbing cry. The POKéMON apparently uses its red spheres to absorb the fearful feelings of foes and turn them into nutrition.'),
  -- unown in sapphire
  (201, 20100, 8, 'This POKéMON is shaped like ancient writing. It is a mystery as to which came first, the ancient writings or the various UNOWN. Research into this topic is ongoing but nothing is known.'),
  -- wobbuffet in sapphire
  (202, 20200, 8, 'WOBBUFFET does nothing but endure attacks - it won’t attack on its own. However, it won’t endure an attack on its tail. When that happens, the POKéMON will try to take the foe with it using DESTINY BOND.'),
  -- girafarig in sapphire
  (203, 20300, 8, 'GIRAFARIG’s rear head contains a tiny brain that is too small for thinking. However, the rear head doesn’t need to sleep, so it can keep watch over its surroundings 24 hours a day.'),
  -- pineco in sapphire
  (204, 20400, 8, 'PINECO hangs from a tree branch and patiently waits for prey to come along. If the POKéMON is disturbed while eating by someone shaking its tree, it drops down to the ground and explodes with no warning.'),
  -- forretress in sapphire
  (205, 20500, 8, 'FORRETRESS conceals itself inside its hardened steel shell. The shell is opened when the POKéMON is catching prey, but it does so at such a quick pace that the shell’s inside cannot be seen.'),
  -- dunsparce in sapphire
  (206, 20600, 8, 'DUNSPARCE has a drill for its tail. It uses this tail to burrow into the ground backwards. This POKéMON is known to make its nest in complex shapes deep under the ground.'),
  -- gligar in sapphire
  (207, 20700, 8, 'GLIGAR glides through the air without a sound as if it were sliding. This POKéMON hangs on to the face of its foe using its clawed hind legs and the large pincers on its forelegs, then injects the prey with its poison barb.'),
  -- steelix in sapphire
  (208, 20800, 8, 'STEELIX lives even further underground than ONIX. This POKéMON is known to dig towards the earth’s core. There are records of this POKéMON reaching a depth of over six-tenths of a mile underground.'),
  -- snubbull in sapphire
  (209, 20900, 8, 'By baring its fangs and making a scary face, SNUBBULL sends smaller POKéMON scurrying away in terror. However, this POKéMON seems a little sad at making its foes flee.'),
  -- granbull in sapphire
  (210, 21000, 8, 'GRANBULL has a particularly well- developed lower jaw. The enormous fangs are heavy, causing the POKéMON to tip its head back for balance. Unless it is startled, it will not try to bite indiscriminately.'),
  -- qwilfish in sapphire
  (211, 21100, 8, 'QWILFISH sucks in water, inflating itself. This POKéMON uses the pressure of the water it swallowed to shoot toxic quills all at once from all over its body. It finds swimming somewhat challenging.'),
  -- scizor in sapphire
  (212, 21200, 8, 'SCIZOR has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. This POKéMON flaps its wings to regulate its body temperature.'),
  -- shuckle in sapphire
  (213, 21300, 8, 'SHUCKLE quietly hides itself under rocks, keeping its body concealed inside its hard shell while eating berries it has stored away. The berries mix with its body fluids to become a juice.'),
  -- heracross in sapphire
  (214, 21400, 8, 'HERACROSS has sharp claws on its feet. These are planted firmly into the ground or the bark of a tree, giving the POKéMON a secure and solid footing to forcefully fling away foes with its proud horn.'),
  -- sneasel in sapphire
  (215, 21500, 8, 'SNEASEL scales trees by punching its hooked claws into the bark. This POKéMON seeks out unguarded nests and steals eggs for food while the parents are away.'),
  -- teddiursa in sapphire
  (216, 21600, 8, 'This POKéMON likes to lick its palms that are sweetened by being soaked in honey. TEDDIURSA concocts its own honey by blending fruits and pollen collected by BEEDRILL.'),
  -- ursaring in sapphire
  (217, 21700, 8, 'In the forests inhabited by URSARING, it is said that there are many streams and towering trees where they gather food. This POKéMON walks through its forest gathering food every day.'),
  -- slugma in sapphire
  (218, 21800, 8, 'SLUGMA does not have any blood in its body. Instead, intensely hot magma circulates throughout this POKéMON’s body, carrying essential nutrients and oxygen to its organs.'),
  -- magcargo in sapphire
  (219, 21900, 8, 'MAGCARGO’s body temperature is approximately 18,000 degrees F. Water is vaporized on contact. If this POKéMON is caught in the rain, the raindrops instantly turn into steam, cloaking the area in a thick fog.'),
  -- swinub in sapphire
  (220, 22000, 8, 'SWINUB roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under the cover of dead grass. This POKéMON occasionally roots out hot springs.'),
  -- piloswine in sapphire
  (221, 22100, 8, 'PILOSWINE is covered by a thick coat of long hair that enables it to endure the freezing cold. This POKéMON uses its tusks to dig up food that has been buried under ice.'),
  -- corsola in sapphire
  (222, 22200, 8, 'Clusters of CORSOLA congregate in warm seas where they serve as ideal hiding places for smaller POKéMON. When the water temperature falls, this POKéMON migrates to the southern seas.'),
  -- remoraid in sapphire
  (223, 22300, 8, 'REMORAID sucks in water, then expels it at high velocity using its abdominal muscles to shoot down flying prey. When evolution draws near, this POKéMON travels downstream from rivers.'),
  -- octillery in sapphire
  (224, 22400, 8, 'OCTILLERY grabs onto its foe using its tentacles. This POKéMON tries to immobilize it before delivering the finishing blow. If the foe turns out to be too strong, OCTILLERY spews ink to escape.'),
  -- delibird in sapphire
  (225, 22500, 8, 'DELIBIRD carries its food bundled up in its tail. There once was a famous explorer who managed to reach the peak of Mt. Everest thanks to one of these POKéMON sharing its food.'),
  -- mantine in sapphire
  (226, 22600, 8, 'On sunny days, schools of MANTINE can be seen elegantly leaping over the sea’s waves. This POKéMON is not bothered by the REMORAID that hitches rides.'),
  -- skarmory in sapphire
  (227, 22700, 8, 'SKARMORY’s steel wings become tattered and bashed in from repeated battles. Once a year, the battered wings grow back completely, restoring the cutting edges to their pristine state.'),
  -- houndour in sapphire
  (228, 22800, 8, 'HOUNDOUR hunt as a coordinated pack. They communicate with each other using a variety of cries to corner their prey. This POKéMON’s remarkable teamwork is unparalleled.'),
  -- houndoom in sapphire
  (229, 22900, 8, 'In a HOUNDOOM pack, the one with its horns raked sharply towards the back serves a leadership role. These POKéMON choose their leader by fighting amongst themselves.'),
  -- kingdra in sapphire
  (230, 23000, 8, 'KINGDRA sleeps on the seafloor where it is otherwise devoid of life. When a storm arrives, the POKéMON is said to awaken and wander about in search of prey.'),
  -- phanpy in sapphire
  (231, 23100, 8, 'PHANPY uses its long nose to shower itself. When others gather around, they thoroughly douse each other with water. These POKéMON can be seen drying their soaking-wet bodies at the edge of water.'),
  -- donphan in sapphire
  (232, 23200, 8, 'If DONPHAN were to tackle with its hard body, even a house could be destroyed. Using its massive strength, the POKéMON helps clear rock and mud slides that block mountain trails.'),
  -- porygon2 in sapphire
  (233, 23300, 8, 'PORYGON2 was created by humans using the power of science. The man-made POKéMON has been endowed with artificial intelligence that enables it to learn new gestures and emotions on its own.'),
  -- stantler in sapphire
  (234, 23400, 8, 'STANTLER’s magnificent antlers were traded at high prices as works of art. As a result, this POKéMON was hunted close to extinction by those who were after the priceless antlers.'),
  -- smeargle in sapphire
  (235, 23500, 8, 'SMEARGLE marks the boundaries of its territory using a body fluid that leaks out from the tip of its tail. Over 5,000 different marks left by this POKéMON have been found.'),
  -- tyrogue in sapphire
  (236, 23600, 8, 'TYROGUE becomes stressed out if it does not get to train every day. When raising this POKéMON, the TRAINER must establish and uphold various training methods.'),
  -- hitmontop in sapphire
  (237, 23700, 8, 'HITMONTOP spins on its head at high speed, all the while delivering kicks. This technique is a remarkable mix of both offense and defense at the same time. The POKéMON travels faster spinning than it does walking.'),
  -- smoochum in sapphire
  (238, 23800, 8, 'SMOOCHUM actively runs about, but also falls quite often. Whenever the chance arrives, it will look for its reflection to make sure its face hasn’t become dirty.'),
  -- elekid in sapphire
  (239, 23900, 8, 'ELEKID stores electricity in its body. If it touches metal and accidentally discharges all its built-up electricity, this POKéMON begins swinging its arms in circles to recharge itself.'),
  -- magby in sapphire
  (240, 24000, 8, 'MAGBY’s state of health is determined by observing the fire it breathes. If the POKéMON is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames.'),
  -- miltank in sapphire
  (241, 24100, 8, 'MILTANK gives over five gallons of milk on a daily basis. Its sweet milk is enjoyed by children and grown-ups alike. People who can’t drink milk turn it into yogurt and eat it instead.'),
  -- blissey in sapphire
  (242, 24200, 8, 'BLISSEY senses sadness with its fluffy coat of fur. If it does so, this POKéMON will rush over to the sad person, however far they may be, to share an egg of happiness that brings a smile to any face.'),
  -- raikou in sapphire
  (243, 24300, 8, 'RAIKOU embodies the speed of lightning. The roars of this POKéMON send shock waves shuddering through the air and shake the ground as if lightning bolts had come crashing down.'),
  -- entei in sapphire
  (244, 24400, 8, 'ENTEI embodies the passion of magma. This POKéMON is thought to have been born in the eruption of a volcano. It sends up massive bursts of fire that utterly consume all that they touch.'),
  -- suicune in sapphire
  (245, 24500, 8, 'SUICUNE embodies the compassion of a pure spring of water. It runs across the land with gracefulness. This POKéMON has the power to purify dirty water.'),
  -- larvitar in sapphire
  (246, 24600, 8, 'LARVITAR is born deep under the ground. To come up to the surface, this POKéMON must eat its way through the soil above. Until it does so, LARVITAR cannot see its parent’s face.'),
  -- pupitar in sapphire
  (247, 24700, 8, 'PUPITAR creates a gas inside its body that it compresses and forcefully ejects to propel itself like a jet. The body is very durable - it avoids damage even if it hits solid steel.'),
  -- tyranitar in sapphire
  (248, 24800, 8, 'TYRANITAR is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. This POKéMON wanders about in mountains seeking new opponents to fight.'),
  -- lugia in sapphire
  (249, 24900, 8, 'LUGIA’s wings pack devastating power - a light fluttering of its wings can blow apart regular houses. As a result, this POKéMON chooses to live out of sight deep under the sea.'),
  -- ho-oh in sapphire
  (250, 25000, 8, 'HO-OH’s feathers glow in seven colors depending on the angle at which they are struck by light. These feathers are said to bring happiness to the bearers. This POKéMON is said to live at the foot of a rainbow.'),
  -- celebi in sapphire
  (251, 25100, 8, 'This POKéMON came from the future by crossing over time. It is thought that so long as CELEBI appears, a bright and shining future awaits us.'),
  -- treecko in sapphire
  (252, 25200, 8, 'TREECKO is cool, calm, and collected - it never panics under any situation. If a bigger foe were to glare at this POKéMON, it would glare right back without conceding an inch of ground.'),
  -- grovyle in sapphire
  (253, 25300, 8, 'This POKéMON adeptly flies from branch to branch in trees. In a forest, no POKéMON can ever hope to catch a fleeing GROVYLE however fast they may be.'),
  -- sceptile in sapphire
  (254, 25400, 8, 'SCEPTILE has seeds growing on its back. They are said to be bursting with nutrients that revitalize trees. This POKéMON raises the trees in a forest with loving care.'),
  -- torchic in sapphire
  (255, 25500, 8, 'TORCHIC has a place inside its body where it keeps its flame. Give it a hug - it will be glowing with warmth. This POKéMON is covered all over by a fluffy coat of down.'),
  -- combusken in sapphire
  (256, 25600, 8, 'COMBUSKEN battles with the intensely hot flames it spews from its beak and with outstandingly destructive kicks. This POKéMON’s cry is very loud and distracting.'),
  -- blaziken in sapphire
  (257, 25700, 8, 'BLAZIKEN has incredibly strong legs - it can easily clear a 30-story building in one leap. This POKéMON’s blazing punches leave its foes scorched and blackened.'),
  -- mudkip in sapphire
  (258, 25800, 8, 'In water, MUDKIP breathes using the gills on its cheeks. If it is faced with a tight situation in battle, this POKéMON will unleash its amazing power - it can crush rocks bigger than itself.'),
  -- marshtomp in sapphire
  (259, 25900, 8, 'MARSHTOMP is much faster at traveling through mud than it is at swimming. This POKéMON’s hindquarters exhibit obvious development, giving it the ability to walk on just its hind legs.'),
  -- swampert in sapphire
  (260, 26000, 8, 'SWAMPERT predicts storms by sensing subtle differences in the sounds of waves and tidal winds with its fins. If a storm is approaching, it piles up boulders to protect itself.'),
  -- poochyena in sapphire
  (261, 26100, 8, 'POOCHYENA is an omnivore - it will eat anything. A distinguishing feature is how large its fangs are compared to its body. This POKéMON tries to intimidate its foes by making the hair on its tail bristle out.'),
  -- mightyena in sapphire
  (262, 26200, 8, 'MIGHTYENA travel and act as a pack in the wild. The memory of its life in the wild compels the POKéMON to obey only those TRAINERS that it recognizes to possess superior skill.'),
  -- zigzagoon in sapphire
  (263, 26300, 8, 'The hair on ZIGZAGOON’s back is bristly. It rubs the hard back hair against trees to leave its territorial markings. This POKéMON may play dead to fool foes in battle.'),
  -- linoone in sapphire
  (264, 26400, 8, 'When hunting, LINOONE will make a beeline straight for the prey at a full run. While this POKéMON is capable of topping 60 mph, it has to come to a screeching halt before it can turn.'),
  -- wurmple in sapphire
  (265, 26500, 8, 'WURMPLE is targeted by SWELLOW as prey. This POKéMON will try to resist by pointing the spikes on its rear at the attacking predator. It will weaken the foe by leaking poison from the spikes.'),
  -- silcoon in sapphire
  (266, 26600, 8, 'SILCOON was thought to endure hunger and not consume anything before its evolution. However, it is now thought that this POKéMON slakes its thirst by drinking rainwater that collects on its silk.'),
  -- beautifly in sapphire
  (267, 26700, 8, 'BEAUTIFLY has a long mouth like a coiled needle, which is very convenient for collecting pollen from flowers. This POKéMON rides the spring winds as it flits around gathering pollen.'),
  -- cascoon in sapphire
  (268, 26800, 8, 'If it is attacked, CASCOON remains motionless however badly it may be hurt. It does so because if it were to move, its body would be weak upon evolution. This POKéMON will also not forget the pain it endured.'),
  -- dustox in sapphire
  (269, 26900, 8, 'When DUSTOX flaps its wings, a fine dust is scattered all over. This dust is actually a powerful poison that will even make a pro wrestler sick. This POKéMON searches for food using its antennae like radar.'),
  -- lotad in sapphire
  (270, 27000, 8, 'LOTAD is said to have dwelled on land before. However, this POKéMON is thought to have returned to water because the leaf on its head grew large and heavy. It now lives by floating atop the water.'),
  -- lombre in sapphire
  (271, 27100, 8, 'LOMBRE’s entire body is covered by a slippery, slimy film. It feels horribly unpleasant to be touched by this POKéMON’s hands. LOMBRE is often mistaken for a human child.'),
  -- ludicolo in sapphire
  (272, 27200, 8, 'Upon hearing an upbeat and cheerful rhythm, the cells in LUDICOLO’s body become very energetic and active. Even in battle, this POKéMON will exhibit an amazing amount of power.'),
  -- seedot in sapphire
  (273, 27300, 8, 'SEEDOT looks exactly like an acorn when it is dangling from a tree branch. It startles other POKéMON by suddenly moving. This POKéMON polishes its body once a day using leaves.'),
  -- nuzleaf in sapphire
  (274, 27400, 8, 'This POKéMON pulls out the leaf on its head and makes a flute with it. The sound of NUZLEAF’s flute strikes fear and uncertainty in the hearts of people lost in a forest.'),
  -- shiftry in sapphire
  (275, 27500, 8, 'SHIFTRY’s large fans generate awesome gusts of wind at a speed close to 100 feet per second. The whipped-up wind blows anything away. This POKéMON chooses to live quietly deep in forests.'),
  -- taillow in sapphire
  (276, 27600, 8, 'TAILLOW is young - it has only just left its nest. As a result, it sometimes becomes lonesome and cries at night. This POKéMON feeds on WURMPLE that live in forests.'),
  -- swellow in sapphire
  (277, 27700, 8, 'SWELLOW is very conscientious about the upkeep of its glossy wings. Once two SWELLOW are gathered, they diligently take care of cleaning each other’s wings.'),
  -- wingull in sapphire
  (278, 27800, 8, 'WINGULL rides updrafts rising from the sea by extending its long and narrow wings to glide. This POKéMON’s long beak is useful for catching prey.'),
  -- pelipper in sapphire
  (279, 27900, 8, 'PELIPPER searches for food while in flight by skimming the wave tops. This POKéMON dips its large bill in the sea to scoop up food, then swallows everything in one big gulp.'),
  -- ralts in sapphire
  (280, 28000, 8, 'RALTS has the ability to sense the emotions of people. If its TRAINER is in a cheerful mood, this POKéMON grows cheerful and joyous in the same way.'),
  -- kirlia in sapphire
  (281, 28100, 8, 'KIRLIA uses the horns on its head to amplify its psychokinetic power. When the POKéMON uses its power, the air around it becomes distorted, creating mirages of nonexistent scenery.'),
  -- gardevoir in sapphire
  (282, 28200, 8, 'GARDEVOIR has the psychokinetic power to distort the dimensions and create a small black hole. This POKéMON will try to protect its TRAINER even at the risk of its own life.'),
  -- surskit in sapphire
  (283, 28300, 8, 'If SURSKIT senses danger, it secretes a thick, sugary syrup from the tip of its head. There are some POKéMON that love eating this syrup.'),
  -- masquerain in sapphire
  (284, 28400, 8, 'MASQUERAIN’s antennas have eyelike patterns that usually give it an angry look. If the “eyes” are droopy and appear sad, it is said to be a sign that a heavy rainfall is on its way.'),
  -- shroomish in sapphire
  (285, 28500, 8, 'If SHROOMISH senses danger, it shakes its body and scatters spores from the top of its head. This POKéMON’s spores are so toxic, they make trees and weeds wilt.'),
  -- breloom in sapphire
  (286, 28600, 8, 'The seeds ringing BRELOOM’s tail are made of hardened toxic spores. It is horrible to eat the seeds. Just taking a bite of this POKéMON’s seed will cause your stomach to rumble.'),
  -- slakoth in sapphire
  (287, 28700, 8, 'SLAKOTH’s heart beats just once a minute. Whatever happens, it is content to loaf around motionless. It is rare to see this POKéMON in motion.'),
  -- vigoroth in sapphire
  (288, 28800, 8, 'VIGOROTH is simply incapable of remaining still. Even when it tries to sleep, the blood in its veins grows agitated, compelling this POKéMON to run wild throughout the jungle before it can settle down.'),
  -- slaking in sapphire
  (289, 28900, 8, 'Wherever SLAKING live, rings of over a yard in diameter appear in grassy fields. They are made by the POKéMON as it eats all the grass within reach while lying prone on the ground.'),
  -- nincada in sapphire
  (290, 29000, 8, 'NINCADA lives underground. It uses its sharp claws to carve the roots of trees and absorb moisture and nutrients. This POKéMON can’t withstand bright sunlight so avoids it.'),
  -- ninjask in sapphire
  (291, 29100, 8, 'If NINJASK is not trained properly, it will refuse to obey the TRAINER and cry loudly continuously. Because of this quality, this POKéMON is said to be one that puts the TRAINER’s abilities to the test.'),
  -- shedinja in sapphire
  (292, 29200, 8, 'SHEDINJA is a peculiar POKéMON. It seems to appear unsought in a POKé BALL after a NINCADA evolves. This bizarre POKéMON is entirely immobile - it doesn’t even breathe.'),
  -- whismur in sapphire
  (293, 29300, 8, 'WHISMUR is very timid. If it starts to cry loudly, it becomes startled by its own crying and cries even harder. When it finally stops crying, the POKéMON goes to sleep, all tired out.'),
  -- loudred in sapphire
  (294, 29400, 8, 'LOUDRED shouts while stamping its feet. After it finishes shouting, this POKéMON becomes incapable of hearing anything for a while. This is considered to be a weak point.'),
  -- exploud in sapphire
  (295, 29500, 8, 'EXPLOUD communicates its feelings to the others by emitting whistle-like sounds from the tubes on its body. This POKéMON only raises its voice when it is in battle.'),
  -- makuhita in sapphire
  (296, 29600, 8, 'MAKUHITA has a tireless spirit - it will never give up hope. It eats a lot of food, gets plenty of sleep, and it trains very rigorously. By living that way, this POKéMON packs its body with energy.'),
  -- hariyama in sapphire
  (297, 29700, 8, 'HARIYAMA’s thick body may appear fat, but it is actually a hunk of solid muscle. If this POKéMON bears down and tightens all its muscles, its body becomes as hard as a rock.'),
  -- azurill in sapphire
  (298, 29800, 8, 'AZURILL’s tail is large and bouncy. It is packed full of the nutrients this POKéMON needs to grow. AZURILL can be seen bouncing and playing on its big, rubbery tail.'),
  -- nosepass in sapphire
  (299, 29900, 8, 'NOSEPASS had been said to be completely unmoving, with its magnetic nose pointed due north. However, close observation has revealed that the POKéMON actually moves by a little over 3/8 of an inch every year.'),
  -- skitty in sapphire
  (300, 30000, 8, 'SKITTY is known to chase around playfully after its own tail. In the wild, this POKéMON lives in holes in the trees of forests. It is very popular as a pet because of its adorable looks.'),
  -- delcatty in sapphire
  (301, 30100, 8, 'DELCATTY sleeps anywhere it wants without keeping a permanent nest. If other POKéMON approach it as it sleeps, this POKéMON will never fight - it will just move away somewhere else.'),
  -- sableye in sapphire
  (302, 30200, 8, 'SABLEYE digs the ground with sharpened claws to find rocks that it eats. Substances in the eaten rocks crystallize and rise up to the POKéMON’s body surface.'),
  -- mawile in sapphire
  (303, 30300, 8, 'Don’t be taken in by this POKéMON’s cute face - it’s very dangerous. MAWILE fools the foe into letting down its guard, then chomps down with its massive jaws. The steel jaws are really horns that have been transformed.'),
  -- aron in sapphire
  (304, 30400, 8, 'ARON has a body of steel. With one all-out charge, this POKéMON can demolish even a heavy dump truck. The destroyed dump truck then becomes a handy meal for the POKéMON.'),
  -- lairon in sapphire
  (305, 30500, 8, 'LAIRON feeds on iron contained in rocks and water. It makes its nest on mountains where iron ore is buried. As a result, the POKéMON often clashes with humans mining the iron ore.'),
  -- aggron in sapphire
  (306, 30600, 8, 'AGGRON is surprisingly protective of its environment. If its mountain is ravaged by a landslide or a fire, this POKéMON will haul topsoil to the area, plant trees, and beautifully restore its own territory.'),
  -- meditite in sapphire
  (307, 30700, 8, 'MEDITITE heightens its inner energy through meditation. It survives on just one berry a day. Minimal eating is another aspect of this POKéMON’s training.'),
  -- medicham in sapphire
  (308, 30800, 8, 'Through the power of meditation, MEDICHAM developed its sixth sense. It gained the ability to use psychokinetic powers. This POKéMON is known to meditate for a whole month without eating.'),
  -- electrike in sapphire
  (309, 30900, 8, 'ELECTRIKE runs faster than the human eye can follow. The friction from running is converted into electricity, which is then stored in this POKéMON’s fur.'),
  -- manectric in sapphire
  (310, 31000, 8, 'MANECTRIC discharges strong electricity from its mane. The mane is used for collecting electricity in the atmosphere. This POKéMON creates thunderclouds above its head.'),
  -- plusle in sapphire
  (311, 31100, 8, 'When PLUSLE is cheering on its partner, it flashes with electric sparks from all over its body. If its partner loses, this POKéMON cries loudly.'),
  -- minun in sapphire
  (312, 31200, 8, 'MINUN loves to cheer on its partner in battle. It gives off sparks from its body while it is doing so. If its partner is in trouble, this POKéMON gives off increasing amounts of sparks.'),
  -- volbeat in sapphire
  (313, 31300, 8, 'VOLBEAT’s tail glows like a lightbulb. With other VOLBEAT, it uses its tail to draw geometric shapes in the night sky. This POKéMON loves the sweet aroma given off by ILLUMISE.'),
  -- illumise in sapphire
  (314, 31400, 8, 'ILLUMISE leads a flight of illuminated VOLBEAT to draw signs in the night sky. This POKéMON is said to earn greater respect from its peers by composing more complex designs in the sky.'),
  -- roselia in sapphire
  (315, 31500, 8, 'On extremely rare occasions, a ROSELIA is said to appear with its flowers in unusual colors. The thorns on this POKéMON’s head contain a vicious poison.'),
  -- gulpin in sapphire
  (316, 31600, 8, 'Most of GULPIN’s body is made up of its stomach - its heart and brain are very small in comparison. This POKéMON’s stomach contains special enzymes that dissolve anything.'),
  -- swalot in sapphire
  (317, 31700, 8, 'SWALOT has no teeth, so what it eats, it swallows whole, no matter what. Its cavernous mouth yawns widely. An automobile tire could easily fit inside this POKéMON’s mouth.'),
  -- carvanha in sapphire
  (318, 31800, 8, 'If anything invades CARVANHA’s territory, it will swarm and tear at the intruder with its pointed fangs. On its own, however, this POKéMON turns suddenly timid.'),
  -- sharpedo in sapphire
  (319, 31900, 8, 'SHARPEDO can swim at speeds of up to 75 mph by jetting seawater out of its backside. This POKéMON’s drawback is its inability to swim long distances.'),
  -- wailmer in sapphire
  (320, 32000, 8, 'WAILMER can store water inside its body to transform itself into a ball for bouncing around on the ground. By filling itself up with more water, this POKéMON can elevate the height of its bounces.'),
  -- wailord in sapphire
  (321, 32100, 8, 'When chasing prey, WAILORD herds them by leaping out of the water and making a humongous splash. It is breathtaking to see this POKéMON leaping out of the sea with others in its pod.'),
  -- numel in sapphire
  (322, 32200, 8, 'NUMEL stores magma of almost 2,200 degrees F within its body. If it gets wet, the magma cools and hardens. In that event, the POKéMON’s body grows heavy and its movements become sluggish.'),
  -- camerupt in sapphire
  (323, 32300, 8, 'The humps on CAMERUPT’s back are formed by a transformation of its bones. They sometimes blast out molten magma. This POKéMON apparently erupts often when it is enraged.'),
  -- torkoal in sapphire
  (324, 32400, 8, 'TORKOAL generates energy by burning coal. It grows weaker as the fire dies down. When it is preparing for battle, this POKéMON burns more coal.'),
  -- spoink in sapphire
  (325, 32500, 8, 'SPOINK keeps a pearl on top of its head. The pearl functions to amplify this POKéMON’s psychokinetic powers. It is therefore on a constant search for a bigger pearl.'),
  -- grumpig in sapphire
  (326, 32600, 8, 'GRUMPIG uses the black pearls on its body to wield its fantastic powers. When it is doing so, it dances bizarrely. This POKéMON’s black pearls are valuable as works of art.'),
  -- spinda in sapphire
  (327, 32700, 8, 'No two SPINDA are said to have identical spot patterns on their hides. This POKéMON moves in a curious manner as if it is stumbling in dizziness. Its lurching movements can cause the opponent to become confused.'),
  -- trapinch in sapphire
  (328, 32800, 8, 'TRAPINCH is a patient hunter. It digs an inescapable pit in a desert and waits for its prey to come tumbling down. This POKéMON can go a whole week without access to any water.'),
  -- vibrava in sapphire
  (329, 32900, 8, 'VIBRAVA’s wings have not yet completed the process of growing. Rather than flying long distances, they are more useful for generating ultrasonic waves by vibrating.'),
  -- flygon in sapphire
  (330, 33000, 8, 'FLYGON whips up a sandstorm by flapping its wings. The wings create a series of notes that sound like singing. Because the “singing” is the only thing that can be heard in a sandstorm, this POKéMON is said to be the desert spirit.'),
  -- cacnea in sapphire
  (331, 33100, 8, 'The more arid and harsh the environment, the more pretty and fragrant a flower CACNEA grows. This POKéMON battles by wildly swinging its thorny arms.'),
  -- cacturne in sapphire
  (332, 33200, 8, 'If a traveler is going through a desert in the thick of night, CACTURNE will follow in a ragtag group. The POKéMON are biding their time, waiting for the traveler to tire and become incapable of moving.'),
  -- swablu in sapphire
  (333, 33300, 8, 'SWABLU loves to make things clean. If it spots something dirty, it will wipe and polish it with its cottony wings. If its wings become dirty, this POKéMON finds a stream and showers itself.'),
  -- altaria in sapphire
  (334, 33400, 8, 'ALTARIA sings in a gorgeous soprano. Its wings are like cotton clouds. This POKéMON catches updrafts with its buoyant wings and soars way up into the wild blue yonder.'),
  -- zangoose in sapphire
  (335, 33500, 8, 'ZANGOOSE usually stays on all fours, but when angered, it gets up on its hind legs and extends its claws. This POKéMON shares a bitter rivalry with SEVIPER that dates back over generations.'),
  -- seviper in sapphire
  (336, 33600, 8, 'SEVIPER’s swordlike tail serves two purposes - it slashes foes and douses them with secreted poison. This POKéMON will not give up its long- running blood feud with ZANGOOSE.'),
  -- lunatone in sapphire
  (337, 33700, 8, 'LUNATONE becomes active around the time of the full moon. Instead of walking, it moves by floating in midair. The POKéMON’s intimidating red eyes cause all those who see it to become transfixed with fear.'),
  -- solrock in sapphire
  (338, 33800, 8, 'Sunlight is the source of SOLROCK’s power. It is said to possess the ability to read the emotions of others. This POKéMON gives off intense heat while rotating its body.'),
  -- barboach in sapphire
  (339, 33900, 8, 'BARBOACH’s body is covered with a slimy film. If a foe grabs it, this POKéMON just slips out of the enemy’s grip. This POKéMON grows weak if the slimy coating dries up.'),
  -- whiscash in sapphire
  (340, 34000, 8, 'If WHISCASH goes on a wild rampage, it sets off a quake-like tremor with a radius of over three miles. This POKéMON has the ability to predict real earthquakes.'),
  -- corphish in sapphire
  (341, 34100, 8, 'CORPHISH catches prey with its sharp claws. It has no likes or dislikes when it comes to food - it will eat anything. This POKéMON has no trouble living in filthy water.'),
  -- crawdaunt in sapphire
  (342, 34200, 8, 'CRAWDAUNT molts (sheds) its shell regularly. Immediately after molting, its shell is soft and tender. Until the shell hardens, this POKéMON hides in its streambed burrow to avoid attack from its foes.'),
  -- baltoy in sapphire
  (343, 34300, 8, 'As soon as it spots others of its kind, BALTOY congregates with them and then begins crying noisily in unison. This POKéMON sleeps while cleverly balancing itself on its one foot.'),
  -- claydol in sapphire
  (344, 34400, 8, 'CLAYDOL is an enigma that appeared from a clay statue made by an ancient civilization dating back 20,000 years. This POKéMON shoots beams from both its hands.'),
  -- lileep in sapphire
  (345, 34500, 8, 'LILEEP is an ancient POKéMON that was regenerated from a fossil. It remains permanently anchored to a rock. From its immobile perch, this POKéMON intently scans for prey with its two eyes.'),
  -- cradily in sapphire
  (346, 34600, 8, 'CRADILY’s body serves as an anchor, preventing it from being washed away in rough seas. This POKéMON secretes a strong digestive fluid from its tentacles.'),
  -- anorith in sapphire
  (347, 34700, 8, 'ANORITH is said to be a type of POKéMON predecessor, with eight wings at the sides of its body. This POKéMON swam in the primordial sea by undulating these eight wings.'),
  -- armaldo in sapphire
  (348, 34800, 8, 'ARMALDO is a POKéMON species that became extinct in prehistoric times. This POKéMON is said to have walked on its hind legs, which would have been more convenient for life on land.'),
  -- feebas in sapphire
  (349, 34900, 8, 'While FEEBAS’s body is in tatters, it has a hardy and tenacious life force that enables it to live anywhere. However, this POKéMON is also slow and dimwitted, making it an easy catch.'),
  -- milotic in sapphire
  (350, 35000, 8, 'MILOTIC live at the bottom of large lakes. When this POKéMON’s body glows a vivid pink, it releases a pulsing wave of energy that brings soothing calm to restless spirits.'),
  -- castform in sapphire
  (351, 35100, 8, 'CASTFORM borrows the power of nature to transform itself into the guises of the sun, rain clouds, and snow clouds. This POKéMON’s feelings change with the weather.'),
  -- kecleon in sapphire
  (352, 35200, 8, 'KECLEON alters its body coloration to blend in with its surroundings, allowing it to sneak up on its prey unnoticed. Then it lashes out with its long, stretchy tongue to instantly ensnare the unsuspecting target.'),
  -- shuppet in sapphire
  (353, 35300, 8, 'SHUPPET grows by feeding on dark emotions, such as vengefulness and envy, in the hearts of people. It roams through cities in search of grudges that taint people.'),
  -- banette in sapphire
  (354, 35400, 8, 'A cursed energy permeated the stuffing of a discarded and forgotten plush doll, giving it new life as BANETTE. The POKéMON’s energy would escape if it were to ever open its mouth.'),
  -- duskull in sapphire
  (355, 35500, 8, 'DUSKULL wanders lost among the deep darkness of midnight. There is an oft- told admonishment given to misbehaving children that this POKéMON will spirit away bad children who earn scoldings from their mothers.'),
  -- dusclops in sapphire
  (356, 35600, 8, 'DUSCLOPS absorbs anything, however large the object may be. This POKéMON hypnotizes its foe by waving its hands in a macabre manner and by bringing its single eye to bear. The hypnotized foe is made to do DUSCLOPS’s bidding.'),
  -- tropius in sapphire
  (357, 35700, 8, 'Children of the southern tropics eat as snacks the fruit that grows in bunches around the neck of TROPIUS. This POKéMON flies by flapping the leaves on its back as if they were wings.'),
  -- chimecho in sapphire
  (358, 35800, 8, 'In high winds, CHIMECHO cries as it hangs from a tree branch or the eaves of a building using a suction cup on its head. This POKéMON plucks berries with its long tail and eats them.'),
  -- absol in sapphire
  (359, 35900, 8, 'ABSOL has the ability to foretell the coming of natural disasters. It lives in a harsh, rugged mountain environment. This POKéMON very rarely ventures down from the mountains.'),
  -- wynaut in sapphire
  (360, 36000, 8, 'WYNAUT gather on moonlit nights to play by squeezing up against each other. By being squeezed, this POKéMON gains endurance and is trained to dole out powerful counterattacks.'),
  -- snorunt in sapphire
  (361, 36100, 8, 'SNORUNT survives by eating only snow and ice. Old folklore claims that a house visited by this POKéMON is sure to prosper for many generations to come.'),
  -- glalie in sapphire
  (362, 36200, 8, 'GLALIE has the ability to freely control ice. For example, it can instantly freeze its foe solid. After immobilizing its foe in ice, this POKéMON enjoys eating it in leisurely fashion.'),
  -- spheal in sapphire
  (363, 36300, 8, 'SPHEAL always travels by rolling around on its ball-like body. When the season for ice floes arrives, this POKéMON can be seen rolling about on ice and crossing the sea.'),
  -- sealeo in sapphire
  (364, 36400, 8, 'SEALEO often balances and rolls things on the tip of its nose. While the POKéMON is rolling something, it checks the object’s aroma and texture to determine whether it likes the object or not.'),
  -- walrein in sapphire
  (365, 36500, 8, 'WALREIN swims all over in frigid seawater while crushing icebergs with its grand, imposing tusks. Its thick layer of blubber makes enemy attacks bounce off harmlessly.'),
  -- clamperl in sapphire
  (366, 36600, 8, 'CLAMPERL grows while being protected by its rock-hard shell. When its body becomes too large to fit inside the shell, it is sure evidence that this POKéMON is getting close to evolution.'),
  -- huntail in sapphire
  (367, 36700, 8, 'HUNTAIL’s tail is shaped like a fish. It uses the tail to attract prey, then swallows the prey whole with its large, gaping mouth. This POKéMON swims by wiggling its slender body like a snake.'),
  -- gorebyss in sapphire
  (368, 36800, 8, 'Although GOREBYSS is the very picture of elegance and beauty while swimming, it is also cruel. When it spots prey, this POKéMON inserts its thin mouth into the prey’s body and drains the prey of its body fluids.'),
  -- relicanth in sapphire
  (369, 36900, 8, 'RELICANTH is a rare species that was discovered in deep-sea explorations. This POKéMON’s body withstands the enormous water pressure of the ocean depths. Its body is covered in tough scales that are like craggy rocks.'),
  -- luvdisc in sapphire
  (370, 37000, 8, 'LUVDISC’s heart-shaped body is a symbol of love and romance. It is said that any couple meeting this POKéMON is promised a loving relationship that never ends.'),
  -- bagon in sapphire
  (371, 37100, 8, 'BAGON harbors a never-ending dream of one day soaring high among the clouds. As if trying to dispel its frustration over its inability to fly, this POKéMON slams its hard head against huge rocks and shatters them into pebbles.'),
  -- shelgon in sapphire
  (372, 37200, 8, 'Covering SHELGON’s body are outgrowths much like bones. The shell is very hard and bounces off enemy attacks. When awaiting evolution, this POKéMON hides away in a cavern.'),
  -- salamence in sapphire
  (373, 37300, 8, 'By evolving into SALAMENCE, this POKéMON finally realizes its long-held dream of growing wings. To express its joy, it flies and wheels all over the sky while spouting flames from its mouth.'),
  -- beldum in sapphire
  (374, 37400, 8, 'BELDUM keeps itself floating by generating a magnetic force that repels earth’s natural magnetism. When it sleeps, this POKéMON anchors itself to a cliff using the hooks on its rear.'),
  -- metang in sapphire
  (375, 37500, 8, 'When two BELDUM fuse together, METANG is formed. The brains of the BELDUM are joined by a magnetic nervous system. This POKéMON turns its arms to the rear for traveling at high speed.'),
  -- metagross in sapphire
  (376, 37600, 8, 'METAGROSS is the result of two METANG achieving fusion. When hunting, this POKéMON pins the prey to the ground under its massive body. It then eats the helpless victim using the large mouth on its stomach.'),
  -- regirock in sapphire
  (377, 37700, 8, 'REGIROCK’s body is composed entirely of rocks. Recently, a study made the startling discovery that the rocks were all unearthed from different locations.'),
  -- regice in sapphire
  (378, 37800, 8, 'REGICE cloaks itself with frigid air of negative 328 degrees F. Things will freeze solid just by going near this POKéMON. Its icy body is so cold, it will not melt even if it is immersed in magma.'),
  -- registeel in sapphire
  (379, 37900, 8, 'REGISTEEL was imprisoned by people in ancient times. The metal composing its body is thought to be a curious substance that is not of this earth.'),
  -- latias in sapphire
  (380, 38000, 8, 'LATIAS is highly intelligent and capable of understanding human speech. It is covered with a glass-like down. The POKéMON enfolds its body with its down and refracts light to alter its appearance.'),
  -- latios in sapphire
  (381, 38100, 8, 'LATIOS will only open its heart to a TRAINER with a compassionate spirit. This POKéMON can fly faster than a jet plane by folding its forelegs to minimize air resistance.'),
  -- kyogre in sapphire
  (382, 38200, 8, 'KYOGRE is named in mythology as the POKéMON that expanded the sea by covering the land with torrential rains and towering tidal waves. It took to sleep after a cataclysmic battle with GROUDON.'),
  -- groudon in sapphire
  (383, 38300, 8, 'GROUDON has the power to scatter rain clouds and make water evaporate with light and heat. It came as a savior to people who had been suffering from terrible floods.'),
  -- rayquaza in sapphire
  (384, 38400, 8, 'RAYQUAZA is said to have lived for hundreds of millions of years in the earth’s ozone layer, above the clouds. Its existence had been completely unknown because it lived so high in the sky.'),
  -- jirachi in sapphire
  (385, 38500, 8, 'JIRACHI will awaken from its sleep of a thousand years if you sing to it in a voice of purity. It is said to make true any wish that people desire.'),
  -- deoxys in sapphire
  (386, 38600, 8, 'DEOXYS emerged from a virus that came from space. It is highly intelligent and wields psychokinetic powers. This POKéMON shoots lasers from the crystalline organ on its chest.'),
  -- bulbasaur in firered
  (1, 100, 9, 'There is a plant seed on its back right from the day this POKéMON is born. The seed slowly grows larger.'),
  -- ivysaur in firered
  (2, 200, 9, 'There is a plant bulb on its back. When it absorbs nutrients, the bulb is said to blossom into a large flower.'),
  -- venusaur in firered
  (3, 300, 9, 'A bewitching aroma wafts from its flower. The fragrance becalms those engaged in a battle.'),
  -- charmander in firered
  (4, 400, 9, 'From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.'),
  -- charmeleon in firered
  (5, 500, 9, 'It lashes about with its tail to knock down its foe. It then tears up the fallen opponent with sharp claws.'),
  -- charizard in firered
  (6, 600, 9, 'Its wings can carry this POKéMON close to an altitude of 4,600 feet. It blows out fire at very high temperatures.'),
  -- squirtle in firered
  (7, 700, 9, 'When it retracts its long neck into its shell, it squirts out water with vigorous force.'),
  -- wartortle in firered
  (8, 800, 9, 'This POKéMON is very popular as a pet. Its fur-covered tail is a symbol of its longevity.'),
  -- blastoise in firered
  (9, 900, 9, 'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.'),
  -- caterpie in firered
  (10, 1000, 9, 'It is covered with a green skin. When it grows, it sheds the skin, covers itself with silk, and becomes a cocoon.'),
  -- metapod in firered
  (11, 1100, 9, 'Even though it is encased in a sturdy shell, the body inside is tender. It can’t withstand a harsh attack.'),
  -- butterfree in firered
  (12, 1200, 9, 'The wings are protected by rain-repellent dust. As a result, this POKéMON can fly about even in rain.'),
  -- weedle in firered
  (13, 1300, 9, 'Often found in forests and grasslands. It has a sharp, toxic barb of around two inches on top of its head.'),
  -- kakuna in firered
  (14, 1400, 9, 'This POKéMON is in a temporary stage while making its body. It is almost completely unable to move on its own.'),
  -- beedrill in firered
  (15, 1500, 9, 'May appear in a swarm. Flies at violent speeds, all the while stabbing with the toxic stinger on its rear.'),
  -- pidgey in firered
  (16, 1600, 9, 'Does not like to fight. It hides in tall grass and so on, foraging for food such as small bugs.'),
  -- pidgeotto in firered
  (17, 1700, 9, 'The claws on its feet are well developed. It can carry prey such as an EXEGGCUTE to its nest over 60 miles away.'),
  -- pidgeot in firered
  (18, 1800, 9, 'It spreads its gorgeous wings widely to intimidate enemies. It races through the skies at Mach-2 speed.'),
  -- rattata in firered
  (19, 1900, 9, 'Its fangs are long and very sharp. They grow continuously, so it gnaws on hard things to whittle them down.'),
  -- raticate in firered
  (20, 2000, 9, 'Its rear feet have three toes each. They are webbed, enabling it to swim across rivers.'),
  -- spearow in firered
  (21, 2100, 9, 'It busily flits around here and there. Even if it is frail, it can be a tough foe that uses MIRROR MOVE.'),
  -- fearow in firered
  (22, 2200, 9, 'Its huge and magnificent wings can keep it aloft in the sky. It can remain flying a whole day without landing.'),
  -- ekans in firered
  (23, 2300, 9, 'A very common sight in grassland, etc. It flicks its tongue in and out to sense danger in its surroundings.'),
  -- arbok in firered
  (24, 2400, 9, 'The pattern on its belly appears to be a frightening face. Weak foes will flee just at the sight of the pattern.'),
  -- pikachu in firered
  (25, 2500, 9, 'It has small electric sacs on both its cheeks. If threatened, it looses electric charges from the sacs.'),
  -- raichu in firered
  (26, 2600, 9, 'Its electric charges can reach even 100,000 volts. Careless contact can cause even an Indian elephant to faint.'),
  -- sandshrew in firered
  (27, 2700, 9, 'It burrows and lives underground. If threatened, it curls itself up into a ball for protection.'),
  -- sandslash in firered
  (28, 2800, 9, 'It is adept at attacking with the spines on its back and its sharp claws while quickly scurrying about.'),
  -- nidoran-f in firered
  (29, 2900, 9, 'Though small, it must be treated with caution because of its powerfully toxic barbs. The female has smaller horns.'),
  -- nidorina in firered
  (30, 3000, 9, 'The female has a gentle temperament. It emits ultrasonic cries that have the power to befuddle foes.'),
  -- nidoqueen in firered
  (31, 3100, 9, 'The body is covered by stiff, needle- like scales. If it becomes excited, the needles bristle outwards.'),
  -- nidoran-m in firered
  (32, 3200, 9, 'Its large ears are flapped like wings when it is listening to distant sounds. It extends toxic barbs when angered.'),
  -- nidorino in firered
  (33, 3300, 9, 'It is easily angered. By swinging its well- developed horn wildly, it can even punch through diamond.'),
  -- nidoking in firered
  (34, 3400, 9, 'It is recognized by its rock-hard hide and its extended horn. Be careful with the horn as it contains venom.'),
  -- clefairy in firered
  (35, 3500, 9, 'Its adorable appearance makes it popular as a pet. However, it is rare and difficult to find.'),
  -- clefable in firered
  (36, 3600, 9, 'It has an acute sense of hearing. It can easily hear a pin being dropped nearly 1,100 yards away.'),
  -- vulpix in firered
  (37, 3700, 9, 'While young, it has six gorgeous tails. When it grows, several new tails are sprouted.'),
  -- ninetales in firered
  (38, 3800, 9, 'It has nine long tails and fur that gleams gold. It is said to live for 1,000 years.'),
  -- jigglypuff in firered
  (39, 3900, 9, 'It captivates foes with its huge, round eyes, then lulls them to sleep by singing a soothing melody.'),
  -- wigglytuff in firered
  (40, 4000, 9, 'Its fur is extremely fine, dense, and supple. The exquisitely pleasant fur conveys an image of luxury.'),
  -- zubat in firered
  (41, 4100, 9, 'It has no eyes. Instead, it relies on its ultrasonic cries for echo location to flit about in darkness.'),
  -- golbat in firered
  (42, 4200, 9, 'It clamps down on its prey with needle- sharp fangs and drains over 10 ounces of blood in one gulp.'),
  -- oddish in firered
  (43, 4300, 9, 'Its scientific name is “Oddium Wanderus.” At night, it is said to walk nearly 1,000 feet on its two roots.'),
  -- gloom in firered
  (44, 4400, 9, 'Its pistils exude an incredibly foul odor. The horrid stench can cause fainting at a distance of 1.25 miles.'),
  -- vileplume in firered
  (45, 4500, 9, 'Its petals are the largest in the world. It fiendishly scatters allergy-causing pollen from its petals.'),
  -- paras in firered
  (46, 4600, 9, 'Growing out of the bug’s back are mushrooms called tochukaso. The mushrooms grow with the bug host.'),
  -- parasect in firered
  (47, 4700, 9, 'It scatters toxic spores from the mushroom cap. In China, the spores are used as herbal medicine.'),
  -- venonat in firered
  (48, 4800, 9, 'Its eyes act as radar, enabling it to be active in darkness. The eyes can also shoot powerful beams.'),
  -- venomoth in firered
  (49, 4900, 9, 'The wings are covered with dustlike scales. Every time it flaps its wings, it looses highly toxic dust.'),
  -- diglett in firered
  (50, 5000, 9, 'It burrows through the ground at a shallow depth. It leaves raised earth in its wake, making it easy to spot.'),
  -- dugtrio in firered
  (51, 5100, 9, 'In battle, it digs through the ground and strikes the unsuspecting foe from an unexpected direction.'),
  -- meowth in firered
  (52, 5200, 9, 'All it does is sleep during the daytime. At night, it patrols its territory with its eyes aglow.'),
  -- persian in firered
  (53, 5300, 9, 'Has a vicious temperament. Beware if it raises its tail straight up. It is a signal that it is about to pounce and bite.'),
  -- psyduck in firered
  (54, 5400, 9, 'It is constantly wracked by a headache. When the headache turns intense, it begins using mysterious powers.'),
  -- golduck in firered
  (55, 5500, 9, 'The forelegs are webbed, helping to make it an adept swimmer. It can be seen swimming elegantly in lakes, etc.'),
  -- mankey in firered
  (56, 5600, 9, 'Light and agile on its feet, and ferocious in temperament. When angered, it flies into an uncontrollable frenzy.'),
  -- primeape in firered
  (57, 5700, 9, 'It is always outrageously furious. If it gives chase, it will tenaciously track the target no matter how far.'),
  -- growlithe in firered
  (58, 5800, 9, 'Very friendly and faithful to people. It will try to repel enemies by barking and biting.'),
  -- arcanine in firered
  (59, 5900, 9, 'A POKéMON that is described in Chinese legends. It is said to race at an unbelievable speed.'),
  -- poliwag in firered
  (60, 6000, 9, 'Its slick black skin is thin and damp. A part of its internal organs can be seen through the skin as a spiral pattern.'),
  -- poliwhirl in firered
  (61, 6100, 9, 'Its two legs are well developed. Even though it can live on the ground, it prefers living in water.'),
  -- poliwrath in firered
  (62, 6200, 9, 'An adept swimmer, it knows the front crawl, butterfly, and more. It is faster than the best human swimmers.'),
  -- abra in firered
  (63, 6300, 9, 'It sleeps for 18 hours a day. It uses a variety of extrasensory powers even while asleep.'),
  -- kadabra in firered
  (64, 6400, 9, 'It happened one morning - a boy with extrasensory powers awoke in bed transformed into KADABRA.'),
  -- alakazam in firered
  (65, 6500, 9, 'It does not like physical attacks very much. Instead, it freely uses extrasensory powers to defeat foes.'),
  -- machop in firered
  (66, 6600, 9, 'Its whole body is composed of muscles. Even though it’s the size of a human child, it can hurl 100 grown-ups.'),
  -- machoke in firered
  (67, 6700, 9, 'Its formidable body never gets tired. It helps people by doing work such as the moving of heavy goods.'),
  -- machamp in firered
  (68, 6800, 9, 'Its four ruggedly developed arms can launch a flurry of 1,000 punches in just two seconds.'),
  -- bellsprout in firered
  (69, 6900, 9, 'Its bud looks like a human face. Because of the bud, it is rumored to be a type of legendary mandrake plant.'),
  -- weepinbell in firered
  (70, 7000, 9, 'The leafy parts act as cutters for slashing foes. It spits a fluid that dissolves everything.'),
  -- victreebel in firered
  (71, 7100, 9, 'Lures prey into its mouth with a honeylike aroma. The helpless prey is melted with a dissolving fluid.'),
  -- tentacool in firered
  (72, 7200, 9, 'Its eyes are as transparent as crystals. From them, it shoots mysterious beams of light.'),
  -- tentacruel in firered
  (73, 7300, 9, 'It has 80 tentacles that move about freely. They can sting, causing poisoning and sharp, stabbing pain.'),
  -- geodude in firered
  (74, 7400, 9, 'Its round form makes it easy to pick up. Some people have used them to hurl at each other in a snowball fight.'),
  -- graveler in firered
  (75, 7500, 9, 'Be careful while hiking on mountain trails. GRAVELER may come rolling down the path without slowing.'),
  -- golem in firered
  (76, 7600, 9, 'It is enclosed in a hard shell that is as rugged as slabs of rock. It sheds skin once a year to grow larger.'),
  -- ponyta in firered
  (77, 7700, 9, 'Its body is light, and its legs are incredibly powerful. It can clear Ayers Rock in one leap.'),
  -- rapidash in firered
  (78, 7800, 9, 'It can gallop at a top speed of 150 miles per hour. It can race as fast as a bullet train while ablaze.'),
  -- slowpoke in firered
  (79, 7900, 9, 'It is always vacantly lost in thought, but no one knows what it is thinking about. It is good at fishing with its tail.'),
  -- slowbro in firered
  (80, 8000, 9, 'When a SLOWPOKE went hunting in the sea, its tail was bitten by a SHELLDER. That made it evolve into SLOWBRO.'),
  -- magnemite in firered
  (81, 8100, 9, 'It moves while constantly hovering. It discharges THUNDER WAVE and so on from the units at its sides.'),
  -- magneton in firered
  (82, 8200, 9, 'A linked cluster formed of several MAGNEMITE. It discharges powerful magnetic waves at high voltage.'),
  -- farfetchd in firered
  (83, 8300, 9, 'It always walks about with a plant stalk clamped in its beak. The stalk is used for building its nest.'),
  -- doduo in firered
  (84, 8400, 9, 'A two-headed POKéMON that was discovered as a sudden mutation. It runs at a pace of over 60 miles per hour.'),
  -- dodrio in firered
  (85, 8500, 9, 'An odd species that is rarely found. The three heads respectively represent joy, sadness, and anger.'),
  -- seel in firered
  (86, 8600, 9, 'Covered with light blue fur, its hide is thick and tough. It is active in bitter cold of minus 40 degrees Fahrenheit.'),
  -- dewgong in firered
  (87, 8700, 9, 'Its body is covered with a pure white fur. The colder the weather, the more active it becomes.'),
  -- grimer in firered
  (88, 8800, 9, 'Sludge exposed to X rays from the moon transformed into GRIMER. It loves feeding on filthy things.'),
  -- muk in firered
  (89, 8900, 9, 'It is usually undetectable because it blends in with the ground. Touching it can cause terrible poisoning.'),
  -- shellder in firered
  (90, 9000, 9, 'It is encased in a shell that is harder than diamond. Inside, however, it is surprisingly tender.'),
  -- cloyster in firered
  (91, 9100, 9, 'Its shell is extremely hard. It cannot be shattered, even with a bomb. The shell opens only when it is attacking.'),
  -- gastly in firered
  (92, 9200, 9, 'A being that exists as a thin gas. It can topple an Indian elephant by enveloping the prey in two seconds.'),
  -- haunter in firered
  (93, 9300, 9, 'If you get the feeling of being watched in darkness when nobody is around, HAUNTER is there.'),
  -- gengar in firered
  (94, 9400, 9, 'It is said to emerge from darkness to steal the lives of those who become lost in mountains.'),
  -- onix in firered
  (95, 9500, 9, 'It usually lives underground. It searches for food while boring its way through the ground at 50 miles per hour.'),
  -- drowzee in firered
  (96, 9600, 9, 'A descendent of the legendary animal baku, which is said to eat dreams. It is skilled at hypnotism.'),
  -- hypno in firered
  (97, 9700, 9, 'It carries a pendulum-like device. There once was an incident in which it took away a child it hypnotized.'),
  -- krabby in firered
  (98, 9800, 9, 'It can be found near the sea. The large pincers grow back if they are torn out of their sockets.'),
  -- kingler in firered
  (99, 9900, 9, 'Its large and hard pincer has 10,000- horsepower strength. However, being so big, it is unwieldy to move.'),
  -- voltorb in firered
  (100, 10000, 9, 'A life-form whose identity is unknown. It is said to SCREECH or suddenly SELFDESTRUCT.'),
  -- electrode in firered
  (101, 10100, 9, 'It explodes in response to even minor stimuli. It is feared, with the nickname of “The Bomb Ball.”'),
  -- exeggcute in firered
  (102, 10200, 9, 'Even though it appears to be eggs of some sort, it was discovered to be a life- form more like plant seeds.'),
  -- exeggutor in firered
  (103, 10300, 9, 'It is called “The Walking Tropical Rainforest.” Each of the nuts has a face and a will of its own.'),
  -- cubone in firered
  (104, 10400, 9, 'It wears the skull of its dead mother on its head. When it becomes lonesome, it is said to cry loudly.'),
  -- marowak in firered
  (105, 10500, 9, 'It is small and was originally very weak. Its temperament turned ferocious when it began using bones.'),
  -- hitmonlee in firered
  (106, 10600, 9, 'The legs freely contract and stretch. The stretchy legs allow it to hit a distant foe with a rising kick.'),
  -- hitmonchan in firered
  (107, 10700, 9, 'The spirit of a pro boxer has infused this POKéMON. It throws punches that are faster than a bullet train.'),
  -- lickitung in firered
  (108, 10800, 9, 'Its tongue is twice the length of its body. It can be moved like an arm for grabbing food and attacking.'),
  -- koffing in firered
  (109, 10900, 9, 'Its thin, balloon-like body is inflated by horribly toxic gases. It reeks when it is nearby.'),
  -- weezing in firered
  (110, 11000, 9, 'Very rarely, a sudden mutation can result in two small KOFFING twins becoming conjoined as a WEEZING.'),
  -- rhyhorn in firered
  (111, 11100, 9, 'Strong, but not too bright, this POKéMON can shatter even a skyscraper with its charging TACKLES.'),
  -- rhydon in firered
  (112, 11200, 9, 'It begins walking on its hind legs after evolution. It can punch holes through boulders with its horn.'),
  -- chansey in firered
  (113, 11300, 9, 'It lays several eggs a day. The eggs are apparently rich in nutrients and extremely delicious.'),
  -- tangela in firered
  (114, 11400, 9, 'Blue plant vines cloak the POKéMON’s identity in a tangled mass. It entangles anything that gets close.'),
  -- kangaskhan in firered
  (115, 11500, 9, 'The female raises its offspring in a pouch on its belly. It is skilled at attacking using COMET PUNCH.'),
  -- horsea in firered
  (116, 11600, 9, 'It maintains balance using its tail, which is wound up like a coil. It may spray ink from its mouth.'),
  -- seadra in firered
  (117, 11700, 9, 'Its body bristles with sharp spikes. Carelessly trying to touch it could cause fainting from the spikes.'),
  -- goldeen in firered
  (118, 11800, 9, 'Its dorsal and pectoral fins are strongly developed like muscles. It can swim at a speed of five knots.'),
  -- seaking in firered
  (119, 11900, 9, 'The horn on its head is sharp like a drill. It bores a hole in a boulder to make its nest.'),
  -- staryu in firered
  (120, 12000, 9, 'It appears in large numbers by seashores. At night, its central core flashes with a red light.'),
  -- starmie in firered
  (121, 12100, 9, 'This POKéMON has a geometric body. Because of its body, the locals suspect that it is an alien creature.'),
  -- mr-mime in firered
  (122, 12200, 9, 'It is adept at conning people. It is said to be able to create walls out of thin air by miming.'),
  -- scyther in firered
  (123, 12300, 9, 'It tears and shreds prey with its wickedly sharp scythes. It very rarely spreads its wings to fly.'),
  -- jynx in firered
  (124, 12400, 9, 'It speaks using a language that sounds human. Research is under way to determine what is being said.'),
  -- electabuzz in firered
  (125, 12500, 9, 'It loves to feed on strong electricity. It occasionally appears around large power plants and so on.'),
  -- magmar in firered
  (126, 12600, 9, 'Found near the mouth of a volcano. This fire-breather’s body temperature is nearly 2,200 degrees Fahrenheit.'),
  -- pinsir in firered
  (127, 12700, 9, 'Its two long pincer horns are powerful. Once they grip an enemy, they won’t release until the foe is torn.'),
  -- tauros in firered
  (128, 12800, 9, 'When it is about to TACKLE, it whips its body repeatedly with its three long tails.'),
  -- magikarp in firered
  (129, 12900, 9, 'It is virtually worthless in terms of both power and speed. It is the most weak and pathetic POKéMON in the world.'),
  -- gyarados in firered
  (130, 13000, 9, 'It has an extremely aggressive nature. The HYPER BEAM it shoots from its mouth totally incinerates all targets.'),
  -- lapras in firered
  (131, 13100, 9, 'Its high intelligence enables it to understand human speech. It likes to ferry people on its back.'),
  -- ditto in firered
  (132, 13200, 9, 'It can freely recombine its own cellular structure to transform into other life- forms.'),
  -- eevee in firered
  (133, 13300, 9, 'An extremely rare POKéMON that may evolve in a number of different ways depending on stimuli.'),
  -- vaporeon in firered
  (134, 13400, 9, 'Its body’s cellular structure is similar to the molecular composition of water. It can melt invisibly in water.'),
  -- jolteon in firered
  (135, 13500, 9, 'If it is angered or startled, the fur all over its body bristles like sharp needles that pierce foes.'),
  -- flareon in firered
  (136, 13600, 9, 'It has a flame bag inside its body. After inhaling deeply, it blows out flames of nearly 3,100 degrees Fahrenheit.'),
  -- porygon in firered
  (137, 13700, 9, 'Using the most advanced technologies, scientists finally succeeded in making the first artificial POKéMON.'),
  -- omanyte in firered
  (138, 13800, 9, 'A prehistoric POKéMON that lived in the primordial sea, it swims by twisting its 10 tentacles about.'),
  -- omastar in firered
  (139, 13900, 9, 'Its tentacles are highly developed as if they are hands and feet. As soon as it ensnares prey, it bites.'),
  -- kabuto in firered
  (140, 14000, 9, 'This POKéMON was regenerated from the fossil of an ancient creature. It protects itself with a hard shell.'),
  -- kabutops in firered
  (141, 14100, 9, 'It swims freely through water. It catches prey with its scythe-like arms and drains the victim’s fluids.'),
  -- aerodactyl in firered
  (142, 14200, 9, 'It was regenerated from a dinosaur’s genetic matter that was found in amber. It flies with high-pitched cries.'),
  -- snorlax in firered
  (143, 14300, 9, 'It is not satisfied unless it eats over 880 pounds of food every day. When it is done eating, it goes promptly to sleep.'),
  -- articuno in firered
  (144, 14400, 9, 'One of the legendary bird POKéMON. With its long tail trailing behind, its flying form is magnificent.'),
  -- zapdos in firered
  (145, 14500, 9, 'One of the legendary bird POKéMON. While it is flying, it makes crackling and snapping sounds.'),
  -- moltres in firered
  (146, 14600, 9, 'One of the legendary bird POKéMON. Those seeing it are overwhelmed by its orange wings that seem to be on fire.'),
  -- dratini in firered
  (147, 14700, 9, 'Even the young can exceed 6.5 feet in length. It grows larger by repeatedly shedding skin.'),
  -- dragonair in firered
  (148, 14800, 9, 'It is said to live in seas and lakes. Even though it has no wings, it has been seen flying occasionally.'),
  -- dragonite in firered
  (149, 14900, 9, 'It can fly in spite of its big and bulky physique. It circles the globe in just 16 hours.'),
  -- mewtwo in firered
  (150, 15000, 9, 'A POKéMON whose genetic code was repeatedly recombined for research. It turned vicious as a result.'),
  -- mew in firered
  (151, 15100, 9, 'A POKéMON of South America that was thought to have been extinct. It is very intelligent and learns any move.'),
  -- chikorita in firered
  (152, 15200, 9, 'Its pleasantly aromatic leaves have the ability to check the humidity and temperature.'),
  -- bayleef in firered
  (153, 15300, 9, 'A spicy aroma emanates from around its neck. The aroma acts as a stimulant to restore health.'),
  -- meganium in firered
  (154, 15400, 9, 'MEGANIUM’s breath has the power to revive dead grass and plants. It can make them healthy again.'),
  -- cyndaquil in firered
  (155, 15500, 9, 'It usually stays hunched over. If it is angry or surprised, it shoots flames out of its back.'),
  -- quilava in firered
  (156, 15600, 9, 'This POKéMON is fully covered by nonflammable fur. It can withstand any kind of fire attack.'),
  -- typhlosion in firered
  (157, 15700, 9, 'It has a secret, devastating move. It rubs its blazing fur together to cause huge explosions.'),
  -- totodile in firered
  (158, 15800, 9, 'It is small but rough and tough. It won’t hesitate to take a bite out of anything that moves.'),
  -- croconaw in firered
  (159, 15900, 9, 'It opens its huge jaws wide when attacking. If it loses any fangs while biting, they grow back in.'),
  -- feraligatr in firered
  (160, 16000, 9, 'It is hard for it to support its own weight out of water, so it gets down on all fours. But it moves fast.'),
  -- sentret in firered
  (161, 16100, 9, 'It stands on its tail so it can see a long way. If it spots an enemy, it cries loudly to warn its kind.'),
  -- furret in firered
  (162, 16200, 9, 'There is no telling where its tail begins. Despite its short legs, it is quick at hunting RATTATA.'),
  -- hoothoot in firered
  (163, 16300, 9, 'It has a perfect sense of time. Whatever happens, it keeps rhythm by precisely tilting its head in time.'),
  -- noctowl in firered
  (164, 16400, 9, 'When it needs to think, it rotates its head 180 degrees to sharpen its intellectual power.'),
  -- ledyba in firered
  (165, 16500, 9, 'When the weather turns cold, numerous LEDYBA gather from everywhere to cluster and keep each other warm.'),
  -- ledian in firered
  (166, 16600, 9, 'The star patterns on its back grow larger or smaller depending on the number of stars in the night sky.'),
  -- spinarak in firered
  (167, 16700, 9, 'It spins a web using fine--but durable-- thread. It then waits patiently for prey to be trapped.'),
  -- ariados in firered
  (168, 16800, 9, 'A single strand of a special string is endlessly spun out of its rear. The string leads back to its nest.'),
  -- crobat in firered
  (169, 16900, 9, 'The development of wings on its legs enables it to fly fast but also makes it tough to stop and rest.'),
  -- chinchou in firered
  (170, 17000, 9, 'On the dark ocean floor, its only means of communication is its constantly flashing lights.'),
  -- lanturn in firered
  (171, 17100, 9, 'It blinds prey with an intense burst of light, then swallows the immobilized prey in a single gulp.'),
  -- pichu in firered
  (172, 17200, 9, 'Despite its small size, it can zap even adult humans. However, if it does so, it also surprises itself.'),
  -- cleffa in firered
  (173, 17300, 9, 'When numerous meteors illuminate the night sky, sightings of CLEFFA strangely increase.'),
  -- igglybuff in firered
  (174, 17400, 9, 'Its extremely flexible and elastic body makes it bounce continuously--anytime, anywhere.'),
  -- togepi in firered
  (175, 17500, 9, 'A proverb claims that happiness will come to anyone who can make a sleeping TOGEPI stand up.'),
  -- togetic in firered
  (176, 17600, 9, 'It grows dispirited if it is not with kind people. It can float in midair without moving its wings.'),
  -- natu in firered
  (177, 17700, 9, 'It usually forages for food on the ground but may, on rare occasions, hop onto branches to peck at shoots.'),
  -- xatu in firered
  (178, 17800, 9, 'In South America, it is said that its right eye sees the future and its left eye views the past.'),
  -- mareep in firered
  (179, 17900, 9, 'Its fleece grows continually. In the summer, the fleece is fully shed, but it grows back in a week.'),
  -- flaaffy in firered
  (180, 18000, 9, 'Its fluffy fleece easily stores electricity. Its rubbery hide keeps it from being electrocuted.'),
  -- ampharos in firered
  (181, 18100, 9, 'The bright light on its tail can be seen far away. It has been treasured since ancient times as a beacon.'),
  -- bellossom in firered
  (182, 18200, 9, 'Plentiful in the tropics. When it dances, its petals rub together and make a pleasant ringing sound.'),
  -- marill in firered
  (183, 18300, 9, 'The end of its tail serves as a buoy that keeps it from drowning, even in a vicious current.'),
  -- azumarill in firered
  (184, 18400, 9, 'When it plays in water, it rolls up its elongated ears to prevent their insides from getting wet.'),
  -- sudowoodo in firered
  (185, 18500, 9, 'It disguises itself as a tree to avoid attack. It hates water, so it will disappear if it starts raining.'),
  -- politoed in firered
  (186, 18600, 9, 'Whenever three or more of these get together, they sing in a loud voice that sounds like bellowing.'),
  -- hoppip in firered
  (187, 18700, 9, 'Its body is so light, it must grip the ground firmly with its feet to keep from being blown away.'),
  -- skiploom in firered
  (188, 18800, 9, 'It spreads its petals to absorb sunlight. It also floats in the air to get closer to the sun.'),
  -- jumpluff in firered
  (189, 18900, 9, 'It drifts on seasonal winds and spreads its cotton-like spores all over the world to make more offspring.'),
  -- aipom in firered
  (190, 19000, 9, 'It lives atop tall trees. When leaping from branch to branch, it deftly uses its tail for balance.'),
  -- sunkern in firered
  (191, 19100, 9, 'It lives by drinking only dewdrops from under the leaves of plants. It is said that it eats nothing else.'),
  -- sunflora in firered
  (192, 19200, 9, 'In the daytime, it rushes about in a hectic manner, but it comes to a complete stop when the sun sets.'),
  -- yanma in firered
  (193, 19300, 9, 'Its large eyes can scan 360 degrees. It looks in all directions to seek out insects as its prey.'),
  -- wooper in firered
  (194, 19400, 9, 'When it walks around on the ground, it coats its body with a slimy, poisonous film.'),
  -- quagsire in firered
  (195, 19500, 9, 'Due to its relaxed and carefree attitude, it often bumps its head on boulders and boat hulls as it swims.'),
  -- espeon in firered
  (196, 19600, 9, 'By reading air currents, it can predict things such as the weather or its foe’s next move.'),
  -- umbreon in firered
  (197, 19700, 9, 'When darkness falls, the rings on its body begin to glow, striking fear in the hearts of anyone nearby.'),
  -- murkrow in firered
  (198, 19800, 9, 'It is said that when chased, it lures its attacker onto dark mountain trails where the foe will get lost.'),
  -- slowking in firered
  (199, 19900, 9, 'When its head was bitten, toxins entered SLOWPOKE’s head and unlocked an extraordinary power.'),
  -- misdreavus in firered
  (200, 20000, 9, 'It loves to bite and yank people’s hair from behind without warning, just to see their shocked reactions.'),
  -- unown in firered
  (201, 20100, 9, 'Its flat, thin body is always stuck on walls. Its shape appears to have some meaning.'),
  -- wobbuffet in firered
  (202, 20200, 9, 'To keep its pitch-black tail hidden, it lives quietly in the darkness. It is never first to attack.'),
  -- girafarig in firered
  (203, 20300, 9, 'Its tail, which also contains a small brain, may bite on its own if it notices an alluring smell.'),
  -- pineco in firered
  (204, 20400, 9, 'It hangs and waits for flying-insect prey to come near. It does not move about much on its own.'),
  -- forretress in firered
  (205, 20500, 9, 'It remains immovably rooted to its tree. It scatters pieces of its hard shell to drive its enemies away.'),
  -- dunsparce in firered
  (206, 20600, 9, 'If spotted, it escapes by burrowing with its tail. It can hover just slightly using its wings.'),
  -- gligar in firered
  (207, 20700, 9, 'It usually clings to cliffs. When it spots its prey, it spreads its wings and glides down to attack.'),
  -- steelix in firered
  (208, 20800, 9, 'It is said that if an ONIX lives for over 100 years, its composition changes to become diamond-like.'),
  -- snubbull in firered
  (209, 20900, 9, 'It has an active, playful nature. Many women like to frolic with it because of its affectionate ways.'),
  -- granbull in firered
  (210, 21000, 9, 'Because its fangs are too heavy, it always keeps its head tilted down. However, its BITE is powerful.'),
  -- qwilfish in firered
  (211, 21100, 9, 'The small spikes covering its body developed from scales. They inject a toxin that causes fainting.'),
  -- scizor in firered
  (212, 21200, 9, 'Its wings are not used for flying. They are flapped at high speed to adjust its body temperature.'),
  -- shuckle in firered
  (213, 21300, 9, 'It stores BERRIES inside its shell. To avoid attacks, it hides beneath rocks and remains completely still.'),
  -- heracross in firered
  (214, 21400, 9, 'Usually docile, but if disturbed while sipping honey, it chases off the intruder with its horn.'),
  -- sneasel in firered
  (215, 21500, 9, 'Vicious in nature, it drives PIDGEY from their nests and feasts on the eggs that are left behind.'),
  -- teddiursa in firered
  (216, 21600, 9, 'Before food becomes scarce in wintertime, its habit is to hoard food in many hidden locations.'),
  -- ursaring in firered
  (217, 21700, 9, 'With its ability to distinguish any smell, it unfailingly finds all food buried deep underground.'),
  -- slugma in firered
  (218, 21800, 9, 'A common sight in volcanic areas, it slowly slithers around in a constant search for warm places.'),
  -- magcargo in firered
  (219, 21900, 9, 'Its brittle shell occasionally spouts intense flames that circulate throughout its body.'),
  -- swinub in firered
  (220, 22000, 9, 'If it smells something enticing, it dashes off headlong to find the source of the aroma.'),
  -- piloswine in firered
  (221, 22100, 9, 'If it charges at an enemy, the hairs on its back stand up straight. It is very sensitive to sound.'),
  -- corsola in firered
  (222, 22200, 9, 'In a south sea nation, the people live in communities that are built on groups of these POKéMON.'),
  -- remoraid in firered
  (223, 22300, 9, 'Using its dorsal fin as a suction pad, it clings to a MANTINE’s underside to scavenge for leftovers.'),
  -- octillery in firered
  (224, 22400, 9, 'It instinctively sneaks into rocky holes. If it gets sleepy, it steals the nest of a fellow OCTILLERY.'),
  -- delibird in firered
  (225, 22500, 9, 'It nests at the edge of sharp cliffs. It spends all day carrying food to its awaiting chicks.'),
  -- mantine in firered
  (226, 22600, 9, 'Swimming freely in open seas, it may fly out of the water and over the waves if it builds up enough speed.'),
  -- skarmory in firered
  (227, 22700, 9, 'After nesting in bramble bushes, the wings of its chicks grow hard from scratches by thorns.'),
  -- houndour in firered
  (228, 22800, 9, 'To corner prey, they check each other’s location using barks that only they can understand.'),
  -- houndoom in firered
  (229, 22900, 9, 'Upon hearing its eerie howls, other POKéMON get the shivers and head straight back to their nests.'),
  -- kingdra in firered
  (230, 23000, 9, 'It sleeps deep on the ocean floor to build its energy. It is said to cause tornadoes as it wakes.'),
  -- phanpy in firered
  (231, 23100, 9, 'As a sign of affection, it bumps with its snout. However, it is so strong, it may send you flying.'),
  -- donphan in firered
  (232, 23200, 9, 'The longer and bigger its tusks, the higher its rank in its herd. The tusks take a long time to grow.'),
  -- porygon2 in firered
  (233, 23300, 9, 'Further research enhanced its abilities. Sometimes, it may exhibit motions that were not programmed.'),
  -- stantler in firered
  (234, 23400, 9, 'Those who stare at its antlers will gradually lose control of their senses and be unable to stand.'),
  -- smeargle in firered
  (235, 23500, 9, 'Once it becomes an adult, it has a tendency to let its comrades plant footprints on its back.'),
  -- tyrogue in firered
  (236, 23600, 9, 'Even though it is small, it can’t be ignored because it will slug any handy target without warning.'),
  -- hitmontop in firered
  (237, 23700, 9, 'It launches kicks while spinning. If it spins at high speed, it may bore its way into the ground.'),
  -- smoochum in firered
  (238, 23800, 9, 'It always rocks its head slowly backwards and forwards as if it is trying to kiss someone.'),
  -- elekid in firered
  (239, 23900, 9, 'Even in the most vicious storm, this POKéMON plays happily if thunder rumbles in the sky.'),
  -- magby in firered
  (240, 24000, 9, 'It is found in volcanic craters. Its body heat exceeds 1,100 degrees Fahrenheit, so don’t underestimate it.'),
  -- miltank in firered
  (241, 24100, 9, 'If it has just had a baby, the milk it produces contains much more nutrition than usual.'),
  -- blissey in firered
  (242, 24200, 9, 'It has a very compassionate nature. If it sees a sick POKéMON, it will nurse the sufferer back to health.'),
  -- raikou in firered
  (243, 24300, 9, 'This POKéMON races across the land while barking a cry that sounds like crashing thunder.'),
  -- entei in firered
  (244, 24400, 9, 'A POKéMON that races across the land. It is said that one is born every time a new volcano appears.'),
  -- suicune in firered
  (245, 24500, 9, 'This POKéMON races across the land. It is said that north winds will somehow blow whenever it appears.'),
  -- larvitar in firered
  (246, 24600, 9, 'It is born deep underground. It can’t emerge until it has entirely consumed the soil around it.'),
  -- pupitar in firered
  (247, 24700, 9, 'Even sealed in its shell, it can move freely. Hard and fast, it has outstanding destructive power.'),
  -- tyranitar in firered
  (248, 24800, 9, 'Its body can’t be harmed by any sort of attack, so it is very eager to make challenges against enemies.'),
  -- lugia in firered
  (249, 24900, 9, 'It is said to be the guardian of the seas. It is rumored to have been seen on the night of a storm.'),
  -- ho-oh in firered
  (250, 25000, 9, 'A legend says that its body glows in seven colors. A rainbow is said to form behind it when it flies.'),
  -- celebi in firered
  (251, 25100, 9, 'When CELEBI disappears deep in a forest, it is said to leave behind an egg it brought from the future.'),
  -- treecko in firered
  (252, 25200, 9, 'It quickly scales even vertical walls. It senses humidity with its tail to predict the next day’s weather.'),
  -- grovyle in firered
  (253, 25300, 9, 'Its strongly developed thigh muscles give it astounding agility and jumping performance.'),
  -- sceptile in firered
  (254, 25400, 9, 'The leaves on its forelegs are as sharp as swords. It agilely leaps about the branches of trees to strike.'),
  -- torchic in firered
  (255, 25500, 9, 'It has a flame sac inside its belly that perpetually burns. It feels warm if it is hugged.'),
  -- combusken in firered
  (256, 25600, 9, 'It boosts its concentration by emitting harsh cries. Its kicks have outstanding destructive power.'),
  -- blaziken in firered
  (257, 25700, 9, 'When facing a tough foe, it looses flames from its wrists. Its powerful legs let it jump clear over buildings.'),
  -- mudkip in firered
  (258, 25800, 9, 'Its large tail fin propels it through water with powerful acceleration. It is strong in spite of its size.'),
  -- marshtomp in firered
  (259, 25900, 9, 'It is at its best when on muddy ground with poor footing. It quickly overwhelms foes struggling in mud.'),
  -- swampert in firered
  (260, 26000, 9, 'Its arms are rock-hard. With one swing, they can batter down its foe. It makes its nest on beautiful beaches.'),
  -- poochyena in firered
  (261, 26100, 9, 'It has a very tenacious nature. Its acute sense of smell lets it chase a chosen prey without ever losing track.'),
  -- mightyena in firered
  (262, 26200, 9, 'It will always obey the commands of a skilled TRAINER. Its behavior arises from its living in packs in ancient times.'),
  -- zigzagoon in firered
  (263, 26300, 9, 'A POKéMON with abundant curiosity. It shows an interest in everything, so it always zigs and zags.'),
  -- linoone in firered
  (264, 26400, 9, 'When running in a straight line, it can top 60 miles per hour. However, it has a tough time with curved roads.'),
  -- wurmple in firered
  (265, 26500, 9, 'It lives amidst tall grass and in forests. When attacked, it resists by pointing its venomous spikes at the foe.'),
  -- silcoon in firered
  (266, 26600, 9, 'It conserves its energy by moving as little as possible. It awaits evolution while drinking only a little rainwater.'),
  -- beautifly in firered
  (267, 26700, 9, 'Despite its appearance, it has an aggressive nature. It attacks by jabbing with its long, thin mouth.'),
  -- cascoon in firered
  (268, 26800, 9, 'Its body, which is made of soft silk, hardens over time. When cracks appear, evolution is near.'),
  -- dustox in firered
  (269, 26900, 9, 'It scatters horribly toxic dust when it senses danger. They tend to gather in the glow of streetlamps at night.'),
  -- lotad in firered
  (270, 27000, 9, 'It searches about for clean water. If it does not drink water for too long, the leaf on its head wilts.'),
  -- lombre in firered
  (271, 27100, 9, 'It lives at the water’s edge where it is sunny. It sleeps on a bed of water grass by day and becomes active at night.'),
  -- ludicolo in firered
  (272, 27200, 9, 'The rhythm of bright, festive music activates LUDICOLO’s cells, making it more powerful.'),
  -- seedot in firered
  (273, 27300, 9, 'If it remains still, it becomes impossible to distinguish from real nuts. It delights in surprising foraging PIDGEY.'),
  -- nuzleaf in firered
  (274, 27400, 9, 'They live in holes bored in large trees. The sound of NUZLEAF’s grass flute fills listeners with dread.'),
  -- shiftry in firered
  (275, 27500, 9, 'A POKéMON that was feared as a forest guardian. It can read the foe’s mind and take preemptive action.'),
  -- taillow in firered
  (276, 27600, 9, 'It dislikes cold seasons. They migrate to other lands in search of warmth, flying over 180 miles a day.'),
  -- swellow in firered
  (277, 27700, 9, 'If its two tail feathers are standing at attention, it is proof of good health. It soars elegantly in the sky.'),
  -- wingull in firered
  (278, 27800, 9, 'It rides upon ocean winds as if it were a glider. In the winter, it hides food around its nest.'),
  -- pelipper in firered
  (279, 27900, 9, 'It is a flying transporter that carries small POKéMON in its beak. It bobs on the waves to rest its wings.'),
  -- ralts in firered
  (280, 28000, 9, 'It is highly attuned to the emotions of people and POKéMON. It hides if it senses hostility.'),
  -- kirlia in firered
  (281, 28100, 9, 'The cheerful spirit of its TRAINER gives it energy for its psychokinetic power. It spins and dances when happy.'),
  -- gardevoir in firered
  (282, 28200, 9, 'It has the power to predict the future. Its power peaks when it is protecting its TRAINER.'),
  -- surskit in firered
  (283, 28300, 9, 'They usually live on ponds, but after an evening shower, they may appear on puddles in towns.'),
  -- masquerain in firered
  (284, 28400, 9, 'The antennae have distinctive patterns that look like eyes. When it rains, they grow heavy, making flight impossible.'),
  -- shroomish in firered
  (285, 28500, 9, 'It prefers damp places. By day it remains still in the forest shade. It releases toxic powder from its head.'),
  -- breloom in firered
  (286, 28600, 9, 'The seeds on its tail are made of toxic spores. It knocks out foes with quick, virtually invisible punches.'),
  -- slakoth in firered
  (287, 28700, 9, 'It sleeps for 20 hours every day. Making drowsy those that see it is one of its abilities.'),
  -- vigoroth in firered
  (288, 28800, 9, 'It is always hungry because it won’t stop rampaging. Even while it is eating, it can’t keep still.'),
  -- slaking in firered
  (289, 28900, 9, 'It is the world’s most slothful POKéMON. However, it can exert horrifying power by releasing pent-up energy all at once.'),
  -- nincada in firered
  (290, 29000, 9, 'Because it lived almost entirely underground, it is nearly blind. It uses its antennae instead.'),
  -- ninjask in firered
  (291, 29100, 9, 'This POKéMON is so quick, it is said to be able to avoid any attack. It loves to feed on tree sap.'),
  -- shedinja in firered
  (292, 29200, 9, 'A most peculiar POKéMON that somehow appears in a POKé BALL when a NINCADA evolves.'),
  -- whismur in firered
  (293, 29300, 9, 'It usually murmurs, but starts crying loudly if it senses danger. It stops when its ear covers are shut.'),
  -- loudred in firered
  (294, 29400, 9, 'When it stamps its feet and bellows, it generates ultrasonic waves that can blow apart a house.'),
  -- exploud in firered
  (295, 29500, 9, 'It emits a variety of sounds from the holes all over its body. Its loud cries can be heard from over six miles away.'),
  -- makuhita in firered
  (296, 29600, 9, 'It grows stronger by enduring harsh training. It is a gutsy POKéMON that can withstand any attack.'),
  -- hariyama in firered
  (297, 29700, 9, 'It stomps on the ground to build power. It can send a 10-ton truck flying with a straight-arm punch.'),
  -- azurill in firered
  (298, 29800, 9, 'It battles by flinging around its tail, which is bigger than its body. The tail is a flotation device in water.'),
  -- nosepass in firered
  (299, 29900, 9, 'Its magnetic nose consistently faces north. Travelers check NOSEPASS to get their bearings.'),
  -- skitty in firered
  (300, 30000, 9, 'It is said to be difficult to earn its trust. However, it is extremely popular for its cute looks and behavior.'),
  -- delcatty in firered
  (301, 30100, 9, 'The favorite of trend-conscious female TRAINERS, they are used in competition for their style and fur.'),
  -- sableye in firered
  (302, 30200, 9, 'It feeds on gemstone crystals. In darkness, its eyes sparkle with the glitter of jewels.'),
  -- mawile in firered
  (303, 30300, 9, 'It uses its docile-looking face to lull foes into complacency, then bites with its huge, relentless jaws.'),
  -- aron in firered
  (304, 30400, 9, 'It eats iron to build its steel body. It is a pest that descends from mountains to eat bridges and train tracks.'),
  -- lairon in firered
  (305, 30500, 9, 'It habitually shows off its strength with the size of sparks it creates by ramming its steel body into boulders.'),
  -- aggron in firered
  (306, 30600, 9, 'It claims a large mountain as its sole territory. It mercilessly thrashes those that violate its space.'),
  -- meditite in firered
  (307, 30700, 9, 'It never skips its daily yoga training. It heightens its inner strength through meditation.'),
  -- medicham in firered
  (308, 30800, 9, 'It elegantly avoids attacks with dance- like steps, then launches a devastating blow in the same motion.'),
  -- electrike in firered
  (309, 30900, 9, 'It stores static electricity in its fur for discharging. It gives off sparks if a storm approaches.'),
  -- manectric in firered
  (310, 31000, 9, 'It rarely appears before people. It is said to nest where lightning has fallen.'),
  -- plusle in firered
  (311, 31100, 9, 'It cheers on partners while scattering sparks from its body. It climbs telephone poles to absorb electricity.'),
  -- minun in firered
  (312, 31200, 9, 'Its dislike of water makes it take shelter under the eaves of houses in rain. It uses pom-poms made of sparks for cheering.'),
  -- volbeat in firered
  (313, 31300, 9, 'It lives around clean ponds. At night, its rear lights up. It converses with others by flashing its light.'),
  -- illumise in firered
  (314, 31400, 9, 'It guides VOLBEAT to draw signs in night skies. There are scientists that study the patterns it creates.'),
  -- roselia in firered
  (315, 31500, 9, 'Its flowers give off a relaxing fragrance. The stronger its aroma, the healthier the ROSELIA is.'),
  -- gulpin in firered
  (316, 31600, 9, 'There is nothing its stomach can’t digest. While it is digesting, vile, overpowering gases are expelled.'),
  -- swalot in firered
  (317, 31700, 9, 'It can swallow a tire whole in one gulp. It secretes a horribly toxic fluid from the pores on its body.'),
  -- carvanha in firered
  (318, 31800, 9, 'It lives in massive rivers that course through jungles. It swarms prey that enter its territory.'),
  -- sharpedo in firered
  (319, 31900, 9, 'The ruffian of the seas, it has fangs that crunch through iron. It swims by jetting water from its rear.'),
  -- wailmer in firered
  (320, 32000, 9, 'When it sucks in a large volume of seawater, it becomes like a big, bouncy ball. It eats a ton of food daily.'),
  -- wailord in firered
  (321, 32100, 9, 'It is among the largest of all POKéMON. It herds prey in a pack then swallows the massed prey in one gulp.'),
  -- numel in firered
  (322, 32200, 9, 'Magma of almost 2,200 degrees Fahrenheit courses through its body. When it grows cold, the magma hardens and slows it.'),
  -- camerupt in firered
  (323, 32300, 9, 'If angered, the humps on its back erupt in a shower of molten lava. It lives in the craters of volcanoes.'),
  -- torkoal in firered
  (324, 32400, 9, 'It burns coal inside its shell. If it is attacked, it belches thick, black smoke and flees.'),
  -- spoink in firered
  (325, 32500, 9, 'It apparently dies if it stops bouncing about. It carries a pearl from CLAMPERL on its head.'),
  -- grumpig in firered
  (326, 32600, 9, 'It can gain control over foes by doing odd dance steps. The black pearls on its forehead are precious gems.'),
  -- spinda in firered
  (327, 32700, 9, 'No two SPINDA are said to have identical patterns. It confuses foes with its stumbling motions.'),
  -- trapinch in firered
  (328, 32800, 9, 'It lives in arid deserts. It makes a sloping pit trap in sand where it patiently awaits prey.'),
  -- vibrava in firered
  (329, 32900, 9, 'It generates ultrasonic waves by violently flapping its wings. After making its prey faint, it melts the prey with acid.'),
  -- flygon in firered
  (330, 33000, 9, 'It hides itself by kicking up desert sand with its wings. Red covers shield its eyes from sand.'),
  -- cacnea in firered
  (331, 33100, 9, 'It prefers harsh environments such as deserts. It can survive for 30 days on water stored in its body.'),
  -- cacturne in firered
  (332, 33200, 9, 'It lives in deserts. It becomes active at night when it hunts for prey exhausted from the desert’s heat.'),
  -- swablu in firered
  (333, 33300, 9, 'It constantly grooms its cotton-like wings. It takes a shower to clean itself if it becomes dirty.'),
  -- altaria in firered
  (334, 33400, 9, 'If you hear a beautiful melody trilling deep among mountains far from people, it is ALTARIA’s humming.'),
  -- zangoose in firered
  (335, 33500, 9, 'If it comes across a SEVIPER, its fur bristles and it assumes its battle pose. Its sharp claws are its best weapon.'),
  -- seviper in firered
  (336, 33600, 9, 'It sharpens its swordlike tail on hard rocks. It hides in tall grass and strikes unwary prey with venomous fangs.'),
  -- lunatone in firered
  (337, 33700, 9, 'Its health ebbs and flows with the lunar cycle. It brims with power when exposed to the light of the full moon.'),
  -- solrock in firered
  (338, 33800, 9, 'It absorbs solar energy during the day. Always expressionless, it can sense what its foe is thinking.'),
  -- barboach in firered
  (339, 33900, 9, 'It probes muddy riverbeds with its two long whiskers. A slimy film protects its body.'),
  -- whiscash in firered
  (340, 34000, 9, 'It makes its nest at the bottom of swamps. It will eat anything - if it is alive, WHISCASH will eat it.'),
  -- corphish in firered
  (341, 34100, 9, 'It came from overseas. It is a very hardy creature that will quickly proliferate, even in polluted streams.'),
  -- crawdaunt in firered
  (342, 34200, 9, 'A rough customer that wildly flails its giant claws. It is said to be extremely hard to raise.'),
  -- baltoy in firered
  (343, 34300, 9, 'It was discovered in ancient ruins. While moving, it constantly spins. It stands on one foot even when asleep.'),
  -- claydol in firered
  (344, 34400, 9, 'It appears to have been born from clay dolls made by ancient people. It uses telekinesis to float and move.'),
  -- lileep in firered
  (345, 34500, 9, 'It became extinct roughly 100 million years ago. It was regenerated from a fossil using advanced techniques.'),
  -- cradily in firered
  (346, 34600, 9, 'It ensnares prey with its eight tentacles. It then melts the prey with a strong acid before feeding.'),
  -- anorith in firered
  (347, 34700, 9, 'It is a kind of POKéMON progenitor. It uses its extending claws to catch prey hiding among rocks on the seafloor.'),
  -- armaldo in firered
  (348, 34800, 9, 'Protected by a hard shell, its body is very sturdy. It skewers prey with its claws to feed.'),
  -- feebas in firered
  (349, 34900, 9, 'Ridiculed for its shabby appearance, it is ignored by researchers. It lives in ponds choked with weeds.'),
  -- milotic in firered
  (350, 35000, 9, 'MILOTIC is breathtakingly beautiful. Those that see it are said to forget their combative spirits.'),
  -- castform in firered
  (351, 35100, 9, 'It has the ability to change its form into the sun, the rain, or a snow cloud, depending on the weather.'),
  -- kecleon in firered
  (352, 35200, 9, 'It changes body color to blend in with its surroundings. It also changes color if it is happy or sad.'),
  -- shuppet in firered
  (353, 35300, 9, 'It loves to feed on feelings like envy and malice. Its upright horn catches the emotions of people.'),
  -- banette in firered
  (354, 35400, 9, 'Strong feelings of hatred turned a puppet into a POKéMON. If it opens its mouth, its cursed energy escapes.'),
  -- duskull in firered
  (355, 35500, 9, 'Making itself invisible, it silently sneaks up to prey. It has the ability to slip through thick walls.'),
  -- dusclops in firered
  (356, 35600, 9, 'Its body is entirely hollow. When it opens its mouth, it sucks everything in as if it were a black hole.'),
  -- tropius in firered
  (357, 35700, 9, 'It lives in tropical jungles. The bunch of fruit around its neck is delicious. The fruit grows twice a year.'),
  -- chimecho in firered
  (358, 35800, 9, 'It travels by riding on winds. It cleverly uses its long tail to pluck nuts and berries, which it loves to eat.'),
  -- absol in firered
  (359, 35900, 9, 'It appears when it senses an impending natural disaster. As a result, it was mistaken as a doom-bringer.'),
  -- wynaut in firered
  (360, 36000, 9, 'It tends to move in a pack with others. They cluster in a tight group to sleep in a cave.'),
  -- snorunt in firered
  (361, 36100, 9, 'It is said that a home visited by a SNORUNT will prosper. It can withstand cold of minus 150 degrees Fahrenheit.'),
  -- glalie in firered
  (362, 36200, 9, 'It has a body of ice that won’t melt, even with fire. It can instantly freeze moisture in the atmosphere.'),
  -- spheal in firered
  (363, 36300, 9, 'Its body is covered in fluffy fur. The fur keeps it from feeling cold while it is rolling on ice.'),
  -- sealeo in firered
  (364, 36400, 9, 'It touches new things with its nose to test for smell and feel. It plays by spinning SPHEAL on its nose.'),
  -- walrein in firered
  (365, 36500, 9, 'It swims through icy seas while shattering ice floes with its large tusks. It is protected by its thick blubber.'),
  -- clamperl in firered
  (366, 36600, 9, 'It is protected by a sturdy shell. Once in a lifetime, it makes a magnificent pearl.'),
  -- huntail in firered
  (367, 36700, 9, 'It lives deep in the sea where no light ever filters down. It lights up its small fishlike tail to attract prey.'),
  -- gorebyss in firered
  (368, 36800, 9, 'Its swimming form is exquisitely elegant. With its thin mouth, it feeds on seaweed that grows between rocks.'),
  -- relicanth in firered
  (369, 36900, 9, 'It has remained unchanged for 100 million years. It was discovered during a deep-sea exploration.'),
  -- luvdisc in firered
  (370, 37000, 9, 'During the spawning season, countless LUVDISC congregate at coral reefs, turning the waters pink.'),
  -- bagon in firered
  (371, 37100, 9, 'Its steel-hard head can shatter boulders. It longingly hopes for wings to grow so it can fly.'),
  -- shelgon in firered
  (372, 37200, 9, 'Its armored body makes all attacks bounce off. The armor is too tough, however, making it heavy and somewhat sluggish.'),
  -- salamence in firered
  (373, 37300, 9, 'It becomes uncontrollable if it is enraged. It destroys everything with shredding claws and fire.'),
  -- beldum in firered
  (374, 37400, 9, 'It uses magnetic waves to converse with its kind. All the cells in its body are magnetic.'),
  -- metang in firered
  (375, 37500, 9, 'It floats midair using magnetism. Its body is so tough, even a crash with a jet plane won’t leave a scratch.'),
  -- metagross in firered
  (376, 37600, 9, 'It is formed by two METANG fusing. Its four brains are said to be superior to a supercomputer.'),
  -- regirock in firered
  (377, 37700, 9, 'It is entirely composed of rocks with no sign of a brain or heart. It is a mystery even to modern scientists.'),
  -- regice in firered
  (378, 37800, 9, 'Research revealed that its body is made of the same kind of ice that is found at the South Pole.'),
  -- registeel in firered
  (379, 37900, 9, 'It is sturdier than any kind of metal. It hardened due to pressure underground over tens of thousands of years.'),
  -- latias in firered
  (380, 38000, 9, 'It can telepathically communicate with people. It changes its appearance using its down that refracts light.'),
  -- latios in firered
  (381, 38100, 9, 'It has a docile temperament and dislikes fighting. Tucking in its forelegs, it can fly faster than a jet plane.'),
  -- kyogre in firered
  (382, 38200, 9, 'This POKéMON is said to have expanded the sea by bringing heavy rains. It has the power to control water.'),
  -- groudon in firered
  (383, 38300, 9, 'This legendary POKéMON is said to represent the land. It went to sleep after dueling KYOGRE.'),
  -- rayquaza in firered
  (384, 38400, 9, 'It has lived for hundreds of millions of years in the ozone layer. Its flying form looks like a meteor.'),
  -- jirachi in firered
  (385, 38500, 9, 'It is said to make any wish come true. It is awake for only seven days out of a thousand years.'),
  -- deoxys in firered
  (386, 38600, 9, 'This DEOXYS has transformed into its aggressive guise. It can fool enemies by altering its appearance.'),
  -- bulbasaur in leafgreen
  (1, 100, 10, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.'),
  -- ivysaur in leafgreen
  (2, 200, 10, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.'),
  -- venusaur in leafgreen
  (3, 300, 10, 'Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.'),
  -- charmander in leafgreen
  (4, 400, 10, 'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.'),
  -- charmeleon in leafgreen
  (5, 500, 10, 'When it swings its burning tail, it elevates the air temperature to unbearably high levels.'),
  -- charizard in leafgreen
  (6, 600, 10, 'It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.'),
  -- squirtle in leafgreen
  (7, 700, 10, 'After birth, its back swells and hardens into a shell. It powerfully sprays foam from its mouth.'),
  -- wartortle in leafgreen
  (8, 800, 10, 'It often hides in water to stalk unwary prey. For fast swimming, it moves its ears to maintain balance.'),
  -- blastoise in leafgreen
  (9, 900, 10, 'The pressurized water jets on this brutal POKéMON’s shell are used for high- speed tackles.'),
  -- caterpie in leafgreen
  (10, 1000, 10, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.'),
  -- metapod in leafgreen
  (11, 1100, 10, 'This POKéMON is vulnerable to attack while its shell is soft, exposing its weak and tender body.'),
  -- butterfree in leafgreen
  (12, 1200, 10, 'In battle, it flaps its wings at great speed to release highly toxic dust into the air.'),
  -- weedle in leafgreen
  (13, 1300, 10, 'Often found in forests, eating leaves. It has a sharp stinger on its head that injects poison.'),
  -- kakuna in leafgreen
  (14, 1400, 10, 'Almost incapable of moving, this POKéMON can only harden its shell to protect itself when it is in danger.'),
  -- beedrill in leafgreen
  (15, 1500, 10, 'It flies at high speed and attacks using the large venomous stingers on its forelegs and tail.'),
  -- pidgey in leafgreen
  (16, 1600, 10, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.'),
  -- pidgeotto in leafgreen
  (17, 1700, 10, 'Very protective of its sprawling territorial area, this POKéMON will fiercely peck at any intruder.'),
  -- pidgeot in leafgreen
  (18, 1800, 10, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as MAGIKARP.'),
  -- rattata in leafgreen
  (19, 1900, 10, 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.'),
  -- raticate in leafgreen
  (20, 2000, 10, 'It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.'),
  -- spearow in leafgreen
  (21, 2100, 10, 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.'),
  -- fearow in leafgreen
  (22, 2200, 10, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.'),
  -- ekans in leafgreen
  (23, 2300, 10, 'Moving silently and stealthily, it eats the eggs of birds, such as PIDGEY and SPEAROW, whole.'),
  -- arbok in leafgreen
  (24, 2400, 10, 'It is rumored that the ferocious warning markings on its belly differ from area to area.'),
  -- pikachu in leafgreen
  (25, 2500, 10, 'When several of these POKéMON gather, their electricity can build and cause lightning storms.'),
  -- raichu in leafgreen
  (26, 2600, 10, 'Its long tail serves as a ground to protect itself from its own high-voltage power.'),
  -- sandshrew in leafgreen
  (27, 2700, 10, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for prey.'),
  -- sandslash in leafgreen
  (28, 2800, 10, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.'),
  -- nidoran-f in leafgreen
  (29, 2900, 10, 'Although small, its venomous barbs render this POKéMON dangerous. The female has smaller horns.'),
  -- nidorina in leafgreen
  (30, 3000, 10, 'The female’s horns develop slowly. Prefers physical attacks such as clawing and biting.'),
  -- nidoqueen in leafgreen
  (31, 3100, 10, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.'),
  -- nidoran-m in leafgreen
  (32, 3200, 10, 'It stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.'),
  -- nidorino in leafgreen
  (33, 3300, 10, 'An aggressive POKéMON that is quick to attack. The horn on its head secretes a powerful venom.'),
  -- nidoking in leafgreen
  (34, 3400, 10, 'It uses its powerful tail in battle to smash, constrict, then break the prey’s bones.'),
  -- clefairy in leafgreen
  (35, 3500, 10, 'With its magical and cute appeal, it has many admirers. It is rare and found only in certain areas.'),
  -- clefable in leafgreen
  (36, 3600, 10, 'A timid fairy POKéMON that is rarely seen, it will run and hide the moment it senses people.'),
  -- vulpix in leafgreen
  (37, 3700, 10, 'When it is born, it has just one snow- white tail. The tail splits from its tip as it grows older.'),
  -- ninetales in leafgreen
  (38, 3800, 10, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.'),
  -- jigglypuff in leafgreen
  (39, 3900, 10, 'When its huge eyes waver, it sings a mysteriously soothing melody that lulls its enemies to sleep.'),
  -- wigglytuff in leafgreen
  (40, 4000, 10, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.'),
  -- zubat in leafgreen
  (41, 4100, 10, 'It forms colonies in perpetually dark places and uses ultrasonic waves to identify and approach targets.'),
  -- golbat in leafgreen
  (42, 4200, 10, 'Once it bites, it will not stop draining energy from the victim even if it gets too heavy to fly.'),
  -- oddish in leafgreen
  (43, 4300, 10, 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.'),
  -- gloom in leafgreen
  (44, 4400, 10, 'The fluid that oozes from its mouth isn’t drool. It is a nectar that is used to attract prey.'),
  -- vileplume in leafgreen
  (45, 4500, 10, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.'),
  -- paras in leafgreen
  (46, 4600, 10, 'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.'),
  -- parasect in leafgreen
  (47, 4700, 10, 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.'),
  -- venonat in leafgreen
  (48, 4800, 10, 'Lives in the shadows of tall trees where it eats bugs. It is attracted by light at night.'),
  -- venomoth in leafgreen
  (49, 4900, 10, 'The dustlike scales covering its wings are color-coded to indicate the kinds of poison it has.'),
  -- diglett in leafgreen
  (50, 5000, 10, 'Lives about one yard underground where it feeds on plant roots. It sometimes appears aboveground.'),
  -- dugtrio in leafgreen
  (51, 5100, 10, 'A team of DIGLETT triplets. It triggers huge earthquakes by burrowing 60 miles underground.'),
  -- meowth in leafgreen
  (52, 5200, 10, 'Adores round objects. It wanders the streets on a nightly basis to look for dropped loose change.'),
  -- persian in leafgreen
  (53, 5300, 10, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.'),
  -- psyduck in leafgreen
  (54, 5400, 10, 'While lulling its enemies with its vacant look, this wily POKéMON will use psychokinetic powers.'),
  -- golduck in leafgreen
  (55, 5500, 10, 'Often seen swimming elegantly by lakeshores. It is often mistaken for the Japanese monster Kappa.'),
  -- mankey in leafgreen
  (56, 5600, 10, 'Extremely quick to anger. It could be docile one moment, then thrashing away the next instant.'),
  -- primeape in leafgreen
  (57, 5700, 10, 'Always furious and tenacious to boot. It will not abandon chasing its quarry until it catches up.'),
  -- growlithe in leafgreen
  (58, 5800, 10, 'It is very protective of its territory. It will bark and bite to repel intruders from its space.'),
  -- arcanine in leafgreen
  (59, 5900, 10, 'A POKéMON that has long been admired for its beauty. It runs agilely as if on wings.'),
  -- poliwag in leafgreen
  (60, 6000, 10, 'Its newly grown legs prevent it from walking well. It appears to prefer swimming over walking.'),
  -- poliwhirl in leafgreen
  (61, 6100, 10, 'It can live in or out of water. When out of water, it constantly sweats to keep its body slimy.'),
  -- poliwrath in leafgreen
  (62, 6200, 10, 'A swimmer adept at both the front crawl and breaststroke. Easily overtakes the best human swimmers.'),
  -- abra in leafgreen
  (63, 6300, 10, 'Using its ability to read minds, it will sense impending danger and TELEPORT to safety.'),
  -- kadabra in leafgreen
  (64, 6400, 10, 'It emits special alpha waves from its body that induce headaches just by being close.'),
  -- alakazam in leafgreen
  (65, 6500, 10, 'Its brain can outperform a supercomputer. Its IQ (intelligence quotient) is said to be around 5,000.'),
  -- machop in leafgreen
  (66, 6600, 10, 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.'),
  -- machoke in leafgreen
  (67, 6700, 10, 'Its muscular body is so powerful, it must wear a power-save belt to be able to regulate its motions.'),
  -- machamp in leafgreen
  (68, 6800, 10, 'Its superpowerful punches are said to knock the victim flying clear over the horizon.'),
  -- bellsprout in leafgreen
  (69, 6900, 10, 'A carnivorous POKéMON that traps and eats bugs. It appears to use its root feet to replenish moisture.'),
  -- weepinbell in leafgreen
  (70, 7000, 10, 'It spits out POISONPOWDER to immobilize the enemy and then finishes it with a spray of ACID.'),
  -- victreebel in leafgreen
  (71, 7100, 10, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.'),
  -- tentacool in leafgreen
  (72, 7200, 10, 'Drifts in shallow seas. Anglers who hook them by accident are often punished by their stingers.'),
  -- tentacruel in leafgreen
  (73, 7300, 10, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.'),
  -- geodude in leafgreen
  (74, 7400, 10, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.'),
  -- graveler in leafgreen
  (75, 7500, 10, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.'),
  -- golem in leafgreen
  (76, 7600, 10, 'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without taking damage.'),
  -- ponyta in leafgreen
  (77, 7700, 10, 'Its hooves are ten times harder than diamond. It can trample anything completely flat in little time.'),
  -- rapidash in leafgreen
  (78, 7800, 10, 'Very competitive, this POKéMON will chase anything that moves fast in the hopes of racing it.'),
  -- slowpoke in leafgreen
  (79, 7900, 10, 'Incredibly slow and dopey. It takes five seconds for it to feel pain when under attack.'),
  -- slowbro in leafgreen
  (80, 8000, 10, 'The SHELLDER that latches onto SLOWPOKE’s tail is said to feed on the host’s leftover scraps.'),
  -- magnemite in leafgreen
  (81, 8100, 10, 'Uses antigravity to stay suspended. Appears without warning and uses THUNDER WAVE and similar moves.'),
  -- magneton in leafgreen
  (82, 8200, 10, 'Formed by several MAGNEMITE linked together. They frequently appear when sunspots flare up.'),
  -- farfetchd in leafgreen
  (83, 8300, 10, 'The plant stalk it holds is its weapon. The stalk is used like a sword to cut all sorts of things.'),
  -- doduo in leafgreen
  (84, 8400, 10, 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.'),
  -- dodrio in leafgreen
  (85, 8500, 10, 'Uses its three brains to execute complex plans. While two heads sleep, one head is said to stay awake.'),
  -- seel in leafgreen
  (86, 8600, 10, 'The protruding horn on its head is very hard. It is used for bashing through thick icebergs.'),
  -- dewgong in leafgreen
  (87, 8700, 10, 'It stores thermal energy in the body. It swims at a steady eight knots even in intensely cold waters.'),
  -- grimer in leafgreen
  (88, 8800, 10, 'Appears in filthy areas. It thrives by sucking up polluted sludge that is pumped out of factories.'),
  -- muk in leafgreen
  (89, 8900, 10, 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.'),
  -- shellder in leafgreen
  (90, 9000, 10, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.'),
  -- cloyster in leafgreen
  (91, 9100, 10, 'When attacked, it launches its horns in quick volleys. Its innards have never been seen.'),
  -- gastly in leafgreen
  (92, 9200, 10, 'Almost invisible, this gaseous POKéMON cloaks the target and puts it to sleep without notice.'),
  -- haunter in leafgreen
  (93, 9300, 10, 'Because of its ability to slip through block walls, it is said to be from another dimension.'),
  -- gengar in leafgreen
  (94, 9400, 10, 'On the night of a full moon, if shadows move on their own and laugh, it must be GENGAR’s doing.'),
  -- onix in leafgreen
  (95, 9500, 10, 'As it grows, the stone portions of its body harden to become similar to black-colored diamonds.'),
  -- drowzee in leafgreen
  (96, 9600, 10, 'Puts enemies to sleep, then eats their dreams. Occasionally gets sick from eating only bad dreams.'),
  -- hypno in leafgreen
  (97, 9700, 10, 'When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.'),
  -- krabby in leafgreen
  (98, 9800, 10, 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.'),
  -- kingler in leafgreen
  (99, 9900, 10, 'The large pincer has 10,000-horsepower crushing force. However, its huge size makes it unwieldy to use.'),
  -- voltorb in leafgreen
  (100, 10000, 10, 'Usually found in power plants. Easily mistaken for a POKé BALL, it has zapped many people.'),
  -- electrode in leafgreen
  (101, 10100, 10, 'It stores electric energy under very high pressure. It often explodes with little or no provocation.'),
  -- exeggcute in leafgreen
  (102, 10200, 10, 'It is often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.'),
  -- exeggutor in leafgreen
  (103, 10300, 10, 'It is said that on rare occasions, one of its heads will drop off and continue on as an EXEGGCUTE.'),
  -- cubone in leafgreen
  (104, 10400, 10, 'Because it never removes its skull helmet, no one has ever seen this POKéMON’s real face.'),
  -- marowak in leafgreen
  (105, 10500, 10, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.'),
  -- hitmonlee in leafgreen
  (106, 10600, 10, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra-long, loping strides.'),
  -- hitmonchan in leafgreen
  (107, 10700, 10, 'While apparently doing nothing, it fires punches in lightning-fast volleys that are impossible to see.'),
  -- lickitung in leafgreen
  (108, 10800, 10, 'Its tongue can be extended like a chameleon’s. It leaves a tingling sensation when it licks enemies.'),
  -- koffing in leafgreen
  (109, 10900, 10, 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.'),
  -- weezing in leafgreen
  (110, 11000, 10, 'Where two kinds of poison gases meet, two KOFFING can fuse into a WEEZING over many years.'),
  -- rhyhorn in leafgreen
  (111, 11100, 10, 'Its massive bones are 1,000 times harder than human bones. Its TACKLE can knock a semitrailer flying.'),
  -- rhydon in leafgreen
  (112, 11200, 10, 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees Fahrenheit.'),
  -- chansey in leafgreen
  (113, 11300, 10, 'A rare and elusive POKéMON that is said to bring happiness to those who manage to catch one.'),
  -- tangela in leafgreen
  (114, 11400, 10, 'The whole body is swathed with wide vines that are similar to seaweed. The vines sway as it walks.'),
  -- kangaskhan in leafgreen
  (115, 11500, 10, 'The infant rarely ventures out of its mother’s protective pouch until it is three years old.'),
  -- horsea in leafgreen
  (116, 11600, 10, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.'),
  -- seadra in leafgreen
  (117, 11700, 10, 'It is capable of swimming backwards by rapidly flapping its winglike pectoral fins and stout tail.'),
  -- goldeen in leafgreen
  (118, 11800, 10, 'Its tail fin billows like an elegant ballroom dress, giving it the nickname of “The Water Queen.”'),
  -- seaking in leafgreen
  (119, 11900, 10, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.'),
  -- staryu in leafgreen
  (120, 12000, 10, 'An enigmatic POKéMON that can effortlessly regenerate any appendage it loses in battle.'),
  -- starmie in leafgreen
  (121, 12100, 10, 'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.'),
  -- mr-mime in leafgreen
  (122, 12200, 10, 'If interrupted while it is miming, it will suddenly DOUBLESLAP the offender with its broad hands.'),
  -- scyther in leafgreen
  (123, 12300, 10, 'With ninja-like agility and speed, it can create the illusion that there is more than one of itself.'),
  -- jynx in leafgreen
  (124, 12400, 10, 'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.'),
  -- electabuzz in leafgreen
  (125, 12500, 10, 'Normally found near power plants, they can wander away and cause major blackouts in cities.'),
  -- magmar in leafgreen
  (126, 12600, 10, 'Its body always burns with an orange glow that enables it to hide perfectly amidst flames.'),
  -- pinsir in leafgreen
  (127, 12700, 10, 'If it fails to crush the foe in its pincers, it will swing around and toss the opponent.'),
  -- tauros in leafgreen
  (128, 12800, 10, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.'),
  -- magikarp in leafgreen
  (129, 12900, 10, 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.'),
  -- gyarados in leafgreen
  (130, 13000, 10, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.'),
  -- lapras in leafgreen
  (131, 13100, 10, 'A POKéMON that has been overhunted almost to extinction. It can ferry people on its back.'),
  -- ditto in leafgreen
  (132, 13200, 10, 'Capable of copying an opponent’s genetic code to instantly transform itself into a duplicate of the enemy.'),
  -- eevee in leafgreen
  (133, 13300, 10, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from element STONES.'),
  -- vaporeon in leafgreen
  (134, 13400, 10, 'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid’s.'),
  -- jolteon in leafgreen
  (135, 13500, 10, 'It accumulates negative ions in the atmosphere to blast out 10,000-volt lightning bolts.'),
  -- flareon in leafgreen
  (136, 13600, 10, 'When storing thermal energy in its body, its temperature can soar to over 1,600 degrees Fahrenheit.'),
  -- porygon in leafgreen
  (137, 13700, 10, 'A POKéMON that consists entirely of programming code. It is capable of moving freely in cyberspace.'),
  -- omanyte in leafgreen
  (138, 13800, 10, 'Although long extinct, in rare cases, it can be genetically regenerated from fossils.'),
  -- omastar in leafgreen
  (139, 13900, 10, 'Despite having strong fangs and tentacles, it went extinct when its heavy shell made it unable to catch prey.'),
  -- kabuto in leafgreen
  (140, 14000, 10, 'A POKéMON that was regenerated from a fossil found in what was once the ocean floor long ago.'),
  -- kabutops in leafgreen
  (141, 14100, 10, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains their fluids.'),
  -- aerodactyl in leafgreen
  (142, 14200, 10, 'A ferocious, prehistoric POKéMON that goes for the enemy’s throat with its serrated, sawlike fangs.'),
  -- snorlax in leafgreen
  (143, 14300, 10, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.'),
  -- articuno in leafgreen
  (144, 14400, 10, 'A legendary bird POKéMON that is said to appear to doomed people who are lost in icy mountains.'),
  -- zapdos in leafgreen
  (145, 14500, 10, 'A legendary bird POKéMON that is said to appear from clouds while dropping enormous lightning bolts.'),
  -- moltres in leafgreen
  (146, 14600, 10, 'It is said to be the legendary bird POKéMON of fire. Every flap of its wings creates a dazzling flare of flames.'),
  -- dratini in leafgreen
  (147, 14700, 10, 'Long considered a mythical POKéMON until recently, when a small colony was found living underwater.'),
  -- dragonair in leafgreen
  (148, 14800, 10, 'A mystical POKéMON that exudes a gentle aura. It is said to have the ability to change the weather.'),
  -- dragonite in leafgreen
  (149, 14900, 10, 'Only a very few people ever see this POKéMON. Its intelligence is said to match that of humans.'),
  -- mewtwo in leafgreen
  (150, 15000, 10, 'It was created by a scientist after years of horrific gene-splicing and DNA- engineering experiments.'),
  -- mew in leafgreen
  (151, 15100, 10, 'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.'),
  -- chikorita in leafgreen
  (152, 15200, 10, 'A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up the sun’s rays.'),
  -- bayleef in leafgreen
  (153, 15300, 10, 'The scent of spices comes from around its neck. Somehow, sniffing it makes you want to fight.'),
  -- meganium in leafgreen
  (154, 15400, 10, 'The aroma that rises from its petals contains a substance that calms aggressive feelings.'),
  -- cyndaquil in leafgreen
  (155, 15500, 10, 'It is timid and always curls itself up in a ball. If attacked, it flares up its back for protection.'),
  -- quilava in leafgreen
  (156, 15600, 10, 'Be careful if it turns its back during battle. It means that it will attack with the fire on its back.'),
  -- typhlosion in leafgreen
  (157, 15700, 10, 'If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.'),
  -- totodile in leafgreen
  (158, 15800, 10, 'Its well-developed jaws are powerful and capable of crushing anything. Even its TRAINER must be careful.'),
  -- croconaw in leafgreen
  (159, 15900, 10, 'If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth.'),
  -- feraligatr in leafgreen
  (160, 16000, 10, 'When it bites with its massive and powerful jaws, it shakes its head and savagely tears up its victim.'),
  -- sentret in leafgreen
  (161, 16100, 10, 'A very cautious POKéMON, it raises itself up using its tail to get a better view of its surroundings.'),
  -- furret in leafgreen
  (162, 16200, 10, 'It makes a nest to suit its long and skinny body. The nest is impossible for other POKéMON to enter.'),
  -- hoothoot in leafgreen
  (163, 16300, 10, 'It always stands on one foot. It changes feet so fast, the movement can rarely be seen.'),
  -- noctowl in leafgreen
  (164, 16400, 10, 'Its eyes are specially adapted. They concentrate even faint light and enable it to see in the dark.'),
  -- ledyba in leafgreen
  (165, 16500, 10, 'It is very timid. It will be afraid to move if it is alone. But it will be active if it is in a group.'),
  -- ledian in leafgreen
  (166, 16600, 10, 'When the stars flicker in the night sky, it flutters about, scattering a glowing powder.'),
  -- spinarak in leafgreen
  (167, 16700, 10, 'It lies still in the same pose for days in its web, waiting for its unsuspecting prey to wander close.'),
  -- ariados in leafgreen
  (168, 16800, 10, 'It spins string not only from its rear but also from its mouth. It is hard to tell which end is which.'),
  -- crobat in leafgreen
  (169, 16900, 10, 'It flies so silently through the dark on its four wings that it may not be noticed even when nearby.'),
  -- chinchou in leafgreen
  (170, 17000, 10, 'It shoots positive and negative electricity between the tips of its two antennae and zaps its enemies.'),
  -- lanturn in leafgreen
  (171, 17100, 10, 'The light it emits is so bright that it can illuminate the sea’s surface from a depth of over three miles.'),
  -- pichu in leafgreen
  (172, 17200, 10, 'It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.'),
  -- cleffa in leafgreen
  (173, 17300, 10, 'Because of its unusual, starlike silhouette, people believe that it came here on a meteor.'),
  -- igglybuff in leafgreen
  (174, 17400, 10, 'It has a very soft body. If it starts to roll, it will bounce all over and be impossible to stop.'),
  -- togepi in leafgreen
  (175, 17500, 10, 'The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.'),
  -- togetic in leafgreen
  (176, 17600, 10, 'They say that it will appear before kindhearted, caring people and shower them with happiness.'),
  -- natu in leafgreen
  (177, 17700, 10, 'Because its wings aren’t yet fully grown, it has to hop to get around. It is always staring at something.'),
  -- xatu in leafgreen
  (178, 17800, 10, 'They say that it stays still and quiet because it is seeing both the past and future at the same time.'),
  -- mareep in leafgreen
  (179, 17900, 10, 'If static electricity builds in its body, its fleece doubles in volume. Touching it will shock you.'),
  -- flaaffy in leafgreen
  (180, 18000, 10, 'As a result of storing too much electricity, it developed patches where even downy wool won’t grow.'),
  -- ampharos in leafgreen
  (181, 18100, 10, 'The tail’s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.'),
  -- bellossom in leafgreen
  (182, 18200, 10, 'BELLOSSOM gather at times and appear to dance. They say that the dance is a ritual to summon the sun.'),
  -- marill in leafgreen
  (183, 18300, 10, 'The tip of its tail, which contains oil that is lighter than water, lets it swim without drowning.'),
  -- azumarill in leafgreen
  (184, 18400, 10, 'By keeping still and listening intently, it can even tell what is in wild, fast-moving rivers.'),
  -- sudowoodo in leafgreen
  (185, 18500, 10, 'Although it always pretends to be a tree, its composition appears to be closer to a rock than a plant.'),
  -- politoed in leafgreen
  (186, 18600, 10, 'If POLIWAG and POLIWHIRL hear its echoing cry, they respond by gathering from far and wide.'),
  -- hoppip in leafgreen
  (187, 18700, 10, 'To keep from being blown away by the wind, they gather in clusters. They do enjoy gentle breezes, though.'),
  -- skiploom in leafgreen
  (188, 18800, 10, 'The bloom on top of its head opens and closes as the temperature fluctuates up and down.'),
  -- jumpluff in leafgreen
  (189, 18900, 10, 'Once it catches the wind, it deftly controls its cotton-puff spores to float, even around the world.'),
  -- aipom in leafgreen
  (190, 19000, 10, 'Its tail is so powerful that it can use it to grab a tree branch and hold itself up in the air.'),
  -- sunkern in leafgreen
  (191, 19100, 10, 'It may drop out of the sky suddenly. If attacked by a SPEAROW, it will violently shake its leaves.'),
  -- sunflora in leafgreen
  (192, 19200, 10, 'It converts sunlight into energy. In the darkness after sunset, it closes its petals and becomes still.'),
  -- yanma in leafgreen
  (193, 19300, 10, 'If it flaps its wings really fast, it can generate shock waves that will shatter windows in the area.'),
  -- wooper in leafgreen
  (194, 19400, 10, 'This POKéMON lives in cold water. It will leave the water to search for food when it gets cold outside.'),
  -- quagsire in leafgreen
  (195, 19500, 10, 'This carefree POKéMON has an easygoing nature. While swimming, it always bumps into boat hulls.'),
  -- espeon in leafgreen
  (196, 19600, 10, 'It uses the fine hair that covers its body to sense air currents and predict its enemy’s actions.'),
  -- umbreon in leafgreen
  (197, 19700, 10, 'When agitated, this POKéMON protects itself by spraying poisonous sweat from its pores.'),
  -- murkrow in leafgreen
  (198, 19800, 10, 'Feared and loathed by many, it is believed to bring misfortune to all those who see it at night.'),
  -- slowking in leafgreen
  (199, 19900, 10, 'It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.'),
  -- misdreavus in leafgreen
  (200, 20000, 10, 'It likes playing mischievous tricks such as screaming and wailing to startle people at night.'),
  -- unown in leafgreen
  (201, 20100, 10, 'Their shapes look like hieroglyphs on ancient tablets. It is said that the two are somehow related.'),
  -- wobbuffet in leafgreen
  (202, 20200, 10, 'It hates light and shock. If attacked, it inflates its body to pump up its counterstrike.'),
  -- girafarig in leafgreen
  (203, 20300, 10, 'Its tail has a small brain of its own. Beware! If you get close, it may react to your scent and bite.'),
  -- pineco in leafgreen
  (204, 20400, 10, 'It likes to make its shell thicker by adding layers of tree bark. The extra weight doesn’t bother it.'),
  -- forretress in leafgreen
  (205, 20500, 10, 'Its entire body is shielded by a steel- hard shell. What lurks inside the armor is a total mystery.'),
  -- dunsparce in leafgreen
  (206, 20600, 10, 'When spotted, this POKéMON escapes backward by furiously boring into the ground with its tail.'),
  -- gligar in leafgreen
  (207, 20700, 10, 'It flies straight at its target’s face, then clamps down on the startled victim to inject poison.'),
  -- steelix in leafgreen
  (208, 20800, 10, 'Its body has been compressed deep under the ground. As a result, it is even harder than diamond.'),
  -- snubbull in leafgreen
  (209, 20900, 10, 'Although it looks frightening, it is actually kind and affectionate. It is very popular among women.'),
  -- granbull in leafgreen
  (210, 21000, 10, 'It is actually timid and easily spooked. If attacked, it flails about to fend off its attacker.'),
  -- qwilfish in leafgreen
  (211, 21100, 10, 'To fire its poison spikes, it must inflate its body by drinking over 2.6 gallons of water all at once.'),
  -- scizor in leafgreen
  (212, 21200, 10, 'It swings its eye-patterned pincers up to scare its foes. This makes it look like it has three heads.'),
  -- shuckle in leafgreen
  (213, 21300, 10, 'The BERRIES it stores in its vaselike shell decompose and become a gooey liquid.'),
  -- heracross in leafgreen
  (214, 21400, 10, 'This powerful POKéMON thrusts its prized horn under its enemies’ bellies, then lifts and throws them.'),
  -- sneasel in leafgreen
  (215, 21500, 10, 'Its paws conceal sharp claws. If attacked, it suddenly extends the claws and startles its enemy.'),
  -- teddiursa in leafgreen
  (216, 21600, 10, 'If it finds honey, its crescent mark glows. It always licks its paws because they are soaked with honey.'),
  -- ursaring in leafgreen
  (217, 21700, 10, 'Although it is a good climber, it prefers to snap stout trees with its forelegs and eat fallen BERRIES.'),
  -- slugma in leafgreen
  (218, 21800, 10, 'It never sleeps. It has to keep moving because if it stopped, its magma body would cool and harden.'),
  -- magcargo in leafgreen
  (219, 21900, 10, 'The shell on its back is just skin that has cooled and hardened. It breaks easily with a slight touch.'),
  -- swinub in leafgreen
  (220, 22000, 10, 'It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.'),
  -- piloswine in leafgreen
  (221, 22100, 10, 'Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.'),
  -- corsola in leafgreen
  (222, 22200, 10, 'It continuously sheds and grows. The tip of its head is prized as a treasure for its beauty.'),
  -- remoraid in leafgreen
  (223, 22300, 10, 'It has superb accuracy. The water it shoots out can strike even moving prey from more than 100 yards.'),
  -- octillery in leafgreen
  (224, 22400, 10, 'It traps enemies with its suction-cupped tentacles, then smashes them with its rock-hard head.'),
  -- delibird in leafgreen
  (225, 22500, 10, 'It carries food all day long. There are tales about lost people who were saved by the food it had.'),
  -- mantine in leafgreen
  (226, 22600, 10, 'As it majestically swims, it doesn’t care if REMORAID attach to it to scavenge for its leftovers.'),
  -- skarmory in leafgreen
  (227, 22700, 10, 'Its sturdy wings look heavy, but its bones are hollow and light, allowing it to fly freely in the sky.'),
  -- houndour in leafgreen
  (228, 22800, 10, 'It uses different kinds of cries for communicating with others of its kind and for pursuing prey.'),
  -- houndoom in leafgreen
  (229, 22900, 10, 'If you are burned by the flames it shoots from its mouth, the pain will never go away.'),
  -- kingdra in leafgreen
  (230, 23000, 10, 'It is said that it usually hides in underwater caves. It can create whirlpools by yawning.'),
  -- phanpy in leafgreen
  (231, 23100, 10, 'It swings its long snout around playfully, but because it is so strong, this can be dangerous.'),
  -- donphan in leafgreen
  (232, 23200, 10, 'It has sharp, hard tusks and a rugged hide. Its TACKLE is strong enough to knock down a house.'),
  -- porygon2 in leafgreen
  (233, 23300, 10, 'This upgraded version of PORYGON is designed for space exploration. However, it can’t even fly.'),
  -- stantler in leafgreen
  (234, 23400, 10, 'Its curved antlers subtly change the flow of air to create a strange space where reality is distorted.'),
  -- smeargle in leafgreen
  (235, 23500, 10, 'A special fluid oozes from the tip of its tail. It paints the fluid everywhere to mark its territory.'),
  -- tyrogue in leafgreen
  (236, 23600, 10, 'It is always bursting with energy. To make itself stronger, it keeps on fighting even if it loses.'),
  -- hitmontop in leafgreen
  (237, 23700, 10, 'If you become enchanted by its smooth, elegant, dance-like kicks, you may get drilled hard.'),
  -- smoochum in leafgreen
  (238, 23800, 10, 'Its lips are the most sensitive parts on its body. It always uses its lips first to examine things.'),
  -- elekid in leafgreen
  (239, 23900, 10, 'It rotates its arms to generate electricity, but it tires easily, so it charges up only a little bit.'),
  -- magby in leafgreen
  (240, 24000, 10, 'Each and every time it inhales and exhales, hot embers dribble out of its mouth and nostrils.'),
  -- miltank in leafgreen
  (241, 24100, 10, 'Its milk is packed with nutrition, making it the ultimate beverage for the sick or weary.'),
  -- blissey in leafgreen
  (242, 24200, 10, 'Anyone who takes even one bite of BLISSEY’s egg becomes unfailingly caring and pleasant to everyone.'),
  -- raikou in leafgreen
  (243, 24300, 10, 'The rain clouds it carries let it fire thunderbolts at will. They say that it descended with lightning.'),
  -- entei in leafgreen
  (244, 24400, 10, 'Volcanoes erupt when it barks. Unable to restrain its extreme power, it races headlong around the land.'),
  -- suicune in leafgreen
  (245, 24500, 10, 'Said to be the reincarnation of north winds, it can instantly purify filthy, murky water.'),
  -- larvitar in leafgreen
  (246, 24600, 10, 'It feeds on soil. After it has eaten a large mountain, it will fall asleep so it can grow.'),
  -- pupitar in leafgreen
  (247, 24700, 10, 'Its shell is as hard as sheet rock, and it is also very strong. Its THRASHING can topple a mountain.'),
  -- tyranitar in leafgreen
  (248, 24800, 10, 'Its body can’t be harmed by any sort of attack, so it is very eager to make challenges against enemies.'),
  -- lugia in leafgreen
  (249, 24900, 10, 'It is said that it quietly spends its time deep at the bottom of the sea because its powers are too strong.'),
  -- ho-oh in leafgreen
  (250, 25000, 10, 'Legends claim this POKéMON flies the world’s skies continuously on its magnificent seven-colored wings.'),
  -- celebi in leafgreen
  (251, 25100, 10, 'This POKéMON wanders across time. Grass and trees flourish in the forests in which it has appeared.'),
  -- treecko in leafgreen
  (252, 25200, 10, 'It quickly scales even vertical walls. It senses humidity with its tail to predict the next day’s weather.'),
  -- grovyle in leafgreen
  (253, 25300, 10, 'Its strongly developed thigh muscles give it astounding agility and jumping performance.'),
  -- sceptile in leafgreen
  (254, 25400, 10, 'The leaves on its forelegs are as sharp as swords. It agilely leaps about the branches of trees to strike.'),
  -- torchic in leafgreen
  (255, 25500, 10, 'It has a flame sac inside its belly that perpetually burns. It feels warm if it is hugged.'),
  -- combusken in leafgreen
  (256, 25600, 10, 'It boosts its concentration by emitting harsh cries. Its kicks have outstanding destructive power.'),
  -- blaziken in leafgreen
  (257, 25700, 10, 'When facing a tough foe, it looses flames from its wrists. Its powerful legs let it jump clear over buildings.'),
  -- mudkip in leafgreen
  (258, 25800, 10, 'Its large tail fin propels it through water with powerful acceleration. It is strong in spite of its size.'),
  -- marshtomp in leafgreen
  (259, 25900, 10, 'It is at its best when on muddy ground with poor footing. It quickly overwhelms foes struggling in mud.'),
  -- swampert in leafgreen
  (260, 26000, 10, 'Its arms are rock-hard. With one swing, they can batter down its foe. It makes its nest on beautiful beaches.'),
  -- poochyena in leafgreen
  (261, 26100, 10, 'It has a very tenacious nature. Its acute sense of smell lets it chase a chosen prey without ever losing track.'),
  -- mightyena in leafgreen
  (262, 26200, 10, 'It will always obey the commands of a skilled TRAINER. Its behavior arises from its living in packs in ancient times.'),
  -- zigzagoon in leafgreen
  (263, 26300, 10, 'A POKéMON with abundant curiosity. It shows an interest in everything, so it always zigs and zags.'),
  -- linoone in leafgreen
  (264, 26400, 10, 'When running in a straight line, it can top 60 miles per hour. However, it has a tough time with curved roads.'),
  -- wurmple in leafgreen
  (265, 26500, 10, 'It lives amidst tall grass and in forests. When attacked, it resists by pointing its venomous spikes at the foe.'),
  -- silcoon in leafgreen
  (266, 26600, 10, 'It conserves its energy by moving as little as possible. It awaits evolution while drinking only a little rainwater.'),
  -- beautifly in leafgreen
  (267, 26700, 10, 'Despite its appearance, it has an aggressive nature. It attacks by jabbing with its long, thin mouth.'),
  -- cascoon in leafgreen
  (268, 26800, 10, 'Its body, which is made of soft silk, hardens over time. When cracks appear, evolution is near.'),
  -- dustox in leafgreen
  (269, 26900, 10, 'It scatters horribly toxic dust when it senses danger. They tend to gather in the glow of streetlamps at night.'),
  -- lotad in leafgreen
  (270, 27000, 10, 'It searches about for clean water. If it does not drink water for too long, the leaf on its head wilts.'),
  -- lombre in leafgreen
  (271, 27100, 10, 'It lives at the water’s edge where it is sunny. It sleeps on a bed of water grass by day and becomes active at night.'),
  -- ludicolo in leafgreen
  (272, 27200, 10, 'The rhythm of bright, festive music activates LUDICOLO’s cells, making it more powerful.'),
  -- seedot in leafgreen
  (273, 27300, 10, 'If it remains still, it becomes impossible to distinguish from real nuts. It delights in surprising foraging PIDGEY.'),
  -- nuzleaf in leafgreen
  (274, 27400, 10, 'They live in holes bored in large trees. The sound of NUZLEAF’s grass flute fills listeners with dread.'),
  -- shiftry in leafgreen
  (275, 27500, 10, 'A POKéMON that was feared as a forest guardian. It can read the foe’s mind and take preemptive action.'),
  -- taillow in leafgreen
  (276, 27600, 10, 'It dislikes cold seasons. They migrate to other lands in search of warmth, flying over 180 miles a day.'),
  -- swellow in leafgreen
  (277, 27700, 10, 'If its two tail feathers are standing at attention, it is proof of good health. It soars elegantly in the sky.'),
  -- wingull in leafgreen
  (278, 27800, 10, 'It rides upon ocean winds as if it were a glider. In the winter, it hides food around its nest.'),
  -- pelipper in leafgreen
  (279, 27900, 10, 'It is a flying transporter that carries small POKéMON in its beak. It bobs on the waves to rest its wings.'),
  -- ralts in leafgreen
  (280, 28000, 10, 'It is highly attuned to the emotions of people and POKéMON. It hides if it senses hostility.'),
  -- kirlia in leafgreen
  (281, 28100, 10, 'The cheerful spirit of its TRAINER gives it energy for its psychokinetic power. It spins and dances when happy.'),
  -- gardevoir in leafgreen
  (282, 28200, 10, 'It has the power to predict the future. Its power peaks when it is protecting its TRAINER.'),
  -- surskit in leafgreen
  (283, 28300, 10, 'They usually live on ponds, but after an evening shower, they may appear on puddles in towns.'),
  -- masquerain in leafgreen
  (284, 28400, 10, 'The antennae have distinctive patterns that look like eyes. When it rains, they grow heavy, making flight impossible.'),
  -- shroomish in leafgreen
  (285, 28500, 10, 'It prefers damp places. By day it remains still in the forest shade. It releases toxic powder from its head.'),
  -- breloom in leafgreen
  (286, 28600, 10, 'The seeds on its tail are made of toxic spores. It knocks out foes with quick, virtually invisible punches.'),
  -- slakoth in leafgreen
  (287, 28700, 10, 'It sleeps for 20 hours every day. Making drowsy those that see it is one of its abilities.'),
  -- vigoroth in leafgreen
  (288, 28800, 10, 'It is always hungry because it won’t stop rampaging. Even while it is eating, it can’t keep still.'),
  -- slaking in leafgreen
  (289, 28900, 10, 'It is the world’s most slothful POKéMON. However, it can exert horrifying power by releasing pent-up energy all at once.'),
  -- nincada in leafgreen
  (290, 29000, 10, 'Because it lived almost entirely underground, it is nearly blind. It uses its antennae instead.'),
  -- ninjask in leafgreen
  (291, 29100, 10, 'This POKéMON is so quick, it is said to be able to avoid any attack. It loves to feed on tree sap.'),
  -- shedinja in leafgreen
  (292, 29200, 10, 'A most peculiar POKéMON that somehow appears in a POKé BALL when a NINCADA evolves.'),
  -- whismur in leafgreen
  (293, 29300, 10, 'It usually murmurs, but starts crying loudly if it senses danger. It stops when its ear covers are shut.'),
  -- loudred in leafgreen
  (294, 29400, 10, 'When it stamps its feet and bellows, it generates ultrasonic waves that can blow apart a house.'),
  -- exploud in leafgreen
  (295, 29500, 10, 'It emits a variety of sounds from the holes all over its body. Its loud cries can be heard from over six miles away.'),
  -- makuhita in leafgreen
  (296, 29600, 10, 'It grows stronger by enduring harsh training. It is a gutsy POKéMON that can withstand any attack.'),
  -- hariyama in leafgreen
  (297, 29700, 10, 'It stomps on the ground to build power. It can send a 10-ton truck flying with a straight-arm punch.'),
  -- azurill in leafgreen
  (298, 29800, 10, 'It battles by flinging around its tail, which is bigger than its body. The tail is a flotation device in water.'),
  -- nosepass in leafgreen
  (299, 29900, 10, 'Its magnetic nose consistently faces north. Travelers check NOSEPASS to get their bearings.'),
  -- skitty in leafgreen
  (300, 30000, 10, 'It is said to be difficult to earn its trust. However, it is extremely popular for its cute looks and behavior.'),
  -- delcatty in leafgreen
  (301, 30100, 10, 'The favorite of trend-conscious female TRAINERS, they are used in competition for their style and fur.'),
  -- sableye in leafgreen
  (302, 30200, 10, 'It feeds on gemstone crystals. In darkness, its eyes sparkle with the glitter of jewels.'),
  -- mawile in leafgreen
  (303, 30300, 10, 'It uses its docile-looking face to lull foes into complacency, then bites with its huge, relentless jaws.'),
  -- aron in leafgreen
  (304, 30400, 10, 'It eats iron to build its steel body. It is a pest that descends from mountains to eat bridges and train tracks.'),
  -- lairon in leafgreen
  (305, 30500, 10, 'It habitually shows off its strength with the size of sparks it creates by ramming its steel body into boulders.'),
  -- aggron in leafgreen
  (306, 30600, 10, 'It claims a large mountain as its sole territory. It mercilessly thrashes those that violate its space.'),
  -- meditite in leafgreen
  (307, 30700, 10, 'It never skips its daily yoga training. It heightens its inner strength through meditation.'),
  -- medicham in leafgreen
  (308, 30800, 10, 'It elegantly avoids attacks with dance- like steps, then launches a devastating blow in the same motion.'),
  -- electrike in leafgreen
  (309, 30900, 10, 'It stores static electricity in its fur for discharging. It gives off sparks if a storm approaches.'),
  -- manectric in leafgreen
  (310, 31000, 10, 'It rarely appears before people. It is said to nest where lightning has fallen.'),
  -- plusle in leafgreen
  (311, 31100, 10, 'It cheers on partners while scattering sparks from its body. It climbs telephone poles to absorb electricity.'),
  -- minun in leafgreen
  (312, 31200, 10, 'Its dislike of water makes it take shelter under the eaves of houses in rain. It uses pom-poms made of sparks for cheering.'),
  -- volbeat in leafgreen
  (313, 31300, 10, 'It lives around clean ponds. At night, its rear lights up. It converses with others by flashing its light.'),
  -- illumise in leafgreen
  (314, 31400, 10, 'It guides VOLBEAT to draw signs in night skies. There are scientists that study the patterns it creates.'),
  -- roselia in leafgreen
  (315, 31500, 10, 'Its flowers give off a relaxing fragrance. The stronger its aroma, the healthier the ROSELIA is.'),
  -- gulpin in leafgreen
  (316, 31600, 10, 'There is nothing its stomach can’t digest. While it is digesting, vile, overpowering gases are expelled.'),
  -- swalot in leafgreen
  (317, 31700, 10, 'It can swallow a tire whole in one gulp. It secretes a horribly toxic fluid from the pores on its body.'),
  -- carvanha in leafgreen
  (318, 31800, 10, 'It lives in massive rivers that course through jungles. It swarms prey that enter its territory.'),
  -- sharpedo in leafgreen
  (319, 31900, 10, 'The ruffian of the seas, it has fangs that crunch through iron. It swims by jetting water from its rear.'),
  -- wailmer in leafgreen
  (320, 32000, 10, 'When it sucks in a large volume of seawater, it becomes like a big, bouncy ball. It eats a ton of food daily.'),
  -- wailord in leafgreen
  (321, 32100, 10, 'It is among the largest of all POKéMON. It herds prey in a pack then swallows the massed prey in one gulp.'),
  -- numel in leafgreen
  (322, 32200, 10, 'Magma of almost 2,200 degrees Fahrenheit courses through its body. When it grows cold, the magma hardens and slows it.'),
  -- camerupt in leafgreen
  (323, 32300, 10, 'If angered, the humps on its back erupt in a shower of molten lava. It lives in the craters of volcanoes.'),
  -- torkoal in leafgreen
  (324, 32400, 10, 'It burns coal inside its shell. If it is attacked, it belches thick, black smoke and flees.'),
  -- spoink in leafgreen
  (325, 32500, 10, 'It apparently dies if it stops bouncing about. It carries a pearl from CLAMPERL on its head.'),
  -- grumpig in leafgreen
  (326, 32600, 10, 'It can gain control over foes by doing odd dance steps. The black pearls on its forehead are precious gems.'),
  -- spinda in leafgreen
  (327, 32700, 10, 'No two SPINDA are said to have identical patterns. It confuses foes with its stumbling motions.'),
  -- trapinch in leafgreen
  (328, 32800, 10, 'It lives in arid deserts. It makes a sloping pit trap in sand where it patiently awaits prey.'),
  -- vibrava in leafgreen
  (329, 32900, 10, 'It generates ultrasonic waves by violently flapping its wings. After making its prey faint, it melts the prey with acid.'),
  -- flygon in leafgreen
  (330, 33000, 10, 'It hides itself by kicking up desert sand with its wings. Red covers shield its eyes from sand.'),
  -- cacnea in leafgreen
  (331, 33100, 10, 'It prefers harsh environments such as deserts. It can survive for 30 days on water stored in its body.'),
  -- cacturne in leafgreen
  (332, 33200, 10, 'It lives in deserts. It becomes active at night when it hunts for prey exhausted from the desert’s heat.'),
  -- swablu in leafgreen
  (333, 33300, 10, 'It constantly grooms its cotton-like wings. It takes a shower to clean itself if it becomes dirty.'),
  -- altaria in leafgreen
  (334, 33400, 10, 'If you hear a beautiful melody trilling deep among mountains far from people, it is ALTARIA’s humming.'),
  -- zangoose in leafgreen
  (335, 33500, 10, 'If it comes across a SEVIPER, its fur bristles and it assumes its battle pose. Its sharp claws are its best weapon.'),
  -- seviper in leafgreen
  (336, 33600, 10, 'It sharpens its swordlike tail on hard rocks. It hides in tall grass and strikes unwary prey with venomous fangs.'),
  -- lunatone in leafgreen
  (337, 33700, 10, 'Its health ebbs and flows with the lunar cycle. It brims with power when exposed to the light of the full moon.'),
  -- solrock in leafgreen
  (338, 33800, 10, 'It absorbs solar energy during the day. Always expressionless, it can sense what its foe is thinking.'),
  -- barboach in leafgreen
  (339, 33900, 10, 'It probes muddy riverbeds with its two long whiskers. A slimy film protects its body.'),
  -- whiscash in leafgreen
  (340, 34000, 10, 'It makes its nest at the bottom of swamps. It will eat anything - if it is alive, WHISCASH will eat it.'),
  -- corphish in leafgreen
  (341, 34100, 10, 'It came from overseas. It is a very hardy creature that will quickly proliferate, even in polluted streams.'),
  -- crawdaunt in leafgreen
  (342, 34200, 10, 'A rough customer that wildly flails its giant claws. It is said to be extremely hard to raise.'),
  -- baltoy in leafgreen
  (343, 34300, 10, 'It was discovered in ancient ruins. While moving, it constantly spins. It stands on one foot even when asleep.'),
  -- claydol in leafgreen
  (344, 34400, 10, 'It appears to have been born from clay dolls made by ancient people. It uses telekinesis to float and move.'),
  -- lileep in leafgreen
  (345, 34500, 10, 'It became extinct roughly 100 million years ago. It was regenerated from a fossil using advanced techniques.'),
  -- cradily in leafgreen
  (346, 34600, 10, 'It ensnares prey with its eight tentacles. It then melts the prey with a strong acid before feeding.'),
  -- anorith in leafgreen
  (347, 34700, 10, 'It is a kind of POKéMON progenitor. It uses its extending claws to catch prey hiding among rocks on the seafloor.'),
  -- armaldo in leafgreen
  (348, 34800, 10, 'Protected by a hard shell, its body is very sturdy. It skewers prey with its claws to feed.'),
  -- feebas in leafgreen
  (349, 34900, 10, 'Ridiculed for its shabby appearance, it is ignored by researchers. It lives in ponds choked with weeds.'),
  -- milotic in leafgreen
  (350, 35000, 10, 'MILOTIC is breathtakingly beautiful. Those that see it are said to forget their combative spirits.'),
  -- castform in leafgreen
  (351, 35100, 10, 'It has the ability to change its form into the sun, the rain, or a snow cloud, depending on the weather.'),
  -- kecleon in leafgreen
  (352, 35200, 10, 'It changes body color to blend in with its surroundings. It also changes color if it is happy or sad.'),
  -- shuppet in leafgreen
  (353, 35300, 10, 'It loves to feed on feelings like envy and malice. Its upright horn catches the emotions of people.'),
  -- banette in leafgreen
  (354, 35400, 10, 'Strong feelings of hatred turned a puppet into a POKéMON. If it opens its mouth, its cursed energy escapes.'),
  -- duskull in leafgreen
  (355, 35500, 10, 'Making itself invisible, it silently sneaks up to prey. It has the ability to slip through thick walls.'),
  -- dusclops in leafgreen
  (356, 35600, 10, 'Its body is entirely hollow. When it opens its mouth, it sucks everything in as if it were a black hole.'),
  -- tropius in leafgreen
  (357, 35700, 10, 'It lives in tropical jungles. The bunch of fruit around its neck is delicious. The fruit grows twice a year.'),
  -- chimecho in leafgreen
  (358, 35800, 10, 'It travels by riding on winds. It cleverly uses its long tail to pluck nuts and berries, which it loves to eat.'),
  -- absol in leafgreen
  (359, 35900, 10, 'It appears when it senses an impending natural disaster. As a result, it was mistaken as a doom-bringer.'),
  -- wynaut in leafgreen
  (360, 36000, 10, 'It tends to move in a pack with others. They cluster in a tight group to sleep in a cave.'),
  -- snorunt in leafgreen
  (361, 36100, 10, 'It is said that a home visited by a SNORUNT will prosper. It can withstand cold of minus 150 degrees Fahrenheit.'),
  -- glalie in leafgreen
  (362, 36200, 10, 'It has a body of ice that won’t melt, even with fire. It can instantly freeze moisture in the atmosphere.'),
  -- spheal in leafgreen
  (363, 36300, 10, 'Its body is covered in fluffy fur. The fur keeps it from feeling cold while it is rolling on ice.'),
  -- sealeo in leafgreen
  (364, 36400, 10, 'It touches new things with its nose to test for smell and feel. It plays by spinning SPHEAL on its nose.'),
  -- walrein in leafgreen
  (365, 36500, 10, 'It swims through icy seas while shattering ice floes with its large tusks. It is protected by its thick blubber.'),
  -- clamperl in leafgreen
  (366, 36600, 10, 'It is protected by a sturdy shell. Once in a lifetime, it makes a magnificent pearl.'),
  -- huntail in leafgreen
  (367, 36700, 10, 'It lives deep in the sea where no light ever filters down. It lights up its small fishlike tail to attract prey.'),
  -- gorebyss in leafgreen
  (368, 36800, 10, 'Its swimming form is exquisitely elegant. With its thin mouth, it feeds on seaweed that grows between rocks.'),
  -- relicanth in leafgreen
  (369, 36900, 10, 'It has remained unchanged for 100 million years. It was discovered during a deep-sea exploration.'),
  -- luvdisc in leafgreen
  (370, 37000, 10, 'During the spawning season, countless LUVDISC congregate at coral reefs, turning the waters pink.'),
  -- bagon in leafgreen
  (371, 37100, 10, 'Its steel-hard head can shatter boulders. It longingly hopes for wings to grow so it can fly.'),
  -- shelgon in leafgreen
  (372, 37200, 10, 'Its armored body makes all attacks bounce off. The armor is too tough, however, making it heavy and somewhat sluggish.'),
  -- salamence in leafgreen
  (373, 37300, 10, 'It becomes uncontrollable if it is enraged. It destroys everything with shredding claws and fire.'),
  -- beldum in leafgreen
  (374, 37400, 10, 'It uses magnetic waves to converse with its kind. All the cells in its body are magnetic.'),
  -- metang in leafgreen
  (375, 37500, 10, 'It floats midair using magnetism. Its body is so tough, even a crash with a jet plane won’t leave a scratch.'),
  -- metagross in leafgreen
  (376, 37600, 10, 'It is formed by two METANG fusing. Its four brains are said to be superior to a supercomputer.'),
  -- regirock in leafgreen
  (377, 37700, 10, 'It is entirely composed of rocks with no sign of a brain or heart. It is a mystery even to modern scientists.'),
  -- regice in leafgreen
  (378, 37800, 10, 'Research revealed that its body is made of the same kind of ice that is found at the South Pole.'),
  -- registeel in leafgreen
  (379, 37900, 10, 'It is sturdier than any kind of metal. It hardened due to pressure underground over tens of thousands of years.'),
  -- latias in leafgreen
  (380, 38000, 10, 'It can telepathically communicate with people. It changes its appearance using its down that refracts light.'),
  -- latios in leafgreen
  (381, 38100, 10, 'It has a docile temperament and dislikes fighting. Tucking in its forelegs, it can fly faster than a jet plane.'),
  -- kyogre in leafgreen
  (382, 38200, 10, 'This POKéMON is said to have expanded the sea by bringing heavy rains. It has the power to control water.'),
  -- groudon in leafgreen
  (383, 38300, 10, 'This legendary POKéMON is said to represent the land. It went to sleep after dueling KYOGRE.'),
  -- rayquaza in leafgreen
  (384, 38400, 10, 'It has lived for hundreds of millions of years in the ozone layer. Its flying form looks like a meteor.'),
  -- jirachi in leafgreen
  (385, 38500, 10, 'It is said to make any wish come true. It is awake for only seven days out of a thousand years.'),
  -- deoxys in leafgreen
  (386, 38600, 10, 'When it changes form, an aurora appears. It absorbs attacks by altering its cellular structure.'),
  -- bulbasaur in emerald
  (1, 100, 11, 'BULBASAUR can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.'),
  -- ivysaur in emerald
  (2, 200, 11, 'To support its bulb, IVYSAUR’s legs grow sturdy. If it spends more time lying in the sunlight, the bud will soon bloom into a large flower.'),
  -- venusaur in emerald
  (3, 300, 11, 'VENUSAUR’s flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower’s aroma soothes the emotions of people.'),
  -- charmander in emerald
  (4, 400, 11, 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when CHARMANDER is happy, and blazes when it is enraged.'),
  -- charmeleon in emerald
  (5, 500, 11, 'Without pity, its sharp claws destroy foes. If it encounters a strong enemy, it becomes agitated, and the flame on its tail flares with a bluish white color.'),
  -- charizard in emerald
  (6, 600, 11, 'A CHARIZARD flies about in search of strong opponents. It breathes intense flames that can melt any material. However, it will never torch a weaker foe.'),
  -- squirtle in emerald
  (7, 700, 11, 'Its shell is not just for protection. Its rounded shape and the grooves on its surface minimize resistance in water, enabling SQUIRTLE to swim at high speeds.'),
  -- wartortle in emerald
  (8, 800, 11, 'Its large tail is covered with rich, thick fur that deepens in color with age. The scratches on its shell are evidence of this POKéMON’s toughness in battle.'),
  -- blastoise in emerald
  (9, 900, 11, 'The waterspouts that protrude from its shell are highly accurate. Their bullets of water can precisely nail tin cans from a distance of over 160 feet.'),
  -- caterpie in emerald
  (10, 1000, 11, 'Its voracious appetite compels it to devour leaves bigger than itself without hesitation. It releases a terribly strong odor from its antennae.'),
  -- metapod in emerald
  (11, 1100, 11, 'Its shell is as hard as an iron slab. A METAPOD does not move very much because it is preparing its soft innards for evolution inside the shell.'),
  -- butterfree in emerald
  (12, 1200, 11, 'It has a superior ability to search for delicious honey from flowers. It can seek, extract, and carry honey from flowers blooming over six miles away.'),
  -- weedle in emerald
  (13, 1300, 11, 'A WEEDLE has an extremely acute sense of smell. It distinguishes its favorite kinds of leaves from those it dislikes by sniffing with its big red proboscis (nose).'),
  -- kakuna in emerald
  (14, 1400, 11, 'It remains virtually immobile while it clings to a tree. However, on the inside, it busily prepares for evolution. This is evident from how hot its shell becomes.'),
  -- beedrill in emerald
  (15, 1500, 11, 'A BEEDRILL is extremely territorial. For safety reasons, no one should ever approach its nest. If angered, they will attack in a swarm.'),
  -- pidgey in emerald
  (16, 1600, 11, 'It has an extremely sharp sense of direction. It can unerringly return home to its nest, however far it may be removed from its familiar surroundings.'),
  -- pidgeotto in emerald
  (17, 1700, 11, 'This POKéMON flies around, patrolling its large territory. If its living space is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.'),
  -- pidgeot in emerald
  (18, 1800, 11, 'This POKéMON has gorgeous, glossy feathers. Many TRAINERS are so captivated by the beautiful feathers on its head that they choose PIDGEOT as their POKéMON.'),
  -- rattata in emerald
  (19, 1900, 11, 'A RATTATA is cautious in the extreme. Even while it is asleep, it constantly moves its ears and listens for danger. It will make its nest anywhere.'),
  -- raticate in emerald
  (20, 2000, 11, 'A RATICATE’s sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses.'),
  -- spearow in emerald
  (21, 2100, 11, 'Its loud cry can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger.'),
  -- fearow in emerald
  (22, 2200, 11, 'Its long neck and elongated beak are ideal for catching prey in soil or water. It deftly moves this extended and skinny beak to pluck prey.'),
  -- ekans in emerald
  (23, 2300, 11, 'An EKANS curls itself up in a spiral while it rests. This position allows it to quickly respond to an enemy from any direction with a threat from its upraised head.'),
  -- arbok in emerald
  (24, 2400, 11, 'This POKéMON has a terrifically strong constricting power. It can even flatten steel oil drums. Once it wraps its body around its foe, escaping is impossible.'),
  -- pikachu in emerald
  (25, 2500, 11, 'It stores electricity in the electric sacs on its cheeks. When it releases pent-up energy in a burst, the electric power is equal to a lightning bolt.'),
  -- raichu in emerald
  (26, 2600, 11, 'If it stores too much electricity, its behavior turns aggressive. To avoid this, it occasionally discharges excess energy and calms itself down.'),
  -- sandshrew in emerald
  (27, 2700, 11, 'When it curls up in a ball, it can make any attack bounce off harmlessly. Its hide has turned tough and solid as a result of living in the desert.'),
  -- sandslash in emerald
  (28, 2800, 11, 'It curls up in a ball to protect itself from enemy attacks. It also curls up to prevent heatstroke during the daytime when temperatures rise sharply.'),
  -- nidoran-f in emerald
  (29, 2900, 11, 'Its highly toxic barbs are thought to have developed as protection for this small- bodied POKéMON. When enraged, it releases a horrible toxin from its horn.'),
  -- nidorina in emerald
  (30, 3000, 11, 'When it is with its friends or family, its barbs are tucked away to prevent injury. It appears to become nervous if separated from the others.'),
  -- nidoqueen in emerald
  (31, 3100, 11, 'It is adept at sending foes flying with harsh tackles using its tough, scaly body. This POKéMON is at its strongest when it is defending its young.'),
  -- nidoran-m in emerald
  (32, 3200, 11, 'The male NIDORAN has developed muscles that freely move its ears in any direction. Even the slightest sound does not escape this POKéMON’s notice.'),
  -- nidorino in emerald
  (33, 3300, 11, 'Its horn is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.'),
  -- nidoking in emerald
  (34, 3400, 11, 'A NIDOKING’s thick tail packs enormously destructive power capable of toppling a metal transmission tower. Once it goes on a rampage, there is no stopping it.'),
  -- clefairy in emerald
  (35, 3500, 11, 'On every night of a full moon, they come out to play. When dawn arrives, the tired CLEFAIRY go to sleep nestled up against each other in deep and quiet mountains.'),
  -- clefable in emerald
  (36, 3600, 11, 'A CLEFABLE uses its wings to skip lightly as if it were flying. Its bouncy step lets it even walk on water. On quiet, moonlit nights, it strolls on lakes.'),
  -- vulpix in emerald
  (37, 3700, 11, 'It can freely control fire, making fiery orbs fly like will-o’-the-wisps. Just before evolution, its six tails grow hot as if on fire.'),
  -- ninetales in emerald
  (38, 3800, 11, 'It has long been said that each of the nine tails embody an enchanted power. A long-lived NINETALES will have fur that shines like gold.'),
  -- jigglypuff in emerald
  (39, 3900, 11, 'Nothing can avoid falling asleep hearing a JIGGLYPUFF’s song. The sound waves of its singing voice match the brain waves of someone in a deep sleep.'),
  -- wigglytuff in emerald
  (40, 4000, 11, 'Its fur is the ultimate in luxuriousness. Sleeping alongside a WIGGLYTUFF is simply divine. Its body expands seemingly without end when it inhales.'),
  -- zubat in emerald
  (41, 4100, 11, 'While living in pitch-black caverns, their eyes gradually grew shut and deprived them of vision. They use ultrasonic waves to detect obstacles.'),
  -- golbat in emerald
  (42, 4200, 11, 'Its fangs easily puncture even thick animal hide. It loves to feast on the blood of people and POKéMON. It flits about in darkness and strikes from behind.'),
  -- oddish in emerald
  (43, 4300, 11, 'This POKéMON grows by absorbing moonlight. During the daytime, it buries itself in the ground, leaving only its leaves exposed to avoid detection by its enemies.'),
  -- gloom in emerald
  (44, 4400, 11, 'A horribly noxious honey drools from its mouth. One whiff of the honey can result in memory loss. Some fans are said to enjoy this overwhelming stink, however.'),
  -- vileplume in emerald
  (45, 4500, 11, 'In seasons when it produces more pollen, the air around a VILEPLUME turns yellow with the powder as it walks. The pollen is highly toxic and causes paralysis.'),
  -- paras in emerald
  (46, 4600, 11, 'A PARAS has parasitic tochukaso mushrooms growing on its back. They grow by drawing nutrients from the host. They are valued as a medicine for long life.'),
  -- parasect in emerald
  (47, 4700, 11, 'PARASECT are known to infest the roots of large trees en masse and drain nutrients. When an infested tree dies, they move onto another tree all at once.'),
  -- venonat in emerald
  (48, 4800, 11, 'Its coat of thin, stiff hair that covers its entire body is said to have evolved for protection. Its large eyes never fail to spot even miniscule prey.'),
  -- venomoth in emerald
  (49, 4900, 11, 'VENOMOTH are nocturnal--they only are active at night. Their favorite prey are insects that gather around streetlights, attracted by the light in the darkness.'),
  -- diglett in emerald
  (50, 5000, 11, 'DIGLETT are raised in most farms. The reason is simple--wherever they burrow, the soil is left perfectly tilled for growing delicious crops.'),
  -- dugtrio in emerald
  (51, 5100, 11, 'Because the triplets originally split from one body, they think exactly alike. They work cooperatively to burrow endlessly through the ground.'),
  -- meowth in emerald
  (52, 5200, 11, 'MEOWTH withdraw their sharp claws into their paws to silently sneak about. For some reason, this POKéMON loves shiny coins that glitter with light.'),
  -- persian in emerald
  (53, 5300, 11, 'A PERSIAN’s six bold whiskers sense air movements to determine what is in its vicinity. It becomes docile if grabbed by the whiskers.'),
  -- psyduck in emerald
  (54, 5400, 11, 'When its headache intensifies, it starts using strange powers. However, it has no recollection of its powers, so it always looks befuddled and bewildered.'),
  -- golduck in emerald
  (55, 5500, 11, 'A GOLDUCK is an adept swimmer. It sometimes joins competitive swimmers in training. It uses psychic powers when its forehead shimmers with light.'),
  -- mankey in emerald
  (56, 5600, 11, 'When it starts shaking and its nasal breathing turns rough, it’s a sure sign of anger. However, since this happens instantly, there is no time to flee.'),
  -- primeape in emerald
  (57, 5700, 11, 'When it becomes furious, its blood circulation becomes more robust, and its muscles are made stronger. But it also becomes much less intelligent.'),
  -- growlithe in emerald
  (58, 5800, 11, 'Its superb sense of smell ensures that this POKéMON won’t forget any scent, no matter what. It uses its sense of smell to detect the emotions of others.'),
  -- arcanine in emerald
  (59, 5900, 11, 'This fleet-footed POKéMON is said to run over 6,200 miles in a single day and night. The fire that blazes wildly within its body is its source of power.'),
  -- poliwag in emerald
  (60, 6000, 11, 'It is possible to see this POKéMON’s spiral innards right through its thin skin. However, the skin is also very flexible. Even sharp fangs bounce right off it.'),
  -- poliwhirl in emerald
  (61, 6100, 11, 'Its body surface is always wet and slick with an oily fluid. Because of this greasy covering, it can easily slip and slide out of the clutches of any enemy in battle.'),
  -- poliwrath in emerald
  (62, 6200, 11, 'Its highly developed muscles never grow fatigued, however much it exercises. This POKéMON can swim back and forth across the Pacific Ocean without effort.'),
  -- abra in emerald
  (63, 6300, 11, 'A POKéMON that sleeps 18 hours a day. Observation revealed that it uses TELEPORT to change its location once every hour.'),
  -- kadabra in emerald
  (64, 6400, 11, 'It is rumored that a boy with psychic abilities suddenly transformed into KADABRA while he was assisting research into extrasensory powers.'),
  -- alakazam in emerald
  (65, 6500, 11, 'While it has strong psychic abilities and high intelligence, an ALAKAZAM’s muscles are very weak. It uses psychic power to move its body.'),
  -- machop in emerald
  (66, 6600, 11, 'It continually undertakes strenuous training to master all forms of martial arts. Its strength lets it easily hoist a sumo wrestler onto its shoulders.'),
  -- machoke in emerald
  (67, 6700, 11, 'A belt is worn by a MACHOKE to keep its overwhelming power under control. Because it is so dangerous, no one has ever removed the belt.'),
  -- machamp in emerald
  (68, 6800, 11, 'It is impossible to defend against punches and chops doled out by its four arms. Its fighting spirit flares up when it faces a tough opponent.'),
  -- bellsprout in emerald
  (69, 6900, 11, 'A BELLSPROUT’s thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, it leaks a fluid that melts even iron.'),
  -- weepinbell in emerald
  (70, 7000, 11, 'At night, a WEEPINBELL hangs on to a tree branch with its hooked rear and sleeps. If it moves around in its sleep, it may wake up to find itself on the ground.'),
  -- victreebel in emerald
  (71, 7100, 11, 'The long vine extending from its head is waved about as if it were a living thing to attract prey. When an unsuspecting victim approaches, it is swallowed whole.'),
  -- tentacool in emerald
  (72, 7200, 11, 'Its body is almost entirely composed of water. It ensnares its foe with its two long tentacles, then stabs with the poison stingers at their tips.'),
  -- tentacruel in emerald
  (73, 7300, 11, 'It lives in complex rock formations on the ocean floor and traps prey using its 80 tentacles. Its red orbs glow when it grows excited or agitated.'),
  -- geodude in emerald
  (74, 7400, 11, 'It climbs mountain paths using only the power of its arms. Because they look just like boulders lining paths, hikers may step on them without noticing.'),
  -- graveler in emerald
  (75, 7500, 11, 'They descend from mountains by tumbling down steep slopes. They are so brutal, they smash aside obstructing trees and massive boulders with thunderous tackles.'),
  -- golem in emerald
  (76, 7600, 11, 'It is said to live in volcanic craters on mountain peaks. Once a year, it sheds its hide and grows larger. The shed hide crumbles and returns to the soil.'),
  -- ponyta in emerald
  (77, 7700, 11, 'A PONYTA is very weak at birth. It can barely stand up. Its legs become stronger as it stumbles and falls while trying to keep up with its parent.'),
  -- rapidash in emerald
  (78, 7800, 11, 'It usually canters casually in the fields and plains. But once a RAPIDASH turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.'),
  -- slowpoke in emerald
  (79, 7900, 11, 'It catches prey by dipping its tail in water at the side of a river. But it often forgets what it is doing and spends entire days just loafing at water’s edge.'),
  -- slowbro in emerald
  (80, 8000, 11, 'Its tail has a SHELLDER firmly attached with a bite. As a result, the tail can’t be used for fishing anymore. This forces it to reluctantly swim and catch prey.'),
  -- magnemite in emerald
  (81, 8100, 11, 'The units at its sides are extremely powerful magnets. They generate enough magnetism to draw in iron objects from over 300 feet away.'),
  -- magneton in emerald
  (82, 8200, 11, 'It is actually three MAGNEMITE linked by magnetism. It generates powerful radio waves that raise temperatures by 3.6 degrees F within a 3,300-foot radius.'),
  -- farfetchd in emerald
  (83, 8300, 11, 'It is always seen with a stick from a plant. Apparently, there are good sticks and bad sticks. This POKéMON occasionally fights with others over choice sticks.'),
  -- doduo in emerald
  (84, 8400, 11, 'Even while eating or sleeping, one of the heads remains always vigilant for any sign of danger. When threatened, it flees at over 60 miles per hour.'),
  -- dodrio in emerald
  (85, 8500, 11, 'A peculiar POKéMON species with three heads. It vigorously races across grassy plains even in arid seasons with little rainfall.'),
  -- seel in emerald
  (86, 8600, 11, 'SEEL hunt for prey in frigid, ice-covered seas. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head.'),
  -- dewgong in emerald
  (87, 8700, 11, 'It loves to snooze on bitterly cold ice. The sight of this POKéMON sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.'),
  -- grimer in emerald
  (88, 8800, 11, 'Born from polluted sludge in the sea, GRIMER’s favorite food is anything filthy. They feed on wastewater pumped out from factories.'),
  -- muk in emerald
  (89, 8900, 11, 'It prefers warm and humid habitats. In the summertime, the toxic substances in its body intensify, making MUK reek like putrid kitchen garbage.'),
  -- shellder in emerald
  (90, 9000, 11, 'At night, it burrows a hole in the seafloor with its broad tongue to make a place to sleep. While asleep, it closes its shell, but leaves its tongue hanging out.'),
  -- cloyster in emerald
  (91, 9100, 11, 'It swims in the sea by swallowing water, then jetting it out toward the rear. The CLOYSTER shoots spikes from its shell using the same system.'),
  -- gastly in emerald
  (92, 9200, 11, 'When exposed to a strong wind, a GASTLY’s gaseous body quickly dwindles away. They cluster under the eaves of houses to escape the ravages of wind.'),
  -- haunter in emerald
  (93, 9300, 11, 'If a HAUNTER beckons you while it is floating in darkness, don’t approach it. This POKéMON will try to lick you with its tongue and steal your life away.'),
  -- gengar in emerald
  (94, 9400, 11, 'Deep in the night, your shadow cast by a streetlight may suddenly overtake you. It is actually a GENGAR running past you, pretending to be your shadow.'),
  -- onix in emerald
  (95, 9500, 11, 'There is a magnet in its brain that prevents an ONIX from losing direction while tunneling. As it grows older, its body becomes steadily rounder and smoother.'),
  -- drowzee in emerald
  (96, 9600, 11, 'If your nose becomes itchy while you are sleeping, it’s a sure sign that a DROWZEE is standing above your pillow and trying to eat your dream through your nostrils.'),
  -- hypno in emerald
  (97, 9700, 11, 'The arcing movement and glitter of the pendulum in a HYPNO’s hand lull the foe into deep hypnosis. While searching for prey, it polishes the pendulum.'),
  -- krabby in emerald
  (98, 9800, 11, 'KRABBY live in holes dug into beaches. On sandy shores with little in the way of food, they can be seen squabbling with each other over territory.'),
  -- kingler in emerald
  (99, 9900, 11, 'It waves its huge, oversized claw in the air to communicate with others. But since the claw is so heavy, this POKéMON quickly tires.'),
  -- voltorb in emerald
  (100, 10000, 11, 'It bears an uncanny and unexplained resemblance to a POKé BALL. Because it explodes at the slightest shock, even veteran TRAINERS treat it with caution.'),
  -- electrode in emerald
  (101, 10100, 11, 'They appear in great numbers at electric power plants. Because they feed on electricity, they cause massive and chaotic blackouts in nearby cities.'),
  -- exeggcute in emerald
  (102, 10200, 11, 'It consists of six eggs that care for each other. The eggs attract each other and spin around. When cracks increasingly appear, it is close to evolution.'),
  -- exeggutor in emerald
  (103, 10300, 11, 'Originally from the tropics, EXEGGUTOR’s heads grow larger from exposure to strong sunlight. It is said that when the heads fall, they group to form an EXEGGCUTE.'),
  -- cubone in emerald
  (104, 10400, 11, 'It pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull it wears are from its tears.'),
  -- marowak in emerald
  (105, 10500, 11, 'A MAROWAK is the evolved form of a CUBONE that has grown tough by overcoming the grief of losing its mother. Its tempered and hardened spirit is not easily broken.'),
  -- hitmonlee in emerald
  (106, 10600, 11, 'Its legs freely stretch and contract. Using these springlike limbs, it bowls over foes with devastating kicks. After battle, it rubs down its tired legs.'),
  -- hitmonchan in emerald
  (107, 10700, 11, 'A HITMONCHAN is said to possess the spirit of a boxer who aimed to become the world champion. Having an indomitable spirit means that it will never give up.'),
  -- lickitung in emerald
  (108, 10800, 11, 'Whenever it sees something unfamiliar, it always licks the object because it memorizes things by texture and taste. It is somewhat put off by sour things.'),
  -- koffing in emerald
  (109, 10900, 11, 'Getting up close to a KOFFING will give you a chance to observe, through its thin skin, the toxic gases swirling inside. It blows up at the slightest stimulation.'),
  -- weezing in emerald
  (110, 11000, 11, 'By diluting its toxic gases with a special process, the highest grade of perfume can be extracted. To WEEZING, gases emanating from garbage are the ultimate feast.'),
  -- rhyhorn in emerald
  (111, 11100, 11, 'Once it starts running, it doesn’t stop. Its tiny brain makes it so stupid that it can’t remember why it started running in the first place.'),
  -- rhydon in emerald
  (112, 11200, 11, 'Its horn, which rotates like a drill, destroys tall buildings with one strike. It stands on its hind legs, and its brain is well developed.'),
  -- chansey in emerald
  (113, 11300, 11, 'CHANSEY lay nutritionally excellent eggs every day. The eggs are so delicious, they are eagerly devoured by even those people who have lost their appetite.'),
  -- tangela in emerald
  (114, 11400, 11, 'Its vines snap off easily and painlessly if they are grabbed, allowing it to make a quick getaway. The lost vines are replaced by new growth the very next day.'),
  -- kangaskhan in emerald
  (115, 11500, 11, 'If you come across a young KANGASKHAN playing by itself, never try to catch it. The baby’s parent is sure to be in the area, and it will become violently enraged.'),
  -- horsea in emerald
  (116, 11600, 11, 'By cleverly flicking the fins on its back side to side, it moves in any direction while facing forward. It spits ink to escape if it senses danger.'),
  -- seadra in emerald
  (117, 11700, 11, 'The poisonous barbs all over its body are highly valued as ingredients for making traditional herbal medicine. It shows no mercy to anything approaching its nest.'),
  -- goldeen in emerald
  (118, 11800, 11, 'In the springtime, schools of GOLDEEN can be seen swimming up falls and rivers. It metes out staggering damage with its single horn.'),
  -- seaking in emerald
  (119, 11900, 11, 'It punches holes in boulders on streambeds. This is a clever innovation that prevents its eggs from being attacked or washed away by the current.'),
  -- staryu in emerald
  (120, 12000, 11, 'It gathers with others in the night and makes its red core glow on and off with the twinkling stars. It can regenerate limbs if they are severed from its body.'),
  -- starmie in emerald
  (121, 12100, 11, 'People in ancient times imagined that STARMIE were transformed from the reflections of stars that twinkled on gentle waves at night.'),
  -- mr-mime in emerald
  (122, 12200, 11, 'A MR. MIME is a master of pantomime. It can convince others that something unseeable actually exists. Once believed, the imaginary object does become real.'),
  -- scyther in emerald
  (123, 12300, 11, 'Its blindingly fast speed adds to the sharpness of its twin forearm scythes. The scythes can slice through thick logs in one wicked stroke.'),
  -- jynx in emerald
  (124, 12400, 11, 'A JYNX sashays rhythmically as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without noticing.'),
  -- electabuzz in emerald
  (125, 12500, 11, 'When a storm approaches, it competes with others to scale heights that are likely to be stricken by lightning. Some towns use ELECTABUZZ in place of lightning rods.'),
  -- magmar in emerald
  (126, 12600, 11, 'In battle, it blows out intense flames from all over its body to intimidate its foe. These fiery bursts create heat waves that ignite grass and trees in the area.'),
  -- pinsir in emerald
  (127, 12700, 11, 'Their pincers are strong enough to shatter thick logs. Because they dislike cold, PINSIR burrow and sleep under the ground on chilly nights.'),
  -- tauros in emerald
  (128, 12800, 11, 'It is not satisfied unless it is rampaging at all times. If there is no opponent for TAUROS to battle, it will charge at thick trees and knock them down to calm itself.'),
  -- magikarp in emerald
  (129, 12900, 11, 'Its swimming muscles are weak, so it is easily washed away by currents. In places where water pools, you can see many MAGIKARP deposited there by the flow.'),
  -- gyarados in emerald
  (130, 13000, 11, 'It is an extremely vicious and violent POKéMON. When humans begin to fight, it will appear and burn everything to the ground with intensely hot flames.'),
  -- lapras in emerald
  (131, 13100, 11, 'People have driven LAPRAS almost to the point of extinction. In the evenings, it is said to sing plaintively as it seeks what few others of its kind still remain.'),
  -- ditto in emerald
  (132, 13200, 11, 'A DITTO rearranges its cell structure to transform itself. However, if it tries to change based on its memory, it will get details wrong.'),
  -- eevee in emerald
  (133, 13300, 11, 'An EEVEE has an unstable genetic makeup that suddenly mutates due to its environment. Radiation from various STONES causes this POKéMON to evolve.'),
  -- vaporeon in emerald
  (134, 13400, 11, 'VAPOREON underwent a spontaneous mutation and grew fins and gills that allow them to live underwater. They have the ability to freely control water.'),
  -- jolteon in emerald
  (135, 13500, 11, 'Its cells generate weak power that is amplified by its fur’s static electricity to drop thunderbolts. The bristling fur is made of electrically charged needles.'),
  -- flareon in emerald
  (136, 13600, 11, 'FLAREON’s fluffy fur releases heat into the air so that its body does not get excessively hot. Its body temperature can rise to a maximum of 1,650 degrees F.'),
  -- porygon in emerald
  (137, 13700, 11, 'It is capable of reverting itself entirely back to program data in order to enter cyberspace. A PORYGON is copy- protected so it cannot be duplicated.'),
  -- omanyte in emerald
  (138, 13800, 11, 'One of the ancient and long-since-extinct POKéMON that have been regenerated from fossils by humans. If attacked, it withdraws into its hard shell.'),
  -- omastar in emerald
  (139, 13900, 11, 'An OMASTAR uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large, making its movements slow and ponderous.'),
  -- kabuto in emerald
  (140, 14000, 11, 'It is a POKéMON that has been regenerated from a fossil. However, in rare cases, living examples have been discovered. KABUTO have not changed for 300 million years.'),
  -- kabutops in emerald
  (141, 14100, 11, 'KABUTOPS once swam underwater to hunt for prey. It was apparently evolving from being a water dweller to living on land as evident from changes in its gills and legs.'),
  -- aerodactyl in emerald
  (142, 14200, 11, 'AERODACTYL is a POKéMON from the age of dinosaurs. It was regenerated from DNA extracted from amber. It is imagined to have been the king of the skies.'),
  -- snorlax in emerald
  (143, 14300, 11, 'SNORLAX’s typical day consists of nothing more than eating and sleeping. It is such a docile POKéMON that there are children who use its big belly as a place to play.'),
  -- articuno in emerald
  (144, 14400, 11, 'ARTICUNO is a legendary bird POKéMON that can control ice. The flapping of its wings chills the air. As a result, it is said that when this POKéMON flies, snow will fall.'),
  -- zapdos in emerald
  (145, 14500, 11, 'ZAPDOS is a legendary bird POKéMON that has the ability to control electricity. It usually lives in thunderclouds. It gains power if it is stricken by lightning bolts.'),
  -- moltres in emerald
  (146, 14600, 11, 'MOLTRES is a legendary bird POKéMON that can control fire. If injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.'),
  -- dratini in emerald
  (147, 14700, 11, 'A DRATINI continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels.'),
  -- dragonair in emerald
  (148, 14800, 11, 'A DRAGONAIR stores an enormous amount of energy inside its body. It is said to alter the weather around it by loosing energy from the crystals on its neck and tail.'),
  -- dragonite in emerald
  (149, 14900, 11, 'It can circle the globe in just 16 hours. It is a kindhearted POKéMON that leads lost and foundering ships in a storm to the safety of land.'),
  -- mewtwo in emerald
  (150, 15000, 11, 'A POKéMON that was created by genetic manipulation. However, even though the scientific power of humans made its body, they failed to give it a warm heart.'),
  -- mew in emerald
  (151, 15100, 11, 'A MEW is said to possess the genes of all POKéMON. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people.'),
  -- chikorita in emerald
  (152, 15200, 11, 'It waves its leaf around to keep foes at bay. However, a sweet fragrance also wafts from the leaf, creating a friendly atmosphere that becalms the battlers.'),
  -- bayleef in emerald
  (153, 15300, 11, 'A BAYLEEF’s neck is ringed by curled-up leaves. Inside each leaf is a small tree shoot. The fragrance of this shoot makes people peppy.'),
  -- meganium in emerald
  (154, 15400, 11, 'The fragrance of a MEGANIUM’s flower soothes and calms emotions. In battle, it gives off more of its becalming scent to blunt the foe’s fighting spirit.'),
  -- cyndaquil in emerald
  (155, 15500, 11, 'It flares flames from its back to protect itself. The fire burns vigorously if the POKéMON is angry. When it is tired, it sputters with incomplete combustion.'),
  -- quilava in emerald
  (156, 15600, 11, 'It intimidates foes with intense gusts of flames and superheated air. Its quick nimbleness lets it dodge attacks even while scorching an enemy.'),
  -- typhlosion in emerald
  (157, 15700, 11, 'It can hide behind a shimmering heat haze that it creates using its intense flames. TYPHLOSION create blazing explosive blasts that burn everything to cinders.'),
  -- totodile in emerald
  (158, 15800, 11, 'Despite its small body, TOTODILE’s jaws are very powerful. While it may think it is just playfully nipping, its bite has enough strength to cause serious injury.'),
  -- croconaw in emerald
  (159, 15900, 11, 'Once its jaws clamp down on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like fishhooks, they become irremovably embedded.'),
  -- feraligatr in emerald
  (160, 16000, 11, 'It opens its huge mouth to intimidate enemies. In battle, it runs using its thick and powerful hind legs to charge the foe with incredible speed.'),
  -- sentret in emerald
  (161, 16100, 11, 'They take turns standing guard when it is time to sleep. The sentry awakens the others if it senses danger. If one becomes separated, it turns sleepless with fear.'),
  -- furret in emerald
  (162, 16200, 11, 'A FURRET has a very slim build. When under attack, it can squirm through narrow spaces and get away. In spite of its short limbs, it is very nimble and fleet.'),
  -- hoothoot in emerald
  (163, 16300, 11, 'It has an internal organ that senses the earth’s rotation. Using this special organ, a HOOTHOOT begins hooting at precisely the same time every day.'),
  -- noctowl in emerald
  (164, 16400, 11, 'It unfailingly catches prey in darkness. NOCTOWL owe their success to superior vision that allows them to see in minimal light, and to their supple and silent wings.'),
  -- ledyba in emerald
  (165, 16500, 11, 'LEDYBA communicate using a fluid that they secrete from where the legs join the body. They are said to convey feelings to others by altering the fluid’s scent.'),
  -- ledian in emerald
  (166, 16600, 11, 'It is said that in lands with clean air, where the stars fill the sky, there live many LEDIAN. For good reason, they use the light of the stars as energy.'),
  -- spinarak in emerald
  (167, 16700, 11, 'The web it spins can be considered its second nervous system. It is said that a SPINARAK determines its prey by the tiny vibrations it feels through the web.'),
  -- ariados in emerald
  (168, 16800, 11, 'Its feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. It constricts its foe with thin and strong silk webbing.'),
  -- crobat in emerald
  (169, 16900, 11, 'Over the course of evolution, its hind legs turned into wings. By alternately resting its front and rear wings, it can fly all day without having to stop.'),
  -- chinchou in emerald
  (170, 17000, 11, 'When it senses danger, it discharges positive and negative electricity from its two antennae. It lives in depths beyond sunlight’s reach.'),
  -- lanturn in emerald
  (171, 17100, 11, 'The light-emitting orbs on its back are very bright. They are formed from a part of its dorsal fin. This POKéMON illuminates the inky darkness of deep seas.'),
  -- pichu in emerald
  (172, 17200, 11, 'It is still inept at retaining electricity. When it is startled, it discharges power accidentally. It gets better at holding power as it grows older.'),
  -- cleffa in emerald
  (173, 17300, 11, 'On nights with many shooting stars, CLEFFA can be seen dancing in a ring. They dance until daybreak, when they quench their thirst with the morning dew.'),
  -- igglybuff in emerald
  (174, 17400, 11, 'Its soft and pliable body is very bouncy. When it sings continuously with all its might, its body steadily turns a deepening pink color.'),
  -- togepi in emerald
  (175, 17500, 11, 'As its energy, it uses the feelings of compassion and pleasure exuded by people and POKéMON. It stores up happy feelings in its shell, then shares them out.'),
  -- togetic in emerald
  (176, 17600, 11, 'It is said to be a POKéMON that brings good fortune. When it spots someone who is pure of heart, a TOGETIC appears and shares its happiness with that person.'),
  -- natu in emerald
  (177, 17700, 11, 'It runs up short trees that grow on the savanna to peck at new shoots. A NATU’s eyes look as if they are always observing something.'),
  -- xatu in emerald
  (178, 17800, 11, 'It has the enigmatic power of foreseeing the future. Some people in different lands have long believed that XATU are emissaries from another world.'),
  -- mareep in emerald
  (179, 17900, 11, 'Its fluffy wool rubs together and builds a static charge. The more energy is charged, the more brightly the lightbulb at the tip of its tail glows.'),
  -- flaaffy in emerald
  (180, 18000, 11, 'Its fleece quality changes to generate strong static electricity with a small amount of wool. The bare, slick parts of its hide are shielded against electricity.'),
  -- ampharos in emerald
  (181, 18100, 11, 'It gives off so much light that it can be seen even from space. People in the old days used its light to send signals back and forth with others far away.'),
  -- bellossom in emerald
  (182, 18200, 11, 'Its flower petals deepen in color through exposure to sunlight. When cloudy weather persists, it does a dance that is thought to be a ritual for summoning the sun.'),
  -- marill in emerald
  (183, 18300, 11, 'Its body is covered with water-repellent fur. Because of the fur, it can swim through water at high speed without being slowed by the water’s resistance.'),
  -- azumarill in emerald
  (184, 18400, 11, 'It lives in water virtually all day long. Its body color and pattern act as camouflage that makes it tough for enemies to spot in water.'),
  -- sudowoodo in emerald
  (185, 18500, 11, 'It mimics a tree to avoid being attacked by enemies. But since its forelegs remain green throughout the year, it is easily identified as a fake in the winter.'),
  -- politoed in emerald
  (186, 18600, 11, 'The curled hair on its head proves its status as a king. It is said that the longer and curlier the hair, the more respect it earns from its peers.'),
  -- hoppip in emerald
  (187, 18700, 11, 'This POKéMON drifts and floats with the wind. If it senses the approach of strong winds, a HOPPIP links leaves with others to prepare against being blown away.'),
  -- skiploom in emerald
  (188, 18800, 11, 'It blossoms when the temperature rises above 64 degrees F. Because its flower’s blooming changes with the temperature, it is sometimes used as a thermometer.'),
  -- jumpluff in emerald
  (189, 18900, 11, 'JUMPLUFF ride warm southern winds to cross the sea and fly to foreign lands. This POKéMON lands when it encounters cold air while it is floating.'),
  -- aipom in emerald
  (190, 19000, 11, 'Its tail ends with a dexterous, handlike appendage. However, because it uses the tail so much, AIPOM’s real hands have become rather clumsy.'),
  -- sunkern in emerald
  (191, 19100, 11, 'SUNKERN try to minimize movement to conserve the nutrients they have stored in their bodies for evolution. They will not eat, subsisting only on morning dew.'),
  -- sunflora in emerald
  (192, 19200, 11, 'SUNFLORA convert solar energy into nutrition. They are highly active in the warm daytime but suddenly stop moving as soon as the sun sets.'),
  -- yanma in emerald
  (193, 19300, 11, 'It can see 360 degrees without moving its eyes. It is a great flier capable of making sudden stops and turning midair to quickly chase down targeted prey.'),
  -- wooper in emerald
  (194, 19400, 11, 'WOOPER usually live in water but come out onto land seeking food occasionally. On land, they coat their bodies with a gooey, toxic film.'),
  -- quagsire in emerald
  (195, 19500, 11, 'A QUAGSIRE hunts by leaving its mouth wide open in water and waiting for its prey to blunder in. Because it doesn’t move, it does not get very hungry.'),
  -- espeon in emerald
  (196, 19600, 11, 'An ESPEON is extremely loyal to any TRAINER it considers to be worthy. It is said to have developed precognitive powers to protect its TRAINER from harm.'),
  -- umbreon in emerald
  (197, 19700, 11, 'UMBREON evolved from exposure to the moon’s energy pulses. It lurks in darkness and waits for its foes to move. The rings on its body glow when it leaps to attack.'),
  -- murkrow in emerald
  (198, 19800, 11, 'MURKROW were feared as the alleged bearers of ill fortune. It shows strong interest in anything that sparkles. It will even try to steal rings from women.'),
  -- slowking in emerald
  (199, 19900, 11, 'It undertakes research every day to solve the mysteries of the world. However, it apparently forgets everything if the SHELLDER on its head comes off.'),
  -- misdreavus in emerald
  (200, 20000, 11, 'A MISDREAVUS frightens people with a creepy, sobbing cry. It apparently uses its red spheres to absorb the fear of foes as its nutrition.'),
  -- unown in emerald
  (201, 20100, 11, 'This POKéMON is shaped like ancient text characters. Although research is ongoing, it is a mystery as to which came first, the ancient writings or the various UNOWN.'),
  -- wobbuffet in emerald
  (202, 20200, 11, 'Usually docile, a WOBBUFFET strikes back ferociously if its black tail is attacked. It makes its lair in caves where it waits for nightfall.'),
  -- girafarig in emerald
  (203, 20300, 11, 'A GIRAFARIG is an herbivore--it eats grass and tree shoots. While it is eating, its tail makes chewing and swallowing motions as if it were also eating.'),
  -- pineco in emerald
  (204, 20400, 11, 'A PINECO hangs from a tree branch and waits for prey. While eating, if it is disturbed by someone shaking its tree, it falls on the ground and suddenly explodes.'),
  -- forretress in emerald
  (205, 20500, 11, 'It keeps itself inside its steel shell. The shell is opened when it is catching prey, but it is so quick that the shell’s inside cannot be seen.'),
  -- dunsparce in emerald
  (206, 20600, 11, 'Its drill-tipped tail is used to burrow into the ground backwards. This POKéMON is known to make its nest in complex shapes deep under the ground.'),
  -- gligar in emerald
  (207, 20700, 11, 'It glides without making a single sound. It grasps the face of its foe using its hind and large front claws, then stabs with its poison barb.'),
  -- steelix in emerald
  (208, 20800, 11, 'STEELIX live even further underground than ONIX. This POKéMON is known to dig toward the earth’s core, reaching a depth of over six-tenths of a mile underground.'),
  -- snubbull in emerald
  (209, 20900, 11, 'By baring its fangs and making a scary face, it sends smaller POKéMON scurrying in terror. The SNUBBULL does seem a little sad at making its foes flee.'),
  -- granbull in emerald
  (210, 21000, 11, 'It has a particularly well-developed lower jaw. The huge fangs are heavy, causing it to tilt its head. Unless it is startled, it will not try to bite.'),
  -- qwilfish in emerald
  (211, 21100, 11, 'A QWILFISH uses the pressure of water it swallows to shoot toxic quills all at once from all over its body. It finds swimming to be somewhat challenging.'),
  -- scizor in emerald
  (212, 21200, 11, 'A SCIZOR has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. It flaps its wings to regulate its body temperature.'),
  -- shuckle in emerald
  (213, 21300, 11, 'A SHUCKLE hides under rocks, keeping its body concealed inside its shell while eating stored berries. The berries mix with its body fluids to become a juice.'),
  -- heracross in emerald
  (214, 21400, 11, 'They gather in forests seeking the sweet sap of trees. It is completely clad in a steel-hard shell. It is proud of its horn, which it uses to fling foes.'),
  -- sneasel in emerald
  (215, 21500, 11, 'A SNEASEL scales trees by punching its hooked claws into the bark. It seeks out unguarded nests and steals eggs for food while the parents are away.'),
  -- teddiursa in emerald
  (216, 21600, 11, 'It licks its palms that are sweetened by being soaked in honey. A TEDDIURSA makes its own honey by blending fruits and pollen collected by BEEDRILL.'),
  -- ursaring in emerald
  (217, 21700, 11, 'In forests, it is said that there are many streams and towering trees where an URSARING gathers food. It walks through its forest collecting food every day.'),
  -- slugma in emerald
  (218, 21800, 11, 'It is a species of POKéMON that lives in volcanic areas. If its body cools, its skin hardens and immobilizes it. To avoid that, it sleeps near magma.'),
  -- magcargo in emerald
  (219, 21900, 11, 'The shell on its back is made of hardened magma. Tens of thousands of years spent living in volcanic craters have turned MAGCARGO’s bodies into magma.'),
  -- swinub in emerald
  (220, 22000, 11, 'It roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under dried grass. It occasionally roots out hot springs.'),
  -- piloswine in emerald
  (221, 22100, 11, 'A PILOSWINE is covered by a thick coat of long hair for enduring freezing cold. It uses its tusks to dig up food that has been buried under ice.'),
  -- corsola in emerald
  (222, 22200, 11, 'CORSOLA live in warm southern seas. If the sea becomes polluted, the beautiful coral stalks become discolored and crumble away in tatters.'),
  -- remoraid in emerald
  (223, 22300, 11, 'A REMORAID uses its abdominal muscles to forcefully expel swallowed water, then shoot down flying prey. When evolution approaches, it travels down rivers.'),
  -- octillery in emerald
  (224, 22400, 11, 'It ensnares its foe with its suction- cupped tentacles before delivering the finishing blow. If the foe turns out to be too strong, it spews ink to escape.'),
  -- delibird in emerald
  (225, 22500, 11, 'It carries food bundled up in its tail. There was a famous explorer who managed to scale Mt. Everest thanks to a DELIBIRD sharing its food.'),
  -- mantine in emerald
  (226, 22600, 11, 'On sunny days, schools of MANTINE can be seen elegantly leaping over the waves. It is not bothered by the REMORAID that hitches rides.'),
  -- skarmory in emerald
  (227, 22700, 11, 'A POKéMON that has a body and wings of steel. People in the past used feathers fallen from SKARMORY to make swords and knives.'),
  -- houndour in emerald
  (228, 22800, 11, 'HOUNDOUR communicate with each other using a variety of cries to corner their prey. This POKéMON’s remarkable teamwork is simply unparalleled.'),
  -- houndoom in emerald
  (229, 22900, 11, 'In a HOUNDOOM pack, the one with its horns raked sharply back serves a leadership role. They choose their leader by fighting among themselves.'),
  -- kingdra in emerald
  (230, 23000, 11, 'It sleeps quietly, deep on the seafloor. When it comes up to the surface, it creates a huge whirlpool that can swallow even ships.'),
  -- phanpy in emerald
  (231, 23100, 11, 'PHANPY’s big ears serve as broad fans. When it becomes hot, it flaps the ears busily to cool down. Even the young are very strong.'),
  -- donphan in emerald
  (232, 23200, 11, 'A DONPHAN is so strong it can easily haul a dump truck. Its hide has toughened to a rock-hard state. An ordinary sort of attack won’t even leave a scratch.'),
  -- porygon2 in emerald
  (233, 23300, 11, 'It was created by humans using the power of science. It has been given artificial intelligence that enables it to learn new gestures and emotions on its own.'),
  -- stantler in emerald
  (234, 23400, 11, 'STANTLER’s magnificent antlers were once traded at high prices as works of art. As a result, this POKéMON was hunted close to extinction.'),
  -- smeargle in emerald
  (235, 23500, 11, 'A SMEARGLE marks its territory using a fluid that leaks out from the tip of its tail. About 5,000 different marks left by this POKéMON have been found.'),
  -- tyrogue in emerald
  (236, 23600, 11, 'TYROGUE become stressed out if they do not get to train every day. When raising this POKéMON, the TRAINER must establish a regular training schedule.'),
  -- hitmontop in emerald
  (237, 23700, 11, 'Its technique of kicking while spinning is a remarkable mix of both offense and defense. HITMONTOP travel faster spinning than they do walking.'),
  -- smoochum in emerald
  (238, 23800, 11, 'It actively runs about, but also falls often. Whenever it falls, it will check its reflection on a lake’s surface to make sure its face hasn’t become dirty.'),
  -- elekid in emerald
  (239, 23900, 11, 'If it touches metal and discharges the electricity it has stored in its body, an ELEKID begins swinging its arms in circles to recharge itself.'),
  -- magby in emerald
  (240, 24000, 11, 'If a MAGBY is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames.'),
  -- miltank in emerald
  (241, 24100, 11, 'It gives over five gallons of milk daily. Its sweet milk is enjoyed by children and grown-ups alike. People who can’t drink milk turn it into yogurt and eat it instead.'),
  -- blissey in emerald
  (242, 24200, 11, 'If it senses sadness with its fluffy fur, a BLISSEY will rush over to the sad person, however far away, to share an egg of happiness that brings a smile to any face.'),
  -- raikou in emerald
  (243, 24300, 11, 'RAIKOU embodies the speed of lightning. Its roars send shock waves shuddering through the air and ground as if lightning bolts were crashing down.'),
  -- entei in emerald
  (244, 24400, 11, 'ENTEI embodies the passion of magma. It is thought to have been born in the eruption of a volcano. It blasts fire that consumes all that it touches.'),
  -- suicune in emerald
  (245, 24500, 11, 'SUICUNE embodies the compassion of a pure spring of water. It runs across the land with gliding elegance. It has the power to purify dirty water.'),
  -- larvitar in emerald
  (246, 24600, 11, 'A LARVITAR is born deep under the ground. It must eat its way through the soil above and reach the surface for it to see its parents’ faces.'),
  -- pupitar in emerald
  (247, 24700, 11, 'A PUPITAR creates a gas inside its body that it ejects under compression to propel itself like a jet. Its body can withstand a collision with solid steel.'),
  -- tyranitar in emerald
  (248, 24800, 11, 'A TYRANITAR is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. It roams in mountains seeking new opponents to fight.'),
  -- lugia in emerald
  (249, 24900, 11, 'LUGIA is so powerful even a light fluttering of its wings can blow apart houses. As a result, it chooses to live out of sight deep under the sea.'),
  -- ho-oh in emerald
  (250, 25000, 11, 'Its feathers--which glow in seven colors depending on the angle at which they are struck by light--are thought to bring joy. It is said to live at the foot of a rainbow.'),
  -- celebi in emerald
  (251, 25100, 11, 'This POKéMON came from the future by crossing over time. It is thought that so long as CELEBI appears, a bright and shining future awaits us.'),
  -- treecko in emerald
  (252, 25200, 11, 'It makes its nest in a giant tree in the forest. It ferociously guards against anything nearing its territory. It is said to be the protector of the forest’s trees.'),
  -- grovyle in emerald
  (253, 25300, 11, 'Leaves grow out of this POKéMON’s body. They help obscure a GROVYLE from the eyes of its enemies while it is in a thickly overgrown forest.'),
  -- sceptile in emerald
  (254, 25400, 11, 'In the jungle, its power is without equal. This POKéMON carefully grows trees and plants. It regulates its body temperature by basking in sunlight.'),
  -- torchic in emerald
  (255, 25500, 11, 'If attacked, it strikes back by spitting balls of fire it forms in its stomach. A TORCHIC dislikes darkness because it can’t see its surroundings.'),
  -- combusken in emerald
  (256, 25600, 11, 'It lashes out with 10 kicks per second. Its strong fighting instinct compels it to keep up its offensive until the opponent gives up.'),
  -- blaziken in emerald
  (257, 25700, 11, 'It learns martial arts that use punches and kicks. Every several years, its old feathers burn off, and new, supple feathers grow back in their place.'),
  -- mudkip in emerald
  (258, 25800, 11, 'On land, it can powerfully lift large boulders by planting its four feet and heaving. It sleeps by burying itself in soil at the water’s edge.'),
  -- marshtomp in emerald
  (259, 25900, 11, 'Its toughened hind legs enable it to stand upright. Because it weakens if its skin dries out, it replenishes fluids by playing in mud.'),
  -- swampert in emerald
  (260, 26000, 11, 'If it senses the approach of a storm and a tidal wave, it protects its seaside nest by piling up boulders. It swims as fast as a jet ski.'),
  -- poochyena in emerald
  (261, 26100, 11, 'It savagely threatens foes with bared fangs. It chases after fleeing targets tenaciously. It turns tail and runs, however, if the foe strikes back.'),
  -- mightyena in emerald
  (262, 26200, 11, 'In the wild, MIGHTYENA live in a pack. They never defy their leader’s orders. They defeat foes with perfectly coordinated teamwork.'),
  -- zigzagoon in emerald
  (263, 26300, 11, 'Rubbing its nose against the ground, it always wanders about back and forth in search of something. It is distinguished by the zigzag footprints it leaves.'),
  -- linoone in emerald
  (264, 26400, 11, 'It is exceedingly fast if it only has to run in a straight line. When it spots pond- dwelling prey underwater, it quickly leaps in and catches it with its sharp claws.'),
  -- wurmple in emerald
  (265, 26500, 11, 'It sticks to tree branches and eats leaves. The thread it spits from its mouth, which becomes gooey when it touches air, slows the movement of its foes.'),
  -- silcoon in emerald
  (266, 26600, 11, 'It prepares for evolution using the energy it stored while it was a WURMPLE. It keeps watch over the surroundings with its two eyes.'),
  -- beautifly in emerald
  (267, 26700, 11, 'Its colorfully patterned wings are its most prominent feature. It flies through flower-covered fields collecting pollen. It attacks ferociously when angered.'),
  -- cascoon in emerald
  (268, 26800, 11, 'To avoid detection by its enemies, it hides motionlessly beneath large leaves and in the gaps of branches. It also attaches dead leaves to its body for camouflage.'),
  -- dustox in emerald
  (269, 26900, 11, 'It is a nocturnal POKéMON that flies from fields and mountains to the attraction of streetlights at night. It looses highly toxic powder from its wings.'),
  -- lotad in emerald
  (270, 27000, 11, 'This POKéMON lives in ponds with clean water. It is known to ferry small POKéMON across ponds by carrying them on the broad leaf on its head.'),
  -- lombre in emerald
  (271, 27100, 11, 'In the evening, it takes great delight in popping out of rivers and startling people. It feeds on aquatic moss that grows on rocks in the riverbed.'),
  -- ludicolo in emerald
  (272, 27200, 11, 'When it hears festive music, all the cells in its body become stimulated, and it begins moving in rhythm. It does not quail even when it faces a tough opponent.'),
  -- seedot in emerald
  (273, 27300, 11, 'It hangs off branches and absorbs nutrients. When it finishes eating, its body becomes so heavy that it drops to the ground with a thump.'),
  -- nuzleaf in emerald
  (274, 27400, 11, 'A forest-dwelling POKéMON that is skilled at climbing trees. Its long and pointed nose is its weak point. It loses power if the nose is gripped.'),
  -- shiftry in emerald
  (275, 27500, 11, 'It is said to arrive on chilly, wintry winds. Feared from long ago as the guardian of forests, this POKéMON lives in a deep forest where people do not venture.'),
  -- taillow in emerald
  (276, 27600, 11, 'Although it is small, it is very courageous. It will take on a larger SKARMORY on an equal footing. However, its will weakens if it becomes hungry.'),
  -- swellow in emerald
  (277, 27700, 11, 'A SWELLOW dives upon prey from far above. It never misses its targets. It takes to the skies in search of lands with a warm climate.'),
  -- wingull in emerald
  (278, 27800, 11, 'It makes its nest on a sheer cliff at the edge of the sea. It has trouble keeping its wings flapping in flight. Instead, it soars on updrafts.'),
  -- pelipper in emerald
  (279, 27900, 11, 'It skims the tops of waves as it flies. When it spots prey, it uses its large beak to scoop up the victim with water. It protects its eggs in its beak.'),
  -- ralts in emerald
  (280, 28000, 11, 'A RALTS has the power to sense the emotions of people and POKéMON with the horns on its head. It takes cover if it senses any hostility.'),
  -- kirlia in emerald
  (281, 28100, 11, 'A KIRLIA has the psychic power to create a rip in the dimensions and see into the future. It is said to dance with pleasure on sunny mornings.'),
  -- gardevoir in emerald
  (282, 28200, 11, 'It apparently does not feel the pull of gravity because it supports itself with psychic power. It will give its life to protect its TRAINER.'),
  -- surskit in emerald
  (283, 28300, 11, 'They gather on puddles after evening downpours, gliding across the surface of water as if sliding. It secretes honey with a sweet aroma from its head.'),
  -- masquerain in emerald
  (284, 28400, 11, 'It intimidates foes with the large eyelike patterns on its antennae. Because it can’t fly if its wings get wet, it shelters itself from rain under large trees and eaves.'),
  -- shroomish in emerald
  (285, 28500, 11, 'It loves to eat damp, composted soil in forests. If you enter a forest after a long rain, you can see many SHROOMISH feasting on composted soil.'),
  -- breloom in emerald
  (286, 28600, 11, 'It scatters spores from holes in the cap on its head. It loves warm and humid climates. It feeds on trees and plants in fields and forests.'),
  -- slakoth in emerald
  (287, 28700, 11, 'It sleeps virtually all day and night long. It doesn’t change its nest its entire life, but it sometimes travels great distances by swimming in rivers.'),
  -- vigoroth in emerald
  (288, 28800, 11, 'It can’t keep still because its blood boils with energy. It runs through the fields and mountains all day to calm itself. If it doesn’t, it can’t sleep at night.'),
  -- slaking in emerald
  (289, 28900, 11, 'Hordes of SLAKING gather around trees when fruits come into season. They wait around patiently for ripened fruits to fall out of the trees.'),
  -- nincada in emerald
  (290, 29000, 11, 'It makes its nest at the roots of a mighty tree. Using its whiskerlike antennae, it probes its surroundings in the pitch-black darkness of soil.'),
  -- ninjask in emerald
  (291, 29100, 11, 'Because it darts about vigorously at high speed, it is very difficult to see. Hearing its distinctive cries for too long induces a headache.'),
  -- shedinja in emerald
  (292, 29200, 11, 'A peculiar POKéMON that floats in air even though its wings remain completely still. The inside of its body is hollow and utterly dark.'),
  -- whismur in emerald
  (293, 29300, 11, 'Its cries equal a jet plane in volume. It inhales through its ear canals. Because of this system, it can cry continually without having to catch its breath.'),
  -- loudred in emerald
  (294, 29400, 11, 'It positions the round speakers on its head to assail foes with ultrasonic waves at massive volume. It builds power by stomping the ground.'),
  -- exploud in emerald
  (295, 29500, 11, 'It has sound-generating organs all over its body. It communicates with others by adjusting the tone and volume of the cries it emits.'),
  -- makuhita in emerald
  (296, 29600, 11, 'It loves to toughen up its body above all else. If you hear quaking rumbles in a cave, it is the sound of MAKUHITA undertaking strenuous training.'),
  -- hariyama in emerald
  (297, 29700, 11, 'It has the habit of challenging others without hesitation to tests of strength. It’s been known to stand on train tracks and stop trains using forearm thrusts.'),
  -- azurill in emerald
  (298, 29800, 11, 'Its tail, which is packed with nutrition, is very bouncy like a rubber ball. On sunny days they gather at the edge of water and splash about for fun.'),
  -- nosepass in emerald
  (299, 29900, 11, 'Its body emits a powerful magnetism. It feeds on prey that is pulled in by the force. Its magnetism is stronger in cold seasons.'),
  -- skitty in emerald
  (300, 30000, 11, 'A SKITTY’s adorably cute behavior makes it highly popular. In battle, it makes its tail puff out. It threatens foes with a sharp growl.'),
  -- delcatty in emerald
  (301, 30100, 11, 'Rather than keeping a permanent lair, it habitually seeks comfortable spots and sleeps there. It is nocturnal and becomes active at dusk.'),
  -- sableye in emerald
  (302, 30200, 11, 'It digs branching holes in caves using its sharp claws in search of food--raw gems. A SABLEYE lurks in darkness and is seen only rarely.'),
  -- mawile in emerald
  (303, 30300, 11, 'Its giant jaws are actually steel horns that transformed. It fools foes into complacency with its adorable gestures, then chomps them with its huge jaws.'),
  -- aron in emerald
  (304, 30400, 11, 'A POKéMON that is clad in steel armor. A new suit of armor is made when it evolves. The old, discarded armor is salvaged as metal for making iron products.'),
  -- lairon in emerald
  (305, 30500, 11, 'When two LAIRON meet in the wild, they fight for territory by bashing into each other with their steel bodies. The sound of their collision carries for miles.'),
  -- aggron in emerald
  (306, 30600, 11, 'Its iron horns grow longer a little at a time. They are used to determine the AGGRON’s age. The gouges in its armor are worn with pride as mementos from battles.'),
  -- meditite in emerald
  (307, 30700, 11, 'It continually meditates for hours every day. As a result of rigorous and dedicated yoga training, it has tempered its spiritual power so much it can fly.'),
  -- medicham in emerald
  (308, 30800, 11, 'Through crushingly harsh yoga training, it gained the power to foretell its foe’s actions. It battles with elegant, dance- like movement.'),
  -- electrike in emerald
  (309, 30900, 11, 'It generates electricity using friction from the atmosphere. In seasons with especially arid air, its entire body blazes with violent showers of sparks.'),
  -- manectric in emerald
  (310, 31000, 11, 'Because lightning falls in their vicinities, MANECTRIC were thought to have been born from lightning. In battle, they create thunderclouds.'),
  -- plusle in emerald
  (311, 31100, 11, 'It has the trait of cheering on its fellow POKéMON. By shorting out the electricity it releases from its paws, it creates pom-poms for cheering.'),
  -- minun in emerald
  (312, 31200, 11, 'At a meeting of POKéMON academics, it was announced that simultaneous exposure to electricity from a PLUSLE and MINUN will promote circulation and boost vitality.'),
  -- volbeat in emerald
  (313, 31300, 11, 'With their taillights lit, VOLBEAT fly in a swarm, drawing geometric designs in the night sky. They move their nests if their pond water becomes dirty.'),
  -- illumise in emerald
  (314, 31400, 11, 'A nocturnal POKéMON that becomes active upon nightfall. It leads a VOLBEAT swarm to draw patterns in the night sky. Over 200 different patterns have been confirmed.'),
  -- roselia in emerald
  (315, 31500, 11, 'A ROSELIA that drinks nutritionally rich springwater blooms with lovely flowers. The fragrance of its flowers has the effect of making its foes careless.'),
  -- gulpin in emerald
  (316, 31600, 11, 'This POKéMON’s stomach fluid can even digest scrap iron. In one gulp, it can swallow something that is as large as itself.'),
  -- swalot in emerald
  (317, 31700, 11, 'Its powerful stomach acid is capable of digesting almost anything. The one thing in the whole world a SWALOT can’t digest is its own stomach.'),
  -- carvanha in emerald
  (318, 31800, 11, 'CARVANHA attack ships in swarms, making them sink. Although it is said to be a very vicious POKéMON, it timidly flees as soon as it finds itself alone.'),
  -- sharpedo in emerald
  (319, 31900, 11, 'The vicious and sly gangster of the sea. Its skin is specially textured to minimize drag in water. Its speed tops out at over 75 miles per hour.'),
  -- wailmer in emerald
  (320, 32000, 11, 'While this POKéMON usually lives in the sea, it can survive on land, although not too long. It loses vitality if its body becomes dried out.'),
  -- wailord in emerald
  (321, 32100, 11, 'It breathes through nostrils that it raises above the sea. By inhaling to its maximum capacity, a WAILORD can dive close to 10,000 feet beneath the waves.'),
  -- numel in emerald
  (322, 32200, 11, 'A NUMEL stores boiling magma in the hump on its back. It is a hardy POKéMON that can transport a 220-pound load. It has served humans at work since long ago.'),
  -- camerupt in emerald
  (323, 32300, 11, 'A POKéMON that lives in the crater of a volcano. Every 10 years, the volcanoes on its back erupt violently. Research is under way on the cause of eruption.'),
  -- torkoal in emerald
  (324, 32400, 11, 'It battles using energy it gets from burning coal. When loosing smoke from its nostrils, it lets off a sound that is similar to a locomotive’s horn.'),
  -- spoink in emerald
  (325, 32500, 11, 'A POKéMON that manipulates psychic power at will. It doesn’t stop bouncing even when it is asleep. It loves eating mushrooms that grow underground.'),
  -- grumpig in emerald
  (326, 32600, 11, 'It stores power in the black pearls on its forehead. When it uses psychic power, it performs an odd dance step. Its style of dancing became hugely popular overseas.'),
  -- spinda in emerald
  (327, 32700, 11, 'It is distinguished by a pattern of spots that is always different. Its unsteady, tottering walk has the effect of fouling its foe’s aim.'),
  -- trapinch in emerald
  (328, 32800, 11, 'Its big jaws crunch through boulders. Because its head is so big, it has a hard time getting back upright if it tips over onto its back.'),
  -- vibrava in emerald
  (329, 32900, 11, 'It looses ultrasonic waves by rubbing its wings together. Since a VIBRAVA’s wings are still in the process of growing, it can only fly short distances.'),
  -- flygon in emerald
  (330, 33000, 11, 'The flapping of its wings sounds like singing. To prevent detection by enemies, it hides itself by flapping up a cloud of desert sand.'),
  -- cacnea in emerald
  (331, 33100, 11, 'CACNEA live in deserts with virtually no rainfall. It battles by swinging its thick, spiked arms. Once a year, a yellow flower blooms.'),
  -- cacturne in emerald
  (332, 33200, 11, 'After spending thousands of years in harsh deserts, its blood transformed into the same substances as sand. It is nocturnal, so it hunts at night.'),
  -- swablu in emerald
  (333, 33300, 11, 'A POKéMON that has wings like cottony clouds. After enduring winter, in which little food is available, SWABLU flocks move closer to towns in the spring.'),
  -- altaria in emerald
  (334, 33400, 11, 'It hums in a beautiful soprano voice. It flies among white clouds in the blue sky. It launches intensely hot fireballs from its mouth.'),
  -- zangoose in emerald
  (335, 33500, 11, 'When it battles, it stands on its hind legs and attacks with its sharply clawed forelegs. Its fur bristles if it encounters any SEVIPER.'),
  -- seviper in emerald
  (336, 33600, 11, 'SEVIPER and ZANGOOSE are eternal rivals. It counters a ZANGOOSE’s dazzling agility with its swordlike tail, which also oozes a horrible poison.'),
  -- lunatone in emerald
  (337, 33700, 11, 'It becomes very active on the night of a full moon. This POKéMON was first discovered 40 years ago at the site of a meteor strike.'),
  -- solrock in emerald
  (338, 33800, 11, 'Solar energy is the source of this POKéMON’s power. On sunny days, groups of SOLROCK line up facing the sun and absorb its light.'),
  -- barboach in emerald
  (339, 33900, 11, 'Its body is covered with a slimy film. The film acts as a barrier to prevent germs in muddy water from entering the BARBOACH’s body.'),
  -- whiscash in emerald
  (340, 34000, 11, 'Mysteriously, it can foretell earthquakes. In the daytime, it sleeps in mud at the bottom of a pond. When it awakens, it continually feeds throughout the night.'),
  -- corphish in emerald
  (341, 34100, 11, 'Once it grips prey with its large pincers, it will never let go, no matter what. It is a hardy POKéMON that can thrive in any environment.'),
  -- crawdaunt in emerald
  (342, 34200, 11, 'A brutish POKéMON that loves to battle. A veteran CRAWDAUNT that has prevailed in hundreds of battles has giant pincers marked with countless scars.'),
  -- baltoy in emerald
  (343, 34300, 11, 'A BALTOY moves by spinning on its single foot. It has been depicted in murals adorning the walls of a once-bustling city in an ancient age.'),
  -- claydol in emerald
  (344, 34400, 11, 'A CLAYDOL sleeps while hovering in midair. Its arms are separate from its body. They are kept floating by the POKéMON’s manipulation of psychic power.'),
  -- lileep in emerald
  (345, 34500, 11, 'It disguises itself as seaweed by making its tentacles sway. Unsuspecting prey that come too close are swallowed whole. It became extinct 100 million years ago.'),
  -- cradily in emerald
  (346, 34600, 11, 'It drags its heavy body along the seafloor. It makes its nest in the shallows of warm seas. CRADILY can be seen on beaches when the tide goes out.'),
  -- anorith in emerald
  (347, 34700, 11, 'It was resurrected from a fossil using the power of science. It swims by undulating the eight wings at its sides. They were feet that adapted to life in the sea.'),
  -- armaldo in emerald
  (348, 34800, 11, 'ARMALDO usually lives on land. However, when it hunts for prey, it dives beneath the ocean. It swims around using its two large wings.'),
  -- feebas in emerald
  (349, 34900, 11, 'FEEBAS live in ponds that are heavily infested with weeds. Because of its hopelessly shabby appearance, it seems as if few TRAINERS raise it.'),
  -- milotic in emerald
  (350, 35000, 11, 'It is said to live at the bottom of large lakes. Considered to be the most beautiful of all POKéMON, it has been depicted in paintings and statues.'),
  -- castform in emerald
  (351, 35100, 11, 'It alters its form depending on the weather. Changes in the climate such as the temperature and humidity appear to affect its cellular structure.'),
  -- kecleon in emerald
  (352, 35200, 11, 'A POKéMON that has the ability to alter its body colors to match its surroundings. A KECLEON reverts to its original colors if it is startled.'),
  -- shuppet in emerald
  (353, 35300, 11, 'This POKéMON roams about deep in the night seeking such negative emotions as grudges and envy. It retreats to its nest when the sun begins to rise.'),
  -- banette in emerald
  (354, 35400, 11, 'An abandoned plush doll became this POKéMON. They are said to live in garbage dumps and wander about in search of the children that threw them away.'),
  -- duskull in emerald
  (355, 35500, 11, 'A glare from its single scarlet eye makes even burly grown-ups freeze in utter fear. It is a nocturnal POKéMON that roams about under the cloak of darkness.'),
  -- dusclops in emerald
  (356, 35600, 11, 'It is thought that its body is hollow with only a spectral ball of fire burning inside. However, no one has been able to confirm this theory as fact.'),
  -- tropius in emerald
  (357, 35700, 11, 'It flies by flapping its broad leaves. The bunch of fruit that grows around its neck is deliciously sweet. In the spring, it scatters pollen from its neck.'),
  -- chimecho in emerald
  (358, 35800, 11, 'They fly about very actively when the hot season arrives. They communicate among themselves using seven different and distinguishing cries.'),
  -- absol in emerald
  (359, 35900, 11, 'It sharply senses even subtle changes in the sky and the land to predict natural disasters. It is a long-lived POKéMON that has a life-span of 100 years.'),
  -- wynaut in emerald
  (360, 36000, 11, 'A WYNAUT loves to eat sweet fruits. It cleverly picks fruits using its earlike arms. They gather in fruit gardens, drawn by the fragrance.'),
  -- snorunt in emerald
  (361, 36100, 11, 'They tend to move about in groups of around five SNORUNT. In snowy regions, it is said that when they are seen late at night, snowfall will arrive by morning.'),
  -- glalie in emerald
  (362, 36200, 11, 'A GLALIE has the power to instantaneously freeze moisture in the atmosphere. A dazzling cloud of diamondlike ice crystals forms around its body.'),
  -- spheal in emerald
  (363, 36300, 11, 'It is completely covered with plushy fur. As a result, it never feels the cold even when it is rolling about on ice floes or diving in the sea.'),
  -- sealeo in emerald
  (364, 36400, 11, 'SEALEO live in herds on ice floes. Using its powerful flippers, it shatters ice. It dives into the sea to hunt prey five times a day.'),
  -- walrein in emerald
  (365, 36500, 11, 'To protect its herd, the leader battles anything that invades its territory, even at the cost of its life. Its tusks may snap off in battle.'),
  -- clamperl in emerald
  (366, 36600, 11, 'A CLAMPERL slams its shell closed on prey to prevent escape. The pearl it creates upon evolution is said to be infused with a mysterious energy.'),
  -- huntail in emerald
  (367, 36700, 11, 'To withstand the crushing pressure of water deep under the sea, its spine is very thick and sturdy. Its tail, which is shaped like a small fish, has eyes that light up.'),
  -- gorebyss in emerald
  (368, 36800, 11, 'A GOREBYSS siphons the body fluids of prey through its thin, tubular mouth. Its light pink body color turns vivid when it finishes feeding.'),
  -- relicanth in emerald
  (369, 36900, 11, 'A POKéMON that was once believed to have been extinct. The species has not changed its form for 100 million years. It walks on the seafloor using its pectoral fins.'),
  -- luvdisc in emerald
  (370, 37000, 11, 'LUVDISC make the branches of CORSOLA their nests. There is a custom from long ago of giving a LUVDISC as a gift to express one’s feelings of love.'),
  -- bagon in emerald
  (371, 37100, 11, 'Although it is small, this POKéMON is very powerful because its body is a bundle of muscles. It launches head-butts with its ironlike skull.'),
  -- shelgon in emerald
  (372, 37200, 11, 'It hardly eats while it awaits evolution. It becomes hardier by enduring hunger. Its shell peels off the instant it begins to evolve.'),
  -- salamence in emerald
  (373, 37300, 11, 'After many long years, its cellular structure underwent a sudden mutation to grow wings. When angered, it loses all thought and rampages out of control.'),
  -- beldum in emerald
  (374, 37400, 11, 'When BELDUM gather in a swarm, they move in perfect unison as if they were but one POKéMON. They communicate with each other using brain waves.'),
  -- metang in emerald
  (375, 37500, 11, 'The claws tipping its arms pack the destructive power to tear through thick iron sheets as if they were silk. It flies at over 60 miles per hour.'),
  -- metagross in emerald
  (376, 37600, 11, 'METAGROSS has four brains that are joined by a complex neural network. As a result of integration, this POKéMON is smarter than a supercomputer.'),
  -- regirock in emerald
  (377, 37700, 11, 'A POKéMON that is made entirely of rocks and boulders. If parts of its body chip off in battle, REGIROCK repairs itself by adding new rocks.'),
  -- regice in emerald
  (378, 37800, 11, 'Its entire body is made of Antarctic ice. After extensive studies, researchers believe the ice was formed during an ice age.'),
  -- registeel in emerald
  (379, 37900, 11, 'Its body is harder than any other kind of metal. The body metal is composed of a mysterious substance. Not only is it hard, it shrinks and stretches flexibly.'),
  -- latias in emerald
  (380, 38000, 11, 'They make a small herd of only several members. They rarely make contact with people or other POKéMON. They disappear if they sense enemies.'),
  -- latios in emerald
  (381, 38100, 11, 'Even in hiding, it can detect the locations of others and sense their emotions since it has telepathy. Its intelligence allows it to understand human languages.'),
  -- kyogre in emerald
  (382, 38200, 11, 'KYOGRE has appeared in mythology as the creator of the sea. After long years of feuding with GROUDON, it took to sleep at the bottom of the sea.'),
  -- groudon in emerald
  (383, 38300, 11, 'GROUDON has appeared in mythology as the creator of the land. It sleeps in magma underground and is said to make volcanoes erupt on awakening.'),
  -- rayquaza in emerald
  (384, 38400, 11, 'A POKéMON that flies endlessly in the ozone layer. It is said it would descend to the ground if KYOGRE and GROUDON were to fight.'),
  -- jirachi in emerald
  (385, 38500, 11, 'JIRACHI is said to make wishes come true. While it sleeps, a tough crystalline shell envelops the body to protect it from enemies.'),
  -- deoxys in emerald
  (386, 38600, 11, 'A POKéMON that mutated from an extraterrestrial virus exposed to a laser beam. Its body is configured for superior agility and speed.');
