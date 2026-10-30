-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Island challenge page (each trial's and Grand Trial's Z-Crystal).
-- Cross-check: Serebii Ultra Sun / Ultra Moon Island Trials and Grand Trials pages.
-- Scope: Pokémon Ultra Sun / Ultra Moon island trial Z-Crystals.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Z-Crystal each Ultra Sun / Ultra Moon island trial and Grand Trial hands out, stored as a
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
  (16001, 16, NULL, 'normalium-z', 'Normalium Z', 1, 'normalium-z', 'z-crystal', 1),
  -- Fightinium Z (Grand Trial Hala)
  (16002, 16, NULL, 'fightinium-z', 'Fightinium Z', 7, 'fightinium-z', 'z-crystal', 2),
  -- Waterium Z (Lana Trial)
  (16003, 16, NULL, 'waterium-z', 'Waterium Z', 3, 'waterium-z', 'z-crystal', 3),
  -- Firium Z (Kiawe Trial)
  (16004, 16, NULL, 'firium-z', 'Firium Z', 2, 'firium-z', 'z-crystal', 4),
  -- Grassium Z (Mallow Trial)
  (16005, 16, NULL, 'grassium-z', 'Grassium Z', 5, 'grassium-z', 'z-crystal', 5),
  -- Rockium Z (Grand Trial Olivia)
  (16006, 16, NULL, 'rockium-z', 'Rockium Z', 13, 'rockium-z', 'z-crystal', 6),
  -- Electrium Z (Sophocles Trial)
  (16007, 16, NULL, 'electrium-z', 'Electrium Z', 4, 'electrium-z', 'z-crystal', 7),
  -- Ghostium Z (Acerola Trial)
  (16008, 16, NULL, 'ghostium-z', 'Ghostium Z', 14, 'ghostium-z', 'z-crystal', 8),
  -- Darkinium Z (Grand Trial Nanu)
  (16009, 16, NULL, 'darkinium-z', 'Darkinium Z', 16, 'darkinium-z', 'z-crystal', 9),
  -- Dragonium Z (Vast Poni Canyon Trial)
  (16010, 16, NULL, 'dragonium-z', 'Dragonium Z', 15, 'dragonium-z', 'z-crystal', 10),
  -- Fairium Z (Mina Trial)
  (16011, 16, NULL, 'fairium-z', 'Fairium Z', 18, 'fairium-z', 'z-crystal', 11),
  -- Groundium Z (Grand Trial Hapu)
  (16012, 16, NULL, 'groundium-z', 'Groundium Z', 9, 'groundium-z', 'z-crystal', 12);
