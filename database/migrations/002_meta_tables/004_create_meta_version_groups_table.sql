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

-- WHAT: Index on generation_id (foreign key to generations table)
-- WHY: Makes it fast to find all version groups in a specific generation
-- WHEN USED: When you need to show "all game versions in Generation I"
CREATE INDEX idx_version_groups_generation ON meta.version_groups (generation_id);