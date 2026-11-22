import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import type { OwnDataStore } from "@/platform/local-db/device-copy";
import {
  backUpDevice,
  clearAccountData,
  hasOwnData,
  readDeviceAccount,
  takeAccountBackup,
  type AccountBackups,
} from "@/platform/local-db/device-account";
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

/* The account: its backups in a list, the newest last. */
const createAccount = () => {
  const backups: { id: string; snapshot: VersionedSnapshot }[] = [];
  const account: AccountBackups = {
    list: async () =>
      [...backups].reverse().map(({ id }) => ({
        id,
        name: "Mac",
        savedAt: "2026-11-22T10:00:00Z",
      })),
    read: async (id) => ({
      name: "Mac",
      savedAt: "2026-11-22T10:00:00Z",
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

const ensureGame = async () => undefined;

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

/* Logging in: the device's own data goes aside, the account's newest comes in. */
const logIn = async (
  db: PGlite,
  account: AccountBackups,
  store: OwnDataStore,
) => {
  if (await hasOwnData(db)) await setOwnDataAside(db, store);

  const [newest = null] = await account.list();

  await takeAccountBackup(db, {
    account,
    accountId,
    backupId: newest?.id ?? null,
    ensureGame,
  });
};

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

  it("sets the friend's data aside, keeps it out of my account, and gives it back at log out", async () => {
    const { account, backups } = createAccount();
    const { holds, store } = createStore();

    await logIn(mine, account, createStore().store);
    await addPlay(mine, myPlayId, "My run");
    await backUpDevice(mine, { account, accountId, ensureGame });

    /* I log in on the friend's device: nothing is asked. */
    await logIn(friend, account, store);
    expect(holds()).toBe(true);
    await expect(readPlayNames(friend)).resolves.toEqual(["My run"]);
    await expect(readName(friend)).resolves.toBeNull();

    /* Nothing of the friend's ever reaches my account. */
    await friend.query(
      "UPDATE public.profiles SET display_name = 'Sam' WHERE id = auth.uid()",
    );
    await backUpDevice(friend, { account, accountId, ensureGame });
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
    await expect(readDeviceAccount(friend)).resolves.toEqual({
      accountId: null,
      backupId: null,
      replaced: false,
    });
  });

  it("refuses to set data aside twice, so the first copy is never written over", async () => {
    const { account } = createAccount();
    const { store } = createStore();

    await logIn(friend, account, store);
    await addPlay(friend, myPlayId, "Made while logged in");

    await expect(setOwnDataAside(friend, store)).rejects.toThrow(
      "already keeping other Plays aside",
    );
    await expect(readPlayNames(friend)).resolves.toEqual([
      "Made while logged in",
    ]);
  });

  it("never puts the kept data over an account's, or over newer data of the device's own", async () => {
    const { account } = createAccount();
    const { holds, store } = createStore();

    await logIn(friend, account, store);
    await addPlay(friend, myPlayId, "My run");

    /* Still logged in. */
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

  it("keeps the copy until what came back is written, so a reload can't lose both", async () => {
    const { account } = createAccount();
    const { holds, store } = createStore();

    await logIn(friend, account, store);
    await clearAccountData(friend);

    /* The browser hasn't finished writing when the page goes away. */
    await expect(
      bringOwnDataBack(friend, store, {
        ensureGame,
        waitForWrites: () => Promise.reject(new Error("closed mid-write")),
      }),
    ).rejects.toThrow("closed mid-write");
    expect(holds()).toBe(true);

    /* Written: now it can go. */
    await clearAccountData(friend);
    await expect(bringOwnDataBack(friend, store, { ensureGame })).resolves.toBe(
      true,
    );
    expect(holds()).toBe(false);
    await expect(readPlayNames(friend)).resolves.toEqual(["Friend's run"]);
  });

  it("has nothing to bring back when nothing was set aside", async () => {
    const { store } = createStore();

    await expect(bringOwnDataBack(friend, store, { ensureGame })).resolves.toBe(
      false,
    );
    await expect(readPlayNames(friend)).resolves.toEqual(["Friend's run"]);
  });
});
