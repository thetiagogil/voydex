-- ============================================================================
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolution method and Pokémon species pages.
-- Cross-check: Serebii evolution pages and PokemonDB evolution chains.
-- Machine-readable sanity: PokeAPI evolution-chain detail fields.
-- Scope note: official core-series Pokémon evolution edges through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 4 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Nincada -> Shedinja
  (290, 29000, 292, 29200, NULL, 4, 9, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20; empty party slot and regular Poke Ball', '{"source_trigger":"level-up","requires_empty_party_slot":true,"requires_poke_ball":true,"poke_ball_kind":"regular-poke-ball"}', 185),
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mt. Coronet', 'at Mt. Coronet', '{"source_trigger":"level-up","location":"mt-coronet"}', 186),
  -- Lickitung -> Lickilicky
  (108, 10800, 463, 46300, NULL, 4, 5, NULL, NULL, NULL, 205, NULL, NULL, NULL, NULL, 'knows Rollout', '{"source_trigger":"level-up","known_move":"rollout"}', 187),
  -- Rhydon -> Rhyperior
  (112, 11200, 464, 46400, NULL, 4, 3, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, 'trade holding Protector', '{"source_trigger":"trade","held_item":"protector"}', 188),
  -- Tangela -> Tangrowth
  (114, 11400, 465, 46500, NULL, 4, 5, NULL, NULL, NULL, 246, NULL, NULL, NULL, NULL, 'knows Ancient Power', '{"source_trigger":"level-up","known_move":"ancient-power"}', 189),
  -- Electabuzz -> Electivire
  (125, 12500, 466, 46600, NULL, 4, 3, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 'trade holding Electirizer', '{"source_trigger":"trade","held_item":"electirizer"}', 190),
  -- Magmar -> Magmortar
  (126, 12600, 467, 46700, NULL, 4, 3, NULL, NULL, 81, NULL, NULL, NULL, NULL, NULL, 'trade holding Magmarizer', '{"source_trigger":"trade","held_item":"magmarizer"}', 191),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eterna Forest', 'at Eterna Forest', '{"source_trigger":"level-up","location":"eterna-forest"}', 192),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sinnoh Route 217', 'at Sinnoh Route 217', '{"source_trigger":"level-up","location":"sinnoh-route-217"}', 193),
  -- Togetic -> Togekiss
  (176, 17600, 468, 46800, NULL, 4, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"source_trigger":"use-item","item":"shiny-stone"}', 194),
  -- Aipom -> Ambipom
  (190, 19000, 424, 42400, NULL, 4, 5, NULL, NULL, NULL, 458, NULL, NULL, NULL, NULL, 'knows Double Hit', '{"source_trigger":"level-up","known_move":"double-hit"}', 195),
  -- Yanma -> Yanmega
  (193, 19300, 469, 46900, NULL, 4, 5, NULL, NULL, NULL, 246, NULL, NULL, NULL, NULL, 'knows Ancient Power', '{"source_trigger":"level-up","known_move":"ancient-power"}', 196),
  -- Murkrow -> Honchkrow
  (198, 19800, 430, 43000, NULL, 4, 2, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 'use Dusk Stone', '{"source_trigger":"use-item","item":"dusk-stone"}', 197),
  -- Misdreavus -> Mismagius
  (200, 20000, 429, 42900, NULL, 4, 2, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 'use Dusk Stone', '{"source_trigger":"use-item","item":"dusk-stone"}', 198),
  -- Gligar -> Gliscor
  (207, 20700, 472, 47200, NULL, 4, 7, NULL, NULL, 85, NULL, NULL, NULL, 'night', NULL, 'level up holding Razor Fang; during night', '{"source_trigger":"level-up","held_item":"razor-fang"}', 199),
  -- Sneasel -> Weavile
  (215, 21500, 461, 46100, NULL, 4, 7, NULL, NULL, 84, NULL, NULL, NULL, 'night', NULL, 'level up holding Razor Claw; during night', '{"source_trigger":"level-up","held_item":"razor-claw"}', 200),
  -- Piloswine -> Mamoswine
  (221, 22100, 473, 47300, NULL, 4, 5, NULL, NULL, NULL, 246, NULL, NULL, NULL, NULL, 'knows Ancient Power', '{"source_trigger":"level-up","known_move":"ancient-power"}', 201),
  -- Porygon2 -> Porygon-Z
  (233, 23300, 474, 47400, NULL, 4, 3, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, 'trade holding Dubious Disc', '{"source_trigger":"trade","held_item":"dubious-disc"}', 202),
  -- Kirlia -> Gallade
  (281, 28100, 475, 47500, NULL, 4, 2, NULL, 77, NULL, NULL, NULL, 'male', NULL, NULL, 'use Dawn Stone; male only', '{"source_trigger":"use-item","item":"dawn-stone"}', 203),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mt. Coronet', 'at Mt. Coronet', '{"source_trigger":"level-up","location":"mt-coronet"}', 204),
  -- Roselia -> Roserade
  (315, 31500, 407, 40700, NULL, 4, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"source_trigger":"use-item","item":"shiny-stone"}', 205),
  -- Dusclops -> Dusknoir
  (356, 35600, 477, 47700, NULL, 4, 3, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, 'trade holding Reaper Cloth', '{"source_trigger":"trade","held_item":"reaper-cloth"}', 206),
  -- Snorunt -> Froslass
  (361, 36100, 478, 47800, NULL, 4, 2, NULL, 77, NULL, NULL, NULL, 'female', NULL, NULL, 'use Dawn Stone; female only', '{"source_trigger":"use-item","item":"dawn-stone"}', 207),
  -- Turtwig -> Grotle
  (387, 38700, 388, 38800, NULL, 4, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 208),
  -- Grotle -> Torterra
  (388, 38800, 389, 38900, NULL, 4, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 209),
  -- Chimchar -> Monferno
  (390, 39000, 391, 39100, NULL, 4, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 14', '{"source_trigger":"level-up"}', 210),
  -- Monferno -> Infernape
  (391, 39100, 392, 39200, NULL, 4, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 211),
  -- Piplup -> Prinplup
  (393, 39300, 394, 39400, NULL, 4, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 212),
  -- Prinplup -> Empoleon
  (394, 39400, 395, 39500, NULL, 4, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 213),
  -- Starly -> Staravia
  (396, 39600, 397, 39700, NULL, 4, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 14', '{"source_trigger":"level-up"}', 214),
  -- Staravia -> Staraptor
  (397, 39700, 398, 39800, NULL, 4, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 215),
  -- Bidoof -> Bibarel
  (399, 39900, 400, 40000, NULL, 4, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 15', '{"source_trigger":"level-up"}', 216),
  -- Kricketot -> Kricketune
  (401, 40100, 402, 40200, NULL, 4, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 10', '{"source_trigger":"level-up"}', 217),
  -- Shinx -> Luxio
  (403, 40300, 404, 40400, NULL, 4, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 15', '{"source_trigger":"level-up"}', 218),
  -- Luxio -> Luxray
  (404, 40400, 405, 40500, NULL, 4, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 219),
  -- Budew -> Roselia
  (406, 40600, 315, 31500, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'friendship 220+; during day', '{"source_trigger":"level-up","min_happiness":220}', 220),
  -- Cranidos -> Rampardos
  (408, 40800, 409, 40900, NULL, 4, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 221),
  -- Shieldon -> Bastiodon
  (410, 41000, 411, 41100, NULL, 4, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 222),
  -- Burmy -> Wormadam
  (412, 41200, 413, 41300, NULL, 4, 8, 20, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 20; female only', '{"source_trigger":"level-up"}', 223),
  -- Burmy -> Mothim
  (412, 41200, 414, 41400, NULL, 4, 8, 20, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 'Level 20; male only', '{"source_trigger":"level-up"}', 224),
  -- Burmy (Sandy Cloak) -> Wormadam (Sandy Cloak)
  (412, 41201, 413, 41301, NULL, 4, 8, 20, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 20; Sandy Cloak female', '{"source_trigger":"level-up","form_rule":"sandy_cloak"}', 225),
  -- Burmy (Trash Cloak) -> Wormadam (Trash Cloak)
  (412, 41202, 413, 41302, NULL, 4, 8, 20, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 20; Trash Cloak female', '{"source_trigger":"level-up","form_rule":"trash_cloak"}', 226),
  -- Combee -> Vespiquen
  (415, 41500, 416, 41600, NULL, 4, 8, 21, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 21; female only', '{"source_trigger":"level-up"}', 227),
  -- Buizel -> Floatzel
  (418, 41800, 419, 41900, NULL, 4, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 228),
  -- Cherubi -> Cherrim
  (420, 42000, 421, 42100, NULL, 4, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 229),
  -- Shellos -> Gastrodon
  (422, 42200, 423, 42300, NULL, 4, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 230),
  -- Drifloon -> Drifblim
  (425, 42500, 426, 42600, NULL, 4, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 231),
  -- Buneary -> Lopunny
  (427, 42700, 428, 42800, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 232),
  -- Glameow -> Purugly
  (431, 43100, 432, 43200, NULL, 4, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 233),
  -- Chingling -> Chimecho
  (433, 43300, 358, 35800, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'friendship 220+; during night', '{"source_trigger":"level-up","min_happiness":220}', 234),
  -- Stunky -> Skuntank
  (434, 43400, 435, 43500, NULL, 4, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 235),
  -- Bronzor -> Bronzong
  (436, 43600, 437, 43700, NULL, 4, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 33', '{"source_trigger":"level-up"}', 236),
  -- Bonsly -> Sudowoodo
  (438, 43800, 185, 18500, NULL, 4, 5, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 'knows Mimic', '{"source_trigger":"level-up","known_move":"mimic"}', 237),
  -- Mime Jr. -> Mr. Mime
  (439, 43900, 122, 12200, NULL, 4, 5, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 'knows Mimic', '{"source_trigger":"level-up","known_move":"mimic"}', 238),
  -- Happiny -> Chansey
  (440, 44000, 113, 11300, NULL, 4, 7, NULL, NULL, 78, NULL, NULL, NULL, 'day', NULL, 'level up holding Oval Stone; during day', '{"source_trigger":"level-up","held_item":"oval-stone"}', 239),
  -- Gible -> Gabite
  (443, 44300, 444, 44400, NULL, 4, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 240),
  -- Gabite -> Garchomp
  (444, 44400, 445, 44500, NULL, 4, 1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 48', '{"source_trigger":"level-up"}', 241),
  -- Munchlax -> Snorlax
  (446, 44600, 143, 14300, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 242),
  -- Riolu -> Lucario
  (447, 44700, 448, 44800, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'friendship 220+; during day', '{"source_trigger":"level-up","min_happiness":220}', 243),
  -- Hippopotas -> Hippowdon
  (449, 44900, 450, 45000, NULL, 4, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 244),
  -- Skorupi -> Drapion
  (451, 45100, 452, 45200, NULL, 4, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 245),
  -- Croagunk -> Toxicroak
  (453, 45300, 454, 45400, NULL, 4, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 246),
  -- Finneon -> Lumineon
  (456, 45600, 457, 45700, NULL, 4, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 31', '{"source_trigger":"level-up"}', 247),
  -- Mantyke -> Mantine
  (458, 45800, 226, 22600, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Remoraid in party', '{"source_trigger":"level-up","party_species":"remoraid"}', 248),
  -- Snover -> Abomasnow
  (459, 45900, 460, 46000, NULL, 4, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 249);

-- ============================================================================
