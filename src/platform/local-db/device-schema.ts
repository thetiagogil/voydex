import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/* The one local user; `auth.uid()` in device-schema.sql returns this id. */
export const localUserId = "00000000-0000-4000-8000-000000000001";

/*
 * The schema asks for pgcrypto, but nothing in it uses pgcrypto (Postgres
 * has gen_random_uuid() built in). The device leaves it out rather than
 * download a 1 MB extension for nothing.
 */
const pgcryptoStatement = "CREATE EXTENSION IF NOT EXISTS pgcrypto;";

/*
 * The SQL a new device runs: the device schema, then the Voydex schema from
 * the built migration. Fails loudly when the schema asks for an extension
 * the device doesn't have.
 */
export const buildDeviceSchemaSql = ({
  deviceSql,
  migrationSql,
}: {
  deviceSql: string;
  migrationSql: string;
}) => {
  const schemaSql = migrationSql.replace(
    pgcryptoStatement,
    "-- pgcrypto: left out on the device, nothing uses it.",
  );
  const extension = /^\s*CREATE EXTENSION[^;]*;/im.exec(schemaSql);

  if (extension) {
    throw new Error(
      `The device can't run "${extension[0].trim()}". Add the extension to the device database first.`,
    );
  }

  return `${deviceSql.trimEnd()}\n\n${schemaSql}`;
};

export const hashSchemaSql = async (sql: string) => {
  const digest = await crypto.subtle.digest(
    "SHA-256",
    new TextEncoder().encode(sql),
  );

  return Array.from(new Uint8Array(digest), (byte) =>
    byte.toString(16).padStart(2, "0"),
  ).join("");
};

export type DeviceSchemaResult =
  /* The schema was already on this device and matches the app's. */
  | { status: "ready" }
  /* The schema was installed now. */
  | { status: "installed" }
  /* An older schema is on this device; it needs a device update first. */
  | { status: "outdated" };

const readInstalledHash = async (db: LocalDb) => {
  const [{ installed }] = await runQuery<{ installed: boolean }>(
    db,
    "SELECT to_regclass('device.installs') IS NOT NULL AS installed",
  );

  if (!installed) return null;

  const [row] = await runQuery<{ schema_hash: string }>(
    db,
    "SELECT schema_hash FROM device.installs",
  );

  if (!row) {
    throw new LocalDbError("The device database is missing its install.");
  }

  return row.schema_hash;
};

/*
 * Puts the schema on a new device in one transaction, with the local user
 * (whose profile and preferences the signup trigger creates). On a device
 * that has it, only compares the installed schema with the app's.
 */
export const ensureDeviceSchema = async (
  db: LocalDb,
  schemaSql: string,
): Promise<DeviceSchemaResult> => {
  const schemaHash = await hashSchemaSql(schemaSql);
  const installedHash = await readInstalledHash(db);

  if (installedHash !== null) {
    return { status: installedHash === schemaHash ? "ready" : "outdated" };
  }

  try {
    await db.transaction(async (tx) => {
      await tx.exec(schemaSql);
      await tx.query("INSERT INTO auth.users (id) VALUES ($1)", [localUserId]);
      await tx.query("INSERT INTO device.installs (schema_hash) VALUES ($1)", [
        schemaHash,
      ]);
    });
  } catch (error) {
    throw toLocalDbError(error);
  }

  return { status: "installed" };
};
