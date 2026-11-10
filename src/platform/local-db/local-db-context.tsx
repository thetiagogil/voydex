"use client";

import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useRef,
  useState,
  type ReactNode,
} from "react";

import type { GameDataVersions } from "@/platform/local-db/game-data";
import { toLocalDbError, type LocalDb } from "@/platform/local-db/local-db";
import { useOpenLocalDb } from "@/platform/local-db/use-open-local-db";

/*
 * The opened device database, shared with every screen under the device
 * gate. `revision` moves on after each save, so every read on screen runs
 * again and shows the saved data; device reads take milliseconds.
 */
export type LocalDbSession = {
  db: LocalDb;
  /* Runs a save, then lets every read on screen read again. */
  save: <Result>(write: (db: LocalDb) => Promise<Result>) => Promise<Result>;
  /* The game data version list; null when opened offline. */
  versions: GameDataVersions | null;
};

const LocalDbContext = createContext<LocalDbSession | null>(null);
const RevisionContext = createContext(0);

export const LocalDbProvider = ({
  children,
  db,
  versions,
}: {
  children: ReactNode;
  db: LocalDb;
  versions: GameDataVersions | null;
}) => {
  const [revision, setRevision] = useState(0);
  const save = useCallback(
    async <Result,>(write: (db: LocalDb) => Promise<Result>) => {
      try {
        return await write(db);
      } finally {
        /* A failed save may still have changed nothing; reading again is cheap. */
        setRevision((current) => current + 1);
      }
    },
    [db],
  );
  const session = useMemo(() => ({ db, save, versions }), [db, save, versions]);

  return (
    <LocalDbContext.Provider value={session}>
      <RevisionContext.Provider value={revision}>
        {children}
      </RevisionContext.Provider>
    </LocalDbContext.Provider>
  );
};

/* The device database; only under the device gate, which opens it. */
export const useLocalDb = () => {
  const session = useContext(LocalDbContext);

  if (!session) {
    throw new Error("The device database is only open under the device gate.");
  }

  return session;
};

export type LocalRead<Data> =
  | { status: "loading" }
  | { data: Data; status: "ready" }
  | { error: Error; status: "failed" };

/*
 * Reads from the device database, again whenever `key` changes or a save
 * lands. `key` names what is read (say "plays:archived"), the way a fetch
 * names its URL. While a read runs again the last data stays on screen, so
 * nothing flashes empty.
 */
export const useLocalRead = <Data,>(
  key: string,
  read: (db: LocalDb) => Promise<Data>,
): LocalRead<Data> => {
  const { db } = useLocalDb();
  const revision = useContext(RevisionContext);
  const readRef = useRef(read);
  const [state, setState] = useState<LocalRead<Data> & { key?: string }>({
    status: "loading",
  });

  useEffect(() => {
    readRef.current = read;
  });

  useEffect(() => {
    let current = true;

    readRef.current(db).then(
      (data) => {
        if (current) setState({ data, key, status: "ready" });
      },
      (error: unknown) => {
        if (current) {
          setState({ error: toLocalDbError(error), key, status: "failed" });
        }
      },
    );

    return () => {
      current = false;
    };
  }, [db, key, revision]);

  /* Data read for another key is never shown as this one's. */
  if (state.status !== "loading" && state.key !== key) {
    return { status: "loading" };
  }

  return state;
};

/*
 * The device database for a piece of a page that isn't Mainline's (New
 * Play on a Codex page): nothing shows until the database is open, and
 * nothing if it can't open. Mainline's pages use the device gate, which
 * says why.
 */
export const QuietLocalDbBoundary = ({ children }: { children: ReactNode }) => {
  const { state } = useOpenLocalDb();

  if (state.status !== "open") return null;

  return (
    <LocalDbProvider db={state.db} versions={state.versions}>
      {children}
    </LocalDbProvider>
  );
};
