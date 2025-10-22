-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('intrepid-sword', 'Intrepid Sword', 'generation-viii', 'Boosts Attack in battle.'),
                    ('dauntless-shield', 'Dauntless Shield', 'generation-viii', 'Boosts Defense in battle.'),
                    ('libero', 'Libero', 'generation-viii', 'Libero changes the Pokémon''s type to that of its previously used attack.'),
                    ('ball-fetch', 'Ball Fetch', 'generation-viii', 'If the Pokémon is not holding an item, it will fetch the Poké Ball from the first failed throw of the battle.'),
                    ('cotton-down', 'Cotton Down', 'generation-viii', 'When Ignores moves and abilities that draw in moves.'),
                    ('propeller-tail', 'Propeller Tail', 'generation-viii', 'Ignores moves and abilities that draw in moves.'),
                    ('mirror-armor', 'Mirror Armor', 'generation-viii', 'Reflects any stat-lowering effects.'),
                    ('gulp-missile', 'Gulp Missile', 'generation-viii', 'If a Cramorant with Gulp Missile uses Surf or Dive, it catches prey and changes its form depending on its remaining HP.'),
                    ('stalwart', 'Stalwart', 'generation-viii', 'Ignores moves and abilities that draw in moves.'),
                    ('steam-engine', 'Steam Engine', 'generation-viii', 'Boosts the Speed stat drastically when the Pokémon is hit by a Fire- or Water-type move.'),
                    ('punk-rock', 'Punk Rock', 'generation-viii', 'Boosts sound-based moves and halves damage from the same moves.'),
                    ('sand-spit', 'Sand Spit', 'generation-viii', 'Creates a sandstorm when hit by an attack.'),
                    ('ice-scales', 'Ice Scales', 'generation-viii', 'Halves damage from Special moves.'),
                    ('ripen', 'Ripen', 'generation-viii', 'Doubles the effect of berries.'),
                    ('ice-face', 'Ice Face', 'generation-viii', 'The Pokémon''s ice head can take a physical attack as a substitute, but the attack also changes the Pokémon''s appearance. The ice will be restored when it snows.'),
                    ('power-spot', 'Power Spot', 'generation-viii', 'Just being next to the Pokémon powers up moves.'),
                    ('mimicry', 'Mimicry', 'generation-viii', 'Changes type depending on the terrain.'),
                    ('screen-cleaner', 'Screen Cleaner', 'generation-viii', 'Nullifies effects of Light Screen, Reflect, and Aurora Veil.'),
                    ('steely-spirit', 'Steely Spirit', 'generation-viii', 'Powers up ally Pokémon''s Steel-type moves.'),
                    ('perish-body', 'Perish Body', 'generation-viii', 'When hit by a move that makes direct contact, the Pokémon and the attacker will faint after three turns unless they switch out of battle.'),
                    ('wandering-spirit', 'Wandering Spirit', 'generation-viii', 'Swaps abilities with opponents on contact.'),
                    ('gorilla-tactics', 'Gorilla Tactics', 'generation-viii', 'Boosts the Pokémon''s Attack stat but only allows the use of the first selected move.'),
                    ('neutralizing-gas', 'Neutralizing Gas', 'generation-viii', 'Neutralizes abilities of all Pokémon in battle.'),
                    ('pastel-veil', 'Pastel Veil', 'generation-viii', 'Prevents the Pokémon and its allies from being poisoned.'),
                    ('hunger-switch', 'Hunger Switch', 'generation-viii', 'Causes Morpeko to change its form each turn, alternating between Full Belly Mode and Hangry Mode'),
                    ('quick-draw', 'Quick Draw', 'generation-viii', 'Enables the Pokémon to move first occasionally.'),
                    ('unseen-fist', 'Unseen Fist', 'generation-viii', 'Contact moves can strike through Protect/Detect.'),
                    ('curious-medicine', 'Curious Medicine', 'generation-viii', 'Resets all stat changes upon entering battlefield.'),
                    ('transistor', 'Transistor', 'generation-viii', 'Powers up Electric-type moves.'),
                    ('dragons-maw', 'Dragons Maw', 'generation-viii', 'Powers up Dragon-type moves.'),
                    ('chilling-neigh', 'Chilling Neigh', 'generation-viii', 'Boosts Attack after knocking out a Pokémon.'),
                    ('grim-neigh', 'Grim Neigh', 'generation-viii', 'Boosts Special Attack after knocking out a Pokémon.'),
                    ('as-one-glastrier', 'As One Glastrier', 'generation-viii', NULL),
                    ('as-one-spectrier', 'As One Spectrier', 'generation-viii', NULL),
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