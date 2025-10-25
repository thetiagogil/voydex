-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('aroma-veil', 'Aroma Veil', 165, 'generation-vi', 'Protects allies against moves that affect their mental state.'),
                    ('flower-veil', 'Flower Veil', 166, 'generation-vi', 'Protects friendly grass Pokémon from having their stats lowered by other Pokémon.'),
                    ('cheek-pouch', 'Cheek Pouch', 167, 'generation-vi', 'Restores HP upon eating a Berry, in addition to the Berry''s effect.'),
                    ('protean', 'Protean', 168, 'generation-vi', 'Changes the bearer''s type to match each move it uses.'),
                    ('fur-coat', 'Fur Coat', 169, 'generation-vi', 'Halves damage from physical attacks.'),
                    ('magician', 'Magician', 170, 'generation-vi', 'Steals the target''s held item when the bearer uses a damaging move.'),
                    ('bulletproof', 'Bulletproof', 171, 'generation-vi', 'Protects against bullet, ball, and bomb-based moves.'),
                    ('competitive', 'Competitive', 172, 'generation-vi', 'Raises Special Attack by two stages upon having any stat lowered.'),
                    ('strong-jaw', 'Strong Jaw', 173, 'generation-vi', 'Strengthens biting moves to 1.5x their power.'),
                    ('refrigerate', 'Refrigerate', 174, 'generation-vi', 'Turns the bearer''s normal moves into ice moves and strengthens them to 1.3x their power.'),
                    ('sweet-veil', 'Sweet Veil', 175, 'generation-vi', 'Prevents friendly Pokémon from sleeping.'),
                    ('stance-change', 'Stance Change', 176, 'generation-vi', 'Changes aegislash to Blade Forme before using a damaging move, or Shield Forme before using kings shield.'),
                    ('gale-wings', 'Gale Wings', 177, 'generation-vi', 'Raises flying moves'' priority by one stage.'),
                    ('mega-launcher', 'Mega Launcher', 178, 'generation-vi', 'Strengthens aura and pulse moves to 1.5x their power.'),
                    ('grass-pelt', 'Grass Pelt', 179, 'generation-vi', 'Boosts Defense while grassy terrain is in effect.'),
                    ('symbiosis', 'Symbiosis', 180, 'generation-vi', 'Passes the bearer''s held item to an ally when the ally uses up its item.'),
                    ('tough-claws', 'Tough Claws', 181, 'generation-vi', 'Strengthens moves that make contact to 1.33x their power.'),
                    ('pixilate', 'Pixilate', 182, 'generation-vi', 'Turns the bearer''s normal moves into fairy moves and strengthens them to 1.3x their power.'),
                    ('gooey', 'Gooey', 183, 'generation-vi', 'Lowers attacking Pokémon''s Speed by one stage on contact.'),
                    ('aerilate', 'Aerilate', 184, 'generation-vi', 'Turns the bearer''s normal moves into flying moves and strengthens them to 1.3x their power.'),
                    ('parental-bond', 'Parental Bond', 185, 'generation-vi', 'Lets the bearer hit twice with damaging moves. The second hit has half power.'),
                    ('dark-aura', 'Dark Aura', 186, 'generation-vi', 'Strengthens dark moves to 1.33x their power for all friendly and opposing Pokémon.'),
                    ('fairy-aura', 'Fairy Aura', 187, 'generation-vi', 'Strengthens fairy moves to 1.33x their power for all friendly and opposing Pokémon.'),
                    ('aura-break', 'Aura Break', 188, 'generation-vi', 'Makes dark aura and fairy aura weaken moves of their respective types.'),
                    ('primordial-sea', 'Primordial Sea', 189, 'generation-vi', 'Creates heavy rain, which has all the properties of Rain Dance, cannot be replaced, and causes damaging Fire moves to fail.'),
                    ('desolate-land', 'Desolate Land', 190, 'generation-vi', 'Creates extremely harsh sunlight, which has all the properties of Sunny Day, cannot be replaced, and causes damaging Water moves to fail.'),
                    ('delta-stream', 'Delta Stream', 191, 'generation-vi', 'Creates a mysterious air current, which cannot be replaced and causes moves to never be super effective against Flying Pokémon.')
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