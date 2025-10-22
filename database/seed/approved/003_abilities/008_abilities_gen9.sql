-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('lingering-aroma', 'Lingering Aroma', 'generation-ix', 'Contact changes the attacker''s Ability to Lingering Aroma.'),
                    ('seed-sower', 'Seed Sower', 'generation-ix', 'Turns the ground into Grassy Terrain when the Pokémon is hit by an attack.'),
                    ('thermal-exchange', 'Thermal Exchange', 'generation-ix', 'Raises Attack when hit by a Fire-type move. Cannot be burned.'),
                    ('anger-shell', 'Anger Shell', 'generation-ix', 'When the Pokémon''s HP drops below half, Anger Shell lowers its Defense and Special Defense but its Attack, Special Attack and Speed are raised.'),
                    ('purifying-salt', 'Purifying Salt', 'generation-ix', 'Protects from status conditions and halves damage from Ghost-type moves.'),
                    ('well-baked-body', 'Well Baked Body', 'generation-ix', 'Immune to Fire-type moves, and Defense is sharply boosted.'),
                    ('wind-rider', 'Wind Rider', 'generation-ix', 'Gives immunity to wind moves, and causes the Pokémon''s Attack to increase by one stage when hit by one.'),
                    ('guard-dog', 'Guard Dog', 'generation-ix', 'Boosts Attack if intimidated, and prevents being forced to switch out.'),
                    ('rocky-payload', 'Rocky Payload', 'generation-ix', 'Powers up Rock-type moves.'),
                    ('wind-power', 'Wind Power', 'generation-ix', 'When hit by a wind move, the power of the next Electric-type move it uses is doubled.'),
                    ('zero-to-hero', 'Zero To Hero', 'generation-ix', 'Transforms into its Hero Form when switching out.'),
                    ('commander', 'Commander', 'generation-ix', 'Goes inside the mouth of an ally Dondozo if one is on the field.'),
                    ('electromorphosis', 'Electromorphosis', 'generation-ix', 'When hit by an attack, the power of the next Electric-type move it uses is doubled.'),
                    ('protosynthesis', 'Protosynthesis', 'generation-ix', 'Raises highest stat in harsh sunlight, or if holding Booster Energy.'),
                    ('quark-drive', 'Quark Drive', 'generation-ix', 'Raises highest stat on Electric Terrain, or if holding Booster Energy.'),
                    ('good-as-gold', 'Good As Gold', 'generation-ix', 'Gives immunity to status moves.'),
                    ('vessel-of-ruin', 'Vessel Of Ruin', 'generation-ix', 'Lowers Special Attack of all Pokémon except itself.'),
                    ('sword-of-ruin', 'Sword Of Ruin', 'generation-ix', 'Lowers Defense of all Pokémon except itself.'),
                    ('tablets-of-ruin', 'Tablets Of Ruin', 'generation-ix', 'Lowers Attack of all Pokémon except itself.'),
                    ('beads-of-ruin', 'Beads Of Ruin', 'generation-ix', 'Lowers Special Defense of all Pokémon except itself.'),
                    ('orichalcum-pulse', 'Orichalcum Pulse', 'generation-ix', 'Turns the sunlight harsh when entering battle, and boosts Attack while active.'),
                    ('hadron-engine', 'Hadron Engine', 'generation-ix', 'Creates an Electric Terrain when entering battle, and boosts Special Attack while active.'),
                    ('opportunist', 'Opportunist', 'generation-ix', 'Copies stat boosts by the opponent.'),
                    ('cud-chew', 'Cud Chew', 'generation-ix', 'Causes the Pokémon to reuse an already consumed Berry at the end of the next turn.'),
                    ('sharpness', 'Sharpness', 'generation-ix', 'Powers up slicing moves.'),
                    ('supreme-overlord', 'Supreme Overlord', 'generation-ix', 'Attack and Special Attack are boosted for each party Pokémon that has been defeated.'),
                    ('costar', 'Costar', 'generation-ix', 'Copies ally''s stat changes on entering battle.'),
                    ('toxic-debris', 'Toxic Debris', 'generation-ix', 'Scatters poison spikes at the feet of the opposing team when the Pokémon takes damage from physical moves.'),
                    ('armor-tail', 'Armor Tail', 'generation-ix', 'Prevents the opponent from using any moves that have priority, such as Quick Attack.'),
                    ('earth-eater', 'Earth Eater', 'generation-ix', 'Restores HP when hit by a Ground-type move.'),
                    ('mycelium-might', 'Mycelium Might', 'generation-ix', 'Status moves go last, but are not affected by the opponent''s ability.'),
                    ('minds-eye', 'Minds Eye', 'generation-ix', 'The Pokémon ignores changes to opponents'' evasiveness, its accuracy can''t be lowered, and it can hit Ghost types with Normal- and Fighting-type moves.'),
                    ('supersweet-syrup', 'Supersweet Syrup', 'generation-ix', 'Once per battle, when a Pokémon with Supersweet Syrup enters the battle, it lowers the evasion stat of all adjacent opponents by one stage. '),
                    ('hospitality', 'Hospitality', 'generation-ix', 'When a Pokémon with Hospitality enters a battle, it restores HP for an ally by 25%.'),
                    ('toxic-chain', 'Toxic Chain', 'generation-ix', 'May cause bad poisoning when the Pokémon hits an opponent with a move.'),
                    ('embody-aspect', 'Embody Aspect', 'generation-ix', 'Embody Aspect boosts a particular stat, depending on the form of a Terastallized Ogerpon'),
                    ('tera-shift', 'Tera Shift', 'generation-ix', 'When Terapagos enters the battle, it turns into its Terastal Form until the end of the battle. '),
                    ('tera-shell', 'Tera Shell', 'generation-ix', 'All damage-dealing moves that hit the Pokémon when its HP is full will not be very effective.'),
                    ('teraform-zero', 'Teraform Zero', 'generation-ix', 'As soon as Terapagos assumes its Stellar Form, it will immediately neutralize weather and terrain effects. '),
                    ('poison-puppeteer', 'Poison Puppeteer', 'generation-ix', 'Pokémon poisoned by Pecharunt''s moves will also become confused.')
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