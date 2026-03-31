WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- ============================================
                    -- Version group 'gs'
                    -- ============================================
                    ('badges-johto', 'Johto Badges', 'gs', 'main-story', 'Earn the 8 Johto gym badges.', 1),
                    ('elite-four', 'Elite Four', 'gs', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('badges-kanto', 'Kanto Badges', 'gs', 'post-game', 'Earn the 8 Kanto gym badges.', 3),
                    ('final-battle', 'Final Battle', 'gs', 'post-game', 'Fight against Red atop Mt. Silver.', 4),
                    ('unown-mode', 'Unown Mode', 'gs', 'collection', 'Catch all Unown forms in the Ruins of Alph.', 5),
                    ('legendary', 'Legendary', 'gs', 'side-quest', 'Catch the legendary Pokémon.', 6),
                    ('regional-pokedex', 'New Pokédex', 'gs', 'dex', 'Catch all Pokémon and Catch all Pokémon and complete the Pokédex.', 7),
                    -- ============================================
                    -- Version group 'c'
                    -- ============================================
                    ('badges-johto', 'Johto Badges', 'c', 'main-story', 'Earn the 8 Johto gym badges.', 1),
                    ('elite-four', 'Elite Four', 'c', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('badges-kanto', 'Kanto Badges', 'c', 'post-game', 'Earn the 8 Kanto gym badges.', 3),
                    ('final-battle', 'Final Battle', 'c', 'post-game', 'Fight against Red atop Mt. Silver.', 4),
                    ('unown-mode', 'Unown Mode', 'c', 'collection', 'Catch all Unown forms in the Ruins of Alph.', 5),
                    ('legendary', 'Legendary', 'c', 'side-quest', 'Catch the legendary Pokémon.', 6),
                    ('regional-pokedex', 'New Pokédex', 'c', 'dex', 'Catch all Pokémon and complete the Pokédex.', 7)
            ) AS xxx (slug, name, version_group_slug, type, description, sort_order)
    )
INSERT INTO
    meta.progress_categories (slug, name, version_group_id, type, description, sort_order)
SELECT
    xxx.slug,
    xxx.name,
    vg.id,
    xxx.type::meta.progress_category_type,
    xxx.description,
    xxx.sort_order
FROM
    xxx
    JOIN meta.version_groups vg ON vg.slug = xxx.version_group_slug;