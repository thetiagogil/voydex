import { IdbFs, PGlite } from "@electric-sql/pglite";
import { worker } from "@electric-sql/pglite/worker";

import {
  answerWriteRequests,
  createWriteQueue,
} from "@/platform/local-db/durable-writes";
import { isGzip } from "@/platform/local-db/gzip";
import { localDbOptions } from "@/platform/local-db/local-db-options";
import { answerWorkerQueries } from "@/platform/local-db/worker-queries";

/* Set by the build (`next.config.ts`): PGlite's gzipped bundle. */
declare const __PGLITE_BUNDLE__: string;

/*
 * PGlite's file system bundle, from the build's gzipped copy
 * (`scripts/database/pglite-bundle.mjs`): about 1 MB to download instead
 * of 6, since the host sends PGlite's own `.data` file uncompressed. A host
 * that unzips it on the way is fine too.
 */
const readFsBundle = async () => {
  const response = await fetch(__PGLITE_BUNDLE__);

  if (!response.ok) {
    throw new Error(`${__PGLITE_BUNDLE__} answered ${response.status}.`);
  }

  const bytes = new Uint8Array(await response.arrayBuffer());

  return isGzip(bytes)
    ? new Response(
        new Blob([bytes]).stream().pipeThrough(new DecompressionStream("gzip")),
      ).blob()
    : new Blob([bytes]);
};

/*
 * Every query asks PGlite to write its changes to IndexedDB; counting the
 * asks tells the write queue whether anything changed since a write began.
 */
let queries = 0;

class CountedPGlite extends PGlite {
  override syncToFs() {
    queries += 1;

    return super.syncToFs();
  }
}

/*
 * IndexedDB storage whose writes go through one queue, so a page can wait
 * for everything saved so far to be written (`waitForWrites`), relaxed
 * durability or not.
 */
class QueuedIdbFs extends IdbFs {
  readonly writeAll = createWriteQueue(
    () => super.syncToFs(),
    () => queries,
  );

  override syncToFs() {
    return this.writeAll();
  }
}

const idbPrefix = "idb://";

/* The database, once this worker leads it and it has started. */
let started: (db: PGlite) => void = () => undefined;
const database = new Promise<PGlite>((resolve) => {
  started = resolve;
});

/* Its tab's queries in one message each (`worker-queries`). */
answerWorkerQueries(self, database);

/*
 * Runs the device database off the main thread. One tab leads and owns the
 * database; other tabs send their queries to it, so two tabs never write the
 * same IndexedDB files.
 */
void worker({
  init: async (options) => {
    if (!options.dataDir?.startsWith(idbPrefix)) {
      throw new Error("The device database lives in IndexedDB (idb://).");
    }

    const fs = new QueuedIdbFs(options.dataDir.slice(idbPrefix.length));
    /* `PGlite.create` would make a plain PGlite, so wait for it here. */
    const db = new CountedPGlite({
      ...localDbOptions,
      fs,
      fsBundle: await readFsBundle(),
      /* A saved copy to start from, when restoring one. */
      loadDataDir: options.loadDataDir,
      relaxedDurability: options.relaxedDurability,
    });

    await db.waitReady;

    answerWriteRequests(fs.writeAll);
    started(db);

    return db;
  },
});
