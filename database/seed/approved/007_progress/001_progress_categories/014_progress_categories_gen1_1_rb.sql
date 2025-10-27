WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('badges-rb', 'Badges', 'rb', 'Earn the 8 Kanto Gym Badges.', 1),
                    ('elite-four-rb', 'Elite Four', 'rb', 'Indigo Plateau challenge.', 2),
                    ('legendaries-rb', 'Legendaries', 'rb', 'Legendary Pokémon captures.', 3),
                    ('pokedex-rb', 'Pokédex', 'rb', 'Complete the Pokédex.', 4)
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