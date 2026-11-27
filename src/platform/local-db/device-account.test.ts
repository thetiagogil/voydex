import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { makeBackupFile, restoreBackup } from "@/platform/local-db/backups";
import {
  backUpDevice,
  clearAccountData,
  hasOwnData,
  hasUnsavedChanges,
  markReplaced,
  readDeviceAccount,
  takeAccountBackup,
  type AccountBackups,
  type UploadNote,
} from "@/platform/local-db/device-account";
import type { VersionedSnapshot } from "@/platform/local-db/id-changes";
import {
  addTestGameData,
  addTestIdChange,
  createTestDevice,
} from "@/platform/local-db/local-db-test-support";

const accountId = "a0000000-0000-4000-8000-000000000001";
const playId = "10000000-0000-4000-8000-000000000001";

/* The account: its backups in a list, the newest last, the last 3 kept. */
const createAccount = () => {
  const backups: { id: string; name: string; snapshot: VersionedSnapshot }[] =
    [];
  let count = 0;
  let device = "iPhone";
  const account: AccountBackups = {
    list: async () =>
      backups
        .slice(-3)
        .reverse()
        .map(({ id, name }) => ({
          id,
          name,
          savedAt: "2026-11-22T10:00:00.000Z",
        })),
    read: async (id) => {
      const backup = backups.find((item) => item.id === id);

      if (!backup) throw new Error("That backup is gone.");

      return {
        name: backup.name,
        savedAt: "2026-11-22T10:00:00.000Z",
        snapshot: structuredClone(backup.snapshot),
      };
    },
    upload: async (snapshot, parentId) => {
      if ((backups.at(-1)?.id ?? null) !== parentId) return null;

      count += 1;

      /* Ids are uuids, as the device keeps them. */
      const id = `00000000-0000-4000-9000-${String(count).padStart(12, "0")}`;

      backups.push({ id, name: device, snapshot: structuredClone(snapshot) });

      return id;
    },
  };

  return {
    account,
    backups,
    /* Which device the next uploads come from. */
    from: (name: string) => {
      device = name;
    },
  };
};

const ensureGame = async () => undefined;

const newDevice = async () => {
  const db = await createTestDevice();

  await addTestGameData(db);

  return db;
};

const addPlay = (db: PGlite, name: string, id = playId) =>
  db.query(
    `INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name)
     VALUES ($1, auth.uid(), 1, 1, $2)`,
    [id, name],
  );

const renamePlay = (db: PGlite, name: string) =>
  db.query("UPDATE gameplay.mainline_plays SET name = $2 WHERE id = $1", [
    playId,
    name,
  ]);

const readPlayNames = async (db: PGlite) =>
  (
    await db.query<{ name: string }>(
      "SELECT name FROM gameplay.mainline_plays ORDER BY name",
    )
  ).rows.map((row) => row.name);

/* Logging in on a device: it takes the account's newest backup. */
const logIn = async (db: PGlite, account: AccountBackups) => {
  const [newest = null] = await account.list();

  await takeAccountBackup(db, {
    account,
    accountId,
    backupId: newest?.id ?? null,
    ensureGame,
  });
};

/* Each device's note of the upload it started last, as the browser keeps it. */
const uploadNotes = new WeakMap<PGlite, UploadNote>();

const backUp = (db: PGlite, account: AccountBackups, keep = false) =>
  backUpDevice(db, {
    account,
    accountId,
    ensureGame,
    keep,
    uploads: {
      read: () => uploadNotes.get(db) ?? null,
      write: (note) => uploadNotes.set(db, note),
    },
  });

