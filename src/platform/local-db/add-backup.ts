import type { BackupFile } from "@/platform/local-db/backup-file";
import {
  countAppliedIdChanges,
  prepareSnapshot,
} from "@/platform/local-db/device-id-changes";
import { IdChangeError } from "@/platform/local-db/id-changes";
import {
  LocalDbError,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { movePageReadRevision } from "@/platform/local-db/page-reads";
import {
  readSchemaShape,
  rowKeyOf,
  type SchemaShape,
} from "@/platform/local-db/user-snapshot";
import {
  insertUserRows,
  readUserData,
  userTables,
  type UserData,
  type UserRow,
} from "@/platform/local-db/user-data";

/*
 * Import's "Add its Plays and Plans": a backup's Plays and Plans join what
 * this device has, as copies with ids of their own, so nothing here is
 * replaced and nothing is merged (the same Play imported twice is there
 * twice). What they use comes along: a tag, rule or rule set of the same
 * name is the one already here; favourites and games on the shelf are
 * added when missing. Your name, icon and settings stay as they are.
 */

/* Who you are, not what you played: never taken from the file. */
const keptTables = new Set(["public.profiles", "public.user_preferences"]);

/*
 * Which of each table's columns hold the id of a row that gets a new one
 * (`table -> column -> the table whose id it is`), following foreign keys:
 * a History moment's `play_id` is the Play's, and so is a Pokémon ref's,
 * which reaches the Play through the moment.
 */
const findIdColumns = (shape: SchemaShape) => {
  const keys = new Map(
    shape.tables.map(({ keyColumns, name }) => [name, keyColumns]),
  );
  const idColumns = new Map<string, Map<string, string>>();

  for (const { name } of userTables) {
    const columns = new Map<string, string>();
    const key = keys.get(name);

    if (!keptTables.has(name) && key?.length === 1 && key[0] === "id") {
      columns.set("id", name);
    }

    for (const link of shape.foreignKeys) {
      if (link.child !== name) continue;

      link.parentColumns.forEach((parentColumn, index) => {
        const owner = idColumns.get(link.parent)?.get(parentColumn);

        if (owner) columns.set(link.childColumns[index], owner);
      });
    }

    idColumns.set(name, columns);
  }

  return idColumns;
};

/*
 * A table's unique keys that name the same thing on any device (a tag's
 * slug), so a row of the file that matches one here is that one: keys
 * holding an id are left out, since ids differ between the file and here.
 */
const findNameKeys = (
  shape: SchemaShape,
  table: string,
  idColumns: Map<string, string>,
) =>
  shape.uniqueKeys
    .filter(
      (key) =>
        key.table === table &&
        key.columns.every((column) => !idColumns.has(column)),
    )
    .map((key) => key.columns);

/*
 * The rows to add to `device` for `file`, table by table in insert order,
 * each with new ids where it gets one (`newId`) and every link following
 * them. Pure, so it can be checked without a device.
 */
export const planAddedRows = ({
  device,
  file,
  newId,
  shape,
}: {
  device: UserData;
  file: UserData;
  newId: () => string;
  shape: SchemaShape;
}): UserData => {
  const idColumns = findIdColumns(shape);
  const keyColumns = new Map(
    shape.tables.map(({ keyColumns: columns, name }) => [name, columns]),
  );
  /* The file's id -> the id here, per table. */
  const newIds = new Map<string, Map<string, string>>();
  /* Tables matched by name, and the ids here a file row matched. */
  const namedTables = new Set<string>();
  const matched = new Map<string, Set<string>>();
  const added: UserData = {};

  for (const { name } of userTables) {
    if (keptTables.has(name)) continue;

    const columns = idColumns.get(name) ?? new Map<string, string>();
    const ownIds = new Map<string, string>();
    const here = device[name] ?? [];
    const nameKeys = findNameKeys(shape, name, columns);
    /*
     * A row only linking things matched by name (a rule in a rule set)
     * belongs to the one already here: that keeps its own, unchanged.
     */
    const links = [...columns].filter(
      ([column, owner]) => !(column === "id" && owner === name),
    );
    const onlyLinksNamed =
      links.length > 0 && links.every(([, owner]) => namedTables.has(owner));

    if (nameKeys.length) namedTables.add(name);

    matched.set(name, new Set());
    const valueOf = (row: UserRow, key: string[]) =>
      JSON.stringify(key.map((column) => row[column] ?? null));
    const named = nameKeys.map(
      (key) => new Map(here.map((row) => [valueOf(row, key), String(row.id)])),
    );
    const primaryKey = keyColumns.get(name) ?? [];
    const taken = new Set(here.map((row) => rowKeyOf(row, primaryKey)));
    const rows: UserRow[] = [];

    newIds.set(name, ownIds);

    for (const fileRow of file[name] ?? []) {
      const row: UserRow = { ...fileRow };

      /* Links follow their row's new id; a link to game data stays. */
      for (const [column, owner] of columns) {
        if (column === "id" && owner === name) continue;

        const value = row[column];

        if (value === null || value === undefined) continue;

        row[column] = newIds.get(owner)?.get(String(value)) ?? value;
      }

      if (
        onlyLinksNamed &&
        links.some(([column, owner]) =>
          matched.get(owner)?.has(String(row[column])),
        )
      ) {
        continue;
      }

      if (columns.get("id") === name) {
        const oldId = String(row.id);
        const same = nameKeys
          .map((key, index) => named[index].get(valueOf(row, key)))
          .find((id) => id !== undefined);

        /* One of the same name is here already: the copies use it. */
        if (same) {
          ownIds.set(oldId, same);
          matched.get(name)?.add(same);
          continue;
        }

        row.id = newId();
        ownIds.set(oldId, String(row.id));
      }

      /* Already here (a favourite, a game on the shelf): nothing to add. */
      const key = rowKeyOf(row, primaryKey);

      if (taken.has(key)) continue;

      taken.add(key);
      rows.push(row);
    }

    if (rows.length) added[name] = rows;
  }

  return added;
};

/* "2 Plays and 1 Plan" were added, for the toast. */
export type AddedCounts = { plans: number; plays: number };

/*
 * Adds a backup's Plays and Plans to this device (`planAddedRows`), in one
 * go: a file that doesn't fit leaves the device as it was. The games they
 * need are downloaded first and a file saved before some of the game
 * data's ID changes follows them, as a restore does. The rows count as
 * yours, made now, so they back up to your account like any change.
 */
export const addBackup = async (
  db: LocalDb,
  backup: BackupFile,
  { ensureGame }: { ensureGame: (versionGroupId: number) => Promise<void> },
): Promise<AddedCounts> => {
  const prepared = await prepareSnapshot(
    db,
    { changes: [], idChanges: backup.idChanges, tables: backup.tables },
    ensureGame,
  );
  const shape = await readSchemaShape(db);
  let counts: AddedCounts = { plans: 0, plays: 0 };

  try {
    await db.transaction(async (tx) => {
      if ((await countAppliedIdChanges(tx)) !== prepared.idChanges) {
        throw new IdChangeError(
          "The game data on this device changed while importing. Try again.",
        );
      }

      const added = planAddedRows({
        device: await readUserData(tx),
        file: prepared.tables,
        newId: () => crypto.randomUUID(),
        shape,
      });

      for (const { name } of userTables) {
        await insertUserRows(tx, name, added[name] ?? []);
      }

      counts = {
        plans: added["planning.mainline_team_plans"]?.length ?? 0,
        plays: added["gameplay.mainline_plays"]?.length ?? 0,
      };
    });
    movePageReadRevision();
  } catch (error) {
    if (error instanceof LocalDbError) throw error;

    const cause = toLocalDbError(error);

    throw new LocalDbError(
      "This file doesn't fit this version of Voydex, so nothing changed.",
      { cause, code: cause.code },
    );
  }

  return counts;
};
