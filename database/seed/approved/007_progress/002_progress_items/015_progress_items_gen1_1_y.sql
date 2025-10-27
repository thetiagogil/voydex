WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('boulder-badge', 'Boulder Badge', 'badges-y', NULL, 'Earn the Boulder Badge.', 'Earned the Boulder Badge.', 1),
                    ('cascade-badge', 'Cascade Badge', 'badges-y', NULL, 'Earn the Cascade Badge.', 'Earned the Cascade Badge.', 2),
                    ('thunder-badge', 'Thunder Badge', 'badges-y', NULL, 'Earn the Thunder Badge.', 'Earned the Thunder Badge.', 3),
                    ('rainbow-badge', 'Rainbow Badge', 'badges-y', NULL, 'Earn the Rainbow Badge.', 'Earned the Rainbow Badge.', 4),
                    ('soul-badge', 'Soul Badge', 'badges-y', NULL, 'Earn the Soul Badge.', 'Earned the Soul Badge.', 5),
                    ('marsh-badge', 'Marsh Badge', 'badges-y', NULL, 'Earn the Marsh Badge.', 'Earned the Marsh Badge.', 6),
                    ('volcano-badge', 'Volcano Badge', 'badges-y', NULL, 'Earn the Volcano Badge.', 'Earned the Volcano Badge.', 7),
                    ('earth-badge', 'Earth Badge', 'badges-y', NULL, 'Earn the Earth Badge.', 'Earned the Earth Badge.', 8),
                    ('elite-lorelei', 'Elite Lorelei', 'elite-four-y', NULL, 'Defeat Lorelei of the Elite Four.', 'Defeated Lorelei of the Elite Four.', 9),
                    ('elite-bruno', 'Elite Bruno', 'elite-four-y', NULL, 'Defeat Bruno of the Elite Four.', 'Defeated Bruno of the Elite Four.', 10),
                    ('elite-agatha', 'Elite Agatha', 'elite-four-y', NULL, 'Defeat Agatha of the Elite Four.', 'Defeated Agatha of the Elite Four.', 11),
                    ('elite-lance', 'Elite Lance', 'elite-four-y', NULL, 'Defeat Lance of the Elite Four.', 'Defeated Lance of the Elite Four.', 12),
                    ('champion-blue', 'Champion Blue', 'elite-four-y', NULL, 'Defeat Blue (Champion) of the Elite Four.', 'Defeated Blue (Champion) of the Elite Four.', 12),
                    ('catch-articuno', 'Catch Articuno', 'legendaries-y', NULL, 'Catch Articuno in the Seafoam Islands.', 'Caught Articuno in the Seafoam Islands.', 13),
                    ('catch-zapdos', 'Catch Zapdos', 'legendaries-y', NULL, 'Catch Zapdos in the Power Plant.', 'Caught Zapdos in the Power Plant.', 14),
                    ('catch-moltres', 'Catch Moltres', 'legendaries-y', NULL, 'Catch Moltres on Victory Road.', 'Caught Moltres on Victory Road.', 15),
                    ('catch-mewtwo', 'Catch Mewtwo', 'legendaries-y', NULL, 'Catch Mewtwo in the Cerulean Cave.', 'Caught Mewtwo in the Cerulean Cave.', 16),
                    ('complete-pokedex', 'Complete Pokédex', 'pokedex-y', NULL, 'Complete the Kanto Pokédex.', 'Completed the Kanto Pokédex.', 17)
            ) AS xxx (slug, name, progress_category_slug, game_slug, description, timeline_message, sort_order)
    )
INSERT INTO
    meta.progress_items (slug, name, progress_category_id, game_id, description, timeline_message, sort_order)
SELECT
    xxx.slug,
    xxx.name,
    pgc.id,
    gam.id,
    xxx.description,
    xxx.timeline_message,
    xxx.sort_order
FROM
    xxx
    JOIN meta.progress_categories pgc ON pgc.slug = xxx.progress_category_slug
    JOIN meta.games gam ON gam.slug = xxx.game_slug ON CONFLICT DO NOTHING;