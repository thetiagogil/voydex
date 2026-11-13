"use client";

import {
  createContext,
  startTransition,
  use,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useRef,
  useState,
  type ReactNode,
} from "react";

import { waitForWrites } from "@/platform/local-db/durable-writes";
import type { GameDataVersions } from "@/platform/local-db/game-data";
import { toLocalDbError, type LocalDb } from "@/platform/local-db/local-db";
import { createLocalQueryClient } from "@/platform/local-db/local-query-client";
import {
  currentPageReadRevision,
  holdPageRead,
  keepPagesReady,
  movePageReadRevision,
  preparePageRead,
  startPageRead,
  subscribePageReadRevision,
} from "@/platform/local-db/page-reads";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { useOpenLocalDb } from "@/platform/local-db/use-open-local-db";

/*
 * The opened device database, shared with every screen under the device
 * gate. `revision` moves on whenever the device's data changes (a save in
 * any tab, or a game added), so every read on screen runs again and shows
 * the new data, and a page's kept read (`page-reads`) is only reused while
 * nothing changed.
 */
export type LocalDbSession = {
  /* The device database behind the query interface readers and commands take. */
  client: LocalQueryClient;
  db: LocalDb;
  /* Runs a save, then lets every read on screen read again. */
  save: <Result>(
    write: (client: LocalQueryClient) => Promise<Result>,
  ) => Promise<Result>;
  /* The game data version list; null when opened offline. */
  versions: GameDataVersions | null;
};

export type LocalQueryClient = ServerSupabaseClient;

/* Every provider on the page, told when a save lands so its reads run again. */
const saveListeners = new Set<() => void>();

/* Saves the screen shows that aren't in IndexedDB yet. */
let unwrittenSaves = 0;

/*
 * Asks before a reload or close would lose a save still being written.
 * Desktop and Android browsers ask; an iPhone can't be asked, so there the
 * short write is the only window.
 */
const askBeforeLeaving = (event: BeforeUnloadEvent) => {
  event.preventDefault();
  /* Older browsers ask only when this is set. */
  event.returnValue = "";
};

const bump = (key: "saves" | "savesStarted") => {
  const root = document.documentElement;

  root.dataset[key] = String(Number(root.dataset[key] ?? 0) + 1);
};

/*
 * Counts a save on the page's root as it starts (`data-saves-started`) and
 * once it is in IndexedDB (`data-saves`), so a browser test can wait for a
 * save that survives a reload without knowing how it was made.
 */
const keepSave = async (counted: boolean) => {
  if (counted) bump("savesStarted");

  if (unwrittenSaves++ === 0) {
    window.addEventListener("beforeunload", askBeforeLeaving);
  }

  try {
    await waitForWrites();

    if (counted) bump("saves");
  } catch (error) {
    console.error("A save on this device wasn't written.", error);
  } finally {
    if (--unwrittenSaves === 0) {
      window.removeEventListener("beforeunload", askBeforeLeaving);
    }
  }
};

/*
 * Tells the screens a save landed, so every read on screen runs again: the
 * device's stand-in for revalidating a page after a Server Action. The
 * screen updates at once; the write to IndexedDB follows (relaxed
 * durability), and leaving the page before it lands asks first where the
 * browser can ask.
 * `background` marks a save the app made on its own (an account sync),
 * which isn't counted: it lands at any moment, not after a tap.
 */
export const notifyLocalSave = ({ background = false } = {}) => {
  if (typeof window !== "undefined") void keepSave(!background);

  movePageReadRevision();

  for (const listener of saveListeners) listener();
};

