-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('tangled-feet', 'Tangled Feet', 'generation-iv', 'Doubles evasion when confused.'),
                    ('motor-drive', 'Motor Drive', 'generation-iv', 'Absorbs electric moves, raising Speed one stage.'),
                    ('rivalry', 'Rivalry', 'generation-iv', 'Increases damage inflicted to 1.25x against Pokémon of the same gender, but decreases damage to 0.75x against the opposite gender.'),
                    ('steadfast', 'Steadfast', 'generation-iv', 'Raises Speed one stage upon flinching.'),
                    ('snow-cloak', 'Snow Cloak', 'generation-iv', 'Increases evasion to 1.25x during hail.  Protects against hail damage.'),
                    ('gluttony', 'Gluttony', 'generation-iv', 'Makes the Pokémon eat any held Berry triggered by low HP below 1/2 its max HP.'),
                    ('anger-point', 'Anger Point', 'generation-iv', 'Raises Attack to the maximum of six stages upon receiving a critical hit.'),
                    ('unburden', 'Unburden', 'generation-iv', 'Doubles Speed upon using or losing a held item.'),
                    ('heatproof', 'Heatproof', 'generation-iv', 'Halves damage from fire moves and burns.'),
                    ('simple', 'Simple', 'generation-iv', 'Doubles the Pokémon''s stat modifiers.  These doubled modifiers are still capped at -6 or 6 stages.'),
                    ('dry-skin', 'Dry Skin', 'generation-iv', 'Causes 1/8 max HP in damage each turn during strong sunlight, but heals for 1/8 max HP during rain.  Increases damage from fire moves to 1.25x, but absorbs water moves, healing for 1/4 max HP.'),
                    ('download', 'Download', 'generation-iv', 'Raises the attack stat corresponding to the opponents'' weaker defense one stage upon entering battle.'),
                    ('iron-fist', 'Iron Fist', 'generation-iv', 'Strengthens punch-based moves to 1.2x their power.'),
                    ('poison-heal', 'Poison Heal', 'generation-iv', 'Heals for 1/8 max HP after each turn when poisoned in place of damage.'),
                    ('adaptability', 'Adaptability', 'generation-iv', 'Increases the same-type attack bonus from 1.5x to 2x.'),
                    ('skill-link', 'Skill Link', 'generation-iv', 'Extends two-to-five-hit moves and triple kick to their full length every time.'),
                    ('hydration', 'Hydration', 'generation-iv', 'Cures any major status ailment after each turn during rain.'),
                    ('solar-power', 'Solar Power', 'generation-iv', 'Increases Special Attack to 1.5x but costs 1/8 max HP after each turn during strong sunlight.'),
                    ('quick-feet', 'Quick Feet', 'generation-iv', 'Increases Speed to 1.5x with a major status ailment.'),
                    ('normalize', 'Normalize', 'generation-iv', 'Makes the Pokémon''s moves all act normal-type.'),
                    ('sniper', 'Sniper', 'generation-iv', 'Strengthens critical hits to inflict 3x damage rather than 2x.'),
                    ('magic-guard', 'Magic Guard', 'generation-iv', 'Protects against damage not directly caused by a move.'),
                    ('no-guard', 'No Guard', 'generation-iv', 'Ensures all moves used by and against the Pokémon hit.'),
                    ('stall', 'Stall', 'generation-iv', 'Makes the Pokémon move last within its move''s priority bracket.'),
                    ('technician', 'Technician', 'generation-iv', 'Strengthens moves of 60 base power or less to 1.5x their power.'),
                    ('leaf-guard', 'Leaf Guard', 'generation-iv', 'Protects against major status ailments during strong sunlight.'),
                    ('klutz', 'Klutz', 'generation-iv', 'Prevents the Pokémon from using its held item in battle.'),
                    ('mold-breaker', 'Mold Breaker', 'generation-iv', 'Bypasses targets'' abilities if they could hinder or prevent a move.'),
                    ('super-luck', 'Super Luck', 'generation-iv', 'Raises moves'' critical hit rates one stage.'),
                    ('aftermath', 'Aftermath', 'generation-iv', 'Damages the attacker for 1/4 its max HP when knocked out by a contact move.'),
                    ('anticipation', 'Anticipation', 'generation-iv', 'Notifies all trainers upon entering battle if an opponent has a super-effective move, self destruct, explosion, or a one-hit KO move.'),
                    ('forewarn', 'Forewarn', 'generation-iv', 'Reveals the opponents'' strongest move upon entering battle.'),
                    ('unaware', 'Unaware', 'generation-iv', 'Ignores other Pokémon''s stat modifiers for damage and accuracy calculation.'),
                    ('tinted-lens', 'Tinted Lens', 'generation-iv', 'Doubles damage inflicted with not-very-effective moves.'),
                    ('filter', 'Filter', 'generation-iv', 'Decreases damage taken from super-effective moves by 1/4.'),
                    ('slow-start', 'Slow Start', 'generation-iv', 'Halves Attack and Speed for five turns upon entering battle.'),
                    ('scrappy', 'Scrappy', 'generation-iv', 'Lets the Pokémon''s normal and fighting moves hit ghost Pokémon.'),
                    ('storm-drain', 'Storm Drain', 'generation-iv', 'Redirects single-target water moves to this Pokémon where possible.  Absorbs Water moves, raising Special Attack one stage.'),
                    ('ice-body', 'Ice Body', 'generation-iv', 'Heals for 1/16 max HP after each turn during hail.  Protects against hail damage.'),
                    ('solid-rock', 'Solid Rock', 'generation-iv', 'Decreases damage taken from super-effective moves by 1/4.'),
                    ('snow-warning', 'Snow Warning', 'generation-iv', 'Summons hail that lasts indefinitely upon entering battle.'),
                    ('honey-gather', 'Honey Gather', 'generation-iv', 'The Pokémon may pick up honey after battle.'),
                    ('frisk', 'Frisk', 'generation-iv', 'Reveals an opponent''s held item upon entering battle.'),
                    ('reckless', 'Reckless', 'generation-iv', 'Strengthens recoil moves to 1.2x their power.'),
                    ('multitype', 'Multitype', 'generation-iv', 'Changes arceus''s type and form to match its held Plate.'),
                    ('flower-gift', 'Flower Gift', 'generation-iv', 'Increases friendly Pokémon''s Attack and Special Defense to 1.5x during strong sunlight.'),
                    ('bad-dreams', 'Bad Dreams', 'generation-iv', 'Damages sleeping opponents for 1/8 their max HP after each turn.'),
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