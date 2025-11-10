-- =====================================================
-- Seed: Test Playthrough - Gen 1 Pokemon Red
-- =====================================================
-- Purpose: Create a test playthrough with sample data for development
-- Dependencies: All meta tables seeded, user account created
-- 
-- Contents:
-- - 1 play (Gen 1 Pokemon Red, in progress)
-- - 4 team Pokemon (Charizard, Pikachu, Lapras, Snorlax)
-- - 5 progress items completed (3 gym badges, 2 story events)
-- - 10 Pokemon caught
-- =====================================================

-- =====================================================
-- Test User (if needed)
-- =====================================================
-- Note: Replace with actual user UUID from auth.users
-- For local development, you may need to create a test user first
-- This assumes a test user exists with this UUID

DO $$
DECLARE
  test_user_id UUID := '36d04748-3725-400d-b534-6a327e002fa6'; -- Replace with real user ID
  test_play_id UUID;
  gen1_id INTEGER;
  pokemon_red_id INTEGER;
  version_group_id INTEGER;
  team_pokemon_id UUID;
BEGIN

-- =====================================================
-- Get Generation 1 and Pokemon Red IDs
-- =====================================================
-- Assumes meta tables are seeded with proper data

SELECT id INTO gen1_id 
FROM meta.generations 
WHERE slug = 'generation-i' 
LIMIT 1;

SELECT id INTO pokemon_red_id
FROM meta.games
WHERE slug = 'red'
LIMIT 1;

SELECT version_group_id INTO version_group_id
FROM meta.games
WHERE id = pokemon_red_id;

-- Validate we have the needed data
IF gen1_id IS NULL THEN
  RAISE EXCEPTION 'Generation I not found in meta.generations table';
END IF;

IF pokemon_red_id IS NULL THEN
  RAISE EXCEPTION 'Pokemon Red not found in meta.games table';
END IF;

-- =====================================================
-- Create Test Play
-- =====================================================

test_play_id := '1a82cacf-6871-402c-a031-cbf699773643'; -- Fixed UUID for testing

INSERT INTO gameplay.plays (
  id,
  user_id,
  game_id,
  trainer_name,
  rival_name,
  status,
  start_date,
  notes
) VALUES (
  test_play_id,
  test_user_id,
  pokemon_red_id,
  'Red',
  'Blue',
  'in-progress',
  CURRENT_DATE - INTERVAL '15 days', -- Started 15 days ago
  'Test playthrough for development. Following a balanced team strategy.'
);

RAISE NOTICE 'Created test play with ID: %', test_play_id;

-- =====================================================
-- Add Team Pokemon (4 members)
-- =====================================================
-- Position 1-6: Active Team
-- Position 7-20: Box Pokemon

-- Position 1: Charizard (Starter, fully evolved)
INSERT INTO gameplay.team_pokemon (
  id,
  play_id,
  pokemon_species_id,
  pokemon_form_id,
  position,
  nickname,
  level,
  gender,
  is_shiny,
  nature_id,
  ability_id,
  move1_id,
  move2_id,
  move3_id,
  move4_id
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 6 LIMIT 1), -- Charizard
  (SELECT id FROM meta.pokemon_forms WHERE pokemon_species_id = (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 6 LIMIT 1) AND is_default = TRUE LIMIT 1),
  1,
  'Blaze',
  42,
  'male',
  FALSE,
  (SELECT id FROM meta.natures WHERE slug = 'adamant' LIMIT 1),
  (SELECT id FROM meta.abilities WHERE slug = 'blaze' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'flamethrower' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'slash' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'fire-spin' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'fly' LIMIT 1)
)
RETURNING id INTO team_pokemon_id;

RAISE NOTICE 'Added Charizard to position 1';

-- Position 2: Pikachu (Event Pokemon, kept unevolved)
INSERT INTO gameplay.team_pokemon (
  id,
  play_id,
  pokemon_species_id,
  pokemon_form_id,
  position,
  nickname,
  level,
  gender,
  is_shiny,
  nature_id,
  ability_id,
  move1_id,
  move2_id,
  move3_id,
  move4_id
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 25 LIMIT 1), -- Pikachu
  (SELECT id FROM meta.pokemon_forms WHERE pokemon_species_id = (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 25 LIMIT 1) AND is_default = TRUE LIMIT 1),
  2,
  'Sparky',
  38,
  'female',
  FALSE,
  (SELECT id FROM meta.natures WHERE slug = 'jolly' LIMIT 1),
  (SELECT id FROM meta.abilities WHERE slug = 'static' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'thunderbolt' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'quick-attack' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'thunder-wave' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'double-team' LIMIT 1)
);

RAISE NOTICE 'Added Pikachu to position 2';

-- Position 3: Lapras (Gifted Pokemon)
INSERT INTO gameplay.team_pokemon (
  id,
  play_id,
  pokemon_species_id,
  pokemon_form_id,
  position,
  nickname,
  level,
  gender,
  is_shiny,
  nature_id,
  ability_id,
  move1_id,
  move2_id,
  move3_id,
  move4_id
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 131 LIMIT 1), -- Lapras
  (SELECT id FROM meta.pokemon_forms WHERE pokemon_species_id = (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 131 LIMIT 1) AND is_default = TRUE LIMIT 1),
  3,
  'Nessie',
  40,
  'female',
  FALSE,
  (SELECT id FROM meta.natures WHERE slug = 'modest' LIMIT 1),
  (SELECT id FROM meta.abilities WHERE slug = 'water-absorb' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'surf' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'ice-beam' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'body-slam' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'confuse-ray' LIMIT 1)
);

