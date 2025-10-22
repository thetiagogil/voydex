CREATE TYPE dex.move_damage_class AS ENUM ('physical', 'special', 'status');

CREATE TABLE
  dex.move_attributes (
    move_id INTEGER NOT NULL REFERENCES dex.moves (id) ON DELETE CASCADE,
    name_alt VARCHAR(100),
    generation_start_id INTEGER NOT NULL REFERENCES meta.generations (id),
    type_id INTEGER NOT NULL REFERENCES dex.types (id),
    POWER INTEGER,
    accuracy INTEGER,
    pp INTEGER NOT NULL,
    priority INTEGER NOT NULL DEFAULT 0,
    damage_class dex.move_damage_class,
    effect_chance INTEGER,
    PRIMARY KEY (move_id, generation_start_id),
    CHECK (pp > 0),
    CHECK (
      POWER IS NULL
      OR POWER >= 1
    ),
    CHECK (
      accuracy IS NULL
      OR (accuracy BETWEEN 1 AND 100)
    ),
    CHECK (priority BETWEEN -7 AND 7),
    CHECK (
      effect_chance IS NULL
      OR (effect_chance BETWEEN 0 AND 100)
    )
  );

CREATE INDEX idx_move_attributes_lookup ON dex.move_attributes (move_id, generation_start_id DESC);