-- The ID changes this device's rows have followed. Until now devices
-- applied none, and no release listed any, so the list starts empty.
CREATE TABLE device.id_changes (
    position integer PRIMARY KEY CHECK (position > 0),
    table_name text NOT NULL,
    id text NOT NULL,
    becomes text,
    applied_at timestamptz NOT NULL DEFAULT NOW()
);
