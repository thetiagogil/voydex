import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/* The one local user; `auth.uid()` in device-schema.sql returns this id. */
export const localUserId = "00000000-0000-4000-8000-000000000001";

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
 * that has it, only compares the installed schema's hash with the app's, so
 * a returning device never downloads the schema.
 */
export const ensureDeviceSchema = async (
  db: LocalDb,
  schema: { hash: string; readSql: () => Promise<string> },
): Promise<DeviceSchemaResult> => {
  const installedHash = await readInstalledHash(db);

  if (installedHash !== null) {
    return { status: installedHash === schema.hash ? "ready" : "outdated" };
  }

  const schemaSql = await schema.readSql();

  if ((await hashSchemaSql(schemaSql)) !== schema.hash) {
    throw new LocalDbError(
      "The schema doesn't match its hash; reload the app and try again.",
    );
  }

  try {
    await db.transaction(async (tx) => {
      await tx.exec(schemaSql);
      await tx.query("INSERT INTO auth.users (id) VALUES ($1)", [localUserId]);
      await tx.query("INSERT INTO device.installs (schema_hash) VALUES ($1)", [
        schema.hash,
      ]);
    });
  } catch (error) {
    throw toLocalDbError(error);
  }

  return { status: "installed" };
};
