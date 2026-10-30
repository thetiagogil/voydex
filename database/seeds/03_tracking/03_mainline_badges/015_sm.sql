-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Island challenge page (each trial's and Grand Trial's Z-Crystal).
-- Cross-check: Serebii Sun / Moon Island Trials and Grand Trials pages.
-- Scope: Pokémon Sun / Moon island trial Z-Crystals.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Z-Crystal each Sun / Moon island trial and Grand Trial hands out, stored as a
-- badge-like reward (kind z-crystal) so the trial stamp wears its type.
-- ============================================================================

INSERT INTO tracking.mainline_badges (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  type_id,
  sprite_slug,
  kind,
  sort_order
) VALUES
  -- Normalium Z (Ilima Trial)
  (15001, 15, NULL, 'normalium-z', 'Normalium Z', 1, 'normalium-z', 'z-crystal', 1),
  -- Fightinium Z (Grand Trial Hala)
  (15002, 15, NULL, 'fightinium-z', 'Fightinium Z', 7, 'fightinium-z', 'z-crystal', 2),
  -- Waterium Z (Lana Trial)
  (15003, 15, NULL, 'waterium-z', 'Waterium Z', 3, 'waterium-z', 'z-crystal', 3),
  -- Firium Z (Kiawe Trial)
  (15004, 15, NULL, 'firium-z', 'Firium Z', 2, 'firium-z', 'z-crystal', 4),
  -- Grassium Z (Mallow Trial)
  (15005, 15, NULL, 'grassium-z', 'Grassium Z', 5, 'grassium-z', 'z-crystal', 5),
  -- Rockium Z (Grand Trial Olivia)
  (15006, 15, NULL, 'rockium-z', 'Rockium Z', 13, 'rockium-z', 'z-crystal', 6),
  -- Electrium Z (Sophocles Trial)
  (15007, 15, NULL, 'electrium-z', 'Electrium Z', 4, 'electrium-z', 'z-crystal', 7),
  -- Ghostium Z (Acerola Trial)
  (15008, 15, NULL, 'ghostium-z', 'Ghostium Z', 14, 'ghostium-z', 'z-crystal', 8),
  -- Darkinium Z (Grand Trial Nanu)
  (15009, 15, NULL, 'darkinium-z', 'Darkinium Z', 16, 'darkinium-z', 'z-crystal', 9),
  -- Dragonium Z (Vast Poni Canyon Trial)
  (15010, 15, NULL, 'dragonium-z', 'Dragonium Z', 15, 'dragonium-z', 'z-crystal', 10),
  -- Groundium Z (Grand Trial Hapu)
  (15011, 15, NULL, 'groundium-z', 'Groundium Z', 9, 'groundium-z', 'z-crystal', 11);
