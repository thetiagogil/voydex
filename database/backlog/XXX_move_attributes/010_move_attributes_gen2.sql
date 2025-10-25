-- Generated from PokeAPI (/move) -> move_attributes
-- Generated at: 2025-10-25T19:50:48.259Z
WITH
    m AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('sketch', 'generation-ii', NULL, 'normal', NULL, NULL, 1, 0, 'status'),
                    ('triple-kick', 'generation-ii', NULL, 'fighting', 10, 90, 10, 0, 'physical'),
                    ('thief', 'generation-ii', NULL, 'dark', 60, 100, 25, 0, 'physical'),
                    ('spider-web', 'generation-ii', NULL, 'bug', NULL, NULL, 10, 0, 'status'),
                    ('mind-reader', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('nightmare', 'generation-ii', NULL, 'ghost', NULL, 100, 15, 0, 'status'),
                    ('flame-wheel', 'generation-ii', NULL, 'fire', 60, 100, 25, 0, 'physical'),
                    ('snore', 'generation-ii', NULL, 'normal', 50, 100, 15, 0, 'special'),
                    ('curse', 'generation-ii', NULL, 'ghost', NULL, NULL, 10, 0, 'status'),
                    ('flail', 'generation-ii', NULL, 'normal', NULL, 100, 15, 0, 'physical'),
                    ('conversion-2', 'generation-ii', NULL, 'normal', NULL, NULL, 30, 0, 'status'),
                    ('aeroblast', 'generation-ii', NULL, 'flying', 100, 95, 5, 0, 'special'),
                    ('cotton-spore', 'generation-ii', NULL, 'grass', NULL, 100, 40, 0, 'status'),
                    ('reversal', 'generation-ii', NULL, 'fighting', NULL, 100, 15, 0, 'physical'),
                    ('spite', 'generation-ii', NULL, 'ghost', NULL, 100, 10, 0, 'status'),
                    ('powder-snow', 'generation-ii', NULL, 'ice', 40, 100, 25, 0, 'special'),
                    ('protect', 'generation-ii', NULL, 'normal', NULL, NULL, 10, 4, 'status'),
                    ('mach-punch', 'generation-ii', NULL, 'fighting', 40, 100, 30, 1, 'physical'),
                    ('scary-face', 'generation-ii', NULL, 'normal', NULL, 100, 10, 0, 'status'),
                    ('feint-attack', 'generation-ii', NULL, 'dark', 60, NULL, 20, 0, 'physical'),
                    ('sweet-kiss', 'generation-ii', NULL, 'fairy', NULL, 75, 10, 0, 'status'),
                    ('belly-drum', 'generation-ii', NULL, 'normal', NULL, NULL, 10, 0, 'status'),
                    ('sludge-bomb', 'generation-ii', NULL, 'poison', 90, 100, 10, 0, 'special'),
                    ('mud-slap', 'generation-ii', NULL, 'ground', 20, 100, 10, 0, 'special'),
                    ('octazooka', 'generation-ii', NULL, 'water', 65, 85, 10, 0, 'special'),
                    ('spikes', 'generation-ii', NULL, 'ground', NULL, NULL, 20, 0, 'status'),
                    ('zap-cannon', 'generation-ii', NULL, 'electric', 120, 50, 5, 0, 'special'),
                    ('foresight', 'generation-ii', NULL, 'normal', NULL, NULL, 40, 0, 'status'),
                    ('destiny-bond', 'generation-ii', NULL, 'ghost', NULL, NULL, 5, 0, 'status'),
                    ('perish-song', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('icy-wind', 'generation-ii', NULL, 'ice', 55, 95, 15, 0, 'special'),
                    ('detect', 'generation-ii', NULL, 'fighting', NULL, NULL, 5, 4, 'status'),
                    ('bone-rush', 'generation-ii', NULL, 'ground', 25, 90, 10, 0, 'physical'),
                    ('lock-on', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('outrage', 'generation-ii', NULL, 'dragon', 120, 100, 10, 0, 'physical'),
                    ('sandstorm', 'generation-ii', NULL, 'rock', NULL, NULL, 10, 0, 'status'),
                    ('giga-drain', 'generation-ii', NULL, 'grass', 75, 100, 10, 0, 'special'),
                    ('endure', 'generation-ii', NULL, 'normal', NULL, NULL, 10, 4, 'status'),
                    ('charm', 'generation-ii', NULL, 'fairy', NULL, 100, 20, 0, 'status'),
                    ('rollout', 'generation-ii', NULL, 'rock', 30, 90, 20, 0, 'physical'),
                    ('false-swipe', 'generation-ii', NULL, 'normal', 40, 100, 40, 0, 'physical'),
                    ('swagger', 'generation-ii', NULL, 'normal', NULL, 85, 15, 0, 'status'),
                    ('milk-drink', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('spark', 'generation-ii', NULL, 'electric', 65, 100, 20, 0, 'physical'),
                    ('fury-cutter', 'generation-ii', NULL, 'bug', 40, 95, 20, 0, 'physical'),
                    ('steel-wing', 'generation-ii', NULL, 'steel', 70, 90, 25, 0, 'physical'),
                    ('mean-look', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('attract', 'generation-ii', NULL, 'normal', NULL, 100, 15, 0, 'status'),
                    ('sleep-talk', 'generation-ii', NULL, 'normal', NULL, NULL, 10, 0, 'status'),
                    ('heal-bell', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('return', 'generation-ii', NULL, 'normal', NULL, 100, 20, 0, 'physical'),
                    ('present', 'generation-ii', NULL, 'normal', NULL, 90, 15, 0, 'physical'),
                    ('frustration', 'generation-ii', NULL, 'normal', NULL, 100, 20, 0, 'physical'),
                    ('safeguard', 'generation-ii', NULL, 'normal', NULL, NULL, 25, 0, 'status'),
                    ('pain-split', 'generation-ii', NULL, 'normal', NULL, NULL, 20, 0, 'status'),
                    ('sacred-fire', 'generation-ii', NULL, 'fire', 100, 95, 5, 0, 'physical'),
                    ('magnitude', 'generation-ii', NULL, 'ground', NULL, 100, 30, 0, 'physical'),
                    ('dynamic-punch', 'generation-ii', NULL, 'fighting', 100, 50, 5, 0, 'physical'),
                    ('megahorn', 'generation-ii', NULL, 'bug', 120, 85, 10, 0, 'physical'),
                    ('dragon-breath', 'generation-ii', NULL, 'dragon', 60, 100, 20, 0, 'special'),
                    ('baton-pass', 'generation-ii', NULL, 'normal', NULL, NULL, 40, 0, 'status'),
                    ('encore', 'generation-ii', NULL, 'normal', NULL, 100, 5, 0, 'status'),
                    ('pursuit', 'generation-ii', NULL, 'dark', 40, 100, 20, 0, 'physical'),
                    ('rapid-spin', 'generation-ii', NULL, 'normal', 50, 100, 40, 0, 'physical'),
                    ('sweet-scent', 'generation-ii', NULL, 'normal', NULL, 100, 20, 0, 'status'),
                    ('iron-tail', 'generation-ii', NULL, 'steel', 100, 75, 15, 0, 'physical'),
                    ('metal-claw', 'generation-ii', NULL, 'steel', 50, 95, 35, 0, 'physical'),
                    ('vital-throw', 'generation-ii', NULL, 'fighting', 70, NULL, 10, -1, 'physical'),
                    ('morning-sun', 'generation-ii', NULL, 'normal', NULL, NULL, 5, 0, 'status'),
                    ('synthesis', 'generation-ii', NULL, 'grass', NULL, NULL, 5, 0, 'status'),
                    ('moonlight', 'generation-ii', NULL, 'fairy', NULL, NULL, 5, 0, 'status'),
                    ('hidden-power', 'generation-ii', NULL, 'normal', 60, 100, 15, 0, 'special'),
                    ('cross-chop', 'generation-ii', NULL, 'fighting', 100, 80, 5, 0, 'physical'),
                    ('twister', 'generation-ii', NULL, 'dragon', 40, 100, 20, 0, 'special'),
                    ('rain-dance', 'generation-ii', NULL, 'water', NULL, NULL, 5, 0, 'status'),
                    ('sunny-day', 'generation-ii', NULL, 'fire', NULL, NULL, 5, 0, 'status'),
                    ('crunch', 'generation-ii', NULL, 'dark', 80, 100, 15, 0, 'physical'),
                    ('mirror-coat', 'generation-ii', NULL, 'psychic', NULL, 100, 20, -5, 'special'),
                    ('psych-up', 'generation-ii', NULL, 'normal', NULL, NULL, 10, 0, 'status'),
                    ('extreme-speed', 'generation-ii', NULL, 'normal', 80, 100, 5, 2, 'physical'),
                    ('ancient-power', 'generation-ii', NULL, 'rock', 60, 100, 5, 0, 'special'),
                    ('shadow-ball', 'generation-ii', NULL, 'ghost', 80, 100, 15, 0, 'special'),
                    ('future-sight', 'generation-ii', NULL, 'psychic', 120, 100, 10, 0, 'special'),
                    ('rock-smash', 'generation-ii', NULL, 'fighting', 40, 100, 15, 0, 'physical'),
                    ('whirlpool', 'generation-ii', NULL, 'water', 35, 85, 15, 0, 'special'),
                    ('beat-up', 'generation-ii', NULL, 'dark', NULL, 100, 10, 0, 'physical')
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