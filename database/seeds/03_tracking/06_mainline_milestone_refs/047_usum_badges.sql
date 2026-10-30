-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Island challenge page (each trial's and Grand Trial's Z-Crystal).
-- Cross-check: Serebii Ultra Sun / Ultra Moon Island Trials and Grand Trials pages.
-- Scope: Pokémon Ultra Sun / Ultra Moon milestone-to-Z-Crystal references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ultra Sun / Ultra Moon trial and Grand Trial milestones to their Z-Crystal rewards.
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
  (160003, 16001, 16, 'reward', 1, NULL),
  -- Grand Trial Hala milestone -> Fightinium Z
  (160004, 16002, 16, 'reward', 1, NULL),
  -- Lana Trial milestone -> Waterium Z
  (160005, 16003, 16, 'reward', 1, NULL),
  -- Kiawe Trial milestone -> Firium Z
  (160006, 16004, 16, 'reward', 1, NULL),
  -- Mallow Trial milestone -> Grassium Z
  (160007, 16005, 16, 'reward', 1, NULL),
  -- Grand Trial Olivia milestone -> Rockium Z
  (160008, 16006, 16, 'reward', 1, NULL),
  -- Sophocles Trial milestone -> Electrium Z
  (160009, 16007, 16, 'reward', 1, NULL),
  -- Acerola Trial milestone -> Ghostium Z
  (160010, 16008, 16, 'reward', 1, NULL),
  -- Grand Trial Nanu milestone -> Darkinium Z
  (160011, 16009, 16, 'reward', 1, NULL),
  -- Vast Poni Canyon Trial milestone -> Dragonium Z
  (160013, 16010, 16, 'reward', 1, NULL),
  -- Mina Trial milestone -> Fairium Z
  (160012, 16011, 16, 'reward', 1, NULL),
  -- Grand Trial Hapu milestone -> Groundium Z
  (160014, 16012, 16, 'reward', 1, NULL);