RAISE NOTICE 'Added Lapras to position 3';

-- Position 4: Snorlax (Legendary encounter)
INSERT INTO gameplay.team_pokemon (
  id,
  play_id,
  pokemon_species_id,
  pokemon_form_id,
  position,
  nickname,
  level,
  gender,
  is_shiny,
  nature_id,
  ability_id,
  move1_id,
  move2_id,
  move3_id,
  move4_id
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 143 LIMIT 1), -- Snorlax
  (SELECT id FROM meta.pokemon_forms WHERE pokemon_species_id = (SELECT id FROM meta.pokemon_species WHERE national_dex_number = 143 LIMIT 1) AND is_default = TRUE LIMIT 1),
  4,
  'Big Chungus',
  41,
  'male',
  FALSE,
  (SELECT id FROM meta.natures WHERE slug = 'brave' LIMIT 1),
  (SELECT id FROM meta.abilities WHERE slug = 'thick-fat' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'body-slam' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'rest' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'amnesia' LIMIT 1),
  (SELECT id FROM meta.moves WHERE slug = 'psychic' LIMIT 1)
);

RAISE NOTICE 'Added Snorlax to position 4';

-- =====================================================
-- Add Progress Items (3 Gym Badges + 2 Story Events)
-- =====================================================
-- Assumes progress_items are seeded for Gen 1

-- Gym Badge 1: Brock (Boulder Badge)
INSERT INTO gameplay.progress (
  id,
  play_id,
  progress_item_id,
  completed_at
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT pi.id FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.slug = 'gym-badges'
     AND pi.slug = 'brock'
     AND pc.version_group_id = version_group_id
   LIMIT 1),
  CURRENT_TIMESTAMP - INTERVAL '14 days'
);

-- Gym Badge 2: Misty (Cascade Badge)
INSERT INTO gameplay.progress (
  id,
  play_id,
  progress_item_id,
  completed_at
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT pi.id FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.slug = 'gym-badges'
     AND pi.slug = 'misty'
     AND pc.version_group_id = version_group_id
   LIMIT 1),
  CURRENT_TIMESTAMP - INTERVAL '12 days'
);

-- Gym Badge 3: Lt. Surge (Thunder Badge)
INSERT INTO gameplay.progress (
  id,
  play_id,
  progress_item_id,
  completed_at
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT pi.id FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.slug = 'gym-badges'
     AND pi.slug = 'lt-surge'
     AND pc.version_group_id = version_group_id
   LIMIT 1),
  CURRENT_TIMESTAMP - INTERVAL '8 days'
);

RAISE NOTICE 'Added 3 gym badge completions';

-- Story Event: Defeated Rival on SS Anne
INSERT INTO gameplay.progress (
  id,
  play_id,
  progress_item_id,
  completed_at
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT pi.id FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.slug = 'main-story'
     AND pi.slug ILIKE '%rival%ss%anne%'
     AND pc.version_group_id = version_group_id
   LIMIT 1),
  CURRENT_TIMESTAMP - INTERVAL '10 days'
);

-- Story Event: Rescued Mr. Fuji from Pokemon Tower
INSERT INTO gameplay.progress (
  id,
  play_id,
  progress_item_id,
  completed_at
) VALUES (
  gen_random_uuid(),
  test_play_id,
  (SELECT pi.id FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.slug = 'main-story'
     AND pi.slug ILIKE '%fuji%'
     AND pc.version_group_id = version_group_id
   LIMIT 1),
  CURRENT_TIMESTAMP - INTERVAL '7 days'
);

RAISE NOTICE 'Added 2 story event completions';

-- =====================================================
-- Add Pokemon Caught (10 different species)
-- =====================================================
-- This represents partial progress toward Pokedex completion

-- Caught Pokemon: Bulbasaur, Ivysaur, Charmander, Charizard, Squirtle
-- Pikachu, Raichu, Nidoran-F, Nidoqueen, Lapras

INSERT INTO gameplay.pokemon_caught (id, play_id, pokemon_species_id, caught_at)
SELECT 
  gen_random_uuid(),
  test_play_id,
  ps.id,
  CURRENT_TIMESTAMP - (random() * INTERVAL '14 days')
FROM meta.pokemon_species ps
WHERE ps.national_dex_number IN (1, 2, 4, 6, 7, 25, 26, 29, 31, 131)
LIMIT 10;

RAISE NOTICE 'Added 10 caught Pokemon';

-- =====================================================
-- Summary
-- =====================================================

RAISE NOTICE '========================================';
RAISE NOTICE 'Test playthrough created successfully!';
RAISE NOTICE '========================================';
RAISE NOTICE 'Play ID: %', test_play_id;
RAISE NOTICE 'Game: Pokemon Red';
RAISE NOTICE 'Status: In Progress';
RAISE NOTICE 'Team: 4 Pokemon (Charizard, Pikachu, Lapras, Snorlax)';
RAISE NOTICE 'Progress: 3 Gym Badges + 2 Story Events';
RAISE NOTICE 'Pokedex: 10 Pokemon Caught';
RAISE NOTICE '========================================';

END $$;
