import type { PGliteOptions } from "@electric-sql/pglite";

/*
 * IndexedDB keeps the database as whole files, so every save writes the
 * write-ahead log file it touched in full. Postgres makes those files 16 MB;
 * 1 MB keeps a save small (set once, when a device's database is created).
 * Up to 32 MB of log is kept, which also suits a database made with 16 MB
 * files (Postgres needs room for at least two).
 */
export const localDbOptions = {
  initDbStartParams: ["--wal-segsize=1"],
  postgresqlconf: "min_wal_size = 32MB\nmax_wal_size = 32MB\n",
} satisfies PGliteOptions;
