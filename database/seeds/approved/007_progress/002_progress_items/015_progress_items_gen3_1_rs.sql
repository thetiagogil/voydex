WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- Badges
                    ('badge-stone', 'Stone Badge', 'badges', 'rs', NULL, 'Defeat Roxanne to earn the Stone Badge', 'Defeated Roxanne and earned the Stone Badge', 'Rustboro City', 1),
                    ('badge-knuckle', 'Knuckle Badge', 'badges', 'rs', NULL, 'Defeat Brawly to earn the Knuckle Badge', 'Defeated Brawly and earned the Knuckle Badge', 'Dewford Town Gym', 2),
                    ('badge-dynamo', 'Dynamo Badge', 'badges', 'rs', NULL, 'Defeat Wattson to earn the Dynamo Badge', 'Defeated Wattson and earned the Dynamo Badge', 'Mauville City Gym', 3),
                    ('badge-heat', 'Heat Badge', 'badges', 'rs', NULL, 'Defeat Flannery to earn the Heat Badge', 'Defeated Flannery and earned the Heat Badge', 'Lavaridge Town Gym', 4),
                    ('badge-balance', 'Balance Badge', 'badges', 'rs', NULL, 'Defeat Norman to earn the Balance Badge', 'Defeated Norman and earned the Balance Badge', 'Petalburg City Gym', 5),
                    ('badge-feather', 'Feather Badge', 'badges', 'rs', NULL, 'Defeat Winona to earn the Feather Badge', 'Defeated Winona and earned the Feather Badge', 'Fortree City Gym', 6),
                    ('badge-mind', 'Mind Badge', 'badges', 'rs', NULL, 'Defeat Tate & Liza to earn the Mind Badge', 'Defeated Tate & Liza and earned the Mind Badge', 'Mossdeep City Gym', 7),
                    ('badge-rain', 'Rain Badge', 'badges', 'rs', NULL, 'Defeat Wallace to earn the Rain Badge', 'Defeated Wallace and earned the Rain Badge', 'Sootopolis City Gym', 8),
                    -- Elite four
                    ('elite-sidney', 'Elite Sidney', 'elite-four', 'rs', NULL, 'Defeat Sidney of the Elite Four', 'Defeated Sidney of the Elite Four', 'Ever Grande City', 1),
                    ('elite-phoebe', 'Elite Phoebe', 'elite-four', 'rs', NULL, 'Defeat Phoebe of the Elite Four', 'Defeated Phoebe of the Elite Four', 'Ever Grande City', 2),
                    ('elite-glacia', 'Elite Glacia', 'elite-four', 'rs', NULL, 'Defeat Glacia of the Elite Four', 'Defeated Glacia of the Elite Four', 'Ever Grande City', 3),
                    ('elite-drake', 'Elite Drake', 'elite-four', 'rs', NULL, 'Defeat Drake of the Elite Four', 'Defeated Drake of the Elite Four', 'Ever Grande City', 4),
                    ('elite-steven', 'Champion Steven', 'elite-four', 'rs', NULL, 'Defeat Steven, Champion of the Elite Four, and become the Champion', 'Defeated Steven, Champion of the Elite Four, and became the Champion', 'Ever Grande City', 5),
                    -- Legendary
                    ('catch-groudon', 'Catch Groudon', 'legendary', 'rs', 'ruby', 'Catch Groudon', 'Caught Groudon', 'Cave of Origin', 1),
                    ('catch-kyogre', 'Catch Kyogre', 'legendary', 'rs', 'sapphire', 'Catch Kyogre', 'Caught Kyogre', 'Cave of Origin', 1),
                    ('catch-regirock', 'Catch Regirock', 'legendary', 'rs', NULL, 'Catch Regirock', 'Caught Regirock', 'Desert Tomb', 2),
                    ('catch-regice', 'Catch Regice', 'legendary', 'rs', NULL, 'Catch Regice', 'Caught Regice', 'Island Cave', 3),
                    ('catch-registeel', 'Catch Registeel', 'legendary', 'rs', NULL, 'Catch Registeel', 'Caught Registeel', 'Ancient Tomb', 4),
                    ('catch-rayquaza', 'Catch Rayquaza', 'legendary', 'rs', NULL, 'Catch Rayquaza', 'Caught Rayquaza', 'Sky Pillar', 5),
                    ('catch-latias', 'Catch Latias', 'legendary', 'rs', 'ruby', 'Catch Latias', 'Caught Latias', 'Southern Island', 6),
                    ('catch-latios', 'Catch Latios', 'legendary', 'rs', 'sapphire', 'Catch Latios', 'Caught Latios', 'Southern Island', 6),
                    ('catch-latios', 'Catch Latios', 'legendary', 'rs', 'ruby', 'Catch Latios', 'Caught Latios', NULL, 7),
                    ('catch-latias', 'Catch Latias', 'legendary', 'rs', 'sapphire', 'Catch Latias', 'Caught Latias', NULL, 7),
                    -- Pokedex
                    ('complete-pokedex', 'Complete Pokédex', 'regional-pokedex', 'rs', NULL, 'Complete the Hoenn Pokédex', 'Completed the Hoenn Pokédex', NULL, 1)
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