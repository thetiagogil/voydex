-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Arceus major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Arceus mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion
) VALUES
  -- Choose Starter
  (220001, 22, NULL, 2201, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Rowlet, Cyndaquil, or Oshawott as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (220002, 22, NULL, 2201, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Hisui Pokedex and begin the survey record.', 2, true),
  -- Noble Kleavor
  (220003, 22, NULL, 2201, 11, 3, NULL, 'noble-kleavor', 'Noble Kleavor', 'Quell Noble Kleavor in Obsidian Fieldlands.', 3, true),
  -- Noble Lilligant
  (220004, 22, NULL, 2201, 11, 3, NULL, 'noble-lilligant', 'Noble Lilligant', 'Quell Noble Hisuian Lilligant in Crimson Mirelands.', 4, true),
  -- Noble Arcanine
  (220005, 22, NULL, 2201, 11, 3, NULL, 'noble-arcanine', 'Noble Arcanine', 'Quell Noble Hisuian Arcanine in Cobalt Coastlands.', 5, true),
  -- Noble Electrode
  (220006, 22, NULL, 2201, 11, 3, NULL, 'noble-electrode', 'Noble Electrode', 'Quell Noble Hisuian Electrode in Coronet Highlands.', 6, true),
  -- Noble Avalugg
  (220007, 22, NULL, 2201, 11, 3, NULL, 'noble-avalugg', 'Noble Avalugg', 'Quell Noble Hisuian Avalugg in Alabaster Icelands.', 7, true),
  -- Choose Clan Leader
  (220008, 22, NULL, 2201, 12, 1, NULL, 'choose-clan-leader', 'Choose Clan Leader', 'Choose whether Adaman or Irida accompanies the player near the Temple of Sinnoh climax.', 8, true),
  -- Commander Kamado
  (220009, 22, NULL, 2201, 6, 3, NULL, 'commander-kamado', 'Commander Kamado', 'Defeat Commander Kamado at the Temple of Sinnoh.', 9, true),
  -- Origin Pokémon
  (220010, 22, NULL, 2201, 6, 3, NULL, 'origin-pokemon', 'Origin Pokémon', 'Defeat and catch the Origin Forme Legendary Pokémon at the Temple of Sinnoh.', 10, true),
  -- Defeat Volo
  (220011, 22, NULL, 2202, 6, 3, NULL, 'defeat-volo', 'Defeat Volo', 'Defeat Volo and Giratina at the Temple of Sinnoh.', 1, true),
  -- Meet Arceus
  (220012, 22, NULL, 2202, 6, 3, NULL, 'meet-arceus', 'Meet Arceus', 'Seek out and encounter Arceus.', 2, false);
