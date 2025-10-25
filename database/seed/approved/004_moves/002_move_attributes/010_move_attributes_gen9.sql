-- Generated from PokeAPI (/move) -> move_attributes
-- Generated at: 2025-10-25T19:50:48.259Z
WITH
    m AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('tera-blast', 'generation-ix', NULL, 'normal', 80, 100, 10, 0, 'special'),
                    ('silk-trap', 'generation-ix', NULL, 'bug', 0, NULL, 10, 4, 'status'),
                    ('axe-kick', 'generation-ix', NULL, 'fighting', 120, 90, 10, 0, 'physical'),
                    ('last-respects', 'generation-ix', NULL, 'ghost', 50, 100, 10, 0, 'physical'),
                    ('lumina-crash', 'generation-ix', NULL, 'psychic', 80, 100, 10, 0, 'special'),
                    ('order-up', 'generation-ix', NULL, 'dragon', 80, 100, 10, 0, 'physical'),
                    ('jet-punch', 'generation-ix', NULL, 'water', 60, 100, 15, 1, 'physical'),
                    ('spicy-extract', 'generation-ix', NULL, 'grass', 0, NULL, 15, 0, 'status'),
                    ('spin-out', 'generation-ix', NULL, 'steel', 100, 100, 5, 0, 'physical'),
                    ('population-bomb', 'generation-ix', NULL, 'normal', 20, 90, 10, 0, 'physical'),
                    ('ice-spinner', 'generation-ix', NULL, 'ice', 80, 100, 15, 0, 'physical'),
                    ('glaive-rush', 'generation-ix', NULL, 'dragon', 120, 100, 5, 0, 'physical'),
                    ('revival-blessing', 'generation-ix', NULL, 'normal', 0, NULL, 1, 0, 'status'),
                    ('salt-cure', 'generation-ix', NULL, 'rock', 40, 100, 15, 0, 'physical'),
                    ('triple-dive', 'generation-ix', NULL, 'water', 30, 95, 10, 0, 'physical'),
                    ('mortal-spin', 'generation-ix', NULL, 'poison', 30, 100, 15, 0, 'physical'),
                    ('doodle', 'generation-ix', NULL, 'normal', 0, 100, 10, 0, 'status'),
                    ('fillet-away', 'generation-ix', NULL, 'normal', 0, NULL, 10, 0, 'status'),
                    ('kowtow-cleave', 'generation-ix', NULL, 'dark', 85, NULL, 10, 0, 'physical'),
                    ('flower-trick', 'generation-ix', NULL, 'grass', 70, NULL, 10, 0, 'physical'),
                    ('torch-song', 'generation-ix', NULL, 'fire', 80, 100, 10, 0, 'special'),
                    ('aqua-step', 'generation-ix', NULL, 'water', 80, 100, 10, 0, 'physical'),
                    ('raging-bull', 'generation-ix', NULL, 'normal', 90, 100, 10, 0, 'physical'),
                    ('make-it-rain', 'generation-ix', NULL, 'steel', 120, 100, 5, 0, 'special'),
                    ('psyblade', 'generation-ix', NULL, 'psychic', 80, 100, 15, 0, 'physical'),
                    ('hydro-steam', 'generation-ix', NULL, 'water', 80, 100, 15, 0, 'special'),
                    ('ruination', 'generation-ix', NULL, 'dark', 1, 90, 10, 0, 'special'),
                    ('collision-course', 'generation-ix', NULL, 'fighting', 100, 100, 5, 0, 'physical'),
                    ('electro-drift', 'generation-ix', NULL, 'electric', 100, 100, 5, 0, 'special'),
                    ('shed-tail', 'generation-ix', NULL, 'normal', 0, NULL, 10, 0, 'status'),
                    ('chilly-reception', 'generation-ix', NULL, 'ice', 0, NULL, 10, 0, 'status'),
                    ('tidy-up', 'generation-ix', NULL, 'normal', 0, NULL, 10, 0, 'status'),
                    ('snowscape', 'generation-ix', NULL, 'ice', 0, NULL, 10, 0, 'status'),
                    ('pounce', 'generation-ix', NULL, 'bug', 50, 100, 20, 0, 'physical'),
                    ('trailblaze', 'generation-ix', NULL, 'grass', 50, 100, 20, 0, 'physical'),
                    ('chilling-water', 'generation-ix', NULL, 'water', 50, 100, 20, 0, 'special'),
                    ('hyper-drill', 'generation-ix', NULL, 'normal', 100, 100, 5, 0, 'physical'),
                    ('twin-beam', 'generation-ix', NULL, 'psychic', 40, 100, 10, 0, 'special'),
                    ('rage-fist', 'generation-ix', NULL, 'ghost', 50, 100, 10, 0, 'physical'),
                    ('armor-cannon', 'generation-ix', NULL, 'fire', 120, 100, 5, 0, 'special'),
                    ('bitter-blade', 'generation-ix', NULL, 'fire', 90, 100, 10, 0, 'physical'),
                    ('double-shock', 'generation-ix', NULL, 'electric', 120, 100, 5, 0, 'physical'),
                    ('gigaton-hammer', 'generation-ix', NULL, 'steel', 160, 100, 5, 0, 'physical'),
                    ('comeuppance', 'generation-ix', NULL, 'dark', 1, 100, 10, 0, 'physical'),
                    ('aqua-cutter', 'generation-ix', NULL, 'water', 70, 100, 20, 0, 'physical'),
                    ('blazing-torque', 'generation-ix', NULL, 'fire', 80, 100, 10, 0, 'physical'),
                    ('wicked-torque', 'generation-ix', NULL, 'dark', 80, 100, 10, 0, 'physical'),
                    ('noxious-torque', 'generation-ix', NULL, 'poison', 100, 100, 10, 0, 'physical'),
                    ('combat-torque', 'generation-ix', NULL, 'fighting', 100, 100, 10, 0, 'physical'),
                    ('magical-torque', 'generation-ix', NULL, 'fairy', 100, 100, 10, 0, 'physical'),
                    ('blood-moon', 'generation-ix', NULL, 'normal', 140, 100, 5, 0, 'special'),
                    ('matcha-gotcha', 'generation-ix', NULL, 'grass', 80, 90, 15, 0, 'special'),
                    ('syrup-bomb', 'generation-ix', NULL, 'grass', 60, 85, 10, 0, 'special'),
                    ('ivy-cudgel', 'generation-ix', NULL, 'grass', 100, 100, 10, 0, 'physical'),
                    ('electro-shot', 'generation-ix', NULL, 'electric', 130, 100, 10, 0, 'special'),
                    ('tera-starstorm', 'generation-ix', NULL, 'normal', 120, 100, 5, 0, 'special'),
                    ('fickle-beam', 'generation-ix', NULL, 'dragon', 80, 100, 5, 0, 'special'),
                    ('burning-bulwark', 'generation-ix', NULL, 'fire', 0, 0, 10, 4, 'status'),
                    ('thunderclap', 'generation-ix', NULL, 'electric', 70, 100, 5, 1, 'special'),
                    ('mighty-cleave', 'generation-ix', NULL, 'rock', 95, 100, 5, 0, 'physical'),
                    ('tachyon-cutter', 'generation-ix', NULL, 'steel', 50, 0, 10, 0, 'special'),
                    ('hard-press', 'generation-ix', NULL, 'steel', 0, 100, 10, 0, 'physical'),
                    ('dragon-cheer', 'generation-ix', NULL, 'dragon', 0, 0, 15, 0, 'status'),
                    ('alluring-voice', 'generation-ix', NULL, 'fairy', 80, 100, 10, 0, 'special'),
                    ('temper-flare', 'generation-ix', NULL, 'fire', 75, 100, 10, 0, 'physical'),
                    ('supercell-slam', 'generation-ix', NULL, 'electric', 100, 95, 15, 0, 'physical'),
                    ('psychic-noise', 'generation-ix', NULL, 'psychic', 75, 100, 10, 0, 'special'),
                    ('upper-hand', 'generation-ix', NULL, 'fighting', 65, 100, 15, 3, 'physical'),
                    ('malignant-chain', 'generation-ix', NULL, 'poison', 100, 100, 5, 0, 'special')
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