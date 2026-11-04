-- ============================================================================
-- Read-only policies for reference places and encounters.
-- ============================================================================
ALTER TABLE reference.encounter_ways ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.locations ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.location_version_groups ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.pokemon_encounters ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE reference.encounter_ways FROM anon, authenticated;

REVOKE ALL ON TABLE reference.locations FROM anon, authenticated;

REVOKE ALL ON TABLE reference.location_version_groups FROM anon, authenticated;

REVOKE ALL ON TABLE reference.pokemon_encounters FROM anon, authenticated;

GRANT SELECT ON TABLE reference.encounter_ways TO anon, authenticated;

GRANT SELECT ON TABLE reference.locations TO anon, authenticated;

GRANT SELECT ON TABLE reference.location_version_groups TO anon, authenticated;

GRANT SELECT ON TABLE reference.pokemon_encounters TO anon, authenticated;

GRANT ALL ON TABLE reference.encounter_ways TO service_role;

GRANT ALL ON TABLE reference.locations TO service_role;

GRANT ALL ON TABLE reference.location_version_groups TO service_role;

GRANT ALL ON TABLE reference.pokemon_encounters TO service_role;

CREATE POLICY encounter_ways_read_all ON reference.encounter_ways
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY locations_read_all ON reference.locations
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY location_version_groups_read_all ON reference.location_version_groups
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY pokemon_encounters_read_all ON reference.pokemon_encounters
    FOR SELECT TO anon, authenticated
    USING (TRUE);
