import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  hasPlaysOrPlans,
  joinAccount,
  readDeviceSyncState,
  saveDeviceSyncState,
  syncDevice,
  takeAccountData,
  type AccountBackups,
  type SyncOutcome,
  type SyncState,
} from "@/platform/local-db/device-sync";
import {
  addTestGameData,
  createTestDevice,
} from "@/platform/local-db/local-db-test-support";
import type {
  MergeChoices,
  SyncSnapshot,
} from "@/platform/local-db/sync-merge";

const playId = "10000000-0000-4000-8000-000000000001";
const tagId = "30000000-0000-4000-8000-000000000001";

/* The account: its backups in a list, the latest last. */
const createAccount = () => {
  const backups: { id: string; snapshot: SyncSnapshot }[] = [];
  const account: AccountBackups = {
    latestId: async () => backups.at(-1)?.id ?? null,
    read: async (id) => ({
      name: "iPhone",
      savedAt: "2026-11-10T10:00:00.000Z",
      snapshot: structuredClone(
        backups.find((backup) => backup.id === id)!.snapshot,
      ),
    }),
    upload: async (snapshot, parentId) => {
      if ((backups.at(-1)?.id ?? null) !== parentId) return null;

      /* Ids are uuids, as the device keeps them. */
      const id = `00000000-0000-4000-9000-${String(backups.length + 1).padStart(12, "0")}`;

      backups.push({ id, snapshot: structuredClone(snapshot) });

      return id;
    },
  };

  return { account, backups };
};

type Device = { db: PGlite; state: SyncState };

const sync = async (
  device: Device,
  account: AccountBackups,
  choices: MergeChoices = {},
): Promise<SyncOutcome> => {
  const outcome = await syncDevice(device.db, {
    account,
    choices,
    ensureGame: async () => undefined,
    state: device.state,
  });

  if (outcome.status === "synced") {
    device.state = { backupId: outcome.backupId, restored: false };
  }

  return outcome;
};

const newDevice = async (): Promise<Device> => {
  const db = await createTestDevice();

  await addTestGameData(db);

  return { db, state: { backupId: null, restored: false } };
};

const readPlay = async (db: PGlite) =>
  (
    await db.query<{ name: string; notes: string | null }>(
      "SELECT name, notes FROM gameplay.mainline_plays WHERE id = $1",
      [playId],
    )
  ).rows[0] ?? null;

const readTags = async (db: PGlite) =>
  (
    await db.query<{ name: string; slug: string }>(
      "SELECT name, slug FROM public.tags ORDER BY slug",
    )
  ).rows;

