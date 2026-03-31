/**
 * Verify: Learnsets
 * Checks learnset data integrity per version group.
 */

export async function verifyLearnsets(client) {
  const errors = [];
  let checks = 0;

  // TODO: Implement when learnsets table is created
  // - Verify level-up moves have level_learned_at set
  // - Verify non-level-up moves have level_learned_at NULL
  // - Verify all referenced moves exist in move availability for that VG
  // - Verify all referenced species/forms exist in pokemon availability

  return {
    passed: errors.length === 0,
    checks,
    failures: errors.length,
    errors,
  };
}
