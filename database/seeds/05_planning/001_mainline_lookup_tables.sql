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

INSERT INTO planning.mainline_team_plan_roles (id, slug, name, sort_order)
VALUES
  (1, 'lead', 'Lead', 1),
  (2, 'physical-attacker', 'Physical attacker', 2),
  (3, 'special-attacker', 'Special attacker', 3),
  (4, 'wall', 'Wall', 4),
  (5, 'pivot', 'Pivot', 5),
  (6, 'sweeper', 'Sweeper', 6),
  (7, 'support', 'Support', 7);
