-- WHAT: Create generation-specific Pokemon views that unify species, forms, and attributes
-- WHY: Provides denormalized, generation-accurate views of Pokemon data
-- WHEN USED: When querying Pokemon for a specific game/generation with correct stats, types, and abilities

-- =============================================================================
-- GENERATION 1 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_i AS
SELECT
  -- Species info
  s.id AS species_id,
  s.slug AS species_slug,
  s.name AS species_name,
  s.national_number,
  s.color,
  s.is_baby,
  s.is_legendary,
  s.is_mythical,
  -- Form info
  f.id AS form_id,
  f.slug AS form_slug,
  f.name AS form_name,
  f.is_default AS is_default_form,
  f.sprite_url,
  f.height,
  f.weight,
  -- Attributes
  a.generation_start_id AS generation_id,
  -- Types
  t1.id AS type1_id,
  t1.slug AS type1_slug,
  t1.name AS type1_name,
  t2.id AS type2_id,
  t2.slug AS type2_slug,
  t2.name AS type2_name,
  -- Abilities (NULL for Gen 1)
  NULL::INTEGER AS ability1_id,
  NULL::VARCHAR AS ability1_slug,
  NULL::VARCHAR AS ability1_name,
  NULL::INTEGER AS ability2_id,
  NULL::VARCHAR AS ability2_slug,
  NULL::VARCHAR AS ability2_name,
  NULL::INTEGER AS hidden_ability_id,
  NULL::VARCHAR AS hidden_ability_slug,
  NULL::VARCHAR AS hidden_ability_name,
  -- Egg groups
  eg1.id AS egg_group1_id,
  eg1.slug AS egg_group1_slug,
  eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id,
  eg2.slug AS egg_group2_slug,
  eg2.name AS egg_group2_name,
  -- Stats (Gen 1 uses single 'special' stat)
  a.hp,
  a.attack,
  a.defense,
  a.special,
  NULL::INTEGER AS special_attack,
  NULL::INTEGER AS special_defense,
  a.speed,
  -- Calculated total
  (a.hp + a.attack + a.defense + a.special + a.speed) AS base_stat_total
FROM
  meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id = 1
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE
  s.introduced_generation_id <= 1
  AND f.introduced_generation_id <= 1
ORDER BY
  s.national_number,
  f.is_default DESC,
  f.id;

COMMENT ON VIEW views.pokemon_generation_i IS 'Pokemon view for Generation 1 (Red/Blue/Yellow) with single Special stat and no abilities.';


-- =============================================================================
-- GENERATION 2 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_ii AS
SELECT
  s.id AS species_id,
  s.slug AS species_slug,
  s.name AS species_name,
  s.national_number,
  s.color,
  s.is_baby,
  s.is_legendary,
  s.is_mythical,
  f.id AS form_id,
  f.slug AS form_slug,
  f.name AS form_name,
  f.is_default AS is_default_form,
  f.sprite_url,
  f.height,
  f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id,
  t1.slug AS type1_slug,
  t1.name AS type1_name,
  t2.id AS type2_id,
  t2.slug AS type2_slug,
  t2.name AS type2_name,
  NULL::INTEGER AS ability1_id,
  NULL::VARCHAR AS ability1_slug,
  NULL::VARCHAR AS ability1_name,
  NULL::INTEGER AS ability2_id,
  NULL::VARCHAR AS ability2_slug,
  NULL::VARCHAR AS ability2_name,
  NULL::INTEGER AS hidden_ability_id,
  NULL::VARCHAR AS hidden_ability_slug,
  NULL::VARCHAR AS hidden_ability_name,
  eg1.id AS egg_group1_id,
  eg1.slug AS egg_group1_slug,
  eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id,
  eg2.slug AS egg_group2_slug,
  eg2.name AS egg_group2_name,
  a.hp,
  a.attack,
  a.defense,
  NULL::INTEGER AS special,
  a.special_attack,
  a.special_defense,
  a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM
  meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 2
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE
  s.introduced_generation_id <= 2
  AND f.introduced_generation_id <= 2
  AND a.generation_start_id = (
    SELECT MAX(a2.generation_start_id)
    FROM meta.pokemon_attributes a2
    WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 2
  )
ORDER BY
  s.national_number,
  f.is_default DESC,
  f.id;

COMMENT ON VIEW views.pokemon_generation_ii IS 'Pokemon view for Generation 2 (Gold/Silver/Crystal) with split Special stats, no abilities.';


