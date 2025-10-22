-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('stamina', 'Stamina', 'generation-vii', 'Raises this Pokémon''s Defense by one stage when it takes damage from a move.'),
                    ('wimp-out', 'Wimp Out', 'generation-vii', 'This Pokémon automatically switches out when its HP drops below half.'),
                    ('emergency-exit', 'Emergency Exit', 'generation-vii', 'This Pokémon automatically switches out when its HP drops below half.'),
                    ('water-compaction', 'Water Compaction', 'generation-vii', 'Raises this Pokémon''s Defense by two stages when it''s hit by a Water move.'),
                    ('merciless', 'Merciless', 'generation-vii', 'This Pokémon''s moves critical hit against poisoned targets.'),
                    ('shields-down', 'Shields Down', 'generation-vii', 'Transforms this Minior between Core Form and Meteor Form.  Prevents major status ailments and drowsiness while in Meteor Form.'),
                    ('stakeout', 'Stakeout', 'generation-vii', 'This Pokémon''s moves have double power against Pokémon that switched in this turn.'),
                    ('water-bubble', 'Water Bubble', 'generation-vii', 'Halves damage from Fire moves, doubles damage of Water moves, and prevents burns.'),
                    ('steelworker', 'Steelworker', 'generation-vii', 'This Pokémon''s Steel moves have 1.5x power.'),
                    ('berserk', 'Berserk', 'generation-vii', 'Raises this Pokémon''s Special Attack by one stage every time its HP drops below half.'),
                    ('slush-rush', 'Slush Rush', 'generation-vii', 'During Hail, this Pokémon has double Speed.'),
                    ('long-reach', 'Long Reach', 'generation-vii', 'This Pokémon''s moves do not make contact.'),
                    ('liquid-voice', 'Liquid Voice', 'generation-vii', 'Sound-based moves become Water-type.'),
                    ('triage', 'Triage', 'generation-vii', 'This Pokémon''s healing moves have their priority increased by 3.'),
                    ('galvanize', 'Galvanize', 'generation-vii', 'This Pokémon''s Normal moves are Electric and have their power increased to 1.2x.'),
                    ('surge-surfer', 'Surge Surfer', 'generation-vii', 'Doubles this Pokémon''s Speed on Electric Terrain.'),
                    ('schooling', 'Schooling', 'generation-vii', 'Wishiwashi becomes Schooling Form when its HP is 25% or higher.'),
                    ('disguise', 'Disguise', 'generation-vii', 'Prevents the first instance of battle damage.'),
                    ('battle-bond', 'Battle Bond', 'generation-vii', 'Transforms this Pokémon into Ash-Greninja after fainting an opponent.  Water Shuriken''s power is 20 and always hits three times.'),
                    ('power-construct', 'Power Construct', 'generation-vii', 'Transforms 10% or 50% Zygarde into Complete Forme when its HP is below 50%.'),
                    ('corrosion', 'Corrosion', 'generation-vii', 'This Pokémon can inflict poison on Poison and Steel Pokémon.'),
                    ('comatose', 'Comatose', 'generation-vii', 'This Pokémon always  acts as though it were Asleep.'),
                    ('queenly-majesty', 'Queenly Majesty', 'generation-vii', 'Opposing Pokémon cannot use priority attacks.'),
                    ('innards-out', 'Innards Out', 'generation-vii', 'When this Pokémon faints from an opponent''s move, that opponent takes damage equal to the HP this Pokémon had remaining.'),
                    ('dancer', 'Dancer', 'generation-vii', 'Whenever another Pokémon uses a dance move, this Pokémon will use the same move immediately afterwards.'),
                    ('battery', 'Battery', 'generation-vii', 'Ally Pokémon''s moves have their power increased to 1.3x.'),
                    ('fluffy', 'Fluffy', 'generation-vii', 'Damage from contact moves is halved.  Damage from Fire moves is doubled.'),
                    ('dazzling', 'Dazzling', 'generation-vii', 'Opposing Pokémon cannot use priority attacks.'),
                    ('soul-heart', 'Soul Heart', 'generation-vii', 'This Pokémon''s Special Attack rises by one stage every time any Pokémon faints.'),
                    ('tangling-hair', 'Tangling Hair', 'generation-vii', 'When this Pokémon takes regular damage from a contact move, the attacking Pokémon''s Speed lowers by one stage.'),
                    ('receiver', 'Receiver', 'generation-vii', 'When an ally faints, this Pokémon gains its Ability.'),
                    ('power-of-alchemy', 'Power Of Alchemy', 'generation-vii', 'When an ally faints, this Pokémon gains its Ability.'),
                    ('beast-boost', 'Beast Boost', 'generation-vii', 'Raises this Pokémon''s highest stat by one stage when it faints another Pokémon.'),
                    ('rks-system', 'Rks System', 'generation-vii', 'Changes this Pokémon''s type to match its held Memory.'),
                    ('electric-surge', 'Electric Surge', 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Electric Terrain.'),
                    ('psychic-surge', 'Psychic Surge', 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Psychic Terrain.'),
                    ('misty-surge', 'Misty Surge', 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Misty Terrain.'),
                    ('grassy-surge', 'Grassy Surge', 'generation-vii', 'When this Pokémon enters battle, it changes the terrain to Grassy Terrain.'),
                    ('full-metal-body', 'Full Metal Body', 'generation-vii', 'Other Pokémon cannot lower this Pokémon''s stats.'),
                    ('shadow-shield', 'Shadow Shield', 'generation-vii', 'When this Pokémon has full HP, regular damage from moves is halved.'),
                    ('prism-armor', 'Prism Armor', 'generation-vii', 'Reduces super-effective damage to 0.75x.'),
                    ('neuroforce', 'Neuroforce', 'generation-vii', 'Increases super-effective damage dealt to 1.25x.'),
            ) AS a (slug, name, generation_introduced_slug, effect)
    )
INSERT INTO
    dex.abilities (slug, name, generation_introduced_id, effect)
SELECT
    a.slug,
    a.name,
    gen.id,
    a.effect
FROM
    a
    JOIN meta.generations gen ON gen.slug = a.generation_introduced_slug ON CONFLICT (slug) DO NOTHING;