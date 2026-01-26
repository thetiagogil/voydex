CREATE TABLE
  meta.game_types (id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, slug VARCHAR(20) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL, description TEXT, sort_order INTEGER NOT NULL);

INSERT INTO
  meta.game_types (slug, name, description, sort_order)
VALUES
  ('main', 'Main Series', 'Core Pokemon games', 1),
  ('remake', 'Remake', 'Remakes of older games', 2),
  ('enhanced', 'Enhanced', 'Enhanced versions', 3),
  ('dlc', 'DLC', 'Downloadable content expansions', 4),
  ('spin-off', 'Spin-off', 'Non-main series games', 5);

COMMENT ON TABLE meta.game_types IS 'Valid types for Pokemon games. Used as a lookup/reference table.';