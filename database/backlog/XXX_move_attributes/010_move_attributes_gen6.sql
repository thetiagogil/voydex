-- Generated from PokeAPI (/move) -> move_attributes
-- Generated at: 2025-10-25T19:50:48.259Z
WITH
    m AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('flying-press', 'generation-vi', NULL, 'fighting', 100, 95, 10, 0, 'physical'),
                    ('mat-block', 'generation-vi', NULL, 'fighting', NULL, NULL, 10, 0, 'status'),
                    ('belch', 'generation-vi', NULL, 'poison', 120, 90, 10, 0, 'special'),
                    ('rototiller', 'generation-vi', NULL, 'ground', NULL, NULL, 10, 0, 'status'),
                    ('sticky-web', 'generation-vi', NULL, 'bug', NULL, NULL, 20, 0, 'status'),
                    ('fell-stinger', 'generation-vi', NULL, 'bug', 50, 100, 25, 0, 'physical'),
                    ('phantom-force', 'generation-vi', NULL, 'ghost', 90, 100, 10, 0, 'physical'),
                    ('trick-or-treat', 'generation-vi', NULL, 'ghost', NULL, 100, 20, 0, 'status'),
                    ('noble-roar', 'generation-vi', NULL, 'normal', NULL, 100, 30, 0, 'status'),
                    ('ion-deluge', 'generation-vi', NULL, 'electric', NULL, NULL, 25, 1, 'status'),
                    ('parabolic-charge', 'generation-vi', NULL, 'electric', 65, 100, 20, 0, 'special'),
                    ('forests-curse', 'generation-vi', NULL, 'grass', NULL, 100, 20, 0, 'status'),
                    ('petal-blizzard', 'generation-vi', NULL, 'grass', 90, 100, 15, 0, 'physical'),
                    ('freeze-dry', 'generation-vi', NULL, 'ice', 70, 100, 20, 0, 'special'),
                    ('disarming-voice', 'generation-vi', NULL, 'fairy', 40, NULL, 15, 0, 'special'),
                    ('parting-shot', 'generation-vi', NULL, 'dark', NULL, 100, 20, 0, 'status'),
                    ('topsy-turvy', 'generation-vi', NULL, 'dark', NULL, NULL, 20, 0, 'status'),
                    ('draining-kiss', 'generation-vi', NULL, 'fairy', 50, 100, 10, 0, 'special'),
                    ('crafty-shield', 'generation-vi', NULL, 'fairy', NULL, NULL, 10, 3, 'status'),
                    ('flower-shield', 'generation-vi', NULL, 'fairy', NULL, NULL, 10, 0, 'status'),
                    ('grassy-terrain', 'generation-vi', NULL, 'grass', NULL, NULL, 10, 0, 'status'),
                    ('misty-terrain', 'generation-vi', NULL, 'fairy', NULL, NULL, 10, 0, 'status'),
                    ('electrify', 'generation-vi', NULL, 'electric', NULL, NULL, 20, 0, 'status'),
                    ('play-rough', 'generation-vi', NULL, 'fairy', 90, 90, 10, 0, 'physical'),
                    ('fairy-wind', 'generation-vi', NULL, 'fairy', 40, 100, 30, 0, 'special'),
                    ('moonblast', 'generation-vi', NULL, 'fairy', 95, 100, 15, 0, 'special'),
                    ('boomburst', 'generation-vi', NULL, 'normal', 140, 100, 10, 0, 'special'),
                    ('fairy-lock', 'generation-vi', NULL, 'fairy', NULL, NULL, 10, 0, 'status'),
                    ('kings-shield', 'generation-vi', NULL, 'steel', NULL, NULL, 10, 4, 'status'),
                    ('play-nice', 'generation-vi', NULL, 'normal', NULL, NULL, 20, 0, 'status'),
                    ('confide', 'generation-vi', NULL, 'normal', NULL, NULL, 20, 0, 'status'),
                    ('diamond-storm', 'generation-vi', NULL, 'rock', 100, 95, 5, 0, 'physical'),
                    ('steam-eruption', 'generation-vi', NULL, 'water', 110, 95, 5, 0, 'special'),
                    ('hyperspace-hole', 'generation-vi', NULL, 'psychic', 80, NULL, 5, 0, 'special'),
                    ('water-shuriken', 'generation-vi', NULL, 'water', 15, 100, 20, 1, 'special'),
                    ('mystical-fire', 'generation-vi', NULL, 'fire', 75, 100, 10, 0, 'special'),
                    ('spiky-shield', 'generation-vi', NULL, 'grass', NULL, NULL, 10, 4, 'status'),
                    ('aromatic-mist', 'generation-vi', NULL, 'fairy', NULL, NULL, 20, 0, 'status'),
                    ('eerie-impulse', 'generation-vi', NULL, 'electric', NULL, 100, 15, 0, 'status'),
                    ('venom-drench', 'generation-vi', NULL, 'poison', NULL, 100, 20, 0, 'status'),
                    ('powder', 'generation-vi', NULL, 'bug', NULL, 100, 20, 1, 'status'),
                    ('geomancy', 'generation-vi', NULL, 'fairy', NULL, NULL, 10, 0, 'status'),
                    ('magnetic-flux', 'generation-vi', NULL, 'electric', NULL, NULL, 20, 0, 'status'),
                    ('happy-hour', 'generation-vi', NULL, 'normal', NULL, NULL, 30, 0, 'status'),
                    ('electric-terrain', 'generation-vi', NULL, 'electric', NULL, NULL, 10, 0, 'status'),
                    ('dazzling-gleam', 'generation-vi', NULL, 'fairy', 80, 100, 10, 0, 'special'),
                    ('celebrate', 'generation-vi', NULL, 'normal', NULL, NULL, 40, 0, 'status'),
                    ('hold-hands', 'generation-vi', NULL, 'normal', NULL, NULL, 40, 0, 'status'),
                    ('baby-doll-eyes', 'generation-vi', NULL, 'fairy', NULL, 100, 30, 1, 'status'),
                    ('nuzzle', 'generation-vi', NULL, 'electric', 20, 100, 20, 0, 'physical'),
                    ('hold-back', 'generation-vi', NULL, 'normal', 40, 100, 40, 0, 'physical'),
                    ('infestation', 'generation-vi', NULL, 'bug', 20, 100, 20, 0, 'special'),
                    ('power-up-punch', 'generation-vi', NULL, 'fighting', 40, 100, 20, 0, 'physical'),
                    ('oblivion-wing', 'generation-vi', NULL, 'flying', 80, 100, 10, 0, 'special'),
                    ('thousand-arrows', 'generation-vi', NULL, 'ground', 90, 100, 10, 0, 'physical'),
                    ('thousand-waves', 'generation-vi', NULL, 'ground', 90, 100, 10, 0, 'physical'),
                    ('lands-wrath', 'generation-vi', NULL, 'ground', 90, 100, 10, 0, 'physical'),
                    ('light-of-ruin', 'generation-vi', NULL, 'fairy', 140, 90, 5, 0, 'special'),
                    ('origin-pulse', 'generation-vi', NULL, 'water', 110, 85, 10, 0, 'special'),
                    ('precipice-blades', 'generation-vi', NULL, 'ground', 120, 85, 10, 0, 'physical'),
                    ('dragon-ascent', 'generation-vi', NULL, 'flying', 120, 100, 5, 0, 'physical'),
                    ('hyperspace-fury', 'generation-vi', NULL, 'dark', 100, NULL, 5, 0, 'physical')
            ) AS m (move_slug, generation_start_slug, version_group_start_slug, type_slug, power, accuracy, pp, priority, damage_class)
    )
INSERT INTO
    dex.move_attributes (move_id, generation_start_id, version_group_start_id, type_id, power, accuracy, pp, priority, damage_class)
SELECT
    mv.id,
    gen.id,
    vg.id,
    typ.id,
    m.power,
    m.accuracy,
    m.pp,
    m.priority,
    CASE
        WHEN m.damage_class IS NULL THEN NULL
        ELSE CAST(m.damage_class AS dex.move_damage_class)
    END
FROM
    m
    LEFT JOIN dex.moves mv ON mv.slug = m.move_slug
    JOIN meta.generations gen ON gen.slug = m.generation_start_slug
    LEFT JOIN meta.version_groups vg ON vg.slug = m.version_group_start_slug
    LEFT JOIN dex.types typ ON typ.slug = m.type_slug ON CONFLICT (move_id, generation_start_id, version_group_start_id) DO NOTHING;