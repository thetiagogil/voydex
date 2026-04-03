-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 19 (Sword / Shield — The Isle of Armor)
-- Kubfu evolves into one of two Urshifu forms via Tower choice.
-- Version-exclusive rival: Klara (Sword, game 31) / Avery (Shield, game 32).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1330, 19, NULL, 1, 2, 'arrive-isle-of-armor', 'Arrive on the Isle of Armor', 'Arrive at the Isle of Armor dojo.', 1, FALSE),
    (1331, 19, NULL, 1, 2, 'receive-kubfu', 'Receive Kubfu', 'Receive Kubfu from Mustard.', 2, FALSE),
    (1332, 19, NULL, 1, 1, 'mustard-battle-1', 'Mustard Battle 1', 'Defeat Mustard in the first battle.', 3, FALSE),
    (1333, 19, NULL, 1, 2, 'tower-of-two-fists', 'Tower of Two Fists', 'Complete the Tower of Two Fists to evolve Kubfu.', 4, FALSE),
    (1334, 19, NULL, 1, 1, 'mustard-battle-2', 'Mustard Battle 2', 'Defeat Mustard in the final battle.', 5, FALSE),
    -- Pokémon
    (1335, 19, NULL, 3, 3, 'kubfu', 'Kubfu', 'Receive Kubfu from Mustard.', 1, FALSE),
    -- Choices
    (1336, 19, NULL, 5, 5, 'tower-choice', 'Tower Choice', 'Choose the Tower of Darkness or Tower of Waters.', 1, FALSE);