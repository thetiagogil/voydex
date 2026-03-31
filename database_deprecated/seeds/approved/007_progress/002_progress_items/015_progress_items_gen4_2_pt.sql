WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- Badges
                    ('badge-coal', 'Coal Badge', 'badges', 'rs', NULL, 'Defeat Roark to earn the Coal Badge', 'Defeated Roark and earned the Coal Badge', 'Oreburgh City', 1),
                    ('badge-forest', 'Forest Badge', 'badges', 'rs', NULL, 'Defeat Gardenia to earn the Forest Badge', 'Defeated Gardenia and earned the Forest Badge', 'Eterna City Gym', 2),
                    ('badge-cobble', 'Cobble Badge', 'badges', 'rs', NULL, 'Defeat Maylene to earn the Cobble Badge', 'Defeated Maylene and earned the Cobble Badge', 'Veilstone City Gym', 3),
                    ('badge-fen', 'Fen Badge', 'badges', 'rs', NULL, 'Defeat Crasher Wake to earn the Fen Badge', 'Defeated Crasher Wake and earned the Fen Badge', 'Pastoria City Gym', 4),
                    ('badge-relic', 'Relic Badge', 'badges', 'rs', NULL, 'Defeat Fantina to earn the Relic Badge', 'Defeated Fantina and earned the Relic Badge', 'Hearthome City Gym', 5),
                    ('badge-mine', 'Mine Badge', 'badges', 'rs', NULL, 'Defeat Byron to earn the Mine Badge', 'Defeated Byron and earned the Mine Badge', 'Canalave City Gym', 6),
                    ('badge-icicle', 'Icicle Badge', 'badges', 'rs', NULL, 'Defeat Candice to earn the Icicle Badge', 'Defeated Candice and earned the Icicle Badge', 'Snowpoint City Gym', 7),
                    ('badge-beacon', 'Beacon Badge', 'badges', 'rs', NULL, 'Defeat Volkner to earn the Beacon Badge', 'Defeated Volkner and earned the Beacon Badge', 'Sunyshore City Gym', 8),
                    -- Elite four
                    ('elite-aaron', 'Elite Aaron', 'elite-four', 'rs', NULL, 'Defeat Aaron of the Elite Four', 'Defeated Aaron of the Elite Four', NULL, 1),
                    ('elite-bertha', 'Elite Bertha', 'elite-four', 'rs', NULL, 'Defeat Bertha of the Elite Four', 'Defeated Bertha of the Elite Four', NULL, 2),
                    ('elite-flint', 'Elite Flint', 'elite-four', 'rs', NULL, 'Defeat Flint of the Elite Four', 'Defeated Flint of the Elite Four', NULL, 3),
                    ('elite-lucian', 'Elite Lucian', 'elite-four', 'rs', NULL, 'Defeat Lucian of the Elite Four', 'Defeated Lucian of the Elite Four', NULL, 4),
                    ('elite-cynthia', 'Champion Cynthia', 'elite-four', 'rs', NULL, 'Defeat Cynthia, Champion of the Elite Four, and become the Champion', 'Defeated Cynthia, Champion of the Elite Four, and became the Champion', NULL, 5),
                    -- Legendary
                    ('catch-dialga', 'Catch Dialga', 'legendary', 'rs', 'diamond', 'Catch Dialga', 'Caught Dialga', 'Mt. Coronet', 1),
                    ('catch-palkia', 'Catch Palkia', 'legendary', 'rs', 'pearl', 'Catch Palkia', 'Caught Palkia', 'Mt. Coronet', 1),
                    ('catch-uxie', 'Catch Uxie', 'legendary', 'rs', NULL, 'Catch Uxie', 'Caught Uxie', 'Lake Acuity', 2),
                    ('catch-azelf', 'Catch Azelf', 'legendary', 'rs', NULL, 'Catch Azelf', 'Caught Azelf', 'Lake Valor', 3),
                    ('catch-mesp', 'Catch Mesprit', 'legendary', 'rs', NULL, 'Catch Mesprit', 'Caught Mesprit', 'Lake Verity', 4),
                    ('catch-heatran', 'Catch Heatran', 'legendary', 'rs', NULL, 'Catch Heatran', 'Caught Heatran', 'Stark Mountain', 5),
                    ('catch-regigigas', 'Catch Regigigas', 'legendary', 'rs', NULL, 'Catch Regigigas', 'Caught Regigigas', 'Snowpoint Temple', 6),
                    ('catch-giratina', 'Catch Giratina', 'legendary', 'rs', NULL, 'Catch Giratina', 'Caught Giratina', 'Turnback Cave', 7),
                    ('catch-cresselia', 'Catch Cresselia', 'legendary', 'rs', NULL, 'Catch Cresselia', 'Caught Cresselia', 'Fullmoon Island', 8),
                    -- Pokedex
                    ('complete-pokedex', 'Complete Pokédex', 'regional-pokedex', 'rs', NULL, 'Complete the Sinnoh Pokédex', 'Completed the Sinnoh Pokédex', NULL, 1)
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