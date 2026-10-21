-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels (10% Forme Lv. 33, 50% Forme Lv. 57) are confirmed by one source only.
-- Scope: Pokémon Legends: Z-A milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Pokémon Legends: Z-A battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Unlock Mega Evolution -> Rogue Mega Absol
  (260005, 26002, 26, 'battle-opponent', 1, NULL),
  -- Confront Lysandre -> Lysandre
  (260007, 26003, 26, 'battle-opponent', 1, NULL),
  -- Join Team MZ -> Taunie / Urbain
  (260003, 26001, 26, 'battle-opponent', 1, 'In front of Hotel Z'),
  -- Unlock Mega Evolution -> Taunie / Urbain
  (260005, 26001, 26, 'battle-opponent', 2, 'Hotel Z'),
  -- Stop the Ange Crisis -> Taunie / Urbain
  (260008, 26001, 26, 'battle-opponent', 1, 'Centrico Plaza, in front of Prism Tower'),
  -- Unlock Mega Evolution -> Zygarde
  (260005, 26004, 26, 'battle-opponent', 3, 'Outside Hotel Z (Main Mission 10, after the three Rogue Megas)'),
  -- Reach Rank A -> Zygarde
  (260006, 26004, 26, 'battle-opponent', 1, 'Hotel Richissime, Jacinthe''s tournament (Main Mission 30, before the final against Jacinthe)'),
  -- The One That Gives -> Xerneas
  (260010, 26005, 26, 'battle-opponent', 1, 'Wild Zone 11. You can skip this battle.'),
  -- The One That Takes -> Yveltal
  (260011, 26006, 26, 'battle-opponent', 1, 'Rouge Sector 2, roof of the Galerie de la Lune. You can skip this battle.'),
  -- To Keep the World in Balance -> Zygarde
  (260012, 26004, 26, 'battle-opponent', 1, 'Wild Zone 20, beneath Prism Tower. You can skip this battle.');