-- =============================================================================
-- GENERATION 3 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_iii AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 3
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 3 AND f.introduced_generation_id <= 3
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 3)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_iii IS 'Pokemon view for Generation 3 (Ruby/Sapphire/Emerald/FireRed/LeafGreen).';

-- =============================================================================
-- GENERATION 4 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_iv AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 4
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 4 AND f.introduced_generation_id <= 4
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 4)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_iv IS 'Pokemon view for Generation 4 (Diamond/Pearl/Platinum/HeartGold/SoulSilver).';

-- =============================================================================
-- GENERATION 5 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_v AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 5
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 5 AND f.introduced_generation_id <= 5
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 5)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_v IS 'Pokemon view for Generation 5 (Black/White/Black2/White2).';

-- =============================================================================
-- GENERATION 6 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_vi AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 6
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 6 AND f.introduced_generation_id <= 6
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 6)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_vi IS 'Pokemon view for Generation 6 (X/Y/OmegaRuby/AlphaSapphire).';

-- =============================================================================
-- GENERATION 7 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_vii AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 7
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 7 AND f.introduced_generation_id <= 7
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 7)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_vii IS 'Pokemon view for Generation 7 (Sun/Moon/UltraSun/UltraMoon).';

-- =============================================================================
-- GENERATION 8 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_viii AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 8
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 8 AND f.introduced_generation_id <= 8
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 8)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_viii IS 'Pokemon view for Generation 8 (Sword/Shield/BrilliantDiamond/ShiningPearl/LegendsArceus).';

-- =============================================================================
-- GENERATION 9 VIEW
-- =============================================================================

CREATE OR REPLACE VIEW views.pokemon_generation_ix AS
SELECT
  s.id AS species_id, s.slug AS species_slug, s.name AS species_name,
  s.national_number, s.color, s.is_baby, s.is_legendary, s.is_mythical,
  f.id AS form_id, f.slug AS form_slug, f.name AS form_name,
  f.is_default AS is_default_form, f.sprite_url, f.height, f.weight,
  a.generation_start_id AS generation_id,
  t1.id AS type1_id, t1.slug AS type1_slug, t1.name AS type1_name,
  t2.id AS type2_id, t2.slug AS type2_slug, t2.name AS type2_name,
  ab1.id AS ability1_id, ab1.slug AS ability1_slug, ab1.name AS ability1_name,
  ab2.id AS ability2_id, ab2.slug AS ability2_slug, ab2.name AS ability2_name,
  abh.id AS hidden_ability_id, abh.slug AS hidden_ability_slug, abh.name AS hidden_ability_name,
  eg1.id AS egg_group1_id, eg1.slug AS egg_group1_slug, eg1.name AS egg_group1_name,
  eg2.id AS egg_group2_id, eg2.slug AS egg_group2_slug, eg2.name AS egg_group2_name,
  a.hp, a.attack, a.defense, NULL::INTEGER AS special,
  a.special_attack, a.special_defense, a.speed,
  (a.hp + a.attack + a.defense + a.special_attack + a.special_defense + a.speed) AS base_stat_total
FROM meta.pokemon_species s
  INNER JOIN meta.pokemon_forms f ON s.id = f.species_id
  INNER JOIN meta.pokemon_attributes a ON f.id = a.form_id AND a.generation_start_id <= 9
  INNER JOIN meta.types t1 ON a.type1_id = t1.id
  LEFT JOIN meta.types t2 ON a.type2_id = t2.id
  LEFT JOIN meta.abilities ab1 ON a.ability1_id = ab1.id
  LEFT JOIN meta.abilities ab2 ON a.ability2_id = ab2.id
  LEFT JOIN meta.abilities abh ON a.hidden_ability_id = abh.id
  LEFT JOIN meta.egg_groups eg1 ON a.egg_group1_id = eg1.id
  LEFT JOIN meta.egg_groups eg2 ON a.egg_group2_id = eg2.id
WHERE s.introduced_generation_id <= 9 AND f.introduced_generation_id <= 9
  AND a.generation_start_id = (SELECT MAX(a2.generation_start_id) FROM meta.pokemon_attributes a2 WHERE a2.form_id = a.form_id AND a2.generation_start_id <= 9)
ORDER BY s.national_number, f.is_default DESC, f.id;

COMMENT ON VIEW views.pokemon_generation_ix IS 'Pokemon view for Generation 9 (Scarlet/Violet).';