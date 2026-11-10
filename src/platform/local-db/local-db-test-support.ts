import { PGlite } from "@electric-sql/pglite";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

/* An in-memory device database, as a fresh device has it. */
export const createTestDb = () => PGlite.create();

/* A set-up device: the app's schema and the local user, no game data. */
export const createTestDevice = async () => {
  const db = await createTestDb();
  const schemaSql = readDeviceSchemaSql();

  await ensureDeviceSchema(db, {
    hash: hashDeviceSchemaSql(schemaSql),
    readSql: () => Promise.resolve(schemaSql),
  });

  return db;
};

/*
 * One game (Red, version group 1) and the lookups a Play points at, as the
 * game data files bring them: with triggers off, so they record nothing.
 */
export const addTestGameData = async (db: PGlite) => {
  await db.exec(`
    SET session_replication_role = replica;
    INSERT INTO reference.version_groups (id, slug, name, generation_id, description, sort_order)
      VALUES (1, 'red-blue', 'Red and Blue', 1, 'Kanto.', 1);
    INSERT INTO reference.games (id, slug, name, product_family_id, generation_id, region_id, version_group_id, game_type_id, release_year, sort_order)
      VALUES (1, 'red', 'Pokémon Red', 1, 1, 1, 1, 1, 1996, 1);
    INSERT INTO gameplay.mainline_play_statuses (id, slug, name, sort_order)
      VALUES (1, 'active', 'Active', 1);
    INSERT INTO gameplay.mainline_play_event_types (id, slug, name, sort_order)
      VALUES (1, 'note', 'Note', 1);
    INSERT INTO gameplay.mainline_play_event_origins (id, slug, name, sort_order)
      VALUES (1, 'manual', 'Manual', 1);
    INSERT INTO gameplay.mainline_challenge_rule_types (id, slug, name, sort_order)
      VALUES (5, 'custom', 'Custom', 5);
    INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
      VALUES ('20000000-0000-4000-8000-000000000001', NULL, 5, 'nuzlocke', 'Nuzlocke');
    SET session_replication_role = origin;
  `);
};
