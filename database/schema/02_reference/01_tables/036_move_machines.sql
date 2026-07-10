-- ============================================================================
-- Table: reference.move_machines
-- Version/game-scoped TM/HM/TR machine catalog.
-- ============================================================================
CREATE TABLE reference.move_machines (
    id integer PRIMARY KEY,
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    game_id integer,
    learn_method_id integer NOT NULL REFERENCES reference.learn_methods (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    machine_label text NOT NULL,
    scope_operation text NOT NULL DEFAULT 'add',
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT move_machines_id_positive_check CHECK (id > 0),
    CONSTRAINT move_machines_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT move_machines_method_check CHECK (learn_method_id IN (2, 3, 4)),
    CONSTRAINT move_machines_label_shape_check CHECK ((learn_method_id = 2 AND machine_label ~ '^TM[0-9]{2,3}$') OR (learn_method_id = 3 AND machine_label ~ '^HM[0-9]{2}$') OR (learn_method_id = 4 AND machine_label ~ '^TR[0-9]{2}$')),
    CONSTRAINT move_machines_scope_operation_check CHECK (scope_operation IN ('add', 'override', 'remove')),
    CONSTRAINT move_machines_machine_label_length_check CHECK (CHAR_LENGTH(BTRIM(machine_label)) BETWEEN 1 AND 40),
    CONSTRAINT move_machines_sort_order_positive_check CHECK (sort_order > 0)
);

CREATE UNIQUE INDEX move_machines_vg_label_unique ON reference.move_machines (version_group_id, learn_method_id, machine_label)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX move_machines_game_label_unique ON reference.move_machines (version_group_id, game_id, learn_method_id, machine_label)
WHERE
    game_id IS NOT NULL;

CREATE INDEX move_machines_move_scope_lookup_idx ON reference.move_machines (move_id, version_group_id, game_id);

CREATE INDEX move_machines_scope_method_lookup_idx ON reference.move_machines (version_group_id, game_id, learn_method_id, sort_order);

COMMENT ON TABLE reference.move_machines IS 'Version- and game-scoped TM/HM/TR machine catalog delta rows used by Pokémon learnsets.';

COMMENT ON COLUMN reference.move_machines.id IS 'Curated deterministic machine id: version_group_id * 1000000 + COALESCE(game_id, 0) * 10000 + learn_method_id * 1000 + machine number.';

COMMENT ON COLUMN reference.move_machines.game_id IS 'Nullable for version-group-wide machine catalogs. When set, the game must be mapped to the same content scope.';

COMMENT ON COLUMN reference.move_machines.learn_method_id IS 'Must reference a machine learn method: TM, HM, or TR.';

COMMENT ON COLUMN reference.move_machines.machine_label IS 'Machine display label such as TM24, HM03, or TR10.';

COMMENT ON COLUMN reference.move_machines.scope_operation IS 'Cumulative content-scope operation. add is the normal positive row; override/remove are reserved for source changes that supersede earlier scopes.';
