INSERT INTO
    meta.regions (id, slug, name)
VALUES
    (1, 'kanto', 'Kanto'),
    (2, 'johto', 'Johto'),
    (3, 'hoenn', 'Hoenn'),
    (4, 'sinnoh', 'Sinnoh') ON CONFLICT (slug) DO NOTHING;