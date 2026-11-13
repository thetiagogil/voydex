import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import { userTables } from "@/platform/local-db/user-data";

/*
 * The keys of your tables as this device's schema has them: primary keys,
 * unique column sets and foreign keys, each with its columns in order.
 * Account sync and ID changes each read what they need from it.
 */
export type UserConstraint = {
  /* "public.profiles", never the bare name the search path allows. */
  child: string;
  childColumns: string[];
  /* Per child column, whether it may be empty. */
  childNullable: boolean[];
  /* p primary key, u unique constraint, i plain unique index, f foreign key. */
  kind: "f" | "i" | "p" | "u";
  /* A foreign key's ON DELETE action: c cascade, n set null, else restrict. */
  onDelete: string;
  parent: string | null;
  parentColumns: string[];
  /* The parent's own primary key; null for a table without one. */
  parentKeyColumns: string[] | null;
  /* For ON DELETE SET NULL (columns): those columns; null for all. */
  setNullColumns: string[] | null;
};

export const readUserConstraints = async (
  db: Pick<LocalDb, "query">,
): Promise<UserConstraint[]> => {
  const columnsOf = (attnums: string, table: string) =>
    `(SELECT array_agg(a.attname::text ORDER BY k.position)
        FROM unnest(${attnums}) WITH ORDINALITY k(attnum, position)
        JOIN pg_attribute a ON a.attrelid = ${table} AND a.attnum = k.attnum)`;
  const nameOf = (oid: string) =>
    `(SELECT n.nspname || '.' || r.relname FROM pg_class r
        JOIN pg_namespace n ON n.oid = r.relnamespace WHERE r.oid = ${oid})`;
  const nullableOf = (attnums: string, table: string) =>
    `(SELECT array_agg(NOT a.attnotnull ORDER BY k.position)
        FROM unnest(${attnums}) WITH ORDINALITY k(attnum, position)
        JOIN pg_attribute a ON a.attrelid = ${table} AND a.attnum = k.attnum)`;

  return runQuery<UserConstraint>(
    db,
    `SELECT child, kind, "onDelete", parent, "childColumns", "childNullable",
       coalesce("parentColumns", '{}') AS "parentColumns",
       "parentKeyColumns", "setNullColumns"
     FROM (
       SELECT ${nameOf("c.conrelid")} AS child, c.contype::text AS kind,
         c.confdeltype::text AS "onDelete",
         ${nameOf("NULLIF(c.confrelid, 0)")} AS parent,
         ${columnsOf("c.conkey", "c.conrelid")} AS "childColumns",
         ${nullableOf("c.conkey", "c.conrelid")} AS "childNullable",
         ${columnsOf("c.confkey", "c.confrelid")} AS "parentColumns",
         (SELECT ${columnsOf("pk.conkey", "pk.conrelid")} FROM pg_constraint pk
            WHERE pk.conrelid = c.confrelid AND pk.contype = 'p') AS "parentKeyColumns",
         ${columnsOf("c.confdelsetcols", "c.conrelid")} AS "setNullColumns"
       FROM pg_constraint c
       WHERE c.contype IN ('p', 'u', 'f')
       UNION ALL
       SELECT ${nameOf("i.indrelid")}, 'i', '', NULL,
         ${columnsOf("i.indkey::int2[]", "i.indrelid")},
         ${nullableOf("i.indkey::int2[]", "i.indrelid")}, NULL, NULL, NULL
       FROM pg_index i
       WHERE i.indisunique AND NOT i.indisprimary AND i.indexprs IS NULL
         AND NOT EXISTS (SELECT 1 FROM pg_constraint c WHERE c.conindid = i.indexrelid)
     ) found
     WHERE child = ANY ($1)
     ORDER BY child, kind, parent, "childColumns"`,
    [userTables.map((table) => table.name)],
  );
};
