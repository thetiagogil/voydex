"use client";

import { useCallback, useEffect, useRef, useState } from "react";

import {
  addLocalTeamMember,
  createLocalPlay,
} from "@/modules/mainline/features/plays/shared/client/local-play-commands";
import { mainlineTeamRosterStates } from "@/modules/mainline/features/plays/shared/utils/team-member-validation";
import {
  ensureDeviceSchema,
  type DeviceSchemaResult,
} from "@/platform/local-db/device-schema";
import {
  importGameFile,
  readGameFileBytes,
  readImportedGameSlugs,
} from "@/platform/local-db/game-file";
import { runQuery } from "@/platform/local-db/local-db";
import {
  deleteLocalDb,
  startLocalDb,
  type LocalDbHandle,
} from "@/platform/local-db/start-local-db";
import {
  readLocalStorageStatus,
  requestPersistentStorage,
  type LocalStorageStatus,
} from "@/platform/local-db/storage";

/*
 * The device check: starts the device database the way the app will,
 * loads Sword / Shield, and times what the iPhone test measures.
 */

const schemaUrl = "/local-db/schema.sql";
const schemaHashUrl = "/local-db/schema-hash.txt";
const gameSlug = "swsh";
const gameFileUrl = `/game-data/${gameSlug}.json.gz`;
const timedSaveCount = 10;
const timedSavePrefix = "Save timing";

export type Durability = "normal" | "relaxed";

export type GameDataLoad =
  | { status: "already-on-device" }
  | {
      downloadMs: number;
      downloadedBytes: number;
      importMs: number;
      readMs: number;
      rows: number;
      status: "loaded";
    };

export type StartResult = {
  databaseBytes: number;
  game: GameDataLoad;
  plays: { count: number; lastStartedAt: string | null };
  schema: DeviceSchemaResult["status"];
  schemaMs: number;
  startMs: number;
};

export type FlowResult = { addMs: number; createMs: number; playName: string };

export type SaveTimings = { medianMs: number; slowestMs: number };

type CheckState =
  | { status: "starting" }
  | { message: string; status: "failed" }
  | { result: StartResult; status: "ready" };

const elapsed = (startedAt: number) =>
  Math.round(performance.now() - startedAt);

const median = (values: number[]) => {
  const sorted = [...values].sort((a, b) => a - b);

  return sorted[Math.floor(sorted.length / 2)];
};

const todayIso = () => {
  const now = new Date();
  const local = new Date(now.getTime() - now.getTimezoneOffset() * 60_000);

  return local.toISOString().slice(0, 10);
};

const readErrorMessage = (error: unknown) =>
  error instanceof Error ? error.message : "Something went wrong.";

const loadGameData = async (db: LocalDbHandle): Promise<GameDataLoad> => {
  if ((await readImportedGameSlugs(db)).includes(gameSlug)) {
    return { status: "already-on-device" };
  }

  let startedAt = performance.now();
  const response = await fetch(gameFileUrl, { cache: "no-store" });

  if (!response.ok) {
    throw new Error(
      `No game data file at ${gameFileUrl}. Run npm run local-db:game-file, then build again.`,
    );
  }

  const bytes = new Uint8Array(await response.arrayBuffer());
  const downloadMs = elapsed(startedAt);

  startedAt = performance.now();
  const file = await readGameFileBytes(bytes);
  const readMs = elapsed(startedAt);

  startedAt = performance.now();
  const imported = await importGameFile(db, file);

  return {
    downloadMs,
    downloadedBytes: bytes.byteLength,
    importMs: elapsed(startedAt),
    readMs,
    rows: imported.status === "imported" ? imported.rows : 0,
    status: "loaded",
  };
};

const readPlays = async (db: LocalDbHandle) => {
  const [row] = await runQuery<{ count: number; last: string | null }>(
    db,
    `SELECT count(*)::int AS count, max(created_at)::text AS last
     FROM gameplay.mainline_plays WHERE name NOT LIKE $1`,
    [`${timedSavePrefix}%`],
  );

  return { count: row.count, lastStartedAt: row.last };
};

const readDatabaseBytes = async (db: LocalDbHandle) => {
  const [row] = await runQuery<{ bytes: number }>(
    db,
    "SELECT pg_database_size(current_database())::float8 AS bytes",
  );

  return row.bytes;
};

const startCheck = async (
  db: LocalDbHandle,
  startMs: number,
): Promise<StartResult> => {
  const startedAt = performance.now();
  const hashResponse = await fetch(schemaHashUrl, { cache: "no-store" });

  if (!hashResponse.ok) {
    throw new Error("The device schema's hash didn't download.");
  }

  const schema = await ensureDeviceSchema(db, {
    hash: (await hashResponse.text()).trim(),
    readSql: async () => {
      const response = await fetch(schemaUrl);

      if (!response.ok) throw new Error("The device schema didn't download.");

      return response.text();
    },
  });
  const schemaMs = elapsed(startedAt);

  if (schema.status === "outdated") {
    throw new Error(
      "This device has an older schema. Delete the device data and start again.",
    );
  }

  const game = await loadGameData(db);

  return {
    databaseBytes: await readDatabaseBytes(db),
    game,
    plays: await readPlays(db),
    schema: schema.status,
    schemaMs,
    startMs,
  };
};