describe("a device and its account, never merged", () => {
  const { account, backups, from } = createAccount();
  let phone: PGlite;
  let laptop: PGlite;

  /* A Play made on the phone, backed up, and on the laptop after logging in. */
  beforeEach(async () => {
    backups.length = 0;
    phone = await newDevice();
    laptop = await newDevice();
    await logIn(phone, account);
    await addPlay(phone, "Kanto run");
    from("iPhone");
    await expect(backUp(phone, account)).resolves.toMatchObject({
      status: "saved",
    });
    await logIn(laptop, account);
    from("Mac");
  });

  afterEach(async () => {
    await phone.close();
    await laptop.close();
  });

  it("brings the account's newest backup to a device that logs in", async () => {
    await expect(readPlayNames(laptop)).resolves.toEqual(["Kanto run"]);
    await expect(readDeviceAccount(laptop)).resolves.toEqual({
      accountId,
      backupId: backups.at(-1)?.id,
      replaced: false,
    });
    await expect(hasUnsavedChanges(laptop)).resolves.toBe(false);
  });

  it("backs up only when something of yours changed", async () => {
    await expect(backUp(laptop, account)).resolves.toEqual({
      status: "unchanged",
    });

    /* Opening a Play isn't a change of yours. */
    await laptop.query(
      "UPDATE gameplay.mainline_plays SET last_opened_at = NOW() WHERE id = $1",
      [playId],
    );
    await expect(backUp(laptop, account)).resolves.toEqual({
      status: "unchanged",
    });

    await renamePlay(laptop, "Kanto again");
    await expect(backUp(laptop, account)).resolves.toMatchObject({
      status: "saved",
    });
    expect(backups).toHaveLength(2);
    await expect(backUp(laptop, account)).resolves.toEqual({
      status: "unchanged",
    });
  });

  it("takes another device's newer backup when it has nothing new", async () => {
    await renamePlay(laptop, "Laptop name");
    await backUp(laptop, account);

    await expect(backUp(phone, account)).resolves.toEqual({
      backupId: backups.at(-1)?.id,
      status: "took",
    });
    await expect(readPlayNames(phone)).resolves.toEqual(["Laptop name"]);
    await expect(hasUnsavedChanges(phone)).resolves.toBe(false);
  });

  it("asks, merging nothing, when both devices changed things", async () => {
    await renamePlay(laptop, "Laptop name");
    await backUp(laptop, account);
    await renamePlay(phone, "Phone name");

    await expect(backUp(phone, account)).resolves.toEqual({
      device: expect.objectContaining({ id: backups.at(-1)?.id, name: "Mac" }),
      status: "newer",
    });
    /* Neither side moved. */
    await expect(readPlayNames(phone)).resolves.toEqual(["Phone name"]);
    expect(backups).toHaveLength(2);
  });

  it("keeps this device's: it goes up over the newer one, which stays among the 3", async () => {
    await renamePlay(laptop, "Laptop name");
    await backUp(laptop, account);
    await renamePlay(phone, "Phone name");

    from("iPhone");
    await expect(backUp(phone, account, true)).resolves.toMatchObject({
      status: "saved",
    });
    expect(backups.map((backup) => backup.name)).toEqual([
      "iPhone",
      "Mac",
      "iPhone",
    ]);

    /* The laptop had nothing new since: it takes the phone's. */
    await expect(backUp(laptop, account)).resolves.toMatchObject({
      status: "took",
    });
    await expect(readPlayNames(laptop)).resolves.toEqual(["Phone name"]);
  });

  it("uses the other device's: this device's changes give way", async () => {
    await renamePlay(laptop, "Laptop name");
    await backUp(laptop, account);
    await renamePlay(phone, "Phone name");

    await takeAccountBackup(phone, {
      account,
      accountId,
      backupId: backups.at(-1)!.id,
      ensureGame,
    });

    await expect(readPlayNames(phone)).resolves.toEqual(["Laptop name"]);
    await expect(backUp(phone, account)).resolves.toEqual({
      status: "unchanged",
    });
  });

  it("sends an older backup you picked up as the account's newest", async () => {
    const first = backups[0].id;

    await renamePlay(phone, "Second name");
    from("iPhone");
    await backUp(phone, account);

    await takeAccountBackup(phone, {
      account,
      accountId,
      backupId: first,
      ensureGame,
      newestId: backups.at(-1)!.id,
    });
    await markReplaced(phone);

    await expect(readPlayNames(phone)).resolves.toEqual(["Kanto run"]);
    await expect(backUp(phone, account)).resolves.toMatchObject({
      status: "saved",
    });
    expect(backups.at(-1)?.snapshot.tables["gameplay.mainline_plays"]).toEqual([
      expect.objectContaining({ name: "Kanto run" }),
    ]);
  });

  it("sends a restored file up in place of the account's, even over a newer one", async () => {
    const { backup } = await makeBackupFile(phone);

    await renamePlay(laptop, "Laptop name");
    await backUp(laptop, account);
    await renamePlay(phone, "Phone name");
    await restoreBackup(phone, backup, { ensureGame });

    await expect(backUp(phone, account)).resolves.toMatchObject({
      status: "saved",
    });
    expect(backups.at(-1)?.snapshot.tables["gameplay.mainline_plays"]).toEqual([
      expect.objectContaining({ name: "Kanto run" }),
    ]);
    await expect(readDeviceAccount(phone)).resolves.toMatchObject({
      replaced: false,
    });
  });

  it("never saves over a backup it didn't see, when another lands first", async () => {
    await renamePlay(laptop, "Laptop name");
    await renamePlay(phone, "Phone name");

    /* The phone's upload lands while the laptop is between read and upload. */
    const racing: AccountBackups = {
      ...account,
      upload: async (snapshot, parentId) => {
        from("iPhone");
        await backUp(phone, account);
        from("Mac");

        return account.upload(snapshot, parentId);
      },
    };

    await expect(backUp(laptop, racing)).resolves.toEqual({ status: "raced" });
    await expect(hasUnsavedChanges(laptop)).resolves.toBe(true);
    /* Looking again, it finds the phone's newer backup. */
    await expect(backUp(laptop, account)).resolves.toMatchObject({
      status: "newer",
    });
  });

  it("notices a save made while it takes a backup, and leaves it in place", async () => {
    await renamePlay(phone, "Phone name");
    from("iPhone");
    await backUp(phone, account);

    /* The laptop saves while the phone's backup downloads. */
    const slow: AccountBackups = {
      ...account,
      read: async (id) => {
        const backup = await account.read(id);

        await renamePlay(laptop, "Saved meanwhile");

        return backup;
      },
    };

    await expect(
      takeAccountBackup(laptop, {
        account: slow,
        accountId,
        backupId: backups.at(-1)!.id,
        ensureGame,
      }),
    ).rejects.toThrow("tries again");
    await expect(readPlayNames(laptop)).resolves.toEqual(["Saved meanwhile"]);
  });
});

