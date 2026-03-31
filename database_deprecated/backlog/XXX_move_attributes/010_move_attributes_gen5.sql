-- Generated from PokeAPI (/move) -> move_attributes
-- Generated at: 2025-10-25T19:50:48.259Z
WITH
    m AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('hone-claws', 'generation-v', NULL, 'dark', NULL, NULL, 15, 0, 'status'),
                    ('wide-guard', 'generation-v', NULL, 'rock', NULL, NULL, 10, 3, 'status'),
                    ('guard-split', 'generation-v', NULL, 'psychic', NULL, NULL, 10, 0, 'status'),
                    ('power-split', 'generation-v', NULL, 'psychic', NULL, NULL, 10, 0, 'status'),
                    ('wonder-room', 'generation-v', NULL, 'psychic', NULL, NULL, 10, 0, 'status'),
                    ('psyshock', 'generation-v', NULL, 'psychic', 80, 100, 10, 0, 'special'),
                    ('venoshock', 'generation-v', NULL, 'poison', 65, 100, 10, 0, 'special'),
                    ('autotomize', 'generation-v', NULL, 'steel', NULL, NULL, 15, 0, 'status'),
                    ('rage-powder', 'generation-v', NULL, 'bug', NULL, NULL, 20, 2, 'status'),
                    ('telekinesis', 'generation-v', NULL, 'psychic', NULL, NULL, 15, 0, 'status'),
                    ('magic-room', 'generation-v', NULL, 'psychic', NULL, NULL, 10, 0, 'status'),
                    ('smack-down', 'generation-v', NULL, 'rock', 50, 100, 15, 0, 'physical'),
                    ('storm-throw', 'generation-v', NULL, 'fighting', 60, 100, 10, 0, 'physical'),
                    ('flame-burst', 'generation-v', NULL, 'fire', 70, 100, 15, 0, 'special'),
                    ('sludge-wave', 'generation-v', NULL, 'poison', 95, 100, 10, 0, 'special'),
                    ('quiver-dance', 'generation-v', NULL, 'bug', NULL, NULL, 20, 0, 'status'),
                    ('heavy-slam', 'generation-v', NULL, 'steel', NULL, 100, 10, 0, 'physical'),
                    ('synchronoise', 'generation-v', NULL, 'psychic', 120, 100, 10, 0, 'special'),
                    ('electro-ball', 'generation-v', NULL, 'electric', NULL, 100, 10, 0, 'special'),
                    ('soak', 'generation-v', NULL, 'water', NULL, 100, 20, 0, 'status'),
                    ('flame-charge', 'generation-v', NULL, 'fire', 50, 100, 20, 0, 'physical'),
                    ('coil', 'generation-v', NULL, 'poison', NULL, NULL, 20, 0, 'status'),
                    ('low-sweep', 'generation-v', NULL, 'fighting', 65, 100, 20, 0, 'physical'),
                    ('acid-spray', 'generation-v', NULL, 'poison', 40, 100, 20, 0, 'special'),
                    ('foul-play', 'generation-v', NULL, 'dark', 95, 100, 15, 0, 'physical'),
                    ('simple-beam', 'generation-v', NULL, 'normal', NULL, 100, 15, 0, 'status'),
                    ('entrainment', 'generation-v', NULL, 'normal', NULL, 100, 15, 0, 'status'),
                    ('after-you', 'generation-v', NULL, 'normal', NULL, NULL, 15, 0, 'status'),
                    ('round', 'generation-v', NULL, 'normal', 60, 100, 15, 0, 'special'),
                    ('echoed-voice', 'generation-v', NULL, 'normal', 40, 100, 15, 0, 'special'),
                    ('chip-away', 'generation-v', NULL, 'normal', 70, 100, 20, 0, 'physical'),
                    ('clear-smog', 'generation-v', NULL, 'poison', 50, NULL, 15, 0, 'special'),
                    ('stored-power', 'generation-v', NULL, 'psychic', 20, 100, 10, 0, 'special'),
                    ('quick-guard', 'generation-v', NULL, 'fighting', NULL, NULL, 15, 3, 'status'),
                    ('ally-switch', 'generation-v', NULL, 'psychic', NULL, NULL, 15, 2, 'status'),
                    ('scald', 'generation-v', NULL, 'water', 80, 100, 15, 0, 'special'),
                    ('shell-smash', 'generation-v', NULL, 'normal', NULL, NULL, 15, 0, 'status'),
                    ('heal-pulse', 'generation-v', NULL, 'psychic', NULL, NULL, 10, 0, 'status'),
                    ('hex', 'generation-v', NULL, 'ghost', 65, 100, 10, 0, 'special'),
                    ('sky-drop', 'generation-v', NULL, 'flying', 60, 100, 10, 0, 'physical'),
                    ('shift-gear', 'generation-v', NULL, 'steel', NULL, NULL, 10, 0, 'status'),
                    ('circle-throw', 'generation-v', NULL, 'fighting', 60, 90, 10, -6, 'physical'),
                    ('incinerate', 'generation-v', NULL, 'fire', 60, 100, 15, 0, 'special'),
                    ('quash', 'generation-v', NULL, 'dark', NULL, 100, 15, 0, 'status'),
                    ('acrobatics', 'generation-v', NULL, 'flying', 55, 100, 15, 0, 'physical'),
                    ('reflect-type', 'generation-v', NULL, 'normal', NULL, NULL, 15, 0, 'status'),
                    ('retaliate', 'generation-v', NULL, 'normal', 70, 100, 5, 0, 'physical'),
                    ('final-gambit', 'generation-v', NULL, 'fighting', NULL, 100, 5, 0, 'special'),
                    ('bestow', 'generation-v', NULL, 'normal', NULL, NULL, 15, 0, 'status'),
                    ('inferno', 'generation-v', NULL, 'fire', 100, 50, 5, 0, 'special'),
                    ('water-pledge', 'generation-v', NULL, 'water', 80, 100, 10, 0, 'special'),
                    ('fire-pledge', 'generation-v', NULL, 'fire', 80, 100, 10, 0, 'special'),
                    ('grass-pledge', 'generation-v', NULL, 'grass', 80, 100, 10, 0, 'special'),
                    ('volt-switch', 'generation-v', NULL, 'electric', 70, 100, 20, 0, 'special'),
                    ('struggle-bug', 'generation-v', NULL, 'bug', 50, 100, 20, 0, 'special'),
                    ('bulldoze', 'generation-v', NULL, 'ground', 60, 100, 20, 0, 'physical'),
                    ('frost-breath', 'generation-v', NULL, 'ice', 60, 90, 10, 0, 'special'),
                    ('dragon-tail', 'generation-v', NULL, 'dragon', 60, 90, 10, -6, 'physical'),
                    ('work-up', 'generation-v', NULL, 'normal', NULL, NULL, 30, 0, 'status'),
                    ('electroweb', 'generation-v', NULL, 'electric', 55, 95, 15, 0, 'special'),
                    ('wild-charge', 'generation-v', NULL, 'electric', 90, 100, 15, 0, 'physical'),
                    ('drill-run', 'generation-v', NULL, 'ground', 80, 95, 10, 0, 'physical'),
                    ('dual-chop', 'generation-v', NULL, 'dragon', 40, 90, 15, 0, 'physical'),
                    ('heart-stamp', 'generation-v', NULL, 'psychic', 60, 100, 25, 0, 'physical'),
                    ('horn-leech', 'generation-v', NULL, 'grass', 75, 100, 10, 0, 'physical'),
                    ('sacred-sword', 'generation-v', NULL, 'fighting', 90, 100, 15, 0, 'physical'),
                    ('razor-shell', 'generation-v', NULL, 'water', 75, 95, 10, 0, 'physical'),
                    ('heat-crash', 'generation-v', NULL, 'fire', NULL, 100, 10, 0, 'physical'),
                    ('leaf-tornado', 'generation-v', NULL, 'grass', 65, 90, 10, 0, 'special'),
                    ('steamroller', 'generation-v', NULL, 'bug', 65, 100, 20, 0, 'physical'),
                    ('cotton-guard', 'generation-v', NULL, 'grass', NULL, NULL, 10, 0, 'status'),
                    ('night-daze', 'generation-v', NULL, 'dark', 85, 95, 10, 0, 'special'),
                    ('psystrike', 'generation-v', NULL, 'psychic', 100, 100, 10, 0, 'special'),
                    ('tail-slap', 'generation-v', NULL, 'normal', 25, 85, 10, 0, 'physical'),
                    ('hurricane', 'generation-v', NULL, 'flying', 110, 70, 10, 0, 'special'),
                    ('head-charge', 'generation-v', NULL, 'normal', 120, 100, 15, 0, 'physical'),
                    ('gear-grind', 'generation-v', NULL, 'steel', 50, 85, 15, 0, 'physical'),
                    ('searing-shot', 'generation-v', NULL, 'fire', 100, 100, 5, 0, 'special'),
                    ('techno-blast', 'generation-v', NULL, 'normal', 120, 100, 5, 0, 'special'),
                    ('relic-song', 'generation-v', NULL, 'normal', 75, 100, 10, 0, 'special'),
                    ('secret-sword', 'generation-v', NULL, 'fighting', 85, 100, 10, 0, 'special'),
                    ('glaciate', 'generation-v', NULL, 'ice', 65, 95, 10, 0, 'special'),
                    ('bolt-strike', 'generation-v', NULL, 'electric', 130, 85, 5, 0, 'physical'),
                    ('blue-flare', 'generation-v', NULL, 'fire', 130, 85, 5, 0, 'special'),
                    ('fiery-dance', 'generation-v', NULL, 'fire', 80, 100, 10, 0, 'special'),
                    ('freeze-shock', 'generation-v', NULL, 'ice', 140, 90, 5, 0, 'physical'),
                    ('ice-burn', 'generation-v', NULL, 'ice', 140, 90, 5, 0, 'special'),
                    ('snarl', 'generation-v', NULL, 'dark', 55, 95, 15, 0, 'special'),
                    ('icicle-crash', 'generation-v', NULL, 'ice', 85, 90, 10, 0, 'physical'),
                    ('v-create', 'generation-v', NULL, 'fire', 180, 95, 5, 0, 'physical'),
                    ('fusion-flare', 'generation-v', NULL, 'fire', 100, 100, 5, 0, 'special'),
                    ('fusion-bolt', 'generation-v', NULL, 'electric', 100, 100, 5, 0, 'physical')
            ) AS m (move_slug, generation_start_slug, version_group_start_slug, type_slug, power, accuracy, pp, priority, damage_class)
    )
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, version_group_start_id, type_id, power, accuracy, pp, priority, damage_class)
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
        ELSE CAST(m.damage_class AS meta.move_damage_class)
    END
FROM
    m
    LEFT JOIN meta.moves mv ON mv.slug = m.move_slug
    JOIN meta.generations gen ON gen.slug = m.generation_start_slug
    LEFT JOIN meta.version_groups vg ON vg.slug = m.version_group_start_slug
    LEFT JOIN meta.types typ ON typ.slug = m.type_slug ON CONFLICT (move_id, generation_start_id, version_group_start_id) DO NOTHING;