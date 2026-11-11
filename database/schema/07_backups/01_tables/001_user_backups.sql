-- ============================================================================
-- Table: public.user_backups
-- An account's backups: one row per file in its private storage folder
-- (backups/<user id>/). Hosted Supabase only: the device never has it.
-- ============================================================================
CREATE TABLE public.user_backups (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id uuid NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    object_path text NOT NULL,
    format integer NOT NULL,
    saved_at timestamptz NOT NULL,
    device_name text,
    byte_size integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT user_backups_object_path_unique UNIQUE (object_path),
    CONSTRAINT user_backups_object_path_owner_check CHECK (SPLIT_PART(object_path, '/', 1) = user_id::text),
    CONSTRAINT user_backups_format_positive_check CHECK (format > 0),
    CONSTRAINT user_backups_byte_size_positive_check CHECK (byte_size > 0),
    CONSTRAINT user_backups_device_name_length_check CHECK (device_name IS NULL OR CHAR_LENGTH(BTRIM(device_name)) BETWEEN 1 AND 120)
);

CREATE INDEX user_backups_user_created_at_idx ON public.user_backups (user_id, created_at DESC);

COMMENT ON TABLE public.user_backups IS 'An account''s backups, newest by created_at; the app keeps the last three. Deleting the account deletes the rows (the files go with the account deletion operation).';

COMMENT ON COLUMN public.user_backups.object_path IS 'The file in the private backups bucket, inside the owner''s folder: <user id>/<file>.json.gz.';

COMMENT ON COLUMN public.user_backups.format IS 'The backup file format the app wrote (backupFormat in src/platform/local-db/backup-file.ts).';

COMMENT ON COLUMN public.user_backups.saved_at IS 'When the device saved the backup, by its own clock; created_at orders them.';