describe("what a device knows of its own backups", () => {
  const { account, backups, from } = createAccount();
  let phone: PGlite;
  let laptop: PGlite;

  beforeEach(async () => {
    backups.length = 0;
    phone = await newDevice();
    laptop = await newDevice();
    await logIn(phone, account);
    await addPlay(phone, "Kanto run");
    from("iPhone");
    await backUp(phone, account);
    await logIn(laptop, account);
    from("Mac");
  });

  afterEach(async () => {
    await phone.close();
    await laptop.close();
  });

  it("finds its own newest backup when the page went away before it was noted", async () => {
    /* The upload lands, then the page closes before the device notes it. */
    await renamePlay(laptop, "Laptop name");

    const before = (await readDeviceAccount(laptop)).backupId;

    await backUp(laptop, account);
    await laptop.query(
      `UPDATE device.changes SET base_changed_at = NULL
       WHERE table_name = 'gameplay.mainline_plays'`,
    );
    await laptop.query("UPDATE device.sync SET backup_id = $1", [before]);

    await expect(hasUnsavedChanges(laptop)).resolves.toBe(true);
    await expect(backUp(laptop, account)).resolves.toEqual({
      status: "unchanged",
    });
    await expect(readDeviceAccount(laptop)).resolves.toMatchObject({
      backupId: backups.at(-1)?.id,
    });
    await expect(hasUnsavedChanges(laptop)).resolves.toBe(false);
    expect(backups).toHaveLength(2);
  });

  it("finds its own backup when the page went away during the upload, after a later save", async () => {
    await renamePlay(laptop, "Laptop name");

    /*
     * The upload lands, you save again meanwhile, and the page goes away
     * (a reload) before the device notes either.
     */
    const goingAway: AccountBackups = {
      ...account,
      upload: async (snapshot, parentId) => {
        await account.upload(snapshot, parentId);
        await renamePlay(laptop, "Renamed meanwhile");

        throw new Error("The page went away.");
      },
    };

    await expect(backUp(laptop, goingAway)).rejects.toThrow("went away");

    /* Nothing else saved a backup: no question, the later save goes up. */
    await expect(backUp(laptop, account)).resolves.toMatchObject({
      status: "saved",
    });
    expect(backups).toHaveLength(3);
    expect(backups.at(-1)?.snapshot.tables["gameplay.mainline_plays"]).toEqual([
      expect.objectContaining({ name: "Renamed meanwhile" }),
    ]);
    await expect(readDeviceAccount(laptop)).resolves.toMatchObject({
      backupId: backups.at(-1)?.id,
    });
    await expect(hasUnsavedChanges(laptop)).resolves.toBe(false);
  });

  it("still asks when another device's backup lands after one of its own went up unnoted", async () => {
    await renamePlay(laptop, "Laptop name");

    const before = (await readDeviceAccount(laptop)).backupId;

    await backUp(laptop, account);
    await laptop.query(
      `UPDATE device.changes SET base_changed_at = NULL
       WHERE table_name = 'gameplay.mainline_plays'`,
    );
    await laptop.query("UPDATE device.sync SET backup_id = $1", [before]);
    await renamePlay(laptop, "Laptop again");

    /* The phone takes the laptop's backup and saves on top of it. */
    await backUp(phone, account);
    await renamePlay(phone, "Phone name");
    from("iPhone");
    await backUp(phone, account);

    await expect(backUp(laptop, account)).resolves.toEqual({
      device: expect.objectContaining({ name: "iPhone" }),
      status: "newer",
    });
  });

  it("never takes a newer backup over a save that lands while it looks", async () => {
    await renamePlay(phone, "Phone name");
    from("iPhone");
    await backUp(phone, account);

    /* The laptop saves while the phone's backup downloads. */
    const slow: AccountBackups = {
      ...account,
      read: async (id) => {
        const backup = await account.read(id);

        await renamePlay(laptop, "Saved meanwhile");

        return backup;
      },
    };

    await expect(backUp(laptop, slow)).rejects.toThrow("tries again");
    await expect(readPlayNames(laptop)).resolves.toEqual(["Saved meanwhile"]);
  });

  it("notes when its data last reached the account, on taking a backup too", async () => {
    const lastAccountBackup = async (db: PGlite) =>
      (
        await db.query<{ count: number }>(
          "SELECT count(*)::int AS count FROM device.backups WHERE kind = 'account'",
        )
      ).rows[0].count;

    await expect(lastAccountBackup(laptop)).resolves.toBe(1);
    await expect(lastAccountBackup(phone)).resolves.toBe(1);
  });

  it("takes an older backup on purpose, to go up over the newest", async () => {
    const first = backups[0].id;

    await renamePlay(phone, "Second name");
    await backUp(phone, account);
    await takeAccountBackup(phone, {
      account,
      accountId,
      backupId: first,
      ensureGame,
      newestId: backups.at(-1)!.id,
      replaced: true,
    });

    await expect(readDeviceAccount(phone)).resolves.toMatchObject({
      replaced: true,
    });
    await expect(backUp(phone, account)).resolves.toMatchObject({
      status: "saved",
    });
  });
});

