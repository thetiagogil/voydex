/**
 * Verify: Seeds
 * Checks FK integrity, slug consistency, and row counts for seeded data.
 */

export async function verifySeeds(client) {
  const errors = [];
  let checks = 0;

  // Verify generations exist
  checks++;
  const { rows: gens } = await client.query(
    "SELECT COUNT(*) AS count FROM meta.generations",
  );
  if (parseInt(gens[0].count) === 0) {
    errors.push("meta.generations has no rows");
  }

  // Verify slug uniqueness across key tables
  const slugTables = [
    "meta.generations",
    "meta.regions",
    "meta.version_groups",
    "meta.games",
    "meta.types",
    "meta.natures",
  ];

  for (const table of slugTables) {
    checks++;
    const { rows } = await client.query(`
      SELECT slug, COUNT(*) AS count FROM ${table}
      GROUP BY slug HAVING COUNT(*) > 1
    `);
    if (rows.length > 0) {
      errors.push(
        `Duplicate slugs in ${table}: ${rows.map((r) => r.slug).join(", ")}`,
      );
    }
  }

  // Verify FK integrity: games → generations
  checks++;
  const { rows: orphanGames } = await client.query(`
    SELECT g.slug FROM meta.games g
    LEFT JOIN meta.generations gen ON g.generation_id = gen.id
    WHERE gen.id IS NULL
  `);
  if (orphanGames.length > 0) {
    errors.push(
      `Orphan games (bad generation_id): ${orphanGames.map((r) => r.slug).join(", ")}`,
    );
  }

  return {
    passed: errors.length === 0,
    checks,
    failures: errors.length,
    errors,
  };
}