describe("account sync by event merge", () => {
  const { account, backups } = createAccount();
  let phone: Device;
  let laptop: Device;

  /* A Play made on the phone, synced to the account and on to the laptop. */
  beforeEach(async () => {
    backups.length = 0;
    phone = await newDevice();
    laptop = await newDevice();
    await phone.db.query(
      `INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name, notes)
       VALUES ($1, auth.uid(), 1, 1, 'Kanto run', 'Picked Bulbasaur.')`,
      [playId],
    );
    await expect(sync(phone, account)).resolves.toMatchObject({
      status: "synced",
    });
    await expect(sync(laptop, account)).resolves.toMatchObject({
      status: "synced",
    });
  });

  afterEach(async () => {
    await phone.db.close();
    await laptop.db.close();
  });

  it("brings the account's data to a new device", async () => {
    await expect(readPlay(laptop.db)).resolves.toEqual({
      name: "Kanto run",
      notes: "Picked Bulbasaur.",
    });
  });

  it("has nothing to do when neither side changed", async () => {
    /* The phone takes in the laptop's first sync (its own new profile). */
    await sync(phone, account);

    await expect(sync(phone, account)).resolves.toEqual({
      status: "unchanged",
    });
    await expect(sync(laptop, account)).resolves.toEqual({
      status: "unchanged",
    });
  });

  it("combines different items from both devices", async () => {
    await phone.db.query(
      "INSERT INTO public.tags (user_id, name, slug) VALUES (auth.uid(), 'Shiny', 'shiny')",
    );
    await laptop.db.query(
      "INSERT INTO public.tags (user_id, name, slug) VALUES (auth.uid(), 'Nuzlocke', 'nuzlocke')",
    );

    await sync(phone, account);
    await sync(laptop, account);
    await sync(phone, account);

    for (const device of [phone, laptop]) {
      await expect(readTags(device.db)).resolves.toEqual([
        { name: "Nuzlocke", slug: "nuzlocke" },
        { name: "Shiny", slug: "shiny" },
      ]);
    }
  });

  it("combines different fields of one row", async () => {
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET name = 'Kanto again' WHERE id = $1",
      [playId],
    );
    await laptop.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Bulbasaur, then Pikachu.' WHERE id = $1",
      [playId],
    );

    await sync(phone, account);
    await sync(laptop, account);
    await sync(phone, account);

    for (const device of [phone, laptop]) {
      await expect(readPlay(device.db)).resolves.toEqual({
        name: "Kanto again",
        notes: "Bulbasaur, then Pikachu.",
      });
    }
  });

  it("takes the latest change when only one device changed a field", async () => {
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'First note.' WHERE id = $1",
      [playId],
    );
    await sync(phone, account);
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Second note.' WHERE id = $1",
      [playId],
    );
    await sync(phone, account);

    await expect(sync(laptop, account)).resolves.toMatchObject({
      status: "synced",
    });
    await expect(readPlay(laptop.db)).resolves.toMatchObject({
      notes: "Second note.",
    });
  });

  it("asks on a true clash, and keeps nothing until you choose", async () => {
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Phone note.' WHERE id = $1",
      [playId],
    );
    await laptop.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Laptop note.' WHERE id = $1",
      [playId],
    );
    await sync(phone, account);

    const asked = await sync(laptop, account);

    expect(asked).toMatchObject({
      clashes: [
        {
          column: "notes",
          item: { label: "Kanto run", table: "gameplay.mainline_plays" },
          kind: "field",
          local: "Laptop note.",
          remote: "Phone note.",
        },
      ],
      otherDevice: { name: "iPhone" },
      status: "clashes",
    });
    /* Nothing changed on the laptop while it waits for the answer. */
    await expect(readPlay(laptop.db)).resolves.toMatchObject({
      notes: "Laptop note.",
    });

    const [clash] = asked.status === "clashes" ? asked.clashes : [];

    await expect(
      sync(laptop, account, { [clash.id]: "remote" }),
    ).resolves.toMatchObject({ status: "synced" });
    await expect(readPlay(laptop.db)).resolves.toMatchObject({
      notes: "Phone note.",
    });

    /* The phone takes the answer without being asked again. */
    await expect(sync(phone, account)).resolves.not.toMatchObject({
      status: "clashes",
    });
    await expect(readPlay(phone.db)).resolves.toMatchObject({
      notes: "Phone note.",
    });
  });

  it("asks before a delete on one device drops a change on the other", async () => {
    await phone.db.query("DELETE FROM gameplay.mainline_plays WHERE id = $1", [
      playId,
    ]);
    await laptop.db.query(
      "INSERT INTO public.tags (id, user_id, name, slug) VALUES ($1, auth.uid(), 'Shiny', 'shiny')",
      [tagId],
    );
    await laptop.db.query(
      "INSERT INTO gameplay.mainline_play_tags (play_id, tag_id, user_id) VALUES ($1, $2, auth.uid())",
      [playId, tagId],
    );
    await sync(phone, account);

    const asked = await sync(laptop, account);

    expect(asked).toMatchObject({
      clashes: [
        {
          deletedOn: "remote",
          item: { label: "Kanto run" },
          kind: "row",
          table: "gameplay.mainline_plays",
        },
      ],
      status: "clashes",
    });

    const [clash] = asked.status === "clashes" ? asked.clashes : [];

    await sync(laptop, account, { [clash.id]: "local" });
    await sync(phone, account);

    for (const device of [phone, laptop]) {
      await expect(readPlay(device.db)).resolves.toMatchObject({
        name: "Kanto run",
      });
    }
  });

  it("passes a delete on when the other device didn't change it", async () => {
    await phone.db.query("DELETE FROM gameplay.mainline_plays WHERE id = $1", [
      playId,
    ]);
    await sync(phone, account);
    await sync(laptop, account);

    await expect(readPlay(laptop.db)).resolves.toBeNull();
  });

  it("keeps History moments from both devices, in order", async () => {
    const addMoment = (device: Device, title: string) =>
      device.db.query(
        `INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, timeline_order)
         VALUES ($1, 1, 1, $2, 1)`,
        [playId, title],
      );

    await addMoment(phone, "Caught Pikachu");
    await addMoment(laptop, "Beat Brock");
    await sync(phone, account);
    await sync(laptop, account);
    await sync(phone, account);

    for (const device of [phone, laptop]) {
      const { rows } = await device.db.query(
        "SELECT title, timeline_order FROM gameplay.mainline_play_events ORDER BY timeline_order",
      );

      expect(rows).toEqual([
        { timeline_order: 1, title: "Caught Pikachu" },
        { timeline_order: 2, title: "Beat Brock" },
      ]);
    }
  });

  it("names a tag both devices made alike apart, instead of losing one", async () => {
    await phone.db.query(
      "INSERT INTO public.tags (user_id, name, slug) VALUES (auth.uid(), 'Shiny', 'shiny')",
    );
    await laptop.db.query(
      "INSERT INTO public.tags (user_id, name, slug) VALUES (auth.uid(), 'Shiny', 'shiny')",
    );
    await sync(phone, account);
    await sync(laptop, account);
    await sync(phone, account);

    for (const device of [phone, laptop]) {
      await expect(readTags(device.db)).resolves.toEqual([
        { name: "Shiny", slug: "shiny" },
        { name: "Shiny 2", slug: "shiny-2" },
      ]);
    }
  });

  it("sends a restored backup up in place of the account's, without asking", async () => {
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Phone note.' WHERE id = $1",
      [playId],
    );
    await sync(phone, account);
    await laptop.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Restored note.' WHERE id = $1",
      [playId],
    );
    laptop.state = { ...laptop.state, restored: true };

    await expect(sync(laptop, account)).resolves.toMatchObject({
      status: "synced",
    });
    await sync(phone, account);
    await expect(readPlay(phone.db)).resolves.toMatchObject({
      notes: "Restored note.",
    });
  });

  it("loses nothing when two devices upload at the same moment", async () => {
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET name = 'Phone name' WHERE id = $1",
      [playId],
    );
    await laptop.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Laptop note.' WHERE id = $1",
      [playId],
    );

    /* The phone's upload lands while the laptop is between read and upload. */
    const racing: AccountBackups = {
      ...account,
      upload: async (snapshot, parentId) => {
        await sync(phone, account);

        return account.upload(snapshot, parentId);
      },
    };

    await expect(sync(laptop, racing)).resolves.toEqual({ status: "raced" });
    await expect(sync(laptop, account)).resolves.toMatchObject({
      status: "synced",
    });
    await sync(phone, account);

    for (const device of [phone, laptop]) {
      await expect(readPlay(device.db)).resolves.toEqual({
        name: "Phone name",
        notes: "Laptop note.",
      });
    }
  });

  it("notices a save made while it merges, and leaves it in place", async () => {
    await phone.db.query(
      "UPDATE gameplay.mainline_plays SET notes = 'Phone note.' WHERE id = $1",
      [playId],
    );
    await sync(phone, account);

    /* The laptop saves while the phone's backup downloads. */
    const slow: AccountBackups = {
      ...account,
      read: async (id) => {
        const snapshot = await account.read(id);

        await laptop.db.query(
          "UPDATE gameplay.mainline_plays SET name = 'Saved meanwhile' WHERE id = $1",
          [playId],
        );

        return snapshot;
      },
    };

    await expect(sync(laptop, slow)).rejects.toThrow("syncs again");
    await sync(laptop, account);
    await expect(readPlay(laptop.db)).resolves.toEqual({
      name: "Saved meanwhile",
      notes: "Phone note.",
    });
  });
});

