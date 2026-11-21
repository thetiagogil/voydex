import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import type { OwnDataStore } from "@/platform/local-db/device-copy";
import {
  clearAccountData,
  hasOwnData,
  readDeviceSyncState,
  saveDeviceSyncState,
  syncDevice,
  type AccountBackups,
} from "@/platform/local-db/device-sync";
import type { VersionedSnapshot } from "@/platform/local-db/id-changes";
import {
  addTestGameData,
  createTestDevice,
} from "@/platform/local-db/local-db-test-support";
import {
  bringOwnDataBack,
  setOwnDataAside,
} from "@/platform/local-db/own-data-aside";

const accountId = "a0000000-0000-4000-8000-000000000001";
const friendPlayId = "10000000-0000-4000-8000-000000000001";
const myPlayId = "10000000-0000-4000-8000-000000000002";

/* The account: its backups in a list, the latest last. */
const createAccount = () => {
  const backups: { id: string; snapshot: VersionedSnapshot }[] = [];
  const account: AccountBackups = {
    latestId: async () => backups.at(-1)?.id ?? null,
    read: async (id) => ({
      name: "Laptop",
      savedAt: "2026-11-21T10:00:00.000Z",
      snapshot: structuredClone(
        backups.find((backup) => backup.id === id)!.snapshot,
      ),
    }),
    upload: async (snapshot, parentId) => {
      if ((backups.at(-1)?.id ?? null) !== parentId) return null;

      const id = `00000000-0000-4000-9000-${String(backups.length + 1).padStart(12, "0")}`;

      backups.push({ id, snapshot: structuredClone(snapshot) });

      return id;
    },
  };

  return { account, backups };
};

/* Where the device's own data waits, as the browser's store keeps it. */
const createStore = () => {
  let kept: Uint8Array | null = null;
  const store: OwnDataStore = {
    forget: async () => {
      kept = null;
    },
    read: async () => kept,
    save: async (bytes) => {
      kept = bytes;
    },
  };

  return { holds: () => kept !== null, store };
};

const addPlay = (db: PGlite, id: string, name: string) =>
  db.query(
    `INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name)
     VALUES ($1, auth.uid(), 1, 1, $2)`,
    [id, name],
  );

const readPlayNames = async (db: PGlite) =>
  (
    await db.query<{ name: string }>(
      "SELECT name FROM gameplay.mainline_plays ORDER BY name",
    )
  ).rows.map((row) => row.name);

const readName = async (db: PGlite) =>
  (
    await db.query<{ display_name: string | null }>(
      "SELECT display_name FROM public.profiles",
    )
  ).rows[0]?.display_name ?? null;

const syncAs = async (db: PGlite, account: AccountBackups) => {
  const outcome = await syncDevice(db, {
    account,
    ensureGame: async () => undefined,
    state: await readDeviceSyncState(db, accountId),
  });

  if (outcome.status === "synced") {
    await saveDeviceSyncState(db, {
      accountId,
      backupId: outcome.backupId,
      sentRestore: outcome.sentRestore,
    });
  }

  return outcome;
};

const ensureGame = async () => undefined;

describe("a friend's device, and an account logged in on it for a while", () => {
  let friend: PGlite;
  let mine: PGlite;

  /* The friend plays without an account; my account has a Play of its own. */
  beforeEach(async () => {
    friend = await createTestDevice();
    mine = await createTestDevice();
    await addTestGameData(friend);
    await addTestGameData(mine);
    await addPlay(friend, friendPlayId, "Friend's run");
    await friend.query(
      "UPDATE public.profiles SET display_name = 'Alex' WHERE id = auth.uid()",
    );
  });

  afterEach(async () => {
    await friend.close();
    await mine.close();
  });

  it("asks only when the device has something of its own", async () => {
    await expect(hasOwnData(friend)).resolves.toBe(true);
    await expect(hasOwnData(mine)).resolves.toBe(false);
    await expect(readDeviceSyncState(friend, accountId)).resolves.toMatchObject(
      { otherAccount: false, unjoined: true },
    );
  });

  it("keeps them separate: the account never gets the friend's Plays, and logging out gives them back", async () => {
    const { account, backups } = createAccount();
    const { holds, store } = createStore();

    await addPlay(mine, myPlayId, "My run");
    await syncAs(mine, account);

    /* I log in on the friend's device and keep their data separate. */
    await setOwnDataAside(friend, store, accountId);
    expect(holds()).toBe(true);
    await expect(readPlayNames(friend)).resolves.toEqual([]);
    await syncAs(friend, account);
    await expect(readPlayNames(friend)).resolves.toEqual(["My run"]);
    await expect(readName(friend)).resolves.toBeNull();

    /* Nothing of the friend's is in my account. */
    expect(
      backups
        .at(-1)!
        .snapshot.tables["gameplay.mainline_plays"]?.map((row) => row.name),
    ).toEqual(["My run"]);

    /* I log out: my data leaves, the friend's comes back as it was. */
    await clearAccountData(friend);
    await expect(bringOwnDataBack(friend, store, { ensureGame })).resolves.toBe(
      true,
    );
    await expect(readPlayNames(friend)).resolves.toEqual(["Friend's run"]);
    await expect(readName(friend)).resolves.toBe("Alex");
    expect(holds()).toBe(false);
    /* It belongs to no account again, and waits to replace none. */
    await expect(readDeviceSyncState(friend, accountId)).resolves.toMatchObject(
      { restored: false, unjoined: true },
    );

    /* My other device still has only mine. */
    await syncAs(mine, account);
    await expect(readPlayNames(mine)).resolves.toEqual(["My run"]);
  });

  it("never puts the kept data over an account's, or over newer data of the device's own", async () => {
    const { account } = createAccount();
    const { holds, store } = createStore();

    await setOwnDataAside(friend, store, accountId);
    await addPlay(friend, myPlayId, "My run");
    await syncAs(friend, account);

    /* Still logged in, or logged out keeping the account's data here. */
    await expect(bringOwnDataBack(friend, store, { ensureGame })).resolves.toBe(
      false,
    );
    await expect(readPlayNames(friend)).resolves.toEqual(["My run"]);

    /* Cleared, then a new Play made before the copy came back. */
    await clearAccountData(friend);
    await addPlay(friend, myPlayId, "Made since");
    await expect(bringOwnDataBack(friend, store, { ensureGame })).resolves.toBe(
      false,
    );
    await expect(readPlayNames(friend)).resolves.toEqual(["Made since"]);
    expect(holds()).toBe(true);
  });

  it("has nothing to bring back when nothing was set aside", async () => {
    const { store } = createStore();

    await expect(bringOwnDataBack(friend, store, { ensureGame })).resolves.toBe(
      false,
    );
    await expect(readPlayNames(friend)).resolves.toEqual(["Friend's run"]);
  });
});
