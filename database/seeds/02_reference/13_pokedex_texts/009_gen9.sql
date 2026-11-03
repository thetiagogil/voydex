-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own Pokédex text (the games' text data).
-- Per-form entries of Sun / Moon to Scarlet / Violet: Bulbapedia's per-form
-- listing of each species. Serebii for Scarlet / Violet's older species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_pokedex_texts
-- Scope: what each Generation 9 game's Pokédex says about a form, verbatim,
-- one row per form and game; a form without its own entry reads its
-- species' default form.
-- ============================================================================
INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
VALUES
  -- bulbasaur in scarlet
  (1, 100, 36, 'For some time after its birth, it uses the nutrients that are packed into the seed on its back in order to grow.'),
  -- ivysaur in scarlet
  (2, 200, 36, 'The more sunlight Ivysaur bathes in, the more strength wells up within it, allowing the bud on its back to grow larger.'),
  -- venusaur in scarlet
  (3, 300, 36, 'While it basks in the sun, it can convert the light into energy. As a result, it is more powerful in the summertime.'),
  -- charmander in scarlet
  (4, 400, 36, 'The flame on its tail shows the strength of its life-force. If Charmander is weak, the flame also burns weakly.'),
  -- charmeleon in scarlet
  (5, 500, 36, 'When it swings its burning tail, the temperature around it rises higher and higher, tormenting its opponents.'),
  -- charizard in scarlet
  (6, 600, 36, 'If Charizard becomes truly angered, the flame at the tip of its tail burns in a light blue shade.'),
  -- squirtle in scarlet
  (7, 700, 36, 'After birth, its back swells and hardens into a shell. It sprays a potent foam from its mouth.'),
  -- wartortle in scarlet
  (8, 800, 36, 'Wartortle’s long, furry tail is a symbol of longevity, so this Pokémon is quite popular among older people.'),
  -- blastoise in scarlet
  (9, 900, 36, 'It deliberately increases its body weight so it can withstand the recoil of the water jets it fires.'),
  -- ekans in scarlet
  (23, 2300, 36, 'It can freely detach its jaw to swallow large prey whole. It can become too heavy to move, however.'),
  -- arbok in scarlet
  (24, 2400, 36, 'The pattern on its belly appears to be a frightening face. Weak foes will flee just at the sight of the pattern.'),
  -- pikachu in scarlet
  (25, 2500, 36, 'When it is angered, it immediately discharges the energy stored in the pouches in its cheeks.'),
  -- pikachu-original-cap in scarlet
  (25, 2503, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across lots of different regions together.'),
  -- pikachu-hoenn-cap in scarlet
  (25, 2504, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across the Hoenn region together.'),
  -- pikachu-sinnoh-cap in scarlet
  (25, 2505, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across the Sinnoh region together.'),
  -- pikachu-unova-cap in scarlet
  (25, 2506, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across the Unova region together.'),
  -- pikachu-kalos-cap in scarlet
  (25, 2507, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across the Kalos region together.'),
  -- pikachu-alola-cap in scarlet
  (25, 2508, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across the Alola region together.'),
  -- pikachu-partner-cap in scarlet
  (25, 2509, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon traveling together with its partner, whom it met in a fateful encounter.'),
  -- pikachu-world-cap in scarlet
  (25, 2510, 36, 'The cap this Pikachu wears is filled with memories of this Pokémon and its partner traveling across the world together.'),
  -- raichu in scarlet
  (26, 2600, 36, 'Its tail discharges electricity into the ground, protecting it from getting shocked.'),
  -- sandshrew in scarlet
  (27, 2700, 36, 'It digs deep burrows to live in. When in danger, it rolls up its body to withstand attacks.'),
  -- alolan-sandshrew in scarlet
  (27, 2701, 36, 'It lives on snowy mountains. Its steel shell is very hard—so much so, it can’t roll its body up into a ball.'),
  -- sandslash in scarlet
  (28, 2800, 36, 'It is adept at attacking with the spines on its back and its sharp claws while quickly scurrying about.'),
  -- alolan-sandslash in scarlet
  (28, 2801, 36, 'This Pokémon’s steel spikes are sheathed in ice. Stabs from these spikes cause deep wounds and severe frostbite as well.'),
  -- clefairy in scarlet
  (35, 3500, 36, 'On nights with a full moon, Clefairy gather from all over and dance. Bathing in moonlight makes them float.'),
  -- clefable in scarlet
  (36, 3600, 36, 'Said to live in quiet, remote mountains, this type of fairy has a strong aversion to being seen.'),
  -- vulpix in scarlet
  (37, 3700, 36, 'If it is attacked by an enemy that is stronger than itself, it feigns injury to fool the enemy and escapes.'),
  -- alolan-vulpix in scarlet
  (37, 3701, 36, 'They live together in a skulk, helping one another. Before eating their prey, they freeze it solid with their −58 degree Fahrenheit breath.'),
  -- ninetales in scarlet
  (38, 3800, 36, 'Some legends claim that each of its nine tails has its own unique type of special mystical power.'),
  -- alolan-ninetales in scarlet
  (38, 3801, 36, 'Possessing a calm demeanor, this Pokémon was revered as a deity incarnate before it was identified as a regional variant of Ninetales.'),
  -- jigglypuff in scarlet
  (39, 3900, 36, 'When its huge eyes waver, it sings a mysteriously soothing melody that lulls its enemies to sleep.'),
  -- wigglytuff in scarlet
  (40, 4000, 36, 'It has a very fine fur. Take care not to make it angry, or it may inflate steadily and hit with a body slam.'),
  -- oddish in scarlet
  (43, 4300, 36, 'Its scientific name is Oddium wanderus. It is said to cover distances as far as 1,000 feet when night falls, walking on its two roots.'),
  -- gloom in scarlet
  (44, 4400, 36, 'The fluid that oozes from its mouth isn’t drool. It is a nectar that is used to attract prey.'),
  -- vileplume in scarlet
  (45, 4500, 36, 'The bud bursts into bloom with a bang. It then starts scattering allergenic, poisonous pollen.'),
  -- venonat in scarlet
  (48, 4800, 36, 'Poison oozes from all over its body. It catches small bug Pokémon at night that are attracted by light.'),
  -- venomoth in scarlet
  (49, 4900, 36, 'The wings are covered with dustlike scales. Every time it flaps its wings, it looses highly toxic dust.'),
  -- diglett in scarlet
  (50, 5000, 36, 'It lives about one yard underground, where it feeds on plant roots. It sometimes appears aboveground.'),
  -- alolan-diglett in scarlet
  (50, 5001, 36, 'The things growing from its head are whiskers that have become metallic. Diglett communicates with its comrades by waving them.'),
  -- dugtrio in scarlet
  (51, 5100, 36, 'Its three heads bob separately up and down to loosen the soil nearby, making it easier for it to burrow.'),
  -- alolan-dugtrio in scarlet
  (51, 5101, 36, 'Its shining gold whiskers are advanced sensors that can detect vibrations from sounds several miles away.'),
  -- meowth in scarlet
  (52, 5200, 36, 'All it does is sleep during the daytime. At night, it patrols its territory with its eyes aglow.'),
  -- persian in scarlet
  (53, 5300, 36, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.'),
  -- psyduck in scarlet
  (54, 5400, 36, 'It is constantly wracked by a headache. When the headache turns intense, it begins using mysterious powers.'),
  -- golduck in scarlet
  (55, 5500, 36, 'When it swims at full speed using its long, webbed limbs, its forehead somehow begins to glow.'),
  -- mankey in scarlet
  (56, 5600, 36, 'It lives in groups in the treetops. If it loses sight of its group, it becomes infuriated by its loneliness.'),
  -- primeape in scarlet
  (57, 5700, 36, 'It becomes wildly furious if it even senses someone looking at it. It chases anyone that meets its glare.'),
  -- growlithe in scarlet
  (58, 5800, 36, 'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.'),
  -- arcanine in scarlet
  (59, 5900, 36, 'An ancient picture scroll shows that people were captivated by its movement as it ran through prairies.'),
  -- poliwag in scarlet
  (60, 6000, 36, 'The swirl on its belly is its insides showing through the skin. It appears more clearly after Poliwag eats.'),
  -- poliwhirl in scarlet
  (61, 6100, 36, 'Its two legs are well developed. Even though it can live on the ground, it prefers living in water.'),
  -- poliwrath in scarlet
  (62, 6200, 36, 'Although it’s skilled in a style of dynamic swimming that uses all its muscles, for some reason it lives on dry land.'),
  -- bellsprout in scarlet
  (69, 6900, 36, 'No matter what Bellsprout is doing, if it detects movement nearby, it will immediately react by reaching out with its thin vines.'),
  -- weepinbell in scarlet
  (70, 7000, 36, 'Even though it is filled with acid, it does not melt because it also oozes a protective fluid.'),
  -- victreebel in scarlet
  (71, 7100, 36, 'It lures prey into its mouth with a nectar-like aroma. The helpless prey is melted with a dissolving fluid.'),
  -- tentacool in scarlet
  (72, 7200, 36, 'When the tide goes out, dehydrated Tentacool can be found left behind on the shore.'),
  -- tentacruel in scarlet
  (73, 7300, 36, 'On the rare occasions that large outbreaks of Tentacruel occur, all fish Pokémon disappear from the surrounding sea.'),
  -- geodude in scarlet
  (74, 7400, 36, 'At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily.'),
  -- alolan-geodude in scarlet
  (74, 7401, 36, 'Its body is a magnetic stone. Iron sand attaches firmly to the portions of its body that are particularly magnetic.'),
  -- graveler in scarlet
  (75, 7500, 36, 'A slow walker, it rolls to move. It pays no attention to any object that happens to be in its path.'),
  -- alolan-graveler in scarlet
  (75, 7501, 36, 'They eat rocks and often get into a scrap over them. The impact of Graveler smashing together causes a flash of light and a booming noise.'),
  -- golem in scarlet
  (76, 7600, 36, 'It is enclosed in a hard shell that is as rugged as slabs of rock. It sheds skin once a year to grow larger.'),
  -- alolan-golem in scarlet
  (76, 7601, 36, 'It’s grumpy and stubborn. If you upset it, it discharges electricity from the surface of its body and growls with a voice like thunder.'),
  -- slowpoke in scarlet
  (79, 7900, 36, 'It is incredibly slow and dopey. It takes five seconds for it to feel pain when under attack.'),
  -- galarian-slowpoke in scarlet
  (79, 7901, 36, 'It gives off a stimulating scent because of chemicals that have seeped into its body from the spice that it eats as its staple food.'),
  -- slowbro in scarlet
  (80, 8000, 36, 'When a Slowpoke went hunting in the sea, its tail was bitten by a Shellder. That made it evolve into Slowbro.'),
  -- galarian-slowbro in scarlet
  (80, 8002, 36, 'Shellder seems blissful over the taste of Slowbro even though the toxins seeping from the bite have caused Shellder to faint.'),
  -- magnemite in scarlet
  (81, 8100, 36, 'The electromagnetic waves emitted by the units at the sides of its head expel antigravity, which allows it to float.'),
  -- magneton in scarlet
  (82, 8200, 36, 'Three Magnemite are linked by a strong magnetic force. Earaches will occur if you get too close.'),
  -- doduo in scarlet
  (84, 8400, 36, 'Its twin heads have exactly the same genes and battle in perfect sync with each other.'),
  -- dodrio in scarlet
  (85, 8500, 36, 'It now has three hearts and three sets of lungs. Though it can’t run as fast as Doduo, Dodrio can keep running for longer stretches of time.'),
  -- seel in scarlet
  (86, 8600, 36, 'The protrusion on its head is very hard. It is used for bashing through thick ice.'),
  -- dewgong in scarlet
  (87, 8700, 36, 'It sleeps under shallow ocean waters during the day, then looks for food at night when it’s colder.'),
  -- grimer in scarlet
  (88, 8800, 36, 'Born from sludge, these Pokémon now gather in polluted places and increase the bacteria in their bodies.'),
  -- alolan-grimer in scarlet
  (88, 8801, 36, 'They store their toxins inside their bodies, so unlike Grimer from other regions, they don’t smell bad even up close.'),
  -- muk in scarlet
  (89, 8900, 36, 'It’s thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.'),
  -- alolan-muk in scarlet
  (89, 8901, 36, 'There are over a hundred kinds of poison inside its body. Chemical reactions between different poisons are the source of its vitality.'),
  -- shellder in scarlet
  (90, 9000, 36, 'It is encased in a shell that is harder than diamond. Inside, however, it is surprisingly tender.'),
  -- cloyster in scarlet
  (91, 9100, 36, 'Cloyster that live in seas with harsh tidal currents grow large, sharp spikes on their shells.'),
  -- gastly in scarlet
  (92, 9200, 36, 'It wraps its opponent in its gas-like body, slowly weakening its prey by poisoning it through the skin.'),
  -- haunter in scarlet
  (93, 9300, 36, 'It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.'),
  -- gengar in scarlet
  (94, 9400, 36, 'To steal the life of its target, it slips into the prey’s shadow and silently waits for an opportunity.'),
  -- drowzee in scarlet
  (96, 9600, 36, 'It remembers every dream it eats. It rarely eats the dreams of adults because children’s are much tastier.'),
  -- hypno in scarlet
  (97, 9700, 36, 'When it locks eyes with an enemy, it will use a mix of psi moves, such as Hypnosis and Confusion.'),
  -- voltorb in scarlet
  (100, 10000, 36, 'It rolls to move. If the ground is uneven, a sudden jolt from hitting a bump can cause it to explode.'),
  -- electrode in scarlet
  (101, 10100, 36, 'The more energy it charges up, the faster it gets. But this also makes it more likely to explode.'),
  -- exeggcute in scarlet
  (102, 10200, 36, 'If you touch one of Exeggcute’s heads, mistaking it for an egg, the other heads will quickly gather and attack you in a swarm.'),
  -- exeggutor in scarlet
  (103, 10300, 36, 'It is called the Walking Jungle. Each of the nuts has a face and a will of its own.'),
  -- alolan-exeggutor in scarlet
  (103, 10301, 36, 'It swings its long neck like a whip and smacks its head into opponents. This makes Exeggutor itself a little dizzy too.'),
  -- hitmonlee in scarlet
  (106, 10600, 36, 'At the exact moment it lands a kick on its target, Hitmonlee hardens the muscles on the sole of its foot, maximizing the power of the kick.'),
  -- hitmonchan in scarlet
  (107, 10700, 36, 'It corners its foes with combo punches from both sides, then finishes them off with a single straight punch launched at over 300 mph.'),
  -- koffing in scarlet
  (109, 10900, 36, 'Toxic gas is held within its thin, balloon-shaped body, so it can cause massive explosions.'),
  -- weezing in scarlet
  (110, 11000, 36, 'Top-grade perfume is made using its internal poison gases by diluting them to the highest level.'),
  -- rhyhorn in scarlet
  (111, 11100, 36, 'Rhyhorn claims an area with over a six mile radius as its territory. It apparently forgets where this territory is when running, however.'),
  -- rhydon in scarlet
  (112, 11200, 36, 'The horn of a Rhydon is powerful enough to crush raw diamonds. These Pokémon polish their horns by bashing them together.'),
  -- chansey in scarlet
  (113, 11300, 36, 'This kindly Pokémon lays highly nutritious eggs and shares them with injured Pokémon or people.'),
  -- horsea in scarlet
  (116, 11600, 36, 'If attacked—even by a large enemy—Horsea effortlessly swims to safety by utilizing its well-developed dorsal fin.'),
  -- seadra in scarlet
  (117, 11700, 36, 'The male raises the young. If it is approached while caring for young, it will use its toxic spines to fend off the intruder.'),
  -- scyther in scarlet
  (123, 12300, 36, 'It slashes through grass with its sharp scythes, moving too fast for the human eye to track.'),
  -- electabuzz in scarlet
  (125, 12500, 36, 'Its body constantly discharges electricity. Getting close to it will make your hair stand on end.'),
  -- magmar in scarlet
  (126, 12600, 36, 'Found near the mouth of a volcano. This fire-breather’s body temperature is nearly 2,200 degrees Fahrenheit.'),
  -- tauros in scarlet
  (128, 12800, 36, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.'),
  -- paldea-tauros-combat in scarlet
  (128, 12801, 36, 'This Pokémon has a muscular body and excels at close-quarters combat. It uses its short horns to strike the opponent’s weak spots.'),
  -- paldea-tauros-blaze in scarlet
  (128, 12802, 36, 'When heated by fire energy, its horns can get hotter than 1,800 degrees Fahrenheit. Those gored by them will suffer both wounds and burns.'),
  -- paldea-tauros-aqua in scarlet
  (128, 12803, 36, 'This Pokémon blasts water from holes on the tips of its horns—the high-pressure jets pierce right through Tauros’s enemies.'),
  -- magikarp in scarlet
  (129, 12900, 36, 'An underpowered, pathetic Pokémon. It may jump high on rare occasions but never more than seven feet.'),
  -- gyarados in scarlet
  (130, 13000, 36, 'Once it appears, it goes on a rampage. It remains enraged until it demolishes everything around it.'),
  -- lapras in scarlet
  (131, 13100, 36, 'It ferries people across the sea on its back. It may sing an enchanting cry if it is in a good mood.'),
  -- ditto in scarlet
  (132, 13200, 36, 'Its transformation ability is perfect. However, if made to laugh, it can’t maintain its disguise.'),
  -- eevee in scarlet
  (133, 13300, 36, 'Its ability to evolve into many forms allows it to adapt smoothly and perfectly to any environment.'),
  -- vaporeon in scarlet
  (134, 13400, 36, 'It lives close to water. Its long tail is ridged with a fin, which is often mistaken for a mermaid’s.'),
  -- jolteon in scarlet
  (135, 13500, 36, 'It concentrates the weak electric charges emitted by its cells and launches wicked lightning bolts.'),
  -- flareon in scarlet
  (136, 13600, 36, 'Inhaled air is carried to its flame sac, heated, and exhaled as fire that reaches over 3,000 degrees Fahrenheit.'),
  -- porygon in scarlet
  (137, 13700, 36, 'It is an artificial Pokémon. Since it doesn’t breathe, people are excited by its potential to be useful in any environment.'),
  -- snorlax in scarlet
  (143, 14300, 36, 'This gluttonous Pokémon eats constantly, apart from when it’s asleep. It devours nearly 900 pounds of food per day.'),
  -- dratini in scarlet
  (147, 14700, 36, 'It sheds many layers of skin as it grows larger. During this process, it is protected by a rapid waterfall.'),
  -- dragonair in scarlet
  (148, 14800, 36, 'They say that if it emits an aura from its whole body, the weather will begin to change instantly.'),
  -- dragonite in scarlet
  (149, 14900, 36, 'It is said that somewhere in the ocean lies an island where these gather. Only they live there.'),
  -- chikorita in scarlet
  (152, 15200, 36, 'It loves to bask in the sunlight. It uses the leaf on its head to seek out warm places.'),
  -- bayleef in scarlet
  (153, 15300, 36, 'The spicy scent that wafts from around Bayleef’s neck somehow makes those who smell it want to fight.'),
  -- meganium in scarlet
  (154, 15400, 36, 'Anyone who stands beside it becomes refreshed, just as if they were soaking in the soothing atmosphere of a forest.'),
  -- cyndaquil in scarlet
  (155, 15500, 36, 'It usually stays hunched over. If it is angry or surprised, it shoots flames out of its back.'),
  -- quilava in scarlet
  (156, 15600, 36, 'Before battle, it turns its back on its opponent to demonstrate how ferociously its fire blazes.'),
  -- typhlosion in scarlet
  (157, 15700, 36, 'It has a secret, devastating move. It rubs its blazing fur to cause huge explosions.'),
  -- totodile in scarlet
  (158, 15800, 36, 'Its powerful, well-developed jaws are capable of crushing anything. Even its Trainer must be careful.'),
  -- croconaw in scarlet
  (159, 15900, 36, 'The tips of its fangs are slanted backward. Once those fangs clamp down, the prey has no hope of escape.'),
  -- feraligatr in scarlet
  (160, 16000, 36, 'When it bites with its massive and powerful jaws, it shakes its head and savagely tears its victim up.'),
  -- sentret in scarlet
  (161, 16100, 36, 'This Pokémon is extremely cautious. Its supple tail is well muscled and firm to the touch.'),
  -- furret in scarlet
  (162, 16200, 36, 'It raises its offspring inside a long, narrow nest. Once they’re old enough, it takes them outside the nest to prepare them for independence.'),
  -- hoothoot in scarlet
  (163, 16300, 36, 'Hoothoot’s internal clock is precise at all times. It tilts its head in a fixed rhythm.'),
  -- noctowl in scarlet
  (164, 16400, 36, 'Its eyes are specially adapted. They concentrate even faint light and enable it to see in the dark.'),
  -- spinarak in scarlet
  (167, 16700, 36, 'Even while there are prey ensnared in its nest of spun thread, Spinarak will wait motionlessly until darkness falls.'),
  -- ariados in scarlet
  (168, 16800, 36, 'A single strand of a special thread is endlessly spun out of its rear. The thread leads back to its nest.'),
  -- chinchou in scarlet
  (170, 17000, 36, 'It lives in ocean depths beyond the reach of sunlight. It flashes lights on its antennae to communicate with others of its kind.'),
  -- lanturn in scarlet
  (171, 17100, 36, 'Portions of its dorsal fin mutated, becoming the parts that glow brightly to lure prey.'),
  -- pichu in scarlet
  (172, 17200, 36, 'It is unskilled at storing electric power. Any kind of shock causes it to discharge energy spontaneously.'),
  -- cleffa in scarlet
  (173, 17300, 36, 'On late nights illuminated by shooting stars, it gazes intently skyward, as if thinking of its home.'),
  -- igglybuff in scarlet
  (174, 17400, 36, 'Its body has a faintly sweet scent and is bouncy and soft. If it bounces even once, it cannot stop.'),
  -- mareep in scarlet
  (179, 17900, 36, 'If static electricity builds in its body, its fleece doubles in volume. Touching it will shock you.'),
  -- flaaffy in scarlet
  (180, 18000, 36, 'As a result of storing too much electricity, it developed patches where even downy wool won’t grow.'),
  -- ampharos in scarlet
  (181, 18100, 36, 'The bright light on its tail can be seen far away. It has been treasured since ancient times as a beacon.'),
  -- bellossom in scarlet
  (182, 18200, 36, 'Due to the effects of the Sun Stone, it is now active during the daytime. It likes to dance in pools of sunlight.'),
  -- marill in scarlet
  (183, 18300, 36, 'The fur on its body naturally repels water. It can stay dry even when it plays in the water.'),
  -- azumarill in scarlet
  (184, 18400, 36, 'Its long ears are superb sensors. It can distinguish the movements of things in water and tell what they are.'),
  -- sudowoodo in scarlet
  (185, 18500, 36, 'Although it always pretends to be a tree, its composition appears more similar to rock than to vegetation.'),
  -- politoed in scarlet
  (186, 18600, 36, 'If Poliwag and Poliwhirl hear its echoing cry, they respond by gathering from far and wide.'),
  -- hoppip in scarlet
  (187, 18700, 36, 'This Pokémon is blown across vast distances by the wind. It is unclear where the Hoppip of Paldea originally came from.'),
  -- skiploom in scarlet
  (188, 18800, 36, 'Skiploom enthusiasts can apparently tell where a Skiploom was born by the scent drifting from the flower on the Pokémon’s head.'),
  -- jumpluff in scarlet
  (189, 18900, 36, 'Jumpluff travels on seasonal winds. Once its cotton spores run out, its journey ends, as does its life.'),
  -- aipom in scarlet
  (190, 19000, 36, 'It lives atop tall trees. When leaping from branch to branch, it deftly uses its tail for balance.'),
  -- sunkern in scarlet
  (191, 19100, 36, 'It suddenly falls out of the sky in the morning. Knowing it’s weak, it simply feeds until it evolves.'),
  -- sunflora in scarlet
  (192, 19200, 36, 'In the daytime, it rushes about in a hectic manner, but it comes to a complete stop when the sun sets.'),
  -- yanma in scarlet
  (193, 19300, 36, 'As Yanma surveys its territory, it periodically stops to hover in place by flapping its wings at high speeds.'),
  -- wooper in scarlet
  (194, 19400, 36, 'A transparent mucous membrane covers its body. Touching it bare-handed will cause a tingling numbness.'),
  -- paldea-wooper in scarlet
  (194, 19401, 36, 'After losing a territorial struggle, Wooper began living on land. The Pokémon changed over time, developing a poisonous film to protect its body.'),
  -- quagsire in scarlet
  (195, 19500, 36, 'This carefree Pokémon has an easygoing nature. While swimming, it always bumps into boat hulls.'),
  -- espeon in scarlet
  (196, 19600, 36, 'The tip of its forked tail quivers when it is predicting its opponent’s next move.'),
  -- umbreon in scarlet
  (197, 19700, 36, 'When exposed to the moon’s aura, the rings on its body glow faintly and it gains a mysterious power.'),
  -- murkrow in scarlet
  (198, 19800, 36, 'Feared and loathed by many, it is believed to bring misfortune to all those who see it at night.'),
  -- slowking in scarlet
  (199, 19900, 36, 'When its head was bitten, toxins entered Slowpoke’s head and unlocked an extraordinary power.'),
  -- galarian-slowking in scarlet
  (199, 19901, 36, 'It administers its potions to weakened Pokémon it sees. These potions are derived from poison and secreted from holes in Slowking’s horns.'),
  -- misdreavus in scarlet
  (200, 20000, 36, 'This Pokémon startles people in the middle of the night. It gathers fear as its energy.'),
  -- girafarig in scarlet
  (203, 20300, 36, 'Though very small, the brain in its tail is still considered an important organ because it emits powerful psychic energy.'),
  -- pineco in scarlet
  (204, 20400, 36, 'It likes to make its shell thicker by adding layers of tree bark. The additional weight doesn’t bother it.'),
  -- forretress in scarlet
  (205, 20500, 36, 'It’s usually found hanging on to a fat tree trunk. It shoots out bits of its shell when it sees action.'),
  -- dunsparce in scarlet
  (206, 20600, 36, 'It creates mazes in dark locations. When spotted, it flees into the ground by digging with its tail.'),
  -- gligar in scarlet
  (207, 20700, 36, 'It builds its nest on a steep cliff. When it is done gliding, it hops along the ground back to its nest.'),
  -- snubbull in scarlet
  (209, 20900, 36, 'In truth, it is a cowardly Pokémon. It growls eagerly in order to hide its fear from its opponent.'),
  -- granbull in scarlet
  (210, 21000, 36, 'It is actually timid and easily spooked. If attacked, it desperately flails its limbs about in an attempt to repel its opponent.'),
  -- qwilfish in scarlet
  (211, 21100, 36, 'Be cautious if this Pokémon starts sucking in water—it will soon attack by scattering the toxic spikes that grow all over its body.'),
  -- hisuian-qwilfish in scarlet
  (211, 21101, 36, 'It lives just offshore in cold parts of the world. Its poisonous spikes are thicker and shorter than those of other regions’ Qwilfish.'),
  -- scizor in scarlet
  (212, 21200, 36, 'This Pokémon’s pincers, which contain steel, can crush any hard object they get ahold of into bits.'),
  -- heracross in scarlet
  (214, 21400, 36, 'It loves sweet nectar. To keep all the nectar to itself, it hurls rivals away with its prized horn.'),
  -- sneasel in scarlet
  (215, 21500, 36, 'This cunning Pokémon hides under the cover of darkness, waiting to attack its prey.'),
  -- teddiursa in scarlet
  (216, 21600, 36, 'This Pokémon discreetly follows Combee to find their hive. It scoops up big dollops of honey in its palms to eat.'),
  -- ursaring in scarlet
  (217, 21700, 36, 'It usually wears a hardened expression, but when it’s licking up honey—which it loves—the joy it feels will cause it to break into a wide grin.'),
  -- slugma in scarlet
  (218, 21800, 36, 'Its lava body can cool and chip away at times, but a magma bath will heal it right up.'),
  -- magcargo in scarlet
  (219, 21900, 36, 'This Pokémon lives near the craters of volcanoes. It stores fire energy in its shell of cooled and hardened magma.'),
  -- swinub in scarlet
  (220, 22000, 36, 'It searches for food by digging into the ground with its snout. Even frozen ground doesn’t give it any trouble.'),
  -- piloswine in scarlet
  (221, 22100, 36, 'Covered by a shaggy coat, it is resistant to the cold. Its tusks of ice thicken when it snows.'),
  -- delibird in scarlet
  (225, 22500, 36, 'It carries food all day long. There are tales about lost people who were saved by the food it had.'),
  -- skarmory in scarlet
  (227, 22700, 36, 'Its sturdy, heavy-looking iron body is actually thin and light, so it can fly at speeds over 180 mph.'),
  -- houndour in scarlet
  (228, 22800, 36, 'It is smart enough to hunt in packs. It uses a variety of cries for communicating with others.'),
  -- houndoom in scarlet
  (229, 22900, 36, 'If you are burned by the flames it shoots from its mouth, the pain will never go away.'),
  -- kingdra in scarlet
  (230, 23000, 36, 'It sleeps deep on the ocean floor to build its energy. It is said to cause tornadoes as it wakes.'),
  -- phanpy in scarlet
  (231, 23100, 36, 'This Pokémon lives and nests on a riverbank. After playing in the mud, it won’t be able to settle down unless it washes its body.'),
  -- donphan in scarlet
  (232, 23200, 36, 'Donphan is covered in tough hide, so even being hit by a car won’t faze this Pokémon. However, it is extremely susceptible to rain.'),
  -- porygon2 in scarlet
  (233, 23300, 36, 'This artificial Pokémon evolved thanks to cutting- edge science. It sometimes displays behavior that is not in its programming.'),
  -- stantler in scarlet
  (234, 23400, 36, 'This Pokémon apparently used to live in much harsher environments, and thus it once had stronger psychic powers than it does now.'),
  -- smeargle in scarlet
  (235, 23500, 36, 'Once a Smeargle reaches adulthood, it will have other members of its species leave paw prints on its back.'),
  -- tyrogue in scarlet
  (236, 23600, 36, 'This earnest Pokémon battles all sorts of opponents, searching for the fighting style that suits it best.'),
  -- hitmontop in scarlet
  (237, 23700, 36, 'This Pokémon is adept at dance-like kicks. The horn atop its head is made from the same substance that generally forms fur and claws.'),
  -- elekid in scarlet
  (239, 23900, 36, 'It loves violent thunder. The space between its horns flickers bluish white when it is charging energy.'),
  -- magby in scarlet
  (240, 24000, 36, 'Each and every time it inhales and exhales, sparks leak from its mouth and nostrils.'),
  -- blissey in scarlet
  (242, 24200, 36, 'Anyone who takes even one taste of Blissey’s egg becomes unfailingly caring and pleasant to everyone.'),
  -- larvitar in scarlet
  (246, 24600, 36, 'Born deep underground, this Pokémon becomes a pupa after eating enough dirt to make a mountain.'),
  -- pupitar in scarlet
  (247, 24700, 36, 'This pupa flies around wildly by venting with great force the gas pressurized inside its body.'),
  -- tyranitar in scarlet
  (248, 24800, 36, 'Extremely strong, it can change the landscape. It is so insolent that it doesn’t care about others.'),
  -- treecko in scarlet
  (252, 25200, 36, 'The small hooks on the soles of its feet latch on to walls and ceilings, so it will never fall even while hanging upside down.'),
  -- grovyle in scarlet
  (253, 25300, 36, 'Its strongly developed thigh muscles give it astounding agility and jumping performance.'),
  -- sceptile in scarlet
  (254, 25400, 36, 'It agilely flits through the jungle and uses the sharp-edged leaves on its arms to cut down its prey.'),
  -- torchic in scarlet
  (255, 25500, 36, 'Torchic feels toasty warm if you hug it. It has a flame sac inside its belly, and the flames burn continuously as long as Torchic has life in it.'),
  -- combusken in scarlet
  (256, 25600, 36, 'It boosts its concentration by emitting harsh cries. Its kicks have outstanding destructive power.'),
  -- blaziken in scarlet
  (257, 25700, 36, 'When facing a tough foe, it looses flames from its wrists. Its powerful legs let it jump clear over buildings.'),
  -- mudkip in scarlet
  (258, 25800, 36, 'It has the power to crush large boulders into pieces. To rest, it buries itself in mud at the bottom of a river.'),
  -- marshtomp in scarlet
  (259, 25900, 36, 'Living on muddy ground that provides poor footing has served to train its lower body and caused it to develop sturdy legs.'),
  -- swampert in scarlet
  (260, 26000, 36, 'Its arms are hard as rock. With one swing, it can break an enormous boulder into pieces.'),
  -- poochyena in scarlet
  (261, 26100, 36, 'It bares its large fangs and barks vigorously to try to intimidate opponents, but this is actually a manifestation of its cowardly nature.'),
  -- mightyena in scarlet
  (262, 26200, 36, 'They faithfully follow the orders of their leader. Prey targeted by Mightyena is never allowed to escape the outstanding teamwork of its pursuers.'),
  -- lotad in scarlet
  (270, 27000, 36, 'The leaf on its head is naturally dirt repellent and will stay clean even after transporting Pokémon that are covered in mud.'),
  -- lombre in scarlet
  (271, 27100, 36, 'Old folklore in Kitakami tells of a mischievous child who was reborn as a Pokémon.'),
  -- ludicolo in scarlet
  (272, 27200, 36, 'There are structures throughout its whole body that produce energy when hit by sound waves with a cheerful rhythm.'),
  -- seedot in scarlet
  (273, 27300, 36, 'To expand its habitat, it pretends to be a nut so that bird Pokémon will pick it up and carry it far away.'),
  -- nuzleaf in scarlet
  (274, 27400, 36, 'It leads a quiet life deep in the forest. If anything wanders into its territory, Nuzleaf will warn the intruder by sounding its grass flute.'),
  -- shiftry in scarlet
  (275, 27500, 36, 'It is said that when Shiftry flaps its leafy fans atop ancient trees, chilly winds blow and the season rolls into winter.'),
  -- wingull in scarlet
  (278, 27800, 36, 'It soars high in the sky, riding on updrafts like a glider. It carries food tucked in its bill.'),
  -- pelipper in scarlet
  (279, 27900, 36, 'It is a flying transporter that carries small Pokémon in its beak. It bobs on the waves to rest its wings.'),
  -- ralts in scarlet
  (280, 28000, 36, 'The horns on its head provide a strong power that enables it to sense people’s emotions.'),
  -- kirlia in scarlet
  (281, 28100, 36, 'It has a psychic power that enables it to distort the space around it and see into the future.'),
  -- gardevoir in scarlet
  (282, 28200, 36, 'To protect its Trainer, it will expend all its psychic power to create a small black hole.'),
  -- surskit in scarlet
  (283, 28300, 36, 'They usually live on ponds, but after an evening shower, they may appear on puddles in towns.'),
  -- masquerain in scarlet
  (284, 28400, 36, 'It flaps its four wings to hover and fly freely in any direction—to and fro and sideways.'),
  -- shroomish in scarlet
  (285, 28500, 36, 'It prefers damp places. By day it remains still in the forest shade. It releases toxic powder from its head.'),
  -- breloom in scarlet
  (286, 28600, 36, 'It scatters poisonous spores and throws powerful punches while its foe is hampered by inhaled spores.'),
  -- slakoth in scarlet
  (287, 28700, 36, 'It sleeps for 20 hours every day. Making drowsy those that see it is one of its abilities.'),
  -- vigoroth in scarlet
  (288, 28800, 36, 'Its stress level rises if it cannot keep moving constantly. Too much stress makes it feel sick.'),
  -- slaking in scarlet
  (289, 28900, 36, 'It is the world’s most slothful Pokémon. However, it can exert horrifying power by releasing pent-up energy all at once.'),
  -- makuhita in scarlet
  (296, 29600, 36, 'It grows stronger by enduring harsh training. It is a gutsy Pokémon that can withstand any attack.'),
  -- hariyama in scarlet
  (297, 29700, 36, 'It loves challenging others to tests of strength. It has the power to stop a train with a slap.'),
  -- azurill in scarlet
  (298, 29800, 36, 'Its tail bounces like a rubber ball. It flings that tail around to fight opponents bigger than itself.'),
  -- nosepass in scarlet
  (299, 29900, 36, 'The magnet in Nosepass’s nose provides an unerring compass, making this Pokémon an excellent partner for Trainers going on a journey.'),
  -- sableye in scarlet
  (302, 30200, 36, 'It dwells in the darkness of caves. It uses its sharp claws to dig up gems to nourish itself.'),
  -- meditite in scarlet
  (307, 30700, 36, 'It never skips its daily yoga training. It heightens its inner strength through meditation.'),
  -- medicham in scarlet
  (308, 30800, 36, 'Through yoga training, it gained the psychic power to predict its foe’s next move.'),
  -- plusle in scarlet
  (311, 31100, 36, 'It cheers on partners while scattering sparks from its body. It climbs telephone poles to absorb electricity.'),
  -- minun in scarlet
  (312, 31200, 36, 'Exposure to electricity from Minun and Plusle promotes blood circulation and relaxes muscles.'),
  -- volbeat in scarlet
  (313, 31300, 36, 'It lives around clean ponds. At night, its rear lights up. It converses with others by flashing its light.'),
  -- illumise in scarlet
  (314, 31400, 36, 'Illumise uses its sweet scent to guide Volbeat, having them form over 200 patterns in the night sky.'),
  -- gulpin in scarlet
  (316, 31600, 36, 'There is nothing its stomach can’t digest. While it is digesting, vile, overpowering gases are expelled.'),
  -- swalot in scarlet
  (317, 31700, 36, 'It gulps anything that fits in its mouth. Its special enzymes can dissolve anything.'),
  -- numel in scarlet
  (322, 32200, 36, 'Magma of almost 2,200 degrees Fahrenheit courses through its body. When it grows cold, the magma hardens and slows it.'),
  -- camerupt in scarlet
  (323, 32300, 36, 'It lives in the crater of a volcano. It is well known that the humps on its back erupt every 10 years.'),
  -- torkoal in scarlet
  (324, 32400, 36, 'It burns coal inside its shell for energy. It blows out black soot if it is endangered.'),
  -- spoink in scarlet
  (325, 32500, 36, 'Spoink will die if it stops bouncing. The pearl on its head amplifies its psychic powers.'),
  -- grumpig in scarlet
  (326, 32600, 36, 'It can perform odd dance steps to influence foes. Its style of dancing became hugely popular overseas.'),
  -- trapinch in scarlet
  (328, 32800, 36, 'This Pokémon lives in arid deserts. It patiently awaits prey inside its funnel- shaped nest.'),
  -- vibrava in scarlet
  (329, 32900, 36, 'Rather than using its underdeveloped wings for flight, it rubs them together, emitting ultrasonic waves to attack its enemies.'),
  -- flygon in scarlet
  (330, 33000, 36, 'Known as the Desert Spirit, this Pokémon hides in the sandstorms it causes by beating its wings.'),
  -- cacnea in scarlet
  (331, 33100, 36, 'It prefers harsh environments, such as deserts. It can survive for 30 days on water stored in its body.'),
  -- cacturne in scarlet
  (332, 33200, 36, 'Packs of them follow travelers through the desert until the travelers can no longer move.'),
  -- swablu in scarlet
  (333, 33300, 36, 'It constantly grooms its cotton-like wings. It takes a shower to clean itself if it becomes dirty.'),
  -- altaria in scarlet
  (334, 33400, 36, 'If it bonds with a person, it will gently envelop the friend with its soft wings, then hum.'),
  -- zangoose in scarlet
  (335, 33500, 36, 'It’s Seviper’s archrival. To threaten those it encounters, it fans out the claws on its front paws.'),
  -- seviper in scarlet
  (336, 33600, 36, 'It sharpens its swordlike tail on hard rocks. It hides in tall grass and strikes unwary prey with venomous fangs.'),
  -- barboach in scarlet
  (339, 33900, 36, 'Its two whiskers provide a sensitive radar. Even in muddy waters, it can detect its prey’s location.'),
  -- whiscash in scarlet
  (340, 34000, 36, 'It is extremely protective of its territory. If any foe approaches, it attacks using vicious tremors.'),
  -- corphish in scarlet
  (341, 34100, 36, 'It came from overseas. It is a very hardy creature that will quickly proliferate, even in polluted streams.'),
  -- crawdaunt in scarlet
  (342, 34200, 36, 'Loving to battle, this Pokémon pinches all Pokémon that enter its territory with its pincers and throws them out.'),
  -- feebas in scarlet
  (349, 34900, 36, 'This tough Pokémon is perfectly fine even in dirty water. However, due to its ragged, shabby appearance, it isn’t popular.'),
  -- milotic in scarlet
  (350, 35000, 36, 'Its lovely scales are described as rainbow- colored. They change color depending on the viewing angle.'),
  -- shuppet in scarlet
  (353, 35300, 36, 'It loves to feed on feelings like envy and malice. Its upright horn catches the emotions of people.'),
  -- banette in scarlet
  (354, 35400, 36, 'This Pokémon developed from an abandoned doll that amassed a grudge. It is seen in dark alleys.'),
  -- duskull in scarlet
  (355, 35500, 36, 'In the dead of night, these Pokémon wander through towns in search of children, whose vital energy is a Duskull’s favorite food.'),
  -- dusclops in scarlet
  (356, 35600, 36, 'Dusclops is feared because it’s said to pull the soul out of anyone who gazes upon the strange movements of its hands.'),
  -- tropius in scarlet
  (357, 35700, 36, 'It lives in tropical jungles. The bunch of fruit around its neck is delicious. The fruit grows twice a year.'),
  -- chimecho in scarlet
  (358, 35800, 36, 'It uses the sucker on its head to hang from a tree or from eaves. It can produce seven different tones.'),
  -- snorunt in scarlet
  (361, 36100, 36, 'It is said that several Snorunt gather under giant leaves and live together in harmony.'),
  -- glalie in scarlet
  (362, 36200, 36, 'Its prey is instantaneously frozen stiff by the cold air it exhales from its huge mouth. While they’re in that frozen state, it gobbles them up.'),
  -- luvdisc in scarlet
  (370, 37000, 36, 'Its heart-shaped body makes it popular. In some places, you would give a Luvdisc to someone you love.'),
  -- bagon in scarlet
  (371, 37100, 36, 'Its steel-hard head can shatter boulders. It longingly hopes for wings to grow so it can fly.'),
  -- shelgon in scarlet
  (372, 37200, 36, 'The cells within its shell transform with explosive speed, preparing it for evolution.'),
  -- salamence in scarlet
  (373, 37300, 36, 'It flies around on its wings, which have grown in at last. In its happiness, it gushes hot flames, burning up everything it passes over.'),
  -- beldum in scarlet
  (374, 37400, 36, 'The magnetic force generated by its body repels the ground’s natural magnetism, letting it float.'),
  -- metang in scarlet
  (375, 37500, 36, 'It is formed by two Beldum joining together. Its two brains are linked, amplifying its psychic power.'),
  -- metagross in scarlet
  (376, 37600, 36, 'It folds its four legs when flying. Its four brains are said to be superior to a supercomputer.'),
  -- turtwig in scarlet
  (387, 38700, 36, 'The shell on its back is made of soil. If the shell is moist to the touch, Turtwig is very healthy.'),
  -- grotle in scarlet
  (388, 38800, 36, 'Grotle live in the forest. Each is said to have its own secret place for getting clean springwater.'),
  -- torterra in scarlet
  (389, 38900, 36, 'Ancient people imagined that beneath the ground dwelt a gigantic Torterra.'),
  -- chimchar in scarlet
  (390, 39000, 36, 'It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.'),
  -- monferno in scarlet
  (391, 39100, 36, 'It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.'),
  -- infernape in scarlet
  (392, 39200, 36, 'This Pokémon confounds opponents with its speed. It uses all its limbs to fight in its own unique style.'),
  -- piplup in scarlet
  (393, 39300, 36, 'A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.'),
  -- prinplup in scarlet
  (394, 39400, 36, 'It lives a solitary life. Its wings deliver wicked blows that can snap even the thickest of trees in half with a single hit.'),
  -- empoleon in scarlet
  (395, 39500, 36, 'If anyone were to hurt its pride, it would slash them in two with wings that can cleave through an ice floe.'),
  -- starly in scarlet
  (396, 39600, 36, 'They flock around mountains and fields, chasing after bug Pokémon. Their singing is noisy and annoying.'),
  -- staravia in scarlet
  (397, 39700, 36, 'Recognizing their own weakness, they always live in a group. When alone, a Staravia cries noisily.'),
  -- staraptor in scarlet
  (398, 39800, 36, 'When Staravia evolve into Staraptor, they leave the flock to live alone. They have sturdy wings.'),
  -- kricketot in scarlet
  (401, 40100, 36, 'Its legs are short. Whenever it stumbles, its stiff antennae clack with a xylophone-like sound.'),
  -- kricketune in scarlet
  (402, 40200, 36, 'By allowing its cry to resonate in the hollow of its belly, it produces a captivating sound.'),
  -- shinx in scarlet
  (403, 40300, 36, 'The extension and contraction of its muscles generates electricity. It glows when in trouble.'),
  -- luxio in scarlet
  (404, 40400, 36, 'Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.'),
  -- luxray in scarlet
  (405, 40500, 36, 'It can see clearly through walls to track down its prey and seek its lost young.'),
  -- cranidos in scarlet
  (408, 40800, 36, 'It lived in jungles around a hundred million years ago. It used its skillful headbutts to combat Aerodactyl.'),
  -- rampardos in scarlet
  (409, 40900, 36, 'Stifled by a thick skull that can withstand any impact, this Pokémon’s brain never got very big.'),
  -- shieldon in scarlet
  (410, 41000, 36, 'It is outstandingly armored. As a result, it has no particular need to battle with others and can spend its time feeding on grass and berries.'),
  -- bastiodon in scarlet
  (411, 41100, 36, 'While it can guard against any sort of attack from the front, it is left without recourse when attacked from behind.'),
  -- combee in scarlet
  (415, 41500, 36, 'At night, Combee sleep in a group of about a hundred, packed closely together in a lump.'),
  -- vespiquen in scarlet
  (416, 41600, 36, 'It houses its colony in cells in its body and releases various pheromones to make those grubs do its bidding.'),
  -- pachirisu in scarlet
  (417, 41700, 36, 'It’s one of the kinds of Pokémon with electric cheek pouches. It shoots charges from its tail.'),
  -- buizel in scarlet
  (418, 41800, 36, 'It spins its two tails like a screw to propel itself through water. The tails also slice clinging seaweed.'),
  -- floatzel in scarlet
  (419, 41900, 36, 'With its flotation sac inflated, it can carry people on its back. It deflates the sac before it dives.'),
  -- shellos in scarlet
  (422, 42200, 36, 'It used to have a shell on its back long ago. This species is closely related to Pokémon like Shellder.'),
  -- shellos-east in scarlet
  (422, 42201, 36, 'A recently published research paper states that this form of Shellos is gradually decreasing in number.'),
  -- gastrodon in scarlet
  (423, 42300, 36, 'Its whole body is sticky with mucus. In the past, this form of Gastrodon was by far the more numerous one.'),
  -- gastrodon-east in scarlet
  (423, 42301, 36, 'They normally inhabit rocky seashores, but in times of continuous rain, they can sometimes be found in the mountains, far from the sea.'),
  -- ambipom in scarlet
  (424, 42400, 36, 'They live on large trees. They are said to communicate by connecting their tails to those of others.'),
  -- drifloon in scarlet
  (425, 42500, 36, 'It is whispered that any child who mistakes Drifloon for a balloon and holds on to it could wind up missing.'),
  -- drifblim in scarlet
  (426, 42600, 36, 'It can generate and release gas within its body. That’s how it can control the altitude of its drift.'),
  -- mismagius in scarlet
  (429, 42900, 36, 'Its cry sounds like an incantation. It is said the cry may rarely be imbued with happiness-giving power.'),
  -- honchkrow in scarlet
  (430, 43000, 36, 'It is merciless by nature. It is said that it never forgives the mistakes of its Murkrow followers.'),
  -- chingling in scarlet
  (433, 43300, 36, 'There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.'),
  -- stunky in scarlet
  (434, 43400, 36, 'It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.'),
  -- skuntank in scarlet
  (435, 43500, 36, 'It attacks by spraying a horribly smelly fluid from the tip of its tail. Attacks from above confound it.'),
  -- bronzor in scarlet
  (436, 43600, 36, 'Ancient people believed that the pattern on Bronzor’s back contained a mysterious power.'),
  -- bronzong in scarlet
  (437, 43700, 36, 'In ages past, this Pokémon was revered as a bringer of rain. It was found buried in the ground.'),
  -- bonsly in scarlet
  (438, 43800, 36, 'In order to adjust the level of fluids in its body, it exudes water from its eyes. This makes it appear to be crying.'),
  -- happiny in scarlet
  (440, 44000, 36, 'It carries a round, white rock in its belly pouch. If it gets along well with someone, it will sometimes give that person the rock.'),
  -- spiritomb in scarlet
  (442, 44200, 36, 'Its constant mischief and misdeeds resulted in it being bound to an Odd Keystone by a mysterious spell.'),
  -- gible in scarlet
  (443, 44300, 36, 'It skulks in caves, and when prey or an enemy passes by, it leaps out and chomps them. The force of its attack sometimes chips its teeth.'),
  -- gabite in scarlet
  (444, 44400, 36, 'In rare cases, it molts and sheds its scales. Medicine containing its scales as an ingredient will make a weary body feel invigorated.'),
  -- garchomp in scarlet
  (445, 44500, 36, 'It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.'),
  -- munchlax in scarlet
  (446, 44600, 36, 'It needs to consume its own weight in food every day. As far as flavor is concerned, it’s indifferent.'),
  -- riolu in scarlet
  (447, 44700, 36, 'They communicate with one another using their auras. They are able to run all through the night.'),
  -- lucario in scarlet
  (448, 44800, 36, 'It’s said that no foe can remain invisible to Lucario, since it can detect auras—even those of foes it could not otherwise see.'),
  -- hippopotas in scarlet
  (449, 44900, 36, 'It shuts its nostrils tight, then travels through sand as if walking. They form colonies of around 10.'),
  -- hippowdon in scarlet
  (450, 45000, 36, 'It is surprisingly quick to anger. It holds its mouth agape as a display of its strength.'),
  -- croagunk in scarlet
  (453, 45300, 36, 'Inflating its poison sacs, it fills the area with an odd sound and hits flinching opponents with a poison jab.'),
  -- toxicroak in scarlet
  (454, 45400, 36, 'Swaying and dodging the attacks of its foes, it weaves its flexible body in close, then lunges out with its poisonous claws.'),
  -- finneon in scarlet
  (456, 45600, 36, 'The line running down its side can store sunlight. It shines vividly at night.'),
  -- lumineon in scarlet
  (457, 45700, 36, 'With its shining light, it lures its prey close. However, the light also happens to attract ferocious fish Pokémon—its natural predators.'),
  -- snover in scarlet
  (459, 45900, 36, 'During cold seasons, it migrates to the mountain’s lower reaches. It returns to the snow-covered summit in the spring.'),
  -- abomasnow in scarlet
  (460, 46000, 36, 'It lives a quiet life on mountains that are perpetually covered in snow. It hides itself by whipping up blizzards.'),
  -- weavile in scarlet
  (461, 46100, 36, 'Evolution made it even more devious. It communicates by clawing signs in boulders.'),
  -- magnezone in scarlet
  (462, 46200, 36, 'As it zooms through the sky, this Pokémon seems to be receiving signals of unknown origin while transmitting signals of unknown purpose.'),
  -- rhyperior in scarlet
  (464, 46400, 36, 'This Pokémon’s sturdy carapace protects it from volcanic eruptions. It shoots round rocks from the holes in its hands.'),
  -- electivire in scarlet
  (466, 46600, 36, 'When it gets excited, it thumps its chest. With every thud, thunder roars and electric sparks shower all around.'),
  -- magmortar in scarlet
  (467, 46700, 36, 'When shooting 3,600 degree Fahrenheit fireballs from its arms, its body takes on a whitish hue from the intense heat.'),
  -- yanmega in scarlet
  (469, 46900, 36, 'Yanmega’s wingbeats are so powerful that the Pokémon blows down huge trees nearby when it vigorously launches itself into flight.'),
  -- leafeon in scarlet
  (470, 47000, 36, 'When you see Leafeon asleep in a patch of sunshine, you’ll know it is using photosynthesis to produce clean air.'),
  -- glaceon in scarlet
  (471, 47100, 36, 'It can control its body temperature at will. This enables it to freeze the moisture in the atmosphere, creating flurries of diamond dust.'),
  -- gliscor in scarlet
  (472, 47200, 36, 'If it succeeds in catching even a faint breeze properly, it can circle the globe without flapping once.'),
  -- mamoswine in scarlet
  (473, 47300, 36, 'A frozen Mamoswine was dug from ice dating back 10,000 years. This Pokémon has been around a long, long, long time.'),
  -- porygon-z in scarlet
  (474, 47400, 36, 'An additional program was installed to create a more advanced Pokémon, but it was apparently flawed. Porygon-Z moves oddly as a result.'),
  -- gallade in scarlet
  (475, 47500, 36, 'When trying to protect someone, it extends its elbows as if they were swords and fights savagely.'),
  -- probopass in scarlet
  (476, 47600, 36, 'It controls three units called Mini-Noses using magnetic force. With them, it can attack a foe from three directions.'),
  -- dusknoir in scarlet
  (477, 47700, 36, 'It is said to take lost spirits into its pliant body and take them to the afterlife.'),
  -- froslass in scarlet
  (478, 47800, 36, 'When it finds humans or Pokémon it likes, it freezes them and takes them to its chilly den, where they become decorations.'),
  -- rotom in scarlet
  (479, 47900, 36, 'Its electricity-like body can enter some kinds of machines and take control in order to make mischief.'),
  -- rotom-heat in scarlet
  (479, 47901, 36, 'If the convection microwave oven is not working properly, then the Rotom inhabiting it will become lethargic.'),
  -- rotom-wash in scarlet
  (479, 47902, 36, 'This Rotom has entered a washing machine. It nods with satisfaction after it floods the surrounding area.'),
  -- rotom-frost in scarlet
  (479, 47903, 36, 'This Rotom has entered a refrigerator. It leaps around gleefully after it uses cold air to freeze the area around it.'),
  -- rotom-fan in scarlet
  (479, 47904, 36, 'This Rotom has entered an electric fan. It smirks with satisfaction over a prank well pulled after it blows away everything around it.'),
  -- rotom-mow in scarlet
  (479, 47905, 36, 'The lawn mower is one of the household appliances that led to the development of the Rotom Dex.'),
  -- snivy in scarlet
  (495, 49500, 36, 'The leaf on Snivy’s tail generates energy when exposed to sunlight, making Snivy swifter and adding an edge to its moves.'),
  -- servine in scarlet
  (496, 49600, 36, 'It runs low to the ground, weaving through the grass, then mercilessly pummels its target by whipping them with its vines.'),
  -- serperior in scarlet
  (497, 49700, 36, 'It generates energy from sunlight, then amplifies that energy dozens of times within its long body.'),
  -- tepig in scarlet
  (498, 49800, 36, 'It’s more nimble than it looks, and it uses its speed to confound its enemies. It rapidly launches fireballs from both nostrils.'),
  -- pignite in scarlet
  (499, 49900, 36, 'When Pignite enters battle, its body temperature rapidly soars until Pignite itself is engulfed by a scorching fireball.'),
  -- emboar in scarlet
  (500, 50000, 36, 'The flames blazing deep inside Emboar’s chest erupt vigorously from its chin, forming a beard of fire.'),
  -- oshawott in scarlet
  (501, 50100, 36, 'It wields the scalchop on its stomach like a knife, blocking the moves of its enemies before slashing back at them in swift retaliation.'),
  -- dewott in scarlet
  (502, 50200, 36, 'It’s said that people modeled swordplay after the way Dewott’s movements flow like water while it’s wielding its two scalchops.'),
  -- samurott in scarlet
  (503, 50300, 36, 'A master of a sword-drawing art called iaijutsu, Samurott settles its battles with a single swing of either large sword sheathed in its foreleg armor.'),
  -- blitzle in scarlet
  (522, 52200, 36, 'Its heartbeat generates electricity. When Blitzle is surprised and its heart rate goes up, the voltage of its electricity also rises.'),
  -- zebstrika in scarlet
  (523, 52300, 36, 'This Pokémon is aggressive and has a volatile disposition. When agitated, it will illuminate its mane in yellow and fire off bolts of electricity.'),
  -- drilbur in scarlet
  (529, 52900, 36, 'It can dig through the ground at a speed of 30 mph. It could give a car running aboveground a good race.'),
  -- excadrill in scarlet
  (530, 53000, 36, 'Forming a drill with its steel claws and head, it can bore through a steel plate, no matter how thick it is.'),
  -- timburr in scarlet
  (532, 53200, 36, 'Always carrying squared logs, they help out with construction. As they grow, they carry bigger logs.'),
  -- gurdurr in scarlet
  (533, 53300, 36, 'They strengthen their bodies by carrying steel beams. They show off their big muscles to their friends.'),
  -- conkeldurr in scarlet
  (534, 53400, 36, 'It is thought that Conkeldurr taught humans how to make concrete more than 2,000 years ago.'),
  -- sewaddle in scarlet
  (540, 54000, 36, 'Sewaddle chews on leaves to make its clothing. It’s trying to mimic the leafy garment Leavanny first dressed it in.'),
  -- swadloon in scarlet
  (541, 54100, 36, 'Swadloon lives quietly at the feet of trees. It prefers eating fallen leaves that have grown soft rather than fresh ones.'),
  -- leavanny in scarlet
  (542, 54200, 36, 'This gentle Pokémon has strong protective instincts. The leaves on its arms are sharp enough to slice a thick tree in half with one stroke.'),
  -- cottonee in scarlet
  (546, 54600, 36, 'Pillows and beds stuffed with cotton exhaled by Cottonee are soft and puffy, light and airy- altogether top quality.'),
  -- whimsicott in scarlet
  (547, 54700, 36, 'Like the wind, it can slip through any gap, no matter how small. It leaves balls of white fluff behind.'),
  -- petilil in scarlet
  (548, 54800, 36, 'The leaves on its head grow right back even if they fall out. These bitter leaves refresh those who eat them.'),
  -- lilligant in scarlet
  (549, 54900, 36, 'The fragrance of the garland on its head has a relaxing effect, but taking care of it is very difficult.'),
  -- basculin in scarlet
  (550, 55000, 36, 'Its temperament is vicious and aggressive. This Pokémon is also full of vitality and can multiply rapidly before anyone notices.'),
  -- basculin-blue-striped in scarlet
  (550, 55001, 36, 'These Pokémon form schools with others of the same color. The greatest foe of a school of blue Basculin is a school of red Basculin.'),
  -- basculin-white-striped in scarlet
  (550, 55002, 36, 'They live in frigid seas, forming schools and sharing food among themselves. When the time comes, they return to the river they were born in.'),
  -- sandile in scarlet
  (551, 55100, 36, 'It submerges itself in sand and moves as if swimming. This wise behavior keeps its enemies from finding it and maintains its temperature.'),
  -- krokorok in scarlet
  (552, 55200, 36, 'Protected by thin membranes, their eyes can see even in the dead of night. They live in groups of a few individuals.'),
  -- krookodile in scarlet
  (553, 55300, 36, 'After clamping down with its powerful jaws, it twists its body around to rip its prey in half.'),
  -- scraggy in scarlet
  (559, 55900, 36, 'It stretches its saggy skin up to its neck to protect itself. Among Scraggy, individuals with saggier skin apparently garner more respect.'),
  -- scrafty in scarlet
  (560, 56000, 36, 'Groups of them beat up anything that enters their territory. Each can spit acidic liquid from its mouth.'),
  -- zorua in scarlet
  (570, 57000, 36, 'It changes into the forms of others to surprise them. Apparently, it often transforms into a silent child.'),
  -- zoroark in scarlet
  (571, 57100, 36, 'Stories say those who tried to catch Zoroark were trapped in an illusion and punished.'),
  -- minccino in scarlet
  (572, 57200, 36, 'When its tail has gotten dirty from self-cleaning or from cleaning its nest, Minccino spends a whole day washing its tail in clean springwater.'),
  -- cinccino in scarlet
  (573, 57300, 36, 'Their white fur is coated in a special oil that makes it easy for them to deflect attacks.'),
  -- gothita in scarlet
  (574, 57400, 36, 'This Pokémon is normally very innocent. When it is staring at something invisible, it is unblinking and utterly silent.'),
  -- gothorita in scarlet
  (575, 57500, 36, 'This Pokémon will hypnotize children to put them to sleep before carrying them away. Be wary of nights when the starlight is bright.'),
  -- gothitelle in scarlet
  (576, 57600, 36, 'Gothitelle unleashes psychic energy and shows opponents dreams of the universe’s end. These dreams are apparently ethereal and beautiful.'),
  -- solosis in scarlet
  (577, 57700, 36, 'Because their bodies are enveloped in a special liquid, they can survive in any environment.'),
  -- duosion in scarlet
  (578, 57800, 36, 'Since they have two divided brains, at times they suddenly try to take two different actions at once.'),
  -- reuniclus in scarlet
  (579, 57900, 36, 'Their arms are made of a special liquid. They use psychic power to control these arms and crush boulders.'),
  -- ducklett in scarlet
  (580, 58000, 36, 'It’s not very good at flying yet. It watches the dances of its Swanna parents to learn how to move its wings.'),
  -- swanna in scarlet
  (581, 58100, 36, 'Centered around its leader, the flock dances in perfect sync to strengthen its unity.'),
  -- deerling in scarlet
  (585, 58500, 36, 'Deerling have different scents depending on the season. In early spring, these Pokémon give off a delicate, sweet, and calming scent.'),
  -- deerling-summer in scarlet
  (585, 58501, 36, 'To prevent Deerling from entering their fields, many farmers will have several Lycanroc stand guard, as they are the natural enemy of Deerling.'),
  -- deerling-autumn in scarlet
  (585, 58502, 36, 'These Pokémon are not shy—they will behave as they please, even in front of people. If you feed one of them, it will quickly take a liking to you.'),
  -- deerling-winter in scarlet
  (585, 58503, 36, 'Deerling’s scent changes with the seasons, but when the Pokémon is in its Winter Form, it has hardly any scent at all.'),
  -- sawsbuck in scarlet
  (586, 58600, 36, 'It seems that a Sawsbuck with many flowers on its antlers will grow at a slightly slower pace because the flowers absorb the Pokémon’s nutrients.'),
  -- sawsbuck-summer in scarlet
  (586, 58601, 36, 'There are many Sawsbuck enthusiasts. The thicker and larger the branches and leaves on its antlers, the more majestic the Sawsbuck is thought to be.'),
  -- sawsbuck-autumn in scarlet
  (586, 58602, 36, 'There are many Sawsbuck enthusiasts. The darker the red of the foliage that hangs from its antlers, the more stylish the Sawsbuck is thought to be.'),
  -- sawsbuck-winter in scarlet
  (586, 58603, 36, 'It’s said that Sawsbuck are calm and easy to tame during the season when they take on this form, so it’s the perfect time to make one your partner.'),
  -- foongus in scarlet
  (590, 59000, 36, 'There is a theory that the developer of the modern-day Poké Ball really liked Foongus, but this has not been confirmed.'),
  -- amoonguss in scarlet
  (591, 59100, 36, 'Be wary of the poisonous spores it releases. Mushrooms resembling Amoonguss’s caps will grow out of anywhere the spores touch.'),
  -- alomomola in scarlet
  (594, 59400, 36, 'It gently holds injured and weak Pokémon in its fins. Its special membrane heals their wounds.'),
  -- joltik in scarlet
  (595, 59500, 36, 'Joltik that live in cities have learned a technique for sucking electricity from the outlets in houses.'),
  -- galvantula in scarlet
  (596, 59600, 36, 'They employ an electrically charged web to trap their prey. While it is immobilized by shock, they leisurely consume it.'),
  -- tynamo in scarlet
  (602, 60200, 36, 'While one alone doesn’t have much power, a chain of many Tynamo can be as powerful as lightning.'),
  -- eelektrik in scarlet
  (603, 60300, 36, 'They coil around foes and shock them with electricity-generating organs that seem simply to be circular patterns.'),
  -- eelektross in scarlet
  (604, 60400, 36, 'They crawl out of the ocean using their arms. They will attack prey on shore and immediately drag it into the ocean.'),
  -- litwick in scarlet
  (607, 60700, 36, 'Its flame is usually out, but it starts shining when Litwick absorbs life-force from people or Pokémon.'),
  -- lampent in scarlet
  (608, 60800, 36, 'Lampent appears at the moment of death and promptly absorbs the spirit as it leaves the body.'),
  -- chandelure in scarlet
  (609, 60900, 36, 'The spirits burned up in its ominous flame lose their way and wander this world forever.'),
  -- axew in scarlet
  (610, 61000, 36, 'This Pokémon lives in nests that are made in the ground. People in ancient times used its tusks as cooking knives.'),
  -- fraxure in scarlet
  (611, 61100, 36, 'Because its tusks don’t grow back once they break, this Pokémon apparently won’t use them unless truly necessary.'),
  -- haxorus in scarlet
  (612, 61200, 36, 'This Pokémon nests in caves and abandoned mines. It is docile, but it will become incredibly angry if its tusks are touched, so beware.'),
  -- cubchoo in scarlet
  (613, 61300, 36, 'Many of this species can be found along the shorelines of cold regions. If a Cubchoo lacks dangling snot, there’s a chance it is sick.'),
  -- beartic in scarlet
  (614, 61400, 36, 'It is a ferocious, carnivorous Pokémon. Once it captures its prey, it will breathe cold air onto the prey to freeze and preserve it.'),
  -- cryogonal in scarlet
  (615, 61500, 36, 'Cryogonal appear during cold seasons. It is said that people and Pokémon who die on snowy mountains are reborn into these Pokémon.'),
  -- mienfoo in scarlet
  (619, 61900, 36, 'In fights, they dominate with onslaughts of flowing, continuous attacks. With their sharp claws, they cut enemies.'),
  -- mienshao in scarlet
  (620, 62000, 36, 'When Mienshao lets out a bizarre wail, you’re in danger. A flurry of kicks and chops too fast to see is about to be unleashed!'),
  -- golett in scarlet
  (622, 62200, 36, 'These Pokémon are thought to have been created by the science of an ancient and mysterious civilization.'),
  -- golurk in scarlet
  (623, 62300, 36, 'When the seal on its chest is removed, it rages indiscriminately. During such rampages, it can turn a whole town into a mountain of rubble.'),
  -- pawniard in scarlet
  (624, 62400, 36, 'Pawniard will fearlessly challenge even powerful foes. In a pinch, it will cling to opponents and pierce them with the blades all over its body.'),
  -- bisharp in scarlet
  (625, 62500, 36, 'This Pokémon commands a group of several Pawniard. Groups that are defeated in territorial disputes are absorbed by the winning side.'),
  -- rufflet in scarlet
  (627, 62700, 36, 'They pick fights indiscriminately. They grow stronger and more powerful each time they faint or are injured.'),
  -- braviary in scarlet
  (628, 62800, 36, 'The more scars they have, the more respect these brave soldiers of the sky get from their peers.'),
  -- vullaby in scarlet
  (629, 62900, 36, 'They tend to guard their posteriors with suitable bones they have found. They pursue weak Pokémon.'),
  -- mandibuzz in scarlet
  (630, 63000, 36, 'It’s always searching for food for Vullaby. When it finds a weak Pokémon, Mandibuzz swoops it right off to its nest.'),
  -- deino in scarlet
  (633, 63300, 36, 'It can’t see, so its first approach to examining things is to bite them. You will be covered in wounds until a Deino warms up to you.'),
  -- zweilous in scarlet
  (634, 63400, 36, 'The two heads do not get along at all. If you don’t give each head the same amount of attention, they’ll begin fighting out of jealousy.'),
  -- hydreigon in scarlet
  (635, 63500, 36, 'Only the central head has a brain. It is very intelligent, but it thinks only of destruction.'),
  -- larvesta in scarlet
  (636, 63600, 36, 'This Pokémon was called the Larva That Stole the Sun. The fire Larvesta spouts from its horns can cut right through a sheet of iron.'),
  -- volcarona in scarlet
  (637, 63700, 36, 'Its burning body causes it to be unpopular in hot parts of the world, but in cold ones, Volcarona is revered as an embodiment of the sun.'),
  -- chespin in scarlet
  (650, 65000, 36, 'When Chespin tenses up just before landing a headbutt, the spikes on its head sharpen to points, piercing the enemy’s body on contact.'),
  -- quilladin in scarlet
  (651, 65100, 36, 'It’s protected by a sturdy shell. The shell is also very heavy, which naturally strengthens Quilladin’s lower body.'),
  -- chesnaught in scarlet
  (652, 65200, 36, 'When its allies are in trouble, Chesnaught creates a shield with its arms and uses its own body to block attacks.'),
  -- fennekin in scarlet
  (653, 65300, 36, 'This Pokémon gets worked up easily. Its body can also overheat, so it uses its ears to dissipate the heat and calm down.'),
  -- braixen in scarlet
  (654, 65400, 36, 'It ignites the twig from its tail and waves the twig around to signal its allies. To indicate danger, it draws circles in the air with the twig’s flame.'),
  -- delphox in scarlet
  (655, 65500, 36, 'It leaves burn marks in the ground with the flame at the tip of its wand. Long ago, people used the shapes of these burn marks for divination.'),
  -- froakie in scarlet
  (656, 65600, 36, 'Its happy-go-lucky look is an act intended to fool its enemies. It will suddenly drop the facade and overwhelm its foes with its blinding speed.'),
  -- frogadier in scarlet
  (657, 65700, 36, 'It excels at devising battle strategies that make use of the terrain, and it never misses its mark when throwing bubble-covered pebbles.'),
  -- greninja in scarlet
  (658, 65800, 36, 'The movement of air against the long tongue Greninja keeps wrapped around its neck allows it to sense enemies it can’t see.'),
  -- fletchling in scarlet
  (661, 66100, 36, 'This Pokémon is normally calm, but once it enters battle, its hormonal balance changes and it becomes aggressive.'),
  -- fletchinder in scarlet
  (662, 66200, 36, 'Fletchinder scatters embers in tall grass where bug Pokémon might be hiding and then catches them as they come leaping out.'),
  -- talonflame in scarlet
  (663, 66300, 36, 'It has top-notch flying capabilities. It flies around easily, even while carrying prey that weighs more than 220 lbs.'),
  -- scatterbug in scarlet
  (664, 66400, 36, 'Any poison this Pokémon takes in is converted into a black powder and secreted. That’s why Scatterbug can eat poisonous leaves and roots.'),
  -- spewpa in scarlet
  (665, 66500, 36, 'If Rufflet attacks this Pokémon by pecking at it, it will retaliate with its sharp fur and poisonous black powder.'),
  -- vivillon in scarlet
  (666, 66600, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands where flowers bloom.'),
  -- vivillon-icy-snow in scarlet
  (666, 66601, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from frigid lands.'),
  -- vivillon-polar in scarlet
  (666, 66602, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from snowy lands.'),
  -- vivillon-tundra in scarlet
  (666, 66603, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of severe cold.'),
  -- vivillon-continental in scarlet
  (666, 66604, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of vast space.'),
  -- vivillon-garden in scarlet
  (666, 66605, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from verdant lands.'),
  -- vivillon-elegant in scarlet
  (666, 66606, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with distinct seasons.'),
  -- vivillon-modern in scarlet
  (666, 66607, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from sun-drenched lands.'),
  -- vivillon-marine in scarlet
  (666, 66608, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with ocean breezes.'),
  -- vivillon-archipelago in scarlet
  (666, 66609, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from places with many islands.'),
  -- vivillon-high-plains in scarlet
  (666, 66610, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with little rain.'),
  -- vivillon-sandstorm in scarlet
  (666, 66611, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from parched lands.'),
  -- vivillon-river in scarlet
  (666, 66612, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands where large rivers flow.'),
  -- vivillon-monsoon in scarlet
  (666, 66613, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with intense rainfall.'),
  -- vivillon-savanna in scarlet
  (666, 66614, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with a tropical climate.'),
  -- vivillon-sun in scarlet
  (666, 66615, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands bathed in light.'),
  -- vivillon-ocean in scarlet
  (666, 66616, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of perpetual summer.'),
  -- vivillon-jungle in scarlet
  (666, 66617, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of tropical rain forests.'),
  -- vivillon-fancy in scarlet
  (666, 66618, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from a mysterious land.'),
  -- vivillon-poke-ball in scarlet
  (666, 66619, 36, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from a special land.'),
  -- litleo in scarlet
  (667, 66700, 36, 'When Litleo are young, female Pyroar will teach them how to hunt. Once the Litleo mature, they will leave the pride and set out on their own.'),
  -- pyroar in scarlet
  (668, 66800, 36, 'The females of a pride work together to bring down prey. It’s thanks to them that their pride doesn’t starve.'),
  -- flabebe in scarlet
  (669, 66900, 36, 'This Pokémon can draw forth the power hidden within blooming wild flowers. It is particularly fond of red flowers.'),
  -- flabebe-yellow in scarlet
  (669, 66901, 36, 'This Flabébé rides a yellow flower. The Pokémon is defenseless and vulnerable before it has found and received power from a flower.'),
  -- flabebe-orange in scarlet
  (669, 66902, 36, 'This Flabébé rides an orange flower. On its head, it wears a crown of pollen that has healing properties.'),
  -- flabebe-blue in scarlet
  (669, 66903, 36, 'Once it finds a flower it likes, this Pokémon will spend the rest of its life taking care of its flower. This Flabébé rides a blue flower.'),
  -- flabebe-white in scarlet
  (669, 66904, 36, 'This Flabébé rides a white flower. The wind blows this Pokémon around as it drifts in search of flower gardens.'),
  -- floette in scarlet
  (670, 67000, 36, 'This Pokémon draws forth what power is left in withered flowers to make them healthy again. It holds a red flower.'),
  -- floette-yellow in scarlet
  (670, 67003, 36, 'This Pokémon can draw forth the power hidden within yellow flowers. This power then becomes the moves Floette uses to protect itself.'),
  -- floette-orange in scarlet
  (670, 67004, 36, 'This Pokémon can draw forth the most power when in sync with orange flowers, compared to flowers of other colors.'),
  -- floette-blue in scarlet
  (670, 67005, 36, 'Whenever this Pokémon finds flowering plants that are withering, it will bring them back to its territory and care for them until they are healthy.'),
  -- floette-white in scarlet
  (670, 67006, 36, 'Floette that are fond of white flowers can also easily sync with flowers of other colors.'),
  -- florges in scarlet
  (671, 67100, 36, 'This Pokémon creates an impressive flower garden in its territory. It draws forth the power of the red flowers around its neck.'),
  -- florges-yellow in scarlet
  (671, 67101, 36, 'It is said that there was once a Florges that protected the garden of a castle for over 300 years.'),
  -- florges-orange in scarlet
  (671, 67102, 36, 'Its orange flowers fire off powerful beams, attacking as if they were a battery of artillery.'),
  -- florges-blue in scarlet
  (671, 67103, 36, 'Though usually compassionate, Florges will hunt down anyone who vandalizes its flower garden, showing no mercy even if they beg for their lives.'),
  -- florges-white in scarlet
  (671, 67104, 36, 'A flower garden made by a white-flowered Florges will be beautifully decorated with flowering plants of many different colors.'),
  -- skiddo in scarlet
  (672, 67200, 36, 'Until recently, people living in the mountains would ride on the backs of these Pokémon to traverse the mountain paths.'),
  -- gogoat in scarlet
  (673, 67300, 36, 'It can sense the feelings of others by touching them with its horns. This species has assisted people with their work since 5,000 years ago.'),
  -- espurr in scarlet
  (677, 67700, 36, 'It keeps its ears covered to prevent the intense psychic power in its body from escaping, but it falls unconscious if this power builds too much.'),
  -- meowstic in scarlet
  (678, 67800, 36, 'Though it has enough psychic power to blast away any opponent, Meowstic prefers to support its allies rather than attack.'),
  -- meowstic-female in scarlet
  (678, 67801, 36, 'Female Meowstic are more aggressive than males. Their expression remains blank even while they’re wielding immense psychic power.'),
  -- inkay in scarlet
  (686, 68600, 36, 'It protects itself from tough foes by flashing its luminescent spots to discourage them.'),
  -- malamar in scarlet
  (687, 68700, 36, 'Its hypnotic powers are dangerously strong. Anyone who falls under Malamar’s control loses their memories surrounding the event.'),
  -- skrelp in scarlet
  (690, 69000, 36, 'Skrelp evades its enemies by hiding amid drifting seaweed. It eats rotten seaweed to create its poison.'),
  -- dragalge in scarlet
  (691, 69100, 36, 'Using a liquid poison, Dragalge indiscriminately attacks anything that wanders into its territory. This poison can corrode the undersides of boats.'),
  -- clauncher in scarlet
  (692, 69200, 36, 'This Pokémon launches water by detonating gas inside its right claw. It snipes flying Pokémon.'),
  -- clawitzer in scarlet
  (693, 69300, 36, 'Clawitzer can move through the water at a speed of 60 knots by using gas inside its body to expel water from the back of its claw.'),
  -- sylveon in scarlet
  (700, 70000, 36, 'This Pokémon uses its ribbonlike feelers to send a soothing aura into its opponents, erasing their hostility.'),
  -- hawlucha in scarlet
  (701, 70100, 36, 'Its elegant finishing moves—performed by nimbly leaping around using its wings—are polished in the forest where it was born and raised.'),
  -- dedenne in scarlet
  (702, 70200, 36, 'It’s small and its electricity-generating organ is not fully developed, so it uses its tail to absorb electricity from people’s homes and charge itself.'),
  -- carbink in scarlet
  (703, 70300, 36, 'It has slept underground for hundreds of millions of years since its birth. It’s occasionally found during the excavation of caves.'),
  -- goomy in scarlet
  (704, 70400, 36, 'Most of a Goomy’s body is water. A membrane covers the whole Pokémon to prevent it from shriveling up in dry weather.'),
  -- sliggoo in scarlet
  (705, 70500, 36, 'The swirly protrusion on its back is filled with all its vital organs, such as its brain and heart.'),
  -- goodra in scarlet
  (706, 70600, 36, 'It loves the rain. This mellow Pokémon can be seen walking around on the plains and in the mountains on rainy days.'),
  -- klefki in scarlet
  (707, 70700, 36, 'Once it absorbs a key’s metal ions, it discards the key without a second thought. However, it will hang on to keys it favors for decades.'),
  -- phantump in scarlet
  (708, 70800, 36, 'Legend tells that its green leaves can cure any illness. When plucked, however, the leaves will instantly wither away.'),
  -- trevenant in scarlet
  (709, 70900, 36, 'Using its roots, Trevenant connects itself to trees and monitors every corner of its forest. It uses curses to drive intruders away.'),
  -- bergmite in scarlet
  (712, 71200, 36, 'They live in mountainous regions of frigid cold. On rare occasions, they ride on the back of an Avalugg to cross seas and move to new habitats.'),
  -- avalugg in scarlet
  (713, 71300, 36, 'As Avalugg walks along with Bergmite on its back, it comes across pods of Cetitan. It lets them pass to avoid conflict.'),
  -- noibat in scarlet
  (714, 71400, 36, 'This Pokémon emits ultrasonic waves from its large ears to search for fruit to eat. It mistakes Applin for its food.'),
  -- noivern in scarlet
  (715, 71500, 36, 'Ultrasonic waves emitted by a Noivern can pulverize a large boulder. This Pokémon has a cruel disposition.'),
  -- rowlet in scarlet
  (722, 72200, 36, 'Silently it glides, streaking toward its targets to get close to them. Before they even notice it, it begins to pelt them with vicious kicks.'),
  -- dartrix in scarlet
  (723, 72300, 36, 'This narcissistic Pokémon is a clean freak. If you don’t groom it diligently, it may stop listening to you.'),
  -- decidueye in scarlet
  (724, 72400, 36, 'It cunningly conceals arrow quills in its wings. It launches these quills with such precision that they can pierce a pebble at over a hundred yards.'),
  -- litten in scarlet
  (725, 72500, 36, 'If you try too hard to get close to it, it won’t open up to you. Even if you do grow close, giving it too much affection is still a no-no.'),
  -- torracat in scarlet
  (726, 72600, 36, 'At its throat, it bears a bell of fire. The bell rings brightly whenever fire spews out.'),
  -- incineroar in scarlet
  (727, 72700, 36, 'When its fighting spirit is set alight, the flames around its waist become especially intense.'),
  -- popplio in scarlet
  (728, 72800, 36, 'This Pokémon can control balloons made of water. It practices diligently so it can learn to make big balloons.'),
  -- brionne in scarlet
  (729, 72900, 36, 'A skillful dancer, it creates a sequence of water balloons as it dances, then briskly bombards its enemies.'),
  -- primarina in scarlet
  (730, 73000, 36, 'To Primarina, every battle is a stage. It takes down its prey with beautiful singing and dancing.'),
  -- pikipek in scarlet
  (731, 73100, 36, 'Using its beak to strike 16 times per second, it opens holes in even the hardest of trees.'),
  -- trumbeak in scarlet
  (732, 73200, 36, 'It flies around using a hundred different cries in various ways to declare its territory to others.'),
  -- toucannon in scarlet
  (733, 73300, 36, 'The compressed gas in Toucannon’s beak launches seeds with such force that they can shatter large boulders.'),
  -- yungoos in scarlet
  (734, 73400, 36, 'Its stomach fills most of its torso. It wanders the same path every day, searching for fresh food.'),
  -- gumshoos in scarlet
  (735, 73500, 36, 'Once it finds signs of prey, it will patiently stake out the location, waiting until the sun goes down.'),
  -- grubbin in scarlet
  (736, 73600, 36, 'Grubbin normally live underground, but if they get unearthed by Hoothoot, they may be found gathered around electric Pokémon.'),
  -- charjabug in scarlet
  (737, 73700, 36, 'Protected by a sturdy shell, Charjabug eats large quantities of fresh and decomposing leaf litter in order to evolve.'),
  -- vikavolt in scarlet
  (738, 73800, 36, 'Displaying exceptional mobility, it weaves between trees and shoots down bird Pokémon with its electromagnetic beams.'),
  -- crabrawler in scarlet
  (739, 73900, 36, 'This Pokémon punches trees and eats the berries that drop down, training itself and getting food at the same time.'),
  -- crabominable in scarlet
  (740, 74000, 36, 'The detached pincers of these Pokémon are delicious. Some Trainers bring Lechonk into the mountains just to search for them.'),
  -- oricorio in scarlet
  (741, 74100, 36, 'This Pokémon is incredibly popular, possibly because its passionate dancing is a great match with the temperament of Paldean people.'),
  -- oricorio-pom-pom in scarlet
  (741, 74101, 36, 'This form of Oricorio has sipped yellow nectar. It uses nimble steps to approach opponents, then knocks them out with electric punches.'),
  -- oricorio-pau in scarlet
  (741, 74102, 36, 'The airy dance of these Oricorio is popular as a means of maintaining good health, but the Oricorio themselves are hard to find in Paldea.'),
  -- oricorio-sensu in scarlet
  (741, 74103, 36, 'This form of Oricorio has sipped purple nectar. It uses ethereal dance steps to call forth the spirits of the dead.'),
  -- cutiefly in scarlet
  (742, 74200, 36, 'When it senses the auras of people or Pokémon who are having fun, it will draw close and give them a painful poke with its long proboscis.'),
  -- ribombee in scarlet
  (743, 74300, 36, 'Ribombee can sense when people or Pokémon are feeling down, and it will cheer them up with handmade pollen puffs.'),
  -- rockruff in scarlet
  (744, 74400, 36, 'This Pokémon is very friendly when it’s young. Its disposition becomes vicious once it matures, but it never forgets the kindness of its master.'),
  -- lycanroc in scarlet
  (745, 74500, 36, 'Lycanroc attacks its prey with its sharp claws and fangs. It loyally obeys the instructions of a Trainer it trusts.'),
  -- lycanroc-midnight in scarlet
  (745, 74501, 36, 'This Pokémon uses its rocky mane to slash any who approach. It will even disobey its Trainer if it dislikes the orders it was given.'),
  -- lycanroc-dusk in scarlet
  (745, 74502, 36, 'Normally this Pokémon doesn’t even bark, but once it enters battle, it will relentlessly drive the opponent into a corner.'),
  -- mareanie in scarlet
  (747, 74700, 36, 'This Pokémon wanders the seaside looking for food. It often gets electric shocks from broken Pincurchin spines that it tries to eat.'),
  -- toxapex in scarlet
  (748, 74800, 36, 'This Pokémon lives within a dome made by its own legs. Toxapex monitors its surroundings by sensing the flow of the tide through its spikes.'),
  -- mudbray in scarlet
  (749, 74900, 36, 'This Pokémon covers itself in mud that it has regurgitated. The mud won’t dry out even if it’s exposed to the sun for a long time.'),
  -- mudsdale in scarlet
  (750, 75000, 36, 'This Pokémon has been treasured not just for its physical labor but also because it produces high-quality mud used for making pottery.'),
  -- dewpider in scarlet
  (751, 75100, 36, 'Dewpider uses sticky threads to create the water bubble that covers its head, so the bubble very rarely bursts.'),
  -- araquanid in scarlet
  (752, 75200, 36, 'A caring Pokémon, Araquanid carries Dewpider around inside its water bubble to protect them as it walks. It protects its food in its bubble too.'),
  -- fomantis in scarlet
  (753, 75300, 36, 'Fomantis hates having its naps interrupted. It fires off beams using energy it gathers by bathing in the sun.'),
  -- lurantis in scarlet
  (754, 75400, 36, 'By masquerading as a bug Pokémon, it lowers the guard of actual bug Pokémon lured in by a scent of sweet flowers. Its sickles bring them down.'),
  -- salandit in scarlet
  (757, 75700, 36, 'It taunts its prey and lures them into narrow, rocky areas where it then sprays them with toxic gas to make them dizzy and take them down.'),
  -- salazzle in scarlet
  (758, 75800, 36, 'Salazzle makes its opponents light-headed with poisonous gas, then captivates them with alluring movements to turn them into loyal servants.'),
  -- bounsweet in scarlet
  (761, 76100, 36, 'Its sweat is sweet, like syrup made from boiled- down fruit. Because of this, Bounsweet was highly valued in the past, when sweeteners were scarce.'),
  -- steenee in scarlet
  (762, 76200, 36, 'Steenee spreads a sweet scent that makes others feel invigorated. This same scent is popular for antiperspirants.'),
  -- tsareena in scarlet
  (763, 76300, 36, 'This Pokémon is proud and aggressive. However, it is said that a Tsareena will instantly become calm if someone touches the crown on its calyx.'),
  -- comfey in scarlet
  (764, 76400, 36, 'It uses its vine to pick flowers. The flowers that Comfey attaches to itself develop healing properties.'),
  -- oranguru in scarlet
  (765, 76500, 36, 'People used to mistake Oranguru for a human when they saw it issue command after command to the other Pokémon of the forest.'),
  -- passimian in scarlet
  (766, 76600, 36, 'This Pokémon battles by throwing hard berries. It won’t obey a Trainer who throws Poké Balls without skill.'),
  -- sandygast in scarlet
  (769, 76900, 36, 'If it loses its shovel, it will stick something else— like a branch—in its head to make do until it finds another shovel.'),
  -- palossand in scarlet
  (770, 77000, 36, 'The terrifying Palossand drags smaller Pokémon into its sandy body. Once its victims are trapped, it drains them of their vitality whenever it pleases.'),
  -- minior in scarlet
  (774, 77400, 36, 'This Pokémon is born in the ozone layer. It falls to the ground once the outer shell enclosing its core grows heavy.'),
  -- minior-core in scarlet
  (774, 77401, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- minior-orange in scarlet
  (774, 77402, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- minior-yellow in scarlet
  (774, 77403, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- minior-green in scarlet
  (774, 77404, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- minior-blue in scarlet
  (774, 77405, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- minior-indigo in scarlet
  (774, 77406, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- minior-violet in scarlet
  (774, 77407, 36, 'Minior that fall to the ground try to return to space, but their wish will not come true—all they can do is fade away.'),
  -- komala in scarlet
  (775, 77500, 36, 'Komala spends its entire life sleeping. It feeds on leaves that contain a potent poison only Komala can break down.'),
  -- mimikyu in scarlet
  (778, 77800, 36, 'This Pokémon lives in dark places untouched by sunlight. When it appears before humans, it hides itself under a cloth that resembles a Pikachu.'),
  -- mimikyu-busted in scarlet
  (778, 77801, 36, 'Even as it struggles beneath the cloth to repair the broken neck of its disguise, Mimikyu keeps up its impersonation of Pikachu.'),
  -- bruxish in scarlet
  (779, 77900, 36, 'It grinds its teeth with great force to stimulate its brain. It fires the psychic energy created by this process from the protuberance on its head.'),
  -- jangmo-o in scarlet
  (782, 78200, 36, 'The scale atop its head is useful for both offense and defense. It bravely stands and faces its foes rather than turning tail, even if its foes are strong.'),
  -- hakamo-o in scarlet
  (783, 78300, 36, 'It gets into fistfights so intense that the scales on its arms peel off. Bare arms are a sign of valiance.'),
  -- kommo-o in scarlet
  (784, 78400, 36, 'It lets its arm hang, and then-quick as a flash- swings upward to land its specialty punch and send the opponent flying high into the sky.'),
  -- grookey in scarlet
  (810, 81000, 36, 'The stick Grookey holds has grown harder and more flexible after soaking in the energy that emanates from inside Grookey’s body.'),
  -- thwackey in scarlet
  (811, 81100, 36, 'It skillfully uses its two sticks not only for drumming out rapid beats but also for pummeling opponents during battle.'),
  -- rillaboom in scarlet
  (812, 81200, 36, 'Though it has a calm disposition, it won’t tolerate those who drum up discord. It strictly disciplines offenders until they learn their lesson.'),
  -- scorbunny in scarlet
  (813, 81300, 36, 'Once its body has heated up, Scorbunny can use the full extent of its power. That’s why it does warm-up exercises.'),
  -- raboot in scarlet
  (814, 81400, 36, 'Thanks to its soft and fluffy fur, Raboot can easily heat up its fire energy and produce flames with more power.'),
  -- cinderace in scarlet
  (815, 81500, 36, 'Although Cinderace loses its cool easily, it will battle flawlessly for a Trainer it trusts.'),
  -- sobble in scarlet
  (816, 81600, 36, 'It gets berries to eat by shooting them down with bullets of water it spurts from its mouth. Its aim is perfect.'),
  -- drizzile in scarlet
  (817, 81700, 36, 'It extends its long, slimy tongue at blinding speeds and finishes off its prey with great skill.'),
  -- inteleon in scarlet
  (818, 81800, 36, 'It uses special lenses in its eyes to sense things about its opponents—like their body heat—then attacks once it identifies a weak spot.'),
  -- skwovet in scarlet
  (819, 81900, 36, 'It stores berries in its cheeks. When there are no berries to be found, Skwovet will stuff pebbles into its cheeks to stave off its cravings.'),
  -- greedent in scarlet
  (820, 82000, 36, 'If it spots a berry tree, it will immediately go to gather berries without a sideways glance—even if it’s in the middle of a battle.'),
  -- rookidee in scarlet
  (821, 82100, 36, 'This Pokémon is brave and reckless. The white markings around a Rookidee’s eyes intimidate fainthearted Pokémon.'),
  -- corvisquire in scarlet
  (822, 82200, 36, 'It’s said that the reason behind Corvisquire’s high level of intelligence is the large size of its brain relative to those of other bird Pokémon.'),
  -- corviknight in scarlet
  (823, 82300, 36, 'Corviknight can’t serve as a taxi service in Paldea because the Pokémon’s natural predators will attack it while it flies, endangering the customer.'),
  -- chewtle in scarlet
  (833, 83300, 36, 'Its large front tooth is still growing in. When the tooth itches, this Pokémon will bite another Chewtle’s horn, and the two Pokémon will tussle.'),
  -- drednaw in scarlet
  (834, 83400, 36, 'Its massive, jagged teeth can crush a boulder in a single bite. This Pokémon has an extremely vicious disposition.'),
  -- rolycoly in scarlet
  (837, 83700, 36, 'On sunny days, Rolycoly will come out onto grassy plains and roll around. Then it will eat the grass that gets tangled in its wheel-like leg.'),
  -- carkol in scarlet
  (838, 83800, 36, 'The temperature inside its body increases when it experiences strong emotions. It rolls around frantically while spewing flames.'),
  -- coalossal in scarlet
  (839, 83900, 36, 'To intimidate its opponents, Coalossal will vigorously shake its body, scattering coal from its smoldering back.'),
  -- applin in scarlet
  (840, 84000, 36, 'It grows by eating the flesh of an apple. Applin uses its own body fluid to strengthen the apple’s skin and prevent it from rotting.'),
  -- flapple in scarlet
  (841, 84100, 36, 'It flutters around while seeking an opening in the opponent’s guard, then attacks by spitting acidic liquid strong enough to melt metal.'),
  -- appletun in scarlet
  (842, 84200, 36, 'It feeds mainly on sweet apples. It will also eat small bug Pokémon that are attracted by its sweet nectar.'),
  -- silicobra in scarlet
  (843, 84300, 36, 'Silicobra’s neck pouch, which can inflate and deflate like a balloon, gets more elastic each time Silicobra sheds its skin.'),
  -- sandaconda in scarlet
  (844, 84400, 36, 'It will expand its body as much as it can and then contract itself, blasting out sand with enough force to wash away a dump truck.'),
  -- cramorant in scarlet
  (845, 84500, 36, 'Cramorant instinctively swallow everything whole. They’re at their most formidable when they’re struggling to swallow overly large prey.'),
  -- cramorant-gulping in scarlet
  (845, 84501, 36, 'Cramorant is constantly on the hunt for food along riverbanks. It loves Arrokuda—when it finds them, it swallows them whole without a thought.'),
  -- cramorant-gorging in scarlet
  (845, 84502, 36, 'Its throat is clearly not wide enough to swallow a Pikachu, and yet Cramorant makes no move to release its catch.'),
  -- arrokuda in scarlet
  (846, 84600, 36, 'Arrokuda can swim quickly only in a straight line. The ones that become sluggish from overeating are the first to be targeted by flocks of Wattrel.'),
  -- barraskewda in scarlet
  (847, 84700, 36, 'It spins its tail fins to leap from the water, then viciously bites down on Wingull flying close to the water’s surface.'),
  -- toxel in scarlet
  (848, 84800, 36, 'It has no problem drinking dirty water. An organ inside Toxel’s body filters such water into a poisonous liquid that is harmless to Toxel.'),
  -- toxtricity in scarlet
  (849, 84900, 36, 'As it scatters toxic sweat and emits electricity, a melody that sounds like it came from a guitar reverberates through the surrounding area.'),
  -- toxtricity-low-key in scarlet
  (849, 84901, 36, 'Many youths admire the way this Pokémon listlessly picks fights and keeps its cool no matter what opponent it faces.'),
  -- sinistea in scarlet
  (854, 85400, 36, 'The soul of someone who died alone possessed some leftover tea. This Pokémon appears in hotels and houses.'),
  -- sinistea-antique in scarlet
  (854, 85401, 36, 'Some fanatics will go to great pains to prepare the perfect tea and teacup, eagerly waiting for a Sinistea to come and possess their selections.'),
  -- polteageist in scarlet
  (855, 85500, 36, 'The tea that composes Polteageist’s body has a distinct and enjoyable flavor. Drinking too much, however, can be fatal.'),
  -- polteageist-antique in scarlet
  (855, 85501, 36, 'Apparently a Polteageist’s disposition is affected by the type of tea the Pokémon came from. What teapot it inhabits makes no difference.'),
  -- hatenna in scarlet
  (856, 85600, 36, 'Because the emotions of others constantly flow into its head, this Pokémon prefers environments where no other creatures live.'),
  -- hattrem in scarlet
  (857, 85700, 36, 'To this Pokémon, strong emotions apparently feel like incredibly loud noises—even if the emotions are happy ones.'),
  -- hatterene in scarlet
  (858, 85800, 36, 'Hatterene knocks out those that intrude in its home forest by blasting them with a beam, then slashing with claws enhanced by psychic power.'),
  -- impidimp in scarlet
  (859, 85900, 36, 'The reason this Pokémon causes trouble for those it feels close to is because Impidimp itself gets irritable if it can’t absorb negative emotions.'),
  -- morgrem in scarlet
  (860, 86000, 36, 'Morgrem prefers dirty tactics, like ambushing, because it doesn’t have confidence in its brawn.'),
  -- grimmsnarl in scarlet
  (861, 86100, 36, 'This Pokémon has complete control over its hair. Grimmsnarl normally keeps its hair wrapped around its body to support its muscles.'),
  -- milcery in scarlet
  (868, 86800, 36, 'The more sweet aromas it absorbs, the more its body swells. Milcery will deflate when its energy level drops.'),
  -- alcremie in scarlet
  (869, 86900, 36, 'Desserts that Alcremie have decorated with their cream have a rich, sweet flavor and bring happiness to all who eat them.'),
  -- alcremie-ruby-cream in scarlet
  (869, 86902, 36, 'Slight vibrations shook its cells when it evolved, giving it a sweet and tart flavor.'),
  -- alcremie-matcha-cream in scarlet
  (869, 86903, 36, 'Slight vibrations shook its cells when it evolved, giving it an aromatic flavor.'),
  -- alcremie-mint-cream in scarlet
  (869, 86904, 36, 'Slight vibrations shook its cells when it evolved, giving it a refreshing flavor.'),
  -- alcremie-lemon-cream in scarlet
  (869, 86905, 36, 'Slight vibrations shook its cells when it evolved, giving it a sour flavor.'),
  -- alcremie-salted-cream in scarlet
  (869, 86906, 36, 'Slight vibrations shook its cells when it evolved, giving it a salty flavor.'),
  -- alcremie-ruby-swirl in scarlet
  (869, 86907, 36, 'Slight vibrations shook its cells when it evolved, giving it a mixed flavor.'),
  -- alcremie-caramel-swirl in scarlet
  (869, 86908, 36, 'Slight vibrations shook its cells when it evolved, giving it a bitter flavor.'),
  -- alcremie-rainbow-swirl in scarlet
  (869, 86909, 36, 'Slight vibrations shook its cells when it evolved, giving it a complex flavor.'),
  -- falinks in scarlet
  (870, 87000, 36, 'The brass, which is the one that stands at the front and issues orders, is the strongest and smartest of the six.'),
  -- pincurchin in scarlet
  (871, 87100, 36, 'This Pokémon generates electricity when it digests food. It uses its five hard teeth to scrape seaweed off surfaces and eat it.'),
  -- snom in scarlet
  (872, 87200, 36, 'It eats snow that has accumulated on the ground. It prefers soft, freshly fallen snow, so it will eat its way up a mountain, aiming for the peak.'),
  -- frosmoth in scarlet
  (873, 87300, 36, 'Frosmoth senses air currents with its antennae. It sends its scales drifting on frigid air, making them fall like snow.'),
  -- stonjourner in scarlet
  (874, 87400, 36, 'The elemental composition of the rocks that form its body were found to match the bedrock of a land far away from this Pokémon’s habitat.'),
  -- eiscue in scarlet
  (875, 87500, 36, 'On hot days, these Pokémon press their ice cube heads together and pass the time cooling each other down.'),
  -- eiscue-noice in scarlet
  (875, 87501, 36, 'The ice that was covering this Eiscue’s face has shattered. Eiscue emits cold air from the tip of its hair to protect its head, which is sensitive to heat.'),
  -- indeedee in scarlet
  (876, 87600, 36, 'This Pokémon picks up on the positive emotions of other creatures via its horns and uses those emotions to fuel itself.'),
  -- indeedee-female in scarlet
  (876, 87601, 36, 'It dislikes conflict. If a fight occurs in its territory, it uses psychic power to throw things at the combatants in an effort to drive them away.'),
  -- morpeko in scarlet
  (877, 87700, 36, 'Morpeko eats seeds constantly to keep its hunger at bay. If it’s hungry for too long, it grows wild and brutish.'),
  -- morpeko-hangry in scarlet
  (877, 87701, 36, 'Even after using up all its dark energy, this violent ruffian will keep running riot until its hunger is appeased.'),
  -- cufant in scarlet
  (878, 87800, 36, 'Using the pointy tip of its trunk, it carves off chunks of hard rocks to eat. It is very docile and helps people with physical labor.'),
  -- copperajah in scarlet
  (879, 87900, 36, 'This Pokémon was brought to Paldea long ago by people from a faraway land. It’s so strong that it can easily pull an airplane.'),
  -- duraludon in scarlet
  (884, 88400, 36, 'Duraludon’s body is comprised of a special metal that’s lightweight and scratch resistant. It’s also smooth, as though it was given a mirror finish.'),
  -- dreepy in scarlet
  (885, 88500, 36, 'In the evening, groups of Dreepy will fly at high speeds over the ocean and poke at Pokémon in the water for fun.'),
  -- drakloak in scarlet
  (886, 88600, 36, 'This Pokémon flies around at over 120 miles per hour. If a Drakloak is defeated in a battle, its Dreepy will wander off without a second thought.'),
  -- dragapult in scarlet
  (887, 88700, 36, 'Dragapult can make its whole body transparent by clearing its mind and focusing. Even the Dreepy in Dragapult’s horns become invisible.'),
  -- kleavor in scarlet
  (900, 90000, 36, 'Parts of its body turned to stone when it evolved thanks to an extremely rare ore found in volcanic areas.'),
  -- basculegion in scarlet
  (902, 90200, 36, 'This Pokémon is cloaked in the souls of its comrades who perished during a punishing journey to the river of their birth.'),
  -- basculegion-female in scarlet
  (902, 90201, 36, 'The souls of its comrades cloak its body and propel it effortlessly through even raging rapids.'),
  -- overqwil in scarlet
  (904, 90400, 36, 'Overqwil’s poisonous spikes will reflexively react even while Overqwil sleeps, stabbing any moving thing that approaches.'),
  -- sprigatito in scarlet
  (906, 90600, 36, 'Its fluffy fur is similar in composition to plants. This Pokémon frequently washes its face to keep it from drying out.'),
  -- floragato in scarlet
  (907, 90700, 36, 'Floragato deftly wields the vine hidden beneath its long fur, slamming the hard flower bud against its opponents.'),
  -- meowscarada in scarlet
  (908, 90800, 36, 'This Pokémon uses the reflective fur lining its cape to camouflage the stem of its flower, creating the illusion that the flower is floating.'),
  -- fuecoco in scarlet
  (909, 90900, 36, 'It lies on warm rocks and uses the heat absorbed by its square-shaped scales to create fire energy.'),
  -- crocalor in scarlet
  (910, 91000, 36, 'The combination of Crocalor’s fire energy and overflowing vitality has caused an egg-shaped fireball to appear on the Pokémon’s head.'),
  -- skeledirge in scarlet
  (911, 91100, 36, 'The fiery bird changes shape when Skeledirge sings. Rumor has it that the bird was born when the fireball on Skeledirge’s head gained a soul.'),
  -- quaxly in scarlet
  (912, 91200, 36, 'This Pokémon migrated to Paldea from distant lands long ago. The gel secreted by its feathers repels water and grime.'),
  -- quaxwell in scarlet
  (913, 91300, 36, 'These Pokémon constantly run through shallow waters to train their legs, then compete with each other to see which of them kicks most gracefully.'),
  -- quaquaval in scarlet
  (914, 91400, 36, 'A single kick from a Quaquaval can send a truck rolling. This Pokémon uses its powerful legs to perform striking dances from far-off lands.'),
  -- lechonk in scarlet
  (915, 91500, 36, 'It searches for food all day. It possesses a keen sense of smell but doesn’t use it for anything other than foraging.'),
  -- oinkologne in scarlet
  (916, 91600, 36, 'Oinkologne is proud of its fine, glossy skin. It emits a concentrated scent from the tip of its tail.'),
  -- oinkologne-female in scarlet
  (916, 91601, 36, 'This Pokémon sends a flowerlike scent wafting about. Well-developed muscles in its legs allow it to leap more than 16 feet with no trouble at all.'),
  -- tarountula in scarlet
  (917, 91700, 36, 'The ball of threads wrapped around its body is elastic enough to deflect the scythes of Scyther, this Pokémon’s natural enemy.'),
  -- spidops in scarlet
  (918, 91800, 36, 'It clings to branches and ceilings using its threads and moves without a sound. It takes out its prey before the prey even notices it.'),
  -- nymble in scarlet
  (919, 91900, 36, 'It has its third set of legs folded up. When it’s in a tough spot, this Pokémon jumps over 30 feet using the strength of its legs.'),
  -- lokix in scarlet
  (920, 92000, 36, 'When it decides to fight all out, it stands on its previously folded legs to enter Showdown Mode. It neutralizes its enemies in short order.'),
  -- pawmi in scarlet
  (921, 92100, 36, 'It has underdeveloped electric sacs on its cheeks. These sacs can produce electricity only if Pawmi rubs them furiously with the pads on its forepaws.'),
  -- pawmo in scarlet
  (922, 92200, 36, 'When its group is attacked, Pawmo is the first to leap into battle, defeating enemies with a fighting technique that utilizes electric shocks.'),
  -- pawmot in scarlet
  (923, 92300, 36, 'This Pokémon normally is slow to react, but once it enters battle, it will strike down its enemies with lightning-fast movements.'),
  -- tandemaus in scarlet
  (924, 92400, 36, 'Exhibiting great teamwork, they use their incisors to cut pieces out of any material that might be useful for a nest, then make off with them.'),
  -- maushold in scarlet
  (925, 92500, 36, 'The two little ones just appeared one day. The group might be a family of related Pokémon, but nobody knows for sure.'),
  -- maushold-family-of-three in scarlet
  (925, 92501, 36, 'They build huge nests with many rooms that are used for different purposes, such as eating and sleeping.'),
  -- fidough in scarlet
  (926, 92600, 36, 'This Pokémon is smooth and moist to the touch. Yeast in Fidough’s breath induces fermentation in the Pokémon’s vicinity.'),
  -- dachsbun in scarlet
  (927, 92700, 36, 'The pleasant aroma that emanates from this Pokémon’s body helps wheat grow, so Dachsbun has been treasured by farming villages.'),
  -- smoliv in scarlet
  (928, 92800, 36, 'It protects itself from enemies by emitting oil from the fruit on its head. This oil is bitter and astringent enough to make someone flinch.'),
  -- dolliv in scarlet
  (929, 92900, 36, 'Dolliv shares its tasty, fresh-scented oil with others. This species has coexisted with humans since times long gone.'),
  -- arboliva in scarlet
  (930, 93000, 36, 'This calm Pokémon is very compassionate. It will share its delicious, nutrient-rich oil with weakened Pokémon.'),
  -- squawkabilly in scarlet
  (931, 93100, 36, 'These Pokémon prefer to live in cities. They form flocks based on the color of their feathers, and they fight over territory.'),
  -- squawkabilly-blue in scarlet
  (931, 93101, 36, 'The largest of their flocks can contain more than 50 individuals. They fly around towns and forests, searching for food and making a racket.'),
  -- squawkabilly-yellow in scarlet
  (931, 93102, 36, 'These Squawkabilly are hotheaded, and their fighting style is vicious. They’ll leap within reach of their foes to engage in close combat.'),
  -- squawkabilly-white in scarlet
  (931, 93103, 36, 'This Pokémon dislikes being alone. It has a strong sense of community and survives by cooperating with allies.'),
  -- nacli in scarlet
  (932, 93200, 36, 'It was born in a layer of rock salt deep under the earth. This species was particularly treasured in the old days, as they would share precious salt.'),
  -- naclstack in scarlet
  (933, 93300, 36, 'This Pokémon dry cures its prey by spraying salt over them. The curing process steals away the water in the prey’s body.'),
  -- garganacl in scarlet
  (934, 93400, 36, 'Garganacl will rub its fingertips together and sprinkle injured Pokémon with salt. Even severe wounds will promptly heal afterward.'),
  -- charcadet in scarlet
  (935, 93500, 36, 'Burnt charcoal came to life and became a Pokémon. Possessing a fiery fighting spirit, Charcadet will battle even tough opponents.'),
  -- armarouge in scarlet
  (936, 93600, 36, 'Armarouge evolved through the use of a set of armor that belonged to a distinguished warrior. This Pokémon is incredibly loyal.'),
  -- ceruledge in scarlet
  (937, 93700, 36, 'The fiery blades on its arms burn fiercely with the lingering resentment of a sword wielder who fell before accomplishing their goal.'),
  -- tadbulb in scarlet
  (938, 93800, 36, 'Tadbulb shakes its tail to generate electricity. If it senses danger, it will make its head blink on and off to alert its allies.'),
  -- bellibolt in scarlet
  (939, 93900, 36, 'When this Pokémon expands and contracts its wobbly body, the belly-button dynamo in its stomach produces a huge amount of electricity.'),
  -- wattrel in scarlet
  (940, 94000, 36, 'When its wings catch the wind, the bones within produce electricity. This Pokémon dives into the ocean, catching prey by electrocuting them.'),
  -- kilowattrel in scarlet
  (941, 94100, 36, 'Kilowattrel inflates its throat sac to amplify its electricity. By riding the wind, this Pokémon can fly over 430 miles in a day.'),
  -- maschiff in scarlet
  (942, 94200, 36, 'It always scowls in an attempt to make opponents take it seriously, but even crying children will burst into laughter when they see Maschiff’s face.'),
  -- mabosstiff in scarlet
  (943, 94300, 36, 'This Pokémon can store energy in its large dewlap. Mabosstiff unleashes this energy all at once to blow away enemies.'),
  -- shroodle in scarlet
  (944, 94400, 36, 'Though usually a mellow Pokémon, it will sink its sharp, poison-soaked front teeth into any that anger it, causing paralysis in the object of its ire.'),
  -- grafaiai in scarlet
  (945, 94500, 36, 'The color of the poisonous saliva depends on what the Pokémon eats. Grafaiai covers its fingers in its saliva and draws patterns on trees in forests.'),
  -- bramblin in scarlet
  (946, 94600, 36, 'A soul unable to move on to the afterlife was blown around by the wind until it got tangled up with dried grass and became a Pokémon.'),
  -- brambleghast in scarlet
  (947, 94700, 36, 'It will open the branches of its head to envelop its prey. Once it absorbs all the life energy it needs, it expels the prey and discards it.'),
  -- toedscool in scarlet
  (948, 94800, 36, 'Toedscool lives in muggy forests. The flaps that fall from its body are chewy and very delicious.'),
  -- toedscruel in scarlet
  (949, 94900, 36, 'These Pokémon gather into groups and form colonies deep within forests. They absolutely hate it when strangers approach.'),
  -- klawf in scarlet
  (950, 95000, 36, 'Klawf hangs upside-down from cliffs, waiting for prey. But Klawf can’t remain in this position for long because its blood rushes to its head.'),
  -- capsakid in scarlet
  (951, 95100, 36, 'The more sunlight this Pokémon bathes in, the more spicy chemicals are produced by its body, and thus the spicier its moves become.'),
  -- scovillain in scarlet
  (952, 95200, 36, 'The red head converts spicy chemicals into fire energy and blasts the surrounding area with a super spicy stream of flame.'),
  -- rellor in scarlet
  (953, 95300, 36, 'This Pokémon creates a mud ball by mixing sand and dirt with psychic energy. It treasures its mud ball more than its own life.'),
  -- rabsca in scarlet
  (954, 95400, 36, 'The body that supports the ball barely moves. Therefore, it is thought that the true body of this Pokémon is actually inside the ball.'),
  -- flittle in scarlet
  (955, 95500, 36, 'Flittle’s toes levitate about half an inch above the ground because of the psychic power emitted from the frills on the Pokémon’s belly.'),
  -- espathra in scarlet
  (956, 95600, 36, 'It immobilizes opponents by bathing them in psychic power from its large eyes. Despite its appearance, it has a vicious temperament.'),
  -- tinkatink in scarlet
  (957, 95700, 36, 'It swings its handmade hammer around to protect itself, but the hammer is often stolen by Pokémon that eat metal.'),
  -- tinkatuff in scarlet
  (958, 95800, 36, 'This Pokémon will attack groups of Pawniard and Bisharp, gathering metal from them in order to create a large and sturdy hammer.'),
  -- tinkaton in scarlet
  (959, 95900, 36, 'This intelligent Pokémon has a very daring disposition. It knocks rocks into the sky with its hammer, aiming for flying Corviknight.'),
  -- wiglett in scarlet
  (960, 96000, 36, 'This Pokémon can pick up the scent of a Veluza just over 65 feet away and will hide itself in the sand.'),
  -- wugtrio in scarlet
  (961, 96100, 36, 'It has a vicious temperament, contrary to what its appearance may suggest. It wraps its long bodies around prey, then drags the prey into its den.'),
  -- bombirdier in scarlet
  (962, 96200, 36, 'It gathers things up in an apron made from shed feathers added to the Pokémon’s chest feathers, then drops those things from high places for fun.'),
  -- finizen in scarlet
  (963, 96300, 36, 'It likes playing with others of its kind using the water ring on its tail. It uses ultrasonic waves to sense the emotions of other living creatures.'),
  -- palafin in scarlet
  (964, 96400, 36, 'This Pokémon changes its appearance if it hears its allies calling for help. Palafin will never show anybody its moment of transformation.'),
  -- varoom in scarlet
  (965, 96500, 36, 'It is said that this Pokémon was born when an unknown poison Pokémon entered and inspirited an engine left at a scrap-processing factory.'),
  -- revavroom in scarlet
  (966, 96600, 36, 'It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders—now numbering eight—to generate energy.'),
  -- cyclizar in scarlet
  (967, 96700, 36, 'Apparently Cyclizar has been allowing people to ride on its back since ancient times. Depictions of this have been found in 10,000-year-old murals.'),
  -- orthworm in scarlet
  (968, 96800, 36, 'When attacked, this Pokémon will wield the tendrils on its body like fists and pelt the opponent with a storm of punches.'),
  -- glimmet in scarlet
  (969, 96900, 36, 'It absorbs nutrients from cave walls. The petals it wears are made of crystallized poison.'),
  -- glimmora in scarlet
  (970, 97000, 36, 'When this Pokémon detects danger, it will open up its crystalline petals and fire beams from its conical body.'),
  -- greavard in scarlet
  (971, 97100, 36, 'It is said that a dog Pokémon that died in the wild without ever interacting with a human was reborn as this Pokémon.'),
  -- houndstone in scarlet
  (972, 97200, 36, 'Houndstone spends most of its time sleeping in graveyards. Among all the dog Pokémon, this one is most loyal to its master.'),
  -- flamigo in scarlet
  (973, 97300, 36, 'This Pokémon apparently ties the base of its neck into a knot so that energy stored in its belly does not escape from its beak.'),
  -- cetoddle in scarlet
  (974, 97400, 36, 'This species left the ocean and began living on land a very long time ago. It seems to be closely related to Wailmer.'),
  -- cetitan in scarlet
  (975, 97500, 36, 'This Pokémon wanders around snowy, icy areas. It protects its body with powerful muscles and a thick layer of fat under its skin.'),
  -- veluza in scarlet
  (976, 97600, 36, 'When Veluza discards unnecessary flesh, its mind becomes honed and its psychic power increases. The spare flesh has a mild but delicious flavor.'),
  -- dondozo in scarlet
  (977, 97700, 36, 'This Pokémon is a glutton, but it’s bad at getting food. It teams up with a Tatsugiri to catch prey.'),
  -- tatsugiri in scarlet
  (978, 97800, 36, 'This is a small dragon Pokémon. It lives inside the mouth of Dondozo to protect itself from enemies on the outside.'),
  -- tatsugiri-droopy in scarlet
  (978, 97801, 36, 'This species'' differing colors and patterns are apparently the result of Tatsugiri changing itself to suit the preferences of the prey it lures in.'),
  -- tatsugiri-stretchy in scarlet
  (978, 97802, 36, 'Bird Pokémon are its main prey. This Pokémon knows it’s weak, so it hunts with a partner.'),
  -- annihilape in scarlet
  (979, 97900, 36, 'When its anger rose beyond a critical point, this Pokémon gained power that is unfettered by the limits of its physical body.'),
  -- clodsire in scarlet
  (980, 98000, 36, 'When attacked, this Pokémon will retaliate by sticking thick spines out from its body. It’s a risky move that puts everything on the line.'),
  -- farigiraf in scarlet
  (981, 98100, 36, 'Now that the brain waves from the head and tail are synced up, the psychic power of this Pokémon is 10 times stronger than Girafarig’s.'),
  -- dudunsparce in scarlet
  (982, 98200, 36, 'This Pokémon uses its hard tail to make its nest by boring holes into bedrock deep underground. The nest can reach lengths of over six miles.'),
  -- dudunsparce-three-segment in scarlet
  (982, 98201, 36, 'The gentle Dudunsparce will put Pokémon that wander into its nest onto its back and carry them to the entrance.'),
  -- kingambit in scarlet
  (983, 98300, 36, 'Only a Bisharp that stands above all others in its vast army can evolve into Kingambit.'),
  -- great-tusk in scarlet
  (984, 98400, 36, 'Sightings of this Pokémon have occurred in recent years. The name Great Tusk was taken from a creature listed in a certain book.'),
  -- scream-tail in scarlet
  (985, 98500, 36, 'There has been only one reported sighting of this Pokémon. It resembles a mysterious creature depicted in an old expedition journal.'),
  -- brute-bonnet in scarlet
  (986, 98600, 36, 'It is possible that the creature listed as Brute Bonnet in a certain book could actually be this Pokémon.'),
  -- flutter-mane in scarlet
  (987, 98700, 36, 'This Pokémon has characteristics similar to those of Flutter Mane, a creature mentioned in a certain book.'),
  -- slither-wing in scarlet
  (988, 98800, 36, 'This mysterious Pokémon has some similarities to a creature that an old book introduced as Slither Wing.'),
  -- sandy-shocks in scarlet
  (989, 98900, 36, 'No records exist of this Pokémon being caught. Data is lacking, but the Pokémon’s traits match up with a creature shown in an expedition journal.'),
  -- iron-treads in scarlet
  (990, 99000, 36, 'This Pokémon closely resembles a scientific weapon that a paranormal magazine claimed was sent to this planet by aliens.'),
  -- iron-bundle in scarlet
  (991, 99100, 36, 'Its shape is similar to a robot featured in a paranormal magazine article. The robot was said to have been created by an ancient civilization.'),
  -- iron-hands in scarlet
  (992, 99200, 36, 'It is very similar to a cyborg covered exclusively by a paranormal magazine. The cyborg was said to be the modified form of a certain athlete.'),
  -- iron-jugulis in scarlet
  (993, 99300, 36, 'It resembles a certain Pokémon introduced in a paranormal magazine, described as the offspring of a Hydreigon that fell in love with a robot.'),
  -- iron-moth in scarlet
  (994, 99400, 36, 'This Pokémon resembles an unknown object described in a paranormal magazine as a UFO sent to observe humanity.'),
  -- iron-thorns in scarlet
  (995, 99500, 36, 'It has some similarities to a Pokémon introduced in a dubious magazine as a Tyranitar from one billion years into the future.'),
  -- frigibax in scarlet
  (996, 99600, 36, 'Frigibax absorbs heat through its dorsal fin and converts the heat into ice energy. The higher the temperature, the more energy Frigibax stores.'),
  -- arctibax in scarlet
  (997, 99700, 36, 'Arctibax freezes the air around it, protecting its face with an ice mask and turning its dorsal fin into a blade of ice.'),
  -- baxcalibur in scarlet
  (998, 99800, 36, 'This Pokémon blasts cryogenic air out from its mouth. This air can instantly freeze even liquid-hot lava.'),
  -- gimmighoul in scarlet
  (999, 99900, 36, 'This Pokémon was born inside a treasure chest about 1,500 years ago. It sucks the life-force out of scoundrels who try to steal the treasure.'),
  -- gimmighoul-roaming in scarlet
  (999, 99901, 36, 'This Pokémon was born from passion that seeped into a coin. It wanders, apparently seeking to return to the treasure chest it once inhabited.'),
  -- gholdengo in scarlet
  (1000, 100000, 36, 'Its body seems to be made up of 1,000 coins. This Pokémon gets along well with others and is quick to make friends with anybody.'),
  -- wo-chien in scarlet
  (1001, 100100, 36, 'The grudge of a person punished for writing the king’s evil deeds upon wooden tablets has clad itself in dead leaves to become a Pokémon.'),
  -- chien-pao in scarlet
  (1002, 100200, 36, 'This Pokémon can control 100 tons of fallen snow. It plays around innocently by leaping in and out of avalanches it has caused.'),
  -- ting-lu in scarlet
  (1003, 100300, 36, 'The fear poured into an ancient ritual vessel has clad itself in rocks and dirt to become a Pokémon.'),
  -- chi-yu in scarlet
  (1004, 100400, 36, 'It controls flames burning at over 5,400 degrees Fahrenheit. It casually swims through the sea of lava it creates by melting rock and sand.'),
  -- roaring-moon in scarlet
  (1005, 100500, 36, 'It is possible that this is the creature listed as Roaring Moon in an expedition journal that still holds many mysteries.'),
  -- iron-valiant in scarlet
  (1006, 100600, 36, 'It has some similarities to a mad scientist’s invention covered in a paranormal magazine.'),
  -- koraidon in scarlet
  (1007, 100700, 36, 'This seems to be the Winged King mentioned in an old expedition journal. It was said to have split the land with its bare fists.'),
  -- miraidon in scarlet
  (1008, 100800, 36, 'Much remains unknown about this creature. It resembles Cyclizar, but it is far more ruthless and powerful.'),
  -- walking-wake in scarlet
  (1009, 100900, 36, 'This ferocious creature is shrouded in mystery. It’s named after an aquatic monster mentioned in an old expedition journal.'),
  -- iron-leaves in scarlet
  (1010, 101000, 36, 'Many of its physical characteristics match those of a Virizion from the future that was covered in a paranormal magazine.'),
  -- dipplin in scarlet
  (1011, 101100, 36, 'Dipplin is two creatures in one Pokémon. Its evolution was triggered by a special apple grown only in one place.'),
  -- poltchageist in scarlet
  (1012, 101200, 36, 'Supposedly, the regrets of a tea ceremony master who died before perfecting his craft lingered in some matcha and became a Pokémon.'),
  -- poltchageist-artisan in scarlet
  (1012, 101201, 36, 'It sprinkles some of its powdery body onto food and drains the life-force from those who so much as lick it.'),
  -- sinistcha in scarlet
  (1013, 101300, 36, 'It pretends to be tea, trying to fool people into drinking it so it can drain their life-force. Its ruse is generally unsuccessful.'),
  -- sinistcha-masterpiece in scarlet
  (1013, 101301, 36, 'It lives inside a superb teacup that was crafted by a potter of great renown. Collectors positively adore this Pokémon.'),
  -- okidogi in scarlet
  (1014, 101400, 36, 'After all its muscles were stimulated by the toxic chain around its neck, Okidogi transformed and gained a powerful physique.'),
  -- munkidori in scarlet
  (1015, 101500, 36, 'The chain is made from toxins that enhance capabilities. It stimulated Munkidori’s brain and caused the Pokémon’s psychic powers to bloom.'),
  -- fezandipiti in scarlet
  (1016, 101600, 36, 'Fezandipiti owes its beautiful looks and lovely voice to the toxic stimulants emanating from the chain wrapped around its body.'),
  -- ogerpon in scarlet
  (1017, 101700, 36, 'This Pokémon’s type changes based on which mask it’s wearing. It confounds its enemies with nimble movements and kicks.'),
  -- ogerpon-wellspring in scarlet
  (1017, 101701, 36, 'This form excels in both attack and defense. It ceaselessly unleashes moves like a spring gushes water.'),
  -- ogerpon-hearthflame in scarlet
  (1017, 101702, 36, 'This form is the most aggressive, bombarding enemies with the intensity of flames blazing within a hearth.'),
  -- ogerpon-cornerstone in scarlet
  (1017, 101703, 36, 'This form has excellent defenses, absorbing impacts solidly like the cornerstones that support houses.'),
  -- archaludon in scarlet
  (1018, 101800, 36, 'It gathers static electricity from its surroundings. The beams it launches when down on all fours are tremendously powerful.'),
  -- hydrapple in scarlet
  (1019, 101900, 36, 'Seven syrpents live inside an apple made of syrup. The syrpent in the center is the commander.'),
  -- gouging-fire in scarlet
  (1020, 102000, 36, 'There are scant few reports of this creature being sighted. One short video shows it rampaging and spouting pillars of flame.'),
  -- raging-bolt in scarlet
  (1021, 102100, 36, 'It’s said to incinerate everything around it with lightning launched from its fur. Very little is known about this creature.'),
  -- iron-boulder in scarlet
  (1022, 102200, 36, 'It resembles a Pokémon described in a dubious magazine as a Terrakion that had been modified by an evil organization.'),
  -- iron-crown in scarlet
  (1023, 102300, 36, 'It resembles a mysterious object introduced in a paranormal magazine as a cutting-edge weapon shaped like a Cobalion.'),
  -- terapagos in scarlet
  (1024, 102400, 36, 'Terapagos protects itself using its power to transform energy into hard crystals. This Pokémon is the source of the Terastal phenomenon.'),
  -- pecharunt in scarlet
  (1025, 102500, 36, 'It feeds others toxic mochi that draw out desires and capabilities. Those who eat the mochi fall under Pecharunt’s control, chained to its will.'),
  -- bulbasaur in violet
  (1, 100, 37, 'It carries a seed on its back right from birth. As its body grows larger, the seed does too.'),
  -- ivysaur in violet
  (2, 200, 37, 'The bulb on its back grows as it absorbs nutrients. The bulb gives off a pleasant aroma when it blooms.'),
  -- venusaur in violet
  (3, 300, 37, 'By spreading the broad petals of its flower and catching the sun’s rays, it fills its body with power.'),
  -- charmander in violet
  (4, 400, 37, 'If Charmander is healthy, the flame on the tip of its tail will burn vigorously and won’t go out even if it gets a bit wet.'),
  -- charmeleon in violet
  (5, 500, 37, 'It is very hotheaded by nature, so it constantly seeks opponents to battle against. Its aggression will not be quelled if it doesn’t win.'),
  -- charizard in violet
  (6, 600, 37, 'It uses its wings to fly sky-high. The more experience it gains in battle, the greater the temperature at which its flames burn.'),
  -- squirtle in violet
  (7, 700, 37, 'Its shell is soft immediately after it is born. In no time at all, the shell becomes so resilient that a prodding finger will bounce right off it.'),
  -- wartortle in violet
  (8, 800, 37, 'It often hides in water to stalk unwary prey. While swimming quickly, it moves its ears to maintain balance.'),
  -- blastoise in violet
  (9, 900, 37, 'It has jet nozzles on its shell. This impressive Pokémon uses these jets to charge toward foes with all the force of a rocket.'),
  -- ekans in violet
  (23, 2300, 37, 'A very common sight in grasslands and such. It flicks its tongue in and out to sense danger in its surroundings.'),
  -- arbok in violet
  (24, 2400, 37, 'This Pokémon is very tenacious. Once it targets its prey, it won’t give up the chase, no matter how far the prey goes.'),
  -- pikachu in violet
  (25, 2500, 37, 'When several of these Pokémon gather, their electricity can build and cause lightning storms.'),
  -- pikachu-original-cap in violet
  (25, 2503, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across many different regions.'),
  -- pikachu-hoenn-cap in violet
  (25, 2504, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across the Hoenn region.'),
  -- pikachu-sinnoh-cap in violet
  (25, 2505, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across the Sinnoh region.'),
  -- pikachu-unova-cap in violet
  (25, 2506, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across the Unova region.'),
  -- pikachu-kalos-cap in violet
  (25, 2507, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across the Kalos region.'),
  -- pikachu-alola-cap in violet
  (25, 2508, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across the Alola region.'),
  -- pikachu-partner-cap in violet
  (25, 2509, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed as the two overcame many hardships together.'),
  -- pikachu-world-cap in violet
  (25, 2510, 37, 'This Pikachu wears its partner’s cap—proof of the strong bond Pikachu and its partner formed during adventures across the world.'),
  -- raichu in violet
  (26, 2600, 37, 'If the electric pouches in its cheeks become fully charged, both ears will stand straight up.'),
  -- sandshrew in violet
  (27, 2700, 37, 'No matter how high a place it falls from, this Pokémon can save itself by rolling in a ball and bouncing.'),
  -- alolan-sandshrew in violet
  (27, 2701, 37, 'An ancient tradition of Alolan festivals, still carried on to this day, is a competition to slide Sandshrew across ice as far as one can.'),
  -- sandslash in violet
  (28, 2800, 37, 'The spikes on its body are made up of its hardened hide. It rolls up and attacks foes with its spikes.'),
  -- alolan-sandslash in violet
  (28, 2801, 37, 'A long, long time ago, it lived in the desert. With its sharp claws fully extended, it can run right up an iceberg without slipping.'),
  -- clefairy in violet
  (35, 3500, 37, 'On nights with a full moon, they gather together and dance. The surrounding area is enveloped in an abnormal magnetic field.'),
  -- clefable in violet
  (36, 3600, 37, 'It has an acute sense of hearing. It can easily hear a pin being dropped nearly 1,100 yards away.'),
  -- vulpix in violet
  (37, 3700, 37, 'As its body grows larger, its six warm tails become more beautiful, with a more luxurious coat of fur.'),
  -- alolan-vulpix in violet
  (37, 3701, 37, 'In hot weather, this Pokémon makes ice shards with its six tails and sprays them around to cool itself off.'),
  -- ninetales in violet
  (38, 3800, 37, 'It has nine long tails and fur that gleams gold. It is said to live for 1,000 years.'),
  -- alolan-ninetales in violet
  (38, 3801, 37, 'It creates drops of ice in its coat and showers them over its enemies. Anyone who angers it will be frozen stiff in an instant.'),
  -- jigglypuff in violet
  (39, 3900, 37, 'If it inflates to sing a lullaby, it can perform longer and cause sure drowsiness in its audience.'),
  -- wigglytuff in violet
  (40, 4000, 37, 'The rich, fluffy fur that covers its body feels so good that anyone who feels it can’t stop touching it.'),
  -- oddish in violet
  (43, 4300, 37, 'When it is woken by moonlight, it wanders about. But during the day, it stays still underground.'),
  -- gloom in violet
  (44, 4400, 37, 'It secretes a sticky, drool-like nectar. Though sweet, it smells too repulsive to get very close.'),
  -- vileplume in violet
  (45, 4500, 37, 'It fiendishly scatters allergenic pollen from its petals, which are the largest in the world.'),
  -- venonat in violet
  (48, 4800, 37, 'Its eyes act as radar, enabling it to be active in darkness. The eyes can also shoot powerful beams.'),
  -- venomoth in violet
  (49, 4900, 37, 'When it attacks, it flaps its large wings violently to scatter its poisonous powder all around.'),
  -- diglett in violet
  (50, 5000, 37, 'Its skin is very thin. If it is exposed to light, its blood heats up, causing it to grow weak.'),
  -- alolan-diglett in violet
  (50, 5001, 37, 'Its golden whiskers function as sensors. It pokes them out of its burrow to monitor its surroundings.'),
  -- dugtrio in violet
  (51, 5100, 37, 'In battle, it digs through the ground and strikes the unsuspecting foe from an unexpected direction.'),
  -- alolan-dugtrio in violet
  (51, 5101, 37, 'Its metallic whiskers are heavy, so it’s not very fast, but it has the power to dig through even the hardest bedrock.'),
  -- meowth in violet
  (52, 5200, 37, 'It loves things that sparkle. When it sees a shiny object, the gold coin on its head shines, too.'),
  -- persian in violet
  (53, 5300, 37, 'It has a vicious temperament. Beware if it raises its tail straight up. This is a signal that it is about to pounce and bite.'),
  -- psyduck in violet
  (54, 5400, 37, 'If its chronic headache peaks, it may exhibit odd powers. It seems unable to recall such an episode.'),
  -- golduck in violet
  (55, 5500, 37, 'It swims gracefully along on the quiet, slow- moving rivers and lakes of which it is so fond.'),
  -- mankey in violet
  (56, 5600, 37, 'It is extremely quick to anger. It could be docile one moment, then thrashing away the next instant.'),
  -- primeape in violet
  (57, 5700, 37, 'Some researchers theorize that Primeape remains angry even when inside a Poké Ball.'),
  -- growlithe in violet
  (58, 5800, 37, 'It’s very friendly and faithful to people. It will try to repel enemies by barking and biting.'),
  -- arcanine in violet
  (59, 5900, 37, 'Its magnificent bark conveys a sense of majesty. Anyone hearing it can’t help but grovel before it.'),
  -- poliwag in violet
  (60, 6000, 37, 'Its legs are newly grown, and it can’t walk very well. It seems to prefer swimming through the water instead.'),
  -- poliwhirl in violet
  (61, 6100, 37, 'Its skin is moist all over its body. The skin on its belly spiral also feels smooth.'),
  -- poliwrath in violet
  (62, 6200, 37, 'It can use its well-developed arms and legs to run on the surface of the water for a split second.'),
  -- bellsprout in violet
  (69, 6900, 37, 'It plants its feet deep underground to rehydrate itself. While doing so, it’s unable to run away if it’s attacked.'),
  -- weepinbell in violet
  (70, 7000, 37, 'The leafy parts act as cutters for slashing foes. It spits a fluid that dissolves everything.'),
  -- victreebel in violet
  (71, 7100, 37, 'After dissolving many prey, this Pokémon’s acid becomes sweeter. This makes it even easier to attract more prey.'),
  -- tentacool in violet
  (72, 7200, 37, 'Its eyes are as transparent as crystals. From them, it shoots mysterious beams of light.'),
  -- tentacruel in violet
  (73, 7300, 37, 'In battle, it extends all 80 of its tentacles to entrap its opponent inside a poisonous net.'),
  -- geodude in violet
  (74, 7400, 37, 'Most people may not notice, but a closer look should reveal that there are many Geodude around.'),
  -- alolan-geodude in violet
  (74, 7401, 37, 'If you step on a Geodude sleeping on the ground, you’ll hear a zapping sound and feel a tingling shock throughout your entire body.'),
  -- graveler in violet
  (75, 7500, 37, 'Moss-covered rocks are Graveler’s favorite food. It consumes over a ton of them a day, crunching loudly while it eats.'),
  -- alolan-graveler in violet
  (75, 7501, 37, 'Graveler’s entire body is electrically charged due to the stones it likes to eat. It is a very quick-tempered Pokémon.'),
  -- golem in violet
  (76, 7600, 37, 'It deliberately blows itself up, then uses this explosive force to jump from mountain to mountain.'),
  -- alolan-golem in violet
  (76, 7601, 37, 'It fires rocks charged with electricity. Even if the rock isn’t fired that accurately, just grazing an opponent will cause numbness and fainting.'),
  -- slowpoke in violet
  (79, 7900, 37, 'It is always vacantly lost in thought, but no one knows what it is thinking about. It is good at fishing with its tail.'),
  -- galarian-slowpoke in violet
  (79, 7901, 37, 'It uses its tail to fish, but the scent of the spice emanating from its tail ensures its catches are always lacking.'),
  -- slowbro in violet
  (80, 8000, 37, 'If the tail-biting Shellder is thrown off in a harsh battle, this Pokémon reverts to being an ordinary Slowpoke.'),
  -- galarian-slowbro in violet
  (80, 8002, 37, 'Shellder bites down hard on Slowbro’s arm to suck out more poison. This seems to cause itching, so Slowbro occasionally lashes out.'),
  -- magnemite in violet
  (81, 8100, 37, 'It moves while constantly hovering. It discharges electromagnetic waves and so on from the units at its sides.'),
  -- magneton in violet
  (82, 8200, 37, 'They’re formed by several Magnemite linked together. They frequently appear when sunspots flare up.'),
  -- doduo in violet
  (84, 8400, 37, 'Its heads never sleep at the same time—each one takes a turn keeping watch while the other sleeps, switching every hour or so.'),
  -- dodrio in violet
  (85, 8500, 37, 'The strongest head with the thickest neck becomes the leader and gains primary control of the body.'),
  -- seel in violet
  (86, 8600, 37, 'The colder it gets, the better it feels. It joyfully swims around oceans so cold that they are filled with floating ice.'),
  -- dewgong in violet
  (87, 8700, 37, 'It stores thermal energy in its body to fend off the cold. It swims at eight knots even in frigid waters.'),
  -- grimer in violet
  (88, 8800, 37, 'When two of these Pokémon’s bodies are combined together, new poisons are created.'),
  -- alolan-grimer in violet
  (88, 8801, 37, 'Alolan Grimer will gladly gobble up any kind of trash, making it a widely used and popular Pokémon at garbage disposal facilities.'),
  -- muk in violet
  (89, 8900, 37, 'It’s so stinky! Muk’s body contains toxic elements, and any plant will wilt when it passes by.'),
  -- alolan-muk in violet
  (89, 8901, 37, 'What look like fangs and claws are actually crystallized poison that will afflict you at a mere touch, so don’t get too close.'),
  -- shellder in violet
  (90, 9000, 37, 'Clamping on to an opponent reveals its vulnerable parts, so it uses this move only as a last resort.'),
  -- cloyster in violet
  (91, 9100, 37, 'When attacked, it launches its spikes in quick volleys. Its innards have never been seen.'),
  -- gastly in violet
  (92, 9200, 37, 'Its body is made of gas. Despite lacking substance, it can envelop an opponent of any size and cause suffocation.'),
  -- haunter in violet
  (93, 9300, 37, 'In total darkness, where nothing is visible, Haunter lurks, silently stalking its next victim.'),
  -- gengar in violet
  (94, 9400, 37, 'Hiding in people’s shadows at night, it absorbs their heat. The chill it causes makes the victims shake.'),
  -- drowzee in violet
  (96, 9600, 37, 'When it twitches its nose, it can tell where someone is sleeping and what that person is dreaming about.'),
  -- hypno in violet
  (97, 9700, 37, 'Always holding a pendulum that it swings at a steady rhythm, it causes drowsiness in anyone nearby.'),
  -- voltorb in violet
  (100, 10000, 37, 'It’s usually found in power plants. Easily mistaken for a Poké Ball, it has zapped many people.'),
  -- electrode in violet
  (101, 10100, 37, 'It explodes in response to even minor stimuli. It is feared, with the nickname of the Bomb Ball.'),
  -- exeggcute in violet
  (102, 10200, 37, 'Using telepathy only fellow Exeggcute can pick up on, they always form a cluster of six.'),
  -- exeggutor in violet
  (103, 10300, 37, 'It is said that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.'),
  -- alolan-exeggutor in violet
  (103, 10301, 37, 'As it grew taller and taller, it outgrew its reliance on psychic powers, while within it awakened the power of the sleeping dragon.'),
  -- hitmonlee in violet
  (106, 10600, 37, 'It has complete control over the ligaments in its legs, expanding and contracting them to double the reach of its kicks.'),
  -- hitmonchan in violet
  (107, 10700, 37, 'Its fists are masses of muscle. It takes a break every three minutes to steady its breath and mood.'),
  -- koffing in violet
  (109, 10900, 37, 'The poisonous gases it contains are a little bit lighter than air. That’s why it’s always slightly airborne.'),
  -- weezing in violet
  (110, 11000, 37, 'When it inhales poisonous gases from garbage, its body expands, and its insides smell much worse.'),
  -- rhyhorn in violet
  (111, 11100, 37, 'Once it starts running, it won’t stop—even if it crashes through boulders. This disposition is what’s caused its habitat to expand.'),
  -- rhydon in violet
  (112, 11200, 37, 'It evolved to walk using only its hind legs, which has allowed it to expand its habitat even onto steep mountains.'),
  -- chansey in violet
  (113, 11300, 37, 'It walks carefully to prevent its egg from breaking. However, it is extremely fast at running away.'),
  -- horsea in violet
  (116, 11600, 37, 'It maintains balance using its tail, which is wound up like a coil. It may spray ink from its mouth.'),
  -- seadra in violet
  (117, 11700, 37, 'Its fin tips leak poison. Its fins and bones are highly valued as ingredients in herbal medicine.'),
  -- scyther in violet
  (123, 12300, 37, 'The sharp scythes on its forearms become increasingly sharp by cutting through hard objects.'),
  -- electabuzz in violet
  (125, 12500, 37, 'Research is progressing on storing lightning in Electabuzz so this energy can be used at any time.'),
  -- magmar in violet
  (126, 12600, 37, 'Wavering flames similar to those of the sun appear on the surface of this Pokémon’s body.'),
  -- tauros in violet
  (128, 12800, 37, 'They fight each other by locking horns. The herd’s protectors take pride in their battle-scarred horns.'),
  -- paldea-tauros-combat in violet
  (128, 12801, 37, 'This kind of Tauros, known as the Combat Breed, is distinguished by its thick, powerful muscles and its fierce disposition.'),
  -- paldea-tauros-blaze in violet
  (128, 12802, 37, 'People call this kind of Tauros the Blaze Breed due to the hot air it snorts from its nostrils. Its three tails are intertwined.'),
  -- paldea-tauros-aqua in violet
  (128, 12803, 37, 'It swims by jetting water from its horns. The most notable characteristic of the Aqua Breed is its high body fat, which allows it to float easily.'),
  -- magikarp in violet
  (129, 12900, 37, 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.'),
  -- gyarados in violet
  (130, 13000, 37, 'It appears whenever there is world conflict, burning down any place it travels through.'),
  -- lapras in violet
  (131, 13100, 37, 'Able to understand human speech and very intelligent, it loves to swim in the sea with people on its back.'),
  -- ditto in violet
  (132, 13200, 37, 'It can freely recombine its own cellular structure to transform into other life-forms.'),
  -- eevee in violet
  (133, 13300, 37, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from element stones.'),
  -- vaporeon in violet
  (134, 13400, 37, 'Its cell composition is similar to water molecules. As a result, it can’t be seen when it melts away into water.'),
  -- jolteon in violet
  (135, 13500, 37, 'If agitated, it uses electricity to straighten out its fur and launch it in small bunches.'),
  -- flareon in violet
  (136, 13600, 37, 'It fluffs out its fur collar to cool down its body temperature, which can reach 1,650 degrees Fahrenheit.'),
  -- porygon in violet
  (137, 13700, 37, 'Porygon is an artificial Pokémon created using advanced scientific means. It can move freely through cyberspace.'),
  -- snorlax in violet
  (143, 14300, 37, 'Its stomach’s digestive juices can dissolve any kind of poison. Eating things off the ground doesn’t bother it at all.'),
  -- dratini in violet
  (147, 14700, 37, 'It is born large to start with. It repeatedly sheds its skin as it steadily grows longer.'),
  -- dragonair in violet
  (148, 14800, 37, 'It is called the divine Pokémon. When its entire body brightens slightly, the weather changes.'),
  -- dragonite in violet
  (149, 14900, 37, 'It can fly in spite of its big and bulky physique. It circles the globe in just 16 hours.'),
  -- chikorita in violet
  (152, 15200, 37, 'Its pleasantly aromatic leaf has the ability to check the humidity and temperature of the area around it.'),
  -- bayleef in violet
  (153, 15300, 37, 'The scent that wafts from the leaves on its neck causes anyone who smells it to become energetic.'),
  -- meganium in violet
  (154, 15400, 37, 'Meganium’s breath holds within it the power to revive grasses and plants that have withered.'),
  -- cyndaquil in violet
  (155, 15500, 37, 'The fire that spouts from its back burns hottest when it is angry. The flaring flames intimidate foes.'),
  -- quilava in violet
  (156, 15600, 37, 'The fur covering this Pokémon’s body never burns, no matter what. It can shrug off any kind of fire attack.'),
  -- typhlosion in violet
  (157, 15700, 37, 'If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.'),
  -- totodile in violet
  (158, 15800, 37, 'This rough critter chomps at any moving object it sees. Turning your back on it is not recommended.'),
  -- croconaw in violet
  (159, 15900, 37, 'It opens its huge jaws wide to attack. If it loses fangs while biting, they’ll just keep on growing back, one after another.'),
  -- feraligatr in violet
  (160, 16000, 37, 'Although it has a massive body, its powerful hind legs enable it to move quickly, even on land.'),
  -- sentret in violet
  (161, 16100, 37, 'If it encounters a foe, it will stand up on its tail, making itself look bigger than usual to intimidate them.'),
  -- furret in violet
  (162, 16200, 37, 'It is nimble and has a very flexible body. Even if you get ahold of it, it’ll slip right out of your arms.'),
  -- hoothoot in violet
  (163, 16300, 37, 'Since it tells time precisely, some countries consider it to be a deity of wisdom, versed in the ways of the world.'),
  -- noctowl in violet
  (164, 16400, 37, 'Its extremely soft wings make no sound in flight. It silently sneaks up on prey without being detected.'),
  -- spinarak in violet
  (167, 16700, 37, 'Some fishers weave its sturdy thread into nets to catch fish Pokémon.'),
  -- ariados in violet
  (168, 16800, 37, 'It wanders in search of food after darkness falls, never nesting in a specific place.'),
  -- chinchou in violet
  (170, 17000, 37, 'It shoots positively and negatively charged electricity from the tips of its two antennae and stuns its opponents.'),
  -- lanturn in violet
  (171, 17100, 37, 'It blinds prey with an intense burst of light. With the prey incapacitated, the Pokémon swallows it in a single gulp.'),
  -- pichu in violet
  (172, 17200, 37, 'Despite this Pokémon’s cute appearance, those who want to live with one should prepare to be on the receiving end of its electric jolts.'),
  -- cleffa in violet
  (173, 17300, 37, 'Since it is often seen when shooting stars fill the night skies, it’s said to come here by riding on a star.'),
  -- igglybuff in violet
  (174, 17400, 37, 'It likes to sing but is not yet good at it. With praise and encouragement, it will get better little by little.'),
  -- mareep in violet
  (179, 17900, 37, 'Its fleece grows continually. In the summer, the fleece is fully shed, but it grows back in a week.'),
  -- flaaffy in violet
  (180, 18000, 37, 'Because of its rubbery, electricity-resistant skin, it can store lots of electricity in its fur.'),
  -- ampharos in violet
  (181, 18100, 37, 'When it gets dark, the light from its bright, shiny tail can be seen from far away on the ocean’s surface.'),
  -- bellossom in violet
  (182, 18200, 37, 'After it grows up, it leaves the forest it was born in to form groups with other Bellossom. It breaks into dance when it gets excited.'),
  -- marill in violet
  (183, 18300, 37, 'The oil-filled tail functions as a buoy, so it’s fine even in rivers with strong currents.'),
  -- azumarill in violet
  (184, 18400, 37, 'By keeping still and listening intently, it can tell what is in even wild, fast-moving rivers.'),
  -- sudowoodo in violet
  (185, 18500, 37, 'To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain.'),
  -- politoed in violet
  (186, 18600, 37, 'It’s the leader of Poliwag and Poliwhirl. When Politoed roars, they all cower in fear.'),
  -- hoppip in violet
  (187, 18700, 37, 'Outside of cold regions, Hoppip can be found practically everywhere. This is because the wind carries this species all over the world.'),
  -- skiploom in violet
  (188, 18800, 37, 'When the weather grows cold, Skiploom’s flower closes and the Pokémon cannot photosynthesize, so it flies away to warmer regions.'),
  -- jumpluff in violet
  (189, 18900, 37, 'Beware its cotton spores. If you accidentally breathe them in, you’ll be racked with coughs and itchiness.'),
  -- aipom in violet
  (190, 19000, 37, 'Its tail moves with greater dexterity than its hands. Making deft use of this tail, Aipom lives high among the treetops.'),
  -- sunkern in violet
  (191, 19100, 37, 'It is very weak. Its only means of defense is to shake its leaves desperately at its attacker.'),
  -- sunflora in violet
  (192, 19200, 37, 'Since it converts sunlight into energy, it is always looking in the direction of the sun.'),
  -- yanma in violet
  (193, 19300, 37, 'It can see in all directions without moving its big eyes, helping it spot both attackers and prey right away.'),
  -- wooper in violet
  (194, 19400, 37, 'When it walks around on land, it coats its body with a slimy, poisonous film.'),
  -- paldea-wooper in violet
  (194, 19401, 37, 'It’s dangerous for Wooper to travel alone. They line up in groups of three or four and help each other as they walk around the wetlands.'),
  -- quagsire in violet
  (195, 19500, 37, 'Due to its relaxed and carefree attitude, it often bumps its head on riverbed boulders and boat hulls as it swims.'),
  -- espeon in violet
  (196, 19600, 37, 'It uses the fine hair that covers its body to sense air currents and predict its enemy’s actions.'),
  -- umbreon in violet
  (197, 19700, 37, 'When darkness falls, the rings on the body begin to glow, striking fear in the hearts of anyone nearby.'),
  -- murkrow in violet
  (198, 19800, 37, 'If spotted, it will lure an unwary person into chasing it, then lose the pursuer on mountain trails.'),
  -- slowking in violet
  (199, 19900, 37, 'It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.'),
  -- galarian-slowking in violet
  (199, 19901, 37, 'It creates potions by mixing toxins with the food it’s eaten. Not even Slowking itself knows what effects the potions will have.'),
  -- misdreavus in violet
  (200, 20000, 37, 'It loves to bite and yank people’s hair from behind without warning, just to see their shocked reactions.'),
  -- girafarig in violet
  (203, 20300, 37, 'Girafarig’s tail has a small head. It instinctively bites at any foe that approaches the Pokémon from behind.'),
  -- pineco in violet
  (204, 20400, 37, 'It spits out a fluid that it uses to glue tree bark to its body. The fluid hardens when it touches air.'),
  -- forretress in violet
  (205, 20500, 37, 'Its entire body is shielded by a steel-hard shell. What lurks inside this shell is a total mystery.'),
  -- dunsparce in violet
  (206, 20600, 37, 'If spotted, it escapes by burrowing with its tail. It can float just slightly using its wings.'),
  -- gligar in violet
  (207, 20700, 37, 'It glides as if sliding. It startles foes by clamping on to their faces, then jabs with its poison stinger.'),
  -- snubbull in violet
  (209, 20900, 37, 'Its growls make its opponents uneasy. This laid-back Pokémon tends to sleep half the day.'),
  -- granbull in violet
  (210, 21000, 37, 'It can make most any Pokémon run away by opening its big mouth to reveal its thick fangs.'),
  -- qwilfish in violet
  (211, 21100, 37, 'Experienced fishers say they try to catch Qwilfish in the brief moment that these Pokémon become defenseless just after launching poisonous spikes.'),
  -- hisuian-qwilfish in violet
  (211, 21101, 37, 'It absorbs toxins from the food it eats. The distinct purple spikes on its body are evidence of its potent poison.'),
  -- scizor in violet
  (212, 21200, 37, 'It swings its eye-patterned pincers up to scare its foes. This makes it look like it has three heads.'),
  -- heracross in violet
  (214, 21400, 37, 'With its herculean powers, it can easily throw around an object that is 100 times its own weight.'),
  -- sneasel in violet
  (215, 21500, 37, 'This is a smart and sneaky Pokémon. A pair may work together to steal eggs by having one lure the parents away.'),
  -- teddiursa in violet
  (216, 21600, 37, 'Its paws are soaked in oodles of honey. When nervous, Teddiursa will lick its paws and soon have a smile back on its face.'),
  -- ursaring in violet
  (217, 21700, 37, 'It is quite skilled at climbing trees. If it comes across a Primeape while searching for berries in the treetops, trouble will surely ensue.'),
  -- slugma in violet
  (218, 21800, 37, 'It’s said that in ancient times, when volcanoes were more active, there were many more Slugma than there are now.'),
  -- magcargo in violet
  (219, 21900, 37, 'According to folklore, a sudden increase in the wild Magcargo population heralds a volcanic eruption.'),
  -- swinub in violet
  (220, 22000, 37, 'It rubs its snout against the ground, digging through the soil as it searches for food. Sometimes it digs up hot springs.'),
  -- piloswine in violet
  (221, 22100, 37, 'Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.'),
  -- delibird in violet
  (225, 22500, 37, 'It always carries its food with it, wherever it goes. If attacked, it throws its food at the opponent.'),
  -- skarmory in violet
  (227, 22700, 37, 'Since the feathers that it sheds are thin and sharp, people apparently once used them as swords.'),
  -- houndour in violet
  (228, 22800, 37, 'It uses different kinds of cries for communicating with others of its kind and for pursuing its prey.'),
  -- houndoom in violet
  (229, 22900, 37, 'Upon hearing its eerie howls, other Pokémon get the shivers and head straight back to their nests.'),
  -- kingdra in violet
  (230, 23000, 37, 'This Pokémon is said to sleep at the bottom of the sea—deeper than any other life-form can descend—building its energy.'),
  -- phanpy in violet
  (231, 23100, 37, 'It is far stronger than it appears. If a Phanpy is swinging its trunk around and your arm gets hit by it, your arm bone will shatter.'),
  -- donphan in violet
  (232, 23200, 37, 'Donphan is normally a calm Pokémon, but once it is enraged, it will curl its body into a ball and charge at you while rolling.'),
  -- porygon2 in violet
  (233, 23300, 37, 'Porygon was upgraded to become capable of planetary development. However, this upgraded version cannot even fly yet.'),
  -- stantler in violet
  (234, 23400, 37, 'It’s said that this Pokémon used to be stronger long ago when it had many enemies, and that it was even able to evolve under its own power.'),
  -- smeargle in violet
  (235, 23500, 37, 'The color of the mysterious fluid secreted from the tip of the tail is predetermined for each Smeargle.'),
  -- tyrogue in violet
  (236, 23600, 37, 'Its intense desire to become stronger and stronger drives it to recklessly train its body and challenge any opponent it can find to battle.'),
  -- hitmontop in violet
  (237, 23700, 37, 'It spins on its horn while dealing out elegant kicks. Its horn grows continuously through its lifetime.'),
  -- elekid in violet
  (239, 23900, 37, 'It rotates its arms to generate electricity, but it tires easily, so it only charges up a little bit.'),
  -- magby in violet
  (240, 24000, 37, 'Magma-like blood circulates throughout this Pokémon’s body, raising its body temperature as high as 1,100 degrees Fahrenheit.'),
  -- blissey in violet
  (242, 24200, 37, 'The eggs it lays are filled with happiness. Eating even one bite will bring a smile to anyone.'),
  -- larvitar in violet
  (246, 24600, 37, 'It is born deep underground. It can’t emerge until it has entirely consumed the soil around it.'),
  -- pupitar in violet
  (247, 24700, 37, 'Its shell is as hard as bedrock, and it is also very strong. Its thrashing can topple a mountain.'),
  -- tyranitar in violet
  (248, 24800, 37, 'In just one of its mighty hands, it has the power to make the ground shake and mountains crumble.'),
  -- treecko in violet
  (252, 25200, 37, 'Treecko can quickly scale even vertical surfaces. It senses humidity with its tail to predict the next day’s weather.'),
  -- grovyle in violet
  (253, 25300, 37, 'Grovyle leaps from branch to branch in large trees, moving with ease. It propels itself with astounding speed and force.'),
  -- sceptile in violet
  (254, 25400, 37, 'The leaves on its arms are as sharp as swords. It agilely leaps about the branches of trees to strike its enemies.'),
  -- torchic in violet
  (255, 25500, 37, 'In its belly, it has a sac filled with burning fire, meaning that Torchic feels as warm as a hot-water bottle if you hug it.'),
  -- combusken in violet
  (256, 25600, 37, 'When it enters battle, the flame inside its body burns stronger. Its kicks have outstanding destructive power.'),
  -- blaziken in violet
  (257, 25700, 37, 'It can jump powerfully, clearing a 30-story building in a single leap. Its flaming punches scorch its opponents.'),
  -- mudkip in violet
  (258, 25800, 37, 'When it uses its large tail fin, it picks up speed rapidly in the water. It is strong in spite of its small size.'),
  -- marshtomp in violet
  (259, 25900, 37, 'It is at its best when on muddy ground that offers poor footing. It quickly overwhelms opponents that are bogged down and unable to move.'),
  -- swampert in violet
  (260, 26000, 37, 'Swampert’s arms are rock-hard. With one swing, they can batter down Swampert’s foes. This Pokémon makes its nest on beautiful beaches.'),
  -- poochyena in violet
  (261, 26100, 37, 'Poochyena pursue their prey in packs. Once the prey is exhausted, the pack finishes it off. But sometimes the prey retaliates, and the pack flees.'),
  -- mightyena in violet
  (262, 26200, 37, 'Once it’s caught the scent of faraway prey, the leader gives a signal, and the whole pack moves out.'),
  -- lotad in violet
  (270, 27000, 37, 'Lotad will gather in lakes that have good water quality. The surfaces of these lakes sometimes become covered in Lotad leaves.'),
  -- lombre in violet
  (271, 27100, 37, 'It prefers waterfronts with plentiful food. It became nocturnal so it wouldn’t have to compete for food with bird Pokémon.'),
  -- ludicolo in violet
  (272, 27200, 37, 'Dancing with an upbeat rhythm energizes and emboldens it, letting it face any foe without fear.'),
  -- seedot in violet
  (273, 27300, 37, 'Seedot live in trees, hanging from the branches and leeching moisture. Rows of them can be found dangling from large, young trees.'),
  -- nuzleaf in violet
  (274, 27400, 37, 'Its sensory functions are concentrated in its pointed nose, which it uses to sense its surroundings. The nose is also its weak point.'),
  -- shiftry in violet
  (275, 27500, 37, 'Legends tell of a bird Pokémon that received divine punishment for its evil deeds and had its beak and wings replaced.'),
  -- wingull in violet
  (278, 27800, 37, 'It rides upon ocean winds as if it were a glider. In the winter, it hides food around its nest.'),
  -- pelipper in violet
  (279, 27900, 37, 'It protects its young in its beak. It bobs on waves, resting on them on days when the waters are calm.'),
  -- ralts in violet
  (280, 28000, 37, 'It is highly attuned to the emotions of people and Pokémon. It hides if it senses hostility.'),
  -- kirlia in violet
  (281, 28100, 37, 'The cheerful spirit of its Trainer gives it energy for its psychokinetic power. It spins and dances when happy.'),
  -- gardevoir in violet
  (282, 28200, 37, 'It unleashes psychokinetic energy at full power when protecting a Trainer it has bonded closely with.'),
  -- surskit in violet
  (283, 28300, 37, 'It secretes a thick, sweet-scented syrup from the tip of its head. It lives on weed-choked ponds.'),
  -- masquerain in violet
  (284, 28400, 37, 'The antennae have distinctive patterns that look like eyes. When it rains, they grow heavy, making flight impossible.'),
  -- shroomish in violet
  (285, 28500, 37, 'If it senses danger, it scatters spores from the top of its head to protect itself.'),
  -- breloom in violet
  (286, 28600, 37, 'The seeds on its tail are made of toxic spores. It knocks out foes with quick, virtually invisible punches.'),
  -- slakoth in violet
  (287, 28700, 37, 'The way Slakoth lolls around makes anyone who watches it feel like doing the same.'),
  -- vigoroth in violet
  (288, 28800, 37, 'It is always hungry because it won’t stop rampaging. Even while it is eating, it can’t keep still.'),
  -- slaking in violet
  (289, 28900, 37, 'This Pokémon lives lying on its side. It only rolls over and moves when there is no more grass to eat.'),
  -- makuhita in violet
  (296, 29600, 37, 'It toughens up by slamming into thick trees over and over. It gains a sturdy body and dauntless spirit.'),
  -- hariyama in violet
  (297, 29700, 37, 'It stomps on the ground to build power. It can send a 10-ton truck flying with a straight-arm punch.'),
  -- azurill in violet
  (298, 29800, 37, 'Its tail is packed full of the nutrients it needs to grow.'),
  -- nosepass in violet
  (299, 29900, 37, 'When endangered, it may protect itself by increasing its magnetism and drawing nearby iron objects to its body.'),
  -- sableye in violet
  (302, 30200, 37, 'Materials from gems it has eaten float to the surface of its body and can form an infinite number of patterns among individuals.'),
  -- meditite in violet
  (307, 30700, 37, 'It meditates to heighten its inner energy and to float in the air. It eats one berry a day.'),
  -- medicham in violet
  (308, 30800, 37, 'It elegantly avoids attacks with dance-like steps, then launches a devastating blow in the same motion.'),
  -- plusle in violet
  (311, 31100, 37, 'This Pokémon absorbs electricity from telephone poles. It shorts out the electricity stored inside its body to create noises.'),
  -- minun in violet
  (312, 31200, 37, 'Its dislike of water makes it take shelter under the eaves of houses in rain. It uses pom-poms made of sparks for cheering.'),
  -- volbeat in violet
  (313, 31300, 37, 'It flashes the light on its rear to communicate with other Volbeat. It loves the sweet aroma given off by Illumise.'),
  -- illumise in violet
  (314, 31400, 37, 'It guides Volbeat to draw signs in the night sky. There are scholars who research the meaning of these signs.'),
  -- gulpin in violet
  (316, 31600, 37, 'It has a small heart and brain. Its stomach comprises most of its body, with enzymes to dissolve anything.'),
  -- swalot in violet
  (317, 31700, 37, 'It can swallow a tire whole in one gulp. It secretes a horribly toxic fluid from the pores on its body.'),
  -- numel in violet
  (322, 32200, 37, 'The flaming magma it stores in the hump on its back is the source of its tremendous power.'),
  -- camerupt in violet
  (323, 32300, 37, 'If angered, the humps on its back erupt in a shower of molten lava. It lives in the craters of volcanoes.'),
  -- torkoal in violet
  (324, 32400, 37, 'Coal is the source of Torkoal’s energy. Large amounts of coal can be found in the mountains where they live.'),
  -- spoink in violet
  (325, 32500, 37, 'Using its tail like a spring, it keeps its heart beating by bouncing constantly. If it stops, it dies.'),
  -- grumpig in violet
  (326, 32600, 37, 'It uses black pearls to amplify its psychic power. It does a strange dance to control foes'' minds.'),
  -- trapinch in violet
  (328, 32800, 37, 'As it digs through the sand, its giant jaws crush any rocks that obstruct its path. It builds a funnel-shaped nest.'),
  -- vibrava in violet
  (329, 32900, 37, 'It generates ultrasonic waves by vigorously vibrating its wings. After making its prey faint, it dissolves the prey with its digestive juices.'),
  -- flygon in violet
  (330, 33000, 37, 'The sound of its wings flapping resembles singing. Those entranced by this sound get lured into a sandstorm and become Flygon’s prey.'),
  -- cacnea in violet
  (331, 33100, 37, 'It lives in arid locations. Its yellow flowers bloom once a year.'),
  -- cacturne in violet
  (332, 33200, 37, 'It lives in deserts. It becomes active at night when it hunts for prey exhausted from the desert’s heat.'),
  -- swablu in violet
  (333, 33300, 37, 'It can’t relax if it or its surroundings are not clean. It wipes off dirt with its wings.'),
  -- altaria in violet
  (334, 33400, 37, 'On sunny days, it flies freely through the sky and blends into the clouds. It sings in a beautiful soprano.'),
  -- zangoose in violet
  (335, 33500, 37, 'If it comes across a Seviper, its fur bristles and it assumes its battle pose. Its sharp claws are its best weapon.'),
  -- seviper in violet
  (336, 33600, 37, 'Constant polishing makes the edge of the blade on its tail extremely sharp. It’s Zangoose’s archrival.'),
  -- barboach in violet
  (339, 33900, 37, 'It probes muddy riverbeds with its two long whiskers. A slimy film protects its body.'),
  -- whiscash in violet
  (340, 34000, 37, 'Sighting Whiscash leaping from the water is believed to herald an earthquake.'),
  -- corphish in violet
  (341, 34100, 37, 'It can live in impure water, where it doesn’t need to compete with other water Pokémon for food, so its numbers have steadily increased.'),
  -- crawdaunt in violet
  (342, 34200, 37, 'A rough customer that wildly flails its giant claws. It is said to be extremely hard to raise.'),
  -- feebas in violet
  (349, 34900, 37, 'It is the shabbiest Pokémon of all. It forms schools and lives at the bottom of rivers that teem with plant life.'),
  -- milotic in violet
  (350, 35000, 37, 'It lives at the bottom of clear lakes. In times of war, it shows itself, which soothes people’s minds and hearts.'),
  -- shuppet in violet
  (353, 35300, 37, 'It feeds on the dark emotions of sadness and hatred, which make it grow steadily stronger.'),
  -- banette in violet
  (354, 35400, 37, 'Strong feelings of hatred turned a puppet into a Pokémon. If it opens its mouth, its cursed energy escapes.'),
  -- duskull in violet
  (355, 35500, 37, 'Duskull’s victims suffer an intense chill as the Pokémon siphons their life-force away, glaring at them with its bright red eye all the while.'),
  -- dusclops in violet
  (356, 35600, 37, 'Dusclops’s true form is said to be a bright red eye burning within its body, but no one has ever seen such a thing.'),
  -- tropius in violet
  (357, 35700, 37, 'Delicious fruits grew out from around its neck because it always ate the same kind of fruit.'),
  -- chimecho in violet
  (358, 35800, 37, 'Its cries echo inside its hollow body to emerge as beautiful notes for startling and repelling foes.'),
  -- snorunt in violet
  (361, 36100, 37, 'It is said that a home visited by a Snorunt will prosper. It can withstand cold of -150 degrees Fahrenheit.'),
  -- glalie in violet
  (362, 36200, 37, 'It prevents prey from escaping by instantaneously freezing moisture in the air.'),
  -- luvdisc in violet
  (370, 37000, 37, 'During the spawning season, countless Luvdisc congregate at coral reefs, turning the waters pink.'),
  -- bagon in violet
  (371, 37100, 37, 'Its belief that it will be able to fly one day is apparently the influence of information carried in its genes.'),
  -- shelgon in violet
  (372, 37200, 37, 'Its armored body makes all attacks bounce off. The armor is too tough, however, making it heavy and somewhat sluggish.'),
  -- salamence in violet
  (373, 37300, 37, 'It becomes uncontrollable if it is enraged. It destroys everything with shredding claws and fire.'),
  -- beldum in violet
  (374, 37400, 37, 'All its cells are magnets. It communicates with others of its kind by transmitting magnetic forces from its body.'),
  -- metang in violet
  (375, 37500, 37, 'It adores magnetic minerals, so it pursues Nosepass at speeds exceeding 60 mph.'),
  -- metagross in violet
  (376, 37600, 37, 'It firmly pins its prey using its four claws and large body. Then Metagross uses the mouth on its stomach to chew its prey to bits.'),
  -- turtwig in violet
  (387, 38700, 37, 'It uses its whole body to photosynthesize when exposed to sunlight. Its shell is made from hardened soil.'),
  -- grotle in violet
  (388, 38800, 37, 'It knows where pure water wells up. It carries fellow Pokémon there on its back.'),
  -- torterra in violet
  (389, 38900, 37, 'Some Pokémon are born on a Torterra’s back and spend their entire life there.'),
  -- chimchar in violet
  (390, 39000, 37, 'The gas made in its belly burns from its rear end. The fire burns weakly when it feels sick.'),
  -- monferno in violet
  (391, 39100, 37, 'A bigger fire on its tail and a brighter blue pattern on its face means it holds a higher rank in its troop.'),
  -- infernape in violet
  (392, 39200, 37, 'It uses unique fighting moves with fire on its hands and feet. It will take on any opponent.'),
  -- piplup in violet
  (393, 39300, 37, 'It doesn’t like to be taken care of. It’s difficult to bond with since it won’t listen to its Trainer.'),
  -- prinplup in violet
  (394, 39400, 37, 'Because every Prinplup considers itself to be the most important, they can never form a group.'),
  -- empoleon in violet
  (395, 39500, 37, 'It avoids unnecessary disputes, but it will mercilessly decimate anything that threatens the safety of its colony.'),
  -- starly in violet
  (396, 39600, 37, 'Because they are weak individually, they form groups. However, they bicker if the group grows too big.'),
  -- staravia in violet
  (397, 39700, 37, 'They maintain huge flocks, although fierce scuffles break out between various flocks.'),
  -- staraptor in violet
  (398, 39800, 37, 'It never stops attacking even if it is injured. It fusses over the shape of its comb.'),
  -- kricketot in violet
  (401, 40100, 37, 'When its antennae hit each other, it sounds like the music of a xylophone.'),
  -- kricketune in violet
  (402, 40200, 37, 'There is a village that hosts a contest based on the amazingly variable cries of this Pokémon.'),
  -- shinx in violet
  (403, 40300, 37, 'The extension and contraction of its muscles generates electricity. Its fur glows when it’s in trouble.'),
  -- luxio in violet
  (404, 40400, 37, 'By gathering their tails together, they collectively generate powerful electricity from their claws.'),
  -- luxray in violet
  (405, 40500, 37, 'Luxray’s ability to see through objects comes in handy when it’s scouting for danger.'),
  -- cranidos in violet
  (408, 40800, 37, 'Cranidos toughen up their already sturdy heads by headbutting one another.'),
  -- rampardos in violet
  (409, 40900, 37, 'If two were to smash their heads together, their foot-thick skulls would keep them from fainting.'),
  -- shieldon in violet
  (410, 41000, 37, 'This Pokémon lived in primeval jungles. It’s thought that Shieldon had few enemies thanks to its sturdy face.'),
  -- bastiodon in violet
  (411, 41100, 37, 'Bastiodon live in herds. When assaulted by enemies, they line up side by side and use their hard faces to block attacks.'),
  -- combee in violet
  (415, 41500, 37, 'The trio is together from birth. It constantly gathers nectar from flowers to please Vespiquen.'),
  -- vespiquen in violet
  (416, 41600, 37, 'It raises grubs in the holes in its body. It secretes pheromones to control Combee.'),
  -- pachirisu in violet
  (417, 41700, 37, 'A pair may be seen rubbing their cheek pouches together in an effort to share stored electricity.'),
  -- buizel in violet
  (418, 41800, 37, 'It inflates its flotation sac, keeping its face above water in order to watch for prey movement.'),
  -- floatzel in violet
  (419, 41900, 37, 'It is a common sight around fishing ports. It is known to rescue people and help fishers carry what they caught.'),
  -- shellos in violet
  (422, 42200, 37, 'It oozes a purple fluid to deter enemies. Apparently, there are more West Sea Shellos now than there were in the past.'),
  -- shellos-east in violet
  (422, 42201, 37, 'This Pokémon can often be seen along seashores. It’s capable of spending a limited amount of time on land.'),
  -- gastrodon in violet
  (423, 42300, 37, 'It appears on beaches where the waters are shallow. Once it catches prey, it will slowly melt them with its mucus before slurping them up.'),
  -- gastrodon-east in violet
  (423, 42301, 37, 'Fishers say that they didn’t see many of these Pokémon in the past, but this form of Gastrodon is now increasing in number.'),
  -- ambipom in violet
  (424, 42400, 37, 'Split into two, the tails are so adept at handling and doing things that Ambipom rarely uses its hands.'),
  -- drifloon in violet
  (425, 42500, 37, 'Because of the way it floats aimlessly, an old folktale calls it a “signpost for wandering spirits.”'),
  -- drifblim in violet
  (426, 42600, 37, 'They carry people and Pokémon, but the wind can catch them, so there can’t be a fixed destination.'),
  -- mismagius in violet
  (429, 42900, 37, 'Its cries sound like incantations to torment the foe. It appears where you least expect it.'),
  -- honchkrow in violet
  (430, 43000, 37, 'A single cry from this nocturnal Pokémon, and more than 100 of its Murkrow cronies will assemble.'),
  -- chingling in violet
  (433, 43300, 37, 'It emits high-frequency cries that people can’t hear. Once it starts, it can cry for an awfully long time.'),
  -- stunky in violet
  (434, 43400, 37, 'The foul fluid from its rear is so revolting that it can make people feel queasy up to a mile and a quarter away.'),
  -- skuntank in violet
  (435, 43500, 37, 'It attacks by spraying a repugnant fluid from its tail, but the stench dulls after a few squirts.'),
  -- bronzor in violet
  (436, 43600, 37, 'They are found in ancient tombs. The patterns on their backs are said to be imbued with mysterious power.'),
  -- bronzong in violet
  (437, 43700, 37, 'It brought rains by opening portals to another world. It was revered as a bringer of plentiful harvests.'),
  -- bonsly in violet
  (438, 43800, 37, 'From its eyes, it can expel excess moisture from its body. This liquid is similar in composition to human sweat.'),
  -- happiny in violet
  (440, 44000, 37, 'It carefully carries a round, white rock that it thinks is an egg. It’s bothered by how curly its hair looks.'),
  -- spiritomb in violet
  (442, 44200, 37, 'It was formed by uniting 108 spirits. It has been bound to the Odd Keystone to keep it from doing any mischief.'),
  -- gible in violet
  (443, 44300, 37, 'It nests in horizontal holes warmed by geothermal heat. Foes who get too close can expect to be pounced on and bitten.'),
  -- gabite in violet
  (444, 44400, 37, 'It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest.'),
  -- garchomp in violet
  (445, 44500, 37, 'The protuberances on its head serve as sensors. It can even detect distant prey.'),
  -- munchlax in violet
  (446, 44600, 37, 'When it is voraciously gulping down food, it forgets about the food it has hidden under its fur.'),
  -- riolu in violet
  (447, 44700, 37, 'It has the peculiar power of being able to see emotions, such as joy and rage, in the form of waves.'),
  -- lucario in violet
  (448, 44800, 37, 'A well-trained one can use its aura to identify and take in the feelings of creatures over half a mile away.'),
  -- hippopotas in violet
  (449, 44900, 37, 'It shrouds itself in sand to ward off germs. It travels easily through the sands of the desert.'),
  -- hippowdon in violet
  (450, 45000, 37, 'It brandishes its gaping mouth in a display of fearsome strength. It raises vast quantities of sand while attacking.'),
  -- croagunk in violet
  (453, 45300, 37, 'It rarely fights fairly, but that is strictly to ensure survival. It is popular as a mascot.'),
  -- toxicroak in violet
  (454, 45400, 37, 'It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.'),
  -- finneon in violet
  (456, 45600, 37, 'It absorbs sunlight with the pink areas of its skin, which then shine. This appears to be a form of camouflage.'),
  -- lumineon in violet
  (457, 45700, 37, 'Lumineon swimming in the darkness of the deep sea look like stars shining in the night sky.'),
  -- snover in violet
  (459, 45900, 37, 'Seemingly curious about people, they gather around footsteps they find on snowy mountains.'),
  -- abomasnow in violet
  (460, 46000, 37, 'They appear when the snow flowers bloom. When the petals fall, they retreat to places unknown again.'),
  -- weavile in violet
  (461, 46100, 37, 'They travel in groups of four or five, leaving signs for one another on trees and rocks. They bring down their prey with coordinated attacks.'),
  -- magnezone in violet
  (462, 46200, 37, 'Exposure to a special magnetic field changed Magneton’s molecular structure, turning it into Magnezone.'),
  -- rhyperior in violet
  (464, 46400, 37, 'A Rhyperior’s brain is smaller than a Rhydon’s, but the Rhyperior is stronger because it spends more energy on battling and less on brainpower.'),
  -- electivire in violet
  (466, 46600, 37, 'This Pokémon presses the tips of its tails onto an opponent and instantly sends over 20,000 volts of high-voltage electricity through them.'),
  -- magmortar in violet
  (467, 46700, 37, 'They dwell in volcanic craters. It’s said that only a single pair of Magmortar will inhabit any given volcano.'),
  -- yanmega in violet
  (469, 46900, 37, 'Its jaw power is incredible. It is adept at biting apart foes while flying by at high speed.'),
  -- leafeon in violet
  (470, 47000, 37, 'The younger they are, the more they smell like fresh grass. With age, their fragrance takes on the odor of fallen leaves.'),
  -- glaceon in violet
  (471, 47100, 37, 'It lowers its body heat to freeze its fur. The hairs then become like needles it can fire.'),
  -- gliscor in violet
  (472, 47200, 37, 'It flies soundlessly through the sky. It catches prey with its long tail, then lunges at the prey’s vulnerable spots with its fangs.'),
  -- mamoswine in violet
  (473, 47300, 37, 'A frozen one was dug up from soil dating back 10,000 years. It woke up, to much amazement.'),
  -- porygon-z in violet
  (474, 47400, 37, 'Its programming was modified to enable it to operate in other dimensions. This did not work as planned.'),
  -- gallade in violet
  (475, 47500, 37, 'Because it can sense what its foe is thinking, its attacks burst out first, fast, and fierce.'),
  -- probopass in violet
  (476, 47600, 37, 'Probopass radiates such a powerful magnetic field that nearby electrical appliances are rendered useless while it’s around.'),
  -- dusknoir in violet
  (477, 47700, 37, 'It comes and goes between this world and the afterlife. People fear this Pokémon because it is said to suck in lost spirits and take them along.'),
  -- froslass in violet
  (478, 47800, 37, 'It freezes prey by blowing its −58 degree Fahrenheit breath. It is said to then secretly display its prey.'),
  -- rotom in violet
  (479, 47900, 37, 'Research continues on this Pokémon, which could be the power source of a unique motor.'),
  -- rotom-heat in violet
  (479, 47901, 37, 'This Rotom has possessed a convection microwave oven. It will sear the surrounding area with its burning heat, then smile in delight.'),
  -- rotom-wash in violet
  (479, 47902, 37, 'The model of washing machine that Rotom can inspirit has been discontinued, so these appliances are now traded at high prices.'),
  -- rotom-frost in violet
  (479, 47903, 37, 'The special motor within the refrigerator is the key to bringing about Rotom’s change in form.'),
  -- rotom-fan in violet
  (479, 47904, 37, 'There are several appliances that Rotom can inspirit, but the first one to be developed was the electric fan.'),
  -- rotom-mow in violet
  (479, 47905, 37, 'This Rotom has possessed a lawn mower. It will mow down grass and flowers, then swagger around with pride at its accomplishments.'),
  -- snivy in violet
  (495, 49500, 37, 'It prefers to avoid groups. In its day-to-day life, it dexterously controls its vines to compensate for its short arms.'),
  -- servine in violet
  (496, 49600, 37, 'Servine’s one weakness is its inflated sense of pride. It takes a while for Servine to be able to cooperate with other Pokémon.'),
  -- serperior in violet
  (497, 49700, 37, 'An intimidating gaze and majestic appearance have caused this Pokémon to be known as the Lord of the Forest.'),
  -- tepig in violet
  (498, 49800, 37, 'This Pokémon is a ravenous glutton. It uses its excellent sense of smell to find food, then cooks it to a crisp before eating.'),
  -- pignite in violet
  (499, 49900, 37, 'When defending its friends, Pignite will stand up to any opponent, no matter how strong. But it’s powerless when faced with an empty stomach.'),
  -- emboar in violet
  (500, 50000, 37, 'The direr the situation, the more it seems to enjoy itself. The flames around its neck intensify, too, increasing Emboar’s power and speed.'),
  -- oshawott in violet
  (501, 50100, 37, 'It’s said that Oshawott learned to maintain its scalchop with riverbed stones by mimicking humans it saw using whetstones.'),
  -- dewott in violet
  (502, 50200, 37, 'Dewott has a studious and stern personality. It masters the use of its scalchops through dedicated, repeated training.'),
  -- samurott in violet
  (503, 50300, 37, 'Samurott leads its group strictly. Those who do not follow its rules receive a merciless thrashing.'),
  -- blitzle in violet
  (522, 52200, 37, 'This Pokémon prefers places with lots of lightning strikes. It catches lightning with its mane and stores the electricity within its body.'),
  -- zebstrika in violet
  (523, 52300, 37, 'Once the herd hears thunder, it chases after the storm clouds so that the Blitzle in the group can use the lightning to charge up.'),
  -- drilbur in violet
  (529, 52900, 37, 'It makes its way swiftly through the soil by putting both claws together and rotating at high speed.'),
  -- excadrill in violet
  (530, 53000, 37, 'Its drill, which has evolved into steel, is strong enough to bore through iron plates. This Pokémon is a great help in tunnel construction.'),
  -- timburr in violet
  (532, 53200, 37, 'It fights by swinging a piece of lumber around. It is close to evolving when it can handle heavy lumber without difficulty.'),
  -- gurdurr in violet
  (533, 53300, 37, 'This Pokémon is so muscular and strongly built that even a group of wrestlers could not make it budge an inch.'),
  -- conkeldurr in violet
  (534, 53400, 37, 'Rather than rely on their strength, they master moves that make good use of centrifugal force to swing around concrete.'),
  -- sewaddle in violet
  (540, 54000, 37, 'The bumps on their heads are sensory organs. When Sewaddle meet, they greet each other by rubbing these bumps together.'),
  -- swadloon in violet
  (541, 54100, 37, 'Swadloon wraps itself in leaves for protection. It uses the two leaves atop its head to detect air movements and feel out its surroundings.'),
  -- leavanny in violet
  (542, 54200, 37, 'It fashions clothing from woven leaves. Though gentle in disposition, it will show no mercy to foes who target young Pokémon.'),
  -- cottonee in violet
  (546, 54600, 37, 'When attacked, it escapes by shooting cotton from its body. The cotton serves as a decoy to distract the attacker.'),
  -- whimsicott in violet
  (547, 54700, 37, 'It rides on the wind and slips into people’s homes. After it has turned a room into a cotton- filled mess, it giggles to itself and takes off.'),
  -- petilil in violet
  (548, 54800, 37, 'If the leaves on its head are pruned with regularity, this Pokémon can be grown into a fine plump shape.'),
  -- lilligant in violet
  (549, 54900, 37, 'No matter how much time and money is spent raising it, its flowers are the most beautiful when they bloom in the wild.'),
  -- basculin in violet
  (550, 55000, 37, 'It’s so vicious that it’s called the Thug of the River. Yet Basculin is still targeted by predators, such as Dondozo and Bombirdier.'),
  -- basculin-blue-striped in violet
  (550, 55001, 37, 'The power of its jaws is immense—enough to leave teeth marks in iron sheets. Its personality is also extremely vicious.'),
  -- basculin-white-striped in violet
  (550, 55002, 37, 'Its ecology is starkly different from that of other Basculin, so theories that it’s a totally different species have gained traction in recent years.'),
  -- sandile in violet
  (551, 55100, 37, 'They live hidden under hot desert sands in order to keep their body temperature from dropping.'),
  -- krokorok in violet
  (552, 55200, 37, 'Thanks to the special membrane covering its eyes, it can see its surroundings clearly, even in the middle of the night.'),
  -- krookodile in violet
  (553, 55300, 37, 'Its unique faculty of sight can detect small prey more than 30 miles away, even in the midst of a sandstorm.'),
  -- scraggy in violet
  (559, 55900, 37, 'It will abruptly headbutt anyone that makes eye contact with it. Its skull is extremely hard.'),
  -- scrafty in violet
  (560, 56000, 37, 'This Pokémon may be rude, but it takes very good care of its family, its friends, and its turf.'),
  -- zorua in violet
  (570, 57000, 37, 'To protect themselves from danger, they hide their true identities by transforming into people and Pokémon.'),
  -- zoroark in violet
  (571, 57100, 37, 'Each has the ability to fool a large group of people simultaneously. They protect their lair with illusory scenery.'),
  -- minccino in violet
  (572, 57200, 37, 'These Pokémon like things neat and tidy. They are always sweeping and dusting their habitat, using their tails as brooms.'),
  -- cinccino in violet
  (573, 57300, 37, 'The oil that seeps from its body is really smooth. For people troubled by bad skin, this oil is an effective treatment.'),
  -- gothita in violet
  (574, 57400, 37, 'Beware of touching the ribbon-shaped feelers that control its psychic power. Gothita will begin bawling if you do.'),
  -- gothorita in violet
  (575, 57500, 37, 'Using its psychic power, it arranges pebbles to form the shapes of constellations. Some people believe this Pokémon came from outer space.'),
  -- gothitelle in violet
  (576, 57600, 37, 'It gazes at the stars to predict the future. It acts somewhat detached because it has seen the end of all existence.'),
  -- solosis in violet
  (577, 57700, 37, 'They drive away attackers by unleashing psychic power. They can use telepathy to talk with others.'),
  -- duosion in violet
  (578, 57800, 37, 'When their brains, now divided in two, are thinking the same thoughts, these Pokémon exhibit their maximum power.'),
  -- reuniclus in violet
  (579, 57900, 37, 'When Reuniclus shake hands, a network forms between their brains, increasing their psychic power.'),
  -- ducklett in violet
  (580, 58000, 37, 'It strengthens its body by diving into the depths of ponds, swimming around while looking for bog moss to eat.'),
  -- swanna in violet
  (581, 58100, 37, 'It’s said that many artists have taken inspiration from the sight of a Swanna performing a beautiful dance in the light of dawn.'),
  -- deerling in violet
  (585, 58500, 37, 'Despite Deerling’s adorable appearance, farmers consider it a nuisance since it loves plant shoots and will eat them all up.'),
  -- deerling-summer in violet
  (585, 58501, 37, 'Deerling have different scents depending on the season. When a distinct grassy smell starts to waft from one, you know that summer has begun.'),
  -- deerling-autumn in violet
  (585, 58502, 37, 'Deerling have different scents depending on the season. In this form, Deerling have a softly sweet scent that lingers in the nose.'),
  -- deerling-winter in violet
  (585, 58503, 37, 'This Pokémon will playfully headbutt those it gets along well with. It has antlers hidden under its flower, so the headbutts are a little painful.'),
  -- sawsbuck in violet
  (586, 58600, 37, 'There are many Sawsbuck enthusiasts. The paler the pink flowers that bloom on its antlers, the more beautiful the Sawsbuck is considered to be.'),
  -- sawsbuck-summer in violet
  (586, 58601, 37, 'This Pokémon’s leaves can be made into a black tea, the taste of which varies depending on the region of origin. Paldea’s is especially aromatic.'),
  -- sawsbuck-autumn in violet
  (586, 58602, 37, 'Sawsbuck in their Autumn Form are known for having very short tempers. The males fight each other incessantly.'),
  -- sawsbuck-winter in violet
  (586, 58603, 37, 'Though there are many enthusiasts for Sawsbuck as a species, this seasonal form in particular is not very popular.'),
  -- foongus in violet
  (590, 59000, 37, 'This Pokémon prefers damp places. It spurts out poison spores to repel approaching enemies.'),
  -- amoonguss in violet
  (591, 59100, 37, 'Amoonguss mimics Poké Balls. It is not yet clear whether this mimicry is effective against other Pokémon.'),
  -- alomomola in violet
  (594, 59400, 37, 'They float upon the open sea. Many water Pokémon gather in the area around Alomomola.'),
  -- joltik in violet
  (595, 59500, 37, 'Since it can’t generate its own electricity, it sticks onto large-bodied Pokémon and absorbs static electricity.'),
  -- galvantula in violet
  (596, 59600, 37, 'When attacked, they create an electric barrier by spitting out many electrically charged threads.'),
  -- tynamo in violet
  (602, 60200, 37, 'These Pokémon move in schools. They have an electricity-generating organ, so they discharge electricity if in danger.'),
  -- eelektrik in violet
  (603, 60300, 37, 'These Pokémon have a big appetite. When they spot their prey, they attack it and paralyze it with electricity.'),
  -- eelektross in violet
  (604, 60400, 37, 'It latches on to prey with its sucker mouth, sinking in its fangs and shocking the prey with powerful electricity.'),
  -- litwick in violet
  (607, 60700, 37, 'While shining a light and pretending to be a guide, it leeches off the life-force of any who follow it.'),
  -- lampent in violet
  (608, 60800, 37, 'The spirits it absorbs fuel its baleful fire. It hangs around hospitals waiting for people to pass on.'),
  -- chandelure in violet
  (609, 60900, 37, 'It absorbs spirits, which it then burns. By waving the flames on its arms, it puts its foes into a hypnotic trance.'),
  -- axew in violet
  (610, 61000, 37, 'If you see peculiar teeth marks on boulders or trees, it means an Axew is likely living nearby.'),
  -- fraxure in violet
  (611, 61100, 37, 'Fraxure uses its thick tusks to neatly cut prey into two portions—one to eat now and one to save for later.'),
  -- haxorus in violet
  (612, 61200, 37, 'It overwhelms enemies with its prized tusks, which are sharp enough to cut through a metal transmission tower in one strike.'),
  -- cubchoo in violet
  (613, 61300, 37, 'When Cubchoo starts sneezing, watch out! If it spatters you with its frosty snot, you’ll get frostbite.'),
  -- beartic in violet
  (614, 61400, 37, 'Feared as the Snow-White Demon in northern lands, Beartic uses its frosty claws and fangs to attack prey.'),
  -- cryogonal in violet
  (615, 61500, 37, 'Cryogonal uses its chains of ice to constrict its opponents and then flash-freezes them where they stand.'),
  -- mienfoo in violet
  (619, 61900, 37, 'They seclude themselves in the mountains and devote themselves to training. The form of their kicks and chops differs from pack to pack.'),
  -- mienshao in violet
  (620, 62000, 37, 'Using the long fur on its arms like whips, it launches into combo attacks that, once started, no one can stop.'),
  -- golett in violet
  (622, 62200, 37, 'Its movements are powered by a mysterious energy. It has continued to move since ancient times, so its power may soon run out.'),
  -- golurk in violet
  (623, 62300, 37, 'Golurk were created by ancient people to protect both people and Pokémon. They run on a mysterious energy.'),
  -- pawniard in violet
  (624, 62400, 37, 'Any chips in its blades would prove fatal for it. After each battle, it diligently maintains its blades using its favorite sharpening stone.'),
  -- bisharp in violet
  (625, 62500, 37, 'Bisharp mercilessly cuts its opponents to pieces with the sharp blades covering its body. It will do anything to win.'),
  -- rufflet in violet
  (627, 62700, 37, 'With its sharp claws, this Pokémon pierces its prey, and then it pecks at them. Although it also consumes berries, it’s a carnivore at heart.'),
  -- braviary in violet
  (628, 62800, 37, 'For the sake of its friends, this brave warrior of the sky will not stop battling, even if injured.'),
  -- vullaby in violet
  (629, 62900, 37, 'Its healthy appetite leads to visible growth spurts. It often has to replace the bones it wears as its size increases.'),
  -- mandibuzz in violet
  (630, 63000, 37, 'Watching from the sky, they attack weakened prey on the ground. They have a habit of decorating themselves with bones.'),
  -- deino in violet
  (633, 63300, 37, 'It nests deep inside a cave. Food there is scarce, so Deino will sink its teeth into anything that moves and attempt to eat it.'),
  -- zweilous in violet
  (634, 63400, 37, 'The two heads have different likes and dislikes. Because the heads fight with each other, Zweilous gets stronger without needing to rely on others.'),
  -- hydreigon in violet
  (635, 63500, 37, 'It’s said that Hydreigon grew ferocious because people in times long past loathed it, considering it to be evil incarnate and attacking it relentlessly.'),
  -- larvesta in violet
  (636, 63600, 37, 'In ancient times, Larvesta was worshiped as the emissary of the sun. However, it was also viewed as a burden since it often caused forest fires.'),
  -- volcarona in violet
  (637, 63700, 37, 'This Pokémon scatters burning scales. Most of the danger of these scales is not in their heat—it''s in the way they rob the surrounding air of oxygen.'),
  -- chespin in violet
  (650, 65000, 37, 'Eating lots of berries makes the bark shell that covers Chespin’s head and body grow sturdier.'),
  -- quilladin in violet
  (651, 65100, 37, 'It can send a trailer flying with a tackle. It’s numb to pain, so even violent collisions don’t faze it.'),
  -- chesnaught in violet
  (652, 65200, 37, 'Its gentle disposition would have it avoid conflict, but it gives opponents a thrashing with its thorned fists when the situation calls for it.'),
  -- fennekin in violet
  (653, 65300, 37, 'Twigs make for Fennekin’s snacks. When it nibbles on twigs, it finds the courage to face strong foes.'),
  -- braixen in violet
  (654, 65400, 37, 'Braixen’s branch ignites as it’s pulled from the Pokémon’s tail. Braixen then uses the flame to spark powerful attacks.'),
  -- delphox in violet
  (655, 65500, 37, 'It controls flames telekinetically, trapping its foes in a fiery vortex surpassing 5,400 degrees Fahrenheit and burning them to a crisp.'),
  -- froakie in violet
  (656, 65600, 37, 'It utilizes its extraordinary jumping abilities to flummox its foes, throwing springy bubbles at them from above their heads.'),
  -- frogadier in violet
  (657, 65700, 37, 'The tips of its fingers and toes stick firmly to vertical surfaces. Frogadier can scale skyscrapers with ease.'),
  -- greninja in violet
  (658, 65800, 37, 'It makes shuriken out of mucus excreted from its thighs. These shuriken can cut cleanly through steel cables.'),
  -- fletchling in violet
  (661, 66100, 37, 'Fletchling can be found in both rural and urban areas. They once had a huge territorial dispute with Squawkabilly. Fights broke out all over town.'),
  -- fletchinder in violet
  (662, 66200, 37, 'Its territory has a radius of just over a mile. If any bird Pokémon should enter, it will show them no mercy.'),
  -- talonflame in violet
  (663, 66300, 37, 'When it gets excited, it vents sparks from the gaps between its feathers. These unburnable feathers are used as a fireproof material.'),
  -- scatterbug in violet
  (664, 66400, 37, 'This Pokémon scatters poisonous powder to repel enemies. It will eat different plants depending on where it lives.'),
  -- spewpa in violet
  (665, 66500, 37, 'Spewpa doesn’t live in a fixed location. It roams where it pleases across the fields and mountains, building up the energy it needs to evolve.'),
  -- vivillon in violet
  (666, 66600, 37, 'This Pokémon was born in a land where flowers bloom. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-icy-snow in violet
  (666, 66601, 37, 'This Pokémon was born in frigid lands. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-polar in violet
  (666, 66602, 37, 'This Pokémon was born in a snowy land. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-tundra in violet
  (666, 66603, 37, 'This Pokémon was born in a land of severe cold. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-continental in violet
  (666, 66604, 37, 'This Pokémon was born in a land of vast space. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-garden in violet
  (666, 66605, 37, 'This Pokémon was born in a verdant land. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-elegant in violet
  (666, 66606, 37, 'This Pokémon was born in a land with distinct seasons. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-modern in violet
  (666, 66607, 37, 'This Pokémon was born in a sun-drenched land. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-marine in violet
  (666, 66608, 37, 'This Pokémon was born in a land with ocean breezes. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-archipelago in violet
  (666, 66609, 37, 'This Pokémon was born in a place with many islands. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-high-plains in violet
  (666, 66610, 37, 'This Pokémon was born in a land with little rain. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-sandstorm in violet
  (666, 66611, 37, 'This Pokémon was born in a parched land. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-river in violet
  (666, 66612, 37, 'This Pokémon was born in a land where large rivers flow. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-monsoon in violet
  (666, 66613, 37, 'This Pokémon was born in a land with intense rainfall. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-savanna in violet
  (666, 66614, 37, 'This Pokémon was born in a land with a tropical climate. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-sun in violet
  (666, 66615, 37, 'This Pokémon was born in a land bathed in light. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-ocean in violet
  (666, 66616, 37, 'This Pokémon was born in a land of perpetual summer. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-jungle in violet
  (666, 66617, 37, 'This Pokémon was born in a land of tropical rain forests. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-fancy in violet
  (666, 66618, 37, 'This Pokémon was born in a mysterious land. It scatters colorful, toxic scales from its wings during battle.'),
  -- vivillon-poke-ball in violet
  (666, 66619, 37, 'This Pokémon was born in a special land. It scatters colorful, toxic scales from its wings during battle.'),
  -- litleo in violet
  (667, 66700, 37, 'The more a Litleo trains its body and spirit by battling mighty enemies, the hotter its mane will grow.'),
  -- pyroar in violet
  (668, 66800, 37, 'The mane of a male Pyroar heats up to over 3,600 degrees Fahrenheit during battle. Merely approaching it will cause severe burns.'),
  -- flabebe in violet
  (669, 66900, 37, 'This Flabébé rides a red flower. Immediately after birth, this Pokémon begins flying around in search of a flower it likes.'),
  -- flabebe-yellow in violet
  (669, 66901, 37, 'It unleashes a variety of moves by drawing forth the power hidden within flowers. This Pokémon is particularly fond of yellow flowers.'),
  -- flabebe-orange in violet
  (669, 66902, 37, 'It receives strength from flowers and gives them some of its energy in return. This Pokémon likes orange flowers best of all.'),
  -- flabebe-blue in violet
  (669, 66903, 37, 'This Pokémon likes blue flowers best of all. It floats upward using the power emanating from its flower and bobs along lightly through the air.'),
  -- flabebe-white in violet
  (669, 66904, 37, 'When evening falls, it searches out a place blooming with flowers of the same white color as itself, and then it goes to sleep.'),
  -- floette in violet
  (670, 67000, 37, 'This Pokémon uses red wavelengths of light to pour its own energy into flowers and draw forth their latent potential.'),
  -- floette-yellow in violet
  (670, 67003, 37, 'Floette can draw forth the latent capabilities of Grass-type Pokémon. It syncs with yellow flowers.'),
  -- floette-orange in violet
  (670, 67004, 37, 'This Pokémon cannot use moves on its own. When it syncs with flowers, it becomes able to use Grass-type moves.'),
  -- floette-blue in violet
  (670, 67005, 37, 'It exchanges power with flowers via wavelengths of visible light. This form of Floette can sync with the wavelength that produces the color blue.'),
  -- floette-white in violet
  (670, 67006, 37, 'If it finds someone messing up a flower bed, it will attack them without mercy. This Floette takes particularly good care of white flowers.'),
  -- florges in violet
  (671, 67100, 37, 'They say that flower gardens created by Florges are constantly showered with a power that can heal both body and spirit.'),
  -- florges-yellow in violet
  (671, 67101, 37, 'This Pokémon battles by drawing forth the power of yellow flowers. It ruthlessly punishes anyone who tramples on flowering plants.'),
  -- florges-orange in violet
  (671, 67102, 37, 'In times long past, castle governors would lovingly raise Florges to care for their castles'' exquisite gardens.'),
  -- florges-blue in violet
  (671, 67103, 37, 'Blue pigments were tremendously expensive in the past, so paintings of blue Florges are highly valuable.'),
  -- florges-white in violet
  (671, 67104, 37, 'A Florges adorned with white flowers can sync with the wavelengths of various colors to draw forth their power.'),
  -- skiddo in violet
  (672, 67200, 37, 'As long as it has sunlight and water, Skiddo can make energy with the leaves on its body, allowing it to live on rocky mountains barren of food.'),
  -- gogoat in violet
  (673, 67300, 37, 'These Pokémon live in herds in mountainous places. The victor in their contests of clashing horns will become the leader of the herd.'),
  -- espurr in violet
  (677, 67700, 37, 'Behind an Espurr’s expressionless face is a frantic struggle to contain psychic power.'),
  -- meowstic in violet
  (678, 67800, 37, 'If Meowstic continuously emits its powerful psychic energy, it will damage its own body.'),
  -- meowstic-female in violet
  (678, 67801, 37, 'When they sense danger, they exert their psychic power at its maximum output. They have no regard for their opponents.'),
  -- inkay in violet
  (686, 68600, 37, 'Being upside-down improves its blood flow and clears its mind, causing the power of its psychic moves to increase dramatically.'),
  -- malamar in violet
  (687, 68700, 37, 'It flashes the luminescent spots on its body to hypnotize its opponents, gaining total control over them.'),
  -- skrelp in violet
  (690, 69000, 37, 'This Pokémon is a poor swimmer. If it’s caught in a fierce storm, it will sometimes get washed far away and become unable to return to its home.'),
  -- dragalge in violet
  (691, 69100, 37, 'Since Finizen is the better swimmer, Dragalge will approach it under the cover of seaweed, then immobilize it with a poisonous attack.'),
  -- clauncher in violet
  (692, 69200, 37, 'Clauncher’s claws will regrow if they fall off. The meat inside the claws is edible, but it has a distinct flavor that doesn’t appeal to all tastes.'),
  -- clawitzer in violet
  (693, 69300, 37, 'The cannonballs of seawater that Clawitzer launches from its claw are powerful enough to punch through tanker hulls.'),
  -- sylveon in violet
  (700, 70000, 37, 'Sylveon cuts an elegant figure as it dances lightly around, feelers fluttering, but its piercing moves aim straight for its opponents'' weak spots.'),
  -- hawlucha in violet
  (701, 70100, 37, 'Hawlucha live quietly without flocking together. They fight constantly with their natural enemies: noisy groups of Primeape.'),
  -- dedenne in violet
  (702, 70200, 37, 'Dedenne emit electrical waves from the whiskers on their cheeks to communicate with each other. When low on electricity, they curl up and sleep.'),
  -- carbink in violet
  (703, 70300, 37, 'Born from the high temperatures and pressures deep underground, it defends itself by firing beams from the jewel part of its body.'),
  -- goomy in violet
  (704, 70400, 37, 'Goomy’s horns are excellent sensory organs that cover all five of Goomy’s senses. Goomy picks up on danger from the movement of the air.'),
  -- sliggoo in violet
  (705, 70500, 37, 'When Sliggoo senses danger, the mucus coating its entire body becomes more concentrated— it’ll dissolve anything.'),
  -- goodra in violet
  (706, 70600, 37, 'This Pokémon is uncontrollable when enraged. It rampages on and on, lashing its tail with enough power to send a dump truck flying.'),
  -- klefki in violet
  (707, 70700, 37, 'In the past, noble families entrusted their vault keys to a Klefki. They passed the Klefki down through the generations, taking good care of it.'),
  -- phantump in violet
  (708, 70800, 37, 'This Pokémon came to be when the spirit of a deceased child possessed a tree stump. It now wanders the forest searching for friends.'),
  -- trevenant in violet
  (709, 70900, 37, 'Trevenant is very kind to Pokémon living in the forest. It doesn’t even care if these Pokémon take up residence in the greenery on its head.'),
  -- bergmite in violet
  (712, 71200, 37, 'Bergmite protects itself by coating its body in ice formed by frigid air of -148 degrees Fahrenheit. It fights with Frigibax whenever they meet.'),
  -- avalugg in violet
  (713, 71300, 37, 'This Pokémon uses its massive icy body to flatten anything that gets in its way. When it’s floating out on the ocean, it looks exactly like drift ice.'),
  -- noibat in violet
  (714, 71400, 37, 'Noibat can change the frequency of its sound waves at will, and it generates ultrasonic waves of up to 200,000 hertz.'),
  -- noivern in violet
  (715, 71500, 37, 'In the dark, even Hydreigon are terrified of this Pokémon. But in the light, Noivern is the one that avoids battle.'),
  -- rowlet in violet
  (722, 72200, 37, 'It feels relaxed in tight, dark places and has been known to nestle into its Trainer’s bag or the front of their jacket.'),
  -- dartrix in violet
  (723, 72300, 37, 'It throws sharp feathers called blade quills at enemies or prey. It seldom misses.'),
  -- decidueye in violet
  (724, 72400, 37, 'It nocks its arrow quills and looses them at opponents. When it needs to hit, it pulls the vines on its hood to narrow its view and focus.'),
  -- litten in violet
  (725, 72500, 37, 'While grooming itself, it builds up fur inside its stomach. It sets the fur alight and spews fiery attacks, which change based on how it coughs.'),
  -- torracat in violet
  (726, 72600, 37, 'Torracat will let its Trainer coddle it once they’ve grown close, but it’s a powerful, sharp-clawed Pokémon, so its Trainer gets covered in scratches.'),
  -- incineroar in violet
  (727, 72700, 37, 'After hurling ferocious punches and flinging furious kicks, it finishes opponents off by spewing fire from around its navel.'),
  -- popplio in violet
  (728, 72800, 37, 'The balloons it inflates with its nose grow larger and larger as it practices day by day.'),
  -- brionne in violet
  (729, 72900, 37, 'It cares deeply for its companions. When its Trainer is feeling down, it performs a cheery dance to try to help.'),
  -- primarina in violet
  (730, 73000, 37, 'Also known as a songstress, it is a sight to behold on moonlit nights when it sings in front of the colony it leads.'),
  -- pikipek in violet
  (731, 73100, 37, 'Pikipek has strong muscles in its neck, so it won’t hurt itself even if it violently shakes its head.'),
  -- trumbeak in violet
  (732, 73200, 37, 'When it encounters foes, it launches the many seeds stored in its beak in a radial burst.'),
  -- toucannon in violet
  (733, 73300, 37, 'Pairs of Toucannon are considered symbols of companionship, as these Pokémon will raise the temperature of their beaks to warm each other.'),
  -- yungoos in violet
  (734, 73400, 37, 'It spends its waking hours searching endlessly for food. When Yungoos is hungry, its ferocity gains a certain edge.'),
  -- gumshoos in violet
  (735, 73500, 37, 'Gumshoos specializes in relentlessly tracking down prey. The simple-minded Skwovet doesn’t seem to provide Gumshoos enough challenge.'),
  -- grubbin in violet
  (736, 73600, 37, 'It spits sticky threads and winds them around branches, then swings nimbly from tree to tree in a pendulum-like motion.'),
  -- charjabug in violet
  (737, 73700, 37, 'As it digests fallen leaves, it generates and stores electricity, which it can discharge from the tips of its jaws.'),
  -- vikavolt in violet
  (738, 73800, 37, 'When carrying a Charjabug, Vikavolt can receive electricity from it and then rapidly fire powerful electromagnetic beams from its large jaws.'),
  -- crabrawler in violet
  (739, 73900, 37, 'If it loses its pincers, they’ll quickly regrow. The pincers are popular ingredients in paella since their shells produce a tasty soup stock.'),
  -- crabominable in violet
  (740, 74000, 37, 'Though its punches are powerful, this Pokémon’s movements are sluggish. It blows icy bubbles from its mouth to immobilize its opponents.'),
  -- oricorio in violet
  (741, 74100, 37, 'This form of Oricorio has sipped red nectar. It whips up blazing flames as it moves to the steps of its passionate dance.'),
  -- oricorio-pom-pom in violet
  (741, 74101, 37, 'The energetic, cheerful dance of these Oricorio is popular with children, but the Oricorio themselves are hard to find in Paldea.'),
  -- oricorio-pau in violet
  (741, 74102, 37, 'This form of Oricorio has sipped pink nectar. It elevates its mind with the gentle steps of its dance, then unleashes its psychic energy.'),
  -- oricorio-sensu in violet
  (741, 74103, 37, 'The elegant, attractive dance of these Oricorio is popular with adults, but the Oricorio themselves are hard to find in Paldea.'),
  -- cutiefly in violet
  (742, 74200, 37, 'Cutiefly sucks up pollen and nectar with its long proboscis. It stores any pollen it doesn’t finish eating in its fur.'),
  -- ribombee in violet
  (743, 74300, 37, 'Pollen puffs created by skilled Ribombee can relieve fatigue, making the puffs a popular commodity.'),
  -- rockruff in violet
  (744, 74400, 37, 'This Pokémon travels in a pack with others until it grows up. When its mood turns sour, it starts striking the ground with the rocks on its neck.'),
  -- lycanroc in violet
  (745, 74500, 37, 'It has a calm and collected demeanor. It swiftly closes in on its prey, then slices them with the rocks in its mane.'),
  -- lycanroc-midnight in violet
  (745, 74501, 37, 'This Lycanroc has an extremely vicious temperament. It will happily sustain injuries for the sake of taking down its opponent.'),
  -- lycanroc-dusk in violet
  (745, 74502, 37, 'These Pokémon have both calm and ferocious qualities. It’s said that this form of Lycanroc is the most troublesome to raise.'),
  -- mareanie in violet
  (747, 74700, 37, 'It has excellent regenerative capabilities. Legs that a Mareanie has lost have a very bitter, astringent flavor—they''re not suitable as food.'),
  -- toxapex in violet
  (748, 74800, 37, 'Toxapex gets into fierce battles with Bruxish over areas where warm ocean currents flow, but the odds are always against it.'),
  -- mudbray in violet
  (749, 74900, 37, 'Though a slow walker, Mudbray is plenty strong. Its pace doesn’t change even when it’s loaded with 50 times its own body weight.'),
  -- mudsdale in violet
  (750, 75000, 37, 'Its legs are fortified with mud and harder than stone, and they can reduce a large truck to scrap with one kick.'),
  -- dewpider in violet
  (751, 75100, 37, 'It supports the water bubble that envelops its head with three of its legs. Sometimes it secretly swaps which legs are holding up the bubble.'),
  -- araquanid in violet
  (752, 75200, 37, 'It launches sticky water bubbles. Foes who lose consciousness while trapped inside these bubbles will get torn apart by Araquanid’s gnashing jaws.'),
  -- fomantis in violet
  (753, 75300, 37, 'Many Trainers give their Fomantis their own flowerpots so they can sunbathe in peace and quiet.'),
  -- lurantis in violet
  (754, 75400, 37, 'A lot of time and effort is required to maintain the vivid colors of its petals. This Pokémon puts its Trainer’s attentiveness to the test.'),
  -- salandit in violet
  (757, 75700, 37, 'Only female Salandit can produce gas laden with pheromones. Males entranced by this gas will do whatever the females tell them.'),
  -- salazzle in violet
  (758, 75800, 37, 'When two Salazzle meet, they will use their pheromone gas to fight over the males in each other’s group.'),
  -- bounsweet in violet
  (761, 76100, 37, 'A Greedent drawn in by the sweet scent of these Pokémon will tuck the Bounsweet in among the berries in its tail and carry them all away.'),
  -- steenee in violet
  (762, 76200, 37, 'Steenee bounces energetically through forests. If the rind that peels off its body is pulverized, it can be used to treat stomach pains.'),
  -- tsareena in violet
  (763, 76300, 37, 'This Pokémon launches fierce yet elegant kicks with its long, slender legs. It views Quaquaval as its rival.'),
  -- comfey in violet
  (764, 76400, 37, 'It prefers areas with lots of flowers. A Comfey adorned with flowers is a happy Comfey, and the flowers gain healing effects.'),
  -- oranguru in violet
  (765, 76500, 37, 'This Pokémon lives quietly in the depths of the forest. The purple, cape-like fur gets longer and longer as Oranguru ages.'),
  -- passimian in violet
  (766, 76600, 37, 'The boss chooses 10 members of the group to go out hunting. The hunting party will evenly split the food they find with the rest of the group.'),
  -- sandygast in violet
  (769, 76900, 37, 'It flings sand into the eyes of its prey and tries to close in on them while they’re blinded, but since Sandygast is so slow, the prey tends to escape.'),
  -- palossand in violet
  (770, 77000, 37, 'From the hollows in its arms, it fires the bones of its victims, which are all dried up after being drained of their vitality.'),
  -- minior in violet
  (774, 77400, 37, 'It will react when touched or called to, but it’s unknown whether such responses indicate consciousness.'),
  -- minior-core in violet
  (774, 77401, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- minior-orange in violet
  (774, 77402, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- minior-yellow in violet
  (774, 77403, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- minior-green in violet
  (774, 77404, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- minior-blue in violet
  (774, 77405, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- minior-indigo in violet
  (774, 77406, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- minior-violet in violet
  (774, 77407, 37, 'It feeds on dust in the atmosphere. The color of its core is said to be determined by the composition of the dust it eats.'),
  -- komala in violet
  (775, 77500, 37, 'A potent anesthetic can be made by diluting Komala’s drool. This anesthetic was used for surgeries in the past.'),
  -- mimikyu in violet
  (778, 77800, 37, 'Mimikyu was only recently identified as a Pokémon. Previously, people thought it was just a ghost wearing a cloth.'),
  -- mimikyu-busted in violet
  (778, 77801, 37, 'It has taken damage and can no longer hold the head of its cloth disguise upright. For as long as it lives, Mimikyu will never forget its attacker.'),
  -- bruxish in violet
  (779, 77900, 37, 'When sunlight reflects on the ripples created by a Bruxish grinding its teeth, the water all around sparkles brilliantly.'),
  -- jangmo-o in violet
  (782, 78200, 37, 'They communicate with their allies using the sounds their scales make when struck. A group of these Pokémon causes quite a racket.'),
  -- hakamo-o in violet
  (783, 78300, 37, 'It fires itself up by striking its scales with force as it dances. Its roar is a battle cry.'),
  -- kommo-o in violet
  (784, 78400, 37, 'It bashes its scales to test its opponents'' mettle. The sound of struck Kommo-o scales frightens weaker foes and sends them running.'),
  -- grookey in violet
  (810, 81000, 37, 'As Grookey strikes everything in sight with its stick, it has more and more fun, and its rhythm becomes livelier.'),
  -- thwackey in violet
  (811, 81100, 37, 'It becomes intensely focused while it drums out vigorous beats—so much so that sometimes it won’t listen to its Trainer’s commands.'),
  -- rillaboom in violet
  (812, 81200, 37, 'When one Rillaboom challenges another who leads a troop, a drumming battle commences. The victor becomes the troop’s new boss.'),
  -- scorbunny in violet
  (813, 81300, 37, 'Fire energy gathers in the pads of its feet, raising their temperature. Once hot, Scorbunny’s footpads can deal heavy damage to opponents.'),
  -- raboot in violet
  (814, 81400, 37, 'While it prides itself on its varied kicking moves, it can also deliver powerful headbutts once its flames have heated up its forehead.'),
  -- cinderace in violet
  (815, 81500, 37, 'Using a ball that it made out of flames, Cinderace blinds its opponents and keeps them at bay.'),
  -- sobble in violet
  (816, 81600, 37, 'It’s a very cautious Pokémon. When it has no choice but to battle, it hides itself before attacking.'),
  -- drizzile in violet
  (817, 81700, 37, 'Highly intelligent but also very lazy, it defends its home by laying traps.'),
  -- inteleon in violet
  (818, 81800, 37, 'It may present itself as being well-mannered, but deep down, it still has a lazy side. It will slack off when its Trainer isn’t looking.'),
  -- skwovet in violet
  (819, 81900, 37, 'No matter how much it stuffs its belly with food, it is always anxious about getting hungry again. So, it stashes berries in its cheeks and tail.'),
  -- greedent in violet
  (820, 82000, 37, 'This Pokémon makes off with heaps of fallen berries by wrapping them in its tail, which is roughly twice the length of its body.'),
  -- rookidee in violet
  (821, 82100, 37, 'The females are fussier than the males. If another creature dirties a female Rookidee’s wings, it’ll peck the offender relentlessly in a burning rage.'),
  -- corvisquire in violet
  (822, 82200, 37, 'This intelligent Pokémon will quickly learn how to use any tool it can hold in its beak or its talons.'),
  -- corviknight in violet
  (823, 82300, 37, 'Although its wings have partly turned to steel and become heavy as a result, this Pokémon flies through the skies with ease.'),
  -- chewtle in violet
  (833, 83300, 37, 'A popular game among children is to lift up sticks that Chewtle have bitten onto to see whose Chewtle can hang on the longest.'),
  -- drednaw in violet
  (834, 83400, 37, 'Drednaw lurks along the shoreline. When prey come to drink water, Drednaw stretches its neck out and chomps down on them.'),
  -- rolycoly in violet
  (837, 83700, 37, 'Chunks of the surface of this Pokémon’s body that have grown old and flaked off have long been used for fuel as an alternative to coal.'),
  -- carkol in violet
  (838, 83800, 37, 'Due to the coal tar created inside it, the heap of coal on Carkol’s back never falls apart, even when the Pokémon rolls around at high speeds.'),
  -- coalossal in violet
  (839, 83900, 37, 'It’s gentle usually but fearsome when angered. With a body that burns at over 2,700 degrees Fahrenheit, it crushes foes and turns them to ash.'),
  -- applin in violet
  (840, 84000, 37, 'Applin lives inside an apple. When an Applin is separated from its apple, its body loses moisture and the Pokémon grows weak.'),
  -- flapple in violet
  (841, 84100, 37, 'It uses its own body fluid to repair its apple. Strong Flapple that have won many battles have apples that are clay colored all over.'),
  -- appletun in violet
  (842, 84200, 37, 'When some Lechonk come along to lick the sweet nectar on Appletun’s back, Appletun will spew sticky nectar at them to drive them away.'),
  -- silicobra in violet
  (843, 84300, 37, 'Silicobra’s large nostrils are specialized for spraying sand, so this Pokémon is not very good at telling apart different smells.'),
  -- sandaconda in violet
  (844, 84400, 37, 'The sand it spews contains sharp, pointy gravel, which is actually just sand that Sandaconda’s saliva has hardened into irregular shapes.'),
  -- cramorant in violet
  (845, 84500, 37, 'It’s an incredibly poor learner because it uses the bare minimum amount of energy for its brain. It focuses on battling instead.'),
  -- cramorant-gulping in violet
  (845, 84501, 37, 'Cramorant takes advantage of Arrokuda’s frantic thrashing to help spit Arrokuda out at high speed.'),
  -- cramorant-gorging in violet
  (845, 84502, 37, 'With a Pikachu stuck in its throat, Cramorant can use Pikachu’s prickling electricity to give its opponents a shock.'),
  -- arrokuda in violet
  (846, 84600, 37, 'It takes down prey by charging into them with its hard, pointed jaw. But Arrokuda’s eyesight is poor, so this tactic has a low success rate.'),
  -- barraskewda in violet
  (847, 84700, 37, 'It swims at speeds of over 100 knots and battles fiercely with pods of Finizen over prey.'),
  -- toxel in violet
  (848, 84800, 37, 'This selfish, attention-seeking Pokémon stores poison and electricity in two different sacs inside its body.'),
  -- toxtricity in violet
  (849, 84900, 37, 'The jolts of electricity it launches by violently strumming the protrusions on its chest easily exceed 15,000 volts.'),
  -- toxtricity-low-key in violet
  (849, 84901, 37, 'As it gulps down stagnant water and generates electricity in its body, a sound like a rhythm played by a bass guitar reverberates all around.'),
  -- sinistea in violet
  (854, 85400, 37, 'Sinistea gets into your body when you drink it, and then it steals your vitality from within. It also tastes awful.'),
  -- sinistea-antique in violet
  (854, 85401, 37, 'This Sinistea lives in an antique teacup. As valuable as this Pokémon is, its awful taste remains unchanged.'),
  -- polteageist in violet
  (855, 85500, 37, 'These Pokémon multiply by creeping into teapots and pouring themselves into leftover tea.'),
  -- polteageist-antique in violet
  (855, 85501, 37, 'Though risky to drink, this Pokémon’s tea tastes delicious. Gourmets who have no fear of danger drink Polteageist tea day after day.'),
  -- hatenna in violet
  (856, 85600, 37, 'It senses the feelings of other living creatures. Be careful not to expose it to strong emotions for too long, or it will end up exhausted.'),
  -- hattrem in violet
  (857, 85700, 37, 'The moment this Pokémon finds someone who’s emitting strong emotions, it will pummel them senseless with its braids to silence them.'),
  -- hatterene in violet
  (858, 85800, 37, 'Beware of forests that show no signs of living creatures within. You may have wandered into Hatterene’s territory.'),
  -- impidimp in violet
  (859, 85900, 37, 'They live in groups, pestering and playing pranks on each other to polish their troublemaking skills.'),
  -- morgrem in violet
  (860, 86000, 37, 'This Pokémon absorbs negative emotions and turns them into energy. It’s popular with people who tend to think gloomy thoughts.'),
  -- grimmsnarl in violet
  (861, 86100, 37, 'It lives deep within the forest. Even after evolving into this splendid form, it hasn’t given up on its petty misdeeds and pranks.'),
  -- milcery in violet
  (868, 86800, 37, 'When attacked, it tackles its foe and covers them in cream. With its foe either blinded or astonished by deliciousness, Milcery flees.'),
  -- alcremie in violet
  (869, 86900, 37, 'Alcremie that have been cherished produce exquisite cream, so Trainers always raise them lovingly.'),
  -- alcremie-ruby-cream in violet
  (869, 86902, 37, 'When attacked, it strikes back by throwing cream accented with sweet and tart flavors.'),
  -- alcremie-matcha-cream in violet
  (869, 86903, 37, 'When attacked, it strikes back by throwing cream accented with an aromatic flavor.'),
  -- alcremie-mint-cream in violet
  (869, 86904, 37, 'When attacked, it strikes back by throwing cream accented with a refreshing flavor.'),
  -- alcremie-lemon-cream in violet
  (869, 86905, 37, 'When attacked, it strikes back by throwing cream accented with a sour flavor.'),
  -- alcremie-salted-cream in violet
  (869, 86906, 37, 'When attacked, it strikes back by throwing cream accented with a salty flavor.'),
  -- alcremie-ruby-swirl in violet
  (869, 86907, 37, 'When attacked, it strikes back by throwing cream accented with a mix of flavors.'),
  -- alcremie-caramel-swirl in violet
  (869, 86908, 37, 'When attacked, it strikes back by throwing cream accented with a bitter flavor.'),
  -- alcremie-rainbow-swirl in violet
  (869, 86909, 37, 'When attacked, it strikes back by throwing cream accented with complex flavors.'),
  -- falinks in violet
  (870, 87000, 37, 'The leader, known as the brass, uses its extendible horn to issue orders to the others when it’s time to change formation.'),
  -- pincurchin in violet
  (871, 87100, 37, 'This Pokémon is so timid that even brushing against seaweed will make it discharge electricity in surprise. Its lips do not conduct electricity.'),
  -- snom in violet
  (872, 87200, 37, 'Within its internal organs, Snom amplifies the frigid air it gets from eating snow and then uses this amplified air to create icicle-like spikes.'),
  -- frosmoth in violet
  (873, 87300, 37, 'It causes blizzards as it flies around with its huge, chill-emanating wings. Clean meltwater is its favorite thing to drink.'),
  -- stonjourner in violet
  (874, 87400, 37, 'This Pokémon spends its life gazing at the setting sun. It strides leisurely across grassy plains on legs of rock that weigh over 400 pounds each.'),
  -- eiscue in violet
  (875, 87500, 37, 'If you lick the ice covering its face, you’ll find it has a faintly salty taste. This species rode here on ocean currents from a cold, faraway land.'),
  -- eiscue-noice in violet
  (875, 87501, 37, 'Contrary to its looks, Eiscue is a poor swimmer. It creates ice balls at the tip of its single hair to lure prey in and fish them up.'),
  -- indeedee in violet
  (876, 87600, 37, 'This Pokémon never leaves its Trainer’s side. It predicts their actions with its psychic power and takes care of their day-to-day needs.'),
  -- indeedee-female in violet
  (876, 87601, 37, 'In search of happy feelings—such as joy and gratitude—Indeedee bustles around, taking diligent care of people and other Pokémon.'),
  -- morpeko in violet
  (877, 87700, 37, 'It has a small stomach. If it isn’t constantly eating the seeds it keeps in its pockets, it will get hungry immediately.'),
  -- morpeko-hangry in violet
  (877, 87701, 37, 'Hunger has disrupted this Pokémon’s hormonal balance. The Electric energy stored in its cheek sacs has turned into Dark-type energy.'),
  -- cufant in violet
  (878, 87800, 37, 'Cufant can lift loads weighing five tons. In the mornings, it heads into caves with its herd, in search of the ore on which these Pokémon feed.'),
  -- copperajah in violet
  (879, 87900, 37, 'Copperajah are prideful, cantankerous Pokémon. Specimens with vibrant green skin command the respect of others of their kind.'),
  -- duraludon in violet
  (884, 88400, 37, 'Its metal body is durable but prone to retaining heat. It vents this heat from the slits in its tail.'),
  -- dreepy in violet
  (885, 88500, 37, 'It has a habit of biting at Clauncher even though it doesn’t feed on them. This is said to be vestigial behavior from when Dreepy was alive.'),
  -- drakloak in violet
  (886, 88600, 37, 'This Pokémon stores up energy in its lungs, then shoots it out. It takes care of Dreepy and battles alongside them until they’re all grown up.'),
  -- dragapult in violet
  (887, 88700, 37, 'The fastest Dragapult of the group is always surrounded by Dreepy that want to fly at sonic speed.'),
  -- kleavor in violet
  (900, 90000, 37, 'This Pokémon is a rough, crude, and violent sort. It swings around its large, heavy stone axes to finish off its prey.'),
  -- basculegion in violet
  (902, 90200, 37, 'It can jump with incredible power. Parts of its body are tinged red by the rage of its fallen friends.'),
  -- basculegion-female in violet
  (902, 90201, 37, 'It can afflict a target with terrifying illusions that are under its control. The deeper the sadness in its friends'' souls, the paler Basculegion becomes.'),
  -- overqwil in violet
  (904, 90400, 37, 'It’s ferocious and has a short temper. The ends of its spikes are barbed, and they can’t be easily removed once they’ve punctured something.'),
  -- sprigatito in violet
  (906, 90600, 37, 'The sweet scent its body gives off mesmerizes those around it. The scent grows stronger when this Pokémon is in the sun.'),
  -- floragato in violet
  (907, 90700, 37, 'The hardness of Floragato’s fur depends on the Pokémon’s mood. When Floragato is prepared to battle, its fur becomes pointed and needle sharp.'),
  -- meowscarada in violet
  (908, 90800, 37, 'With skillful misdirection, it rigs foes with pollen-packed flower bombs. Meowscarada sets off the bombs before its foes realize what’s going on.'),
  -- fuecoco in violet
  (909, 90900, 37, 'Its flame sac is small, so energy is always leaking out. This energy is released from the dent atop Fuecoco’s head and flickers to and fro.'),
  -- crocalor in violet
  (910, 91000, 37, 'The valve in Crocalor’s flame sac is closely connected to its vocal cords. This Pokémon utters a guttural cry as it spews flames every which way.'),
  -- skeledirge in violet
  (911, 91100, 37, 'Skeledirge’s gentle singing soothes the souls of all that hear it. It burns its enemies to a crisp with flames of over 5,400 degrees Fahrenheit.'),
  -- quaxly in violet
  (912, 91200, 37, 'Its strong legs let it easily swim around in even fast-flowing rivers. It likes to keep things tidy and is prone to overthinking things.'),
  -- quaxwell in violet
  (913, 91300, 37, 'The hardworking Quaxwell observes people and Pokémon from various regions and incorporates their movements into its own dance routines.'),
  -- quaquaval in violet
  (914, 91400, 37, 'Dancing in ways that evoke far-away places, this Pokémon mesmerizes all that see it. Flourishes of its decorative water feathers slice into its foes.'),
  -- lechonk in violet
  (915, 91500, 37, 'This Pokémon spurns all but the finest of foods. Its body gives off an herblike scent that bug Pokémon detest.'),
  -- oinkologne in violet
  (916, 91600, 37, 'It entrances female Pokémon with the sweet, alluring scent that wafts from all over its body.'),
  -- oinkologne-female in violet
  (916, 91601, 37, 'This is a meticulous Pokémon that likes to keep things tidy. It shrouds itself in a floral aroma that soothes the Pokémon around it.'),
  -- tarountula in violet
  (917, 91700, 37, 'The thread it secretes from its rear is as strong as wire. The secret behind the thread’s strength is the topic of ongoing research.'),
  -- spidops in violet
  (918, 91800, 37, 'Spidops covers its territory in tough, sticky threads to set up traps for intruders.'),
  -- nymble in violet
  (919, 91900, 37, 'It’s highly skilled at a fighting style in which it uses its jumping capabilities to dodge incoming attacks while also dealing damage to opponents.'),
  -- lokix in violet
  (920, 92000, 37, 'It uses its normally folded third set of legs when in Showdown Mode. This places a huge burden on its body, so it can’t stay in this mode for long.'),
  -- pawmi in violet
  (921, 92100, 37, 'The pads of its paws are electricity-discharging organs. Pawmi fires electricity from its forepaws while standing unsteadily on its hind legs.'),
  -- pawmo in violet
  (922, 92200, 37, 'Pawmo uses a unique fighting technique in which it uses its forepaws to strike foes and zap them with electricity from its paw pads simultaneously.'),
  -- pawmot in violet
  (923, 92300, 37, 'Pawmot’s fluffy fur acts as a battery. It can store the same amount of electricity as an electric car.'),
  -- tandemaus in violet
  (924, 92400, 37, 'The pair sticks together no matter what. They split any food they find exactly in half and then eat it together.'),
  -- maushold in violet
  (925, 92500, 37, 'The larger pair protects the little ones during battles. When facing strong opponents, the whole group will join the fight.'),
  -- maushold-family-of-three in violet
  (925, 92501, 37, 'The little one just appeared one day. They all live together like a family, but the relationship between the three is still unclear.'),
  -- fidough in violet
  (926, 92600, 37, 'The yeast in Fidough’s breath is useful for cooking, so this Pokémon has been protected by people since long ago.'),
  -- dachsbun in violet
  (927, 92700, 37, 'The surface of this Pokémon’s skin hardens when exposed to intense heat, and its body has an appetizing aroma.'),
  -- smoliv in violet
  (928, 92800, 37, 'This Pokémon converts nutrients into oil, which it stores in the fruit on its head. It can easily go a whole week without eating or drinking.'),
  -- dolliv in violet
  (929, 92900, 37, 'It basks in the sun to its heart’s content until the fruits on its head ripen. After that, Dolliv departs from human settlements and goes on a journey.'),
  -- arboliva in violet
  (930, 93000, 37, 'This Pokémon drives back enemies by launching its rich, aromatic oil at them with enough force to smash a boulder.'),
  -- squawkabilly in violet
  (931, 93100, 37, 'Green-feathered flocks hold the most sway. When they’re out searching for food in the mornings and evenings, it gets very noisy.'),
  -- squawkabilly-blue in violet
  (931, 93101, 37, 'Blue-feathered Squawkabilly view their green-feathered counterparts as rivals, since the latter make up the largest, most powerful groups.'),
  -- squawkabilly-yellow in violet
  (931, 93102, 37, 'The yellow Squawkabilly are especially fierce. They’ve even been known to drive other bird Pokémon out of town.'),
  -- squawkabilly-white in violet
  (931, 93103, 37, 'Though these Squawkabilly are the fewest in number, they have no trouble living in towns since they blend in with the white buildings.'),
  -- nacli in violet
  (932, 93200, 37, 'The ground scrapes its body as it travels, causing it to leave salt behind. Salt is constantly being created and replenished inside Nacli’s body.'),
  -- naclstack in violet
  (933, 93300, 37, 'It compresses rock salt inside its body and shoots out hardened salt pellets with enough force to perforate an iron sheet.'),
  -- garganacl in violet
  (934, 93400, 37, 'Many Pokémon gather around Garganacl, hoping to lick at its mineral-rich salt.'),
  -- charcadet in violet
  (935, 93500, 37, 'Its firepower increases when it fights, reaching over 1,800 degrees Fahrenheit. It likes berries that are rich in fat.'),
  -- armarouge in violet
  (936, 93600, 37, 'This Pokémon clads itself in armor that has been fortified by psychic and fire energy, and it shoots blazing fireballs.'),
  -- ceruledge in violet
  (937, 93700, 37, 'An old set of armor steeped in grudges caused this Pokémon’s evolution. Ceruledge cuts its enemies to pieces without mercy.'),
  -- tadbulb in violet
  (938, 93800, 37, 'It floats using the electricity stored in its body. When thunderclouds are around, Tadbulb will float higher off the ground.'),
  -- bellibolt in violet
  (939, 93900, 37, 'What appear to be eyeballs are actually organs for discharging the electricity generated by Bellibolt’s belly-button dynamo.'),
  -- wattrel in violet
  (940, 94000, 37, 'These Pokémon make their nests on coastal cliffs. The nests have a strange, crackling texture, and they’re a popular delicacy.'),
  -- kilowattrel in violet
  (941, 94100, 37, 'It uses its throat sac to store electricity generated by its wings. There’s hardly any oil in its feathers, so it is a poor swimmer.'),
  -- maschiff in violet
  (942, 94200, 37, 'Its well-developed jaw and fangs are strong enough to crunch through boulders, and its thick fat makes for an excellent defense.'),
  -- mabosstiff in violet
  (943, 94300, 37, 'Mabosstiff loves playing with children. Though usually gentle, it takes on an intimidating look when protecting its family.'),
  -- shroodle in violet
  (944, 94400, 37, 'To keep enemies away from its territory, it paints markings around its nest using a poisonous liquid that has an acrid odor.'),
  -- grafaiai in violet
  (945, 94500, 37, 'Each Grafaiai paints its own individual pattern, and it will paint that same pattern over and over again throughout its life.'),
  -- bramblin in violet
  (946, 94600, 37, 'Not even Bramblin knows where it is headed as it tumbles across the wilderness, blown by the wind. It loathes getting wet.'),
  -- brambleghast in violet
  (947, 94700, 37, 'Brambleghast wanders around arid regions. On rare occasions, mass outbreaks of these Pokémon will bury an entire town.'),
  -- toedscool in violet
  (948, 94800, 37, 'Though it looks like Tentacool, Toedscool is a completely different species. Its legs may be thin, but it can run at a speed of 30 mph.'),
  -- toedscruel in violet
  (949, 94900, 37, 'It coils its 10 tentacles around prey and sucks out their nutrients, causing the prey pain. The folds along the rim of its head are a popular delicacy.'),
  -- klawf in violet
  (950, 95000, 37, 'This Pokémon lives on sheer cliffs. It sidesteps opponents’ attacks, then lunges for their weak spots with its claws.'),
  -- capsakid in violet
  (951, 95100, 37, 'Traditional Paldean dishes can be extremely spicy because they include the shed front teeth of Capsakid among their ingredients.'),
  -- scovillain in violet
  (952, 95200, 37, 'The green head has turned vicious due to the spicy chemicals stimulating its brain. Once it goes on a rampage, there is no stopping it.'),
  -- rellor in violet
  (953, 95300, 37, 'It rolls its mud ball around while the energy it needs for evolution matures. Eventually the time comes for it to evolve.'),
  -- rabsca in violet
  (954, 95400, 37, 'An infant sleeps inside the ball. Rabsca rolls the ball soothingly with its legs to ensure the infant sleeps comfortably.'),
  -- flittle in violet
  (955, 95500, 37, 'It spends its time running around wastelands. If anyone steals its beloved berries, it will chase them down and exact its revenge.'),
  -- espathra in violet
  (956, 95600, 37, 'It emits psychic power from the gaps between its multicolored frills and sprints at speeds greater than 120 mph.'),
  -- tinkatink in violet
  (957, 95700, 37, 'This Pokémon pounds iron scraps together to make a hammer. It will remake the hammer again and again until it’s satisfied with the result.'),
  -- tinkatuff in violet
  (958, 95800, 37, 'These Pokémon make their homes in piles of scrap metal. They test the strength of each other’s hammers by smashing them together.'),
  -- tinkaton in violet
  (959, 95900, 37, 'The hammer tops 220 pounds, yet it gets swung around easily by Tinkaton as it steals whatever it pleases and carries its plunder back home.'),
  -- wiglett in violet
  (960, 96000, 37, 'Though it looks like Diglett, Wiglett is an entirely different species. The resemblance seems to be a coincidental result of environmental adaptation.'),
  -- wugtrio in violet
  (961, 96100, 37, 'A variety of fish Pokémon, Wugtrio was once considered to be a regional form of Dugtrio.'),
  -- bombirdier in violet
  (962, 96200, 37, 'Bombirdier uses the apron on its chest to bundle up food, which it carries back to its nest. It enjoys dropping things that make loud noises.'),
  -- finizen in violet
  (963, 96300, 37, 'Its water ring is made from seawater mixed with a sticky fluid that Finizen secretes from its blowhole.'),
  -- palafin in violet
  (964, 96400, 37, 'Its physical capabilities are no different than a Finizen’s, but when its allies are in danger, it transforms and powers itself up.'),
  -- varoom in violet
  (965, 96500, 37, 'The steel section is Varoom’s actual body. This Pokémon clings to rocks and converts the minerals within into energy to fuel its activities.'),
  -- revavroom in violet
  (966, 96600, 37, 'Revavroom viciously threatens others with the sound of its exhaust. It sticks its tongue out from its cylindrical mouth and sprays toxic fluids.'),
  -- cyclizar in violet
  (967, 96700, 37, 'It can sprint at over 70 mph while carrying a human. The rider’s body heat warms Cyclizar’s back and lifts the Pokémon’s spirit.'),
  -- orthworm in violet
  (968, 96800, 37, 'This Pokémon lives in arid deserts. It maintains its metal body by consuming iron from the soil.'),
  -- glimmet in violet
  (969, 96900, 37, 'Glimmet’s toxic mineral crystals look just like flower petals. This Pokémon scatters poisonous powder like pollen to protect itself.'),
  -- glimmora in violet
  (970, 97000, 37, 'Glimmora’s petals are made of crystallized poison energy. It has recently become evident that these petals resemble Tera Jewels.'),
  -- greavard in violet
  (971, 97100, 37, 'This friendly Pokémon doesn’t like being alone. Pay it even the slightest bit of attention, and it will follow you forever.'),
  -- houndstone in violet
  (972, 97200, 37, 'A lovingly mourned Pokémon was reborn as Houndstone. It doesn’t like anyone touching the protuberance atop its head.'),
  -- flamigo in violet
  (973, 97300, 37, 'Thanks to a behavior of theirs known as “synchronizing,” an entire flock of these Pokémon can attack simultaneously in perfect harmony.'),
  -- cetoddle in violet
  (974, 97400, 37, 'It lives in frigid regions in pods of five or so individuals. It loves the minerals found in snow and ice.'),
  -- cetitan in violet
  (975, 97500, 37, 'Ice energy builds up in the horn on its upper jaw, causing the horn to reach cryogenic temperatures that freeze its surroundings.'),
  -- veluza in violet
  (976, 97600, 37, 'Veluza has excellent regenerative capabilities. It sheds spare flesh from its body to boost its agility, then charges at its prey.'),
  -- dondozo in violet
  (977, 97700, 37, 'It treats Tatsugiri like its boss and follows it loyally. Though powerful, Dondozo is apparently not very smart.'),
  -- tatsugiri in violet
  (978, 97800, 37, 'Tatsugiri is an extremely cunning Pokémon. It feigns weakness to lure in prey, then orders its partner to attack.'),
  -- tatsugiri-droopy in violet
  (978, 97801, 37, 'This Pokémon tricks its opponents by playing dead. It is small and weak, but it uses its smarts to survive.'),
  -- tatsugiri-stretchy in violet
  (978, 97802, 37, 'It’s one of the most intelligent dragon Pokémon. It camouflages itself by inflating its throat sac.'),
  -- annihilape in violet
  (979, 97900, 37, 'It imbues its fists with the power of the rage that it kept hidden in its heart. Opponents struck by these imbued fists will be shattered to their core.'),
  -- clodsire in violet
  (980, 98000, 37, 'It lives at the bottom of ponds and swamps. It will carry Wooper on its back and ferry them across water from one shore to the other.'),
  -- farigiraf in violet
  (981, 98100, 37, 'The hardened head from the tail protects the head of the main body as Farigiraf whips its long neck around to headbutt enemies.'),
  -- dudunsparce in violet
  (982, 98200, 37, 'It drives enemies out of its nest by sucking in enough air to fill its long, narrow lungs, then releasing the air in an intense blast.'),
  -- dudunsparce-three-segment in violet
  (982, 98201, 37, 'A recent study uncovered that the number of segments a Dudunsparce’s body has is determined by the Pokémon’s genes.'),
  -- kingambit in violet
  (983, 98300, 37, 'Though it commands a massive army in battle, it’s not skilled at devising complex strategies. It just uses brute strength to keep pushing.'),
  -- great-tusk in violet
  (984, 98400, 37, 'This creature resembles a mysterious Pokémon that, according to a paranormal magazine, has lived since ancient times.'),
  -- scream-tail in violet
  (985, 98500, 37, 'It resembles a mysterious Pokémon described in a paranormal magazine as a Jigglypuff from one billion years ago.'),
  -- brute-bonnet in violet
  (986, 98600, 37, 'It bears a slight resemblance to a Pokémon described in a dubious magazine as a cross between a dinosaur and a mushroom.'),
  -- flutter-mane in violet
  (987, 98700, 37, 'It has similar features to a ghostly pterosaur that was covered in a paranormal magazine, but the two have little else in common.'),
  -- slither-wing in violet
  (988, 98800, 37, 'This Pokémon somewhat resembles an ancient form of Volcarona that was introduced in a dubious magazine.'),
  -- sandy-shocks in violet
  (989, 98900, 37, 'It slightly resembles a Magneton that lived for 10,000 years and was featured in an article in a paranormal magazine.'),
  -- iron-treads in violet
  (990, 99000, 37, 'Sightings of this Pokémon have occurred in recent years. It resembles a mysterious object described in an old expedition journal.'),
  -- iron-bundle in violet
  (991, 99100, 37, 'It resembles a mysterious object mentioned in an old book. There are only two reported sightings of this Pokémon.'),
  -- iron-hands in violet
  (992, 99200, 37, 'This Pokémon shares many similarities with Iron Hands, an object mentioned in a certain expedition journal.'),
  -- iron-jugulis in violet
  (993, 99300, 37, 'It’s possible that Iron Jugulis, an object described in an old book, may actually be this Pokémon.'),
  -- iron-moth in violet
  (994, 99400, 37, 'No records exist of this species being caught. Data is lacking, but the Pokémon’s traits match up with an object described in an old book.'),
  -- iron-thorns in violet
  (995, 99500, 37, 'Some of its notable features match those of an object named within a certain expedition journal as Iron Thorns.'),
  -- frigibax in violet
  (996, 99600, 37, 'This Pokémon lives in forests and craggy areas. Using the power of its dorsal fin, it cools the inside of its nest like a refrigerator.'),
  -- arctibax in violet
  (997, 99700, 37, 'It attacks with the blade of its frozen dorsal fin by doing a front flip in the air. Arctibax’s strong back and legs allow it to pull off this technique.'),
  -- baxcalibur in violet
  (998, 99800, 37, 'It launches itself into battle by flipping upside down and spewing frigid air from its mouth. It finishes opponents off with its dorsal blade.'),
  -- gimmighoul in violet
  (999, 99900, 37, 'It lives inside an old treasure chest. Sometimes it gets left in shop corners since no one realizes it’s actually a Pokémon.'),
  -- gimmighoul-roaming in violet
  (999, 99901, 37, 'It wanders around, carrying an old coin on its back. It survives by draining the life-force from humans who try to pick up its coin.'),
  -- gholdengo in violet
  (1000, 100000, 37, 'It has a sturdy body made up of stacked coins. Gholdengo overwhelms its enemies by firing coin after coin at them in quick succession.'),
  -- wo-chien in violet
  (1001, 100100, 37, 'It drains the life-force from vegetation, causing nearby forests to instantly wither and fields to turn barren.'),
  -- chien-pao in violet
  (1002, 100200, 37, 'The hatred of those who perished by the sword long ago has clad itself in snow and become a Pokémon.'),
  -- ting-lu in violet
  (1003, 100300, 37, 'It slowly brings its exceedingly heavy head down upon the ground, splitting the earth open with huge fissures that run over 160 feet deep.'),
  -- chi-yu in violet
  (1004, 100400, 37, 'The envy accumulated within curved beads that sparked multiple conflicts has clad itself in fire and become a Pokémon.'),
  -- roaring-moon in violet
  (1005, 100500, 37, 'According to an article in a dubious magazine, this Pokémon has some connection to a phenomenon that occurs in a certain region.'),
  -- iron-valiant in violet
  (1006, 100600, 37, 'It’s possible that this is the object listed as Iron Valiant in a certain expedition journal.'),
  -- koraidon in violet
  (1007, 100700, 37, 'This Pokémon resembles Cyclizar, but it is far burlier and more ferocious. Nothing is known about its ecology or other features.'),
  -- miraidon in violet
  (1008, 100800, 37, 'This seems to be the Iron Serpent mentioned in an old book. The Iron Serpent is said to have turned the land to ash with its lightning.'),
  -- walking-wake in violet
  (1009, 100900, 37, 'It resembles an illustration published in a paranormal magazine, said to be a depiction of a super-ancient Suicune.'),
  -- iron-leaves in violet
  (1010, 101000, 37, 'According to the few eyewitness accounts that exist, it used its shining blades to julienne large trees and boulders.'),
  -- dipplin in violet
  (1011, 101100, 37, 'The head sticking out belongs to the fore-wyrm, while the tail belongs to the core-wyrm. The two share one apple and help each other out.'),
  -- poltchageist in violet
  (1012, 101200, 37, 'Poltchageist looks like a regional form of Sinistea, but it was recently discovered that the two Pokémon are entirely unrelated.'),
  -- poltchageist-artisan in violet
  (1012, 101201, 37, 'It has taken up residence in a very expensive tea caddy. It takes an expert to distinguish the expensive tea caddies from the cheap ones.'),
  -- sinistcha in violet
  (1013, 101300, 37, 'It prefers cool, dark places, such as the back of a shelf or the space beneath a home’s floorboards. It wanders in search of prey after sunset.'),
  -- sinistcha-masterpiece in violet
  (1013, 101301, 37, 'The more stirring it does with the tea whisk on its head, the more energy it builds up. It does this to prepare for battle.'),
  -- okidogi in violet
  (1014, 101400, 37, 'Okidogi is a ruffian with a short temper. It can pulverize anything by swinging around the chain on its neck.'),
  -- munkidori in violet
  (1015, 101500, 37, 'Munkidori keeps itself somewhere safe while it toys with its foes, using psychokinesis to induce intense dizziness.'),
  -- fezandipiti in violet
  (1016, 101600, 37, 'Fezandipiti beats its glossy wings to scatter pheromones that captivate people and Pokémon.'),
  -- ogerpon in violet
  (1017, 101700, 37, 'This mischief-loving Pokémon is full of curiosity. It battles by drawing out the type-based energy contained within its masks.'),
  -- ogerpon-wellspring in violet
  (1017, 101701, 37, 'In this form, it draws on the power of water. It attacks unrelentingly with kicks and ivy strikes.'),
  -- ogerpon-hearthflame in violet
  (1017, 101702, 37, 'In this form, it draws on the power of fire. It spears its enemies with thorn-covered ivy.'),
  -- ogerpon-cornerstone in violet
  (1017, 101703, 37, 'In this form, it draws on the power of stone. Its body is rock-solid, protecting it from all manner of attacks.'),
  -- archaludon in violet
  (1018, 101800, 37, 'It digs holes on mountains, searching for food. It’s so durable that being caught in a cave-in won’t faze it.'),
  -- hydrapple in violet
  (1019, 101900, 37, 'These capricious syrpents have banded together. On the rare occasion that their moods align, their true power is unleashed.'),
  -- gouging-fire in violet
  (1020, 102000, 37, 'It resembles an eerie Pokémon once shown in a paranormal magazine. That Pokémon was said to be an Entei regenerated from a fossil.'),
  -- raging-bolt in violet
  (1021, 102100, 37, 'It bears resemblance to a Pokémon that became a hot topic for a short while after a paranormal magazine touted it as Raikou’s ancestor.'),
  -- iron-boulder in violet
  (1022, 102200, 37, 'It was named after a mysterious object recorded in an old book. Its body seems to be metallic.'),
  -- iron-crown in violet
  (1023, 102300, 37, 'There was supposedly an incident in which it launched shining blades to cut everything around it to pieces. Little else is known about it.'),
  -- terapagos in violet
  (1024, 102400, 37, 'It’s thought that this Pokémon lived in ancient Paldea until it got caught in seismic shifts and went extinct.'),
  -- pecharunt in violet
  (1025, 102500, 37, 'Its peach-shaped shell serves as storage for a potent poison. It makes poisonous mochi and serves them to people and Pokémon.'),
  -- bulbasaur in legends-za
  (1, 100, 38, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.'),
  -- ivysaur in legends-za
  (2, 200, 38, 'There is a plant bulb on its back. When it absorbs nutrients, the bulb is said to blossom into a large flower.'),
  -- venusaur in legends-za
  (3, 300, 38, 'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
  -- mega-venusaur in legends-za
  (3, 301, 38, 'In order to support its flower, which has grown larger due to Mega Evolution, its back and legs have become stronger.'),
  -- charmander in legends-za
  (4, 400, 38, 'The flame on its tail indicates Charmander’s life force. If it is healthy, the flame burns brightly.'),
  -- charmeleon in legends-za
  (5, 500, 38, 'It lashes about with its tail to knock down its foe. It then tears up the fallen opponent with sharp claws.'),
  -- charizard in legends-za
  (6, 600, 38, 'Its wings can carry this Pokémon close to an altitude of 4,600 feet. It blows out fire at very high temperatures.'),
  -- mega-charizard-x in legends-za
  (6, 601, 38, 'The overwhelming power that fills its entire body causes it to turn black and creates intense blue flames.'),
  -- mega-charizard-y in legends-za
  (6, 602, 38, 'Its bond with its Trainer is the source of its power. It boasts speed and maneuverability greater than that of a jet.'),
  -- squirtle in legends-za
  (7, 700, 38, 'It hides in its shell to protect itself, then strikes back with spouts of water at every opportunity.'),
  -- wartortle in legends-za
  (8, 800, 38, 'When tapped on its head, this Pokémon will pull it in, but its tail will still stick out a little bit.'),
  -- blastoise in legends-za
  (9, 900, 38, 'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.'),
  -- mega-blastoise in legends-za
  (9, 901, 38, 'The cannon on its back is as powerful as a tank gun. Its tough legs and back enable it to withstand the recoil from firing the cannon.'),
  -- weedle in legends-za
  (13, 1300, 38, 'Often found in forests and grasslands. It has a sharp, toxic barb of around two inches on top of its head.'),
  -- kakuna in legends-za
  (14, 1400, 38, 'Almost incapable of moving, this Pokémon can only harden its shell to protect itself when it is in danger.'),
  -- beedrill in legends-za
  (15, 1500, 38, 'They may appear in a swarm. Beedrill flies at violent speeds, all the while stabbing with the toxic stinger on its rear.'),
  -- mega-beedrill in legends-za
  (15, 1501, 38, 'Its legs have become poison stingers. It stabs its prey repeatedly with the stingers on its limbs, dealing the final blow with the stinger on its rear.'),
  -- pidgey in legends-za
  (16, 1600, 38, 'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
  -- pidgeotto in legends-za
  (17, 1700, 38, 'This Pokémon has a sprawling territory and will fiercely peck at any intruder.'),
  -- pidgeot in legends-za
  (18, 1800, 38, 'It flies over water as it hunts, skimming along the surface to catch Magikarp and other such prey.'),
  -- mega-pidgeot in legends-za
  (18, 1801, 38, 'With its muscular strength now greatly increased, it can fly continuously for two weeks without resting.'),
  -- ekans in legends-za
  (23, 2300, 38, 'As it matures, it grows longer. At night, it wraps its long body around tree branches to rest.'),
  -- arbok in legends-za
  (24, 2400, 38, 'To intimidate foes, it spreads its chest wide and makes eerie sounds by expelling air from its mouth.'),
  -- pikachu in legends-za
  (25, 2500, 38, 'It has small electric sacs on both its cheeks. When in a tough spot, this Pokémon discharges electricity.'),
  -- raichu in legends-za
  (26, 2600, 38, 'When its electricity builds, its muscles are stimulated, and it becomes more aggressive than usual.'),
  -- alolan-raichu in legends-za
  (26, 2601, 38, 'It uses psychokinesis to control electricity. It hops aboard its own tail, using psychic power to lift the tail and move about while riding it.'),
  -- mega-raichu-x in legends-za
  (26, 2602, 38, 'It resembles an X as it flies through the air with 50 million volts of electricity sparking from its ears and forked tail.'),
  -- mega-raichu-y in legends-za
  (26, 2603, 38, 'It fires bolts of electricity from the tip of its tail and from the spiky tufts of fur growing out of its temples. This electricity forms the letter Y.'),
  -- clefairy in legends-za
  (35, 3500, 38, 'The moonlight that it stores in the wings on its back apparently gives it the ability to float in midair.'),
  -- clefable in legends-za
  (36, 3600, 38, 'A timid fairy Pokémon that is rarely seen, it will run and hide the moment it senses people.'),
  -- mega-clefable in legends-za
  (36, 3601, 38, 'It flies by using the power of moonlight to control gravity within a radius of over 32 feet around it.'),
  -- jigglypuff in legends-za
  (39, 3900, 38, 'Looking into its cute, round eyes prompts it to start singing a song so pleasant that listeners can’t help but fall asleep.'),
  -- wigglytuff in legends-za
  (40, 4000, 38, 'This Pokémon’s fur feels so nice that if two Wigglytuff snuggle up against each other, they can’t bring themselves to separate.'),
  -- zubat in legends-za
  (41, 4100, 38, 'It sleeps in caves during the day. It has no eyes, so it emits ultrasonic waves to check its surroundings while flying.'),
  -- golbat in legends-za
  (42, 4200, 38, 'Golbat punctures even the hardest of hides with its sharp fangs, then gorges itself on its victims’ blood.'),
  -- meowth in legends-za
  (52, 5200, 38, 'It loves anything that shines. It especially adores coins, which it will pick up and stash somewhere.'),
  -- alolan-meowth in legends-za
  (52, 5201, 38, 'It’s fickle, selfish, and easily bored. This species is very popular with certain Trainers—ones who prefer fulfilling others’ needs over their own.'),
  -- galarian-meowth in legends-za
  (52, 5202, 38, 'Its unkempt beard is a vestige from living in cold climes. It fights dauntlessly using its steel claws.'),
  -- persian in legends-za
  (53, 5300, 38, 'Many admire Persian for the dignity it exudes from every inch of its body. However, it will lash out with its claws given the slightest provocation.'),
  -- alolan-persian in legends-za
  (53, 5301, 38, 'Its round face is a symbol of wealth. Persian that have bigger, plumper faces are considered more beautiful.'),
  -- mankey in legends-za
  (56, 5600, 38, 'Mankey are perpetually angry. If they spot suitable prey, they will attack as a group.'),
  -- primeape in legends-za
  (57, 5700, 38, 'If approached while asleep, it may rouse just enough to fly into a groggy rage and give chase without even knowing what it’s doing.'),
  -- abra in legends-za
  (63, 6300, 38, 'It sleeps for 18 hours a day. It uses a variety of extrasensory powers even while asleep.'),
  -- kadabra in legends-za
  (64, 6400, 38, 'If it uses its abilities, it emits special alpha waves that cause machines to malfunction.'),
  -- alakazam in legends-za
  (65, 6500, 38, 'Its brain cells multiply continually until it dies. As a result, it remembers everything.'),
  -- mega-alakazam in legends-za
  (65, 6501, 38, 'Alakazam has traded away its muscles, unleashing its true power. With its psychic powers, it can foresee all things.'),
  -- machop in legends-za
  (66, 6600, 38, 'Its whole body is composed of muscles. Even though it’s the size of a human child, it can hurl 100 grown-ups.'),
  -- machoke in legends-za
  (67, 6700, 38, 'It can lift a dump truck with one hand. Using that kind of strength, it helps people do heavy jobs.'),
  -- machamp in legends-za
  (68, 6800, 38, 'It uses its four powerful arms to pin the limbs of its foe, then throws the victim over the horizon.'),
  -- bellsprout in legends-za
  (69, 6900, 38, 'Even though its body is extremely skinny, it is blindingly fast when catching its prey.'),
  -- weepinbell in legends-za
  (70, 7000, 38, 'It spits out Poison Powder to immobilize the enemy and then finishes it with a spray of acid.'),
  -- victreebel in legends-za
  (71, 7100, 38, 'Once taken into Victreebel’s body, even the hardest object will be melted into nothing by the Pokémon’s acid.'),
  -- mega-victreebel in legends-za
  (71, 7101, 38, 'The volume of this Pokémon’s acid has increased due to Mega Evolution, filling its mouth. If it’s not careful, the acid will overflow and spill out.'),
  -- slowpoke in legends-za
  (79, 7900, 38, 'It lazes vacantly near water. If something bites its tail, it won’t even notice for a whole day.'),
  -- galarian-slowpoke in legends-za
  (79, 7901, 38, 'Although this Pokémon is normally zoned out, its expression abruptly sharpens on occasion. The cause for this seems to lie in Slowpoke’s diet.'),
  -- slowbro in legends-za
  (80, 8000, 38, 'An attached Shellder won’t let go because of the tasty flavor that oozes out of Slowbro’s tail.'),
  -- mega-slowbro in legends-za
  (80, 8001, 38, 'When bathed in the energy of Mega Evolution, Shellder converts into impregnable armor. There is virtually no change in Slowpoke.'),
  -- galarian-slowbro in legends-za
  (80, 8002, 38, 'A Shellder bite set off a chemical reaction with the spices inside Slowbro’s body, causing Slowbro to become a Poison-type Pokémon.'),
  -- farfetchd in legends-za
  (83, 8300, 38, 'The plant stalk it holds is also its beloved weapon. Farfetch’d can swing the stalk like a katana to cut all sorts of things.'),
  -- galarian-farfetchd in legends-za
  (83, 8301, 38, 'Wielding a thick, heavy leek has strengthened its body. In battle, it bets everything on a single destructive blow.'),
  -- gastly in legends-za
  (92, 9200, 38, 'It’s born from gases. Anyone would faint if engulfed by its gaseous body, which contains poison.'),
  -- haunter in legends-za
  (93, 9300, 38, 'It licks with its gaseous tongue to steal its victim’s life force. It lurks in darkness, waiting for prey.'),
  -- gengar in legends-za
  (94, 9400, 38, 'It hides in shadows. It is said that in rooms where Gengar is hiding, the temperature drops by nearly 10 degrees Fahrenheit.'),
  -- mega-gengar in legends-za
  (94, 9401, 38, 'It can pass through other dimensions and appear anywhere. It caused a stir one time when it stuck just one leg out of a wall.'),
  -- onix in legends-za
  (95, 9500, 38, 'It usually lives underground. It searches for food while boring its way through the ground at 50 mph.'),
  -- cubone in legends-za
  (104, 10400, 38, 'This Pokémon lost its mother just after its birth. It wears her skull, never revealing its true face.'),
  -- marowak in legends-za
  (105, 10500, 38, 'It carries a bone that it collected from someplace unknown. Rumor has it that somewhere in the world, there is a graveyard only for Marowak.'),
  -- alolan-marowak in legends-za
  (105, 10501, 38, 'It has transformed the spirit of its dear departed mother into flames, and tonight it will once again dance in mourning of others of its kind.'),
  -- kangaskhan in legends-za
  (115, 11500, 38, 'It raises its offspring in its belly pouch. It lets its baby out to play only when it feels safe to do so.'),
  -- mega-kangaskhan in legends-za
  (115, 11501, 38, 'Its child has grown rapidly, thanks to the energy of Mega Evolution. Mother and child show off their harmonious teamwork in battle.'),
  -- staryu in legends-za
  (120, 12000, 38, 'Even if its body is torn, it can regenerate as long as the glowing central core remains intact.'),
  -- starmie in legends-za
  (121, 12100, 38, 'At the center of its body is a red core that sends mysterious radio signals into the night sky.'),
  -- mega-starmie in legends-za
  (121, 12101, 38, 'Its movements have become more humanlike. Whether it’s simply trying to communicate or wants to supplant humanity is unclear.'),
  -- mr-mime in legends-za
  (122, 12200, 38, 'It uses the mysterious power that emanates from its fingers to solidify the air around it into invisible walls.'),
  -- galarian-mr-mime in legends-za
  (122, 12201, 38, 'It uses its tap-dancing steps to rapidly chill the surrounding area and form a splendid stage made of ice.'),
  -- scyther in legends-za
  (123, 12300, 38, 'It tears and shreds prey with its wickedly sharp scythes. It very rarely spreads its wings to fly.'),
  -- pinsir in legends-za
  (127, 12700, 38, 'It swings its long pincers wildly to attack. During cold periods, it hides deep in forests.'),
  -- mega-pinsir in legends-za
  (127, 12701, 38, 'After Mega Evolution, it becomes able to fly. Perhaps because it’s so happy, it rarely touches the ground.'),
  -- magikarp in legends-za
  (129, 12900, 38, 'It is virtually worthless in terms of both power and speed. It is the weakest and most pathetic Pokémon in the world.'),
  -- gyarados in legends-za
  (130, 13000, 38, 'In ancient literature, there is a record of a Gyarados that razed a village when violence flared.'),
  -- mega-gyarados in legends-za
  (130, 13001, 38, 'It jets water from the orifices on its sides, streaking above the water surface at supersonic speed.'),
  -- eevee in legends-za
  (133, 13300, 38, 'Thanks to its unstable genetic makeup, this special Pokémon conceals many different possible evolutions.'),
  -- vaporeon in legends-za
  (134, 13400, 38, 'It has evolved to be suited for an aquatic life. It can become invisible when it melts away into water.'),
  -- jolteon in legends-za
  (135, 13500, 38, 'It absorbs negative ions from the atmosphere to spit out 10,000 volts of electricity.'),
  -- flareon in legends-za
  (136, 13600, 38, 'It has a flame sac inside its body. After inhaling deeply, it blows out flames of nearly 3,000 degrees Fahrenheit.'),
  -- porygon in legends-za
  (137, 13700, 38, 'This is an artificial Pokémon created as a result of research. Its programming contains only the most basic of actions.'),
  -- aerodactyl in legends-za
  (142, 14200, 38, 'It was regenerated from a pterosaur’s genetic matter that was found in amber. It flies with high- pitched cries.'),
  -- mega-aerodactyl in legends-za
  (142, 14201, 38, 'Parts of its body have become stone. Some scholars claim that this is Aerodactyl’s true appearance.'),
  -- dratini in legends-za
  (147, 14700, 38, 'This Pokémon is full of life energy. It continually sheds its skin and grows steadily larger.'),
  -- dragonair in legends-za
  (148, 14800, 38, 'Its crystalline orbs appear to give this Pokémon the power to freely control the weather.'),
  -- dragonite in legends-za
  (149, 14900, 38, 'It is said to make its home somewhere in the sea. It guides wrecked ships to shore.'),
  -- mega-dragonite in legends-za
  (149, 14901, 38, 'Mega Evolution has excessively powered up this Pokémon’s feelings of kindness. It finishes off its opponents with mercy in its heart.'),
  -- mewtwo in legends-za
  (150, 15000, 38, 'It was created by a scientist after years of horrific gene-splicing and DNA-engineering experiments.'),
  -- mega-mewtwo-x in legends-za
  (150, 15001, 38, 'Psychic power has augmented its muscles. It has a grip strength of one ton and can sprint 100 meters in two seconds flat!'),
  -- mega-mewtwo-y in legends-za
  (150, 15002, 38, 'Despite its diminished size, its mental power has grown phenomenally. With a mere thought, it can smash a skyscraper to smithereens.'),
  -- chikorita in legends-za
  (152, 15200, 38, 'A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up sun rays.'),
  -- bayleef in legends-za
  (153, 15300, 38, 'The spicy aroma emanating from around its neck has an energizing effect.'),
  -- meganium in legends-za
  (154, 15400, 38, 'The aroma that rises from its petals contains a substance that calms aggressive feelings.'),
  -- mega-meganium in legends-za
  (154, 15401, 38, 'This Pokémon can fire a tremendously powerful Solar Beam from its four flowers. Another name for this is Mega Sol Cannon.'),
  -- totodile in legends-za
  (158, 15800, 38, 'It is small but rough and tough. It won’t hesitate to take a bite out of anything that moves.'),
  -- croconaw in legends-za
  (159, 15900, 38, 'If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth.'),
  -- feraligatr in legends-za
  (160, 16000, 38, 'It usually moves slowly, but it goes at blinding speed when it attacks and bites prey.'),
  -- mega-feraligatr in legends-za
  (160, 16001, 38, 'With its arms and hoodlike fin, this Pokémon forms a gigantic set of jaws with a bite 10 times as powerful as Mega Feraligatr’s actual jaws.'),
  -- spinarak in legends-za
  (167, 16700, 38, 'It spins a web using fine yet durable thread. It then waits patiently for prey to be trapped.'),
  -- ariados in legends-za
  (168, 16800, 38, 'It spins string not only from its rear but also from its mouth. It’s hard to tell which end is which.'),
  -- crobat in legends-za
  (169, 16900, 38, 'If it bites you in the dark and sucks your blood, you won’t notice immediately—its fangs are so sharp that you won’t feel any pain.'),
  -- pichu in legends-za
  (172, 17200, 38, 'It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.'),
  -- cleffa in legends-za
  (173, 17300, 38, 'According to local rumors, Cleffa are often seen in places where shooting stars have fallen.'),
  -- igglybuff in legends-za
  (174, 17400, 38, 'It’s always practicing its singing because it wants to improve. Even when it’s asleep, it keeps singing in its dreams!'),
  -- mareep in legends-za
  (179, 17900, 38, 'Its fluffy coat doubles in size when static electricity builds up. Touching it can be shocking.'),
  -- flaaffy in legends-za
  (180, 18000, 38, 'If its coat becomes fully charged with electricity, its tail lights up. Flaaffy can fire wool that zaps on impact.'),
  -- ampharos in legends-za
  (181, 18100, 38, 'The tail’s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.'),
  -- mega-ampharos in legends-za
  (181, 18101, 38, 'Massive amounts of energy intensely stimulated Ampharos’s cells, apparently awakening its long- sleeping dragon’s blood.'),
  -- espeon in legends-za
  (196, 19600, 38, 'It uses the fine fur on its body to sense movement in the air and predict the weather...as well as its foes’ thoughts.'),
  -- umbreon in legends-za
  (197, 19700, 38, 'The light of the moon changed Eevee’s genetic structure. It lurks in the darkness, waiting for prey.'),
  -- slowking in legends-za
  (199, 19900, 38, 'It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.'),
  -- galarian-slowking in legends-za
  (199, 19901, 38, 'A combination of toxins and the shock of evolving has increased Shellder’s intelligence to the point that Shellder now controls Slowking.'),
  -- steelix in legends-za
  (208, 20800, 38, 'It chews its way through boulders with its sturdy jaws. Its eyes can see in the darkness underground.'),
  -- mega-steelix in legends-za
  (208, 20801, 38, 'To protect itself from opponents’ attacks, it uses magnetism to control pieces of its hard outer shell that have flaked off.'),
  -- qwilfish in legends-za
  (211, 21100, 38, 'To fire off the poison spikes covering its body, it inflates itself by sucking in over 2.6 gallons of water all at once.'),
  -- hisuian-qwilfish in legends-za
  (211, 21101, 38, 'This Pokémon eats toxic minerals to build up poison within itself. Get jabbed by it, and you’ll face three days and three nights of misery.'),
  -- scizor in legends-za
  (212, 21200, 38, 'It has a steel-hard body. It intimidates foes by upraising its eye-patterned pincers.'),
  -- mega-scizor in legends-za
  (212, 21201, 38, 'Due to the effects of Mega Evolution, its pincers have taken on a more diabolical form, ripping anything they pinch to shreds.'),
  -- heracross in legends-za
  (214, 21400, 38, 'This powerful Pokémon thrusts its prized horn under its enemies’ bellies, then lifts and throws them.'),
  -- mega-heracross in legends-za
  (214, 21401, 38, 'It can grip things with its two horns and lift 500 times its own body weight.'),
  -- delibird in legends-za
  (225, 22500, 38, 'It carries food rolled up in its tail. It has a habit of sharing food with people lost in the mountains.'),
  -- skarmory in legends-za
  (227, 22700, 38, 'Because it nests in bramble bushes, the feathers of its chicks grow hard from being scratched by thorns.'),
  -- mega-skarmory in legends-za
  (227, 22701, 38, 'It flies faster than the speed of sound. After whipping up shock waves to send enemies flying, it finishes them off with its talons.'),
  -- houndour in legends-za
  (228, 22800, 38, 'Around dawn, their ominous howls echo through the area to announce their territory.'),
  -- houndoom in legends-za
  (229, 22900, 38, 'The flames it breathes when angry contain toxins. If they cause a burn, it will hurt forever.'),
  -- mega-houndoom in legends-za
  (229, 22901, 38, 'Houndoom’s entire body generates heat when it Mega Evolves. Its intense, fiery breath turns its opponents to charcoal.'),
  -- porygon2 in legends-za
  (233, 23300, 38, 'Porygon was updated so it could carry out development projects on other planets. The update used cutting-edge technology for its time.'),
  -- larvitar in legends-za
  (246, 24600, 38, 'It feeds on soil. After it has eaten a large mountain, it will fall asleep so it can grow.'),
  -- pupitar in legends-za
  (247, 24700, 38, 'Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.'),
  -- tyranitar in legends-za
  (248, 24800, 38, 'If it rampages, it knocks down mountains and buries rivers. Maps must be redrawn afterward.'),
  -- mega-tyranitar in legends-za
  (248, 24801, 38, 'The effects of Mega Evolution make it more ferocious than ever. It’s unclear whether it can even hear its Trainer’s orders.'),
  -- treecko in legends-za
  (252, 25200, 38, 'Treecko can quickly scale even vertical surfaces. It senses humidity with its tails to predict the next day’s weather.'),
  -- grovyle in legends-za
  (253, 25300, 38, 'Its highly developed thigh muscles provide explosive bursts of power and incredible leaping capabilities.'),
  -- sceptile in legends-za
  (254, 25400, 38, 'The leaves that grow on its arms are sharp enough to fell thick trees by slicing clean through them. It is without peer in jungle combat.'),
  -- mega-sceptile in legends-za
  (254, 25401, 38, 'The seeds on its back are filled with energy from Mega Evolution. The Pokémon detonates these seeds to launch the tip of its tail.'),
  -- torchic in legends-za
  (255, 25500, 38, 'Torchic feels very warm to hug because a fire burns within it. It launches fireballs of over 1,800 degrees Fahrenheit.'),
  -- combusken in legends-za
  (256, 25600, 38, 'Its kicking mastery lets it unleash 10 kicks per second. It emits sharp cries to intimidate foes.'),
  -- blaziken in legends-za
  (257, 25700, 38, 'It can jump powerfully enough to clear a 30-story building. It uses flaming punches to incinerate its opponents.'),
  -- mega-blaziken in legends-za
  (257, 25701, 38, 'Boiling-hot blood courses through its entire body, doubling the sharpness of its moves. It subdues opponents in the blink of an eye.'),
  -- mudkip in legends-za
  (258, 25800, 38, 'Using the fin on its head, Mudkip senses the flow of water to keep track of what’s going on around it. It has the strength to heft boulders.'),
  -- marshtomp in legends-za
  (259, 25900, 38, 'Its sturdy legs and hips give it sure footing, even on sludgy surfaces. It buries itself in mud to sleep.'),
  -- swampert in legends-za
  (260, 26000, 38, 'This Pokémon is so strong that it can tow a large ship while it swims. It bashes down foes with a single swing of its thick arms.'),
  -- mega-swampert in legends-za
  (260, 26001, 38, 'The water within its body further strengthens its already enlarged muscles, using the same principles as a hydraulic pump.'),
  -- ralts in legends-za
  (280, 28000, 38, 'If its red horns capture the warm feelings of people or Pokémon, its body warms up slightly.'),
  -- kirlia in legends-za
  (281, 28100, 38, 'The cheerful spirit of its Trainer gives it energy for its psychokinetic power. It spins and dances when happy.'),
  -- gardevoir in legends-za
  (282, 28200, 38, 'It has the power to predict the future. Its power peaks when it is protecting its Trainer.'),
  -- mega-gardevoir in legends-za
  (282, 28201, 38, 'When it opens the red plate on its chest and unleashes its heart, its strongest psychic power is released.'),
  -- sableye in legends-za
  (302, 30200, 38, 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.'),
  -- mega-sableye in legends-za
  (302, 30201, 38, 'The jewel from its chest, which has grown gigantic due to the effects of Mega Evolution, can turn back any attack.'),
  -- mawile in legends-za
  (303, 30300, 38, 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.'),
  -- mega-mawile in legends-za
  (303, 30301, 38, 'Its two sets of jaws thrash about violently as if they each had a will of their own. One gnash from them can turn a boulder to dust.'),
  -- aron in legends-za
  (304, 30400, 38, 'When it evolves, it sheds the steel carapace that covered its whole body and develops a new one.'),
  -- lairon in legends-za
  (305, 30500, 38, 'It loves iron ore. Groups of them fight for territory by bashing one another with their steel bodies.'),
  -- aggron in legends-za
  (306, 30600, 38, 'It claims an entire mountain as its own. The more wounds it has, the more it has battled, so don’t take it lightly.'),
  -- mega-aggron in legends-za
  (306, 30601, 38, 'Energy from Mega Evolution has turned the iron inside this Pokémon into steel armor that covers Mega Aggron’s whole body.'),
  -- meditite in legends-za
  (307, 30700, 38, 'It meditates in order to build up its mental energy. It eats just one berry a day.'),
  -- medicham in legends-za
  (308, 30800, 38, 'Through yoga training, it gained the psychic power to predict its foe’s movements.'),
  -- mega-medicham in legends-za
  (308, 30801, 38, 'Thanks to Mega Evolution, its mental power is limitless. It conjures up arms imbued with malice to defeat its enemies.'),
  -- electrike in legends-za
  (309, 30900, 38, 'It stores static electricity in its fur for discharging. This Pokémon’s whole body gives off sparks if a storm approaches.'),
  -- manectric in legends-za
  (310, 31000, 38, 'It discharges electricity from its mane. The Pokémon creates a thundercloud overhead from which to drop lightning bolts.'),
  -- mega-manectric in legends-za
  (310, 31001, 38, 'Mega Evolution fills its body with a tremendous amount of electricity, but it’s too much for Manectric to fully control.'),
  -- roselia in legends-za
  (315, 31500, 38, 'It uses the different poisons in each hand separately when it attacks. The stronger its aroma, the healthier it is.'),
  -- gulpin in legends-za
  (316, 31600, 38, 'Its stomach makes up most of its body. Its powerful gastric juices quickly digest anything it swallows.'),
  -- swalot in legends-za
  (317, 31700, 38, 'It swallows anything whole. It douses foes with the highly toxic fluid it secretes from its follicles.'),
  -- carvanha in legends-za
  (318, 31800, 38, 'They live in massive rivers that course through jungles. Swarms of these Pokémon attack any prey that wanders into their territory.'),
  -- sharpedo in legends-za
  (319, 31900, 38, 'It can swim at speeds of 75 mph by jetting seawater through its body. It is the bandit of the sea.'),
  -- mega-sharpedo in legends-za
  (319, 31901, 38, 'The spines sprouting from its head are transformed fangs. If they’re injured or broken off, the spines will regenerate countless times.'),
  -- numel in legends-za
  (322, 32200, 38, 'The magma in its body reaches 2,200 degrees Fahrenheit. Its hump gets smaller when it uses Fire-type moves.'),
  -- camerupt in legends-za
  (323, 32300, 38, 'The volcanoes on its back have a major eruption every 10 years—or whenever it becomes really angry.'),
  -- mega-camerupt in legends-za
  (323, 32301, 38, 'When this Pokémon’s rage reaches a boiling point, the huge volcano in the hump on its back erupts violently, spewing molten lava.'),
  -- spoink in legends-za
  (325, 32500, 38, 'It bounces constantly, using its tail like a spring. The vibrations from this bouncing make its heart beat.'),
  -- grumpig in legends-za
  (326, 32600, 38, 'This Pokémon uses its black pearls to amplify its psychic power. It can control the minds of its foes through its mysterious dancing.'),
  -- swablu in legends-za
  (333, 33300, 38, 'For some reason, it likes to land on people’s heads softly and act like it’s a hat.'),
  -- altaria in legends-za
  (334, 33400, 38, 'It flies gracefully through the sky. Its melodic humming makes you feel like you’re in a dream.'),
  -- mega-altaria in legends-za
  (334, 33401, 38, 'Its down is so soft, it seems as if a touch could melt it. But it’s strong enough that just a few strands could be used to hoist a dump truck.'),
  -- zangoose in legends-za
  (335, 33500, 38, 'Every hair on its body stands up if it so much as smells a Seviper. Its sharp claws tear foes apart.'),
  -- seviper in legends-za
  (336, 33600, 38, 'It battles speedy Zangoose using its keenly bladed tail, which oozes an extremely powerful poison.'),
  -- feebas in legends-za
  (349, 34900, 38, 'They are famous for their shabby appearance. Although Feebas are plentiful in number, they tend to cluster in specific places.'),
  -- milotic in legends-za
  (350, 35000, 38, 'They dwell at the bottoms of big lakes. Anyone who beholds the loveliness of these Pokémon is said to have their heart purified.'),
  -- kecleon in legends-za
  (352, 35200, 38, 'It changes color to blend in with its surroundings in order to sneak up on prey. It can’t make its belly pattern disappear, however.'),
  -- shuppet in legends-za
  (353, 35300, 38, 'It uses its horn to feed on envy and malice—or so it’s said. It’s very active at night.'),
  -- banette in legends-za
  (354, 35400, 38, 'A doll bore a grudge over being junked, and it became a Pokémon. It seeks the child that disowned it.'),
  -- mega-banette in legends-za
  (354, 35401, 38, 'Mega Evolution increases its vindictiveness, and the cursing power that was held back by its zipper comes spilling out.'),
  -- chimecho in legends-za
  (358, 35800, 38, 'Chimecho create air vibrations with their cries to send foes flying. They have seven different types of cries they use to converse with one another.'),
  -- mega-chimecho in legends-za
  (358, 35801, 38, 'It vibrates its entire body to attack in all directions using sound waves. Any who hear the vibrations get so confused, they forget who they are.'),
  -- absol in legends-za
  (359, 35900, 38, 'It senses coming disasters and appears before people only to warn them of impending danger.'),
  -- mega-absol in legends-za
  (359, 35901, 38, 'When this Pokémon whips the winglike fur on its back as though beating its wings, it sends an intimidating aura flying at its opponents.'),
  -- mega-absol-z in legends-za
  (359, 35902, 38, 'Using fur that it has made into sharp, clawlike shapes, it cuts down foes with a single blow. This is an act of kindness to keep them from suffering.'),
  -- snorunt in legends-za
  (361, 36100, 38, 'In some snowy lands, certain folklore says a house will prosper if a Snorunt lives there.'),
  -- glalie in legends-za
  (362, 36200, 38, 'To protect itself, it clad its body in an armor of ice, made by freezing moisture in the air.'),
  -- mega-glalie in legends-za
  (362, 36201, 38, 'When it spews stupendously cold air from its broken mouth, the entire area around it gets whited out.'),
  -- bagon in legends-za
  (371, 37100, 38, 'Its well-developed neck muscles and ironlike head can smash boulders into pieces.'),
  -- shelgon in legends-za
  (372, 37200, 38, 'Within its rugged shell, its cells have begun changing. The shell peels off the instant the Pokémon evolves.'),
  -- salamence in legends-za
  (373, 37300, 38, 'It’s uncontrollable if enraged. It flies around spouting flames, scorching fields and mountains.'),
  -- mega-salamence in legends-za
  (373, 37301, 38, 'To streamline itself for flight, it pulls its forelegs into its shell. Salamence flies at high speeds even when faced with complex topographical features.'),
  -- beldum in legends-za
  (374, 37400, 38, 'They communicate with one another by using magnetic pulses. In a swarm, they move in perfect unison.'),
  -- metang in legends-za
  (375, 37500, 38, 'It is formed by two Beldum joining together. Its steel body won’t be scratched if it collides with a jet.'),
  -- metagross in legends-za
  (376, 37600, 38, 'Metang combined to form it. With four brains, it has the intelligence of a supercomputer.'),
  -- mega-metagross in legends-za
  (376, 37601, 38, 'This form results from one Metagross, one Metang, and two Beldum linking up.'),
  -- latias in legends-za
  (380, 38000, 38, 'It communicates its feelings using telepathy. To make itself invisible, it covers its body in down that refracts light.'),
  -- mega-latias in legends-za
  (380, 38001, 38, 'Both its flying capabilities and its attack power have increased. It scatters transparent down to confuse its enemies.'),
  -- latios in legends-za
  (381, 38100, 38, 'It understands human speech and is highly intelligent. It is a tender Pokémon that dislikes fighting.'),
  -- mega-latios in legends-za
  (381, 38101, 38, 'It flies at speeds exceeding Mach 4. It is among the top tier of all Pokémon in terms of aerial combat capability.'),
  -- kyogre in legends-za
  (382, 38200, 38, 'In myths, this Pokémon expanded the seas with torrential rains and great tsunamis. It battled ferociously against Groudon.'),
  -- primal-kyogre in legends-za
  (382, 38201, 38, 'Kyogre reverted to this state via the Blue Orb, which contains the energy of the primordial world. Kyogre’s body resembles seawater.'),
  -- groudon in legends-za
  (383, 38300, 38, 'Groudon is said to have expanded the reach of dry land by evaporating water with raging heat. It battled ferociously against Kyogre.'),
  -- primal-groudon in legends-za
  (383, 38301, 38, 'This is Groudon’s true form, restored using the Red Orb. Energy spills from its body in the form of magma.'),
  -- rayquaza in legends-za
  (384, 38400, 38, 'Rayquaza cannot be seen from the ground because it lives in the ozone layer, far above the clouds.'),
  -- mega-rayquaza in legends-za
  (384, 38401, 38, 'A shooting star streaking across the night sky may, in fact, be Mega Rayquaza flying gracefully after a meteoroid.'),
  -- starly in legends-za
  (396, 39600, 38, 'They flock in great numbers. Though small, they flap their wings with great power.'),
  -- staravia in legends-za
  (397, 39700, 38, 'Their habitats include forests and fields. Territorial squabbles occur whenever flocks happen to meet.'),
  -- staraptor in legends-za
  (398, 39800, 38, 'The muscles in its wings and legs are strong. It can easily fly while gripping a small Pokémon.'),
  -- mega-staraptor in legends-za
  (398, 39801, 38, 'Mega Staraptor is a top-class flier. It can easily soar through the sky while gripping a Steelix that weighs more than 880 lbs.'),
  -- budew in legends-za
  (406, 40600, 38, 'When it feels the sun’s warm touch, it opens its bud to release pollen. It lives alongside clear pools.'),
  -- roserade in legends-za
  (407, 40700, 38, 'It lures prey in with a sweet scent, then finishes them off with the poisonous whips on its arms— either by constricting the prey or skewering them.'),
  -- buneary in legends-za
  (427, 42700, 38, 'One of Buneary’s ears is always rolled up. It can be forcefully extended to shatter even a large boulder.'),
  -- lopunny in legends-za
  (428, 42800, 38, 'This Pokémon’s ears are apparently very delicate. They must be handled gently and with care, or else Lopunny will kick you with its graceful legs.'),
  -- mega-lopunny in legends-za
  (428, 42801, 38, 'It swings its ears like whips and strikes its enemies with them. It has an intensely combative disposition.'),
  -- chingling in legends-za
  (433, 43300, 38, 'It emits cries by agitating an orb at the back of its throat. It gently bounces along from place to place.'),
  -- mime-jr in legends-za
  (439, 43900, 38, 'Mime Jr. is a gifted mimic. When it startles an opponent with its skills, it feels so delighted that it forgets to keep up its act.'),
  -- gible in legends-za
  (443, 44300, 38, 'It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.'),
  -- gabite in legends-za
  (444, 44400, 38, 'As it digs to expand its nest, it unearths raw gemstones. It has a habit of hoarding these in its nest.'),
  -- garchomp in legends-za
  (445, 44500, 38, 'It flies at speeds equal to a jet fighter plane. It never allows its prey to escape.'),
  -- mega-garchomp in legends-za
  (445, 44501, 38, 'Its disposition is more vicious than before its Mega Evolution. Garchomp carves its opponents up with the scythes on both arms.'),
  -- mega-garchomp-z in legends-za
  (445, 44502, 38, 'Garchomp has gained a new Mega-Evolved form. It flies around foes at Mach speed and cuts them to shreds with its sinister wing claws.'),
  -- riolu in legends-za
  (447, 44700, 38, 'The aura that emanates from its body intensifies to alert others if it is afraid or sad.'),
  -- lucario in legends-za
  (448, 44800, 38, 'By reading the auras of all things, it can tell how others are feeling from over half a mile away.'),
  -- mega-lucario in legends-za
  (448, 44801, 38, 'Black streaks all over its body show where its auras and the energy of Mega Evolution intermingled and raced through it.'),
  -- mega-lucario-z in legends-za
  (448, 44802, 38, 'By completely cloaking itself in its aura, Mega Lucario Z can parry all manner of attacks, battling as if it were gracefully dancing.'),
  -- hippopotas in legends-za
  (449, 44900, 38, 'It enshrouds itself with sand to protect itself from germs. It does not enjoy getting wet.'),
  -- hippowdon in legends-za
  (450, 45000, 38, 'It blasts internally stored sand from ports on its body to create a towering twister for attack.'),
  -- snover in legends-za
  (459, 45900, 38, 'In the spring, it grows berries with the texture of frozen treats around its belly.'),
  -- abomasnow in legends-za
  (460, 46000, 38, 'It blankets wide areas in snow by whipping up blizzards. It is also known as the Ice Monster.'),
  -- mega-abomasnow in legends-za
  (460, 46001, 38, 'The buds on its back have sprouted into impressive icicles that can whip up massive blizzards of −22 degrees Fahrenheit.'),
  -- leafeon in legends-za
  (470, 47000, 38, 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.'),
  -- glaceon in legends-za
  (471, 47100, 38, 'By controlling its body heat, it can freeze the atmosphere around it to make a diamond-dust flurry.'),
  -- porygon-z in legends-za
  (474, 47400, 38, 'Porygon-Z’s programming was updated so that the Pokémon might operate in other dimensions. Its behavior has been strikingly odd ever since.'),
  -- gallade in legends-za
  (475, 47500, 38, 'A master of courtesy and swordsmanship, it fights using the extending swords on its elbows.'),
  -- mega-gallade in legends-za
  (475, 47501, 38, 'It gets power from the bond it has with its Trainer. Mega Evolution has given it plates to slice its enemies and a cape to protect its body.'),
  -- froslass in legends-za
  (478, 47800, 38, 'It freezes foes with an icy breath that is nearly −60 degrees Fahrenheit. What seems to be its body is actually hollow.'),
  -- mega-froslass in legends-za
  (478, 47801, 38, 'This Pokémon can use eerie cold air imbued with ghost energy to freeze even insubstantial things, such as flames or the wind.'),
  -- rotom in legends-za
  (479, 47900, 38, 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.'),
  -- rotom-heat in legends-za
  (479, 47901, 38, 'This Rotom has possessed a convection microwave oven that uses a special motor. It has a flair for manipulating flames.'),
  -- rotom-wash in legends-za
  (479, 47902, 38, 'This Rotom has possessed a washing machine that uses a special motor. It blasts out water to intimidate opponents.'),
  -- rotom-frost in legends-za
  (479, 47903, 38, 'This Rotom has possessed a refrigerator that uses a special motor. It battles by spewing cold air.'),
  -- rotom-fan in legends-za
  (479, 47904, 38, 'This Rotom has possessed an electric fan that uses a special motor. It sends its enemies flying with gusts of wind.'),
  -- rotom-mow in legends-za
  (479, 47905, 38, 'This Rotom has possessed a lawn mower that uses a special motor. As it mows down grass, it scatters the clippings everywhere.'),
  -- heatran in legends-za
  (485, 48500, 38, 'Boiling, magma-like blood circulates through its body. It makes its dwelling place in volcanic caves.'),
  -- mega-heatran in legends-za
  (485, 48501, 38, 'It’s said that if it goes all out, it can heat its body up to temperatures over 1.8 million degrees Fahrenheit. This heat keeps enemies at bay.'),
  -- darkrai in legends-za
  (491, 49100, 38, 'It can lull people into a deep sleep and make them dream. It is active on nights with a new moon.'),
  -- mega-darkrai in legends-za
  (491, 49101, 38, 'Its dark power blocks out the sun, plunging the surrounding area into darkness. There is no escaping its evil eye.'),
  -- tepig in legends-za
  (498, 49800, 38, 'It can deftly dodge its foe’s attacks while shooting fireballs from its nose. It roasts berries before it eats them.'),
  -- pignite in legends-za
  (499, 49900, 38, 'The more it eats, the more fuel it has to make the fire in its stomach stronger. This fills it with even more power.'),
  -- emboar in legends-za
  (500, 50000, 38, 'It has mastered fast and powerful fighting moves. It grows a beard of fire.'),
  -- mega-emboar in legends-za
  (500, 50001, 38, 'Brandishing a blazing flame shaped like a serpentine spear, it rushes in to rescue its imperiled allies.'),
  -- patrat in legends-za
  (504, 50400, 38, 'Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.'),
  -- watchog in legends-za
  (505, 50500, 38, 'Using luminescent matter within its body, it makes its eyes and body glow and stuns attacking opponents.'),
  -- purrloin in legends-za
  (509, 50900, 38, 'Purrloin steals from people for fun, but its behavior is so charming that its victims can’t help but forgive it.'),
  -- liepard in legends-za
  (510, 51000, 38, 'Liepard appear without warning and disappear just as unexpectedly. Their beautiful physique and fur charm many Trainers.'),
  -- pansage in legends-za
  (511, 51100, 38, 'It shares the leaves on its head with weary Pokémon. These leaves reduce fatigue.'),
  -- simisage in legends-za
  (512, 51200, 38, 'Ill-tempered, it fights by swinging its barbed tail around wildly. The leaves growing on its head are very bitter.'),
  -- pansear in legends-za
  (513, 51300, 38, 'Very intelligent, it roasts berries before eating them. It likes to help people.'),
  -- simisear in legends-za
  (514, 51400, 38, 'When it gets excited, embers rise from its head and tail and it gets hot. For some reason, it loves sweets.'),
  -- panpour in legends-za
  (515, 51500, 38, 'The water stored inside the tuft on its head is full of nutrients. It provides this water to plants by using its tail.'),
  -- simipour in legends-za
  (516, 51600, 38, 'It prefers places with clean water. When the stores of water on its head run low, it replenishes its supply by siphoning up more with its tail.'),
  -- munna in legends-za
  (517, 51700, 38, 'It eats the dreams of people and Pokémon. When it eats a pleasant dream, it expels pink-colored mist.'),
  -- musharna in legends-za
  (518, 51800, 38, 'The mist from its forehead takes the shape of things that appeared in dreams Musharna has eaten, giving those dreams physical form.'),
  -- drilbur in legends-za
  (529, 52900, 38, 'By spinning its body, it can dig straight through the ground at a speed of 30 mph.'),
  -- excadrill in legends-za
  (530, 53000, 38, 'More than 300 feet below the surface, they build mazelike nests. Their activity can be destructive to subway tunnels.'),
  -- mega-excadrill in legends-za
  (530, 53001, 38, 'If this Pokémon brings its arms and head together to form a streamlined shape and spins at high speeds, it can destroy anything.'),
  -- audino in legends-za
  (531, 53100, 38, 'It touches others with the feelers on its ears, using the sound of their heartbeats to check their emotions and physical health.'),
  -- mega-audino in legends-za
  (531, 53101, 38, 'Anyone who touches the secondary feelers that have sprouted from the base of its throat will fall into a deep sleep.'),
  -- throh in legends-za
  (538, 53800, 38, 'They train strenuously in groups of five. Any member that can’t keep up will discard its belt and leave the group.'),
  -- sawk in legends-za
  (539, 53900, 38, 'Tightening their belts gets them pumped and makes their punches more destructive. Disturb their training and you’ll earn their wrath.'),
  -- venipede in legends-za
  (543, 54300, 38, 'Its bite injects a venom potent enough to paralyze even the large bird Pokémon that try to prey on it.'),
  -- whirlipede in legends-za
  (544, 54400, 38, 'Protected by a hard shell, it spins its body like a wheel and crashes furiously into its enemies.'),
  -- scolipede in legends-za
  (545, 54500, 38, 'It clasps its prey with the claws on its neck until they stop moving. Then it finishes them off with deadly venom.'),
  -- mega-scolipede in legends-za
  (545, 54501, 38, 'Its deadly venom gives off a faint glow. The venom affects Scolipede’s mind, honing its viciousness.'),
  -- sandile in legends-za
  (551, 55100, 38, 'It moves below the sand’s surface, exposing only its nose and eyes. A black membrane shields its eyes from the sun.'),
  -- krokorok in legends-za
  (552, 55200, 38, 'The special membrane covering its eyes can sense the heat of objects, so it can see its surroundings even in darkness.'),
  -- krookodile in legends-za
  (553, 55300, 38, 'They never allow prey to escape. Their jaws are so powerful, they can tear apart the body of an automobile.'),
  -- scraggy in legends-za
  (559, 55900, 38, 'Its skin has a rubbery elasticity, so it can reduce damage by defensively pulling its skin up to its neck.'),
  -- scrafty in legends-za
  (560, 56000, 38, 'It pulls up its shed skin to protect itself while it kicks. The bigger the crest, the more arrogantly it behaves.'),
  -- mega-scrafty in legends-za
  (560, 56001, 38, 'Mega Evolution has caused Scrafty’s shed skin to turn white, growing tough and supple. Of course, this Pokémon is still as feisty as ever.'),
  -- yamask in legends-za
  (562, 56200, 38, 'Each Yamask carries a mask representing the face it had when it was still human. Sometimes it gazes at the mask and weeps.'),
  -- galarian-yamask in legends-za
  (562, 56201, 38, 'A cursed clay slab and a departed spirit have become bound together. This Pokémon swings its slab around with malicious intent.'),
  -- cofagrigus in legends-za
  (563, 56300, 38, 'Grave robbers sometimes mistake this Pokémon for a real coffin and get too close to it. They end up trapped within Cofagrigus’s body.'),
  -- trubbish in legends-za
  (568, 56800, 38, 'The combination of garbage bags and industrial waste caused the chemical reaction that created this Pokémon.'),
  -- garbodor in legends-za
  (569, 56900, 38, 'Consuming garbage makes new kinds of poison gases and liquids inside their bodies.'),
  -- vanillite in legends-za
  (582, 58200, 38, 'The temperature of their breath is −58 degrees Fahrenheit. They create snow crystals and make snow fall in the areas around them.'),
  -- vanillish in legends-za
  (583, 58300, 38, 'They cool down the surrounding air and create ice particles, which they use to freeze their foes.'),
  -- vanilluxe in legends-za
  (584, 58400, 38, 'If both heads get angry simultaneously, this Pokémon expels a blizzard from its horn, burying everything in snow.'),
  -- emolga in legends-za
  (587, 58700, 38, 'The energy made in its cheeks’ electric pouches is stored inside its patagial membranes and released while it is gliding.'),
  -- foongus in legends-za
  (590, 59000, 38, 'It lures targets in with its Poké Ball–like pattern and sprays poison spores at them. Why it resembles a Poké Ball is unknown.'),
  -- amoonguss in legends-za
  (591, 59100, 38, 'They show off their Poké Ball caps in an attempt to lure prey close, but few Pokémon are fooled.'),
  -- tynamo in legends-za
  (602, 60200, 38, 'One alone can emit only a trickle of electricity, so a group of them gathers to unleash a powerful electric shock.'),
  -- eelektrik in legends-za
  (603, 60300, 38, 'It wraps itself around its prey and paralyzes them with electricity from the round spots on its sides. Then it chomps.'),
  -- eelektross in legends-za
  (604, 60400, 38, 'With their sucker mouths, they latch on to prey. Then they use their fangs to shock the prey with electricity.'),
  -- mega-eelektross in legends-za
  (604, 60401, 38, 'It now generates 10 times the electricity it did before Mega Evolving. It discharges this electricity from its false Eelektrik, which are made of mucus.'),
  -- litwick in legends-za
  (607, 60700, 38, 'Litwick shines a light that absorbs the life energy of people and Pokémon, which becomes the fuel that it burns.'),
  -- lampent in legends-za
  (608, 60800, 38, 'Lampent appears at the moment of death and promptly absorbs the spirit as it leaves the body.'),
  -- chandelure in legends-za
  (609, 60900, 38, 'Being consumed in Chandelure’s flame burns up the spirit, leaving the body behind.'),
  -- mega-chandelure in legends-za
  (609, 60901, 38, 'One of its eyes is a window linking our world with the afterlife. This Pokémon draws in hatred and converts it into power.'),
  -- cryogonal in legends-za
  (615, 61500, 38, 'Cryogonal use chains made of ice crystals to ensnare prey. They freeze their victims at −148 degrees Fahrenheit.'),
  -- stunfisk in legends-za
  (618, 61800, 38, 'It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of electricity.'),
  -- galarian-stunfisk in legends-za
  (618, 61801, 38, 'Living in mud with a high iron content has given it a strong steel body.'),
  -- golett in legends-za
  (622, 62200, 38, 'Ancient people apparently fashioned Golett out of clay to do their labor for them. What powers these Pokémon remains unclear.'),
  -- golurk in legends-za
  (623, 62300, 38, 'It’s said that inside Golurk is a perpetual motion machine that produces energy, but the truth is not yet known.'),
  -- mega-golurk in legends-za
  (623, 62301, 38, 'The energy within Golurk has been stimulated by Mega Evolution. The Pokémon could explode at any moment.'),
  -- cobalion in legends-za
  (638, 63800, 38, 'It has a body and heart of steel. One glare from Cobalion can bring even the most ferocious of Pokémon to heel.'),
  -- terrakion in legends-za
  (639, 63900, 38, 'It charges with enough force to break through a giant castle wall in one blow. This Pokémon is spoken of in legends.'),
  -- virizion in legends-za
  (640, 64000, 38, 'It confounds opponents with its quick movement, darting around them like a whirlwind as it carves them up mercilessly with its sharp horns.'),
  -- keldeo in legends-za
  (647, 64700, 38, 'By shooting water from its hooves, Keldeo can travel across the water’s surface as if skating. It’s skilled at using kicking moves in battle.'),
  -- keldeo-resolute in legends-za
  (647, 64701, 38, 'Keldeo’s magnificent horn is proof of its resolve. Its allies provided guidance, and their hopes became Keldeo’s tricolored plume of feathers.'),
  -- meloetta in legends-za
  (648, 64800, 38, 'Sung using a special vocalization technique, Meloetta’s songs can manipulate the emotions of those who hear them.'),
  -- meloetta-pirouette in legends-za
  (648, 64801, 38, 'Now that it has reclaimed a long-forgotten song, Meloetta captivates everyone with its enchanting dance steps.'),
  -- genesect in legends-za
  (649, 64900, 38, 'This bug Pokémon of the Paleozoic era was revived by a certain organization, which also upgraded the cannon on Genesect’s back.'),
  -- genesect-douse-drive in legends-za
  (649, 64901, 38, 'Genesect assumes its flight configuration to soar through the sky. Its current form is equipped with a cassette loaded with water energy.'),
  -- genesect-shock-drive in legends-za
  (649, 64902, 38, 'Genesect fires off projectile energy blasts. Its current form is equipped with a cassette loaded with electric energy.'),
  -- genesect-burn-drive in legends-za
  (649, 64903, 38, 'Genesect possesses sharp steel claws. Its current form is equipped with a cassette loaded with fire energy.'),
  -- genesect-chill-drive in legends-za
  (649, 64904, 38, 'Genesect is devoid of mercy. Its current form is equipped with a cassette loaded with ice energy.'),
  -- chespin in legends-za
  (650, 65000, 38, 'The quills on its head are usually soft. When it flexes them, the points become so hard and sharp that they can pierce rock.'),
  -- quilladin in legends-za
  (651, 65100, 38, 'They strengthen their lower bodies by running into one another. They are very kind and won’t start fights.'),
  -- chesnaught in legends-za
  (652, 65200, 38, 'Its tackle is forceful enough to flip a 50-ton tank. It shields its allies from danger with its own body.'),
  -- mega-chesnaught in legends-za
  (652, 65201, 38, 'It has fortified armor and a will to defend at all costs. Both are absurdly strong.'),
  -- fennekin in legends-za
  (653, 65300, 38, 'Eating a twig fills it with energy, and its roomy ears give vent to air hotter than 390 degrees Fahrenheit.'),
  -- braixen in legends-za
  (654, 65400, 38, 'It keeps a twig in its tail. Using friction from its tail fur, it sets the twig on fire and launches into battle.'),
  -- delphox in legends-za
  (655, 65500, 38, 'Using psychic power, it generates a fiery vortex of 5,400 degrees Fahrenheit, incinerating foes swept into this whirl of flame.'),
  -- mega-delphox in legends-za
  (655, 65501, 38, 'It wields flaming branches to dazzle its opponents before incinerating them with a huge fireball.'),
  -- froakie in legends-za
  (656, 65600, 38, 'It protects its skin by covering its body in delicate bubbles. Beneath its happy-go-lucky air, it keeps a watchful eye on its surroundings.'),
  -- frogadier in legends-za
  (657, 65700, 38, 'Its swiftness is unparalleled. It can scale a tower of more than 2,000 feet in a minute’s time.'),
  -- greninja in legends-za
  (658, 65800, 38, 'It creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two.'),
  -- mega-greninja in legends-za
  (658, 65801, 38, 'This Pokémon spins a giant shuriken at high speed to make it float, then clings to it upside down to catch opponents unawares.'),
  -- greninja-battle-bond in legends-za
  (658, 65802, 38, 'It creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two.'),
  -- bunnelby in legends-za
  (659, 65900, 38, 'They use their large ears to dig burrows. They will dig the whole night through without rest.'),
  -- diggersby in legends-za
  (660, 66000, 38, 'With their powerful ears, they can heft boulders of a ton or more with ease. They can be a big help at construction sites.'),
  -- fletchling in legends-za
  (661, 66100, 38, 'Despite the beauty of its lilting voice, it’s merciless to intruders that enter its territory.'),
  -- fletchinder in legends-za
  (662, 66200, 38, 'The hotter the flame sac in its belly, the faster it can fly, but it takes some time to get the fire going.'),
  -- talonflame in legends-za
  (663, 66300, 38, 'In the fever of an exciting battle, it showers embers from the gaps between its feathers as it flies.'),
  -- scatterbug in legends-za
  (664, 66400, 38, 'The powder that covers its body regulates its temperature, so it can live in any region or climate.'),
  -- spewpa in legends-za
  (665, 66500, 38, 'It lives hidden within thicket shadows. When predators attack, it bristles the fur covering its body in an effort to threaten them.'),
  -- vivillon in legends-za
  (666, 66600, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from frigid lands.'),
  -- vivillon-icy-snow in legends-za
  (666, 66601, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from snowy lands.'),
  -- vivillon-polar in legends-za
  (666, 66602, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of severe cold.'),
  -- vivillon-tundra in legends-za
  (666, 66603, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of vast space.'),
  -- vivillon-continental in legends-za
  (666, 66604, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from verdant lands.'),
  -- vivillon-garden in legends-za
  (666, 66605, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with distinct seasons.'),
  -- vivillon-elegant in legends-za
  (666, 66606, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands where flowers bloom.'),
  -- vivillon-modern in legends-za
  (666, 66607, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from sun-drenched lands.'),
  -- vivillon-marine in legends-za
  (666, 66608, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with ocean breezes.'),
  -- vivillon-archipelago in legends-za
  (666, 66609, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from places with many islands.'),
  -- vivillon-high-plains in legends-za
  (666, 66610, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with little rain.'),
  -- vivillon-sandstorm in legends-za
  (666, 66611, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from parched lands.'),
  -- vivillon-river in legends-za
  (666, 66612, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands where large rivers flow.'),
  -- vivillon-monsoon in legends-za
  (666, 66613, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with intense rainfall.'),
  -- vivillon-savanna in legends-za
  (666, 66614, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands with a tropical climate.'),
  -- vivillon-sun in legends-za
  (666, 66615, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands bathed in light.'),
  -- vivillon-ocean in legends-za
  (666, 66616, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of perpetual summer.'),
  -- vivillon-jungle in legends-za
  (666, 66617, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from lands of tropical rain forests.'),
  -- vivillon-fancy in legends-za
  (666, 66618, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from a mysterious land.'),
  -- vivillon-poke-ball in legends-za
  (666, 66619, 38, 'The patterns on this Pokémon depend on the climate and topography of the land it was born in. This form is from a special land.'),
  -- litleo in legends-za
  (667, 66700, 38, 'They set off on their own from their pride and live by themselves to become stronger. These hot- blooded Pokémon are quick to fight.'),
  -- pyroar in legends-za
  (668, 66800, 38, 'The male with the largest mane of fire is the leader of the pride.'),
  -- mega-pyroar in legends-za
  (668, 66801, 38, 'This Pokémon spews flames hotter than 18,000 degrees Fahrenheit. It swings around its grand, blazing mane as it protects its allies.'),
  -- flabebe in legends-za
  (669, 66900, 38, 'This Pokémon can draw forth the power hidden within blooming wild flowers. It is particularly fond of red flowers.'),
  -- flabebe-yellow in legends-za
  (669, 66901, 38, 'This Flabébé rides a yellow flower. The Pokémon is defenseless and vulnerable before it has found and received power from a flower.'),
  -- flabebe-orange in legends-za
  (669, 66902, 38, 'It receives strength from flowers and gives them some of its energy in return. This Pokémon likes orange flowers best of all.'),
  -- flabebe-blue in legends-za
  (669, 66903, 38, 'This Pokémon likes blue flowers best of all. It floats upward using the power emanating from its flower and bobs along lightly through the air.'),
  -- flabebe-white in legends-za
  (669, 66904, 38, 'When evening falls, it searches out a place blooming with flowers of the same white color as its own flower, and then it goes to sleep.'),
  -- floette in legends-za
  (670, 67000, 38, 'This Pokémon uses red wavelengths of light to pour its own energy into flowers and draw forth their latent potential.'),
  -- mega-floette in legends-za
  (670, 67001, 38, 'The Eternal Flower has absorbed all the energy from Mega Evolution. The flower now attacks enemies on its own.'),
  -- floette-eternal-flower in legends-za
  (670, 67002, 38, 'This rare Floette holds a plant that died out in ancient times. The Pokémon is said to harbor an incredible power.'),
  -- floette-yellow in legends-za
  (670, 67003, 38, 'This Pokémon can draw forth the power hidden within yellow flowers. This power then becomes the moves Floette uses to protect itself.'),
  -- floette-orange in legends-za
  (670, 67004, 38, 'This Pokémon can draw forth the most power when in sync with orange flowers, compared to flowers of other colors.'),
  -- floette-blue in legends-za
  (670, 67005, 38, 'Whenever this Pokémon finds flowering plants that are withering, it will bring them back to its territory and care for them until they are healthy.'),
  -- floette-white in legends-za
  (670, 67006, 38, 'If it finds someone messing up a flower bed, it will attack them without mercy. This Floette takes particularly good care of white flowers.'),
  -- florges in legends-za
  (671, 67100, 38, 'They say that flower gardens created by Florges constantly emit a power that can heal both body and spirit.'),
  -- florges-yellow in legends-za
  (671, 67101, 38, 'It is said that there was once a Florges that protected the garden of a castle for over 300 years.'),
  -- florges-orange in legends-za
  (671, 67102, 38, 'When Florges attacks, its orange flowers fire off powerful beams as if they were a battery of artillery.'),
  -- florges-blue in legends-za
  (671, 67103, 38, 'Blue pigments were tremendously expensive in the past, so paintings of blue Florges are highly valuable.'),
  -- florges-white in legends-za
  (671, 67104, 38, 'A flower garden made by a white-flowered Florges will be beautifully decorated with flowering plants of many different colors.'),
  -- skiddo in legends-za
  (672, 67200, 38, 'If it has sunshine and water, it doesn’t need to eat, because it can generate energy from the leaves on its back.'),
  -- gogoat in legends-za
  (673, 67300, 38, 'It can tell how its Trainer is feeling by subtle shifts in their grip on its horns. This empathic sense lets human and Pokémon run as if one being.'),
  -- pancham in legends-za
  (674, 67400, 38, 'It does its level best to glare and pull a scary face, but it can’t help grinning if anyone pats its head.'),
  -- pangoro in legends-za
  (675, 67500, 38, 'Although it has a violent temperament, it won’t put up with those who bully the weak. It senses foes’ movements with its leaf.'),
  -- furfrou in legends-za
  (676, 67600, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-heart in legends-za
  (676, 67601, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-star in legends-za
  (676, 67602, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-diamond in legends-za
  (676, 67603, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-debutante in legends-za
  (676, 67604, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-matron in legends-za
  (676, 67605, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-dandy in legends-za
  (676, 67606, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-la-reine in legends-za
  (676, 67607, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-kabuki in legends-za
  (676, 67608, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- furfrou-pharaoh in legends-za
  (676, 67609, 38, 'Historically, in the Kalos region, these Pokémon were the designated guardians of the king.'),
  -- espurr in legends-za
  (677, 67700, 38, 'It keeps its intense psychic power from leaking out by using its ears to cover the organs emitting that power.'),
  -- meowstic in legends-za
  (678, 67800, 38, 'When in danger, it raises its ears and releases enough psychic power to grind a 10-ton truck into dust.'),
  -- meowstic-female in legends-za
  (678, 67801, 38, 'Females are a bit more selfish and aggressive than males. If they don’t get what they want, they will torment you with their psychic abilities.'),
  -- mega-meowstic in legends-za
  (678, 67802, 38, 'Mega Meowstic can use its psychic power to compress or expand anything. It overwhelms foes by contorting space itself.'),
  -- honedge in legends-za
  (679, 67900, 38, 'Apparently Honedge was born when a departed spirit began inhabiting an ancient sword. It attaches itself to people and drinks their life force.'),
  -- doublade in legends-za
  (680, 68000, 38, 'When Honedge evolves, it divides into two swords that cooperate via telepathy to coordinate attacks and slash their enemies to ribbons.'),
  -- aegislash in legends-za
  (681, 68100, 38, 'Apparently, it can detect the innate qualities of leadership. According to legend, whoever it recognizes is destined to rule.'),
  -- aegislash-blade in legends-za
  (681, 68101, 38, 'This stance is dedicated to offense. It can cleave any opponent with the strength and weight of its steel blade.'),
  -- spritzee in legends-za
  (682, 68200, 38, 'In the past, rather than using perfume, royal ladies carried a Spritzee that would waft a fragrance they liked.'),
  -- aromatisse in legends-za
  (683, 68300, 38, 'Its scent is so overpowering that, unless they happen to really enjoy the smell, Trainers will have a hard time walking alongside it.'),
  -- swirlix in legends-za
  (684, 68400, 38, 'To entangle and immobilize its opponents in battle, it extrudes white threads as sweet and sticky as cotton candy.'),
  -- slurpuff in legends-za
  (685, 68500, 38, 'It can distinguish the faintest of scents. It puts its sensitive sense of smell to use by helping pastry chefs in their work.'),
  -- inkay in legends-za
  (686, 68600, 38, 'It drains foes’ will to fight by flashing light at them. It then takes the opportunity to hide itself away.'),
  -- malamar in legends-za
  (687, 68700, 38, 'It wields the most compelling hypnotic powers of any Pokémon, and it forces others to do whatever it wants.'),
  -- mega-malamar in legends-za
  (687, 68701, 38, 'It uses its colorful lights to overwrite the personalities and memories of others—and to control them.'),
  -- binacle in legends-za
  (688, 68800, 38, 'Two Binacle live together on one rock. When they fight, one of them will move to a different rock.'),
  -- barbaracle in legends-za
  (689, 68900, 38, 'Barbaracle’s legs and hands have minds of their own, and they will move independently. But they usually follow the head’s orders.'),
  -- mega-barbaracle in legends-za
  (689, 68901, 38, 'It uses its many arms to toy with its opponents. This keeps the head extremely busy.'),
  -- skrelp in legends-za
  (690, 69000, 38, 'Camouflaged as rotten kelp, this Pokémon sprays liquid poison to take down prey that approach unawares.'),
  -- dragalge in legends-za
  (691, 69100, 38, 'Their poison is strong enough to eat through the hull of a tanker, and they spit it indiscriminately at anything that enters their territory.'),
  -- mega-dragalge in legends-za
  (691, 69101, 38, 'It spits a liquid that causes the regenerative power of cells to run wild. The liquid is deadly poison to everything other than itself.'),
  -- clauncher in legends-za
  (692, 69200, 38, 'They knock down flying prey by firing compressed water from their massive claws like shooting a pistol.'),
  -- clawitzer in legends-za
  (693, 69300, 38, 'By expelling water from the nozzle in the back of its claw, it can move at a speed of 60 knots.'),
  -- helioptile in legends-za
  (694, 69400, 38, 'The frills on either side of its head have cells that generate electricity when exposed to sunlight.'),
  -- heliolisk in legends-za
  (695, 69500, 38, 'They flare their frills and generate energy. A single Heliolisk can generate sufficient electricity to power a skyscraper.'),
  -- tyrunt in legends-za
  (696, 69600, 38, 'This Pokémon was restored from a fossil. If something happens that it doesn’t like, it throws a tantrum and runs wild.'),
  -- tyrantrum in legends-za
  (697, 69700, 38, 'This Pokémon behaved like a king 100 million years ago. Nothing could stop it.'),
  -- amaura in legends-za
  (698, 69800, 38, 'This ancient Pokémon was restored from a part of its body that had been frozen in ice for 100 million years.'),
  -- aurorus in legends-za
  (699, 69900, 38, 'The diamond-shaped crystals on its body expel air as cold as −240 degrees Fahrenheit, surrounding its enemies and encasing them in ice.'),
  -- sylveon in legends-za
  (700, 70000, 38, 'It wraps its ribbonlike feelers around the arm of its beloved Trainer and walks with them.'),
  -- hawlucha in legends-za
  (701, 70100, 38, 'With its wings, it controls its position in the air. It likes to attack from above, a maneuver that is difficult to defend against.'),
  -- mega-hawlucha in legends-za
  (701, 70101, 38, 'Mega Evolution has pumped up all its muscles. Hawlucha flexes to show off its strength.'),
  -- dedenne in legends-za
  (702, 70200, 38, 'Its whiskers serve as antennas. By sending and receiving electrical waves, it can communicate with others over vast distances.'),
  -- carbink in legends-za
  (703, 70300, 38, 'Born from the high temperatures and pressures deep underground, it releases energy from the stone in its head.'),
  -- goomy in legends-za
  (704, 70400, 38, 'Thanks to the slimy membrane covering its body, punches or kicks from its enemies slide right off it.'),
  -- sliggoo in legends-za
  (705, 70500, 38, 'Its four horns are a high-performance radar system. It uses them to sense sounds and smells, rather than using ears or a nose.'),
  -- hisuian-sliggoo in legends-za
  (705, 70501, 38, 'The iron in Sliggoo’s drinking water turned its shell metallic. The Pokémon doesn’t come out of its shell on sunny days.'),
  -- goodra in legends-za
  (706, 70600, 38, 'This very friendly dragon Pokémon will hug its beloved Trainer, leaving that Trainer covered in sticky slime.'),
  -- hisuian-goodra in legends-za
  (706, 70601, 38, 'If anything bad happens to it, Goodra retreats into its shell and bounces around like a rubber ball, knocking down trees and boring into mountains.'),
  -- klefki in legends-za
  (707, 70700, 38, 'It never lets go of a key that it likes, so people give it the keys to vaults and safes as a way to prevent crime.'),
  -- phantump in legends-za
  (708, 70800, 38, 'According to old tales, these Pokémon are stumps possessed by the spirits of children who died while lost in the forest.'),
  -- trevenant in legends-za
  (709, 70900, 38, 'Using its roots as a nervous system, it controls the trees in the forest. It’s kind to the Pokémon that reside in its body.'),
  -- pumpkaboo in legends-za
  (710, 71000, 38, 'It was recently discovered that the different varieties of Pumpkaboo vary not only in size but also in the size of the souls they collect.'),
  -- pumpkaboo-small in legends-za
  (710, 71001, 38, 'In keeping with the size of its body, this variety of Pumpkaboo takes the small spirits of children to the afterlife.'),
  -- pumpkaboo-large in legends-za
  (710, 71002, 38, 'In keeping with the size of its body, this variety of Pumpkaboo takes the large spirits of adults to the afterlife.'),
  -- pumpkaboo-super in legends-za
  (710, 71003, 38, 'In keeping with the size of its body, this variety of Pumpkaboo takes jumbo spirits to the afterlife.'),
  -- gourgeist in legends-za
  (711, 71100, 38, 'Singing in eerie voices, they wander town streets on the night of the new moon. Anyone who hears their song is cursed.'),
  -- gourgeist-small in legends-za
  (711, 71101, 38, 'Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter.'),
  -- gourgeist-large in legends-za
  (711, 71102, 38, 'Large Gourgeist put on the guise of adults, taking the hands of children to lead them to the afterlife.'),
  -- gourgeist-super in legends-za
  (711, 71103, 38, 'Jumbo Gourgeist aren’t picky. They will forcefully drag anyone off to the afterlife.'),
  -- bergmite in legends-za
  (712, 71200, 38, 'It blocks opponents’ attacks with the ice that shields its body. If the ice breaks, this Pokémon uses cold air to quickly create new ice.'),
  -- avalugg in legends-za
  (713, 71300, 38, 'Its ice-covered body is as hard as steel. Its enormous frame crushes anything that stands in its way.'),
  -- hisuian-avalugg in legends-za
  (713, 71301, 38, 'With its icy jaw, it swiftly plows across snowy fields and mountains, in search of nutritious vegetables people have stored in the snow.'),
  -- noibat in legends-za
  (714, 71400, 38, 'Even a robust wrestler will become dizzy and unable to stand when exposed to its 200,000-hertz ultrasonic waves.'),
  -- noivern in legends-za
  (715, 71500, 38, 'They fly around on moonless nights and attack careless prey. Nothing can beat them in a battle in the dark.'),
  -- xerneas in legends-za
  (716, 71600, 38, 'When the horns on its head shine in seven colors, it is said to be sharing everlasting life.'),
  -- yveltal in legends-za
  (717, 71700, 38, 'It’s said that when its life comes to an end, it absorbs the life energy of every living thing and turns into a cocoon once more.'),
  -- zygarde in legends-za
  (718, 71800, 38, 'It’s hypothesized that it’s monitoring those who destroy the ecosystem from deep in the cave where it lives.'),
  -- zygarde-10-percent in legends-za
  (718, 71801, 38, 'This is Zygarde when about 10% of its pieces have been assembled. It leaps at its opponent’s chest and sinks its sharp fangs into them.'),
  -- mega-zygarde in legends-za
  (718, 71802, 38, 'In response to people’s emotions during an unprecedented crisis, Zygarde Mega Evolves and calms the situation with its unmatched power.'),
  -- zygarde-complete in legends-za
  (718, 71803, 38, 'Born when all of Zygarde’s cells have been gathered together, it uses force to neutralize those who harm the ecosystem.'),
  -- diancie in legends-za
  (719, 71900, 38, 'Diancie is a spontaneous mutation of Carbink. Its pink, glimmering body is said to be the loveliest sight in the whole world.'),
  -- mega-diancie in legends-za
  (719, 71901, 38, 'This Pokémon is also known as the Royal Pink Princess. The dazzling, sparkling diamond on its forehead is a whopping 2,000 carats.'),
  -- hoopa in legends-za
  (720, 72000, 38, 'It uses loops to gather things it likes and take them to its secret home. It also teleports through a loop.'),
  -- hoopa-unbound in legends-za
  (720, 72001, 38, 'This is Hoopa’s true form, in which it has regained its sealed powers. The hole in its chest is said to connect to another dimension.'),
  -- volcanion in legends-za
  (721, 72100, 38, 'It expels its internal steam from the arms on its back. It has enough power to blow away a mountain.'),
  -- crabrawler in legends-za
  (739, 73900, 38, 'Its hard pincers are well-suited to both offense and defense. Fights between two Crabrawler are like boxing matches.'),
  -- crabominable in legends-za
  (740, 74000, 38, 'It punches things without pausing to think. There are even records of Crabominable forcing back an avalanche with a flurry of punches.'),
  -- mega-crabominable in legends-za
  (740, 74001, 38, 'It can pulverize reinforced concrete with a light swing of one of its fists, each of which is covered in a thick layer of ice.'),
  -- wimpod in legends-za
  (767, 76700, 38, 'Its habitat includes everything from beaches to seabeds. It is happy to eat up even rotten scraps, providing a sort of natural cleaning service.'),
  -- golisopod in legends-za
  (768, 76800, 38, 'It has the skill to cleave even air or seawater in two with a flash of its giant, sharp claws.'),
  -- mega-golisopod in legends-za
  (768, 76801, 38, 'It uses four of its arms to fiercely assail its foes. Once they’ve been pushed to the brink of defeat, it finishes them off with the arms it kept hidden.'),
  -- sandygast in legends-za
  (769, 76900, 38, 'Grudges of the dead have possessed a mound of sand and become a Pokémon. Sandygast is fond of the shovel on its head.'),
  -- palossand in legends-za
  (770, 77000, 38, 'Heaps of bones lie buried beneath its castle. They came from those whom Palossand drained of vitality and left all dried up.'),
  -- mimikyu in legends-za
  (778, 77800, 38, 'A lonely Pokémon, it conceals its terrifying appearance beneath an old rag so it can get closer to people and other Pokémon.'),
  -- mimikyu-busted in legends-za
  (778, 77801, 38, 'Mimikyu is sad that it may be exposed for what it really is. It will take revenge on whoever broke the neck of its disguise—no forgiveness.'),
  -- drampa in legends-za
  (780, 78000, 38, 'It has a compassionate personality, but if it is angered, it completely destroys its surroundings with its intense breath.'),
  -- mega-drampa in legends-za
  (780, 78001, 38, 'Drampa’s cells have been invigorated, allowing it to regain its youth. It manipulates the atmosphere to summon storms.'),
  -- magearna in legends-za
  (801, 80100, 38, 'This Pokémon was built by a scientist roughly 500 years ago. The part called the Soul-Heart is the actual life-form.'),
  -- mega-magearna in legends-za
  (801, 80101, 38, 'This is Magearna once a previously hidden mode activates. The emotions Magearna had begun to feel now hide away as it fells foe after foe.'),
  -- magearna-original-color in legends-za
  (801, 80102, 38, 'This Magearna looks as it did at the time of its invention. Its magnificent ornamentation delighted the king’s daughter.'),
  -- mega-magearna-original-color in legends-za
  (801, 80103, 38, 'A mechanism to remove Magearna’s limitations has lain secretly within Magearna for 500 years. This mechanism is triggered by a Mega Stone.'),
  -- marshadow in legends-za
  (802, 80200, 38, 'It slips into others’ shadows and mimics their movements and powers. With time, its prowess will surpass that of those it originally imitated.'),
  -- zeraora in legends-za
  (807, 80700, 38, 'Electricity sparks from the pads on its limbs. Wherever Zeraora runs, lightning flashes and thunder echoes.'),
  -- mega-zeraora in legends-za
  (807, 80701, 38, 'It stores up 10 lightning strikes’ worth of electricity. When it stops limiting itself, it’s in the strongest class of electric Pokémon.'),
  -- meltan in legends-za
  (808, 80800, 38, 'Its body is made up of molten steel. It melts particles of iron and other metals it finds in the ground and absorbs them into itself.'),
  -- melmetal in legends-za
  (809, 80900, 38, 'It was worshipped long ago for its capacity to produce iron. For some reason, it has come back to life after 3,000 years.'),
  -- rookidee in legends-za
  (821, 82100, 38, 'This valiant Pokémon will challenge any foe, no matter how mighty. Even if that backfires and Rookidee loses, it grows from the experience.'),
  -- corvisquire in legends-za
  (822, 82200, 38, 'Corvisquire are intelligent enough to use tools. They’ll use their feet to pick up and fling pebbles or wrap their enemies in ropes.'),
  -- corviknight in legends-za
  (823, 82300, 38, 'Its wings, now made of steel, are extremely tough. Even if it’s attacked mid-flight, Corviknight flies on mightily through the sky, unbothered.'),
  -- nickit in legends-za
  (827, 82700, 38, 'It filches food from people and Pokémon alike. While fleeing the scene, it wipes its tracks away with its tail to throw off pursuers.'),
  -- thievul in legends-za
  (828, 82800, 38, 'This clever Pokémon marks potential targets with its scent, then follows its nose to locate their nests.'),
  -- toxel in legends-za
  (848, 84800, 38, 'It manipulates the chemical makeup of its poison to produce electricity. The wattage is weak, but it can cause a tingling numbness.'),
  -- toxtricity in legends-za
  (849, 84900, 38, 'When Toxtricity claws at the protrusions on its chest to generate electricity, a sound like that of a guitar echoes through the air.'),
  -- toxtricity-low-key in legends-za
  (849, 84901, 38, 'On its chest is an electricity-generating organ. A sound like that of a bass guitar echoes all around while this organ produces electricity.'),
  -- clobbopus in legends-za
  (852, 85200, 38, 'The bulbous ends of its tentacles are perfect for pummeling but next to useless for gripping.'),
  -- grapploct in legends-za
  (853, 85300, 38, 'Grapploct pins opponents to the ground with its prized tentacles. Not even monstrously strong Pokémon can wrestle free from its hold.'),
  -- perrserker in legends-za
  (863, 86300, 38, 'In battle, Perrserker boasts unrivaled strength, and many epic sagas tell of its valor. But in its home, it leaves garbage everywhere.'),
  -- sirfetchd in legends-za
  (865, 86500, 38, 'Sirfetch’d has put its soul into nurturing its leek, which it treasures like life itself. It wields the leek splendidly, performing great feats of combat.'),
  -- mr-rime in legends-za
  (866, 86600, 38, 'Its comical dancing is its calling card. When its enemies laugh, it seizes the chance to blast them with frigid air of −328 degrees Fahrenheit.'),
  -- runerigus in legends-za
  (867, 86700, 38, 'The scattered pieces of its clay slab have been reassembled, allowing the malicious power contained within to be fully unleashed.'),
  -- falinks in legends-za
  (870, 87000, 38, 'Five of them are troopers, and one is the brass. The brass’s orders are absolute.'),
  -- mega-falinks in legends-za
  (870, 87001, 38, 'Mega Falinks has taken on the ultimate battle formation, which can be achieved only if the troopers and brass have the strongest of bonds.'),
  -- indeedee in legends-za
  (876, 87600, 38, 'Through its horns, it can pick up on the emotions of creatures around it. Positive emotions are the source of its strength.'),
  -- indeedee-female in legends-za
  (876, 87601, 38, 'These Pokémon are highly intelligent. They touch horns with their fellow Indeedee to share information with one another.'),
  -- morpeko in legends-za
  (877, 87700, 38, 'This Pokémon is always hungry. It generates electricity by eating seeds it has stored up in its pocket-like pouches.'),
  -- morpeko-hangry in legends-za
  (877, 87701, 38, 'Intense hunger drives it to extremes of violence, and the electricity in its cheek sacs has converted into a Dark-type energy.'),
  -- kleavor in legends-za
  (900, 90000, 38, 'Its stone axes get chipped away here and there during ferocious battles, but the process serves to make them sharper and sharper.'),
  -- overqwil in legends-za
  (904, 90400, 38, 'Overqwil’s poisonous spikes—now thicker, longer, and stronger—will automatically strike toward anything that moves.'),
  -- fidough in legends-za
  (926, 92600, 38, 'This Pokémon cultivates yeast within its body. It has lived with humans—and helped enrich their diets—since ancient times.'),
  -- dachsbun in legends-za
  (927, 92700, 38, 'The appetizing scent of Dachsbun’s body sends opponents’ hunger into overdrive, wearing down their willpower and stamina.'),
  -- squawkabilly in legends-za
  (931, 93100, 38, 'Squawkabilly form flocks based on the color of their plumage. Green ones are abundant because their coloration is more likely to be passed down.'),
  -- squawkabilly-blue in legends-za
  (931, 93101, 38, 'Squawkabilly with blue plumage are the second most populous variety after their green counterparts, which they view as foes.'),
  -- squawkabilly-yellow in legends-za
  (931, 93102, 38, 'Squawkabilly with yellow plumage grew increasingly aggressive in order to be taken seriously by the more populous varieties.'),
  -- squawkabilly-white in legends-za
  (931, 93103, 38, 'This is the least populous variety of Squawkabilly. They don’t like conflict, but when they have to fight, they do so valiantly and resolutely.'),
  -- nacli in legends-za
  (932, 93200, 38, 'As Nacli treads along the ground, grains of rock salt are left behind. These trails have been called “salt roads” since long ago.'),
  -- naclstack in legends-za
  (933, 93300, 38, 'This absent-minded Pokémon tends to forget about the prey it has salt-cured. It’s even prone to forgetting the orders its Trainer has given it.'),
  -- garganacl in legends-za
  (934, 93400, 38, 'Rock salt obtained from Garganacl has many restorative elements and is helpful for maintaining one’s health.'),
  -- charcadet in legends-za
  (935, 93500, 38, 'This Pokémon is skilled at manipulating flames. Humans have prized it highly since ancient times.'),
  -- armarouge in legends-za
  (936, 93600, 38, 'Though Armarouge pledges loyalty to its Trainer, it repeatedly leaves to go train on its own to strengthen its psychic energy.'),
  -- ceruledge in legends-za
  (937, 93700, 38, 'It swears loyalty to its Trainer. Should anyone dare to show that Trainer hostility, Ceruledge will cut the offender down without a second thought.'),
  -- maschiff in legends-za
  (942, 94200, 38, 'Packs of these Pokémon are incredibly close-knit. In order to be taken seriously, Maschiff intimidate others by wearing a grumpy expression.'),
  -- mabosstiff in legends-za
  (943, 94300, 38, 'Contrary to appearances, Mabosstiff has a kind heart—but it will relentlessly chase down and put an end to any foe that dares threaten its family.'),
  -- shroodle in legends-za
  (944, 94400, 38, 'Shroodle protects itself from foes using both its poisonous saliva and its front teeth, which are disproportionately big and long for its small body.'),
  -- grafaiai in legends-za
  (945, 94500, 38, 'What Grafaiai eats affects the color of its saliva. With this saliva, it paints patterns on rocks and trees in order to protect its territory.'),
  -- capsakid in legends-za
  (951, 95100, 38, 'Capsakid is prone to intense mood swings, perhaps influenced by the spicy chemicals inside it. It will bite anything it takes a disliking to.'),
  -- scovillain in legends-za
  (952, 95200, 38, 'Its two heads have different temperaments and excel at different fighting styles. Nevertheless, they act in perfect harmony on the battlefield.'),
  -- mega-scovillain in legends-za
  (952, 95201, 38, 'Mega Evolution has dialed up this Pokémon’s spiciness. It swings its “necktie” around to wallop its foes.'),
  -- tinkatink in legends-za
  (957, 95700, 38, 'Tinkatink cobbles together a suitable hammer for itself using tools and metal fragments it finds in mines.'),
  -- tinkatuff in legends-za
  (958, 95800, 38, 'Tinkatuff sometimes come to human settlements, where they rummage through factories and warehouses to gather metal.'),
  -- tinkaton in legends-za
  (959, 95900, 38, 'A Tinkaton leader teaches the Tinkatink in its group the skills needed for pounding and shaping metal.'),
  -- cyclizar in legends-za
  (967, 96700, 38, 'Cyclizar keeps energy stored in the folds of its throat, allowing it to run nonstop over very long distances while carrying someone.'),
  -- glimmet in legends-za
  (969, 96900, 38, 'Glimmet clings to the ceilings of caves. It defends itself by striking enemies with its bud, which is packed with poisonous components.'),
  -- glimmora in legends-za
  (970, 97000, 38, 'Glimmora blooms into a large flower made of poisonous components. It works together with groups of Glimmet to repel enemies.'),
  -- mega-glimmora in legends-za
  (970, 97001, 38, 'Glimmora’s petals—now larger and separated from its main body—rotate around it to provide defense while scattering poisonous fragments.'),
  -- greavard in legends-za
  (971, 97100, 38, 'This Pokémon loves to gambol and roughhouse. It rubs its fur up against others and absorbs their life force until they’re utterly drained.'),
  -- houndstone in legends-za
  (972, 97200, 38, 'At some point during the many years it spent guarding the gravestone of its dearly departed master, it was reborn as a ghost Pokémon.'),
  -- flamigo in legends-za
  (973, 97300, 38, 'A flock of Flamigo can reach numbers of over 10,000. The sight of one of these massive flocks moving together in sync is incredible to behold.'),
  -- dondozo in legends-za
  (977, 97700, 38, 'Although it boasts fantastic strength and a huge body that stirs up great waves when it thrashes, Dondozo struggles at catching prey.'),
  -- tatsugiri in legends-za
  (978, 97800, 38, 'Tatsugiri will battle furiously among themselves to determine which of them will get to partner with a particular Dondozo.'),
  -- tatsugiri-droopy in legends-za
  (978, 97801, 38, 'Even if swallowed by a foe, Tatsugiri will try to make its escape through various means, such as by inflating its throat sac.'),
  -- tatsugiri-stretchy in legends-za
  (978, 97802, 38, 'Tatsugiri assesses situations using its sharp intellect. If it determines there is no hope of winning, it flees as fast as it can.'),
  -- mega-tatsugiri in legends-za
  (978, 97803, 38, 'Tatsugiri’s brain has been invigorated by Mega Evolution, making it even wilier. It can create and command copies of itself.'),
  -- mega-tatsugiri-droopy in legends-za
  (978, 97804, 38, 'It solidifies the energy of Mega Evolution, building up an overflowing pile to launch as projectiles. These projectiles explode on contact.'),
  -- mega-tatsugiri-stretchy in legends-za
  (978, 97805, 38, 'Using the energy of Mega Evolution, it creates a dish to ride upon, allowing it to move with total freedom—even through the air.'),
  -- annihilape in legends-za
  (979, 97900, 38, 'Primeape evolved into Annihilape after repeatedly using a move with enough force to burst the blood vessels in its head.'),
  -- frigibax in legends-za
  (996, 99600, 38, 'Frigibax’s dorsal fin can convert heat from fiery moves into Ice-type energy to freeze the air.'),
  -- arctibax in legends-za
  (997, 99700, 38, 'Arctibax is armed with a bladed dorsal fin and a mask made of ice. It is agile in its movements, springing upon foes to deliver slashing attacks.'),
  -- baxcalibur in legends-za
  (998, 99800, 38, 'Baxcalibur exhales air cold enough to freeze lava. It uses its breath to freeze foes, then pulverizes them with a blow from its tail.'),
  -- mega-baxcalibur in legends-za
  (998, 99801, 38, 'Baxcalibur’s dorsal blade has grown even more massive thanks to Mega Evolution. This Pokémon fires beams from the hilt at its solar plexus.'),
  -- gimmighoul in legends-za
  (999, 99900, 38, 'It lurks inside a sturdy treasure chest and possesses solid defenses, but it’s so heavy that it has difficulty moving around.'),
  -- gimmighoul-roaming in legends-za
  (999, 99901, 38, 'If it senses it’s about to be found by a human or a Pokémon, Gimmighoul will turn invisible to protect itself, leaving only its coin visible.'),
  -- gholdengo in legends-za
  (1000, 100000, 38, 'This Pokémon likes lively places. Some wild Gholdengo even live in cities.');
