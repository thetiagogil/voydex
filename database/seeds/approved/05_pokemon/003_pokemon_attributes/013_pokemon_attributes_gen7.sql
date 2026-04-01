-- Source: Bulbapedia — Lists of Pokémon by Ability, base stats (Gen VII), Egg Group
-- Generation: 7
-- Scope: new species (#722-809) — 88 rows
-- Table: meta.pokemon_attributes
-- Rows: 88
--
-- Gen 7 introduced 42 new abilities (IDs 192-233) and 88 new species.
-- Fairy type exists (introduced Gen 6).
-- Non-default forms (Oricorio Pom-Pom/Pa'u/Sensu, Rockruff Own Tempo,
-- Lycanroc Midnight/Dusk, Wishiwashi School, Minior Core,
-- Necrozma Dusk Mane/Dawn Wings/Ultra) are handled in separate files.
-- Legendaries/mythicals/Ultra Beasts use Undiscovered egg group (15).
--
-- New Gen 7 Ability IDs used in this file:
--   192=Stamina 193=Wimp Out 194=Emergency Exit 195=Water Compaction
--   196=Merciless 197=Shields Down 198=Stakeout 199=Water Bubble
--   200=Steelworker 201=Berserk 202=Slush Rush 203=Long Reach
--   204=Liquid Voice 205=Triage 208=Schooling 209=Disguise
--   212=Corrosion 213=Comatose 214=Queenly Majesty 215=Innards Out
--   216=Dancer 217=Battery 218=Fluffy 219=Dazzling 220=Soul-Heart
--   222=Receiver 224=Beast Boost 225=RKS System 226=Electric Surge
--   227=Psychic Surge 228=Misty Surge 229=Grassy Surge
--   230=Full Metal Body 231=Shadow Shield 232=Prism Armor
--
-- Type IDs: Normal(1) Fire(2) Water(3) Electric(4) Grass(5) Ice(6) Fighting(7)
--   Poison(8) Ground(9) Flying(10) Psychic(11) Bug(12) Rock(13) Ghost(14)
--   Dragon(15) Dark(16) Steel(17) Fairy(18)
-- Egg Group IDs: Monster(1) Water1(2) Water2(3) Water3(4) Bug(5) Flying(6)
--   Field(7) Fairy(8) Grass(9) Human-Like(10) Mineral(11) Amorphous(12)
--   Dragon(13) Ditto(14) Undiscovered(15)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- Alola Starters
    -- #722-724: Rowlet → Dartrix → Decidueye (Grass/Flying → Grass/Ghost)
    (722, 72200, 7, 5, 10, 65, NULL, 203, 6, NULL, 68, 55, 55, 50, 50, 42, NULL),
    (723, 72300, 7, 5, 10, 65, NULL, 203, 6, NULL, 78, 75, 75, 70, 70, 52, NULL),
    (724, 72400, 7, 5, 14, 65, NULL, 203, 6, NULL, 78, 107, 75, 100, 100, 70, NULL),
    -- #725-727: Litten → Torracat → Incineroar (Fire → Fire/Dark)
    (725, 72500, 7, 2, NULL, 66, NULL, 22, 7, NULL, 45, 65, 40, 60, 40, 70, NULL),
    (726, 72600, 7, 2, NULL, 66, NULL, 22, 7, NULL, 65, 85, 50, 80, 50, 90, NULL),
    (727, 72700, 7, 2, 16, 66, NULL, 22, 7, NULL, 95, 115, 90, 80, 90, 60, NULL),
    -- #728-730: Popplio → Brionne → Primarina (Water → Water/Fairy)
    (728, 72800, 7, 3, NULL, 67, NULL, 204, 2, 7, 50, 54, 54, 66, 56, 40, NULL),
    (729, 72900, 7, 3, NULL, 67, NULL, 204, 2, 7, 60, 69, 69, 91, 81, 50, NULL),
    (730, 73000, 7, 3, 18, 67, NULL, 204, 2, 7, 80, 74, 74, 126, 116, 60, NULL),
    -- Early Route Pokémon
    -- #731-733: Pikipek → Trumbeak → Toucannon
    (731, 73100, 7, 1, 10, 51, 92, 53, 6, NULL, 35, 75, 30, 30, 30, 65, NULL),
    (732, 73200, 7, 1, 10, 51, 92, 53, 6, NULL, 55, 85, 50, 40, 50, 75, NULL),
    (733, 73300, 7, 1, 10, 51, 92, 125, 6, NULL, 80, 120, 75, 75, 75, 60, NULL),
    -- #734-735: Yungoos → Gumshoos
    (734, 73400, 7, 1, NULL, 198, 173, 91, 7, NULL, 48, 70, 30, 30, 30, 45, NULL),
    (735, 73500, 7, 1, NULL, 198, 173, 91, 7, NULL, 88, 110, 60, 55, 60, 45, NULL),
    -- Bug/Electric Line
    -- #736-738: Grubbin → Charjabug → Vikavolt
    (736, 73600, 7, 12, NULL, 68, NULL, NULL, 5, NULL, 47, 62, 45, 55, 45, 46, NULL),
    (737, 73700, 7, 12, 4, 217, NULL, NULL, 5, NULL, 57, 82, 95, 55, 75, 36, NULL),
    (738, 73800, 7, 12, 4, 26, NULL, NULL, 5, NULL, 77, 70, 90, 145, 75, 43, NULL),
    -- Crab Fighters
    -- #739-740: Crabrawler → Crabominable
    (739, 73900, 7, 7, NULL, 52, 89, 83, 4, NULL, 47, 82, 57, 42, 47, 63, NULL),
    (740, 74000, 7, 7, 6, 52, 89, 83, 4, NULL, 97, 132, 77, 62, 67, 43, NULL),
    -- Oricorio (default = Baile Style)
    -- #741 Oricorio: Fire/Flying
    (741, 74100, 7, 2, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93, NULL),
    -- Fairy Bugs
    -- #742-743: Cutiefly → Ribombee
    (742, 74200, 7, 12, 18, 118, 19, 175, 5, 8, 40, 45, 40, 55, 40, 84, NULL),
    (743, 74300, 7, 12, 18, 118, 19, 175, 5, 8, 60, 55, 60, 95, 70, 124, NULL),
    -- Rock Dogs
    -- #744-745: Rockruff → Lycanroc (default = Midday Form)
    (744, 74400, 7, 13, NULL, 51, 72, 80, 7, NULL, 45, 65, 40, 30, 40, 60, NULL),
    (745, 74500, 7, 13, NULL, 51, 146, 80, 7, NULL, 75, 115, 65, 55, 65, 112, NULL),
    -- Wishiwashi (default = Solo Form)
    -- #746 Wishiwashi
    (746, 74600, 7, 3, NULL, 208, NULL, NULL, 3, NULL, 45, 20, 20, 25, 25, 40, NULL),
    -- Toxapex Line
    -- #747-748: Mareanie → Toxapex
    (747, 74700, 7, 8, 3, 196, 7, 144, 2, NULL, 50, 53, 62, 43, 52, 45, NULL),
    (748, 74800, 7, 8, 3, 196, 7, 144, 2, NULL, 50, 63, 152, 53, 142, 35, NULL),
    -- Mudsdale Line
    -- #749-750: Mudbray → Mudsdale
    (749, 74900, 7, 9, NULL, 20, 192, 39, 7, NULL, 70, 100, 70, 45, 55, 45, NULL),
    (750, 75000, 7, 9, NULL, 20, 192, 39, 7, NULL, 100, 125, 100, 55, 85, 35, NULL),
    -- Araquanid Line
    -- #751-752: Dewpider → Araquanid
    (751, 75100, 7, 3, 12, 199, NULL, 11, 2, 5, 38, 40, 52, 40, 72, 27, NULL),
    (752, 75200, 7, 3, 12, 199, NULL, 11, 2, 5, 68, 70, 92, 50, 132, 42, NULL),
    -- Lurantis Line
    -- #753-754: Fomantis → Lurantis
    (753, 75300, 7, 5, NULL, 102, NULL, 126, 9, NULL, 40, 55, 35, 50, 35, 35, NULL),
    (754, 75400, 7, 5, NULL, 102, NULL, 126, 9, NULL, 70, 105, 90, 80, 90, 45, NULL),
    -- Shiinotic Line
    -- #755-756: Morelull → Shiinotic
    (755, 75500, 7, 5, 18, 35, 27, 44, 9, NULL, 40, 35, 55, 65, 75, 15, NULL),
    (756, 75600, 7, 5, 18, 35, 27, 44, 9, NULL, 60, 45, 80, 90, 100, 30, NULL),
    -- Salazzle Line
    -- #757-758: Salandit → Salazzle
    (757, 75700, 7, 8, 2, 212, NULL, 12, 1, 13, 48, 44, 40, 71, 40, 77, NULL),
    (758, 75800, 7, 8, 2, 212, NULL, 12, 1, 13, 68, 64, 60, 111, 60, 117, NULL),
    -- Bewear Line
    -- #759-760: Stufful → Bewear
    (759, 75900, 7, 1, 7, 218, 103, 56, 7, NULL, 70, 75, 50, 45, 50, 50, NULL),
    (760, 76000, 7, 1, 7, 218, 103, 127, 7, NULL, 120, 125, 80, 55, 60, 60, NULL),
    -- Tsareena Line
    -- #761-763: Bounsweet → Steenee → Tsareena
    (761, 76100, 7, 5, NULL, 102, 12, 175, 9, NULL, 42, 30, 38, 30, 38, 32, NULL),
    (762, 76200, 7, 5, NULL, 102, 12, 175, 9, NULL, 52, 40, 48, 40, 48, 62, NULL),
    (763, 76300, 7, 5, NULL, 102, 214, 175, 9, NULL, 72, 120, 98, 50, 98, 72, NULL),
    -- Comfey
    -- #764 Comfey
    (764, 76400, 7, 18, NULL, 166, 205, 30, 9, NULL, 51, 52, 90, 82, 110, 100, NULL),
    -- Oranguru / Passimian
    -- #765 Oranguru
    (765, 76500, 7, 1, 11, 39, 140, 180, 7, NULL, 90, 60, 80, 90, 110, 60, NULL),
    -- #766 Passimian
    (766, 76600, 7, 7, NULL, 222, NULL, 128, 7, NULL, 100, 120, 90, 40, 60, 80, NULL),
    -- Golisopod Line
    -- #767-768: Wimpod → Golisopod
    (767, 76700, 7, 12, 3, 193, NULL, NULL, 5, 4, 25, 35, 40, 20, 30, 80, NULL),
    (768, 76800, 7, 12, 3, 194, NULL, NULL, 5, 4, 75, 125, 140, 60, 90, 40, NULL),
    -- Palossand Line
    -- #769-770: Sandygast → Palossand
    (769, 76900, 7, 14, 9, 195, NULL, 8, 12, NULL, 55, 55, 80, 70, 45, 15, NULL),
    (770, 77000, 7, 14, 9, 195, NULL, 8, 12, NULL, 85, 75, 110, 100, 75, 35, NULL),
    -- Pyukumuku
    -- #771 Pyukumuku
    (771, 77100, 7, 3, NULL, 215, NULL, 109, 2, NULL, 55, 60, 130, 30, 130, 5, NULL),
    -- Type: Null / Silvally
    -- #772-773: Type: Null → Silvally
    (772, 77200, 7, 1, NULL, 4, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 59, NULL),
    (773, 77300, 7, 1, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95, NULL),
    -- Minior (default = Meteor Form)
    -- #774 Minior
    (774, 77400, 7, 13, 10, 197, NULL, NULL, 11, NULL, 60, 60, 100, 60, 100, 60, NULL),
    -- Komala
    -- #775 Komala
    (775, 77500, 7, 1, NULL, 213, NULL, NULL, 7, NULL, 65, 115, 65, 75, 95, 65, NULL),
    -- Turtonator
    -- #776 Turtonator
    (776, 77600, 7, 2, 15, 75, NULL, NULL, 1, 13, 60, 78, 135, 91, 85, 36, NULL),
    -- Togedemaru
    -- #777 Togedemaru
    (777, 77700, 7, 4, 17, 160, 31, 5, 7, 8, 65, 98, 63, 40, 73, 96, NULL),
    -- Mimikyu
    -- #778 Mimikyu
    (778, 77800, 7, 14, 18, 209, NULL, NULL, 12, NULL, 55, 90, 80, 50, 105, 96, NULL),
    -- Bruxish
    -- #779 Bruxish
    (779, 77900, 7, 3, 11, 219, 173, 147, 3, NULL, 68, 105, 70, 70, 70, 92, NULL),
    -- Drampa
    -- #780 Drampa
    (780, 78000, 7, 1, 15, 201, 157, 13, 1, 13, 78, 60, 85, 135, 91, 36, NULL),
    -- Dhelmise
    -- #781 Dhelmise
    (781, 78100, 7, 14, 5, 200, NULL, NULL, 11, NULL, 70, 131, 100, 86, 90, 40, NULL),
    -- Kommo-o Line
    -- #782-784: Jangmo-o → Hakamo-o → Kommo-o (Dragon → Dragon/Fighting)
    (782, 78200, 7, 15, NULL, 171, 43, 142, 13, NULL, 45, 55, 65, 45, 45, 45, NULL),
    (783, 78300, 7, 15, 7, 171, 43, 142, 13, NULL, 55, 75, 90, 65, 70, 65, NULL),
    (784, 78400, 7, 15, 7, 171, 43, 142, 13, NULL, 75, 110, 125, 100, 105, 85, NULL),
    -- Guardian Deities (Tapus)
    -- #785 Tapu Koko: Electric/Fairy
    (785, 78500, 7, 4, 18, 226, NULL, 140, 15, NULL, 70, 115, 85, 95, 75, 130, NULL),
    -- #786 Tapu Lele: Psychic/Fairy
    (786, 78600, 7, 11, 18, 227, NULL, 140, 15, NULL, 70, 85, 75, 130, 115, 95, NULL),
    -- #787 Tapu Bulu: Grass/Fairy
    (787, 78700, 7, 5, 18, 229, NULL, 140, 15, NULL, 70, 130, 115, 85, 95, 75, NULL),
    -- #788 Tapu Fini: Water/Fairy
    (788, 78800, 7, 3, 18, 228, NULL, 140, 15, NULL, 70, 75, 115, 95, 130, 85, NULL),
    -- Cosmog Line
    -- #789-790: Cosmog → Cosmoem
    (789, 78900, 7, 11, NULL, 109, NULL, NULL, 15, NULL, 43, 29, 31, 29, 31, 37, NULL),
    (790, 79000, 7, 11, NULL, 5, NULL, NULL, 15, NULL, 43, 29, 131, 29, 131, 37, NULL),
    -- #791 Solgaleo: Psychic/Steel
    (791, 79100, 7, 11, 17, 230, NULL, NULL, 15, NULL, 137, 137, 107, 113, 89, 97, NULL),
    -- #792 Lunala: Psychic/Ghost
    (792, 79200, 7, 11, 14, 231, NULL, NULL, 15, NULL, 137, 113, 89, 137, 107, 97, NULL),
    -- Ultra Beasts
    -- #793 Nihilego: Rock/Poison
    (793, 79300, 7, 13, 8, 224, NULL, NULL, 15, NULL, 109, 53, 47, 127, 131, 103, NULL),
    -- #794 Buzzwole: Bug/Fighting
    (794, 79400, 7, 12, 7, 224, NULL, NULL, 15, NULL, 107, 139, 139, 53, 53, 79, NULL),
    -- #795 Pheromosa: Bug/Fighting
    (795, 79500, 7, 12, 7, 224, NULL, NULL, 15, NULL, 71, 137, 37, 137, 37, 151, NULL),
    -- #796 Xurkitree: Electric
    (796, 79600, 7, 4, NULL, 224, NULL, NULL, 15, NULL, 83, 89, 71, 173, 71, 83, NULL),
    -- #797 Celesteela: Steel/Flying
    (797, 79700, 7, 17, 10, 224, NULL, NULL, 15, NULL, 97, 101, 103, 107, 101, 61, NULL),
    -- #798 Kartana: Grass/Steel
    (798, 79800, 7, 5, 17, 224, NULL, NULL, 15, NULL, 59, 181, 131, 59, 31, 109, NULL),
    -- #799 Guzzlord: Dark/Dragon
    (799, 79900, 7, 16, 15, 224, NULL, NULL, 15, NULL, 223, 101, 53, 97, 53, 43, NULL),
    -- Necrozma
    -- #800 Necrozma: Psychic
    (800, 80000, 7, 11, NULL, 232, NULL, NULL, 15, NULL, 97, 107, 101, 127, 89, 79, NULL),
    -- Mythicals
    -- #801 Magearna: Steel/Fairy
    (801, 80100, 7, 17, 18, 220, NULL, NULL, 15, NULL, 80, 95, 115, 130, 115, 65, NULL),
    -- #802 Marshadow: Fighting/Ghost
    (802, 80200, 7, 7, 14, 101, NULL, NULL, 15, NULL, 90, 125, 80, 90, 90, 125, NULL),
    -- USUM Ultra Beasts
    -- #803-804: Poipole → Naganadel (Poison → Poison/Dragon)
    (803, 80300, 7, 8, NULL, 224, NULL, NULL, 15, NULL, 67, 73, 67, 73, 67, 73, NULL),
    (804, 80400, 7, 8, 15, 224, NULL, NULL, 15, NULL, 73, 73, 73, 127, 73, 121, NULL),
    -- #805 Stakataka: Rock/Steel
    (805, 80500, 7, 13, 17, 224, NULL, NULL, 15, NULL, 61, 131, 211, 53, 101, 13, NULL),
    -- #806 Blacephalon: Fire/Ghost
    (806, 80600, 7, 2, 14, 224, NULL, NULL, 15, NULL, 53, 127, 53, 151, 79, 107, NULL),
    -- Zeraora
    -- #807 Zeraora: Electric
    (807, 80700, 7, 4, NULL, 10, NULL, NULL, 15, NULL, 88, 112, 75, 102, 80, 143, NULL),
    -- Let's Go Pokémon
    -- #808-809: Meltan → Melmetal
    (808, 80800, 7, 17, NULL, 42, NULL, NULL, 15, NULL, 46, 65, 65, 55, 35, 34, NULL),
    (809, 80900, 7, 17, NULL, 89, NULL, NULL, 15, NULL, 135, 143, 143, 80, 65, 34, NULL);