-- Generated from PokeAPI (/pokemon-species)
-- Skipped slugs: unknown, stellar
-- Generated at: 2025-10-25T23:28:53.142Z
-- NOTE: This seed uses slug-based lookups. VALUES rows are (slug, name, introduced_generation_slug, national_number, color, is_baby, is_legendary, is_mythical)
WITH
    ps AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('chespin', 'Chespin', 'generation-vi', 650, 'Green', FALSE, FALSE, FALSE),
                    ('quilladin', 'Quilladin', 'generation-vi', 651, 'Green', FALSE, FALSE, FALSE),
                    ('chesnaught', 'Chesnaught', 'generation-vi', 652, 'Green', FALSE, FALSE, FALSE),
                    ('fennekin', 'Fennekin', 'generation-vi', 653, 'Red', FALSE, FALSE, FALSE),
                    ('braixen', 'Braixen', 'generation-vi', 654, 'Red', FALSE, FALSE, FALSE),
                    ('delphox', 'Delphox', 'generation-vi', 655, 'Red', FALSE, FALSE, FALSE),
                    ('froakie', 'Froakie', 'generation-vi', 656, 'Blue', FALSE, FALSE, FALSE),
                    ('frogadier', 'Frogadier', 'generation-vi', 657, 'Blue', FALSE, FALSE, FALSE),
                    ('greninja', 'Greninja', 'generation-vi', 658, 'Blue', FALSE, FALSE, FALSE),
                    ('bunnelby', 'Bunnelby', 'generation-vi', 659, 'Brown', FALSE, FALSE, FALSE),
                    ('diggersby', 'Diggersby', 'generation-vi', 660, 'Brown', FALSE, FALSE, FALSE),
                    ('fletchling', 'Fletchling', 'generation-vi', 661, 'Red', FALSE, FALSE, FALSE),
                    ('fletchinder', 'Fletchinder', 'generation-vi', 662, 'Red', FALSE, FALSE, FALSE),
                    ('talonflame', 'Talonflame', 'generation-vi', 663, 'Red', FALSE, FALSE, FALSE),
                    ('scatterbug', 'Scatterbug', 'generation-vi', 664, 'Black', FALSE, FALSE, FALSE),
                    ('spewpa', 'Spewpa', 'generation-vi', 665, 'Black', FALSE, FALSE, FALSE),
                    ('vivillon', 'Vivillon', 'generation-vi', 666, 'White', FALSE, FALSE, FALSE),
                    ('litleo', 'Litleo', 'generation-vi', 667, 'Brown', FALSE, FALSE, FALSE),
                    ('pyroar', 'Pyroar', 'generation-vi', 668, 'Brown', FALSE, FALSE, FALSE),
                    ('flabebe', 'Flabebe', 'generation-vi', 669, 'White', FALSE, FALSE, FALSE),
                    ('floette', 'Floette', 'generation-vi', 670, 'White', FALSE, FALSE, FALSE),
                    ('florges', 'Florges', 'generation-vi', 671, 'White', FALSE, FALSE, FALSE),
                    ('skiddo', 'Skiddo', 'generation-vi', 672, 'Brown', FALSE, FALSE, FALSE),
                    ('gogoat', 'Gogoat', 'generation-vi', 673, 'Brown', FALSE, FALSE, FALSE),
                    ('pancham', 'Pancham', 'generation-vi', 674, 'White', FALSE, FALSE, FALSE),
                    ('pangoro', 'Pangoro', 'generation-vi', 675, 'White', FALSE, FALSE, FALSE),
                    ('furfrou', 'Furfrou', 'generation-vi', 676, 'White', FALSE, FALSE, FALSE),
                    ('espurr', 'Espurr', 'generation-vi', 677, 'Gray', FALSE, FALSE, FALSE),
                    ('meowstic', 'Meowstic', 'generation-vi', 678, 'Blue', FALSE, FALSE, FALSE),
                    ('honedge', 'Honedge', 'generation-vi', 679, 'Brown', FALSE, FALSE, FALSE),
                    ('doublade', 'Doublade', 'generation-vi', 680, 'Brown', FALSE, FALSE, FALSE),
                    ('aegislash', 'Aegislash', 'generation-vi', 681, 'Brown', FALSE, FALSE, FALSE),
                    ('spritzee', 'Spritzee', 'generation-vi', 682, 'Pink', FALSE, FALSE, FALSE),
                    ('aromatisse', 'Aromatisse', 'generation-vi', 683, 'Pink', FALSE, FALSE, FALSE),
                    ('swirlix', 'Swirlix', 'generation-vi', 684, 'White', FALSE, FALSE, FALSE),
                    ('slurpuff', 'Slurpuff', 'generation-vi', 685, 'White', FALSE, FALSE, FALSE),
                    ('inkay', 'Inkay', 'generation-vi', 686, 'Blue', FALSE, FALSE, FALSE),
                    ('malamar', 'Malamar', 'generation-vi', 687, 'Blue', FALSE, FALSE, FALSE),
                    ('binacle', 'Binacle', 'generation-vi', 688, 'Brown', FALSE, FALSE, FALSE),
                    ('barbaracle', 'Barbaracle', 'generation-vi', 689, 'Brown', FALSE, FALSE, FALSE),
                    ('skrelp', 'Skrelp', 'generation-vi', 690, 'Brown', FALSE, FALSE, FALSE),
                    ('dragalge', 'Dragalge', 'generation-vi', 691, 'Brown', FALSE, FALSE, FALSE),
                    ('clauncher', 'Clauncher', 'generation-vi', 692, 'Blue', FALSE, FALSE, FALSE),
                    ('clawitzer', 'Clawitzer', 'generation-vi', 693, 'Blue', FALSE, FALSE, FALSE),
                    ('helioptile', 'Helioptile', 'generation-vi', 694, 'Yellow', FALSE, FALSE, FALSE),
                    ('heliolisk', 'Heliolisk', 'generation-vi', 695, 'Yellow', FALSE, FALSE, FALSE),
                    ('tyrunt', 'Tyrunt', 'generation-vi', 696, 'Brown', FALSE, FALSE, FALSE),
                    ('tyrantrum', 'Tyrantrum', 'generation-vi', 697, 'Red', FALSE, FALSE, FALSE),
                    ('amaura', 'Amaura', 'generation-vi', 698, 'Blue', FALSE, FALSE, FALSE),
                    ('aurorus', 'Aurorus', 'generation-vi', 699, 'Blue', FALSE, FALSE, FALSE),
                    ('sylveon', 'Sylveon', 'generation-vi', 700, 'Pink', FALSE, FALSE, FALSE),
                    ('hawlucha', 'Hawlucha', 'generation-vi', 701, 'Green', FALSE, FALSE, FALSE),
                    ('dedenne', 'Dedenne', 'generation-vi', 702, 'Yellow', FALSE, FALSE, FALSE),
                    ('carbink', 'Carbink', 'generation-vi', 703, 'Gray', FALSE, FALSE, FALSE),
                    ('goomy', 'Goomy', 'generation-vi', 704, 'Purple', FALSE, FALSE, FALSE),
                    ('sliggoo', 'Sliggoo', 'generation-vi', 705, 'Purple', FALSE, FALSE, FALSE),
                    ('goodra', 'Goodra', 'generation-vi', 706, 'Purple', FALSE, FALSE, FALSE),
                    ('klefki', 'Klefki', 'generation-vi', 707, 'Gray', FALSE, FALSE, FALSE),
                    ('phantump', 'Phantump', 'generation-vi', 708, 'Brown', FALSE, FALSE, FALSE),
                    ('trevenant', 'Trevenant', 'generation-vi', 709, 'Brown', FALSE, FALSE, FALSE),
                    ('pumpkaboo', 'Pumpkaboo', 'generation-vi', 710, 'Brown', FALSE, FALSE, FALSE),
                    ('gourgeist', 'Gourgeist', 'generation-vi', 711, 'Brown', FALSE, FALSE, FALSE),
                    ('bergmite', 'Bergmite', 'generation-vi', 712, 'Blue', FALSE, FALSE, FALSE),
                    ('avalugg', 'Avalugg', 'generation-vi', 713, 'Blue', FALSE, FALSE, FALSE),
                    ('noibat', 'Noibat', 'generation-vi', 714, 'Purple', FALSE, FALSE, FALSE),
                    ('noivern', 'Noivern', 'generation-vi', 715, 'Purple', FALSE, FALSE, FALSE),
                    ('xerneas', 'Xerneas', 'generation-vi', 716, 'Blue', FALSE, TRUE, FALSE),
                    ('yveltal', 'Yveltal', 'generation-vi', 717, 'Red', FALSE, TRUE, FALSE),
                    ('zygarde', 'Zygarde', 'generation-vi', 718, 'Green', FALSE, TRUE, FALSE),
                    ('diancie', 'Diancie', 'generation-vi', 719, 'Pink', FALSE, FALSE, TRUE),
                    ('hoopa', 'Hoopa', 'generation-vi', 720, 'Purple', FALSE, FALSE, TRUE),
                    ('volcanion', 'Volcanion', 'generation-vi', 721, 'Brown', FALSE, FALSE, TRUE)
            ) AS p (slug, name, introduced_generation_slug, national_number, color, is_baby, is_legendary, is_mythical)
    )
INSERT INTO
    dex.pokemon_species (slug, name, introduced_generation_id, national_number, color, is_baby, is_legendary, is_mythical, created_at)
SELECT
    p.slug,
    p.name,
    gen.id,
    p.national_number,
    p.color,
    p.is_baby,
    p.is_legendary,
    p.is_mythical,
    now ()
FROM
    p
    LEFT JOIN meta.generations gen ON gen.slug = p.introduced_generation_slug ON CONFLICT (slug) DO NOTHING;