import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { readBackupFile } from "@/platform/local-db/backup-file";
import {
  isBackupDue,
  makeBackupFile,
  readBackupStatus,
  recordBackup,
  restoreBackup,
} from "@/platform/local-db/backups";
import { createTestDevice } from "@/platform/local-db/local-db-test-support";
import {
  readUserData,
  userTables,
  type UserData,
} from "@/platform/local-db/user-data";

const playId = "10000000-0000-4000-8000-000000000001";

/* One game and the lookups a Play points at, as the game data files bring. */
const addGameData = async (db: PGlite) => {
  await db.exec(`
    SET session_replication_role = replica;
    INSERT INTO reference.version_groups (id, slug, name, generation_id, description, sort_order)
      VALUES (1, 'red-blue', 'Red and Blue', 1, 'Kanto.', 1);
    INSERT INTO reference.games (id, slug, name, product_family_id, generation_id, region_id, version_group_id, game_type_id, release_year, sort_order)
      VALUES (1, 'red', 'Pokémon Red', 1, 1, 1, 1, 1, 1996, 1);
    INSERT INTO gameplay.mainline_play_statuses (id, slug, name, sort_order)
      VALUES (1, 'active', 'Active', 1);
    INSERT INTO gameplay.mainline_challenge_rule_types (id, slug, name, sort_order)
      VALUES (5, 'custom', 'Custom', 5);
    INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
      VALUES ('20000000-0000-4000-8000-000000000001', NULL, 5, 'nuzlocke', 'Nuzlocke');
    SET session_replication_role = origin;
  `);
};

/* A device with a Play, a tag on it and a rule of your own. */
const addUserData = async (db: PGlite) => {
  await db.exec(`
    UPDATE public.profiles SET display_name = 'Red' WHERE id = auth.uid();
    INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name, notes)
      VALUES ('${playId}', auth.uid(), 1, 1, 'First run', 'Picked Bulbasaur.');
    INSERT INTO gameplay.mainline_play_settings (play_id) VALUES ('${playId}');
    INSERT INTO public.tags (id, user_id, name, slug)
      VALUES ('30000000-0000-4000-8000-000000000001', auth.uid(), 'Shiny', 'shiny');
    INSERT INTO gameplay.mainline_play_tags (play_id, tag_id, user_id)
      VALUES ('${playId}', '30000000-0000-4000-8000-000000000001', auth.uid());
    INSERT INTO gameplay.mainline_challenge_rules (user_id, rule_type_id, slug, name)
      VALUES (auth.uid(), 5, 'no_items', 'No items');
  `);
};

const rowCount = (data: UserData) =>
  Object.values(data).reduce((sum, rows) => sum + rows.length, 0);

