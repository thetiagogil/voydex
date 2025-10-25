CREATE TABLE
  dex.pokemon_attributes (
    species_id INTEGER NOT NULL REFERENCES dex.pokemon_species (id) ON DELETE CASCADE,
    form_id INTEGER NOT NULL REFERENCES dex.pokemon_forms (id) ON DELETE CASCADE,
    generation_start_id INTEGER NOT NULL REFERENCES meta.generations (id),
    type1_id INTEGER NOT NULL REFERENCES dex.types (id),
    type2_id INTEGER REFERENCES dex.types (id),
    ability1_id INTEGER REFERENCES dex.abilities (id),
    ability2_id INTEGER REFERENCES dex.abilities (id),
    hidden_ability_id INTEGER REFERENCES dex.abilities (id),
    egg_group1_id INTEGER REFERENCES dex.egg_groups (id),
    egg_group2_id INTEGER REFERENCES dex.egg_groups (id),
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER,
    special_defense INTEGER,
    speed INTEGER NOT NULL,
    special INTEGER,
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW (),
      PRIMARY KEY (species_id, form_id, generation_start_id),
      CHECK (
        type2_id IS NULL
        OR type1_id <> type2_id
      ),
      CHECK (
        hp > 0
        AND attack > 0
        AND defense > 0
        AND speed > 0
      ),
      CHECK (
        special_attack IS NULL
        OR special_attack > 0
      ),
      CHECK (
        special_defense IS NULL
        OR special_defense > 0
      ),
      CHECK (
        special IS NULL
        OR special > 0
      ),
      -- Representation rule: exactly one of (Gen1 single) vs (split)
      -- EITHER: special IS NOT NULL AND spa/spd are BOTH NULL
      -- OR: special IS NULL AND spa/spd are BOTH NOT NULL
      CHECK (
        (
          special IS NOT NULL
          AND special_attack IS NULL
          AND special_defense IS NULL
        )
        OR (
          special IS NULL
          AND special_attack IS NOT NULL
          AND special_defense IS NOT NULL
        )
      ),
      -- Generation rule:
      -- In Gen 1 (generation_start_id = 1): special is allowed (and required by rule above).
      -- In Gen 2+ : special MUST be NULL (split-only).
      CHECK (
        (generation_start_id = 1)
        OR (
          generation_start_id <> 1
          AND special IS NULL
        )
      )
  );

CREATE INDEX idx_pokemon_attrs_lookup ON dex.pokemon_attributes (species_id, form_id, generation_start_id DESC);

CREATE INDEX idx_pokemon_attrs_form_gen ON dex.pokemon_attributes (form_id, generation_start_id DESC);