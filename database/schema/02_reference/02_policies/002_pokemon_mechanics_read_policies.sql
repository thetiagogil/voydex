-- ============================================================================
-- RLS/Grants: reference Pokémon mechanics tables
-- Makes Pokémon identity and mechanics reference data read-only for clients.
-- ============================================================================
ALTER TABLE reference.types ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.tera_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.type_matchups ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.natures ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.egg_groups ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.abilities ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.ability_attributes ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.evolution_families ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_species ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_forms ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_form_rules ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_form_item_requirements ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_battle_form_bases ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_fixed_tera_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_attributes ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE reference.types FROM anon, authenticated;

REVOKE ALL ON TABLE reference.tera_types FROM anon, authenticated;

REVOKE ALL ON TABLE reference.type_matchups FROM anon, authenticated;

REVOKE ALL ON TABLE reference.natures FROM anon, authenticated;

REVOKE ALL ON TABLE reference.egg_groups FROM anon, authenticated;

REVOKE ALL ON TABLE reference.abilities FROM anon, authenticated;

REVOKE ALL ON TABLE reference.ability_attributes FROM anon, authenticated;

REVOKE ALL ON TABLE reference.evolution_families FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_species FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_forms FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_form_rules FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_form_item_requirements FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_battle_form_bases FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_fixed_tera_types FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_attributes FROM anon, authenticated;

GRANT SELECT ON TABLE reference.types TO anon, authenticated;

GRANT SELECT ON TABLE reference.tera_types TO anon, authenticated;

GRANT SELECT ON TABLE reference.type_matchups TO anon, authenticated;

GRANT SELECT ON TABLE reference.natures TO anon, authenticated;

GRANT SELECT ON TABLE reference.egg_groups TO anon, authenticated;

GRANT SELECT ON TABLE reference.abilities TO anon, authenticated;

GRANT SELECT ON TABLE reference.ability_attributes TO anon, authenticated;

GRANT SELECT ON TABLE reference.evolution_families TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_species TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_forms TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_form_rules TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_form_item_requirements TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_battle_form_bases TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_fixed_tera_types TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_attributes TO anon, authenticated;

GRANT ALL ON TABLE reference.types TO service_role;

GRANT ALL ON TABLE reference.tera_types TO service_role;

GRANT ALL ON TABLE reference.type_matchups TO service_role;

GRANT ALL ON TABLE reference.natures TO service_role;

GRANT ALL ON TABLE reference.egg_groups TO service_role;

GRANT ALL ON TABLE reference.abilities TO service_role;

GRANT ALL ON TABLE reference.ability_attributes TO service_role;

GRANT ALL ON TABLE reference.evolution_families TO service_role;

GRANT ALL ON TABLE reference.pokemon_species TO service_role;

GRANT ALL ON TABLE reference.pokemon_forms TO service_role;

GRANT ALL ON TABLE reference.pokemon_form_rules TO service_role;

GRANT ALL ON TABLE reference.pokemon_form_item_requirements TO service_role;

GRANT ALL ON TABLE reference.pokemon_battle_form_bases TO service_role;

GRANT ALL ON TABLE reference.pokemon_fixed_tera_types TO service_role;

GRANT ALL ON TABLE reference.pokemon_attributes TO service_role;

CREATE POLICY types_read_all ON reference.types
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY tera_types_read_all ON reference.tera_types
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY type_matchups_read_all ON reference.type_matchups
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY natures_read_all ON reference.natures
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY egg_groups_read_all ON reference.egg_groups
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY abilities_read_all ON reference.abilities
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY ability_attributes_read_all ON reference.ability_attributes
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY evolution_families_read_all ON reference.evolution_families
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_species_read_all ON reference.pokemon_species
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_forms_read_all ON reference.pokemon_forms
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_form_rules_read_all ON reference.pokemon_form_rules
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_form_item_requirements_read_all ON reference.pokemon_form_item_requirements
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_battle_form_bases_read_all ON reference.pokemon_battle_form_bases
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_fixed_tera_types_read_all ON reference.pokemon_fixed_tera_types
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_attributes_read_all ON reference.pokemon_attributes
    FOR SELECT TO anon, authenticated
    USING (TRUE);
