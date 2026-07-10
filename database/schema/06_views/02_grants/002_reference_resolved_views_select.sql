-- ============================================================================
-- Grants: resolved reference read models
-- These views are read-only public reference query models.
-- ============================================================================
REVOKE ALL ON TABLE views.reference_content_scope_closure FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.reference_resolved_pokemon_availability FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.reference_resolved_move_availability FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.reference_resolved_item_availability FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.reference_resolved_move_machines FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.reference_resolved_pokemon_learnsets FROM PUBLIC, anon, authenticated;

GRANT SELECT ON TABLE views.reference_content_scope_closure TO anon, authenticated, service_role;

GRANT SELECT ON TABLE views.reference_resolved_pokemon_availability TO anon, authenticated, service_role;

GRANT SELECT ON TABLE views.reference_resolved_move_availability TO anon, authenticated, service_role;

GRANT SELECT ON TABLE views.reference_resolved_item_availability TO anon, authenticated, service_role;

GRANT SELECT ON TABLE views.reference_resolved_move_machines TO anon, authenticated, service_role;

GRANT SELECT ON TABLE views.reference_resolved_pokemon_learnsets TO anon, authenticated, service_role;
