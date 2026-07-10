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

INSERT INTO planning.mainline_plan_member_link_statuses (id, slug, name, sort_order)
VALUES
  (1, 'pending', 'Pending', 1),
  (2, 'linked', 'Linked', 2),
  (3, 'reached', 'Reached', 3),
  (4, 'skipped', 'Skipped', 4);
