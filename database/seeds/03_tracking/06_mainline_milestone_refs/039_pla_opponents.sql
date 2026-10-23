-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Legends: Arceus milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Pokémon Legends: Arceus battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Commander Kamado -> Commander Kamado
  (220009, 22006, 22, 'battle-opponent', 1, NULL),
  -- Defeat Volo -> Volo
  (220011, 22008, 22, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Volo
  (220001, 22008, 22, 'battle-opponent', 1, 'Jubilife Village, front gate'),
  -- Noble Lilligant -> Volo
  (220004, 22008, 22, 'battle-opponent', 1, 'Solaceon Ruins, Crimson Mirelands'),
  -- Origin Pokémon -> Dialga / Palkia
  (220010, 22010, 22, 'battle-opponent', 1, 'Temple of Sinnoh (Mission 17: Atop Mount Coronet)'),
  -- Defeat Volo -> Giratina
  (220011, 22011, 22, 'battle-opponent', 2, 'Temple of Sinnoh, right after Volo''s six Pokémon'),
  -- The Plate of the Lakes -> Uxie
  (220013, 22012, 22, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity'),
  -- The Plate of the Lakes -> Mesprit
  (220013, 22013, 22, 'battle-opponent', 2, 'Verity Cavern, Lake Verity'),
  -- The Plate of the Lakes -> Azelf
  (220013, 22014, 22, 'battle-opponent', 3, 'Valor Cavern, Lake Valor'),
  -- The Plate of Firespit Island -> Heatran
  (220014, 22015, 22, 'battle-opponent', 1, 'Firespit Island, Cobalt Coastlands'),
  -- The Plate of Moonview Arena -> Cresselia
  (220015, 22016, 22, 'battle-opponent', 1, 'Moonview Arena, Coronet Highlands'),
  -- The Plate of Snowpoint Temple -> Regigigas
  (220016, 22017, 22, 'battle-opponent', 1, 'Snowpoint Temple, Alabaster Icelands'),
  -- The Sea's Legend -> Manaphy
  (220017, 22018, 22, 'battle-opponent', 1, 'Seaside Hollow, Cobalt Coastlands. You can skip this battle.'),
  -- On the Trail of Giratina -> Giratina
  (220018, 22011, 22, 'battle-opponent', 1, 'Turnback Cave, Spring Path, Cobalt Coastlands. You can skip this battle.'),
  -- Incarnate Forces of Hisui -> Tornadus
  (220019, 22019, 22, 'battle-opponent', 1, 'Bonechill Wastelands, Alabaster Icelands (during a snowstorm). You can skip this battle.'),
  -- Incarnate Forces of Hisui -> Thundurus
  (220019, 22020, 22, 'battle-opponent', 2, 'Cobalt Coastlands between Sand''s Reach and Lunker''s Lair (during a thunderstorm). You can skip this battle.'),
  -- Incarnate Forces of Hisui -> Landorus
  (220019, 22021, 22, 'battle-opponent', 3, 'Ramanas Island, Obsidian Fieldlands. You can skip this battle.'),
  -- Incarnate Forces of Hisui -> Enamorus
  (220019, 22022, 22, 'battle-opponent', 4, 'Scarlet Bog, Crimson Mirelands (after Tornadus, Thundurus and Landorus). You can skip this battle.');

-- Frenzies fought mostly by dodging and throwing balms, not a battle with the player's team.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  player_side
) VALUES
  -- Noble Kleavor -> Kleavor
  (220003, 22001, 22, 'battle-opponent', 1, NULL, 'not-a-battle'),
  -- Noble Lilligant -> Hisuian Lilligant
  (220004, 22002, 22, 'battle-opponent', 2, NULL, 'not-a-battle'),
  -- Noble Arcanine -> Hisuian Arcanine
  (220005, 22003, 22, 'battle-opponent', 1, NULL, 'not-a-battle'),
  -- Noble Electrode -> Hisuian Electrode
  (220006, 22004, 22, 'battle-opponent', 1, NULL, 'not-a-battle'),
  -- Noble Avalugg -> Hisuian Avalugg
  (220007, 22005, 22, 'battle-opponent', 1, NULL, 'not-a-battle'),
  -- Origin Pokémon -> Origin Dialga / Origin Palkia
  (220010, 22007, 22, 'battle-opponent', 2, NULL, 'not-a-battle'),
  -- Meet Arceus -> Arceus
  (220012, 22009, 22, 'battle-opponent', 1, NULL, 'not-a-battle');
