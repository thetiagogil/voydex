-- Source: Bulbapedia — base stats (Gen VIII), abilities, breeding
-- Generation: 8
-- Scope: Gen 8 new species (#810-905)
-- Table: meta.pokemon_attributes
-- Rows: 96
--
-- All Gen 8 species: Sword/Shield (#810-898) + Legends: Arceus (#899-905).
-- Default forms only. Regional evolutions (#862-867) have separate species IDs.
--
-- Gen 8 ability IDs (234-267):
--   234=Intrepid Sword, 235=Dauntless Shield, 236=Libero, 237=Ball Fetch,
--   238=Cotton Down, 239=Propeller Tail, 240=Mirror Armor, 241=Gulp Missile,
--   242=Stalwart, 243=Steam Engine, 244=Punk Rock, 245=Sand Spit,
--   246=Ice Scales, 247=Ripen, 248=Ice Face, 249=Power Spot,
--   251=Screen Cleaner, 252=Steely Spirit, 253=Perish Body,
--   254=Wandering Spirit, 255=Gorilla Tactics, 258=Hunger Switch,
--   260=Unseen Fist, 262=Transistor, 263=Dragon's Maw,
--   264=Chilling Neigh, 265=Grim Neigh
--
-- Gen-specific notes:
--   #900 Kleavor: HA=Steadfast(80) in Gen 8, changed to Sharpness in Gen 9
--   #902 Basculegion: ab1=Rattled(155) in Gen 8, changed to Swift Swim in Gen 9
--   #903 Sneasler: ab2=NULL in Gen 8, Unburden added in Gen 9
--   #905 Enamorus: ab1=Healer(131) in Gen 8, changed to Cute Charm in Gen 9
--
-- Type IDs: Normal(1) Fire(2) Water(3) Electric(4) Grass(5) Ice(6) Fighting(7)
--   Poison(8) Ground(9) Flying(10) Psychic(11) Bug(12) Rock(13) Ghost(14)
--   Dragon(15) Dark(16) Steel(17) Fairy(18)
-- Egg Group IDs: Monster(1) Water1(2) Water2(3) Water3(4) Bug(5) Flying(6)
--   Field(7) Fairy(8) Grass(9) Human-Like(10) Mineral(11) Amorphous(12)
--   Dragon(13) Undiscovered(15)
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- === Galar Starters ===
    -- #810 Grookey (Grass)
    (810, 81000, 8, 5, NULL, 65, NULL, 229, 7, 9, 50, 65, 50, 40, 40, 65, NULL),
    -- #811 Thwackey (Grass)
    (811, 81100, 8, 5, NULL, 65, NULL, 229, 7, 9, 70, 85, 70, 55, 60, 80, NULL),
    -- #812 Rillaboom (Grass)
    (812, 81200, 8, 5, NULL, 65, NULL, 229, 7, 9, 100, 125, 90, 60, 70, 85, NULL),
    -- #813 Scorbunny (Fire)
    (813, 81300, 8, 2, NULL, 66, NULL, 236, 7, 10, 50, 71, 40, 40, 40, 69, NULL),
    -- #814 Raboot (Fire)
    (814, 81400, 8, 2, NULL, 66, NULL, 236, 7, 10, 65, 86, 60, 55, 60, 94, NULL),
    -- #815 Cinderace (Fire)
    (815, 81500, 8, 2, NULL, 66, NULL, 236, 7, 10, 80, 116, 75, 65, 75, 119, NULL),
    -- #816 Sobble (Water)
    (816, 81600, 8, 3, NULL, 67, NULL, 97, 2, 7, 50, 40, 40, 70, 40, 70, NULL),
    -- #817 Drizzile (Water)
    (817, 81700, 8, 3, NULL, 67, NULL, 97, 2, 7, 65, 60, 55, 95, 55, 90, NULL),
    -- #818 Inteleon (Water)
    (818, 81800, 8, 3, NULL, 67, NULL, 97, 2, 7, 70, 85, 65, 125, 65, 120, NULL),
    -- === Early Route Pokémon ===
    -- #819 Skwovet (Normal)
    (819, 81900, 8, 1, NULL, 167, NULL, 82, 7, NULL, 70, 55, 55, 35, 35, 25, NULL),
    -- #820 Greedent (Normal)
    (820, 82000, 8, 1, NULL, 167, NULL, 82, 7, NULL, 120, 95, 95, 55, 75, 20, NULL),
    -- #821 Rookidee (Flying)
    (821, 82100, 8, 10, NULL, 51, 127, 145, 6, NULL, 38, 47, 35, 33, 35, 57, NULL),
    -- #822 Corvisquire (Flying)
    (822, 82200, 8, 10, NULL, 51, 127, 145, 6, NULL, 68, 67, 55, 43, 55, 77, NULL),
    -- #823 Corviknight (Flying/Steel)
    (823, 82300, 8, 10, 17, 46, 127, 240, 6, NULL, 98, 87, 105, 53, 85, 67, NULL),
    -- #824 Blipbug (Bug)
    (824, 82400, 8, 12, NULL, 68, 14, 140, 5, NULL, 25, 20, 20, 25, 45, 45, NULL),
    -- #825 Dottler (Bug/Psychic)
    (825, 82500, 8, 12, 11, 68, 14, 140, 5, NULL, 50, 35, 80, 50, 90, 30, NULL),
    -- #826 Orbeetle (Bug/Psychic)
    (826, 82600, 8, 12, 11, 68, 119, 140, 5, NULL, 60, 45, 110, 80, 120, 90, NULL),
    -- #827 Nickit (Dark)
    (827, 82700, 8, 16, NULL, 50, 84, 198, 7, NULL, 40, 28, 28, 47, 52, 50, NULL),
    -- #828 Thievul (Dark)
    (828, 82800, 8, 16, NULL, 50, 84, 198, 7, NULL, 70, 58, 58, 87, 92, 90, NULL),
    -- === Grass/Normal/Water Routes ===
    -- #829 Gossifleur (Grass)
    (829, 82900, 8, 5, NULL, 238, 144, 27, 9, NULL, 40, 40, 60, 40, 60, 10, NULL),
    -- #830 Eldegoss (Grass)
    (830, 83000, 8, 5, NULL, 238, 144, 27, 9, NULL, 60, 50, 90, 80, 120, 60, NULL),
    -- #831 Wooloo (Normal)
    (831, 83100, 8, 1, NULL, 218, 50, 171, 7, NULL, 42, 40, 55, 40, 45, 48, NULL),
    -- #832 Dubwool (Normal)
    (832, 83200, 8, 1, NULL, 218, 80, 171, 7, NULL, 72, 80, 100, 60, 90, 88, NULL),
    -- #833 Chewtle (Water)
    (833, 83300, 8, 3, NULL, 173, 75, 33, 1, 2, 50, 64, 50, 38, 38, 44, NULL),
    -- #834 Drednaw (Water/Rock)
    (834, 83400, 8, 3, 13, 173, 75, 33, 1, 2, 90, 115, 90, 48, 68, 74, NULL),
    -- #835 Yamper (Electric)
    (835, 83500, 8, 4, NULL, 237, NULL, 155, 7, NULL, 59, 45, 50, 40, 50, 26, NULL),
    -- #836 Boltund (Electric)
    (836, 83600, 8, 4, NULL, 173, NULL, 172, 7, NULL, 69, 90, 60, 90, 60, 121, NULL),
    -- === Rock/Grass/Ground Lines ===
    -- #837 Rolycoly (Rock)
    (837, 83700, 8, 13, NULL, 243, 85, 18, 11, NULL, 30, 40, 50, 40, 50, 30, NULL),
    -- #838 Carkol (Rock/Fire)
    (838, 83800, 8, 13, 2, 243, 49, 18, 11, NULL, 80, 60, 90, 60, 70, 50, NULL),
    -- #839 Coalossal (Rock/Fire)
    (839, 83900, 8, 13, 2, 243, 49, 18, 11, NULL, 110, 80, 120, 80, 90, 30, NULL),
    -- #840 Applin (Grass/Dragon)
    (840, 84000, 8, 5, 15, 247, 82, 171, 9, 13, 40, 40, 80, 40, 40, 20, NULL),
    -- #841 Flapple (Grass/Dragon)
    (841, 84100, 8, 5, 15, 247, 82, 55, 9, 13, 70, 110, 80, 95, 60, 70, NULL),
    -- #842 Appletun (Grass/Dragon)
    (842, 84200, 8, 5, 15, 247, 82, 47, 9, 13, 110, 85, 80, 100, 80, 30, NULL),
    -- #843 Silicobra (Ground)
    (843, 84300, 8, 9, NULL, 245, 61, 8, 7, 13, 52, 57, 75, 35, 50, 46, NULL),
    -- #844 Sandaconda (Ground)
    (844, 84400, 8, 9, NULL, 245, 61, 8, 7, 13, 72, 107, 125, 65, 70, 71, NULL),
    -- === Water/Poison Lines ===
    -- #845 Cramorant (Flying/Water)
    (845, 84500, 8, 10, 3, 241, NULL, NULL, 2, 6, 70, 85, 55, 85, 95, 85, NULL),
    -- #846 Arrokuda (Water)
    (846, 84600, 8, 3, NULL, 33, NULL, 239, 3, NULL, 41, 63, 40, 40, 30, 66, NULL),
    -- #847 Barraskewda (Water)
    (847, 84700, 8, 3, NULL, 33, NULL, 239, 3, NULL, 61, 123, 60, 60, 50, 136, NULL),
    -- #848 Toxel (Electric/Poison)
    (848, 84800, 8, 4, 8, 155, 9, 103, 15, NULL, 40, 38, 35, 54, 35, 40, NULL),
    -- #849 Toxtricity default=Amped Form (Electric/Poison)
    (849, 84900, 8, 4, 8, 244, 57, 101, 10, NULL, 75, 98, 70, 114, 70, 75, NULL),
    -- #850 Sizzlipede (Fire/Bug)
    (850, 85000, 8, 2, 12, 18, 73, 49, 5, NULL, 50, 65, 45, 50, 50, 45, NULL),
    -- #851 Centiskorch (Fire/Bug)
    (851, 85100, 8, 2, 12, 18, 73, 49, 5, NULL, 100, 115, 65, 90, 90, 65, NULL),
    -- === Fighting/Ghost/Psychic Lines ===
    -- #852 Clobbopus (Fighting)
    (852, 85200, 8, 7, NULL, 7, NULL, 101, 2, 10, 50, 68, 60, 50, 50, 32, NULL),
    -- #853 Grapploct (Fighting)
    (853, 85300, 8, 7, NULL, 7, NULL, 101, 2, 10, 80, 118, 90, 70, 80, 42, NULL),
    -- #854 Sinistea (Ghost)
    (854, 85400, 8, 14, NULL, 133, NULL, 130, 11, 12, 40, 45, 45, 74, 54, 50, NULL),
    -- #855 Polteageist (Ghost)
    (855, 85500, 8, 14, NULL, 133, NULL, 130, 11, 12, 60, 65, 65, 134, 114, 70, NULL),
    -- #856 Hatenna (Psychic)
    (856, 85600, 8, 11, NULL, 131, 107, 156, 8, NULL, 42, 30, 45, 56, 53, 39, NULL),
    -- #857 Hattrem (Psychic)
    (857, 85700, 8, 11, NULL, 131, 107, 156, 8, NULL, 57, 40, 65, 86, 73, 49, NULL),
    -- #858 Hatterene (Psychic/Fairy)
    (858, 85800, 8, 11, 18, 131, 107, 156, 8, NULL, 57, 90, 95, 136, 103, 29, NULL),
    -- === Dark/Fairy Lines ===
    -- #859 Impidimp (Dark/Fairy)
    (859, 85900, 8, 16, 18, 158, 119, 124, 8, 10, 45, 45, 30, 55, 40, 50, NULL),
    -- #860 Morgrem (Dark/Fairy)
    (860, 86000, 8, 16, 18, 158, 119, 124, 8, 10, 65, 60, 45, 75, 55, 70, NULL),
    -- #861 Grimmsnarl (Dark/Fairy)
    (861, 86100, 8, 16, 18, 158, 119, 124, 8, 10, 95, 120, 65, 95, 75, 60, NULL),
    -- === Regional Evolutions ===
    -- #862 Obstagoon (Dark/Normal)
    (862, 86200, 8, 16, 1, 120, 62, 128, 7, NULL, 93, 90, 101, 60, 81, 95, NULL),
    -- #863 Perrserker (Steel)
    (863, 86300, 8, 17, NULL, 4, 181, 252, 7, NULL, 70, 110, 100, 50, 60, 50, NULL),
    -- #864 Cursola (Ghost)
    (864, 86400, 8, 14, NULL, 133, NULL, 253, 2, 4, 60, 95, 50, 145, 130, 30, NULL),
    -- #865 Sirfetch'd (Fighting)
    (865, 86500, 8, 7, NULL, 80, NULL, 113, 6, 7, 62, 135, 95, 68, 82, 65, NULL),
    -- #866 Mr. Rime (Ice/Psychic)
    (866, 86600, 8, 6, 11, 77, 251, 115, 10, NULL, 80, 85, 75, 110, 100, 70, NULL),
    -- #867 Runerigus (Ground/Ghost)
    (867, 86700, 8, 9, 14, 254, NULL, NULL, 11, 12, 58, 95, 145, 50, 105, 30, NULL),
    -- === Fairy/Electric/Ice Lines ===
    -- #868 Milcery (Fairy)
    (868, 86800, 8, 18, NULL, 175, NULL, 165, 8, 12, 45, 40, 40, 50, 61, 34, NULL),
    -- #869 Alcremie (Fairy)
    (869, 86900, 8, 18, NULL, 175, NULL, 165, 8, 12, 65, 60, 75, 110, 121, 64, NULL),
    -- #870 Falinks (Fighting)
    (870, 87000, 8, 7, NULL, 4, NULL, 128, 8, 11, 65, 100, 100, 70, 60, 75, NULL),
    -- #871 Pincurchin (Electric)
    (871, 87100, 8, 4, NULL, 31, NULL, 226, 2, 12, 48, 101, 95, 91, 85, 15, NULL),
    -- #872 Snom (Ice/Bug)
    (872, 87200, 8, 6, 12, 19, NULL, 246, 5, NULL, 30, 25, 35, 45, 30, 20, NULL),
    -- #873 Frosmoth (Ice/Bug)
    (873, 87300, 8, 6, 12, 19, NULL, 246, 5, NULL, 70, 65, 60, 125, 90, 65, NULL),
    -- #874 Stonjourner (Rock)
    (874, 87400, 8, 13, NULL, 249, NULL, NULL, 11, NULL, 100, 125, 135, 20, 20, 70, NULL),
    -- #875 Eiscue default=Ice Face (Ice)
    (875, 87500, 8, 6, NULL, 248, NULL, NULL, 2, 7, 75, 80, 110, 65, 90, 50, NULL),
    -- #876 Indeedee default=Male (Psychic/Normal)
    (876, 87600, 8, 11, 1, 39, 28, 227, 8, NULL, 60, 65, 55, 105, 95, 95, NULL),
    -- #877 Morpeko default=Full Belly (Electric/Dark)
    (877, 87700, 8, 4, 16, 258, NULL, NULL, 7, 8, 58, 95, 58, 70, 58, 97, NULL),
    -- === Steel Lines ===
    -- #878 Cufant (Steel)
    (878, 87800, 8, 17, NULL, 125, NULL, 134, 7, 11, 72, 80, 49, 40, 49, 40, NULL),
    -- #879 Copperajah (Steel)
    (879, 87900, 8, 17, NULL, 125, NULL, 134, 7, 11, 122, 130, 69, 80, 69, 30, NULL),
    -- === Fossil Pokémon (Undiscovered egg group) ===
    -- #880 Dracozolt (Electric/Dragon)
    (880, 88000, 8, 4, 15, 10, 55, 146, 15, NULL, 90, 100, 90, 80, 70, 75, NULL),
    -- #881 Arctozolt (Electric/Ice)
    (881, 88100, 8, 4, 6, 10, 9, 202, 15, NULL, 90, 100, 90, 90, 80, 55, NULL),
    -- #882 Dracovish (Water/Dragon)
    (882, 88200, 8, 3, 15, 11, 173, 146, 15, NULL, 90, 90, 100, 70, 80, 75, NULL),
    -- #883 Arctovish (Water/Ice)
    (883, 88300, 8, 3, 6, 11, 115, 202, 15, NULL, 90, 90, 100, 80, 90, 55, NULL),
    -- === Dragon/Steel Lines ===
    -- #884 Duraludon (Steel/Dragon)
    (884, 88400, 8, 17, 15, 135, 134, 242, 11, 13, 70, 95, 115, 120, 50, 85, NULL),
    -- #885 Dreepy (Dragon/Ghost)
    (885, 88500, 8, 15, 14, 29, 151, 130, 12, 13, 28, 60, 30, 40, 30, 82, NULL),
    -- #886 Drakloak (Dragon/Ghost)
    (886, 88600, 8, 15, 14, 29, 151, 130, 12, 13, 68, 80, 50, 60, 50, 102, NULL),
    -- #887 Dragapult (Dragon/Ghost)
    (887, 88700, 8, 15, 14, 29, 151, 130, 12, 13, 88, 120, 75, 100, 75, 142, NULL),
    -- === Box Legendaries ===
    -- #888 Zacian default=Hero of Many Battles (Fairy)
    (888, 88800, 8, 18, NULL, 234, NULL, NULL, 15, NULL, 92, 130, 115, 80, 115, 138, NULL),
    -- #889 Zamazenta default=Hero of Many Battles (Fighting)
    (889, 88900, 8, 7, NULL, 235, NULL, NULL, 15, NULL, 92, 130, 115, 80, 115, 138, NULL),
    -- #890 Eternatus (Poison/Dragon)
    (890, 89000, 8, 8, 15, 46, NULL, NULL, 15, NULL, 140, 85, 95, 145, 95, 130, NULL),
    -- === Isle of Armor ===
    -- #891 Kubfu (Fighting)
    (891, 89100, 8, 7, NULL, 39, NULL, NULL, 15, NULL, 60, 90, 60, 53, 50, 72, NULL),
    -- #892 Urshifu default=Single Strike Style (Fighting/Dark)
    (892, 89200, 8, 7, 16, 260, NULL, NULL, 15, NULL, 100, 130, 100, 63, 60, 97, NULL),
    -- #893 Zarude (Dark/Grass)
    (893, 89300, 8, 16, 5, 102, NULL, NULL, 15, NULL, 105, 120, 105, 70, 95, 105, NULL),
    -- === Crown Tundra ===
    -- #894 Regieleki (Electric)
    (894, 89400, 8, 4, NULL, 262, NULL, NULL, 15, NULL, 80, 100, 50, 100, 50, 200, NULL),
    -- #895 Regidrago (Dragon)
    (895, 89500, 8, 15, NULL, 263, NULL, NULL, 15, NULL, 200, 100, 50, 100, 50, 80, NULL),
    -- #896 Glastrier (Ice)
    (896, 89600, 8, 6, NULL, 264, NULL, NULL, 15, NULL, 100, 145, 130, 65, 110, 30, NULL),
    -- #897 Spectrier (Ghost)
    (897, 89700, 8, 14, NULL, 265, NULL, NULL, 15, NULL, 100, 65, 60, 145, 80, 130, NULL),
    -- #898 Calyrex (Psychic/Grass)
    (898, 89800, 8, 11, 5, 127, NULL, NULL, 15, NULL, 100, 80, 80, 80, 80, 80, NULL),
    -- === Legends: Arceus ===
    -- #899 Wyrdeer (Normal/Psychic)
    (899, 89900, 8, 1, 11, 22, 119, 157, 7, NULL, 103, 105, 72, 105, 75, 65, NULL),
    -- #900 Kleavor (Bug/Rock) — HA=Steadfast in Gen 8 (changed to Sharpness in Gen 9)
    (900, 90000, 8, 12, 13, 68, 125, 80, 5, NULL, 70, 135, 95, 45, 70, 85, NULL),
    -- #901 Ursaluna (Ground/Normal)
    (901, 90100, 8, 9, 1, 62, 171, 127, 7, NULL, 130, 140, 105, 45, 80, 50, NULL),
    -- #902 Basculegion default=Male (Water/Ghost) — ab1=Rattled in Gen 8 (changed to Swift Swim in Gen 9)
    (902, 90200, 8, 3, 14, 155, 91, 104, 3, NULL, 120, 112, 65, 80, 75, 78, NULL),
    -- #903 Sneasler (Fighting/Poison) — ab2=NULL in Gen 8 (Unburden added in Gen 9)
    (903, 90300, 8, 7, 8, 46, NULL, 143, 7, NULL, 80, 130, 60, 40, 80, 120, NULL),
    -- #904 Overqwil (Dark/Poison)
    (904, 90400, 8, 16, 8, 38, 33, 22, 3, NULL, 85, 115, 95, 65, 65, 85, NULL),
    -- #905 Enamorus default=Incarnate Forme (Fairy/Flying) — ab1=Healer in Gen 8 (changed to Cute Charm in Gen 9)
    (905, 90500, 8, 18, 10, 131, NULL, 126, 15, NULL, 74, 115, 70, 135, 80, 106, NULL);