describe("backups on the device", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
    await addGameData(db);
  });

  afterEach(() => db.close());

  it("saves only your rows, not the game data", async () => {
    await addUserData(db);

    const { backup } = await makeBackupFile(db);

    expect(backup.tables["gameplay.mainline_plays"]).toHaveLength(1);
    expect(backup.tables["gameplay.mainline_challenge_rules"]).toEqual([
      expect.objectContaining({ slug: "no_items" }),
    ]);
    expect(Object.keys(backup.tables)).toEqual(
      userTables.map((table) => table.name),
    );
  });

  it("restores a backup on another device exactly, game ensured first", async () => {
    await addUserData(db);

    const saved = await readUserData(db);
    const { bytes } = await makeBackupFile(db);
    const other = await createTestDevice();

    try {
      await addGameData(other);

      const ensureGame = vi.fn().mockResolvedValue(undefined);

      await restoreBackup(other, await readBackupFile(bytes), { ensureGame });

      expect(ensureGame).toHaveBeenCalledWith(1);
      await expect(readUserData(other)).resolves.toEqual(saved);
    } finally {
      await other.close();
    }
  });

  it("replaces what the device had", async () => {
    const { backup } = await makeBackupFile(db);

    await addUserData(db);
    await restoreBackup(db, backup, { ensureGame: async () => undefined });

    const data = await readUserData(db);

    expect(rowCount(data)).toBe(2);
    expect(data["public.profiles"]).toEqual([
      expect.objectContaining({ display_name: null }),
    ]);
    /* Voydex's own rule stays. */
    await expect(
      db.query(
        "SELECT 1 FROM gameplay.mainline_challenge_rules WHERE slug = 'nuzlocke'",
      ),
    ).resolves.toMatchObject({ rows: [{}] });
  });

  it("restores an older backup, filling a column it didn't have", async () => {
    await addUserData(db);

    const { backup } = await makeBackupFile(db);
    const [play] = backup.tables["gameplay.mainline_plays"];
    const older = {
      ...backup,
      tables: {
        ...backup.tables,
        "gameplay.mainline_plays": [
          Object.fromEntries(
            Object.entries(play).filter(([key]) => key !== "status_id"),
          ),
        ],
      },
    };

    await restoreBackup(db, older, { ensureGame: async () => undefined });

    const { rows } = await db.query<{ status_id: number }>(
      "SELECT status_id FROM gameplay.mainline_plays",
    );

    expect(rows).toEqual([{ status_id: 1 }]);
  });

  it("refuses a backup that doesn't fit and keeps the device's data", async () => {
    await addUserData(db);

    const before = await readUserData(db);
    const { backup } = await makeBackupFile(db);
    const broken = {
      ...backup,
      tables: {
        ...backup.tables,
        "gameplay.mainline_play_tags": [
          {
            play_id: "10000000-0000-4000-8000-00000000dead",
            tag_id: "30000000-0000-4000-8000-000000000001",
            user_id: "00000000-0000-4000-8000-000000000001",
          },
        ],
      },
    };

    await expect(
      restoreBackup(db, broken, { ensureGame: async () => undefined }),
    ).rejects.toThrow("doesn't fit");
    await expect(readUserData(db)).resolves.toEqual(before);
  });

  it("keeps the Play's own times rather than stamping new ones", async () => {
    await addUserData(db);
    await db.exec(`
      SET session_replication_role = replica;
      UPDATE gameplay.mainline_plays SET updated_at = '2026-10-01T10:00:00Z';
      SET session_replication_role = origin;
    `);

    const { backup } = await makeBackupFile(db);

    await restoreBackup(db, backup, { ensureGame: async () => undefined });

    const { rows } = await db.query<{ updated_at: Date }>(
      "SELECT updated_at FROM gameplay.mainline_plays",
    );

    expect(rows[0].updated_at.toISOString()).toBe("2026-10-01T10:00:00.000Z");
  });

  it("reminds you after 30 days without a backup", async () => {
    const status = await readBackupStatus(db);
    const later = (days: number, from: string) =>
      new Date(new Date(from).getTime() + days * 24 * 60 * 60 * 1000);

    expect(status.lastBackupAt).toBeNull();
    expect(isBackupDue(status, later(29, status.installedAt))).toBe(false);
    expect(isBackupDue(status, later(30, status.installedAt))).toBe(true);

    await recordBackup(db, "file", "2026-11-01T00:00:00.000Z");
    await recordBackup(db, "file", "2026-11-05T00:00:00.000Z");

    const saved = await readBackupStatus(db);

    expect(new Date(saved.lastBackupAt ?? "").toISOString()).toBe(
      "2026-11-05T00:00:00.000Z",
    );
    expect(isBackupDue(saved, new Date("2026-12-04T00:00:00Z"))).toBe(false);
    expect(isBackupDue(saved, new Date("2026-12-05T00:00:00Z"))).toBe(true);
  });
});

describe("userTables", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
  });

  afterEach(() => db.close());

  it("names every table of yours; the rest are Voydex's lookups", async () => {
    const { rows } = await db.query<{ name: string }>(
      `SELECT n.nspname || '.' || c.relname AS name
       FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace
       WHERE c.relkind = 'r' AND n.nspname IN ('public', 'gameplay', 'planning')
       ORDER BY 1`,
    );
    const lookups = [
      "gameplay.mainline_challenge_rule_types",
      "gameplay.mainline_play_event_origins",
      "gameplay.mainline_play_event_types",
      "gameplay.mainline_play_pokemon_roster_states",
      "gameplay.mainline_play_statuses",
      "gameplay.user_game_library_statuses",
      "planning.mainline_team_plan_statuses",
    ];

    expect(rows.map((row) => row.name)).toEqual(
      [...userTables.map((table) => table.name), ...lookups].sort(),
    );
  });
});
