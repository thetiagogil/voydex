CREATE TYPE meta.move_damage_class AS ENUM ('physical', 'special', 'status');

CREATE TABLE
  meta.move_attributes (
    move_id INTEGER NOT NULL REFERENCES meta.moves (id) ON DELETE CASCADE,
    generation_start_id INTEGER NOT NULL REFERENCES meta.generations (id),
    version_group_start_id INTEGER REFERENCES meta.version_groups (id),
    type_id INTEGER NOT NULL REFERENCES meta.types (id),
    power INTEGER,
    accuracy INTEGER,
    pp INTEGER NOT NULL,
    priority INTEGER NOT NULL DEFAULT 0,
    damage_class meta.move_damage_class,
    PRIMARY KEY (move_id, generation_start_id),
    CHECK (pp > 0),
    CHECK (
      power IS NULL
      OR power >= 1
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

-- exactly one generation-level row per (move,generation)
CREATE UNIQUE INDEX ux_move_attributes_generation_only ON meta.move_attributes (move_id, generation_start_id)
WHERE
  version_group_start_id IS NULL;

-- at most one override per (move,generation,version_group)
CREATE UNIQUE INDEX ux_move_attributes_override ON meta.move_attributes (move_id, generation_start_id, version_group_start_id)
WHERE
  version_group_start_id IS NOT NULL;

-- helpful lookup index
CREATE INDEX idx_move_attributes_lookup ON meta.move_attributes (move_id, generation_start_id DESC, version_group_start_id);