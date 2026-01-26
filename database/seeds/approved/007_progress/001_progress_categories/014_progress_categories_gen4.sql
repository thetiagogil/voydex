WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- ============================================
                    -- Version group 'dp'
                    -- ============================================
                    ('badges', 'Sinnoh Badges', 'dp', 'main-story', 'Earn the 8 Sinnoh Gym Badges.', 1),
                    ('elite-four', 'Elite Four', 'dp', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('legendary', 'Legendary', 'dp', 'side-quest', 'Catch the legendary Pokémon.', 3),
                    ('regional-pokedex', 'Sinnoh Pokédex', 'dp', 'dex', 'Catch all Pokémon and complete the Pokédex.', 4),
                    -- ============================================
                    -- Version group 'pt'
                    -- ============================================
                    ('badges', 'Sinnoh Badges', 'pt', 'main-story', 'Earn the 8 Sinnoh Gym Badges.', 1),
                    ('elite-four', 'Elite Four', 'pt', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('legendary', 'Legendary', 'pt', 'side-quest', 'Catch the legendary Pokémon.', 3),
                    ('regional-pokedex', 'Sinnoh Pokédex', 'pt', 'dex', 'Catch all Pokémon and complete the Pokédex.', 4),
                    -- ============================================
                    -- Version group 'hgss'
                    -- ============================================
                    ('badges-johto', 'Johto Badges', 'hgss', 'main-story', 'Earn the 8 Johto gym badges.', 1),
                    ('elite-four', 'Elite Four', 'hgss', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('badges-kanto', 'Kanto Badges', 'hgss', 'post-game', 'Earn the 8 Kanto gym badges.', 3),
                    ('legendary', 'Legendary', 'hgss', 'side-quest', 'Catch the legendary Pokémon.', 4),
                    ('regional-pokedex', 'Johto Pokédex', 'hgss', 'dex', 'Catch all Pokémon and complete the Pokédex.', 5)
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