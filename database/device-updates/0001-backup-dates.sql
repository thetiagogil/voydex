-- When this device last saved a backup (file or account), for the quiet
-- "Last backup" note.
CREATE TABLE device.backups (
    kind text PRIMARY KEY CHECK (kind IN ('file', 'account')),
    saved_at timestamptz NOT NULL
);
