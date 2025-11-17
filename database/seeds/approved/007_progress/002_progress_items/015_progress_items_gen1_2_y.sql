WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- Badges
                    ('badge-boulder', 'Boulder Badge', 'badges', 'y', NULL, 'Defeat Brock to earn the Boulder Badge.', 'Defeated Brock and earned the Boulder Badge.', 'Pewter City Gym', 1),
                    ('badge-cascade', 'Cascade Badge', 'badges', 'y', NULL, 'Defeat Misty to earn the Cascade Badge.', 'Defeated Misty and earned the Cascade Badge.', 'Cerulean City Gym', 2),
                    ('badge-thunder', 'Thunder Badge', 'badges', 'y', NULL, 'Defeat Lt. Surge to earn the Thunder Badge.', 'Defeated Lt. Surge and earned the Thunder Badge.', 'Vermilion City Gym', 3),
                    ('badge-rainbow', 'Rainbow Badge', 'badges', 'y', NULL, 'Defeat Erika to earn the Rainbow Badge.', 'Defeated Erika and earned the Rainbow Badge.', 'Celadon City Gym', 4),
                    ('badge-soul', 'Soul Badge', 'badges', 'y', NULL, 'Defeat Koga to earn the Soul Badge.', 'Defeated Koga and earned the Soul Badge.', 'Fuchsia City Gym', 5),
                    ('badge-marsh', 'Marsh Badge', 'badges', 'y', NULL, 'Defeat Sabrina to earn the Marsh Badge.', 'Defeated Sabrina and earned the Marsh Badge.', 'Saffron City Gym', 6),
                    ('badge-volcano', 'Volcano Badge', 'badges', 'y', NULL, 'Defeat Blaine to earn the Volcano Badge.', 'Defeated Blaine and earned the Volcano Badge.', 'Cinnabar Island Gym', 7),
                    ('badge-earth', 'Earth Badge', 'badges', 'y', NULL, 'Defeat Giovanni to earn the Earth Badge.', 'Defeated Giovanni and earned the Earth Badge.', 'Viridian City Gym', 8),
                    -- Elite four
                    ('elite-lorelei', 'Elite Lorelei', 'elite-four', 'y', NULL, 'Defeat Lorelei of the Elite Four.', 'Defeated Lorelei of the Elite Four.', 'Indigo Plateau', 1),
                    ('elite-bruno', 'Elite Bruno', 'elite-four', 'y', NULL, 'Defeat Bruno of the Elite Four.', 'Defeated Bruno of the Elite Four.', 'Indigo Plateau', 2),
                    ('elite-agatha', 'Elite Agatha', 'elite-four', 'y', NULL, 'Defeat Agatha of the Elite Four.', 'Defeated Agatha of the Elite Four.', 'Indigo Plateau', 3),
                    ('elite-lance', 'Elite Lance', 'elite-four', 'y', NULL, 'Defeat Lance of the Elite Four.', 'Defeated Lance of the Elite Four.', 'Indigo Plateau', 4),
                    ('elite-blue', 'Champion Blue', 'elite-four', 'y', NULL, 'Defeat Blue, Champion of the Elite Four, and become the Champion.', 'Defeated Blue, Champion of the Elite Four, and became the Champion.', 'Indigo Plateau', 5),
                    -- Legendary
                    ('catch-articuno', 'Catch Articuno', 'legendary', 'y', NULL, 'Catch Articuno.', 'Caught Articuno.', 'Seafoam Islands', 1),
                    ('catch-zapdos', 'Catch Zapdos', 'legendary', 'y', NULL, 'Catch Zapdos.', 'Caught Zapdos.', 'Power Plant', 2),
                    ('catch-moltres', 'Catch Moltres', 'legendary', 'y', NULL, 'Catch Moltres.', 'Caught Moltres.', 'Victory Road', 3),
                    ('catch-mewtwo', 'Catch Mewtwo', 'legendary', 'y', NULL, 'Catch Mewtwo.', 'Caught Mewtwo.', 'Cerulean Cave', 4),
                    -- Pokedex
                    ('complete-pokedex', 'Complete Pokédex', 'regional-pokedex', 'y', NULL, 'Complete the Kanto Pokédex.', 'Completed the Kanto Pokédex.', NULL, 1)
            ) AS xxx (slug, name, progress_category_slug, version_group_slug, game_slug, description, timeline_message, location, sort_order)
    )
INSERT INTO
    meta.progress_items (slug, name, progress_category_id, game_id, description, timeline_message, location, sort_order)
SELECT
    xxx.slug,
    xxx.name,
    pgc.id,
    gam.id,
    xxx.description,
    xxx.timeline_message,
    xxx.location,
    xxx.sort_order
FROM
    xxx
    JOIN meta.version_groups vg ON vg.slug = xxx.version_group_slug
    JOIN meta.progress_categories pgc ON pgc.slug = xxx.progress_category_slug
    AND pgc.version_group_id = vg.id
    LEFT JOIN meta.games gam ON gam.slug = xxx.game_slug;