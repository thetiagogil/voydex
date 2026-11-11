import { IdbFs, PGlite } from "@electric-sql/pglite";
import { worker } from "@electric-sql/pglite/worker";

import {
  answerWriteRequests,
  createWriteQueue,
} from "@/platform/local-db/durable-writes";
import { localDbOptions } from "@/platform/local-db/local-db-options";

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
      /* A saved copy to start from, when restoring one. */
      loadDataDir: options.loadDataDir,
      relaxedDurability: options.relaxedDurability,
    });

    await db.waitReady;

    answerWriteRequests(fs.writeAll);

    return db;
  },
});
