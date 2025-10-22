-- Generated from PokeAPI (/ability)
-- Generated at: 2025-10-22T16:49:03.401Z
WITH
    a AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('aroma-veil', 'Aroma Veil', 'generation-vi', 'Protects allies against moves that affect their mental state.'),
                    ('flower-veil', 'Flower Veil', 'generation-vi', 'Protects friendly grass Pokémon from having their stats lowered by other Pokémon.'),
                    ('cheek-pouch', 'Cheek Pouch', 'generation-vi', 'Restores HP upon eating a Berry, in addition to the Berry''s effect.'),
                    ('protean', 'Protean', 'generation-vi', 'Changes the bearer''s type to match each move it uses.'),
                    ('fur-coat', 'Fur Coat', 'generation-vi', 'Halves damage from physical attacks.'),
                    ('magician', 'Magician', 'generation-vi', 'Steals the target''s held item when the bearer uses a damaging move.'),
                    ('bulletproof', 'Bulletproof', 'generation-vi', 'Protects against bullet, ball, and bomb-based moves.'),
                    ('competitive', 'Competitive', 'generation-vi', 'Raises Special Attack by two stages upon having any stat lowered.'),
                    ('strong-jaw', 'Strong Jaw', 'generation-vi', 'Strengthens biting moves to 1.5x their power.'),
                    ('refrigerate', 'Refrigerate', 'generation-vi', 'Turns the bearer''s normal moves into ice moves and strengthens them to 1.3x their power.'),
                    ('sweet-veil', 'Sweet Veil', 'generation-vi', 'Prevents friendly Pokémon from sleeping.'),
                    ('stance-change', 'Stance Change', 'generation-vi', 'Changes aegislash to Blade Forme before using a damaging move, or Shield Forme before using kings shield.'),
                    ('gale-wings', 'Gale Wings', 'generation-vi', 'Raises flying moves'' priority by one stage.'),
                    ('mega-launcher', 'Mega Launcher', 'generation-vi', 'Strengthens aura and pulse moves to 1.5x their power.'),
                    ('grass-pelt', 'Grass Pelt', 'generation-vi', 'Boosts Defense while grassy terrain is in effect.'),
                    ('symbiosis', 'Symbiosis', 'generation-vi', 'Passes the bearer''s held item to an ally when the ally uses up its item.'),
                    ('tough-claws', 'Tough Claws', 'generation-vi', 'Strengthens moves that make contact to 1.33x their power.'),
                    ('pixilate', 'Pixilate', 'generation-vi', 'Turns the bearer''s normal moves into fairy moves and strengthens them to 1.3x their power.'),
                    ('gooey', 'Gooey', 'generation-vi', 'Lowers attacking Pokémon''s Speed by one stage on contact.'),
                    ('aerilate', 'Aerilate', 'generation-vi', 'Turns the bearer''s normal moves into flying moves and strengthens them to 1.3x their power.'),
                    ('parental-bond', 'Parental Bond', 'generation-vi', 'Lets the bearer hit twice with damaging moves.  The second hit has half power.'),
                    ('dark-aura', 'Dark Aura', 'generation-vi', 'Strengthens dark moves to 1.33x their power for all friendly and opposing Pokémon.'),
                    ('fairy-aura', 'Fairy Aura', 'generation-vi', 'Strengthens fairy moves to 1.33x their power for all friendly and opposing Pokémon.'),
                    ('aura-break', 'Aura Break', 'generation-vi', 'Makes dark aura and fairy aura weaken moves of their respective types.'),
                    ('primordial-sea', 'Primordial Sea', 'generation-vi', 'Creates heavy rain, which has all the properties of Rain Dance, cannot be replaced, and causes damaging Fire moves to fail.'),
                    ('desolate-land', 'Desolate Land', 'generation-vi', 'Creates extremely harsh sunlight, which has all the properties of Sunny Day, cannot be replaced, and causes damaging Water moves to fail.'),
                    ('delta-stream', 'Delta Stream', 'generation-vi', 'Creates a mysterious air current, which cannot be replaced and causes moves to never be super effective against Flying Pokémon.'),
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