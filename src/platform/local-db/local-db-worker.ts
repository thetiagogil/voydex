import { PGlite } from "@electric-sql/pglite";
import { worker } from "@electric-sql/pglite/worker";

import { localDbOptions } from "@/platform/local-db/local-db-options";

/*
 * Runs the device database off the main thread. One tab leads and owns the
 * database; other tabs send their queries to it, so two tabs never write the
 * same IndexedDB files.
 */
void worker({
  init: (options) =>
    PGlite.create({
      ...localDbOptions,
      dataDir: options.dataDir,
      relaxedDurability: options.relaxedDurability,
    }),
});
