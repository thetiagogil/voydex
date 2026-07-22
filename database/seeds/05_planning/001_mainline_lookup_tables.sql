-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Global planning lookup rows used by team plan tables.
-- ============================================================================

INSERT INTO planning.mainline_team_plan_statuses (id, slug, name, sort_order)
VALUES
  (1, 'draft', 'Draft', 1),
  (2, 'active', 'Active', 2),
  (3, 'archived', 'Archived', 3);
