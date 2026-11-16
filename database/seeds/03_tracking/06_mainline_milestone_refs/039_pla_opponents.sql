-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Legends: Arceus milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Legends: Arceus battle milestones to their opponents, in the order
-- they are met. A noble Pokémon and Arceus are quelled, not battled
-- (player_side not-a-battle), and come last on their milestone.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Akari or Rei and Adaman in Jubilife Village, Mai on Deertrack Path,
-- Coin in the Golden Lowlands, Volo at the Solaceon Ruins, Ingo on
-- Clamberclaw Cliffs, Gaeric at Avalugg's Legacy, Sabi at Snowpoint Temple
-- and Beni at the Stone Portal.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Receive Pokédex -> Volo
  (220002, 22008, 22, 'battle-opponent', 1, 'At the village''s front gate', NULL),
  -- Noble Kleavor -> Akari / Rei (Jubilife Village)
  (220003, 22035, 22, 'battle-opponent', 1, 'On the training grounds, once you are a First Star.', 704),
  -- Noble Kleavor -> Mai (Deertrack Path)
  (220003, 22033, 22, 'battle-opponent', 2, 'She wants to see how you handle Pokémon.', 681),
  -- Noble Kleavor -> Lian
  (220003, 22023, 22, 'battle-opponent', 3, 'Lian, Kleavor''s warden', NULL),
  -- Noble Kleavor -> Irida
  (220003, 22024, 22, 'battle-opponent', 4, 'Irida tests you', NULL),
  -- Noble Lilligant -> Akari / Rei (Jubilife Village)
  (220004, 22035, 22, 'battle-opponent', 1, 'At the front gate, before you leave for the Crimson Mirelands.', 704),
  -- Noble Lilligant -> Coin (Golden Lowlands)
  (220004, 22026, 22, 'battle-opponent', 2, 'At the bandits'' camp by the river, for the Wall Fragment.', 692),
  -- Noble Lilligant -> Volo (Solaceon Ruins)
  (220004, 22008, 22, 'battle-opponent', 3, 'Volo, at the ruins.', 323),
  -- Noble Arcanine -> Irida
  (220005, 22024, 22, 'battle-opponent', 1, 'Irida, at the camp where you arrive in the Cobalt Coastlands. You go on even if you lose', NULL),
  -- Noble Arcanine -> Clover
  (220005, 22025, 22, 'battle-opponent', 2, 'Clover of the Miss Fortune sisters', NULL),
  -- Noble Arcanine -> Coin
  (220005, 22026, 22, 'battle-opponent', 3, 'Coin of the Miss Fortune sisters', NULL),
  -- Noble Arcanine -> Charm
  (220005, 22027, 22, 'battle-opponent', 4, 'Charm of the Miss Fortune sisters', NULL),
  -- Noble Electrode -> Adaman (Jubilife Village)
  (220006, 22028, 22, 'battle-opponent', 1, 'Adaman tests you before you leave.', 704),
  -- Noble Electrode -> Ingo (Clamberclaw Cliffs)
  (220006, 22029, 22, 'battle-opponent', 2, 'Ingo, Sneasler''s warden.', 673),
  -- Noble Electrode -> Melli
  (220006, 22030, 22, 'battle-opponent', 3, 'Melli, in front of the arena', NULL),
  -- Noble Avalugg -> Akari / Rei (Jubilife Village)
  (220007, 22035, 22, 'battle-opponent', 1, 'At the front gate, before you leave for the Alabaster Icelands.', 704),
  -- Noble Avalugg -> Gaeric (Avalugg's Legacy)
  (220007, 22034, 22, 'battle-opponent', 2, 'Gaeric, Avalugg''s warden, wants to know your heart.', 665),
  -- Noble Avalugg -> Sabi (Snowpoint Temple)
  (220007, 22031, 22, 'battle-opponent', 3, 'Sabi, on the temple roof.', 322),
  -- Commander Kamado -> Beni (Stone Portal)
  (220009, 22032, 22, 'battle-opponent', 1, 'Beni bars the way.', 949),
  -- Commander Kamado -> Commander Kamado
  (220009, 22006, 22, 'battle-opponent', 2, NULL, NULL),
  -- Commander Kamado -> Dialga / Palkia
  (220009, 22010, 22, 'battle-opponent', 3, 'Comes out of the rift after Kamado''s battle. You catch it.', NULL),
  -- The Plate of the Lakes -> Uxie
  (220013, 22012, 22, 'battle-opponent', 1, 'Acuity Cavern, Lake Acuity', NULL),
  -- The Plate of the Lakes -> Mesprit
  (220013, 22013, 22, 'battle-opponent', 2, 'Verity Cavern, Lake Verity', NULL),
  -- The Plate of the Lakes -> Azelf
  (220013, 22014, 22, 'battle-opponent', 3, 'Valor Cavern, Lake Valor', NULL),
  -- The Plate of the Lakes -> Adaman
  (220013, 22028, 22, 'battle-opponent', 4, 'Adaman, at Lake Valor', NULL),
  -- The Plate of the Lakes -> Irida
  (220013, 22024, 22, 'battle-opponent', 5, 'Irida, at the Pearl Settlement', NULL),
  -- The Plate of Firespit Island -> Heatran
  (220014, 22015, 22, 'battle-opponent', 1, NULL, NULL),
  -- The Plate of Moonview Arena -> Cresselia
  (220015, 22016, 22, 'battle-opponent', 1, NULL, NULL),
  -- The Plate of Snowpoint Temple -> Regigigas
  (220016, 22017, 22, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Volo -> Volo
  (220011, 22008, 22, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Volo -> Giratina
  (220011, 22011, 22, 'battle-opponent', 2, 'Right after Volo''s six Pokémon, twice over', NULL),
  -- The Sea's Legend -> Manaphy
  (220017, 22018, 22, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- On the Trail of Giratina -> Giratina
  (220018, 22011, 22, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Incarnate Forces -> Tornadus
  (220019, 22019, 22, 'battle-opponent', 1, 'Bonechill Wastes, in a snowstorm. You can skip this battle.', NULL),
  -- Incarnate Forces -> Thundurus
  (220019, 22020, 22, 'battle-opponent', 2, 'Off the Cobalt Coastlands, in a thunderstorm. You can skip this battle.', NULL),
  -- Incarnate Forces -> Landorus
  (220019, 22021, 22, 'battle-opponent', 3, 'Ramanas Island. You can skip this battle.', NULL),
  -- Incarnate Forces -> Enamorus
  (220019, 22022, 22, 'battle-opponent', 4, 'Scarlet Bog, after the three. You can skip this battle.', NULL);

-- Battles with their own rules for the player's side: player_side.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id,
  player_side
) VALUES
  -- Noble Kleavor -> Kleavor
  (220003, 22001, 22, 'battle-opponent', 5, NULL, NULL, 'not-a-battle'),
  -- Noble Lilligant -> Hisuian Lilligant
  (220004, 22002, 22, 'battle-opponent', 4, NULL, NULL, 'not-a-battle'),
  -- Noble Arcanine -> Hisuian Arcanine
  (220005, 22003, 22, 'battle-opponent', 5, NULL, NULL, 'not-a-battle'),
  -- Noble Electrode -> Hisuian Electrode
  (220006, 22004, 22, 'battle-opponent', 4, NULL, NULL, 'not-a-battle'),
  -- Noble Avalugg -> Hisuian Avalugg
  (220007, 22005, 22, 'battle-opponent', 4, NULL, NULL, 'not-a-battle'),
  -- Origin Pokémon -> Origin Dialga / Origin Palkia
  (220010, 22007, 22, 'battle-opponent', 1, 'The counterpart, in its Origin Forme.', NULL, 'not-a-battle'),
  -- Meet Arceus -> Arceus
  (220012, 22009, 22, 'battle-opponent', 1, NULL, NULL, 'not-a-battle');
