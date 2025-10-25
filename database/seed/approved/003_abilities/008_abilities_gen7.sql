-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('stamina', 'Stamina', 192, 'generation-vii', 'Raises this Pokémon''s Defense by one stage when it takes damage from a move.'),
                    ('wimp-out', 'Wimp Out', 193, 'generation-vii', 'This Pokémon automatically switches out when its HP drops below half.'),
                    ('emergency-exit', 'Emergency Exit', 194, 'generation-vii', 'This Pokémon automatically switches out when its HP drops below half.'),
                    ('water-compaction', 'Water Compaction', 195, 'generation-vii', 'Raises this Pokémon''s Defense by two stages when it''s hit by a Water move.'),
                    ('merciless', 'Merciless', 196, 'generation-vii', 'This Pokémon''s moves critical hit against poisoned targets.'),
                    ('shields-down', 'Shields Down', 197, 'generation-vii', 'Transforms this Minior between Core Form and Meteor Form. Prevents major status ailments and drowsiness while in Meteor Form.'),
                    ('stakeout', 'Stakeout', 198, 'generation-vii', 'This Pokémon''s moves have double power against Pokémon that switched in this turn.'),
                    ('water-bubble', 'Water Bubble', 199, 'generation-vii', 'Halves damage from Fire moves, doubles damage of Water moves, and prevents burns.'),
                    ('steelworker', 'Steelworker', 200, 'generation-vii', 'This Pokémon''s Steel moves have 1.5x power.'),
                    ('berserk', 'Berserk', 201, 'generation-vii', 'Raises this Pokémon''s Special Attack by one stage every time its HP drops below half.'),
                    ('slush-rush', 'Slush Rush', 202, 'generation-vii', 'During Hail, this Pokémon has double Speed.'),
                    ('long-reach', 'Long Reach', 203, 'generation-vii', 'This Pokémon''s moves do not make contact.'),
                    ('liquid-voice', 'Liquid Voice', 204, 'generation-vii', 'Sound-based moves become Water-type.'),
                    ('triage', 'Triage', 205, 'generation-vii', 'This Pokémon''s healing moves have their priority increased by 3.'),
                    ('galvanize', 'Galvanize', 206, 'generation-vii', 'This Pokémon''s Normal moves are Electric and have their power increased to 1.2x.'),
                    ('surge-surfer', 'Surge Surfer', 207, 'generation-vii', 'Doubles this Pokémon''s Speed on Electric Terrain.'),
                    ('schooling', 'Schooling', 208, 'generation-vii', 'Wishiwashi becomes Schooling Form when its HP is 25% or higher.'),
                    ('disguise', 'Disguise', 209, 'generation-vii', 'Prevents the first instance of battle damage.'),
                    ('battle-bond', 'Battle Bond', 210, 'generation-vii', 'Transforms this Pokémon into Ash-Greninja after fainting an opponent. Water Shuriken''s power is 20 and always hits three times.'),
                    ('power-construct', 'Power Construct', 211, 'generation-vii', 'Transforms 10% or 50% Zygarde into Complete Forme when its HP is below 50%.'),
                    ('corrosion', 'Corrosion', 212, 'generation-vii', 'This Pokémon can inflict poison on Poison and Steel Pokémon.'),
                    ('comatose', 'Comatose', 213, 'generation-vii', 'This Pokémon always acts as though it were Asleep.'),
                    ('queenly-majesty', 'Queenly Majesty', 214, 'generation-vii', 'Opposing Pokémon cannot use priority attacks.'),
                    ('innards-out', 'Innards Out', 215, 'generation-vii', 'When this Pokémon faints from an opponent''s move, that opponent takes damage equal to the HP this Pokémon had remaining.'),
                    ('dancer', 'Dancer', 216, 'generation-vii', 'Whenever another Pokémon uses a dance move, this Pokémon will use the same move immediately afterwards.'),
                    ('battery', 'Battery', 217, 'generation-vii', 'Ally Pokémon''s moves have their power increased to 1.3x.'),
                    ('fluffy', 'Fluffy', 218, 'generation-vii', 'Damage from contact moves is halved. Damage from Fire moves is doubled.'),
                    ('dazzling', 'Dazzling', 219, 'generation-vii', 'Opposing Pokémon cannot use priority attacks.'),
                    ('soul-heart', 'Soul Heart', 220, 'generation-vii', 'This Pokémon''s Special Attack rises by one stage every time any Pokémon faints.'),
                    ('tangling-hair', 'Tangling Hair', 221, 'generation-vii', 'When this Pokémon takes regular damage from a contact move, the attacking Pokémon''s Speed lowers by one stage.'),
                    ('receiver', 'Receiver', 222, 'generation-vii', 'When an ally faints, this Pokémon gains its Ability.'),
                    ('power-of-alchemy', 'Power Of Alchemy', 223, 'generation-vii', 'When an ally faints, this Pokémon gains its Ability.'),
                    ('beast-boost', 'Beast Boost', 224, 'generation-vii', 'Raises this Pokémon''s highest stat by one stage when it faints another Pokémon.'),
                    ('rks-system', 'Rks System', 225, 'generation-vii', 'Changes this Pokémon''s type to match its held Memory.'),
                    ('electric-surge', 'Electric Surge', 226, 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Electric Terrain.'),
                    ('psychic-surge', 'Psychic Surge', 227, 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Psychic Terrain.'),
                    ('misty-surge', 'Misty Surge', 228, 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Misty Terrain.'),
                    ('grassy-surge', 'Grassy Surge', 229, 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Grassy Terrain.'),
                    ('full-metal-body', 'Full Metal Body', 230, 'generation-vii', 'Other Pokémon cannot lower this Pokémon''s stats.'),
                    ('shadow-shield', 'Shadow Shield', 231, 'generation-vii', 'When this Pokémon has full HP, regular damage from moves is halved.'),
                    ('prism-armor', 'Prism Armor', 232, 'generation-vii', 'Reduces super-effective damage to 0.75x.'),
                    ('neuroforce', 'Neuroforce', 233, 'generation-vii', 'Increases super-effective damage dealt to 1.25x.')
            ) AS a (slug, name, external_id, generation_introduced_slug, effect)
    )
INSERT INTO
    dex.abilities (slug, name, external_id, generation_introduced_id, effect)
SELECT
    a.slug,
    a.name,
    a.external_id,
    gen.id,
    a.effect
FROM
    a
    JOIN meta.generations gen ON gen.slug = a.generation_introduced_slug ON CONFLICT (slug) DO NOTHING;