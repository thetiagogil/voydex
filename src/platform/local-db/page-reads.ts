/*
 * The reads a page waits on before it shows (`useLocalPageRead`), shared
 * by every render of that page: React suspends on the same promise until it
 * settles, and keeps showing the page you came from meanwhile.
 *
 * One read per database, key and revision. The revision moves on whenever
 * the device's data changes (a save in any tab, or a game added), so a read
 * of the current revision is still true: when you leave a page its read is
 * kept, and opening the page again shows at once, the way the Codex's
 * files do. The last few reads are kept; a newer revision lets every kept
 * read go, and a newer read of the same key replaces older ones no page
 * holds (a render a save or a quicker tap overtook). A failed read stays
 * until the error page shows (React draws a failing page twice before
 * giving up), then `forgetFailedPageReads` lets it go so trying again reads
 * again.
 */

type PageRead = {
  /* False for a read the page said not to keep (`keep`), or one that failed. */
  keep: boolean;
  promise: Promise<unknown>;
  revision: number;
  users: number;
};

/* By database, then key, then revision. */
const pageReads = new WeakMap<object, Map<string, Map<number, PageRead>>>();

/* Lets each failed read go, by the read it forgets. */
const failedReads = new Set<() => void>();

/* Reads no page holds, kept for the next visit, oldest first, by key. */
const keptReads = new Map<PageRead, { forget: () => void; key: string }>();

/* Enough for the pages you move between; each is a page's worth of rows. */
export const keptPageReadLimit = 20;

let revision = 0;
const revisionListeners = new Set<() => void>();

const readsFor = (owner: object, key: string) => {
  let byKey = pageReads.get(owner);

  if (!byKey) {
    byKey = new Map();
    pageReads.set(owner, byKey);
  }

  let byRevision = byKey.get(key);

  if (!byRevision) {
    byRevision = new Map();
    byKey.set(key, byRevision);
  }

  const reads = byRevision;
  const keys = byKey;

  return {
    forget: (entry: PageRead) => {
      keptReads.delete(entry);

      if (reads.get(entry.revision) !== entry) return;

      reads.delete(entry.revision);

      if (!reads.size && keys.get(key) === reads) keys.delete(key);
    },
    reads,
  };
};

/* Told whenever kept reads are let go, so the pages can get ready again. */
const forgottenListeners = new Set<() => void>();

/*
 * Lets kept reads go without reading the screen again (every one, or those
 * whose key `matches`): for a change only another page shows (opening a
 * Play reorders Home's shelf).
 */
export const forgetKeptPageReads = (
  matches: (key: string) => boolean = () => true,
) => {
  if (forgetKept(matches)) tellForgotten();
};

/* Lets the kept reads `matches` names go; says whether there were any. */
const forgetKept = (matches: (key: string) => boolean) => {
  let forgotten = false;

  for (const { forget, key } of [...keptReads.values()]) {
    if (!matches(key)) continue;

    forget();
    forgotten = true;
  }

  return forgotten;
};

const tellForgotten = () => {
  for (const listener of forgottenListeners) listener();
};

/*
 * Runs `listener` whenever kept reads are let go: the device's data changed,
 * or a change only another page shows. Returns the way to stop.
 */
export const subscribeForgottenPageReads = (listener: () => void) => {
  forgottenListeners.add(listener);

  return () => {
    forgottenListeners.delete(listener);
  };
};

/* The revision of the device's data the screens read now. */
export const currentPageReadRevision = () => revision;

/*
 * Tabs tell each other when the device's data changes, so a tab never shows
 * a kept read of data another tab changed since.
 */
const channelName = "voydex-local-db-changes";
let channel: BroadcastChannel | null = null;

const moveOn = () => {
  revision += 1;
  forgetKept(() => true);
  /* Even with nothing kept: a page held on screen read the old data too. */
  tellForgotten();

  for (const listener of revisionListeners) listener();
};

const openChannel = () => {
  if (channel || typeof window === "undefined") return channel;

  channel = new BroadcastChannel(channelName);
  channel.onmessage = ({ data }: MessageEvent<{ type?: string }>) => {
    if (data?.type === "changed") moveOn();
  };

  return channel;
};

/*
 * The device's data changed: every kept read is let go, the screens read
 * again, and the other tabs do the same.
 */
export const movePageReadRevision = () => {
  moveOn();
  openChannel()?.postMessage({ type: "changed" });
};

/* Runs `listener` whenever the revision moves on; returns the way to stop. */
export const subscribePageReadRevision = (listener: () => void) => {
  openChannel();
  revisionListeners.add(listener);

  return () => {
    revisionListeners.delete(listener);
  };
};

/*
 * The read for `key` at `revision`, started now if nothing has started it.
 * `keep` says whether its data may be shown again on a later visit (not a
 * page that came back without a part it could read later).
 */
export const startPageRead = <Data>(
  owner: object,
  key: string,
  revision: number,
  read: () => Promise<Data>,
  keep: (data: Data) => boolean = () => true,
): Promise<Data> => {
  const { forget, reads } = readsFor(owner, key);
  const existing = reads.get(revision);

  if (existing) return existing.promise as Promise<Data>;

  for (const entry of [...reads.values()]) {
    if (entry.users === 0) forget(entry);
  }

  /* A read that throws at once fails the same way as one that rejects. */
  const promise = new Promise<Data>((resolve) => resolve(read()));
  const entry: PageRead = { keep: true, promise, revision, users: 0 };

  promise.then(
    (data) => {
      /* Still shared by this visit's renders; let go when the page leaves. */
      if (!keep(data)) entry.keep = false;
    },
    () => {
      entry.keep = false;
      keptReads.delete(entry);
      failedReads.add(() => forget(entry));
    },
  );
  reads.set(revision, entry);

  return entry.promise as Promise<Data>;
};

/*
 * A page on screen holds its read (put back if a strict-mode remount let it
 * go); the returned function lets it go. A read the last page lets go is
 * kept for the next visit while its revision is current, and forgotten
 * otherwise.
 */
export const holdPageRead = (
  owner: object,
  key: string,
  revision: number,
  promise: Promise<unknown>,
) => {
  const { forget, reads } = readsFor(owner, key);
  let entry = reads.get(revision);

  if (entry?.promise !== promise) {
    entry = { keep: true, promise, revision, users: 0 };
    reads.set(revision, entry);
  }

  entry.users += 1;
  keptReads.delete(entry);
  const held = entry;

  return () => {
    held.users -= 1;

    if (held.users > 0) return;

    if (!held.keep || held.revision !== currentPageReadRevision()) {
      forget(held);
      return;
    }

    keptReads.set(held, { forget: () => forget(held), key });

    if (keptReads.size > keptPageReadLimit) {
      const [oldest] = keptReads.values();

      oldest?.forget();
    }
  };
};

/*
 * Reads a page before anyone opens it, and keeps it the way a page you
 * left is kept, so its first visit shows at once. A page opened meanwhile
 * shares the same read. Settles when the read does, never failing: a page
 * whose read failed reads again when it opens.
 */
export const preparePageRead = async <Data>(
  owner: object,
  key: string,
  read: () => Promise<Data>,
  keep?: (data: Data) => boolean,
) => {
  const at = currentPageReadRevision();
  const promise = startPageRead(owner, key, at, read, keep);
  const release = holdPageRead(owner, key, at, promise);

  try {
    await promise;
  } catch {
    /* The page shows its error when it opens and reads again. */
  } finally {
    release();
  }
};

/* Lets every failed read go, so the next render reads again. */
export const forgetFailedPageReads = () => {
  for (const forget of failedReads) forget();

  failedReads.clear();
};
