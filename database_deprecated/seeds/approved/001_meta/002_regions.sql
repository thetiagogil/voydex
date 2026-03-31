INSERT INTO
    meta.regions (id, slug, name)
VALUES
    (1, 'kanto', 'Kanto'),
    (2, 'johto', 'Johto'),
    (3, 'hoenn', 'Hoenn'),
    (4, 'sinnoh', 'Sinnoh'),
    (5, 'unova', 'Unova'),
    (6, 'kalos', 'Kalos'),
    (7, 'alola', 'Alola'),
    (8, 'galar', 'Galar'),
    (9, 'hisui', 'Hisui'),
    (10, 'paldea', 'Paldea') ON CONFLICT (slug) DO NOTHING;