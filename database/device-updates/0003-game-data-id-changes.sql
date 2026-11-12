-- Game data updates: the ID changes this device's data already has, so a
-- new game data release applies each one to your rows only once.
CREATE TABLE device.id_changes (
    change text PRIMARY KEY,
    applied_at timestamptz NOT NULL DEFAULT NOW()
);
