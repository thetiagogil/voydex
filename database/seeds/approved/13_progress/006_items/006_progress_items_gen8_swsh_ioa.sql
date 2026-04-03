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
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'arrive-isle-of-armor', 'Arrive on the Isle of Armor', 'Arrive at the Isle of Armor dojo.', 1, FALSE),
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-kubfu', 'Receive Kubfu', 'Receive Kubfu from Mustard.', 2, FALSE),
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'mustard-battle-1', 'Mustard Battle 1', 'Defeat Mustard in the first battle.', 3, FALSE),
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'tower-of-two-fists', 'Tower of Two Fists', 'Complete the Tower of Two Fists to evolve Kubfu.', 4, FALSE),
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'mustard-battle-2', 'Mustard Battle 2', 'Defeat Mustard in the final battle.', 5, FALSE),
    -- Pokémon
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'kubfu', 'Kubfu', 'Receive Kubfu from Mustard.', 1, FALSE),
    -- Choices
    (19, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'tower-choice', 'Tower Choice', 'Choose the Tower of Darkness or Tower of Waters.', 1, FALSE);