/* Runs `listener` after every save; returns the way to stop. */
export const subscribeLocalSaves = (listener: () => void) => {
  saveListeners.add(listener);

  return () => {
    saveListeners.delete(listener);
  };
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
  const [revision, setRevision] = useState(currentPageReadRevision);
  const client = useMemo(() => createLocalQueryClient(db), [db]);
  const save = useCallback(
    async <Result,>(write: (client: LocalQueryClient) => Promise<Result>) => {
      try {
        return await write(client);
      } finally {
        /* A failed save may still have changed nothing; reading again is cheap. */
        notifyLocalSave();
      }
    },
    [client],
  );

  /*
   * A transition, so a page waiting on its new read (`useLocalPageRead`)
   * keeps the saved-over data on screen until the new data is in.
   */
  useEffect(() => {
    const show = () =>
      startTransition(() => setRevision(currentPageReadRevision()));

    /* Data that changed before this provider listened shows now. */
    show();

    return subscribePageReadRevision(show);
  }, []);
  const session = useMemo(
    () => ({ client, db, save, versions }),
    [client, db, save, versions],
  );

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
  read: (client: LocalQueryClient) => Promise<Data>,
): LocalRead<Data> => {
  const { client } = useLocalDb();
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

    readRef.current(client).then(
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
  }, [client, key, revision]);

  /* Data read for another key is never shown as this one's. */
  if (state.status !== "loading" && state.key !== key) {
    return { status: "loading" };
  }

  return state;
};

/*
 * A page's data from the device, read before the page shows. While it is
 * read after a link, the page's loading state shows (its `loading.tsx`);
 * after a save (a transition), the page keeps showing until the new data is
 * in. A read already in draws at once. Use it for what a whole page needs; a
 * piece of a page
 * that can show without its data uses `useLocalRead`. A failed read throws
 * to the page's error screen. `key` names everything the read depends on.
 */
export const useLocalPageRead = <Data,>(
  key: string,
  read: (client: LocalQueryClient) => Promise<Data>,
  /* Whether a later visit may show this data again (see `startPageRead`). */
  keep?: (data: Data) => boolean,
): Data => {
  const { client, db } = useLocalDb();
  const revision = useContext(RevisionContext);
  /*
   * Kept by the database, not the query client: the provider is new on the
   * first open, and React makes a new client each time it retries a render
   * that waited before it ever showed.
   */
  const promise = startPageRead(db, key, revision, () => read(client), keep);

  useEffect(
    () => holdPageRead(db, key, revision, promise),
    [db, key, promise, revision],
  );

  return use(promise);
};

/*
 * A page's read named once: by its page (`useLocalPageRead`) and by the
 * app getting that page ready before it opens (`preparePageReads`), which
 * must read the same key the same way.
 */
export type PageReadPlan<Data> = {
  key: string;
  read(client: LocalQueryClient): Promise<Data>;
  /* Whether a later visit may show this data again (see `startPageRead`). */
  keep?(data: Data): boolean;
};

/* Lets the page's own work run before the next read that gets ready. */
const giveWay = () =>
  new Promise<void>((resolve) => {
    setTimeout(resolve, 0);
  });

/*
 * Gets pages ready before they open: each read runs, one after another so
 * a page you open meanwhile isn't kept waiting long, and is kept like a
 * page you left. Resolves once all have settled, or early when the device's
 * data changes meanwhile (the round after it reads them anew).
 */
export const preparePageReads = async (
  db: LocalDb,
  plans: readonly PageReadPlan<unknown>[],
) => {
  const client = createLocalQueryClient(db);
  const at = currentPageReadRevision();

  for (const { keep, key, read } of plans) {
    /* The data changed meanwhile: the next round reads the rest anew. */
    if (currentPageReadRevision() !== at) return;

    await preparePageRead(db, key, () => read(client), keep);
    /* A page you open meanwhile asks the device first. */
    await giveWay();
  }
};

/*
 * Keeps pages a screen leads to ready while it is on screen: read once it
 * has shown, and again whenever the device's data changes (a Play's other
 * sections, while you look at one).
 */
export const useKeepPageReadsReady = (
  plans: readonly PageReadPlan<unknown>[],
) => {
  const { db } = useLocalDb();
  const plansRef = useRef(plans);
  const keys = plans.map((plan) => plan.key).join("\n");

  useEffect(() => {
    plansRef.current = plans;
  });

  useEffect(
    () =>
      keepPagesReady(() => preparePageReads(db, plansRef.current), {
        immediately: true,
      }),
    [db, keys],
  );
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
