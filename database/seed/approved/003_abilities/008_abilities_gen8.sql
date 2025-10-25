-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('intrepid-sword', 'Intrepid Sword', 234, 'generation-viii', 'Boosts Attack in battle.'),
                    ('dauntless-shield', 'Dauntless Shield', 235, 'generation-viii', 'Boosts Defense in battle.'),
                    ('libero', 'Libero', 236, 'generation-viii', 'Libero changes the Pokémon''s type to that of its previously used attack.'),
                    ('ball-fetch', 'Ball Fetch', 237, 'generation-viii', 'If the Pokémon is not holding an item, it will fetch the Poké Ball from the first failed throw of the battle.'),
                    ('cotton-down', 'Cotton Down', 238, 'generation-viii', 'When Ignores moves and abilities that draw in moves.'),
                    ('propeller-tail', 'Propeller Tail', 239, 'generation-viii', 'Ignores moves and abilities that draw in moves.'),
                    ('mirror-armor', 'Mirror Armor', 240, 'generation-viii', 'Reflects any stat-lowering effects.'),
                    ('gulp-missile', 'Gulp Missile', 241, 'generation-viii', 'If a Cramorant with Gulp Missile uses Surf or Dive, it catches prey and changes its form depending on its remaining HP.'),
                    ('stalwart', 'Stalwart', 242, 'generation-viii', 'Ignores moves and abilities that draw in moves.'),
                    ('steam-engine', 'Steam Engine', 243, 'generation-viii', 'Boosts the Speed stat drastically when the Pokémon is hit by a Fire- or Water-type move.'),
                    ('punk-rock', 'Punk Rock', 244, 'generation-viii', 'Boosts sound-based moves and halves damage from the same moves.'),
                    ('sand-spit', 'Sand Spit', 245, 'generation-viii', 'Creates a sandstorm when hit by an attack.'),
                    ('ice-scales', 'Ice Scales', 246, 'generation-viii', 'Halves damage from Special moves.'),
                    ('ripen', 'Ripen', 247, 'generation-viii', 'Doubles the effect of berries.'),
                    ('ice-face', 'Ice Face', 248, 'generation-viii', 'The Pokémon''s ice head can take a physical attack as a substitute, but the attack also changes the Pokémon''s appearance. The ice will be restored when it snows.'),
                    ('power-spot', 'Power Spot', 249, 'generation-viii', 'Just being next to the Pokémon powers up moves.'),
                    ('mimicry', 'Mimicry', 250, 'generation-viii', 'Changes type depending on the terrain.'),
                    ('screen-cleaner', 'Screen Cleaner', 251, 'generation-viii', 'Nullifies effects of Light Screen, Reflect, and Aurora Veil.'),
                    ('steely-spirit', 'Steely Spirit', 252, 'generation-viii', 'Powers up ally Pokémon''s Steel-type moves.'),
                    ('perish-body', 'Perish Body', 253, 'generation-viii', 'When hit by a move that makes direct contact, the Pokémon and the attacker will faint after three turns unless they switch out of battle.'),
                    ('wandering-spirit', 'Wandering Spirit', 254, 'generation-viii', 'Swaps abilities with opponents on contact.'),
                    ('gorilla-tactics', 'Gorilla Tactics', 255, 'generation-viii', 'Boosts the Pokémon''s Attack stat but only allows the use of the first selected move.'),
                    ('neutralizing-gas', 'Neutralizing Gas', 256, 'generation-viii', 'Neutralizes abilities of all Pokémon in battle.'),
                    ('pastel-veil', 'Pastel Veil', 257, 'generation-viii', 'Prevents the Pokémon and its allies from being poisoned.'),
                    ('hunger-switch', 'Hunger Switch', 258, 'generation-viii', 'Causes Morpeko to change its form each turn, alternating between Full Belly Mode and Hangry Mode'),
                    ('quick-draw', 'Quick Draw', 259, 'generation-viii', 'Enables the Pokémon to move first occasionally.'),
                    ('unseen-fist', 'Unseen Fist', 260, 'generation-viii', 'Contact moves can strike through Protect/Detect.'),
                    ('curious-medicine', 'Curious Medicine', 261, 'generation-viii', 'Resets all stat changes upon entering battlefield.'),
                    ('transistor', 'Transistor', 262, 'generation-viii', 'Powers up Electric-type moves.'),
                    ('dragons-maw', 'Dragons Maw', 263, 'generation-viii', 'Powers up Dragon-type moves.'),
                    ('chilling-neigh', 'Chilling Neigh', 264, 'generation-viii', 'Boosts Attack after knocking out a Pokémon.'),
                    ('grim-neigh', 'Grim Neigh', 265, 'generation-viii', 'Boosts Special Attack after knocking out a Pokémon.'),
                    ('as-one-glastrier', 'As One Glastrier', 266, 'generation-viii', 'This Ability combines the effects of both Calyrex''s Unnerve Ability and Glastrier''s Chilling Neigh Ability.'),
                    ('as-one-spectrier', 'As One Spectrier', 267, 'generation-viii', 'This Ability combines the effects of both Calyrex''s Unnerve Ability and Spectrier''s Grim Neigh Ability.')
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