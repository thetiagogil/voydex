-- Source: Bulbapedia — Lists of Pokémon by Ability, base stats (Gen VI), Egg Group
-- Generation: 6
-- Scope: new species (#650-721) — 72 rows
-- Table: meta.pokemon_attributes
-- Rows: 72
--
-- Gen 6 introduced the Fairy type (ID 18) and 27 new abilities (IDs 165-191).
-- This file is the initial snapshot for Gen 6 species.
-- Non-default forms (Meowstic Female, Aegislash Blade Forme, Pumpkaboo/Gourgeist
-- size variants, Hoopa Unbound) are handled in separate non-default form attribute files.
-- Furfrou trims, Vivillon patterns, and Flabébé/Floette/Florges flower colors are
-- cosmetic only with no attribute differences.
-- Legendaries/mythicals use Undiscovered egg group (15).
--
-- Gen VI stats used; later changes tracked separately:
--   Aegislash Shield Forme Def 150→140, SpD 150→140 (Gen VIII)
--
-- Egg groups are Gen VI values; later additions tracked separately:
--   Hawlucha: Human-Like → Flying/Human-Like (Gen VIII)
--   Bergmite/Avalugg: Monster → Monster/Mineral (Gen VIII)
--   Noibat/Noivern: Flying → Flying/Dragon (Gen VIII)
--
-- Type IDs: Normal(1) Fire(2) Water(3) Electric(4) Grass(5) Ice(6) Fighting(7)
--   Poison(8) Ground(9) Flying(10) Psychic(11) Bug(12) Rock(13) Ghost(14)
--   Dragon(15) Dark(16) Steel(17) Fairy(18)
-- Egg Group IDs: Monster(1) Water1(2) Water2(3) Water3(4) Bug(5) Flying(6)
--   Field(7) Fairy(8) Grass(9) Human-Like(10) Mineral(11) Amorphous(12)
--   Dragon(13) Ditto(14) Undiscovered(15)
-- Ability IDs (Gen 3, 1-76): see 009_abilities_gen3.sql
-- Ability IDs (Gen 4, 77-123): see 009_abilities_gen4.sql
-- Ability IDs (Gen 5, 124-164): see 009_abilities_gen5.sql
-- Ability IDs (Gen 6, 165-191): see 009_abilities_gen6.sql
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #650-652: Chespin line (Grass → Grass/Fighting)
    (650, 65000, 6, 5, NULL, 65, NULL, 171, 7, NULL, 56, 61, 65, 48, 45, 38, NULL),
    (651, 65100, 6, 5, NULL, 65, NULL, 171, 7, NULL, 61, 78, 95, 56, 58, 57, NULL),
    (652, 65200, 6, 5, 7, 65, NULL, 171, 7, NULL, 88, 107, 122, 74, 75, 64, NULL),
    -- #653-655: Fennekin line (Fire → Fire/Psychic)
    (653, 65300, 6, 2, NULL, 66, NULL, 170, 7, NULL, 40, 45, 40, 62, 60, 60, NULL),
    (654, 65400, 6, 2, NULL, 66, NULL, 170, 7, NULL, 59, 59, 58, 90, 70, 73, NULL),
    (655, 65500, 6, 2, 11, 66, NULL, 170, 7, NULL, 75, 69, 72, 114, 100, 104, NULL),
    -- #656-658: Froakie line (Water → Water/Dark)
    (656, 65600, 6, 3, NULL, 67, NULL, 168, 2, NULL, 41, 56, 40, 62, 44, 71, NULL),
    (657, 65700, 6, 3, NULL, 67, NULL, 168, 2, NULL, 54, 63, 52, 83, 56, 97, NULL),
    (658, 65800, 6, 3, 16, 67, NULL, 168, 2, NULL, 72, 95, 67, 103, 71, 122, NULL),
    -- #659-660: Bunnelby / Diggersby (Normal → Normal/Ground)
    (659, 65900, 6, 1, NULL, 53, 167, 37, 7, NULL, 38, 36, 38, 32, 36, 57, NULL),
    (660, 66000, 6, 1, 9, 53, 167, 37, 7, NULL, 85, 56, 77, 50, 77, 78, NULL),
    -- #661-663: Fletchling line (Normal/Flying → Fire/Flying)
    (661, 66100, 6, 1, 10, 145, NULL, 177, 6, NULL, 45, 50, 43, 40, 38, 62, NULL),
    (662, 66200, 6, 2, 10, 49, NULL, 177, 6, NULL, 62, 73, 55, 56, 52, 84, NULL),
    (663, 66300, 6, 2, 10, 49, NULL, 177, 6, NULL, 78, 81, 71, 74, 69, 126, NULL),
    -- #664-666: Scatterbug line (Bug → Bug/Flying)
    (664, 66400, 6, 12, NULL, 19, 14, 132, 5, NULL, 38, 35, 40, 27, 25, 35, NULL),
    (665, 66500, 6, 12, NULL, 61, NULL, 132, 5, NULL, 45, 22, 60, 27, 30, 29, NULL),
    (666, 66600, 6, 12, 10, 19, 14, 132, 5, NULL, 80, 52, 50, 90, 50, 89, NULL),
    -- #667-668: Litleo / Pyroar (Fire/Normal)
    (667, 66700, 6, 2, 1, 79, 127, 153, 7, NULL, 62, 50, 58, 73, 54, 72, NULL),
    (668, 66800, 6, 2, 1, 79, 127, 153, 7, NULL, 86, 68, 72, 109, 66, 106, NULL),
    -- #669-671: Flabébé line (Fairy)
    (669, 66900, 6, 18, NULL, 166, NULL, 180, 8, NULL, 44, 38, 39, 61, 79, 42, NULL),
    (670, 67000, 6, 18, NULL, 166, NULL, 180, 8, NULL, 54, 45, 47, 75, 98, 52, NULL),
    (671, 67100, 6, 18, NULL, 166, NULL, 180, 8, NULL, 78, 65, 68, 112, 154, 75, NULL),
    -- #672-673: Skiddo / Gogoat (Grass)
    (672, 67200, 6, 5, NULL, 157, NULL, 179, 7, NULL, 66, 65, 48, 62, 57, 52, NULL),
    (673, 67300, 6, 5, NULL, 157, NULL, 179, 7, NULL, 123, 100, 62, 97, 81, 68, NULL),
    -- #674-675: Pancham / Pangoro (Fighting → Fighting/Dark)
    (674, 67400, 6, 7, NULL, 89, 104, 113, 7, 10, 67, 82, 62, 46, 48, 43, NULL),
    (675, 67500, 6, 7, 16, 89, 104, 113, 7, 10, 95, 124, 78, 69, 71, 58, NULL),
    -- #676: Furfrou (Normal)
    (676, 67600, 6, 1, NULL, 169, NULL, NULL, 7, NULL, 75, 80, 60, 65, 90, 102, NULL),
    -- #677-678: Espurr / Meowstic (Psychic); Meowstic default = Male form
    (677, 67700, 6, 11, NULL, 51, 151, 20, 7, NULL, 62, 48, 54, 63, 60, 68, NULL),
    (678, 67800, 6, 11, NULL, 51, 151, 158, 7, NULL, 74, 48, 76, 83, 81, 104, NULL),
    -- #679-681: Honedge line (Steel/Ghost); Aegislash default = Shield Forme
    (679, 67900, 6, 17, 14, 99, NULL, NULL, 11, NULL, 45, 80, 100, 35, 37, 28, NULL),
    (680, 68000, 6, 17, 14, 99, NULL, NULL, 11, NULL, 59, 110, 150, 45, 49, 35, NULL),
    (681, 68100, 6, 17, 14, 176, NULL, NULL, 11, NULL, 60, 50, 150, 50, 150, 60, NULL),
    -- #682-683: Spritzee / Aromatisse (Fairy)
    (682, 68200, 6, 18, NULL, 131, NULL, 165, 8, NULL, 78, 52, 60, 63, 65, 23, NULL),
    (683, 68300, 6, 18, NULL, 131, NULL, 165, 8, NULL, 101, 72, 72, 99, 89, 29, NULL),
    -- #684-685: Swirlix / Slurpuff (Fairy)
    (684, 68400, 6, 18, NULL, 175, NULL, 84, 8, NULL, 62, 48, 66, 59, 57, 49, NULL),
    (685, 68500, 6, 18, NULL, 175, NULL, 84, 8, NULL, 82, 80, 86, 85, 75, 72, NULL),
    -- #686-687: Inkay / Malamar (Dark/Psychic)
    (686, 68600, 6, 16, 11, 126, 21, 151, 2, 3, 53, 54, 53, 37, 46, 45, NULL),
    (687, 68700, 6, 16, 11, 126, 21, 151, 2, 3, 86, 92, 88, 68, 75, 73, NULL),
    -- #688-689: Binacle / Barbaracle (Rock/Water)
    (688, 68800, 6, 13, 3, 181, 97, 124, 4, NULL, 42, 52, 67, 39, 56, 50, NULL),
    (689, 68900, 6, 13, 3, 181, 97, 124, 4, NULL, 72, 105, 115, 54, 86, 68, NULL),
    -- #690-691: Skrelp / Dragalge (Poison/Water → Poison/Dragon)
    (690, 69000, 6, 8, 3, 38, 143, 91, 2, 13, 50, 60, 60, 60, 60, 30, NULL),
    (691, 69100, 6, 8, 15, 38, 143, 91, 2, 13, 65, 75, 90, 97, 123, 44, NULL),
    -- #692-693: Clauncher / Clawitzer (Water)
    (692, 69200, 6, 3, NULL, 178, NULL, NULL, 2, 4, 50, 53, 62, 58, 63, 44, NULL),
    (693, 69300, 6, 3, NULL, 178, NULL, NULL, 2, 4, 71, 73, 88, 120, 89, 59, NULL),
    -- #694-695: Helioptile / Heliolisk (Electric/Normal)
    (694, 69400, 6, 4, 1, 87, 8, 94, 1, 13, 44, 38, 33, 61, 43, 70, NULL),
    (695, 69500, 6, 4, 1, 87, 8, 94, 1, 13, 62, 55, 52, 109, 94, 109, NULL),
    -- #696-697: Tyrunt / Tyrantrum (Rock/Dragon)
    (696, 69600, 6, 13, 15, 173, NULL, 5, 1, 13, 58, 89, 77, 45, 45, 48, NULL),
    (697, 69700, 6, 13, 15, 173, NULL, 69, 1, 13, 82, 121, 119, 69, 59, 71, NULL),
    -- #698-699: Amaura / Aurorus (Rock/Ice)
    (698, 69800, 6, 13, 6, 174, NULL, 117, 1, NULL, 77, 59, 50, 67, 63, 46, NULL),
    (699, 69900, 6, 13, 6, 174, NULL, 117, 1, NULL, 123, 77, 72, 99, 92, 58, NULL),
    -- #700: Sylveon (Fairy)
    (700, 70000, 6, 18, NULL, 56, NULL, 182, 7, NULL, 95, 65, 65, 110, 130, 60, NULL),
    -- #701: Hawlucha (Fighting/Flying); egg group Human-Like only in Gen VI
    (701, 70100, 6, 7, 10, 7, 84, 104, 10, NULL, 78, 92, 75, 74, 63, 118, NULL),
    -- #702: Dedenne (Electric/Fairy)
    (702, 70200, 6, 4, 18, 167, 53, 57, 7, 8, 67, 58, 57, 81, 67, 101, NULL),
    -- #703: Carbink (Rock/Fairy)
    (703, 70300, 6, 13, 18, 29, NULL, 5, 8, 11, 50, 50, 150, 50, 150, 50, NULL),
    -- #704-706: Goomy line (Dragon)
    (704, 70400, 6, 15, NULL, 157, 93, 183, 13, NULL, 45, 50, 35, 55, 75, 40, NULL),
    (705, 70500, 6, 15, NULL, 157, 93, 183, 13, NULL, 68, 75, 53, 83, 113, 60, NULL),
    (706, 70600, 6, 15, NULL, 157, 93, 183, 13, NULL, 90, 100, 70, 110, 150, 80, NULL),
    -- #707: Klefki (Steel/Fairy)
    (707, 70700, 6, 17, 18, 158, NULL, 170, 11, NULL, 57, 80, 91, 80, 87, 75, NULL),
    -- #708-709: Phantump / Trevenant (Ghost/Grass)
    (708, 70800, 6, 14, 5, 30, 119, 139, 9, 12, 43, 70, 48, 50, 60, 38, NULL),
    (709, 70900, 6, 14, 5, 30, 119, 139, 9, 12, 85, 110, 76, 65, 82, 56, NULL),
    -- #710-711: Pumpkaboo / Gourgeist (Ghost/Grass); default = Average Size
    (710, 71000, 6, 14, 5, 53, 119, 15, 12, NULL, 49, 66, 70, 44, 55, 51, NULL),
    (711, 71100, 6, 14, 5, 53, 119, 15, 12, NULL, 65, 90, 122, 58, 75, 84, NULL),
    -- #712-713: Bergmite / Avalugg (Ice); egg group Monster only in Gen VI
    (712, 71200, 6, 6, NULL, 20, 115, 5, 1, NULL, 55, 69, 85, 32, 35, 28, NULL),
    (713, 71300, 6, 6, NULL, 20, 115, 5, 1, NULL, 95, 117, 184, 44, 46, 28, NULL),
    -- #714-715: Noibat / Noivern (Flying/Dragon); egg group Flying only in Gen VI
    (714, 71400, 6, 10, 15, 119, 151, 140, 6, NULL, 40, 30, 35, 45, 40, 55, NULL),
    (715, 71500, 6, 10, 15, 119, 151, 140, 6, NULL, 85, 70, 80, 97, 80, 123, NULL),
    -- #716: Xerneas (Fairy)
    (716, 71600, 6, 18, NULL, 187, NULL, NULL, 15, NULL, 126, 131, 95, 131, 98, 99, NULL),
    -- #717: Yveltal (Dark/Flying)
    (717, 71700, 6, 16, 10, 186, NULL, NULL, 15, NULL, 126, 131, 95, 131, 98, 99, NULL),
    -- #718: Zygarde (Dragon/Ground)
    (718, 71800, 6, 15, 9, 188, NULL, NULL, 15, NULL, 108, 100, 121, 81, 95, 95, NULL),
    -- #719: Diancie (Rock/Fairy)
    (719, 71900, 6, 13, 18, 29, NULL, NULL, 15, NULL, 50, 100, 150, 100, 150, 50, NULL),
    -- #720: Hoopa Confined (Psychic/Ghost)
    (720, 72000, 6, 11, 14, 170, NULL, NULL, 15, NULL, 80, 110, 60, 150, 130, 70, NULL),
    -- #721: Volcanion (Fire/Water)
    (721, 72100, 6, 2, 3, 11, NULL, NULL, 15, NULL, 80, 110, 120, 130, 90, 70, NULL);