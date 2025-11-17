WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- ============================================
                    -- Version group 'rs'
                    -- ============================================
                    ('badges', 'Hoenn Badges', 'rs', 'main-story', 'Earn the 8 Hoenn Gym Badges.', 1),
                    ('elite-four', 'Elite Four', 'rs', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('regional-pokedex', 'Hoenn Pokédex', 'rs', 'dex', 'Catch all Pokémon and complete the Pokédex.', 3),
                    -- ============================================
                    -- Version group 'lgfr'
                    -- ============================================
                    ('badges', 'Kanto Badges', 'lgfr', 'main-story', 'Earn the 8 Kanto Gym Badges.', 1),
                    ('elite-four', 'Elite Four', 'lgfr', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('regional-pokedex', 'Kanto Pokédex', 'lgfr', 'dex', 'Catch all Pokémon and complete the Pokédex.', 3),
                    -- ============================================
                    -- Version group 'e'
                    -- ============================================
                    ('badges', 'Hoenn Badges', 'e', 'main-story', 'Earn the 8 Hoenn Gym Badges.', 1),
                    ('elite-four', 'Elite Four', 'e', 'main-story', 'Defeat the Elite Four and become champion.', 2),
                    ('regional-pokedex', 'Hoenn Pokédex', 'e', 'dex', 'Catch all Pokémon and complete the Pokédex.', 3)
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