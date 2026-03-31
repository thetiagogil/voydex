/**
 * Verify: Availability
 * Checks pokemon/move/item availability coverage per version group.
 */

export async function verifyAvailability(client) {
  const errors = [];
  let checks = 0;

  // TODO: Implement when availability tables are created
  // - Verify every base VG has pokemon availability entries
  // - Verify DLC VGs only add to base, don't duplicate
  // - Verify move availability covers all moves in learnsets
  // - Verify item availability exists for key items

  return {
    passed: errors.length === 0,
    checks,
    failures: errors.length,
    errors,
  };
}
