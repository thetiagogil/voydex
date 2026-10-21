-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
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
  (220011, 22, NULL, 2202, 6, 3, NULL, 'defeat-volo', 'Defeat Volo', 'Defeat Volo and Giratina at the Temple of Sinnoh.', 5, true),
  -- Meet Arceus
  (220012, 22, NULL, 2202, 6, 3, NULL, 'meet-arceus', 'Meet Arceus', 'Seek out and encounter Arceus.', 6, false),
  -- The Plate of the Lakes
  (220013, 22, NULL, 2202, 6, 3, NULL, 'plate-of-the-lakes', 'The Plate of the Lakes', 'Face and catch Uxie, Mesprit and Azelf in the lake caverns to earn a plate (Mission 21).', 1, true),
  -- The Plate of Firespit Island
  (220014, 22, NULL, 2202, 6, 3, NULL, 'plate-of-firespit-island', 'The Plate of Firespit Island', 'Break Heatran''s fire shield on Firespit Island and catch it to earn a plate (Mission 22).', 2, true),
  -- The Plate of Moonview Arena
  (220015, 22, NULL, 2202, 6, 3, NULL, 'plate-of-moonview-arena', 'The Plate of Moonview Arena', 'Catch Cresselia, who has taken over Moonview Arena, to earn a plate (Mission 23).', 3, true),
  -- The Plate of Snowpoint Temple
  (220016, 22, NULL, 2202, 6, 3, NULL, 'plate-of-snowpoint-temple', 'The Plate of Snowpoint Temple', 'Open Snowpoint Temple with the Iron, Icicle and Stone Plates and catch Regigigas to earn a plate (Mission 24).', 4, true),
  -- The Sea's Legend
  (220017, 22, NULL, 2203, 6, 2, NULL, 'the-seas-legend', 'The Sea''s Legend', 'With Buizel, Mantyke and Overqwil in the party, ride between the stone pillars at Sand''s Reach in the evening and catch Manaphy in the Seaside Hollow (Request 66).', 1, false),
  -- On the Trail of Giratina
  (220018, 22, NULL, 2203, 6, 2, NULL, 'on-the-trail-of-giratina', 'On the Trail of Giratina', 'After defeating Volo, catch Giratina in Turnback Cave at the Spring Path (Request 91).', 2, false),
  -- Incarnate Forces of Hisui
  (220019, 22, NULL, 2203, 6, 2, NULL, 'incarnate-forces', 'Incarnate Forces of Hisui', 'After defeating Volo, catch Tornadus, Thundurus and Landorus, then Enamorus, for Cogita (Request 94).', 3, false);
