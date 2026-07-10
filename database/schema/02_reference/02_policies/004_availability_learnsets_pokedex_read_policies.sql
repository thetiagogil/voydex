-- ============================================================================
-- Read-only policies for reference availability, learnsets, and Pokedex data.
-- ============================================================================
ALTER TABLE reference.game_content_scopes ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.content_scope_dependencies ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.availability_methods ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_availability ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.move_availability ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.item_availability ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.learn_methods ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_learnsets ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokedex ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokedex_entries ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE reference.game_content_scopes FROM anon, authenticated;

REVOKE ALL ON TABLE reference.content_scope_dependencies FROM anon, authenticated;

REVOKE ALL ON TABLE reference.availability_methods FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_availability FROM anon, authenticated;

REVOKE ALL ON TABLE reference.move_availability FROM anon, authenticated;

REVOKE ALL ON TABLE reference.item_availability FROM anon, authenticated;

REVOKE ALL ON TABLE reference.learn_methods FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_learnsets FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokedex FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokedex_entries FROM anon, authenticated;

GRANT SELECT ON TABLE reference.game_content_scopes TO anon, authenticated;

GRANT SELECT ON TABLE reference.content_scope_dependencies TO anon, authenticated;

GRANT SELECT ON TABLE reference.availability_methods TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_availability TO anon, authenticated;

GRANT SELECT ON TABLE reference.move_availability TO anon, authenticated;

GRANT SELECT ON TABLE reference.item_availability TO anon, authenticated;

GRANT SELECT ON TABLE reference.learn_methods TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_learnsets TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokedex TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokedex_entries TO anon, authenticated;

GRANT ALL ON TABLE reference.game_content_scopes TO service_role;

GRANT ALL ON TABLE reference.content_scope_dependencies TO service_role;

GRANT ALL ON TABLE reference.availability_methods TO service_role;

GRANT ALL ON TABLE reference.pokemon_availability TO service_role;

GRANT ALL ON TABLE reference.move_availability TO service_role;

GRANT ALL ON TABLE reference.item_availability TO service_role;

GRANT ALL ON TABLE reference.learn_methods TO service_role;

GRANT ALL ON TABLE reference.pokemon_learnsets TO service_role;

GRANT ALL ON TABLE reference.pokedex TO service_role;

GRANT ALL ON TABLE reference.pokedex_entries TO service_role;

CREATE POLICY game_content_scopes_read_all ON reference.game_content_scopes
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY content_scope_dependencies_read_all ON reference.content_scope_dependencies
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY availability_methods_read_all ON reference.availability_methods
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_availability_read_all ON reference.pokemon_availability
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY move_availability_read_all ON reference.move_availability
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY item_availability_read_all ON reference.item_availability
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY learn_methods_read_all ON reference.learn_methods
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_learnsets_read_all ON reference.pokemon_learnsets
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokedex_read_all ON reference.pokedex
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokedex_entries_read_all ON reference.pokedex_entries
    FOR SELECT TO anon, authenticated
    USING (TRUE);
