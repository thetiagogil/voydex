WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- ============================================
                    -- Version group 'rb'
                    -- ============================================
                    ('badges', 'Kanto Badges', 'rb', 'main-story', 'Earn the 8 Kanto gym badges.', 1),
                    ('elite-four', 'Elite Four', 'rb', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('legendary', 'Legendary', 'rb', 'dex', 'Catch the legendary Pokémon.', 3),
                    ('regional-pokedex', 'Kanto Pokédex', 'rb', 'dex', 'Catch all Pokémon and complete the Pokédex.', 4),
                    -- ============================================
                    -- Version group 'y'
                    -- ============================================
                    ('badges', 'Kanto Badges', 'y', 'main-story', 'Earn the 8 Kanto gym badges.', 1),
                    ('elite-four', 'Elite Four', 'y', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('legendary', 'Legendary', 'y', 'dex', 'Catch the legendary Pokémon.', 3),
                    ('regional-pokedex', 'Kanto Pokédex', 'y', 'dex', 'Catch all Pokémon and complete the Pokédex.', 4)
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
    JOIN meta.version_groups vg ON vg.slug = xxx.version_group_slug ON CONFLICT DO NOTHING;