describe("a device that joins an account", () => {
  const otherPlayId = "10000000-0000-4000-8000-000000000002";
  const accountA = "a0000000-0000-4000-8000-000000000001";
  const accountB = "b0000000-0000-4000-8000-000000000001";
  let phone: Device;
  let laptop: Device;

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

  /* Syncs as the app does: the device's own state, saved after. */
  const syncAs = async (
    device: Device,
    accountId: string,
    account: AccountBackups,
  ) => {
    const outcome = await syncDevice(device.db, {
      account,
      ensureGame: async () => undefined,
      state: await readDeviceSyncState(device.db, accountId),
    });

    if (outcome.status === "synced") {
      await saveDeviceSyncState(device.db, {
        accountId,
        backupId: outcome.backupId,
        sentRestore: outcome.sentRestore,
      });
    }

    return outcome;
  };

  beforeEach(async () => {
    phone = await newDevice();
    laptop = await newDevice();
  });

  afterEach(async () => {
    await phone.db.close();
    await laptop.db.close();
  });

  it("merges a backup restored while signed out, instead of dropping the account's Plays", async () => {
    const { account } = createAccount();

    await addPlay(phone.db, playId, "Phone run");
    await syncAs(phone, accountB, account);
    /* The laptop restored a file before ever signing in. */
    await addPlay(laptop.db, otherPlayId, "Restored run");
    await laptop.db.exec("INSERT INTO device.sync (restored) VALUES (TRUE)");

    await expect(syncAs(laptop, accountB, account)).resolves.toMatchObject({
      sentRestore: false,
      status: "synced",
    });
    await syncAs(phone, accountB, account);

    for (const device of [phone, laptop]) {
      await expect(readPlayNames(device.db)).resolves.toEqual([
        "Phone run",
        "Restored run",
      ]);
    }

    /* The restore never waits to replace the account later on. */
    await expect(
      readDeviceSyncState(laptop.db, accountB),
    ).resolves.toMatchObject({ restored: false });
  });

  it("waits for an answer when its Plays came from another account", async () => {
    const accounts = { a: createAccount().account, b: createAccount().account };

    await addPlay(laptop.db, otherPlayId, "Account A run");
    await syncAs(laptop, accountA, accounts.a);

    await expect(
      readDeviceSyncState(laptop.db, accountB),
    ).resolves.toMatchObject({ otherAccount: true });
    await expect(hasPlaysOrPlans(laptop.db)).resolves.toBe(true);
    await expect(
      readDeviceSyncState(laptop.db, accountA),
    ).resolves.toMatchObject({ otherAccount: false });
  });

  it("adds them: the other account's Plays join this one", async () => {
    const accounts = { a: createAccount().account, b: createAccount().account };

    await addPlay(phone.db, playId, "Phone run");
    await syncAs(phone, accountB, accounts.b);
    await addPlay(laptop.db, otherPlayId, "Account A run");
    await syncAs(laptop, accountA, accounts.a);

    await joinAccount(laptop.db, accountB);
    await syncAs(laptop, accountB, accounts.b);
    await syncAs(phone, accountB, accounts.b);

    await expect(readPlayNames(phone.db)).resolves.toEqual([
      "Account A run",
      "Phone run",
    ]);
  });

  it("leaves them out: the device takes this account's Plays only", async () => {
    const accounts = { a: createAccount().account, b: createAccount().account };

    await addPlay(phone.db, playId, "Phone run");
    await syncAs(phone, accountB, accounts.b);
    await addPlay(laptop.db, otherPlayId, "Account A run");
    await syncAs(laptop, accountA, accounts.a);

    await takeAccountData(laptop.db, {
      account: accounts.b,
      accountId: accountB,
      ensureGame: async () => undefined,
    });

    await expect(readPlayNames(laptop.db)).resolves.toEqual(["Phone run"]);
    /* Already in step with the account: nothing to send back. */
    await expect(syncAs(laptop, accountB, accounts.b)).resolves.toEqual({
      status: "unchanged",
    });
  });

  it("leaves them out of an empty account, keeping only your profile", async () => {
    const accounts = { a: createAccount().account, b: createAccount().account };

    await addPlay(laptop.db, otherPlayId, "Account A run");
    await syncAs(laptop, accountA, accounts.a);

    await takeAccountData(laptop.db, {
      account: accounts.b,
      accountId: accountB,
      ensureGame: async () => undefined,
    });

    await expect(readPlayNames(laptop.db)).resolves.toEqual([]);
    await expect(
      laptop.db.query("SELECT 1 FROM public.profiles"),
    ).resolves.toMatchObject({ rows: [{}] });
  });
});
