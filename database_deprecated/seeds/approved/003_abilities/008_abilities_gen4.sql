WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('tangled-feet', 'Tangled Feet', 77, 'generation-iv', 'Doubles evasion when confused.'),
                    ('motor-drive', 'Motor Drive', 78, 'generation-iv', 'Absorbs electric moves, raising Speed one stage.'),
                    ('rivalry', 'Rivalry', 79, 'generation-iv', 'Increases damage inflicted to 1.25x against Pokémon of the same gender, but decreases damage to 0.75x against the opposite gender.'),
                    ('steadfast', 'Steadfast', 80, 'generation-iv', 'Raises Speed one stage upon flinching.'),
                    ('snow-cloak', 'Snow Cloak', 81, 'generation-iv', 'Increases evasion to 1.25x during hail. Protects against hail damage.'),
                    ('gluttony', 'Gluttony', 82, 'generation-iv', 'Makes the Pokémon eat any held Berry triggered by low HP below 1/2 its max HP.'),
                    ('anger-point', 'Anger Point', 83, 'generation-iv', 'Raises Attack to the maximum of six stages upon receiving a critical hit.'),
                    ('unburden', 'Unburden', 84, 'generation-iv', 'Doubles Speed upon using or losing a held item.'),
                    ('heatproof', 'Heatproof', 85, 'generation-iv', 'Halves damage from fire moves and burns.'),
                    ('simple', 'Simple', 86, 'generation-iv', 'Doubles the Pokémon''s stat modifiers. These doubled modifiers are still capped at -6 or 6 stages.'),
                    ('dry-skin', 'Dry Skin', 87, 'generation-iv', 'Causes 1/8 max HP in damage each turn during strong sunlight, but heals for 1/8 max HP during rain. Increases damage from fire moves to 1.25x, but absorbs water moves, healing for 1/4 max HP.'),
                    ('download', 'Download', 88, 'generation-iv', 'Raises the attack stat corresponding to the opponents'' weaker defense one stage upon entering battle.'),
                    ('iron-fist', 'Iron Fist', 89, 'generation-iv', 'Strengthens punch-based moves to 1.2x their power.'),
                    ('poison-heal', 'Poison Heal', 90, 'generation-iv', 'Heals for 1/8 max HP after each turn when poisoned in place of damage.'),
                    ('adaptability', 'Adaptability', 91, 'generation-iv', 'Increases the same-type attack bonus from 1.5x to 2x.'),
                    ('skill-link', 'Skill Link', 92, 'generation-iv', 'Extends two-to-five-hit moves and triple kick to their full length every time.'),
                    ('hydration', 'Hydration', 93, 'generation-iv', 'Cures any major status ailment after each turn during rain.'),
                    ('solar-power', 'Solar Power', 94, 'generation-iv', 'Increases Special Attack to 1.5x but costs 1/8 max HP after each turn during strong sunlight.'),
                    ('quick-feet', 'Quick Feet', 95, 'generation-iv', 'Increases Speed to 1.5x with a major status ailment.'),
                    ('normalize', 'Normalize', 96, 'generation-iv', 'Makes the Pokémon''s moves all act normal-type.'),
                    ('sniper', 'Sniper', 97, 'generation-iv', 'Strengthens critical hits to inflict 3x damage rather than 2x.'),
                    ('magic-guard', 'Magic Guard', 98, 'generation-iv', 'Protects against damage not directly caused by a move.'),
                    ('no-guard', 'No Guard', 99, 'generation-iv', 'Ensures all moves used by and against the Pokémon hit.'),
                    ('stall', 'Stall', 100, 'generation-iv', 'Makes the Pokémon move last within its move''s priority bracket.'),
                    ('technician', 'Technician', 101, 'generation-iv', 'Strengthens moves of 60 base power or less to 1.5x their power.'),
                    ('leaf-guard', 'Leaf Guard', 102, 'generation-iv', 'Protects against major status ailments during strong sunlight.'),
                    ('klutz', 'Klutz', 103, 'generation-iv', 'Prevents the Pokémon from using its held item in battle.'),
                    ('mold-breaker', 'Mold Breaker', 104, 'generation-iv', 'Bypasses targets'' abilities if they could hinder or prevent a move.'),
                    ('super-luck', 'Super Luck', 105, 'generation-iv', 'Raises moves'' critical hit rates one stage.'),
                    ('aftermath', 'Aftermath', 106, 'generation-iv', 'Damages the attacker for 1/4 its max HP when knocked out by a contact move.'),
                    ('anticipation', 'Anticipation', 107, 'generation-iv', 'Notifies all trainers upon entering battle if an opponent has a super-effective move, self destruct, explosion, or a one-hit KO move.'),
                    ('forewarn', 'Forewarn', 108, 'generation-iv', 'Reveals the opponents'' strongest move upon entering battle.'),
                    ('unaware', 'Unaware', 109, 'generation-iv', 'Ignores other Pokémon''s stat modifiers for damage and accuracy calculation.'),
                    ('tinted-lens', 'Tinted Lens', 110, 'generation-iv', 'Doubles damage inflicted with not-very-effective moves.'),
                    ('filter', 'Filter', 111, 'generation-iv', 'Decreases damage taken from super-effective moves by 1/4.'),
                    ('slow-start', 'Slow Start', 112, 'generation-iv', 'Halves Attack and Speed for five turns upon entering battle.'),
                    ('scrappy', 'Scrappy', 113, 'generation-iv', 'Lets the Pokémon''s normal and fighting moves hit ghost Pokémon.'),
                    ('storm-drain', 'Storm Drain', 114, 'generation-iv', 'Redirects single-target water moves to this Pokémon where possible. Absorbs Water moves, raising Special Attack one stage.'),
                    ('ice-body', 'Ice Body', 115, 'generation-iv', 'Heals for 1/16 max HP after each turn during hail. Protects against hail damage.'),
                    ('solid-rock', 'Solid Rock', 116, 'generation-iv', 'Decreases damage taken from super-effective moves by 1/4.'),
                    ('snow-warning', 'Snow Warning', 117, 'generation-iv', 'Summons hail that lasts indefinitely upon entering battle.'),
                    ('honey-gather', 'Honey Gather', 118, 'generation-iv', 'The Pokémon may pick up honey after battle.'),
                    ('frisk', 'Frisk', 119, 'generation-iv', 'Reveals an opponent''s held item upon entering battle.'),
                    ('reckless', 'Reckless', 120, 'generation-iv', 'Strengthens recoil moves to 1.2x their power.'),
                    ('multitype', 'Multitype', 121, 'generation-iv', 'Changes arceus''s type and form to match its held Plate.'),
                    ('flower-gift', 'Flower Gift', 122, 'generation-iv', 'Increases friendly Pokémon''s Attack and Special Defense to 1.5x during strong sunlight.'),
                    ('bad-dreams', 'Bad Dreams', 123, 'generation-iv', 'Damages sleeping opponents for 1/8 their max HP after each turn.')
            ) AS xxx (slug, name, external_id, generation_introduced_slug, effect)
    )
INSERT INTO
    meta.abilities (slug, name, external_id, generation_introduced_id, effect)
SELECT
    xxx.slug,
    xxx.name,
    xxx.external_id,
    gen.id,
    xxx.effect
FROM
    xxx
    JOIN meta.generations gen ON gen.slug = xxx.generation_introduced_slug ON CONFLICT (slug) DO NOTHING;