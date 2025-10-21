INSERT INTO
    dex.pokemon_forms (species_id, slug, name, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    (351, 'castform-sunny', 'Castform Sunny', 3, 3, 8, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10013.png'),
    (351, 'castform-rainy', 'Castform Rainy', 3, 3, 8, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10014.png'),
    (351, 'castform-snowy', 'Castform Snowy', 3, 3, 8, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10015.png'),
    (386, 'deoxys-attack', 'Deoxys Attack', 3, 17, 608, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10001.png'),
    (386, 'deoxys-defense', 'Deoxys Defense', 3, 17, 608, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10002.png'),
    (386, 'deoxys-speed', 'Deoxys Speed', 3, 17, 608, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10003.png'),
    (413, 'wormadam-sandy', 'Wormadam Sandy', 4, 5, 65, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10004.png'),
    (413, 'wormadam-trash', 'Wormadam Trash', 4, 5, 65, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10005.png'),
    (479, 'rotom-heat', 'Rotom Heat', 4, 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10008.png'),
    (479, 'rotom-wash', 'Rotom Wash', 4, 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10009.png'),
    (479, 'rotom-frost', 'Rotom Frost', 4, 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10010.png'),
    (479, 'rotom-fan', 'Rotom Fan', 4, 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10011.png'),
    (479, 'rotom-mow', 'Rotom Mow', 4, 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10012.png'),
    (487, 'giratina-origin', 'Giratina Origin', 4, 45, 7500, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10007.png'),
    (492, 'shaymin-sky', 'Shaymin Sky', 4, 2, 21, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10006.png') ON CONFLICT (species_id, slug) DO NOTHING;