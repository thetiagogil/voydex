-- ============================================================================
-- RLS/Grants: reference move, item, and evolution tables
-- Makes move, item, and evolution reference data read-only for clients.
-- ============================================================================
ALTER TABLE reference.moves ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.move_kinds ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.move_attributes ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.move_version_group_attributes ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.move_machines ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.item_categories ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.items ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.item_category_memberships ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.evolution_methods ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_evolution_edges ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE reference.moves FROM anon, authenticated;

REVOKE ALL ON TABLE reference.move_kinds FROM anon, authenticated;

REVOKE ALL ON TABLE reference.move_attributes FROM anon, authenticated;

REVOKE ALL ON TABLE reference.move_version_group_attributes FROM anon, authenticated;

REVOKE ALL ON TABLE reference.move_machines FROM anon, authenticated;

REVOKE ALL ON TABLE reference.item_categories FROM anon, authenticated;

REVOKE ALL ON TABLE reference.items FROM anon, authenticated;

REVOKE ALL ON TABLE reference.item_category_memberships FROM anon, authenticated;

REVOKE ALL ON TABLE reference.evolution_methods FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_evolution_edges FROM anon, authenticated;

GRANT SELECT ON TABLE reference.moves TO anon, authenticated;

GRANT SELECT ON TABLE reference.move_kinds TO anon, authenticated;

GRANT SELECT ON TABLE reference.move_attributes TO anon, authenticated;

GRANT SELECT ON TABLE reference.move_version_group_attributes TO anon, authenticated;

GRANT SELECT ON TABLE reference.move_machines TO anon, authenticated;

GRANT SELECT ON TABLE reference.item_categories TO anon, authenticated;

GRANT SELECT ON TABLE reference.items TO anon, authenticated;

GRANT SELECT ON TABLE reference.item_category_memberships TO anon, authenticated;

GRANT SELECT ON TABLE reference.evolution_methods TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_evolution_edges TO anon, authenticated;

GRANT ALL ON TABLE reference.moves TO service_role;

GRANT ALL ON TABLE reference.move_kinds TO service_role;

GRANT ALL ON TABLE reference.move_attributes TO service_role;

GRANT ALL ON TABLE reference.move_version_group_attributes TO service_role;

GRANT ALL ON TABLE reference.move_machines TO service_role;

GRANT ALL ON TABLE reference.item_categories TO service_role;

GRANT ALL ON TABLE reference.items TO service_role;

GRANT ALL ON TABLE reference.item_category_memberships TO service_role;

GRANT ALL ON TABLE reference.evolution_methods TO service_role;

GRANT ALL ON TABLE reference.pokemon_evolution_edges TO service_role;

CREATE POLICY moves_read_all ON reference.moves
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY move_kinds_read_all ON reference.move_kinds
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY move_attributes_read_all ON reference.move_attributes
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY move_version_group_attributes_read_all ON reference.move_version_group_attributes
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY move_machines_read_all ON reference.move_machines
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY item_categories_read_all ON reference.item_categories
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY items_read_all ON reference.items
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY item_category_memberships_read_all ON reference.item_category_memberships
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY evolution_methods_read_all ON reference.evolution_methods
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_evolution_edges_read_all ON reference.pokemon_evolution_edges
    FOR SELECT TO anon, authenticated
    USING (TRUE);
