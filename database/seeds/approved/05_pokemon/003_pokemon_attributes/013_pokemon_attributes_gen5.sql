-- Source: Bulbapedia — Lists of Pokémon by Ability, base stats (Gen V), Egg Group
-- Generation: 5
-- Scope: new species (#494-649) — 156 rows
-- Table: meta.pokemon_attributes
-- Rows: 156
--
-- Gen 5 introduced 41 new abilities (IDs 124-164) and hidden abilities for all
-- breedable Pokémon. This file is the initial snapshot for Gen 5 species.
-- Fairy type did not exist in Gen 5; Cottonee/Whimsicott are pure Grass here.
-- Non-default forms (Basculin Blue-Striped, Darmanitan Zen, Tornadus/Thundurus/
-- Landorus Therian, Kyurem Black/White, Meloetta Pirouette, Keldeo Resolute)
-- are handled in separate non-default form attribute files.
-- Legendaries/mythicals use Undiscovered egg group (15).
--
-- Abilities deliberately NULL in Gen 5 (introduced in later generations):
--   ability2: Roggenrola/Boldore Weak Armor (Gen VII), Gigalith Sand Stream (Gen VII),
--     Gothita/Gothorita/Gothitelle Competitive (Gen VI),
--     Vanillite/Vanillish Snow Cloak (Gen VII), Vanilluxe Snow Warning (Gen VII),
--     Cubchoo/Beartic Slush Rush (Gen VII)
--   hidden_ability: Venipede/Whirlipede/Scolipede Speed Boost (Gen VI),
--     Ferrothorn Anticipation (Gen VI), Litwick/Lampent/Chandelure Infiltrator (Gen VI)
--
-- Gen V stats used; later changes tracked separately:
--   Woobat HP 55→65 (Gen VII), Crustle Atk 95→105 (Gen VII),
--   Beartic Atk 110→130 (Gen VII), Cryogonal HP 70→80 + Def 30→50 (Gen VII)
--
-- Type IDs: Normal(1) Fire(2) Water(3) Electric(4) Grass(5) Ice(6) Fighting(7)
--   Poison(8) Ground(9) Flying(10) Psychic(11) Bug(12) Rock(13) Ghost(14)
--   Dragon(15) Dark(16) Steel(17)
-- Egg Group IDs: Monster(1) Water1(2) Water2(3) Water3(4) Bug(5) Flying(6)
--   Field(7) Fairy(8) Grass(9) Human-Like(10) Mineral(11) Amorphous(12)
--   Dragon(13) Ditto(14) Undiscovered(15)
-- Ability IDs (Gen 3, 1-76): see 009_abilities_gen3.sql
-- Ability IDs (Gen 4, 77-123): see 009_abilities_gen4.sql
-- Ability IDs (Gen 5, 124-164): see 009_abilities_gen5.sql
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #494: Victini (Psychic/Fire)
    (494, 49400, 5, 11, 2, 162, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100, NULL),
    -- #495-497: Snivy line (Grass)
    (495, 49500, 5, 5, NULL, 65, NULL, 126, 7, 9, 45, 45, 55, 45, 55, 63, NULL),
    (496, 49600, 5, 5, NULL, 65, NULL, 126, 7, 9, 60, 60, 75, 60, 75, 83, NULL),
    (497, 49700, 5, 5, NULL, 65, NULL, 126, 7, 9, 75, 75, 95, 75, 95, 113, NULL),
    -- #498-500: Tepig line (Fire → Fire/Fighting); Emboar HA Reckless
    (498, 49800, 5, 2, NULL, 66, NULL, 47, 7, NULL, 65, 63, 45, 45, 45, 45, NULL),
    (499, 49900, 5, 2, 7, 66, NULL, 47, 7, NULL, 90, 93, 55, 70, 55, 55, NULL),
    (500, 50000, 5, 2, 7, 66, NULL, 120, 7, NULL, 110, 123, 65, 100, 65, 65, NULL),
    -- #501-503: Oshawott line (Water)
    (501, 50100, 5, 3, NULL, 67, NULL, 75, 7, NULL, 55, 55, 45, 63, 45, 45, NULL),
    (502, 50200, 5, 3, NULL, 67, NULL, 75, 7, NULL, 75, 75, 60, 83, 60, 60, NULL),
    (503, 50300, 5, 3, NULL, 67, NULL, 75, 7, NULL, 95, 100, 85, 108, 70, 70, NULL),
    -- #504-505: Patrat / Watchog (Normal)
    (504, 50400, 5, 1, NULL, 50, 51, 148, 7, NULL, 45, 55, 39, 35, 39, 42, NULL),
    (505, 50500, 5, 1, NULL, 35, 51, 148, 7, NULL, 60, 85, 69, 60, 69, 77, NULL),
    -- #506-508: Lillipup line (Normal); Lillipup HA Run Away, evos HA Scrappy
    (506, 50600, 5, 1, NULL, 72, 53, 50, 7, NULL, 45, 60, 45, 25, 45, 55, NULL),
    (507, 50700, 5, 1, NULL, 22, 146, 113, 7, NULL, 65, 80, 65, 35, 65, 60, NULL),
    (508, 50800, 5, 1, NULL, 22, 146, 113, 7, NULL, 85, 110, 90, 45, 90, 80, NULL),
    -- #509-510: Purrloin / Liepard (Dark)
    (509, 50900, 5, 16, NULL, 7, 84, 158, 7, NULL, 41, 50, 37, 50, 37, 66, NULL),
    (510, 51000, 5, 16, NULL, 7, 84, 158, 7, NULL, 64, 88, 50, 88, 50, 106, NULL),
    -- #511-512: Pansage / Simisage (Grass)
    (511, 51100, 5, 5, NULL, 82, NULL, 65, 7, NULL, 50, 53, 48, 53, 48, 64, NULL),
    (512, 51200, 5, 5, NULL, 82, NULL, 65, 7, NULL, 75, 98, 63, 98, 63, 101, NULL),
    -- #513-514: Pansear / Simisear (Fire)
    (513, 51300, 5, 2, NULL, 82, NULL, 66, 7, NULL, 50, 53, 48, 53, 48, 64, NULL),
    (514, 51400, 5, 2, NULL, 82, NULL, 66, 7, NULL, 75, 98, 63, 98, 63, 101, NULL),
    -- #515-516: Panpour / Simipour (Water)
    (515, 51500, 5, 3, NULL, 82, NULL, 67, 7, NULL, 50, 53, 48, 53, 48, 64, NULL),
    (516, 51600, 5, 3, NULL, 82, NULL, 67, 7, NULL, 75, 98, 63, 98, 63, 101, NULL),
    -- #517-518: Munna / Musharna (Psychic)
    (517, 51700, 5, 11, NULL, 108, 28, 140, 7, NULL, 76, 25, 45, 67, 55, 24, NULL),
    (518, 51800, 5, 11, NULL, 108, 28, 140, 7, NULL, 116, 55, 85, 107, 95, 29, NULL),
    -- #519-521: Pidove line (Normal/Flying)
    (519, 51900, 5, 1, 10, 145, 105, 79, 6, NULL, 50, 55, 50, 36, 30, 43, NULL),
    (520, 52000, 5, 1, 10, 145, 105, 79, 6, NULL, 62, 77, 62, 50, 42, 65, NULL),
    (521, 52100, 5, 1, 10, 145, 105, 79, 6, NULL, 80, 115, 80, 65, 55, 93, NULL),
    -- #522-523: Blitzle / Zebstrika (Electric)
    (522, 52200, 5, 4, NULL, 31, 78, 157, 7, NULL, 45, 60, 32, 50, 32, 76, NULL),
    (523, 52300, 5, 4, NULL, 31, 78, 157, 7, NULL, 75, 100, 63, 80, 63, 116, NULL),
    -- #524-526: Roggenrola line (Rock); ability2 NULL (Weak Armor / Sand Stream Gen VII+)
    (524, 52400, 5, 13, NULL, 5, NULL, 159, 11, NULL, 55, 75, 85, 25, 25, 15, NULL),
    (525, 52500, 5, 13, NULL, 5, NULL, 159, 11, NULL, 70, 105, 105, 50, 40, 20, NULL),
    (526, 52600, 5, 13, NULL, 5, NULL, 159, 11, NULL, 85, 135, 130, 60, 80, 25, NULL),
    -- #527-528: Woobat / Swoobat (Psychic/Flying)
    (527, 52700, 5, 11, 10, 109, 103, 86, 7, 6, 55, 45, 43, 55, 43, 72, NULL),
    (528, 52800, 5, 11, 10, 109, 103, 86, 7, 6, 67, 57, 55, 77, 55, 114, NULL),
    -- #529-530: Drilbur / Excadrill (Ground → Ground/Steel)
    (529, 52900, 5, 9, NULL, 146, 159, 104, 7, NULL, 60, 85, 40, 30, 45, 68, NULL),
    (530, 53000, 5, 9, 17, 146, 159, 104, 7, NULL, 110, 135, 60, 50, 65, 88, NULL),
    -- #531: Audino (Normal)
    (531, 53100, 5, 1, NULL, 131, 144, 103, 8, NULL, 103, 60, 86, 60, 86, 50, NULL),
    -- #532-534: Timburr line (Fighting)
    (532, 53200, 5, 7, NULL, 62, 125, 89, 10, NULL, 75, 80, 55, 25, 35, 35, NULL),
    (533, 53300, 5, 7, NULL, 62, 125, 89, 10, NULL, 85, 105, 85, 40, 50, 40, NULL),
    (534, 53400, 5, 7, NULL, 62, 125, 89, 10, NULL, 105, 140, 95, 55, 65, 45, NULL),
    -- #535-537: Tympole line (Water → Water/Ground); Seismitoad ability2 Poison Touch
    (535, 53500, 5, 3, NULL, 33, 93, 11, 2, NULL, 50, 50, 40, 50, 40, 64, NULL),
    (536, 53600, 5, 3, 9, 33, 93, 11, 2, NULL, 75, 65, 55, 65, 55, 69, NULL),
    (537, 53700, 5, 3, 9, 33, 143, 11, 2, NULL, 105, 95, 75, 85, 75, 74, NULL),
    -- #538-539: Throh / Sawk (Fighting)
    (538, 53800, 5, 7, NULL, 62, 39, 104, 10, NULL, 120, 100, 85, 30, 85, 45, NULL),
    (539, 53900, 5, 7, NULL, 5, 39, 104, 10, NULL, 75, 125, 75, 30, 75, 85, NULL),
    -- #540-542: Sewaddle line (Bug/Grass); Swadloon ability1 Leaf Guard
    (540, 54000, 5, 12, 5, 68, 34, 142, 5, NULL, 45, 53, 70, 40, 60, 42, NULL),
    (541, 54100, 5, 12, 5, 102, 34, 142, 5, NULL, 55, 63, 90, 50, 80, 42, NULL),
    (542, 54200, 5, 12, 5, 68, 34, 142, 5, NULL, 75, 103, 80, 70, 80, 92, NULL),
    -- #543-545: Venipede line (Bug/Poison); HA NULL (Speed Boost Gen VI+)
    (543, 54300, 5, 12, 8, 38, 68, NULL, 5, NULL, 30, 45, 59, 30, 39, 57, NULL),
    (544, 54400, 5, 12, 8, 38, 68, NULL, 5, NULL, 40, 55, 99, 40, 79, 47, NULL),
    (545, 54500, 5, 12, 8, 38, 68, NULL, 5, NULL, 60, 100, 89, 55, 69, 112, NULL),
    -- #546-547: Cottonee / Whimsicott (Grass in Gen V; Grass/Fairy in Gen VI)
    (546, 54600, 5, 5, NULL, 158, 151, 34, 9, 8, 40, 27, 60, 37, 50, 66, NULL),
    (547, 54700, 5, 5, NULL, 158, 151, 34, 9, 8, 60, 67, 85, 77, 75, 116, NULL),
    -- #548-549: Petilil / Lilligant (Grass)
    (548, 54800, 5, 5, NULL, 34, 20, 102, 9, NULL, 45, 35, 50, 70, 50, 30, NULL),
    (549, 54900, 5, 5, NULL, 34, 20, 102, 9, NULL, 70, 60, 75, 110, 75, 90, NULL),
    -- #550: Basculin Red-Striped (Water)
    (550, 55000, 5, 3, NULL, 120, 91, 104, 3, NULL, 70, 92, 65, 80, 55, 98, NULL),
    -- #551-553: Sandile line (Ground/Dark)
    (551, 55100, 5, 9, 16, 22, 153, 83, 7, NULL, 50, 72, 35, 35, 35, 65, NULL),
    (552, 55200, 5, 9, 16, 22, 153, 83, 7, NULL, 60, 82, 45, 45, 45, 74, NULL),
    (553, 55300, 5, 9, 16, 22, 153, 83, 7, NULL, 95, 117, 80, 65, 70, 92, NULL),
    -- #554-555: Darumaka / Darmanitan (Fire)
    (554, 55400, 5, 2, NULL, 55, NULL, 39, 7, NULL, 70, 90, 45, 15, 45, 50, NULL),
    (555, 55500, 5, 2, NULL, 125, NULL, 161, 7, NULL, 105, 140, 55, 30, 55, 95, NULL),
    -- #556: Maractus (Grass)
    (556, 55600, 5, 5, NULL, 11, 34, 114, 9, NULL, 75, 86, 67, 106, 67, 60, NULL),
    -- #557-558: Dwebble / Crustle (Bug/Rock)
    (557, 55700, 5, 12, 13, 5, 75, 133, 5, 11, 50, 65, 85, 35, 35, 55, NULL),
    (558, 55800, 5, 12, 13, 5, 75, 133, 5, 11, 70, 95, 125, 65, 75, 45, NULL),
    -- #559-560: Scraggy / Scrafty (Dark/Fighting)
    (559, 55900, 5, 16, 7, 61, 153, 22, 7, 13, 50, 75, 70, 35, 70, 48, NULL),
    (560, 56000, 5, 16, 7, 61, 153, 22, 7, 13, 65, 90, 115, 45, 115, 58, NULL),
    -- #561: Sigilyph (Psychic/Flying)
    (561, 56100, 5, 11, 10, 147, 98, 110, 6, NULL, 72, 58, 80, 103, 80, 97, NULL),
    -- #562-563: Yamask / Cofagrigus (Ghost); no HA
    (562, 56200, 5, 14, NULL, 152, NULL, NULL, 11, 12, 38, 30, 85, 55, 65, 30, NULL),
    (563, 56300, 5, 14, NULL, 152, NULL, NULL, 11, 12, 58, 50, 145, 95, 105, 30, NULL),
    -- #564-565: Tirtouga / Carracosta (Water/Rock)
    (564, 56400, 5, 3, 13, 116, 5, 33, 2, 4, 54, 78, 103, 53, 45, 22, NULL),
    (565, 56500, 5, 3, 13, 116, 5, 33, 2, 4, 74, 108, 133, 83, 65, 32, NULL),
    -- #566-567: Archen / Archeops (Rock/Flying); no HA
    (566, 56600, 5, 13, 10, 129, NULL, NULL, 6, 4, 55, 112, 45, 74, 45, 70, NULL),
    (567, 56700, 5, 13, 10, 129, NULL, NULL, 6, 4, 75, 140, 65, 112, 65, 110, NULL),
    -- #568-569: Trubbish / Garbodor (Poison); Garbodor ability2 Weak Armor
    (568, 56800, 5, 8, NULL, 1, 60, 106, 11, NULL, 50, 50, 62, 40, 62, 65, NULL),
    (569, 56900, 5, 8, NULL, 1, 133, 106, 11, NULL, 80, 95, 82, 60, 82, 75, NULL),
    -- #570-571: Zorua / Zoroark (Dark); Illusion only, no HA
    (570, 57000, 5, 16, NULL, 149, NULL, NULL, 7, NULL, 40, 65, 40, 80, 40, 65, NULL),
    (571, 57100, 5, 16, NULL, 149, NULL, NULL, 7, NULL, 60, 105, 60, 120, 60, 105, NULL),
    -- #572-573: Minccino / Cinccino (Normal)
    (572, 57200, 5, 1, NULL, 56, 101, 92, 7, NULL, 55, 50, 40, 40, 40, 75, NULL),
    (573, 57300, 5, 1, NULL, 56, 101, 92, 7, NULL, 75, 95, 60, 65, 60, 115, NULL),
    -- #574-576: Gothita line (Psychic); ability2 NULL (Competitive Gen VI+)
    (574, 57400, 5, 11, NULL, 119, NULL, 23, 10, NULL, 45, 30, 50, 55, 65, 45, NULL),
    (575, 57500, 5, 11, NULL, 119, NULL, 23, 10, NULL, 60, 45, 70, 75, 85, 55, NULL),
    (576, 57600, 5, 11, NULL, 119, NULL, 23, 10, NULL, 70, 55, 95, 95, 110, 65, NULL),
    -- #577-579: Solosis line (Psychic)
    (577, 57700, 5, 11, NULL, 142, 98, 144, 12, NULL, 45, 30, 40, 105, 50, 20, NULL),
    (578, 57800, 5, 11, NULL, 142, 98, 144, 12, NULL, 65, 40, 50, 125, 60, 30, NULL),
    (579, 57900, 5, 11, NULL, 142, 98, 144, 12, NULL, 110, 65, 75, 125, 85, 30, NULL),
    -- #580-581: Ducklett / Swanna (Water/Flying)
    (580, 58000, 5, 3, 10, 51, 145, 93, 2, 6, 62, 44, 50, 44, 50, 55, NULL),
    (581, 58100, 5, 3, 10, 51, 145, 93, 2, 6, 75, 87, 63, 87, 63, 98, NULL),
    -- #582-584: Vanillite line (Ice); ability2 NULL (Snow Cloak/Snow Warning Gen VII+)
    (582, 58200, 5, 6, NULL, 115, NULL, 133, 11, NULL, 36, 50, 50, 65, 60, 44, NULL),
    (583, 58300, 5, 6, NULL, 115, NULL, 133, 11, NULL, 51, 65, 65, 80, 75, 59, NULL),
    (584, 58400, 5, 6, NULL, 115, NULL, 133, 11, NULL, 71, 95, 85, 110, 95, 79, NULL),
    -- #585-586: Deerling / Sawsbuck (Normal/Grass)
    (585, 58500, 5, 1, 5, 34, 157, 32, 7, NULL, 60, 60, 50, 40, 50, 75, NULL),
    (586, 58600, 5, 1, 5, 34, 157, 32, 7, NULL, 80, 100, 70, 60, 70, 95, NULL),
    -- #587: Emolga (Electric/Flying)
    (587, 58700, 5, 4, 10, 9, NULL, 78, 7, NULL, 55, 75, 60, 75, 60, 103, NULL),
    -- #588-589: Karrablast / Escavalier (Bug → Bug/Steel)
    (588, 58800, 5, 12, NULL, 68, 61, 99, 5, NULL, 50, 75, 45, 40, 45, 60, NULL),
    (589, 58900, 5, 12, 17, 68, 75, 142, 5, NULL, 70, 135, 105, 60, 105, 20, NULL),
    -- #590-591: Foongus / Amoonguss (Grass/Poison)
    (590, 59000, 5, 5, 8, 27, NULL, 144, 9, NULL, 69, 55, 45, 55, 55, 15, NULL),
    (591, 59100, 5, 5, 8, 27, NULL, 144, 9, NULL, 114, 85, 70, 85, 80, 30, NULL),
    -- #592-593: Frillish / Jellicent (Water/Ghost)
    (592, 59200, 5, 3, 14, 11, 130, 6, 12, NULL, 55, 40, 50, 65, 85, 40, NULL),
    (593, 59300, 5, 3, 14, 11, 130, 6, 12, NULL, 100, 60, 70, 85, 105, 60, NULL),
    -- #594: Alomomola (Water)
    (594, 59400, 5, 3, NULL, 131, 93, 144, 2, 3, 165, 75, 80, 40, 45, 65, NULL),
    -- #595-596: Joltik / Galvantula (Bug/Electric)
    (595, 59500, 5, 12, 4, 14, 127, 68, 5, NULL, 50, 47, 50, 57, 50, 65, NULL),
    (596, 59600, 5, 12, 4, 14, 127, 68, 5, NULL, 70, 77, 60, 97, 60, 108, NULL),
    -- #597-598: Ferroseed / Ferrothorn (Grass/Steel); Ferroseed no HA, Ferrothorn HA Gen VI+
    (597, 59700, 5, 5, 17, 160, NULL, NULL, 9, 11, 44, 50, 91, 24, 86, 10, NULL),
    (598, 59800, 5, 5, 17, 160, NULL, NULL, 9, 11, 74, 94, 131, 54, 116, 20, NULL),
    -- #599-601: Klink line (Steel)
    (599, 59900, 5, 17, NULL, 57, 58, 29, 11, NULL, 40, 55, 70, 45, 60, 30, NULL),
    (600, 60000, 5, 17, NULL, 57, 58, 29, 11, NULL, 60, 80, 95, 70, 85, 50, NULL),
    (601, 60100, 5, 17, NULL, 57, 58, 29, 11, NULL, 60, 100, 115, 70, 85, 90, NULL),
    -- #602-604: Tynamo line (Electric); Levitate only, no HA
    (602, 60200, 5, 4, NULL, 26, NULL, NULL, 12, NULL, 35, 55, 40, 45, 40, 60, NULL),
    (603, 60300, 5, 4, NULL, 26, NULL, NULL, 12, NULL, 65, 85, 70, 75, 70, 40, NULL),
    (604, 60400, 5, 4, NULL, 26, NULL, NULL, 12, NULL, 85, 115, 80, 105, 80, 50, NULL),
    -- #605-606: Elgyem / Beheeyem (Psychic)
    (605, 60500, 5, 11, NULL, 140, 28, 148, 10, NULL, 55, 55, 55, 85, 55, 30, NULL),
    (606, 60600, 5, 11, NULL, 140, 28, 148, 10, NULL, 75, 75, 75, 125, 95, 40, NULL),
    -- #607-609: Litwick line (Ghost/Fire); HA NULL (Infiltrator Gen VI+)
    (607, 60700, 5, 14, 2, 18, 49, NULL, 12, NULL, 50, 30, 55, 65, 55, 20, NULL),
    (608, 60800, 5, 14, 2, 18, 49, NULL, 12, NULL, 60, 40, 60, 95, 60, 55, NULL),
    (609, 60900, 5, 14, 2, 18, 49, NULL, 12, NULL, 60, 55, 90, 145, 90, 80, NULL),
    -- #610-612: Axew line (Dragon)
    (610, 61000, 5, 15, NULL, 79, 104, 127, 1, 13, 46, 87, 60, 30, 40, 57, NULL),
    (611, 61100, 5, 15, NULL, 79, 104, 127, 1, 13, 66, 117, 70, 40, 50, 67, NULL),
    (612, 61200, 5, 15, NULL, 79, 104, 127, 1, 13, 76, 147, 90, 60, 70, 97, NULL),
    -- #613-614: Cubchoo / Beartic (Ice); ability2 NULL (Slush Rush Gen VII+)
    (613, 61300, 5, 6, NULL, 81, NULL, 155, 7, NULL, 55, 70, 40, 60, 40, 40, NULL),
    (614, 61400, 5, 6, NULL, 81, NULL, 33, 7, NULL, 95, 110, 80, 70, 80, 50, NULL),
    -- #615: Cryogonal (Ice); Levitate only, no HA; Gen V stats
    (615, 61500, 5, 6, NULL, 26, NULL, NULL, 11, NULL, 70, 50, 30, 95, 135, 105, NULL),
    -- #616-617: Shelmet / Accelgor (Bug)
    (616, 61600, 5, 12, NULL, 93, 75, 142, 5, NULL, 50, 40, 85, 40, 65, 25, NULL),
    (617, 61700, 5, 12, NULL, 93, 60, 84, 5, NULL, 80, 70, 40, 100, 60, 145, NULL),
    -- #618: Stunfisk (Ground/Electric)
    (618, 61800, 5, 9, 4, 9, 7, 8, 2, 12, 109, 66, 84, 81, 99, 32, NULL),
    -- #619-620: Mienfoo / Mienshao (Fighting)
    (619, 61900, 5, 7, NULL, 39, 144, 120, 7, 10, 45, 85, 50, 55, 50, 65, NULL),
    (620, 62000, 5, 7, NULL, 39, 144, 120, 7, 10, 65, 125, 60, 95, 60, 105, NULL),
    -- #621: Druddigon (Dragon)
    (621, 62100, 5, 15, NULL, 24, 125, 104, 13, 1, 77, 120, 90, 60, 90, 48, NULL),
    -- #622-623: Golett / Golurk (Ground/Ghost)
    (622, 62200, 5, 9, 14, 89, 103, 99, 11, NULL, 59, 74, 50, 35, 50, 35, NULL),
    (623, 62300, 5, 9, 14, 89, 103, 99, 11, NULL, 89, 124, 80, 55, 80, 55, NULL),
    -- #624-625: Pawniard / Bisharp (Dark/Steel)
    (624, 62400, 5, 16, 17, 128, 39, 46, 10, NULL, 45, 85, 70, 40, 40, 60, NULL),
    (625, 62500, 5, 16, 17, 128, 39, 46, 10, NULL, 65, 125, 100, 60, 70, 70, NULL),
    -- #626: Bouffalant (Normal)
    (626, 62600, 5, 1, NULL, 120, 157, 43, 7, NULL, 95, 110, 95, 40, 95, 55, NULL),
    -- #627-628: Rufflet / Braviary (Normal/Flying); Rufflet HA Hustle, Braviary HA Defiant
    (627, 62700, 5, 1, 10, 51, 125, 55, 6, NULL, 70, 83, 50, 37, 50, 60, NULL),
    (628, 62800, 5, 1, 10, 51, 125, 128, 6, NULL, 100, 123, 75, 57, 75, 80, NULL),
    -- #629-630: Vullaby / Mandibuzz (Dark/Flying)
    (629, 62900, 5, 16, 10, 145, 142, 133, 6, NULL, 70, 55, 75, 45, 65, 60, NULL),
    (630, 63000, 5, 16, 10, 145, 142, 133, 6, NULL, 110, 65, 105, 55, 95, 80, NULL),
    -- #631: Heatmor (Fire)
    (631, 63100, 5, 2, NULL, 82, 18, 73, 7, NULL, 85, 97, 66, 105, 66, 65, NULL),
    -- #632: Durant (Bug/Steel)
    (632, 63200, 5, 12, 17, 68, 55, 54, 5, NULL, 58, 109, 112, 48, 48, 109, NULL),
    -- #633-635: Deino line (Dark/Dragon); Hydreigon ability Levitate; no HA
    (633, 63300, 5, 16, 15, 55, NULL, NULL, 13, NULL, 52, 65, 50, 45, 50, 38, NULL),
    (634, 63400, 5, 16, 15, 55, NULL, NULL, 13, NULL, 72, 85, 70, 65, 70, 58, NULL),
    (635, 63500, 5, 16, 15, 26, NULL, NULL, 13, NULL, 92, 105, 90, 125, 90, 98, NULL),
    -- #636-637: Larvesta / Volcarona (Bug/Fire)
    (636, 63600, 5, 12, 2, 49, NULL, 68, 5, NULL, 55, 85, 55, 50, 55, 60, NULL),
    (637, 63700, 5, 12, 2, 49, NULL, 68, 5, NULL, 85, 60, 65, 135, 105, 100, NULL),
    -- #638: Cobalion (Steel/Fighting)
    (638, 63800, 5, 17, 7, 154, NULL, NULL, 15, NULL, 91, 90, 129, 90, 72, 108, NULL),
    -- #639: Terrakion (Rock/Fighting)
    (639, 63900, 5, 13, 7, 154, NULL, NULL, 15, NULL, 91, 129, 90, 72, 90, 108, NULL),
    -- #640: Virizion (Grass/Fighting)
    (640, 64000, 5, 5, 7, 154, NULL, NULL, 15, NULL, 91, 90, 72, 90, 129, 108, NULL),
    -- #641: Tornadus Incarnate (Flying)
    (641, 64100, 5, 10, NULL, 158, NULL, 128, 15, NULL, 79, 115, 70, 125, 80, 111, NULL),
    -- #642: Thundurus Incarnate (Electric/Flying)
    (642, 64200, 5, 4, 10, 158, NULL, 128, 15, NULL, 79, 115, 70, 125, 80, 111, NULL),
    -- #643: Reshiram (Dragon/Fire)
    (643, 64300, 5, 15, 2, 163, NULL, NULL, 15, NULL, 100, 120, 100, 150, 120, 90, NULL),
    -- #644: Zekrom (Dragon/Electric)
    (644, 64400, 5, 15, 4, 164, NULL, NULL, 15, NULL, 100, 150, 120, 120, 100, 90, NULL),
    -- #645: Landorus Incarnate (Ground/Flying)
    (645, 64500, 5, 9, 10, 159, NULL, 125, 15, NULL, 89, 125, 90, 115, 80, 101, NULL),
    -- #646: Kyurem (Dragon/Ice)
    (646, 64600, 5, 15, 6, 46, NULL, NULL, 15, NULL, 125, 130, 90, 130, 90, 95, NULL),
    -- #647: Keldeo (Water/Fighting)
    (647, 64700, 5, 3, 7, 154, NULL, NULL, 15, NULL, 91, 72, 90, 129, 90, 108, NULL),
    -- #648: Meloetta Aria (Normal/Psychic)
    (648, 64800, 5, 1, 11, 32, NULL, NULL, 15, NULL, 100, 77, 77, 128, 128, 90, NULL),
    -- #649: Genesect (Bug/Steel)
    (649, 64900, 5, 12, 17, 88, NULL, NULL, 15, NULL, 71, 120, 95, 120, 95, 99, NULL);