describe("logging in and out", () => {
  it("starts a device as new for an account with no backup yet", async () => {
    const { account } = createAccount();
    const db = await newDevice();

    await addPlay(db, "Left from before");
    await logIn(db, account);

    await expect(readPlayNames(db)).resolves.toEqual([]);
    await expect(readDeviceAccount(db)).resolves.toEqual({
      accountId,
      backupId: null,
      replaced: false,
    });
    await db.close();
  });

  it("leaves a device as new when the account's data goes", async () => {
    const { account } = createAccount();
    const db = await newDevice();

    await logIn(db, account);
    await addPlay(db, "Phone run");
    await db.query(
      "UPDATE public.profiles SET display_name = 'Sam' WHERE id = auth.uid()",
    );
    await backUp(db, account);
    await clearAccountData(db);

    /* Nothing of the account's is left, and it starts with a profile again. */
    await expect(readPlayNames(db)).resolves.toEqual([]);
    await expect(hasOwnData(db)).resolves.toBe(false);
    await expect(
      db.query("SELECT 1 FROM device.changes"),
    ).resolves.toMatchObject({ rows: [] });
    await expect(readDeviceAccount(db)).resolves.toEqual({
      accountId: null,
      backupId: null,
      replaced: false,
    });

    /* Logging in again brings it all back. */
    await logIn(db, account);
    await expect(readPlayNames(db)).resolves.toEqual(["Phone run"]);
    await expect(
      db.query<{ display_name: string | null }>(
        "SELECT display_name FROM public.profiles",
      ),
    ).resolves.toMatchObject({ rows: [{ display_name: "Sam" }] });
    await db.close();
  });
});

describe("account backups across an ID change", () => {
  const { account, backups } = createAccount();
  let phone: PGlite;
  let laptop: PGlite;

  const readGame = async (db: PGlite) =>
    (
      await db.query<{ game_id: number }>(
        "SELECT game_id FROM gameplay.mainline_plays WHERE id = $1",
        [playId],
      )
    ).rows[0]?.game_id ?? null;

  /* The phone saved a Play on Red; the laptop took the release merging it. */
  beforeEach(async () => {
    backups.length = 0;
    phone = await newDevice();
    laptop = await newDevice();
    await addTestIdChange(laptop);
    await logIn(phone, account);
    await addPlay(phone, "Kanto run");
    await backUp(phone, account);
  });

  afterEach(async () => {
    await phone.close();
    await laptop.close();
  });

  it("brings the account's rows up to date when it takes them, as no edit of yours", async () => {
    await logIn(laptop, account);
    await expect(readGame(laptop)).resolves.toBe(2);
    await expect(backUp(laptop, account)).resolves.toEqual({
      status: "unchanged",
    });
  });

  it("backs up with its count, so an older device waits for the update", async () => {
    await logIn(laptop, account);
    await renamePlay(laptop, "Blue run");
    await backUp(laptop, account);
    expect(backups.at(-1)?.snapshot.idChanges).toBe(1);

    /* The phone hasn't taken that release: it takes nothing yet. */
    await expect(backUp(phone, account)).rejects.toThrow("newer game data");
    await expect(readGame(phone)).resolves.toBe(1);

    await addTestIdChange(phone);
    await expect(backUp(phone, account)).resolves.toMatchObject({
      status: "took",
    });
    await expect(
      phone.query("SELECT game_id, name FROM gameplay.mainline_plays"),
    ).resolves.toMatchObject({ rows: [{ game_id: 2, name: "Blue run" }] });
  });
});
