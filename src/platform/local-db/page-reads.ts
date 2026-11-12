/*
 * The reads a page waits on before it shows (`useLocalPageRead`), shared
 * by every render of that page: React suspends on the same promise until it
 * settles, and keeps showing the page you came from meanwhile.
 *
 * One read per database, key and revision. A read lives while a
 * page on screen uses it, so opening the page again reads again, as a
 * server page did; a newer read of the same key replaces older ones no page
 * holds (a render a save or a quicker tap overtook). A failed read stays
 * until the error page shows (React draws a failing page twice before
 * giving up), then `forgetFailedPageReads` lets it go so trying again reads
 * again.
 */

type PageRead = {
  promise: Promise<unknown>;
  users: number;
};

/* By database, then key, then revision. */
const pageReads = new WeakMap<object, Map<string, Map<number, PageRead>>>();

/* Lets each failed read go, by the read it forgets. */
const failedReads = new Set<() => void>();

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
    forget: (revision: number, entry: PageRead) => {
      if (reads.get(revision) !== entry) return;

      reads.delete(revision);

      if (!reads.size && keys.get(key) === reads) keys.delete(key);
    },
    reads,
  };
};

/* The read for `key` at `revision`, started now if nothing has started it. */
export const startPageRead = <Data>(
  owner: object,
  key: string,
  revision: number,
  read: () => Promise<Data>,
): Promise<Data> => {
  const { forget, reads } = readsFor(owner, key);
  const existing = reads.get(revision);

  if (existing) return existing.promise as Promise<Data>;

  for (const [other, entry] of reads) {
    if (entry.users === 0) forget(other, entry);
  }

  /* A read that throws at once fails the same way as one that rejects. */
  const entry: PageRead = {
    promise: new Promise<Data>((resolve) => resolve(read())),
    users: 0,
  };

  entry.promise.catch(() => {
    failedReads.add(() => forget(revision, entry));
  });
  reads.set(revision, entry);

  return entry.promise as Promise<Data>;
};

/*
 * A page on screen holds its read (put back if a strict-mode remount let it
 * go); the returned function lets it go, and the last page to let go
 * forgets it.
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
    entry = { promise, users: 0 };
    reads.set(revision, entry);
  }

  entry.users += 1;
  const held = entry;

  return () => {
    held.users -= 1;

    if (held.users <= 0) forget(revision, held);
  };
};

/* Lets every failed read go, so the next render reads again. */
export const forgetFailedPageReads = () => {
  for (const forget of failedReads) forget();

  failedReads.clear();
};
