-- View: Regional Pokedex
-- Purpose: Pokédex page filtered by generation with all pokemon data
-- Used in: /pokedex, /pokedex/gen/[genSlug]
-- Note: Filter by generation_start_id for generation-specific views
CREATE
OR REPLACE VIEW dex.regional_pokedex AS
SELECT
  ps.id AS species_id,
  ps.slug AS species_slug,
  ps.name AS species_name,
  ps.national_number,
  ps.color,
  ps.is_baby,
  ps.is_legendary,
  ps.is_mythical,
  ps.introduced_generation_id,
  pf.id AS form_id,
  pf.slug AS form_slug,
  pf.name AS form_name,
  pf.is_default AS is_default_form,
  pf.sprite_url,
  pf.height,
  pf.weight,
  pa.generation_start_id,
  -- Types
  t1.id AS type1_id,
  t1.name AS type1_name,
  t1.slug AS type1_slug,
  t2.id AS type2_id,
  t2.name AS type2_name,
  t2.slug AS type2_slug,
  -- Base stats
  pa.hp,
  pa.attack,
  pa.defense,
  pa.special_attack,
  pa.special_defense,
  pa.speed,
  pa.special,
  -- Base Stat Total (BST)
  COALESCE(pa.hp, 0) + COALESCE(pa.attack, 0) + COALESCE(pa.defense, 0) + COALESCE(pa.special_attack, 0) + COALESCE(pa.special_defense, 0) + COALESCE(pa.speed, 0) + COALESCE(pa.special, 0) AS bst,
  -- Abilities (array)
  ARRAY_REMOVE(
    ARRAY [a1.name, a2.name, ah.name],
    NULL
  ) AS abilities,
  ARRAY_REMOVE(
    ARRAY [a1.id, a2.id, ah.id],
    NULL
  ) AS ability_ids,
  -- Egg Groups (array)
  ARRAY_REMOVE(
    ARRAY [eg1.name, eg2.name],
    NULL
  ) AS egg_groups,
  ARRAY_REMOVE(
    ARRAY [eg1.id, eg2.id],
    NULL
  ) AS egg_group_ids,
  -- Regional Dex number (if applicable)
  rde.regional_number
FROM
  dex.pokemon_species ps
  INNER JOIN dex.pokemon_forms pf ON ps.id = pf.species_id
  INNER JOIN dex.pokemon_attributes pa ON pf.id = pa.form_id
  LEFT JOIN dex.types t1 ON pa.type1_id = t1.id
  LEFT JOIN dex.types t2 ON pa.type2_id = t2.id
  LEFT JOIN dex.abilities a1 ON pa.ability1_id = a1.id
  LEFT JOIN dex.abilities a2 ON pa.ability2_id = a2.id
  LEFT JOIN dex.abilities ah ON pa.hidden_ability_id = ah.id
  LEFT JOIN dex.egg_groups eg1 ON pa.egg_group1_id = eg1.id
  LEFT JOIN dex.egg_groups eg2 ON pa.egg_group2_id = eg2.id
  LEFT JOIN meta.regional_dex_entries rde ON ps.id = rde.species_id
  AND (
    rde.form_id = pf.id
    OR rde.form_id IS NULL
  );

-- Grant permissions
GRANT
SELECT
  ON dex.regional_pokedex TO authenticated,
  anon;
