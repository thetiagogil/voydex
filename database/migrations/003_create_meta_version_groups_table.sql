CREATE TABLE
  meta.version_groups (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL UNIQUE,
    generation_id INTEGER NOT NULL REFERENCES meta.generations (id),
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW ()
  );

CREATE INDEX idx_version_groups_generation ON meta.version_groups (generation_id);