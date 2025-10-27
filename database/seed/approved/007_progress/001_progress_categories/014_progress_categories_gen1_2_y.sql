WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('badges-y', 'Badges', 'y', 'Earn the 8 Kanto Gym Badges.', 1),
                    ('elite-four-y', 'Elite Four', 'y', 'Indigo Plateau challenge.', 2),
                    ('legendaries-y', 'Legendaries', 'y', 'Legendary Pokémon captures.', 3),
                    ('pokedex-y', 'Pokédex', 'y', 'Complete the Pokédex.', 4)
            ) AS xxx (slug, name, version_group_slug, description, sort_order)
    )
INSERT INTO
    meta.progress_categories (slug, name, version_group_id, description, sort_order)
SELECT
    xxx.slug,
    xxx.name,
    vg.id,
    xxx.description,
    xxx.sort_order
FROM
    xxx
    JOIN meta.version_groups vg ON vg.slug = xxx.version_group_slug ON CONFLICT DO NOTHING;