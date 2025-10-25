-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('stench', 'Stench', 1, 'generation-iii', 'Has a 10% chance of making target Pokémon flinch with each hit.'),
                    ('drizzle', 'Drizzle', 2, 'generation-iii', 'Summons rain that lasts indefinitely upon entering battle.'),
                    ('speed-boost', 'Speed Boost', 3, 'generation-iii', 'Raises Speed one stage after each turn.'),
                    ('battle-armor', 'Battle Armor', 4, 'generation-iii', 'Protects against critical hits.'),
                    ('sturdy', 'Sturdy', 5, 'generation-iii', 'Prevents being KOed from full HP, leaving 1 HP instead. Protects against the one-hit KO moves regardless of HP.'),
                    ('damp', 'Damp', 6, 'generation-iii', 'Prevents self destruct, explosion, and aftermath from working while the Pokémon is in battle.'),
                    ('limber', 'Limber', 7, 'generation-iii', 'Prevents paralysis.'),
                    ('sand-veil', 'Sand Veil', 8, 'generation-iii', 'Increases evasion to 1.25x during a sandstorm. Protects against sandstorm damage.'),
                    ('static', 'Static', 9, 'generation-iii', 'Has a 30% chance of paralyzing attacking Pokémon on contact.'),
                    ('volt-absorb', 'Volt Absorb', 10, 'generation-iii', 'Absorbs electric moves, healing for 1/4 max HP.'),
                    ('water-absorb', 'Water Absorb', 11, 'generation-iii', 'Absorbs water moves, healing for 1/4 max HP.'),
                    ('oblivious', 'Oblivious', 12, 'generation-iii', 'Prevents infatuation and protects against captivate.'),
                    ('cloud-nine', 'Cloud Nine', 13, 'generation-iii', 'Negates all effects of weather, but does not prevent the weather itself.'),
                    ('compound-eyes', 'Compound Eyes', 14, 'generation-iii', 'Increases moves'' accuracy to 1.3x.'),
                    ('insomnia', 'Insomnia', 15, 'generation-iii', 'Prevents sleep.'),
                    ('color-change', 'Color Change', 16, 'generation-iii', 'Changes type to match when hit by a damaging move.'),
                    ('immunity', 'Immunity', 17, 'generation-iii', 'Prevents poison.'),
                    ('flash-fire', 'Flash Fire', 18, 'generation-iii', 'Protects against fire moves. Once one has been blocked, the Pokémon''s own Fire moves inflict 1.5x damage until it leaves battle.'),
                    ('shield-dust', 'Shield Dust', 19, 'generation-iii', 'Protects against incoming moves'' extra effects.'),
                    ('own-tempo', 'Own Tempo', 20, 'generation-iii', 'Prevents confusion.'),
                    ('suction-cups', 'Suction Cups', 21, 'generation-iii', 'Prevents being forced out of battle by other Pokémon''s moves.'),
                    ('intimidate', 'Intimidate', 22, 'generation-iii', 'Lowers opponents'' Attack one stage upon entering battle.'),
                    ('shadow-tag', 'Shadow Tag', 23, 'generation-iii', 'Prevents opponents from fleeing or switching out.'),
                    ('rough-skin', 'Rough Skin', 24, 'generation-iii', 'Damages attacking Pokémon for 1/8 their max HP on contact.'),
                    ('wonder-guard', 'Wonder Guard', 25, 'generation-iii', 'Protects against damaging moves that are not super effective.'),
                    ('levitate', 'Levitate', 26, 'generation-iii', 'Evades ground moves.'),
                    ('effect-spore', 'Effect Spore', 27, 'generation-iii', 'Has a 30% chance of inflcting either paralysis, poison, or sleep on attacking Pokémon on contact.'),
                    ('synchronize', 'Synchronize', 28, 'generation-iii', 'Copies burns, paralysis, and poison received onto the Pokémon that inflicted them.'),
                    ('clear-body', 'Clear Body', 29, 'generation-iii', 'Prevents stats from being lowered by other Pokémon.'),
                    ('natural-cure', 'Natural Cure', 30, 'generation-iii', 'Cures any major status ailment upon switching out.'),
                    ('lightning-rod', 'Lightning Rod', 31, 'generation-iii', 'Redirects single-target electric moves to this Pokémon where possible. Absorbs Electric moves, raising Special Attack one stage.'),
                    ('serene-grace', 'Serene Grace', 32, 'generation-iii', 'Doubles the chance of moves'' extra effects occurring.'),
                    ('swift-swim', 'Swift Swim', 33, 'generation-iii', 'Doubles Speed during rain.'),
                    ('chlorophyll', 'Chlorophyll', 34, 'generation-iii', 'Doubles Speed during strong sunlight.'),
                    ('illuminate', 'Illuminate', 35, 'generation-iii', 'Doubles the wild encounter rate.'),
                    ('trace', 'Trace', 36, 'generation-iii', 'Copies an opponent''s ability upon entering battle.'),
                    ('huge-power', 'Huge Power', 37, 'generation-iii', 'Doubles Attack in battle.'),
                    ('poison-point', 'Poison Point', 38, 'generation-iii', 'Has a 30% chance of poisoning attacking Pokémon on contact.'),
                    ('inner-focus', 'Inner Focus', 39, 'generation-iii', 'Prevents flinching.'),
                    ('magma-armor', 'Magma Armor', 40, 'generation-iii', 'Prevents freezing.'),
                    ('water-veil', 'Water Veil', 41, 'generation-iii', 'Prevents burns.'),
                    ('magnet-pull', 'Magnet Pull', 42, 'generation-iii', 'Prevents steel opponents from fleeing or switching out.'),
                    ('soundproof', 'Soundproof', 43, 'generation-iii', 'Protects against sound-based moves.'),
                    ('rain-dish', 'Rain Dish', 44, 'generation-iii', 'Heals for 1/16 max HP after each turn during rain.'),
                    ('sand-stream', 'Sand Stream', 45, 'generation-iii', 'Summons a sandstorm that lasts indefinitely upon entering battle.'),
                    ('pressure', 'Pressure', 46, 'generation-iii', 'Increases the PP cost of moves targetting the Pokémon by one.'),
                    ('thick-fat', 'Thick Fat', 47, 'generation-iii', 'Halves damage from fire and ice moves.'),
                    ('early-bird', 'Early Bird', 48, 'generation-iii', 'Makes sleep pass twice as quickly.'),
                    ('flame-body', 'Flame Body', 49, 'generation-iii', 'Has a 30% chance of burning attacking Pokémon on contact.'),
                    ('run-away', 'Run Away', 50, 'generation-iii', 'Ensures success fleeing from wild battles.'),
                    ('keen-eye', 'Keen Eye', 51, 'generation-iii', 'Prevents accuracy from being lowered.'),
                    ('hyper-cutter', 'Hyper Cutter', 52, 'generation-iii', 'Prevents Attack from being lowered by other Pokémon.'),
                    ('pickup', 'Pickup', 53, 'generation-iii', 'Picks up other Pokémon''s used and Flung held items. May also pick up an item after battle.'),
                    ('truant', 'Truant', 54, 'generation-iii', 'Skips every second turn.'),
                    ('hustle', 'Hustle', 55, 'generation-iii', 'Strengthens physical moves to inflict 1.5x damage, but decreases their accuracy to 0.8x.'),
                    ('cute-charm', 'Cute Charm', 56, 'generation-iii', 'Has a 30% chance of infatuating attacking Pokémon on contact.'),
                    ('plus', 'Plus', 57, 'generation-iii', 'Increases Special Attack to 1.5x when a friendly Pokémon has plus or minus.'),
                    ('minus', 'Minus', 58, 'generation-iii', 'Increases Special Attack to 1.5x when a friendly Pokémon has plus or minus.'),
                    ('forecast', 'Forecast', 59, 'generation-iii', 'Changes castform''s type and form to match the weather.'),
                    ('sticky-hold', 'Sticky Hold', 60, 'generation-iii', 'Prevents a held item from being removed by other Pokémon.'),
                    ('shed-skin', 'Shed Skin', 61, 'generation-iii', 'Has a 33% chance of curing any major status ailment after each turn.'),
                    ('guts', 'Guts', 62, 'generation-iii', 'Increases Attack to 1.5x with a major status ailment.'),
                    ('marvel-scale', 'Marvel Scale', 63, 'generation-iii', 'Increases Defense to 1.5x with a major status ailment.'),
                    ('liquid-ooze', 'Liquid Ooze', 64, 'generation-iii', 'Damages opponents using leeching moves for as much as they would heal.'),
                    ('overgrow', 'Overgrow', 65, 'generation-iii', 'Strengthens grass moves to inflict 1.5x damage at 1/3 max HP or less.'),
                    ('blaze', 'Blaze', 66, 'generation-iii', 'Strengthens fire moves to inflict 1.5x damage at 1/3 max HP or less.'),
                    ('torrent', 'Torrent', 67, 'generation-iii', 'Strengthens water moves to inflict 1.5x damage at 1/3 max HP or less.'),
                    ('swarm', 'Swarm', 68, 'generation-iii', 'Strengthens bug moves to inflict 1.5x damage at 1/3 max HP or less.'),
                    ('rock-head', 'Rock Head', 69, 'generation-iii', 'Protects against recoil damage.'),
                    ('drought', 'Drought', 70, 'generation-iii', 'Summons strong sunlight that lasts indefinitely upon entering battle.'),
                    ('arena-trap', 'Arena Trap', 71, 'generation-iii', 'Prevents opponents from fleeing or switching out. Eluded by flying-types and Pokémon in the air.'),
                    ('vital-spirit', 'Vital Spirit', 72, 'generation-iii', 'Prevents sleep.'),
                    ('white-smoke', 'White Smoke', 73, 'generation-iii', 'Prevents stats from being lowered by other Pokémon.'),
                    ('pure-power', 'Pure Power', 74, 'generation-iii', 'Doubles Attack in battle.'),
                    ('shell-armor', 'Shell Armor', 75, 'generation-iii', 'Protects against critical hits.'),
                    ('air-lock', 'Air Lock', 76, 'generation-iii', 'Negates all effects of weather, but does not prevent the weather itself.')
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