/* Starts a Sword Play and adds Grookey to its team, as New Play and Add would. */
const runFlow = async (
  db: LocalDbHandle,
  playName: string,
): Promise<FlowResult & { playId: string }> => {
  let startedAt = performance.now();
  const play = await createLocalPlay({
    db,
    rawInput: {
      challengeRules: [],
      expansionVersionGroupIds: [],
      gameSlug: "sword",
      partner: null,
      playName,
      startedOn: todayIso(),
      trainerName: null,
    },
  });
  const createMs = elapsed(startedAt);
  const [grookey] = await runQuery<{ form_id: number; species_id: number }>(
    db,
    `SELECT f.id AS form_id, s.id AS species_id
     FROM reference.pokemon_species s
     JOIN reference.pokemon_forms f ON f.species_id = s.id AND f.is_default
     WHERE s.slug = 'grookey'`,
  );

  startedAt = performance.now();
  await addLocalTeamMember({
    db,
    input: {
      formId: grookey.form_id,
      playId: play.playId,
      rosterStateId: mainlineTeamRosterStates.active,
      slot: 1,
      speciesId: grookey.species_id,
    },
  });

  return {
    addMs: elapsed(startedAt),
    createMs,
    playId: play.playId,
    playName,
  };
};

export const useDeviceCheck = (durability: Durability) => {
  const dbRef = useRef<LocalDbHandle | null>(null);
  const [state, setState] = useState<CheckState>({ status: "starting" });
  const [storage, setStorage] = useState<LocalStorageStatus | null>(null);
  const [flow, setFlow] = useState<FlowResult | null>(null);
  const [saves, setSaves] = useState<SaveTimings | null>(null);
  const [busy, setBusy] = useState(false);
  const [actionError, setActionError] = useState<string | null>(null);

  const refreshStorage = useCallback(async () => {
    setStorage(await readLocalStorageStatus());
  }, []);

  useEffect(() => {
    let cancelled = false;

    const start = async () => {
      try {
        const startedAt = performance.now();
        const db = await startLocalDb({
          relaxedDurability: durability === "relaxed",
        });
        const startMs = elapsed(startedAt);

        if (cancelled) {
          await db.close();
          return;
        }

        dbRef.current = db;
        const result = await startCheck(db, startMs);

        if (!cancelled) setState({ result, status: "ready" });
      } catch (error) {
        if (!cancelled) {
          setState({ message: readErrorMessage(error), status: "failed" });
        }
      } finally {
        if (!cancelled) await refreshStorage().catch(() => undefined);
      }
    };

    void start();

    return () => {
      cancelled = true;
      const db = dbRef.current;
      dbRef.current = null;
      void db?.close();
    };
  }, [durability, refreshStorage]);

  const run = useCallback(
    async (action: (db: LocalDbHandle) => Promise<void>) => {
      const db = dbRef.current;

      if (!db) return;

      setBusy(true);
      setActionError(null);

      try {
        await action(db);
        const [plays, databaseBytes] = await Promise.all([
          readPlays(db),
          readDatabaseBytes(db),
        ]);

        setState((current) =>
          current.status === "ready"
            ? {
                result: { ...current.result, databaseBytes, plays },
                status: "ready",
              }
            : current,
        );
        await refreshStorage();
      } catch (error) {
        setActionError(readErrorMessage(error));
      } finally {
        setBusy(false);
      }
    },
    [refreshStorage],
  );

  const startTestPlay = () =>
    run(async (db) => {
      const { addMs, createMs, playName } = await runFlow(
        db,
        `Device check ${new Date().toLocaleString()}`,
      );

      setFlow({ addMs, createMs, playName });
    });

  /* Times real saves (start a Play, add Grookey), then removes those Plays. */
  const timeSaves = () =>
    run(async (db) => {
      const timings: number[] = [];

      for (let index = 1; index <= timedSaveCount; index += 1) {
        const { addMs, createMs } = await runFlow(
          db,
          `${timedSavePrefix} ${index}`,
        );

        timings.push(createMs, addMs);
      }

      await runQuery(
        db,
        "DELETE FROM gameplay.mainline_plays WHERE name LIKE $1",
        [`${timedSavePrefix}%`],
      );
      setSaves({ medianMs: median(timings), slowestMs: Math.max(...timings) });
    });

  const keepData = () =>
    run(async () => {
      await requestPersistentStorage();
    });

  const deleteDeviceData = async () => {
    setBusy(true);

    try {
      const db = dbRef.current;
      dbRef.current = null;
      await db?.close();
      await deleteLocalDb();
      window.location.reload();
    } catch (error) {
      setActionError(readErrorMessage(error));
      setBusy(false);
    }
  };

  return {
    actionError,
    busy,
    deleteDeviceData,
    flow,
    keepData,
    saves,
    startTestPlay,
    state,
    storage,
    timeSaves,
  };
};
