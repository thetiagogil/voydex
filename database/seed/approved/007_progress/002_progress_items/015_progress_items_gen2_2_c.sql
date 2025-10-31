'gs'
WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- Badges Johto
                    ('badge-zephyr', 'Zephyr Badge', 'badges-johto', 'c', NULL, 'Defeat Falkner to earn the Zephyr Badge.', 'Defeated Falkner and earned the Zephyr Badge.', 'Violet City Gym', 1),
                    ('badge-hive', 'Hive Badge', 'badges-johto', 'c', NULL, 'Defeat Bugsy to earn the Hive Badge.', 'Defeated Bugsy and earned the Hive Badge.', 'Azalea Town Gym', 2),
                    ('badge-plain', 'Plain Badge', 'badges-johto', 'c', NULL, 'Defeat Whitney to earn the Plain Badge.', 'Defeated Whitney and earned the Plain Badge.', 'Goldenrod City Gym', 3),
                    ('badge-fog', 'Fog Badge', 'badges-johto', 'c', NULL, 'Defeat Morty to earn the Fog Badge.', 'Defeated Morty and earned the Fog Badge.', 'Ecruteak City Gym', 4),
                    ('badge-storm', 'Storm Badge', 'badges-johto', 'c', NULL, 'Defeat Chuck to earn the Storm Badge.', 'Defeated Chuck and earned the Storm Badge.', 'Cianwood City Gym', 5),
                    ('badge-mineral', 'Mineral Badge', 'badges-johto', 'c', NULL, 'Defeat Jasmine to earn the Mineral Badge.', 'Defeated Jasmine and earned the Mineral Badge.', 'Olivine City Gym', 6),
                    ('badge-glacier', 'Glacier Badge', 'badges-johto', 'c', NULL, 'Defeat Pryce to earn the Glacier Badge.', 'Defeated Pryce and earned the Glacier Badge.', 'Mahogany Town Gym', 7),
                    ('badge-rising', 'Rising Badge', 'badges-johto', 'c', NULL, 'Defeat Clair to earn the Rising Badge.', 'Defeated Clair and earned the Rising Badge.', 'Blackthorn City Gym', 8),
                    -- Elite Four
                    ('elite-will', 'Elite Will', 'elite-four', 'c', NULL, 'Defeat Will of the Elite Four.', 'Defeated Will of the Elite Four.', 'Indigo Plateau', 1),
                    ('elite-koga', 'Elite Koga', 'elite-four', 'c', NULL, 'Defeat Koga of the Elite Four.', 'Defeated Koga of the Elite Four.', 'Indigo Plateau', 2),
                    ('elite-bruno', 'Elite Bruno', 'elite-four', 'c', NULL, 'Defeat Bruno of the Elite Four.', 'Defeated Bruno of the Elite Four.', 'Indigo Plateau', 3),
                    ('elite-karen', 'Elite Karen', 'elite-four', 'c', NULL, 'Defeat Karen of the Elite Four.', 'Defeated Karen of the Elite Four.', 'Indigo Plateau', 4),
                    ('elite-lance', 'Champion Lance', 'elite-four', 'c', NULL, 'Defeat Lance, Champion of the Elite Four, and become the Champion.', 'Defeated Lance, Champion of the Elite Four, and became the Champion.', 'Indigo Plateau', 5),
                    -- Badges Kanto
                    ('badge-thunder', 'Thunder Badge', 'badges-kanto', 'c', NULL, 'Defeat Lt. Surge to earn the Thunder Badge.', 'Defeated Lt. Surge and earned the Thunder Badge.', 'Vermilion City Gym', 1),
                    ('badge-marsh', 'Marsh Badge', 'badges-kanto', 'c', NULL, 'Defeat Koga to earn the Marsh Badge.', 'Defeated Koga and earned the Marsh Badge.', 'Saffron City Gym', 2),
                    ('badge-rainbow', 'Rainbow Badge', 'badges-kanto', 'c', NULL, 'Defeat Erika to earn the Rainbow Badge.', 'Defeated Erika and earned the Rainbow Badge.', 'Celadon City Gym', 3),
                    ('badge-soul', 'Soul Badge', 'badges-kanto', 'c', NULL, 'Defeat Janine to earn the Soul Badge.', 'Defeated Janine and earned the Soul Badge.', 'Fuchsia City Gym', 4),
                    ('badge-cascade', 'Cascade Badge', 'badges-kanto', 'c', NULL, 'Defeat Misty to earn the Cascade Badge.', 'Defeated Misty and earned the Cascade Badge.', 'Cerulean City Gym', 5),
                    ('badge-boulder', 'Boulder Badge', 'badges-kanto', 'c', NULL, 'Defeat Brock to earn the Boulder Badge.', 'Defeated Brock and earned the Boulder Badge.', 'Pewter City Gym', 6),
                    ('badge-volcano', 'Volcano Badge', 'badges-kanto', 'c', NULL, 'Defeat Blaine to earn the Volcano Badge.', 'Defeated Blaine and earned the Volcano Badge.', 'Seafoam Islands Gym', 7),
                    ('badge-earth', 'Earth Badge', 'badges-kanto', 'c', NULL, 'Defeat Blue to earn the Earth Badge.', 'Defeated Blue and earned the Earth Badge.', 'Viridian City Gym', 8),
                    -- Final battle
                    ('defeat-red', 'Defeat Red', 'final-battle', 'c', NULL, 'Defeat Red at the summit of Mt. Silver.', 'Defeated Red at the summit of Mt. Silver.', 'Mt. Silver', 1),
                    -- Unown mode
                    ('collect-unown-a', 'Collect Unown Angry', 'unown-mode', 'c', NULL, 'Collect Unown Angry.', 'Collected Unown Angry.', 'Ruins of Alph', 1),
                    ('collect-unown-b', 'Collect Unown Bear', 'unown-mode', 'c', NULL, 'Collect Unown Bear.', 'Collected Unown Bear.', 'Ruins of Alph', 2),
                    ('collect-unown-c', 'Collect Unown Chase', 'unown-mode', 'c', NULL, 'Collect Unown Chase.', 'Collected Unown Chase.', 'Ruins of Alph', 3),
                    ('collect-unown-d', 'Collect Unown Direct', 'unown-mode', 'c', NULL, 'Collect Unown Direct.', 'Collected Unown Direct.', 'Ruins of Alph', 4),
                    ('collect-unown-e', 'Collect Unown Engage', 'unown-mode', 'c', NULL, 'Collect Unown Engage.', 'Collected Unown Engage.', 'Ruins of Alph', 5),
                    ('collect-unown-f', 'Collect Unown Find', 'unown-mode', 'c', NULL, 'Collect Unown Find.', 'Collected Unown Find.', 'Ruins of Alph', 6),
                    ('collect-unown-g', 'Collect Unown Give', 'unown-mode', 'c', NULL, 'Collect Unown Give.', 'Collected Unown Give.', 'Ruins of Alph', 7),
                    ('collect-unown-h', 'Collect Unown Help', 'unown-mode', 'c', NULL, 'Collect Unown Help.', 'Collected Unown Help.', 'Ruins of Alph', 8),
                    ('collect-unown-i', 'Collect Unown Increase', 'unown-mode', 'c', NULL, 'Collect Unown Increase.', 'Collected Unown Increase.', 'Ruins of Alph', 9),
                    ('collect-unown-j', 'Collect Unown Join', 'unown-mode', 'c', NULL, 'Collect Unown Join.', 'Collected Unown Join.', 'Ruins of Alph', 10),
                    ('collect-unown-k', 'Collect Unown Keep', 'unown-mode', 'c', NULL, 'Collect Unown Keep.', 'Collected Unown Keep.', 'Ruins of Alph', 11),
                    ('collect-unown-l', 'Collect Unown Laugh', 'unown-mode', 'c', NULL, 'Collect Unown Laugh.', 'Collected Unown Laugh.', 'Ruins of Alph', 12),
                    ('collect-unown-m', 'Collect Unown Make', 'unown-mode', 'c', NULL, 'Collect Unown Make.', 'Collected Unown Make.', 'Ruins of Alph', 13),
                    ('collect-unown-n', 'Collect Unown Nuzzle', 'unown-mode', 'c', NULL, 'Collect Unown Nuzzle.', 'Collected Unown Nuzzle.', 'Ruins of Alph', 14),
                    ('collect-unown-o', 'Collect Unown Observe', 'unown-mode', 'c', NULL, 'Collect Unown Observe.', 'Collected Unown Observe.', 'Ruins of Alph', 15),
                    ('collect-unown-p', 'Collect Unown Perform', 'unown-mode', 'c', NULL, 'Collect Unown Perform.', 'Collected Unown Perform.', 'Ruins of Alph', 16),
                    ('collect-unown-q', 'Collect Unown Quicken', 'unown-mode', 'c', NULL, 'Collect Unown Quicken.', 'Collected Unown Quicken.', 'Ruins of Alph', 17),
                    ('collect-unown-r', 'Collect Unown Reassure', 'unown-mode', 'c', NULL, 'Collect Unown Reassure.', 'Collected Unown Reassure.', 'Ruins of Alph', 18),
                    ('collect-unown-s', 'Collect Unown Search', 'unown-mode', 'c', NULL, 'Collect Unown Search.', 'Collected Unown Search.', 'Ruins of Alph', 19),
                    ('collect-unown-t', 'Collect Unown Tell', 'unown-mode', 'c', NULL, 'Collect Unown Tell.', 'Collected Unown Tell.', 'Ruins of Alph', 20),
                    ('collect-unown-u', 'Collect Unown Undo', 'unown-mode', 'c', NULL, 'Collect Unown Undo.', 'Collected Unown Undo.', 'Ruins of Alph', 21),
                    ('collect-unown-v', 'Collect Unown Vanish', 'unown-mode', 'c', NULL, 'Collect Unown Vanish.', 'Collected Unown Vanish.', 'Ruins of Alph', 22),
                    ('collect-unown-w', 'Collect Unown Want', 'unown-mode', 'c', NULL, 'Collect Unown Want.', 'Collected Unown Want.', 'Ruins of Alph', 23),
                    ('collect-unown-x', 'Collect Unown XXXXX', 'unown-mode', 'c', NULL, 'Collect Unown XXXXX.', 'Collected Unown XXXXX.', 'Ruins of Alph', 24),
                    ('collect-unown-y', 'Collect Unown Yield', 'unown-mode', 'c', NULL, 'Collect Unown Yield.', 'Collected Unown Yield.', 'Ruins of Alph', 25),
                    ('collect-unown-z', 'Collect Unown Zoom', 'unown-mode', 'c', NULL, 'Collect Unown Zoom.', 'Collected Unown Zoom.', 'Ruins of Alph', 26),
                    ('collect-unown-?', 'Collect Unown ?', 'unown-mode', 'c', NULL, 'Collect Unown ?.', 'Collected Unown ?.', 'Ruins of Alph', 27),
                    ('collect-unown-!', 'Collect Unown !', 'unown-mode', 'c', NULL, 'Collect Unown !.', 'Collected Unown !.', 'Ruins of Alph', 28),
                    -- Legendary
                    ('catch-lugia', 'Catch Lugia', 'legendary', 'c', NULL, 'Catch Lugia.', 'Caught Lugia.', 'Whirl Islands', 1),
                    ('catch-ho-oh', 'Catch Ho-Oh', 'legendary', 'c', NULL, 'Catch Ho-Oh.', 'Caught Ho-Oh.', 'Tin Tower', 2),
                    ('catch-raikou', 'Catch Raikou', 'legendary', 'c', NULL, 'Catch Raikou.', 'Caught Raikou.', NULL, 3),
                    ('catch-entei', 'Catch Entei', 'legendary', 'c', NULL, 'Catch Entei.', 'Caught Entei.', NULL, 4),
                    ('catch-suicune', 'Catch Suicune', 'legendary', 'c', NULL, 'Catch Suicune.', 'Caught Suicune.', 'Tin Tower', 5),
                    -- Pokedex
                    ('complete-pokedex', 'Complete Pokédex', 'pokedex', 'c', NULL, 'Complete the Johto Pokédex.', 'Completed the Kanto Pokédex.', NULL, 1),
            ) AS xxx (slug, name, progress_category_slug, game_slug, description, timeline_message, location, sort_order)
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
    JOIN meta.progress_categories pgc ON pgc.slug = xxx.progress_category_slug
    AND pgc.version_group_id = vg.id
    LEFT JOIN meta.games gam ON gam.slug = xxx.game_slug ON CONFLICT DO NOTHING;