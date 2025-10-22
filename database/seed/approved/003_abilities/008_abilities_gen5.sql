-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('pickpocket', 'Pickpocket', 'generation-v', 'Steals attacking Pokémon''s held items on contact.'),
                    ('sheer-force', 'Sheer Force', 'generation-v', 'Strengthens moves with extra effects to 1.3x their power, but prevents their extra effects.'),
                    ('contrary', 'Contrary', 'generation-v', 'Inverts stat changes.'),
                    ('unnerve', 'Unnerve', 'generation-v', 'Prevents opposing Pokémon from eating held Berries.'),
                    ('defiant', 'Defiant', 'generation-v', 'Raises Attack two stages upon having any stat lowered.'),
                    ('defeatist', 'Defeatist', 'generation-v', 'Halves Attack and Special Attack at 50% max HP or less.'),
                    ('cursed-body', 'Cursed Body', 'generation-v', 'Has a 30% chance of Disabling any move that hits the Pokémon.'),
                    ('healer', 'Healer', 'generation-v', 'Has a 30% chance of curing each adjacent ally of any major status ailment after each turn.'),
                    ('friend-guard', 'Friend Guard', 'generation-v', 'Decreases all direct damage taken by friendly Pokémon to 0.75x.'),
                    ('weak-armor', 'Weak Armor', 'generation-v', 'Raises Speed and lowers Defense by one stage each upon being hit by a physical move.'),
                    ('heavy-metal', 'Heavy Metal', 'generation-v', 'Doubles the Pokémon''s weight.'),
                    ('light-metal', 'Light Metal', 'generation-v', 'Halves the Pokémon''s weight.'),
                    ('multiscale', 'Multiscale', 'generation-v', 'Halves damage taken from full HP.'),
                    ('toxic-boost', 'Toxic Boost', 'generation-v', 'Increases Attack to 1.5x when poisoned.'),
                    ('flare-boost', 'Flare Boost', 'generation-v', 'Increases Special Attack to 1.5x when burned.'),
                    ('harvest', 'Harvest', 'generation-v', 'Has a 50% chance of restoring a used Berry after each turn if the Pokémon has held no items in the meantime.'),
                    ('telepathy', 'Telepathy', 'generation-v', 'Protects against friendly Pokémon''s damaging moves.'),
                    ('moody', 'Moody', 'generation-v', 'Raises a random stat two stages and lowers another one stage after each turn.'),
                    ('overcoat', 'Overcoat', 'generation-v', 'Protects against damage from weather.'),
                    ('poison-touch', 'Poison Touch', 'generation-v', 'Has a 30% chance of poisoning target Pokémon upon contact.'),
                    ('regenerator', 'Regenerator', 'generation-v', 'Heals for 1/3 max HP upon switching out.'),
                    ('big-pecks', 'Big Pecks', 'generation-v', 'Protects against Defense drops.'),
                    ('sand-rush', 'Sand Rush', 'generation-v', 'Doubles Speed during a sandstorm.  Protects against sandstorm damage.'),
                    ('wonder-skin', 'Wonder Skin', 'generation-v', 'Lowers incoming non-damaging moves'' base accuracy to exactly 50%.'),
                    ('analytic', 'Analytic', 'generation-v', 'Strengthens moves to 1.3x their power when moving last.'),
                    ('illusion', 'Illusion', 'generation-v', 'Takes the appearance of the last conscious party Pokémon upon being sent out until hit by a damaging move.'),
                    ('imposter', 'Imposter', 'generation-v', 'Transforms upon entering battle.'),
                    ('infiltrator', 'Infiltrator', 'generation-v', 'Bypasses light screen, reflect, and safeguard.'),
                    ('mummy', 'Mummy', 'generation-v', 'Changes attacking Pokémon''s abilities to Mummy on contact.'),
                    ('moxie', 'Moxie', 'generation-v', 'Raises Attack one stage upon KOing a Pokémon.'),
                    ('justified', 'Justified', 'generation-v', 'Raises Attack one stage upon taking damage from a dark move.'),
                    ('rattled', 'Rattled', 'generation-v', 'Raises Speed one stage upon being hit by a dark, ghost, or bug move.'),
                    ('magic-bounce', 'Magic Bounce', 'generation-v', 'Reflects most non-damaging moves back at their user.'),
                    ('sap-sipper', 'Sap Sipper', 'generation-v', 'Absorbs grass moves, raising Attack one stage.'),
                    ('prankster', 'Prankster', 'generation-v', 'Raises non-damaging moves'' priority by one stage.'),
                    ('sand-force', 'Sand Force', 'generation-v', 'Strengthens rock, ground, and steel moves to 1.3x their power during a sandstorm.  Protects against sandstorm damage.'),
                    ('iron-barbs', 'Iron Barbs', 'generation-v', 'Damages attacking Pokémon for 1/8 their max HP on contact.'),
                    ('zen-mode', 'Zen Mode', 'generation-v', 'Changes darmanitan''s form after each turn depending on its HP: Zen Mode below 50% max HP, and Standard Mode otherwise.'),
                    ('victory-star', 'Victory Star', 'generation-v', 'Increases moves'' accuracy to 1.1x for friendly Pokémon.'),
                    ('turboblaze', 'Turboblaze', 'generation-v', 'Bypasses targets'' abilities if they could hinder or prevent moves.'),
                    ('teravolt', 'Teravolt', 'generation-v', 'Bypasses targets'' abilities if they could hinder or prevent moves.'),
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