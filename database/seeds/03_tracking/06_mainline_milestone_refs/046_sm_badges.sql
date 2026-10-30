-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Island challenge page (each trial's and Grand Trial's Z-Crystal).
-- Cross-check: Serebii Sun / Moon Island Trials and Grand Trials pages.
-- Scope: Pokémon Sun / Moon milestone-to-Z-Crystal references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Sun / Moon trial and Grand Trial milestones to their Z-Crystal rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Ilima Trial milestone -> Normalium Z
  (150003, 15001, 15, 'reward', 1, NULL),
  -- Grand Trial Hala milestone -> Fightinium Z
  (150004, 15002, 15, 'reward', 1, NULL),
  -- Lana Trial milestone -> Waterium Z
  (150005, 15003, 15, 'reward', 1, NULL),
  -- Kiawe Trial milestone -> Firium Z
  (150006, 15004, 15, 'reward', 1, NULL),
  -- Mallow Trial milestone -> Grassium Z
  (150007, 15005, 15, 'reward', 1, NULL),
  -- Grand Trial Olivia milestone -> Rockium Z
  (150008, 15006, 15, 'reward', 1, NULL),
  -- Sophocles Trial milestone -> Electrium Z
  (150009, 15007, 15, 'reward', 1, NULL),
  -- Acerola Trial milestone -> Ghostium Z
  (150010, 15008, 15, 'reward', 1, NULL),
  -- Grand Trial Nanu milestone -> Darkinium Z
  (150011, 15009, 15, 'reward', 1, NULL),
  -- Vast Poni Canyon Trial milestone -> Dragonium Z
  (150012, 15010, 15, 'reward', 1, NULL),
  -- Grand Trial Hapu milestone -> Groundium Z
  (150013, 15011, 15, 'reward', 1, NULL);
