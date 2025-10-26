-- Generated from PokeAPI (pokemon_forms)
-- Generated at: 2025-10-26T01:11:14.055Z
WITH
    pf AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('chespin', 'Chespin', 'chespin', 'generation-vi', 4, 90, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/650.png'),
                    ('quilladin', 'Quilladin', 'quilladin', 'generation-vi', 7, 290, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/651.png'),
                    ('chesnaught', 'Chesnaught', 'chesnaught', 'generation-vi', 16, 900, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/652.png'),
                    ('fennekin', 'Fennekin', 'fennekin', 'generation-vi', 4, 94, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/653.png'),
                    ('braixen', 'Braixen', 'braixen', 'generation-vi', 10, 145, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/654.png'),
                    ('delphox', 'Delphox', 'delphox', 'generation-vi', 15, 390, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/655.png'),
                    ('froakie', 'Froakie', 'froakie', 'generation-vi', 3, 70, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/656.png'),
                    ('frogadier', 'Frogadier', 'frogadier', 'generation-vi', 6, 109, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/657.png'),
                    ('greninja', 'Greninja', 'greninja', 'generation-vi', 15, 400, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/658.png'),
                    ('bunnelby', 'Bunnelby', 'bunnelby', 'generation-vi', 4, 50, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/659.png'),
                    ('diggersby', 'Diggersby', 'diggersby', 'generation-vi', 10, 424, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/660.png'),
                    ('fletchling', 'Fletchling', 'fletchling', 'generation-vi', 3, 17, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/661.png'),
                    ('fletchinder', 'Fletchinder', 'fletchinder', 'generation-vi', 7, 160, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/662.png'),
                    ('talonflame', 'Talonflame', 'talonflame', 'generation-vi', 12, 245, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/663.png'),
                    ('scatterbug', 'Scatterbug', 'scatterbug', 'generation-vi', 3, 25, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/664.png'),
                    ('spewpa', 'Spewpa', 'spewpa', 'generation-vi', 3, 84, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/665.png'),
                    ('vivillon', 'Vivillon', 'vivillon', 'generation-vi', 12, 170, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/666.png'),
                    ('litleo', 'Litleo', 'litleo', 'generation-vi', 6, 135, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/667.png'),
                    ('pyroar', 'Pyroar', 'pyroar', 'generation-vi', 15, 815, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/668.png'),
                    ('flabebe', 'Flabebe', 'flabebe', 'generation-vi', 1, 1, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/669.png'),
                    ('floette', 'Floette', 'floette', 'generation-vi', 2, 9, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/670.png'),
                    ('florges', 'Florges', 'florges', 'generation-vi', 11, 100, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/671.png'),
                    ('skiddo', 'Skiddo', 'skiddo', 'generation-vi', 9, 310, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/672.png'),
                    ('gogoat', 'Gogoat', 'gogoat', 'generation-vi', 17, 910, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/673.png'),
                    ('pancham', 'Pancham', 'pancham', 'generation-vi', 6, 80, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/674.png'),
                    ('pangoro', 'Pangoro', 'pangoro', 'generation-vi', 21, 1360, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/675.png'),
                    ('furfrou', 'Furfrou', 'furfrou', 'generation-vi', 12, 280, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/676.png'),
                    ('espurr', 'Espurr', 'espurr', 'generation-vi', 3, 35, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/677.png'),
                    ('meowstic', 'Meowstic', 'meowstic', 'generation-vi', 6, 85, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/678.png'),
                    ('honedge', 'Honedge', 'honedge', 'generation-vi', 8, 20, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/679.png'),
                    ('doublade', 'Doublade', 'doublade', 'generation-vi', 8, 45, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/680.png'),
                    ('aegislash', 'Aegislash', 'aegislash', 'generation-vi', 17, 530, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/681.png'),
                    ('spritzee', 'Spritzee', 'spritzee', 'generation-vi', 2, 5, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/682.png'),
                    ('aromatisse', 'Aromatisse', 'aromatisse', 'generation-vi', 8, 155, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/683.png'),
                    ('swirlix', 'Swirlix', 'swirlix', 'generation-vi', 4, 35, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/684.png'),
                    ('slurpuff', 'Slurpuff', 'slurpuff', 'generation-vi', 8, 50, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/685.png'),
                    ('inkay', 'Inkay', 'inkay', 'generation-vi', 4, 35, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/686.png'),
                    ('malamar', 'Malamar', 'malamar', 'generation-vi', 15, 470, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/687.png'),
                    ('binacle', 'Binacle', 'binacle', 'generation-vi', 5, 310, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/688.png'),
                    ('barbaracle', 'Barbaracle', 'barbaracle', 'generation-vi', 13, 960, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/689.png'),
                    ('skrelp', 'Skrelp', 'skrelp', 'generation-vi', 5, 73, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/690.png'),
                    ('dragalge', 'Dragalge', 'dragalge', 'generation-vi', 18, 815, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/691.png'),
                    ('clauncher', 'Clauncher', 'clauncher', 'generation-vi', 5, 83, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/692.png'),
                    ('clawitzer', 'Clawitzer', 'clawitzer', 'generation-vi', 13, 353, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/693.png'),
                    ('helioptile', 'Helioptile', 'helioptile', 'generation-vi', 5, 60, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/694.png'),
                    ('heliolisk', 'Heliolisk', 'heliolisk', 'generation-vi', 10, 210, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/695.png'),
                    ('tyrunt', 'Tyrunt', 'tyrunt', 'generation-vi', 8, 260, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/696.png'),
                    ('tyrantrum', 'Tyrantrum', 'tyrantrum', 'generation-vi', 25, 2700, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/697.png'),
                    ('amaura', 'Amaura', 'amaura', 'generation-vi', 13, 252, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/698.png'),
                    ('aurorus', 'Aurorus', 'aurorus', 'generation-vi', 27, 2250, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/699.png'),
                    ('sylveon', 'Sylveon', 'sylveon', 'generation-vi', 10, 235, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/700.png'),
                    ('hawlucha', 'Hawlucha', 'hawlucha', 'generation-vi', 8, 215, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/701.png'),
                    ('dedenne', 'Dedenne', 'dedenne', 'generation-vi', 2, 22, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/702.png'),
                    ('carbink', 'Carbink', 'carbink', 'generation-vi', 3, 57, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/703.png'),
                    ('goomy', 'Goomy', 'goomy', 'generation-vi', 3, 28, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/704.png'),
                    ('sliggoo', 'Sliggoo', 'sliggoo', 'generation-vi', 8, 175, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/705.png'),
                    ('goodra', 'Goodra', 'goodra', 'generation-vi', 20, 1505, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/706.png'),
                    ('klefki', 'Klefki', 'klefki', 'generation-vi', 2, 30, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/707.png'),
                    ('phantump', 'Phantump', 'phantump', 'generation-vi', 4, 70, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/708.png'),
                    ('trevenant', 'Trevenant', 'trevenant', 'generation-vi', 15, 710, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/709.png'),
                    ('pumpkaboo', 'Pumpkaboo', 'pumpkaboo', 'generation-vi', 4, 50, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/710.png'),
                    ('gourgeist', 'Gourgeist', 'gourgeist', 'generation-vi', 9, 125, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/711.png'),
                    ('bergmite', 'Bergmite', 'bergmite', 'generation-vi', 10, 995, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/712.png'),
                    ('avalugg', 'Avalugg', 'avalugg', 'generation-vi', 20, 5050, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/713.png'),
                    ('noibat', 'Noibat', 'noibat', 'generation-vi', 5, 80, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/714.png'),
                    ('noivern', 'Noivern', 'noivern', 'generation-vi', 15, 850, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/715.png'),
                    ('xerneas', 'Xerneas', 'xerneas', 'generation-vi', 30, 2150, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/716.png'),
                    ('yveltal', 'Yveltal', 'yveltal', 'generation-vi', 58, 2030, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/717.png'),
                    ('zygarde', 'Zygarde', 'zygarde', 'generation-vi', 50, 3050, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/718.png'),
                    ('diancie', 'Diancie', 'diancie', 'generation-vi', 7, 88, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/719.png'),
                    ('hoopa', 'Hoopa', 'hoopa', 'generation-vi', 5, 90, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/720.png'),
                    ('volcanion', 'Volcanion', 'volcanion', 'generation-vi', 17, 1950, TRUE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/721.png')
            ) AS pf (slug, name, species_slug, introduced_generation_slug, height, weight, is_default, sprite_url)
    )
INSERT INTO
    dex.pokemon_forms (slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url, created_at)
SELECT
    pf.slug,
    pf.name,
    ps.id,
    gen.id,
    pf.height,
    pf.weight,
    pf.is_default,
    pf.sprite_url,
    now ()
FROM
    pf
    LEFT JOIN dex.pokemon_species ps ON ps.slug = pf.species_slug
    LEFT JOIN meta.generations gen ON gen.slug = pf.introduced_generation_slug ON CONFLICT (species_id, slug) DO NOTHING;